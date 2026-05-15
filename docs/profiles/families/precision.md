# Precision Family

**Family ID:** `precision`
**Genre:** ranged lethality and detection
**Tone:** audit and accuracy language

Fewer enemies, sharper aim, higher punishment for exposure.

## 17-Day Index

| Day | Profile | Experience | DynamicSpawns | Lethal Lasers | ANTE Up |
|---:|---|---|---|---|---|
| 1 | [Sighting Orientation](#day-1-sighting-orientation) | PRECISION D01: baseline - accuracy. | `standard_pressure` | `standard_safety` | `standard` |
| 2 | [Open Sightline Plan](#day-2-open-sightline-plan) | PRECISION D02: prep - accuracy. | `quiet_base_safe` | `low_hazard` | `quiet` |
| 3 | [Hydration Behind Cover](#day-3-hydration-behind-cover) | PRECISION D03: resource - accuracy. | `biohazard_light` | `standard_safety` | `biohazard` |
| 4 | [Supply Line of Fire](#day-4-supply-line-of-fire) | PRECISION D04: loot - accuracy. | `low_pressure_loot_day` | `low_hazard` | `loot` |
| 5 | [Security Marksmanship](#day-5-security-marksmanship) | PRECISION D05: security - accuracy. | `security_pressure` | `high_hazard` | `security` |
| 6 | [Weather Ballistics Note](#day-6-weather-ballistics-note) | PRECISION D06: weather - accuracy. | `weather_wandering` | `electrical_hazard_light` | `weather` |
| 7 | [Night Sight Audit](#day-7-night-sight-audit) | PRECISION D07: night - accuracy. | `night_pressure` | `high_hazard` | `night` |
| 8 | [Route Exposure Index](#day-8-route-exposure-index) | PRECISION D08: route - accuracy. | `speedrun_pressure` | `low_to_moderate_hazard` | `speedrun` |
| 9 | [Ration Under Fire](#day-9-ration-under-fire) | PRECISION D09: scarcity - accuracy. | `scarcity_low_frequency` | `standard_safety` | `scarcity` |
| 10 | [Recovery Behind Cover](#day-10-recovery-behind-cover) | PRECISION D10: recovery - accuracy. | `minimum_pressure` | `disabled_or_low_if_supported` | `recovery` |
| 11 | [Training With Cover](#day-11-training-with-cover) | PRECISION D11: training - accuracy. | `training_targets` | `training_hazard` | `training` |
| 12 | [Black Lab Accuracy Review](#day-12-black-lab-accuracy-review) | PRECISION D12: major test - accuracy. | `hard_pressure` | `high_hazard` | `black_lab` |
| 13 | [Extended Sightline Shift](#day-13-extended-sightline-shift) | PRECISION D13: endurance - accuracy. | `slow_attrition` | `standard_safety` | `black_lab` |
| 14 | [Supply Closet Blind Spot](#day-14-supply-closet-blind-spot) | PRECISION D14: relief - accuracy. | `relief_day` | `disabled_or_low_if_supported` | `black_lab` |
| 15 | [Accuracy Audit](#day-15-accuracy-audit) | PRECISION D15: precision - accuracy. | `precision_patrols` | `high_hazard` | `black_lab` |
| 16 | [Experimental Ballistics](#day-16-experimental-ballistics) | PRECISION D16: experiment - accuracy. | `experimental_mixed` | `weird_cycle_or_standard` | `black_lab` |
| 17 | [Final Precision Exam](#day-17-final-precision-exam) | PRECISION D17: capstone - accuracy. | `capstone_pressure` | `overcharged_high_hazard` | `capstone` |

## Day 1 - Sighting Orientation

**Profile ID:** `precision_sighting_orientation`  
**Base day ID:** `mostly_normal_allegedly`  
**Experience:** PRECISION D01: baseline - accuracy.  
**Message:** Sighting Orientation: Orientation begins politely. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is baseline.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `standard_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `standard` |
| `encounter_director` | `precision_sighting_orientation` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_sighting_orientation` |
| `family` | `precision` |
| `tier` | `medium` |
| `theme` | `precision_orientation` |
| `mixed_encounter_chance` | `0.07` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `653` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Sighting Orientation runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1` |
| `WeatherFrequency` | `3` |
| `SinkRefillRate` | `1` |
| `FoodSpoilSpeedMultiplier` | `1` |
| `RefrigerationEffectivenessMultiplier` | `1` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `1.6` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.8` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.7` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.9` |
| `ItemDurabilityMultiplier` | `1.5` |
| `DurabilityLossOnDeathMultiplier` | `0.25` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `1` |
| `FirstTimeStartingWeapon` | `0` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `12` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=1
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1
WeatherFrequency=3
SinkRefillRate=1
FoodSpoilSpeedMultiplier=1
RefrigerationEffectivenessMultiplier=1
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.8
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=1.6
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.8
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.7
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.9
ItemDurabilityMultiplier=1.5
DurabilityLossOnDeathMultiplier=0.25
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=1
FirstTimeStartingWeapon=0
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 2 - Open Sightline Plan

**Profile ID:** `precision_open_sightline_plan`  
**Base day ID:** `open_floor_plan_authorization`  
**Experience:** PRECISION D02: prep - accuracy.  
**Message:** Open Sightline Plan: Prep window approved. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is prep.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `quiet_base_safe` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `quiet` |
| `encounter_director` | `precision_open_sightline_plan` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_open_sightline_plan` |
| `family` | `precision` |
| `tier` | `low` |
| `theme` | `precision_preparation` |
| `mixed_encounter_chance` | `0.028` |
| `mixed_encounter_budget` | `5` |
| `mixed_encounter_cooldown` | `722` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Open Sightline Plan runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `0.9` |
| `WeatherFrequency` | `2` |
| `SinkRefillRate` | `2` |
| `FoodSpoilSpeedMultiplier` | `0.75` |
| `RefrigerationEffectivenessMultiplier` | `1.5` |
| `StorageByTag` | `False` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.5` |
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `1.1` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.65` |
| `ThirstSpeedMultiplier` | `0.65` |
| `FatigueSpeedMultiplier` | `0.65` |
| `ContinenceSpeedMultiplier` | `0.65` |
| `BonusPerkPoints` | `7` |
| `PlayerXPGainMultiplier` | `2.4` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.5` |
| `ItemDurabilityMultiplier` | `4` |
| `DurabilityLossOnDeathMultiplier` | `0.05` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `0` |
| `FirstTimeStartingWeapon` | `2` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `26` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=1
HardcoreMode=False
LootRespawnEnabled=True
PowerSocketsOffAtNight=False
DayNightCycleState=0
DayNightCycleSpeedMultiplier=0.9
WeatherFrequency=2
SinkRefillRate=2
FoodSpoilSpeedMultiplier=0.75
RefrigerationEffectivenessMultiplier=1.5
StorageByTag=False
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.5
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=1.1
EnemyAccuracy=3
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.65
ThirstSpeedMultiplier=0.65
FatigueSpeedMultiplier=0.65
ContinenceSpeedMultiplier=0.65
BonusPerkPoints=7
PlayerXPGainMultiplier=2.4
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.5
ItemDurabilityMultiplier=4
DurabilityLossOnDeathMultiplier=0.05
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=0
FirstTimeStartingWeapon=2
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=26
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 3 - Hydration Behind Cover

**Profile ID:** `precision_hydration_behind_cover`  
**Base day ID:** `questionable_drinking_water`  
**Experience:** PRECISION D03: resource - accuracy.  
**Message:** Hydration Behind Cover: Resources are acting suspicious. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is resource.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `biohazard_light` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `biohazard` |
| `encounter_director` | `precision_hydration_behind_cover` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_hydration_behind_cover` |
| `family` | `precision` |
| `tier` | `medium` |
| `theme` | `precision_bio_resource` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `618` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Hydration Behind Cover runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1` |
| `WeatherFrequency` | `3` |
| `SinkRefillRate` | `0.25` |
| `FoodSpoilSpeedMultiplier` | `1.25` |
| `RefrigerationEffectivenessMultiplier` | `0.75` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.7` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `1.9` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.2` |
| `ThirstSpeedMultiplier` | `1.7` |
| `FatigueSpeedMultiplier` | `1.1` |
| `ContinenceSpeedMultiplier` | `1.45` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.9` |
| `ItemDurabilityMultiplier` | `1.25` |
| `DurabilityLossOnDeathMultiplier` | `0.25` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `1` |
| `FirstTimeStartingWeapon` | `0` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `12` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1
WeatherFrequency=3
SinkRefillRate=0.25
FoodSpoilSpeedMultiplier=1.25
RefrigerationEffectivenessMultiplier=0.75
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.8
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.7
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=1.9
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.2
ThirstSpeedMultiplier=1.7
FatigueSpeedMultiplier=1.1
ContinenceSpeedMultiplier=1.45
BonusPerkPoints=0
PlayerXPGainMultiplier=2
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.9
ItemDurabilityMultiplier=1.25
DurabilityLossOnDeathMultiplier=0.25
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=1
FirstTimeStartingWeapon=0
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 4 - Supply Line of Fire

**Profile ID:** `precision_supply_line_of_fire`  
**Base day ID:** `inventory_expansion_memo`  
**Experience:** PRECISION D04: loot - accuracy.  
**Message:** Supply Line of Fire: Loot moved toward danger. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is loot.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `low_pressure_loot_day` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `loot` |
| `encounter_director` | `precision_supply_line_of_fire` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_supply_line_of_fire` |
| `family` | `precision` |
| `tier` | `low` |
| `theme` | `precision_loot_mobility` |
| `mixed_encounter_chance` | `0.056` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `676` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Supply Line of Fire runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1` |
| `WeatherFrequency` | `2` |
| `SinkRefillRate` | `2.5` |
| `FoodSpoilSpeedMultiplier` | `0.6` |
| `RefrigerationEffectivenessMultiplier` | `1.5` |
| `StorageByTag` | `False` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.6` |
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `1.3` |
| `EnemyDeployableDamageMultiplier` | `0.5` |
| `DetectionSpeedMultiplier` | `1.4` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.75` |
| `ThirstSpeedMultiplier` | `0.75` |
| `FatigueSpeedMultiplier` | `0.75` |
| `ContinenceSpeedMultiplier` | `0.75` |
| `BonusPerkPoints` | `3` |
| `PlayerXPGainMultiplier` | `2.6` |
| `ItemStackSizeMultiplier` | `14` |
| `ItemWeightMultiplier` | `0.3` |
| `ItemDurabilityMultiplier` | `2.5` |
| `DurabilityLossOnDeathMultiplier` | `0.05` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `1` |
| `FirstTimeStartingWeapon` | `6` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `30` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=1
HardcoreMode=False
LootRespawnEnabled=True
PowerSocketsOffAtNight=False
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1
WeatherFrequency=2
SinkRefillRate=2.5
FoodSpoilSpeedMultiplier=0.6
RefrigerationEffectivenessMultiplier=1.5
StorageByTag=False
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.6
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=1.3
EnemyDeployableDamageMultiplier=0.5
DetectionSpeedMultiplier=1.4
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.75
ThirstSpeedMultiplier=0.75
FatigueSpeedMultiplier=0.75
ContinenceSpeedMultiplier=0.75
BonusPerkPoints=3
PlayerXPGainMultiplier=2.6
ItemStackSizeMultiplier=14
ItemWeightMultiplier=0.3
ItemDurabilityMultiplier=2.5
DurabilityLossOnDeathMultiplier=0.05
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=1
FirstTimeStartingWeapon=6
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=30
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 5 - Security Marksmanship

**Profile ID:** `precision_security_marksmanship`  
**Base day ID:** `security_heard_something`  
**Experience:** PRECISION D05: security - accuracy.  
**Message:** Security Marksmanship: Security noticed you. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is security.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `precision_security_marksmanship` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_security_marksmanship` |
| `family` | `precision` |
| `tier` | `high` |
| `theme` | `precision_security` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `572` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Security Marksmanship runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1` |
| `WeatherFrequency` | `2` |
| `SinkRefillRate` | `1` |
| `FoodSpoilSpeedMultiplier` | `1` |
| `RefrigerationEffectivenessMultiplier` | `1` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1.2` |
| `EnemyHealthMultiplier` | `1.4` |
| `EnemyPlayerDamageMultiplier` | `2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `3.5` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1.15` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.4` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.9` |
| `ItemDurabilityMultiplier` | `1.25` |
| `DurabilityLossOnDeathMultiplier` | `0.3` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `True` |
| `DeathPenalties` | `1` |
| `FirstTimeStartingWeapon` | `4` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `12` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1
WeatherFrequency=2
SinkRefillRate=1
FoodSpoilSpeedMultiplier=1
RefrigerationEffectivenessMultiplier=1
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1.2
EnemyHealthMultiplier=1.4
EnemyPlayerDamageMultiplier=2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=3.5
EnemyAccuracy=4
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1.15
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2.4
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.9
ItemDurabilityMultiplier=1.25
DurabilityLossOnDeathMultiplier=0.3
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=True
DeathPenalties=1
FirstTimeStartingWeapon=4
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 6 - Weather Ballistics Note

**Profile ID:** `precision_weather_ballistics_note`  
**Base day ID:** `weather_department_apology`  
**Experience:** PRECISION D06: weather - accuracy.  
**Message:** Weather Ballistics Note: The weather got indoors. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is weather.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `weather_wandering` |
| `lethal_lasers` | `electrical_hazard_light` |
| `ante_up` | `weather` |
| `encounter_director` | `precision_weather_ballistics_note` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_weather_ballistics_note` |
| `family` | `precision` |
| `tier` | `medium` |
| `theme` | `precision_weather` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `618` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Weather Ballistics Note runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1.25` |
| `WeatherFrequency` | `5` |
| `SinkRefillRate` | `0.75` |
| `FoodSpoilSpeedMultiplier` | `1.25` |
| `RefrigerationEffectivenessMultiplier` | `0.8` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.9` |
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `1.7` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `2` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.1` |
| `ThirstSpeedMultiplier` | `1.35` |
| `FatigueSpeedMultiplier` | `1.1` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.9` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.9` |
| `ItemDurabilityMultiplier` | `1.1` |
| `DurabilityLossOnDeathMultiplier` | `0.25` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `1` |
| `FirstTimeStartingWeapon` | `0` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `12` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1.25
WeatherFrequency=5
SinkRefillRate=0.75
FoodSpoilSpeedMultiplier=1.25
RefrigerationEffectivenessMultiplier=0.8
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.9
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=1.7
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=2
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.1
ThirstSpeedMultiplier=1.35
FatigueSpeedMultiplier=1.1
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.9
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.9
ItemDurabilityMultiplier=1.1
DurabilityLossOnDeathMultiplier=0.25
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=1
FirstTimeStartingWeapon=0
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 7 - Night Sight Audit

**Profile ID:** `precision_night_sight_audit`  
**Base day ID:** `night_shift_with_benefits`  
**Experience:** PRECISION D07: night - accuracy.  
**Message:** Night Sight Audit: Lights negotiated badly. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is night.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `night` |
| `encounter_director` | `precision_night_sight_audit` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_night_sight_audit` |
| `family` | `precision` |
| `tier` | `high` |
| `theme` | `precision_night` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `572` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Night Sight Audit runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `2` |
| `DayNightCycleSpeedMultiplier` | `1` |
| `WeatherFrequency` | `4` |
| `SinkRefillRate` | `1` |
| `FoodSpoilSpeedMultiplier` | `1` |
| `RefrigerationEffectivenessMultiplier` | `1` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1.3` |
| `EnemyHealthMultiplier` | `1.4` |
| `EnemyPlayerDamageMultiplier` | `2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `3` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.95` |
| `ThirstSpeedMultiplier` | `0.95` |
| `FatigueSpeedMultiplier` | `1.4` |
| `ContinenceSpeedMultiplier` | `0.95` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.6` |
| `ItemStackSizeMultiplier` | `3` |
| `ItemWeightMultiplier` | `0.8` |
| `ItemDurabilityMultiplier` | `1.5` |
| `DurabilityLossOnDeathMultiplier` | `0.2` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `True` |
| `DeathPenalties` | `1` |
| `FirstTimeStartingWeapon` | `5` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `16` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=False
DayNightCycleState=2
DayNightCycleSpeedMultiplier=1
WeatherFrequency=4
SinkRefillRate=1
FoodSpoilSpeedMultiplier=1
RefrigerationEffectivenessMultiplier=1
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1.3
EnemyHealthMultiplier=1.4
EnemyPlayerDamageMultiplier=2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=3
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.95
ThirstSpeedMultiplier=0.95
FatigueSpeedMultiplier=1.4
ContinenceSpeedMultiplier=0.95
BonusPerkPoints=0
PlayerXPGainMultiplier=2.6
ItemStackSizeMultiplier=3
ItemWeightMultiplier=0.8
ItemDurabilityMultiplier=1.5
DurabilityLossOnDeathMultiplier=0.2
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=True
DeathPenalties=1
FirstTimeStartingWeapon=5
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=16
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 8 - Route Exposure Index

**Profile ID:** `precision_route_exposure_index`  
**Base day ID:** `clock_department_incident`  
**Experience:** PRECISION D08: route - accuracy.  
**Message:** Route Exposure Index: Routes are impatient. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is route.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `speedrun_pressure` |
| `lethal_lasers` | `low_to_moderate_hazard` |
| `ante_up` | `speedrun` |
| `encounter_director` | `precision_route_exposure_index` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_route_exposure_index` |
| `family` | `precision` |
| `tier` | `medium` |
| `theme` | `precision_route` |
| `mixed_encounter_chance` | `0.105` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `596` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Route Exposure Index runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `3` |
| `WeatherFrequency` | `3` |
| `SinkRefillRate` | `1.5` |
| `FoodSpoilSpeedMultiplier` | `0.9` |
| `RefrigerationEffectivenessMultiplier` | `1.1` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1.1` |
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `1.7` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `2.5` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.7` |
| `ThirstSpeedMultiplier` | `0.7` |
| `FatigueSpeedMultiplier` | `0.7` |
| `ContinenceSpeedMultiplier` | `0.7` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.7` |
| `ItemStackSizeMultiplier` | `4` |
| `ItemWeightMultiplier` | `0.7` |
| `ItemDurabilityMultiplier` | `1.25` |
| `DurabilityLossOnDeathMultiplier` | `0.15` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `True` |
| `DeathPenalties` | `1` |
| `FirstTimeStartingWeapon` | `6` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=3
WeatherFrequency=3
SinkRefillRate=1.5
FoodSpoilSpeedMultiplier=0.9
RefrigerationEffectivenessMultiplier=1.1
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1.1
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=1.7
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=2.5
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.7
ThirstSpeedMultiplier=0.7
FatigueSpeedMultiplier=0.7
ContinenceSpeedMultiplier=0.7
BonusPerkPoints=0
PlayerXPGainMultiplier=2.7
ItemStackSizeMultiplier=4
ItemWeightMultiplier=0.7
ItemDurabilityMultiplier=1.25
DurabilityLossOnDeathMultiplier=0.15
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=True
DeathPenalties=1
FirstTimeStartingWeapon=6
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 9 - Ration Under Fire

**Profile ID:** `precision_ration_under_fire`  
**Base day ID:** `lab_rations_committee`  
**Experience:** PRECISION D09: scarcity - accuracy.  
**Message:** Ration Under Fire: Rations filed a complaint. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is scarcity.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `scarcity_low_frequency` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `scarcity` |
| `encounter_director` | `precision_ration_under_fire` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_ration_under_fire` |
| `family` | `precision` |
| `tier` | `medium` |
| `theme` | `precision_scarcity` |
| `mixed_encounter_chance` | `0.084` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `630` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Ration Under Fire runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1` |
| `WeatherFrequency` | `2` |
| `SinkRefillRate` | `0.5` |
| `FoodSpoilSpeedMultiplier` | `2` |
| `RefrigerationEffectivenessMultiplier` | `0.5` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1.4` |
| `EnemyPlayerDamageMultiplier` | `1.8` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.9` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.5` |
| `ThirstSpeedMultiplier` | `1.4` |
| `FatigueSpeedMultiplier` | `1.3` |
| `ContinenceSpeedMultiplier` | `1.25` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.9` |
| `ItemStackSizeMultiplier` | `1` |
| `ItemWeightMultiplier` | `1.3` |
| `ItemDurabilityMultiplier` | `0.75` |
| `DurabilityLossOnDeathMultiplier` | `0.35` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `1` |
| `FirstTimeStartingWeapon` | `0` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `10` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=1
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1
WeatherFrequency=2
SinkRefillRate=0.5
FoodSpoilSpeedMultiplier=2
RefrigerationEffectivenessMultiplier=0.5
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.8
EnemyHealthMultiplier=1.4
EnemyPlayerDamageMultiplier=1.8
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.9
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.5
ThirstSpeedMultiplier=1.4
FatigueSpeedMultiplier=1.3
ContinenceSpeedMultiplier=1.25
BonusPerkPoints=0
PlayerXPGainMultiplier=1.9
ItemStackSizeMultiplier=1
ItemWeightMultiplier=1.3
ItemDurabilityMultiplier=0.75
DurabilityLossOnDeathMultiplier=0.35
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=1
FirstTimeStartingWeapon=0
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=10
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 10 - Recovery Behind Cover

**Profile ID:** `precision_recovery_behind_cover`  
**Base day ID:** `bring_your_scientist_to_work_day`  
**Experience:** PRECISION D10: recovery - accuracy.  
**Message:** Recovery Behind Cover: Recovery is on probation. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is recovery.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `minimum_pressure` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `recovery` |
| `encounter_director` | `precision_recovery_behind_cover` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_recovery_behind_cover` |
| `family` | `precision` |
| `tier` | `very_low` |
| `theme` | `precision_recovery` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `4` |
| `mixed_encounter_cooldown` | `756` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Recovery Behind Cover runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `0.85` |
| `WeatherFrequency` | `1` |
| `SinkRefillRate` | `3` |
| `FoodSpoilSpeedMultiplier` | `0.4` |
| `RefrigerationEffectivenessMultiplier` | `1.8` |
| `StorageByTag` | `False` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `False` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.3` |
| `EnemyHealthMultiplier` | `0.9` |
| `EnemyPlayerDamageMultiplier` | `0.5` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.8` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.45` |
| `ThirstSpeedMultiplier` | `0.45` |
| `FatigueSpeedMultiplier` | `0.45` |
| `ContinenceSpeedMultiplier` | `0.45` |
| `BonusPerkPoints` | `10` |
| `PlayerXPGainMultiplier` | `3.5` |
| `ItemStackSizeMultiplier` | `10` |
| `ItemWeightMultiplier` | `0.4` |
| `ItemDurabilityMultiplier` | `3` |
| `DurabilityLossOnDeathMultiplier` | `0` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `0` |
| `FirstTimeStartingWeapon` | `2` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `30` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=1
HardcoreMode=False
LootRespawnEnabled=True
PowerSocketsOffAtNight=False
DayNightCycleState=0
DayNightCycleSpeedMultiplier=0.85
WeatherFrequency=1
SinkRefillRate=3
FoodSpoilSpeedMultiplier=0.4
RefrigerationEffectivenessMultiplier=1.8
StorageByTag=False
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=False
InvisibleRadiation=False
EnemySpawnRate=0.3
EnemyHealthMultiplier=0.9
EnemyPlayerDamageMultiplier=0.5
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.8
EnemyAccuracy=3
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.45
ThirstSpeedMultiplier=0.45
FatigueSpeedMultiplier=0.45
ContinenceSpeedMultiplier=0.45
BonusPerkPoints=10
PlayerXPGainMultiplier=3.5
ItemStackSizeMultiplier=10
ItemWeightMultiplier=0.4
ItemDurabilityMultiplier=3
DurabilityLossOnDeathMultiplier=0
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=0
FirstTimeStartingWeapon=2
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=30
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 11 - Training With Cover

**Profile ID:** `precision_training_with_cover`  
**Base day ID:** `mandatory_safety_training`  
**Experience:** PRECISION D11: training - accuracy.  
**Message:** Training With Cover: Training remembered teeth. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is training.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `training_targets` |
| `lethal_lasers` | `training_hazard` |
| `ante_up` | `training` |
| `encounter_director` | `precision_training_with_cover` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_training_with_cover` |
| `family` | `precision` |
| `tier` | `low` |
| `theme` | `precision_training` |
| `mixed_encounter_chance` | `0.049` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `688` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Training With Cover runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1.15` |
| `WeatherFrequency` | `2` |
| `SinkRefillRate` | `2` |
| `FoodSpoilSpeedMultiplier` | `0.8` |
| `RefrigerationEffectivenessMultiplier` | `1.3` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `0.4` |
| `DetectionSpeedMultiplier` | `1.5` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `0.8` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `0.8` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `4.5` |
| `ItemStackSizeMultiplier` | `5` |
| `ItemWeightMultiplier` | `0.6` |
| `ItemDurabilityMultiplier` | `2.25` |
| `DurabilityLossOnDeathMultiplier` | `0` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `True` |
| `DeathPenalties` | `1` |
| `FirstTimeStartingWeapon` | `6` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `24` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=1
HardcoreMode=False
LootRespawnEnabled=True
PowerSocketsOffAtNight=False
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1.15
WeatherFrequency=2
SinkRefillRate=2
FoodSpoilSpeedMultiplier=0.8
RefrigerationEffectivenessMultiplier=1.3
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.7
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=0.4
DetectionSpeedMultiplier=1.5
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=0.8
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=0.8
BonusPerkPoints=12
PlayerXPGainMultiplier=4.5
ItemStackSizeMultiplier=5
ItemWeightMultiplier=0.6
ItemDurabilityMultiplier=2.25
DurabilityLossOnDeathMultiplier=0
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=True
DeathPenalties=1
FirstTimeStartingWeapon=6
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=24
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 12 - Black Lab Accuracy Review

**Profile ID:** `precision_black_lab_accuracy_review`  
**Base day ID:** `black_lab_performance_review`  
**Experience:** PRECISION D12: major test - accuracy.  
**Message:** Black Lab Accuracy Review: Black Lab reviewed you. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is major test.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `hard_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `precision_black_lab_accuracy_review` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_black_lab_accuracy_review` |
| `family` | `precision` |
| `tier` | `extreme` |
| `theme` | `precision_heavy_test` |
| `mixed_encounter_chance` | `0.161` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `504` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Black Lab Accuracy Review runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1` |
| `WeatherFrequency` | `3` |
| `SinkRefillRate` | `0.75` |
| `FoodSpoilSpeedMultiplier` | `1.15` |
| `RefrigerationEffectivenessMultiplier` | `0.85` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1.8` |
| `EnemyHealthMultiplier` | `2.1` |
| `EnemyPlayerDamageMultiplier` | `3.1` |
| `EnemyDeployableDamageMultiplier` | `1.4` |
| `DetectionSpeedMultiplier` | `3.5` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.15` |
| `HungerSpeedMultiplier` | `1.15` |
| `ThirstSpeedMultiplier` | `1.15` |
| `FatigueSpeedMultiplier` | `1.15` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `3.6` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1` |
| `ItemDurabilityMultiplier` | `1.1` |
| `DurabilityLossOnDeathMultiplier` | `0.4` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `2` |
| `FirstTimeStartingWeapon` | `1` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `12` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=3
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1
WeatherFrequency=3
SinkRefillRate=0.75
FoodSpoilSpeedMultiplier=1.15
RefrigerationEffectivenessMultiplier=0.85
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1.8
EnemyHealthMultiplier=2.1
EnemyPlayerDamageMultiplier=3.1
EnemyDeployableDamageMultiplier=1.4
DetectionSpeedMultiplier=3.5
EnemyAccuracy=4
DamageToAlliesMultiplier=0.15
HungerSpeedMultiplier=1.15
ThirstSpeedMultiplier=1.15
FatigueSpeedMultiplier=1.15
ContinenceSpeedMultiplier=1
BonusPerkPoints=2
PlayerXPGainMultiplier=3.6
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1
ItemDurabilityMultiplier=1.1
DurabilityLossOnDeathMultiplier=0.4
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=2
FirstTimeStartingWeapon=1
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 13 - Extended Sightline Shift

**Profile ID:** `precision_extended_sightline_shift`  
**Base day ID:** `extended_shift_survival_trial`  
**Experience:** PRECISION D13: endurance - accuracy.  
**Message:** Extended Sightline Shift: The shift got longer. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is endurance.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `slow_attrition` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `black_lab` |
| `encounter_director` | `precision_extended_sightline_shift` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_extended_sightline_shift` |
| `family` | `precision` |
| `tier` | `medium` |
| `theme` | `precision_endurance` |
| `mixed_encounter_chance` | `0.098` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `607` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Extended Sightline Shift runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `0.3` |
| `WeatherFrequency` | `2` |
| `SinkRefillRate` | `0.35` |
| `FoodSpoilSpeedMultiplier` | `1.8` |
| `RefrigerationEffectivenessMultiplier` | `0.65` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `1.5` |
| `EnemyPlayerDamageMultiplier` | `2` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `1.9` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.7` |
| `ThirstSpeedMultiplier` | `1.7` |
| `FatigueSpeedMultiplier` | `1.6` |
| `ContinenceSpeedMultiplier` | `1.35` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.2` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1.4` |
| `ItemDurabilityMultiplier` | `0.9` |
| `DurabilityLossOnDeathMultiplier` | `0.35` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `2` |
| `FirstTimeStartingWeapon` | `0` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `10` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=3
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=0.3
WeatherFrequency=2
SinkRefillRate=0.35
FoodSpoilSpeedMultiplier=1.8
RefrigerationEffectivenessMultiplier=0.65
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.7
EnemyHealthMultiplier=1.5
EnemyPlayerDamageMultiplier=2
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=1.9
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.7
ThirstSpeedMultiplier=1.7
FatigueSpeedMultiplier=1.6
ContinenceSpeedMultiplier=1.35
BonusPerkPoints=0
PlayerXPGainMultiplier=2.2
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1.4
ItemDurabilityMultiplier=0.9
DurabilityLossOnDeathMultiplier=0.35
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=2
FirstTimeStartingWeapon=0
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=10
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 14 - Supply Closet Blind Spot

**Profile ID:** `precision_supply_closet_blind_spot`  
**Base day ID:** `supply_closet_miracle`  
**Experience:** PRECISION D14: relief - accuracy.  
**Message:** Supply Closet Blind Spot: Relief looks unsupervised. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is relief.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `relief_day` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `black_lab` |
| `encounter_director` | `precision_supply_closet_blind_spot` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_supply_closet_blind_spot` |
| `family` | `precision` |
| `tier` | `very_low` |
| `theme` | `precision_relief` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `4` |
| `mixed_encounter_cooldown` | `780` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Supply Closet Blind Spot runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1` |
| `WeatherFrequency` | `1` |
| `SinkRefillRate` | `5` |
| `FoodSpoilSpeedMultiplier` | `0.25` |
| `RefrigerationEffectivenessMultiplier` | `2` |
| `StorageByTag` | `False` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `False` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.4` |
| `EnemyHealthMultiplier` | `0.9` |
| `EnemyPlayerDamageMultiplier` | `0.8` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `1` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.35` |
| `ThirstSpeedMultiplier` | `0.35` |
| `FatigueSpeedMultiplier` | `0.35` |
| `ContinenceSpeedMultiplier` | `0.35` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `5.1` |
| `ItemStackSizeMultiplier` | `20` |
| `ItemWeightMultiplier` | `0.2` |
| `ItemDurabilityMultiplier` | `6` |
| `DurabilityLossOnDeathMultiplier` | `0` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `2` |
| `FirstTimeStartingWeapon` | `6` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `40` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=3
HardcoreMode=False
LootRespawnEnabled=True
PowerSocketsOffAtNight=False
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1
WeatherFrequency=1
SinkRefillRate=5
FoodSpoilSpeedMultiplier=0.25
RefrigerationEffectivenessMultiplier=2
StorageByTag=False
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=False
InvisibleRadiation=False
EnemySpawnRate=0.4
EnemyHealthMultiplier=0.9
EnemyPlayerDamageMultiplier=0.8
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=1
EnemyAccuracy=3
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.35
ThirstSpeedMultiplier=0.35
FatigueSpeedMultiplier=0.35
ContinenceSpeedMultiplier=0.35
BonusPerkPoints=12
PlayerXPGainMultiplier=5.1
ItemStackSizeMultiplier=20
ItemWeightMultiplier=0.2
ItemDurabilityMultiplier=6
DurabilityLossOnDeathMultiplier=0
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=2
FirstTimeStartingWeapon=6
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=40
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 15 - Accuracy Audit

**Profile ID:** `precision_accuracy_audit`  
**Base day ID:** `accuracy_audit`  
**Experience:** PRECISION D15: precision - accuracy.  
**Message:** Accuracy Audit: Accuracy found the room. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is precision.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `precision_patrols` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `precision_accuracy_audit` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_accuracy_audit` |
| `family` | `precision` |
| `tier` | `high` |
| `theme` | `precision_precision` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `572` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Accuracy Audit runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1` |
| `WeatherFrequency` | `2` |
| `SinkRefillRate` | `1` |
| `FoodSpoilSpeedMultiplier` | `1` |
| `RefrigerationEffectivenessMultiplier` | `1` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `False` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.9` |
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `2.3` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `2.6` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1.25` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.9` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.9` |
| `ItemDurabilityMultiplier` | `1` |
| `DurabilityLossOnDeathMultiplier` | `0.3` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `True` |
| `DeathPenalties` | `2` |
| `FirstTimeStartingWeapon` | `4` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `12` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=3
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1
WeatherFrequency=2
SinkRefillRate=1
FoodSpoilSpeedMultiplier=1
RefrigerationEffectivenessMultiplier=1
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=False
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.9
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=2.3
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=2.6
EnemyAccuracy=4
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1.25
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2.9
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.9
ItemDurabilityMultiplier=1
DurabilityLossOnDeathMultiplier=0.3
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=True
DeathPenalties=2
FirstTimeStartingWeapon=4
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 16 - Experimental Ballistics

**Profile ID:** `precision_experimental_ballistics`  
**Base day ID:** `approved_experimental_conditions`  
**Experience:** PRECISION D16: experiment - accuracy.  
**Message:** Experimental Ballistics: Variables escaped again. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is experiment.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `experimental_mixed` |
| `lethal_lasers` | `weird_cycle_or_standard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `precision_experimental_ballistics` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_experimental_ballistics` |
| `family` | `precision` |
| `tier` | `extreme` |
| `theme` | `precision_experimental` |
| `mixed_encounter_chance` | `0.154` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `515` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Experimental Ballistics runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `1` |
| `DayNightCycleSpeedMultiplier` | `1.5` |
| `WeatherFrequency` | `5` |
| `SinkRefillRate` | `0` |
| `FoodSpoilSpeedMultiplier` | `0.4` |
| `RefrigerationEffectivenessMultiplier` | `2` |
| `StorageByTag` | `False` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `True` |
| `EnemySpawnRate` | `1.2` |
| `EnemyHealthMultiplier` | `1.7` |
| `EnemyPlayerDamageMultiplier` | `1.5` |
| `EnemyDeployableDamageMultiplier` | `0.7` |
| `DetectionSpeedMultiplier` | `1` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `1.2` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `1.2` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `5.6` |
| `ItemStackSizeMultiplier` | `15` |
| `ItemWeightMultiplier` | `0.2` |
| `ItemDurabilityMultiplier` | `5` |
| `DurabilityLossOnDeathMultiplier` | `0` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `True` |
| `DeathPenalties` | `2` |
| `FirstTimeStartingWeapon` | `6` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `42` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=3
HardcoreMode=False
LootRespawnEnabled=True
PowerSocketsOffAtNight=False
DayNightCycleState=1
DayNightCycleSpeedMultiplier=1.5
WeatherFrequency=5
SinkRefillRate=0
FoodSpoilSpeedMultiplier=0.4
RefrigerationEffectivenessMultiplier=2
StorageByTag=False
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=True
EnemySpawnRate=1.2
EnemyHealthMultiplier=1.7
EnemyPlayerDamageMultiplier=1.5
EnemyDeployableDamageMultiplier=0.7
DetectionSpeedMultiplier=1
EnemyAccuracy=4
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=1.2
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=1.2
BonusPerkPoints=2
PlayerXPGainMultiplier=5.6
ItemStackSizeMultiplier=15
ItemWeightMultiplier=0.2
ItemDurabilityMultiplier=5
DurabilityLossOnDeathMultiplier=0
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=True
DeathPenalties=2
FirstTimeStartingWeapon=6
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=42
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 17 - Final Precision Exam

**Profile ID:** `precision_final_precision_exam`  
**Base day ID:** `end_of_rotation_compliance_test`  
**Experience:** PRECISION D17: capstone - accuracy.  
**Message:** Final Precision Exam: Final exam is armed. Misses are noncompliant.  
**Run advice:** Tip: Use cover. Then apologize. Today is capstone.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `capstone_pressure` |
| `lethal_lasers` | `overcharged_high_hazard` |
| `ante_up` | `capstone` |
| `encounter_director` | `precision_final_precision_exam` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `precision_final_precision_exam` |
| `family` | `precision` |
| `tier` | `capstone` |
| `theme` | `precision_capstone` |
| `mixed_encounter_chance` | `0.196` |
| `mixed_encounter_budget` | `11` |
| `mixed_encounter_cooldown` | `446` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Final Precision Exam runs accuracy pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `0` |
| `DayNightCycleSpeedMultiplier` | `1.45` |
| `WeatherFrequency` | `5` |
| `SinkRefillRate` | `0.5` |
| `FoodSpoilSpeedMultiplier` | `1.6` |
| `RefrigerationEffectivenessMultiplier` | `0.6` |
| `StorageByTag` | `True` |
| `StructuralSupportLimit` | `0` |
| `BridgeSupports` | `0` |
| `HomeWorlds` | `True` |
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `2.3` |
| `EnemyHealthMultiplier` | `2.6` |
| `EnemyPlayerDamageMultiplier` | `3.6` |
| `EnemyDeployableDamageMultiplier` | `2` |
| `DetectionSpeedMultiplier` | `4.1` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1.35` |
| `ThirstSpeedMultiplier` | `1.35` |
| `FatigueSpeedMultiplier` | `1.25` |
| `ContinenceSpeedMultiplier` | `1.1` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `4.8` |
| `ItemStackSizeMultiplier` | `3` |
| `ItemWeightMultiplier` | `1.1` |
| `ItemDurabilityMultiplier` | `1` |
| `DurabilityLossOnDeathMultiplier` | `0.5` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `True` |
| `DeathPenalties` | `3` |
| `FirstTimeStartingWeapon` | `0` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `12` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=3
HardcoreMode=False
LootRespawnEnabled=False
PowerSocketsOffAtNight=True
DayNightCycleState=0
DayNightCycleSpeedMultiplier=1.45
WeatherFrequency=5
SinkRefillRate=0.5
FoodSpoilSpeedMultiplier=1.6
RefrigerationEffectivenessMultiplier=0.6
StorageByTag=True
StructuralSupportLimit=0
BridgeSupports=0
HomeWorlds=True
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=2.3
EnemyHealthMultiplier=2.6
EnemyPlayerDamageMultiplier=3.6
EnemyDeployableDamageMultiplier=2
DetectionSpeedMultiplier=4.1
EnemyAccuracy=4
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1.35
ThirstSpeedMultiplier=1.35
FatigueSpeedMultiplier=1.25
ContinenceSpeedMultiplier=1.1
BonusPerkPoints=2
PlayerXPGainMultiplier=4.8
ItemStackSizeMultiplier=3
ItemWeightMultiplier=1.1
ItemDurabilityMultiplier=1
DurabilityLossOnDeathMultiplier=0.5
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=True
DeathPenalties=3
FirstTimeStartingWeapon=0
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```
