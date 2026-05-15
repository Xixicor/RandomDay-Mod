# Survival Family

**Family ID:** `survival`
**Genre:** stealth survival against stronger threats
**Tone:** cruelly polite survival notice

Fewer enemies, stronger threats, higher rewards, and less forgiveness.

## 17-Day Index

| Day | Profile | Experience | DynamicSpawns | Lethal Lasers | ANTE Up |
|---:|---|---|---|---|---|
| 1 | [Quiet Intake](#day-1-quiet-intake) | SURVIVAL D01: baseline - survival. | `standard_pressure` | `standard_safety` | `standard` |
| 2 | [Barricade Protocol](#day-2-barricade-protocol) | SURVIVAL D02: prep - survival. | `quiet_base_safe` | `low_hazard` | `quiet` |
| 3 | [Contaminated Silence](#day-3-contaminated-silence) | SURVIVAL D03: resource - survival. | `biohazard_light` | `standard_safety` | `biohazard` |
| 4 | [Scavenger's Debt](#day-4-scavenger-s-debt) | SURVIVAL D04: loot - survival. | `low_pressure_loot_day` | `low_hazard` | `loot` |
| 5 | [Security Lockdown](#day-5-security-lockdown) | SURVIVAL D05: security - survival. | `security_pressure` | `moderate_hazard` | `security` |
| 6 | [Shelter Advisory](#day-6-shelter-advisory) | SURVIVAL D06: weather - survival. | `weather_wandering` | `electrical_hazard_light` | `weather` |
| 7 | [Lights Out](#day-7-lights-out) | SURVIVAL D07: night - survival. | `night_pressure` | `night_visible_moderate` | `night` |
| 8 | [Do Not Linger](#day-8-do-not-linger) | SURVIVAL D08: route - survival. | `speedrun_pressure` | `low_to_moderate_hazard` | `speedrun` |
| 9 | [Empty Pantry Trial](#day-9-empty-pantry-trial) | SURVIVAL D09: scarcity - survival. | `scarcity_low_frequency` | `standard_safety` | `scarcity` |
| 10 | [Silent Recovery](#day-10-silent-recovery) | SURVIVAL D10: recovery - survival. | `minimum_pressure` | `disabled_or_low_if_supported` | `recovery` |
| 11 | [Measured Risk](#day-11-measured-risk) | SURVIVAL D11: training - survival. | `training_targets` | `training_hazard` | `training` |
| 12 | [Predator Review](#day-12-predator-review) | SURVIVAL D12: major test - survival. | `hard_pressure` | `high_hazard` | `black_lab` |
| 13 | [Long Shift Survival](#day-13-long-shift-survival) | SURVIVAL D13: endurance - survival. | `slow_attrition` | `standard_safety` | `black_lab` |
| 14 | [False Calm](#day-14-false-calm) | SURVIVAL D14: relief - survival. | `relief_day` | `disabled_or_low_if_supported` | `black_lab` |
| 15 | [Seen First Dead First](#day-15-seen-first-dead-first) | SURVIVAL D15: precision - survival. | `precision_patrols` | `moderate_hazard` | `black_lab` |
| 16 | [Unapproved Conditions](#day-16-unapproved-conditions) | SURVIVAL D16: experiment - survival. | `experimental_mixed` | `weird_cycle_or_standard` | `black_lab` |
| 17 | [Final Evasion Test](#day-17-final-evasion-test) | SURVIVAL D17: capstone - survival. | `capstone_pressure` | `overcharged_high_hazard` | `capstone` |

## Day 1 - Quiet Intake

**Profile ID:** `survival_quiet_intake`  
**Base day ID:** `mostly_normal_allegedly`  
**Experience:** SURVIVAL D01: baseline - survival.  
**Message:** Quiet Intake: Orientation begins politely. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is baseline.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `standard_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `standard` |
| `encounter_director` | `survival_quiet_intake` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_quiet_intake` |
| `family` | `survival` |
| `tier` | `medium` |
| `theme` | `evasion_orientation` |
| `mixed_encounter_chance` | `0.07` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `653` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Quiet Intake runs survival pressure.` |

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
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `1.6` |
| `EnemyPlayerDamageMultiplier` | `1.6` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.4` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.3` |
| `ThirstSpeedMultiplier` | `1.3` |
| `FatigueSpeedMultiplier` | `1.3` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.8` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.8` |
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
EnemySpawnRate=0.7
EnemyHealthMultiplier=1.6
EnemyPlayerDamageMultiplier=1.6
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.4
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.3
ThirstSpeedMultiplier=1.3
FatigueSpeedMultiplier=1.3
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=1.8
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.8
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

## Day 2 - Barricade Protocol

**Profile ID:** `survival_barricade_protocol`  
**Base day ID:** `open_floor_plan_authorization`  
**Experience:** SURVIVAL D02: prep - survival.  
**Message:** Barricade Protocol: Prep window approved. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is prep.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `quiet_base_safe` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `quiet` |
| `encounter_director` | `survival_barricade_protocol` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_barricade_protocol` |
| `family` | `survival` |
| `tier` | `low` |
| `theme` | `evasion_preparation` |
| `mixed_encounter_chance` | `0.028` |
| `mixed_encounter_budget` | `5` |
| `mixed_encounter_cooldown` | `722` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Barricade Protocol runs survival pressure.` |

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
| `EnemySpawnRate` | `0.4` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `0.8` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `0.65` |
| `BonusPerkPoints` | `7` |
| `PlayerXPGainMultiplier` | `2.5` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.4` |
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
EnemySpawnRate=0.4
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.9
EnemyAccuracy=2
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=0.8
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=0.65
BonusPerkPoints=7
PlayerXPGainMultiplier=2.5
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.4
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

## Day 3 - Contaminated Silence

**Profile ID:** `survival_contaminated_silence`  
**Base day ID:** `questionable_drinking_water`  
**Experience:** SURVIVAL D03: resource - survival.  
**Message:** Contaminated Silence: Resources are acting suspicious. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is resource.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `biohazard_light` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `biohazard` |
| `encounter_director` | `survival_contaminated_silence` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_contaminated_silence` |
| `family` | `survival` |
| `tier` | `medium` |
| `theme` | `evasion_bio_resource` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `618` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Contaminated Silence runs survival pressure.` |

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
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `1.7` |
| `EnemyPlayerDamageMultiplier` | `1.7` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `1.5` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.6` |
| `ThirstSpeedMultiplier` | `2.3` |
| `FatigueSpeedMultiplier` | `1.4` |
| `ContinenceSpeedMultiplier` | `1.45` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.1` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.8` |
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
EnemySpawnRate=0.7
EnemyHealthMultiplier=1.7
EnemyPlayerDamageMultiplier=1.7
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=1.5
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.6
ThirstSpeedMultiplier=2.3
FatigueSpeedMultiplier=1.4
ContinenceSpeedMultiplier=1.45
BonusPerkPoints=0
PlayerXPGainMultiplier=2.1
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.8
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

## Day 4 - Scavenger's Debt

**Profile ID:** `survival_scavenger_s_debt`  
**Base day ID:** `inventory_expansion_memo`  
**Experience:** SURVIVAL D04: loot - survival.  
**Message:** Scavenger's Debt: Loot moved toward danger. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is loot.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `low_pressure_loot_day` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `loot` |
| `encounter_director` | `survival_scavenger_s_debt` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_scavenger_s_debt` |
| `family` | `survival` |
| `tier` | `low` |
| `theme` | `evasion_loot_mobility` |
| `mixed_encounter_chance` | `0.056` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `676` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Scavenger's Debt runs survival pressure.` |

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
| `EnemySpawnRate` | `0.5` |
| `EnemyHealthMultiplier` | `1.5` |
| `EnemyPlayerDamageMultiplier` | `1.3` |
| `EnemyDeployableDamageMultiplier` | `0.5` |
| `DetectionSpeedMultiplier` | `1.1` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.9` |
| `ThirstSpeedMultiplier` | `0.9` |
| `FatigueSpeedMultiplier` | `0.9` |
| `ContinenceSpeedMultiplier` | `0.75` |
| `BonusPerkPoints` | `3` |
| `PlayerXPGainMultiplier` | `2.7` |
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
EnemySpawnRate=0.5
EnemyHealthMultiplier=1.5
EnemyPlayerDamageMultiplier=1.3
EnemyDeployableDamageMultiplier=0.5
DetectionSpeedMultiplier=1.1
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.9
ThirstSpeedMultiplier=0.9
FatigueSpeedMultiplier=0.9
ContinenceSpeedMultiplier=0.75
BonusPerkPoints=3
PlayerXPGainMultiplier=2.7
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

## Day 5 - Security Lockdown

**Profile ID:** `survival_security_lockdown`  
**Base day ID:** `security_heard_something`  
**Experience:** SURVIVAL D05: security - survival.  
**Message:** Security Lockdown: Security noticed you. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is security.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `survival_security_lockdown` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_security_lockdown` |
| `family` | `survival` |
| `tier` | `high` |
| `theme` | `evasion_security` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `572` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Security Lockdown runs survival pressure.` |

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
| `EnemySpawnRate` | `1.1` |
| `EnemyHealthMultiplier` | `1.9` |
| `EnemyPlayerDamageMultiplier` | `2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `2.8` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1.4` |
| `ThirstSpeedMultiplier` | `1.4` |
| `FatigueSpeedMultiplier` | `1.6` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.5` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.8` |
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
EnemySpawnRate=1.1
EnemyHealthMultiplier=1.9
EnemyPlayerDamageMultiplier=2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=2.8
EnemyAccuracy=3
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1.4
ThirstSpeedMultiplier=1.4
FatigueSpeedMultiplier=1.6
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2.5
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.8
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

## Day 6 - Shelter Advisory

**Profile ID:** `survival_shelter_advisory`  
**Base day ID:** `weather_department_apology`  
**Experience:** SURVIVAL D06: weather - survival.  
**Message:** Shelter Advisory: The weather got indoors. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is weather.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `weather_wandering` |
| `lethal_lasers` | `electrical_hazard_light` |
| `ante_up` | `weather` |
| `encounter_director` | `survival_shelter_advisory` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_shelter_advisory` |
| `family` | `survival` |
| `tier` | `medium` |
| `theme` | `evasion_weather` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `618` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Shelter Advisory runs survival pressure.` |

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
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1.7` |
| `EnemyPlayerDamageMultiplier` | `1.7` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.5` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.4` |
| `ThirstSpeedMultiplier` | `1.8` |
| `FatigueSpeedMultiplier` | `1.4` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.8` |
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
EnemySpawnRate=0.8
EnemyHealthMultiplier=1.7
EnemyPlayerDamageMultiplier=1.7
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.5
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.4
ThirstSpeedMultiplier=1.8
FatigueSpeedMultiplier=1.4
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=2
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.8
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

## Day 7 - Lights Out

**Profile ID:** `survival_lights_out`  
**Base day ID:** `night_shift_with_benefits`  
**Experience:** SURVIVAL D07: night - survival.  
**Message:** Lights Out: Lights negotiated badly. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is night.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `night_visible_moderate` |
| `ante_up` | `night` |
| `encounter_director` | `survival_lights_out` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_lights_out` |
| `family` | `survival` |
| `tier` | `high` |
| `theme` | `evasion_night` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `572` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Lights Out runs survival pressure.` |

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
| `EnemyHealthMultiplier` | `1.9` |
| `EnemyPlayerDamageMultiplier` | `2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `2.3` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.3` |
| `ThirstSpeedMultiplier` | `1.3` |
| `FatigueSpeedMultiplier` | `1.9` |
| `ContinenceSpeedMultiplier` | `0.95` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.7` |
| `ItemStackSizeMultiplier` | `3` |
| `ItemWeightMultiplier` | `0.6` |
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
EnemyHealthMultiplier=1.9
EnemyPlayerDamageMultiplier=2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=2.3
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.3
ThirstSpeedMultiplier=1.3
FatigueSpeedMultiplier=1.9
ContinenceSpeedMultiplier=0.95
BonusPerkPoints=0
PlayerXPGainMultiplier=2.7
ItemStackSizeMultiplier=3
ItemWeightMultiplier=0.6
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

## Day 8 - Do Not Linger

**Profile ID:** `survival_do_not_linger`  
**Base day ID:** `clock_department_incident`  
**Experience:** SURVIVAL D08: route - survival.  
**Message:** Do Not Linger: Routes are impatient. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is route.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `speedrun_pressure` |
| `lethal_lasers` | `low_to_moderate_hazard` |
| `ante_up` | `speedrun` |
| `encounter_director` | `survival_do_not_linger` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_do_not_linger` |
| `family` | `survival` |
| `tier` | `medium` |
| `theme` | `evasion_route` |
| `mixed_encounter_chance` | `0.105` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `596` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Do Not Linger runs survival pressure.` |

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
| `EnemySpawnRate` | `0.9` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.7` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `2` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.9` |
| `ThirstSpeedMultiplier` | `0.9` |
| `FatigueSpeedMultiplier` | `0.9` |
| `ContinenceSpeedMultiplier` | `0.7` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.8` |
| `ItemStackSizeMultiplier` | `4` |
| `ItemWeightMultiplier` | `0.6` |
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
EnemySpawnRate=0.9
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.7
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=2
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.9
ThirstSpeedMultiplier=0.9
FatigueSpeedMultiplier=0.9
ContinenceSpeedMultiplier=0.7
BonusPerkPoints=0
PlayerXPGainMultiplier=2.8
ItemStackSizeMultiplier=4
ItemWeightMultiplier=0.6
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

## Day 9 - Empty Pantry Trial

**Profile ID:** `survival_empty_pantry_trial`  
**Base day ID:** `lab_rations_committee`  
**Experience:** SURVIVAL D09: scarcity - survival.  
**Message:** Empty Pantry Trial: Rations filed a complaint. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is scarcity.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `scarcity_low_frequency` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `scarcity` |
| `encounter_director` | `survival_empty_pantry_trial` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_empty_pantry_trial` |
| `family` | `survival` |
| `tier` | `medium` |
| `theme` | `evasion_scarcity` |
| `mixed_encounter_chance` | `0.084` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `630` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Empty Pantry Trial runs survival pressure.` |

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
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `1.9` |
| `EnemyPlayerDamageMultiplier` | `1.8` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.5` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `2.1` |
| `ThirstSpeedMultiplier` | `2` |
| `FatigueSpeedMultiplier` | `1.7` |
| `ContinenceSpeedMultiplier` | `1.25` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2` |
| `ItemStackSizeMultiplier` | `1` |
| `ItemWeightMultiplier` | `1.1` |
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
EnemySpawnRate=0.7
EnemyHealthMultiplier=1.9
EnemyPlayerDamageMultiplier=1.8
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.5
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=2.1
ThirstSpeedMultiplier=2
FatigueSpeedMultiplier=1.7
ContinenceSpeedMultiplier=1.25
BonusPerkPoints=0
PlayerXPGainMultiplier=2
ItemStackSizeMultiplier=1
ItemWeightMultiplier=1.1
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

## Day 10 - Silent Recovery

**Profile ID:** `survival_silent_recovery`  
**Base day ID:** `bring_your_scientist_to_work_day`  
**Experience:** SURVIVAL D10: recovery - survival.  
**Message:** Silent Recovery: Recovery is on probation. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is recovery.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `minimum_pressure` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `recovery` |
| `encounter_director` | `survival_silent_recovery` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_silent_recovery` |
| `family` | `survival` |
| `tier` | `very_low` |
| `theme` | `evasion_recovery` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `4` |
| `mixed_encounter_cooldown` | `756` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Silent Recovery runs survival pressure.` |

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
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `0.5` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.6` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.5` |
| `ThirstSpeedMultiplier` | `0.5` |
| `FatigueSpeedMultiplier` | `0.5` |
| `ContinenceSpeedMultiplier` | `0.45` |
| `BonusPerkPoints` | `10` |
| `PlayerXPGainMultiplier` | `3.7` |
| `ItemStackSizeMultiplier` | `10` |
| `ItemWeightMultiplier` | `0.3` |
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
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=0.5
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.6
EnemyAccuracy=2
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.5
ThirstSpeedMultiplier=0.5
FatigueSpeedMultiplier=0.5
ContinenceSpeedMultiplier=0.45
BonusPerkPoints=10
PlayerXPGainMultiplier=3.7
ItemStackSizeMultiplier=10
ItemWeightMultiplier=0.3
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

## Day 11 - Measured Risk

**Profile ID:** `survival_measured_risk`  
**Base day ID:** `mandatory_safety_training`  
**Experience:** SURVIVAL D11: training - survival.  
**Message:** Measured Risk: Training remembered teeth. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is training.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `training_targets` |
| `lethal_lasers` | `training_hazard` |
| `ante_up` | `training` |
| `encounter_director` | `survival_measured_risk` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_measured_risk` |
| `family` | `survival` |
| `tier` | `low` |
| `theme` | `evasion_training` |
| `mixed_encounter_chance` | `0.049` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `688` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Measured Risk runs survival pressure.` |

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
| `EnemyHealthMultiplier` | `1.4` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `0.4` |
| `DetectionSpeedMultiplier` | `1.2` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1` |
| `ContinenceSpeedMultiplier` | `0.8` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `4.7` |
| `ItemStackSizeMultiplier` | `5` |
| `ItemWeightMultiplier` | `0.5` |
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
EnemyHealthMultiplier=1.4
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=0.4
DetectionSpeedMultiplier=1.2
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1
ContinenceSpeedMultiplier=0.8
BonusPerkPoints=12
PlayerXPGainMultiplier=4.7
ItemStackSizeMultiplier=5
ItemWeightMultiplier=0.5
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

## Day 12 - Predator Review

**Profile ID:** `survival_predator_review`  
**Base day ID:** `black_lab_performance_review`  
**Experience:** SURVIVAL D12: major test - survival.  
**Message:** Predator Review: Black Lab reviewed you. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is major test.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `hard_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `survival_predator_review` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_predator_review` |
| `family` | `survival` |
| `tier` | `extreme` |
| `theme` | `evasion_heavy_test` |
| `mixed_encounter_chance` | `0.161` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `504` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Predator Review runs survival pressure.` |

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
| `EnemySpawnRate` | `1.5` |
| `EnemyHealthMultiplier` | `2.9` |
| `EnemyPlayerDamageMultiplier` | `3.1` |
| `EnemyDeployableDamageMultiplier` | `1.4` |
| `DetectionSpeedMultiplier` | `2.7` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.15` |
| `HungerSpeedMultiplier` | `1.7` |
| `ThirstSpeedMultiplier` | `1.7` |
| `FatigueSpeedMultiplier` | `1.7` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `3.8` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.8` |
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
EnemySpawnRate=1.5
EnemyHealthMultiplier=2.9
EnemyPlayerDamageMultiplier=3.1
EnemyDeployableDamageMultiplier=1.4
DetectionSpeedMultiplier=2.7
EnemyAccuracy=4
DamageToAlliesMultiplier=0.15
HungerSpeedMultiplier=1.7
ThirstSpeedMultiplier=1.7
FatigueSpeedMultiplier=1.7
ContinenceSpeedMultiplier=1
BonusPerkPoints=2
PlayerXPGainMultiplier=3.8
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.8
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

## Day 13 - Long Shift Survival

**Profile ID:** `survival_long_shift_survival`  
**Base day ID:** `extended_shift_survival_trial`  
**Experience:** SURVIVAL D13: endurance - survival.  
**Message:** Long Shift Survival: The shift got longer. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is endurance.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `slow_attrition` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `black_lab` |
| `encounter_director` | `survival_long_shift_survival` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_long_shift_survival` |
| `family` | `survival` |
| `tier` | `medium` |
| `theme` | `evasion_endurance` |
| `mixed_encounter_chance` | `0.098` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `607` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Long Shift Survival runs survival pressure.` |

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
| `EnemySpawnRate` | `0.6` |
| `EnemyHealthMultiplier` | `2.1` |
| `EnemyPlayerDamageMultiplier` | `2` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `1.5` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `2.3` |
| `ThirstSpeedMultiplier` | `2.3` |
| `FatigueSpeedMultiplier` | `2.2` |
| `ContinenceSpeedMultiplier` | `1.35` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.4` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `1.2` |
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
EnemySpawnRate=0.6
EnemyHealthMultiplier=2.1
EnemyPlayerDamageMultiplier=2
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=1.5
EnemyAccuracy=3
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=2.3
ThirstSpeedMultiplier=2.3
FatigueSpeedMultiplier=2.2
ContinenceSpeedMultiplier=1.35
BonusPerkPoints=0
PlayerXPGainMultiplier=2.4
ItemStackSizeMultiplier=2
ItemWeightMultiplier=1.2
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

## Day 14 - False Calm

**Profile ID:** `survival_false_calm`  
**Base day ID:** `supply_closet_miracle`  
**Experience:** SURVIVAL D14: relief - survival.  
**Message:** False Calm: Relief looks unsupervised. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is relief.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `relief_day` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `black_lab` |
| `encounter_director` | `survival_false_calm` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_false_calm` |
| `family` | `survival` |
| `tier` | `very_low` |
| `theme` | `evasion_relief` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `4` |
| `mixed_encounter_cooldown` | `780` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: False Calm runs survival pressure.` |

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
| `EnemySpawnRate` | `0.3` |
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `0.8` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.8` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.4` |
| `ThirstSpeedMultiplier` | `0.4` |
| `FatigueSpeedMultiplier` | `0.4` |
| `ContinenceSpeedMultiplier` | `0.35` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `5.4` |
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
EnemySpawnRate=0.3
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=0.8
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.8
EnemyAccuracy=2
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.4
ThirstSpeedMultiplier=0.4
FatigueSpeedMultiplier=0.4
ContinenceSpeedMultiplier=0.35
BonusPerkPoints=12
PlayerXPGainMultiplier=5.4
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

## Day 15 - Seen First Dead First

**Profile ID:** `survival_seen_first_dead_first`  
**Base day ID:** `accuracy_audit`  
**Experience:** SURVIVAL D15: precision - survival.  
**Message:** Seen First Dead First: Accuracy found the room. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is precision.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `precision_patrols` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `survival_seen_first_dead_first` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_seen_first_dead_first` |
| `family` | `survival` |
| `tier` | `high` |
| `theme` | `evasion_precision` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `572` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Seen First Dead First runs survival pressure.` |

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
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1.6` |
| `EnemyPlayerDamageMultiplier` | `2.3` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `2` |
| `EnemyAccuracy` | `3` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `1.4` |
| `ThirstSpeedMultiplier` | `1.4` |
| `FatigueSpeedMultiplier` | `1.7` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `3` |
| `ItemStackSizeMultiplier` | `2` |
| `ItemWeightMultiplier` | `0.8` |
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
EnemySpawnRate=0.8
EnemyHealthMultiplier=1.6
EnemyPlayerDamageMultiplier=2.3
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=2
EnemyAccuracy=3
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=1.4
ThirstSpeedMultiplier=1.4
FatigueSpeedMultiplier=1.7
ContinenceSpeedMultiplier=1
BonusPerkPoints=0
PlayerXPGainMultiplier=3
ItemStackSizeMultiplier=2
ItemWeightMultiplier=0.8
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

## Day 16 - Unapproved Conditions

**Profile ID:** `survival_unapproved_conditions`  
**Base day ID:** `approved_experimental_conditions`  
**Experience:** SURVIVAL D16: experiment - survival.  
**Message:** Unapproved Conditions: Variables escaped again. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is experiment.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `experimental_mixed` |
| `lethal_lasers` | `weird_cycle_or_standard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `survival_unapproved_conditions` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_unapproved_conditions` |
| `family` | `survival` |
| `tier` | `extreme` |
| `theme` | `evasion_experimental` |
| `mixed_encounter_chance` | `0.154` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `515` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Unapproved Conditions runs survival pressure.` |

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
| `EnemySpawnRate` | `1` |
| `EnemyHealthMultiplier` | `2.3` |
| `EnemyPlayerDamageMultiplier` | `1.5` |
| `EnemyDeployableDamageMultiplier` | `0.7` |
| `DetectionSpeedMultiplier` | `0.8` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `1.2` |
| `ThirstSpeedMultiplier` | `1.8` |
| `FatigueSpeedMultiplier` | `1.2` |
| `ContinenceSpeedMultiplier` | `1.2` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `6` |
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
EnemySpawnRate=1
EnemyHealthMultiplier=2.3
EnemyPlayerDamageMultiplier=1.5
EnemyDeployableDamageMultiplier=0.7
DetectionSpeedMultiplier=0.8
EnemyAccuracy=4
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=1.2
ThirstSpeedMultiplier=1.8
FatigueSpeedMultiplier=1.2
ContinenceSpeedMultiplier=1.2
BonusPerkPoints=2
PlayerXPGainMultiplier=6
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

## Day 17 - Final Evasion Test

**Profile ID:** `survival_final_evasion_test`  
**Base day ID:** `end_of_rotation_compliance_test`  
**Experience:** SURVIVAL D17: capstone - survival.  
**Message:** Final Evasion Test: Final exam is armed. The reward is not dying.  
**Run advice:** Tip: Pick fights carefully. Today is capstone.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `capstone_pressure` |
| `lethal_lasers` | `overcharged_high_hazard` |
| `ante_up` | `capstone` |
| `encounter_director` | `survival_final_evasion_test` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `survival_final_evasion_test` |
| `family` | `survival` |
| `tier` | `capstone` |
| `theme` | `evasion_capstone` |
| `mixed_encounter_chance` | `0.196` |
| `mixed_encounter_budget` | `11` |
| `mixed_encounter_cooldown` | `446` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Final Evasion Test runs survival pressure.` |

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
| `EnemySpawnRate` | `2` |
| `EnemyHealthMultiplier` | `3.6` |
| `EnemyPlayerDamageMultiplier` | `3.6` |
| `EnemyDeployableDamageMultiplier` | `2` |
| `DetectionSpeedMultiplier` | `3.2` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `2.1` |
| `ThirstSpeedMultiplier` | `2.1` |
| `FatigueSpeedMultiplier` | `2` |
| `ContinenceSpeedMultiplier` | `1.1` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `4.8` |
| `ItemStackSizeMultiplier` | `3` |
| `ItemWeightMultiplier` | `0.9` |
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
EnemySpawnRate=2
EnemyHealthMultiplier=3.6
EnemyPlayerDamageMultiplier=3.6
EnemyDeployableDamageMultiplier=2
DetectionSpeedMultiplier=3.2
EnemyAccuracy=4
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=2.1
ThirstSpeedMultiplier=2.1
FatigueSpeedMultiplier=2
ContinenceSpeedMultiplier=1.1
BonusPerkPoints=2
PlayerXPGainMultiplier=4.8
ItemStackSizeMultiplier=3
ItemWeightMultiplier=0.9
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
