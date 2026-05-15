-- RandomDay
-- UE4SS Lua entrypoint. Place folder in ue4ss/Mods/RandomDay and keep enabled.txt present.

local MOD_ID = "RandomDay"

local function normalize_path(path)
    path = tostring(path or ""):gsub("\\", "/")
    path = path:gsub("/Scripts/main%.lua$", "")
    path = path:gsub("/scripts/main%.lua$", "")
    return path
end

local function file_exists(path)
    local f = io.open(path, "r")
    if f then f:close() return true end
    return false
end

local function dirname(path)
    path = tostring(path or ""):gsub("\\", "/")
    return path:match("^(.*)/[^/]*$") or "."
end

local MOD_ROOT = nil

local source = debug and debug.getinfo and debug.getinfo(1, "S") and debug.getinfo(1, "S").source or nil
if source and source:sub(1, 1) == "@" then
    local script_path = source:sub(2):gsub("\\", "/")
    local script_dir = dirname(script_path)
    local candidate = normalize_path(script_dir .. "/..")
    if file_exists(candidate .. "/Scripts/ax_core/init.lua") then
        MOD_ROOT = candidate
    end
end

if not MOD_ROOT then
    local legacy_name = "Ax" .. "tlan" .. "RandomDay"
    local candidates = {
        "ue4ss/Mods/RandomDay",
        "./ue4ss/Mods/RandomDay",
        "Mods/RandomDay",
        "./Mods/RandomDay",
        "AbioticFactor/Binaries/Win64/ue4ss/Mods/RandomDay",
        "./AbioticFactor/Binaries/Win64/ue4ss/Mods/RandomDay",
        "RandomDay",
        -- Legacy fallback for older installs only. New packages should use RandomDay.
        "ue4ss/Mods/" .. legacy_name,
        "./ue4ss/Mods/" .. legacy_name,
        "Mods/" .. legacy_name,
        "./Mods/" .. legacy_name,
        legacy_name,
        "."
    }
    for _, p in ipairs(candidates) do
        if file_exists(p .. "/Scripts/ax_core/init.lua") then
            MOD_ROOT = p
            break
        end
    end
end

if not MOD_ROOT then
    print("[RandomDay] FATAL: could not resolve mod root. Expected RandomDay/Scripts/ax_core/init.lua\n")
    return
end

MOD_ROOT = MOD_ROOT:gsub("\\", "/")
_G.RANDOMDAY_MOD_ROOT = MOD_ROOT
_G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] = MOD_ROOT -- legacy compatibility for old local overrides.

local ok, err = pcall(function()
    local init = dofile(MOD_ROOT .. "/Scripts/ax_core/init.lua")
    init.run(MOD_ROOT)
end)

if not ok then
    print("[RandomDay] FATAL: startup failed: " .. tostring(err) .. "\n")
end
