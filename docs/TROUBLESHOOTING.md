# Troubleshooting

Stop at the first failed check. Preserve the current sandbox, `runtime/`,
`web_export/`, and relevant `UE4SS.log` before attempting recovery.

## Try these common fixes first

1. **RandomDay never appears:** confirm the `RandomDay` folder is directly
   inside `ue4ss/Mods`, enable `RandomDay : 1` in `mods.txt`, and start once.
2. **The current session kept its old rules:** this is normal. RandomDay
   prepares the next profile; the game loads it on a later start.
3. **The same profile keeps returning:** a server panel may be replacing
   `SandboxSettings.ini`. Use one authoritative sandbox file and compare the
   active and prepared names in `web_export/today.html`.
4. **An optional mod did not follow the profile:** open
   [Supported optional mods](SUPPORTED_ADAPTERS.md). A missing, disabled, or
   unrecognized optional mod is left unchanged.
5. **RandomDay reports a write or restore failure:** stop before another
   restart, preserve `runtime/backups/`, and follow the named recovery section
   below.

If those five checks do not identify the problem, continue with the detailed
decision tree.

## Choose the first failed stage

Use the first row that matches what you can actually prove. Do not start with
the most severe explanation, and do not combine unrelated output failures into
one diagnosis.

| What you can observe | Check first | Continue with | Expected outcome |
|---|---|---|---|
| No `[RandomDay]` start line exists in `UE4SS.log`. | Install root, package markers, `mods.txt`, and UE4SS Lua startup. | [Restore a missing RandomDay start](#restore-a-missing-randomday-start) | One start line names the release and package mode, or the failure is bounded to loading. |
| RandomDay loaded, but no profile became ready. | The first startup, configuration, target, transaction, or state error. | [Recover from failed preparation](#recover-from-failed-preparation), then [status and error reference](STATUS_AND_ERROR_REFERENCE.md) | One exact code identifies the safe next action. |
| A prepared profile exists, but the running rules did not change. | Active and prepared IDs in `today.json` or `today.html`. | [Confirm the restart boundary](#confirm-the-restart-boundary) | The current session remains active; the prepared profile waits for a later start. |
| Day 1 or another day repeats after restarts. | Sandbox markers before panel start, after panel start, and after preparation. | [Stop repeated preparation](#stop-repeated-preparation) | The authoritative writer or overwrite point is identified. |
| The sandbox is healthy, but an optional mod was skipped or failed. | The individual adapter outcome and compatibility evidence. | [Diagnose a skipped adapter](#diagnose-a-skipped-adapter) or [Recover an adapter rollback failure](#recover-an-adapter-rollback-failure) | Adapter health is decided independently from sandbox health. |
| The manual singleplayer/LAN file is absent. | Package mode and bounded output folder. | [Generate a missing singleplayer/LAN file](#generate-a-missing-singleplayerlan-file) | The file is generated inside RandomDay without discovering a personal save. |
| Only the player-facing message is missing or wraps badly. | Message-pass log, source preview, and documented limits. | [Diagnose a message problem](#diagnose-a-message-problem) | Presentation is tested without being treated as profile proof. |

### Follow the safe diagnostic order

1. Preserve the current evidence before changing files.
2. Prove whether RandomDay loaded.
3. Find the first stage that did not reach its documented result.
4. Copy the exact status or error value from the runtime output.
5. Use the matching table row below for one safe response.
6. Read back the target and rotation state before another start.

If no row matches, use [Runtime State And Output Reference](RUNTIME_OUTPUTS.md)
to identify the producer and field meaning before changing configuration.

## Restore a missing RandomDay start

**Most likely bounded cause:** wrong extraction layout, disabled mod, wrong
package mode, or UE4SS did not load the Lua entry point.

**Exact check:** confirm `RandomDay/enabled.txt`, `.randomday_mode`,
`.randomday_version`, and `RandomDay/Scripts/main.lua`; confirm
`RandomDay : 1` in `mods.txt`; search `UE4SS.log` for `[RandomDay]`.

**Expected result:** one start line names the release identity and package mode.

**Safe next action:** correct the layout or enablement while stopped, then start
once.

**Do not infer:** no RandomDay line does not prove a game or profile bug.

## Confirm the restart boundary

**Most likely bounded cause:** normal next-restart behavior.

**Exact check:** compare the active and prepared family/day in
`web_export/today.json` or `today.html`.

**Expected result:** the prepared profile differs from, or is explicitly
separate from, the active profile.

**Safe next action:** restart only when you are ready to activate it, then
verify the active marker.

**Do not infer:** a prepared profile is not active before post-restart readback.

## Stop repeated preparation

**Most likely bounded cause:** the active RandomDay marker is missing because a
server panel or another tool rewrote `SandboxSettings.ini` during startup.

**Exact check:** compare the sandbox file and its RandomDay marker immediately
before startup, after the panel starts, and after RandomDay prepares the file.

**Expected result:** the file present at the next boot retains the prepared
marker.

**Safe next action:** configure one authoritative sandbox source and disable
the conflicting panel rewrite.

**Do not infer:** repeated Day 1 does not prove the family selector is randomizing
incorrectly.

## Recover from failed preparation

**Most likely bounded cause:** pending write, backup, promotion, production
readback, validation, or rollback failed.

**Exact check:** read the first `[RandomDay] [ERROR]` line and preserve the
named operation backup. Inspect `runtime/last_good/manifest.lua` before using
its sandbox file.

**Expected result:** either the previous file is verified as restored or the
result clearly reports a restore failure.

**Safe next action:** keep the server stopped and follow
[manual recovery](OPERATIONS.md#manual-recovery).

**Do not infer:** the existence of a backup file alone does not prove it matches
the intended active world state.

## Diagnose a skipped adapter

**Most likely bounded cause:** the mod is absent or the file does not match a
supported signature.

**Exact check:** read the adapter outcome and compare the installed version and
layout with [Supported Mod Adapters](SUPPORTED_ADAPTERS.md).

**Expected result:** `not_installed` for an absent target or
`skipped_incompatible` for an unrecognized target.

**Safe next action:** leave the file unchanged, disable that adapter, or install
an exact supported version from its original author.

**Do not infer:** a similar filename or newer version is not proof of
compatibility.

## Recover an adapter rollback failure

**Most likely bounded cause:** both the attempted write and automatic restore
could not be verified.

**Exact check:** preserve the target, sibling pending/rollback files, adapter
status, and newest adapter backup under `runtime/backups/`.

**Expected result:** the outcome is `rollback_failed`, not `applied`.

**Safe next action:** stop the affected mod/server and restore the verified
backup manually before another launch.

**Do not infer:** RandomDay's primary sandbox result does not prove a separate
adapter target is healthy.

## Generate a missing singleplayer/LAN file

**Most likely bounded cause:** the dedicated package was installed, the mode
marker is invalid, or RandomDay did not load.

**Exact check:** `.randomday_mode` must contain `singleplayer_manual`; then
confirm the RandomDay start line and inspect
`runtime/singleplayer_manual/SandboxSettings.ini`.

**Expected result:** the file exists inside the RandomDay folder only.

**Safe next action:** install the correct package cleanly and start once.

**Do not infer:** RandomDay will not search for or write the target world on
your behalf.

## Diagnose a message problem

**Most likely bounded cause:** no valid player character was available at the
scheduled pass, the warning transport was unavailable, or the client display
wrapped the text differently.

**Exact check:** inspect the `[RandomDay]` message log and compare the source
message with the documented length limit.

**Expected result:** the runtime reports whether a message pass ran; source
validation reports the maximum length.

**Safe next action:** verify on the intended client resolution. Keep gameplay
and profile verification separate from the message result.

**Do not infer:** a visible message does not prove the sandbox profile applied,
and a missing message does not prove preparation failed.
## Four profile-wide choices returned to the shipped values

**Most likely bounded cause:** only the generated `SandboxSettings.ini` was
edited, or `server.lua` was changed while the same Lua process was still
running.

**Exact check:** stop the game or dedicated server, open
`RandomDay/Scripts/ax_config/server.lua`, and confirm the saved
`sandbox.profile_overrides` block contains the intended four values.

**Expected result:** after the next start, every newly prepared family/day
profile contains the chosen values. Later profile rotations and server starts
keep using the same block.

**Safe next action:** correct the block, start once, and inspect the prepared
profile. Do not patch only the generated sandbox file because a later
preparation will replace it.

## Look up an exact status

After the decision tree identifies the failing stage, copy the exact `status`,
`transaction_status`, `rollback_status`, or `error` value from the runtime
export. Use the [status and error reference](STATUS_AND_ERROR_REFERENCE.md) for
its meaning and one safe operator response. Similar wording in a panel or
console is not a substitute for the exported value.

Contributor-only test-environment failures belong in
[release validation](RELEASE_VALIDATION.md#avoid-validation-environment-pitfalls),
not in the operator recovery path.
