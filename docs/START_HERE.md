# Start here: complete the first RandomDay cycle

This guide starts after RandomDay is installed. It shows what the mod changes,
what it leaves alone, and how to recognize one successful cycle.

## Know the two states

Abiotic Factor reads the world's sandbox settings before RandomDay starts.
RandomDay therefore keeps two clearly named states:

- **Active profile:** the rules the current session is already using.
- **Prepared profile:** the rules saved for the next start.

The prepared profile does not change a session already in progress.

## Dedicated server: prepare the next profile

1. Start the server normally.
2. Wait for RandomDay to finish its startup work.
3. Open `RandomDay/web_export/today.html` in the installed mod folder.
4. Find **Active profile** and **Prepared profile**.

On the first successful start, the page should name the rules already active
and a different profile waiting for the next start. The page also explains the
chosen family, position, and whether the prepared file passed its safety check.

Do not restart merely to make the status change. Keep playing with the active
rules until the next planned server start.

## Dedicated server: activate it later

1. Stop and start the server at the next planned restart.
2. Open the readable status page again.
3. Confirm that the previously prepared profile is now listed as active.
4. Confirm that RandomDay prepared the following profile.

That prepare-then-activate transition is one complete RandomDay cycle.

## Temporary dedicated servers

Temporary behavior uses the same dedicated-server package. In
[Configuration](CONFIGURATION.md), choose whether a new run begins on a specific
profile or chooses a random starting point. The status page still separates the
active profile from the one prepared for the next start.

## Singleplayer or LAN

1. Start the game once with the singleplayer/LAN package installed.
2. Close the game fully after RandomDay finishes.
3. Read the generated summary.
4. Copy the generated `SandboxSettings.ini` into the world you selected while
   the game is closed.
5. Start that world and confirm the expected rules.

The local package never chooses a world or copies the file into a save by
itself. See [Singleplayer and LAN](SINGLEPLAYER_LAN.md) for the full procedure.

## If the expected result is missing

Do not keep restarting. Preserve the current files and choose the matching
symptom in [Troubleshooting](TROUBLESHOOTING.md). The normal result always names
an active profile and either a prepared profile or one clear preparation
failure.

## Continue

- [Choose a play style](CHOOSE_A_PROFILE.md)
- [Choose starting and progression behavior](CONFIGURATION.md)
- [Operate and recover RandomDay](OPERATIONS.md)
- [Understand the rotation](FAMILY_ROTATION.md)
