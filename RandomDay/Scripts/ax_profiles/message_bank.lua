-- RandomDay public source
-- Module: RandomDay/Scripts/ax_profiles/message_bank.lua
-- Ownership/Purpose: RandomDay public module; Forward legacy message-bank loads to messages_17.lua
-- Public contract: caller=packaged compatibility consumers; inputs=module root; outputs=canonical message module result
-- Side effects: loads one module
-- Failure/Recovery: failures=canonical message load failure; recovery states=loaded
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-profiles-message-bank

-- Backward-compatible wrapper. Use messages_17.lua as the source of truth.
local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
return dofile(root .. "/Scripts/ax_profiles/messages_17.lua")
