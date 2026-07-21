-- RandomDay public source
-- Module: RandomDay/Scripts/ax_external/bridge.lua
-- Ownership/Purpose: RandomDay public module; Recognize, back up, patch, verify, and roll back optional adapter targets
-- Public contract: caller=ax_core/init.lua; inputs=config, active profile, adapter definitions, target files;
--   outputs=adapter result list and optional target changes
-- Side effects: writes third-party config only after complete signature match
-- Failure/Recovery: failures=read/signature/backup/write/readback/restore failure; recovery states=applied;
--   already_current; not_installed; skipped_incompatible; failed_rolled_back; rollback_failed
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-external-bridge

local M = {}

local function format_lua_value(value)
    if type(value) == "boolean" then return value and "true" or "false" end
    if type(value) == "number" then return tostring(value) end
    if type(value) == "string" then return string.format("%q", value) end
    return "nil"
end

local function escape_pattern(value)
    return tostring(value):gsub("([^%w])", "%%%1")
end

local function try_patch_line(raw_line, key, value)
    local formatted = format_lua_value(value)
    local name = escape_pattern(key)
    local patterns = {
        "^(%s*local%s+" .. name .. "%s*=%s*)(.-)(%s*,?)(%s*%-%-.*)$",
        "^(%s*local%s+" .. name .. "%s*=%s*)(.-)(%s*,?)%s*$",
        "^(%s*" .. name .. "%s*=%s*)(.-)(%s*,?)(%s*%-%-.*)$",
        "^(%s*" .. name .. "%s*=%s*)(.-)(%s*,?)%s*$",
        "^(%s*[%w_]+%s*%.%s*" .. name .. "%s*=%s*)(.-)(%s*,?)(%s*%-%-.*)$",
        "^(%s*[%w_]+%s*%.%s*" .. name .. "%s*=%s*)(.-)(%s*,?)%s*$",
        "^(%s*%[\"" .. name .. "\"%]%s*=%s*)(.-)(%s*,?)(%s*%-%-.*)$",
        "^(%s*%[\"" .. name .. "\"%]%s*=%s*)(.-)(%s*,?)%s*$",
    }
    for _, pattern in ipairs(patterns) do
        local prefix, old, comma, comment = raw_line:match(pattern)
        if prefix then
            local old_trim = tostring(old or ""):gsub("^%s+", ""):gsub("%s+$", "")
            return prefix .. formatted .. (comma or "") .. (comment or ""), old_trim ~= formatted, true
        end
    end
    return raw_line, false, false
end

local function sorted_keys(values)
    local keys = {}
    for key in pairs(values or {}) do table.insert(keys, key) end
    table.sort(keys)
    return keys
end

local function patch_lines(text, values, patch_only_existing)
    local changed, output, found = {}, {}, {}
    local normalized = tostring(text or ""):gsub("\r\n", "\n"):gsub("\r", "\n"):gsub("\n$", "")
    local keys = sorted_keys(values)
    for raw_line in (normalized .. "\n"):gmatch("(.-)\n") do
        local new_line = raw_line
        for _, key in ipairs(keys) do
            local candidate, did_change, did_find = try_patch_line(raw_line, key, values[key])
            if did_find then
                new_line = candidate
                found[key] = true
                if did_change then table.insert(changed, key) end
                break
            end
        end
        table.insert(output, new_line)
    end
    if not patch_only_existing then
        for _, key in ipairs(keys) do
            if not found[key] then
                table.insert(output, key .. " = " .. format_lua_value(values[key]))
                table.insert(changed, key)
            end
        end
    end
    return table.concat(output, "\n") .. "\n", changed, found
end

local function assignment_present(text, key)
    local normalized = tostring(text or ""):gsub("\r\n", "\n"):gsub("\r", "\n")
    for line in (normalized .. "\n"):gmatch("(.-)\n") do
        local _, _, found = try_patch_line(line, key, false)
        if found then return true end
    end
    return false
end

local function match_signature(adapter, text, intended_values)
    for _, signature in ipairs(adapter.compatibility_signatures or {}) do
        local required, missing, seen = {}, {}, {}
        for _, key in ipairs(signature.required_keys or {}) do
            if not seen[key] then seen[key] = true; table.insert(required, key) end
        end
        for _, key in ipairs(sorted_keys(intended_values or {})) do
            if not seen[key] then seen[key] = true; table.insert(required, key) end
        end
        table.sort(required)
        for _, key in ipairs(required) do if not assignment_present(text, key) then table.insert(missing, key) end end
        if #missing == 0 then return signature, {} end
    end
    local missing = {}
    for _, key in ipairs(sorted_keys(intended_values or {})) do
        if not assignment_present(text, key) then table.insert(missing, key) end
    end
    return nil, missing
end

local function verify_values(text, values, patch_only_existing)
    local _, changed = patch_lines(text, values, patch_only_existing)
    if #changed > 0 then return false, "adapter readback does not contain intended values: " .. table.concat(changed, ",") end
    return true
end

local function find_config_path(adapter, mod_root, utils)
    local mods_root = utils.dirname(utils.normalize_path(mod_root))
    for _, configured in ipairs(adapter.config_candidates or {}) do
        local candidates = {}
        if configured:sub(1, 3) == "../" then
            table.insert(candidates, mod_root .. "/" .. configured)
        else
            local after_mods = configured:gsub("\\", "/"):match("Mods/(.+)$")
            if after_mods then table.insert(candidates, mods_root .. "/" .. after_mods) end
        end
        for _, candidate in ipairs(candidates) do
            local normalized = utils.normalize_path(candidate)
            if utils.file_exists(normalized) then return normalized end
        end
    end
    return nil
end

local function shallow_copy(values)
    local output = {}
    for key, value in pairs(values or {}) do output[key] = value end
    return output
end

local function build_joke_block(pack)
    local lines = { "local jokeMsgs = {" }
    for index, text in ipairs(pack.jokes or {}) do
        table.insert(lines, "    randomday_" .. string.format("%02d", index) .. " = { chance = 1, text = " .. format_lua_value(text) .. " },")
    end
    table.insert(lines, "}")
    return table.concat(lines, "\n")
end

local function find_quoted_literal_end(text, start_index, quote)
    local slash_count = 0
    for index = start_index + 1, #text do
        local char = text:sub(index, index)
        if char == quote and slash_count % 2 == 0 then return index end
        if char == "\\" then slash_count = slash_count + 1 else slash_count = 0 end
    end
    return nil
end

local function replace_string_literal_at(text, value_start, value)
    local quote = text:sub(value_start, value_start)
    if quote ~= '"' and quote ~= "'" then return text, false, false end
    local value_end = find_quoted_literal_end(text, value_start, quote)
    if not value_end then return text, false, false end
    local current = text:sub(value_start, value_end)
    local formatted = format_lua_value(value)
    if current == formatted then return text, false, true end
    return text:sub(1, value_start - 1) .. formatted .. text:sub(value_end + 1), true, true
end

local function replace_first_assignment(text, pattern, value)
    local _, _, value_start = text:find(pattern)
    if not value_start then return text, false, false end
    return replace_string_literal_at(text, value_start, value)
end

local function replace_branch_assignment(text, branch_pattern, value)
    local _, branch_end = text:find(branch_pattern)
    if not branch_end then return text, false, false end
    local assignment_start, _, value_start = text:find("warningMessage%s*=%s*()", branch_end + 1)
    if not assignment_start then return text, false, false end
    local next_branch = text:find(string.char(10) .. "%s*elseif%s+factionTable", branch_end + 1)
    local block_end = next_branch or text:find(string.char(10) .. "%s*end", branch_end + 1)
    if block_end and assignment_start > block_end then return text, false, false end
    return replace_string_literal_at(text, value_start, value)
end

local function patch_player_tracker_text(text, pack)
    local changed, found = false, 0
    local patched, did_change, did_find = replace_first_assignment(
        tostring(text or ""),
        "local%s+startMsg%s*=%s*()",
        pack.join or "RandomDay active profile loaded."
    )
    text, changed = patched, did_change
    if did_find then found = found + 1 end
    patched, did_change, did_find = replace_first_assignment(
        text,
        "local%s+plainStartMsg%s*=%s*()",
        pack.join or "RandomDay active profile loaded."
    )
    text, changed = patched, changed or did_change
    if did_find then found = found + 1 end
    local count
    patched, count = text:gsub("local%s+jokeMsgs%s*=%s*%b{}", build_joke_block(pack), 1)
    if count > 0 then text = patched; changed = true end
    found = found + count
    return text, changed, found
end

local function patch_special_spawns_text(text, pack)
    local warnings = pack.warnings or {}
    local changed, found = false, 0
    local patched, did_change, did_find = replace_first_assignment(
        tostring(text or ""),
        "local%s+warningMessage%s*=%s*()",
        warnings.hostile
    )
    text, changed = patched, did_change
    if did_find then found = found + 1 end
    local branches = {
        { "if%s+factionTable%s*==%s*WhoSpawnsWhere%.PortalStormSpawns%s+then", warnings.portal },
        { "elseif%s+factionTable%s*==%s*WhoSpawnsWhere%.OrderBreachSpawns%s+then", warnings.order },
        { "elseif%s+factionTable%s*==%s*WhoSpawnsWhere%.GKAmbushSpawns%s+then", warnings.gatekeeper },
    }
    for _, branch in ipairs(branches) do
        patched, did_change, did_find = replace_branch_assignment(text, branch[1], branch[2])
        text, changed = patched, changed or did_change
        if did_find then found = found + 1 end
    end
    return text, changed, found
end

local function message_file_plan(plans, path, kind, patcher, expected_targets, pack, utils)
    local result = { file=utils.basename(path), kind=kind, status="failed", targets=0, expected_targets=expected_targets }
    if not utils.file_exists(path) then
        result.failure = "not_installed"
        return result
    end
    local text, read_err = utils.read_file(path)
    if not text then
        result.failure = "read_failed"
        result.error = tostring(read_err)
        return result
    end
    local patched, changed, targets = patcher(text, pack)
    result.targets = targets or 0
    if result.targets ~= expected_targets then
        result.failure = "not_compatible"
        result.error = "expected " .. tostring(expected_targets) .. " complete targets, found " .. tostring(result.targets)
        return result
    end
    if not changed or patched == text then
        result.status = "already_current"
        return result
    end
    result.status = "pending"
    table.insert(plans, {
        path=path,
        text=patched,
        kind=kind,
        status_result=result,
        validate=function(readback) return readback == patched, "DynamicSpawns message readback mismatch" end,
    })
    return result
end

local function summarize_message_patch(result)
    if result.failure then
        result.status = "failed"
        return result
    end
    local has_applied, has_pending, has_failed = false, false, false
    for _, file_result in ipairs(result.files or {}) do
        has_applied = has_applied or file_result.status == "applied"
        has_pending = has_pending or file_result.status == "pending"
        has_failed = has_failed or file_result.status == "failed"
    end
    if has_failed then result.status = "failed"
    elseif has_pending then result.status = "pending"
    elseif has_applied then result.status = "applied"
    else result.status = "already_current" end
    return result
end

local function append_dynamic_message_plans(plans, profile, mod_root, shared_data_path, utils)
    local result = { status="failed", files={} }
    if not profile then
        result.failure = "profile_unavailable"
        return result
    end
    local loaded, messages = pcall(dofile, mod_root .. "/Scripts/ax_profiles/messages_17.lua")
    if not loaded or not messages or not messages.get then
        result.failure = "message_pack_unavailable"
        result.error = tostring(messages)
        return result
    end
    local pack = messages.get(profile)
    local base = tostring(shared_data_path):gsub("\\", "/"):match("^(.*)/SharedData%.lua$")
    if not base then
        result.failure = "shared_data_layout_unknown"
        return result
    end
    table.insert(result.files, message_file_plan(
        plans, base .. "/PlayerTracker.lua", "player_messages", patch_player_tracker_text, 3, pack, utils
    ))
    table.insert(result.files, message_file_plan(
        plans, base .. "/SpecialSpawns.lua", "spawn_messages", patch_special_spawns_text, 4, pack, utils
    ))
    return summarize_message_patch(result)
end

local function finalize_plan_results(plans, transaction_ok, failure)
    for _, plan in ipairs(plans or {}) do
        local result = plan.status_result
        if result and result.status == "pending" then
            if transaction_ok then
                result.status = "applied"
                result.readback_verified = true
            else
                result.status = "failed"
                result.failure = failure or "transaction_failed"
            end
        end
    end
end

local function finalize_message_patch(result)
    if result then summarize_message_patch(result) end
    return result
end

local function create_backups(config, adapter, plans, utils)
    local backup_dir = config.paths.runtime_dir .. "/backups/external_" .. utils.unique_token() .. "_" .. utils.sanitize_id(adapter.id)
    if not utils.mkdir(backup_dir) then return false, "adapter backup directory creation failed", backup_dir end
    for index, plan in ipairs(plans) do
        plan.original = utils.read_file(plan.path)
        if plan.original == nil then return false, "adapter source disappeared before backup: " .. tostring(plan.path), backup_dir end
        plan.backup_path = backup_dir .. "/" .. string.format("%02d_", index) .. utils.sanitize_id(utils.basename(plan.path))
        local ok, err = utils.copy_file_verified(plan.path, plan.backup_path)
        if not ok then return false, "adapter backup failed: " .. tostring(err), backup_dir end
    end
    return true, nil, backup_dir
end

local function cleanup_failed_transaction_sidecars(plan, utils)
    for _, path in ipairs({ plan.path .. ".randomday.pending", plan.path .. ".randomday.rollback" }) do
        if utils.file_exists(path) then
            local removed, remove_err = utils.remove_file(path)
            if not removed then
                return false, "restored target but failed to clear transaction sidecar " .. tostring(path) .. ": " .. tostring(remove_err)
            end
        end
    end
    return true
end

local function restore_plan(plan, utils)
    local backup_text, backup_err = utils.read_file(plan.backup_path)
    if not backup_text then return false, backup_err, "backup_unreadable" end
    local current = utils.read_file(plan.path)
    local restore_status = "already_restored"
    if current ~= backup_text then
        local restored = utils.transactional_replace(plan.path, backup_text, {
            pending_path = plan.path .. ".randomday.restore.pending",
            rollback_path = plan.path .. ".randomday.restore.rollback",
            validate = function(text) return text == backup_text, "adapter restore readback mismatch" end,
        })
        if not restored.ok then return false, restored.error or restored.rollback_error, restored.status end
        restore_status = restored.status
    end
    local cleaned, cleanup_err = cleanup_failed_transaction_sidecars(plan, utils)
    if not cleaned then return false, cleanup_err, "sidecar_cleanup_failed" end
    return true, nil, restore_status .. "_and_clean"
end

local function rollback_plans(plans, utils)
    local ok, errors, attempted, steps = true, {}, 0, {}
    for index = #plans, 1, -1 do
        attempted = attempted + 1
        local restored, err, step = restore_plan(plans[index], utils)
        table.insert(steps, tostring(plans[index].path) .. "=" .. tostring(step or "unknown"))
        if not restored then ok = false; table.insert(errors, tostring(plans[index].path) .. ": " .. tostring(err)) end
    end
    return ok, table.concat(errors, "; "), attempted, table.concat(steps, "; ")
end

local function apply_plans(plans, utils)
    local applied_count = 0
    for _, plan in ipairs(plans) do
        local transaction = utils.transactional_replace(plan.path, plan.text, {
            pending_path = plan.path .. ".randomday.pending",
            rollback_path = plan.path .. ".randomday.rollback",
            validate = plan.validate,
        })
        if not transaction.ok then return false, transaction, plan.path, applied_count end
        applied_count = applied_count + 1
    end
    return true, nil, nil, applied_count
end

local function adapter_result(adapter, status, fields)
    local failed = status == "failed_rolled_back" or status == "rollback_failed"
    local result = { id=adapter.id, status=status, ok=not failed, required=adapter.required == true }
    for key, value in pairs(fields or {}) do result[key] = value end
    return result
end

local function apply_adapter(config, adapter, profile_name, mod_root, log, profile)
    local utils = dofile(mod_root .. "/Scripts/ax_core/utils.lua")
    if not profile_name then return adapter_result(adapter, "skipped_incompatible", { reason="profile mapping unavailable" }) end
    local prepared = adapter.prepared_profiles and adapter.prepared_profiles[profile_name]
    if not prepared then return adapter_result(adapter, "skipped_incompatible", { reason="prepared adapter profile unavailable" }) end
    prepared = shallow_copy(prepared)
    if adapter.id == "dynamic_spawns" then
        prepared.startMessage = false
        prepared.plainStartMessage = false
        prepared.jokeMessages = false
        prepared.jokeMsgChance = 0
        prepared.stormSpawnWarnings = true
        prepared.bossSpawnWarnings = true
    elseif adapter.id == "encounter_director" then
        local scope = config.world_scope or {}
        prepared.RandomDayWorldScopeEnabled = scope.enabled == true
        prepared.RandomDayAffectOpenWorlds = scope.affect_open_worlds == true
        prepared.RandomDayProtectedWorldPatterns = table.concat(scope.protected_worlds or {}, ",")
        prepared.RandomDayUnknownWorldPolicy = tostring(scope.unknown_world_policy or "allow")
        prepared.RandomDayLogWorldScopeDecisions = scope.log_scope_decisions == true
    end

    local config_path = find_config_path(adapter, mod_root, utils)
    if not config_path then return adapter_result(adapter, "not_installed") end
    local text, read_err = utils.read_file(config_path)
    if not text then return adapter_result(adapter, "skipped_incompatible", { reason="config could not be read; compatibility was not established", error=read_err, path=config_path }) end
    local signature, missing_keys = match_signature(adapter, text, prepared)
    if not signature then return adapter_result(adapter, "skipped_incompatible", { reason="no tested layout signature matched every intended setting", missing_keys=missing_keys, path=config_path }) end

    local patched, changed = patch_lines(text, prepared, config.external_mods.patch_only_existing_keys)
    local plans = {}
    local config_patch = {
        file=utils.basename(config_path),
        kind="settings",
        status=#changed > 0 and "pending" or "already_current",
        targets=#sorted_keys(prepared),
        changed_keys=#changed,
    }
    if #changed > 0 then
        table.insert(plans, {
            path=config_path,
            text=patched,
            kind="settings",
            status_result=config_patch,
            validate=function(readback) return verify_values(readback, prepared, config.external_mods.patch_only_existing_keys) end,
        })
    end
    local message_patch = nil
    if adapter.id == "dynamic_spawns" then
        message_patch = append_dynamic_message_plans(plans, profile, mod_root, config_path, utils)
    end
    if #plans == 0 then
        finalize_message_patch(message_patch)
        local status = message_patch and message_patch.status == "failed" and "partial" or "already_current"
        return adapter_result(adapter, status, {
            path=config_path, config_patch=config_patch, message_patch=message_patch,
            reason=status == "partial" and "translated DynamicSpawns message coverage failed" or nil,
            compatibility_signature=signature.id, tested_version=signature.tested_version,
            version_evidence=signature.version_evidence, observed_layout_label=signature.observed_layout_label,
        })
    end

    local backed_up, backup_err, backup_dir = create_backups(config, adapter, plans, utils)
    if not backed_up then
        finalize_plan_results(plans, false, "backup_failed")
        finalize_message_patch(message_patch)
        return adapter_result(adapter, "failed_rolled_back", {
            reason="transaction precondition failed; original remained intact", error=backup_err,
            path=config_path, backup_dir=backup_dir, mutation_started=false,
            config_patch=config_patch, message_patch=message_patch,
        })
    end
    -- All adapter files form one logical transaction: any failure restores every planned target
    -- from its verified backup in reverse order, including files changed before the failure.
    local applied, transaction, failed_path, applied_count = apply_plans(plans, utils)
    if not applied then
        local restored, rollback_err, rollback_attempted_count, rollback_steps = rollback_plans(plans, utils)
        local status = restored and "failed_rolled_back" or "rollback_failed"
        finalize_plan_results(plans, false, status)
        finalize_message_patch(message_patch)
        return adapter_result(adapter, status, {
            reason="transaction failed", error=transaction and transaction.error,
            transaction_status=transaction and transaction.status,
            transaction_had_original=transaction and transaction.had_original,
            failed_path=failed_path,
            transaction_rollback_status=transaction and transaction.rollback_status,
            transaction_rollback_error=transaction and transaction.rollback_error,
            rollback_error=rollback_err, rollback_attempted_count=rollback_attempted_count,
            rollback_steps=rollback_steps,
            backup_dir=backup_dir, path=config_path,
            config_patch=config_patch, message_patch=message_patch,
            mutation_started=(applied_count or 0) > 0 or (transaction and (transaction.status == "promotion_failed" or transaction.status == "production_validation_failed")) or false,
            compatibility_signature=signature.id, tested_version=signature.tested_version,
            version_evidence=signature.version_evidence, observed_layout_label=signature.observed_layout_label,
        })
    end
    finalize_plan_results(plans, true)
    finalize_message_patch(message_patch)
    local status = message_patch and message_patch.status == "failed" and "partial" or "applied"
    return adapter_result(adapter, status, {
        path=config_path, changed_files=#plans, backup_dir=backup_dir,
        config_patch=config_patch, message_patch=message_patch,
        reason=status == "partial" and "translated DynamicSpawns message coverage failed" or nil,
        compatibility_signature=signature.id, tested_version=signature.tested_version,
        version_evidence=signature.version_evidence, observed_layout_label=signature.observed_layout_label,
    })
end

function M.apply_profile(config, profile, mod_root, log)
    if not (config.external_mods and config.external_mods.enabled) then
        return { ok=true, status="external_mods_disabled", adapters={} }
    end
    local map = profile.external_profiles or {}
    local result = { ok=true, status="external_mods_processed", adapters={} }
    for _, adapter_id in ipairs(config.external_mods.adapters or {}) do
        local loaded, adapter = pcall(dofile, mod_root .. "/Scripts/ax_external/adapters/" .. adapter_id .. ".lua")
        local outcome, required = nil, false
        if not loaded then
            outcome = { id=adapter_id, status="skipped_incompatible", ok=true, reason="adapter definition could not load" }
            log.warn("could not load adapter " .. tostring(adapter_id) .. ": " .. tostring(adapter))
        else
            adapter.required = adapter.required == true and not config.external_mods.optional_by_default
            required = adapter.required
            outcome = apply_adapter(config, adapter, map[adapter.id] or map[adapter_id], mod_root, log, profile)
            log.info("adapter " .. tostring(outcome.id) .. " outcome=" .. tostring(outcome.status) .. " path=" .. tostring(outcome.path or "none"))
        end
        table.insert(result.adapters, outcome)
        local healthy = outcome.status == "applied" or outcome.status == "already_current"
        local optional_degraded = outcome.status == "not_installed"
            or outcome.status == "skipped_incompatible"
            or outcome.status == "failed_rolled_back"
            or outcome.status == "partial"
        if outcome.status == "rollback_failed" or (required and not healthy) then
            result.ok = false
            result.status = "external_adapter_failed"
        elseif optional_degraded and result.status ~= "external_adapter_failed" then
            result.status = "external_mods_partial"
        end
    end
    return result
end

M._test = {
    patch_lines = patch_lines,
    patch_player_tracker_text = patch_player_tracker_text,
    patch_special_spawns_text = patch_special_spawns_text,
    match_signature = match_signature,
    verify_values = verify_values,
}

return M
