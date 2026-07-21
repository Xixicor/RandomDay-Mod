# Release validation

This page is for contributors and release maintainers. Players installing the
mod do not need to run these commands.

## Ordinary user proof

A release is understandable when a new reader can choose one of the two
packages, install it, identify the active profile and prepared profile, and
recover from a missing result by following the linked guide. Those reader tasks
must not require Git, PowerShell, Python, or checksum knowledge.

## Contributor checks

Run from the repository root:

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

When `luac` is available, syntax-check every shipped Lua file:

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

The Lua runtime tests require `lupa`. A missing Lua interpreter or `lupa`
installation is an unavailable test capability, not a passing result.

## Release checks

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

The release check verifies these conditions:

- `VERSION` and `RandomDay/.randomday_version` match.
- Only the current version exists under `releases/`.
- The dedicated and singleplayer/LAN ZIPs are complete alternatives.
- Both archives contain the canonical `RandomDay/Scripts/main.lua` path and no
  case-colliding loader.
- Package mode markers are `dedicated_server` and `singleplayer_manual`.
- ZIP bytes are deterministic and match `CHECKSUMS.sha256`.
- No runtime data, private configuration, credentials, caches, or test output
  is packaged.
- All local documentation links and 27 locale entry pages validate.

## Avoid validation environment pitfalls

- Run repository-writing checks serially so two processes do not replace the
  same temporary file at once.
- On Windows, check ZIP member names rather than using a case-insensitive file
  lookup to decide whether a lowercase loader exists.
- Confirm `mods.txt` and `enabled.txt` only in an installed-server test; they
  are not proof that source tests ran.
- Record a command timeout as incomplete. Do not convert it to pass or fail
  without the command's bounded output.
- Keep temporary files inside the repository's ignored `.tmp/` directory.

## Known limits

Local validation proves source, package, documentation, and fixture contracts.
It does not prove a particular server panel's startup order, a live client's
message layout, or a host-specific filesystem path. Record those as separate
integration results when they are tested.
