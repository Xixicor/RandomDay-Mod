-- RandomDay public source
-- Module: RandomDay/Scripts/ax_core/init.lua
-- Ownership/Purpose: RandomDay public module; Own startup, one boot selection, writes, adapters, status, export, and
--   messages
-- Public contract: caller=Scripts/main.lua; inputs=configuration, active sandbox marker, profiles; outputs=prepared
--   result and operator outputs
-- Side effects: anchors runtime paths and may register LoopAsync
-- Failure/Recovery: failures=invalid safety lock; runtime directory unavailable; stage exception; recovery
--   states=prepared; degraded_state_persistence; write_failed
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-core-init

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
    local status = dofile(mod_root .. "/Scripts/ax_runtime/status.lua")

    log.configure(config.logging or {})

    local function resolve_session_mode()
        local configured = tostring(config.experience and config.experience.mode or "auto"):lower()
        if configured == "auto" then
            return config.package_mode == "singleplayer_manual" and "singleplayer_lan" or "persistent_dedicated"
        end
        return configured
    end

    if config.package_mode ~= "dedicated_server" and config.package_mode ~= "singleplayer_manual" then
        error("invalid package mode marker; expected dedicated_server or singleplayer_manual")
    end
    local session_mode = resolve_session_mode()
    local valid_session_modes = {
        persistent_dedicated = true,
        temporary_dedicated = true,
        singleplayer_lan = true,
    }
    if not valid_session_modes[session_mode] then
        error("invalid experience.mode; expected auto, persistent_dedicated, temporary_dedicated, or singleplayer_lan")
    end
    if config.package_mode == "singleplayer_manual" and session_mode ~= "singleplayer_lan" then
        error("singleplayer_manual package requires experience.mode=auto or singleplayer_lan")
    end
    if config.package_mode == "dedicated_server" and session_mode == "singleplayer_lan" then
        error("dedicated_server package cannot use experience.mode=singleplayer_lan")
    end
    config.experience = config.experience or {}
    config.experience.resolved_mode = session_mode

    local start_day_mode = tostring(config.cycle and config.cycle.start_day_mode or "configured"):lower()
    if start_day_mode ~= "configured" and start_day_mode ~= "random" then
        error("cycle.start_day_mode must be configured or random")
    end
    local day_progression_mode = tostring(config.cycle and config.cycle.day_progression_mode or "sequential"):lower()
    if day_progression_mode ~= "sequential" and day_progression_mode ~= "non_repeating_random" then
        error("cycle.day_progression_mode must be sequential or non_repeating_random")
    end
    local cycle_length = tonumber(config.cycle and config.cycle.cycle_length_days) or 17
    local start_day = tonumber(config.cycle and (config.cycle.start_day or config.cycle.bootstrap_day)) or 1
    if start_day ~= math.floor(start_day) or start_day < 1 or start_day > cycle_length then
        error("cycle.start_day must be a whole day inside the configured cycle")
    end
    if not config.sandbox or config.sandbox.backup_before_write ~= true or config.sandbox.restore_last_good_on_failure ~= true then
        error("sandbox recovery safety locks must remain true")
    end
    if not config.external_mods or config.external_mods.patch_only_existing_keys ~= true or config.external_mods.backup_before_write ~= true then
        error("external adapter transaction safety locks must remain true")
    end

    -- Runtime/export paths are always anchored to this mod folder, not to the process cwd.
    config.paths.runtime_dir = mod_root .. "/runtime"
    config.paths.web_export_dir = mod_root .. "/web_export"

    if config.package_mode == "singleplayer_manual" then
        -- The singleplayer/LAN asset never discovers user or save directories. It writes a
        -- manual-copy file inside the mod only and disables third-party adapter writes.
        config.paths.sandbox_path_override = nil
        config.paths.singleplayer_manual_only = true
        config.paths.write_sandbox_mirrors = false
        config.paths.sandbox_candidates = {
            mod_root .. "/runtime/singleplayer_manual/SandboxSettings.ini",
        }
        config.paths.sandbox_mirror_candidates = {}
        config.external_mods.enabled = false
    else
        -- Prefer paths derived from the installed mod while retaining explicit/cwd fallbacks.
        local world_name = tostring((config.paths and config.paths.world_name) or "")
        if world_name ~= "" then
            if not utils.is_safe_path_component(world_name) then
                error("paths.world_name must be one folder name containing only letters, numbers, spaces, underscores, or hyphens")
            end
        end
        local primary_candidates = {
            mod_root .. "/../../../../../Saved/Config/WindowsServer/SandboxSettings.ini",
            mod_root .. "/../../../../../../AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
        }
        for _, p in ipairs(config.paths.sandbox_candidates or {}) do table.insert(primary_candidates, p) end
        config.paths.sandbox_candidates = primary_candidates

        local mirrors = {}
        for _, p in ipairs(config.paths.sandbox_mirror_candidates or {}) do table.insert(mirrors, p) end
        if world_name ~= "" then
            table.insert(mirrors, mod_root .. "/../../../../../Saved/SaveGames/Server/Worlds/" .. world_name .. "/SandboxSettings.ini")
            table.insert(mirrors, mod_root .. "/../../../../../../AbioticFactor/Saved/SaveGames/Server/Worlds/" .. world_name .. "/SandboxSettings.ini")
        end
        config.paths.sandbox_mirror_candidates = mirrors
    end

    log.info("starting version " .. tostring(config.version) .. " package_mode=" .. tostring(config.package_mode) .. " session_mode=" .. tostring(session_mode) .. " application_mode=next_reboot_queue mod_root=" .. tostring(mod_root))
    if config.package_mode == "singleplayer_manual" then
        log.warn("singleplayer manual mode writes only RandomDay/runtime/singleplayer_manual/SandboxSettings.ini; copy it to the intended world while that world is stopped")
    end
    local dirs_ok, dirs_err, failed_dir = utils.ensure_runtime_dirs(config, mod_root, log)
    if not dirs_ok then error("required runtime directory unavailable: " .. tostring(failed_dir) .. ": " .. tostring(dirs_err)) end

    local boot_selection_owner = nil

    local function update_runtime_status(selected, write_result, external_result, reason)
        local ok, result = pcall(function()
            return status.write_current(config, profiles, selected, write_result, external_result, reason, mod_root, log)
        end)
        if not ok then
            log.warn("runtime status dictionary update failed: " .. tostring(result))
            return nil
        end
        return result
    end

    local function prepare_next_reboot(reason)
        if not boot_selection_owner then
            local sandbox_path = writer.resolve_sandbox_path(config, utils)
            local existing = utils.read_file(sandbox_path) or ""
            boot_selection_owner = calendar.create_boot_selection_owner(config, profiles, existing)
        end
        local selected = boot_selection_owner()

        if selected.active_profile then
            log.info("active loaded profile detected via " .. tostring(selected.active_detection or "unknown") .. ": Day " .. tostring(selected.active_profile.day) .. "/" .. tostring(profiles.cycle_length_days) .. " - " .. tostring(selected.active_profile.display_name))
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
            local state_commit_ok, state_commit_err = true, nil
            if calendar.commit_selection then state_commit_ok, state_commit_err = calendar.commit_selection(config, profiles, selected, mod_root, log) end
            write_result.state_commit_ok = state_commit_ok
            write_result.state_commit_error = state_commit_err
            if not state_commit_ok then
                log.error("sandbox bytes were prepared, but rotation state persistence failed; status is degraded and adapters/player prepared messaging were skipped. The sandbox marker remains the next-start recovery source.")
                local external_result = { ok=false, status="skipped_state_persistence_failed", adapters={} }
                update_runtime_status(selected, write_result, external_result, reason)
                web.export_next_reboot(config, profiles, selected, mod_root, log, write_result, external_result)
                return false
            end

            -- SandboxSettings are next-reboot only. External Lua mods may load after RandomDay in the observed UE4SS order,
            -- so their exposed settings must match the active loaded day, not the prepared next day.
            -- If no active marker exists during bootstrap, use the prepared profile as the only available profile.
            local external_profile = selected.active_profile or profile
            log.info("external adapters target active-loaded profile Day " .. tostring(external_profile.day) .. "/" .. tostring(profiles.cycle_length_days) .. " - " .. tostring(external_profile.display_name))
            local external_result = external.apply_profile(config, external_profile, mod_root, log)
            local status_snapshot = update_runtime_status(selected, write_result, external_result, reason)
            web.export_next_reboot(config, profiles, selected, mod_root, log, write_result, external_result)
            player.install_next_reboot(config, profiles, selected, mod_root, log, status_snapshot)
            return true
        else
            log.error("next reboot profile write failed: " .. tostring(write_result.error))
            update_runtime_status(selected, write_result, { ok=false, status="failed", adapters={} }, reason)
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
