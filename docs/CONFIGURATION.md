# Configuration

The main operator configuration is:

```text
RandomDay/Scripts/ax_config/server.lua
```

Back up the file and change one section at a time. Lua booleans are lowercase
`true` and `false`; strings need quotes; list entries need commas. After the
next start, read the status page before making another change. Contributors
working from source can use the separate [release validation](RELEASE_VALIDATION.md)
checks before packaging a modified build.

Do not hand-edit `.randomday_mode`, `.randomday_version`, generated profile
references, `runtime/`, or `web_export/`. The package builder owns the package
mode and version markers and checks that they agree with the release metadata.

Every setting below is defined in `RandomDay/Scripts/ax_config/server.lua`.
Tables distinguish editable settings from release-owned identity and reserved
compatibility fields. A field being present in Lua does not mean changing it is
a supported behavior.

## Choose an experience

RandomDay has two packages: one for every dedicated server and one for
singleplayer/LAN manual copy. The dedicated package has two operating modes;
those modes are settings, not separate downloads.

| Your world | Install | Choose this behavior |
| --- | --- | --- |
| A dedicated server that keeps one campaign moving across routine restarts | Dedicated-server package | `persistent_dedicated` resumes the saved family and profile order. |
| A dedicated server opened only for individual play sessions | The same dedicated-server package | `temporary_dedicated` keeps the safely prepared next profile between sessions, while a new family run may use a configured or random start. |
| A singleplayer or LAN world | Singleplayer/LAN package | `auto` selects manual-copy behavior; stop the world before copying the generated file. |

If you are unsure, use `auto`. The package selects the normal behavior for its
installation type. Choose the broad play style in
[Family rotation](FAMILY_ROTATION.md). Use the
[generated family index](profiles/README.md) when you want exact gameplay and
sandbox values. Then choose the first day and progression:

- `start_day_mode="configured"` begins at `start_day`.
- `start_day_mode="random"` chooses one valid first day at the start of a new
  family run and persists that choice.
- `day_progression_mode="sequential"` wraps through all 17 positions.
- `day_progression_mode="non_repeating_random"` stores one shuffled order that
  contains every day exactly once.

Use the complete presets in [Rotation](#rotation). A fresh installation still
needs one start to prepare the chosen first profile and a later start to
activate it.

## Release identity and logging

| Setting | Type and shipped value | Supported use | Failure or interaction |
|---|---|---|---|
| `version` | String read from `.randomday_version` | Read only. | Missing or blank marker becomes `unversioned`; final package validation rejects identity drift. |
| `package_mode` | String read from `.randomday_mode` | Read only: `dedicated_server` or `singleplayer_manual`. | Any other value stops startup before target writes. |
| `plan_basis` | String: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Diagnostic label only; do not use it as a feature toggle. | Current runtime does not branch on this field. |
| `logging.level` | String: `info` | `debug`, `info`, `warn`, or `error`. | Unknown values do not add logging destinations; keep `info` unless diagnosing profile-generation behavior. |

Example:

```lua
logging = { level = "debug" }
```

Use `debug` temporarily, preserve the relevant `UE4SS.log`, then return to
`info`. Logs can contain local paths from low-level failures; review them before
sharing.

## Experience mode

`experience.mode` names the way this installation is operated. It does not
weaken the next-start safety boundary: Abiotic Factor reads sandbox settings
before UE4SS loads RandomDay, so no mode can replace the rules of the process
that is already running.

| Setting | Shipped value | Supported values | Effect |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` resolves from the package. Dedicated packages may use either dedicated mode. The manual-copy package accepts only `auto` or `singleplayer_lan`. |

- `persistent_dedicated` keeps one stored family/day order across normal
  long-term server restarts.
- `temporary_dedicated` describes a server that is started for bounded play
  sessions. It still persists the prepared order so stopping the host does not
  silently reroll the next session.
- `singleplayer_lan` generates only the bounded manual-copy output. It never
  discovers or edits a personal save folder.

An incompatible package/experience combination stops before a sandbox write.

## Rotation

| Setting | Shipped value | Supported values | Effect |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Keeps all sandbox changes at the restart boundary. |
| `cycle.cycle_length_days` | `17` | `17` for the standard profile set | Matches every family pack and generated reference. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Uses `cycle.start_day` or chooses one valid start day once at the beginning of a family run. |
| `cycle.start_day` | `1` | Whole number `1` through `17` | First day when `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Builds a wrapped sequential order or one shuffled order containing every day exactly once. |
| `cycle.bootstrap_day` | `1` | Whole number `1` through `17` | Compatibility fallback used only when `cycle.start_day` is absent. New configuration should use `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` or a bounded positive interval | `0` prepares once at startup; a positive value enables periodic supervision when UE4SS provides `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Chooses how a new 17-day family run starts. |
| `profile_family.selected_family` | `action` | One ID in `allowed_families` | Family used by `selected_run` and as a fallback. |
| `profile_family.default_family` | `action` | One registered family ID | Fallback when the selected ID is missing or invalid. |
| `profile_family.allowed_families` | All 17 public family IDs | Any non-empty subset of registered IDs | Limits the families eligible for new runs. |
| `profile_family.preserve_family_until_day_17` | Boolean: `true` | Reserved compatibility field; keep `true`. | Current calendar always keeps the family through every position in the persisted 17-day order and does not read this field as a toggle. |
| `profile_family.reroll_only_after_day_17` | Boolean: `true` | Reserved compatibility field; keep `true`. | Current calendar changes family only after every day ID has completed, regardless of which day is last in the stored order. |
| `profile_family.prevent_repeats_until_rotation_complete` | Boolean: `true` | Reserved compatibility field; keep `true`. | Current non-repeating pool logic is fixed and does not read this value as a toggle. |

The day order is created once for a new family run and written to
`runtime/rotation_state.txt`. Recovery and later restarts reuse those exact
positions. A configuration edit does not reroll an in-progress order. The
family changes only after all 17 positions are complete.

### Recommended presets

Persistent dedicated server:

```lua
experience = { mode = "persistent_dedicated" }
cycle = {
    application_mode = "next_reboot_queue",
    cycle_length_days = 17,
    start_day_mode = "configured",
    start_day = 1,
    day_progression_mode = "sequential",
    bootstrap_day = 1,
    check_interval_ms = 0,
}
```

Temporary dedicated sessions with a different non-repeating order per new
family run:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN manual copy uses the singleplayer package and normally leaves
`experience.mode="auto"`. You may choose the same start and progression
controls before generating the next file. Copy the generated file into the
chosen stopped world before another generation run if you want runtime state
and the world's loaded profile to remain aligned.

On a fresh installation, the first process can only prepare the selected start
day. A later process activates it. Random or configured start does not bypass
that engine loading order.

Example for a fixed Builder run:

```lua
profile_family = {
    mode = "selected_run",
    selected_family = "builder",
    default_family = "action",
    allowed_families = { "builder" },
    preserve_family_until_day_17 = true,
    reroll_only_after_day_17 = true,
    prevent_repeats_until_rotation_complete = true,
}
```

An empty or unknown eligible set falls back to a registered family instead of
creating an incomplete profile.

## Primary sandbox path

| Setting | Type and shipped value | Supported use | Failure or interaction |
|---|---|---|---|
| `paths.runtime_dir` | String: `ue4ss/Mods/RandomDay/runtime` | Read only in source configuration. | `init.lua` replaces it with the resolved mod-root `runtime/` path. |
| `paths.web_export_dir` | String: `ue4ss/Mods/RandomDay/web_export` | Read only in source configuration. | `init.lua` replaces it with the resolved mod-root `web_export/` path. |
| `paths.sandbox_path_override` | String or `nil`: `nil` | One literal `SandboxSettings.ini` path for a non-standard dedicated layout. | Unsafe or unavailable targets fail the write; singleplayer mode clears the override. |
| `paths.sandbox_candidates` | List of strings: seven generic candidates | Ordered dedicated-server fallback candidates. | `init.lua` prepends installation-derived candidates; the first existing path wins. |
| `paths.write_sandbox_mirrors` | Boolean: `true` | Allows deliberately configured mirrors. | No mirror is written while the mirror list is empty and `world_name=nil`; singleplayer mode forces `false`. |
| `paths.sandbox_mirror_required` | Boolean: `false` | Reserved compatibility field; keep `false`. | Current writer treats mirrors as optional and does not read this field as a required gate. |
| `paths.world_name` | String or `nil`: `nil` | One safe world-folder component used to derive generic mirror candidates. | Anything outside letters, numbers, spaces, `_`, or `-` stops startup; singleplayer mode ignores it. |
| `paths.sandbox_mirror_candidates` | List of strings: empty | Exact optional mirror files. | Each eligible mirror uses its own transaction; a mirror failure does not change primary success. |

`paths.sandbox_path_override` defaults to `nil`. With no override, RandomDay
first checks generic WindowsServer candidates anchored to the detected
RandomDay installation, then checks any configured candidates. If none exists,
it uses the first installation-anchored generic candidate, which resolves to
the server installation's:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

This fallback is not resolved from the process's current working directory.
Set `sandbox_path_override` only when your installation uses a different
literal file. Point it to one `SandboxSettings.ini`, not a directory. Stop the
server and confirm the file is inside the intended installation before use.

### Optional Mirrors

`paths.write_sandbox_mirrors` ships as `true`, but the mirror path list is empty
and `paths.world_name` is `nil`. Therefore the shipped defaults write no extra
mirror. Set it to `false` when the installation must always write only the
resolved primary target. With no configured mirror candidate or world name,
either value still writes only the primary sandbox file.

A mirror becomes eligible only when you deliberately add an exact entry to
`paths.sandbox_mirror_candidates` or set `paths.world_name`. Mirrors are
best-effort copies for installations that read a second world-specific sandbox
path. They are not a substitute for configuring the correct primary path.

Before enabling a mirror:

1. stop the server;
2. identify the exact file the server reads;
3. confirm the target is inside the intended installation;
4. back it up;
5. add only that path;
6. verify the mirror result after preparation.

Example override without a mirror:

```lua
paths = {
    runtime_dir = "ue4ss/Mods/RandomDay/runtime",
    web_export_dir = "ue4ss/Mods/RandomDay/web_export",
    sandbox_path_override = "<server-root>/AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    sandbox_candidates = {},
    write_sandbox_mirrors = false,
    sandbox_mirror_required = false,
    world_name = nil,
    sandbox_mirror_candidates = {},
}
```

`<server-root>` is a placeholder. Replace it locally; do not publish a
machine-specific path.

## Non-Disableable Safety Locks

| Setting | Required value | Meaning |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Preserve a verified copy before replacing an existing primary file. |
| `sandbox.restore_last_good_on_failure` | `true` | Attempt automatic recovery after a failed replacement or readback. |
| `external_mods.patch_only_existing_keys` | `true` | Refuse to invent an unknown setting in another mod's file. |
| `external_mods.backup_before_write` | `true` | Preserve target bytes before a supported transactional adapter edit. |

RandomDay refuses startup if any of these four values is not `true`. They are
safety locks, not supported operator toggles. Do not disable them, including in
development or troubleshooting, because doing so changes the fail-closed
boundary that the writer and adapter tests prove.

`sandbox.force_rewrite_every_supervision_tick` remains a normal setting and
ships as `false`, which leaves an already matching sandbox file untouched.
It accepts a Boolean. Setting it to `true` forces the same process-owned
prepared bytes through the writer again; it does not advance the family/day.
Use it only for a bounded recovery test because repeated writes create more
operation backups.

## Optional Mod Adapters

| Setting | Shipped value | Meaning |
|---|---:|---|
| `external_mods.enabled` | `true` | Allow configured adapters to inspect separately installed targets. |
| `external_mods.optional_by_default` | `true` | Missing or incompatible optional mods do not block RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Required safety lock; startup fails if changed. |
| `external_mods.backup_before_write` | `true` | Required safety lock; startup fails if changed. |
| `external_mods.adapters` | Four public adapter IDs | Limits which RandomDay-owned adapters may run. |

Remove an adapter ID from the list to leave that integration alone without
disabling or uninstalling the third-party mod. The singleplayer/LAN package
disables every adapter regardless of this list.

`external_mods.optional_by_default=false` makes a configured adapter outcome
other than `applied` or `already_current` fail the aggregate adapter result.
It does not make the primary sandbox transaction roll back. Keep the shipped
`true` unless the operator has a tested reason to require an integration.

See [Supported Mod Adapters](SUPPORTED_ADAPTERS.md) for recognized layouts and
the six possible outcomes.

### Optional Chaotic Spawn Engine scope fields

`world_scope` supplies five optional RandomDay extension settings only when a
recognized Chaotic Spawn Engine `DynamicSpawns/SharedData.lua` layout already
contains those fields. This is not a separate mod or download:

| Setting | Shipped value | Adapter effect |
|---|---:|---|
| `world_scope.enabled` | `true` | Requests the optional RandomDay world-scope gate inside a recognized DynamicSpawns layout. |
| `world_scope.affect_open_worlds` | `true` | Includes open worlds unless the target mod applies a protected-world rule. |
| `world_scope.unknown_world_policy` | `allow` | Requests `allow` or `block` when the target mod cannot classify a world. |
| `world_scope.log_scope_decisions` | `true` | Requests target-mod logging for its scope decision. |
| `world_scope.protected_worlds` | Empty list | Supplies comma-separated protected-world patterns to the target layout. |

These values are adapter input, not a world filter implemented by RandomDay's
sandbox writer. They take effect only when the separately installed Chaotic
Spawn Engine layout already contains the complete optional RandomDay field set
and reports `applied` or `already_current`. Chaotic Spawn Engine remains
responsible for using those fields at runtime. An ordinary installation without
the extension fields is left unchanged.

All five values are adapter inputs. `unknown_world_policy` accepts only the
documented target values `allow` or `block`; an unrecognized target layout is
skipped. Keep `protected_worlds` empty in documentation examples. If an operator uses
local patterns, they must not be included in screenshots, issues, or release
artifacts.

## Player Messages

The shipped dedicated-server configuration enables compact join notices and a
short daily line. It waits 30 seconds before the first pass, checks for newly
joined players every 15 seconds, and waits 10 seconds after a join notice
before the daily line.

| Setting | Shipped value |
|---|---:|
| `player_message.enabled` | `true` |
| `player_message.log_on_startup` | `true` |
| `player_message.register_console_command` | `false` |
| `player_message.console_command` | `randomday` |
| `player_message.broadcast_enabled` | `true` |
| `player_message.startup_delay_ms` | `30000` |
| `player_message.join_check_interval_ms` | `15000` |
| `player_message.send_daily_joke_after_join` | `true` |
| `player_message.daily_joke_delay_seconds` | `10` |
| `player_message.criticality_join` | `2` |
| `player_message.criticality_joke` | `0` |
| `player_message.max_line_chars` | `42` |
| `player_message.max_join_lines` | `4` |
| `player_message.max_warning_lines` | `3` |
| `player_message.max_note_lines` | `3` |

Message-length validation checks source limits. It does not replace a visual
test on every client resolution.

Timing values are non-negative numbers interpreted as milliseconds except
`daily_joke_delay_seconds`. A disabled message or broadcast setting suppresses
client notices without changing sandbox preparation. The console command is
registered only when both the setting and UE4SS handler are available. Keep
criticality values at the shipped transport levels unless a named client test
proves another value.

`max_line_chars` is clamped to 8 through 64 characters by the translator.
The three line-count settings limit join, warning, and note output respectively;
the shipped values match the number of available source lines. Keep these four
limits at their defaults unless a client-layout test proves a narrower setting.

Example with messages disabled:

```lua
player_message = {
    enabled = false,
    log_on_startup = true,
    register_console_command = false,
    console_command = "randomday",
    broadcast_enabled = false,
    startup_delay_ms = 30000,
    join_check_interval_ms = 15000,
    send_daily_joke_after_join = false,
    daily_joke_delay_seconds = 10,
    criticality_join = 2,
    criticality_joke = 0,
    max_line_chars = 42,
    max_join_lines = 4,
    max_warning_lines = 3,
    max_note_lines = 3,
}
```

## Profiles And Sandbox Values

The family source files under `RandomDay/Scripts/ax_profiles/families/` define
17 complete days per family. The generated documentation under
`docs/profiles/` is a reference output, not the customization source.

Use [the sandbox key reference](profiles/SANDBOX_SETTINGS_KEYS.md) for types,
ranges, shipped profile defaults, and remaining invariant values. After editing a profile source, regenerate and
validate all 289 combinations; do not patch one generated Markdown or JSON
record by hand.

### Customize the shipped profile defaults

Open:

```text
RandomDay/Scripts/ax_config/server.lua
```

Find this block under `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

These are RandomDay's starting choices, not unchangeable Abiotic Factor rules.
Set either mode to `true` or `false`. Set each support value to a whole number
from `0` through `1000`. Stop the game or dedicated server before editing the
file, save it, and then start again so Lua loads the new configuration.

RandomDay reads this block whenever it builds the 17 profiles in a family. The
chosen values are therefore applied to every family and day, including profiles
prepared after a rotation and profiles rebuilt after a later server start. You
do not need to edit 289 profile files or regenerate the profile reference.

Changing only a live `SandboxSettings.ini` is temporary because the next
prepared profile is generated from `server.lua`. Invalid types, unknown keys,
or support values outside `0..1000` stop profile construction with a named
configuration error instead of silently reverting to defaults.

The generated profile reference continues to show the shipped defaults. It is
a release reference, not a copy of one server's private configuration.
