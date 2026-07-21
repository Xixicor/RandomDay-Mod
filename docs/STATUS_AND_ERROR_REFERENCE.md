# Status and error reference

Use the exact `status`, `transaction_status`, `rollback_status`, and `error`
values from the runtime export. Similar wording in a panel or console is not a
substitute for those fields.

This section is the complete lookup reference. The decision tree above chooses
the relevant category; these tables preserve the exact machine values and safe
operator responses.

## Normal or informational states

| Status | Meaning | Operator response |
|---|---|---|
| `prepared_for_next_reboot` | A validated profile was written for the next boot. | No action; the current session is unchanged. |
| `next_reboot_already_prepared` | The intended next profile already matches the target. | No action; do not force another rotation. |
| `already_current` / `unchanged` | The target already contains the intended bytes. | No action. |
| `applied` | The write and production readback passed. | Verify the active/prepared distinction after the next boot. |
| `bootstrap_prepare_first_family_start_day` | No prior rotation state existed, so the configured first day was prepared. | Expected on first use. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Stored state was recovered and the same prepared profile was rewritten. | Verify the recovered day; no new random choice occurred. |
| `supervision_reconfirm_prepared_profile_no_advance` | A supervision pass confirmed the existing preparation. | Expected; the queue did not advance twice. |
| `external_mods_disabled` | Optional adapter processing is disabled. | No action unless adapters were intended. |
| `external_mods_processed` | All enabled adapter plans reached a terminal result. | Review each adapter row. |

## Startup configuration errors

These messages stop startup before RandomDay writes a profile. Correct the
named setting or package marker; do not bypass the validation branch.

| Error text | Meaning | Safe response |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` is missing, malformed, or from the wrong package. | Reinstall one complete package into a clean staging folder and preserve the intended mode marker. |
| `invalid experience.mode` | `experience.mode` is not one of the documented values. | Use `auto`, `persistent_dedicated`, `temporary_dedicated`, or `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | A manual-copy package was configured as a dedicated server. | Restore `auto` or `singleplayer_lan`; do not point it at an external world automatically. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | A dedicated package was configured for the manual-copy workflow. | Use `auto`, `persistent_dedicated`, or `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | The initial-day selector is invalid. | Use exactly `configured` or `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | The day-order selector is invalid. | Use exactly `sequential` or `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | The configured start day is fractional or outside the cycle. | Use a whole number from 1 through `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | Backup or last-good restoration was disabled. | Restore both safety locks; RandomDay intentionally refuses unsafe writes. |
| `external adapter transaction safety locks must remain true` | Adapter patching or backup protection was disabled. | Restore both adapter safety locks or disable adapters as a group. |
| `paths.world_name must be one folder name` | The configured world name contains a separator or unsafe character. | Enter only the exact folder name, using letters, numbers, spaces, underscores, or hyphens. |
| `required runtime directory unavailable` | A required mod-local output directory could not be created or confirmed. | Check only the named RandomDay directory and its write permission. |

## Profile-wide configuration errors

These errors stop profile construction before a sandbox write.

| Error text | Meaning | Safe response |
|---|---|---|
| `sandbox.profile_overrides must be a table` | The four profile-wide choices were replaced with another Lua type. | Restore the documented table in `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | The table contains a setting that is not one of the four supported keys. | Remove the named key and use family/profile sources for other sandbox settings. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` or `AllowIronMode` is not `true` or `false`. | Use an unquoted Lua boolean. |
| `sandbox.profile_overrides.<key> must be integer` | A support value is not a whole number. | Use a whole number. |
| `sandbox.profile_overrides.<key> outside supported range` | A support value is outside `0..1000`. | Choose a whole number from `0` through `1000`. |

## Rollback and intermediate states

| Value | Meaning | Safe response |
|---|---|---|
| `not_started` / `pending` | The transaction or adapter plan has not reached a terminal result. | Wait only for the current bounded startup pass; persistent state requires investigation. |
| `not_needed` | No rollback was required. | No action. |
| `original_held` | The original target was moved into recovery position before promotion. | Do not delete the recovery file while the transaction is incomplete. |
| `retained_after_success` | The new target verified, but recovery data remains because cleanup was unavailable or intentionally retained. | Verify production bytes before removing any named recovery file. |
| `discarded_after_success` | The replacement verified and temporary rollback data was cleared. | No action. |
| `rollback_failed` | The attempted restore could not be verified. | Keep the server stopped and use the last verified operation backup. |
| `skipped_state_persistence_failed` | Sandbox bytes were prepared, but rotation state did not persist, so adapters and prepared-player messaging were skipped. | Repair runtime state storage; do not reroll or advance the queue manually. |
| `failed` | A summary row represents a terminal failure whose specific cause is in its `error` or transaction fields. | Follow the first specific code; do not troubleshoot from `failed` alone. |

## Transaction failures

| Status | Meaning | Safe response |
|---|---|---|
| `invalid_input` | The replacement request was not valid text or lacked a valid target. | Correct configuration; do not retry unchanged. |
| `stale_pending_cleanup_failed` | An old pending file could not be removed. | Stop and preserve the pending file before manual cleanup. |
| `stale_rollback_requires_review` | Recovery data exists beside a present target and cannot be discarded safely. | Compare target and rollback bytes before choosing either. |
| `interrupted_transaction_restore_failed` | Recovery after an interrupted replacement could not restore the target. | Keep the server stopped and restore a verified backup. |
| `interrupted_transaction_cleanup_failed` | The target was recovered but stale transaction data could not be cleared. | Verify target bytes, then remove only the named stale sidecar. |
| `pending_write_failed` | The candidate could not be written. | Check the narrow target directory and free space. |
| `pending_readback_failed` / `pending_readback_mismatch` | Candidate bytes could not be read or differed after write. | Do not promote the pending file. |
| `pending_validation_failed` | The candidate failed schema/profile validation before promotion. | Fix the reported key or rule; do not bypass validation. |
| `operation_backup_failed` / `backup_failed` | A verified pre-write backup was not created. | Stop; no target replacement should be trusted. |
| `original_preserved_move_failed` | The original target could not be moved into recovery position. | Preserve all transaction files and recover manually. |
| `promotion_failed` | The pending candidate could not become the production target. | Check whether the original was restored before retrying. |
| `production_validation_failed` | Promoted bytes failed production readback/validation. | Restore the verified backup and inspect the target writer. |
| `replacement_committed_recovery_cleanup_failed` | The replacement is valid, but rollback data could not be cleared. | Treat the target as committed; remove only verified stale recovery data. |
| `rollback_failed` | Automatic restore did not verify. | Keep the server stopped and use manual recovery. |

## Target, profile, adapter, and export failures

| Status | Meaning | Safe response |
|---|---|---|
| `target_refused` | The configured path is outside the allowed mode boundary. | Correct the path; never weaken the boundary. |
| `target_directory_failed` | The target directory could not be created or confirmed. | Check only that directory's existence and permissions. |
| `profile_validation_failed` | A profile is missing a key, has the wrong type/range, or violates a remaining invariant rule. | Use the named key, `sandbox.profile_overrides`, and profile reference to repair the source. |
| `skipped_incompatible` | An optional mod exists but does not match a supported adapter signature. | Leave it unchanged or disable that adapter. |
| `external_mods_partial` | Some optional adapters completed and others were safely skipped/failed. | Review adapter rows independently; the sandbox result is separate. |
| `external_adapter_failed` | A required adapter did not complete safely. | Restore its verified backup before retrying. |
| `degraded_state_persistence` | Sandbox preparation completed, but rotation-state persistence did not. | Do not assume the next boot can advance correctly; repair state storage. |
| `export_directory_failed` | `web_export/` could not be created or written. | Gameplay preparation may still be valid; repair reporting separately. |

## Translation and message validation errors

These are dictionary or presentation-contract failures. They are validated
before release and may also appear as a bounded runtime-status warning.

| Error text | Meaning | Safe response |
|---|---|---|
| `dictionary coverage mismatch` | The profile dictionary does not explain every documented setting. | Add the missing dictionary entry and rerun profile generation/validation. |
| `missing profile setting` | A selected profile lacks a setting required by the dictionary/schema. | Repair the profile family source; do not invent a runtime default. |
| `empty explanation` | A setting exists but has no operator/player explanation. | Add a plain-language explanation before release. |
| `join line too wide` | A generated join line exceeds the 42-character source limit. | Shorten the dictionary phrase; do not rely on client wrapping. |
| `join message too tall` | The generated join summary exceeds four lines. | Reduce or reprioritize the message content. |
