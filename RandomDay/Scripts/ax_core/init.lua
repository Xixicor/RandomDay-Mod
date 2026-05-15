local M = {}

function M.run(mod_root)
    local log = dofile(mod_root .. "/Scripts/ax_core/log.lua")
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local config = dofile(mod_root .. "/Scripts/ax_config/server.lua")
    local profiles = dofile(mod_root .. "/Scripts/ax_profiles/randomday_17.lua")
    local calendar = dofile(mod_root .. "/Scripts/ax_cycle/calendar.lua")
    local writer = dofile(mod_root .. "/Scripts/ax_sandbox/writer.lua")
    local external = dofile(mod_root .. "/Scripts/ax_external/bridge.lua")
    local web = dofile(mod_root .. "/Scripts/ax_web/export.lua")
    local player = dofile(mod_root .. "/Scripts/ax_player/message.lua")

    log.configure(config.logging or {})

    -- Hostinger/AMP may launch the server with a working directory outside Binaries/Win64.
    -- Runtime/export paths must be anchored to this mod folder, not to the process cwd.
    config.paths.runtime_dir = mod_root .. "/runtime"
    config.paths.web_export_dir = mod_root .. "/web_export"

    -- Prefer sandbox paths derived from the actual mod location, while retaining cwd-based fallbacks.
    local world_name = tostring((config.paths and config.paths.world_name) or "")
    local mod_based_candidates = {
        -- AMP/Hostinger override path used by -SandboxIniPath=Config/WindowsServer/SandboxSettings.ini
        mod_root .. "/../../../../../Saved/Config/WindowsServer/SandboxSettings.ini",
        mod_root .. "/../../../../../../AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    }
    if world_name ~= "" then
        table.insert(mod_based_candidates, mod_root .. "/../../../../../Saved/SaveGames/Server/Worlds/" .. world_name .. "/SandboxSettings.ini")
        table.insert(mod_based_candidates, mod_root .. "/../../../../../../AbioticFactor/Saved/SaveGames/Server/Worlds/" .. world_name .. "/SandboxSettings.ini")
    end
    local merged = {}
    for _, p in ipairs(mod_based_candidates) do table.insert(merged, p) end
    for _, p in ipairs(config.paths.sandbox_candidates or {}) do table.insert(merged, p) end
    config.paths.sandbox_candidates = merged

    local mirror_merged = {
        mod_root .. "/../../../../../Saved/Config/WindowsServer/SandboxSettings.ini",
        mod_root .. "/../../../../../../AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    }
    if world_name ~= "" then
        table.insert(mirror_merged, mod_root .. "/../../../../../Saved/SaveGames/Server/Worlds/" .. world_name .. "/SandboxSettings.ini")
        table.insert(mirror_merged, mod_root .. "/../../../../../../AbioticFactor/Saved/SaveGames/Server/Worlds/" .. world_name .. "/SandboxSettings.ini")
    end
    for _, p in ipairs(config.paths.sandbox_mirror_candidates or {}) do table.insert(mirror_merged, p) end
    config.paths.sandbox_mirror_candidates = mirror_merged

    log.info("starting version " .. tostring(config.version) .. " mode=next_reboot_queue mod_root=" .. tostring(mod_root))
    utils.ensure_runtime_dirs(config, mod_root, log)

    local function prepare_next_reboot(reason)
        local sandbox_path = writer.resolve_sandbox_path(config, utils)
        local existing = utils.read_file(sandbox_path) or ""
        local selected = calendar.select_next_reboot_profile(config, profiles, existing)

        if selected.active_profile then
            log.info("active loaded profile marker: Day " .. tostring(selected.active_profile.day) .. "/" .. tostring(profiles.cycle_length_days) .. " - " .. tostring(selected.active_profile.display_name))
        else
            log.warn("no RandomDay active profile marker found in SandboxSettings.ini; preparing bootstrap Day " .. tostring(selected.prepared_day) .. " for next reboot")
        end

        local profile = selected.prepared_profile
        if not profile then
            log.error("no profile selected for next reboot; reason=" .. tostring(reason))
            return false
        end

        log.info("preparing NEXT REBOOT profile " .. tostring(profile.family_label or profile.family or "") .. " Day " .. tostring(profile.day) .. "/" .. tostring(profiles.cycle_length_days) .. " - " .. profile.display_name .. " reason=" .. tostring(reason))

        local write_result = writer.ensure_profile_written(config, profiles, profile, mod_root, log, reason)
        if write_result.ok then
            -- SandboxSettings are next-reboot only. External Lua mods may load after RandomDay in the observed UE4SS order,
            -- so their exposed settings must match the active loaded day, not the prepared next day.
            -- If no active marker exists during bootstrap, use the prepared profile as the only available profile.
            local external_profile = selected.active_profile or profile
            log.info("external adapters target active-loaded profile Day " .. tostring(external_profile.day) .. "/" .. tostring(profiles.cycle_length_days) .. " - " .. tostring(external_profile.display_name))
            local external_result = external.apply_profile(config, external_profile, mod_root, log)
            if calendar.commit_selection then calendar.commit_selection(config, profiles, selected, mod_root, log) end
            web.export_next_reboot(config, profiles, selected, mod_root, log, write_result, external_result)
            player.install_next_reboot(config, profiles, selected, mod_root, log)
            return true
        else
            log.error("next reboot profile write failed: " .. tostring(write_result.error))
            web.export_failure(config, profiles, profile, selected, mod_root, log, write_result)
            return false
        end
    end

    prepare_next_reboot("startup")

    local interval = tonumber(config.cycle and config.cycle.check_interval_ms) or 0
    if interval > 0 and LoopAsync then
        LoopAsync(interval, function()
            local ok, err = pcall(function()
                prepare_next_reboot("supervision_loop")
            end)
            if not ok then log.error("supervision error: " .. tostring(err)) end
            return false
        end)
        log.info("registered next-reboot supervision loop interval_ms=" .. tostring(interval))
    else
        log.info("supervision loop disabled; next-reboot profile prepared once at startup")
    end
end

return M
