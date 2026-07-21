-- RandomDay public source
-- Module: RandomDay/Scripts/ax_cycle/calendar.lua
-- Ownership/Purpose: RandomDay public module; Read active marker, select one prepared profile, persist rotation state
-- Public contract: caller=ax_core/init.lua; inputs=sandbox text, config, profiles, state files; outputs=active/prepared
--   selection and rotation state
-- Side effects: transactionally replaces rotation state
-- Failure/Recovery: failures=state unreadable; state transaction failure; profile unavailable; recovery
--   states=bootstrap_prepare_first_family_start_day; active_marker_found_family_locked_prepare_next_day;
--   active_marker_found_completed_run_prepare_next_unused_family; state_recovery_rewrite_prepared_profile_no_reroll;
--   supervision_reconfirm_prepared_profile_no_advance
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-cycle-calendar

local M = {}

local function split_csv(s)
    local out = {}
    for part in tostring(s or ""):gmatch("([^,]+)") do
        local trimmed = part:gsub("^%s+", ""):gsub("%s+$", "")
        if trimmed ~= "" then table.insert(out, trimmed) end
    end
    return out
end

local function join_csv(list)
    return table.concat(list or {}, ",")
end

local function split_day_order(s)
    local out = {}
    for _, value in ipairs(split_csv(s)) do
        local day = tonumber(value)
        if day then table.insert(out, day) end
    end
    return out
end

local function contains(list, value)
    for _, v in ipairs(list or {}) do if v == value then return true end end
    return false
end

local function remove_value(list, value)
    local out = {}
    for _, v in ipairs(list or {}) do if v ~= value then table.insert(out, v) end end
    return out
end

local random_seeded = false

local function seed_random_once()
    if random_seeded then return end
    math.randomseed(os.time() + math.floor((os.clock() or 0) * 100000))
    math.random()
    math.random()
    math.random()
    random_seeded = true
end

local function copy_list(list)
    local out = {}
    for _, v in ipairs(list or {}) do table.insert(out, v) end
    return out
end

local function shuffle(list)
    local out = copy_list(list)
    seed_random_once()
    for i = #out, 2, -1 do
        local j = math.random(1, i)
        out[i], out[j] = out[j], out[i]
    end
    return out
end

local function sanitize_family(family)
    return tostring(family or ""):lower():gsub("[^a-z0-9_%-]", "")
end

local function configured_families(config, profiles)
    local cfg = config.profile_family or {}
    local out = {}
    for _, family in ipairs(cfg.allowed_families or profiles.family_names or { "action", "survival" }) do
        local normalized_family = sanitize_family(family)
        if profiles.families and profiles.families[normalized_family] and not contains(out, normalized_family) then table.insert(out, normalized_family) end
    end
    if #out == 0 and profiles.family_names then out = copy_list(profiles.family_names) end
    return out
end

local function normalize_family(family, profiles, config)
    family = sanitize_family(family)
    if profiles and profiles.families and profiles.families[family] then return family end
    local fallback = sanitize_family((config.profile_family and (config.profile_family.selected_family or config.profile_family.default_family)) or "action")
    if profiles and profiles.families and profiles.families[fallback] then return fallback end
    return (profiles.family_names and profiles.family_names[1]) or "action"
end

local function profile_by_day(profiles, day, family, config)
    family = normalize_family(family, profiles, config)
    local list = profiles.profiles or {}
    if profiles.families and profiles.families[family] and profiles.families[family].profiles then
        list = profiles.families[family].profiles
    end
    for _, profile in ipairs(list) do
        if tonumber(profile.day) == tonumber(day) then return profile end
    end
    return nil
end

function M.profile_by_day(profiles, day, family, config)
    return profile_by_day(profiles, day, family, config)
end

local function cycle_length(config, profiles)
    return tonumber((config.cycle and config.cycle.cycle_length_days) or profiles.cycle_length_days or 17)
end

local function start_day_mode(config)
    local mode = tostring(config.cycle and config.cycle.start_day_mode or "configured"):lower()
    return mode == "random" and "random" or "configured"
end

local function day_progression_mode(config)
    local mode = tostring(config.cycle and config.cycle.day_progression_mode or "sequential"):lower()
    return mode == "non_repeating_random" and "non_repeating_random" or "sequential"
end

local function configured_start_day(config, length)
    local day = tonumber(config.cycle and (config.cycle.start_day or config.cycle.bootstrap_day)) or 1
    day = math.floor(day)
    if day < 1 or day > length then return 1 end
    return day
end

local function valid_day_order(order, length)
    if type(order) ~= "table" or #order ~= length then return false end
    local seen = {}
    for _, value in ipairs(order) do
        local day = tonumber(value)
        if not day or day ~= math.floor(day) or day < 1 or day > length or seen[day] then return false end
        seen[day] = true
    end
    return true
end

local function day_position(order, day)
    for index, value in ipairs(order or {}) do
        if tonumber(value) == tonumber(day) then return index end
    end
    return nil
end

local function new_day_order(config, length, forced_start_day)
    seed_random_once()
    local first = tonumber(forced_start_day)
    if not first then
        first = start_day_mode(config) == "random" and math.random(1, length) or configured_start_day(config, length)
    end
    local remaining = {}
    for day = 1, length do
        if day ~= first then table.insert(remaining, day) end
    end
    local out = { first }
    if day_progression_mode(config) == "non_repeating_random" then
        for _, day in ipairs(shuffle(remaining)) do table.insert(out, day) end
    else
        for offset = 1, length - 1 do table.insert(out, ((first - 1 + offset) % length) + 1) end
    end
    return out
end

local function resolve_day_order(state, config, length, current_day)
    if valid_day_order(state.day_order, length) and day_position(state.day_order, current_day) then
        return copy_list(state.day_order)
    end
    return new_day_order(config, length, current_day)
end

local function resolved_session_mode(config)
    local mode = tostring(config.experience and (config.experience.resolved_mode or config.experience.mode) or "auto"):lower()
    if mode == "auto" then
        return config.package_mode == "singleplayer_manual" and "singleplayer_lan" or "persistent_dedicated"
    end
    return mode
end

function M.build_day_order(config, profiles, forced_start_day)
    return new_day_order(config, cycle_length(config, profiles), forced_start_day)
end

function M.next_day(day, profiles, config)
    local length = cycle_length(config, profiles)
    day = tonumber(day) or 0
    return (day % length) + 1
end

function M.read_active_marker(text)
    text = tostring(text or "")
    local function pick(key)
        return text:match("RANDOMDAY_" .. key .. "%s*=%s*([%w_%-%./]+)") or
               text:match("RandomDay_" .. "RANDOMDAY_" .. key .. "%s*=%s*([%w_%-%./]+)")
    end
    local day = pick("DAY")
    local id = pick("ID")
    local family = pick("FAMILY")
    local mode = pick("MODE")
    local rotation_id = pick("ROTATION_ID")
    local run_id = pick("RUN_ID")
    if day then
        return { day = tonumber(day), id = id, family = family, mode = mode, rotation_id = rotation_id, run_id = run_id }
    end
    return nil
end

local function state_path(config)
    return tostring(config.paths.runtime_dir or "RandomDay/runtime") .. "/rotation_state.txt"
end

local function last_good_state_path(config)
    return tostring(config.paths.runtime_dir or "RandomDay/runtime") .. "/rotation_state.last_good.txt"
end

local function read_state(config, utils)
    local text = utils.read_file(state_path(config)) or utils.read_file(last_good_state_path(config)) or ""
    local state = {}
    for line in (text .. "\n"):gmatch("(.-)\n") do
        local k, v = line:match("^([%w_]+)%s*=%s*(.-)%s*$")
        if k then state[k] = v end
    end
    state.remaining_families = split_csv(state.remaining_families)
    state.completed_families = split_csv(state.completed_families)
    state.available_families = split_csv(state.available_families)
    state.day_order = split_day_order(state.day_order)
    state.day_position = tonumber(state.day_position) or 0
    return state
end

local function write_state(config, utils, state)
    if not utils.mkdir(config.paths.runtime_dir) then return false, "rotation state directory creation failed" end
    local lines = {
        "schema_version=1",
        "mod_version=" .. tostring(config.version or "unversioned"),
        "rotation_id=" .. tostring(state.rotation_id or ""),
        "mode=" .. tostring(state.mode or ""),
        "available_families=" .. join_csv(state.available_families),
        "remaining_families=" .. join_csv(state.remaining_families),
        "completed_families=" .. join_csv(state.completed_families),
        "active_family=" .. tostring(state.active_family or ""),
        "active_day=" .. tostring(state.active_day or ""),
        "prepared_family=" .. tostring(state.prepared_family or ""),
        "prepared_day=" .. tostring(state.prepared_day or ""),
        "active_run_id=" .. tostring(state.active_run_id or ""),
        "session_mode=" .. tostring(state.session_mode or ""),
        "start_day_mode=" .. tostring(state.start_day_mode or ""),
        "day_progression_mode=" .. tostring(state.day_progression_mode or ""),
        "day_order=" .. join_csv(state.day_order),
        "day_position=" .. tostring(state.day_position or ""),
        "last_status=" .. tostring(state.last_status or ""),
        "updated_at=" .. os.date("%Y-%m-%d %H:%M:%S"),
    }
    local current = state_path(config)
    local result = utils.transactional_replace(current, table.concat(lines, "\n") .. "\n", {
        pending_path = current .. ".randomday.pending",
        rollback_path = current .. ".randomday.rollback",
        backup_path = utils.file_exists(current) and last_good_state_path(config) or nil,
        validate = function(text)
            if not tostring(text):match("^schema_version=1[\r\n]") then return false, "missing state schema marker" end
            if not tostring(text):match("[\r\n]prepared_family=[%w_%-]+[\r\n]") then return false, "missing prepared family" end
            if not tostring(text):match("[\r\n]prepared_day=%d+[\r\n]") then return false, "missing prepared day" end
            return true
        end,
    })
    if not result.ok then return false, result.status .. ": " .. tostring(result.error), result end
    return true, nil, result
end

local function ensure_state_lists(state, allowed)
    state.available_families = (#state.available_families > 0) and state.available_families or copy_list(allowed)
    local filtered_available = {}
    for _, fam in ipairs(state.available_families) do if contains(allowed, fam) and not contains(filtered_available, fam) then table.insert(filtered_available, fam) end end
    state.available_families = (#filtered_available > 0) and filtered_available or copy_list(allowed)
    state.remaining_families = state.remaining_families or {}
    state.completed_families = state.completed_families or {}
    local rem = {}
    for _, fam in ipairs(state.remaining_families) do if contains(allowed, fam) and not contains(rem, fam) then table.insert(rem, fam) end end
    state.remaining_families = rem
    local comp = {}
    for _, fam in ipairs(state.completed_families) do if contains(allowed, fam) and not contains(comp, fam) then table.insert(comp, fam) end end
    state.completed_families = comp
end

local function new_rotation_id()
    return "rotation_" .. os.date("%Y%m%d_%H%M%S")
end

local function pop_next_family(state, allowed, mode, selected_family)
    seed_random_once()
    if mode == "selected_run" or mode == "action" or mode == "reaction" then
        return selected_family
    end
    if mode == "rotation_run" then
        if #state.remaining_families == 0 then
            state.completed_families = {}
            state.remaining_families = copy_list(allowed)
            state.rotation_id = new_rotation_id()
        end
        local family = table.remove(state.remaining_families, 1)
        return family
    end
    -- Default: non-repeating random run.
    if #state.remaining_families == 0 then
        state.completed_families = {}
        state.remaining_families = shuffle(allowed)
        state.rotation_id = new_rotation_id()
    end
    local index = math.random(1, #state.remaining_families)
    local family = table.remove(state.remaining_families, index)
    return family
end

local function family_public_name(profiles, family)
    local pack = profiles.families and profiles.families[family]
    return (pack and (pack.public_name or pack.family_label or pack.profile_family)) or family
end

local function annotate(profile, selected, family, profiles)
    if not profile then return end
    profile.rotation_id = selected.rotation_id
    profile.run_id = selected.run_id
    profile.profile_system = "seventeen_suns_non_repeating_rotation"
    profile.family_public_name = family_public_name(profiles, family)
    profile.family_selection_mode = selected.family_mode
    profile.remaining_families_count = #(selected.remaining_families or {})
    profile.completed_families_count = #(selected.completed_families or {})
end

function M.select_next_reboot_profile(config, profiles, sandbox_text)
    local mod_root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local validator = dofile(mod_root .. "/Scripts/ax_sandbox/validator.lua")
    local schema = dofile(mod_root .. "/Scripts/ax_sandbox/schema.lua")
    local marker = M.read_active_marker(sandbox_text)
    local active_detection = marker and "marker" or "unresolved"
    local state = read_state(config, utils)
    local allowed = configured_families(config, profiles)
    ensure_state_lists(state, allowed)

    -- Some hosts rewrite INI comments. Accept markerless activation only when all
    -- schema values match the stored queued profile; see docs/ARCHITECTURE.md.
    if not marker and state.prepared_family and state.prepared_family ~= "" and tonumber(state.prepared_day or 0) and tonumber(state.prepared_day or 0) > 0 then
        local candidate_family = normalize_family(state.prepared_family, profiles, config)
        local candidate_day = tonumber(state.prepared_day)
        local candidate_profile = profile_by_day(profiles, candidate_day, candidate_family, config)
        if candidate_profile then
            local matches = validator.validate_ini_text(sandbox_text, candidate_profile, schema)
            if matches then
                marker = {
                    day = candidate_day,
                    family = candidate_family,
                    rotation_id = state.rotation_id,
                    run_id = state.active_run_id,
                }
                active_detection = "settings_fingerprint"
            end
        end
    end

    local cfg = config.profile_family or {}
    local mode = tostring(cfg.mode or "non_repeating_random_run"):lower()
    if mode == "random_run" then mode = "non_repeating_random_run" end
    local selected_family = normalize_family(cfg.selected_family or cfg.default_family or "action", profiles, config)
    local length = cycle_length(config, profiles)

    local active_profile, active_family, active_day
    local prepared_family, prepared_day, prepared_day_position, status
    local day_order = {}
    local starts_new_run = false

    if marker and marker.day then
        active_family = normalize_family(marker.family, profiles, config)
        active_day = tonumber(marker.day)
        active_profile = profile_by_day(profiles, active_day, active_family, config)
        if active_profile and marker.id and marker.id ~= "" and marker.id ~= active_profile.id then active_profile = nil end
        if not active_profile then
            marker, active_family, active_day = nil, nil, nil
            active_detection = "unresolved"
        end
    end

    if marker and active_profile then
        state.active_family = active_family
        state.active_day = active_day
        if not state.rotation_id or state.rotation_id == "" then state.rotation_id = marker.rotation_id or new_rotation_id() end

        day_order = resolve_day_order(state, config, length, active_day)
        local active_position = day_position(day_order, active_day) or 1
        if active_position >= #day_order then
            state.completed_families = remove_value(state.completed_families, active_family)
            table.insert(state.completed_families, active_family)
            state.remaining_families = remove_value(state.remaining_families, active_family)
            prepared_family = normalize_family(pop_next_family(state, allowed, mode, selected_family), profiles, config)
            day_order = new_day_order(config, length)
            prepared_day_position = 1
            prepared_day = day_order[prepared_day_position]
            starts_new_run = true
            status = active_detection == "settings_fingerprint" and
                "prepared_profile_values_found_without_marker_completed_run_prepare_next_unused_family" or
                "active_marker_found_completed_run_prepare_next_unused_family"
        else
            prepared_family = active_family
            prepared_day_position = active_position + 1
            prepared_day = day_order[prepared_day_position]
            status = active_detection == "settings_fingerprint" and
                "prepared_profile_values_found_without_marker_prepare_next_day" or
                "active_marker_found_family_locked_prepare_next_day"
        end
    elseif state.prepared_family and state.prepared_family ~= "" and tonumber(state.prepared_day or 0) and tonumber(state.prepared_day or 0) > 0 then
        prepared_family = normalize_family(state.prepared_family, profiles, config)
        prepared_day = tonumber(state.prepared_day)
        day_order = resolve_day_order(state, config, length, prepared_day)
        prepared_day_position = day_position(day_order, prepared_day) or 1
        status = "state_recovery_rewrite_prepared_profile_no_reroll"
    else
        prepared_family = normalize_family(pop_next_family(state, allowed, mode, selected_family), profiles, config)
        day_order = new_day_order(config, length)
        prepared_day_position = 1
        prepared_day = day_order[prepared_day_position]
        starts_new_run = true
        status = "bootstrap_prepare_first_family_start_day"
    end

    local prepared_profile = profile_by_day(profiles, prepared_day, prepared_family, config)
    local run_id = (not starts_new_run and state.active_run_id and state.active_run_id ~= "" and prepared_family == state.active_family) and
        state.active_run_id or (prepared_family .. "_" .. tostring(state.rotation_id or new_rotation_id()) .. "_" .. tostring(prepared_day))
    local selected = {
        active_profile = active_profile,
        prepared_profile = prepared_profile,
        active_marker = active_detection == "marker" and marker or nil,
        active_detection = active_detection,
        active_family = active_family,
        prepared_family = prepared_family,
        prepared_day = prepared_day,
        prepared_day_position = prepared_day_position,
        selected_at = os.date("%Y-%m-%d %H:%M:%S"),
        status = status,
        mode = "next_reboot_queue",
        session_mode = resolved_session_mode(config),
        family_mode = mode,
        start_day_mode = start_day_mode(config),
        configured_start_day = configured_start_day(config, length),
        day_progression_mode = day_progression_mode(config),
        day_order = copy_list(day_order),
        cycle_length_days = length,
        rotation_id = state.rotation_id or new_rotation_id(),
        run_id = run_id,
        remaining_families = copy_list(state.remaining_families),
        completed_families = copy_list(state.completed_families),
        available_families = copy_list(allowed),
        state_snapshot = state,
    }
    annotate(active_profile, selected, active_family, profiles)
    annotate(prepared_profile, selected, prepared_family, profiles)
    return selected
end

-- A process owns one active/prepared decision; supervision only reconfirms it.
-- The restart boundary and status meanings are defined in docs/OPERATIONS.md.
function M.create_boot_selection_owner(config, profiles, sandbox_text)
    local selected = M.select_next_reboot_profile(config, profiles, sandbox_text)
    local first = true
    return function()
        if first then
            first = false
        else
            selected.status = "supervision_reconfirm_prepared_profile_no_advance"
        end
        return selected
    end
end

function M.commit_selection(config, profiles, selected, mod_root, log)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    local state = selected.state_snapshot or {}
    state.mode = selected.family_mode or "non_repeating_random_run"
    state.available_families = copy_list(selected.available_families or configured_families(config, profiles))
    state.remaining_families = copy_list(selected.remaining_families or {})
    state.completed_families = copy_list(selected.completed_families or {})
    state.rotation_id = selected.rotation_id or state.rotation_id or new_rotation_id()
    state.active_family = selected.active_family or state.active_family or selected.prepared_family
    state.active_day = selected.active_profile and selected.active_profile.day or state.active_day or 0
    state.prepared_family = selected.prepared_family
    state.prepared_day = selected.prepared_day
    state.active_run_id = selected.run_id
    state.session_mode = selected.session_mode
    state.start_day_mode = selected.start_day_mode
    state.day_progression_mode = selected.day_progression_mode
    state.day_order = copy_list(selected.day_order or {})
    state.day_position = selected.prepared_day_position or 0
    state.last_status = selected.status
    local ok, err, transaction = write_state(config, utils, state)
    if not ok then
        if log then log.error("rotation state transaction failed: " .. tostring(err)) end
        return false, err, transaction
    end
    if log then
        log.info("rotation state committed: prepared_family=" .. tostring(state.prepared_family) .. " day=" .. tostring(state.prepared_day) .. " remaining=" .. tostring(#(state.remaining_families or {})) .. " completed=" .. tostring(#(state.completed_families or {})))
    end
    return true, nil, transaction
end

return M
