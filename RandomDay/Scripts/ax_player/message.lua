local M = {}

local runtime = {
    installed = false,
    seen_players = {},
    selected = nil,
    messages = nil,
    config = nil,
    log = nil,
    profiles = nil,
}

local function safe_full_name(obj)
    if not obj then return "<nil>" end
    local ok, value = pcall(function()
        if obj.GetFullName then return obj:GetFullName() end
        return tostring(obj)
    end)
    if ok and value then return tostring(value) end
    return tostring(obj)
end

local function compact_name(name)
    name = tostring(name or "RandomDay")
    name = name:gsub("Authorization", "Auth")
    name = name:gsub("Department", "Dept")
    name = name:gsub("Performance", "Perf")
    name = name:gsub("Experimental", "Experiment")
    name = name:gsub("End%-of%-Rotation", "End Rotation")
    return name
end

local function get_message_pack(profile)
    if not profile or not runtime.messages then return nil end
    if runtime.messages.get then return runtime.messages.get(profile) end
    return nil
end

local function pick_joke(pack, key)
    local jokes = pack and pack.jokes or nil
    if not jokes or #jokes == 0 then return nil end
    local seed = tostring(key or "") .. tostring(os.time())
    local n = 0
    for i = 1, #seed do n = (n + string.byte(seed, i) * i) % 2147483647 end
    return jokes[(n % #jokes) + 1]
end

local function display_warning_to_player(char, message, criticality, beep, log)
    if not char or not message or message == "" then return false end
    local ok, err = pcall(function()
        if not char.IsValid or not char:IsValid() then return false end
        if not char.Client_DisplayWarningMessage then return false end
        local fText = nil
        if FText then fText = FText(message) end
        if not fText then fText = message end
        char:Client_DisplayWarningMessage(fText, criticality or 0, beep == true)
        return true
    end)
    if not ok then
        if log then log.warn("player warning message failed for " .. safe_full_name(char) .. ": " .. tostring(err)) end
        return false
    end
    return true
end

local function current_active_profile(selected)
    if selected and selected.active_profile then return selected.active_profile end
    return nil
end

local function make_join_message(active, prepared, pack)
    if pack and pack.join then return pack.join end
    if active then
        return "RandomDay\nDay " .. tostring(active.day) .. "/17: " .. compact_name(active.display_name) .. "\nstudio.speclang.pro"
    end
    if prepared then
        return "RandomDay\nQueued Day " .. tostring(prepared.day) .. "/17\nRestart to load.\nstudio.speclang.pro"
    end
    return "RandomDay\nStatus unavailable.\nstudio.speclang.pro"
end

local function notify_joined_players()
    local config = runtime.config or {}
    local log = runtime.log
    local selected = runtime.selected or {}
    local active = current_active_profile(selected)
    local prepared = selected.prepared_profile
    local pack = get_message_pack(active or prepared)
    local join_message = make_join_message(active, prepared, pack)

    if not FindAllOf then
        if log then log.warn("FindAllOf unavailable; cannot deliver player-facing RandomDay messages") end
        return
    end

    local ok, players = pcall(function() return FindAllOf("Abiotic_PlayerCharacter_C") end)
    if not ok or not players then return end

    for _, char in ipairs(players) do
        if char and (not char.IsValid or char:IsValid()) then
            local key = safe_full_name(char)
            local state = runtime.seen_players[key]
            local now = os.time()
            if not state then
                state = { first_seen = now, join_sent = false, joke_sent = false }
                runtime.seen_players[key] = state
            end
            if not state.join_sent then
                if display_warning_to_player(char, join_message, config.player_message.criticality_join or 2, false, log) then
                    state.join_sent = true
                    state.join_sent_at = now
                    if log then log.info("sent RandomDay join message to " .. key) end
                end
            elseif config.player_message.send_daily_joke_after_join and not state.joke_sent then
                local delay = tonumber(config.player_message.daily_joke_delay_seconds) or 8
                if now - (state.join_sent_at or state.first_seen or now) >= delay then
                    local joke = pick_joke(pack, key)
                    if joke then
                        if display_warning_to_player(char, joke, config.player_message.criticality_joke or 0, false, log) then
                            state.joke_sent = true
                            if log then log.info("sent RandomDay daily note to " .. key) end
                        end
                    else
                        state.joke_sent = true
                    end
                end
            end
        end
    end
end

local function install_runtime_loop(config, profiles, selected, mod_root, log)
    if runtime.installed then return end
    if not (config.player_message and config.player_message.broadcast_enabled) then return end
    runtime.installed = true
    runtime.selected = selected
    runtime.config = config
    runtime.log = log
    runtime.profiles = profiles

    local ok, messages = pcall(dofile, mod_root .. "/Scripts/ax_profiles/messages_17.lua")
    if ok then runtime.messages = messages else log.warn("message bank load failed: " .. tostring(messages)) end

    local delay = tonumber(config.player_message.startup_delay_ms) or 30000
    local interval = tonumber(config.player_message.join_check_interval_ms) or 15000

    if ExecuteWithDelay then
        ExecuteWithDelay(delay, function()
            local ok1, err1 = pcall(notify_joined_players)
            if not ok1 and log then log.warn("join-message initial pass failed: " .. tostring(err1)) end
        end)
    else
        notify_joined_players()
    end

    if LoopAsync then
        LoopAsync(interval, function()
            local ok2, err2 = pcall(notify_joined_players)
            if not ok2 and log then log.warn("join-message loop failed: " .. tostring(err2)) end
            return false
        end)
        log.info("registered player-facing RandomDay message loop interval_ms=" .. tostring(interval))
    else
        log.warn("LoopAsync unavailable; only startup/delayed RandomDay message pass can run")
    end
end

function M.install_next_reboot(config, profiles, selected, mod_root, log)
    if not (config.player_message and config.player_message.enabled) then return end
    local active = selected and selected.active_profile or nil
    local prepared = selected and selected.prepared_profile or nil
    local messages = nil
    local okm, msgbank = pcall(dofile, mod_root .. "/Scripts/ax_profiles/messages_17.lua")
    if okm then messages = msgbank end
    local target_profile = active or prepared
    local pack = (messages and messages.get and target_profile) and messages.get(target_profile) or nil

    local active_text
    if active then
        active_text = "RandomDay active: Day " .. tostring(active.day) .. "/17 - " .. tostring(active.display_name) .. ". Rules: studio.speclang.pro"
    else
        active_text = "RandomDay installed. Day " .. tostring(prepared and prepared.day or "?") .. "/17 queued for next reboot. Rules: studio.speclang.pro"
    end
    local prepared_text = "Next reboot: Day " .. tostring(prepared and prepared.day or "?") .. "/17 - " .. tostring(prepared and prepared.display_name or "Unknown") .. "."

    if config.player_message.log_on_startup then
        log.info("player/status message: " .. active_text)
        log.info("next reboot message: " .. prepared_text)
    end

    install_runtime_loop(config, profiles, selected, mod_root, log)

    if config.player_message.register_console_command and RegisterConsoleCommandHandler then
        local cmd = config.player_message.console_command or "randomday_status"
        RegisterConsoleCommandHandler(cmd, function(FullCommand, Parameters, OutputDevice)
            local message = active_text .. " " .. prepared_text
            if OutputDevice and OutputDevice.Log then
                OutputDevice:Log(message)
            else
                print(message .. "\n")
            end
            return true
        end)
        log.info("registered console command: " .. cmd)
    end
end

function M.install(config, profiles, profile, mod_root, log)
    return M.install_next_reboot(config, profiles, { active_profile = profile, prepared_profile = profile }, mod_root, log)
end

return M
