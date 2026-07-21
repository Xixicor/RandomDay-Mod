# Locate runtime files and status

This is the canonical path inventory used by operators and source traceability.
It answers where a file is, who writes it, when it changes, how long it remains,
and which recovery role it serves. The
[runtime output reference](RUNTIME_OUTPUTS.md) owns schemas, field meanings,
empty states, and machine-value interpretation.

All paths in this guide are relative to the installed `RandomDay/` folder
unless stated otherwise. Runtime outputs are created after installation; they
are excluded from release ZIPs.

## Operator file map

| Path | Producer and trigger | Update and retention | Meaning and recovery |
|---|---|---|---|
| Configured primary `SandboxSettings.ini` | `ax_sandbox/writer.lua` after profile serialization and validation in dedicated mode. | Replaced transactionally; target is operator-configured or installation-derived. | Complete profile for the next start. The running session keeps its already loaded rules. |
| Configured mirror `SandboxSettings.ini` | Sandbox writer after a successful primary result when an explicit mirror is eligible. | Best-effort transactional replacement. | Secondary copy only; a mirror does not replace correct primary-path configuration. |
| Recognized adapter target | `ax_external/bridge.lua` after complete layout-signature matching. | Existing assignments are changed transactionally with unique backups. | Separately installed mod configuration; inspect the six-state adapter result independently of the primary sandbox. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` after a successful sandbox transaction. | Replaced transactionally after each accepted preparation. | Queue bookkeeping. If unreadable, RandomDay tries the last-good state. |
| `runtime/rotation_state.last_good.txt` | Calendar transaction backup. | Replaced when the current state is updated. | Previous readable state; preserve it during diagnosis and updates. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` after success, degraded persistence, or write failure. | Replaced transactionally on each status pass. | Canonical structured active/prepared, transaction, translation, and adapter summary. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` beside status. | Replaced transactionally. | Schema `randomday_runtime_dictionary_v2`: terms, setting translations, domains, package modes, and selection states. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` beside status. | Replaced transactionally. | Exact bounded message preview for operator review; it does not prove client rendering. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` after a verified primary sandbox result. | Replaced transactionally. | Last sandbox accepted as known good. Use only with its manifest. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua` after the sandbox snapshot succeeds. | Replaced transactionally as a pair with the sandbox snapshot. | Version, profile ID, name, day, content hash, and write time for the last-good file. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Primary or mirror writer before mutation. | Unique operation directory; RandomDay does not prune it. | Verified pre-write bytes. Operators own retention after review. |
| `runtime/backups/external_<operation>/...` | Adapter bridge before any adapter mutation. | Unique operation directory; no automatic pruning. | One verified copy of every planned adapter target. |
| `runtime/pending/` | Created by runtime directory setup. | Reserved; current primary transactions use sibling sidecars instead. | Do not treat an empty directory as preparation proof. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Sandbox writer in `singleplayer_manual` mode. | Replaced transactionally when the manual package runs. | Complete file for the operator to inspect and copy manually into one stopped world. |
| `web_export/today.json` | `ax_web/export.lua` after each preparation result. | Replaced transactionally. | Compact machine-readable active/prepared and writer/adapter result. |
| `web_export/today.html` | `ax_web/export.lua` after a successful export pass. | Replaced transactionally. | Human view derived from the same transition; not independent proof. |
| `UE4SS.log` | UE4SS and `ax_core/log.lua`. | Managed by UE4SS, not RandomDay. | Startup, selected profile, write, adapter, message, status, and failure lines prefixed with `[RandomDay]`. |

### Recognize empty and failed file states

- A missing primary or mirror target may be created. An invalid profile,
  pending write, promotion, or production readback failure is not ready. A
  mirror failure does not change the accepted primary result.
- `runtime/singleplayer_manual/SandboxSettings.ini` may be created on the first
  manual run. A generation failure remains visible in status and log output.
- An unreadable `rotation_state.txt` can fall back to the last-good state or a
  marker-based bootstrap. A failed state commit produces
  `degraded_state_persistence`.
- `runtime/last_good/` may be absent before the first verified target. If the
  paired manifest update fails, RandomDay restores the previous accepted pair.
- `runtime/backups/mirror_<operation>/` is the mirror-specific backup location.
  No primary or mirror backup file exists when that target did not exist before
  the transaction.
- Adapter mutation does not begin when its backup creation or readback fails.
- Current status, dictionary, or preview files may be absent when runtime status
  output is unavailable or incomplete.
- An `export_failed` result can leave an older `today.json` in place. A sandbox
  failure updates JSON but does not create a new failure HTML page; compare
  timestamps with `UE4SS.log`.
- A stale pending sidecar is removed before a new attempt; cleanup failure stops
  the transaction. If both the production target and rollback sidecar exist,
  RandomDay preserves the recovery bytes for review.
- No `[RandomDay]` start line in `UE4SS.log` means mod loading was not proven.

## Transaction sidecars

The transactional writer may create sibling files beside a target:

| Pattern | State | Operator action |
|---|---|---|
| `<target>.randomday.pending` | Candidate bytes before promotion. | Normally removed by promotion. Preserve it if a failure reports pending cleanup or readback trouble. |
| `<target>.randomday.rollback` | Original bytes held during replacement. | Normally restored on failure or removed after verified success. Do not delete it when the target is also present; that combination requires review. |
| `<target>.randomday.restore.pending` | Candidate bytes during adapter restoration. | Preserve with the adapter backup if restoration fails. |
| `<target>.randomday.restore.rollback` | Recovery bytes held during adapter restoration. | Preserve and stop the affected service if cleanup or restore is unverified. |

These files can exist beside the dedicated sandbox or a separately installed
adapter target. Their presence is a transaction state, not evidence that the
new profile became active.

## Interpret file contents

Use [Runtime state and output reference](RUNTIME_OUTPUTS.md) for the complete
`rotation_state.txt`, `randomday_status.json`, and `today.json` schemas. That
reference also owns empty states, failure meanings, dictionary output, and the
rule that prepared state is not active state. Use the
[status and error reference](STATUS_AND_ERROR_REFERENCE.md) when an exact
machine value requires an operator action.

### Rotation state fields

See the canonical [rotation state schema](RUNTIME_OUTPUTS.md#rotation-state-schema).

### Current status schema

See the canonical [runtime status JSON schema](RUNTIME_OUTPUTS.md#runtime-status-json).

### Web export schema

See the canonical [public status JSON schema](RUNTIME_OUTPUTS.md#public-status-json).

## Retain recovery evidence

RandomDay overwrites current state, current status, last-good state, and web
views. It creates unique operation-backup directories and does not delete old
ones. Choose a retention policy outside the running process, but never delete
the newest recovery evidence while a write, readback, state, or rollback issue
is unresolved.
