# RandomDay - SandboxSettings dictionary

Version: `v0.3.16-alpha`

This is the complete runtime dictionary for the 46 SandboxSettings keys used by every RandomDay profile.
The dictionary converts raw values into domain scores and bounded player/admin wording; it never replaces the raw value.

| Key | Player meaning | Domain | Type | Baseline | Harder when |
|---|---|---|---|---:|---|
| AllowCharacterReset | character reset | recovery | boolean | n/a | context |
| AllowIronMode | iron mode | recovery | boolean | n/a | context |
| AllowPagers | pagers | resources | boolean | n/a | context |
| AllowRecipeSharing | recipe sharing | resources | boolean | n/a | context |
| AllowTransmog | transmog | resources | boolean | n/a | context |
| BaseInventorySize | base inventory size | resources | number | 12 | low |
| BonusPerkPoints | bonus perk points | resources | number | 0 | low |
| BridgeSupports | bridge support limit | environment | number | 0 | high |
| ContinenceSpeedMultiplier | continence rate | survival | multiplier | 1.0 | high |
| DamageToAlliesMultiplier | friendly-fire damage | combat | multiplier | 1.0 | high |
| DayNightCycleSpeedMultiplier | day-night cycle speed | environment | multiplier | 1.0 | high |
| DayNightCycleState | day-night state | environment | enum | n/a | context |
| DeathPenalties | death penalties | recovery | enum | n/a | context |
| DetectionSpeedMultiplier | enemy detection speed | combat | multiplier | 1.0 | high |
| DisableResearchMinigame | research minigame | resources | boolean | n/a | context |
| DurabilityLossOnDeathMultiplier | durability loss on death | recovery | multiplier | 1.0 | high |
| EnemyAccuracy | enemy accuracy | combat | enum | n/a | context |
| EnemyDeployableDamageMultiplier | enemy damage to defenses | combat | multiplier | 1.0 | high |
| EnemyHealthMultiplier | enemy resilience | combat | multiplier | 1.0 | high |
| EnemyPlayerDamageMultiplier | enemy damage to players | combat | multiplier | 1.0 | high |
| EnemySpawnRate | enemy frequency | combat | multiplier | 1.0 | high |
| FatigueSpeedMultiplier | fatigue rate | survival | multiplier | 1.0 | high |
| FirstTimeStartingWeapon | starting weapon provision | resources | number | 0 | low |
| FoodSpoilSpeedMultiplier | food spoilage | resources | multiplier | 1.0 | high |
| GameDifficulty | game difficulty | combat | enum | n/a | context |
| HardcoreMode | hardcore mode | recovery | boolean | n/a | context |
| HomeWorlds | home worlds | environment | boolean | n/a | context |
| HostAccessPlayerCorpses | host corpse access | recovery | boolean | n/a | context |
| HungerSpeedMultiplier | hunger rate | survival | multiplier | 1.0 | high |
| InvisibleRadiation | invisible radiation | environment | boolean | n/a | context |
| ItemDurabilityMultiplier | item durability | resources | multiplier | 1.0 | low |
| ItemStackSizeMultiplier | stack capacity | resources | multiplier | 1.0 | low |
| ItemWeightMultiplier | item weight | resources | multiplier | 1.0 | high |
| LootRespawnEnabled | loot respawn | resources | boolean | n/a | context |
| PlayerFurnitureDestruction | player furniture destruction | combat | boolean | n/a | context |
| PlayerXPGainMultiplier | experience gain | resources | multiplier | 1.0 | low |
| PowerSocketsOffAtNight | night power | environment | boolean | n/a | context |
| RadiationDealsDamage | radiation damage | environment | boolean | n/a | context |
| RefrigerationEffectivenessMultiplier | refrigeration | resources | multiplier | 1.0 | low |
| ShowDeathMessages | death messages | recovery | boolean | n/a | context |
| SinkRefillRate | sink refill rate | resources | multiplier | 1.0 | low |
| StorageByTag | storage by tag | resources | boolean | n/a | context |
| StructuralSupportLimit | structural support limit | environment | number | 0 | high |
| TaintedSinkWater | tainted sink water | survival | boolean | n/a | context |
| ThirstSpeedMultiplier | thirst rate | survival | multiplier | 1.0 | high |
| WeatherFrequency | weather frequency | environment | enum | n/a | context |

## Score bands

| Score through | Rating | Plain meaning |
|---:|---|---|
| 0.8 | Relief conditions | relief |
| 1.7 | Favorable conditions | favorable |
| 2.6 | Standard pressure | standard |
| 3.4 | Demanding conditions | demanding |
| 4.2 | Severe conditions | severe |
| 5.0 | Extreme conditions | extreme |
