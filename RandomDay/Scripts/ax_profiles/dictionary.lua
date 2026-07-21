-- RandomDay public source
-- Module: RandomDay/Scripts/ax_profiles/dictionary.lua
-- Ownership/Purpose: RandomDay public module; Define all sandbox setting meanings, types, ranges, domains, and language
-- Public contract: caller=translation.lua and status.lua; inputs=schema-aligned static definitions; outputs=dictionary
--   table
-- Side effects: none
-- Failure/Recovery: failures=missing dictionary key fails coverage test; recovery states=translated; unknown_explicit
-- Documentation: docs/SOURCE_REFERENCE.md#module-ax-profiles-dictionary

local M = {
    version = "randomday_dictionary_v2",
    domain_order = { "combat", "survival", "resources", "environment", "recovery" },
    domains = {
        combat = { label = "Combat pressure", low = "Hostile pressure is lighter than normal.", normal = "Hostile pressure is close to normal.", high = "Hostile pressure is elevated; prepare before engaging.", severe = "Hostile pressure is severe; avoid unsupported fights." },
        survival = { label = "Survival pressure", low = "Daily survival needs are forgiving.", normal = "Daily survival needs are close to normal.", high = "Hunger, thirst, fatigue, or sanitation need more attention.", severe = "Survival needs are severe; carry reserves and plan safe stops." },
        resources = { label = "Resource pressure", low = "Supplies and carrying conditions are favorable.", normal = "Supply and carrying conditions are close to normal.", high = "Supplies or carrying limits require planning.", severe = "Resource pressure is severe; stock, repair, and travel light." },
        environment = { label = "Environmental pressure", low = "The environment is comparatively stable.", normal = "Environmental conditions are close to normal.", high = "Power, weather, water, or radiation conditions are unsettled.", severe = "Environmental hazards are severe; verify shelter and protection." },
        recovery = { label = "Recovery pressure", low = "Death and recovery rules are forgiving.", normal = "Death and recovery rules are close to normal.", high = "Failure carries meaningful recovery costs.", severe = "Recovery penalties are severe; protect equipment and exits." },
    },
    score_bands = {
        { maximum = 0.8, id = "relief", label = "Relief conditions" },
        { maximum = 1.7, id = "favorable", label = "Favorable conditions" },
        { maximum = 2.6, id = "standard", label = "Standard pressure" },
        { maximum = 3.4, id = "demanding", label = "Demanding conditions" },
        { maximum = 4.2, id = "severe", label = "Severe conditions" },
        { maximum = 5.0, id = "extreme", label = "Extreme conditions" },
    },
    encounter_tiers = {
        very_low = { score = 0.5, label = "minimal encounters" },
        low = { score = 1.3, label = "light encounters" },
        medium = { score = 2.5, label = "moderate encounters" },
        high = { score = 3.6, label = "heavy encounters" },
        extreme = { score = 4.5, label = "extreme encounters" },
        capstone = { score = 5.0, label = "capstone encounters" },
    },
    encounter_themes = {
        baseline_walkers = "ordinary facility patrols", quiet_base = "quiet base activity", pests_contamination = "pests and contamination",
        opportunist_patrols = "opportunist patrols", security_vs_pests = "security and pest conflict", weather_intrusion = "weather and portal disruption",
        night_ambush = "night ambushes", rapid_route_skirmish = "fast route skirmishes", scarcity_raids = "scarcity raids",
        recovery_none = "recovery and exploration", training_targets = "training-level contacts", black_lab_assault = "heavy Black Lab assault",
        slow_attrition = "sustained attrition", relief_none = "relief and recovery", precision_patrols = "precision patrols",
        experimental_mixed = "mixed experimental threats", capstone_mixed = "full mixed-threat examination",
    },
    -- These are the accepted public schema ranges, separate from the scoring calibration below.
    runtime_ranges = {
        GameDifficulty={0,3}, DayNightCycleState={0,2}, WeatherFrequency={0,5}, EnemyAccuracy={0,4},
        DeathPenalties={0,3}, FirstTimeStartingWeapon={0,20}, StructuralSupportLimit={0,1000}, BridgeSupports={0,1000},
        BonusPerkPoints={0,100}, BaseInventorySize={1,100},
        DayNightCycleSpeedMultiplier={0.05,10}, SinkRefillRate={0,10}, FoodSpoilSpeedMultiplier={0,10},
        RefrigerationEffectivenessMultiplier={0,10}, EnemySpawnRate={0,10}, EnemyHealthMultiplier={0,10},
        EnemyPlayerDamageMultiplier={0,10}, EnemyDeployableDamageMultiplier={0,10}, DetectionSpeedMultiplier={0,10},
        DamageToAlliesMultiplier={0,10}, HungerSpeedMultiplier={0,10}, ThirstSpeedMultiplier={0,10},
        FatigueSpeedMultiplier={0,10}, ContinenceSpeedMultiplier={0,10}, PlayerXPGainMultiplier={0,10},
        ItemStackSizeMultiplier={0,50}, ItemWeightMultiplier={0,10}, ItemDurabilityMultiplier={0,20},
        DurabilityLossOnDeathMultiplier={0,10},
    },
    settings = {},
}

local function setting(key, label, domain, kind, extra)
    local row = { key = key, label = label, domain = domain, kind = kind }
    for k, v in pairs(extra or {}) do row[k] = v end
    local accepted = M.runtime_ranges[key]
    if accepted then
        row.accepted_minimum = accepted[1]
        row.accepted_maximum = accepted[2]
    end
    M.settings[key] = row
end

local function multiplier(key, label, domain, harder, subject)
    setting(key, label, domain, "multiplier", {
        baseline = 1.0, harder_when = harder, subject = subject,
        bands = { "far below normal", "below normal", "near normal", "above normal", "well above normal", "extreme" },
    })
end

local function boolean(key, label, domain, true_text, false_text, true_score, false_score)
    setting(key, label, domain, "boolean", {
        true_text = true_text, false_text = false_text,
        true_score = true_score or 2.0, false_score = false_score or 2.0,
    })
end

local function enum(key, label, domain, values)
    setting(key, label, domain, "enum", { values = values })
end

local function number(key, label, domain, baseline, minimum, maximum, harder, subject)
    setting(key, label, domain, "number", {
        baseline = baseline, minimum = minimum, maximum = maximum,
        harder_when = harder, subject = subject,
    })
end

enum("GameDifficulty", "game difficulty", "combat", {
    [0] = { label = "relaxed", score = 0.5 }, [1] = { label = "standard", score = 2.0 },
    [2] = { label = "hard", score = 3.5 }, [3] = { label = "very hard", score = 5.0 },
})
multiplier("EnemySpawnRate", "enemy frequency", "combat", "high", "Hostiles appear")
multiplier("EnemyHealthMultiplier", "enemy resilience", "combat", "high", "Hostiles withstand damage")
multiplier("EnemyPlayerDamageMultiplier", "enemy damage to players", "combat", "high", "Hostiles damage players")
multiplier("EnemyDeployableDamageMultiplier", "enemy damage to defenses", "combat", "high", "Hostiles damage defenses")
multiplier("DetectionSpeedMultiplier", "enemy detection speed", "combat", "high", "Hostiles detect players")
enum("EnemyAccuracy", "enemy accuracy", "combat", {
    [0] = { label = "poor", score = 0.3 }, [1] = { label = "reduced", score = 1.2 },
    [2] = { label = "standard", score = 2.2 }, [3] = { label = "accurate", score = 3.7 },
    [4] = { label = "highly accurate", score = 5.0 },
})
multiplier("DamageToAlliesMultiplier", "friendly-fire damage", "combat", "high", "Friendly fire causes")
boolean("PlayerFurnitureDestruction", "player furniture destruction", "combat", "Player-built furniture can be damaged.", "Player-built furniture is protected from this rule.", 3.5, 1.5)

multiplier("HungerSpeedMultiplier", "hunger rate", "survival", "high", "Hunger develops")
multiplier("ThirstSpeedMultiplier", "thirst rate", "survival", "high", "Thirst develops")
multiplier("FatigueSpeedMultiplier", "fatigue rate", "survival", "high", "Fatigue develops")
multiplier("ContinenceSpeedMultiplier", "continence rate", "survival", "high", "Continence needs develop")
boolean("TaintedSinkWater", "tainted sink water", "survival", "Sink water may be unsafe.", "Sink water is not tainted by this rule.", 4.0, 1.5)

boolean("LootRespawnEnabled", "loot respawn", "resources", "Loot can return after collection.", "Collected loot does not respawn.", 0.8, 3.2)
multiplier("SinkRefillRate", "sink refill rate", "resources", "low", "Sinks refill")
multiplier("FoodSpoilSpeedMultiplier", "food spoilage", "resources", "high", "Food spoils")
multiplier("RefrigerationEffectivenessMultiplier", "refrigeration", "resources", "low", "Refrigeration works")
boolean("StorageByTag", "storage by tag", "resources", "Tagged storage organization is enabled.", "Tagged storage organization is disabled.", 1.5, 2.8)
number("BonusPerkPoints", "bonus perk points", "resources", 0, 0, 15, "low", "Bonus perk support")
multiplier("PlayerXPGainMultiplier", "experience gain", "resources", "low", "Experience is earned")
multiplier("ItemStackSizeMultiplier", "stack capacity", "resources", "low", "Item stacks hold")
multiplier("ItemWeightMultiplier", "item weight", "resources", "high", "Carried items weigh")
multiplier("ItemDurabilityMultiplier", "item durability", "resources", "low", "Equipment lasts")
number("FirstTimeStartingWeapon", "starting weapon provision", "resources", 0, 0, 20, "low", "Starting equipment support")
number("BaseInventorySize", "base inventory size", "resources", 12, 10, 42, "low", "Inventory capacity")
boolean("AllowRecipeSharing", "recipe sharing", "resources", "Recipe sharing is available.", "Recipe sharing is unavailable.", 1.5, 3.0)
boolean("AllowPagers", "pagers", "resources", "Pagers are available.", "Pagers are unavailable.", 1.5, 2.7)
boolean("AllowTransmog", "transmog", "resources", "Appearance customization is available.", "Appearance customization is unavailable.", 1.5, 1.8)
boolean("DisableResearchMinigame", "research minigame", "resources", "Research bypass is enabled.", "Research uses its normal minigame.", 1.0, 2.0)

boolean("PowerSocketsOffAtNight", "night power", "environment", "Power sockets switch off at night.", "Power sockets remain available at night.", 3.5, 1.4)
enum("DayNightCycleState", "day-night state", "environment", {
    [0] = { label = "normal cycle", score = 2.0 }, [1] = { label = "day-biased", score = 1.4 }, [2] = { label = "night-biased", score = 3.8 },
})
multiplier("DayNightCycleSpeedMultiplier", "day-night cycle speed", "environment", "high", "The day-night cycle moves")
enum("WeatherFrequency", "weather frequency", "environment", {
    [0] = { label = "disabled", score = 0.5 }, [1] = { label = "rare", score = 1.0 }, [2] = { label = "occasional", score = 1.7 },
    [3] = { label = "normal", score = 2.2 }, [4] = { label = "frequent", score = 3.5 }, [5] = { label = "very frequent", score = 4.5 },
})
boolean("HomeWorlds", "home worlds", "environment", "Home-world behavior is enabled.", "Home-world behavior is disabled.", 1.8, 2.5)
boolean("RadiationDealsDamage", "radiation damage", "environment", "Radiation causes damage.", "Radiation damage is disabled.", 3.0, 0.5)
boolean("InvisibleRadiation", "invisible radiation", "environment", "Some radiation may lack a visible warning.", "Radiation is not made invisible by this rule.", 4.5, 1.5)
number("StructuralSupportLimit", "structural support limit", "environment", 0, 0, 1000, "high", "Structural support limits")
number("BridgeSupports", "bridge support limit", "environment", 0, 0, 1000, "high", "Bridge support limits")

enum("DeathPenalties", "death penalties", "recovery", {
    [0] = { label = "minimal", score = 0.3 }, [1] = { label = "standard", score = 2.0 },
    [2] = { label = "heavy", score = 3.7 }, [3] = { label = "severe", score = 5.0 },
})
multiplier("DurabilityLossOnDeathMultiplier", "durability loss on death", "recovery", "high", "Death removes equipment durability")
boolean("ShowDeathMessages", "death messages", "recovery", "Death notices are shown.", "Death notices are hidden.", 2.0, 2.0)
boolean("HostAccessPlayerCorpses", "host corpse access", "recovery", "The host can access player corpses for recovery support.", "Host corpse access is disabled.", 1.5, 3.0)
boolean("AllowCharacterReset", "character reset", "recovery", "Character reset remains available.", "Character reset is unavailable.", 1.5, 3.8)
boolean("HardcoreMode", "hardcore mode", "recovery", "Hardcore mode is enabled.", "Hardcore mode is disabled.", 5.0, 1.5)
boolean("AllowIronMode", "iron mode", "recovery", "Iron mode is allowed.", "Iron mode is disabled.", 5.0, 1.5)

return M
