-- RandomDay public source
-- Module: RandomDay/Scripts/ax_profiles/translation.lua
-- Ownership/Purpose: RandomDay public module; Translate raw profiles into bounded scores, facts, summaries, and
--   messages
-- Public contract: caller=status.lua and message.lua; inputs=profile and dictionary; outputs=structured translation and
--   bounded text
-- Side effects: none
-- Failure/Recovery: failures=missing value remains explicit; validation failure; recovery states=translated;
--   unknown_explicit; bounded
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-profiles-translation

local M = {}

local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
local dictionary = dofile(root .. "/Scripts/ax_profiles/dictionary.lua")

local function clamp(value, minimum, maximum)
    value = tonumber(value) or minimum
    if value < minimum then return minimum end
    if value > maximum then return maximum end
    return value
end

local function round(value, places)
    local scale = 10 ^ (places or 1)
    return math.floor((tonumber(value) or 0) * scale + 0.5) / scale
end

local function number_text(value)
    local n = tonumber(value)
    if n == nil then return tostring(value or "unknown") end
    if math.floor(n) == n then return tostring(math.floor(n)) end
    return tostring(round(n, 2)):gsub("0+$", ""):gsub("%.$", "")
end

local function copy(value)
    if type(value) ~= "table" then return value end
    local out = {}
    for k, v in pairs(value) do out[k] = copy(v) end
    return out
end

local function sorted_keys(tbl)
    local out = {}
    for key in pairs(tbl or {}) do table.insert(out, key) end
    table.sort(out, function(a, b) return tostring(a) < tostring(b) end)
    return out
end

local function score_band(score)
    score = clamp(score, 0, 5)
    for _, band in ipairs(dictionary.score_bands) do
        if score <= band.maximum then return band end
    end
    return dictionary.score_bands[#dictionary.score_bands]
end

local function multiplier_band(value, baseline)
    local ratio = (tonumber(value) or baseline or 1) / (tonumber(baseline) or 1)
    if ratio <= 0.5 then return 1, "far below normal" end
    if ratio < 0.85 then return 2, "below normal" end
    if ratio <= 1.15 then return 3, "near normal" end
    if ratio <= 1.6 then return 4, "above normal" end
    if ratio <= 2.4 then return 5, "well above normal" end
    return 6, "extreme"
end

local function multiplier_score(value, baseline, harder_when)
    local ratio = math.max(0, (tonumber(value) or baseline or 1) / (tonumber(baseline) or 1))
    local base
    if ratio >= 1 then
        base = 2 + math.min(3, ((math.min(ratio, 3) - 1) / 2) * 3)
    else
        base = 2 - ((1 - ratio) * 2)
    end
    if harder_when == "low" then base = 4 - base end
    return clamp(base, 0, 5)
end

local function number_score(value, def)
    local v = tonumber(value) or tonumber(def.baseline) or 0
    local baseline = tonumber(def.baseline) or 0
    local minimum = tonumber(def.minimum) or baseline
    local maximum = tonumber(def.maximum) or baseline
    local base = 2
    if v >= baseline and maximum > baseline then
        base = 2 + 3 * clamp((v - baseline) / (maximum - baseline), 0, 1)
    elseif v < baseline and baseline > minimum then
        base = 2 - 2 * clamp((baseline - v) / (baseline - minimum), 0, 1)
    end
    if def.harder_when == "low" then base = 4 - base end
    return clamp(base, 0, 5)
end

local function setting_score(def, value)
    if not def then return 2 end
    if def.kind == "boolean" then
        return value == true and tonumber(def.true_score or 2) or tonumber(def.false_score or 2)
    end
    if def.kind == "enum" then
        local row = def.values and def.values[tonumber(value)] or nil
        return tonumber(row and row.score or 2) or 2
    end
    if def.kind == "multiplier" then
        return multiplier_score(value, def.baseline, def.harder_when)
    end
    if def.kind == "number" then return number_score(value, def) end
    return 2
end

local function setting_band(def, value, score)
    if def.kind == "boolean" then return value == true and "enabled" or "disabled" end
    if def.kind == "enum" then
        local row = def.values and def.values[tonumber(value)] or nil
        return tostring(row and row.label or "unknown")
    end
    if def.kind == "multiplier" then
        local _, label = multiplier_band(value, def.baseline)
        return label
    end
    return score_band(score).label:lower()
end

local function setting_sentence(def, value, band)
    if def.kind == "boolean" then return value == true and def.true_text or def.false_text end
    if def.kind == "enum" then
        return def.label:gsub("^%l", string.upper) .. " is " .. tostring(band) .. "."
    end
    if def.kind == "multiplier" then
        return def.label:gsub("^%l", string.upper) .. " is " .. tostring(band) .. " at " .. number_text(value) .. "x."
    end
    return def.label:gsub("^%l", string.upper) .. " is " .. tostring(band) .. " at " .. number_text(value) .. "."
end

local function short_fact(def, value, band)
    if def.kind == "boolean" then return value == true and def.true_text or def.false_text end
    if def.kind == "enum" then return def.label:gsub("^%l", string.upper) .. ": " .. tostring(band) .. "." end
    local suffix = def.kind == "multiplier" and (number_text(value) .. "x") or number_text(value)
    return def.label:gsub("^%l", string.upper) .. " is " .. tostring(band) .. " (" .. suffix .. ")."
end

local function domain_phrase(domain_id, score)
    local row = dictionary.domains[domain_id]
    if not row then return "Conditions could not be translated." end
    if score <= 1.5 then return row.low end
    if score <= 2.6 then return row.normal end
    if score <= 3.7 then return row.high end
    return row.severe
end

local function domain_label(domain_id, score)
    local row = dictionary.domains[domain_id] or { label = domain_id }
    return row.label .. ": " .. score_band(score).label
end

local function family_label(profile)
    return tostring(profile and (profile.family_public_name or profile.family_label or profile.family) or "RandomDay")
end

local function short_title(profile)
    local title = tostring(profile and profile.display_name or "Unknown profile")
    local prefix = tostring(profile and profile.family_label or "")
    if prefix ~= "" and title:sub(1, #prefix + 3) == prefix .. " - " then title = title:sub(#prefix + 4) end
    title = title:gsub("End%-of%-Rotation", "Final")
    title = title:gsub("Authorization", "Auth")
    title = title:gsub("Department", "Dept")
    title = title:gsub("Experimental", "Experiment")
    return title
end

local function encounter_translation(profile)
    local encounter = profile and profile.encounter or {}
    local tier_id = tostring(encounter.tier or "medium")
    local tier = dictionary.encounter_tiers[tier_id] or dictionary.encounter_tiers.medium
    local theme_id = tostring(encounter.theme or "baseline_walkers")
    return {
        tier_id = tier_id,
        tier_label = tier.label,
        tier_score = tier.score,
        theme_id = theme_id,
        theme_label = dictionary.encounter_themes[theme_id] or theme_id:gsub("_", " "),
        max_active_groups = tonumber(encounter.max_active_groups) or 1,
        mixed_encounter_chance = tonumber(encounter.mixed_encounter_chance) or 0,
        special_event_chance = tonumber(encounter.special_event_chance) or 0,
        cooldown_seconds = tonumber(encounter.mixed_encounter_cooldown) or 0,
    }
end

local advice_by_domain = {
    combat = "Carry ammunition, keep a retreat route, and avoid fighting unsupported.",
    survival = "Carry food and water, rest before long trips, and plan safe stops.",
    resources = "Stock essentials, repair equipment, and leave carrying capacity for the return trip.",
    environment = "Verify power, water, shelter, and hazard protection before leaving base.",
    recovery = "Protect valuable equipment, mark an exit route, and avoid unnecessary risks.",
}

local short_advice_by_domain = {
    combat = "Keep cover and a retreat route.", survival = "Carry reserves and plan safe stops.",
    resources = "Stock essentials and travel light.", environment = "Check power, water, and protection.",
    recovery = "Protect equipment and keep an exit.",
}

local function calculate(profile)
    local settings = profile and profile.settings or {}
    local meanings = {}
    local domain_totals, domain_counts = {}, {}
    for _, domain_id in ipairs(dictionary.domain_order) do domain_totals[domain_id], domain_counts[domain_id] = 0, 0 end

    for _, key in ipairs(sorted_keys(dictionary.settings)) do
        local def = dictionary.settings[key]
        local value = settings[key]
        local score = setting_score(def, value)
        local band = setting_band(def, value, score)
        local item = {
            key = key, label = def.label, domain = def.domain, kind = def.kind,
            raw_value = value, score = round(score, 2), band = band,
            explanation = setting_sentence(def, value, band),
            impact = round(math.abs(score - 2), 2),
        }
        table.insert(meanings, item)
        domain_totals[def.domain] = (domain_totals[def.domain] or 0) + score
        domain_counts[def.domain] = (domain_counts[def.domain] or 0) + 1
    end

    local encounter = encounter_translation(profile)
    domain_totals.combat = (domain_totals.combat or 0) + encounter.tier_score
    domain_counts.combat = (domain_counts.combat or 0) + 1

    local domains = {}
    for _, domain_id in ipairs(dictionary.domain_order) do
        local score = (domain_counts[domain_id] or 0) > 0 and domain_totals[domain_id] / domain_counts[domain_id] or 2
        domains[domain_id] = {
            id = domain_id, label = dictionary.domains[domain_id].label,
            score = round(score, 2), band = score_band(score).id,
            rating = domain_label(domain_id, score), summary = domain_phrase(domain_id, score),
        }
    end

    local weights = { combat = 0.36, survival = 0.22, resources = 0.18, environment = 0.12, recovery = 0.12 }
    local overall_score = 0
    for _, domain_id in ipairs(dictionary.domain_order) do overall_score = overall_score + domains[domain_id].score * weights[domain_id] end
    overall_score = round(overall_score, 2)
    local overall_band = score_band(overall_score)

    table.sort(meanings, function(a, b)
        if a.impact == b.impact then return a.key < b.key end
        return a.impact > b.impact
    end)
    local top_facts = {}
    for _, item in ipairs(meanings) do
        if item.impact >= 0.45 and #top_facts < 5 then
            table.insert(top_facts, short_fact(dictionary.settings[item.key], item.raw_value, item.band))
        end
    end
    if #top_facts == 0 then table.insert(top_facts, "Most configured rules remain close to normal.") end

    local ranked_domains = {}
    for _, domain_id in ipairs(dictionary.domain_order) do table.insert(ranked_domains, domains[domain_id]) end
    table.sort(ranked_domains, function(a, b)
        if a.score == b.score then return a.id < b.id end
        return a.score > b.score
    end)
    local primary = ranked_domains[1]
    local secondary = ranked_domains[2]
    local reason = primary.rating .. " is the main pressure. " .. secondary.rating .. " is the next strongest factor."
    local advice
    if overall_score <= 1.7 then
        advice = "Use the favorable conditions to explore, restock, repair, and prepare for the next reboot."
    else
        advice = advice_by_domain[primary.id]
    end

    return {
        schema = "randomday_profile_translation_v2",
        profile_id = tostring(profile and profile.id or "unknown"),
        family = tostring(profile and profile.family or "unknown"),
        family_label = family_label(profile),
        day = tonumber(profile and profile.day) or 0,
        display_name = tostring(profile and profile.display_name or "Unknown profile"),
        short_title = short_title(profile),
        overall = { score = overall_score, band = overall_band.id, label = overall_band.label, reason = reason },
        domains = domains,
        encounter = encounter,
        summary = overall_band.label .. ". " .. reason,
        advice = advice,
        short_advice = short_advice_by_domain[primary.id],
        primary_domain = primary.id,
        top_facts = top_facts,
        setting_meanings = meanings,
    }
end

local function trim_spaces(text)
    return tostring(text or ""):gsub("\r", ""):gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
end

local function truncate_line(text, width)
    text = trim_spaces(text)
    width = math.min(64, math.max(8, tonumber(width) or 42))
    if #text <= width then return text end
    local target = text:sub(1, width - 3)
    local cut = target:match("^(.*)%s+[^%s]*$")
    if cut and #cut >= math.floor(width * 0.55) then target = cut end
    return target:gsub("%s+$", "") .. "..."
end

local function bounded_lines(lines, width, maximum)
    local out = {}
    width = math.min(64, math.max(8, tonumber(width) or 42))
    maximum = tonumber(maximum) or #lines
    for _, line in ipairs(lines or {}) do
        if #out >= maximum then break end
        table.insert(out, truncate_line(line, width))
    end
    return table.concat(out, "\n")
end

function M.translate(profile)
    return calculate(profile)
end

function M.translate_selection(selected)
    return {
        active = selected and selected.active_profile and calculate(selected.active_profile) or nil,
        prepared = selected and selected.prepared_profile and calculate(selected.prepared_profile) or nil,
    }
end

function M.format_join(active_translation, prepared_translation, options)
    options = options or {}
    local width = tonumber(options.max_line_chars) or 42
    local maximum = tonumber(options.max_join_lines) or 4
    if active_translation then
        local next_line = prepared_translation and ("Next: Day " .. tostring(prepared_translation.day) .. " after restart.") or "Current profile is active."
        return bounded_lines({
            "RANDOMDAY - DAY " .. tostring(active_translation.day) .. "/17",
            "Active: " .. active_translation.short_title,
            active_translation.top_facts[1] or active_translation.summary,
            next_line,
        }, width, maximum)
    end
    if prepared_translation then
        return bounded_lines({
            "RANDOMDAY - NEXT REBOOT",
            "Queued: " .. prepared_translation.short_title,
            prepared_translation.top_facts[1] or prepared_translation.summary,
            "This profile is not active yet.",
        }, width, maximum)
    end
    return bounded_lines({ "RANDOMDAY", "Profile status is unavailable.", "Ask an administrator to check the mod." }, width, maximum)
end

function M.format_note(translation, options)
    options = options or {}
    if not translation then return "RandomDay\nProfile note unavailable." end
    return bounded_lines({
        "RANDOMDAY NOTE",
        translation.top_facts[2] or translation.top_facts[1] or translation.summary,
        translation.short_advice,
    }, tonumber(options.max_line_chars) or 42, tonumber(options.max_note_lines) or 3)
end

function M.format_warning(translation, event_kind, options)
    options = options or {}
    local labels = { hostile = "HOSTILE CONTACT", portal = "PORTAL EVENT", order = "ORDER BREACH", gatekeeper = "ELITE CONTACT" }
    local title = labels[event_kind] or "FACILITY WARNING"
    if not translation then return bounded_lines({ title, "Threat details are unavailable.", "Move to safety and reassess." }, 42, 3) end
    local groups = tonumber(translation.encounter.max_active_groups) or 1
    local pressure = translation.domains.combat.band == "extreme" and "Extreme" or translation.domains.combat.rating:gsub("Combat pressure: ", "")
    local detail = pressure .. "; up to " .. tostring(groups) .. (groups == 1 and " group." or " groups.")
    return bounded_lines({ title, detail, translation.short_advice }, tonumber(options.max_line_chars) or 42, tonumber(options.max_warning_lines) or 3)
end

function M.dictionary()
    return copy(dictionary)
end

function M.validate_profile_translation(profile)
    local result = calculate(profile)
    if #result.setting_meanings ~= #sorted_keys(dictionary.settings) then return false, "dictionary coverage mismatch" end
    for _, item in ipairs(result.setting_meanings) do
        if item.raw_value == nil then return false, "missing profile setting: " .. tostring(item.key) end
        if item.explanation == "" then return false, "empty explanation: " .. tostring(item.key) end
    end
    local join = M.format_join(result, result, { max_line_chars = 42, max_join_lines = 4 })
    local lines = 0
    for line in (join .. "\n"):gmatch("(.-)\n") do
        lines = lines + 1
        if #line > 42 then return false, "join line too wide: " .. tostring(#line) end
    end
    if lines > 4 then return false, "join message too tall" end
    return true, result
end

return M
