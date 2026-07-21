local source_root = assert(arg[1], "source root required"):gsub("\\", "/")
local output_path = assert(arg[2], "output path required"):gsub("\\", "/")
local version = assert(arg[3], "version required"):gsub("^%s+", ""):gsub("%s+$", "")
if version == "" then error("version must not be empty") end
_G.RANDOMDAY_MOD_ROOT = source_root

local utils = dofile(source_root .. "/Scripts/ax_core/utils.lua")
local profiles = dofile(source_root .. "/Scripts/ax_profiles/randomday_17.lua")
local translation = dofile(source_root .. "/Scripts/ax_profiles/translation.lua")
local runtime_status = dofile(source_root .. "/Scripts/ax_runtime/status.lua")

local function copy(value)
    if type(value) ~= "table" then return value end
    local output = {}
    for key, item in pairs(value) do output[key] = copy(item) end
    return output
end

local function count(values)
    local total = 0
    for _ in pairs(values or {}) do total = total + 1 end
    return total
end

local registry = {}
for _, metadata in ipairs(profiles.family_registry or {}) do registry[metadata.id] = metadata end

local dictionary = translation.dictionary()
local document = {
    schema = "randomday_profile_reference_v2",
    version = version,
    profile_system = profiles.profile_system,
    family_count = #profiles.family_names,
    profile_count = 0,
    dictionary = dictionary,
    translation_contract = {
        dictionary_version = dictionary.version,
        setting_count = count(dictionary.settings),
        profile_translation_embedded = true,
        required_profile_fields = {
            "profile_id", "overall", "domains", "summary", "advice",
            "encounter", "setting_meanings", "top_facts",
        },
    },
    families = {},
}

for _, family_id in ipairs(profiles.family_names) do
    local family = assert(profiles.families[family_id], "missing family " .. family_id)
    local metadata = registry[family_id] or {}
    local family_row = {
        id = family_id,
        public_name = metadata.public_name or family.public_name or family_id,
        label = metadata.label or family.label or family_id,
        description = metadata.description or family.description or "",
        genre = metadata.genre or family.genre or "",
        humor_style = metadata.humor_style or family.humor_style or "",
        profiles = {},
    }
    for _, profile in ipairs(family.profiles or {}) do
        local valid, translated = translation.validate_profile_translation(profile)
        if not valid then
            error("profile translation failed for " .. tostring(profile.id) .. ": " .. tostring(translated))
        end
        table.insert(family_row.profiles, {
            day = profile.day,
            id = profile.id,
            display_name = profile.display_name,
            base_day_id = profile.base_day_id,
            experience = profile.experience,
            message_line = profile.message_line,
            run_advice = profile.run_advice,
            settings = copy(profile.settings),
            external_profiles = copy(profile.external_profiles),
            encounter = copy(profile.encounter),
            translation = translated,
        })
        document.profile_count = document.profile_count + 1
    end
    table.insert(document.families, family_row)
end

local ok, err = utils.write_file(output_path, runtime_status.json_encode(document) .. "\n")
if not ok then error("unable to write profile reference: " .. tostring(err)) end
print("exported_profiles=" .. tostring(document.profile_count))
