local M = {}

M.key_order = {
    "GameDifficulty", "HardcoreMode", "LootRespawnEnabled", "PowerSocketsOffAtNight", "DayNightCycleState",
    "DayNightCycleSpeedMultiplier", "WeatherFrequency", "SinkRefillRate", "FoodSpoilSpeedMultiplier", "RefrigerationEffectivenessMultiplier",
    "StorageByTag", "StructuralSupportLimit", "BridgeSupports", "HomeWorlds", "TaintedSinkWater",
    "RadiationDealsDamage", "InvisibleRadiation", "EnemySpawnRate", "EnemyHealthMultiplier", "EnemyPlayerDamageMultiplier",
    "EnemyDeployableDamageMultiplier", "DetectionSpeedMultiplier", "EnemyAccuracy", "DamageToAlliesMultiplier", "HungerSpeedMultiplier",
    "ThirstSpeedMultiplier", "FatigueSpeedMultiplier", "ContinenceSpeedMultiplier", "BonusPerkPoints", "PlayerXPGainMultiplier",
    "ItemStackSizeMultiplier", "ItemWeightMultiplier", "ItemDurabilityMultiplier", "DurabilityLossOnDeathMultiplier", "ShowDeathMessages",
    "AllowRecipeSharing", "AllowPagers", "AllowTransmog", "DisableResearchMinigame", "DeathPenalties",
    "FirstTimeStartingWeapon", "HostAccessPlayerCorpses", "AllowCharacterReset", "BaseInventorySize", "PlayerFurnitureDestruction",
    "AllowIronMode"
}

M.types = {
    HardcoreMode="boolean", LootRespawnEnabled="boolean", PowerSocketsOffAtNight="boolean", StorageByTag="boolean",
    HomeWorlds="boolean", TaintedSinkWater="boolean", RadiationDealsDamage="boolean", InvisibleRadiation="boolean",
    ShowDeathMessages="boolean", AllowRecipeSharing="boolean", AllowPagers="boolean", AllowTransmog="boolean",
    DisableResearchMinigame="boolean", HostAccessPlayerCorpses="boolean", AllowCharacterReset="boolean",
    PlayerFurnitureDestruction="boolean", AllowIronMode="boolean",

    GameDifficulty="integer", DayNightCycleState="integer", WeatherFrequency="integer", StructuralSupportLimit="integer",
    BridgeSupports="integer", EnemyAccuracy="integer", BonusPerkPoints="integer", DeathPenalties="integer",
    FirstTimeStartingWeapon="integer", BaseInventorySize="integer",

    DayNightCycleSpeedMultiplier="number", SinkRefillRate="number", FoodSpoilSpeedMultiplier="number",
    RefrigerationEffectivenessMultiplier="number", EnemySpawnRate="number", EnemyHealthMultiplier="number",
    EnemyPlayerDamageMultiplier="number", EnemyDeployableDamageMultiplier="number", DetectionSpeedMultiplier="number",
    DamageToAlliesMultiplier="number", HungerSpeedMultiplier="number", ThirstSpeedMultiplier="number",
    FatigueSpeedMultiplier="number", ContinenceSpeedMultiplier="number", PlayerXPGainMultiplier="number",
    ItemStackSizeMultiplier="number", ItemWeightMultiplier="number", ItemDurabilityMultiplier="number",
    DurabilityLossOnDeathMultiplier="number"
}

-- Broad safety ranges: avoid typos and negative values without rejecting intentionally expressive profiles.
M.ranges = {
    GameDifficulty={0,3}, DayNightCycleState={0,2}, WeatherFrequency={0,5}, EnemyAccuracy={0,4},
    DeathPenalties={0,3}, FirstTimeStartingWeapon={0,20}, StructuralSupportLimit={0,1000}, BridgeSupports={0,1000},
    BonusPerkPoints={0,100}, BaseInventorySize={1,100},

    DayNightCycleSpeedMultiplier={0.05,10}, SinkRefillRate={0,10}, FoodSpoilSpeedMultiplier={0,10},
    RefrigerationEffectivenessMultiplier={0,10}, EnemySpawnRate={0,10}, EnemyHealthMultiplier={0,10},
    EnemyPlayerDamageMultiplier={0,10}, EnemyDeployableDamageMultiplier={0,10}, DetectionSpeedMultiplier={0,10},
    DamageToAlliesMultiplier={0,10}, HungerSpeedMultiplier={0,10}, ThirstSpeedMultiplier={0,10},
    FatigueSpeedMultiplier={0,10}, ContinenceSpeedMultiplier={0,10}, PlayerXPGainMultiplier={0,10},
    ItemStackSizeMultiplier={0,50}, ItemWeightMultiplier={0,10}, ItemDurabilityMultiplier={0,20},
    DurabilityLossOnDeathMultiplier={0,10}
}

M.fixed_rules = {
    HardcoreMode=false,
    AllowIronMode=false,
    StructuralSupportLimit=0,
    BridgeSupports=0,
    AllowRecipeSharing=true,
    AllowTransmog=true,
    ShowDeathMessages=true,
    HostAccessPlayerCorpses=true,
    AllowCharacterReset=true
}

return M
