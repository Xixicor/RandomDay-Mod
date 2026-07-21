# Worked configuration examples

These examples use invented names and values to show how RandomDay reports
ordinary preparation, activation, recovery, and compatibility results.

## First Bootstrap

Before: the running session loaded a sandbox with no RandomDay marker.

After one successful RandomDay startup:

```text
selection_status=bootstrap_prepare_first_family_start_day
session_mode=temporary_dedicated
start_day_mode=configured
day_progression_mode=sequential
day_order=8,9,10,11,12,13,14,15,16,17,1,2,3,4,5,6,7
active_profile_id=unknown_current_boot
prepared_next_profile_id=<action-day-8-profile-id>
prepared_ready=true
restart_required_for_prepared_profile=true
```

Meaning: the current session remains unknown to RandomDay. Configured Day 8 is
ready for the next restart and the complete wrapped order is persisted. Do not
describe Day 8 as active yet.

## Normal Next Day

Before: the current sandbox marker identifies Action Day 1.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Meaning: Day 1 is active for this process; Day 2 is prepared. The restart is an
operator decision.

## State Commit Failure

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Meaning: valid sandbox bytes may be on disk, but RandomDay could not persist a
matching queue record. Keep the server stopped, preserve the sandbox and both
rotation-state files, and follow manual recovery. A successful sandbox write
alone is not a healthy prepared transition.

## Primary Write Restored

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Meaning: production readback failed and the prior file was restored. Inspect
the operation backup and first error before another start. Do not infer that
the prepared profile is usable.

## Adapter Outcomes

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Meaning: the Lethal Lasers target was left unchanged because its complete
layout was not recognized. The ANTE Up target already matched. Neither result
changes the primary sandbox transaction.

If an adapter reports `rollback_failed`, stop the affected service and preserve
the target, sidecars, and `runtime/backups/external_<operation>/` directory.

## Singleplayer Or LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Meaning: RandomDay wrote only
`runtime/singleplayer_manual/SandboxSettings.ini`. Close the game, inspect the
file, back up the chosen world, and copy it manually. The output does not prove
that any world has loaded it.

## Incompatible Environment

When no named Abiotic Factor or UE4SS run exists, release copy must say:

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

Local Lua parsing, fixtures, and package extraction remain useful proof, but do
not become a broader compatibility claim.
