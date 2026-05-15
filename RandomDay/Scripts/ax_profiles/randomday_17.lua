local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
local registry = dofile(root .. "/Scripts/ax_profiles/profile_family_registry.lua")

local families = {}
local family_names = {}
for _, item in ipairs(registry.families or {}) do
    local pack = dofile(root .. "/Scripts/ax_profiles/families/" .. tostring(item.file))
    families[item.id] = pack
    table.insert(family_names, item.id)
end

local default_family = families.action or families[family_names[1]]

return {
    mod_version = "0.3.14-alpha-seventeen-suns-rotation",
    cycle_length_days = 17,
    profile_system = "seventeen_suns_non_repeating_rotation",
    family_names = family_names,
    family_registry = registry.families,
    families = families,
    profiles = default_family and default_family.profiles or {},
    canonical_key_order = default_family and default_family.canonical_key_order or {},
    fixed_rules = default_family and default_family.fixed_rules or {},
}
