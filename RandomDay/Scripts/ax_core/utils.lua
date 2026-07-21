-- RandomDay public source
-- Module: RandomDay/Scripts/ax_core/utils.lua
-- Ownership/Purpose: RandomDay public module; File, path, encoding, hash, directory, and transaction primitives
-- Public contract: caller=runtime modules; inputs=paths, bytes, validators; outputs=transaction result objects and
--   bounded runtime-relative directory failures
-- Side effects: creates directories and transactional sidecars
-- Failure/Recovery: failures=unsafe path or directory command unavailable/raised/failed;
--   write/readback/validation/promotion/cleanup failure; recovery states=created; replaced; restored; restore_failed
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-core-utils

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
    local ok, write_err = f:write(data or "")
    if not ok then
        f:close()
        return false, write_err or "write failed"
    end
    local close_ok, close_err = f:close()
    if close_ok == nil then return false, close_err or "close failed" end
    return true
end

function M.copy_file(src, dst)
    local data, err = M.read_file(src)
    if not data then return false, err end
    return M.write_file(dst, data)
end

function M.copy_file_verified(src, dst)
    local data, err = M.read_file(src)
    if not data then return false, err end
    local ok, write_err = M.write_file(dst, data)
    if not ok then return false, write_err end
    local readback, read_err = M.read_file(dst)
    if not readback then return false, read_err end
    if readback ~= data then return false, "copy readback mismatch" end
    return true
end

function M.remove_file(path)
    if not M.file_exists(path) then return true end
    local ok, err = os.remove(path)
    if not ok then return false, err end
    return true
end

function M.rename_file(src, dst)
    local ok, err = os.rename(src, dst)
    if not ok then return false, err end
    return true
end

function M.shell_quote(path)
    local value = tostring(path or "")
    if value:find("%z") or value:find("[\r\n]") then return nil, "path contains a control character" end
    local separator = package and package.config and package.config:sub(1, 1) or "\\"
    if separator == "\\" then
        -- cmd.exe expands percent/bang and treats these metacharacters specially even near quotes.
        if value:find('["%%!%^&|<>`]') or value:find("%$%(") then return nil, "path contains a shell metacharacter" end
        return '"' .. value .. '"'
    end
    return "'" .. value:gsub("'", "'\"'\"'") .. "'"
end

function M.mkdir(path)
    if not path or path == "" then return true end
    local exists = os.rename(path, path)
    if exists then return true end
    local separator = package and package.config and package.config:sub(1, 1) or "\\"
    local cmd
    local quoted, quote_err = M.shell_quote(path)
    if not quoted then return false, quote_err end
    if separator == "\\" then
        cmd = 'mkdir ' .. quoted .. ' 2>nul'
    else
        cmd = 'mkdir -p ' .. quoted .. ' 2>/dev/null'
    end

    local execute = os and os.execute
    if type(execute) ~= "function" then
        return false, "directory creation unavailable: os.execute is not available"
    end

    local called, result, reason, exit_code = pcall(execute, cmd)
    if not called then
        exists = os.rename(path, path)
        if exists then return true end
        return false, "directory creation command raised an error"
    end

    local numeric_exit = tonumber(exit_code)
    local succeeded = result == 0 or
        (result == true and (reason == nil or (reason == "exit" and (numeric_exit == nil or numeric_exit == 0))))
    if succeeded then return true end
    exists = os.rename(path, path)
    if exists then return true end

    if reason == "signal" then
        return false, "directory creation command did not exit normally"
    end

    local code = numeric_exit
    if code == nil and type(result) == "number" then code = result end
    if code ~= nil and code ~= 0 then
        return false, "directory creation command failed with exit code " .. tostring(code)
    end
    return false, "directory creation command did not confirm success"
end

function M.dirname(path)
    return tostring(path):gsub("\\", "/"):match("^(.*)/[^/]*$") or "."
end

function M.basename(path)
    return tostring(path):gsub("\\", "/"):match("([^/]+)$") or tostring(path)
end

function M.normalize_path(path)
    local value = tostring(path or ""):gsub("\\", "/")
    local unc = value:sub(1, 2) == "//"
    value = value:gsub("/+", "/")
    if unc then value = "/" .. value end
    local drive = not unc and value:match("^([A-Za-z]:)") or nil
    if drive then value = value:sub(#drive + 1) end
    local absolute = unc or value:sub(1, 1) == "/"
    local protected_parts = unc and 2 or 0
    local parts = {}
    for part in value:gmatch("[^/]+") do
        if part == "." or part == "" then
            -- Skip.
        elseif part == ".." then
            if #parts > protected_parts and parts[#parts] ~= ".." then
                table.remove(parts)
            elseif not absolute then
                table.insert(parts, part)
            end
        else
            table.insert(parts, part)
        end
    end
    local prefix = drive or ""
    if unc then
        prefix = "//"
    elseif absolute then
        prefix = prefix .. "/"
    end
    local normalized = prefix .. table.concat(parts, "/")
    if normalized == "" and absolute then return "/" end
    if normalized == "" and drive then return drive .. "/" end
    return normalized
end

function M.path_key(path)
    local normalized = M.normalize_path(path)
    local separator = package and package.config and package.config:sub(1, 1) or "\\"
    local windows_path = normalized:match("^[A-Za-z]:/") or normalized:sub(1, 2) == "//"
    return (separator == "\\" or windows_path) and normalized:lower() or normalized
end

function M.is_path_within(path, root)
    local candidate = M.normalize_path(path)
    local boundary = M.normalize_path(root)
    if candidate == "" or boundary == "" then return false end
    local separator = package and package.config and package.config:sub(1, 1) or "\\"
    local windows_path = candidate:match("^[A-Za-z]:/") or boundary:match("^[A-Za-z]:/") or
        candidate:sub(1, 2) == "//" or boundary:sub(1, 2) == "//"
    if separator == "\\" or windows_path then candidate = candidate:lower(); boundary = boundary:lower() end
    return candidate == boundary or candidate:sub(1, #boundary + 1) == boundary .. "/"
end

function M.is_safe_path_component(value)
    value = tostring(value or "")
    if value == "" or value == "." or value == ".." then return false end
    if value:find("[\\/]") or value:find("[\r\n%z]") then return false end
    return value:match("^[A-Za-z0-9 _%-]+$") ~= nil
end

function M.timestamp()
    return os.date("%Y%m%d_%H%M%S")
end

local unique_counter = 0
function M.unique_token()
    unique_counter = unique_counter + 1
    local clock_part = math.floor(((os.clock and os.clock()) or 0) * 1000000) % 1000000
    return M.timestamp() .. "_" .. string.format("%06d", clock_part) .. "_" .. string.format("%04d", unique_counter)
end

function M.sanitize_id(s)
    return tostring(s or "unknown"):gsub("[^A-Za-z0-9_%-]", "_")
end

function M.ensure_runtime_dirs(config, mod_root, log)
    local dirs = {
        { path=config.paths.runtime_dir, reference="runtime" },
        { path=config.paths.runtime_dir .. "/last_good", reference="runtime/last_good" },
        { path=config.paths.runtime_dir .. "/backups", reference="runtime/backups" },
        { path=config.paths.runtime_dir .. "/pending", reference="runtime/pending" },
        { path=config.paths.web_export_dir, reference="web_export" },
    }
    for _, directory in ipairs(dirs) do
        local ok, err = M.mkdir(directory.path)
        if not ok then
            if log then
                log.error("runtime directory unavailable: " .. directory.reference .. " err=" .. tostring(err))
            end
            return false, err or "directory creation failed", directory.reference
        end
    end
    if log then log.debug("runtime directories checked") end
    return true
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

local function restore_transaction_target(path, rollback, had_original, fs)
    local exists = fs.file_exists or M.file_exists
    local remove = fs.remove_file or M.remove_file
    local rename = fs.rename_file or M.rename_file
    local copy = fs.copy_file_verified or M.copy_file_verified

    if exists(path) then
        local removed, remove_err = remove(path)
        if not removed then return false, "failed to remove rejected replacement: " .. tostring(remove_err) end
    end
    if not had_original then return true end
    local restored, restore_err = rename(rollback, path)
    if not restored then
        restored, restore_err = copy(rollback, path)
        if restored then
            local removed, remove_err = remove(rollback)
            if not removed then return false, "target restored but rollback cleanup failed: " .. tostring(remove_err) end
        end
    end
    if not restored then return false, "rollback restore failed: " .. tostring(restore_err) end
    return true
end

local function validate_transaction_text(validate, text)
    if not validate then return true end
    local called, valid, validation_err = pcall(validate, text)
    if not called then return false, "validator raised: " .. tostring(valid) end
    if not valid then return false, validation_err or "validation failed" end
    return true
end

-- Sibling pending/rollback files keep promotion on one filesystem and preserve
-- recovery evidence. See docs/OPERATIONS.md and docs/TROUBLESHOOTING.md.
function M.transactional_replace(path, data, opts)
    opts = opts or {}
    local fs = opts.fs or {}
    local exists = fs.file_exists or M.file_exists
    local read = fs.read_file or M.read_file
    local write = fs.write_file or M.write_file
    local remove = fs.remove_file or M.remove_file
    local rename = fs.rename_file or M.rename_file
    local copy = fs.copy_file_verified or M.copy_file_verified
    local validate = opts.validate
    local pending = opts.pending_path or (tostring(path) .. ".randomday.pending")
    local rollback = opts.rollback_path or (tostring(path) .. ".randomday.rollback")
    local result = {
        ok = false,
        path = path,
        pending_path = pending,
        rollback_path = rollback,
        had_original = exists(path),
        status = "not_started",
        rollback_status = "not_needed",
        replacement_method = "sibling_rename",
        pending_readback_verified = false,
        target_readback_verified = false,
    }

    if type(data) ~= "string" then
        result.status = "invalid_input"
        result.error = "transaction data must be a string"
        return result
    end

    if exists(pending) then
        local cleared, clear_err = remove(pending)
        if not cleared then result.status = "stale_pending_cleanup_failed"; result.error = clear_err; return result end
    end
    if exists(rollback) then
        if not exists(path) then
            local restored, restore_err = rename(rollback, path)
            if not restored then
                restored, restore_err = copy(rollback, path)
                if restored then
                    local removed, remove_err = remove(rollback)
                    if not removed then
                        result.status = "interrupted_transaction_cleanup_failed"
                        result.error = remove_err
                        return result
                    end
                end
            end
            if not restored then
                result.status = "interrupted_transaction_restore_failed"
                result.error = restore_err
                return result
            end
            result.had_original = true
            result.recovered_interrupted_transaction = true
        else
            result.status = "stale_rollback_requires_review"
            result.error = "rollback file exists while target is present; refusing to discard recovery data"
            return result
        end
    end

    local wrote, write_err = write(pending, data)
    if not wrote then result.status = "pending_write_failed"; result.error = write_err; return result end
    local pending_text, read_err = read(pending)
    if not pending_text then result.status = "pending_readback_failed"; result.error = read_err; return result end
    if pending_text ~= data then result.status = "pending_readback_mismatch"; result.error = "pending bytes differ"; return result end
    local pending_valid, pending_validation_err = validate_transaction_text(validate, pending_text)
    if not pending_valid then result.status = "pending_validation_failed"; result.error = pending_validation_err; return result end
    result.pending_readback_verified = true

    if result.had_original and opts.backup_path then
        local backed_up, backup_err = copy(path, opts.backup_path)
        if not backed_up then result.status = "operation_backup_failed"; result.error = backup_err; return result end
        result.backup_path = opts.backup_path
    end

    if result.had_original then
        local moved, move_err = rename(path, rollback)
        if not moved then
            result.status = "original_preserved_move_failed"
            result.error = move_err
            return result
        end
        result.rollback_status = "original_held"
    end

    local promoted, promote_err = rename(pending, path)
    if not promoted then
        result.status = "promotion_failed"
        result.error = promote_err
        local restored, restore_err = restore_transaction_target(path, rollback, result.had_original, fs)
        result.rollback_status = restored and "restored" or "restore_failed"
        if not restored then result.rollback_error = restore_err end
        return result
    end

    local production_text, production_err = read(path)
    local valid = production_text ~= nil and production_text == data
    local validation_err = production_err or (production_text ~= data and "production bytes differ" or nil)
    if valid then valid, validation_err = validate_transaction_text(validate, production_text) end
    if not valid then
        result.status = "production_validation_failed"
        result.error = validation_err
        local restored, restore_err = restore_transaction_target(path, rollback, result.had_original, fs)
        result.rollback_status = restored and "restored" or "restore_failed"
        if not restored then result.rollback_error = restore_err end
        return result
    end
    result.target_readback_verified = true

    if result.had_original and exists(rollback) then
        local removed, remove_err = remove(rollback)
        if not removed then
            result.rollback_status = "retained_after_success"
            result.rollback_error = remove_err
            result.status = "replacement_committed_recovery_cleanup_failed"
            result.error = "replacement verified, but rollback recovery data could not be cleared"
            return result
        else
            result.rollback_status = "discarded_after_success"
        end
    end
    result.ok = true
    result.status = result.had_original and "replaced" or "created"
    return result
end

return M
