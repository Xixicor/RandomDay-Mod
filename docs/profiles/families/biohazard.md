# Biohazard Family

**Family ID:** `biohazard`
**Genre:** pest and contamination survival
**Tone:** sanitation/legal disclaimers

Pests, contamination, water problems, and legally vague hygiene.

## 17-Day Index

| Day | Profile | Experience | DynamicSpawns | Lethal Lasers | ANTE Up |
|---:|---|---|---|---|---|
| 1 | [Acceptable Contamination](#day-1-acceptable-contamination) | BIOHAZARD D01: baseline - contamination. | `standard_pressure` | `standard_safety` | `standard` |
| 2 | [Open Floor Decontamination](#day-2-open-floor-decontamination) | BIOHAZARD D02: prep - contamination. | `quiet_base_safe` | `low_hazard` | `quiet` |
| 3 | [Questionable Drinking Water Plus](#day-3-questionable-drinking-water-plus) | BIOHAZARD D03: resource - contamination. | `biohazard_light` | `standard_safety` | `biohazard` |
| 4 | [Specimen Supply Run](#day-4-specimen-supply-run) | BIOHAZARD D04: loot - contamination. | `low_pressure_loot_day` | `low_hazard` | `loot` |
| 5 | [Containment Was Optional](#day-5-containment-was-optional) | BIOHAZARD D05: security - contamination. | `security_pressure` | `moderate_hazard` | `security` |
| 6 | [Sanitation Weather Event](#day-6-sanitation-weather-event) | BIOHAZARD D06: weather - contamination. | `weather_wandering` | `electrical_hazard_light` | `weather` |
| 7 | [Night Disinfection Failure](#day-7-night-disinfection-failure) | BIOHAZARD D07: night - contamination. | `night_pressure` | `night_visible_moderate` | `night` |
| 8 | [Route Contamination Notice](#day-8-route-contamination-notice) | BIOHAZARD D08: route - contamination. | `speedrun_pressure` | `low_to_moderate_hazard` | `speedrun` |
| 9 | [Ration Spoilage Hearing](#day-9-ration-spoilage-hearing) | BIOHAZARD D09: scarcity - contamination. | `scarcity_low_frequency` | `standard_safety` | `scarcity` |
| 10 | [Clean Room Rumor](#day-10-clean-room-rumor) | BIOHAZARD D10: recovery - contamination. | `minimum_pressure` | `disabled_or_low_if_supported` | `recovery` |
| 11 | [Training With Gloves](#day-11-training-with-gloves) | BIOHAZARD D11: training - contamination. | `training_targets` | `training_hazard` | `training` |
| 12 | [Black Lab Bio Review](#day-12-black-lab-bio-review) | BIOHAZARD D12: major test - contamination. | `hard_pressure` | `high_hazard` | `black_lab` |
| 13 | [Extended Quarantine Shift](#day-13-extended-quarantine-shift) | BIOHAZARD D13: endurance - contamination. | `slow_attrition` | `standard_safety` | `attrition` |
| 14 | [Supply Closet Sterile-ish](#day-14-supply-closet-sterile-ish) | BIOHAZARD D14: relief - contamination. | `relief_day` | `disabled_or_low_if_supported` | `relief` |
| 15 | [Accuracy of Sneezing](#day-15-accuracy-of-sneezing) | BIOHAZARD D15: precision - contamination. | `precision_patrols` | `moderate_hazard` | `accuracy` |
| 16 | [Experimental Exposure](#day-16-experimental-exposure) | BIOHAZARD D16: experiment - contamination. | `experimental_mixed` | `weird_cycle_or_standard` | `experimental` |
| 17 | [Final Containment Exam](#day-17-final-containment-exam) | BIOHAZARD D17: capstone - contamination. | `capstone_pressure` | `overcharged_high_hazard` | `capstone` |

## Day 1 - Acceptable Contamination

**Profile ID:** `biohazard_acceptable_contamination`  
**Base day ID:** `mostly_normal_allegedly`  
**Experience:** BIOHAZARD D01: baseline - contamination.  
**Message:** Acceptable Contamination: Orientation begins politely. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is baseline.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `standard_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `standard` |
| `encounter_director` | `biohazard_acceptable_contamination` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_acceptable_contamination` |
| `family` | `biohazard` |
| `tier` | `medium` |
| `theme` | `contamination_orientation` |
| `mixed_encounter_chance` | `0.07` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `473` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Acceptable Contamination runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1` |
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `1.1` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.4` |
| `ThirstSpeedMultiplier` | `1.4` |
| `FatigueSpeedMultiplier` | `1` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.3` |
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
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=1.1
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1
EnemyAccuracy=2
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.4
ThirstSpeedMultiplier=1.4
FatigueSpeedMultiplier=1
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.3
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

## Day 2 - Open Floor Decontamination

**Profile ID:** `biohazard_open_floor_decontamination`  
**Base day ID:** `open_floor_plan_authorization`  
**Experience:** BIOHAZARD D02: prep - contamination.  
**Message:** Open Floor Decontamination: Prep window approved. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is prep.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `quiet_base_safe` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `quiet` |
| `encounter_director` | `biohazard_open_floor_decontamination` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_open_floor_decontamination` |
| `family` | `biohazard` |
| `tier` | `low` |
| `theme` | `contamination_preparation` |
| `mixed_encounter_chance` | `0.028` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `542` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Open Floor Decontamination runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.6` |
| `EnemyHealthMultiplier` | `0.9` |
| `EnemyPlayerDamageMultiplier` | `0.7` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.6` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `0.8` |
| `FatigueSpeedMultiplier` | `0.65` |
| `ContinenceSpeedMultiplier` | `0.65` |
| `BonusPerkPoints` | `7` |
| `PlayerXPGainMultiplier` | `1.9` |
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
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.6
EnemyHealthMultiplier=0.9
EnemyPlayerDamageMultiplier=0.7
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.6
EnemyAccuracy=1
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=0.8
FatigueSpeedMultiplier=0.65
ContinenceSpeedMultiplier=0.65
BonusPerkPoints=7
PlayerXPGainMultiplier=1.9
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

## Day 3 - Questionable Drinking Water Plus

**Profile ID:** `biohazard_questionable_drinking_water_plus`  
**Base day ID:** `questionable_drinking_water`  
**Experience:** BIOHAZARD D03: resource - contamination.  
**Message:** Questionable Drinking Water Plus: Resources are acting suspicious. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is resource.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `biohazard_light` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `biohazard` |
| `encounter_director` | `biohazard_questionable_drinking_water_plus` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_questionable_drinking_water_plus` |
| `family` | `biohazard` |
| `tier` | `medium` |
| `theme` | `contamination_bio_resource` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `9` |
| `mixed_encounter_cooldown` | `438` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Questionable Drinking Water Plus runs contamination pressure.` |

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
| `EnemySpawnRate` | `1.1` |
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `1.2` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `1` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.8` |
| `ThirstSpeedMultiplier` | `2.6` |
| `FatigueSpeedMultiplier` | `1.1` |
| `ContinenceSpeedMultiplier` | `1.45` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.6` |
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
EnemySpawnRate=1.1
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=1.2
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=1
EnemyAccuracy=2
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.8
ThirstSpeedMultiplier=2.6
FatigueSpeedMultiplier=1.1
ContinenceSpeedMultiplier=1.45
BonusPerkPoints=0
PlayerXPGainMultiplier=1.6
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

## Day 4 - Specimen Supply Run

**Profile ID:** `biohazard_specimen_supply_run`  
**Base day ID:** `inventory_expansion_memo`  
**Experience:** BIOHAZARD D04: loot - contamination.  
**Message:** Specimen Supply Run: Loot moved toward danger. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is loot.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `low_pressure_loot_day` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `loot` |
| `encounter_director` | `biohazard_specimen_supply_run` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_specimen_supply_run` |
| `family` | `biohazard` |
| `tier` | `low` |
| `theme` | `contamination_loot_mobility` |
| `mixed_encounter_chance` | `0.056` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `496` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Specimen Supply Run runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `0.9` |
| `EnemyDeployableDamageMultiplier` | `0.5` |
| `DetectionSpeedMultiplier` | `0.8` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `0.75` |
| `ContinenceSpeedMultiplier` | `0.75` |
| `BonusPerkPoints` | `3` |
| `PlayerXPGainMultiplier` | `2` |
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
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=0.8
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=0.9
EnemyDeployableDamageMultiplier=0.5
DetectionSpeedMultiplier=0.8
EnemyAccuracy=2
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=0.75
ContinenceSpeedMultiplier=0.75
BonusPerkPoints=3
PlayerXPGainMultiplier=2
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

## Day 5 - Containment Was Optional

**Profile ID:** `biohazard_containment_was_optional`  
**Base day ID:** `security_heard_something`  
**Experience:** BIOHAZARD D05: security - contamination.  
**Message:** Containment Was Optional: Security noticed you. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is security.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `biohazard_containment_was_optional` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_containment_was_optional` |
| `family` | `biohazard` |
| `tier` | `high` |
| `theme` | `contamination_security` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `392` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Containment Was Optional runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1.5` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.4` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.9` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1.5` |
| `ThirstSpeedMultiplier` | `1.5` |
| `FatigueSpeedMultiplier` | `1.15` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.9` |
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
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1.5
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.4
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.9
EnemyAccuracy=2
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1.5
ThirstSpeedMultiplier=1.5
FatigueSpeedMultiplier=1.15
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.9
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

## Day 6 - Sanitation Weather Event

**Profile ID:** `biohazard_sanitation_weather_event`  
**Base day ID:** `weather_department_apology`  
**Experience:** BIOHAZARD D06: weather - contamination.  
**Message:** Sanitation Weather Event: The weather got indoors. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is weather.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `weather_wandering` |
| `lethal_lasers` | `electrical_hazard_light` |
| `ante_up` | `weather` |
| `encounter_director` | `biohazard_sanitation_weather_event` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_sanitation_weather_event` |
| `family` | `biohazard` |
| `tier` | `medium` |
| `theme` | `contamination_weather` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `9` |
| `mixed_encounter_cooldown` | `438` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Sanitation Weather Event runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1.1` |
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `1.1` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.1` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.6` |
| `ThirstSpeedMultiplier` | `2` |
| `FatigueSpeedMultiplier` | `1.6` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.5` |
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
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1.1
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=1.1
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.1
EnemyAccuracy=2
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.6
ThirstSpeedMultiplier=2
FatigueSpeedMultiplier=1.6
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.5
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

## Day 7 - Night Disinfection Failure

**Profile ID:** `biohazard_night_disinfection_failure`  
**Base day ID:** `night_shift_with_benefits`  
**Experience:** BIOHAZARD D07: night - contamination.  
**Message:** Night Disinfection Failure: Lights negotiated badly. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is night.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `night_visible_moderate` |
| `ante_up` | `night` |
| `encounter_director` | `biohazard_night_disinfection_failure` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_night_disinfection_failure` |
| `family` | `biohazard` |
| `tier` | `high` |
| `theme` | `contamination_night` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `392` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Night Disinfection Failure runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1.7` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.3` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.6` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.5` |
| `ThirstSpeedMultiplier` | `1.5` |
| `FatigueSpeedMultiplier` | `2.1` |
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
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1.7
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.3
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.6
EnemyAccuracy=2
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.5
ThirstSpeedMultiplier=1.5
FatigueSpeedMultiplier=2.1
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

## Day 8 - Route Contamination Notice

**Profile ID:** `biohazard_route_contamination_notice`  
**Base day ID:** `clock_department_incident`  
**Experience:** BIOHAZARD D08: route - contamination.  
**Message:** Route Contamination Notice: Routes are impatient. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is route.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `speedrun_pressure` |
| `lethal_lasers` | `low_to_moderate_hazard` |
| `ante_up` | `speedrun` |
| `encounter_director` | `biohazard_route_contamination_notice` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_route_contamination_notice` |
| `family` | `biohazard` |
| `tier` | `medium` |
| `theme` | `contamination_route` |
| `mixed_encounter_chance` | `0.105` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `416` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Route Contamination Notice runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1.4` |
| `EnemyHealthMultiplier` | `0.9` |
| `EnemyPlayerDamageMultiplier` | `1.1` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `1.4` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.1` |
| `ThirstSpeedMultiplier` | `1.1` |
| `FatigueSpeedMultiplier` | `0.7` |
| `ContinenceSpeedMultiplier` | `0.7` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.1` |
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
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1.4
EnemyHealthMultiplier=0.9
EnemyPlayerDamageMultiplier=1.1
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=1.4
EnemyAccuracy=2
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.1
ThirstSpeedMultiplier=1.1
FatigueSpeedMultiplier=0.7
ContinenceSpeedMultiplier=0.7
BonusPerkPoints=0
PlayerXPGainMultiplier=2.1
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

## Day 9 - Ration Spoilage Hearing

**Profile ID:** `biohazard_ration_spoilage_hearing`  
**Base day ID:** `lab_rations_committee`  
**Experience:** BIOHAZARD D09: scarcity - contamination.  
**Message:** Ration Spoilage Hearing: Rations filed a complaint. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is scarcity.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `scarcity_low_frequency` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `scarcity` |
| `encounter_director` | `biohazard_ration_spoilage_hearing` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_ration_spoilage_hearing` |
| `family` | `biohazard` |
| `tier` | `medium` |
| `theme` | `contamination_scarcity` |
| `mixed_encounter_chance` | `0.084` |
| `mixed_encounter_budget` | `9` |
| `mixed_encounter_cooldown` | `450` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Ration Spoilage Hearing runs contamination pressure.` |

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
| `EnemySpawnRate` | `1` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `2.3` |
| `ThirstSpeedMultiplier` | `2.2` |
| `FatigueSpeedMultiplier` | `1.3` |
| `ContinenceSpeedMultiplier` | `1.25` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.5` |
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
EnemySpawnRate=1
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1
EnemyAccuracy=2
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=2.3
ThirstSpeedMultiplier=2.2
FatigueSpeedMultiplier=1.3
ContinenceSpeedMultiplier=1.25
BonusPerkPoints=0
PlayerXPGainMultiplier=1.5
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

## Day 10 - Clean Room Rumor

**Profile ID:** `biohazard_clean_room_rumor`  
**Base day ID:** `bring_your_scientist_to_work_day`  
**Experience:** BIOHAZARD D10: recovery - contamination.  
**Message:** Clean Room Rumor: Recovery is on probation. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is recovery.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `minimum_pressure` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `recovery` |
| `encounter_director` | `biohazard_clean_room_rumor` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_clean_room_rumor` |
| `family` | `biohazard` |
| `tier` | `very_low` |
| `theme` | `contamination_recovery` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `576` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Clean Room Rumor runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `False` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.4` |
| `EnemyHealthMultiplier` | `0.8` |
| `EnemyPlayerDamageMultiplier` | `0.4` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.4` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.6` |
| `ThirstSpeedMultiplier` | `0.6` |
| `FatigueSpeedMultiplier` | `0.45` |
| `ContinenceSpeedMultiplier` | `0.45` |
| `BonusPerkPoints` | `10` |
| `PlayerXPGainMultiplier` | `2.7` |
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
TaintedSinkWater=True
RadiationDealsDamage=False
InvisibleRadiation=False
EnemySpawnRate=0.4
EnemyHealthMultiplier=0.8
EnemyPlayerDamageMultiplier=0.4
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.4
EnemyAccuracy=1
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.6
ThirstSpeedMultiplier=0.6
FatigueSpeedMultiplier=0.45
ContinenceSpeedMultiplier=0.45
BonusPerkPoints=10
PlayerXPGainMultiplier=2.7
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

## Day 11 - Training With Gloves

**Profile ID:** `biohazard_training_with_gloves`  
**Base day ID:** `mandatory_safety_training`  
**Experience:** BIOHAZARD D11: training - contamination.  
**Message:** Training With Gloves: Training remembered teeth. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is training.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `training_targets` |
| `lethal_lasers` | `training_hazard` |
| `ante_up` | `training` |
| `encounter_director` | `biohazard_training_with_gloves` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_training_with_gloves` |
| `family` | `biohazard` |
| `tier` | `low` |
| `theme` | `contamination_training` |
| `mixed_encounter_chance` | `0.049` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `508` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Training With Gloves runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1` |
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `0.7` |
| `EnemyDeployableDamageMultiplier` | `0.4` |
| `DetectionSpeedMultiplier` | `0.8` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.1` |
| `ThirstSpeedMultiplier` | `1.1` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `0.8` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `3.5` |
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
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=0.7
EnemyDeployableDamageMultiplier=0.4
DetectionSpeedMultiplier=0.8
EnemyAccuracy=2
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.1
ThirstSpeedMultiplier=1.1
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=0.8
BonusPerkPoints=12
PlayerXPGainMultiplier=3.5
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

## Day 12 - Black Lab Bio Review

**Profile ID:** `biohazard_black_lab_bio_review`  
**Base day ID:** `black_lab_performance_review`  
**Experience:** BIOHAZARD D12: major test - contamination.  
**Message:** Black Lab Bio Review: Black Lab reviewed you. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is major test.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `hard_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `biohazard_black_lab_bio_review` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_black_lab_bio_review` |
| `family` | `biohazard` |
| `tier` | `extreme` |
| `theme` | `contamination_heavy_test` |
| `mixed_encounter_chance` | `0.161` |
| `mixed_encounter_budget` | `12` |
| `mixed_encounter_cooldown` | `324` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Black Lab Bio Review runs contamination pressure.` |

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
| `EnemySpawnRate` | `2.3` |
| `EnemyHealthMultiplier` | `2` |
| `EnemyPlayerDamageMultiplier` | `2.1` |
| `EnemyDeployableDamageMultiplier` | `1.4` |
| `DetectionSpeedMultiplier` | `1.9` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.15` |
| `HungerSpeedMultiplier` | `1.9` |
| `ThirstSpeedMultiplier` | `1.9` |
| `FatigueSpeedMultiplier` | `1.15` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.8` |
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
EnemySpawnRate=2.3
EnemyHealthMultiplier=2
EnemyPlayerDamageMultiplier=2.1
EnemyDeployableDamageMultiplier=1.4
DetectionSpeedMultiplier=1.9
EnemyAccuracy=3
DamageToAlliesMultiplier=0.15
HungerSpeedMultiplier=1.9
ThirstSpeedMultiplier=1.9
FatigueSpeedMultiplier=1.15
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2.8
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

## Day 13 - Extended Quarantine Shift

**Profile ID:** `biohazard_extended_quarantine_shift`  
**Base day ID:** `extended_shift_survival_trial`  
**Experience:** BIOHAZARD D13: endurance - contamination.  
**Message:** Extended Quarantine Shift: The shift got longer. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is endurance.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `slow_attrition` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `attrition` |
| `encounter_director` | `biohazard_extended_quarantine_shift` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_extended_quarantine_shift` |
| `family` | `biohazard` |
| `tier` | `medium` |
| `theme` | `contamination_endurance` |
| `mixed_encounter_chance` | `0.098` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `427` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Extended Quarantine Shift runs contamination pressure.` |

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
| `EnemySpawnRate` | `0.9` |
| `EnemyHealthMultiplier` | `1.5` |
| `EnemyPlayerDamageMultiplier` | `1.3` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `1` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `2.6` |
| `ThirstSpeedMultiplier` | `2.6` |
| `FatigueSpeedMultiplier` | `2.5` |
| `ContinenceSpeedMultiplier` | `1.35` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.8` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1.4` |
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
EnemySpawnRate=0.9
EnemyHealthMultiplier=1.5
EnemyPlayerDamageMultiplier=1.3
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=1
EnemyAccuracy=2
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=2.6
ThirstSpeedMultiplier=2.6
FatigueSpeedMultiplier=2.5
ContinenceSpeedMultiplier=1.35
BonusPerkPoints=0
PlayerXPGainMultiplier=1.8
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1.4
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

## Day 14 - Supply Closet Sterile-ish

**Profile ID:** `biohazard_supply_closet_sterile_ish`  
**Base day ID:** `supply_closet_miracle`  
**Experience:** BIOHAZARD D14: relief - contamination.  
**Message:** Supply Closet Sterile-ish: Relief looks unsupervised. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is relief.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `relief_day` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `relief` |
| `encounter_director` | `biohazard_supply_closet_sterile_ish` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_supply_closet_sterile_ish` |
| `family` | `biohazard` |
| `tier` | `very_low` |
| `theme` | `contamination_relief` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `600` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Supply Closet Sterile-ish runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `False` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `0.5` |
| `EnemyHealthMultiplier` | `0.9` |
| `EnemyPlayerDamageMultiplier` | `0.5` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.6` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.4` |
| `ThirstSpeedMultiplier` | `0.4` |
| `FatigueSpeedMultiplier` | `0.35` |
| `ContinenceSpeedMultiplier` | `0.35` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `4` |
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
TaintedSinkWater=True
RadiationDealsDamage=False
InvisibleRadiation=False
EnemySpawnRate=0.5
EnemyHealthMultiplier=0.9
EnemyPlayerDamageMultiplier=0.5
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.6
EnemyAccuracy=1
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.4
ThirstSpeedMultiplier=0.4
FatigueSpeedMultiplier=0.35
ContinenceSpeedMultiplier=0.35
BonusPerkPoints=12
PlayerXPGainMultiplier=4
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

## Day 15 - Accuracy of Sneezing

**Profile ID:** `biohazard_accuracy_of_sneezing`  
**Base day ID:** `accuracy_audit`  
**Experience:** BIOHAZARD D15: precision - contamination.  
**Message:** Accuracy of Sneezing: Accuracy found the room. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is precision.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `precision_patrols` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `accuracy` |
| `encounter_director` | `biohazard_accuracy_of_sneezing` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_accuracy_of_sneezing` |
| `family` | `biohazard` |
| `tier` | `high` |
| `theme` | `contamination_precision` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `392` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Accuracy of Sneezing runs contamination pressure.` |

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
| `TaintedSinkWater` | `True` |
| `RadiationDealsDamage` | `True` |
| `InvisibleRadiation` | `False` |
| `EnemySpawnRate` | `1.2` |
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `1.5` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `1.4` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `1.5` |
| `ThirstSpeedMultiplier` | `1.5` |
| `FatigueSpeedMultiplier` | `1.25` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.3` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.9` |
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
TaintedSinkWater=True
RadiationDealsDamage=True
InvisibleRadiation=False
EnemySpawnRate=1.2
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=1.5
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=1.4
EnemyAccuracy=2
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=1.5
ThirstSpeedMultiplier=1.5
FatigueSpeedMultiplier=1.25
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2.3
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.9
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

## Day 16 - Experimental Exposure

**Profile ID:** `biohazard_experimental_exposure`  
**Base day ID:** `approved_experimental_conditions`  
**Experience:** BIOHAZARD D16: experiment - contamination.  
**Message:** Experimental Exposure: Variables escaped again. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is experiment.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `experimental_mixed` |
| `lethal_lasers` | `weird_cycle_or_standard` |
| `ante_up` | `experimental` |
| `encounter_director` | `biohazard_experimental_exposure` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_experimental_exposure` |
| `family` | `biohazard` |
| `tier` | `extreme` |
| `theme` | `contamination_experimental` |
| `mixed_encounter_chance` | `0.154` |
| `mixed_encounter_budget` | `12` |
| `mixed_encounter_cooldown` | `335` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Experimental Exposure runs contamination pressure.` |

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
| `EnemySpawnRate` | `1.5` |
| `EnemyHealthMultiplier` | `1.6` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `0.7` |
| `DetectionSpeedMultiplier` | `0.5` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `1.3` |
| `ThirstSpeedMultiplier` | `2` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `1.2` |
| `BonusPerkPoints` | `15` |
| `PlayerXPGainMultiplier` | `4.4` |
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
EnemySpawnRate=1.5
EnemyHealthMultiplier=1.6
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=0.7
DetectionSpeedMultiplier=0.5
EnemyAccuracy=3
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=1.3
ThirstSpeedMultiplier=2
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=1.2
BonusPerkPoints=15
PlayerXPGainMultiplier=4.4
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

## Day 17 - Final Containment Exam

**Profile ID:** `biohazard_final_containment_exam`  
**Base day ID:** `end_of_rotation_compliance_test`  
**Experience:** BIOHAZARD D17: capstone - contamination.  
**Message:** Final Containment Exam: Final exam is armed. Legal recommends gloves.  
**Run advice:** Tip: Do not lick success. Today is capstone.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `capstone_pressure` |
| `lethal_lasers` | `overcharged_high_hazard` |
| `ante_up` | `capstone` |
| `encounter_director` | `biohazard_final_containment_exam` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `biohazard_final_containment_exam` |
| `family` | `biohazard` |
| `tier` | `capstone` |
| `theme` | `contamination_capstone` |
| `mixed_encounter_chance` | `0.196` |
| `mixed_encounter_budget` | `13` |
| `mixed_encounter_cooldown` | `266` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Final Containment Exam runs contamination pressure.` |

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
| `EnemySpawnRate` | `3` |
| `EnemyHealthMultiplier` | `2.5` |
| `EnemyPlayerDamageMultiplier` | `2.4` |
| `EnemyDeployableDamageMultiplier` | `2` |
| `DetectionSpeedMultiplier` | `2.2` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `2.3` |
| `ThirstSpeedMultiplier` | `2.3` |
| `FatigueSpeedMultiplier` | `1.25` |
| `ContinenceSpeedMultiplier` | `1.1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `4.1` |
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
EnemySpawnRate=3
EnemyHealthMultiplier=2.5
EnemyPlayerDamageMultiplier=2.4
EnemyDeployableDamageMultiplier=2
DetectionSpeedMultiplier=2.2
EnemyAccuracy=3
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=2.3
ThirstSpeedMultiplier=2.3
FatigueSpeedMultiplier=1.25
ContinenceSpeedMultiplier=1.1
BonusPerkPoints=0
PlayerXPGainMultiplier=4.1
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
