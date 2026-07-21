# Architecture And Data Flow

RandomDay owns one bounded job: prepare a complete sandbox profile for a future
start without describing that profile as active during the current process.
The active profile comes from the marker in the sandbox file that Abiotic
Factor loaded before UE4SS started RandomDay. The prepared profile is a
separate, validated file state for the next restart.

## Package Modes

The release builder produces two ZIPs from the same exact source allowlist and
sets `RandomDay/.randomday_mode` differently in each one.

| Mode | Primary output | Automatic external writes |
|---|---|---|
| `dedicated_server` | Resolved dedicated-server `SandboxSettings.ini` | Primary sandbox, deliberately configured mirrors, and recognized optional adapters. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | None outside the RandomDay folder; mirrors and adapters are disabled. |

`RandomDay/.randomday_version` and `RandomDay/.randomday_mode` are generated
package markers. `RandomDay/Scripts/ax_core/version.lua` reads them; operators
must not edit them after installation.

## Session Modes

Package mode controls where RandomDay may write. `experience.mode` separately
describes the intended lifecycle:

| Session mode | Package | Lifecycle contract |
|---|---|---|
| `persistent_dedicated` | Dedicated | Resume the persisted family and 17-position day order across long-term restarts. |
| `temporary_dedicated` | Dedicated | Treat each launch as a bounded play session while preserving the queued order between launches. |
| `singleplayer_lan` | Singleplayer manual | Generate a mod-local file for an operator-selected world; no save discovery or automatic copy. |

`auto` resolves to `persistent_dedicated` in the dedicated package and
`singleplayer_lan` in the manual package. Session mode does not alter the
engine boundary: the current process already loaded its sandbox before
RandomDay executes.

## Startup Path

1. UE4SS loads `RandomDay/Scripts/main.lua`.
2. The entry point resolves one `RandomDay/` root and loads
   `Scripts/ax_core/init.lua`.
3. `init.lua` loads configuration, profiles, calendar, writer, adapters,
   status, web export, and player-message modules. It rejects an invalid
   package mode or disabled transaction safety lock.
   It also validates the package-compatible session mode, start-day mode,
   configured start day, and day-progression mode.
4. Every family build validates `sandbox.profile_overrides` from
   `Scripts/ax_config/server.lua`. The four profile-wide choices are
   applied after family/day values and before the remaining invariant
   rules, so every prepared profile uses the same configured choices.
5. Runtime and web-output roots are anchored to the resolved mod folder.
   Singleplayer mode is reduced to its one mod-local output before selection.
6. `ax_cycle/calendar.lua` reads the sandbox marker and recoverable rotation
   state, then creates one active/prepared decision for this game process.
7. `ax_sandbox/writer.lua` serializes and validates the prepared profile, then
   uses a transactional replacement for the selected target.
8. Rotation state is committed only after the sandbox transaction succeeds.
   A state-commit failure is degraded: adapters and prepared-player messaging
   are skipped because the sandbox and queue state do not agree.
9. In dedicated mode, `ax_external/bridge.lua` evaluates optional adapters
   against the active profile. During first bootstrap, no active marker exists,
   so the prepared configured/random start-day profile is the only available adapter mapping.
10. Runtime JSON/text status and the HTML/JSON web view are rewritten from the
   same decision. Player notices are installed last.

The default `cycle.check_interval_ms=0` runs this sequence once at startup. If
an operator supplies a positive interval and UE4SS exposes `LoopAsync`, later
callbacks reuse the process-owned selection. They may repair or re-export that
selection, but do not choose another day during the same process.

## Rotation State Machine

| Selection state | Entry condition | Prepared result | Safe recovery |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | No active marker and no recoverable prepared state. | Configured or randomly selected first position in a newly persisted day order. | Keep the existing session running; restart only after `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | The active day is not the last position in the stored order. | Next stored position in the same family. | If persistence fails, keep the server stopped and reconcile sandbox and rotation state. |
| `active_marker_found_completed_run_prepare_next_unused_family` | The active day is the last position in the stored order. | First position from a new order in the next eligible family run. | Confirm the new family/day/order before restart. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | No active marker, but rotation state names a prepared profile. | The same queued profile is rebuilt. | Preserve the state files; do not delete them to force a reroll. |
| `supervision_reconfirm_prepared_profile_no_advance` | A later callback runs in the same process. | The same prepared profile. | Diagnose the first failing stage; repeated callbacks are not new selections. |

`selected_run` always uses `selected_family`. `rotation_run` consumes the
configured eligible order. `non_repeating_random_run` chooses from the
remaining eligible families and starts a new pool after all have completed.
Every mode keeps one family until all 17 unique day IDs in `day_order` have
completed. Sequential mode wraps after Day 17 when the configured start is not
Day 1; non-repeating-random mode stores one permutation and never rerolls it
during recovery.

## Sandbox Transaction

The writer renders all keys in canonical order and validates types, ranges,
fixed rules, marker values, and profile identity before writing. Replacement
then follows this order:

1. remove a stale pending file only when it is safe to do so;
2. preserve or stop on pre-existing recovery sidecars;
3. write the pending bytes;
4. read the pending file back and validate it;
5. create a verified operation backup when a target exists;
6. hold the original as the transaction rollback file;
7. promote the pending file;
8. read and validate the production file;
9. restore the held original if promotion or production validation fails;
10. retain recovery data and report failure if cleanup cannot be verified.

First write uses the same pending/readback/validation path. With no original
target there is nothing to restore, so a failed first write must not be
reported as an original-file recovery.

## Adapter Boundary

Adapters are RandomDay-owned patch definitions for separately installed mods.
The bridge first requires a recognized target path and complete key signature.
It patches existing assignments only, creates operation backups, applies every
planned file as one transaction, and rolls all affected targets back if any
step fails. Missing and incompatible targets are normal optional outcomes.

RandomDay does not load third-party code into its package. A fixture-backed
layout proves RandomDay's parser and transaction behavior, not that a
third-party release loaded or used the values in a game process.

## Output Boundary

Runtime files are generated below `RandomDay/runtime/` and
`RandomDay/web_export/`; none is a release ZIP input. The status writer removes
machine-local adapter paths from public JSON diagnostics. The complete path,
schema, cadence, and retention map is in [Runtime Files And Status](RUNTIME_FILES.md).

## Failure Ownership

| Failed stage | Owner-visible consequence |
|---|---|
| Profile or INI validation | No production write is attempted. |
| Pending write/readback | Existing production bytes remain in place. |
| Operation backup | Replacement stops before the original is moved. |
| Promotion or production validation | Automatic restore is attempted and its result is reported. |
| Rotation-state persistence | Prepared sandbox bytes may exist, but the transition is degraded and adapters/messages are skipped. |
| Adapter compatibility | The target is left unchanged with `not_installed` or `skipped_incompatible`. |
| Adapter write/readback | All changed adapter targets are restored when possible. |
| Status or web export | The sandbox result remains authoritative; output failure is logged and must not be treated as a successful report. |

Follow [Operations](OPERATIONS.md) for recovery and
[Troubleshooting](TROUBLESHOOTING.md) for symptom-first checks.

## Evidence Limit

The local Lua fixture suite can prove source behavior, generated profile
invariants, transaction branches, output shapes, and package boundaries. It
does not prove a current Abiotic Factor build, a current UE4SS release, a
particular server panel, every display size, or an untested third-party mod
version. Those claims remain `not tested` until a named compatibility run is
recorded.
