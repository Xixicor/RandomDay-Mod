# Operate active, prepared, and recovery state

RandomDay changes the sandbox file for a future boot. It does not change the
rules already loaded into a running Abiotic Factor session.

This page owns operator decisions and recovery procedures. Use the
[Glossary](GLOSSARY.md) for canonical terms, [Runtime files](RUNTIME_FILES.md)
for path ownership, and [Runtime outputs](RUNTIME_OUTPUTS.md) for exact schemas
and field meanings.

## Distinguish active and prepared state

A prepared profile is not active until a later startup reads its marker. Do not
use the prepared family/day to describe the current session.

Use `web_export/today.html` for a readable summary and
`web_export/today.json` for exact state. Confirm the active marker, prepared
identity, `prepared_ready`, `profile_status`, transaction result, rollback
result, and state-commit result before deciding to restart.

## Follow the normal dedicated-server sequence

| Before | Action | After |
|---|---|---|
| No RandomDay marker | Start with RandomDay enabled. | Current session keeps its existing rules; RandomDay creates and persists a day order, then prepares its first configured/random position. |
| First position prepared | Restart. | That day becomes active; the next stored position in the same family is prepared. |
| Middle position active | Restart after reviewing the prepared profile. | The prepared day becomes active and the following stored position is prepared. |
| Final position active | Restart after reviewing the next family. | The first position of another eligible family order becomes active. |

`selected_run` keeps the configured family. `non_repeating_random_run` keeps a
randomly chosen family through all 17 day positions and avoids reusing a family
until the eligible list is exhausted. `rotation_run` follows the configured
family order. `cycle.day_progression_mode` controls day order independently of
family selection.

A fresh install always needs one process to prepare and a later process to
activate. This is true for persistent servers, temporary servers, and manual
singleplayer/LAN generation.

## Read the right evidence

Use the [runtime file map](RUNTIME_FILES.md) to locate rotation state, current
status, last-known-good files, operation backups, exports, and `UE4SS.log`.
Use the [runtime output reference](RUNTIME_OUTPUTS.md) for every field group,
schema, empty state, failure meaning, and retention rule. The HTML and JSON
exports summarize source state; they do not prove that a profile was used by a
live game client.

If `prepared_ready` is `false` or `profile_status` is
`degraded_state_persistence`, keep the server stopped until the sandbox and
rotation state agree. A valid sandbox write with failed state persistence is
not a healthy prepared transition.

## Respond to writer outcomes

RandomDay prepares the new bytes in a sibling file, reads them back, validates
the complete sandbox, preserves the original when one exists, promotes the new
file, and reads it back again. It reports ready only after the production
readback agrees.

If promotion or production validation fails, RandomDay attempts to restore the
file held by that operation. A restore failure is a hard stop: keep the server
stopped and recover manually rather than restarting repeatedly.

## Respond to adapter outcomes

Use [Supported adapters](SUPPORTED_ADAPTERS.md#read-an-adapter-result) for the canonical
six-state result table and next action. Treat `rollback_failed` as a hard stop;
the separately recorded adapter backup is the recovery source.

Adapters affect only separately installed mods. They never make a prepared
RandomDay sandbox profile active.

On a normal boot, adapter values are selected from the active profile because
the separately installed mod may load later in the same UE4SS startup. During
the first bootstrap, when no active RandomDay marker exists, the prepared
start-day profile is the only available mapping. This timing rule is separate from the
next-restart sandbox boundary and still depends on the other mod's own load
behavior.

## Manual recovery

1. Stop the game or server. Do not recover a file while it may be open.
2. Copy the current `SandboxSettings.ini`, `runtime/`, and `web_export/` to a
   separate diagnostic backup.
3. Inspect `runtime/last_good/manifest.lua` and the newest relevant entry under
   `runtime/backups/`. Choose a file whose family/day and hash match the state
   you intend to restore.
4. Copy the selected verified file to the configured primary sandbox path.
5. Read it back and confirm it is complete before starting.
6. Start once and inspect the active marker and prepared state. Do not assume
   recovery succeeded from the absence of an error message alone.

If no verified backup exists, restore the operator backup created before
installation. RandomDay cannot reconstruct a file that was never readable.

## Account for control-panel writes

Some server panels generate `SandboxSettings.ini` during startup. RandomDay
cannot preserve a prepared profile if another tool overwrites it after the
write was verified. Configure one authoritative sandbox source and check the
file marker immediately before and after restart when diagnosing a repeated
Day 1 or missing transition.
