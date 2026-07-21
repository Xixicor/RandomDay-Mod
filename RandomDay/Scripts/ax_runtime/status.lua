-- RandomDay public source
-- Module: RandomDay/Scripts/ax_runtime/status.lua
-- Ownership/Purpose: RandomDay public module; Build sanitized structured runtime status, dictionary, and preview
-- Public contract: caller=ax_core/init.lua; inputs=selection, write result, adapter result, config;
--   outputs=runtime/current JSON and text
-- Side effects: transactionally replaces three current outputs
-- Failure/Recovery: failures=status directory or transaction failure; recovery states=prepared_ready;
--   state_persistence_failed; write_failed
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-runtime-status

local M = {}

local json_arrays = setmetatable({}, { __mode = "k" })

local function as_array(values)
    local out = {}
    for _, value in ipairs(values or {}) do table.insert(out, value) end
    json_arrays[out] = true
    return out
end

local function json_string(value)
    local text = tostring(value or "")
    text = text:gsub('[%z\1-\31\\"]', function(char)
        local escapes = { ['"']='\\"', ['\\']='\\\\', ['\b']='\\b', ['\f']='\\f', ['\n']='\\n', ['\r']='\\r', ['\t']='\\t' }
        return escapes[char] or string.format("\\u%04x", string.byte(char))
    end)
    return '"' .. text .. '"'
end

local function table_shape(value)
    if json_arrays[value] then return "array", #value end
    local count, maximum = 0, 0
    for key in pairs(value) do
        if type(key) ~= "number" or key < 1 or math.floor(key) ~= key then return "object", 0 end
        count = count + 1
        if key > maximum then maximum = key end
    end
    if count > 0 and count == maximum then return "array", maximum end
    return "object", 0
end

local function encode_json(value, seen)
    local kind = type(value)
    if kind == "nil" then return "null" end
    if kind == "boolean" then return value and "true" or "false" end
    if kind == "number" then
        if value ~= value or value == math.huge or value == -math.huge then return "null" end
        return tostring(value)
    end
    if kind == "string" then return json_string(value) end
    if kind ~= "table" then return json_string(value) end
    seen = seen or {}
    if seen[value] then error("cannot encode cyclic table") end
    seen[value] = true
    local shape, count = table_shape(value)
    local out = {}
    if shape == "array" then
        for index = 1, count do table.insert(out, encode_json(value[index], seen)) end
        seen[value] = nil
        return "[" .. table.concat(out, ",") .. "]"
    end
    local keys = {}
    for key in pairs(value) do table.insert(keys, key) end
    table.sort(keys, function(a, b) return tostring(a) < tostring(b) end)
    for _, key in ipairs(keys) do
        table.insert(out, json_string(key) .. ":" .. encode_json(value[key], seen))
    end
    seen[value] = nil
    return "{" .. table.concat(out, ",") .. "}"
end

function M.json_encode(value)
    return encode_json(value)
end

local function derive_write_status(write_result)
    if not write_result or not write_result.ok then return "failed" end
    if write_result.already_current then return "already_current" end
    if write_result.changed then return "written" end
    return "confirmed"
end

local function derive_backup_status(write_result)
    if not write_result then return "not_reported" end
    if write_result.backup_status and write_result.backup_status ~= "" then return tostring(write_result.backup_status) end
    if write_result.already_current and write_result.last_good_status == "updated" then return "last_good_refreshed" end
    if write_result.backup_dir then return "backup_written" end
    if write_result.ok then return "last_good_updated" end
    return "unavailable"
end

local function family_meta(profiles, profile)
    local family_id = tostring(profile and profile.family or "")
    local registry = profiles and profiles.family_registry or nil
    if registry and registry[family_id] then return registry[family_id] end
    return {
        id = family_id,
        public_name = tostring(profile and (profile.family_public_name or profile.family_label or profile.family) or "Unknown"),
        label = tostring(profile and (profile.family_label or profile.family) or "UNKNOWN"),
    }
end

local function admin_summary(selected, write_status, backup_status, adapter_status)
    local prepared = selected and selected.prepared_profile or nil
    if not prepared then return "No next-reboot profile is currently prepared." end
    return "Next reboot has Day " .. tostring(prepared.day) .. "/17 - " .. tostring(prepared.display_name) ..
        "; sandbox=" .. tostring(write_status) .. "; backup=" .. tostring(backup_status) ..
        "; adapters=" .. tostring(adapter_status) .. "."
end

local function safe_component(value)
    local text = tostring(value or ""):gsub("[^A-Za-z0-9_.%-]", "_")
    if text == "" then return "redacted" end
    if #text > 96 then text = text:sub(1, 93) .. "..." end
    return text
end

local function bounded_text(value, maximum)
    local text = tostring(value or ""):gsub("[%z\1-\31\127]", " "):gsub("%s+", " ")
    text = text:gsub("^%s+", ""):gsub("%s+$", "")
    maximum = tonumber(maximum) or 512
    if #text > maximum then text = text:sub(1, maximum - 3):gsub("%s+$", "") .. "..." end
    return text
end

local function safe_target_reference(utils, path)
    if not path or path == "" then return "" end
    return "target/" .. safe_component(utils.basename(path))
end

local function safe_runtime_reference(config, mod_root, utils, path)
    if not path or path == "" then return "" end
    local runtime_root = tostring(config and config.paths and config.paths.runtime_dir or (mod_root .. "/runtime"))
    local normalized_path = utils.normalize_path(path)
    local normalized_root = utils.normalize_path(runtime_root)
    if not utils.is_path_within(normalized_path, normalized_root) then return "[redacted-path]" end
    local suffix = normalized_path:sub(#normalized_root + 1):gsub("^/", "")
    return bounded_text(suffix == "" and "runtime" or ("runtime/" .. suffix), 160)
end

local function replace_literal(text, source, replacement)
    if not source or source == "" then return text end
    local pattern = tostring(source):gsub("([^%w])", "%%%1")
    return text:gsub(pattern, function() return replacement end)
end

local function redact_diagnostic(value, replacements)
    local text = tostring(value or "")
    table.sort(replacements, function(a, b) return #a[1] > #b[1] end)
    for _, row in ipairs(replacements) do text = replace_literal(text, row[1], row[2]) end
    text = text:gsub("[A-Za-z]:[\\/][^=;\r\n]+", "[redacted-path]")
    text = text:gsub("\\\\[^=;\r\n]+", "[redacted-path]")
    text = text:gsub("^/[^=;\r\n]+", "[redacted-path]")
    text = text:gsub("([%s%(=:])(/[^=;\r\n]+)", "%1[redacted-path]")
    return bounded_text(text, 512)
end

local function redact_rollback_steps(value, replacements, utils)
    local out = {}
    for raw in tostring(value or ""):gmatch("([^;]+)") do
        local step = raw:gsub("^%s+", ""):gsub("%s+$", "")
        local path, status = step:match("^(.-)=(.*)$")
        if path and path ~= "" then
            table.insert(out, safe_target_reference(utils, path) .. "=" .. redact_diagnostic(status, replacements))
        elseif step ~= "" then
            table.insert(out, redact_diagnostic(step, replacements))
        end
    end
    return bounded_text(table.concat(out, "; "), 512)
end

function M.public_adapter_results(config, external_result, mod_root, utils)
    local out = {}
    for _, adapter in ipairs(external_result and external_result.adapters or {}) do
        local failed_path = tostring(adapter.failed_path or "")
        local target_path = tostring(adapter.path or failed_path)
        local backup_dir = tostring(adapter.backup_dir or "")
        local target_reference = safe_target_reference(utils, failed_path ~= "" and failed_path or target_path)
        local backup_reference = safe_runtime_reference(config, mod_root, utils, backup_dir)
        local replacements = {
            { failed_path, target_reference },
            { target_path, safe_target_reference(utils, target_path) },
            { backup_dir, backup_reference },
            { tostring(config and config.paths and config.paths.runtime_dir or ""), "runtime" },
            { tostring(mod_root or ""), "mod" },
        }
        table.insert(out, {
            id = bounded_text(adapter.id or "unknown", 96),
            status = bounded_text(adapter.status or "skipped_incompatible", 96),
            ok = adapter.ok ~= false,
            reason = redact_diagnostic(adapter.reason, replacements),
            error = redact_diagnostic(adapter.error, replacements),
            missing_keys = as_array(adapter.missing_keys),
            compatibility_signature = bounded_text(adapter.compatibility_signature, 160),
            tested_version = bounded_text(adapter.tested_version, 96),
            version_evidence = bounded_text(adapter.version_evidence, 160),
            observed_layout_label = bounded_text(adapter.observed_layout_label, 160),
            failed_path = target_reference,
            backup_reference = backup_reference,
            transaction_status = bounded_text(adapter.transaction_status or "not_reported", 96),
            transaction_had_original = adapter.transaction_had_original == true,
            transaction_rollback_status = bounded_text(adapter.transaction_rollback_status or "not_reported", 96),
            transaction_rollback_error = redact_diagnostic(adapter.transaction_rollback_error, replacements),
            rollback_status = bounded_text(adapter.rollback_status or adapter.transaction_rollback_status or "not_reported", 96),
            rollback_error = redact_diagnostic(adapter.rollback_error, replacements),
            rollback_attempted_count = tonumber(adapter.rollback_attempted_count) or 0,
            rollback_steps = redact_rollback_steps(adapter.rollback_steps, replacements, utils),
            mutation_started = adapter.mutation_started == true,
            changed_files = tonumber(adapter.changed_files) or 0,
        })
    end
    json_arrays[out] = true
    return out
end

local function dictionary_payload(translation)
    local payload = translation.dictionary()
    payload.mod = "RandomDay"
    payload.schema = "randomday_runtime_dictionary_v2"
    payload.terms = {
        active_profile = "The profile loaded for the current game process. Active text and calculations only use this profile.",
        prepared_next_profile = "The profile written for the next game-process restart. It is never described as active before restart.",
        overall_score = "A deterministic 0-to-5 pressure score calculated from combat, survival, resources, environment, recovery, and encounter inputs.",
        domain_score = "A deterministic 0-to-5 pressure score for one gameplay area. Raw values and individual explanations remain available beside it.",
        top_facts = "The settings furthest from normal pressure, expressed with their actual configured values.",
        display_budget = "In-game messages use bounded lines so Client_DisplayWarningMessage cannot stretch a sentence across the screen.",
        next_reboot_queue = "RandomDay prepares one profile for the next restart and does not advance it again during the same game-process boot.",
        settings_fingerprint = "If another tool removes RandomDay comments, all 46 validated gameplay values must match the stored queued profile before it is identified as active.",
        session_mode = "The operator's play pattern: persistent dedicated, temporary dedicated, or singleplayer/LAN manual copy.",
        start_day_mode = "Configured starts use cycle.start_day; random starts choose one valid day once and persist it.",
        day_progression_mode = "Sequential follows the persisted wrapped day order; non-repeating random shuffles all 17 days once per family run.",
    }
    payload.package_modes = {
        dedicated_server = "Writes the configured dedicated-server next-reboot target and optional mirrors.",
        singleplayer_manual = "Writes only the mod-local manual-copy output and never discovers user or save directories.",
    }
    payload.session_modes = {
        persistent_dedicated = "Resumes the stored family and day order across long-running server restarts.",
        temporary_dedicated = "Treats each server launch as a session while retaining the safe next-start queue and persisted selection.",
        singleplayer_lan = "Generates a manual-copy profile without discovering or changing personal world folders.",
    }
    payload.selection_states = {
        active_marker_found_completed_run_prepare_next_unused_family = "The loaded profile completed the persisted 17-day order, so the first day of the next family order was prepared.",
        active_marker_found_family_locked_prepare_next_day = "The loaded family remains in progress, so the next day in its persisted order was prepared.",
        state_recovery_rewrite_prepared_profile_no_reroll = "The stored queued profile was restored without selecting a different family or day.",
        supervision_reconfirm_prepared_profile_no_advance = "The same per-boot queued profile was checked or repaired without advancing the rotation.",
        bootstrap_prepare_first_family_start_day = "No loaded RandomDay marker existed, so the configured or randomly selected start day was prepared and persisted.",
        prepared_profile_values_found_without_marker_prepare_next_day = "All 46 loaded gameplay values matched the markerless queued profile, so that profile is active and the next persisted day is prepared.",
        prepared_profile_values_found_without_marker_completed_run_prepare_next_unused_family = "All 46 loaded gameplay values matched the final profile in the persisted day order, so the next family order begins.",
    }
    payload.domain_order = as_array(payload.domain_order)
    return payload
end

function M.build_snapshot(config, profiles, selected, write_result, external_result, reason, mod_root)
    local translation = dofile(mod_root .. "/Scripts/ax_profiles/translation.lua")
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local translated = translation.translate_selection(selected or {})
    local active = selected and selected.active_profile or nil
    local prepared = selected and selected.prepared_profile or nil
    local active_meta = family_meta(profiles, active)
    local prepared_meta = family_meta(profiles, prepared)
    local write_status = derive_write_status(write_result)
    local backup_status = derive_backup_status(write_result)
    local adapter_status = tostring(external_result and external_result.status or "not_reported")
    local preview = translation.format_join(translated.active, translated.prepared, config and config.player_message or {})

    return {
        mod = "RandomDay",
        status_schema = "randomday_runtime_status_v2",
        dictionary_version = "randomday_dictionary_v2",
        version = tostring(config and config.version or ""),
        package_mode = tostring(config and config.package_mode or "invalid"),
        mode = "next_reboot_queue",
        session_mode = tostring(selected and selected.session_mode or config and config.experience and config.experience.resolved_mode or "unknown"),
        start_day_mode = tostring(selected and selected.start_day_mode or "configured"),
        configured_start_day = tonumber(selected and selected.configured_start_day) or 1,
        day_progression_mode = tostring(selected and selected.day_progression_mode or "sequential"),
        day_order = as_array(selected and selected.day_order or {}),
        prepared_day_position = tonumber(selected and selected.prepared_day_position) or 0,
        profile_system = "seventeen_suns_non_repeating_rotation",
        reason = tostring(reason or ""),
        selection_status = tostring(selected and selected.status or "unknown"),
        active_profile_detection = tostring(selected and selected.active_detection or "unresolved"),
        rotation_id = tostring(selected and selected.rotation_id or "unknown"),
        run_id = tostring(selected and selected.run_id or "unknown"),
        cycle_length_days = tonumber(profiles and profiles.cycle_length_days) or 17,
        active_cycle_day = active and active.day or 0,
        active_profile_id = active and active.id or "unknown_current_boot",
        active_display_name = active and active.display_name or "Current boot has no RandomDay marker",
        active_family = active and active.family or "unknown_current_boot",
        active_family_label = active and (active.family_public_name or active_meta.public_name or active.family_label) or "Unknown current boot",
        active_profile_translation = translated.active,
        prepared_next_cycle_day = prepared and prepared.day or 0,
        prepared_next_profile_id = prepared and prepared.id or "none",
        prepared_next_display_name = prepared and prepared.display_name or "None",
        prepared_next_family = prepared and prepared.family or "none",
        prepared_next_family_label = prepared and (prepared.family_public_name or prepared_meta.public_name or prepared.family_label) or "None",
        prepared_profile_translation = translated.prepared,
        profile_intensity = translated.active and translated.active.overall.label or "unknown current boot",
        player_summary = translated.active and translated.active.summary or "RandomDay has not identified the profile loaded for this boot.",
        prepared_profile_intensity = translated.prepared and translated.prepared.overall.label or "none",
        prepared_player_summary = translated.prepared and translated.prepared.summary or "No profile is prepared.",
        admin_summary = admin_summary(selected, write_status, backup_status, adapter_status),
        write_status = write_status,
        backup_status = backup_status,
        last_known_good_status = tostring(write_result and write_result.last_good_status or "not_reported"),
        sandbox_transaction_status = tostring(write_result and (write_result.transaction_status or write_result.status) or "unknown"),
        sandbox_rollback_status = tostring(write_result and write_result.rollback_status or "not_needed"),
        prepared_ready = write_result and write_result.ok == true and write_result.state_commit_ok ~= false or false,
        state_commit_ok = write_result and write_result.state_commit_ok == true or false,
        state_commit_error_code = write_result and write_result.state_commit_ok == false and "state_persistence_failed" or "",
        adapter_status = adapter_status,
        adapter_results = M.public_adapter_results(config, external_result, mod_root, utils),
        rollback_available = write_result and write_result.rollback_available == true or false,
        restart_required_for_prepared_profile = true,
        next_rotation_hint = "The prepared profile loads only after the game process restarts; the current boot keeps its active profile.",
        sandbox_target = config and config.package_mode == "singleplayer_manual" and "singleplayer_manual_output" or "configured_dedicated_primary",
        manual_copy_required = config and config.package_mode == "singleplayer_manual" or false,
        hash = tostring(write_result and write_result.hash or ""),
        mirrors_written = tonumber(write_result and write_result.mirrors_written) or 0,
        replacement_method = tostring(write_result and write_result.replacement_method or "none"),
        pending_readback_verified = write_result and write_result.pending_readback_verified == true or false,
        target_readback_verified = write_result and write_result.target_readback_verified == true or false,
        sandbox_recovered_interrupted_transaction = write_result and write_result.recovered_interrupted_transaction == true or false,
        message_preview = preview,
        world_scope = {
            enabled = config and config.world_scope and config.world_scope.enabled == true or false,
            affect_open_worlds = config and config.world_scope and config.world_scope.affect_open_worlds == true or false,
            unknown_world_policy = tostring(config and config.world_scope and config.world_scope.unknown_world_policy or "block"),
            protected_world_count = #(config and config.world_scope and config.world_scope.protected_worlds or {}),
        },
        updated_at = os.date("%Y-%m-%d %H:%M:%S"),
        dictionary_path = "runtime/current/randomday_dictionary.json",
    }
end

function M.write_current(config, profiles, selected, write_result, external_result, reason, mod_root, log)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local translation = dofile(mod_root .. "/Scripts/ax_profiles/translation.lua")
    local current_dir = tostring(config.paths.runtime_dir) .. "/current"
    local dir_ok, dir_err = utils.mkdir(current_dir)
    if not dir_ok then
        if log then log.warn("runtime status directory unavailable: " .. tostring(dir_err)) end
        return nil
    end
    local snapshot = M.build_snapshot(config, profiles, selected, write_result, external_result, reason, mod_root)
    -- These observer files do not grant sandbox authority; partial status output is reported
    -- but never promotes or changes the prepared gameplay state.
    local status_result = utils.transactional_replace(current_dir .. "/randomday_status.json", M.json_encode(snapshot) .. "\n")
    local dictionary_result = utils.transactional_replace(current_dir .. "/randomday_dictionary.json", M.json_encode(dictionary_payload(translation)) .. "\n")
    local preview_result = utils.transactional_replace(current_dir .. "/player_message_preview.txt", snapshot.message_preview .. "\n")
    if log then
        if status_result.ok and dictionary_result.ok and preview_result.ok then
            log.info("runtime status and translation dictionary updated: " .. current_dir .. "/randomday_status.json")
        else
            log.warn("runtime status write incomplete: " .. tostring(status_result.error or dictionary_result.error or preview_result.error))
        end
    end
    return snapshot
end

M._test = {
    dictionary_payload = dictionary_payload,
    safe_runtime_reference = safe_runtime_reference,
    redact_diagnostic = redact_diagnostic,
    redact_rollback_steps = redact_rollback_steps,
}

return M
