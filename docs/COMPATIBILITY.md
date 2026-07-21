# Compatibility

## Supported installations

RandomDay is built for Abiotic Factor installations that can load UE4SS Lua
mods.

| Environment | Support | Package |
| --- | --- | --- |
| Windows dedicated server | Supported | Dedicated-server ZIP |
| Windows singleplayer or LAN host | Supported manual-copy workflow | Singleplayer/LAN ZIP |
| Linux server using Wine or Proton | Not release-tested | The Windows dedicated package may be evaluated by experienced operators, but no compatibility promise is made. |
| Xbox and PlayStation | Not supported | These platforms do not provide the file access and UE4SS Lua loading path required by this release. |

RandomDay does not combine the two packages. A dedicated server that is only
started for occasional play still uses the dedicated-server ZIP and selects
temporary behavior in configuration.

## Abiotic Factor updates

After a game update, start with the server stopped and keep a restorable copy
of the world, `SandboxSettings.ini`, and RandomDay state. Confirm UE4SS loads,
then complete one RandomDay cycle and check both the active and prepared
profile before resuming normal rotation.

## Companion mods

RandomDay changes a separately installed mod only when its complete settings
layout matches a supported adapter. A version number alone is not enough.

| Integration | Current version reviewed | RandomDay support boundary |
| --- | --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | `0.8.5`; main file `0.8.5-Hotfix1` | The supported `SharedData.lua` layout covers the spawn, cooldown, population, portal, breach, boss, and RandomDay encounter settings listed in the adapter reference. |
| Lethal Lasers | `1.0-UE4SS` | The supported `Scripts/main.lua` layout covers recognized emitter, environmental-emitter, reflector, and prism settings. |
| ANTE Up | `1`, updated 19 July 2026 | The current public layout has not completed the adapter fixture. RandomDay skips an unmatched file unchanged until that layout is verified. |

An absent, disabled, or unrecognized companion mod is left unchanged. See
[Supported optional mods](SUPPORTED_ADAPTERS.md) for exact settings,
configuration controls, backup behavior, and recovery steps.

## What compatibility validation proves

Repository validation can prove the shipped package layout, configuration
coverage, recognized adapter fields, backup-and-restore behavior, and safe
rejection of an unknown layout. It cannot prove every future Abiotic Factor,
UE4SS, or companion-mod version. Release notes name tested versions rather than
assuming compatibility from a successful load.
