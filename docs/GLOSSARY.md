# Glossary

This is the canonical vocabulary for RandomDay documentation. Procedures link
to these definitions instead of redefining the same state in multiple guides.
Schema-specific field rules remain in [Runtime outputs](RUNTIME_OUTPUTS.md).

| Term | Plain meaning | Exact technical meaning |
|---|---|---|
| Active profile | The rules the current session is using. | The family/day profile identified by the RandomDay marker read from the sandbox at process startup. |
| Prepared profile | Rules ready for a later session. | The complete family/day profile whose target bytes passed validation and readback and whose rotation state was committed. It is not active before restart readback. |
| Restored | Preparation failed and prior verified bytes were put back. | The failed transaction reports a successful rollback and readback of the held original or verified recovery copy. |
| Next-reboot queue | One prepared choice held for the next boot. | `next_reboot_queue` selects once per process and reuses that boot-owned choice during supervision. |
| Bootstrap | The first preparation when no active marker exists. | Selection of the configured or random first day from an eligible family; `cycle.bootstrap_day` is only a compatibility fallback. |
| Family | A 17-day playstyle progression. | One registry entry and family module that produces exactly 17 complete profiles. |
| Rotation | A pass through eligible families. | State identified by `rotation_id`, with available, remaining, and completed family lists. |
| Run | One family across all 17 day IDs. | A family-bound sequence identified by `run_id`; the family stays locked until every persisted day-order position completes. |
| Session mode | How the operator uses this package. | `persistent_dedicated`, `temporary_dedicated`, or `singleplayer_lan`; package mode still controls the filesystem boundary. |
| Day order | The exact order used by one family run. | A persisted 17-number permutation. Sequential mode wraps from its start day; random mode shuffles once without repetition. |
| Marker | Identity stored in the sandbox file. | `RANDOMDAY_*` fields rendered with the complete profile and read at the next process startup. |
| Prepared ready | The write and state commit succeeded. | `prepared_ready=true` requires a successful sandbox result and no state-commit failure. It does not prove activation. |
| Already current | The target already has the intended bytes. | The rendered profile hash matches the target, so RandomDay verifies last-good/mirror work without rewriting the primary. |
| Degraded state persistence | Sandbox bytes succeeded but rotation bookkeeping did not. | `profile_status=degraded_state_persistence`; adapters and prepared-profile messaging are skipped. |
| Pending file | Candidate bytes not yet promoted. | `<target>.randomday.pending`, written, read back, and validated before replacement. |
| Rollback file | The original held during replacement. | `<target>.randomday.rollback`, used to restore production on promotion or validation failure. |
| Operation backup | A durable copy made before mutation. | A verified file under `runtime/backups/` for the primary, mirror, or adapter transaction. |
| Last known good | The latest sandbox accepted for recovery. | `runtime/last_good/SandboxSettings.ini` plus `manifest.lua`; the pair records profile identity and hash. |
| Mirror | Optional second sandbox target. | An explicitly configured or world-name-derived target written after the primary through its own transaction. |
| Package mode | Install boundary selected by the release asset. | `dedicated_server` or `singleplayer_manual` from `.randomday_mode`. |
| Manual-copy mode | Singleplayer/LAN generation without save discovery. | `singleplayer_manual` writes only inside `runtime/singleplayer_manual/` and disables adapters and mirrors. |
| Adapter | RandomDay-owned mapping for another installed mod. | A signature-gated transaction plan that updates existing assignments only after backup and compatibility checks. |
| Recognized layout | Exact adapter file shape accepted for a write. | All required signature keys and target files are present; a filename alone is insufficient. |
| `not_installed` | The optional target was not found. | Safe adapter outcome with no mutation. |
| `skipped_incompatible` | A target exists but its shape is unsupported. | Safe adapter outcome with no mutation because the complete signature did not match. |
| `failed_rolled_back` | A change failed and prior bytes are intact. | Adapter transaction failed before mutation or all affected files were restored and verified. |
| `rollback_failed` | Automatic recovery could not be verified. | Hard-stop adapter state requiring manual recovery from the recorded backup. |
| Dictionary | Mapping from raw values to public explanations. | `randomday_dictionary_v2`, generated from `dictionary.lua` and included in runtime status output. |
| Translation | Human view derived from raw profile values. | Bounded domain scores, facts, summaries, and messages generated by `translation.lua`; raw values remain authoritative. |
| Public status | Sanitized machine-readable operator summary. | `web_export/today.json` using `randomday_public_status_v2`. |
| Runtime status | Detailed local machine-readable snapshot. | `runtime/current/randomday_status.json` using `randomday_runtime_status_v2`. |
