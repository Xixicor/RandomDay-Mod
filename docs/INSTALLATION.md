# Installation

Use the release ZIP:

```text
RandomDay_v0.3.15-alpha.zip
```

Extract it so the server has:

```text
AbioticFactor/Binaries/Win64/ue4ss/Mods/RandomDay/enabled.txt
AbioticFactor/Binaries/Win64/ue4ss/Mods/RandomDay/Scripts/main.lua
```

Enable it in:

```text
AbioticFactor/Binaries/Win64/ue4ss/Mods/mods.txt
```

```text
RandomDay : 1
```

Restart once to prepare the first profile. Restart again to load the prepared profile.

Back up saves, server config, SandboxSettings.ini, UE4SS files, and mod configuration before installing or updating.

## Optional Singleplayer / LAN Patch

Use this only after installing the base v0.3.15-alpha mod:

```text
RandomDay_v0.3.15-alpha_singleplayer_patch.zip
```

Install it over the existing `RandomDay/` mod folder. The patch does not auto-write to real save folders. It generates the next sandbox profile here only:

```text
AbioticFactor/Binaries/Win64/ue4ss/Mods/RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Singleplayer/LAN use:

```text
1. Install RandomDay v0.3.15-alpha.
2. Install the singleplayer patch over it.
3. Launch the game once with UE4SS/RandomDay enabled.
4. Close the game fully.
5. Back up the target world's original SandboxSettings.ini.
6. Copy RandomDay/runtime/singleplayer_manual/SandboxSettings.ini into the chosen world folder.
7. Launch the world again.
```

Security boundary: the patch does not scan or write to AppData, Steam userdata, Documents, real singleplayer saves, dedicated-server sandbox paths, or third-party mod folders.
