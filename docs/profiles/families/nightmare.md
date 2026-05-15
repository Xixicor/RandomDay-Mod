# Nightmare Family

**Family ID:** `nightmare`
**Genre:** dark horror and rare severe threats
**Tone:** deadpan horror administration

Darkness, dread, rare severe threats, and quiet mistakes.

## 17-Day Index

| Day | Profile | Experience | DynamicSpawns | Lethal Lasers | ANTE Up |
|---:|---|---|---|---|---|
| 1 | [Softly Lit Mistake](#day-1-softly-lit-mistake) | NIGHTMARE D01: baseline - horror. | `night_pressure` | `standard_safety` | `standard` |
| 2 | [Open Floor Dread](#day-2-open-floor-dread) | NIGHTMARE D02: prep - horror. | `quiet_base_safe` | `low_hazard` | `quiet` |
| 3 | [Water in the Dark](#day-3-water-in-the-dark) | NIGHTMARE D03: resource - horror. | `night_pressure` | `standard_safety` | `biohazard` |
| 4 | [Supply Closet Breathing](#day-4-supply-closet-breathing) | NIGHTMARE D04: loot - horror. | `night_pressure` | `low_hazard` | `loot` |
| 5 | [Security Under the Bed](#day-5-security-under-the-bed) | NIGHTMARE D05: security - horror. | `night_pressure` | `high_hazard` | `security` |
| 6 | [Weather With Teeth](#day-6-weather-with-teeth) | NIGHTMARE D06: weather - horror. | `night_pressure` | `electrical_hazard_light` | `weather` |
| 7 | [Lights Out Forever](#day-7-lights-out-forever) | NIGHTMARE D07: night - horror. | `night_pressure` | `high_hazard` | `night` |
| 8 | [Do Not Run Loudly](#day-8-do-not-run-loudly) | NIGHTMARE D08: route - horror. | `night_pressure` | `low_to_moderate_hazard` | `speedrun` |
| 9 | [Rations for the Thing](#day-9-rations-for-the-thing) | NIGHTMARE D09: scarcity - horror. | `night_pressure` | `standard_safety` | `scarcity` |
| 10 | [Recovery Behind a Door](#day-10-recovery-behind-a-door) | NIGHTMARE D10: recovery - horror. | `minimum_pressure` | `disabled_or_low_if_supported` | `recovery` |
| 11 | [Training in the Dark](#day-11-training-in-the-dark) | NIGHTMARE D11: training - horror. | `night_pressure` | `training_hazard` | `training` |
| 12 | [Black Lab Nightmare Review](#day-12-black-lab-nightmare-review) | NIGHTMARE D12: major test - horror. | `night_pressure` | `high_hazard` | `black_lab` |
| 13 | [Long Shift After Midnight](#day-13-long-shift-after-midnight) | NIGHTMARE D13: endurance - horror. | `night_pressure` | `standard_safety` | `black_lab` |
| 14 | [False Morning](#day-14-false-morning) | NIGHTMARE D14: relief - horror. | `relief_day` | `disabled_or_low_if_supported` | `black_lab` |
| 15 | [Accuracy of Shadows](#day-15-accuracy-of-shadows) | NIGHTMARE D15: precision - horror. | `night_pressure` | `high_hazard` | `black_lab` |
| 16 | [Experimental Fear](#day-16-experimental-fear) | NIGHTMARE D16: experiment - horror. | `night_pressure` | `weird_cycle_or_standard` | `black_lab` |
| 17 | [Final Nightmare Practical](#day-17-final-nightmare-practical) | NIGHTMARE D17: capstone - horror. | `night_pressure` | `overcharged_high_hazard` | `capstone` |

## Day 1 - Softly Lit Mistake

**Profile ID:** `nightmare_softly_lit_mistake`  
**Base day ID:** `mostly_normal_allegedly`  
**Experience:** NIGHTMARE D01: baseline - horror.  
**Message:** Softly Lit Mistake: Orientation begins politely. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is baseline.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `standard` |
| `encounter_director` | `nightmare_softly_lit_mistake` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_softly_lit_mistake` |
| `family` | `nightmare` |
| `tier` | `medium` |
| `theme` | `nightmare_orientation` |
| `mixed_encounter_chance` | `0.07` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `473` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Softly Lit Mistake runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `1.6` |
| `EnemyPlayerDamageMultiplier` | `1.8` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.5` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.1` |
| `ThirstSpeedMultiplier` | `1.1` |
| `FatigueSpeedMultiplier` | `1.1` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.9` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.7
EnemyHealthMultiplier=1.6
EnemyPlayerDamageMultiplier=1.8
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.5
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.1
ThirstSpeedMultiplier=1.1
FatigueSpeedMultiplier=1.1
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.9
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

## Day 2 - Open Floor Dread

**Profile ID:** `nightmare_open_floor_dread`  
**Base day ID:** `open_floor_plan_authorization`  
**Experience:** NIGHTMARE D02: prep - horror.  
**Message:** Open Floor Dread: Prep window approved. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is prep.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `quiet_base_safe` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `quiet` |
| `encounter_director` | `nightmare_open_floor_dread` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_open_floor_dread` |
| `family` | `nightmare` |
| `tier` | `low` |
| `theme` | `nightmare_preparation` |
| `mixed_encounter_chance` | `0.028` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `542` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Open Floor Dread runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.4` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.1` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `1` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.7` |
| `ThirstSpeedMultiplier` | `0.7` |
| `FatigueSpeedMultiplier` | `0.7` |
| `ContinenceSpeedMultiplier` | `0.65` |
| `BonusPerkPoints` | `7` |
| `PlayerXPGainMultiplier` | `2.7` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.4
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.1
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=1
EnemyAccuracy=2
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.7
ThirstSpeedMultiplier=0.7
FatigueSpeedMultiplier=0.7
ContinenceSpeedMultiplier=0.65
BonusPerkPoints=7
PlayerXPGainMultiplier=2.7
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

## Day 3 - Water in the Dark

**Profile ID:** `nightmare_water_in_the_dark`  
**Base day ID:** `questionable_drinking_water`  
**Experience:** NIGHTMARE D03: resource - horror.  
**Message:** Water in the Dark: Resources are acting suspicious. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is resource.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `biohazard` |
| `encounter_director` | `nightmare_water_in_the_dark` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_water_in_the_dark` |
| `family` | `nightmare` |
| `tier` | `medium` |
| `theme` | `nightmare_bio_resource` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `9` |
| `mixed_encounter_cooldown` | `438` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Water in the Dark runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `1.7` |
| `EnemyPlayerDamageMultiplier` | `2` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `1.6` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.4` |
| `ThirstSpeedMultiplier` | `2` |
| `FatigueSpeedMultiplier` | `1.3` |
| `ContinenceSpeedMultiplier` | `1.45` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.2` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.7
EnemyHealthMultiplier=1.7
EnemyPlayerDamageMultiplier=2
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=1.6
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.4
ThirstSpeedMultiplier=2
FatigueSpeedMultiplier=1.3
ContinenceSpeedMultiplier=1.45
BonusPerkPoints=0
PlayerXPGainMultiplier=2.2
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

## Day 4 - Supply Closet Breathing

**Profile ID:** `nightmare_supply_closet_breathing`  
**Base day ID:** `inventory_expansion_memo`  
**Experience:** NIGHTMARE D04: loot - horror.  
**Message:** Supply Closet Breathing: Loot moved toward danger. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is loot.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `loot` |
| `encounter_director` | `nightmare_supply_closet_breathing` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_supply_closet_breathing` |
| `family` | `nightmare` |
| `tier` | `low` |
| `theme` | `nightmare_loot_mobility` |
| `mixed_encounter_chance` | `0.056` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `496` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Supply Closet Breathing runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.5` |
| `EnemyHealthMultiplier` | `1.4` |
| `EnemyPlayerDamageMultiplier` | `1.4` |
| `EnemyDeployableDamageMultiplier` | `0.5` |
| `DetectionSpeedMultiplier` | `1.2` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `0.8` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `0.75` |
| `BonusPerkPoints` | `3` |
| `PlayerXPGainMultiplier` | `2.9` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.5
EnemyHealthMultiplier=1.4
EnemyPlayerDamageMultiplier=1.4
EnemyDeployableDamageMultiplier=0.5
DetectionSpeedMultiplier=1.2
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=0.8
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=0.75
BonusPerkPoints=3
PlayerXPGainMultiplier=2.9
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

## Day 5 - Security Under the Bed

**Profile ID:** `nightmare_security_under_the_bed`  
**Base day ID:** `security_heard_something`  
**Experience:** NIGHTMARE D05: security - horror.  
**Message:** Security Under the Bed: Security noticed you. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is security.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `nightmare_security_under_the_bed` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_security_under_the_bed` |
| `family` | `nightmare` |
| `tier` | `high` |
| `theme` | `nightmare_security` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `392` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Security Under the Bed runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `1.1` |
| `EnemyHealthMultiplier` | `1.8` |
| `EnemyPlayerDamageMultiplier` | `2.3` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `3` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1.2` |
| `ThirstSpeedMultiplier` | `1.2` |
| `FatigueSpeedMultiplier` | `1.4` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.7` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.9` |
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
DayNightCycleState=2
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
EnemySpawnRate=1.1
EnemyHealthMultiplier=1.8
EnemyPlayerDamageMultiplier=2.3
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=3
EnemyAccuracy=3
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1.2
ThirstSpeedMultiplier=1.2
FatigueSpeedMultiplier=1.4
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2.7
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.9
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

## Day 6 - Weather With Teeth

**Profile ID:** `nightmare_weather_with_teeth`  
**Base day ID:** `weather_department_apology`  
**Experience:** NIGHTMARE D06: weather - horror.  
**Message:** Weather With Teeth: The weather got indoors. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is weather.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `electrical_hazard_light` |
| `ante_up` | `weather` |
| `encounter_director` | `nightmare_weather_with_teeth` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_weather_with_teeth` |
| `family` | `nightmare` |
| `tier` | `medium` |
| `theme` | `nightmare_weather` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `9` |
| `mixed_encounter_cooldown` | `438` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Weather With Teeth runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1.6` |
| `EnemyPlayerDamageMultiplier` | `1.9` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.6` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.3` |
| `ThirstSpeedMultiplier` | `1.6` |
| `FatigueSpeedMultiplier` | `1.3` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.1` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.8
EnemyHealthMultiplier=1.6
EnemyPlayerDamageMultiplier=1.9
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.6
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.3
ThirstSpeedMultiplier=1.6
FatigueSpeedMultiplier=1.3
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2.1
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

## Day 7 - Lights Out Forever

**Profile ID:** `nightmare_lights_out_forever`  
**Base day ID:** `night_shift_with_benefits`  
**Experience:** NIGHTMARE D07: night - horror.  
**Message:** Lights Out Forever: Lights negotiated badly. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is night.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `night` |
| `encounter_director` | `nightmare_lights_out_forever` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_lights_out_forever` |
| `family` | `nightmare` |
| `tier` | `high` |
| `theme` | `nightmare_night` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `392` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Lights Out Forever runs horror pressure.` |

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
| `EnemySpawnRate` | `1.1` |
| `EnemyHealthMultiplier` | `1.8` |
| `EnemyPlayerDamageMultiplier` | `2.2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `2.5` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.2` |
| `ThirstSpeedMultiplier` | `1.2` |
| `FatigueSpeedMultiplier` | `1.6` |
| `ContinenceSpeedMultiplier` | `0.95` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.9` |
| `ItemStackSizeMultiplier` | `3` |
| `ItemWeightMultiplier` | `0.7` |
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
EnemySpawnRate=1.1
EnemyHealthMultiplier=1.8
EnemyPlayerDamageMultiplier=2.2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=2.5
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.2
ThirstSpeedMultiplier=1.2
FatigueSpeedMultiplier=1.6
ContinenceSpeedMultiplier=0.95
BonusPerkPoints=0
PlayerXPGainMultiplier=2.9
ItemStackSizeMultiplier=3
ItemWeightMultiplier=0.7
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

## Day 8 - Do Not Run Loudly

**Profile ID:** `nightmare_do_not_run_loudly`  
**Base day ID:** `clock_department_incident`  
**Experience:** NIGHTMARE D08: route - horror.  
**Message:** Do Not Run Loudly: Routes are impatient. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is route.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `low_to_moderate_hazard` |
| `ante_up` | `speedrun` |
| `encounter_director` | `nightmare_do_not_run_loudly` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_do_not_run_loudly` |
| `family` | `nightmare` |
| `tier` | `medium` |
| `theme` | `nightmare_route` |
| `mixed_encounter_chance` | `0.105` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `416` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Do Not Run Loudly runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.9` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.9` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `2.1` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `0.8` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `0.7` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `3` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.9
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.9
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=2.1
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=0.8
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=0.7
BonusPerkPoints=0
PlayerXPGainMultiplier=3
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

## Day 9 - Rations for the Thing

**Profile ID:** `nightmare_rations_for_the_thing`  
**Base day ID:** `lab_rations_committee`  
**Experience:** NIGHTMARE D09: scarcity - horror.  
**Message:** Rations for the Thing: Rations filed a complaint. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is scarcity.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `scarcity` |
| `encounter_director` | `nightmare_rations_for_the_thing` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_rations_for_the_thing` |
| `family` | `nightmare` |
| `tier` | `medium` |
| `theme` | `nightmare_scarcity` |
| `mixed_encounter_chance` | `0.084` |
| `mixed_encounter_budget` | `9` |
| `mixed_encounter_cooldown` | `450` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Rations for the Thing runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `1.8` |
| `EnemyPlayerDamageMultiplier` | `2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.6` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.8` |
| `ThirstSpeedMultiplier` | `1.7` |
| `FatigueSpeedMultiplier` | `1.5` |
| `ContinenceSpeedMultiplier` | `1.25` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.2` |
| `ItemStackSizeMultiplier` | `1` |
| `ItemWeightMultiplier` | `1.2` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.7
EnemyHealthMultiplier=1.8
EnemyPlayerDamageMultiplier=2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.6
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.8
ThirstSpeedMultiplier=1.7
FatigueSpeedMultiplier=1.5
ContinenceSpeedMultiplier=1.25
BonusPerkPoints=0
PlayerXPGainMultiplier=2.2
ItemStackSizeMultiplier=1
ItemWeightMultiplier=1.2
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

## Day 10 - Recovery Behind a Door

**Profile ID:** `nightmare_recovery_behind_a_door`  
**Base day ID:** `bring_your_scientist_to_work_day`  
**Experience:** NIGHTMARE D10: recovery - horror.  
**Message:** Recovery Behind a Door: Recovery is on probation. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is recovery.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `minimum_pressure` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `recovery` |
| `encounter_director` | `nightmare_recovery_behind_a_door` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_recovery_behind_a_door` |
| `family` | `nightmare` |
| `tier` | `very_low` |
| `theme` | `nightmare_recovery` |
| `mixed_encounter_chance` | `0.02` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `576` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Recovery Behind a Door runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `2` |
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
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `0.6` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.7` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.4` |
| `ThirstSpeedMultiplier` | `0.4` |
| `FatigueSpeedMultiplier` | `0.4` |
| `ContinenceSpeedMultiplier` | `0.45` |
| `BonusPerkPoints` | `10` |
| `PlayerXPGainMultiplier` | `3.9` |
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
DayNightCycleState=2
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
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=0.6
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.7
EnemyAccuracy=2
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.4
ThirstSpeedMultiplier=0.4
FatigueSpeedMultiplier=0.4
ContinenceSpeedMultiplier=0.45
BonusPerkPoints=10
PlayerXPGainMultiplier=3.9
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

## Day 11 - Training in the Dark

**Profile ID:** `nightmare_training_in_the_dark`  
**Base day ID:** `mandatory_safety_training`  
**Experience:** NIGHTMARE D11: training - horror.  
**Message:** Training in the Dark: Training remembered teeth. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is training.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `training_hazard` |
| `ante_up` | `training` |
| `encounter_director` | `nightmare_training_in_the_dark` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_training_in_the_dark` |
| `family` | `nightmare` |
| `tier` | `low` |
| `theme` | `nightmare_training` |
| `mixed_encounter_chance` | `0.049` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `508` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Training in the Dark runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `2` |
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
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.2` |
| `EnemyDeployableDamageMultiplier` | `0.4` |
| `DetectionSpeedMultiplier` | `1.3` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.9` |
| `ThirstSpeedMultiplier` | `0.9` |
| `FatigueSpeedMultiplier` | `0.9` |
| `ContinenceSpeedMultiplier` | `0.8` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `5` |
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
DayNightCycleState=2
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
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.2
EnemyDeployableDamageMultiplier=0.4
DetectionSpeedMultiplier=1.3
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.9
ThirstSpeedMultiplier=0.9
FatigueSpeedMultiplier=0.9
ContinenceSpeedMultiplier=0.8
BonusPerkPoints=12
PlayerXPGainMultiplier=5
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

## Day 12 - Black Lab Nightmare Review

**Profile ID:** `nightmare_black_lab_nightmare_review`  
**Base day ID:** `black_lab_performance_review`  
**Experience:** NIGHTMARE D12: major test - horror.  
**Message:** Black Lab Nightmare Review: Black Lab reviewed you. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is major test.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `nightmare_black_lab_nightmare_review` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_black_lab_nightmare_review` |
| `family` | `nightmare` |
| `tier` | `extreme` |
| `theme` | `nightmare_heavy_test` |
| `mixed_encounter_chance` | `0.161` |
| `mixed_encounter_budget` | `12` |
| `mixed_encounter_cooldown` | `324` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Black Lab Nightmare Review runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `1.5` |
| `EnemyHealthMultiplier` | `2.8` |
| `EnemyPlayerDamageMultiplier` | `3.5` |
| `EnemyDeployableDamageMultiplier` | `1.4` |
| `DetectionSpeedMultiplier` | `2.9` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.15` |
| `HungerSpeedMultiplier` | `1.5` |
| `ThirstSpeedMultiplier` | `1.5` |
| `FatigueSpeedMultiplier` | `1.5` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `4` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.9` |
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
DayNightCycleState=2
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
EnemySpawnRate=1.5
EnemyHealthMultiplier=2.8
EnemyPlayerDamageMultiplier=3.5
EnemyDeployableDamageMultiplier=1.4
DetectionSpeedMultiplier=2.9
EnemyAccuracy=4
DamageToAlliesMultiplier=0.15
HungerSpeedMultiplier=1.5
ThirstSpeedMultiplier=1.5
FatigueSpeedMultiplier=1.5
ContinenceSpeedMultiplier=1
BonusPerkPoints=2
PlayerXPGainMultiplier=4
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.9
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

## Day 13 - Long Shift After Midnight

**Profile ID:** `nightmare_long_shift_after_midnight`  
**Base day ID:** `extended_shift_survival_trial`  
**Experience:** NIGHTMARE D13: endurance - horror.  
**Message:** Long Shift After Midnight: The shift got longer. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is endurance.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `black_lab` |
| `encounter_director` | `nightmare_long_shift_after_midnight` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_long_shift_after_midnight` |
| `family` | `nightmare` |
| `tier` | `medium` |
| `theme` | `nightmare_endurance` |
| `mixed_encounter_chance` | `0.098` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `427` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Long Shift After Midnight runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.6` |
| `EnemyHealthMultiplier` | `2` |
| `EnemyPlayerDamageMultiplier` | `2.2` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `1.6` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `2.1` |
| `ThirstSpeedMultiplier` | `2.1` |
| `FatigueSpeedMultiplier` | `1.9` |
| `ContinenceSpeedMultiplier` | `1.35` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.5` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.6
EnemyHealthMultiplier=2
EnemyPlayerDamageMultiplier=2.2
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=1.6
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=2.1
ThirstSpeedMultiplier=2.1
FatigueSpeedMultiplier=1.9
ContinenceSpeedMultiplier=1.35
BonusPerkPoints=0
PlayerXPGainMultiplier=2.5
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

## Day 14 - False Morning

**Profile ID:** `nightmare_false_morning`  
**Base day ID:** `supply_closet_miracle`  
**Experience:** NIGHTMARE D14: relief - horror.  
**Message:** False Morning: Relief looks unsupervised. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is relief.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `relief_day` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `black_lab` |
| `encounter_director` | `nightmare_false_morning` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_false_morning` |
| `family` | `nightmare` |
| `tier` | `very_low` |
| `theme` | `nightmare_relief` |
| `mixed_encounter_chance` | `0.02` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `600` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: False Morning runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.3` |
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `0.9` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.3` |
| `ThirstSpeedMultiplier` | `0.3` |
| `FatigueSpeedMultiplier` | `0.3` |
| `ContinenceSpeedMultiplier` | `0.35` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `5.6` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.3
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=0.9
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.9
EnemyAccuracy=2
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.3
ThirstSpeedMultiplier=0.3
FatigueSpeedMultiplier=0.3
ContinenceSpeedMultiplier=0.35
BonusPerkPoints=12
PlayerXPGainMultiplier=5.6
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

## Day 15 - Accuracy of Shadows

**Profile ID:** `nightmare_accuracy_of_shadows`  
**Base day ID:** `accuracy_audit`  
**Experience:** NIGHTMARE D15: precision - horror.  
**Message:** Accuracy of Shadows: Accuracy found the room. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is precision.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `nightmare_accuracy_of_shadows` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_accuracy_of_shadows` |
| `family` | `nightmare` |
| `tier` | `high` |
| `theme` | `nightmare_precision` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `392` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Accuracy of Shadows runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1.6` |
| `EnemyPlayerDamageMultiplier` | `2.6` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `2.2` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `1.2` |
| `ThirstSpeedMultiplier` | `1.2` |
| `FatigueSpeedMultiplier` | `1.5` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `3.2` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.9` |
| `ItemDurabilityMultiplier` | `1` |
| `DurabilityLossOnDeathMultiplier` | `0.3` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
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
DayNightCycleState=2
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
EnemySpawnRate=0.8
EnemyHealthMultiplier=1.6
EnemyPlayerDamageMultiplier=2.6
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=2.2
EnemyAccuracy=3
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=1.2
ThirstSpeedMultiplier=1.2
FatigueSpeedMultiplier=1.5
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=3.2
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.9
ItemDurabilityMultiplier=1
DurabilityLossOnDeathMultiplier=0.3
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=2
FirstTimeStartingWeapon=4
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 16 - Experimental Fear

**Profile ID:** `nightmare_experimental_fear`  
**Base day ID:** `approved_experimental_conditions`  
**Experience:** NIGHTMARE D16: experiment - horror.  
**Message:** Experimental Fear: Variables escaped again. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is experiment.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `weird_cycle_or_standard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `nightmare_experimental_fear` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_experimental_fear` |
| `family` | `nightmare` |
| `tier` | `extreme` |
| `theme` | `nightmare_experimental` |
| `mixed_encounter_chance` | `0.154` |
| `mixed_encounter_budget` | `12` |
| `mixed_encounter_cooldown` | `335` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Experimental Fear runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
| `PowerSocketsOffAtNight` | `False` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `1` |
| `EnemyHealthMultiplier` | `2.3` |
| `EnemyPlayerDamageMultiplier` | `1.7` |
| `EnemyDeployableDamageMultiplier` | `0.7` |
| `DetectionSpeedMultiplier` | `0.8` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1.6` |
| `FatigueSpeedMultiplier` | `1` |
| `ContinenceSpeedMultiplier` | `1.2` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `6.1` |
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
DayNightCycleState=2
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
EnemySpawnRate=1
EnemyHealthMultiplier=2.3
EnemyPlayerDamageMultiplier=1.7
EnemyDeployableDamageMultiplier=0.7
DetectionSpeedMultiplier=0.8
EnemyAccuracy=4
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1.6
FatigueSpeedMultiplier=1
ContinenceSpeedMultiplier=1.2
BonusPerkPoints=2
PlayerXPGainMultiplier=6.1
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

## Day 17 - Final Nightmare Practical

**Profile ID:** `nightmare_final_nightmare_practical`  
**Base day ID:** `end_of_rotation_compliance_test`  
**Experience:** NIGHTMARE D17: capstone - horror.  
**Message:** Final Nightmare Practical: Final exam is armed. The dark has staffing.  
**Run advice:** Tip: Listen before moving. Today is capstone.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `overcharged_high_hazard` |
| `ante_up` | `capstone` |
| `encounter_director` | `nightmare_final_nightmare_practical` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `nightmare_final_nightmare_practical` |
| `family` | `nightmare` |
| `tier` | `capstone` |
| `theme` | `nightmare_capstone` |
| `mixed_encounter_chance` | `0.196` |
| `mixed_encounter_budget` | `13` |
| `mixed_encounter_cooldown` | `266` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Final Nightmare Practical runs horror pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `False` |
| `PowerSocketsOffAtNight` | `True` |
| `DayNightCycleState` | `2` |
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
| `EnemySpawnRate` | `2` |
| `EnemyHealthMultiplier` | `3.5` |
| `EnemyPlayerDamageMultiplier` | `4.1` |
| `EnemyDeployableDamageMultiplier` | `2` |
| `DetectionSpeedMultiplier` | `3.4` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1.9` |
| `ThirstSpeedMultiplier` | `1.9` |
| `FatigueSpeedMultiplier` | `1.7` |
| `ContinenceSpeedMultiplier` | `1.1` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `4.8` |
| `ItemStackSizeMultiplier` | `3` |
| `ItemWeightMultiplier` | `1` |
| `ItemDurabilityMultiplier` | `1` |
| `DurabilityLossOnDeathMultiplier` | `0.5` |
| `ShowDeathMessages` | `True` |
| `AllowRecipeSharing` | `True` |
| `AllowPagers` | `True` |
| `AllowTransmog` | `True` |
| `DisableResearchMinigame` | `False` |
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
DayNightCycleState=2
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
EnemySpawnRate=2
EnemyHealthMultiplier=3.5
EnemyPlayerDamageMultiplier=4.1
EnemyDeployableDamageMultiplier=2
DetectionSpeedMultiplier=3.4
EnemyAccuracy=4
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1.9
ThirstSpeedMultiplier=1.9
FatigueSpeedMultiplier=1.7
ContinenceSpeedMultiplier=1.1
BonusPerkPoints=2
PlayerXPGainMultiplier=4.8
ItemStackSizeMultiplier=3
ItemWeightMultiplier=1
ItemDurabilityMultiplier=1
DurabilityLossOnDeathMultiplier=0.5
ShowDeathMessages=True
AllowRecipeSharing=True
AllowPagers=True
AllowTransmog=True
DisableResearchMinigame=False
DeathPenalties=3
FirstTimeStartingWeapon=0
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```
