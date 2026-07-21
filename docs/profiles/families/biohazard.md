# RandomDay - Biohazard Family

Version: `v0.3.16-alpha`

Pests, contamination, water problems, and legally vague hygiene.

**Play style:** pest and contamination survival
**Message tone:** sanitation/legal disclaimers

## 17-Day Index

| Day | Profile | Conditions | Main pressure |
|---:|---|---|---|
| 1 | Acceptable Contamination | Standard pressure (2.03/5) | Survival pressure |
| 2 | Open Floor Decontamination | Favorable conditions (1.43/5) | Survival pressure |
| 3 | Questionable Drinking Water Plus | Standard pressure (2.26/5) | Survival pressure |
| 4 | Specimen Supply Run | Favorable conditions (1.63/5) | Survival pressure |
| 5 | Containment Was Optional | Standard pressure (2.22/5) | Survival pressure |
| 6 | Sanitation Weather Event | Standard pressure (2.25/5) | Survival pressure |
| 7 | Night Disinfection Failure | Standard pressure (2.28/5) | Survival pressure |
| 8 | Route Contamination Notice | Standard pressure (1.99/5) | Environmental pressure |
| 9 | Ration Spoilage Hearing | Standard pressure (2.29/5) | Survival pressure |
| 10 | Clean Room Rumor | Favorable conditions (1.19/5) | Survival pressure |
| 11 | Training With Gloves | Favorable conditions (1.63/5) | Survival pressure |
| 12 | Black Lab Bio Review | Demanding conditions (2.61/5) | Combat pressure |
| 13 | Extended Quarantine Shift | Standard pressure (2.43/5) | Survival pressure |
| 14 | Supply Closet Sterile-ish | Favorable conditions (1.16/5) | Environmental pressure |
| 15 | Accuracy of Sneezing | Standard pressure (2.15/5) | Survival pressure |
| 16 | Experimental Exposure | Standard pressure (2.19/5) | Survival pressure |
| 17 | Final Containment Exam | Demanding conditions (2.88/5) | Combat pressure |

## Day 1 - Acceptable Contamination

**Profile ID:** `biohazard_acceptable_contamination`
**Overall conditions:** Standard pressure (2.03/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Sink water may be unsafe.
- Friendly-fire damage is far below normal (0.25x).
- Durability loss on death is far below normal (0.25x).
- Stack capacity is well above normal (2x).
- Power sockets switch off at night.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (1.9/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (2.64/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.77/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.22/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.5/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **contamination orientation**
- Maximum active groups: **1**
- Mixed encounter chance: **0.07**
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
| DetectionSpeedMultiplier | 1.0 | Enemy detection speed is near normal at 1x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.25 | Durability loss on death is far below normal at 0.25x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.1 | Enemy resilience is near normal at 1.1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Enemy damage to players is near normal at 1.1x. |
| EnemySpawnRate | 1.0 | Enemy frequency is near normal at 1x. |
| FatigueSpeedMultiplier | 1.0 | Fatigue rate is near normal at 1x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.4 | Hunger rate is above normal at 1.4x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.5 | Item durability is above normal at 1.5x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.9 | Item weight is near normal at 0.9x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.3 | Experience gain is above normal at 1.3x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.4 | Thirst rate is above normal at 1.4x. |
| WeatherFrequency | 3 | Weather frequency is normal. |

### Optional adapter selection

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `biohazard_acceptable_contamination`
- `lethal_lasers`: `standard_safety`

## Day 2 - Open Floor Decontamination

**Profile ID:** `biohazard_open_floor_decontamination`
**Overall conditions:** Favorable conditions (1.43/5)
**Plain meaning:** Favorable conditions. Survival pressure: Standard pressure is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Friendly-fire damage is far below normal (0x).
- Item durability is extreme (4x).
- Stack capacity is extreme (8x).
- Sink water may be unsafe.
- Durability loss on death is far below normal (0.05x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.18/5) | Hostile pressure is lighter than normal. |
| Survival pressure | standard (1.96/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.12/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (1.91/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.2/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **light encounters**
- Theme: **contamination preparation**
- Maximum active groups: **1**
- Mixed encounter chance: **0.028**
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
| DetectionSpeedMultiplier | 0.6 | Enemy detection speed is below normal at 0.6x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.05 | Durability loss on death is far below normal at 0.05x. |
| EnemyAccuracy | 1 | Enemy accuracy is reduced. |
| EnemyDeployableDamageMultiplier | 0.1 | Enemy damage to defenses is far below normal at 0.1x. |
| EnemyHealthMultiplier | 0.9 | Enemy resilience is near normal at 0.9x. |
| EnemyPlayerDamageMultiplier | 0.7 | Enemy damage to players is below normal at 0.7x. |
| EnemySpawnRate | 0.6 | Enemy frequency is below normal at 0.6x. |
| FatigueSpeedMultiplier | 0.65 | Fatigue rate is below normal at 0.65x. |
| FirstTimeStartingWeapon | 2 | Starting weapon provision is standard pressure at 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Food spoilage is below normal at 0.75x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.8 | Hunger rate is below normal at 0.8x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 4.0 | Item durability is extreme at 4x. |
| ItemStackSizeMultiplier | 8.0 | Stack capacity is extreme at 8x. |
| ItemWeightMultiplier | 0.5 | Item weight is far below normal at 0.5x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.9 | Experience gain is well above normal at 1.9x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.5 | Refrigeration is above normal at 1.5x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 2.0 | Sink refill rate is well above normal at 2x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 0.8 | Thirst rate is below normal at 0.8x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `biohazard_open_floor_decontamination`
- `lethal_lasers`: `low_hazard`

## Day 3 - Questionable Drinking Water Plus

**Profile ID:** `biohazard_questionable_drinking_water_plus`
**Overall conditions:** Standard pressure (2.26/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Thirst rate is extreme (2.6x).
- Sink water may be unsafe.
- Friendly-fire damage is far below normal (0.25x).
- Durability loss on death is far below normal (0.25x).
- Game difficulty: hard.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.08/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (3.29/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.91/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.22/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.5/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **contamination bio resource**
- Maximum active groups: **1**
- Mixed encounter chance: **0.091**
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
| DetectionSpeedMultiplier | 1.0 | Enemy detection speed is near normal at 1x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.25 | Durability loss on death is far below normal at 0.25x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.9 | Enemy damage to defenses is near normal at 0.9x. |
| EnemyHealthMultiplier | 1.2 | Enemy resilience is above normal at 1.2x. |
| EnemyPlayerDamageMultiplier | 1.2 | Enemy damage to players is above normal at 1.2x. |
| EnemySpawnRate | 1.1 | Enemy frequency is near normal at 1.1x. |
| FatigueSpeedMultiplier | 1.1 | Fatigue rate is near normal at 1.1x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Food spoilage is above normal at 1.25x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.8 | Hunger rate is well above normal at 1.8x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.25 | Item durability is above normal at 1.25x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.9 | Item weight is near normal at 0.9x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.6 | Experience gain is above normal at 1.6x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.75 | Refrigeration is below normal at 0.75x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.25 | Sink refill rate is far below normal at 0.25x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.6 | Thirst rate is extreme at 2.6x. |
| WeatherFrequency | 3 | Weather frequency is normal. |

### Optional adapter selection

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `biohazard_questionable_drinking_water_plus`
- `lethal_lasers`: `standard_safety`

## Day 4 - Specimen Supply Run

**Profile ID:** `biohazard_specimen_supply_run`
**Overall conditions:** Favorable conditions (1.63/5)
**Plain meaning:** Favorable conditions. Survival pressure: Standard pressure is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Item durability is extreme (2.5x).
- Stack capacity is extreme (14x).
- Sink refill rate is extreme (2.5x).
- Sink water may be unsafe.
- Durability loss on death is far below normal (0.05x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.55/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (2.2/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.02/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (1.93/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.44/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **light encounters**
- Theme: **contamination loot mobility**
- Maximum active groups: **1**
- Mixed encounter chance: **0.056**
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
| DetectionSpeedMultiplier | 0.8 | Enemy detection speed is below normal at 0.8x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.05 | Durability loss on death is far below normal at 0.05x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.5 | Enemy damage to defenses is far below normal at 0.5x. |
| EnemyHealthMultiplier | 1.0 | Enemy resilience is near normal at 1x. |
| EnemyPlayerDamageMultiplier | 0.9 | Enemy damage to players is near normal at 0.9x. |
| EnemySpawnRate | 0.8 | Enemy frequency is below normal at 0.8x. |
| FatigueSpeedMultiplier | 0.75 | Fatigue rate is below normal at 0.75x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.6 | Food spoilage is below normal at 0.6x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.0 | Hunger rate is near normal at 1x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 2.5 | Item durability is extreme at 2.5x. |
| ItemStackSizeMultiplier | 14.0 | Stack capacity is extreme at 14x. |
| ItemWeightMultiplier | 0.3 | Item weight is far below normal at 0.3x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.0 | Experience gain is well above normal at 2x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.5 | Refrigeration is above normal at 1.5x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 2.5 | Sink refill rate is extreme at 2.5x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.0 | Thirst rate is near normal at 1x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `biohazard_specimen_supply_run`
- `lethal_lasers`: `low_hazard`

## Day 5 - Containment Was Optional

**Profile ID:** `biohazard_containment_was_optional`
**Overall conditions:** Standard pressure (2.22/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Sink water may be unsafe.
- Friendly-fire damage is far below normal (0.1x).
- Game difficulty: hard.
- Stack capacity is well above normal (2x).
- Power sockets switch off at night.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.42/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (2.75/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | favorable (1.7/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.17/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.51/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **heavy encounters**
- Theme: **contamination security**
- Maximum active groups: **2**
- Mixed encounter chance: **0.119**
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
| DetectionSpeedMultiplier | 1.9 | Enemy detection speed is well above normal at 1.9x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.3 | Durability loss on death is far below normal at 0.3x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.3 | Enemy resilience is above normal at 1.3x. |
| EnemyPlayerDamageMultiplier | 1.4 | Enemy damage to players is above normal at 1.4x. |
| EnemySpawnRate | 1.5 | Enemy frequency is above normal at 1.5x. |
| FatigueSpeedMultiplier | 1.15 | Fatigue rate is near normal at 1.15x. |
| FirstTimeStartingWeapon | 4 | Starting weapon provision is favorable conditions at 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.5 | Hunger rate is above normal at 1.5x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.25 | Item durability is above normal at 1.25x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.9 | Item weight is near normal at 0.9x. |
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
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.5 | Thirst rate is above normal at 1.5x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `biohazard_containment_was_optional`
- `lethal_lasers`: `moderate_hazard`

## Day 6 - Sanitation Weather Event

**Profile ID:** `biohazard_sanitation_weather_event`
**Overall conditions:** Standard pressure (2.25/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Weather frequency: very frequent.
- Sink water may be unsafe.
- Friendly-fire damage is far below normal (0.25x).
- Durability loss on death is far below normal (0.25x).
- Game difficulty: hard.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.1/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (3.06/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.87/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.52/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.5/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **contamination weather**
- Maximum active groups: **1**
- Mixed encounter chance: **0.091**
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
| DetectionSpeedMultiplier | 1.1 | Enemy detection speed is near normal at 1.1x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.25 | Durability loss on death is far below normal at 0.25x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.2 | Enemy resilience is above normal at 1.2x. |
| EnemyPlayerDamageMultiplier | 1.1 | Enemy damage to players is near normal at 1.1x. |
| EnemySpawnRate | 1.1 | Enemy frequency is near normal at 1.1x. |
| FatigueSpeedMultiplier | 1.6 | Fatigue rate is above normal at 1.6x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Food spoilage is above normal at 1.25x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.6 | Hunger rate is above normal at 1.6x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.1 | Item durability is near normal at 1.1x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.9 | Item weight is near normal at 0.9x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.5 | Experience gain is above normal at 1.5x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.8 | Refrigeration is below normal at 0.8x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.75 | Sink refill rate is below normal at 0.75x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.0 | Thirst rate is well above normal at 2x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `biohazard_sanitation_weather_event`
- `lethal_lasers`: `electrical_hazard_light`

## Day 7 - Night Disinfection Failure

**Profile ID:** `biohazard_night_disinfection_failure`
**Overall conditions:** Standard pressure (2.28/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Stack capacity is extreme (3x).
- Sink water may be unsafe.
- Day-night state: night-biased.
- Fatigue rate is well above normal (2.1x).
- Durability loss on death is far below normal (0.2x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.42/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (3.01/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | favorable (1.59/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.33/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.49/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **heavy encounters**
- Theme: **contamination night**
- Maximum active groups: **2**
- Mixed encounter chance: **0.119**
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
| DetectionSpeedMultiplier | 1.6 | Enemy detection speed is above normal at 1.6x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.2 | Durability loss on death is far below normal at 0.2x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.3 | Enemy resilience is above normal at 1.3x. |
| EnemyPlayerDamageMultiplier | 1.3 | Enemy damage to players is above normal at 1.3x. |
| EnemySpawnRate | 1.7 | Enemy frequency is well above normal at 1.7x. |
| FatigueSpeedMultiplier | 2.1 | Fatigue rate is well above normal at 2.1x. |
| FirstTimeStartingWeapon | 5 | Starting weapon provision is favorable conditions at 5. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.5 | Hunger rate is above normal at 1.5x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.5 | Item durability is above normal at 1.5x. |
| ItemStackSizeMultiplier | 3.0 | Stack capacity is extreme at 3x. |
| ItemWeightMultiplier | 0.8 | Item weight is below normal at 0.8x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.0 | Experience gain is well above normal at 2x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.5 | Thirst rate is above normal at 1.5x. |
| WeatherFrequency | 4 | Weather frequency is frequent. |

### Optional adapter selection

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `biohazard_night_disinfection_failure`
- `lethal_lasers`: `night_visible_moderate`

## Day 8 - Route Contamination Notice

**Profile ID:** `biohazard_route_contamination_notice`
**Overall conditions:** Standard pressure (1.99/5)
**Plain meaning:** Standard pressure. Environmental pressure: Standard pressure is the main pressure. Survival pressure: Standard pressure is the next strongest factor.
**Player advice:** Verify power, water, shelter, and hazard protection before leaving base.

### Main effects

- Day-night cycle speed is extreme (3x).
- Stack capacity is extreme (4x).
- Sink water may be unsafe.
- Durability loss on death is far below normal (0.15x).
- Experience gain is well above normal (2.1x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.1/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (2.22/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.44/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (2.56/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.47/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **contamination route**
- Maximum active groups: **1**
- Mixed encounter chance: **0.105**
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
| DetectionSpeedMultiplier | 1.4 | Enemy detection speed is above normal at 1.4x. |
| DisableResearchMinigame | true | Research bypass is enabled. |
| DurabilityLossOnDeathMultiplier | 0.15 | Durability loss on death is far below normal at 0.15x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.8 | Enemy damage to defenses is below normal at 0.8x. |
| EnemyHealthMultiplier | 0.9 | Enemy resilience is near normal at 0.9x. |
| EnemyPlayerDamageMultiplier | 1.1 | Enemy damage to players is near normal at 1.1x. |
| EnemySpawnRate | 1.4 | Enemy frequency is above normal at 1.4x. |
| FatigueSpeedMultiplier | 0.7 | Fatigue rate is below normal at 0.7x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.9 | Food spoilage is near normal at 0.9x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.1 | Hunger rate is near normal at 1.1x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.25 | Item durability is above normal at 1.25x. |
| ItemStackSizeMultiplier | 4.0 | Stack capacity is extreme at 4x. |
| ItemWeightMultiplier | 0.7 | Item weight is below normal at 0.7x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.1 | Experience gain is well above normal at 2.1x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.1 | Refrigeration is near normal at 1.1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.5 | Sink refill rate is above normal at 1.5x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.1 | Thirst rate is near normal at 1.1x. |
| WeatherFrequency | 3 | Weather frequency is normal. |

### Optional adapter selection

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `biohazard_route_contamination_notice`
- `lethal_lasers`: `low_to_moderate_hazard`

## Day 9 - Ration Spoilage Hearing

**Profile ID:** `biohazard_ration_spoilage_hearing`
**Overall conditions:** Standard pressure (2.29/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Resource pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Base inventory size is severe conditions (10).
- Sink water may be unsafe.
- Hunger rate is well above normal (2.3x).
- Thirst rate is well above normal (2.2x).
- Friendly-fire damage is far below normal (0.25x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (1.94/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (3.32/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (2.31/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.17/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.53/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **contamination scarcity**
- Maximum active groups: **1**
- Mixed encounter chance: **0.084**
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
| DetectionSpeedMultiplier | 1.0 | Enemy detection speed is near normal at 1x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.35 | Durability loss on death is far below normal at 0.35x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.3 | Enemy resilience is above normal at 1.3x. |
| EnemyPlayerDamageMultiplier | 1.2 | Enemy damage to players is above normal at 1.2x. |
| EnemySpawnRate | 1.0 | Enemy frequency is near normal at 1x. |
| FatigueSpeedMultiplier | 1.3 | Fatigue rate is above normal at 1.3x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Food spoilage is well above normal at 2x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 2.3 | Hunger rate is well above normal at 2.3x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 0.75 | Item durability is below normal at 0.75x. |
| ItemStackSizeMultiplier | 1.0 | Stack capacity is near normal at 1x. |
| ItemWeightMultiplier | 1.3 | Item weight is above normal at 1.3x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.5 | Experience gain is above normal at 1.5x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.5 | Refrigeration is far below normal at 0.5x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.5 | Sink refill rate is far below normal at 0.5x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.2 | Thirst rate is well above normal at 2.2x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `biohazard_ration_spoilage_hearing`
- `lethal_lasers`: `standard_safety`

## Day 10 - Clean Room Rumor

**Profile ID:** `biohazard_clean_room_rumor`
**Overall conditions:** Favorable conditions (1.19/5)
**Plain meaning:** Favorable conditions. Survival pressure: Favorable conditions is the main pressure. Environmental pressure: Favorable conditions is the next strongest factor.
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
| Combat pressure | favorable (0.94/5) | Hostile pressure is lighter than normal. |
| Survival pressure | favorable (1.64/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (0.9/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | favorable (1.54/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.19/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **minimal encounters**
- Theme: **contamination recovery**
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
| DetectionSpeedMultiplier | 0.4 | Enemy detection speed is far below normal at 0.4x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 1 | Enemy accuracy is reduced. |
| EnemyDeployableDamageMultiplier | 0.1 | Enemy damage to defenses is far below normal at 0.1x. |
| EnemyHealthMultiplier | 0.8 | Enemy resilience is below normal at 0.8x. |
| EnemyPlayerDamageMultiplier | 0.4 | Enemy damage to players is far below normal at 0.4x. |
| EnemySpawnRate | 0.4 | Enemy frequency is far below normal at 0.4x. |
| FatigueSpeedMultiplier | 0.45 | Fatigue rate is far below normal at 0.45x. |
| FirstTimeStartingWeapon | 2 | Starting weapon provision is standard pressure at 2. |
| FoodSpoilSpeedMultiplier | 0.4 | Food spoilage is far below normal at 0.4x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.6 | Hunger rate is below normal at 0.6x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 3.0 | Item durability is extreme at 3x. |
| ItemStackSizeMultiplier | 10.0 | Stack capacity is extreme at 10x. |
| ItemWeightMultiplier | 0.4 | Item weight is far below normal at 0.4x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.7 | Experience gain is extreme at 2.7x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | false | Radiation damage is disabled. |
| RefrigerationEffectivenessMultiplier | 1.8 | Refrigeration is well above normal at 1.8x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 3.0 | Sink refill rate is extreme at 3x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 0.6 | Thirst rate is below normal at 0.6x. |
| WeatherFrequency | 1 | Weather frequency is rare. |

### Optional adapter selection

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `biohazard_clean_room_rumor`
- `lethal_lasers`: `disabled_or_low_if_supported`

## Day 11 - Training With Gloves

**Profile ID:** `biohazard_training_with_gloves`
**Overall conditions:** Favorable conditions (1.63/5)
**Plain meaning:** Favorable conditions. Survival pressure: Standard pressure is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Bonus perk points is relief conditions (12).
- Durability loss on death is far below normal (0x).
- Stack capacity is extreme (5x).
- Experience gain is extreme (3.5x).
- Sink water may be unsafe.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.53/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (2.3/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (0.92/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (1.96/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.43/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **light encounters**
- Theme: **contamination training**
- Maximum active groups: **1**
- Mixed encounter chance: **0.049**
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
| DetectionSpeedMultiplier | 0.8 | Enemy detection speed is below normal at 0.8x. |
| DisableResearchMinigame | true | Research bypass is enabled. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.4 | Enemy damage to defenses is far below normal at 0.4x. |
| EnemyHealthMultiplier | 1.0 | Enemy resilience is near normal at 1x. |
| EnemyPlayerDamageMultiplier | 0.7 | Enemy damage to players is below normal at 0.7x. |
| EnemySpawnRate | 1.0 | Enemy frequency is near normal at 1x. |
| FatigueSpeedMultiplier | 0.8 | Fatigue rate is below normal at 0.8x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.8 | Food spoilage is below normal at 0.8x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.1 | Hunger rate is near normal at 1.1x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 2.25 | Item durability is well above normal at 2.25x. |
| ItemStackSizeMultiplier | 5.0 | Stack capacity is extreme at 5x. |
| ItemWeightMultiplier | 0.6 | Item weight is below normal at 0.6x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 3.5 | Experience gain is extreme at 3.5x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.3 | Refrigeration is above normal at 1.3x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 2.0 | Sink refill rate is well above normal at 2x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.1 | Thirst rate is near normal at 1.1x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `biohazard_training_with_gloves`
- `lethal_lasers`: `training_hazard`

## Day 12 - Black Lab Bio Review

**Profile ID:** `biohazard_black_lab_bio_review`
**Overall conditions:** Demanding conditions (2.61/5)
**Plain meaning:** Demanding conditions. Combat pressure: Demanding conditions is the main pressure. Survival pressure: Demanding conditions is the next strongest factor.
**Player advice:** Carry ammunition, keep a retreat route, and avoid fighting unsupported.

### Main effects

- Game difficulty: very hard.
- Experience gain is extreme (2.8x).
- Sink water may be unsafe.
- Enemy frequency is well above normal (2.3x).
- Friendly-fire damage is far below normal (0.15x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | demanding (3.2/5) | Hostile pressure is elevated; prepare before engaging. |
| Survival pressure | demanding (2.99/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.78/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.22/5) | Environmental conditions are close to normal. |
| Recovery pressure | standard (1.79/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **extreme encounters**
- Theme: **contamination heavy test**
- Maximum active groups: **2**
- Mixed encounter chance: **0.161**
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
| DetectionSpeedMultiplier | 1.9 | Enemy detection speed is well above normal at 1.9x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.4 | Durability loss on death is far below normal at 0.4x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 1.4 | Enemy damage to defenses is above normal at 1.4x. |
| EnemyHealthMultiplier | 2.0 | Enemy resilience is well above normal at 2x. |
| EnemyPlayerDamageMultiplier | 2.1 | Enemy damage to players is well above normal at 2.1x. |
| EnemySpawnRate | 2.3 | Enemy frequency is well above normal at 2.3x. |
| FatigueSpeedMultiplier | 1.15 | Fatigue rate is near normal at 1.15x. |
| FirstTimeStartingWeapon | 1 | Starting weapon provision is standard pressure at 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Food spoilage is near normal at 1.15x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.9 | Hunger rate is well above normal at 1.9x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.1 | Item durability is near normal at 1.1x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.0 | Item weight is near normal at 1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.8 | Experience gain is extreme at 2.8x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.85 | Refrigeration is near normal at 0.85x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.75 | Sink refill rate is below normal at 0.75x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.9 | Thirst rate is well above normal at 1.9x. |
| WeatherFrequency | 3 | Weather frequency is normal. |

### Optional adapter selection

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `biohazard_black_lab_bio_review`
- `lethal_lasers`: `high_hazard`

## Day 13 - Extended Quarantine Shift

**Profile ID:** `biohazard_extended_quarantine_shift`
**Overall conditions:** Standard pressure (2.43/5)
**Plain meaning:** Standard pressure. Survival pressure: Severe conditions is the main pressure. Resource pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Hunger rate is extreme (2.6x).
- Thirst rate is extreme (2.6x).
- Fatigue rate is extreme (2.5x).
- Base inventory size is severe conditions (10).
- Sink water may be unsafe.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.1/5) | Hostile pressure is close to normal. |
| Survival pressure | severe (3.92/5) | Survival needs are severe; carry reserves and plan safe stops. |
| Resource pressure | standard (2.16/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.01/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.53/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **contamination endurance**
- Maximum active groups: **1**
- Mixed encounter chance: **0.098**
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
| DetectionSpeedMultiplier | 1.0 | Enemy detection speed is near normal at 1x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.35 | Durability loss on death is far below normal at 0.35x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.9 | Enemy damage to defenses is near normal at 0.9x. |
| EnemyHealthMultiplier | 1.5 | Enemy resilience is above normal at 1.5x. |
| EnemyPlayerDamageMultiplier | 1.3 | Enemy damage to players is above normal at 1.3x. |
| EnemySpawnRate | 0.9 | Enemy frequency is near normal at 0.9x. |
| FatigueSpeedMultiplier | 2.5 | Fatigue rate is extreme at 2.5x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Food spoilage is well above normal at 1.8x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 2.6 | Hunger rate is extreme at 2.6x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 0.9 | Item durability is near normal at 0.9x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.4 | Item weight is above normal at 1.4x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.8 | Experience gain is well above normal at 1.8x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.65 | Refrigeration is below normal at 0.65x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.35 | Sink refill rate is far below normal at 0.35x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.6 | Thirst rate is extreme at 2.6x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `biohazard_extended_quarantine_shift`
- `lethal_lasers`: `standard_safety`

## Day 14 - Supply Closet Sterile-ish

**Profile ID:** `biohazard_supply_closet_sterile_ish`
**Overall conditions:** Favorable conditions (1.16/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Favorable conditions is the main pressure. Survival pressure: Favorable conditions is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Base inventory size is relief conditions (40).
- Bonus perk points is relief conditions (12).
- Friendly-fire damage is far below normal (0x).
- Durability loss on death is far below normal (0x).
- Item durability is extreme (6x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.04/5) | Hostile pressure is lighter than normal. |
| Survival pressure | favorable (1.4/5) | Daily survival needs are forgiving. |
| Resource pressure | relief (0.79/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | favorable (1.58/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.19/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **minimal encounters**
- Theme: **contamination relief**
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
| DetectionSpeedMultiplier | 0.6 | Enemy detection speed is below normal at 0.6x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 1 | Enemy accuracy is reduced. |
| EnemyDeployableDamageMultiplier | 0.1 | Enemy damage to defenses is far below normal at 0.1x. |
| EnemyHealthMultiplier | 0.9 | Enemy resilience is near normal at 0.9x. |
| EnemyPlayerDamageMultiplier | 0.5 | Enemy damage to players is far below normal at 0.5x. |
| EnemySpawnRate | 0.5 | Enemy frequency is far below normal at 0.5x. |
| FatigueSpeedMultiplier | 0.35 | Fatigue rate is far below normal at 0.35x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.25 | Food spoilage is far below normal at 0.25x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.4 | Hunger rate is far below normal at 0.4x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 6.0 | Item durability is extreme at 6x. |
| ItemStackSizeMultiplier | 20.0 | Stack capacity is extreme at 20x. |
| ItemWeightMultiplier | 0.2 | Item weight is far below normal at 0.2x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 4.0 | Experience gain is extreme at 4x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | false | Radiation damage is disabled. |
| RefrigerationEffectivenessMultiplier | 2.0 | Refrigeration is well above normal at 2x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 5.0 | Sink refill rate is extreme at 5x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 0.4 | Thirst rate is far below normal at 0.4x. |
| WeatherFrequency | 1 | Weather frequency is rare. |

### Optional adapter selection

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `biohazard_supply_closet_sterile_ish`
- `lethal_lasers`: `disabled_or_low_if_supported`

## Day 15 - Accuracy of Sneezing

**Profile ID:** `biohazard_accuracy_of_sneezing`
**Overall conditions:** Standard pressure (2.15/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Friendly-fire damage is far below normal (0x).
- Sink water may be unsafe.
- Experience gain is well above normal (2.3x).
- Game difficulty: hard.
- Stack capacity is well above normal (2x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.22/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (2.78/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | favorable (1.68/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.17/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.51/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **heavy encounters**
- Theme: **contamination precision**
- Maximum active groups: **2**
- Mixed encounter chance: **0.119**
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
| DetectionSpeedMultiplier | 1.4 | Enemy detection speed is above normal at 1.4x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.3 | Durability loss on death is far below normal at 0.3x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.8 | Enemy damage to defenses is below normal at 0.8x. |
| EnemyHealthMultiplier | 1.1 | Enemy resilience is near normal at 1.1x. |
| EnemyPlayerDamageMultiplier | 1.5 | Enemy damage to players is above normal at 1.5x. |
| EnemySpawnRate | 1.2 | Enemy frequency is above normal at 1.2x. |
| FatigueSpeedMultiplier | 1.25 | Fatigue rate is above normal at 1.25x. |
| FirstTimeStartingWeapon | 4 | Starting weapon provision is favorable conditions at 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.5 | Hunger rate is above normal at 1.5x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.0 | Item durability is near normal at 1x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 0.9 | Item weight is near normal at 0.9x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.3 | Experience gain is well above normal at 2.3x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 1.5 | Thirst rate is above normal at 1.5x. |
| WeatherFrequency | 2 | Weather frequency is occasional. |

### Optional adapter selection

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `biohazard_accuracy_of_sneezing`
- `lethal_lasers`: `moderate_hazard`

## Day 16 - Experimental Exposure

**Profile ID:** `biohazard_experimental_exposure`
**Overall conditions:** Standard pressure (2.19/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Game difficulty: very hard.
- Some radiation may lack a visible warning.
- Weather frequency: very frequent.
- Base inventory size is relief conditions (42).
- Bonus perk points is relief conditions (15).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.48/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (2.77/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | favorable (0.99/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (2.59/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.67/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **extreme encounters**
- Theme: **contamination experimental**
- Maximum active groups: **2**
- Mixed encounter chance: **0.154**
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
| DetectionSpeedMultiplier | 0.5 | Enemy detection speed is far below normal at 0.5x. |
| DisableResearchMinigame | true | Research bypass is enabled. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 0.7 | Enemy damage to defenses is below normal at 0.7x. |
| EnemyHealthMultiplier | 1.6 | Enemy resilience is above normal at 1.6x. |
| EnemyPlayerDamageMultiplier | 1.0 | Enemy damage to players is near normal at 1x. |
| EnemySpawnRate | 1.5 | Enemy frequency is above normal at 1.5x. |
| FatigueSpeedMultiplier | 0.8 | Fatigue rate is below normal at 0.8x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.4 | Food spoilage is far below normal at 0.4x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.3 | Hunger rate is above normal at 1.3x. |
| InvisibleRadiation | true | Some radiation may lack a visible warning. |
| ItemDurabilityMultiplier | 5.0 | Item durability is extreme at 5x. |
| ItemStackSizeMultiplier | 15.0 | Stack capacity is extreme at 15x. |
| ItemWeightMultiplier | 0.2 | Item weight is far below normal at 0.2x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 4.4 | Experience gain is extreme at 4.4x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 2.0 | Refrigeration is well above normal at 2x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.0 | Sink refill rate is far below normal at 0x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.0 | Thirst rate is well above normal at 2x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `biohazard_experimental_exposure`
- `lethal_lasers`: `weird_cycle_or_standard`

## Day 17 - Final Containment Exam

**Profile ID:** `biohazard_final_containment_exam`
**Overall conditions:** Demanding conditions (2.88/5)
**Plain meaning:** Demanding conditions. Combat pressure: Severe conditions is the main pressure. Survival pressure: Demanding conditions is the next strongest factor.
**Player advice:** Carry ammunition, keep a retreat route, and avoid fighting unsupported.

### Main effects

- Enemy frequency is extreme (3x).
- Game difficulty: very hard.
- Weather frequency: very frequent.
- Enemy resilience is extreme (2.5x).
- Enemy damage to players is well above normal (2.4x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | severe (3.6/5) | Hostile pressure is elevated; prepare before engaging. |
| Survival pressure | demanding (3.29/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.88/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.55/5) | Environmental conditions are close to normal. |
| Recovery pressure | standard (1.81/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **capstone encounters**
- Theme: **contamination capstone**
- Maximum active groups: **2**
- Mixed encounter chance: **0.196**
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
| DetectionSpeedMultiplier | 2.2 | Enemy detection speed is well above normal at 2.2x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.5 | Durability loss on death is far below normal at 0.5x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 2.0 | Enemy damage to defenses is well above normal at 2x. |
| EnemyHealthMultiplier | 2.5 | Enemy resilience is extreme at 2.5x. |
| EnemyPlayerDamageMultiplier | 2.4 | Enemy damage to players is well above normal at 2.4x. |
| EnemySpawnRate | 3.0 | Enemy frequency is extreme at 3x. |
| FatigueSpeedMultiplier | 1.25 | Fatigue rate is above normal at 1.25x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Food spoilage is above normal at 1.6x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 2.3 | Hunger rate is well above normal at 2.3x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.0 | Item durability is near normal at 1x. |
| ItemStackSizeMultiplier | 3.0 | Stack capacity is extreme at 3x. |
| ItemWeightMultiplier | 1.1 | Item weight is near normal at 1.1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 4.1 | Experience gain is extreme at 4.1x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.6 | Refrigeration is below normal at 0.6x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.5 | Sink refill rate is far below normal at 0.5x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.3 | Thirst rate is well above normal at 2.3x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `biohazard_final_containment_exam`
- `lethal_lasers`: `overcharged_high_hazard`
