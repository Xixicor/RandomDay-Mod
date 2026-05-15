local M = {}

local function family_list_json(utils, list)
    local out = {}
    for _, v in ipairs(list or {}) do table.insert(out, utils.json_escape(v)) end
    return "[" .. table.concat(out, ", ") .. "]"
end

local function selected_to_json(utils, selected, write_result, status, external_result)
    local active = selected and selected.active_profile or nil
    local prepared = selected and selected.prepared_profile or nil
    local lines = {}
    table.insert(lines, "{")
    table.insert(lines, "  \"mod\": \"RandomDay\",")
    table.insert(lines, "  \"version\": " .. utils.json_escape("0.3.14-alpha-seventeen-suns-rotation") .. ",")
    table.insert(lines, "  \"mode\": \"next_reboot_queue\",")
    table.insert(lines, "  \"profile_system\": \"seventeen_suns_non_repeating_rotation\",")
    table.insert(lines, "  \"family_selection_mode\": " .. utils.json_escape(selected and selected.family_mode or "non_repeating_random_run") .. ",")
    table.insert(lines, "  \"rotation_id\": " .. utils.json_escape(selected and selected.rotation_id or "unknown") .. ",")
    table.insert(lines, "  \"run_id\": " .. utils.json_escape(selected and selected.run_id or "unknown") .. ",")
    table.insert(lines, "  \"active_family\": " .. utils.json_escape(active and active.family or selected and selected.active_family or "unknown") .. ",")
    table.insert(lines, "  \"prepared_next_family\": " .. utils.json_escape(prepared and prepared.family or selected and selected.prepared_family or "unknown") .. ",")
    table.insert(lines, "  \"profile_status\": " .. utils.json_escape(status) .. ",")
    table.insert(lines, "  \"active_cycle_day\": " .. tostring(active and active.day or 0) .. ",")
    table.insert(lines, "  \"active_profile_id\": " .. utils.json_escape(active and active.id or "unknown_current_boot") .. ",")
    table.insert(lines, "  \"active_display_name\": " .. utils.json_escape(active and active.display_name or "Current boot did not contain an RandomDay marker") .. ",")
    table.insert(lines, "  \"prepared_next_cycle_day\": " .. tostring(prepared and prepared.day or 0) .. ",")
    table.insert(lines, "  \"prepared_next_profile_id\": " .. utils.json_escape(prepared and prepared.id or "none") .. ",")
    table.insert(lines, "  \"prepared_next_display_name\": " .. utils.json_escape(prepared and prepared.display_name or "None") .. ",")
    table.insert(lines, "  \"prepared_next_message_line\": " .. utils.json_escape(prepared and prepared.message_line or "") .. ",")
    table.insert(lines, "  \"family_locked_until_day_17\": true,")
    table.insert(lines, "  \"remaining_families_count\": " .. tostring(selected and selected.remaining_families and #selected.remaining_families or 0) .. ",")
    table.insert(lines, "  \"remaining_families\": " .. family_list_json(utils, selected and selected.remaining_families or {}) .. ",")
    table.insert(lines, "  \"completed_families\": " .. family_list_json(utils, selected and selected.completed_families or {}) .. ",")
    local encounter = prepared and prepared.encounter or nil
    table.insert(lines, "  \"prepared_next_encounter_profile\": " .. utils.json_escape(encounter and encounter.profile or "none") .. ",")
    table.insert(lines, "  \"prepared_next_encounter_tier\": " .. utils.json_escape(encounter and encounter.tier or "none") .. ",")
    table.insert(lines, "  \"prepared_next_encounter_theme\": " .. utils.json_escape(encounter and encounter.theme or "none") .. ",")
    table.insert(lines, "  \"prepared_next_mixed_encounter_chance\": " .. tostring(encounter and encounter.mixed_encounter_chance or 0) .. ",")
    table.insert(lines, "  \"world_scope_open_worlds_affected\": true,")
    table.insert(lines, "  \"world_scope_protected_worlds\": [\"\", \"WorldSave_\", \"\"],")
    local ok_msg, msgbank = pcall(dofile, _G.RANDOMDAY_MOD_ROOT .. "/Scripts/ax_profiles/messages_17.lua")
    local pack = ok_msg and prepared and msgbank and msgbank.get and msgbank.get(prepared) or nil
    table.insert(lines, "  \"prepared_next_join_message\": " .. utils.json_escape(pack and pack.join or "") .. ",")
    table.insert(lines, "  \"selected_at\": " .. utils.json_escape(selected and selected.selected_at or os.date("%Y-%m-%d %H:%M:%S")) .. ",")
    table.insert(lines, "  \"sandbox_path\": " .. utils.json_escape(write_result and write_result.sandbox_path or "") .. ",")
    table.insert(lines, "  \"hash\": " .. utils.json_escape(write_result and write_result.hash or "") .. ",")
    table.insert(lines, "  \"external_mods_status\": " .. utils.json_escape(external_result and external_result.status or "not_reported") .. ",")
    table.insert(lines, "  \"restart_required_for_prepared_profile\": true,")
    table.insert(lines, "  \"notes\": \"A random unused family is selected only at the start of a 17-day run. Restarts continue the locked family until Day 17.\"")
    table.insert(lines, "}")
    return table.concat(lines, "\n") .. "\n"
end

function M.export_next_reboot(config, profiles, selected, mod_root, log, write_result, external_result)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    utils.mkdir(config.paths.web_export_dir)
    local status = (write_result and write_result.already_current) and "next_reboot_already_prepared" or "prepared_for_next_reboot"
    utils.write_file(config.paths.web_export_dir .. "/today.json", selected_to_json(utils, selected, write_result, status, external_result))
    local active = selected and selected.active_profile or nil
    local prepared = selected and selected.prepared_profile or nil
    local html = "<html><head><meta charset=\"utf-8\"><title>RandomDay</title></head><body>" ..
        "<h1>RandomDay - Seventeen Suns Rotation</h1>" ..
        "<p>Mode: non-repeating random 17-day run rotation</p>" ..
        "<p>Rotation: " .. tostring(selected and selected.rotation_id or "unknown") .. "</p>" ..
        "<h2>Current boot: " .. tostring(active and ((active.family_label or active.family or "") .. " Day " .. active.day .. "/17 - " .. active.display_name) or "not marked by RandomDay") .. "</h2>" ..
        "<h2>Prepared next reboot: " .. tostring(prepared and ((prepared.family_label or prepared.family or "") .. " Day " .. prepared.day .. "/17 - " .. prepared.display_name) or "none") .. "</h2>" ..
        "<p>" .. tostring(prepared and prepared.message_line or "") .. "</p>" ..
        "<p>Family lock: profile family stays fixed until Day 17.</p>" ..
        "<p>Remaining unplayed families in this rotation: " .. tostring(selected and selected.remaining_families and #selected.remaining_families or 0) .. "</p>" ..
        "<p>World scope: open worlds affected; :  / .</p>" ..
        "</body></html>"
    utils.write_file(config.paths.web_export_dir .. "/today.html", html)
    log.info("website export updated for Seventeen Suns Rotation: " .. config.paths.web_export_dir .. "/today.json")
end

function M.export(config, profiles, profile, selected, mod_root, log, write_result)
    selected = selected or { active_profile = profile, prepared_profile = profile, selected_at = os.date("%Y-%m-%d %H:%M:%S") }
    M.export_next_reboot(config, profiles, selected, mod_root, log, write_result, { status = "not_reported" })
end

function M.export_failure(config, profiles, profile, selected, mod_root, log, write_result)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    utils.mkdir(config.paths.web_export_dir)
    write_result = write_result or {}
    write_result.hash = ""
    utils.write_file(config.paths.web_export_dir .. "/today.json", selected_to_json(utils, selected or { prepared_profile = profile }, write_result, "write_failed_or_rollback", { status = "failed" }))
end

return M
