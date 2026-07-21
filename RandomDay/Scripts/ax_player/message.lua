-- RandomDay public source
-- Module: RandomDay/Scripts/ax_player/message.lua
-- Ownership/Purpose: RandomDay public module; Send bounded join/daily status and optional console output
-- Public contract: caller=ax_core/init.lua; inputs=active/prepared translation and player config; outputs=client
--   warning messages and log results
-- Side effects: may register LoopAsync and console handler
-- Failure/Recovery: failures=player unavailable; message transport unavailable; recovery states=message_sent;
--   no_players; transport_unavailable
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-player-message

local M = {}

local runtime = {
    installed = false,
    seen_players = {},
    selected = nil,
    config = nil,
    log = nil,
    profiles = nil,
    status = nil,
    translation = nil,
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

local function display_warning_to_player(char, message, criticality, beep, log)
    if not char or not message or message == "" then return false end
    local ok, delivered = pcall(function()
        if not char.IsValid or not char:IsValid() then return false end
        if not char.Client_DisplayWarningMessage then return false end
        local fText = nil
        if FText then fText = FText(message) end
        if not fText then fText = message end
        char:Client_DisplayWarningMessage(fText, criticality or 0, beep == true)
        return true
    end)
    if not ok then
        if log then log.warn("player warning message failed for " .. safe_full_name(char) .. ": " .. tostring(delivered)) end
        return false
    end
    return delivered == true
end

local function translations_for_selection(selected)
    if not runtime.translation then return { active = nil, prepared = nil } end
    return runtime.translation.translate_selection(selected or {})
end

local function make_join_message(active, prepared, translation, options)
    if translation then
        local translated = translation.translate_selection({ active_profile=active, prepared_profile=prepared })
        return translation.format_join(translated.active, translated.prepared, options or {})
    end
    if active then return "RandomDay\nDay " .. tostring(active.day) .. "/17 active." end
    if prepared then return "RandomDay queued D" .. tostring(prepared.day) .. "/17\nRestart to load prepared profile." end
    return "RandomDay\nStatus unavailable."
end

local function daily_note(selected)
    local translated = translations_for_selection(selected)
    return runtime.translation.format_note(translated.active or translated.prepared, runtime.config and runtime.config.player_message or {})
end

local function notify_joined_players()
    local config = runtime.config or {}
    local player_config = config.player_message or {}
    local log = runtime.log
    local selected = runtime.selected or {}
    local join_message = make_join_message(selected.active_profile, selected.prepared_profile, runtime.translation, player_config)

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
                state = { first_seen = now, join_sent = false, note_sent = false }
                runtime.seen_players[key] = state
            end
            if not state.join_sent then
                if display_warning_to_player(char, join_message, player_config.criticality_join or 2, false, log) then
                    state.join_sent = true
                    state.join_sent_at = now
                    if log then log.info("sent bounded RandomDay join message to " .. key) end
                end
            elseif player_config.send_daily_joke_after_join and not state.note_sent then
                local delay = tonumber(player_config.daily_joke_delay_seconds) or 10
                if now - (state.join_sent_at or state.first_seen or now) >= delay then
                    local note = daily_note(selected)
                    if display_warning_to_player(char, note, player_config.criticality_joke or 0, false, log) then
                        state.note_sent = true
                        if log then log.info("sent bounded RandomDay profile note to " .. key) end
                    end
                end
            end
        end
    end
end

local function install_runtime_loop(config, profiles, selected, mod_root, log, status_snapshot)
    runtime.selected = selected
    runtime.config = config
    runtime.log = log
    runtime.profiles = profiles
    runtime.status = status_snapshot
    runtime.translation = runtime.translation or dofile(mod_root .. "/Scripts/ax_profiles/translation.lua")
    if runtime.installed then return end
    if not (config.player_message and config.player_message.broadcast_enabled) then return end
    runtime.installed = true

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
        log.info("registered bounded player-facing message loop interval_ms=" .. tostring(interval))
    else
        log.warn("LoopAsync unavailable; only startup/delayed RandomDay message pass can run")
    end
end

function M.install_next_reboot(config, profiles, selected, mod_root, log, status_snapshot)
    if not (config.player_message and config.player_message.enabled) then return end
    local translation = dofile(mod_root .. "/Scripts/ax_profiles/translation.lua")
    local translated = translation.translate_selection(selected or {})
    local active_text = translation.format_join(translated.active, translated.prepared, config.player_message)
    local prepared_text = translated.prepared and ("Next reboot: Day " .. tostring(translated.prepared.day) .. "/17 - " .. translated.prepared.display_name .. ". " .. translated.prepared.summary) or "No next-reboot profile prepared."

    if config.player_message.log_on_startup then
        log.info("player message preview:\n" .. active_text)
        log.info("next reboot admin summary: " .. prepared_text)
    end

    install_runtime_loop(config, profiles, selected, mod_root, log, status_snapshot)

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

M._test = {
    display_warning_to_player = display_warning_to_player,
    make_join_message = make_join_message,
}

return M
