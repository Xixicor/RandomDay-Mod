local M = {}

function M.backup_current(config, sandbox_path, profile, mod_root, log)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local stamp = utils.timestamp() .. "_day" .. tostring(profile.day) .. "_" .. utils.sanitize_id(profile.id)
    local backup_dir = config.paths.runtime_dir .. "/backups/" .. stamp
    utils.mkdir(backup_dir)
    if utils.file_exists(sandbox_path) then
        local ok, err = utils.copy_file(sandbox_path, backup_dir .. "/SandboxSettings.ini")
        if ok then log.info("backup written: " .. backup_dir .. "/SandboxSettings.ini") else log.warn("backup failed: " .. tostring(err)) end
    else
        log.warn("sandbox file did not exist before write: " .. tostring(sandbox_path))
    end
    return backup_dir
end

function M.update_last_good(config, sandbox_path, profile, hash, mod_root, log)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local lg_dir = config.paths.runtime_dir .. "/last_good"
    utils.mkdir(lg_dir)
    if utils.file_exists(sandbox_path) then
        utils.copy_file(sandbox_path, lg_dir .. "/SandboxSettings.ini")
    end
    local manifest = "return {\n" ..
        "  version = " .. utils.lua_literal(config.version) .. ",\n" ..
        "  profile_id = " .. utils.lua_literal(profile.id) .. ",\n" ..
        "  display_name = " .. utils.lua_literal(profile.display_name) .. ",\n" ..
        "  day = " .. tostring(profile.day) .. ",\n" ..
        "  hash = " .. utils.lua_literal(hash or "") .. ",\n" ..
        "  written_at = " .. utils.lua_literal(os.date("%Y-%m-%d %H:%M:%S")) .. "\n" ..
        "}\n"
    utils.write_file(lg_dir .. "/manifest.lua", manifest)
    log.info("last known good updated: Day " .. tostring(profile.day) .. "/17 - " .. tostring(profile.display_name))
end

function M.restore_last_good(config, sandbox_path, mod_root, log)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local source = config.paths.runtime_dir .. "/last_good/SandboxSettings.ini"
    if not utils.file_exists(source) then
        log.error("no last known good sandbox available to restore")
        return false
    end
    local ok, err = utils.copy_file(source, sandbox_path)
    if ok then
        log.warn("restored last known good SandboxSettings.ini")
        return true
    end
    log.error("last known good restore failed: " .. tostring(err))
    return false
end

return M
