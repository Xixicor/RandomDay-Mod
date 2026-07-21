-- RandomDay public source
-- Module: RandomDay/Scripts/ax_external/adapters/encounter_director.lua
-- Ownership/Purpose: RandomDay public module; Encounter and world-scope signatures and values
-- Public contract: caller=ax_external/bridge.lua; inputs=active profile encounter values and scope config;
--   outputs=recognized value map
-- Side effects: none directly
-- Failure/Recovery: failures=no complete signature; recovery states=recognized; incompatible
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-external-adapters-encounter-director

local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"

local function pct(v)
    v = tonumber(v) or 0
    if v > 0 and v < 1 then return math.floor(v * 100 + 0.5) end
    return math.floor(v + 0.5)
end

local prepared_profiles = {}
local ok_profiles, profile_system = pcall(dofile, root .. "/Scripts/ax_profiles/randomday_17.lua")
local families = {}
if ok_profiles and profile_system and profile_system.families then
    for _, family_name in ipairs(profile_system.family_names or {}) do
        table.insert(families, profile_system.families[family_name])
    end
end

for _, family in ipairs(families) do
    for _, profile in ipairs(family.profiles or {}) do
        local encounter = profile.encounter or {}
        local key = profile.external_profiles and profile.external_profiles.encounter_director or profile.id
        prepared_profiles[key] = {
            RandomDayEncounterProfile = tostring(encounter.profile or profile.id),
            RandomDayEncounterTier = tostring(encounter.tier or "low"),
            RandomDayEncounterTheme = tostring(encounter.theme or "baseline_walkers"),
            RandomDayAllowMultiGroup = encounter.allow_multi_group == true,
            RandomDayMaxActiveGroups = tonumber(encounter.max_active_groups) or 1,
            RandomDaySpecialEventChance = pct(encounter.special_event_chance),
            RandomDayMixedEncounterChance = pct(encounter.mixed_encounter_chance),
            RandomDayMixedEncounterBudget = tonumber(encounter.mixed_encounter_budget) or 4,
            RandomDayMixedEncounterCooldown = tonumber(encounter.mixed_encounter_cooldown) or 600,
            RandomDayWorldScopeEnabled = true,
            RandomDayAffectOpenWorlds = true,
            RandomDayProtectedWorldPatterns = "",
            RandomDayUnknownWorldPolicy = "allow",
            RandomDayLogWorldScopeDecisions = true,
        }
    end
end

return {
    id = "encounter_director",
    display_name = "Chaotic Spawn Engine optional RandomDay extension fields",
    required = false,
    compatibility = "Uses optional RandomDay extension fields only when they already exist in Chaotic Spawn Engine DynamicSpawns/Scripts/SharedData.lua. RandomDay generates their values from the active family profile.",
    compatibility_signatures = {
        {
            id = "randomday_encounter_director_fields_v1",
            tested_version = "",
            version_evidence = "layout_fixture_only",
            required_keys = {
                "RandomDayEncounterProfile", "RandomDayEncounterTier", "RandomDayEncounterTheme",
                "RandomDayAllowMultiGroup", "RandomDayMaxActiveGroups", "RandomDayMixedEncounterChance",
            },
        },
    },
    config_candidates = {
        "../DynamicSpawns/Scripts/SharedData.lua",
        "ue4ss/Mods/DynamicSpawns/Scripts/SharedData.lua",
        "./ue4ss/Mods/DynamicSpawns/Scripts/SharedData.lua",
        "Mods/DynamicSpawns/Scripts/SharedData.lua",
        "./Mods/DynamicSpawns/Scripts/SharedData.lua",
    },
    prepared_profiles = prepared_profiles,
}
