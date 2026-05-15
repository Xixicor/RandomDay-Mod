# RandomDay v0.3.15-alpha

RandomDay v0.3.15-alpha is a clean alpha release for Abiotic Factor dedicated servers.

## Highlights

- Public mod name and install folder are now RandomDay.
- Adds family-based 17-day rotation.
- Uses next-reboot profile preparation.
- Writes complete SandboxSettings.ini profiles.
- Uses compact player-facing messages.
- Keeps safety limits enforced.
- Includes optional adapters for separately installed DynamicSpawns, Lethal Lasers, and ANTE Up.
- Does not bundle supported third-party mod code.

## Release asset

`RandomDay_v0.3.15-alpha.zip`

## Optional singleplayer patch

A separate optional singleplayer patch is available:

`RandomDay_v0.3.15-alpha_singleplayer_patch.zip`

This patch should also work for LAN hosts, because LAN uses the host's local setup. The patch is intentionally manual and safety-limited: it does not auto-scan or write to AppData, Steam userdata, save folders, dedicated-server folders, or third-party mod folders. It writes the generated `SandboxSettings.ini` only inside:

`RandomDay/runtime/singleplayer_manual/SandboxSettings.ini`

Players must back up their world and manually copy the generated `SandboxSettings.ini` into the intended singleplayer/LAN world folder.
