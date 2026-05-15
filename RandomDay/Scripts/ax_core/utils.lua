local M = {}

function M.file_exists(path)
    local f = io.open(path, "r")
    if f then f:close() return true end
    return false
end

function M.read_file(path)
    local f, err = io.open(path, "rb")
    if not f then return nil, err end
    local data = f:read("*a")
    f:close()
    return data
end

function M.write_file(path, data)
    local f, err = io.open(path, "wb")
    if not f then return false, err end
    f:write(data or "")
    f:close()
    return true
end

function M.copy_file(src, dst)
    local data, err = M.read_file(src)
    if not data then return false, err end
    return M.write_file(dst, data)
end

function M.shell_quote(path)
    return '"' .. tostring(path):gsub('"', '') .. '"'
end

function M.mkdir(path)
    if not path or path == "" then return true end
    -- Windows dedicated server target. Safe enough because paths are static/configured and quotes are stripped.
    local cmd = 'mkdir ' .. M.shell_quote(path) .. ' 2>nul'
    os.execute(cmd)
    return true
end

function M.dirname(path)
    return tostring(path):gsub("\\", "/"):match("^(.*)/[^/]*$") or "."
end

function M.basename(path)
    return tostring(path):gsub("\\", "/"):match("([^/]+)$") or tostring(path)
end

function M.timestamp()
    return os.date("%Y%m%d_%H%M%S")
end

function M.sanitize_id(s)
    return tostring(s or "unknown"):gsub("[^A-Za-z0-9_%-]", "_")
end

function M.ensure_runtime_dirs(config, mod_root, log)
    local dirs = {
        config.paths.runtime_dir,
        config.paths.runtime_dir .. "/last_good",
        config.paths.runtime_dir .. "/backups",
        config.paths.runtime_dir .. "/pending",
        config.paths.web_export_dir,
    }
    for _, d in ipairs(dirs) do M.mkdir(d) end
    if log then log.debug("runtime directories checked") end
end

function M.resolve_existing_or_default(candidates, fallback)
    for _, path in ipairs(candidates or {}) do
        if M.file_exists(path) then return path end
    end
    return fallback or (candidates and candidates[1])
end

function M.json_escape(s)
    s = tostring(s or "")
    s = s:gsub('\\', '\\\\'):gsub('"', '\\"'):gsub('\n', '\\n'):gsub('\r', '\\r')
    return '"' .. s .. '"'
end

function M.lua_literal(v)
    local t = type(v)
    if t == "boolean" then return v and "true" or "false" end
    if t == "number" then return tostring(v) end
    if t == "string" then return string.format("%q", v) end
    return "nil"
end

function M.ini_literal(v)
    local t = type(v)
    if t == "boolean" then return v and "True" or "False" end
    return tostring(v)
end

function M.hash_text(text)
    -- Lightweight deterministic checksum for readback equality, not cryptographic.
    local h = 2166136261
    text = tostring(text or "")
    for i = 1, #text do
        h = (h ~ string.byte(text, i)) & 0xffffffff
        h = (h * 16777619) & 0xffffffff
    end
    return string.format("%08x", h)
end

return M
