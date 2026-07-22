# RandomDay

<img width="2550" height="990" alt="RandomDay cover art" src="https://github.com/user-attachments/assets/141d7f3a-b89b-4e97-b693-e6fe02bb980c" />

RandomDay gives an Abiotic Factor world a changing ruleset. Instead of using
one sandbox setup forever, the world can move through a chosen style such as
survival, building, exploration, stealth, horde pressure, or logistics.

The mod never changes the rules underneath a running session. On a dedicated
server it prepares the next ruleset, then Abiotic Factor loads that prepared
ruleset on a later start. For a local singleplayer or LAN world, RandomDay
creates a complete settings file that you copy into the world while the game is
closed.

**Current release:** `v0.3.16-alpha`

This is an alpha release. Its named installation, rotation, recovery, and
adapter paths are tested, while compatibility and usability continue to be
improved. Keep a normal world backup before installing or updating it.

**Languages:** [Choose one of 27 reading paths](docs/locales/LANGUAGES.md)

## Choose one of two downloads

| Where you play | Download | What it does |
| --- | --- | --- |
| A dedicated server | Dedicated-server ZIP | Remembers the rotation and prepares the next ruleset automatically. It supports both always-on servers and servers opened only for play sessions. |
| Singleplayer or LAN | Singleplayer/LAN ZIP | Creates a complete settings file for a world you choose. You copy the file while the game is closed. |

There are exactly two packages. A temporary dedicated server is a setting
inside the dedicated-server package, not a third download. Do not combine the
two ZIPs.

[Install or update RandomDay](INSTALL.md)

## Understand the words RandomDay uses

- **World:** the Abiotic Factor save whose sandbox rules you want to change.
- **Profile:** one complete set of sandbox rules.
- **Family:** seventeen profiles built around one style of play.
- **Day:** one numbered profile inside a family. It is a position in the
  rotation, not a real calendar day.
- **Active profile:** the rules the current session loaded when it started.
- **Prepared profile:** the rules waiting for the next start.

The active and prepared profiles are deliberately different. Preparing a new
profile does not alter the session people are already playing.

## Choose the experience

Start with three choices:

1. Choose a family that matches the kind of game you want.
2. Choose the first profile, or let RandomDay choose a random starting point.
3. Move through the family in order, or shuffle without repeats until every
   profile has been used.

An always-on survival server might begin at profile 1 and advance in order. A
weekend server might choose a random starting profile each new run, then use the
remaining profiles without repeats. Both use the same dedicated-server ZIP.

[Compare the profile families](docs/CHOOSE_A_PROFILE.md)

## What happens on the first start

For a dedicated server, the first start records the rules already in use and
prepares the next profile. The current session keeps its existing rules. When
the server is started again later, Abiotic Factor loads the prepared profile
and RandomDay prepares the following one.

For singleplayer or LAN, start the game once to generate the file, close the
game, and follow the manual copy steps for the world you selected.

[Follow the first-cycle guide](docs/START_HERE.md)

## Keep four sandbox choices across every profile

The included profiles start with Hardcore Mode and Iron Mode off, and with the
two support limits set to `0`. To choose different values once for the whole
rotation, edit `sandbox.profile_overrides` in
`RandomDay/Scripts/ax_config/server.lua`. RandomDay validates those values and
applies them whenever it builds a profile, so family changes and later server
starts do not restore the shipped defaults.

[Set the four persistent values](docs/CONFIGURATION.md#customize-the-shipped-profile-defaults)

## Let supported mods follow the active profile

The dedicated-server package can also adjust supported optional mods that are
installed separately. RandomDay changes only recognized settings and matches
them to the profile active for the current server run.

| Optional mod | What it adds | What RandomDay can adjust when you enable its adapter |
| --- | --- | --- |
| [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156) | More configurable creature and encounter activity. | Existing spawn timing, population, storm, hot-zone, portal, breach, boss, and compatible encounter settings. The “encounter” adapter is part of this integration, not another mod to download. |
| [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141) | Configurable laser hazards. | Existing enable and damage settings for supported emitters, environmental emitters, reflectors, and prisms. |
| [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201) | Anteverse creature variants and respawn controls. | Existing supported respawn and variant-frequency settings. |

Install each optional mod from its own author and follow that mod's instructions
first. RandomDay does not replace, redistribute, or add features to those mods.
It only changes settings that their installed files already expose, and only
when the matching RandomDay adapter is enabled. Missing or unrecognized layouts
are left unchanged.

Thanks to the authors and maintainers of Chaotic Spawn Engine, Lethal Lasers,
and ANTE Up for the mods and configuration surfaces that make these optional
integrations possible.

These integrations are used only by the dedicated-server package. Disable all
of them with `external_mods.enabled = false` in
`RandomDay/Scripts/ax_config/server.lua`.

[See supported versions, settings, and recovery steps](docs/SUPPORTED_ADAPTERS.md)

## Help and project links

**Install and operate RandomDay**

- [Documentation home](docs/README.md)
- [Installation, updates, and removal](INSTALL.md)
- [Configuration](docs/CONFIGURATION.md)
- [Choose a profile](docs/CHOOSE_A_PROFILE.md)
- [Singleplayer and LAN](docs/SINGLEPLAYER_LAN.md)
- [Operations and recovery](docs/OPERATIONS.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)
- [Compatibility](docs/COMPATIBILITY.md)

**Downloads and updates**

- [RandomDay on Nexus Mods](https://www.nexusmods.com/abioticfactor/mods/212)
- [RandomDay source repository](https://github.com/Xixicor/RandomDay-Mod)
- [Changelog](CHANGELOG.md)

**Other Olmteka Studio mod**

- [RandomDayGuard on Nexus Mods](https://www.nexusmods.com/abioticfactor/mods/215)
- [RandomDayGuard source repository](https://github.com/Xixicor/RandomDay-Guard)

**Studio and media**

- [Olmteka Studio](https://studio.speclang.pro/)
- [Featured RandomDay video](https://www.youtube.com/watch?v=1HsnSpSSl80)

**Project policies and credits**

- [Contributing](CONTRIBUTING.md)
- [Code of conduct](CODE_OF_CONDUCT.md)
- [Project notices](NOTICE.md)
- [Third-party notices](THIRD_PARTY_NOTICES.md)
- [Security policy](SECURITY.md)

RandomDay is an independent community mod for Abiotic Factor and UE4SS.
