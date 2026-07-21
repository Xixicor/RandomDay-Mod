# Seventeen Families, Seventeen Days

RandomDay contains 17 playstyle families with 17 complete daily profiles in
each family. That produces 289 documented family/day combinations.

The family sets the broad style of a run. Days 1 through 17 provide that
family's progression in pressure, recovery, pacing, and resources. A run stores
one order containing every day ID exactly once. A restart advances to the next
stored position; RandomDay does not change families in the middle of the order.

## Selection Modes

| Mode | New-run behavior | During the run |
|---|---|---|
| `selected_run` | Uses `profile_family.selected_family`. | Keeps that family through all 17 stored positions. |
| `non_repeating_random_run` | Chooses an eligible unused family. | Keeps it through all 17 positions and avoids family repeats until the eligible list is exhausted. |
| `rotation_run` | Takes the next family in the configured order. | Keeps it through all 17 stored positions. |

The shipped configuration uses `non_repeating_random_run`. The family prepared
after the final stored position is still only prepared; it becomes active after
restart.
`cycle.start_day_mode` and `cycle.day_progression_mode` choose the first day and
day order without changing family selection.

## Families

- Action
- Survival
- Stealth
- Horde
- Boss Hunt
- Scavenger
- Builder
- Expedition
- Security Lockdown
- Biohazard
- Anteverse
- Nightmare
- Weathered
- Precision
- Logistics
- Experimental
- Compliance Test

Use the [generated profile index](profiles/README.md) to open one family or the
[full profile reference](profiles/FULL_PROFILE_REFERENCE.md) to review all 289
combinations. The [sandbox key reference](profiles/SANDBOX_SETTINGS_KEYS.md)
defines each supported value and shipped profile default.

## Custom Families And Days

Family source lives under:

```text
RandomDay/Scripts/ax_profiles/families/
```

The Markdown and JSON under `docs/profiles/` are generated references. Change
source, not generated output, then run the full profile/schema validation. A
custom set is not ready when only one day parses; all 17 days, configured
profile defaults, types, ranges, and the generated reference must agree.
