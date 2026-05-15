# Supported Mod Adapters

RandomDay does not include, copy, rehost, or redistribute code from supported third-party mods.

Adapters are RandomDay-owned files that can patch exposed settings in separately installed supported mods.

Adapter files:

```text
RandomDay/Scripts/ax_external/adapters/
```

Adapter configuration:

```text
RandomDay/Scripts/ax_config/server.lua
```

Supported adapter targets in this release:

- DynamicSpawns / Chaotic Spawn Engine 0.8.5 Hotfix 1
  - Adapter: `RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua`
  - Target: `DynamicSpawns/Scripts/SharedData.lua`

- RandomDay Encounter Director for DynamicSpawns
  - Adapter: `RandomDay/Scripts/ax_external/adapters/encounter_director.lua`
  - Target: `DynamicSpawns/Scripts/SharedData.lua`

- Lethal Lasers 1.0 UE4SS
  - Adapter: `RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua`
  - Target: `LethalLasers/Scripts/main.lua`

- ANTE Up 0.26
  - Adapter: `RandomDay/Scripts/ax_external/adapters/ante_up.lua`
  - Target: `AnteUp/scripts/Settings.lua`

Missing supported mods are skipped safely by default.
