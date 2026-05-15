local M = {}

local function split_csv(s)
    local out = {}
    for part in tostring(s or ""):gmatch("([^,]+)") do
        part = part:gsub("^%s+", ""):gsub("%s+$", "")
        if part ~= "" then table.insert(out, part) end
    end
    return out
end

local function join_csv(list)
    return table.concat(list or {}, ",")
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

local function copy_list(list)
    local out = {}
    for _, v in ipairs(list or {}) do table.insert(out, v) end
    return out
end

local function shuffle(list)
    local out = copy_list(list)
    math.randomseed(os.time() + math.floor((os.clock() or 0) * 100000))
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
        family = sanitize_family(family)
        if profiles.families and profiles.families[family] and not contains(out, family) then table.insert(out, family) end
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

function M.next_day(day, profiles, config)
    local length = tonumber((config.cycle and config.cycle.cycle_length_days) or profiles.cycle_length_days or 17)
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
    return state
end

local function write_state(config, utils, state)
    utils.mkdir(config.paths.runtime_dir)
    local lines = {
        "schema_version=1",
        "mod_version=0.3.15-alpha-randomday-clean",
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
        "last_status=" .. tostring(state.last_status or ""),
        "updated_at=" .. os.date("%Y-%m-%d %H:%M:%S"),
    }
    local pending = tostring(config.paths.runtime_dir or "RandomDay/runtime") .. "/rotation_state.pending.txt"
    utils.write_file(pending, table.concat(lines, "\n") .. "\n")
    local current = state_path(config)
    if utils.file_exists(current) then utils.copy_file(current, last_good_state_path(config)) end
    os.remove(current)
    local ok = os.rename(pending, current)
    if not ok then
        utils.copy_file(pending, current)
        os.remove(pending)
    end
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
    local utils = dofile((_G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay") .. "/Scripts/ax_core/utils.lua")
    local marker = M.read_active_marker(sandbox_text)
    local state = read_state(config, utils)
    local allowed = configured_families(config, profiles)
    ensure_state_lists(state, allowed)

    local cfg = config.profile_family or {}
    local mode = tostring(cfg.mode or "non_repeating_random_run"):lower()
    if mode == "random_run" then mode = "non_repeating_random_run" end
    local selected_family = normalize_family(cfg.selected_family or cfg.default_family or "action", profiles, config)
    local length = tonumber((config.cycle and config.cycle.cycle_length_days) or profiles.cycle_length_days or 17)

    local active_profile, active_family, active_day
    local prepared_family, prepared_day, status

    if marker and marker.day then
        active_family = normalize_family(marker.family, profiles, config)
        active_day = tonumber(marker.day)
        active_profile = profile_by_day(profiles, active_day, active_family, config)
        state.active_family = active_family
        state.active_day = active_day
        if not state.rotation_id or state.rotation_id == "" then state.rotation_id = marker.rotation_id or new_rotation_id() end

        if active_day >= length then
            state.completed_families = remove_value(state.completed_families, active_family)
            table.insert(state.completed_families, active_family)
            state.remaining_families = remove_value(state.remaining_families, active_family)
            prepared_family = normalize_family(pop_next_family(state, allowed, mode, selected_family), profiles, config)
            prepared_day = 1
            status = "active_marker_found_completed_run_prepare_next_unused_family"
        else
            prepared_family = active_family
            prepared_day = active_day + 1
            status = "active_marker_found_family_locked_prepare_next_day"
        end
    elseif state.prepared_family and state.prepared_family ~= "" and tonumber(state.prepared_day or 0) and tonumber(state.prepared_day or 0) > 0 then
        prepared_family = normalize_family(state.prepared_family, profiles, config)
        prepared_day = tonumber(state.prepared_day)
        status = "state_recovery_rewrite_prepared_profile_no_reroll"
    else
        prepared_family = normalize_family(pop_next_family(state, allowed, mode, selected_family), profiles, config)
        prepared_day = tonumber(config.cycle and config.cycle.bootstrap_day) or 1
        status = "bootstrap_prepare_first_unused_family_day1"
    end

    local prepared_profile = profile_by_day(profiles, prepared_day, prepared_family, config)
    local run_id = (state.active_run_id and state.active_run_id ~= "" and prepared_family == state.active_family) and state.active_run_id or (prepared_family .. "_" .. tostring(state.rotation_id or new_rotation_id()))
    local selected = {
        active_profile = active_profile,
        prepared_profile = prepared_profile,
        active_marker = marker,
        active_family = active_family,
        prepared_family = prepared_family,
        prepared_day = prepared_day,
        selected_at = os.date("%Y-%m-%d %H:%M:%S"),
        status = status,
        mode = "next_reboot_queue",
        family_mode = mode,
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
    state.last_status = selected.status
    write_state(config, utils, state)
    if log then
        log.info("rotation state committed: prepared_family=" .. tostring(state.prepared_family) .. " day=" .. tostring(state.prepared_day) .. " remaining=" .. tostring(#(state.remaining_families or {})) .. " completed=" .. tostring(#(state.completed_families or {})))
    end
end

return M
