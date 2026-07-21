# Supported Optional Mods

RandomDay can make a separately installed mod follow the active RandomDay
profile. This feature is available only in the dedicated-server package. The
singleplayer/LAN package never edits another mod.

RandomDay does not include or redistribute any of the mods listed here. Install
and enable each optional mod from its own Nexus page and follow its author's
instructions first. RandomDay changes only recognized settings that already
exist in the installed file. It does not add features to another mod, and an
adapter can be disabled without uninstalling that mod. The dedicated-server
package starts with `external_mods.enabled = true`.

## What RandomDay changes

| Optional integration | Settings selected from the active profile |
| --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | Hard mode, player/area cooldown behavior, storm and hot-zone activity, boss and burst spawns, spawn-cycle timing, small and large cooldown ranges, spawn distance, global/local/mod caps, portal-storm, Order-breach and boss chances, and minimum spawns per area. |
| Optional Chaotic Spawn Engine extension fields | When the installed `SharedData.lua` already contains RandomDay extension fields, the adapter can supply encounter profile, tier, theme, group limits, special-event and mixed-encounter values, budget, cooldown, and world-scope controls. This is not another mod to download. |
| Lethal Lasers | Mod activation plus damage and enable controls for deployable emitters, environmental emitters, reflectors, and prisms. |
| ANTE Up | Respawn-frequency multiplier, Antevariant frequency, and the existing development/debug switches. RandomDay keeps all recognized development and debug switches off. |

The profile library supplies a prepared value set for every supported day. A
quiet day can reduce pressure, a hazard day can raise it, and a recovery day
can reduce it sharply. RandomDay does not calculate arbitrary values at boot;
it applies the reviewed value set named by the active profile.

## Current version evidence

This table was reviewed on 20 July 2026. “Recognized” means the released
adapter has a complete local layout fixture for the named settings. It does not
mean every future release will have the same file shape.

| Optional mod | Current upstream version reviewed | RandomDay release status |
| --- | --- | --- |
| [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156) | Nexus page `0.8.5`; current main file `0.8.5-Hotfix1` | Recognized `DynamicSpawns/Scripts/SharedData.lua` layout for the complete spawn, cooldown, cap, portal, breach, and boss setting set. |
| Optional Chaotic Spawn Engine extension fields | No separate download; optional fields inside the same `SharedData.lua` | Applied only when every extension field already exists. Ordinary Chaotic Spawn Engine installations are left unchanged when those fields are absent. The internal adapter ID is `encounter_director`; it does not name a separate public mod. |
| [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Recognized `LethalLasers/Scripts/main.lua` layout for all emitter, environment-emitter, reflector, and prism settings listed above. |
| [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, updated 19 July 2026 | The released adapter recognizes the earlier `Settings.lua` field set. Version 1 is not claimed as compatible until its current file is added to the fixture and passes the adapter transaction tests. If its layout differs, RandomDay reports `skipped_incompatible` and leaves it unchanged. |

## How recognition protects another mod

Finding a familiar filename is not enough. Before writing, RandomDay checks
that every required setting for that adapter exists in the target file. It
patches existing assignments only; it never invents a missing setting.

For a recognized layout, RandomDay performs one bounded transaction:

1. calculate every intended value for the active profile;
2. create and byte-check a backup of every target file;
3. write through a sibling pending file;
4. promote the pending file and read the saved bytes back;
5. confirm every intended value;
6. use automatic restoration from the verified backups if any step fails.

DynamicSpawns can include its settings and recognized player-message files in
one transaction. RandomDay does not report that multi-file update as successful
unless the complete transaction finishes.

## Read an adapter result

| Result | Meaning |
| --- | --- |
| `applied` | The recognized settings changed and passed readback. |
| `already_current` | The recognized settings already matched the active profile. |
| `not_installed` | The optional mod was not found. RandomDay continued without it. |
| `skipped_incompatible` | A file was found, but its complete setting layout was not recognized. Nothing was changed. |
| `partial` | The primary DynamicSpawns settings were applied, but an optional translated message file did not complete. Review the recorded adapter result. |
| `failed_rolled_back` | A transaction failed and the previous bytes remained intact or were restored and verified. |
| `rollback_failed` | RandomDay could not verify the change or the restore. Keep the affected mod stopped and restore its recorded backup manually. |

Missing and incompatible optional mods do not stop RandomDay's sandbox
rotation under the shipped configuration.

## Enable or disable integrations

The controls are in:

```text
RandomDay/Scripts/ax_config/server.lua
```

The dedicated-server package ships with:

```lua
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
}
```

- Set `enabled = false` to stop RandomDay from inspecting or changing every
  optional mod.
- Remove one adapter ID to leave that mod alone while keeping the other
  integrations active.
- Keep `patch_only_existing_keys` and `backup_before_write` set to `true`.
  They are the write-safety boundary.
- Keep `optional_by_default = true` unless every listed optional mod is a
  required part of the server. Setting it to `false` makes a missing,
  incompatible, or safely rolled-back adapter affect the aggregate result.

You do not have to uninstall or disable an optional mod when you disable its
RandomDay adapter.

## Thanks and ownership

Thanks to the authors and maintainers of
[Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156),
[Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141), and
[ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201). Their mods remain
separate downloads governed by their own pages, permissions, and support
instructions. RandomDay's adapters only use configuration fields present in an
installed, recognized layout; they do not redistribute or replace those mods.

## Backups and manual recovery

Verified pre-write copies are retained under:

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

If `rollback_failed` appears:

1. stop the game or server;
2. set `external_mods.enabled = false`, or remove the affected adapter ID;
3. preserve the current target file and its sibling pending/rollback files;
4. match the numbered backup files to the target paths recorded in the adapter
   result;
5. restore the verified bytes while the service is stopped;
6. start the optional mod by itself before re-enabling its RandomDay adapter.

Do not force compatibility by renaming settings or adding missing keys. Use a
recognized layout, leave the adapter disabled, or add a new version fixture and
transaction test before expanding the support claim.
