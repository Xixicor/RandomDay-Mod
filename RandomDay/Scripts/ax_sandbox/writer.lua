-- RandomDay public source
-- Module: RandomDay/Scripts/ax_sandbox/writer.lua
-- Ownership/Purpose: RandomDay public module; Resolve mode-bounded targets and write verified profile bytes
-- Public contract: caller=ax_core/init.lua; inputs=config, profile set, selected profile; outputs=primary, mirror, or
--   manual sandbox and transaction result
-- Side effects: writes sandbox targets, backups, and sidecars
-- Failure/Recovery: failures=target directory; backup; pending; promotion; production validation; restore failure;
--   recovery states=applied; already_current; target_refused; failed; restored; rollback_failed
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-sandbox-writer

local M = {}

local function unique_append(list, value, seen, utils)
    if not value or value == "" then return end
    local normalized = utils.normalize_path(value)
    local norm = utils.path_key(normalized)
    if not seen[norm] then
        seen[norm] = true
        table.insert(list, normalized)
    end
end

local function singleplayer_target(mod_root)
    return tostring(mod_root) .. "/runtime/singleplayer_manual/SandboxSettings.ini"
end

local function validate_target(config, utils, path, mod_root)
    if utils.normalize_path(path) == "" then return false, "sandbox target is not configured" end
    if config.package_mode ~= "singleplayer_manual" then return true end
    local allowed_root = tostring(mod_root) .. "/runtime/singleplayer_manual"
    if not utils.is_path_within(path, allowed_root) then
        return false, "singleplayer manual mode refused an external sandbox target: " .. tostring(path)
    end
    return true
end

function M.resolve_sandbox_path(config, utils)
    if config.package_mode == "singleplayer_manual" then
        local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
        return utils.normalize_path(singleplayer_target(root))
    end
    if config.paths.sandbox_path_override then return utils.normalize_path(config.paths.sandbox_path_override) end
    local candidates = config.paths.sandbox_candidates or {}
    return utils.normalize_path(utils.resolve_existing_or_default(candidates, candidates[1]))
end

function M.resolve_all_sandbox_targets(config, utils)
    local targets, seen = {}, {}
    unique_append(targets, M.resolve_sandbox_path(config, utils), seen, utils)
    if config.package_mode ~= "singleplayer_manual" and config.paths.write_sandbox_mirrors then
        for _, path in ipairs(config.paths.sandbox_mirror_candidates or {}) do
            unique_append(targets, path, seen, utils)
        end
    end
    return targets
end

local function validate_rendered(validator, profile, schema)
    return function(text)
        return validator.validate_ini_text(text, profile, schema)
    end
end

local function restore_after_transaction_failure(backup, config, backup_info, path, mod_root, log)
    local errors = {}
    if backup_info and backup_info.backup_path then
        local restored, status = backup.restore_backup(config, backup_info.backup_path, path, mod_root, log)
        if restored then return true, status end
        table.insert(errors, "operation backup: " .. tostring(status))
    end
    if config.sandbox and config.sandbox.restore_last_good_on_failure then
        local restored, status = backup.restore_last_good(config, path, mod_root, log)
        if restored then return true, status end
        table.insert(errors, "last good: " .. tostring(status))
    end
    local summary = table.concat(errors, "; ")
    return false, summary ~= "" and summary or "recovery unavailable"
end

local function transactional_write(utils, backup, config, profile, path, rendered, validate, mod_root, log, backup_info)
    if not utils.mkdir(utils.dirname(path)) then
        return { ok=false, status="target_directory_failed", error="target directory creation failed", rollback_status="not_needed" }
    end
    local result = utils.transactional_replace(path, rendered, {
        pending_path = path .. ".randomday.pending",
        rollback_path = path .. ".randomday.rollback",
        validate = validate,
    })
    -- The transaction primitive handles ordinary rollback. Escalate to verified operation or
    -- last-good backups only when that rollback could not restore the target.
    if not result.ok and result.rollback_status == "restore_failed" then
        local restored, restore_status = restore_after_transaction_failure(backup, config, backup_info, path, mod_root, log)
        if restored then
            result.rollback_status = restore_status
            result.rollback_error = nil
        else
            result.rollback_status = "rollback_failed"
            result.rollback_error = restore_status
        end
    end
    return result
end

local function mirror_backup(config, utils, path, profile)
    if not utils.file_exists(path) then return { ok=true, existed=false } end
    local backup_dir = config.paths.runtime_dir .. "/backups/mirror_" .. utils.unique_token() .. "_day" .. tostring(profile.day) .. "_" .. utils.sanitize_id(utils.basename(path))
    if not utils.mkdir(backup_dir) then return { ok=false, existed=true, error="mirror backup directory creation failed" } end
    local backup_path = backup_dir .. "/" .. utils.basename(path)
    local ok, err = utils.copy_file_verified(path, backup_path)
    return { ok=ok, existed=true, error=err, backup_dir=backup_dir, backup_path=backup_path }
end

local function write_optional_mirror(config, utils, backup, path, profile, rendered, rendered_hash, validate, mod_root, log)
    local allowed, target_err = validate_target(config, utils, path, mod_root)
    if not allowed then return { ok=false, status="target_refused", error=target_err, path=path } end
    local existing = utils.read_file(path)
    if existing and utils.hash_text(existing) == rendered_hash then
        log.info("sandbox mirror already matches prepared profile Day " .. tostring(profile.day) .. " at " .. tostring(path))
        return { ok=true, status="already_current", path=path }
    end

    local backup_info = mirror_backup(config, utils, path, profile)
    if not backup_info.ok then
        log.warn("optional sandbox mirror backup failed path=" .. tostring(path) .. " err=" .. tostring(backup_info.error))
        return { ok=false, status="backup_failed", error=backup_info.error, path=path }
    end
    local result = transactional_write(utils, backup, config, profile, path, rendered, validate, mod_root, log, backup_info)
    if not result.ok then
        log.warn("optional sandbox mirror transaction failed path=" .. tostring(path) .. " status=" .. tostring(result.status) .. " err=" .. tostring(result.error))
        result.path = path
        return result
    end
    log.info("sandbox mirror prepared Day " .. tostring(profile.day) .. "/17 - " .. profile.display_name .. " at " .. tostring(path))
    return {
        ok=true, status="applied", path=path, rollback_status=result.rollback_status,
        backup_path=backup_info.backup_path, replacement_method=result.replacement_method,
        pending_readback_verified=result.pending_readback_verified,
        target_readback_verified=result.target_readback_verified,
        recovered_interrupted_transaction=result.recovered_interrupted_transaction == true,
    }
end

function M.ensure_profile_written(config, profiles, profile, mod_root, log, reason)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local schema = dofile(mod_root .. "/Scripts/ax_sandbox/schema.lua")
    local serializer = dofile(mod_root .. "/Scripts/ax_sandbox/serializer.lua")
    local validator = dofile(mod_root .. "/Scripts/ax_sandbox/validator.lua")
    local backup = dofile(mod_root .. "/Scripts/ax_backup/manager.lua")

    local valid_profile, profile_err = validator.validate_profile(profile, schema)
    if not valid_profile then return { ok=false, status="profile_validation_failed", error=tostring(profile_err) } end

    local sandbox_path = M.resolve_sandbox_path(config, utils)
    local allowed, target_err = validate_target(config, utils, sandbox_path, mod_root)
    if not allowed then return { ok=false, status="target_refused", error=target_err, sandbox_path=sandbox_path } end

    local rendered = serializer.render_ini(profile, schema, utils)
    local rendered_hash = utils.hash_text(rendered)
    local validate = validate_rendered(validator, profile, schema)
    local existing = utils.read_file(sandbox_path)
    local primary_already_current = existing and utils.hash_text(existing) == rendered_hash

    if primary_already_current and not config.sandbox.force_rewrite_every_supervision_tick then
        log.info("sandbox already matches prepared profile Day " .. tostring(profile.day) .. " at " .. sandbox_path)
        local last_good_ok, last_good_err = backup.update_last_good(config, sandbox_path, profile, rendered_hash, mod_root, log)
        if not last_good_ok then log.warn("last known good update failed: " .. tostring(last_good_err)) end
        local mirror_results, mirrors_written = {}, 0
        for _, mirror in ipairs(M.resolve_all_sandbox_targets(config, utils)) do
            if utils.path_key(mirror) ~= utils.path_key(sandbox_path) then
                local mirror_result = write_optional_mirror(config, utils, backup, mirror, profile, rendered, rendered_hash, validate, mod_root, log)
                table.insert(mirror_results, mirror_result)
                if mirror_result.ok and mirror_result.status == "applied" then mirrors_written = mirrors_written + 1 end
            end
        end
        return {
            ok=true, status="already_current", changed=false, sandbox_path=sandbox_path,
            hash=rendered_hash, already_current=true, mirrors_written=mirrors_written,
            mirror_results=mirror_results, last_good_ok=last_good_ok,
            backup_status=last_good_ok and "last_good_refreshed" or "last_good_failed",
            last_good_status=last_good_ok and "updated" or "failed",
            last_good_error=last_good_err,
            rollback_available=backup.has_last_good(config, mod_root) == true,
            rollback_status="not_needed", replacement_method="already_current",
            transaction_status="already_current",
            pending_readback_verified=false, target_readback_verified=true,
            manual_singleplayer_output=config.package_mode == "singleplayer_manual",
        }
    end

    local backup_info = backup.backup_current(config, sandbox_path, profile, mod_root, log)
    if not backup_info.ok then
        return {
            ok=false, status="operation_backup_failed", transaction_status="operation_backup_failed",
            error=backup_info.error, sandbox_path=sandbox_path, backup_dir=backup_info.backup_dir,
            backup_status="failed", last_good_status="unchanged",
            rollback_available=backup.has_last_good(config, mod_root) == true,
            rollback_status="not_needed", replacement_method="none",
            pending_readback_verified=false, target_readback_verified=false,
        }
    end

    local transaction = transactional_write(utils, backup, config, profile, sandbox_path, rendered, validate, mod_root, log, backup_info)
    if not transaction.ok then
        return {
            ok=false, status=transaction.status, transaction_status=transaction.status,
            error=transaction.error, sandbox_path=sandbox_path,
            backup_dir=backup_info.backup_dir, backup_path=backup_info.backup_path,
            backup_status=backup_info.existed and "backup_written" or "source_missing",
            last_good_status="unchanged",
            rollback_status=transaction.rollback_status, rollback_error=transaction.rollback_error,
            rollback_available=backup_info.backup_path ~= nil or backup.has_last_good(config, mod_root) == true,
            replacement_method=transaction.replacement_method,
            pending_readback_verified=transaction.pending_readback_verified,
            target_readback_verified=transaction.target_readback_verified,
            recovered_interrupted_transaction=transaction.recovered_interrupted_transaction == true,
        }
    end

    local last_good_ok, last_good_err = backup.update_last_good(config, sandbox_path, profile, rendered_hash, mod_root, log)
    if not last_good_ok then log.warn("last known good update failed after verified sandbox replacement: " .. tostring(last_good_err)) end
    log.info("prepared sandbox Day " .. tostring(profile.day) .. "/17 - " .. profile.display_name .. " at " .. sandbox_path)

    local mirror_results, mirrors_written = {}, 0
    for _, mirror in ipairs(M.resolve_all_sandbox_targets(config, utils)) do
        if utils.path_key(mirror) ~= utils.path_key(sandbox_path) then
            local mirror_result = write_optional_mirror(config, utils, backup, mirror, profile, rendered, rendered_hash, validate, mod_root, log)
            table.insert(mirror_results, mirror_result)
            if mirror_result.ok and mirror_result.status == "applied" then mirrors_written = mirrors_written + 1 end
        end
    end

    return {
        ok=true, status="applied", changed=true, sandbox_path=sandbox_path, hash=rendered_hash,
        backup_dir=backup_info.backup_dir, backup_path=backup_info.backup_path,
        backup_status=backup_info.existed and "backup_written" or "source_missing",
        last_good_status=last_good_ok and "updated" or "failed",
        last_good_error=last_good_err,
        rollback_available=backup_info.backup_path ~= nil or last_good_ok,
        rollback_status=transaction.rollback_status, mirrors_written=mirrors_written,
        replacement_method=transaction.replacement_method,
        transaction_status=transaction.status,
        pending_readback_verified=transaction.pending_readback_verified,
        target_readback_verified=transaction.target_readback_verified,
        recovered_interrupted_transaction=transaction.recovered_interrupted_transaction == true,
        mirror_results=mirror_results, last_good_ok=last_good_ok,
        manual_singleplayer_output=config.package_mode == "singleplayer_manual",
    }
end

M._test = {
    validate_target = validate_target,
    singleplayer_target = singleplayer_target,
}

return M
