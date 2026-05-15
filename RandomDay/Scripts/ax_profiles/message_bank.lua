-- Backward-compatible wrapper. Use messages_17.lua as the source of truth.
local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
return dofile(root .. "/Scripts/ax_profiles/messages_17.lua")
