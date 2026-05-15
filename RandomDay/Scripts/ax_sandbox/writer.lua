local M = {}

local function unique_append(list, value, seen)
    if not value or value == "" then return end
    local norm = tostring(value):gsub("\\", "/")
    if not seen[norm] then
        seen[norm] = true
        table.insert(list, value)
    end
end

function M.resolve_sandbox_path(config, utils)
    if config.paths.sandbox_path_override then return config.paths.sandbox_path_override end
    return utils.resolve_existing_or_default(config.paths.sandbox_candidates, config.paths.sandbox_candidates[1])
end

function M.resolve_all_sandbox_targets(config, utils)
    local targets, seen = {}, {}
    unique_append(targets, M.resolve_sandbox_path(config, utils), seen)
    if config.paths.write_sandbox_mirrors then
        for _, path in ipairs(config.paths.sandbox_mirror_candidates or {}) do
            unique_append(targets, path, seen)
        end
    end
    return targets
end

local function write_optional_mirror(config, utils, backup, path, profile, rendered, rendered_hash, mod_root, log)
    if not path or path == "" then return false end
    local existing = utils.read_file(path)
    if existing and utils.hash_text(existing) == rendered_hash then
        log.info("sandbox mirror already matches Day " .. tostring(profile.day) .. " at " .. tostring(path))
        return true
    end

    -- Optional mirrors are best-effort. Create parent path if possible, but never fail the primary package if this fails.
    utils.mkdir(utils.dirname(path))
    if existing and config.sandbox.backup_before_write then
        local backup_dir = config.paths.runtime_dir .. "/backups/mirror_" .. utils.timestamp() .. "_day" .. tostring(profile.day)
        utils.mkdir(backup_dir)
        utils.copy_file(path, backup_dir .. "/" .. utils.basename(path))
    end

    local ok, err = utils.write_file(path, rendered)
    if not ok then
        log.warn("optional sandbox mirror write skipped/failed path=" .. tostring(path) .. " err=" .. tostring(err))
        return false
    end
    local readback = utils.read_file(path)
    if not readback or utils.hash_text(readback) ~= rendered_hash then
        log.warn("optional sandbox mirror readback mismatch path=" .. tostring(path))
        return false
    end
    log.info("sandbox mirror wrote Day " .. tostring(profile.day) .. "/17 - " .. profile.display_name .. " to " .. tostring(path))
    return true
end

function M.ensure_profile_written(config, profiles, profile, mod_root, log, reason)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local schema = dofile(mod_root .. "/Scripts/ax_sandbox/schema.lua")
    local serializer = dofile(mod_root .. "/Scripts/ax_sandbox/serializer.lua")
    local validator = dofile(mod_root .. "/Scripts/ax_sandbox/validator.lua")
    local backup = dofile(mod_root .. "/Scripts/ax_backup/manager.lua")

    local ok, err = validator.validate_profile(profile, schema)
    if not ok then return { ok=false, error="profile validation failed: " .. tostring(err) } end

    local sandbox_path = M.resolve_sandbox_path(config, utils)
    utils.mkdir(utils.dirname(sandbox_path))
    local rendered = serializer.render_ini(profile, schema, utils)
    local rendered_hash = utils.hash_text(rendered)

    local existing = utils.read_file(sandbox_path)
    local primary_already_current = existing and utils.hash_text(existing) == rendered_hash
    if primary_already_current and not config.sandbox.force_rewrite_every_supervision_tick then
        log.info("sandbox already matches Day " .. tostring(profile.day) .. " at " .. sandbox_path)
        backup.update_last_good(config, sandbox_path, profile, rendered_hash, mod_root, log)
        local mirrors_written = 0
        for _, mirror in ipairs(M.resolve_all_sandbox_targets(config, utils)) do
            if mirror ~= sandbox_path then
                if write_optional_mirror(config, utils, backup, mirror, profile, rendered, rendered_hash, mod_root, log) then mirrors_written = mirrors_written + 1 end
            end
        end
        return { ok=true, changed=false, sandbox_path=sandbox_path, hash=rendered_hash, already_current=true, mirrors_written=mirrors_written }
    end

    local pending_path = config.paths.runtime_dir .. "/pending/SandboxSettings.ini.pending"
    utils.mkdir(utils.dirname(pending_path))
    local w_ok, w_err = utils.write_file(pending_path, rendered)
    if not w_ok then return { ok=false, error="pending write failed: " .. tostring(w_err), sandbox_path=sandbox_path } end

    local pending_text, rerr = utils.read_file(pending_path)
    if not pending_text then return { ok=false, error="pending readback failed: " .. tostring(rerr), sandbox_path=sandbox_path } end
    local v_ok, v_err = validator.validate_ini_text(pending_text, profile, schema)
    if not v_ok then return { ok=false, error="pending validation failed: " .. tostring(v_err), sandbox_path=sandbox_path } end

    local backup_dir = backup.backup_current(config, sandbox_path, profile, mod_root, log)

    -- Replace production file. Windows os.rename does not reliably overwrite; remove only after backup.
    os.remove(sandbox_path)
    local rename_ok, rename_err = os.rename(pending_path, sandbox_path)
    if not rename_ok then
        log.error("production rename failed: " .. tostring(rename_err))
        if config.sandbox.restore_last_good_on_failure then
            backup.restore_last_good(config, sandbox_path, mod_root, log)
        end
        return { ok=false, error="production rename failed: " .. tostring(rename_err), sandbox_path=sandbox_path, backup_dir=backup_dir }
    end

    local production_text, perr = utils.read_file(sandbox_path)
    if not production_text then return { ok=false, error="production readback failed: " .. tostring(perr), sandbox_path=sandbox_path, backup_dir=backup_dir } end
    local prod_ok, prod_err = validator.validate_ini_text(production_text, profile, schema)
    if not prod_ok then
        log.error("production validation failed: " .. tostring(prod_err))
        if config.sandbox.restore_last_good_on_failure then backup.restore_last_good(config, sandbox_path, mod_root, log) end
        return { ok=false, error="production validation failed: " .. tostring(prod_err), sandbox_path=sandbox_path, backup_dir=backup_dir }
    end

    backup.update_last_good(config, sandbox_path, profile, rendered_hash, mod_root, log)
    log.info("wrote sandbox Day " .. tostring(profile.day) .. "/17 - " .. profile.display_name .. " to " .. sandbox_path)

    local mirrors_written = 0
    for _, mirror in ipairs(M.resolve_all_sandbox_targets(config, utils)) do
        if mirror ~= sandbox_path then
            if write_optional_mirror(config, utils, backup, mirror, profile, rendered, rendered_hash, mod_root, log) then mirrors_written = mirrors_written + 1 end
        end
    end

    return { ok=true, changed=true, sandbox_path=sandbox_path, hash=rendered_hash, backup_dir=backup_dir, mirrors_written=mirrors_written }
end

return M
