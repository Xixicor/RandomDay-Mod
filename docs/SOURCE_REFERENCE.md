# Packaged Source Reference

The release ZIP contains exactly the 51 paths below. The builder rejects a
missing path, an additional package-shaped source, a case collision, a symlink,
or a member outside its literal allowlist. Runtime output, tests, repository
docs, and third-party mods are not package members.

The machine-checkable companion is
[`SOURCE_TRACEABILITY.json`](SOURCE_TRACEABILITY.json). It records the same
paths with inputs, outputs, side effects, public settings, visible states,
failure modes, editability, and canonical documentation.

Every shipped Lua row has one stable `module-*` anchor. The identical link in
its canonical source header and machine record makes ownership, contract,
side effects, failures, and recovery directly traceable.

## Package Markers

| Path | Caller and responsibility | Side effects and failure behavior | Guide |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS enablement marker included in both packages. | No runtime write. Missing file fails package validation and may prevent loading. | [Installation](../INSTALL.md) |
| `RandomDay/.randomday_version` | Read by `ax_core/version.lua`; generated per package. | No runtime write. Missing/blank marker returns `unversioned`; final build requires aligned version identity. | [Release validation](RELEASE_VALIDATION.md) |
| `RandomDay/.randomday_mode` | Read by `ax_core/version.lua`; generated as `dedicated_server` or `singleplayer_manual`. | Invalid value stops startup before filesystem work. | [Architecture](ARCHITECTURE.md#package-modes) |

## Entry, Configuration, And Core Services

| Path | Caller and responsibility | Inputs, outputs, and failure behavior | Guide |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS entry point. Resolves one mod root and invokes `ax_core/init.lua`. | Prints a fatal line and returns if root resolution or startup fails. | [Startup path](ARCHITECTURE.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Main orchestrator for startup and optional supervision. | Anchors output paths, enforces package/safety locks, owns one selection, and sequences write, state, adapters, status, web, and messages. | [Startup path](ARCHITECTURE.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Loaded by `init.lua`; complete public configuration object. | Reads package identity; settings and reserved fields are documented individually. Invalid safety locks stop startup. | [Configuration](CONFIGURATION.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Loaded by config and profile registry. | Reads trimmed package markers; returns `unversioned` or `invalid` when unavailable. | [Release identity](RELEASE_VALIDATION.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Shared logging wrapper. | Emits `[RandomDay]` lines at configured levels; no private log transport. | [Runtime files](RUNTIME_FILES.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | Shared file, path, encoding, hash, directory, and transaction helpers. | Directory creation accepts only a confirmed Lua/Wine command success; unavailable, raised, signaled, ambiguous, or nonzero results fail closed with bounded messages and runtime-relative references. It also owns pending/readback/promotion/rollback semantics and retains uncertain recovery data. | [Sandbox transaction](ARCHITECTURE.md#sandbox-transaction) |

## Selection, Sandbox, Status, And Messages

| Path | Caller and responsibility | Inputs, outputs, and failure behavior | Guide |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; reads active marker and rotation state, chooses one active/prepared pair, persists session mode and the exact day order. | Builds a configured/wrapped or one-time shuffled 17-position order, writes `rotation_state.txt` transactionally, and falls back to last-good state without rerolling. Persistence failure produces a degraded transition. | [Rotation state machine](ARCHITECTURE.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Sandbox writer; creates operation and last-good backups and restores verified bytes. | Updates the last-good sandbox/manifest as a pair; preserves the prior pair if manifest replacement fails. | [Runtime files](RUNTIME_FILES.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Profile builder, serializer, and validator. | Defines canonical key order, types, ranges, and fixed rules; no filesystem writes. | [Sandbox keys](profiles/SANDBOX_SETTINGS_KEYS.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Sandbox writer. | Produces complete deterministic INI text with RandomDay markers; invalid profile data is rejected by validation. | [Profiles](profiles/README.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Builder tests and writer. | Validates profile values and serialized INI against schema, fixed values, and expected profile identity. | [Sandbox keys](profiles/SANDBOX_SETTINGS_KEYS.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; resolves mode-bounded targets and performs primary/mirror writes. | Produces transaction, backup, rollback, hash, mirror, and manual-output results. Unsafe targets and unverified writes fail closed. | [Sandbox transaction](ARCHITECTURE.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` after each preparation outcome. | Writes current status, dictionary, and message preview transactionally with sanitized target references. Output failure is logged and does not change sandbox authority. | [Current status schema](RUNTIME_FILES.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` after status. | Writes `today.json` and `today.html` from the active/prepared decision. Failure is reported as export failure, not sandbox success. | [Web export schema](RUNTIME_FILES.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` after successful state persistence. | Builds bounded join/daily messages from translation data and optionally registers a local console command. Missing player/transport skips a notice without changing profile state. | [Player messages](CONFIGURATION.md#player-messages) |

## Optional Adapter Modules

| Path | Caller and responsibility | Inputs, outputs, and failure behavior | Guide |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; discovers recognized adapter targets and applies all planned files transactionally. | Produces six documented outcomes, verified backups, sanitized diagnostics, and rollback evidence. | [Adapter boundary](ARCHITECTURE.md#adapter-boundary) |
| <a id="module-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Adapter bridge definition for a separately installed DynamicSpawns layout. | Supplies recognized signatures and prepared value maps; unknown layouts are skipped. | [Supported adapters](SUPPORTED_ADAPTERS.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Internal adapter definition for optional RandomDay extension fields in a recognized Chaotic Spawn Engine `DynamicSpawns` layout; the filename is not a separate product name. | Maps profile encounter and configured scope values only when the complete extension layout exists; Chaotic Spawn Engine remains responsible for runtime use. | [Supported adapters](SUPPORTED_ADAPTERS.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Adapter bridge definition for a recognized Lethal Lasers settings layout. | Requires every intended key before mutation; otherwise reports incompatible. | [Supported adapters](SUPPORTED_ADAPTERS.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Adapter bridge definition for a recognized ANTE Up settings layout. | Requires respawn, variant, and debug-gate fields; otherwise reports incompatible. | [Supported adapters](SUPPORTED_ADAPTERS.md) |

## Shared Profile And Translation Modules

| Path | Caller and responsibility | Inputs, outputs, and failure behavior | Guide |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; canonical base values and 17-day defaults. | Supplies all sandbox keys, the four shipped profile defaults, and the remaining fixed rules; no filesystem writes. Schema validation rejects incomplete output. | [Sandbox keys](profiles/SANDBOX_SETTINGS_KEYS.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Every family module and legacy family view. | Clones base days, applies bounded family/day overrides, validates `sandbox.profile_overrides`, applies those persistent values plus the remaining fixed rules, and returns a 17-profile family pack. | [Profile reference](profiles/README.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; ordered public registry of all 17 families. | Supplies IDs, source filenames, names, descriptions, genres, and tone metadata. Missing family source fails loading. | [Family rotation](FAMILY_ROTATION.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Calendar, writer, status, tests, and generators. | Loads all registered family packs and exposes the 17-by-17 profile set, shipped defaults, effective profile-wide values, schema order, and fixed rules. | [Profile reference](profiles/README.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Packaged compatibility view of the original Action 17-day pack. | Returns a complete family pack but is not the current registry's family source. Kept for historical package-path continuity. | [Family rotation](FAMILY_ROTATION.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Packaged compatibility view of the original Reaction survival pack. | Returns a complete family pack but is not selected by the current registry. Kept for historical package-path continuity. | [Family rotation](FAMILY_ROTATION.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Legacy day-index encounter lookup available to profile code. | Returns one bounded encounter map by day; no filesystem writes. Current family profiles carry their own encounter values. | [Profile reference](profiles/README.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Player messaging and compatibility wrapper. | Builds bounded joke/note packs from the selected profile; unavailable profile data falls back to a neutral message. | [Player messages](CONFIGURATION.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Backward-compatible wrapper around `messages_17.lua`. | No independent data or writes; load failure follows the canonical message module. | [Player messages](CONFIGURATION.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Translation and runtime dictionary writer. | Defines all 46 sandbox setting meanings, types, ranges, domains, and value language. Unknown values remain explicit. | [Translation and dictionary](RUNTIME_FILES.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Runtime status and player messaging. | Converts raw profile values into bounded domain scores, facts, summaries, warnings, and dictionary output while retaining raw values. | [Current status schema](RUNTIME_FILES.md#current-status-schema) |

## Registered Family Modules

Every row is loaded by `randomday_17.lua`, calls `profile_builder.lua`, returns
exactly 17 profiles, and has no direct filesystem side effect. A missing,
duplicate, incomplete, out-of-range, or fixed-rule-violating profile fails the
runtime fixture suite and generated-reference gate.

| Path | Family | Canonical generated guide |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Action | [Action](profiles/families/action.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Survival | [Survival](profiles/families/survival.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Stealth | [Stealth](profiles/families/stealth.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Horde | [Horde](profiles/families/horde.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Boss Hunt | [Boss Hunt](profiles/families/boss_hunt.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Scavenger | [Scavenger](profiles/families/scavenger.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Builder | [Builder](profiles/families/builder.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Expedition | [Expedition](profiles/families/expedition.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Security Lockdown | [Security Lockdown](profiles/families/security_lockdown.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Biohazard | [Biohazard](profiles/families/biohazard.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Anteverse | [Anteverse](profiles/families/anteverse.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Nightmare | [Nightmare](profiles/families/nightmare.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Weathered | [Weathered](profiles/families/weathered.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Precision | [Precision](profiles/families/precision.md) |
| <a id="module-ax-profiles-families-logistics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Logistics | [Logistics](profiles/families/logistics.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Experimental | [Experimental](profiles/families/experimental.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Compliance Test | [Compliance Test](profiles/families/compliance_test.md) |

## Generated References

`docs/profiles/profiles.generated.json`, the family Markdown files, and
`FULL_PROFILE_REFERENCE.md` are contributor/operator references generated from
the same profile set. They are not package members and must not be edited as a
substitute for changing profile source. Validation requires 17 families, 17
profiles per family, unique IDs, all schema keys, fixed rules, translation
coverage, and bounded messages.
