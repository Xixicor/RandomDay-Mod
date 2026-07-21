# Install, update, or remove RandomDay

RandomDay has two complete downloads. Choose one for the world you are setting
up:

- use the **dedicated-server ZIP** for any dedicated server, including a server
  that is opened only for occasional sessions;
- use the **singleplayer/LAN ZIP** for a local world whose settings you will
  copy manually.

Do not combine the packages. A persistent or temporary dedicated server is a
choice in RandomDay's settings, not a different download.

## Before you begin

Make a restorable copy of:

- the world you are changing;
- its current `SandboxSettings.ini`;
- the existing `RandomDay` folder, if one is installed.

Install UE4SS before RandomDay. In the instructions below, the **Mods folder**
means the `ue4ss/Mods/` directory inside the game or dedicated-server
installation.

## Dedicated server

### New installation

1. Stop the server.
2. Open its UE4SS `Mods` folder.
3. Extract the dedicated-server ZIP. The result should be one
   `ue4ss/Mods/RandomDay/` folder, not a folder inside another `RandomDay`
   folder.
4. Open that folder and confirm `RandomDay/Scripts/main.lua` is present. If it
   is missing, the ZIP was extracted into the wrong level.
5. Open UE4SS `mods.txt` and enable this line:

   ```text
   RandomDay : 1
   ```

6. Start the server normally.
7. Open RandomDay's readable status page and confirm it names both the active
   profile and the profile prepared for the next start.

The first start does not replace the rules already loaded by that session. It
prepares the next profile. Start the server again only when you actually want
that prepared profile to become active.

[Check the first cycle](docs/START_HERE.md)

### Choose always-on or temporary behavior

The dedicated-server package supports both styles:

- **persistent dedicated** resumes the saved rotation across normal restarts;
- **temporary dedicated** can begin from the configured or random starting
  point when a new temporary run begins.

Choose the behavior in [Configuration](docs/CONFIGURATION.md). Do not install a
second package to change this setting.

### Update an existing installation

1. Stop the server and make the backups listed above.
2. Move the old `RandomDay` folder out of the UE4SS `Mods` folder. Keep it until
   the update has completed one successful cycle.
3. Extract the new dedicated-server ZIP into the `Mods` folder.
4. Reapply only the settings you intentionally changed and that still exist in
   the new [configuration guide](docs/CONFIGURATION.md).
5. Keep the documented rotation-state files only when the release notes say
   their format is compatible. Do not copy old temporary output or failed-write
   files into the new installation.
6. Confirm `RandomDay : 1` is still enabled, then start the server once and
   check the active and prepared profile names.

### Updating from v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip` was the old base package.
`RandomDay_v0.3.15-alpha_singleplayer_patch.zip` was an overlay and
was not a standalone download.

Current `v0.3.16-alpha` replaces the historical
base-and-overlay arrangement with two complete packages. Do not place the old
patch on either package. The current markers are
`.randomday_mode=dedicated_server` and
`.randomday_mode=singleplayer_manual`.

## Singleplayer or LAN

The singleplayer/LAN package creates a settings file; it does not search for or
change a personal save by itself.

1. Close the game.
2. Back up the world and its current `SandboxSettings.ini`.
3. Extract the singleplayer/LAN ZIP into the game's UE4SS `Mods` folder so one
   `Mods/RandomDay/` folder exists.
4. Enable `RandomDay : 1` in UE4SS `mods.txt`.
5. Start the game once, wait for RandomDay to finish, and close the game fully.
6. Find the generated `SandboxSettings.ini` in RandomDay's
   `runtime/singleplayer_manual/` folder.
7. Read the generated summary, then copy the file into the one world you chose.
8. Start that world and check that the expected sandbox behavior is active.

LAN uses the same manual process because the host owns the local world. The mod
does not choose a world or overwrite one automatically.

[Singleplayer and LAN guide](docs/SINGLEPLAYER_LAN.md)

## Remove or disable RandomDay

1. Stop the game or server.
2. Back up the world, its current sandbox settings, and RandomDay's state.
3. Set `RandomDay : 0` in UE4SS `mods.txt` to disable the mod, or move the
   complete `RandomDay` folder out of the `Mods` folder to remove it.
4. Decide which `SandboxSettings.ini` should be loaded on the next start.
   Restore your pre-install copy if you do not want the currently prepared
   RandomDay profile.
5. Start the world and confirm its rules before deleting any backup.

Disabling RandomDay stops future profile preparation. It does not rewrite the
sandbox file already waiting on disk.

## Recover from an unsuccessful update

Stop after the first clear failure. Repeated restarts can make it harder to see
which profile was active and which one was waiting.

1. Stop the game or server.
2. Move the unsuccessful installation aside without deleting it.
3. Restore the complete RandomDay folder and sandbox backup made before the
   update.
4. Start once and confirm the restored active and prepared profile names.
5. Use [Troubleshooting](docs/TROUBLESHOOTING.md) for the first missing or failed
   step before trying another update.

## More help

- [First cycle](docs/START_HERE.md)
- [Choose a profile](docs/CHOOSE_A_PROFILE.md)
- [Configuration](docs/CONFIGURATION.md)
- [Operations and recovery](docs/OPERATIONS.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)
- [Compatibility](docs/COMPATIBILITY.md)

Release maintainers can find build and package checks in
[Release validation](docs/RELEASE_VALIDATION.md). They are not required for a
normal installation.
