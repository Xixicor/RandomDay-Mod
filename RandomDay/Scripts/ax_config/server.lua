-- RandomDay public source
-- Module: RandomDay/Scripts/ax_config/server.lua
-- Ownership/Purpose: RandomDay public module; Complete public configuration and generated identity reader
-- Public contract: caller=ax_core/init.lua; inputs=package markers and operator settings; outputs=configuration table
-- Side effects: controls bounded runtime behavior
-- Failure/Recovery: failures=invalid Lua; invalid safety lock or path component; recovery states=configured
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-config-server

local root = _G.RANDOMDAY_MOD_ROOT or _G["RandomDay_" .. "RANDOMDAY_MOD_ROOT"] or "RandomDay"
local identity = dofile(root .. "/Scripts/ax_core/version.lua")

return {
    version = identity.read(root),
    package_mode = identity.package_mode(root),
    plan_basis = "RandomDay - Seventeen Suns Rotation + Open World Scope",

    logging = {
        level = "info"
    },

    experience = {
        -- auto resolves to persistent_dedicated in the dedicated package and
        -- singleplayer_lan in the manual-copy package.
        -- temporary_dedicated keeps the same safe next-start boundary while
        -- presenting each server launch as one intentionally selected session.
        mode = "auto", -- auto | persistent_dedicated | temporary_dedicated | singleplayer_lan
    },

    cycle = {
        application_mode = "next_reboot_queue",
        cycle_length_days = 17,
        start_day_mode = "configured", -- configured | random
        start_day = 1,
        day_progression_mode = "sequential", -- sequential | non_repeating_random
        bootstrap_day = 1, -- compatibility fallback when start_day is absent
        check_interval_ms = 0
    },

    profile_family = {
        -- selected_run = always use selected_family.
        -- non_repeating_random_run = choose one unused family, keep it through the persisted 17-day order, then choose another unused family.
        -- rotation_run = deterministic listed family order, still locked through all 17 day positions.
        mode = "non_repeating_random_run", -- selected_run | non_repeating_random_run | rotation_run
        selected_family = "action",
        default_family = "action",
        allowed_families = {
            "action", "survival", "stealth", "horde", "boss_hunt", "scavenger", "builder", "expedition",
            "security_lockdown", "biohazard", "anteverse", "nightmare", "weathered", "precision",
            "logistics", "experimental", "compliance_test",
        },
        preserve_family_until_day_17 = true,
        reroll_only_after_day_17 = true,
        prevent_repeats_until_rotation_complete = true
    },

    world_scope = {
        -- Optional RandomDay extension fields in recognized Chaotic Spawn Engine layouts.
        -- Open worlds are affected by default. Exact world exclusions can be configured explicitly.
        enabled = true,
        affect_open_worlds = true,
        unknown_world_policy = "allow", -- allow | block
        log_scope_decisions = true,
        protected_worlds = {},
    },

    paths = {
        runtime_dir = "ue4ss/Mods/RandomDay/runtime",
        web_export_dir = "ue4ss/Mods/RandomDay/web_export",
        sandbox_path_override = nil,

        -- Generic dedicated-server candidates. Set sandbox_path_override when the server
        -- uses a different -SandboxIniPath target.
        sandbox_candidates = {
            "AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
            "./AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../../AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../../../Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../../../../Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../../../../../Saved/Config/WindowsServer/SandboxSettings.ini",
        },

        -- Compatibility mirrors are enabled by the inherited public default. Set this false
        -- to write only the resolved primary; set world_name or exact candidates to add a
        -- world-save target. Every enabled target uses the same transactional recovery path.
        write_sandbox_mirrors = true,
        sandbox_mirror_required = false,
        world_name = nil, -- set to your save-world folder name to enable world-save sandbox mirror candidates
        sandbox_mirror_candidates = {
        }
    },

    sandbox = {
        -- Recovery controls are safety locks. Runtime refuses startup if either is false.
        backup_before_write = true,
        restore_last_good_on_failure = true,
        force_rewrite_every_supervision_tick = false,

        -- These four values apply to every generated day. Change them here once;
        -- profile rotation and later server starts continue to use the chosen values.
        profile_overrides = {
            HardcoreMode = false,
            AllowIronMode = false,
            StructuralSupportLimit = 0,
            BridgeSupports = 0,
        }
    },

    external_mods = {
        enabled = true,
        optional_by_default = true,
        patch_only_existing_keys = true, -- safety lock; unknown layouts are skipped instead of extended
        backup_before_write = true, -- safety lock; runtime refuses adapter mutation when false
        adapters = {
            "lethal_lasers",
            "dynamic_spawns",
            "encounter_director",
            "ante_up"
        }
    },

    player_message = {
        enabled = true,
        log_on_startup = true,
        register_console_command = false,
        console_command = "randomday",

        -- Player-facing warnings use the same Abiotic PlayerCharacter Client_DisplayWarningMessage path
        -- that DynamicSpawns uses. If no players are present, the loop simply waits.
        broadcast_enabled = true,
        startup_delay_ms = 30000,
        join_check_interval_ms = 15000,
        send_daily_joke_after_join = true,
        daily_joke_delay_seconds = 10,
        criticality_join = 2,
        criticality_joke = 0,
        max_line_chars = 42,
        max_join_lines = 4,
        max_warning_lines = 3,
        max_note_lines = 3
    }
}
