# Changelog

## v0.3.15-alpha

- Renamed the public mod package to RandomDay.
- Updated the install folder to `RandomDay/`.
- Removed bundled third-party mod folders from the clean release package.
- Removed the duplicate lowercase loader path.
- Kept the runtime loader at `RandomDay/Scripts/main.lua`.
- Removed unsupported adapter content from the current clean release.
- Added family-based 17-day rotation structure.
- Added 17 playstyle families, each with its own 17-day run.
- Added next-reboot profile preparation using complete `SandboxSettings.ini` writes.
- Added compact in-game messages to avoid screen overflow.
- Added RandomDay marker naming for generated profiles.
- Kept permanent safety rules enforced in generated sandbox profiles.
- Kept optional adapter support for separately installed supported mods:
  - DynamicSpawns / Chaotic Spawn Engine `0.8.5 Hotfix 1`
  - Lethal Lasers `1.0 UE4SS`
  - ANTE Up `0.26`
- Missing supported mods are skipped safely by default.
- RandomDay does not include, copy, rehost, or redistribute code from supported third-party mods.
