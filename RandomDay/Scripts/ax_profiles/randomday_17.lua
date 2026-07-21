-- RandomDay public source
-- Module: RandomDay/Scripts/ax_profiles/randomday_17.lua
-- Ownership/Purpose: RandomDay public module; Load all registered families and expose 289 profiles
-- Public contract: caller=calendar, writer, status, tests, generators; inputs=family registry and source modules;
--   outputs=complete profile set
-- Side effects: loads packaged family modules
-- Failure/Recovery: failures=missing or invalid family module; recovery states=profile_set_loaded
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-profiles-randomday-17

local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
local registry = dofile(root .. "/Scripts/ax_profiles/profile_family_registry.lua")
local identity = dofile(root .. "/Scripts/ax_core/version.lua")

local families = {}
local family_names = {}
for _, item in ipairs(registry.families or {}) do
    local pack = dofile(root .. "/Scripts/ax_profiles/families/" .. tostring(item.file))
    families[item.id] = pack
    table.insert(family_names, item.id)
end

local default_family = families.action or families[family_names[1]]

return {
    mod_version = identity.read(root),
    cycle_length_days = 17,
    profile_system = "seventeen_suns_non_repeating_rotation",
    family_names = family_names,
    family_registry = registry.families,
    families = families,
    profiles = default_family and default_family.profiles or {},
    canonical_key_order = default_family and default_family.canonical_key_order or {},
    profile_defaults = default_family and default_family.profile_defaults or {},
    profile_overrides = default_family and default_family.profile_overrides or {},
    fixed_rules = default_family and default_family.fixed_rules or {},
}
