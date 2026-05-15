# Horde Family

**Family ID:** `horde`
**Genre:** crowd pressure and swarm control
**Tone:** overwhelmed logistics office

Quantity problem. The facility has ordered too many hostiles.

## 17-Day Index

| Day | Profile | Experience | DynamicSpawns | Lethal Lasers | ANTE Up |
|---:|---|---|---|---|---|
| 1 | [Headcount Error](#day-1-headcount-error) | HORDE D01: baseline - crowd control. | `security_pressure` | `standard_safety` | `security` |
| 2 | [Open Floor Overflow](#day-2-open-floor-overflow) | HORDE D02: prep - crowd control. | `security_pressure` | `low_hazard` | `security` |
| 3 | [Pest Overbooking](#day-3-pest-overbooking) | HORDE D03: resource - crowd control. | `security_pressure` | `standard_safety` | `security` |
| 4 | [Supply Line Stampede](#day-4-supply-line-stampede) | HORDE D04: loot - crowd control. | `security_pressure` | `low_hazard` | `security` |
| 5 | [Crowd Control Misfiled](#day-5-crowd-control-misfiled) | HORDE D05: security - crowd control. | `security_pressure` | `moderate_hazard` | `security` |
| 6 | [Weather of Bodies](#day-6-weather-of-bodies) | HORDE D06: weather - crowd control. | `security_pressure` | `electrical_hazard_light` | `security` |
| 7 | [Night Shift Attendance](#day-7-night-shift-attendance) | HORDE D07: night - crowd control. | `security_pressure` | `night_visible_moderate` | `security` |
| 8 | [Route Congestion](#day-8-route-congestion) | HORDE D08: route - crowd control. | `security_pressure` | `low_to_moderate_hazard` | `speedrun` |
| 9 | [Ration Queue Riot](#day-9-ration-queue-riot) | HORDE D09: scarcity - crowd control. | `security_pressure` | `standard_safety` | `security` |
| 10 | [Briefly Less Crowded](#day-10-briefly-less-crowded) | HORDE D10: recovery - crowd control. | `minimum_pressure` | `disabled_or_low_if_supported` | `recovery` |
| 11 | [Training Population Spike](#day-11-training-population-spike) | HORDE D11: training - crowd control. | `security_pressure` | `training_hazard` | `security` |
| 12 | [Black Lab Crowd Review](#day-12-black-lab-crowd-review) | HORDE D12: major test - crowd control. | `hard_pressure` | `high_hazard` | `security` |
| 13 | [Extended Line Formation](#day-13-extended-line-formation) | HORDE D13: endurance - crowd control. | `security_pressure` | `standard_safety` | `security` |
| 14 | [Supply Closet Queue](#day-14-supply-closet-queue) | HORDE D14: relief - crowd control. | `relief_day` | `disabled_or_low_if_supported` | `relief` |
| 15 | [Accuracy by Volume](#day-15-accuracy-by-volume) | HORDE D15: precision - crowd control. | `security_pressure` | `moderate_hazard` | `security` |
| 16 | [Experimental Crowd Density](#day-16-experimental-crowd-density) | HORDE D16: experiment - crowd control. | `hard_pressure` | `weird_cycle_or_standard` | `security` |
| 17 | [Final Attendance Problem](#day-17-final-attendance-problem) | HORDE D17: capstone - crowd control. | `hard_pressure` | `overcharged_high_hazard` | `speedrun` |

## Day 1 - Headcount Error

**Profile ID:** `horde_headcount_error`  
**Base day ID:** `mostly_normal_allegedly`  
**Experience:** HORDE D01: baseline - crowd control.  
**Message:** Headcount Error: Orientation begins politely. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is baseline.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `security` |
| `encounter_director` | `horde_headcount_error` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_headcount_error` |
| `family` | `horde` |
| `tier` | `medium` |
| `theme` | `swarm_orientation` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `12` |
| `mixed_encounter_cooldown` | `353` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Headcount Error runs crowd control pressure.` |

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
| `EnemySpawnRate` | `1.8` |
| `EnemyHealthMultiplier` | `0.7` |
| `EnemyPlayerDamageMultiplier` | `0.8` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.3` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1` |
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
EnemySpawnRate=1.8
EnemyHealthMultiplier=0.7
EnemyPlayerDamageMultiplier=0.8
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.9
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.3
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1
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

## Day 2 - Open Floor Overflow

**Profile ID:** `horde_open_floor_overflow`  
**Base day ID:** `open_floor_plan_authorization`  
**Experience:** HORDE D02: prep - crowd control.  
**Message:** Open Floor Overflow: Prep window approved. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is prep.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `horde_open_floor_overflow` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_open_floor_overflow` |
| `family` | `horde` |
| `tier` | `low` |
| `theme` | `swarm_preparation` |
| `mixed_encounter_chance` | `0.036` |
| `mixed_encounter_budget` | `11` |
| `mixed_encounter_cooldown` | `422` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Open Floor Overflow runs crowd control pressure.` |

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
| `EnemySpawnRate` | `1` |
| `EnemyHealthMultiplier` | `0.6` |
| `EnemyPlayerDamageMultiplier` | `0.5` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.6` |
| `EnemyAccuracy` | `0` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.65` |
| `ThirstSpeedMultiplier` | `0.65` |
| `FatigueSpeedMultiplier` | `0.65` |
| `ContinenceSpeedMultiplier` | `0.65` |
| `BonusPerkPoints` | `7` |
| `PlayerXPGainMultiplier` | `1.8` |
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
EnemySpawnRate=1
EnemyHealthMultiplier=0.6
EnemyPlayerDamageMultiplier=0.5
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.6
EnemyAccuracy=0
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.65
ThirstSpeedMultiplier=0.65
FatigueSpeedMultiplier=0.65
ContinenceSpeedMultiplier=0.65
BonusPerkPoints=7
PlayerXPGainMultiplier=1.8
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

## Day 3 - Pest Overbooking

**Profile ID:** `horde_pest_overbooking`  
**Base day ID:** `questionable_drinking_water`  
**Experience:** HORDE D03: resource - crowd control.  
**Message:** Pest Overbooking: Resources are acting suspicious. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is resource.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `security` |
| `encounter_director` | `horde_pest_overbooking` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_pest_overbooking` |
| `family` | `horde` |
| `tier` | `medium` |
| `theme` | `swarm_bio_resource` |
| `mixed_encounter_chance` | `0.118` |
| `mixed_encounter_budget` | `13` |
| `mixed_encounter_cooldown` | `318` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Pest Overbooking runs crowd control pressure.` |

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
| `EnemySpawnRate` | `1.9` |
| `EnemyHealthMultiplier` | `0.8` |
| `EnemyPlayerDamageMultiplier` | `0.9` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.2` |
| `ThirstSpeedMultiplier` | `1.7` |
| `FatigueSpeedMultiplier` | `1.1` |
| `ContinenceSpeedMultiplier` | `1.45` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.5` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1` |
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
EnemySpawnRate=1.9
EnemyHealthMultiplier=0.8
EnemyPlayerDamageMultiplier=0.9
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.9
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.2
ThirstSpeedMultiplier=1.7
FatigueSpeedMultiplier=1.1
ContinenceSpeedMultiplier=1.45
BonusPerkPoints=0
PlayerXPGainMultiplier=1.5
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1
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

## Day 4 - Supply Line Stampede

**Profile ID:** `horde_supply_line_stampede`  
**Base day ID:** `inventory_expansion_memo`  
**Experience:** HORDE D04: loot - crowd control.  
**Message:** Supply Line Stampede: Loot moved toward danger. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is loot.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `horde_supply_line_stampede` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_supply_line_stampede` |
| `family` | `horde` |
| `tier` | `low` |
| `theme` | `swarm_loot_mobility` |
| `mixed_encounter_chance` | `0.073` |
| `mixed_encounter_budget` | `12` |
| `mixed_encounter_cooldown` | `376` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Supply Line Stampede runs crowd control pressure.` |

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
| `EnemySpawnRate` | `1.4` |
| `EnemyHealthMultiplier` | `0.6` |
| `EnemyPlayerDamageMultiplier` | `0.7` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.7` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.75` |
| `ThirstSpeedMultiplier` | `0.75` |
| `FatigueSpeedMultiplier` | `0.75` |
| `ContinenceSpeedMultiplier` | `0.75` |
| `BonusPerkPoints` | `3` |
| `PlayerXPGainMultiplier` | `1.9` |
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
EnemySpawnRate=1.4
EnemyHealthMultiplier=0.6
EnemyPlayerDamageMultiplier=0.7
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.7
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.75
ThirstSpeedMultiplier=0.75
FatigueSpeedMultiplier=0.75
ContinenceSpeedMultiplier=0.75
BonusPerkPoints=3
PlayerXPGainMultiplier=1.9
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

## Day 5 - Crowd Control Misfiled

**Profile ID:** `horde_crowd_control_misfiled`  
**Base day ID:** `security_heard_something`  
**Experience:** HORDE D05: security - crowd control.  
**Message:** Crowd Control Misfiled: Security noticed you. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is security.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `horde_crowd_control_misfiled` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_crowd_control_misfiled` |
| `family` | `horde` |
| `tier` | `high` |
| `theme` | `swarm_security` |
| `mixed_encounter_chance` | `0.155` |
| `mixed_encounter_budget` | `14` |
| `mixed_encounter_cooldown` | `272` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Crowd Control Misfiled runs crowd control pressure.` |

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
| `EnemySpawnRate` | `2.7` |
| `EnemyHealthMultiplier` | `0.8` |
| `EnemyPlayerDamageMultiplier` | `1.1` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.7` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1.15` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.8` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1` |
| `ItemDurabilityMultiplier` | `1.25` |
| `DurabilityLossOnDeathMultiplier` | `0.3` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
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
EnemySpawnRate=2.7
EnemyHealthMultiplier=0.8
EnemyPlayerDamageMultiplier=1.1
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.7
EnemyAccuracy=1
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1.15
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.8
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1
ItemDurabilityMultiplier=1.25
DurabilityLossOnDeathMultiplier=0.3
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=1
FirstTimeStartingWeapon=4
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 6 - Weather of Bodies

**Profile ID:** `horde_weather_of_bodies`  
**Base day ID:** `weather_department_apology`  
**Experience:** HORDE D06: weather - crowd control.  
**Message:** Weather of Bodies: The weather got indoors. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is weather.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `electrical_hazard_light` |
| `ante_up` | `security` |
| `encounter_director` | `horde_weather_of_bodies` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_weather_of_bodies` |
| `family` | `horde` |
| `tier` | `medium` |
| `theme` | `swarm_weather` |
| `mixed_encounter_chance` | `0.118` |
| `mixed_encounter_budget` | `13` |
| `mixed_encounter_cooldown` | `318` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Weather of Bodies runs crowd control pressure.` |

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
| `EnemySpawnRate` | `2` |
| `EnemyHealthMultiplier` | `0.7` |
| `EnemyPlayerDamageMultiplier` | `0.9` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.1` |
| `ThirstSpeedMultiplier` | `1.35` |
| `FatigueSpeedMultiplier` | `1.1` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.4` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1` |
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
EnemySpawnRate=2
EnemyHealthMultiplier=0.7
EnemyPlayerDamageMultiplier=0.9
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.1
ThirstSpeedMultiplier=1.35
FatigueSpeedMultiplier=1.1
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.4
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1
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

## Day 7 - Night Shift Attendance

**Profile ID:** `horde_night_shift_attendance`  
**Base day ID:** `night_shift_with_benefits`  
**Experience:** HORDE D07: night - crowd control.  
**Message:** Night Shift Attendance: Lights negotiated badly. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is night.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `night_visible_moderate` |
| `ante_up` | `security` |
| `encounter_director` | `horde_night_shift_attendance` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_night_shift_attendance` |
| `family` | `horde` |
| `tier` | `high` |
| `theme` | `swarm_night` |
| `mixed_encounter_chance` | `0.155` |
| `mixed_encounter_budget` | `14` |
| `mixed_encounter_cooldown` | `272` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Night Shift Attendance runs crowd control pressure.` |

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
| `EnemySpawnRate` | `2.9` |
| `EnemyHealthMultiplier` | `0.8` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.4` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.95` |
| `ThirstSpeedMultiplier` | `0.95` |
| `FatigueSpeedMultiplier` | `1.4` |
| `ContinenceSpeedMultiplier` | `0.95` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2` |
| `ItemStackSizeMultiplier` | `3` |
| `ItemWeightMultiplier` | `0.8` |
| `ItemDurabilityMultiplier` | `1.5` |
| `DurabilityLossOnDeathMultiplier` | `0.2` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
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
EnemySpawnRate=2.9
EnemyHealthMultiplier=0.8
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.4
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.95
ThirstSpeedMultiplier=0.95
FatigueSpeedMultiplier=1.4
ContinenceSpeedMultiplier=0.95
BonusPerkPoints=0
PlayerXPGainMultiplier=2
ItemStackSizeMultiplier=3
ItemWeightMultiplier=0.8
ItemDurabilityMultiplier=1.5
DurabilityLossOnDeathMultiplier=0.2
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=1
FirstTimeStartingWeapon=5
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=16
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 8 - Route Congestion

**Profile ID:** `horde_route_congestion`  
**Base day ID:** `clock_department_incident`  
**Experience:** HORDE D08: route - crowd control.  
**Message:** Route Congestion: Routes are impatient. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is route.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `low_to_moderate_hazard` |
| `ante_up` | `speedrun` |
| `encounter_director` | `horde_route_congestion` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_route_congestion` |
| `family` | `horde` |
| `tier` | `medium` |
| `theme` | `swarm_route` |
| `mixed_encounter_chance` | `0.137` |
| `mixed_encounter_budget` | `14` |
| `mixed_encounter_cooldown` | `296` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Route Congestion runs crowd control pressure.` |

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
| `EnemySpawnRate` | `2.4` |
| `EnemyHealthMultiplier` | `0.6` |
| `EnemyPlayerDamageMultiplier` | `0.9` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.2` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.7` |
| `ThirstSpeedMultiplier` | `0.7` |
| `FatigueSpeedMultiplier` | `0.7` |
| `ContinenceSpeedMultiplier` | `0.7` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2` |
| `ItemStackSizeMultiplier` | `4` |
| `ItemWeightMultiplier` | `0.8` |
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
EnemySpawnRate=2.4
EnemyHealthMultiplier=0.6
EnemyPlayerDamageMultiplier=0.9
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.2
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.7
ThirstSpeedMultiplier=0.7
FatigueSpeedMultiplier=0.7
ContinenceSpeedMultiplier=0.7
BonusPerkPoints=0
PlayerXPGainMultiplier=2
ItemStackSizeMultiplier=4
ItemWeightMultiplier=0.8
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

## Day 9 - Ration Queue Riot

**Profile ID:** `horde_ration_queue_riot`  
**Base day ID:** `lab_rations_committee`  
**Experience:** HORDE D09: scarcity - crowd control.  
**Message:** Ration Queue Riot: Rations filed a complaint. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is scarcity.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `security` |
| `encounter_director` | `horde_ration_queue_riot` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_ration_queue_riot` |
| `family` | `horde` |
| `tier` | `medium` |
| `theme` | `swarm_scarcity` |
| `mixed_encounter_chance` | `0.109` |
| `mixed_encounter_budget` | `13` |
| `mixed_encounter_cooldown` | `330` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Ration Queue Riot runs crowd control pressure.` |

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
| `EnemySpawnRate` | `1.8` |
| `EnemyHealthMultiplier` | `0.8` |
| `EnemyPlayerDamageMultiplier` | `0.9` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.5` |
| `ThirstSpeedMultiplier` | `1.4` |
| `FatigueSpeedMultiplier` | `1.3` |
| `ContinenceSpeedMultiplier` | `1.25` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.5` |
| `ItemStackSizeMultiplier` | `1` |
| `ItemWeightMultiplier` | `1.4` |
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
EnemySpawnRate=1.8
EnemyHealthMultiplier=0.8
EnemyPlayerDamageMultiplier=0.9
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.9
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.5
ThirstSpeedMultiplier=1.4
FatigueSpeedMultiplier=1.3
ContinenceSpeedMultiplier=1.25
BonusPerkPoints=0
PlayerXPGainMultiplier=1.5
ItemStackSizeMultiplier=1
ItemWeightMultiplier=1.4
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

## Day 10 - Briefly Less Crowded

**Profile ID:** `horde_briefly_less_crowded`  
**Base day ID:** `bring_your_scientist_to_work_day`  
**Experience:** HORDE D10: recovery - crowd control.  
**Message:** Briefly Less Crowded: Recovery is on probation. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is recovery.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `minimum_pressure` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `recovery` |
| `encounter_director` | `horde_briefly_less_crowded` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_briefly_less_crowded` |
| `family` | `horde` |
| `tier` | `very_low` |
| `theme` | `swarm_recovery` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `456` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Briefly Less Crowded runs crowd control pressure.` |

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
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `0.5` |
| `EnemyPlayerDamageMultiplier` | `0.3` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.4` |
| `EnemyAccuracy` | `0` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.45` |
| `ThirstSpeedMultiplier` | `0.45` |
| `FatigueSpeedMultiplier` | `0.45` |
| `ContinenceSpeedMultiplier` | `0.45` |
| `BonusPerkPoints` | `10` |
| `PlayerXPGainMultiplier` | `2.6` |
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
EnemySpawnRate=0.7
EnemyHealthMultiplier=0.5
EnemyPlayerDamageMultiplier=0.3
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.4
EnemyAccuracy=0
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.45
ThirstSpeedMultiplier=0.45
FatigueSpeedMultiplier=0.45
ContinenceSpeedMultiplier=0.45
BonusPerkPoints=10
PlayerXPGainMultiplier=2.6
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

## Day 11 - Training Population Spike

**Profile ID:** `horde_training_population_spike`  
**Base day ID:** `mandatory_safety_training`  
**Experience:** HORDE D11: training - crowd control.  
**Message:** Training Population Spike: Training remembered teeth. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is training.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `training_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `horde_training_population_spike` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_training_population_spike` |
| `family` | `horde` |
| `tier` | `low` |
| `theme` | `swarm_training` |
| `mixed_encounter_chance` | `0.064` |
| `mixed_encounter_budget` | `12` |
| `mixed_encounter_cooldown` | `388` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Training Population Spike runs crowd control pressure.` |

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
| `EnemySpawnRate` | `1.7` |
| `EnemyHealthMultiplier` | `0.6` |
| `EnemyPlayerDamageMultiplier` | `0.5` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.7` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `0.8` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `0.8` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `3.4` |
| `ItemStackSizeMultiplier` | `5` |
| `ItemWeightMultiplier` | `0.7` |
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
EnemySpawnRate=1.7
EnemyHealthMultiplier=0.6
EnemyPlayerDamageMultiplier=0.5
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.7
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=0.8
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=0.8
BonusPerkPoints=12
PlayerXPGainMultiplier=3.4
ItemStackSizeMultiplier=5
ItemWeightMultiplier=0.7
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

## Day 12 - Black Lab Crowd Review

**Profile ID:** `horde_black_lab_crowd_review`  
**Base day ID:** `black_lab_performance_review`  
**Experience:** HORDE D12: major test - crowd control.  
**Message:** Black Lab Crowd Review: Black Lab reviewed you. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is major test.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `hard_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `horde_black_lab_crowd_review` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_black_lab_crowd_review` |
| `family` | `horde` |
| `tier` | `extreme` |
| `theme` | `swarm_heavy_test` |
| `mixed_encounter_chance` | `0.209` |
| `mixed_encounter_budget` | `16` |
| `mixed_encounter_cooldown` | `204` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `3` |
| `description` | `Encounter: Black Lab Crowd Review runs crowd control pressure.` |

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
| `EnemySpawnRate` | `4` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.6` |
| `EnemyDeployableDamageMultiplier` | `1.35` |
| `DetectionSpeedMultiplier` | `1.7` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.15` |
| `HungerSpeedMultiplier` | `1.15` |
| `ThirstSpeedMultiplier` | `1.15` |
| `FatigueSpeedMultiplier` | `1.15` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.7` |
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
EnemySpawnRate=4
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.6
EnemyDeployableDamageMultiplier=1.35
DetectionSpeedMultiplier=1.7
EnemyAccuracy=2
DamageToAlliesMultiplier=0.15
HungerSpeedMultiplier=1.15
ThirstSpeedMultiplier=1.15
FatigueSpeedMultiplier=1.15
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2.7
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

## Day 13 - Extended Line Formation

**Profile ID:** `horde_extended_line_formation`  
**Base day ID:** `extended_shift_survival_trial`  
**Experience:** HORDE D13: endurance - crowd control.  
**Message:** Extended Line Formation: The shift got longer. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is endurance.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `security` |
| `encounter_director` | `horde_extended_line_formation` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_extended_line_formation` |
| `family` | `horde` |
| `tier` | `medium` |
| `theme` | `swarm_endurance` |
| `mixed_encounter_chance` | `0.127` |
| `mixed_encounter_budget` | `14` |
| `mixed_encounter_cooldown` | `307` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Extended Line Formation runs crowd control pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
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
| `EnemySpawnRate` | `1.6` |
| `EnemyHealthMultiplier` | `0.9` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `1.35` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.7` |
| `ThirstSpeedMultiplier` | `1.7` |
| `FatigueSpeedMultiplier` | `1.6` |
| `ContinenceSpeedMultiplier` | `1.35` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.7` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1.5` |
| `ItemDurabilityMultiplier` | `0.9` |
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
GameDifficulty=2
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
EnemySpawnRate=1.6
EnemyHealthMultiplier=0.9
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=1.35
DetectionSpeedMultiplier=0.9
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.7
ThirstSpeedMultiplier=1.7
FatigueSpeedMultiplier=1.6
ContinenceSpeedMultiplier=1.35
BonusPerkPoints=0
PlayerXPGainMultiplier=1.7
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1.5
ItemDurabilityMultiplier=0.9
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

## Day 14 - Supply Closet Queue

**Profile ID:** `horde_supply_closet_queue`  
**Base day ID:** `supply_closet_miracle`  
**Experience:** HORDE D14: relief - crowd control.  
**Message:** Supply Closet Queue: Relief looks unsupervised. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is relief.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `relief_day` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `relief` |
| `encounter_director` | `horde_supply_closet_queue` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_supply_closet_queue` |
| `family` | `horde` |
| `tier` | `very_low` |
| `theme` | `swarm_relief` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `480` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Supply Closet Queue runs crowd control pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
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
| `EnemySpawnRate` | `0.9` |
| `EnemyHealthMultiplier` | `0.5` |
| `EnemyPlayerDamageMultiplier` | `0.4` |
| `EnemyDeployableDamageMultiplier` | `1.35` |
| `DetectionSpeedMultiplier` | `0.5` |
| `EnemyAccuracy` | `0` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.35` |
| `ThirstSpeedMultiplier` | `0.35` |
| `FatigueSpeedMultiplier` | `0.35` |
| `ContinenceSpeedMultiplier` | `0.35` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `3.8` |
| `ItemStackSizeMultiplier` | `20` |
| `ItemWeightMultiplier` | `0.2` |
| `ItemDurabilityMultiplier` | `6` |
| `DurabilityLossOnDeathMultiplier` | `0` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `0` |
| `FirstTimeStartingWeapon` | `6` |
| `HostAccessPlayerCorpses` | `True` |
| `AllowCharacterReset` | `True` |
| `BaseInventorySize` | `40` |
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
EnemySpawnRate=0.9
EnemyHealthMultiplier=0.5
EnemyPlayerDamageMultiplier=0.4
EnemyDeployableDamageMultiplier=1.35
DetectionSpeedMultiplier=0.5
EnemyAccuracy=0
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.35
ThirstSpeedMultiplier=0.35
FatigueSpeedMultiplier=0.35
ContinenceSpeedMultiplier=0.35
BonusPerkPoints=12
PlayerXPGainMultiplier=3.8
ItemStackSizeMultiplier=20
ItemWeightMultiplier=0.2
ItemDurabilityMultiplier=6
DurabilityLossOnDeathMultiplier=0
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=0
FirstTimeStartingWeapon=6
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=40
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 15 - Accuracy by Volume

**Profile ID:** `horde_accuracy_by_volume`  
**Base day ID:** `accuracy_audit`  
**Experience:** HORDE D15: precision - crowd control.  
**Message:** Accuracy by Volume: Accuracy found the room. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is precision.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `horde_accuracy_by_volume` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_accuracy_by_volume` |
| `family` | `horde` |
| `tier` | `high` |
| `theme` | `swarm_precision` |
| `mixed_encounter_chance` | `0.155` |
| `mixed_encounter_budget` | `14` |
| `mixed_encounter_cooldown` | `272` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Accuracy by Volume runs crowd control pressure.` |

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
| `EnemySpawnRate` | `2.1` |
| `EnemyHealthMultiplier` | `0.7` |
| `EnemyPlayerDamageMultiplier` | `1.2` |
| `EnemyDeployableDamageMultiplier` | `1.35` |
| `DetectionSpeedMultiplier` | `1.3` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1.25` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.2` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1` |
| `ItemDurabilityMultiplier` | `1` |
| `DurabilityLossOnDeathMultiplier` | `0.3` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
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
EnemySpawnRate=2.1
EnemyHealthMultiplier=0.7
EnemyPlayerDamageMultiplier=1.2
EnemyDeployableDamageMultiplier=1.35
DetectionSpeedMultiplier=1.3
EnemyAccuracy=1
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1.25
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2.2
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1
ItemDurabilityMultiplier=1
DurabilityLossOnDeathMultiplier=0.3
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=1
FirstTimeStartingWeapon=4
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 16 - Experimental Crowd Density

**Profile ID:** `horde_experimental_crowd_density`  
**Base day ID:** `approved_experimental_conditions`  
**Experience:** HORDE D16: experiment - crowd control.  
**Message:** Experimental Crowd Density: Variables escaped again. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is experiment.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `hard_pressure` |
| `lethal_lasers` | `weird_cycle_or_standard` |
| `ante_up` | `security` |
| `encounter_director` | `horde_experimental_crowd_density` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_experimental_crowd_density` |
| `family` | `horde` |
| `tier` | `extreme` |
| `theme` | `swarm_experimental` |
| `mixed_encounter_chance` | `0.2` |
| `mixed_encounter_budget` | `16` |
| `mixed_encounter_cooldown` | `215` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `3` |
| `description` | `Encounter: Experimental Crowd Density runs crowd control pressure.` |

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
| `EnemySpawnRate` | `2.6` |
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `0.8` |
| `EnemyDeployableDamageMultiplier` | `1.35` |
| `DetectionSpeedMultiplier` | `0.5` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `1.2` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `1.2` |
| `BonusPerkPoints` | `15` |
| `PlayerXPGainMultiplier` | `4.3` |
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
EnemySpawnRate=2.6
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=0.8
EnemyDeployableDamageMultiplier=1.35
DetectionSpeedMultiplier=0.5
EnemyAccuracy=2
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=1.2
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=1.2
BonusPerkPoints=15
PlayerXPGainMultiplier=4.3
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

## Day 17 - Final Attendance Problem

**Profile ID:** `horde_final_attendance_problem`  
**Base day ID:** `end_of_rotation_compliance_test`  
**Experience:** HORDE D17: capstone - crowd control.  
**Message:** Final Attendance Problem: Final exam is armed. Personal space is canceled.  
**Run advice:** Tip: Count them later. Today is capstone.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `hard_pressure` |
| `lethal_lasers` | `overcharged_high_hazard` |
| `ante_up` | `speedrun` |
| `encounter_director` | `horde_final_attendance_problem` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `horde_final_attendance_problem` |
| `family` | `horde` |
| `tier` | `capstone` |
| `theme` | `swarm_capstone` |
| `mixed_encounter_chance` | `0.255` |
| `mixed_encounter_budget` | `17` |
| `mixed_encounter_cooldown` | `146` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `3` |
| `description` | `Encounter: Final Attendance Problem runs crowd control pressure.` |

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
| `EnemySpawnRate` | `5.2` |
| `EnemyHealthMultiplier` | `1.6` |
| `EnemyPlayerDamageMultiplier` | `1.9` |
| `EnemyDeployableDamageMultiplier` | `1.35` |
| `DetectionSpeedMultiplier` | `2` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1.35` |
| `ThirstSpeedMultiplier` | `1.35` |
| `FatigueSpeedMultiplier` | `1.25` |
| `ContinenceSpeedMultiplier` | `1.1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `3.9` |
| `ItemStackSizeMultiplier` | `3` |
| `ItemWeightMultiplier` | `1.1` |
| `ItemDurabilityMultiplier` | `1` |
| `DurabilityLossOnDeathMultiplier` | `0.5` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
| `DeathPenalties` | `2` |
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
EnemySpawnRate=5.2
EnemyHealthMultiplier=1.6
EnemyPlayerDamageMultiplier=1.9
EnemyDeployableDamageMultiplier=1.35
DetectionSpeedMultiplier=2
EnemyAccuracy=2
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1.35
ThirstSpeedMultiplier=1.35
FatigueSpeedMultiplier=1.25
ContinenceSpeedMultiplier=1.1
BonusPerkPoints=0
PlayerXPGainMultiplier=3.9
ItemStackSizeMultiplier=3
ItemWeightMultiplier=1.1
ItemDurabilityMultiplier=1
DurabilityLossOnDeathMultiplier=0.5
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=2
FirstTimeStartingWeapon=0
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```
