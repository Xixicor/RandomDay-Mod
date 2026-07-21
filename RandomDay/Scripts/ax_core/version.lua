-- RandomDay public source
-- Module: RandomDay/Scripts/ax_core/version.lua
-- Ownership/Purpose: RandomDay public module; Read generated version and mode markers
-- Public contract: caller=config and profile registry; inputs=marker files; outputs=identity strings
-- Side effects: reads package files only
-- Failure/Recovery: failures=missing or blank marker; recovery states=versioned; unversioned; invalid
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-core-version

local M = {}

local function read_trimmed(path)
    local file = io.open(path, "rb")
    if not file then return nil end
    local value = file:read("*a")
    file:close()
    value = tostring(value or ""):gsub("^%s+", ""):gsub("%s+$", "")
    if value == "" then return nil end
    return value
end

function M.read(mod_root)
    return read_trimmed(tostring(mod_root or "RandomDay") .. "/.randomday_version") or "unversioned"
end

function M.package_mode(mod_root)
    local mode = read_trimmed(tostring(mod_root or "RandomDay") .. "/.randomday_mode") or "dedicated_server"
    if mode ~= "dedicated_server" and mode ~= "singleplayer_manual" then
        return "invalid"
    end
    return mode
end

return M
