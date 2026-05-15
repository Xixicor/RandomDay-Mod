# RandomDay-Mod

<img width="2550" height="990" alt="RandomDayCover_3" src="https://github.com/user-attachments/assets/141d7f3a-b89b-4e97-b693-e6fe02bb980c" />

**RandomDay-Mod**  
Family-Based 17-Day Rotation for Abiotic Factor Dedicated Servers

RandomDay-Mod is a UE4SS Lua mod for Abiotic Factor dedicated servers. It prepares changing sandbox profiles for hosted servers using a safer next-reboot queue model instead of forcing live sandbox changes into a running server.

## Current Release

- Version: `v0.3.15-alpha`
- Public mod name: `RandomDay`
- Install folder: `RandomDay/`
- Runtime model: UE4SS Lua
- Application model: next-reboot queue
- Rotation model: family-based 17-day rotation
- Release asset: `RandomDay_v0.3.15-alpha.zip`
- Optional singleplayer patch asset: `RandomDay_v0.3.15-alpha_singleplayer_patch.zip`

## What RandomDay Does

RandomDay prepares the next complete `SandboxSettings.ini` profile after the server has already started. The next restart loads that prepared profile cleanly.

```text
Server starts
-> Abiotic Factor loads the current SandboxSettings.ini
-> UE4SS loads RandomDay
-> RandomDay reads the active profile marker
-> RandomDay prepares the next profile
-> the next restart loads that prepared profile
```

## 17-Day Family Rotation

RandomDay uses a family-based 17-day system.

- 17 playstyle families
- 17 days per family
- one family stays active through Day 17
- one restart advances one day
- after Day 17 another family can be selected for the next run

Playstyle families:

- Action
- Survival
- Stealth
- Horde
- Boss Hunt
- Scavenger
- Builder
- Expedition
- Security Lockdown
- Biohazard
- Anteverse
- Nightmare
- Weathered
- Precision
- Logistics
- Experimental
- Compliance Test

A full profile reference for every family and every day is planned as a separate documentation pass.

## What It Changes

RandomDay writes complete sandbox profiles for:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Profile settings can adjust difficulty, survival pressure, loot pacing, time behavior, weather frequency, enemy pressure, utility settings, and recovery/challenge balance.

Every generated profile keeps these safety limits enforced:

```text
HardcoreMode=False
AllowIronMode=False
StructuralSupportLimit=0
BridgeSupports=0
```

## Optional Supported Mods

RandomDay does not include, copy, rehost, or redistribute code from supported third-party mods.

Optional support is handled through RandomDay-owned adapter scripts. These adapters patch exposed settings only when the server owner has already installed the supported mod separately.

Supported adapters in this release:

- Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
- Lethal Lasers `1.0 UE4SS`
- ANTE Up `0.26`

Adapter files are located in:

```text
RandomDay/Scripts/ax_external/adapters/
```

Adapter configuration is controlled from:

```text
RandomDay/Scripts/ax_config/server.lua
```

## Install

Place the mod folder here:

```text
AbioticFactor/Binaries/Win64/ue4ss/Mods/RandomDay/
```

Confirm:

```text
RandomDay/enabled.txt
RandomDay/Scripts/main.lua
```

Enable in `mods.txt`:

```text
RandomDay : 1
```

Restart once to prepare the first profile. Restart again to load the prepared profile.


## Optional Singleplayer / LAN Patch

RandomDay v0.3.15-alpha also has a separate singleplayer patch:

```text
RandomDay_v0.3.15-alpha_singleplayer_patch.zip
```

This patch is intentionally manual for safety. It does **not** automatically scan or write to AppData, Steam userdata, save folders, dedicated-server folders, or third-party mod folders. It writes the generated file only inside the RandomDay mod folder:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

To use it, back up the target world's original `SandboxSettings.ini`, then manually copy the generated file into the singleplayer or LAN-host world you want to use. LAN should work the same way because the LAN host owns the local world setup.

This boundary exists because an automatic AppData/save-folder writer would be a larger risk if a public release asset or repository were ever compromised.

## Links

- Nexus Mods Page: https://www.nexusmods.com/abioticfactor/mods/212?published=1
- GitHub Repository: https://github.com/Xixicor/RandomDay-Mod
- Olmteka Studio: https://studio.speclang.pro/
- Featured Video: https://youtu.be/1HsnSpSSl80

## Disclaimer

RandomDay is an independent community mod. It is not affiliated with or endorsed by Deep Field Games, Playstack, UE4SS, Nexus Mods, or any third-party mod author unless explicitly stated.

Abiotic Factor, Deep Field Games, Playstack, UE4SS, Nexus Mods, third-party mods, logos, trademarks, and related assets belong to their respective owners.
