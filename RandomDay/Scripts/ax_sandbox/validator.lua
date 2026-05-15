local M = {}

local function parse_bool(v)
    if v == true or v == false then return v end
    local s = tostring(v):lower()
    if s == "true" or s == "1" then return true end
    if s == "false" or s == "0" then return false end
    return nil
end

function M.validate_profile(profile, schema)
    if not profile or not profile.settings then return false, "missing profile settings" end
    for _, key in ipairs(schema.key_order) do
        local expected_type = schema.types[key]
        local value = profile.settings[key]
        if value == nil then return false, "missing key " .. key end
        if expected_type == "boolean" and type(value) ~= "boolean" then return false, key .. " must be boolean" end
        if expected_type == "integer" then
            if type(value) ~= "number" or math.floor(value) ~= value then return false, key .. " must be integer" end
        end
        if expected_type == "number" then
            if type(value) ~= "number" then return false, key .. " must be number" end
        end
        local range = schema.ranges[key]
        if range and type(value) == "number" then
            if value < range[1] or value > range[2] then return false, key .. " outside safety range" end
        end
    end
    for k, v in pairs(schema.fixed_rules) do
        if profile.settings[k] ~= v then return false, "fixed rule violation: " .. k end
    end
    return true
end

function M.parse_ini(text)
    local values = {}
    local has_header = false
    for line in tostring(text or ""):gmatch("[^\r\n]+") do
        local trimmed = line:match("^%s*(.-)%s*$")
        if trimmed == "[SandboxSettings]" then has_header = true end
        local key, value = trimmed:match("^([A-Za-z0-9_]+)%s*=%s*(.-)%s*$")
        if key then values[key] = value end
    end
    return values, has_header
end

function M.validate_ini_text(text, profile, schema)
    local values, has_header = M.parse_ini(text)
    if not has_header then return false, "missing [SandboxSettings] header" end
    for _, key in ipairs(schema.key_order) do
        if values[key] == nil then return false, "INI missing key " .. key end
        local expected = profile.settings[key]
        local raw = values[key]
        local expected_type = schema.types[key]
        if expected_type == "boolean" then
            local b = parse_bool(raw)
            if b == nil or b ~= expected then return false, "INI mismatch " .. key end
        elseif expected_type == "integer" or expected_type == "number" then
            local n = tonumber(raw)
            if n == nil then return false, "INI numeric parse failed " .. key end
            if math.abs(n - expected) > 0.000001 then return false, "INI mismatch " .. key .. " expected " .. tostring(expected) .. " got " .. tostring(n) end
        else
            if tostring(raw) ~= tostring(expected) then return false, "INI mismatch " .. key end
        end
    end
    return true
end

return M
