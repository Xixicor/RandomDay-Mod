local M = {}

local function format_lua_value(v)
    if type(v) == "boolean" then return v and "true" or "false" end
    if type(v) == "number" then return tostring(v) end
    if type(v) == "string" then return string.format("%q", v) end
    return "nil"
end

local function escape_pattern(s)
    return tostring(s):gsub("([^%w])", "%%%1")
end

local function try_patch_line(raw_line, key, value)
    local formatted = format_lua_value(value)
    local k = escape_pattern(key)
    local patterns = {
        "^(%s*local%s+" .. k .. "%s*=%s*)([^,%-]*)(%s*,?)(%s*%-%-.*)$",
        "^(%s*local%s+" .. k .. "%s*=%s*)([^,%-]*)(%s*,?)%s*$",
        "^(%s*" .. k .. "%s*=%s*)([^,%-]*)(%s*,?)(%s*%-%-.*)$",
        "^(%s*" .. k .. "%s*=%s*)([^,%-]*)(%s*,?)%s*$",
        "^(%s*[%w_]+%s*%.%s*" .. k .. "%s*=%s*)([^,%-]*)(%s*,?)(%s*%-%-.*)$",
        "^(%s*[%w_]+%s*%.%s*" .. k .. "%s*=%s*)([^,%-]*)(%s*,?)%s*$",
        "^(%s*%[\"" .. k .. "\"%]%s*=%s*)([^,%-]*)(%s*,?)(%s*%-%-.*)$",
        "^(%s*%[\"" .. k .. "\"%]%s*=%s*)([^,%-]*)(%s*,?)%s*$",
    }
    for _, pattern in ipairs(patterns) do
        local a, old, comma, comment = raw_line:match(pattern)
        if a then
            comment = comment or ""
            comma = comma or ""
            local old_trim = tostring(old or ""):gsub("^%s+", ""):gsub("%s+$", "")
            return a .. formatted .. comma .. comment, old_trim ~= formatted, true
        end
    end
    return raw_line, false, false
end

local function patch_lines(text, values, patch_only_existing)
    local changed, out, found = {}, {}, {}
    for raw_line in (tostring(text or "") .. "\n"):gmatch("(.-)\r?\n") do
        local new_line = raw_line
        for key, value in pairs(values) do
            local candidate, did_change, did_find = try_patch_line(raw_line, key, value)
            if did_find then
                new_line = candidate
                found[key] = true
                if did_change then table.insert(changed, key) end
                break
            end
        end
        table.insert(out, new_line)
    end
    if not patch_only_existing then
        for key, value in pairs(values) do
            if not found[key] then
                table.insert(out, key .. " = " .. format_lua_value(value))
                table.insert(changed, key)
            end
        end
    end
    return table.concat(out, "\n") .. "\n", changed, found
end

local function count_found(found)
    local n = 0
    for _ in pairs(found or {}) do n = n + 1 end
    return n
end

local function find_config_path(adapter, mod_root, utils)
    for _, p in ipairs(adapter.config_candidates or {}) do
        local candidates = { p }
        if p:sub(1, 3) == "../" then
            table.insert(candidates, mod_root .. "/" .. p)
        else
            table.insert(candidates, mod_root .. "/../" .. p)
        end
        for _, candidate in ipairs(candidates) do
            if utils.file_exists(candidate) then return candidate end
        end
    end
    return nil
end

local function backup_file(config, utils, src, adapter_id)
    if not (config.external_mods and config.external_mods.backup_before_write) then return end
    local backup_dir = config.paths.runtime_dir .. "/backups/external_" .. utils.timestamp() .. "_" .. tostring(adapter_id)
    utils.mkdir(backup_dir)
    utils.copy_file(src, backup_dir .. "/" .. utils.basename(src))
end

local function build_joke_block(pack)
    local lines = {}
    table.insert(lines, "local jokeMsgs = {")
    for i, text in ipairs(pack.jokes or {}) do
        table.insert(lines, "    randomday_" .. string.format("%02d", i) .. " = { chance = 1, text = " .. format_lua_value(text) .. " },")
    end
    table.insert(lines, "}")
    return table.concat(lines, "\n")
end

local function patch_player_tracker_text(text, pack)
    local changed = false
    local join = pack.join or "[RandomDay] Active profile loaded. Full rules: studio.speclang.pro"
    local s, c = text:gsub('local%s+startMsg%s*=%s*".-"', 'local startMsg = ' .. format_lua_value(join), 1)
    if c > 0 then text = s; changed = true end
    s, c = text:gsub('local%s+plainStartMsg%s*=%s*".-"', 'local plainStartMsg = ' .. format_lua_value(join), 1)
    if c > 0 then text = s; changed = true end
    local joke_block = build_joke_block(pack)
    s, c = text:gsub("local%s+jokeMsgs%s*=%s*%b{}", joke_block, 1)
    if c > 0 then text = s; changed = true end
    return text, changed
end

local function patch_special_spawns_text(text, pack)
    local warnings = pack.warnings or {}
    local out, changed = {}, false
    local state = nil
    for raw_line in (tostring(text or "") .. "\n"):gmatch("(.-)\r?\n") do
        local line = raw_line
        if line:find("WhoSpawnsWhere%.PortalStormSpawns") then state = "portal" end
        if line:find("WhoSpawnsWhere%.OrderBreachSpawns") then state = "order" end
        if line:find("WhoSpawnsWhere%.GKAmbushSpawns") then state = "gatekeeper" end
        if line:match("local%s+warningMessage%s*=") and warnings.hostile then
            local repl = line:gsub('local%s+warningMessage%s*=%s*".-"', 'local warningMessage = ' .. format_lua_value(warnings.hostile), 1)
            if repl ~= line then line = repl; changed = true end
        elseif state and line:match("warningMessage%s*=") and warnings[state] then
            local repl = line:gsub('warningMessage%s*=%s*".-"', 'warningMessage = ' .. format_lua_value(warnings[state]), 1)
            if repl ~= line then line = repl; changed = true end
            state = nil
        end
        table.insert(out, line)
    end
    return table.concat(out, "\n") .. "\n", changed
end

local function apply_dynamic_spawns_messages(config, profile, mod_root, shared_data_path, log, utils)
    if not profile then return true end
    local ok, message_module = pcall(dofile, mod_root .. "/Scripts/ax_profiles/messages_17.lua")
    if not ok or not message_module or not message_module.get then
        log.warn("dynamic_spawns message pack unavailable: " .. tostring(message_module))
        return true
    end
    local pack = message_module.get(profile)
    local base = tostring(shared_data_path):gsub("\\", "/"):match("^(.*)/SharedData%.lua$")
    if not base then return true end

    local player_tracker = base .. "/PlayerTracker.lua"
    if utils.file_exists(player_tracker) then
        local text = utils.read_file(player_tracker)
        local patched, did_change = patch_player_tracker_text(text or "", pack)
        if did_change then
            backup_file(config, utils, player_tracker, "dynamic_spawns_messages")
            local ok_write, err = utils.write_file(player_tracker, patched)
            if ok_write then
                log.info("adapter dynamic_spawns patched PlayerTracker fallback text for Day " .. tostring(profile.day) .. "/17")
            else
                log.warn("adapter dynamic_spawns could not write PlayerTracker messages: " .. tostring(err))
            end
        else
            log.info("adapter dynamic_spawns PlayerTracker fallback text already match or no patch target found")
        end
    else
        log.info("adapter dynamic_spawns PlayerTracker.lua not found; join joke patch skipped")
    end

    local special_spawns = base .. "/SpecialSpawns.lua"
    if utils.file_exists(special_spawns) then
        local text = utils.read_file(special_spawns)
        local patched, did_change = patch_special_spawns_text(text or "", pack)
        if did_change then
            backup_file(config, utils, special_spawns, "dynamic_spawns_storm_messages")
            local ok_write, err = utils.write_file(special_spawns, patched)
            if ok_write then
                log.info("adapter dynamic_spawns patched storm/breach/ambush warning messages for Day " .. tostring(profile.day) .. "/17")
            else
                log.warn("adapter dynamic_spawns could not write SpecialSpawns messages: " .. tostring(err))
            end
        else
            log.info("adapter dynamic_spawns SpecialSpawns messages already match or no patch target found")
        end
    else
        log.info("adapter dynamic_spawns SpecialSpawns.lua not found; storm warning patch skipped")
    end
    return true
end

local function apply_adapter(config, adapter, profile_name, mod_root, log, profile)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    if not profile_name then return true end
    local prepared = adapter.prepared_profiles and adapter.prepared_profiles[profile_name]
    if not prepared then
        log.warn("adapter " .. adapter.id .. " has no prepared profile " .. tostring(profile_name))
        return not adapter.required
    end

    -- Message authority: RandomDay owns join/joke text directly. DynamicSpawns warning transport
    -- is retained only for storm/breach-style alerts, with strings patched below.
    if adapter.id == "dynamic_spawns" then
        -- RandomDay owns join + daily joke messages through its player warning loop.
        -- DynamicSpawns keeps only spatial storm/breach warning transport, with day-specific text patched below.
        prepared.startMessage = false
        prepared.plainStartMessage = false
        prepared.jokeMessages = false
        prepared.jokeMsgChance = 0
        prepared.stormSpawnWarnings = true
        prepared.bossSpawnWarnings = true
    end

    local config_path = find_config_path(adapter, mod_root, utils)
    if not config_path then
        local msg = "adapter " .. adapter.id .. " config not found; skipping"
        if adapter.required then log.error(msg) return false else log.info(msg) return true end
    end

    local text, err = utils.read_file(config_path)
    if not text then log.error("adapter " .. adapter.id .. " read failed: " .. tostring(err)); return not adapter.required end

    local new_text, changed, found = patch_lines(text, prepared, config.external_mods.patch_only_existing_keys)
    local found_count = count_found(found)
    if #changed == 0 then
        log.info("adapter " .. adapter.id .. " matched_keys=" .. tostring(found_count) .. " no value changes for profile " .. profile_name .. " file=" .. config_path)
    else
        backup_file(config, utils, config_path, adapter.id)
        local ok, werr = utils.write_file(config_path, new_text)
        if not ok then log.error("adapter " .. adapter.id .. " write failed: " .. tostring(werr)); return not adapter.required end
        log.info("adapter " .. adapter.id .. " wrote exposed settings profile " .. profile_name .. " to " .. config_path .. " changed_keys=" .. table.concat(changed, ",") .. " applies_next_launch_unless_loaded_late")
    end

    if adapter.id == "dynamic_spawns" then
        apply_dynamic_spawns_messages(config, profile, mod_root, config_path, log, utils)
    end
    return true
end

function M.apply_profile(config, profile, mod_root, log)
    if not (config.external_mods and config.external_mods.enabled) then return { ok=true, status="external_mods_disabled" } end
    local map = profile.external_profiles or {}
    local result = { ok=true, status="external_mods_processed", applied={}, skipped={}, failed={} }
    for _, adapter_id in ipairs(config.external_mods.adapters or {}) do
        local path = mod_root .. "/Scripts/ax_external/adapters/" .. adapter_id .. ".lua"
        local ok, adapter = pcall(dofile, path)
        if not ok then
            log.warn("could not load adapter " .. tostring(adapter_id) .. ": " .. tostring(adapter))
            table.insert(result.skipped, tostring(adapter_id))
        else
            adapter.required = adapter.required == true
            if config.external_mods.optional_by_default then adapter.required = false end
            local applied_ok = apply_adapter(config, adapter, map[adapter.id] or map[adapter_id], mod_root, log, profile)
            if applied_ok then
                table.insert(result.applied, adapter.id or adapter_id)
            else
                table.insert(result.failed, adapter.id or adapter_id)
                result.ok = false
                result.status = "external_adapter_failed"
            end
        end
    end
    return result
end

return M
