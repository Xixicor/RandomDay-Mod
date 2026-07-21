# RandomDay - Weathered Family

Version: `v0.3.16-alpha`

Environmental survival: weather, radiation, power, hunger, thirst.

**Play style:** environmental survival
**Message tone:** meteorology apology

## 17-Day Index

| Day | Profile | Conditions | Main pressure |
|---:|---|---|---|
| 1 | Forecast Orientation | Standard pressure (1.99/5) | Environmental pressure |
| 2 | Open Floor Wind Shear | Favorable conditions (1.39/5) | Environmental pressure |
| 3 | Hydration Advisory | Standard pressure (2.34/5) | Survival pressure |
| 4 | Supply Route Washout | Favorable conditions (1.59/5) | Environmental pressure |
| 5 | Security in Poor Visibility | Standard pressure (2.2/5) | Survival pressure |
| 6 | Weather Department Apology | Standard pressure (2.15/5) | Survival pressure |
| 7 | Night Storm Watch | Standard pressure (2.19/5) | Survival pressure |
| 8 | Route Flood Warning | Standard pressure (1.93/5) | Environmental pressure |
| 9 | Ration Humidity Trial | Standard pressure (2.4/5) | Survival pressure |
| 10 | Shelter Window | Favorable conditions (1.14/5) | Environmental pressure |
| 11 | Safety Umbrella Training | Favorable conditions (1.59/5) | Environmental pressure |
| 12 | Black Lab Climate Review | Demanding conditions (2.74/5) | Survival pressure |
| 13 | Extended Exposure Shift | Standard pressure (2.5/5) | Survival pressure |
| 14 | Supply Closet Dry Spot | Favorable conditions (1.11/5) | Environmental pressure |
| 15 | Accuracy in Crosswind | Standard pressure (2.16/5) | Survival pressure |
| 16 | Experimental Weather Cell | Standard pressure (2.25/5) | Survival pressure |
| 17 | Final Climate Audit | Demanding conditions (3.0/5) | Survival pressure |

## Day 1 - Forecast Orientation

**Profile ID:** `weathered_forecast_orientation`
**Overall conditions:** Standard pressure (1.99/5)
**Plain meaning:** Standard pressure. Environmental pressure: Standard pressure is the main pressure. Survival pressure: Standard pressure is the next strongest factor.
**Player advice:** Verify power, water, shelter, and hazard protection before leaving base.

### Main effects

- Weather frequency: very frequent.
- Friendly-fire damage is far below normal (0.25x).
- Durability loss on death is far below normal (0.25x).
- Stack capacity is well above normal (2x).
- Power sockets switch off at night.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (1.88/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (2.35/5) | Daily survival needs are close to normal. |
| Resource pressure | standard (1.77/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.48/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.5/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **weather orientation**
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
| EnemySpawnRate | 0.9 | Enemy frequency is near normal at 0.9x. |
| FatigueSpeedMultiplier | 1.5 | Fatigue rate is above normal at 1.5x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.5 | Hunger rate is above normal at 1.5x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.5 | Item durability is above normal at 1.5x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.0 | Item weight is near normal at 1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.4 | Experience gain is above normal at 1.4x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.5 | Thirst rate is above normal at 1.5x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `weathered_forecast_orientation`
- `lethal_lasers`: `standard_safety`

## Day 2 - Open Floor Wind Shear

**Profile ID:** `weathered_open_floor_wind_shear`
**Overall conditions:** Favorable conditions (1.39/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Standard pressure is the main pressure. Survival pressure: Favorable conditions is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Weather frequency: very frequent.
- Friendly-fire damage is far below normal (0x).
- Item durability is extreme (4x).
- Stack capacity is extreme (8x).
- Durability loss on death is far below normal (0.05x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.17/5) | Hostile pressure is lighter than normal. |
| Survival pressure | favorable (1.64/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.11/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (2.22/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.2/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **light encounters**
- Theme: **weather preparation**
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
| DetectionSpeedMultiplier | 0.65 | Enemy detection speed is below normal at 0.65x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.05 | Durability loss on death is far below normal at 0.05x. |
| EnemyAccuracy | 1 | Enemy accuracy is reduced. |
| EnemyDeployableDamageMultiplier | 0.1 | Enemy damage to defenses is far below normal at 0.1x. |
| EnemyHealthMultiplier | 0.9 | Enemy resilience is near normal at 0.9x. |
| EnemyPlayerDamageMultiplier | 0.7 | Enemy damage to players is below normal at 0.7x. |
| EnemySpawnRate | 0.5 | Enemy frequency is far below normal at 0.5x. |
| FatigueSpeedMultiplier | 0.9 | Fatigue rate is near normal at 0.9x. |
| FirstTimeStartingWeapon | 2 | Starting weapon provision is standard pressure at 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Food spoilage is below normal at 0.75x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.9 | Hunger rate is near normal at 0.9x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 4.0 | Item durability is extreme at 4x. |
| ItemStackSizeMultiplier | 8.0 | Stack capacity is extreme at 8x. |
| ItemWeightMultiplier | 0.5 | Item weight is far below normal at 0.5x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.0 | Experience gain is well above normal at 2x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.5 | Refrigeration is above normal at 1.5x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 2.0 | Sink refill rate is well above normal at 2x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.9 | Thirst rate is near normal at 0.9x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `weathered_open_floor_wind_shear`
- `lethal_lasers`: `low_hazard`

## Day 3 - Hydration Advisory

**Profile ID:** `weathered_hydration_advisory`
**Overall conditions:** Standard pressure (2.34/5)
**Plain meaning:** Standard pressure. Survival pressure: Severe conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Thirst rate is extreme (2.7x).
- Weather frequency: very frequent.
- Sink water may be unsafe.
- Friendly-fire damage is far below normal (0.25x).
- Durability loss on death is far below normal (0.25x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.06/5) | Hostile pressure is close to normal. |
| Survival pressure | severe (3.53/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.92/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.48/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.5/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **weather bio resource**
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
| DetectionSpeedMultiplier | 1.1 | Enemy detection speed is near normal at 1.1x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.25 | Durability loss on death is far below normal at 0.25x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.9 | Enemy damage to defenses is near normal at 0.9x. |
| EnemyHealthMultiplier | 1.2 | Enemy resilience is above normal at 1.2x. |
| EnemyPlayerDamageMultiplier | 1.2 | Enemy damage to players is above normal at 1.2x. |
| EnemySpawnRate | 0.9 | Enemy frequency is near normal at 0.9x. |
| FatigueSpeedMultiplier | 1.7 | Fatigue rate is well above normal at 1.7x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Food spoilage is above normal at 1.25x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.9 | Hunger rate is well above normal at 1.9x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.25 | Item durability is above normal at 1.25x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.0 | Item weight is near normal at 1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.7 | Experience gain is well above normal at 1.7x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.75 | Refrigeration is below normal at 0.75x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.25 | Sink refill rate is far below normal at 0.25x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.7 | Thirst rate is extreme at 2.7x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `weathered_hydration_advisory`
- `lethal_lasers`: `standard_safety`

## Day 4 - Supply Route Washout

**Profile ID:** `weathered_supply_route_washout`
**Overall conditions:** Favorable conditions (1.59/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Standard pressure is the main pressure. Survival pressure: Standard pressure is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Weather frequency: very frequent.
- Item durability is extreme (2.5x).
- Stack capacity is extreme (14x).
- Sink refill rate is extreme (2.5x).
- Durability loss on death is far below normal (0.05x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.53/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (1.89/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.0/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (2.24/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.44/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **light encounters**
- Theme: **weather loot mobility**
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
| EnemySpawnRate | 0.7 | Enemy frequency is below normal at 0.7x. |
| FatigueSpeedMultiplier | 1.1 | Fatigue rate is near normal at 1.1x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.6 | Food spoilage is below normal at 0.6x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.1 | Hunger rate is near normal at 1.1x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 2.5 | Item durability is extreme at 2.5x. |
| ItemStackSizeMultiplier | 14.0 | Stack capacity is extreme at 14x. |
| ItemWeightMultiplier | 0.3 | Item weight is far below normal at 0.3x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.2 | Experience gain is well above normal at 2.2x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.5 | Refrigeration is above normal at 1.5x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 2.5 | Sink refill rate is extreme at 2.5x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.1 | Thirst rate is near normal at 1.1x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `weathered_supply_route_washout`
- `lethal_lasers`: `low_hazard`

## Day 5 - Security in Poor Visibility

**Profile ID:** `weathered_security_in_poor_visibility`
**Overall conditions:** Standard pressure (2.2/5)
**Plain meaning:** Standard pressure. Survival pressure: Standard pressure is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Weather frequency: very frequent.
- Friendly-fire damage is far below normal (0.1x).
- Enemy detection speed is well above normal (2x).
- Game difficulty: hard.
- Stack capacity is well above normal (2x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.39/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (2.53/5) | Daily survival needs are close to normal. |
| Resource pressure | standard (1.7/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.48/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.51/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **heavy encounters**
- Theme: **weather security**
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
| DetectionSpeedMultiplier | 2.0 | Enemy detection speed is well above normal at 2x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.3 | Durability loss on death is far below normal at 0.3x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.2 | Enemy resilience is above normal at 1.2x. |
| EnemyPlayerDamageMultiplier | 1.4 | Enemy damage to players is above normal at 1.4x. |
| EnemySpawnRate | 1.35 | Enemy frequency is above normal at 1.35x. |
| FatigueSpeedMultiplier | 1.9 | Fatigue rate is well above normal at 1.9x. |
| FirstTimeStartingWeapon | 4 | Starting weapon provision is favorable conditions at 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.6 | Hunger rate is above normal at 1.6x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.25 | Item durability is above normal at 1.25x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.0 | Item weight is near normal at 1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.0 | Experience gain is well above normal at 2x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.6 | Thirst rate is above normal at 1.6x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `weathered_security_in_poor_visibility`
- `lethal_lasers`: `moderate_hazard`

## Day 6 - Weather Department Apology

**Profile ID:** `weathered_weather_department_apology`
**Overall conditions:** Standard pressure (2.15/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Weather frequency: very frequent.
- Thirst rate is well above normal (2.1x).
- Friendly-fire damage is far below normal (0.25x).
- Durability loss on death is far below normal (0.25x).
- Game difficulty: hard.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.08/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (2.65/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.87/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.52/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.5/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **weather weather**
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
| EnemyHealthMultiplier | 1.1 | Enemy resilience is near normal at 1.1x. |
| EnemyPlayerDamageMultiplier | 1.2 | Enemy damage to players is above normal at 1.2x. |
| EnemySpawnRate | 1.0 | Enemy frequency is near normal at 1x. |
| FatigueSpeedMultiplier | 1.7 | Fatigue rate is well above normal at 1.7x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Food spoilage is above normal at 1.25x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.7 | Hunger rate is well above normal at 1.7x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.1 | Item durability is near normal at 1.1x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.0 | Item weight is near normal at 1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.6 | Experience gain is above normal at 1.6x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.8 | Refrigeration is below normal at 0.8x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.75 | Sink refill rate is below normal at 0.75x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 2.1 | Thirst rate is well above normal at 2.1x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `weathered_weather_department_apology`
- `lethal_lasers`: `electrical_hazard_light`

## Day 7 - Night Storm Watch

**Profile ID:** `weathered_night_storm_watch`
**Overall conditions:** Standard pressure (2.19/5)
**Plain meaning:** Standard pressure. Survival pressure: Demanding conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Weather frequency: very frequent.
- Stack capacity is extreme (3x).
- Day-night state: night-biased.
- Fatigue rate is well above normal (2.2x).
- Experience gain is well above normal (2.2x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.39/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (2.6/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | favorable (1.57/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.44/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.49/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **heavy encounters**
- Theme: **weather night**
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
| DetectionSpeedMultiplier | 1.7 | Enemy detection speed is well above normal at 1.7x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.2 | Durability loss on death is far below normal at 0.2x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.2 | Enemy resilience is above normal at 1.2x. |
| EnemyPlayerDamageMultiplier | 1.4 | Enemy damage to players is above normal at 1.4x. |
| EnemySpawnRate | 1.45 | Enemy frequency is above normal at 1.45x. |
| FatigueSpeedMultiplier | 2.2 | Fatigue rate is well above normal at 2.2x. |
| FirstTimeStartingWeapon | 5 | Starting weapon provision is favorable conditions at 5. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.6 | Hunger rate is above normal at 1.6x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.5 | Item durability is above normal at 1.5x. |
| ItemStackSizeMultiplier | 3.0 | Stack capacity is extreme at 3x. |
| ItemWeightMultiplier | 0.8 | Item weight is below normal at 0.8x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.2 | Experience gain is well above normal at 2.2x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.6 | Thirst rate is above normal at 1.6x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `weathered_night_storm_watch`
- `lethal_lasers`: `night_visible_moderate`

## Day 8 - Route Flood Warning

**Profile ID:** `weathered_route_flood_warning`
**Overall conditions:** Standard pressure (1.93/5)
**Plain meaning:** Standard pressure. Environmental pressure: Demanding conditions is the main pressure. Combat pressure: Standard pressure is the next strongest factor.
**Player advice:** Verify power, water, shelter, and hazard protection before leaving base.

### Main effects

- Day-night cycle speed is extreme (3x).
- Weather frequency: very frequent.
- Stack capacity is extreme (4x).
- Experience gain is well above normal (2.3x).
- Durability loss on death is far below normal (0.15x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.08/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (1.87/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.43/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | demanding (2.81/5) | Power, weather, water, or radiation conditions are unsettled. |
| Recovery pressure | favorable (1.47/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **weather route**
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
| EnemyPlayerDamageMultiplier | 1.2 | Enemy damage to players is above normal at 1.2x. |
| EnemySpawnRate | 1.2 | Enemy frequency is above normal at 1.2x. |
| FatigueSpeedMultiplier | 1.1 | Fatigue rate is near normal at 1.1x. |
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
| ItemWeightMultiplier | 0.8 | Item weight is below normal at 0.8x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.3 | Experience gain is well above normal at 2.3x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.1 | Refrigeration is near normal at 1.1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.5 | Sink refill rate is above normal at 1.5x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.1 | Thirst rate is near normal at 1.1x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `weathered_route_flood_warning`
- `lethal_lasers`: `low_to_moderate_hazard`

## Day 9 - Ration Humidity Trial

**Profile ID:** `weathered_ration_humidity_trial`
**Overall conditions:** Standard pressure (2.4/5)
**Plain meaning:** Standard pressure. Survival pressure: Severe conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Weather frequency: very frequent.
- Hunger rate is extreme (2.5x).
- Base inventory size is severe conditions (10).
- Sink water may be unsafe.
- Thirst rate is well above normal (2.3x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (1.96/5) | Hostile pressure is close to normal. |
| Survival pressure | severe (3.62/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (2.31/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.48/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.53/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **weather scarcity**
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
| DetectionSpeedMultiplier | 1.1 | Enemy detection speed is near normal at 1.1x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.35 | Durability loss on death is far below normal at 0.35x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Enemy damage to defenses is near normal at 1x. |
| EnemyHealthMultiplier | 1.3 | Enemy resilience is above normal at 1.3x. |
| EnemyPlayerDamageMultiplier | 1.3 | Enemy damage to players is above normal at 1.3x. |
| EnemySpawnRate | 0.9 | Enemy frequency is near normal at 0.9x. |
| FatigueSpeedMultiplier | 2.0 | Fatigue rate is well above normal at 2x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Food spoilage is well above normal at 2x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 2.5 | Hunger rate is extreme at 2.5x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 0.75 | Item durability is below normal at 0.75x. |
| ItemStackSizeMultiplier | 1.0 | Stack capacity is near normal at 1x. |
| ItemWeightMultiplier | 1.4 | Item weight is above normal at 1.4x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.6 | Experience gain is above normal at 1.6x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.5 | Refrigeration is far below normal at 0.5x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.5 | Sink refill rate is far below normal at 0.5x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.3 | Thirst rate is well above normal at 2.3x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `weathered_ration_humidity_trial`
- `lethal_lasers`: `standard_safety`

## Day 10 - Shelter Window

**Profile ID:** `weathered_shelter_window`
**Overall conditions:** Favorable conditions (1.14/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Standard pressure is the main pressure. Survival pressure: Favorable conditions is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Weather frequency: very frequent.
- Bonus perk points is relief conditions (10).
- Friendly-fire damage is far below normal (0x).
- Durability loss on death is far below normal (0x).
- Item durability is extreme (3x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (0.94/5) | Hostile pressure is lighter than normal. |
| Survival pressure | favorable (1.2/5) | Daily survival needs are forgiving. |
| Resource pressure | favorable (0.9/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (1.93/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.19/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **minimal encounters**
- Theme: **weather recovery**
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
| FatigueSpeedMultiplier | 0.6 | Fatigue rate is below normal at 0.6x. |
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
| PlayerXPGainMultiplier | 2.9 | Experience gain is extreme at 2.9x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | false | Radiation damage is disabled. |
| RefrigerationEffectivenessMultiplier | 1.8 | Refrigeration is well above normal at 1.8x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 3.0 | Sink refill rate is extreme at 3x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.6 | Thirst rate is below normal at 0.6x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `weathered_shelter_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

## Day 11 - Safety Umbrella Training

**Profile ID:** `weathered_safety_umbrella_training`
**Overall conditions:** Favorable conditions (1.59/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Standard pressure is the main pressure. Survival pressure: Standard pressure is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Weather frequency: very frequent.
- Bonus perk points is relief conditions (12).
- Durability loss on death is far below normal (0x).
- Stack capacity is extreme (5x).
- Experience gain is extreme (3.8x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.49/5) | Hostile pressure is lighter than normal. |
| Survival pressure | standard (2.0/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (0.93/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (2.27/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.43/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **light encounters**
- Theme: **weather training**
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
| DetectionSpeedMultiplier | 0.9 | Enemy detection speed is near normal at 0.9x. |
| DisableResearchMinigame | true | Research bypass is enabled. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.4 | Enemy damage to defenses is far below normal at 0.4x. |
| EnemyHealthMultiplier | 0.9 | Enemy resilience is near normal at 0.9x. |
| EnemyPlayerDamageMultiplier | 0.7 | Enemy damage to players is below normal at 0.7x. |
| EnemySpawnRate | 0.8 | Enemy frequency is below normal at 0.8x. |
| FatigueSpeedMultiplier | 1.2 | Fatigue rate is above normal at 1.2x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.8 | Food spoilage is below normal at 0.8x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.2 | Hunger rate is above normal at 1.2x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 2.25 | Item durability is well above normal at 2.25x. |
| ItemStackSizeMultiplier | 5.0 | Stack capacity is extreme at 5x. |
| ItemWeightMultiplier | 0.7 | Item weight is below normal at 0.7x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 3.8 | Experience gain is extreme at 3.8x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.3 | Refrigeration is above normal at 1.3x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 2.0 | Sink refill rate is well above normal at 2x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.2 | Thirst rate is above normal at 1.2x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `weathered_safety_umbrella_training`
- `lethal_lasers`: `training_hazard`

## Day 12 - Black Lab Climate Review

**Profile ID:** `weathered_black_lab_climate_review`
**Overall conditions:** Demanding conditions (2.74/5)
**Plain meaning:** Demanding conditions. Survival pressure: Demanding conditions is the main pressure. Combat pressure: Demanding conditions is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Game difficulty: very hard.
- Some radiation may lack a visible warning.
- Weather frequency: very frequent.
- Experience gain is extreme (3x).
- Sink water may be unsafe.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | demanding (3.16/5) | Hostile pressure is elevated; prepare before engaging. |
| Survival pressure | demanding (3.3/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | standard (1.78/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | demanding (2.81/5) | Power, weather, water, or radiation conditions are unsettled. |
| Recovery pressure | standard (1.79/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **extreme encounters**
- Theme: **weather heavy test**
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
| DetectionSpeedMultiplier | 2.0 | Enemy detection speed is well above normal at 2x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.4 | Durability loss on death is far below normal at 0.4x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 1.4 | Enemy damage to defenses is above normal at 1.4x. |
| EnemyHealthMultiplier | 1.9 | Enemy resilience is well above normal at 1.9x. |
| EnemyPlayerDamageMultiplier | 2.1 | Enemy damage to players is well above normal at 2.1x. |
| EnemySpawnRate | 2.0 | Enemy frequency is well above normal at 2x. |
| FatigueSpeedMultiplier | 2.0 | Fatigue rate is well above normal at 2x. |
| FirstTimeStartingWeapon | 1 | Starting weapon provision is standard pressure at 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Food spoilage is near normal at 1.15x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 2.0 | Hunger rate is well above normal at 2x. |
| InvisibleRadiation | true | Some radiation may lack a visible warning. |
| ItemDurabilityMultiplier | 1.1 | Item durability is near normal at 1.1x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.0 | Item weight is near normal at 1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 3.0 | Experience gain is extreme at 3x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.85 | Refrigeration is near normal at 0.85x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.75 | Sink refill rate is below normal at 0.75x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.0 | Thirst rate is well above normal at 2x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `weathered_black_lab_climate_review`
- `lethal_lasers`: `high_hazard`

## Day 13 - Extended Exposure Shift

**Profile ID:** `weathered_extended_exposure_shift`
**Overall conditions:** Standard pressure (2.5/5)
**Plain meaning:** Standard pressure. Survival pressure: Severe conditions is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Hunger rate is extreme (2.8x).
- Thirst rate is extreme (2.8x).
- Weather frequency: very frequent.
- Fatigue rate is extreme (2.6x).
- Base inventory size is severe conditions (10).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.09/5) | Hostile pressure is close to normal. |
| Survival pressure | severe (4.06/5) | Survival needs are severe; carry reserves and plan safe stops. |
| Resource pressure | standard (2.16/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.32/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.53/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **moderate encounters**
- Theme: **weather endurance**
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
| DetectionSpeedMultiplier | 1.1 | Enemy detection speed is near normal at 1.1x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.35 | Durability loss on death is far below normal at 0.35x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.9 | Enemy damage to defenses is near normal at 0.9x. |
| EnemyHealthMultiplier | 1.4 | Enemy resilience is above normal at 1.4x. |
| EnemyPlayerDamageMultiplier | 1.4 | Enemy damage to players is above normal at 1.4x. |
| EnemySpawnRate | 0.8 | Enemy frequency is below normal at 0.8x. |
| FatigueSpeedMultiplier | 2.6 | Fatigue rate is extreme at 2.6x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Food spoilage is well above normal at 1.8x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 2.8 | Hunger rate is extreme at 2.8x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 0.9 | Item durability is near normal at 0.9x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.5 | Item weight is above normal at 1.5x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 1.9 | Experience gain is well above normal at 1.9x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.65 | Refrigeration is below normal at 0.65x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.35 | Sink refill rate is far below normal at 0.35x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.8 | Thirst rate is extreme at 2.8x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `weathered_extended_exposure_shift`
- `lethal_lasers`: `standard_safety`

## Day 14 - Supply Closet Dry Spot

**Profile ID:** `weathered_supply_closet_dry_spot`
**Overall conditions:** Favorable conditions (1.11/5)
**Plain meaning:** Favorable conditions. Environmental pressure: Standard pressure is the main pressure. Recovery pressure: Favorable conditions is the next strongest factor.
**Player advice:** Use the favorable conditions to explore, restock, repair, and prepare for the next reboot.

### Main effects

- Weather frequency: very frequent.
- Base inventory size is relief conditions (40).
- Bonus perk points is relief conditions (12).
- Friendly-fire damage is far below normal (0x).
- Durability loss on death is far below normal (0x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | favorable (1.0/5) | Hostile pressure is lighter than normal. |
| Survival pressure | favorable (1.04/5) | Daily survival needs are forgiving. |
| Resource pressure | relief (0.79/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (1.97/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.19/5) | Death and recovery rules are forgiving. |

### Encounter context

- Tier: **minimal encounters**
- Theme: **weather relief**
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
| EnemyHealthMultiplier | 0.8 | Enemy resilience is below normal at 0.8x. |
| EnemyPlayerDamageMultiplier | 0.5 | Enemy damage to players is far below normal at 0.5x. |
| EnemySpawnRate | 0.4 | Enemy frequency is far below normal at 0.4x. |
| FatigueSpeedMultiplier | 0.5 | Fatigue rate is far below normal at 0.5x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.25 | Food spoilage is far below normal at 0.25x. |
| GameDifficulty | 1 | Game difficulty is standard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 0.5 | Hunger rate is far below normal at 0.5x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 6.0 | Item durability is extreme at 6x. |
| ItemStackSizeMultiplier | 20.0 | Stack capacity is extreme at 20x. |
| ItemWeightMultiplier | 0.2 | Item weight is far below normal at 0.2x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 4.3 | Experience gain is extreme at 4.3x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | false | Radiation damage is disabled. |
| RefrigerationEffectivenessMultiplier | 2.0 | Refrigeration is well above normal at 2x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 5.0 | Sink refill rate is extreme at 5x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 0.5 | Thirst rate is far below normal at 0.5x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `weathered_supply_closet_dry_spot`
- `lethal_lasers`: `disabled_or_low_if_supported`

## Day 15 - Accuracy in Crosswind

**Profile ID:** `weathered_accuracy_in_crosswind`
**Overall conditions:** Standard pressure (2.16/5)
**Plain meaning:** Standard pressure. Survival pressure: Standard pressure is the main pressure. Environmental pressure: Standard pressure is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Weather frequency: very frequent.
- Friendly-fire damage is far below normal (0x).
- Experience gain is well above normal (2.4x).
- Fatigue rate is well above normal (2.1x).
- Game difficulty: hard.

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | standard (2.23/5) | Hostile pressure is close to normal. |
| Survival pressure | standard (2.59/5) | Daily survival needs are close to normal. |
| Resource pressure | favorable (1.69/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | standard (2.48/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.51/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **heavy encounters**
- Theme: **weather precision**
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
| DetectionSpeedMultiplier | 1.5 | Enemy detection speed is above normal at 1.5x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.3 | Durability loss on death is far below normal at 0.3x. |
| EnemyAccuracy | 2 | Enemy accuracy is standard. |
| EnemyDeployableDamageMultiplier | 0.8 | Enemy damage to defenses is below normal at 0.8x. |
| EnemyHealthMultiplier | 1.1 | Enemy resilience is near normal at 1.1x. |
| EnemyPlayerDamageMultiplier | 1.6 | Enemy damage to players is above normal at 1.6x. |
| EnemySpawnRate | 1.05 | Enemy frequency is near normal at 1.05x. |
| FatigueSpeedMultiplier | 2.1 | Fatigue rate is well above normal at 2.1x. |
| FirstTimeStartingWeapon | 4 | Starting weapon provision is favorable conditions at 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Food spoilage is near normal at 1x. |
| GameDifficulty | 2 | Game difficulty is hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.6 | Hunger rate is above normal at 1.6x. |
| InvisibleRadiation | false | Radiation is not made invisible by this rule. |
| ItemDurabilityMultiplier | 1.0 | Item durability is near normal at 1x. |
| ItemStackSizeMultiplier | 2.0 | Stack capacity is well above normal at 2x. |
| ItemWeightMultiplier | 1.0 | Item weight is near normal at 1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 2.4 | Experience gain is well above normal at 2.4x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 1.0 | Refrigeration is near normal at 1x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 1.0 | Sink refill rate is near normal at 1x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | false | Sink water is not tainted by this rule. |
| ThirstSpeedMultiplier | 1.6 | Thirst rate is above normal at 1.6x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `weathered_accuracy_in_crosswind`
- `lethal_lasers`: `moderate_hazard`

## Day 16 - Experimental Weather Cell

**Profile ID:** `weathered_experimental_weather_cell`
**Overall conditions:** Standard pressure (2.25/5)
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
| Combat pressure | standard (2.47/5) | Hostile pressure is close to normal. |
| Survival pressure | demanding (3.03/5) | Hunger, thirst, fatigue, or sanitation need more attention. |
| Resource pressure | favorable (0.99/5) | Supplies and carrying conditions are favorable. |
| Environmental pressure | standard (2.59/5) | Environmental conditions are close to normal. |
| Recovery pressure | favorable (1.67/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **extreme encounters**
- Theme: **weather experimental**
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
| DetectionSpeedMultiplier | 0.6 | Enemy detection speed is below normal at 0.6x. |
| DisableResearchMinigame | true | Research bypass is enabled. |
| DurabilityLossOnDeathMultiplier | 0.0 | Durability loss on death is far below normal at 0x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 0.7 | Enemy damage to defenses is below normal at 0.7x. |
| EnemyHealthMultiplier | 1.6 | Enemy resilience is above normal at 1.6x. |
| EnemyPlayerDamageMultiplier | 1.0 | Enemy damage to players is near normal at 1x. |
| EnemySpawnRate | 1.3 | Enemy frequency is above normal at 1.3x. |
| FatigueSpeedMultiplier | 1.4 | Fatigue rate is above normal at 1.4x. |
| FirstTimeStartingWeapon | 6 | Starting weapon provision is favorable conditions at 6. |
| FoodSpoilSpeedMultiplier | 0.4 | Food spoilage is far below normal at 0.4x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 1.4 | Hunger rate is above normal at 1.4x. |
| InvisibleRadiation | true | Some radiation may lack a visible warning. |
| ItemDurabilityMultiplier | 5.0 | Item durability is extreme at 5x. |
| ItemStackSizeMultiplier | 15.0 | Stack capacity is extreme at 15x. |
| ItemWeightMultiplier | 0.2 | Item weight is far below normal at 0.2x. |
| LootRespawnEnabled | true | Loot can return after collection. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 4.8 | Experience gain is extreme at 4.8x. |
| PowerSocketsOffAtNight | false | Power sockets remain available at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 2.0 | Refrigeration is well above normal at 2x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.0 | Sink refill rate is far below normal at 0x. |
| StorageByTag | false | Tagged storage organization is disabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.1 | Thirst rate is well above normal at 2.1x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `weathered_experimental_weather_cell`
- `lethal_lasers`: `weird_cycle_or_standard`

## Day 17 - Final Climate Audit

**Profile ID:** `weathered_final_climate_audit`
**Overall conditions:** Demanding conditions (3.0/5)
**Plain meaning:** Demanding conditions. Survival pressure: Severe conditions is the main pressure. Combat pressure: Severe conditions is the next strongest factor.
**Player advice:** Carry food and water, rest before long trips, and plan safe stops.

### Main effects

- Game difficulty: very hard.
- Some radiation may lack a visible warning.
- Weather frequency: very frequent.
- Enemy frequency is extreme (2.6x).
- Enemy damage to players is extreme (2.5x).

### Domain ratings

| Area | Rating | Meaning |
|---|---|---|
| Combat pressure | severe (3.56/5) | Hostile pressure is elevated; prepare before engaging. |
| Survival pressure | severe (3.72/5) | Survival needs are severe; carry reserves and plan safe stops. |
| Resource pressure | standard (1.88/5) | Supply and carrying conditions are close to normal. |
| Environmental pressure | demanding (2.89/5) | Power, weather, water, or radiation conditions are unsettled. |
| Recovery pressure | standard (1.81/5) | Death and recovery rules are close to normal. |

### Encounter context

- Tier: **capstone encounters**
- Theme: **weather capstone**
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
| DetectionSpeedMultiplier | 2.3 | Enemy detection speed is well above normal at 2.3x. |
| DisableResearchMinigame | false | Research uses its normal minigame. |
| DurabilityLossOnDeathMultiplier | 0.5 | Durability loss on death is far below normal at 0.5x. |
| EnemyAccuracy | 3 | Enemy accuracy is accurate. |
| EnemyDeployableDamageMultiplier | 2.0 | Enemy damage to defenses is well above normal at 2x. |
| EnemyHealthMultiplier | 2.4 | Enemy resilience is well above normal at 2.4x. |
| EnemyPlayerDamageMultiplier | 2.5 | Enemy damage to players is extreme at 2.5x. |
| EnemySpawnRate | 2.6 | Enemy frequency is extreme at 2.6x. |
| FatigueSpeedMultiplier | 2.3 | Fatigue rate is well above normal at 2.3x. |
| FirstTimeStartingWeapon | 0 | Starting weapon provision is standard pressure at 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Food spoilage is above normal at 1.6x. |
| GameDifficulty | 3 | Game difficulty is very hard. |
| HardcoreMode | false | Hardcore mode is disabled. |
| HomeWorlds | true | Home-world behavior is enabled. |
| HostAccessPlayerCorpses | true | The host can access player corpses for recovery support. |
| HungerSpeedMultiplier | 2.5 | Hunger rate is extreme at 2.5x. |
| InvisibleRadiation | true | Some radiation may lack a visible warning. |
| ItemDurabilityMultiplier | 1.0 | Item durability is near normal at 1x. |
| ItemStackSizeMultiplier | 3.0 | Stack capacity is extreme at 3x. |
| ItemWeightMultiplier | 1.1 | Item weight is near normal at 1.1x. |
| LootRespawnEnabled | false | Collected loot does not respawn. |
| PlayerFurnitureDestruction | false | Player-built furniture is protected from this rule. |
| PlayerXPGainMultiplier | 4.4 | Experience gain is extreme at 4.4x. |
| PowerSocketsOffAtNight | true | Power sockets switch off at night. |
| RadiationDealsDamage | true | Radiation causes damage. |
| RefrigerationEffectivenessMultiplier | 0.6 | Refrigeration is below normal at 0.6x. |
| ShowDeathMessages | true | Death notices are shown. |
| SinkRefillRate | 0.5 | Sink refill rate is far below normal at 0.5x. |
| StorageByTag | true | Tagged storage organization is enabled. |
| StructuralSupportLimit | 0 | Structural support limit is standard pressure at 0. |
| TaintedSinkWater | true | Sink water may be unsafe. |
| ThirstSpeedMultiplier | 2.5 | Thirst rate is extreme at 2.5x. |
| WeatherFrequency | 5 | Weather frequency is very frequent. |

### Optional adapter selection

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `weathered_final_climate_audit`
- `lethal_lasers`: `overcharged_high_hazard`
