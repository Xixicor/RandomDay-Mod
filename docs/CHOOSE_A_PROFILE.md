# Choose the kind of game you want

RandomDay includes 289 ready-made sets of world rules. They are organized into
17 **families**, with 17 **profiles** in each family:

- a family is one broad play style, such as survival, building, stealth, or
  exploration;
- a profile is one complete set of rules inside that play style; and
- the profile number is called a day because RandomDay moves through those 17
  positions as the server restarts. It is not a real-world calendar day.

Start with the table below. Pick the row that sounds closest to the session you
want, then open one or two family pages to compare their exact effects.

## Start with a playstyle

| You want | Start with | Compare these effects |
|---|---|---|
| Frequent direct combat or sharper firefights | [Action](profiles/families/action.md), [Horde](profiles/families/horde.md), [Boss Hunt](profiles/families/boss_hunt.md), or [Precision](profiles/families/precision.md) | Enemy count, encounter tier, accuracy, damage, and recovery days |
| Detection, darkness, or patrol pressure | [Stealth](profiles/families/stealth.md), [Nightmare](profiles/families/nightmare.md), or [Security Lockdown](profiles/families/security_lockdown.md) | Visibility, detection speed, night bias, robots, and safe intervals |
| Hunger, weather, contamination, or attrition | [Survival](profiles/families/survival.md), [Weathered](profiles/families/weathered.md), or [Biohazard](profiles/families/biohazard.md) | Resources, water, radiation, weather, durability, and death penalties |
| Base growth, hauling, inventory, or supply planning | [Builder](profiles/families/builder.md) or [Logistics](profiles/families/logistics.md) | Stack size, inventory, weight, durability, power, and construction pressure |
| Travel, portals, loot routes, or exploration | [Expedition](profiles/families/expedition.md), [Anteverse](profiles/families/anteverse.md), or [Scavenger](profiles/families/scavenger.md) | Movement, portal pressure, rewards, route risk, and time away from base |
| Unpredictable combinations or a broad final challenge | [Experimental](profiles/families/experimental.md) or [Compliance Test](profiles/families/compliance_test.md) | Every day in these deliberately mixed progressions |

These suggestions are navigation, not substitutes for exact values. Each
family page lists the main effects, domain ratings, encounter context, all 46
sandbox settings, and optional adapter selections for every day.

## Confirm the exact family and day

1. Open the family page and compare all 17 day positions.
2. Use the [full profile reference](profiles/FULL_PROFILE_REFERENCE.md) to
   compare profile names and interpretation rules across all 289 combinations.
3. Use [sandbox setting keys](profiles/SANDBOX_SETTINGS_KEYS.md) to interpret
   each raw value, supported range, score band, and shipped profile default.
4. Use [`profiles.generated.json`](profiles/profiles.generated.json) when
   tooling needs the exact machine-readable profile, dictionary, and
   translation source.

## Configure the chosen experience

Follow [Choose an experience](CONFIGURATION.md#choose-an-experience) to set the
family mode, eligible family list, starting-day behavior, and sequential or
non-repeating-random day order. RandomDay persists the chosen order; recovery
does not silently reroll an in-progress family run.
