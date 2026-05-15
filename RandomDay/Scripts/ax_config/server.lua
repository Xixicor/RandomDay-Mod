return {
    version = "0.3.15-alpha-compact-text-hotfix1",
    plan_basis = "RandomDay - Seventeen Suns Rotation + Open World Scope",

    logging = {
        level = "info"
    },

    cycle = {
        application_mode = "next_reboot_queue",
        cycle_length_days = 17,
        bootstrap_day = 1,
        check_interval_ms = 0
    },

    profile_family = {
        -- selected_run = always use selected_family.
        -- non_repeating_random_run = choose one unused family at Day 1, keep it through Day 17, then choose another unused family.
        -- rotation_run = deterministic listed order, still locked through Day 17.
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
        -- Runtime encounter scope for DynamicSpawns/RandomDay Encounter Director.
        -- Open worlds are affected by default, but  are deny-listed first.
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

        -- Primary file candidates. On Hostinger/AMP, the first successful target should be
        -- Saved/Config/WindowsServer/SandboxSettings.ini, because AMP launches Abiotic Factor
        -- with -SandboxIniPath=Config/WindowsServer/SandboxSettings.ini.
        sandbox_candidates = {
            "AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
            "./AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../../AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../../../Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../../../../Saved/Config/WindowsServer/SandboxSettings.ini",
            "../../../../../../Saved/Config/WindowsServer/SandboxSettings.ini",
        },

        -- Mirror writes make the same generated profile available for servers that read the
        -- world-save SandboxSettings.ini instead of AMP's SandboxIniPath override.
        write_sandbox_mirrors = true,
        sandbox_mirror_required = false,
        world_name = nil, -- set to your save-world folder name to enable world-save sandbox mirror candidates
        sandbox_mirror_candidates = {
        }
    },

    sandbox = {
        backup_before_write = true,
        restore_last_good_on_failure = true,
        force_rewrite_every_supervision_tick = false
    },

    external_mods = {
        enabled = true,
        optional_by_default = true,
        patch_only_existing_keys = true,
        backup_before_write = true,
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
        criticality_joke = 0
    }
}
