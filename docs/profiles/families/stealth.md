# Stealth Family

**Family ID:** `stealth`
**Genre:** avoidance and surveillance pressure
**Tone:** whispered corporate surveillance

Avoid detection. The facility is listening harder than usual.

## 17-Day Index

| Day | Profile | Experience | DynamicSpawns | Lethal Lasers | ANTE Up |
|---:|---|---|---|---|---|
| 1 | [Whispered Orientation](#day-1-whispered-orientation) | STEALTH D01: baseline - stealth. | `standard_pressure` | `standard_safety` | `standard` |
| 2 | [Authorized Silence](#day-2-authorized-silence) | STEALTH D02: prep - stealth. | `quiet_base_safe` | `low_hazard` | `quiet` |
| 3 | [The Floor Heard You](#day-3-the-floor-heard-you) | STEALTH D03: resource - stealth. | `biohazard_light` | `standard_safety` | `biohazard` |
| 4 | [Pocketed Evidence](#day-4-pocketed-evidence) | STEALTH D04: loot - stealth. | `low_pressure_loot_day` | `low_hazard` | `loot` |
| 5 | [Silent Security Sweep](#day-5-silent-security-sweep) | STEALTH D05: security - stealth. | `security_pressure` | `moderate_hazard` | `security` |
| 6 | [Forecast: Low Profile](#day-6-forecast-low-profile) | STEALTH D06: weather - stealth. | `weather_wandering` | `electrical_hazard_light` | `weather` |
| 7 | [Dark Route Clearance](#day-7-dark-route-clearance) | STEALTH D07: night - stealth. | `night_pressure` | `night_visible_moderate` | `night` |
| 8 | [Unseen Transit](#day-8-unseen-transit) | STEALTH D08: route - stealth. | `speedrun_pressure` | `low_to_moderate_hazard` | `speedrun` |
| 9 | [Ration Without Witnesses](#day-9-ration-without-witnesses) | STEALTH D09: scarcity - stealth. | `scarcity_low_frequency` | `standard_safety` | `scarcity` |
| 10 | [Quiet Repair Window](#day-10-quiet-repair-window) | STEALTH D10: recovery - stealth. | `minimum_pressure` | `disabled_or_low_if_supported` | `recovery` |
| 11 | [Observation Drill](#day-11-observation-drill) | STEALTH D11: training - stealth. | `training_targets` | `training_hazard` | `training` |
| 12 | [Black Lab Blind Spot](#day-12-black-lab-blind-spot) | STEALTH D12: major test - stealth. | `hard_pressure` | `high_hazard` | `black_lab` |
| 13 | [Long Silent Shift](#day-13-long-silent-shift) | STEALTH D13: endurance - stealth. | `slow_attrition` | `standard_safety` | `black_lab` |
| 14 | [False Empty Hall](#day-14-false-empty-hall) | STEALTH D14: relief - stealth. | `relief_day` | `disabled_or_low_if_supported` | `black_lab` |
| 15 | [Detection Audit](#day-15-detection-audit) | STEALTH D15: precision - stealth. | `precision_patrols` | `moderate_hazard` | `black_lab` |
| 16 | [Experimental Silence](#day-16-experimental-silence) | STEALTH D16: experiment - stealth. | `experimental_mixed` | `weird_cycle_or_standard` | `black_lab` |
| 17 | [Final Nonappearance](#day-17-final-nonappearance) | STEALTH D17: capstone - stealth. | `capstone_pressure` | `overcharged_high_hazard` | `capstone` |

## Day 1 - Whispered Orientation

**Profile ID:** `stealth_whispered_orientation`  
**Base day ID:** `mostly_normal_allegedly`  
**Experience:** STEALTH D01: baseline - stealth.  
**Message:** Whispered Orientation: Orientation begins politely. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is baseline.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `standard_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `standard` |
| `encounter_director` | `stealth_whispered_orientation` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_whispered_orientation` |
| `family` | `stealth` |
| `tier` | `medium` |
| `theme` | `silent_patrol_orientation` |
| `mixed_encounter_chance` | `0.07` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `653` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Whispered Orientation runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.6` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `1.7` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `2` |
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
EnemySpawnRate=0.6
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=1.7
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=2
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

## Day 2 - Authorized Silence

**Profile ID:** `stealth_authorized_silence`  
**Base day ID:** `open_floor_plan_authorization`  
**Experience:** STEALTH D02: prep - stealth.  
**Message:** Authorized Silence: Prep window approved. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is prep.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `quiet_base_safe` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `quiet` |
| `encounter_director` | `stealth_authorized_silence` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_authorized_silence` |
| `family` | `stealth` |
| `tier` | `low` |
| `theme` | `silent_patrol_preparation` |
| `mixed_encounter_chance` | `0.028` |
| `mixed_encounter_budget` | `5` |
| `mixed_encounter_cooldown` | `722` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Authorized Silence runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.3` |
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `1.1` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `1.2` |
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
EnemySpawnRate=0.3
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=1.1
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=1.2
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

## Day 3 - The Floor Heard You

**Profile ID:** `stealth_the_floor_heard_you`  
**Base day ID:** `questionable_drinking_water`  
**Experience:** STEALTH D03: resource - stealth.  
**Message:** The Floor Heard You: Resources are acting suspicious. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is resource.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `biohazard_light` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `biohazard` |
| `encounter_director` | `stealth_the_floor_heard_you` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_the_floor_heard_you` |
| `family` | `stealth` |
| `tier` | `medium` |
| `theme` | `silent_patrol_bio_resource` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `618` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: The Floor Heard You runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.6` |
| `EnemyHealthMultiplier` | `1.4` |
| `EnemyPlayerDamageMultiplier` | `1.8` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `2` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.3` |
| `ThirstSpeedMultiplier` | `1.9` |
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
EnemySpawnRate=0.6
EnemyHealthMultiplier=1.4
EnemyPlayerDamageMultiplier=1.8
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=2
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.3
ThirstSpeedMultiplier=1.9
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

## Day 4 - Pocketed Evidence

**Profile ID:** `stealth_pocketed_evidence`  
**Base day ID:** `inventory_expansion_memo`  
**Experience:** STEALTH D04: loot - stealth.  
**Message:** Pocketed Evidence: Loot moved toward danger. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is loot.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `low_pressure_loot_day` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `loot` |
| `encounter_director` | `stealth_pocketed_evidence` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_pocketed_evidence` |
| `family` | `stealth` |
| `tier` | `low` |
| `theme` | `silent_patrol_loot_mobility` |
| `mixed_encounter_chance` | `0.056` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `676` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Pocketed Evidence runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.4` |
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `1.4` |
| `EnemyDeployableDamageMultiplier` | `0.5` |
| `DetectionSpeedMultiplier` | `1.6` |
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
EnemySpawnRate=0.4
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=1.4
EnemyDeployableDamageMultiplier=0.5
DetectionSpeedMultiplier=1.6
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

## Day 5 - Silent Security Sweep

**Profile ID:** `stealth_silent_security_sweep`  
**Base day ID:** `security_heard_something`  
**Experience:** STEALTH D05: security - stealth.  
**Message:** Silent Security Sweep: Security noticed you. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is security.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `stealth_silent_security_sweep` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_silent_security_sweep` |
| `family` | `stealth` |
| `tier` | `high` |
| `theme` | `silent_patrol_security` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `572` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Silent Security Sweep runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.9` |
| `EnemyHealthMultiplier` | `1.5` |
| `EnemyPlayerDamageMultiplier` | `2.2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `3.8` |
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
EnemySpawnRate=0.9
EnemyHealthMultiplier=1.5
EnemyPlayerDamageMultiplier=2.2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=3.8
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

## Day 6 - Forecast: Low Profile

**Profile ID:** `stealth_forecast_low_profile`  
**Base day ID:** `weather_department_apology`  
**Experience:** STEALTH D06: weather - stealth.  
**Message:** Forecast: Low Profile: The weather got indoors. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is weather.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `weather_wandering` |
| `lethal_lasers` | `electrical_hazard_light` |
| `ante_up` | `weather` |
| `encounter_director` | `stealth_forecast_low_profile` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_forecast_low_profile` |
| `family` | `stealth` |
| `tier` | `medium` |
| `theme` | `silent_patrol_weather` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `618` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Forecast: Low Profile runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.6` |
| `EnemyHealthMultiplier` | `1.4` |
| `EnemyPlayerDamageMultiplier` | `1.8` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `2.1` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.1` |
| `ThirstSpeedMultiplier` | `1.35` |
| `FatigueSpeedMultiplier` | `1.2` |
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
EnemySpawnRate=0.6
EnemyHealthMultiplier=1.4
EnemyPlayerDamageMultiplier=1.8
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=2.1
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.1
ThirstSpeedMultiplier=1.35
FatigueSpeedMultiplier=1.2
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

## Day 7 - Dark Route Clearance

**Profile ID:** `stealth_dark_route_clearance`  
**Base day ID:** `night_shift_with_benefits`  
**Experience:** STEALTH D07: night - stealth.  
**Message:** Dark Route Clearance: Lights negotiated badly. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is night.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `night_visible_moderate` |
| `ante_up` | `night` |
| `encounter_director` | `stealth_dark_route_clearance` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_dark_route_clearance` |
| `family` | `stealth` |
| `tier` | `high` |
| `theme` | `silent_patrol_night` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `572` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Dark Route Clearance runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.9` |
| `EnemyHealthMultiplier` | `1.5` |
| `EnemyPlayerDamageMultiplier` | `2.1` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `3.2` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.95` |
| `ThirstSpeedMultiplier` | `0.95` |
| `FatigueSpeedMultiplier` | `1.5` |
| `ContinenceSpeedMultiplier` | `0.95` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `2.6` |
| `ItemStackSizeMultiplier` | `3` |
| `ItemWeightMultiplier` | `0.7` |
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
EnemySpawnRate=0.9
EnemyHealthMultiplier=1.5
EnemyPlayerDamageMultiplier=2.1
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=3.2
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.95
ThirstSpeedMultiplier=0.95
FatigueSpeedMultiplier=1.5
ContinenceSpeedMultiplier=0.95
BonusPerkPoints=0
PlayerXPGainMultiplier=2.6
ItemStackSizeMultiplier=3
ItemWeightMultiplier=0.7
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

## Day 8 - Unseen Transit

**Profile ID:** `stealth_unseen_transit`  
**Base day ID:** `clock_department_incident`  
**Experience:** STEALTH D08: route - stealth.  
**Message:** Unseen Transit: Routes are impatient. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is route.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `speedrun_pressure` |
| `lethal_lasers` | `low_to_moderate_hazard` |
| `ante_up` | `speedrun` |
| `encounter_director` | `stealth_unseen_transit` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_unseen_transit` |
| `family` | `stealth` |
| `tier` | `medium` |
| `theme` | `silent_patrol_route` |
| `mixed_encounter_chance` | `0.105` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `596` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Unseen Transit runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `1.8` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `2.7` |
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
EnemySpawnRate=0.8
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=1.8
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=2.7
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

## Day 9 - Ration Without Witnesses

**Profile ID:** `stealth_ration_without_witnesses`  
**Base day ID:** `lab_rations_committee`  
**Experience:** STEALTH D09: scarcity - stealth.  
**Message:** Ration Without Witnesses: Rations filed a complaint. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is scarcity.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `scarcity_low_frequency` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `scarcity` |
| `encounter_director` | `stealth_ration_without_witnesses` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_ration_without_witnesses` |
| `family` | `stealth` |
| `tier` | `medium` |
| `theme` | `silent_patrol_scarcity` |
| `mixed_encounter_chance` | `0.084` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `630` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Ration Without Witnesses runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.6` |
| `EnemyHealthMultiplier` | `1.6` |
| `EnemyPlayerDamageMultiplier` | `1.9` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `2` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.7` |
| `ThirstSpeedMultiplier` | `1.6` |
| `FatigueSpeedMultiplier` | `1.3` |
| `ContinenceSpeedMultiplier` | `1.25` |
| `BonusPerkPoints` | `0` |
| `PlayerXPGainMultiplier` | `1.9` |
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
EnemySpawnRate=0.6
EnemyHealthMultiplier=1.6
EnemyPlayerDamageMultiplier=1.9
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=2
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.7
ThirstSpeedMultiplier=1.6
FatigueSpeedMultiplier=1.3
ContinenceSpeedMultiplier=1.25
BonusPerkPoints=0
PlayerXPGainMultiplier=1.9
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

## Day 10 - Quiet Repair Window

**Profile ID:** `stealth_quiet_repair_window`  
**Base day ID:** `bring_your_scientist_to_work_day`  
**Experience:** STEALTH D10: recovery - stealth.  
**Message:** Quiet Repair Window: Recovery is on probation. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is recovery.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `minimum_pressure` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `recovery` |
| `encounter_director` | `stealth_quiet_repair_window` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_quiet_repair_window` |
| `family` | `stealth` |
| `tier` | `very_low` |
| `theme` | `silent_patrol_recovery` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `4` |
| `mixed_encounter_cooldown` | `756` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Quiet Repair Window runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.2` |
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `0.6` |
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
EnemySpawnRate=0.2
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=0.6
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

## Day 11 - Observation Drill

**Profile ID:** `stealth_observation_drill`  
**Base day ID:** `mandatory_safety_training`  
**Experience:** STEALTH D11: training - stealth.  
**Message:** Observation Drill: Training remembered teeth. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is training.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `training_targets` |
| `lethal_lasers` | `training_hazard` |
| `ante_up` | `training` |
| `encounter_director` | `stealth_observation_drill` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_observation_drill` |
| `family` | `stealth` |
| `tier` | `low` |
| `theme` | `silent_patrol_training` |
| `mixed_encounter_chance` | `0.049` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `688` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Observation Drill runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.5` |
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `1.1` |
| `EnemyDeployableDamageMultiplier` | `0.4` |
| `DetectionSpeedMultiplier` | `1.6` |
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
EnemySpawnRate=0.5
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=1.1
EnemyDeployableDamageMultiplier=0.4
DetectionSpeedMultiplier=1.6
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

## Day 12 - Black Lab Blind Spot

**Profile ID:** `stealth_black_lab_blind_spot`  
**Base day ID:** `black_lab_performance_review`  
**Experience:** STEALTH D12: major test - stealth.  
**Message:** Black Lab Blind Spot: Black Lab reviewed you. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is major test.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `hard_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `stealth_black_lab_blind_spot` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_black_lab_blind_spot` |
| `family` | `stealth` |
| `tier` | `extreme` |
| `theme` | `silent_patrol_heavy_test` |
| `mixed_encounter_chance` | `0.161` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `504` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Black Lab Blind Spot runs stealth pressure.` |

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
| `EnemySpawnRate` | `1.2` |
| `EnemyHealthMultiplier` | `2.3` |
| `EnemyPlayerDamageMultiplier` | `3.3` |
| `EnemyDeployableDamageMultiplier` | `1.4` |
| `DetectionSpeedMultiplier` | `3.7` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.15` |
| `HungerSpeedMultiplier` | `1.15` |
| `ThirstSpeedMultiplier` | `1.15` |
| `FatigueSpeedMultiplier` | `1.15` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `2` |
| `PlayerXPGainMultiplier` | `3.6` |
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
EnemySpawnRate=1.2
EnemyHealthMultiplier=2.3
EnemyPlayerDamageMultiplier=3.3
EnemyDeployableDamageMultiplier=1.4
DetectionSpeedMultiplier=3.7
EnemyAccuracy=4
DamageToAlliesMultiplier=0.15
HungerSpeedMultiplier=1.15
ThirstSpeedMultiplier=1.15
FatigueSpeedMultiplier=1.15
ContinenceSpeedMultiplier=1
BonusPerkPoints=2
PlayerXPGainMultiplier=3.6
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

## Day 13 - Long Silent Shift

**Profile ID:** `stealth_long_silent_shift`  
**Base day ID:** `extended_shift_survival_trial`  
**Experience:** STEALTH D13: endurance - stealth.  
**Message:** Long Silent Shift: The shift got longer. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is endurance.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `slow_attrition` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `black_lab` |
| `encounter_director` | `stealth_long_silent_shift` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_long_silent_shift` |
| `family` | `stealth` |
| `tier` | `medium` |
| `theme` | `silent_patrol_endurance` |
| `mixed_encounter_chance` | `0.098` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `607` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Long Silent Shift runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.5` |
| `EnemyHealthMultiplier` | `1.7` |
| `EnemyPlayerDamageMultiplier` | `2.1` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `2` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.9` |
| `ThirstSpeedMultiplier` | `1.9` |
| `FatigueSpeedMultiplier` | `1.8` |
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
EnemySpawnRate=0.5
EnemyHealthMultiplier=1.7
EnemyPlayerDamageMultiplier=2.1
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=2
EnemyAccuracy=4
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.9
ThirstSpeedMultiplier=1.9
FatigueSpeedMultiplier=1.8
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

## Day 14 - False Empty Hall

**Profile ID:** `stealth_false_empty_hall`  
**Base day ID:** `supply_closet_miracle`  
**Experience:** STEALTH D14: relief - stealth.  
**Message:** False Empty Hall: Relief looks unsupervised. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is relief.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `relief_day` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `black_lab` |
| `encounter_director` | `stealth_false_empty_hall` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_false_empty_hall` |
| `family` | `stealth` |
| `tier` | `very_low` |
| `theme` | `silent_patrol_relief` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `4` |
| `mixed_encounter_cooldown` | `780` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: False Empty Hall runs stealth pressure.` |

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
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `0.8` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `1.1` |
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
EnemySpawnRate=0.3
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=0.8
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=1.1
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

## Day 15 - Detection Audit

**Profile ID:** `stealth_detection_audit`  
**Base day ID:** `accuracy_audit`  
**Experience:** STEALTH D15: precision - stealth.  
**Message:** Detection Audit: Accuracy found the room. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is precision.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `precision_patrols` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `stealth_detection_audit` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_detection_audit` |
| `family` | `stealth` |
| `tier` | `high` |
| `theme` | `silent_patrol_precision` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `572` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Detection Audit runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.7` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `2.4` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `2.8` |
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
EnemySpawnRate=0.7
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=2.4
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=2.8
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

## Day 16 - Experimental Silence

**Profile ID:** `stealth_experimental_silence`  
**Base day ID:** `approved_experimental_conditions`  
**Experience:** STEALTH D16: experiment - stealth.  
**Message:** Experimental Silence: Variables escaped again. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is experiment.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `experimental_mixed` |
| `lethal_lasers` | `weird_cycle_or_standard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `stealth_experimental_silence` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_experimental_silence` |
| `family` | `stealth` |
| `tier` | `extreme` |
| `theme` | `silent_patrol_experimental` |
| `mixed_encounter_chance` | `0.154` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `515` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Experimental Silence runs stealth pressure.` |

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
| `EnemySpawnRate` | `0.8` |
| `EnemyHealthMultiplier` | `1.9` |
| `EnemyPlayerDamageMultiplier` | `1.6` |
| `EnemyDeployableDamageMultiplier` | `0.7` |
| `DetectionSpeedMultiplier` | `1.1` |
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
EnemySpawnRate=0.8
EnemyHealthMultiplier=1.9
EnemyPlayerDamageMultiplier=1.6
EnemyDeployableDamageMultiplier=0.7
DetectionSpeedMultiplier=1.1
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

## Day 17 - Final Nonappearance

**Profile ID:** `stealth_final_nonappearance`  
**Base day ID:** `end_of_rotation_compliance_test`  
**Experience:** STEALTH D17: capstone - stealth.  
**Message:** Final Nonappearance: Final exam is armed. Silence pays overtime.  
**Run advice:** Tip: Be less visible than the memo. Today is capstone.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `capstone_pressure` |
| `lethal_lasers` | `overcharged_high_hazard` |
| `ante_up` | `capstone` |
| `encounter_director` | `stealth_final_nonappearance` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `stealth_final_nonappearance` |
| `family` | `stealth` |
| `tier` | `capstone` |
| `theme` | `silent_patrol_capstone` |
| `mixed_encounter_chance` | `0.196` |
| `mixed_encounter_budget` | `11` |
| `mixed_encounter_cooldown` | `446` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Final Nonappearance runs stealth pressure.` |

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
| `EnemySpawnRate` | `1.6` |
| `EnemyHealthMultiplier` | `2.9` |
| `EnemyPlayerDamageMultiplier` | `3.8` |
| `EnemyDeployableDamageMultiplier` | `2` |
| `DetectionSpeedMultiplier` | `4.4` |
| `EnemyAccuracy` | `4` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1.35` |
| `ThirstSpeedMultiplier` | `1.35` |
| `FatigueSpeedMultiplier` | `1.25` |
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
EnemySpawnRate=1.6
EnemyHealthMultiplier=2.9
EnemyPlayerDamageMultiplier=3.8
EnemyDeployableDamageMultiplier=2
DetectionSpeedMultiplier=4.4
EnemyAccuracy=4
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1.35
ThirstSpeedMultiplier=1.35
FatigueSpeedMultiplier=1.25
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
DisableResearchMinigame=True
DeathPenalties=3
FirstTimeStartingWeapon=0
HostAccessPlayerCorpses=True
AllowCharacterReset=True
BaseInventorySize=12
PlayerFurnitureDestruction=False
AllowIronMode=False
```
