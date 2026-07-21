-- RandomDay public source
-- Module: RandomDay/Scripts/ax_backup/manager.lua
-- Ownership/Purpose: RandomDay public module; Create operation backups and maintain last-good pair
-- Public contract: caller=ax_sandbox/writer.lua; inputs=target bytes, profile, hash; outputs=backup files and last-good
--   manifest
-- Side effects: writes runtime/backups and runtime/last_good
-- Failure/Recovery: failures=backup copy failure; manifest update failure; restore failure; recovery
--   states=backup_written; last_good_updated; restored
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-backup-manager

local M = {}

local function last_good_paths(config)
    local root = tostring(config.paths.runtime_dir) .. "/last_good"
    return root, root .. "/SandboxSettings.ini", root .. "/manifest.lua"
end

local function read_valid_pair(config, utils)
    local _, sandbox_path, manifest_path = last_good_paths(config)
    local sandbox = utils.read_file(sandbox_path)
    local manifest = utils.read_file(manifest_path)
    if not sandbox or not manifest then return false, "last-good pair is incomplete" end
    local expected_hash = manifest:match('hash%s*=%s*"([0-9a-fA-F]+)"')
    if not expected_hash or utils.hash_text(sandbox):lower() ~= expected_hash:lower() then
        return false, "last-good manifest does not match sandbox bytes"
    end
    return true, nil, sandbox, sandbox_path
end

local function restore_snapshot(utils, path, previous)
    local current = utils.read_file(path)
    if previous == nil then
        if current == nil then return true end
        return utils.remove_file(path)
    end
    if current == previous then return true end

    local restored = utils.transactional_replace(path, previous)
    if restored.ok then return true end
    if utils.read_file(path) == previous then return true end

    -- A verified replacement can coexist with its old rollback sidecar only when
    -- cleanup failed. Reuse that exact sidecar instead of discarding recovery data.
    local rollback_path = path .. ".randomday.rollback"
    if utils.read_file(rollback_path) == previous then
        local removed, remove_err = utils.remove_file(path)
        if not removed then return false, remove_err end
        local moved, move_err = utils.rename_file(rollback_path, path)
        if not moved then
            moved, move_err = utils.copy_file_verified(rollback_path, path)
            if moved then utils.remove_file(rollback_path) end
        end
        if not moved then return false, move_err end
        return utils.read_file(path) == previous, "snapshot restore readback mismatch"
    end
    return false, restored.error or restored.rollback_error or restored.status
end

local function restore_pair(utils, sandbox_path, manifest_path, previous_sandbox, previous_manifest)
    local sandbox_ok, sandbox_err = restore_snapshot(utils, sandbox_path, previous_sandbox)
    local manifest_ok, manifest_err = restore_snapshot(utils, manifest_path, previous_manifest)
    if sandbox_ok and manifest_ok then return true end
    return false, "sandbox=" .. tostring(sandbox_err or "ok") .. "; manifest=" .. tostring(manifest_err or "ok")
end

function M.backup_current(config, sandbox_path, profile, mod_root, log)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local stamp = utils.unique_token() .. "_day" .. tostring(profile.day) .. "_" .. utils.sanitize_id(profile.id)
    local backup_dir = config.paths.runtime_dir .. "/backups/" .. stamp
    if not utils.file_exists(sandbox_path) then
        log.warn("sandbox file did not exist before write: " .. tostring(sandbox_path))
        return { ok=true, existed=false, backup_dir=backup_dir }
    end
    if not utils.mkdir(backup_dir) then return { ok=false, existed=true, error="backup directory creation failed", backup_dir=backup_dir } end
    local backup_path = backup_dir .. "/SandboxSettings.ini"
    local ok, err = utils.copy_file_verified(sandbox_path, backup_path)
    if not ok then
        log.error("backup failed: " .. tostring(err))
        return { ok=false, existed=true, error=err, backup_dir=backup_dir, backup_path=backup_path }
    end
    log.info("verified backup written: " .. backup_path)
    return { ok=true, existed=true, backup_dir=backup_dir, backup_path=backup_path }
end

function M.restore_backup(config, backup_path, sandbox_path, mod_root, log)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    if not backup_path or not utils.file_exists(backup_path) then return false, "operation backup unavailable" end
    local source, read_err = utils.read_file(backup_path)
    if not source then return false, read_err end
    local result = utils.transactional_replace(sandbox_path, source)
    if result.ok then log.warn("restored current-operation sandbox backup") return true, "restored_from_operation_backup" end
    log.error("current-operation backup restore failed: " .. tostring(result.error))
    return false, result.error
end

function M.update_last_good(config, sandbox_path, profile, hash, mod_root, log)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local lg_dir, last_good_sandbox, last_good_manifest = last_good_paths(config)
    if not utils.mkdir(lg_dir) then return false, "last-good directory creation failed" end
    local sandbox_text, sandbox_err = utils.read_file(sandbox_path)
    if not sandbox_text then return false, sandbox_err end
    local sandbox_hash = utils.hash_text(sandbox_text)
    local previous_sandbox = utils.read_file(last_good_sandbox)
    local previous_manifest = utils.read_file(last_good_manifest)
    if not (previous_sandbox and previous_manifest) then
        previous_sandbox, previous_manifest = nil, nil
    end

    -- The pair is one recovery unit even though each file needs its own atomic rename.
    -- Any partial update restores the prior complete pair; see docs/OPERATIONS.md.
    local sandbox_result = utils.transactional_replace(last_good_sandbox, sandbox_text)
    if not sandbox_result.ok then
        local restored, restore_err = restore_pair(utils, last_good_sandbox, last_good_manifest, previous_sandbox, previous_manifest)
        if not restored then return false, "last-good sandbox update failed and pair restore failed: " .. tostring(sandbox_result.error) .. "; " .. tostring(restore_err) end
        return false, "last-good sandbox update failed; previous pair preserved: " .. tostring(sandbox_result.error)
    end
    local manifest = "return {\n" ..
        "  version = " .. utils.lua_literal(config.version) .. ",\n" ..
        "  profile_id = " .. utils.lua_literal(profile.id) .. ",\n" ..
        "  display_name = " .. utils.lua_literal(profile.display_name) .. ",\n" ..
        "  day = " .. tostring(profile.day) .. ",\n" ..
        "  hash = " .. utils.lua_literal(sandbox_hash) .. ",\n" ..
        "  written_at = " .. utils.lua_literal(os.date("%Y-%m-%d %H:%M:%S")) .. "\n" ..
        "}\n"
    local manifest_result = utils.transactional_replace(last_good_manifest, manifest)
    if not manifest_result.ok then
        local restored, restore_err = restore_pair(utils, last_good_sandbox, last_good_manifest, previous_sandbox, previous_manifest)
        if not restored then
            return false, "last-good manifest update failed and pair restore failed: " .. tostring(manifest_result.error) .. "; " .. tostring(restore_err)
        end
        return false, "last-good manifest update failed; previous pair preserved: " .. tostring(manifest_result.error)
    end
    if utils.read_file(last_good_sandbox) ~= sandbox_text or utils.read_file(last_good_manifest) ~= manifest then
        local restored, restore_err = restore_pair(utils, last_good_sandbox, last_good_manifest, previous_sandbox, previous_manifest)
        if not restored then return false, "last-good pair readback failed and pair restore failed: " .. tostring(restore_err) end
        return false, "last-good pair readback failed; previous pair preserved"
    end
    log.info("last known good updated: Day " .. tostring(profile.day) .. "/17 - " .. tostring(profile.display_name))
    return true
end

function M.has_last_good(config, mod_root)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    return read_valid_pair(config, utils)
end

function M.restore_last_good(config, sandbox_path, mod_root, log)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local valid, pair_err, text = read_valid_pair(config, utils)
    if not valid then log.error("last known good unavailable: " .. tostring(pair_err)) return false, pair_err end
    local result = utils.transactional_replace(sandbox_path, text)
    if result.ok then
        log.warn("restored last known good SandboxSettings.ini")
        return true, "restored_from_last_good"
    end
    log.error("last known good restore failed: " .. tostring(result.error))
    return false, result.error
end

return M
