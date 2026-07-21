# RandomDay profile documentation

Version: `v0.3.16-alpha`

- Families: **17**
- Profiles: **289**
- SandboxSettings dictionary entries: **46**

Choose a family by gameplay intent in the [profile choice guide](../CHOOSE_A_PROFILE.md), then use this generated index for exact values.

These files are generated from the runtime Lua source and its dictionary/translation contract. They show the shipped `sandbox.profile_overrides` defaults; one server's configured values may differ:

- `profiles.generated.json`: machine-readable profiles, raw values, dictionary, and translations.
- `FULL_PROFILE_REFERENCE.md`: complete index and interpretation rules.
- `SANDBOX_SETTINGS_KEYS.md`: complete 46-key dictionary.
- `families/*.md`: detailed 17-day family references.

Regenerate with: `python -B tools/generate_profile_docs.py`
Check for drift with: `python -B tools/generate_profile_docs.py --check`
