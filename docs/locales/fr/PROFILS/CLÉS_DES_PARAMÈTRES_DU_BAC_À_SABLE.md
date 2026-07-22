<a id="randomday---sandboxsettings-dictionary"></a>
# RandomDay - SandboxSettings dictionnaire

> **Source canonique en anglais:** [SANDBOX_SETTINGS_KEYS.md](../../../profiles/SANDBOX_SETTINGS_KEYS.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Version : `v0.3.16-alpha`

Il s'agit du dictionnaire d'exécution complet pour les 46 SandboxSettings clés utilisées par chaque RandomDay profil. Le dictionnaire convertit les valeurs brutes en scores de domaine et délimités player/admin limitée ; il ne remplace jamais la valeur brute.

| Clé | Signification du joueur | Domaine | Type | Base de référence | Plus difficile quand |
|---|---|---|---|---:|---|
| AllowCharacterReset | réinitialisation des caractères | récupération | booléen | n/a | contexte |
| AllowIronMode | mode fer | récupération | booléen | n/a | contexte |
| AllowPagers | pagers | ressources | booléen | n/a | contexte |
| AllowRecipeSharing | partage de recettes | ressources | booléen | n/a | contexte |
| AllowTransmog | transmogrification | ressources | booléen | n/a | contexte |
| BaseInventorySize | taille de l'inventaire de base | ressources | nombre | 12 | faible |
| BonusPerkPoints | points bonus | ressources | nombre | 0 | faible |
| BridgeSupports | limite de prise en charge des ponts | environnement | nombre | 0 | élevé |
| ContinenceSpeedMultiplier | taux de continence | survie | multiplicateur | 1.0 | élevé |
| DamageToAlliesMultiplier |  tir amical dégâts | combat | multiplicateur | 1.0 | élevé |
| DayNightCycleSpeedMultiplier | vitesse du cycle jour-nuit | environnement | multiplicateur | 1.0 | élevé |
| DayNightCycleState | état jour-nuit | environnement | enum | n/a | contexte |
| DeathPenalties | peines de mort | récupération | enum | n/a | contexte |
| DetectionSpeedMultiplier | détection des ennemis vitesse | combat | multiplicateur | 1.0 | élevé |
| DisableResearchMinigame | mini-jeu de recherche | ressources | booléen | n/a | contexte |
| DurabilityLossOnDeathMultiplier | perte de durabilité en cas de mort | récupération | multiplicateur | 1.0 | élevé |
| EnemyAccuracy | précision de l'ennemi | combat | enum | n/a | contexte |
| EnemyDeployableDamageMultiplier | dégâts ennemis sur les défenses | combat | multiplicateur | 1.0 | élevé |
| EnemyHealthMultiplier | résilience ennemie | combat | multiplicateur | 1.0 | élevé |
| EnemyPlayerDamageMultiplier | dégâts ennemis pour joueurs | combat | multiplicateur | 1.0 | élevé |
| EnemySpawnRate | fréquence des ennemis | combat | multiplicateur | 1.0 | élevé |
| FatigueSpeedMultiplier | taux de fatigue | survie | multiplicateur | 1.0 | élevé |
| FirstTimeStartingWeapon | démarrage de la fourniture d'armes | ressources | nombre | 0 | faible |
| FoodSpoilSpeedMultiplier | altération des aliments | ressources | multiplicateur | 1.0 | élevé |
| GameDifficulty | difficulté du jeu | combat | enum | n/a | contexte |
| HardcoreMode | mode hardcore | récupération | booléen | n/a | contexte |
| HomeWorlds | mondes d'origine | environnement | booléen | n/a | contexte |
| HostAccessPlayerCorpses | accès aux cadavres hôtes | récupération | booléen | n/a | contexte |
| HungerSpeedMultiplier | taux de faim | survie | multiplicateur | 1.0 | élevé |
| InvisibleRadiation | rayonnement invisible | environnement | booléen | n/a | contexte |
| ItemDurabilityMultiplier | durabilité de l'article | ressources | multiplicateur | 1.0 | faible |
| ItemStackSizeMultiplier | capacité de la pile | ressources | multiplicateur | 1.0 | faible |
| ItemWeightMultiplier | poids de l'article | ressources | multiplicateur | 1.0 | élevé |
| LootRespawnEnabled | réapparition du butin | ressources | booléen | n/a | contexte |
| PlayerFurnitureDestruction | destruction des meubles du joueur | combat | booléen | n/a | contexte |
| PlayerXPGainMultiplier | gain d'expérience | ressources | multiplicateur | 1.0 | faible |
| PowerSocketsOffAtNight | alimentation nocturne | environnement | booléen | n/a | contexte |
| RadiationDealsDamage | dommages causés par les radiations | environnement | booléen | n/a | contexte |
| RefrigerationEffectivenessMultiplier | réfrigération | ressources | multiplicateur | 1.0 | faible |
| ShowDeathMessages | messages de décès | récupération | booléen | n/a | contexte |
| SinkRefillRate | taux de remplissage de l'évier | ressources | multiplicateur | 1.0 | faible |
| StorageByTag | stockage par balise | ressources | booléen | n/a | contexte |
| StructuralSupportLimit | limite de support structurel | environnement | nombre | 0 | élevé |
| TaintedSinkWater | eau d'évier contaminée | survie | booléen | n/a | contexte |
| ThirstSpeedMultiplier | taux de soif | survie | multiplicateur | 1.0 | élevé |
| WeatherFrequency | fréquence météo | environnement | enum | n/a | contexte |

<a id="score-bands"></a>
## Bandes de score

| Score passant | Note | Signification simple |
|---:|---|---|
| 0.8 | Conditions de secours | soulagement |
| 1.7 | Conditions favorables | favorables |
| 2.6 | Pression standard | standard |
| 3.4 | Conditions exigeantes | exigeantes |
| 4.2 | Conditions sévères | sévères |
| 5.0 | Conditions extrêmes | extrêmes |
