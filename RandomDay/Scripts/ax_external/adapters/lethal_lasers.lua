return {
    id = "lethal_lasers",
    display_name = "Lethal Lasers",
    required = false,
    compatibility = "Uploaded Lethal Lasers 1.0 UE4SS: settings are exposed as local constants in Scripts/main.lua; there is no separate config file.",
    config_candidates = {
        "../LethalLasers/Scripts/main.lua",
        "ue4ss/Mods/LethalLasers/Scripts/main.lua",
        "./ue4ss/Mods/LethalLasers/Scripts/main.lua",
        "Mods/LethalLasers/Scripts/main.lua",
        "./Mods/LethalLasers/Scripts/main.lua",
    },
    prepared_profiles = {
        standard_safety = {
            modActive = true, emitterDmg = 650,
            affectEnviEmitters = true, enviEmitterDmg = 700,
            affectReflectors = true, reflectorDmg = 500,
            affectPrisms = true, prismDmg = 250,
        },
        low_hazard = {
            modActive = true, emitterDmg = 250,
            affectEnviEmitters = true, enviEmitterDmg = 300,
            affectReflectors = true, reflectorDmg = 200,
            affectPrisms = true, prismDmg = 100,
        },
        moderate_hazard = {
            modActive = true, emitterDmg = 900,
            affectEnviEmitters = true, enviEmitterDmg = 950,
            affectReflectors = true, reflectorDmg = 650,
            affectPrisms = true, prismDmg = 300,
        },
        high_hazard = {
            modActive = true, emitterDmg = 1400,
            affectEnviEmitters = true, enviEmitterDmg = 1500,
            affectReflectors = true, reflectorDmg = 1000,
            affectPrisms = true, prismDmg = 500,
        },
        electrical_hazard_light = {
            modActive = true, emitterDmg = 800,
            affectEnviEmitters = true, enviEmitterDmg = 1000,
            affectReflectors = true, reflectorDmg = 550,
            affectPrisms = true, prismDmg = 275,
        },
        night_visible_moderate = {
            modActive = true, emitterDmg = 850,
            affectEnviEmitters = true, enviEmitterDmg = 850,
            affectReflectors = true, reflectorDmg = 600,
            affectPrisms = true, prismDmg = 300,
        },
        low_to_moderate_hazard = {
            modActive = true, emitterDmg = 550,
            affectEnviEmitters = true, enviEmitterDmg = 650,
            affectReflectors = true, reflectorDmg = 400,
            affectPrisms = true, prismDmg = 225,
        },
        training_hazard = {
            modActive = true, emitterDmg = 150,
            affectEnviEmitters = true, enviEmitterDmg = 200,
            affectReflectors = true, reflectorDmg = 100,
            affectPrisms = true, prismDmg = 75,
        },
        disabled_or_low_if_supported = {
            modActive = false, emitterDmg = 100,
            affectEnviEmitters = false, enviEmitterDmg = 100,
            affectReflectors = false, reflectorDmg = 100,
            affectPrisms = false, prismDmg = 75,
        },
        weird_cycle_or_standard = {
            modActive = true, emitterDmg = 1000,
            affectEnviEmitters = true, enviEmitterDmg = 750,
            affectReflectors = true, reflectorDmg = 1200,
            affectPrisms = true, prismDmg = 150,
        },
        overcharged_high_hazard = {
            modActive = true, emitterDmg = 2000,
            affectEnviEmitters = true, enviEmitterDmg = 2200,
            affectReflectors = true, reflectorDmg = 1600,
            affectPrisms = true, prismDmg = 800,
        }
    }
}
