# RandomDay - Compliance Test Family

Version: `v0.3.16-alpha`

A 17-day final exam across the facility's worst ideas.

**Play style:** rotating final exam
**Message tone:** triumphant corporate cruelty

## 17-Day Index

| Day | Profile | Conditions | Main pressure |
|---:|---|---|---|
| 1 | Compliance Intake | Standard pressure (1.97/5) | Combat pressure |
| 2 | Structural Compliance | Favorable conditions (1.38/5) | Environmental pressure |
| 3 | Hydration Compliance | Standard pressure (2.31/5) | Survival pressure |
| 4 | Supply Compliance | Favorable conditions (1.58/5) | Environmental pressure |
| 5 | Security Compliance | Standard pressure (2.19/5) | Combat pressure |
| 6 | Weather Compliance | Standard pressure (2.14/5) | Environmental pressure |
| 7 | Night Compliance | Standard pressure (2.2/5) | Combat pressure |
| 8 | Route Compliance | Standard pressure (1.93/5) | Environmental pressure |
| 9 | Ration Compliance | Standard pressure (2.35/5) | Survival pressure |
| 10 | Recovery Compliance | Favorable conditions (1.13/5) | Environmental pressure |
| 11 | Training Compliance | Favorable conditions (1.58/5) | Environmental pressure |
| 12 | Black Lab Compliance | Demanding conditions (2.67/5) | Combat pressure |
| 13 | Overtime Compliance | Standard pressure (2.51/5) | Survival pressure |
| 14 | Supply Miracle Compliance | Favorable conditions (1.22/5) | Environmental pressure |
| 15 | Accuracy Compliance | Standard pressure (2.17/5) | Combat pressure |
| 16 | Experimental Compliance | Standard pressure (2.22/5) | Combat pressure |
| 17 | Final Compliance Test | Demanding conditions (2.9/5) | Combat pressure |

## Day 1 - Compliance Intake

**Profile ID:** `compliance_test_compliance_intake`
**Overall conditions:** Standard pressure (1.97/5)
**Plain meaning:** Standard pressure. Combat pressure: Standard pressure is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry ammunition, keep a retreat route, and avoid fighting unsupported.

### Main effects

- Enemy accuracy: accurate.
- Friendly-fire damage is far below normal (0.25x).
- Durability loss on death is far below normal (0.25x).
- Stack capacity is well above normal (2x).
- Power sockets switch off at night.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.23/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (1.9/5) | Daily survival needs are close to normal. |
| Resource pressure | standard (1.7/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.22/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.5/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **compliance orientation**
- Maximum active groups: **1**
- Mixed encounter chance: **0.091**
- Special event chance: **2**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 12 | Base inventory size is standard pressure at 12. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.0 | Continence rate is near normal at 1x. |
| DamageToAlliesMultiplier | 0.25 | Friendly-fire damage is far below normal at 0.25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Day-night cycle speed is near normal at 1x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 1.4 | Enemy detection speed is above normal at 1.4x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.25 | Durability loss on death is far below normal at 0.25x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.3 | Enemy resilience is above normal at 1.3x. |
| EnemyPlayerDamageMultiplier | 1.4 | Enemy damage to players is above normal at 1.4x. |
| EnemySpawnRate | 1.3 | Enemy frequency is above normal at 1.3x. |
| FatigueSpeedMultiplier | 1.0 | Fatigue rate is near normal at 1x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.0 | Hunger rate is near normal at 1x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.5 | Item durability is above normal at 1.5x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.8 | Item weight is below normal at 0.8x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.9 | Experience gain is well above normal at 1.9x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.0 | Thirst rate is near normal at 1x. |
| WeatherFrequency | 3 | Weather frequency is normal. |

### Optional adapter selection

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `compliance_test_compliance_intake`
- `lethal_lasers`: `standard_safety`

## Day 2 - Structural Compliance

**Profile ID:** `compliance_test_structural_compliance`
**Overall conditions:** Favorable conditions (1.38/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Standard pressure is the main pressure. Combat pressure: Favorable conditions is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Friendly-fire damage is far below normal (0x).
- Item durability is extreme (4x).
- Stack capacity is extreme (8x).
- Experience gain is extreme (2.7x).
- Durability loss on death is far below normal (0.05x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.44/5) | Hostile pressure is lighter than normal. |
| Survival pressure | favorable (1.34/5) | Daily survival needs are forgiving. |
| Resource pressure | favorable (1.07/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (1.91/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.2/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **light encounters**
- Theme: **compliance preparation**
- Maximum active groups: **1**
- Mixed encounter chance: **0.036**
- Special event chance: **0**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 26 | Base inventory size is relief conditions at 26. |
| BonusPerkPoints | 7 | Bonus perk points is relief conditions at 7. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 0.65 | Continence rate is below normal at 0.65x. |
| DamageToAlliesMultiplier | 0.0 | Friendly-fire damage is far below normal at 0x. |
| DayNightCycleSpeedMultiplier | 0.9 | Day-night cycle speed is near normal at 0.9x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 0 | Death penalties is minimal. |
| DetectionSpeedMultiplier | 0.9 | Enemy detection speed is near normal at 0.9x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.05 | Durability loss on death is far below normal at 0.05x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.1 | Enemy damage to defenses is far below normal at 0.1x. |
| EnemyHealthMultiplier | 1.1 | Enemy resilience is near normal at 1.1x. |
| EnemyPlayerDamageMultiplier | 0.9 | Enemy damage to players is near normal at 0.9x. |
| EnemySpawnRate | 0.7 | Enemy frequency is below normal at 0.7x. |
| FatigueSpeedMultiplier | 0.65 | Fatigue rate is below normal at 0.65x. |
| FirstTimeStartingWeapon | 2 | Starting weapon provision is standard pressure at 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Food spoilage is below normal at 0.75x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.65 | Hunger rate is below normal at 0.65x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 4.0 | Item durability is extreme at 4x. |
| ItemStackSizeMultiplier | 8.0 | Stack capacity is extreme at 8x. |
| ItemWeightMultiplier | 0.4 | Item weight is far below normal at 0.4x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.7 | Experience gain is extreme at 2.7x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.5 | Refrigeration is above normal at 1.5x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 2.0 | Sink refill rate is well above normal at 2x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.65 | Thirst rate is below normal at 0.65x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `compliance_test_structural_compliance`
- `lethal_lasers`: `low_hazard`

## Day 3 - Hydration Compliance

**Profile ID:** `compliance_test_hydration_compliance`
**Overall conditions:** Standard pressure (2.31/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Sink water may be unsafe.
- Experience gain is well above normal (2.3x).
- Enemy accuracy: accurate.
- Thirst rate is well above normal (2.1x).
- Friendly-fire damage is far below normal (0.25x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.41/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (3.05/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.83/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.22/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.5/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **compliance bio resource**
- Maximum active groups: **1**
- Mixed encounter chance: **0.118**
- Special event chance: **8**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 12 | Base inventory size is standard pressure at 12. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.45 | Continence rate is above normal at 1.45x. |
| DamageToAlliesMultiplier | 0.25 | Friendly-fire damage is far below normal at 0.25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Day-night cycle speed is near normal at 1x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 1.5 | Enemy detection speed is above normal at 1.5x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.25 | Durability loss on death is far below normal at 0.25x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 0.9 | Enemy damage to defenses is near normal at 0.9x. |
| EnemyHealthMultiplier | 1.4 | Enemy resilience is above normal at 1.4x. |
| EnemyPlayerDamageMultiplier | 1.5 | Enemy damage to players is above normal at 1.5x. |
| EnemySpawnRate | 1.3 | Enemy frequency is above normal at 1.3x. |
| FatigueSpeedMultiplier | 1.1 | Fatigue rate is near normal at 1.1x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Food spoilage is above normal at 1.25x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.5 | Hunger rate is above normal at 1.5x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.25 | Item durability is above normal at 1.25x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.8 | Item weight is below normal at 0.8x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.3 | Experience gain is well above normal at 2.3x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.75 | Refrigeration is below normal at 0.75x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.25 | Sink refill rate is far below normal at 0.25x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.1 | Thirst rate is well above normal at 2.1x. |
| WeatherFrequency | 3 | Weather frequency is normal. |

### Optional adapter selection

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `compliance_test_hydration_compliance`
- `lethal_lasers`: `standard_safety`

## Day 4 - Supply Compliance

**Profile ID:** `compliance_test_supply_compliance`
**Overall conditions:** Favorable conditions (1.58/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Standard pressure is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Item durability is extreme (2.5x).
- Stack capacity is extreme (14x).
- Experience gain is extreme (2.9x).
- Sink refill rate is extreme (2.5x).
- Durability loss on death is far below normal (0.05x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (1.86/5) | Hostile pressure is close to normal. |
| Survival pressure | favorable (1.5/5) | Daily survival needs are forgiving. |
| Resource pressure | favorable (0.99/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (1.93/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.44/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **light encounters**
- Theme: **compliance loot mobility**
- Maximum active groups: **1**
- Mixed encounter chance: **0.073**
- Special event chance: **2**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 30 | Base inventory size is relief conditions at 30. |
| BonusPerkPoints | 3 | Bonus perk points is favorable conditions at 3. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 0.75 | Continence rate is below normal at 0.75x. |
| DamageToAlliesMultiplier | 0.25 | Friendly-fire damage is far below normal at 0.25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Day-night cycle speed is near normal at 1x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 1.1 | Enemy detection speed is near normal at 1.1x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.05 | Durability loss on death is far below normal at 0.05x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 0.5 | Enemy damage to defenses is far below normal at 0.5x. |
| EnemyHealthMultiplier | 1.2 | Enemy resilience is above normal at 1.2x. |
| EnemyPlayerDamageMultiplier | 1.1 | Enemy damage to players is near normal at 1.1x. |
| EnemySpawnRate | 1.0 | Enemy frequency is near normal at 1x. |
| FatigueSpeedMultiplier | 0.75 | Fatigue rate is below normal at 0.75x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.6 | Food spoilage is below normal at 0.6x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.75 | Hunger rate is below normal at 0.75x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 2.5 | Item durability is extreme at 2.5x. |
| ItemStackSizeMultiplier | 14.0 | Stack capacity is extreme at 14x. |
| ItemWeightMultiplier | 0.3 | Item weight is far below normal at 0.3x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.9 | Experience gain is extreme at 2.9x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.5 | Refrigeration is above normal at 1.5x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 2.5 | Sink refill rate is extreme at 2.5x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.75 | Thirst rate is below normal at 0.75x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `compliance_test_supply_compliance`
- `lethal_lasers`: `low_hazard`

## Day 5 - Security Compliance

**Profile ID:** `compliance_test_security_compliance`
**Overall conditions:** Standard pressure (2.19/5)
**Plain meaning:** Standard pressure. Combat pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry ammunition, keep a retreat route, and avoid fighting unsupported.

### Main effects

- Enemy detection speed is extreme (2.8x).
- Experience gain is extreme (2.7x).
- Friendly-fire damage is far below normal (0.1x).
- Enemy accuracy: accurate.
- Game difficulty: hard.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | demanding (2.84/5) | Hostile pressure is elevated; prepare before engaging. |
| Survival pressure | standard (1.94/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.65/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.17/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.51/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **heavy encounters**
- Theme: **compliance security**
- Maximum active groups: **2**
- Mixed encounter chance: **0.155**
- Special event chance: **14**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 12 | Base inventory size is standard pressure at 12. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.0 | Continence rate is near normal at 1x. |
| DamageToAlliesMultiplier | 0.1 | Friendly-fire damage is far below normal at 0.1x. |
| DayNightCycleSpeedMultiplier | 1.0 | Day-night cycle speed is near normal at 1x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 2.8 | Enemy detection speed is extreme at 2.8x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.3 | Durability loss on death is far below normal at 0.3x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.5 | Enemy resilience is above normal at 1.5x. |
| EnemyPlayerDamageMultiplier | 1.7 | Enemy damage to players is well above normal at 1.7x. |
| EnemySpawnRate | 1.9 | Enemy frequency is well above normal at 1.9x. |
| FatigueSpeedMultiplier | 1.15 | Fatigue rate is near normal at 1.15x. |
| FirstTimeStartingWeapon | 4 | Starting weapon provision is favorable conditions at 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.0 | Hunger rate is near normal at 1x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.25 | Item durability is above normal at 1.25x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.8 | Item weight is below normal at 0.8x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.7 | Experience gain is extreme at 2.7x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.0 | Thirst rate is near normal at 1x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `compliance_test_security_compliance`
- `lethal_lasers`: `moderate_hazard`

## Day 6 - Weather Compliance

**Profile ID:** `compliance_test_weather_compliance`
**Overall conditions:** Standard pressure (2.14/5)
**Plain meaning:** Standard pressure. Environmental pressure: Standard pressure is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Verify power, water, shelter, and hazard protection before leaving base.

### Main effects

- Weather frequency: very frequent.
- Experience gain is well above normal (2.2x).
- Enemy accuracy: accurate.
- Friendly-fire damage is far below normal (0.25x).
- Durability loss on death is far below normal (0.25x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.42/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (2.13/5) | Daily survival needs are close to normal. |
| Resource pressure | standard (1.79/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.52/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.5/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **compliance weather**
- Maximum active groups: **1**
- Mixed encounter chance: **0.118**
- Special event chance: **10**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 12 | Base inventory size is standard pressure at 12. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.0 | Continence rate is near normal at 1x. |
| DamageToAlliesMultiplier | 0.25 | Friendly-fire damage is far below normal at 0.25x. |
| DayNightCycleSpeedMultiplier | 1.25 | Day-night cycle speed is above normal at 1.25x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 1.5 | Enemy detection speed is above normal at 1.5x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.25 | Durability loss on death is far below normal at 0.25x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.4 | Enemy resilience is above normal at 1.4x. |
| EnemyPlayerDamageMultiplier | 1.4 | Enemy damage to players is above normal at 1.4x. |
| EnemySpawnRate | 1.4 | Enemy frequency is above normal at 1.4x. |
| FatigueSpeedMultiplier | 1.3 | Fatigue rate is above normal at 1.3x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Food spoilage is above normal at 1.25x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.1 | Hunger rate is near normal at 1.1x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.1 | Item durability is near normal at 1.1x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.8 | Item weight is below normal at 0.8x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.2 | Experience gain is well above normal at 2.2x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.8 | Refrigeration is below normal at 0.8x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.75 | Sink refill rate is below normal at 0.75x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.35 | Thirst rate is above normal at 1.35x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `compliance_test_weather_compliance`
- `lethal_lasers`: `electrical_hazard_light`

## Day 7 - Night Compliance

**Profile ID:** `compliance_test_night_compliance`
**Overall conditions:** Standard pressure (2.2/5)
**Plain meaning:** Standard pressure. Combat pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry ammunition, keep a retreat route, and avoid fighting unsupported.

### Main effects

- Stack capacity is extreme (3x).
- Experience gain is extreme (3x).
- Enemy detection speed is well above normal (2.3x).
- Day-night state: night-biased.
- Enemy accuracy: accurate.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | demanding (2.82/5) | Hostile pressure is elevated; prepare before engaging. |
| Survival pressure | standard (2.05/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.53/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.33/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.49/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **heavy encounters**
- Theme: **compliance night**
- Maximum active groups: **2**
- Mixed encounter chance: **0.155**
- Special event chance: **16**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 16 | Base inventory size is favorable conditions at 16. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 0.95 | Continence rate is near normal at 0.95x. |
| DamageToAlliesMultiplier | 0.25 | Friendly-fire damage is far below normal at 0.25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Day-night cycle speed is near normal at 1x. |
| DayNightCycleState | 2 | Day-night state is night-biased. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 2.3 | Enemy detection speed is well above normal at 2.3x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.2 | Durability loss on death is far below normal at 0.2x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.5 | Enemy resilience is above normal at 1.5x. |
| EnemyPlayerDamageMultiplier | 1.7 | Enemy damage to players is well above normal at 1.7x. |
| EnemySpawnRate | 2.1 | Enemy frequency is well above normal at 2.1x. |
| FatigueSpeedMultiplier | 1.7 | Fatigue rate is well above normal at 1.7x. |
| FirstTimeStartingWeapon | 5 | Starting weapon provision is favorable conditions at 5. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.95 | Hunger rate is near normal at 0.95x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.5 | Item durability is above normal at 1.5x. |
| ItemStackSizeMultiplier | 3.0 | Stack capacity is extreme at 3x. |
| ItemWeightMultiplier | 0.6 | Item weight is below normal at 0.6x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 3.0 | Experience gain is extreme at 3x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.95 | Thirst rate is near normal at 0.95x. |
| WeatherFrequency | 4 | Weather frequency is frequent. |

### Optional adapter selection

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `compliance_test_night_compliance`
- `lethal_lasers`: `night_visible_moderate`

## Day 8 - Route Compliance

**Profile ID:** `compliance_test_route_compliance`
**Overall conditions:** Standard pressure (1.93/5)
**Plain meaning:** Standard pressure. Environmental pressure: Standard pressure is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Verify power, water, shelter, and hazard protection before leaving base.

### Main effects

- Day-night cycle speed is extreme (3x).
- Stack capacity is extreme (4x).
- Experience gain is extreme (3.1x).
- Durability loss on death is far below normal (0.15x).
- Enemy accuracy: accurate.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.46/5) | Hostile pressure is close to normal. |
| Survival pressure | favorable (1.42/5) | Daily survival needs are forgiving. |
| Resource pressure | favorable (1.4/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (2.56/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.47/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **compliance route**
- Maximum active groups: **1**
- Mixed encounter chance: **0.137**
- Special event chance: **14**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 18 | Base inventory size is favorable conditions at 18. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 0.7 | Continence rate is below normal at 0.7x. |
| DamageToAlliesMultiplier | 0.25 | Friendly-fire damage is far below normal at 0.25x. |
| DayNightCycleSpeedMultiplier | 3.0 | Day-night cycle speed is extreme at 3x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 2.0 | Enemy detection speed is well above normal at 2x. |
| DisableResearchMinigame | true | Research bypass is enabled. |
| DurabilityLossOnDeathMultiplier | 0.15 | Durability loss on death is far below normal at 0.15x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 0.8 | Enemy damage to defenses is below normal at 0.8x. |
| EnemyHealthMultiplier | 1.1 | Enemy resilience is near normal at 1.1x. |
| EnemyPlayerDamageMultiplier | 1.4 | Enemy damage to players is above normal at 1.4x. |
| EnemySpawnRate | 1.7 | Enemy frequency is well above normal at 1.7x. |
| FatigueSpeedMultiplier | 0.7 | Fatigue rate is below normal at 0.7x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.9 | Food spoilage is near normal at 0.9x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.7 | Hunger rate is below normal at 0.7x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.25 | Item durability is above normal at 1.25x. |
| ItemStackSizeMultiplier | 4.0 | Stack capacity is extreme at 4x. |
| ItemWeightMultiplier | 0.6 | Item weight is below normal at 0.6x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 3.1 | Experience gain is extreme at 3.1x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.1 | Refrigeration is near normal at 1.1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.5 | Sink refill rate is above normal at 1.5x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.7 | Thirst rate is below normal at 0.7x. |
| WeatherFrequency | 3 | Weather frequency is normal. |

### Optional adapter selection

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `compliance_test_route_compliance`
- `lethal_lasers`: `low_to_moderate_hazard`

## Day 9 - Ration Compliance

**Profile ID:** `compliance_test_ration_compliance`
**Overall conditions:** Standard pressure (2.35/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Base inventory size is severe conditions (10).
- Sink water may be unsafe.
- Experience gain is well above normal (2.2x).
- Enemy accuracy: accurate.
- Friendly-fire damage is far below normal (0.25x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.29/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (3.08/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (2.22/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.17/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.53/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **compliance scarcity**
- Maximum active groups: **1**
- Mixed encounter chance: **0.109**
- Special event chance: **8**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 10 | Base inventory size is severe conditions at 10. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.25 | Continence rate is above normal at 1.25x. |
| DamageToAlliesMultiplier | 0.25 | Friendly-fire damage is far below normal at 0.25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Day-night cycle speed is near normal at 1x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 1.5 | Enemy detection speed is above normal at 1.5x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.35 | Durability loss on death is far below normal at 0.35x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.6 | Enemy resilience is above normal at 1.6x. |
| EnemyPlayerDamageMultiplier | 1.5 | Enemy damage to players is above normal at 1.5x. |
| EnemySpawnRate | 1.2 | Enemy frequency is above normal at 1.2x. |
| FatigueSpeedMultiplier | 1.3 | Fatigue rate is above normal at 1.3x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Food spoilage is well above normal at 2x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.9 | Hunger rate is well above normal at 1.9x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 0.75 | Item durability is below normal at 0.75x. |
| ItemStackSizeMultiplier | 1.0 | Stack capacity is near normal at 1x. |
| ItemWeightMultiplier | 1.1 | Item weight is near normal at 1.1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.2 | Experience gain is well above normal at 2.2x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.5 | Refrigeration is far below normal at 0.5x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.5 | Sink refill rate is far below normal at 0.5x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.8 | Thirst rate is well above normal at 1.8x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `compliance_test_ration_compliance`
- `lethal_lasers`: `standard_safety`

## Day 10 - Recovery Compliance

**Profile ID:** `compliance_test_recovery_compliance`
**Overall conditions:** Favorable conditions (1.13/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Favorable conditions is the main pressure. Recovery pressure: Favorable conditions is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Bonus perk points is relief conditions (10).
- Friendly-fire damage is far below normal (0x).
- Durability loss on death is far below normal (0x).
- Item durability is extreme (3x).
- Stack capacity is extreme (10x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.16/5) | Hostile pressure is lighter than normal. |
| Survival pressure | favorable (1.02/5) | Daily survival needs are forgiving. |
| Resource pressure | favorable (0.89/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | favorable (1.54/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.19/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **minimal encounters**
- Theme: **compliance recovery**
- Maximum active groups: **1**
- Mixed encounter chance: **0**
- Special event chance: **0**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 30 | Base inventory size is relief conditions at 30. |
| BonusPerkPoints | 10 | Bonus perk points is relief conditions at 10. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 0.45 | Continence rate is far below normal at 0.45x. |
| DamageToAlliesMultiplier | 0.0 | Friendly-fire damage is far below normal at 0x. |
| DayNightCycleSpeedMultiplier | 0.85 | Day-night cycle speed is near normal at 0.85x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 0 | Death penalties is minimal. |
| DetectionSpeedMultiplier | 0.6 | Enemy detection speed is below normal at 0.6x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.1 | Enemy damage to defenses is far below normal at 0.1x. |
| EnemyHealthMultiplier | 1.0 | Enemy resilience is near normal at 1x. |
| EnemyPlayerDamageMultiplier | 0.5 | Enemy damage to players is far below normal at 0.5x. |
| EnemySpawnRate | 0.5 | Enemy frequency is far below normal at 0.5x. |
| FatigueSpeedMultiplier | 0.45 | Fatigue rate is far below normal at 0.45x. |
| FirstTimeStartingWeapon | 2 | Starting weapon provision is standard pressure at 2. |
| FoodSpoilSpeedMultiplier | 0.4 | Food spoilage is far below normal at 0.4x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.45 | Hunger rate is far below normal at 0.45x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 3.0 | Item durability is extreme at 3x. |
| ItemStackSizeMultiplier | 10.0 | Stack capacity is extreme at 10x. |
| ItemWeightMultiplier | 0.3 | Item weight is far below normal at 0.3x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 4.0 | Experience gain is extreme at 4x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | false | Radiation damage is disabled. |
| RefrigerationEffectivenessMultiplier | 1.8 | Refrigeration is well above normal at 1.8x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 3.0 | Sink refill rate is extreme at 3x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.45 | Thirst rate is far below normal at 0.45x. |
| WeatherFrequency | 1 | Weather frequency is rare. |

### Optional adapter selection

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `compliance_test_recovery_compliance`
- `lethal_lasers`: `disabled_or_low_if_supported`

## Day 11 - Training Compliance

**Profile ID:** `compliance_test_training_compliance`
**Overall conditions:** Favorable conditions (1.58/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Standard pressure is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Bonus perk points is relief conditions (12).
- Durability loss on death is far below normal (0x).
- Stack capacity is extreme (5x).
- Experience gain is extreme (5.1x).
- Item durability is well above normal (2.25x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (1.84/5) | Hostile pressure is close to normal. |
| Survival pressure | favorable (1.58/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (0.9/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (1.96/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.43/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **light encounters**
- Theme: **compliance training**
- Maximum active groups: **1**
- Mixed encounter chance: **0.064**
- Special event chance: **3**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 24 | Base inventory size is relief conditions at 24. |
| BonusPerkPoints | 12 | Bonus perk points is relief conditions at 12. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 0.8 | Continence rate is below normal at 0.8x. |
| DamageToAlliesMultiplier | 0.25 | Friendly-fire damage is far below normal at 0.25x. |
| DayNightCycleSpeedMultiplier | 1.15 | Day-night cycle speed is near normal at 1.15x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 1.2 | Enemy detection speed is above normal at 1.2x. |
| DisableResearchMinigame | true | Research bypass is enabled. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 0.4 | Enemy damage to defenses is far below normal at 0.4x. |
| EnemyHealthMultiplier | 1.1 | Enemy resilience is near normal at 1.1x. |
| EnemyPlayerDamageMultiplier | 0.9 | Enemy damage to players is near normal at 0.9x. |
| EnemySpawnRate | 1.2 | Enemy frequency is above normal at 1.2x. |
| FatigueSpeedMultiplier | 0.8 | Fatigue rate is below normal at 0.8x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.8 | Food spoilage is below normal at 0.8x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.8 | Hunger rate is below normal at 0.8x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 2.25 | Item durability is well above normal at 2.25x. |
| ItemStackSizeMultiplier | 5.0 | Stack capacity is extreme at 5x. |
| ItemWeightMultiplier | 0.5 | Item weight is far below normal at 0.5x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 5.1 | Experience gain is extreme at 5.1x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.3 | Refrigeration is above normal at 1.3x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 2.0 | Sink refill rate is well above normal at 2x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.8 | Thirst rate is below normal at 0.8x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `compliance_test_training_compliance`
- `lethal_lasers`: `training_hazard`

## Day 12 - Black Lab Compliance

**Profile ID:** `compliance_test_black_lab_compliance`
**Overall conditions:** Demanding conditions (2.67/5)
**Plain meaning:** Demanding conditions. Combat pressure: Severe conditions is the main pressure. Survival pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry ammunition, keep a retreat route, and avoid fighting unsupported.

### Main effects

- Enemy accuracy: highly accurate.
- Game difficulty: very hard.
- Enemy frequency is extreme (2.8x).
- Enemy detection speed is extreme (2.7x).
- Enemy damage to players is extreme (2.6x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | severe (3.65/5) | Hostile pressure is elevated; prepare before engaging. |
| Survival pressure | standard (2.53/5) | Daily survival needs are close to normal. |
| Resource pressure | standard (1.75/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.22/5) | Environmental conditions are close to normal. |
| Recovery pressure | standard (1.79/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **extreme encounters**
- Theme: **compliance heavy test**
- Maximum active groups: **3**
- Mixed encounter chance: **0.209**
- Special event chance: **22**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 12 | Base inventory size is standard pressure at 12. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.0 | Continence rate is near normal at 1x. |
| DamageToAlliesMultiplier | 0.15 | Friendly-fire damage is far below normal at 0.15x. |
| DayNightCycleSpeedMultiplier | 1.0 | Day-night cycle speed is near normal at 1x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 2 | Death penalties is heavy. |
| DetectionSpeedMultiplier | 2.7 | Enemy detection speed is extreme at 2.7x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.4 | Durability loss on death is far below normal at 0.4x. |
| EnemyAccuracy | 4 | Enemy accuracy is highly accurate. |
| EnemyDeployableDamageMultiplier | 1.4 | Enemy damage to defenses is above normal at 1.4x. |
| EnemyHealthMultiplier | 2.3 | Enemy resilience is well above normal at 2.3x. |
| EnemyPlayerDamageMultiplier | 2.6 | Enemy damage to players is extreme at 2.6x. |
| EnemySpawnRate | 2.8 | Enemy frequency is extreme at 2.8x. |
| FatigueSpeedMultiplier | 1.15 | Fatigue rate is near normal at 1.15x. |
| FirstTimeStartingWeapon | 1 | Starting weapon provision is standard pressure at 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Food spoilage is near normal at 1.15x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.15 | Hunger rate is near normal at 1.15x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.1 | Item durability is near normal at 1.1x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.8 | Item weight is below normal at 0.8x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 4.1 | Experience gain is extreme at 4.1x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.85 | Refrigeration is near normal at 0.85x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.75 | Sink refill rate is below normal at 0.75x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.15 | Thirst rate is near normal at 1.15x. |
| WeatherFrequency | 3 | Weather frequency is normal. |

### Optional adapter selection

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `compliance_test_black_lab_compliance`
- `lethal_lasers`: `high_hazard`

## Day 13 - Overtime Compliance

**Profile ID:** `compliance_test_overtime_compliance`
**Overall conditions:** Standard pressure (2.51/5)
**Plain meaning:** Standard pressure. Survival pressure: Severe conditions is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Game difficulty: very hard.
- Base inventory size is severe conditions (10).
- Experience gain is extreme (2.6x).
- Sink water may be unsafe.
- Hunger rate is well above normal (2.2x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.6/5) | Hostile pressure is close to normal. |
| Survival pressure | severe (3.53/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (2.09/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.01/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.53/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **compliance endurance**
- Maximum active groups: **1**
- Mixed encounter chance: **0.127**
- Special event chance: **7**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 10 | Base inventory size is severe conditions at 10. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.35 | Continence rate is above normal at 1.35x. |
| DamageToAlliesMultiplier | 0.25 | Friendly-fire damage is far below normal at 0.25x. |
| DayNightCycleSpeedMultiplier | 0.3 | Day-night cycle speed is far below normal at 0.3x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 1.5 | Enemy detection speed is above normal at 1.5x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.35 | Durability loss on death is far below normal at 0.35x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 0.9 | Enemy damage to defenses is near normal at 0.9x. |
| EnemyHealthMultiplier | 1.7 | Enemy resilience is well above normal at 1.7x. |
| EnemyPlayerDamageMultiplier | 1.7 | Enemy damage to players is well above normal at 1.7x. |
| EnemySpawnRate | 1.1 | Enemy frequency is near normal at 1.1x. |
| FatigueSpeedMultiplier | 2.0 | Fatigue rate is well above normal at 2x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Food spoilage is well above normal at 1.8x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 2.2 | Hunger rate is well above normal at 2.2x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 0.9 | Item durability is near normal at 0.9x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.2 | Item weight is above normal at 1.2x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.6 | Experience gain is extreme at 2.6x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.65 | Refrigeration is below normal at 0.65x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.35 | Sink refill rate is far below normal at 0.35x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.2 | Thirst rate is well above normal at 2.2x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `compliance_test_overtime_compliance`
- `lethal_lasers`: `standard_safety`

## Day 14 - Supply Miracle Compliance

**Profile ID:** `compliance_test_supply_miracle_compliance`
**Overall conditions:** Favorable conditions (1.22/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Favorable conditions is the main pressure. Combat pressure: Favorable conditions is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Game difficulty: very hard.
- Base inventory size is relief conditions (40).
- Bonus perk points is relief conditions (12).
- Friendly-fire damage is far below normal (0x).
- Durability loss on death is far below normal (0x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.54/5) | Hostile pressure is close to normal. |
| Survival pressure | favorable (0.86/5) | Daily survival needs are forgiving. |
| Resource pressure | relief (0.79/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | favorable (1.58/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.19/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **minimal encounters**
- Theme: **compliance relief**
- Maximum active groups: **1**
- Mixed encounter chance: **0**
- Special event chance: **0**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 40 | Base inventory size is relief conditions at 40. |
| BonusPerkPoints | 12 | Bonus perk points is relief conditions at 12. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 0.35 | Continence rate is far below normal at 0.35x. |
| DamageToAlliesMultiplier | 0.0 | Friendly-fire damage is far below normal at 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Day-night cycle speed is near normal at 1x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 0 | Death penalties is minimal. |
| DetectionSpeedMultiplier | 0.8 | Enemy detection speed is below normal at 0.8x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.1 | Enemy damage to defenses is far below normal at 0.1x. |
| EnemyHealthMultiplier | 1.0 | Enemy resilience is near normal at 1x. |
| EnemyPlayerDamageMultiplier | 0.6 | Enemy damage to players is below normal at 0.6x. |
| EnemySpawnRate | 0.6 | Enemy frequency is below normal at 0.6x. |
| FatigueSpeedMultiplier | 0.35 | Fatigue rate is far below normal at 0.35x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.25 | Food spoilage is far below normal at 0.25x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.35 | Hunger rate is far below normal at 0.35x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 6.0 | Item durability is extreme at 6x. |
| ItemStackSizeMultiplier | 20.0 | Stack capacity is extreme at 20x. |
| ItemWeightMultiplier | 0.2 | Item weight is far below normal at 0.2x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 5.6 | Experience gain is extreme at 5.6x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | false | Radiation damage is disabled. |
| RefrigerationEffectivenessMultiplier | 2.0 | Refrigeration is well above normal at 2x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 5.0 | Sink refill rate is extreme at 5x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.35 | Thirst rate is far below normal at 0.35x. |
| WeatherFrequency | 1 | Weather frequency is rare. |

### Optional adapter selection

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `compliance_test_supply_miracle_compliance`
- `lethal_lasers`: `disabled_or_low_if_supported`

## Day 15 - Accuracy Compliance

**Profile ID:** `compliance_test_accuracy_compliance`
**Overall conditions:** Standard pressure (2.17/5)
**Plain meaning:** Standard pressure. Combat pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry ammunition, keep a retreat route, and avoid fighting unsupported.

### Main effects

- Game difficulty: very hard.
- Friendly-fire damage is far below normal (0x).
- Experience gain is extreme (3.3x).
- Enemy accuracy: accurate.
- Enemy detection speed is well above normal (2x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | demanding (2.75/5) | Hostile pressure is elevated; prepare before engaging. |
| Survival pressure | standard (1.98/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.67/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.17/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.51/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **heavy encounters**
- Theme: **compliance precision**
- Maximum active groups: **2**
- Mixed encounter chance: **0.155**
- Special event chance: **14**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 12 | Base inventory size is standard pressure at 12. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.0 | Continence rate is near normal at 1x. |
| DamageToAlliesMultiplier | 0.0 | Friendly-fire damage is far below normal at 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Day-night cycle speed is near normal at 1x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 1 | Death penalties is standard. |
| DetectionSpeedMultiplier | 2.0 | Enemy detection speed is well above normal at 2x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.3 | Durability loss on death is far below normal at 0.3x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 0.8 | Enemy damage to defenses is below normal at 0.8x. |
| EnemyHealthMultiplier | 1.3 | Enemy resilience is above normal at 1.3x. |
| EnemyPlayerDamageMultiplier | 1.9 | Enemy damage to players is well above normal at 1.9x. |
| EnemySpawnRate | 1.5 | Enemy frequency is above normal at 1.5x. |
| FatigueSpeedMultiplier | 1.25 | Fatigue rate is above normal at 1.25x. |
| FirstTimeStartingWeapon | 4 | Starting weapon provision is favorable conditions at 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.0 | Hunger rate is near normal at 1x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.0 | Item durability is near normal at 1x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.8 | Item weight is below normal at 0.8x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 3.3 | Experience gain is extreme at 3.3x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.0 | Thirst rate is near normal at 1x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `compliance_test_accuracy_compliance`
- `lethal_lasers`: `moderate_hazard`

## Day 16 - Experimental Compliance

**Profile ID:** `compliance_test_experimental_compliance`
**Overall conditions:** Standard pressure (2.22/5)
**Plain meaning:** Standard pressure. Combat pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry ammunition, keep a retreat route, and avoid fighting unsupported.

### Main effects

- Enemy accuracy: highly accurate.
- Game difficulty: very hard.
- Some radiation may lack a visible warning.
- Weather frequency: very frequent.
- Base inventory size is relief conditions (42).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | demanding (2.8/5) | Hostile pressure is elevated; prepare before engaging. |
| Survival pressure | standard (2.36/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (0.99/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (2.59/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.67/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **extreme encounters**
- Theme: **compliance experimental**
- Maximum active groups: **3**
- Mixed encounter chance: **0.2**
- Special event chance: **20**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 42 | Base inventory size is relief conditions at 42. |
| BonusPerkPoints | 15 | Bonus perk points is relief conditions at 15. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.2 | Continence rate is above normal at 1.2x. |
| DamageToAlliesMultiplier | 0.0 | Friendly-fire damage is far below normal at 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | Day-night cycle speed is above normal at 1.5x. |
| DayNightCycleState | 1 | Day-night state is day-biased. |
| DeathPenalties | 2 | Death penalties is heavy. |
| DetectionSpeedMultiplier | 0.8 | Enemy detection speed is below normal at 0.8x. |
| DisableResearchMinigame | true | Research bypass is enabled. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 4 | Enemy accuracy is highly accurate. |
| EnemyDeployableDamageMultiplier | 0.7 | Enemy damage to defenses is below normal at 0.7x. |
| EnemyHealthMultiplier | 1.9 | Enemy resilience is well above normal at 1.9x. |
| EnemyPlayerDamageMultiplier | 1.3 | Enemy damage to players is above normal at 1.3x. |
| EnemySpawnRate | 1.8 | Enemy frequency is well above normal at 1.8x. |
| FatigueSpeedMultiplier | 0.8 | Fatigue rate is below normal at 0.8x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.4 | Food spoilage is far below normal at 0.4x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.8 | Hunger rate is below normal at 0.8x. |
| InvisibleRadiation | true | Some radiation may lack a visible warning. |
| ItemDurabilityMultiplier | 5.0 | Item durability is extreme at 5x. |
| ItemStackSizeMultiplier | 15.0 | Stack capacity is extreme at 15x. |
| ItemWeightMultiplier | 0.2 | Item weight is far below normal at 0.2x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 6.1 | Experience gain is extreme at 6.1x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 2.0 | Refrigeration is well above normal at 2x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.0 | Sink refill rate is far below normal at 0x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.2 | Thirst rate is above normal at 1.2x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `compliance_test_experimental_compliance`
- `lethal_lasers`: `weird_cycle_or_standard`

## Day 17 - Final Compliance Test

**Profile ID:** `compliance_test_final_compliance_test`
**Overall conditions:** Demanding conditions (2.9/5)
**Plain meaning:** Demanding conditions. Combat pressure: Severe conditions is the main pressure. Survival pressure: Demanding conditions is the next strongest factor.
**Player advice:** Carry ammunition, keep a retreat route, and avoid fighting unsupported.

### Main effects

- Enemy detection speed is extreme (3.2x).
- Enemy accuracy: highly accurate.
- Enemy damage to players is extreme (3.1x).
- Enemy frequency is extreme (3.7x).
- Game difficulty: very hard.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | severe (4.01/5) | Hostile pressure is severe; avoid unsupported fights. |
| Survival pressure | demanding (2.72/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.86/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.55/5) | Environmental conditions are close to normal. |
| Recovery pressure | standard (1.81/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **capstone encounters**
- Theme: **compliance capstone**
- Maximum active groups: **3**
- Mixed encounter chance: **0.255**
- Special event chance: **30**

### Exact sandbox settings

| Setting | Raw value | Translated meaning |
|---|---:|---|
| AllowCharacterReset | true | Character reset remains available. |
| AllowIronMode | false | Iron mode is disabled. |
| AllowPagers | true | Pagers are available. |
| AllowRecipeSharing | true | Recipe sharing is available. |
| AllowTransmog | true | Appearance customization is available. |
| BaseInventorySize | 12 | Base inventory size is standard pressure at 12. |
| BonusPerkPoints | 0 | Bonus perk points is standard pressure at 0. |
| BridgeSupports | 0 | Bridge support limit is standard pressure at 0. |
| ContinenceSpeedMultiplier | 1.1 | Continence rate is near normal at 1.1x. |
| DamageToAlliesMultiplier | 0.1 | Friendly-fire damage is far below normal at 0.1x. |
| DayNightCycleSpeedMultiplier | 1.45 | Day-night cycle speed is above normal at 1.45x. |
| DayNightCycleState | 0 | Day-night state is normal cycle. |
| DeathPenalties | 2 | Death penalties is heavy. |
| DetectionSpeedMultiplier | 3.2 | Enemy detection speed is extreme at 3.2x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.5 | Durability loss on death is far below normal at 0.5x. |
| EnemyAccuracy | 4 | Enemy accuracy is highly accurate. |
| EnemyDeployableDamageMultiplier | 2.0 | Enemy damage to defenses is well above normal at 2x. |
| EnemyHealthMultiplier | 2.9 | Enemy resilience is extreme at 2.9x. |
| EnemyPlayerDamageMultiplier | 3.1 | Enemy damage to players is extreme at 3.1x. |
| EnemySpawnRate | 3.7 | Enemy frequency is extreme at 3.7x. |
| FatigueSpeedMultiplier | 1.25 | Fatigue rate is above normal at 1.25x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Food spoilage is above normal at 1.6x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.35 | Hunger rate is above normal at 1.35x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.0 | Item durability is near normal at 1x. |
| ItemStackSizeMultiplier | 3.0 | Stack capacity is extreme at 3x. |
| ItemWeightMultiplier | 0.9 | Item weight is near normal at 0.9x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 4.8 | Experience gain is extreme at 4.8x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.6 | Refrigeration is below normal at 0.6x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.5 | Sink refill rate is far below normal at 0.5x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.35 | Thirst rate is above normal at 1.35x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `compliance_test_final_compliance_test`
- `lethal_lasers`: `overcharged_high_hazard`
