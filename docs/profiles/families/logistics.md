# Logistics Family

**Family ID:** `logistics`
**Genre:** inventory economy and preparation
**Tone:** inventory bureaucracy

Transport, inventory, durability, weight, supply runs, prep economy.

## 17-Day Index

| Day | Profile | Experience | DynamicSpawns | Lethal Lasers | ANTE Up |
|---:|---|---|---|---|---|
| 1 | [Inventory Orientation](#day-1-inventory-orientation) | LOGISTICS D01: baseline - inventory. | `standard_pressure` | `standard_safety` | `standard` |
| 2 | [Open Floor Storage](#day-2-open-floor-storage) | LOGISTICS D02: prep - inventory. | `quiet_base_safe` | `disabled_or_low_if_supported` | `quiet` |
| 3 | [Hydration Paperwork](#day-3-hydration-paperwork) | LOGISTICS D03: resource - inventory. | `biohazard_light` | `standard_safety` | `biohazard` |
| 4 | [Supply Chain Celebration](#day-4-supply-chain-celebration) | LOGISTICS D04: loot - inventory. | `low_pressure_loot_day` | `low_hazard` | `loot` |
| 5 | [Security of Receipts](#day-5-security-of-receipts) | LOGISTICS D05: security - inventory. | `security_pressure` | `moderate_hazard` | `security` |
| 6 | [Weathered Freight](#day-6-weathered-freight) | LOGISTICS D06: weather - inventory. | `weather_wandering` | `electrical_hazard_light` | `weather` |
| 7 | [Night Stocktake](#day-7-night-stocktake) | LOGISTICS D07: night - inventory. | `night_pressure` | `night_visible_moderate` | `night` |
| 8 | [Route Optimization Memo](#day-8-route-optimization-memo) | LOGISTICS D08: route - inventory. | `speedrun_pressure` | `low_to_moderate_hazard` | `speedrun` |
| 9 | [Ration Ledger](#day-9-ration-ledger) | LOGISTICS D09: scarcity - inventory. | `scarcity_low_frequency` | `standard_safety` | `scarcity` |
| 10 | [Recovery Repack](#day-10-recovery-repack) | LOGISTICS D10: recovery - inventory. | `minimum_pressure` | `disabled_or_low_if_supported` | `recovery` |
| 11 | [Safety Label Training](#day-11-safety-label-training) | LOGISTICS D11: training - inventory. | `training_targets` | `training_hazard` | `training` |
| 12 | [Black Lab Logistics Review](#day-12-black-lab-logistics-review) | LOGISTICS D12: major test - inventory. | `hard_pressure` | `high_hazard` | `black_lab` |
| 13 | [Extended Haul Shift](#day-13-extended-haul-shift) | LOGISTICS D13: endurance - inventory. | `slow_attrition` | `standard_safety` | `attrition` |
| 14 | [Supply Closet Miracle Audit](#day-14-supply-closet-miracle-audit) | LOGISTICS D14: relief - inventory. | `relief_day` | `disabled_or_low_if_supported` | `relief` |
| 15 | [Accuracy of Count](#day-15-accuracy-of-count) | LOGISTICS D15: precision - inventory. | `precision_patrols` | `moderate_hazard` | `accuracy` |
| 16 | [Experimental Inventory](#day-16-experimental-inventory) | LOGISTICS D16: experiment - inventory. | `experimental_mixed` | `weird_cycle_or_standard` | `experimental` |
| 17 | [Final Logistics Exam](#day-17-final-logistics-exam) | LOGISTICS D17: capstone - inventory. | `capstone_pressure` | `overcharged_high_hazard` | `capstone` |

## Day 1 - Inventory Orientation

**Profile ID:** `logistics_inventory_orientation`  
**Base day ID:** `mostly_normal_allegedly`  
**Experience:** LOGISTICS D01: baseline - inventory.  
**Message:** Inventory Orientation: Orientation begins politely. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is baseline.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `standard_pressure` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `standard` |
| `encounter_director` | `logistics_inventory_orientation` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_inventory_orientation` |
| `family` | `logistics` |
| `tier` | `medium` |
| `theme` | `logistics_orientation` |
| `mixed_encounter_chance` | `0.07` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `473` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Inventory Orientation runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemyHealthMultiplier` | `0.9` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.8` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `1.4` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.5` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=1
HardcoreMode=False
LootRespawnEnabled=True
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
EnemyHealthMultiplier=0.9
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.8
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1
ContinenceSpeedMultiplier=1
BonusPerkPoints=4
PlayerXPGainMultiplier=1.4
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.5
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 2 - Open Floor Storage

**Profile ID:** `logistics_open_floor_storage`  
**Base day ID:** `open_floor_plan_authorization`  
**Experience:** LOGISTICS D02: prep - inventory.  
**Message:** Open Floor Storage: Prep window approved. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is prep.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `quiet_base_safe` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `quiet` |
| `encounter_director` | `logistics_open_floor_storage` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_open_floor_storage` |
| `family` | `logistics` |
| `tier` | `low` |
| `theme` | `logistics_preparation` |
| `mixed_encounter_chance` | `0.028` |
| `mixed_encounter_budget` | `7` |
| `mixed_encounter_cooldown` | `542` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Open Floor Storage runs inventory pressure.` |

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
| `EnemyHealthMultiplier` | `0.8` |
| `EnemyPlayerDamageMultiplier` | `0.6` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.5` |
| `EnemyAccuracy` | `0` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.65` |
| `ThirstSpeedMultiplier` | `0.65` |
| `FatigueSpeedMultiplier` | `0.65` |
| `ContinenceSpeedMultiplier` | `0.65` |
| `BonusPerkPoints` | `7` |
| `PlayerXPGainMultiplier` | `1.9` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.2` |
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
EnemyHealthMultiplier=0.8
EnemyPlayerDamageMultiplier=0.6
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.5
EnemyAccuracy=0
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.65
ThirstSpeedMultiplier=0.65
FatigueSpeedMultiplier=0.65
ContinenceSpeedMultiplier=0.65
BonusPerkPoints=7
PlayerXPGainMultiplier=1.9
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.2
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

## Day 3 - Hydration Paperwork

**Profile ID:** `logistics_hydration_paperwork`  
**Base day ID:** `questionable_drinking_water`  
**Experience:** LOGISTICS D03: resource - inventory.  
**Message:** Hydration Paperwork: Resources are acting suspicious. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is resource.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `biohazard_light` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `biohazard` |
| `encounter_director` | `logistics_hydration_paperwork` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_hydration_paperwork` |
| `family` | `logistics` |
| `tier` | `medium` |
| `theme` | `logistics_bio_resource` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `9` |
| `mixed_encounter_cooldown` | `438` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Hydration Paperwork runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `1.1` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1.5` |
| `FatigueSpeedMultiplier` | `1.1` |
| `ContinenceSpeedMultiplier` | `1.45` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `1.6` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.5` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=True
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
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=1.1
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=0.9
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1.5
FatigueSpeedMultiplier=1.1
ContinenceSpeedMultiplier=1.45
BonusPerkPoints=4
PlayerXPGainMultiplier=1.6
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.5
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 4 - Supply Chain Celebration

**Profile ID:** `logistics_supply_chain_celebration`  
**Base day ID:** `inventory_expansion_memo`  
**Experience:** LOGISTICS D04: loot - inventory.  
**Message:** Supply Chain Celebration: Loot moved toward danger. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is loot.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `low_pressure_loot_day` |
| `lethal_lasers` | `low_hazard` |
| `ante_up` | `loot` |
| `encounter_director` | `logistics_supply_chain_celebration` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_supply_chain_celebration` |
| `family` | `logistics` |
| `tier` | `low` |
| `theme` | `logistics_loot_mobility` |
| `mixed_encounter_chance` | `0.056` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `496` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Supply Chain Celebration runs inventory pressure.` |

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
| `EnemyHealthMultiplier` | `0.8` |
| `EnemyPlayerDamageMultiplier` | `0.8` |
| `EnemyDeployableDamageMultiplier` | `0.5` |
| `DetectionSpeedMultiplier` | `0.7` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.75` |
| `ThirstSpeedMultiplier` | `0.75` |
| `FatigueSpeedMultiplier` | `0.75` |
| `ContinenceSpeedMultiplier` | `0.75` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `2.1` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.2` |
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
| `BaseInventorySize` | `18` |
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
EnemyHealthMultiplier=0.8
EnemyPlayerDamageMultiplier=0.8
EnemyDeployableDamageMultiplier=0.5
DetectionSpeedMultiplier=0.7
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.75
ThirstSpeedMultiplier=0.75
FatigueSpeedMultiplier=0.75
ContinenceSpeedMultiplier=0.75
BonusPerkPoints=4
PlayerXPGainMultiplier=2.1
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.2
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 5 - Security of Receipts

**Profile ID:** `logistics_security_of_receipts`  
**Base day ID:** `security_heard_something`  
**Experience:** LOGISTICS D05: security - inventory.  
**Message:** Security of Receipts: Security noticed you. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is security.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `security_pressure` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `security` |
| `encounter_director` | `logistics_security_of_receipts` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_security_of_receipts` |
| `family` | `logistics` |
| `tier` | `high` |
| `theme` | `logistics_security` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `392` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Security of Receipts runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `1.2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.6` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1.15` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `1.9` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.5` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=True
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
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=1.2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.6
EnemyAccuracy=1
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1.15
ContinenceSpeedMultiplier=1
BonusPerkPoints=4
PlayerXPGainMultiplier=1.9
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.5
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 6 - Weathered Freight

**Profile ID:** `logistics_weathered_freight`  
**Base day ID:** `weather_department_apology`  
**Experience:** LOGISTICS D06: weather - inventory.  
**Message:** Weathered Freight: The weather got indoors. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is weather.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `weather_wandering` |
| `lethal_lasers` | `electrical_hazard_light` |
| `ante_up` | `weather` |
| `encounter_director` | `logistics_weathered_freight` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_weathered_freight` |
| `family` | `logistics` |
| `tier` | `medium` |
| `theme` | `logistics_weather` |
| `mixed_encounter_chance` | `0.091` |
| `mixed_encounter_budget` | `9` |
| `mixed_encounter_cooldown` | `438` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Weathered Freight runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemyHealthMultiplier` | `1` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.1` |
| `ThirstSpeedMultiplier` | `1.35` |
| `FatigueSpeedMultiplier` | `0.9` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `1.6` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.5` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=True
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
EnemyHealthMultiplier=1
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.9
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.1
ThirstSpeedMultiplier=1.35
FatigueSpeedMultiplier=0.9
ContinenceSpeedMultiplier=1
BonusPerkPoints=4
PlayerXPGainMultiplier=1.6
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.5
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 7 - Night Stocktake

**Profile ID:** `logistics_night_stocktake`  
**Base day ID:** `night_shift_with_benefits`  
**Experience:** LOGISTICS D07: night - inventory.  
**Message:** Night Stocktake: Lights negotiated badly. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is night.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `night_pressure` |
| `lethal_lasers` | `night_visible_moderate` |
| `ante_up` | `night` |
| `encounter_director` | `logistics_night_stocktake` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_night_stocktake` |
| `family` | `logistics` |
| `tier` | `high` |
| `theme` | `logistics_night` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `392` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Night Stocktake runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemySpawnRate` | `1.2` |
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `1.2` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `1.4` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.95` |
| `ThirstSpeedMultiplier` | `0.95` |
| `FatigueSpeedMultiplier` | `1.2` |
| `ContinenceSpeedMultiplier` | `0.95` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `2.1` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.4` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=True
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
EnemySpawnRate=1.2
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=1.2
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=1.4
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.95
ThirstSpeedMultiplier=0.95
FatigueSpeedMultiplier=1.2
ContinenceSpeedMultiplier=0.95
BonusPerkPoints=4
PlayerXPGainMultiplier=2.1
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.4
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 8 - Route Optimization Memo

**Profile ID:** `logistics_route_optimization_memo`  
**Base day ID:** `clock_department_incident`  
**Experience:** LOGISTICS D08: route - inventory.  
**Message:** Route Optimization Memo: Routes are impatient. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is route.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `speedrun_pressure` |
| `lethal_lasers` | `low_to_moderate_hazard` |
| `ante_up` | `speedrun` |
| `encounter_director` | `logistics_route_optimization_memo` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_route_optimization_memo` |
| `family` | `logistics` |
| `tier` | `medium` |
| `theme` | `logistics_route` |
| `mixed_encounter_chance` | `0.105` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `416` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Route Optimization Memo runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemySpawnRate` | `1` |
| `EnemyHealthMultiplier` | `0.8` |
| `EnemyPlayerDamageMultiplier` | `1` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `1.2` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.7` |
| `ThirstSpeedMultiplier` | `0.7` |
| `FatigueSpeedMultiplier` | `0.7` |
| `ContinenceSpeedMultiplier` | `0.7` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `2.2` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.4` |
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
LootRespawnEnabled=True
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
EnemySpawnRate=1
EnemyHealthMultiplier=0.8
EnemyPlayerDamageMultiplier=1
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=1.2
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.7
ThirstSpeedMultiplier=0.7
FatigueSpeedMultiplier=0.7
ContinenceSpeedMultiplier=0.7
BonusPerkPoints=4
PlayerXPGainMultiplier=2.2
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.4
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

## Day 9 - Ration Ledger

**Profile ID:** `logistics_ration_ledger`  
**Base day ID:** `lab_rations_committee`  
**Experience:** LOGISTICS D09: scarcity - inventory.  
**Message:** Ration Ledger: Rations filed a complaint. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is scarcity.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `scarcity_low_frequency` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `scarcity` |
| `encounter_director` | `logistics_ration_ledger` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_ration_ledger` |
| `family` | `logistics` |
| `tier` | `medium` |
| `theme` | `logistics_scarcity` |
| `mixed_encounter_chance` | `0.084` |
| `mixed_encounter_budget` | `9` |
| `mixed_encounter_cooldown` | `450` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Ration Ledger runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `1` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemyHealthMultiplier` | `1.1` |
| `EnemyPlayerDamageMultiplier` | `1.1` |
| `EnemyDeployableDamageMultiplier` | `1` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.4` |
| `ThirstSpeedMultiplier` | `1.3` |
| `FatigueSpeedMultiplier` | `1.3` |
| `ContinenceSpeedMultiplier` | `1.25` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `1.6` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.7` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=1
HardcoreMode=False
LootRespawnEnabled=True
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
EnemyHealthMultiplier=1.1
EnemyPlayerDamageMultiplier=1.1
EnemyDeployableDamageMultiplier=1
DetectionSpeedMultiplier=0.9
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.4
ThirstSpeedMultiplier=1.3
FatigueSpeedMultiplier=1.3
ContinenceSpeedMultiplier=1.25
BonusPerkPoints=4
PlayerXPGainMultiplier=1.6
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.7
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 10 - Recovery Repack

**Profile ID:** `logistics_recovery_repack`  
**Base day ID:** `bring_your_scientist_to_work_day`  
**Experience:** LOGISTICS D10: recovery - inventory.  
**Message:** Recovery Repack: Recovery is on probation. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is recovery.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `minimum_pressure` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `recovery` |
| `encounter_director` | `logistics_recovery_repack` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_recovery_repack` |
| `family` | `logistics` |
| `tier` | `very_low` |
| `theme` | `logistics_recovery` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `576` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Recovery Repack runs inventory pressure.` |

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
| `EnemyHealthMultiplier` | `0.7` |
| `EnemyPlayerDamageMultiplier` | `0.3` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.4` |
| `EnemyAccuracy` | `0` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.45` |
| `ThirstSpeedMultiplier` | `0.45` |
| `FatigueSpeedMultiplier` | `0.45` |
| `ContinenceSpeedMultiplier` | `0.45` |
| `BonusPerkPoints` | `10` |
| `PlayerXPGainMultiplier` | `2.8` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.2` |
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
EnemyHealthMultiplier=0.7
EnemyPlayerDamageMultiplier=0.3
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.4
EnemyAccuracy=0
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.45
ThirstSpeedMultiplier=0.45
FatigueSpeedMultiplier=0.45
ContinenceSpeedMultiplier=0.45
BonusPerkPoints=10
PlayerXPGainMultiplier=2.8
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.2
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

## Day 11 - Safety Label Training

**Profile ID:** `logistics_safety_label_training`  
**Base day ID:** `mandatory_safety_training`  
**Experience:** LOGISTICS D11: training - inventory.  
**Message:** Safety Label Training: Training remembered teeth. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is training.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `training_targets` |
| `lethal_lasers` | `training_hazard` |
| `ante_up` | `training` |
| `encounter_director` | `logistics_safety_label_training` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_safety_label_training` |
| `family` | `logistics` |
| `tier` | `low` |
| `theme` | `logistics_training` |
| `mixed_encounter_chance` | `0.049` |
| `mixed_encounter_budget` | `8` |
| `mixed_encounter_cooldown` | `508` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Safety Label Training runs inventory pressure.` |

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
| `EnemyHealthMultiplier` | `0.8` |
| `EnemyPlayerDamageMultiplier` | `0.6` |
| `EnemyDeployableDamageMultiplier` | `0.4` |
| `DetectionSpeedMultiplier` | `0.7` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `0.8` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `0.8` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `3.6` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.3` |
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
| `BaseInventorySize` | `18` |
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
EnemyHealthMultiplier=0.8
EnemyPlayerDamageMultiplier=0.6
EnemyDeployableDamageMultiplier=0.4
DetectionSpeedMultiplier=0.7
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=0.8
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=0.8
BonusPerkPoints=4
PlayerXPGainMultiplier=3.6
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.3
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 12 - Black Lab Logistics Review

**Profile ID:** `logistics_black_lab_logistics_review`  
**Base day ID:** `black_lab_performance_review`  
**Experience:** LOGISTICS D12: major test - inventory.  
**Message:** Black Lab Logistics Review: Black Lab reviewed you. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is major test.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `hard_pressure` |
| `lethal_lasers` | `high_hazard` |
| `ante_up` | `black_lab` |
| `encounter_director` | `logistics_black_lab_logistics_review` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_black_lab_logistics_review` |
| `family` | `logistics` |
| `tier` | `extreme` |
| `theme` | `logistics_heavy_test` |
| `mixed_encounter_chance` | `0.161` |
| `mixed_encounter_budget` | `12` |
| `mixed_encounter_cooldown` | `324` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Black Lab Logistics Review runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemySpawnRate` | `1.6` |
| `EnemyHealthMultiplier` | `1.7` |
| `EnemyPlayerDamageMultiplier` | `1.9` |
| `EnemyDeployableDamageMultiplier` | `1.4` |
| `DetectionSpeedMultiplier` | `1.6` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.15` |
| `HungerSpeedMultiplier` | `1.15` |
| `ThirstSpeedMultiplier` | `1.15` |
| `FatigueSpeedMultiplier` | `1.15` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `2.9` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.5` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=3
HardcoreMode=False
LootRespawnEnabled=True
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
EnemySpawnRate=1.6
EnemyHealthMultiplier=1.7
EnemyPlayerDamageMultiplier=1.9
EnemyDeployableDamageMultiplier=1.4
DetectionSpeedMultiplier=1.6
EnemyAccuracy=2
DamageToAlliesMultiplier=0.15
HungerSpeedMultiplier=1.15
ThirstSpeedMultiplier=1.15
FatigueSpeedMultiplier=1.15
ContinenceSpeedMultiplier=1
BonusPerkPoints=4
PlayerXPGainMultiplier=2.9
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.5
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 13 - Extended Haul Shift

**Profile ID:** `logistics_extended_haul_shift`  
**Base day ID:** `extended_shift_survival_trial`  
**Experience:** LOGISTICS D13: endurance - inventory.  
**Message:** Extended Haul Shift: The shift got longer. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is endurance.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `slow_attrition` |
| `lethal_lasers` | `standard_safety` |
| `ante_up` | `attrition` |
| `encounter_director` | `logistics_extended_haul_shift` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_extended_haul_shift` |
| `family` | `logistics` |
| `tier` | `medium` |
| `theme` | `logistics_endurance` |
| `mixed_encounter_chance` | `0.098` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `427` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Extended Haul Shift runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemyHealthMultiplier` | `1.2` |
| `EnemyPlayerDamageMultiplier` | `1.2` |
| `EnemyDeployableDamageMultiplier` | `0.9` |
| `DetectionSpeedMultiplier` | `0.9` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0.25` |
| `HungerSpeedMultiplier` | `1.5` |
| `ThirstSpeedMultiplier` | `1.5` |
| `FatigueSpeedMultiplier` | `1.4` |
| `ContinenceSpeedMultiplier` | `1.35` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `1.8` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.7` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=True
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
EnemyHealthMultiplier=1.2
EnemyPlayerDamageMultiplier=1.2
EnemyDeployableDamageMultiplier=0.9
DetectionSpeedMultiplier=0.9
EnemyAccuracy=1
DamageToAlliesMultiplier=0.25
HungerSpeedMultiplier=1.5
ThirstSpeedMultiplier=1.5
FatigueSpeedMultiplier=1.4
ContinenceSpeedMultiplier=1.35
BonusPerkPoints=4
PlayerXPGainMultiplier=1.8
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.7
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 14 - Supply Closet Miracle Audit

**Profile ID:** `logistics_supply_closet_miracle_audit`  
**Base day ID:** `supply_closet_miracle`  
**Experience:** LOGISTICS D14: relief - inventory.  
**Message:** Supply Closet Miracle Audit: Relief looks unsupervised. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is relief.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `relief_day` |
| `lethal_lasers` | `disabled_or_low_if_supported` |
| `ante_up` | `relief` |
| `encounter_director` | `logistics_supply_closet_miracle_audit` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_supply_closet_miracle_audit` |
| `family` | `logistics` |
| `tier` | `very_low` |
| `theme` | `logistics_relief` |
| `mixed_encounter_chance` | `0` |
| `mixed_encounter_budget` | `6` |
| `mixed_encounter_cooldown` | `600` |
| `allow_multi_group` | `False` |
| `max_active_groups` | `1` |
| `description` | `Encounter: Supply Closet Miracle Audit runs inventory pressure.` |

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
| `EnemySpawnRate` | `0.3` |
| `EnemyHealthMultiplier` | `0.7` |
| `EnemyPlayerDamageMultiplier` | `0.5` |
| `EnemyDeployableDamageMultiplier` | `0.1` |
| `DetectionSpeedMultiplier` | `0.5` |
| `EnemyAccuracy` | `0` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.35` |
| `ThirstSpeedMultiplier` | `0.35` |
| `FatigueSpeedMultiplier` | `0.35` |
| `ContinenceSpeedMultiplier` | `0.35` |
| `BonusPerkPoints` | `12` |
| `PlayerXPGainMultiplier` | `4.1` |
| `ItemStackSizeMultiplier` | `14` |
| `ItemWeightMultiplier` | `0.1` |
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
EnemySpawnRate=0.3
EnemyHealthMultiplier=0.7
EnemyPlayerDamageMultiplier=0.5
EnemyDeployableDamageMultiplier=0.1
DetectionSpeedMultiplier=0.5
EnemyAccuracy=0
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.35
ThirstSpeedMultiplier=0.35
FatigueSpeedMultiplier=0.35
ContinenceSpeedMultiplier=0.35
BonusPerkPoints=12
PlayerXPGainMultiplier=4.1
ItemStackSizeMultiplier=14
ItemWeightMultiplier=0.1
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

## Day 15 - Accuracy of Count

**Profile ID:** `logistics_accuracy_of_count`  
**Base day ID:** `accuracy_audit`  
**Experience:** LOGISTICS D15: precision - inventory.  
**Message:** Accuracy of Count: Accuracy found the room. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is precision.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `precision_patrols` |
| `lethal_lasers` | `moderate_hazard` |
| `ante_up` | `accuracy` |
| `encounter_director` | `logistics_accuracy_of_count` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_accuracy_of_count` |
| `family` | `logistics` |
| `tier` | `high` |
| `theme` | `logistics_precision` |
| `mixed_encounter_chance` | `0.119` |
| `mixed_encounter_budget` | `10` |
| `mixed_encounter_cooldown` | `392` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Accuracy of Count runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `2` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemyHealthMultiplier` | `0.9` |
| `EnemyPlayerDamageMultiplier` | `1.4` |
| `EnemyDeployableDamageMultiplier` | `0.8` |
| `DetectionSpeedMultiplier` | `1.2` |
| `EnemyAccuracy` | `1` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `1` |
| `ThirstSpeedMultiplier` | `1` |
| `FatigueSpeedMultiplier` | `1.25` |
| `ContinenceSpeedMultiplier` | `1` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `2.3` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.5` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=2
HardcoreMode=False
LootRespawnEnabled=True
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
EnemyHealthMultiplier=0.9
EnemyPlayerDamageMultiplier=1.4
EnemyDeployableDamageMultiplier=0.8
DetectionSpeedMultiplier=1.2
EnemyAccuracy=1
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=1
ThirstSpeedMultiplier=1
FatigueSpeedMultiplier=1.25
ContinenceSpeedMultiplier=1
BonusPerkPoints=4
PlayerXPGainMultiplier=2.3
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.5
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 16 - Experimental Inventory

**Profile ID:** `logistics_experimental_inventory`  
**Base day ID:** `approved_experimental_conditions`  
**Experience:** LOGISTICS D16: experiment - inventory.  
**Message:** Experimental Inventory: Variables escaped again. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is experiment.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `experimental_mixed` |
| `lethal_lasers` | `weird_cycle_or_standard` |
| `ante_up` | `experimental` |
| `encounter_director` | `logistics_experimental_inventory` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_experimental_inventory` |
| `family` | `logistics` |
| `tier` | `extreme` |
| `theme` | `logistics_experimental` |
| `mixed_encounter_chance` | `0.154` |
| `mixed_encounter_budget` | `12` |
| `mixed_encounter_cooldown` | `335` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Experimental Inventory runs inventory pressure.` |

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
| `EnemySpawnRate` | `1.1` |
| `EnemyHealthMultiplier` | `1.3` |
| `EnemyPlayerDamageMultiplier` | `0.9` |
| `EnemyDeployableDamageMultiplier` | `0.7` |
| `DetectionSpeedMultiplier` | `0.5` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0` |
| `HungerSpeedMultiplier` | `0.8` |
| `ThirstSpeedMultiplier` | `1.2` |
| `FatigueSpeedMultiplier` | `0.8` |
| `ContinenceSpeedMultiplier` | `1.2` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `4.6` |
| `ItemStackSizeMultiplier` | `8` |
| `ItemWeightMultiplier` | `0.1` |
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
| `BaseInventorySize` | `18` |
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
EnemySpawnRate=1.1
EnemyHealthMultiplier=1.3
EnemyPlayerDamageMultiplier=0.9
EnemyDeployableDamageMultiplier=0.7
DetectionSpeedMultiplier=0.5
EnemyAccuracy=2
DamageToAlliesMultiplier=0
HungerSpeedMultiplier=0.8
ThirstSpeedMultiplier=1.2
FatigueSpeedMultiplier=0.8
ContinenceSpeedMultiplier=1.2
BonusPerkPoints=4
PlayerXPGainMultiplier=4.6
ItemStackSizeMultiplier=8
ItemWeightMultiplier=0.1
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```

## Day 17 - Final Logistics Exam

**Profile ID:** `logistics_final_logistics_exam`  
**Base day ID:** `end_of_rotation_compliance_test`  
**Experience:** LOGISTICS D17: capstone - inventory.  
**Message:** Final Logistics Exam: Final exam is armed. Receipts are armed.  
**Run advice:** Tip: Pack like regret is heavy. Today is capstone.

### Adapter Profiles

| Adapter | Profile/Value |
|---|---|
| `dynamic_spawns` | `capstone_pressure` |
| `lethal_lasers` | `overcharged_high_hazard` |
| `ante_up` | `capstone` |
| `encounter_director` | `logistics_final_logistics_exam` |

### Encounter Profile

| Field | Value |
|---|---|
| `profile` | `logistics_final_logistics_exam` |
| `family` | `logistics` |
| `tier` | `capstone` |
| `theme` | `logistics_capstone` |
| `mixed_encounter_chance` | `0.196` |
| `mixed_encounter_budget` | `13` |
| `mixed_encounter_cooldown` | `266` |
| `allow_multi_group` | `True` |
| `max_active_groups` | `2` |
| `description` | `Encounter: Final Logistics Exam runs inventory pressure.` |

### SandboxSettings.ini Values

| Key | Value |
|---|---:|
| `GameDifficulty` | `3` |
| `HardcoreMode` | `False` |
| `LootRespawnEnabled` | `True` |
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
| `EnemySpawnRate` | `2.1` |
| `EnemyHealthMultiplier` | `2.1` |
| `EnemyPlayerDamageMultiplier` | `2.2` |
| `EnemyDeployableDamageMultiplier` | `2` |
| `DetectionSpeedMultiplier` | `1.9` |
| `EnemyAccuracy` | `2` |
| `DamageToAlliesMultiplier` | `0.1` |
| `HungerSpeedMultiplier` | `1.35` |
| `ThirstSpeedMultiplier` | `1.35` |
| `FatigueSpeedMultiplier` | `1.25` |
| `ContinenceSpeedMultiplier` | `1.1` |
| `BonusPerkPoints` | `4` |
| `PlayerXPGainMultiplier` | `4.3` |
| `ItemStackSizeMultiplier` | `14` |
| `ItemWeightMultiplier` | `0.5` |
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
| `BaseInventorySize` | `18` |
| `PlayerFurnitureDestruction` | `False` |
| `AllowIronMode` | `False` |

### Copyable SandboxSettings.ini Block

```ini
[SandboxSettings]
GameDifficulty=3
HardcoreMode=False
LootRespawnEnabled=True
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
EnemySpawnRate=2.1
EnemyHealthMultiplier=2.1
EnemyPlayerDamageMultiplier=2.2
EnemyDeployableDamageMultiplier=2
DetectionSpeedMultiplier=1.9
EnemyAccuracy=2
DamageToAlliesMultiplier=0.1
HungerSpeedMultiplier=1.35
ThirstSpeedMultiplier=1.35
FatigueSpeedMultiplier=1.25
ContinenceSpeedMultiplier=1.1
BonusPerkPoints=4
PlayerXPGainMultiplier=4.3
ItemStackSizeMultiplier=14
ItemWeightMultiplier=0.5
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
BaseInventorySize=18
PlayerFurnitureDestruction=False
AllowIronMode=False
```
