# Singleplayer and LAN manual workflow

RandomDay's singleplayer/LAN package generates a complete
`SandboxSettings.ini` inside the mod folder. You choose the world and copy the
file manually while the game is closed.

The package is locked to this output:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

It disables dedicated-server sandbox writes, sandbox mirrors, and all optional
adapter writes. It does not search AppData, Steam userdata, Documents, save
folders, server folders, or third-party mod folders.

## Understand the manual boundary

Before starting, configure the experience in
`RandomDay/Scripts/ax_config/server.lua`. The manual package accepts
`experience.mode="auto"` or `"singleplayer_lan"`. You can choose a fixed or
random first day and a sequential or non-repeating-random 17-day order. Family
selection uses the same selected, rotation, or non-repeating-random family
settings as a dedicated server.

The generated output contains the marker RandomDay reads on the next process.
To keep state aligned, copy the generated file into the chosen stopped world
before starting another generation process. Starting repeatedly without
copying can advance the mod-local queue even though the world never loaded the
prior output.

Follow the canonical
[singleplayer or LAN installation procedure](../INSTALL.md#singleplayer-or-lan)
for backup, package placement, enablement, generation, manual copying, and
verification. This page explains the manual boundary; it does not define another
installation method.

The first generation prepares a profile; it cannot change rules already loaded
by that game process. Close, copy, and start again to use it. Repeat the cycle
only when you deliberately want the next persisted day.

Removing RandomDay does not restore a world file that you copied manually; use
your own backup for that rollback. Follow
[Remove or roll back any installation](../INSTALL.md#remove-or-disable-randomday)
for the exact removal procedure.
