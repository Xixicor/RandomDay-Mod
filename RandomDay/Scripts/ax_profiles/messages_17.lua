-- RandomDay public source
-- Module: RandomDay/Scripts/ax_profiles/messages_17.lua
-- Ownership/Purpose: RandomDay public module; Build profile-specific bounded note and joke packs
-- Public contract: caller=ax_player/message.lua and message_bank.lua; inputs=profile values; outputs=message pack
-- Side effects: none
-- Failure/Recovery: failures=missing profile uses bounded fallback; recovery states=message_available; fallback
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-profiles-messages-17

local M = {}

local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
local translation = dofile(root .. "/Scripts/ax_profiles/translation.lua")
local ok_config, config = pcall(dofile, root .. "/Scripts/ax_config/server.lua")
local display = ok_config and config and config.player_message or {}

function M.get(profile)
    local translated = translation.translate(profile)
    return {
        join = translation.format_join(translated, nil, display),
        jokes = { translation.format_note(translated, display) },
        warnings = {
            hostile = translation.format_warning(translated, "hostile", display),
            portal = translation.format_warning(translated, "portal", display),
            order = translation.format_warning(translated, "order", display),
            gatekeeper = translation.format_warning(translated, "gatekeeper", display),
        },
        criticality = "yellow",
        experience = translated.summary,
        run_advice = translated.advice,
        translation = translated,
    }
end

return M
