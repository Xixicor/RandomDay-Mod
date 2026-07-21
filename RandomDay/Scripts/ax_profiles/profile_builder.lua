-- RandomDay public source
-- Module: RandomDay/Scripts/ax_profiles/profile_builder.lua
-- Ownership/Purpose: RandomDay public module; Clone base days, apply bounded overrides, and apply persistent profile rules
-- Public contract: caller=family modules and compatibility packs; inputs=family ID, title, overrides;
--   outputs=17-profile family table
-- Side effects: reads the public server configuration once per family build
-- Failure/Recovery: failures=invalid override data or profile-wide configuration; recovery states=built
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-profiles-profile-builder

local M = {}

local function clone(value)
    if type(value) ~= "table" then return value end
    local out = {}
    for k, v in pairs(value) do out[k] = clone(v) end
    return out
end

local function clamp(v, lo, hi)
    v = tonumber(v) or lo
    if v < lo then return lo end
    if v > hi then return hi end
    return v
end

local function round1(v)
    return math.floor((tonumber(v) or 0) * 10 + 0.5) / 10
end

local function apply_numbers(settings, patch)
    for k, v in pairs(patch or {}) do
        if settings[k] ~= nil then settings[k] = v end
    end
end

local function mul(settings, key, factor, lo, hi)
    if settings[key] ~= nil then settings[key] = round1(clamp(settings[key] * factor, lo or 0, hi or 10)) end
end

local function normalize_profile_overrides(overrides, schema)
    local defaults = schema.profile_defaults or {}
    if overrides ~= nil and type(overrides) ~= "table" then
        error("sandbox.profile_overrides must be a table")
    end
    overrides = overrides or {}
    for key, _ in pairs(overrides) do
        if defaults[key] == nil then
            error("unsupported sandbox.profile_overrides key: " .. tostring(key))
        end
    end
    local result = {}
    for key, default_value in pairs(defaults) do
        local value = overrides[key]
        if value == nil then value = default_value end
        local expected_type = schema.types[key]
        if expected_type == "boolean" and type(value) ~= "boolean" then
            error("sandbox.profile_overrides." .. key .. " must be boolean")
        end
        if expected_type == "integer" and (type(value) ~= "number" or math.floor(value) ~= value) then
            error("sandbox.profile_overrides." .. key .. " must be integer")
        end
        local range = schema.ranges[key]
        if range and type(value) == "number" and (value < range[1] or value > range[2]) then
            error("sandbox.profile_overrides." .. key .. " outside supported range")
        end
        result[key] = value
    end
    return result
end

local function load_profile_overrides(root)
    local schema = dofile(root .. "/Scripts/ax_sandbox/schema.lua")
    local config = dofile(root .. "/Scripts/ax_config/server.lua")
    local sandbox = config.sandbox or {}
    return normalize_profile_overrides(sandbox.profile_overrides, schema), schema
end

local function apply_profile_rules(settings, profile_overrides)
    for key, value in pairs(profile_overrides or {}) do settings[key] = value end
    settings.AllowRecipeSharing = true
    settings.AllowTransmog = true
    settings.ShowDeathMessages = true
    settings.HostAccessPlayerCorpses = true
    settings.AllowCharacterReset = true
end

function M.build(family, title, overrides)
    local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
    local base = dofile(root .. "/Scripts/ax_profiles/base_17.lua")
    local profile_overrides = load_profile_overrides(root)
    local result = clone(base)
    result.mod_version = base.mod_version
    result.profile_family = family
    result.family_label = title
    result.profile_overrides = clone(profile_overrides)
    result.profiles = {}

    for _, src in ipairs(base.profiles or {}) do
        local p = clone(src)
        local o = overrides[p.day] or {}
        p.family = family
        p.family_label = title
        p.profile_system = "seventeen_suns_non_repeating_rotation"
        p.id = family .. "_" .. (o.id or p.id)
        p.base_id = src.id
        p.display_name = o.display_name or (title .. " - " .. tostring(src.display_name))
        p.experience = o.experience or src.experience
        p.message_line = o.message_line or src.message_line
        p.run_advice = o.run_advice or ""
        p.settings = p.settings or {}
        apply_numbers(p.settings, o.settings or {})
        for key, factor in pairs(o.multipliers or {}) do
            if key == "EnemySpawnRate" then mul(p.settings, key, factor, 0, 10)
            elseif key == "EnemyHealthMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "EnemyPlayerDamageMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "EnemyDeployableDamageMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "DetectionSpeedMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "HungerSpeedMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "ThirstSpeedMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "FatigueSpeedMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "ContinenceSpeedMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "PlayerXPGainMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "ItemDurabilityMultiplier" then mul(p.settings, key, factor, 0, 20)
            elseif key == "DurabilityLossOnDeathMultiplier" then mul(p.settings, key, factor, 0, 10)
            elseif key == "ItemWeightMultiplier" then mul(p.settings, key, factor, 0, 10)
            end
        end
        if o.enemy_accuracy ~= nil then p.settings.EnemyAccuracy = clamp(o.enemy_accuracy, 0, 4) end
        if o.game_difficulty ~= nil then p.settings.GameDifficulty = clamp(o.game_difficulty, 0, 3) end
        if o.death_penalties ~= nil then p.settings.DeathPenalties = clamp(o.death_penalties, 0, 3) end
        if o.loot_respawn ~= nil then p.settings.LootRespawnEnabled = o.loot_respawn end
        if o.bonus_perks ~= nil then p.settings.BonusPerkPoints = clamp(o.bonus_perks, 0, 100) end
        if o.base_inventory ~= nil then p.settings.BaseInventorySize = clamp(o.base_inventory, 1, 100) end
        apply_profile_rules(p.settings, profile_overrides)

        p.encounter = p.encounter or {}
        for k, v in pairs(o.encounter or {}) do p.encounter[k] = v end
        p.encounter.profile = p.id
        p.encounter.family = family
        p.encounter.description = o.encounter_description or p.encounter.description or p.message_line

        p.external_profiles = p.external_profiles or {}
        p.external_profiles.dynamic_spawns = o.dynamic_spawns or p.external_profiles.dynamic_spawns
        p.external_profiles.lethal_lasers = o.lethal_lasers or p.external_profiles.lethal_lasers
        p.external_profiles.ante_up = o.ante_up or p.external_profiles.ante_up
        p.external_profiles.encounter_director = p.id
        table.insert(result.profiles, p)
    end
    return result
end

M._test = {
    normalize_profile_overrides = normalize_profile_overrides,
    apply_profile_rules = apply_profile_rules,
}

return M
