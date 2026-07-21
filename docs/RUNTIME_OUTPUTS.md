# Interpret runtime state and output schemas

This is the canonical field-complete schema guide. It answers what each field,
state, empty value, and machine result means. Use the
[runtime file map](RUNTIME_FILES.md) for producers, paths, write timing,
retention, transaction sidecars, and recovery locations.

All paths in this guide are relative to the installed `RandomDay/` folder
unless a row explicitly names the configured sandbox or an optional adapter
target. Runtime outputs are generated after installation and are not members of
either release ZIP.

## Choose the authoritative view

| Need | Authoritative source |
|---|---|
| Rules loaded by the current process | RandomDay marker in the `SandboxSettings.ini` read at startup |
| Prepared queue bookkeeping | `runtime/rotation_state.txt`, schema `1` |
| Detailed local status | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Public machine-readable status | `web_export/today.json`, schema `2` and `randomday_public_status_v2` |
| Human-readable status | `web_export/today.html`, derived from the same public status transition |
| Translation vocabulary | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Exact bounded player notice | `runtime/current/player_message_preview.txt` |

The HTML view, preview, and translated summaries are derived views. They do not
override the sandbox marker, transaction result, or raw profile values. Locate
last-known-good files, operation backups, sidecars, mirrors, adapter targets,
and `UE4SS.log` in [Runtime files](RUNTIME_FILES.md).

## Rotation state schema

`runtime/rotation_state.txt` uses schema `1` and contains one `key=value` pair
per line:

| Field | Meaning |
|---|---|
| `schema_version` | Must be `1`. |
| `mod_version` | Package identity read from `.randomday_version`. |
| `rotation_id` | Identifier for the current pass through the eligible family set. |
| `mode` | `selected_run`, `non_repeating_random_run`, or `rotation_run`. |
| `available_families` | Comma-separated eligible family IDs after configuration filtering. |
| `remaining_families` | Eligible families not yet selected in the current non-repeating pass. |
| `completed_families` | Families whose complete persisted 17-position order has completed in the current pass. |
| `active_family`, `active_day` | Active marker information recorded when the selection was committed. The sandbox marker is authoritative on the next boot. |
| `prepared_family`, `prepared_day` | Profile held for the next restart. |
| `active_run_id` | Family-run identifier associated with the prepared selection. |
| `last_status` | Calendar selection state that produced this file. |
| `session_mode` | Resolved persistent dedicated, temporary dedicated, or singleplayer/LAN lifecycle. |
| `start_day_mode` | Configured or one-time random start choice for a new run. |
| `day_progression_mode` | Wrapped sequential or non-repeating-random progression. |
| `day_order` | Comma-separated persisted day IDs in the exact order they will be prepared. |
| `day_position` | Position of the prepared day in `day_order`. |
| `updated_at` | Local write time for operator comparison. |

The state write is accepted only when the schema marker, prepared family, and
prepared day read back correctly. An unreadable current file may fall back to
`rotation_state.last_good.txt`; the selected sandbox marker still determines
what the game loaded for the current process.

## Runtime status JSON

`runtime/current/randomday_status.json` uses
`status_schema=randomday_runtime_status_v2`. Its main field groups are:

| Group | Fields and interpretation |
|---|---|
| Identity | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Selection | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Active | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Prepared | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Human summaries | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Write proof | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Adapter proof | `adapter_status`, `adapter_results`; each adapter record contains compatibility evidence, transaction/rollback state, changed-file count, and redacted target references |
| Boundaries | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Diagnostics | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Unknown active values mean the current sandbox did not contain a readable
RandomDay marker. They must not be replaced with prepared values. Adapter paths
outside `runtime/` are reduced to a basename reference, and diagnostic strings
redact detected absolute paths.

## Public status JSON

`web_export/today.json` uses `schema_version=2` and
`status_schema=randomday_public_status_v2`. It repeats the identity,
active/prepared, selection, transaction, adapter, and restart-boundary facts
needed by an operator. It also includes:

- `session_mode`, `start_day_mode`, `configured_start_day`,
  `day_progression_mode`, `day_order`, and `prepared_day_position`;
- `family_selection_mode`, legacy `family_locked_until_day_17`, and `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families`, and their count;
- prepared encounter profile, tier, theme, and mixed-encounter chance;
- world-scope enablement, open-world setting, unknown-world policy, and only a
  count of configured excluded-world patterns;
- prepared message and combined message previews;
- `selected_at`, `sandbox_target`, `manual_copy_required`, and prepared hash.

`profile_status` is one of `prepared_for_next_reboot`,
`next_reboot_already_prepared`, `degraded_state_persistence`, or
`write_failed_or_rollback`. `prepared_ready=true` still does not mean active;
the later startup marker is required.

## Dictionary and translation output

`runtime/current/randomday_dictionary.json` uses
`schema=randomday_runtime_dictionary_v2` and identifies dictionary version
`randomday_dictionary_v2`. It describes package modes, selection states,
pressure domains, setting labels, raw values, and plain-language meanings.
Unknown values remain explicit instead of being converted into a confident
description.

`player_message_preview.txt`, `today.json`, `today.html`, and in-game notices
are views derived from the same translation module. The underlying profile and
raw `SandboxSettings.ini` values remain the source of truth.

## Failure and recovery rules

1. A failed pending write or validation never becomes a production target.
2. A failed promotion or production readback triggers restore of the held
   original; an operation backup is the fallback when that restore fails.
3. A retained rollback file or `rollback_failed` status requires manual review
   while the game or server is stopped.
4. A successful sandbox write plus failed rotation-state commit is degraded,
   not ready; adapters and prepared-profile messaging are skipped.
5. An export failure does not change the sandbox result, but it removes a
   convenience proof source. Use transaction logs, state, and file readback.
6. Runtime outputs are local operational data. Do not add them to a release ZIP
   or publish them as examples without a separate privacy review.
