-- RandomDay public source
-- Module: RandomDay/Scripts/ax_web/export.lua
-- Ownership/Purpose: RandomDay public module; Build compact JSON and HTML active/prepared views
-- Public contract: caller=ax_core/init.lua; inputs=selection, write, adapter, translation status;
--   outputs=web_export/today.json and today.html
-- Side effects: transactionally replaces web outputs
-- Failure/Recovery: failures=export directory or transaction failure; recovery states=prepared_for_next_reboot;
--   next_reboot_already_prepared; degraded_state_persistence; write_failed_or_rollback
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-web-export

local M = {}

local function family_list_json(utils, list)
    local out = {}
    for _, v in ipairs(list or {}) do table.insert(out, utils.json_escape(v)) end
    return "[" .. table.concat(out, ", ") .. "]"
end

local function adapters_json(config, utils, external_result, mod_root, runtime_status)
    local diagnostics = runtime_status.public_adapter_results(config, external_result, mod_root, utils)
    return runtime_status.json_encode(diagnostics)
end

local function html_escape(value)
    local text = tostring(value or "")
    text = text:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&#39;")
    return text
end

local function selected_to_json(config, utils, selected, write_result, status, external_result, mod_root)
    local translation = dofile(mod_root .. "/Scripts/ax_profiles/translation.lua")
    local runtime_status = dofile(mod_root .. "/Scripts/ax_runtime/status.lua")
    local translated = translation.translate_selection(selected or {})
    local active = selected and selected.active_profile or nil
    local prepared = selected and selected.prepared_profile or nil
    local message_preview = translation.format_join(translated.active, translated.prepared, config.player_message or {})
    local prepared_preview = translation.format_join(nil, translated.prepared, config.player_message or {})
    local lines = {}
    table.insert(lines, "{")
    table.insert(lines, "  \"schema_version\": 2,")
    table.insert(lines, "  \"status_schema\": \"randomday_public_status_v2\",")
    table.insert(lines, "  \"dictionary_version\": \"randomday_dictionary_v2\",")
    table.insert(lines, "  \"mod\": \"RandomDay\",")
    table.insert(lines, "  \"version\": " .. utils.json_escape(config.version or "unversioned") .. ",")
    table.insert(lines, "  \"package_mode\": " .. utils.json_escape(config.package_mode or "invalid") .. ",")
    table.insert(lines, "  \"mode\": \"next_reboot_queue\",")
    table.insert(lines, "  \"session_mode\": " .. utils.json_escape(selected and selected.session_mode or config.experience and config.experience.resolved_mode or "unknown") .. ",")
    table.insert(lines, "  \"start_day_mode\": " .. utils.json_escape(selected and selected.start_day_mode or "configured") .. ",")
    table.insert(lines, "  \"configured_start_day\": " .. tostring(selected and selected.configured_start_day or 1) .. ",")
    table.insert(lines, "  \"day_progression_mode\": " .. utils.json_escape(selected and selected.day_progression_mode or "sequential") .. ",")
    table.insert(lines, "  \"day_order\": " .. runtime_status.json_encode(selected and selected.day_order or {}) .. ",")
    table.insert(lines, "  \"prepared_day_position\": " .. tostring(selected and selected.prepared_day_position or 0) .. ",")
    table.insert(lines, "  \"profile_system\": \"seventeen_suns_non_repeating_rotation\",")
    table.insert(lines, "  \"family_selection_mode\": " .. utils.json_escape(selected and selected.family_mode or "non_repeating_random_run") .. ",")
    table.insert(lines, "  \"rotation_id\": " .. utils.json_escape(selected and selected.rotation_id or "unknown") .. ",")
    table.insert(lines, "  \"run_id\": " .. utils.json_escape(selected and selected.run_id or "unknown") .. ",")
    table.insert(lines, "  \"selection_status\": " .. utils.json_escape(selected and selected.status or "unknown") .. ",")
    table.insert(lines, "  \"active_profile_detection\": " .. utils.json_escape(selected and selected.active_detection or "unresolved") .. ",")
    table.insert(lines, "  \"active_family\": " .. utils.json_escape(active and active.family or selected and selected.active_family or "unknown") .. ",")
    table.insert(lines, "  \"prepared_next_family\": " .. utils.json_escape(prepared and prepared.family or selected and selected.prepared_family or "unknown") .. ",")
    table.insert(lines, "  \"profile_status\": " .. utils.json_escape(status) .. ",")
    table.insert(lines, "  \"prepared_ready\": " .. tostring(write_result and write_result.ok == true and write_result.state_commit_ok ~= false) .. ",")
    table.insert(lines, "  \"state_commit_ok\": " .. tostring(write_result and write_result.state_commit_ok == true) .. ",")
    table.insert(lines, "  \"state_commit_error_code\": " .. utils.json_escape(write_result and write_result.state_commit_ok == false and "state_persistence_failed" or "") .. ",")
    table.insert(lines, "  \"sandbox_transaction_status\": " .. utils.json_escape(write_result and (write_result.transaction_status or write_result.status) or "unknown") .. ",")
    table.insert(lines, "  \"sandbox_rollback_status\": " .. utils.json_escape(write_result and write_result.rollback_status or "not_needed") .. ",")
    table.insert(lines, "  \"active_cycle_day\": " .. tostring(active and active.day or 0) .. ",")
    table.insert(lines, "  \"active_profile_id\": " .. utils.json_escape(active and active.id or "unknown_current_boot") .. ",")
    table.insert(lines, "  \"active_display_name\": " .. utils.json_escape(active and active.display_name or "Current boot did not contain a RandomDay marker") .. ",")
    table.insert(lines, "  \"active_profile_translation\": " .. runtime_status.json_encode(translated.active) .. ",")
    table.insert(lines, "  \"prepared_next_cycle_day\": " .. tostring(prepared and prepared.day or 0) .. ",")
    table.insert(lines, "  \"prepared_next_profile_id\": " .. utils.json_escape(prepared and prepared.id or "none") .. ",")
    table.insert(lines, "  \"prepared_next_display_name\": " .. utils.json_escape(prepared and prepared.display_name or "None") .. ",")
    table.insert(lines, "  \"prepared_profile_translation\": " .. runtime_status.json_encode(translated.prepared) .. ",")
    table.insert(lines, "  \"prepared_next_message_line\": " .. utils.json_escape(prepared and prepared.message_line or "") .. ",")
    table.insert(lines, "  \"family_locked_until_day_17\": " .. tostring((selected and selected.start_day_mode or "configured") == "configured" and (selected and selected.configured_start_day or 1) == 1 and (selected and selected.day_progression_mode or "sequential") == "sequential") .. ",")
    table.insert(lines, "  \"family_locked_until_cycle_complete\": true,")
    table.insert(lines, "  \"remaining_families_count\": " .. tostring(selected and selected.remaining_families and #selected.remaining_families or 0) .. ",")
    table.insert(lines, "  \"remaining_families\": " .. family_list_json(utils, selected and selected.remaining_families or {}) .. ",")
    table.insert(lines, "  \"completed_families\": " .. family_list_json(utils, selected and selected.completed_families or {}) .. ",")
    local encounter = prepared and prepared.encounter or nil
    table.insert(lines, "  \"prepared_next_encounter_profile\": " .. utils.json_escape(encounter and encounter.profile or "none") .. ",")
    table.insert(lines, "  \"prepared_next_encounter_tier\": " .. utils.json_escape(encounter and encounter.tier or "none") .. ",")
    table.insert(lines, "  \"prepared_next_encounter_theme\": " .. utils.json_escape(encounter and encounter.theme or "none") .. ",")
    table.insert(lines, "  \"prepared_next_mixed_encounter_chance\": " .. tostring(encounter and encounter.mixed_encounter_chance or 0) .. ",")
    local world_scope = config.world_scope or {}
    table.insert(lines, "  \"world_scope_enabled\": " .. tostring(world_scope.enabled == true) .. ",")
    table.insert(lines, "  \"world_scope_affect_open_worlds\": " .. tostring(world_scope.affect_open_worlds == true) .. ",")
    table.insert(lines, "  \"world_scope_unknown_policy\": " .. utils.json_escape(world_scope.unknown_world_policy or "allow") .. ",")
    table.insert(lines, "  \"world_scope_protected_world_count\": " .. tostring(#(world_scope.protected_worlds or {})) .. ",")
    table.insert(lines, "  \"prepared_next_join_message\": " .. utils.json_escape(prepared and prepared_preview or "") .. ",")
    table.insert(lines, "  \"message_preview\": " .. utils.json_escape(message_preview) .. ",")
    table.insert(lines, "  \"selected_at\": " .. utils.json_escape(selected and selected.selected_at or os.date("%Y-%m-%d %H:%M:%S")) .. ",")
    table.insert(lines, "  \"sandbox_target\": " .. utils.json_escape(config.package_mode == "singleplayer_manual" and "singleplayer_manual_output" or "configured_dedicated_primary") .. ",")
    table.insert(lines, "  \"manual_copy_required\": " .. tostring(config.package_mode == "singleplayer_manual") .. ",")
    table.insert(lines, "  \"hash\": " .. utils.json_escape(write_result and write_result.hash or "") .. ",")
    table.insert(lines, "  \"external_mods_status\": " .. utils.json_escape(external_result and external_result.status or "not_reported") .. ",")
    table.insert(lines, "  \"external_adapters\": " .. adapters_json(config, utils, external_result, mod_root, runtime_status) .. ",")
    table.insert(lines, "  \"restart_required_for_prepared_profile\": true,")
    table.insert(lines, "  \"notes\": \"The family remains locked until every day in its persisted 17-day order is used. The prepared profile is never described as active before restart or manual copy.\"")
    table.insert(lines, "}")
    return table.concat(lines, "\n") .. "\n"
end

local function list_html(values)
    local out = {}
    for _, value in ipairs(values or {}) do table.insert(out, "<li>" .. html_escape(value) .. "</li>") end
    if #out == 0 then return "<li>No major deviations from normal were identified.</li>" end
    return table.concat(out)
end

local function domains_html(translated)
    if not translated or not translated.domains then return "<p>Profile calculations are unavailable.</p>" end
    local out = { "<ul>" }
    for _, key in ipairs({ "combat", "survival", "resources", "environment", "recovery" }) do
        local row = translated.domains[key]
        if row then table.insert(out, "<li><strong>" .. html_escape(row.rating) .. ":</strong> " .. html_escape(row.summary) .. "</li>") end
    end
    table.insert(out, "</ul>")
    return table.concat(out)
end

local function profile_html(heading, translated, unavailable)
    if not translated then return "<section><h2>" .. html_escape(heading) .. "</h2><p>" .. html_escape(unavailable) .. "</p></section>" end
    return "<section><h2>" .. html_escape(heading) .. ": Day " .. tostring(translated.day) .. "/17 - " .. html_escape(translated.display_name) .. "</h2>" ..
        "<p><strong>" .. html_escape(translated.overall.label) .. ":</strong> " .. html_escape(translated.overall.reason) .. "</p>" ..
        domains_html(translated) ..
        "<h3>What changes most</h3><ul>" .. list_html(translated.top_facts) .. "</ul>" ..
        "<p><strong>Preparation:</strong> " .. html_escape(translated.advice) .. "</p></section>"
end

local function world_scope_text(config)
    local scope = config.world_scope or {}
    if scope.enabled ~= true then return "World-scope integration is disabled." end
    local protected = #(scope.protected_worlds or {})
    if scope.affect_open_worlds == true then
        return "Open worlds are affected. " .. tostring(protected) .. " protected world pattern" .. (protected == 1 and " is" or "s are") .. " excluded; unknown worlds use the " .. tostring(scope.unknown_world_policy or "block") .. " policy."
    end
    return "Open worlds are not affected by the configured world-scope policy."
end

function M.export_next_reboot(config, profiles, selected, mod_root, log, write_result, external_result)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local translation = dofile(mod_root .. "/Scripts/ax_profiles/translation.lua")
    if not utils.mkdir(config.paths.web_export_dir) then
        local result = { ok=false, status="export_directory_failed", error="web export directory creation failed" }
        log.error(result.error)
        return result
    end
    local status
    if write_result and write_result.state_commit_ok == false then status = "degraded_state_persistence"
    elseif write_result and write_result.already_current then status = "next_reboot_already_prepared"
    else status = "prepared_for_next_reboot" end
    local json_path = config.paths.web_export_dir .. "/today.json"
    -- JSON and HTML are independent observer transactions; either failure downgrades only
    -- export status and cannot change the prepared profile.
    local json_result = utils.transactional_replace(json_path, selected_to_json(config, utils, selected, write_result, status, external_result, mod_root))
    if not json_result.ok then log.error("status JSON transaction failed: " .. tostring(json_result.status) .. ": " .. tostring(json_result.error)) end
    local translated = translation.translate_selection(selected or {})
    local html = "<!doctype html><html><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\"><title>RandomDay status</title></head><body>" ..
        "<main><h1>RandomDay - Seventeen Suns Rotation</h1>" ..
        "<p>Current rules and next-reboot rules are shown separately. The queued profile is not active until the game process restarts.</p>" ..
        "<p>Status: " .. html_escape(status) .. "; rotation: " .. html_escape(selected and selected.rotation_id or "unknown") .. ".</p>" ..
        profile_html("Active now", translated.active, "The current game boot has no readable RandomDay marker.") ..
        profile_html("Prepared for next reboot", translated.prepared, "No next-reboot profile is prepared.") ..
        "<section><h2>Rotation and scope</h2><p>The current family remains locked until its persisted 17-day order is complete. " .. html_escape(world_scope_text(config)) .. "</p></section>" ..
        "</main></body></html>"
    local html_result = utils.transactional_replace(config.paths.web_export_dir .. "/today.html", html)
    if not html_result.ok then log.error("status HTML transaction failed: " .. tostring(html_result.status) .. ": " .. tostring(html_result.error)) end
    local ok = json_result.ok and html_result.ok
    if ok then log.info("website export updated for Seventeen Suns Rotation: " .. config.paths.web_export_dir .. "/today.json") end
    return { ok=ok, status=ok and status or "export_failed", json=json_result, html=html_result }
end

function M.export(config, profiles, profile, selected, mod_root, log, write_result)
    selected = selected or { active_profile = profile, prepared_profile = profile, selected_at = os.date("%Y-%m-%d %H:%M:%S") }
    return M.export_next_reboot(config, profiles, selected, mod_root, log, write_result, { status = "not_reported", adapters={} })
end

function M.export_failure(config, profiles, profile, selected, mod_root, log, write_result)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    if not utils.mkdir(config.paths.web_export_dir) then return { ok=false, status="export_directory_failed" } end
    write_result = write_result or {}
    write_result.hash = ""
    local result = utils.transactional_replace(config.paths.web_export_dir .. "/today.json", selected_to_json(config, utils, selected or { prepared_profile = profile }, write_result, "write_failed_or_rollback", { status = "failed", adapters={} }, mod_root))
    if not result.ok then log.error("failure status export transaction failed: " .. tostring(result.status) .. ": " .. tostring(result.error)) end
    return { ok=result.ok, status=result.ok and "write_failed_or_rollback" or "export_failed", json=result }
end

M._test = {
    selected_to_json = selected_to_json,
    adapters_json = adapters_json,
}

return M
