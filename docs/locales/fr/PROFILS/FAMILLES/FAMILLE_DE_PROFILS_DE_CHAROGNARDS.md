<a id="randomday---scavenger-family"></a>
# RandomDay - Famille Scavenger

> **Source canonique en anglais:** [scavenger.md](../../../../profiles/families/scavenger.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Version : `v0.3.16-alpha`

Les itinéraires de butin sont rentables, encombrés et moralement non surveillés.

**Style de jeu :** itinéraires de butin et risques avides **Ton du message :** blagues sur la chaîne d'approvisionnement

<a id="17-day-index"></a>
## Indice sur 17 jours

| Jour | Profil | Conditions | Pression principale |
|---:|---|---|---|
| 1 | Éthique des stocks lâches | Pression standard (1.79/5) | Pression environnementale |
| 2 | Acquisition en étage ouvert | Conditions favorables (1.28/5) | Pression environnementale |
| 3 | Collations douteuses | Pression standard (2.08/5) | Pression de survie |
| 4 | Supply Run Dividende | Conditions favorables (1.47/5) | Pression environnementale |
| 5 | Contrôle des reçus de sécurité | Pression standard (1.98/5) | Pression de combat |
| 6 | Vente d'itinéraires altérés | Pression standard (1.95/5) | Pression environnementale |
| 7 | Permis de marché de nuit | Pression standard (1.98/5) | Pression de combat |
| 8 | Frais de dédouanement d'itinéraire | Pression standard (1.75/5) | Pression environnementale |
| 9 | Arbitrage des rations | Pression standard (2.07/5) | Pression de survie |
| 10 | Fenêtre de profit tranquille | Conditions favorables (1.04/5) | Pression environnementale |
| 11 | Récupération d'entraînement | Conditions favorables (1.47/5) | Pression environnementale |
| 12 | Liquide du Black Lab | Pression standard (2.43/5) | Pression de combat |
| 13 | Inventaire longue distance | Pression standard (2.14/5) | Pression de survie |
| 14 | Jackpot du placard d'approvisionnement | Conditions favorables (1.02/5) | Pression environnementale |
| 15 | Taxe de précision | Pression standard (1.92/5) | Pression de combat |
| 16 | Marquage expérimental | Pression standard (2.12/5) | Pression environnementale |
| 17 | Audit final des poches | Conditions exigeantes (2.68/5) | Pression de combat |

<a id="day-1---loose-inventory-ethics"></a>
## Jour 1 – Éthique de l'inventaire libre

**ID de profil :** `scavenger_loose_inventory_ethics` **Général conditions :** Pression standard (1.79/5) **Signification simple :** Pression standard. Pression environnementale : la pression standard est la pression principale. Pression de survie : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Vérifiez l'électricité, l'eau, l'abri et la protection contre les dangers avant de quitter la base.

<a id="main-effects"></a>
### Effets principaux

- La capacité de la pile est extrême (8x).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,25x).
- Les prises de courant s'éteignent la nuit.
- Le butin peut revenir après la collecte.

<a id="domain-ratings"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (1.86/5) | La pression hostile est proche de la normale. |
| Pression de survie | standard (1.9/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.44/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.22/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.5/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **orientation de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0.07**
- Chance d'événement spécial : **2**

<a id="exact-sandbox-settings"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.0 | La vitesse de détection des ennemis est proche de la normale à 1x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La perte de durabilité en cas de mort est bien en dessous de la normale à 0,25x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.0 | La résilience ennemie est proche de la normale à 1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Les dégâts ennemis infligés aux joueurs sont proches de la normale à 1,1x. |
| EnemySpawnRate | 0.9 | La fréquence des ennemis est proche de la normale à 0,9x. |
| FatigueSpeedMultiplier | 1.0 | Le taux de fatigue est presque normal à 1x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 1.0 | La détérioration des aliments est presque normale à 1x. |
| GameDifficulty | 1 | La difficulté du jeu est standard. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.0 | Le taux de faim est proche de la normale à 1x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.5 | La durabilité des objets est supérieure à la normale à 1,5x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.6 | Le poids de l'article est inférieur à la normale à 0,6x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 1.5 | Le gain d'expérience est supérieur à la normale à 1,5x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 1.0 | La réfrigération est proche de la normale à 1x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 1.0 | Le taux de remplissage de l'évier est proche de la normale à 1x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 1.0 | Le taux de soif est proche de la normale à 1x. |
| WeatherFrequency | 3 | La fréquence météo est normale. |

<a id="optional-adapter-selection"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `scavenger_loose_inventory_ethics`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-acquisition"></a>
## Jour 2 – Acquisition en étage ouvert

**ID de profil :** `scavenger_open_floor_acquisition` **Général conditions :** Conditions favorables (1.28/5) **Signification simple :** Conditions favorables. Pression environnementale : la pression standard est la pression principale. Pression de survie : les conditions favorables constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-1"></a>
### Effets principaux

- Les dégâts des tirs amis sont bien inférieurs à la normale (0x).
- La durabilité de l'article est extrême (4x).
- La capacité de la pile est extrême (8x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,05x).
- Les dégâts ennemis sur les défenses sont bien inférieurs à la normale (0,1x).

<a id="domain-ratings-1"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | favorable (1.17/5) | La pression hostile est plus légère que la normale. |
| Pression de survie | favorable (1.34/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | favorable (1.08/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (1.91/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.2/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-1"></a>
### Contexte de la rencontre

- Niveau : **rencontres légères**
- Thème : **préparation de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0.028**
- Chance d'événement spécial : **0**

<a id="exact-sandbox-settings-1"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 26 | La taille de l'inventaire de base correspond aux conditions de secours à 26. |
| BonusPerkPoints | 7 | Les points bonus correspondent aux conditions de secours à 7. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.65 | Le taux de continence est inférieur à la normale à 0,65x. |
| DamageToAlliesMultiplier | 0.0 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0x. |
| DayNightCycleSpeedMultiplier | 0.9 | La vitesse du cycle jour-nuit est proche de la normale à 0,9x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 0 | Les peines de mort sont minimes. |
| DetectionSpeedMultiplier | 0.65 | La vitesse de détection des ennemis est inférieure à la normale à 0,65x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,05x. |
| EnemyAccuracy | 1 | La précision de l'ennemi est réduite. |
| EnemyDeployableDamageMultiplier | 0.1 | Les dégâts ennemis sur les défenses sont bien inférieurs à la normale à 0,1x. |
| EnemyHealthMultiplier | 0.9 | La résilience ennemie est proche de la normale à 0,9x. |
| EnemyPlayerDamageMultiplier | 0.7 | Les dégâts ennemis infligés aux joueurs sont inférieurs à la normale à 0,7x. |
| EnemySpawnRate | 0.5 | La fréquence des ennemis est bien inférieure à la normale à 0,5x. |
| FatigueSpeedMultiplier | 0.65 | Le taux de fatigue est inférieur à la normale à 0,65x. |
| FirstTimeStartingWeapon | 2 | La fourniture d'armes de départ est à une pression standard de 2. |
| FoodSpoilSpeedMultiplier | 0.75 | La détérioration des aliments est inférieure à la normale à 0,75x. |
| GameDifficulty | 1 | La difficulté du jeu est standard. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.65 | Le taux de faim est inférieur à la normale à 0,65x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 4.0 | La durabilité des objets est extrême à 4x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.3 | Le poids des objets est bien inférieur à la normale à 0,3x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.1 | Le gain d'expérience est bien au-dessus de la normale à 2,1x. |
| PowerSocketsOffAtNight | false | Les prises de courant restent disponibles la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 1.5 | La réfrigération est supérieure à la normale à 1,5x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 2.0 | Le taux de remplissage des éviers est bien supérieur à la normale à 2x. |
| StorageByTag | false | L'organisation de stockage étiquetée est désactivée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 0.65 | Le taux de soif est inférieur à la normale à 0,65x. |
| WeatherFrequency | 2 | La fréquence météo est occasionnelle. |

<a id="optional-adapter-selection-1"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `scavenger_open_floor_acquisition`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-3---questionable-snacks"></a>
## Jour 3 - Collations douteuses

**ID de profil :** `scavenger_questionable_snacks` **Général conditions :** Pression standard (2.08/5) **Signification simple :** Pression standard. Pression de survie : les conditions exigeantes constituent la principale pression. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez de la nourriture et de l'eau, reposez-vous avant de longs voyages et planifiez des arrêts en toute sécurité.

<a id="main-effects-2"></a>
### Effets principaux

- La capacité de la pile est extrême (8x).
- L'eau de l'évier peut être dangereuse.
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,25x).
- Difficulté du jeu : difficile.

<a id="domain-ratings-2"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.04/5) | La pression hostile est proche de la normale. |
| Pression de survie | exigeant (2.78/5) | La faim, la soif, la fatigue ou l'hygiène nécessitent plus d'attention. |
| Pression des ressources | favorable (1.59/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.22/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.5/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-2"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **ressource biologique de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0.091**
- Chance d'événement spécial : **8**

<a id="exact-sandbox-settings-2"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.45 | Le taux de continence est au-dessus de la normale à 1,45x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.1 | La vitesse de détection de l'ennemi est proche de la normale à 1,1x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La perte de durabilité en cas de mort est bien en dessous de la normale à 0,25x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 0.9 | Les dégâts ennemis sur les défenses sont proches de la normale à 0,9x. |
| EnemyHealthMultiplier | 1.1 | La résilience ennemie est proche de la normale à 1,1x. |
| EnemyPlayerDamageMultiplier | 1.2 | Les dégâts ennemis infligés aux joueurs sont supérieurs à la normale à 1,2x. |
| EnemySpawnRate | 0.9 | La fréquence des ennemis est proche de la normale à 0,9x. |
| FatigueSpeedMultiplier | 1.1 | Le taux de fatigue est proche de la normale à 1,1x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 1.25 | La détérioration des aliments est supérieure à la normale à 1,25x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.1 | Le taux de faim est proche de la normale à 1,1x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.25 | La durabilité de l'article est supérieure à la normale à 1,25x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.6 | Le poids de l'article est inférieur à la normale à 0,6x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 1.8 | Le gain d'expérience est bien supérieur normal à 1,8x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 0.75 | La réfrigération est inférieure à la normale à 0,75x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.25 | Le taux de remplissage de l'évier est bien inférieur à la normale à 0,25x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | true | L'eau de l'évier peut être dangereuse. |
| ThirstSpeedMultiplier | 1.6 | Le taux de soif est supérieur à la normale à 1,6x. |
| WeatherFrequency | 3 | La fréquence météo est normale. |

<a id="optional-adapter-selection-2"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `scavenger_questionable_snacks`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-run-dividend"></a>
## Jour 4 - Dividende de la course d'approvisionnement

**ID de profil :** `scavenger_supply_run_dividend` **Général conditions :** Conditions favorables (1.47/5) **Signification simple :** Conditions favorables. Pression environnementale : la pression standard est la pression principale. Pression de combat : Les conditions favorables constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-3"></a>
### Effets principaux

- La durabilité de l'article est extrême (2,5x).
- La capacité de la pile est extrême (8x).
- Le taux de remplissage des éviers est extrême (2,5x).
- Le gain d'expérience est bien supérieur à la normale (2,3x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,05x).

<a id="domain-ratings-3"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | favorable (1.51/5) | La pression hostile est proche de la normale. |
| Pression de survie | favorable (1.5/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | favorable (1.04/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (1.93/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.44/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-3"></a>
### Contexte de la rencontre

- Niveau : **rencontres légères**
- Thème : **mobilité du butin de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0.056**
- Chance d'événement spécial : **2**

<a id="exact-sandbox-settings-3"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.75 | Le taux de continence est inférieur à la normale à 3. 0,75x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 0.8 | La vitesse de détection des ennemis est inférieure à la normale à 0,8x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,05x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 0.5 | Les dégâts ennemis sur les défenses sont bien inférieurs à la normale à 0,5x. |
| EnemyHealthMultiplier | 0.9 | La résilience ennemie est proche de la normale à 0,9x. |
| EnemyPlayerDamageMultiplier | 0.9 | Les dégâts ennemis infligés aux joueurs sont proches de la normale, soit 0,9x. |
| EnemySpawnRate | 0.7 | La fréquence des ennemis est inférieure à la normale à 0,7x. |
| FatigueSpeedMultiplier | 0.75 | Le taux de fatigue est inférieur à la normale à 0,75x. |
| FirstTimeStartingWeapon | 6 | Le démarrage de la fourniture d'armes est des conditions favorables à 6. |
| FoodSpoilSpeedMultiplier | 0.6 | La détérioration des aliments est inférieure à la normale à 0,6x. |
| GameDifficulty | 1 | La difficulté du jeu est standard. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.75 | Le taux de faim est inférieur à la normale à 0,75x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 2.5 | La durabilité des objets est extrême à 2,5x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.2 | Le poids de l'article est bien en dessous de la normale à 0,2x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.3 | Le gain d'expérience est bien au-dessus de la normale à 2,3x. |
| PowerSocketsOffAtNight | false | Les prises de courant restent disponibles la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 1.5 | La réfrigération est supérieure à la normale à 1,5x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 2.5 | Le taux de remplissage de l'évier est extrême à 2,5x. |
| StorageByTag | false | L'organisation de stockage étiquetée est désactivée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 0.75 | Le taux de soif est inférieur à la normale à 0,75x. |
| WeatherFrequency | 2 | La fréquence météo est occasionnelle. |

<a id="optional-adapter-selection-3"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `scavenger_supply_run_dividend`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-receipt-check"></a>
## Jour 5 - Vérification des reçus de sécurité

**ID de profil :** `scavenger_security_receipt_check` **Général conditions :** Pression standard (1.98/5) **Signification simple :** Pression standard. Pression de combat : La pression standard est la pression principale. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-4"></a>
### Effets principaux

- La capacité de la pile est extrême (8x).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,1x).
- Le gain d'expérience est bien supérieur à la normale (2,1x).
- La vitesse de détection de l'ennemi est bien supérieure à la normale (2x).
- Difficulté du jeu : difficile.

<a id="domain-ratings-4"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.39/5) | La pression hostile est proche de la normale. |
| Pression de survie | standard (1.94/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.37/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.17/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.51/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-4"></a>
### Contexte de la rencontre

- Niveau : **rencontres lourdes**
- Thème : **sécurité de l'itinéraire de butin**
- Groupes actifs maximum : **2**
- Chance de rencontre mixte : **0.119**
- Chance d'événement spécial : **14**

<a id="exact-sandbox-settings-4"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.1 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,1x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 2.0 | La vitesse de détection de l'ennemi est bien supérieure à la normale à 2x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,3x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.2 | La résilience de l'ennemi est supérieure à la normale à 1,2x. |
| EnemyPlayerDamageMultiplier | 1.4 | Les dégâts ennemis infligés aux joueurs sont supérieurs à la normale à 1,4x. |
| EnemySpawnRate | 1.35 | La fréquence des ennemis est supérieure à la normale à 1,35x. |
| FatigueSpeedMultiplier | 1.15 | Le taux de fatigue est proche de la normale à 1,15x. |
| FirstTimeStartingWeapon | 4 | Le démarrage de la fourniture d'armes se fait dans des conditions favorables à 4. |
| FoodSpoilSpeedMultiplier | 1.0 | La détérioration des aliments est presque normale à 1x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.0 | Le taux de faim est proche de la normale à 1x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.25 | La durabilité de l'article est supérieure à la normale à 1,25x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.6 | Le poids de l'article est inférieur à la normale à 0,6x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.1 | Le gain d'expérience est bien au-dessus de la normale à 2,1x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 1.0 | La réfrigération est proche de la normale à 1x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 1.0 | Le taux de remplissage de l'évier est proche de la normale à 1x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 1.0 | Le taux de soif est proche de la normale à 1x. |
| WeatherFrequency | 2 | La fréquence météo est occasionnelle. |

<a id="optional-adapter-selection-4"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `scavenger_security_receipt_check`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weathered-route-sale"></a>
## Jour 6 - Vente de routes dégradées

**ID de profil :** `scavenger_weathered_route_sale` **Général conditions :** Pression standard (1.95/5) **Signification simple :** Pression standard. Pression environnementale : la pression standard est la pression principale. Pression de combat : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Vérifiez l'électricité, l'eau, l'abri et la protection contre les dangers avant de quitter la base.

<a id="main-effects-5"></a>
### Effets principaux

- Fréquence météo : très fréquente.
- La capacité de la pile est extrême (8x).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,25x).
- Difficulté du jeu : difficile.

<a id="domain-ratings-5"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.07/5) | La pression hostile est proche de la normale. |
| Pression de survie | standard (2.04/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.54/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.52/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.5/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-5"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **météo de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0.091**
- Chance d'événement spécial : **10**

<a id="exact-sandbox-settings-5"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.25 | La vitesse du cycle jour-nuit est supérieure à la normale à 1,25x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.1 | La vitesse de détection de l'ennemi est proche de la normale à 1,1x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La perte de durabilité en cas de mort est bien en dessous de la normale à 0,25x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.1 | La résilience ennemie est proche de la normale à 1,1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Les dégâts ennemis infligés aux joueurs sont proches de la normale à 1,1x. |
| EnemySpawnRate | 1.0 | La fréquence des ennemis est proche de la normale à 1x. |
| FatigueSpeedMultiplier | 1.0 | Le taux de fatigue est presque normal à 1x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 1.25 | La détérioration des aliments est supérieure à la normale à 1,25x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.1 | Le taux de faim est proche de la normale à 1,1x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.1 | La durabilité de l'objet est proche de la normale à 1,1x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.6 | Le poids de l'article est inférieur à la normale à 0,6x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 1.7 | Le gain d'expérience est bien supérieur à la normale à 1,7x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 0.8 | La réfrigération est inférieure à la normale à 0,8x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.75 | Taux de remplissage de l'évier est inférieur à la normale à 0,75x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 1.35 | Le taux de soif est supérieur à la normale à 1,35x. |
| WeatherFrequency | 5 | La fréquence météo est très fréquente. |

<a id="optional-adapter-selection-5"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `scavenger_weathered_route_sale`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-market-permit"></a>
## Jour 7 – Permis de marché nocturne

**ID de profil :** `scavenger_night_market_permit` **Général conditions :** Pression standard (1.98/5) **Signification simple :** Pression standard. Pression de combat : La pression standard est la pression principale. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-6"></a>
### Effets principaux

- La capacité de la pile est extrême (8x).
- Le gain d'expérience est bien supérieur à la normale (2,3x).
- État jour-nuit : biaisé nocturne.
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,2x).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).

<a id="domain-ratings-6"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.38/5) | La pression hostile est proche de la normale. |
| Pression de survie | standard (1.93/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.31/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.33/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.49/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-6"></a>
### Contexte de la rencontre

- Niveau : **rencontres lourdes**
- Thème : **itinéraire de butin de nuit**
- Groupes actifs maximum : **2**
- Chance de rencontre mixte : **0.119**
- Chance d'événement spécial : **16**

<a id="exact-sandbox-settings-6"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.95 | Le taux de continence est proche de la normale à 16. 0,95x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 2 | L'état jour-nuit est biaisé la nuit. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.7 | La vitesse de détection des ennemis est bien supérieure à la normale à 1,7x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.2 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,2x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.2 | La résilience de l'ennemi est supérieure à la normale à 1,2x. |
| EnemyPlayerDamageMultiplier | 1.3 | Les dégâts ennemis infligés aux joueurs sont supérieurs à la normale à 1,3x. |
| EnemySpawnRate | 1.45 | La fréquence des ennemis est supérieure à la normale à 1,45x. |
| FatigueSpeedMultiplier | 1.3 | Le taux de fatigue est supérieur à la normale à 1,3x. |
| FirstTimeStartingWeapon | 5 | Le démarrage de la fourniture d'armes est dans des conditions favorables à 5. |
| FoodSpoilSpeedMultiplier | 1.0 | La détérioration des aliments est presque normale à 1x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.95 | Le taux de faim est proche de la normale à 0,95x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.5 | La durabilité des objets est supérieure à la normale à 1,5x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.5 | Le poids de l'article est bien inférieur à la normale à 0,5x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.3 | Le gain d'expérience est bien au-dessus de la normale à 2,3x. |
| PowerSocketsOffAtNight | false | Les prises de courant restent disponibles la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 1.0 | La réfrigération est proche de la normale à 1x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 1.0 | Le taux de remplissage de l'évier est proche de la normale à 1x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 0.95 | Le taux de soif est proche de la normale à 0,95x. |
| WeatherFrequency | 4 | La fréquence météo est fréquente. |

<a id="optional-adapter-selection-6"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `scavenger_night_market_permit`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-clearance-fee"></a>
## Jour 8 – Frais de dédouanement de route

**ID de profil :** `scavenger_route_clearance_fee` **Général conditions :** Pression standard (1.75/5) **Signification simple :** Pression standard. Pression environnementale : la pression standard est la pression principale. Pression de combat : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Vérifiez l'électricité, l'eau, l'abri et la protection contre les dangers avant de quitter la base.

<a id="main-effects-7"></a>
### Effets principaux

- La vitesse du cycle jour-nuit est extrême (3x).
- La capacité de la pile est extrême (8x).
- Le gain d'expérience est bien supérieur à la normale (2,3x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,15x).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).

<a id="domain-ratings-7"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.07/5) | La pression hostile est proche de la normale. |
| Pression de survie | favorable (1.42/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | favorable (1.18/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.56/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.47/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-7"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **itinéraire de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0.105**
- Chance d'événement spécial : **14**

<a id="exact-sandbox-settings-7"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.7 | Le taux de continence est inférieur à la normale à 0,7x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 3.0 | La vitesse du cycle jour-nuit est extrême à 0,7x. 3x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.4 | La vitesse de détection des ennemis est supérieure à la normale à 1,4x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.15 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,15x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 0.8 | Les dégâts ennemis sur les défenses sont inférieurs à la normale à 0,8x. |
| EnemyHealthMultiplier | 0.9 | La résilience ennemie est proche de la normale à 0,9x. |
| EnemyPlayerDamageMultiplier | 1.1 | Les dégâts ennemis infligés aux joueurs sont proches de la normale à 1,1x. |
| EnemySpawnRate | 1.2 | La fréquence des ennemis est supérieure à la normale à 1,1x. 1,2x. |
| FatigueSpeedMultiplier | 0.7 | Le taux de fatigue est inférieur à la normale à 0,7x. |
| FirstTimeStartingWeapon | 6 | Le démarrage de la fourniture d'armes est des conditions favorables à 6. |
| FoodSpoilSpeedMultiplier | 0.9 | La détérioration des aliments est proche de la normale à 0,9x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.7 | Le taux de faim est inférieur à la normale à 0,7x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.25 | La durabilité de l'article est supérieure à la normale à 1,25x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.4 | Le poids de l'article est bien inférieur à la normale à 0,4x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.3 | Le gain d'expérience est bien au-dessus de la normale à 2,3x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 1.1 | La réfrigération est proche de la normale à 1,1x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 1.5 | Le taux de remplissage de l'évier est supérieur à la normale à 1,5x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 0.7 | Le taux de soif est inférieur à la normale à 0,7x. |
| WeatherFrequency | 3 | La fréquence météo est normale. |

<a id="optional-adapter-selection-7"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `scavenger_route_clearance_fee`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-arbitrage"></a>
## Jour 9 - Arbitrage des rations

**ID de profil :** `scavenger_ration_arbitrage` **Général conditions :** Pression standard (2.07/5) **Signification simple :** Pression standard. Pression de survie : les conditions exigeantes constituent la principale pression. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez de la nourriture et de l'eau, reposez-vous avant de longs voyages et planifiez des arrêts en toute sécurité.

<a id="main-effects-8"></a>
### Effets principaux

- La capacité de la pile est extrême (8x).
- L'eau de l'évier peut être dangereuse.
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).
- La détérioration des aliments est bien supérieure à la normale (2x).
- Les prises de courant s'éteignent la nuit.

<a id="domain-ratings-8"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (1.93/5) | La pression hostile est proche de la normale. |
| Pression de survie | exigeant (2.81/5) | La faim, la soif, la fatigue ou l'hygiène nécessitent plus d'attention. |
| Pression des ressources | standard (1.75/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.17/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.53/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-8"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **rareté de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0.084**
- Chance d'événement spécial : **8**

<a id="exact-sandbox-settings-8"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.25 | Le taux de continence est supérieur à la normale à 1,25x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.1 | La vitesse de détection de l'ennemi est proche de la normale à 1,1x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | La perte de durabilité en cas de décès est bien inférieure à la normale à 0,35x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.2 | La résilience de l'ennemi est supérieure à la normale à 1,2x. |
| EnemyPlayerDamageMultiplier | 1.2 | Les dégâts ennemis infligés aux joueurs sont supérieurs à la normale à 1,2x. |
| EnemySpawnRate | 0.9 | La fréquence des ennemis est proche de la normale à 0,9x. |
| FatigueSpeedMultiplier | 1.3 | Le taux de fatigue est supérieur à la normale à 1,3x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 2.0 | La détérioration des aliments est bien au-dessus de la normale à 2x. |
| GameDifficulty | 1 | La difficulté du jeu est standard. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.4 | Le taux de faim est supérieur à la normale à 1,4x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 0.75 | La durabilité des articles est inférieure à la normale à 0,75x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.8 | Le poids de l'article est inférieur à la normale à 0,8x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 1.7 | Le gain d'expérience est bien supérieur à la normale à 1,7x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 0.5 | La réfrigération est bien inférieure à la normale à 0,5x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.5 | Le taux de remplissage des éviers est bien inférieur à la normale à 0,5x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | true | L'eau de l'évier peut être dangereuse. |
| ThirstSpeedMultiplier | 1.4 | Le taux de soif est supérieur à la normale à 1,4x. |
| WeatherFrequency | 2 | La fréquence météo est occasionnelle. |

<a id="optional-adapter-selection-8"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `scavenger_ration_arbitrage`
- `lethal_lasers`: `standard_safety`

<a id="day-10---quiet-profit-window"></a>
## Jour 10 - Fenêtre de profit silencieuse

**ID de profil :** `scavenger_quiet_profit_window` **Général conditions :** Conditions favorables (1.04/5) **Signification simple :** Conditions favorables. Pression environnementale : Des conditions favorables constituent la principale pression. Pression de reprise : des conditions favorables constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-9"></a>
### Effets principaux

- Les points bonus sont des conditions de soulagement (10).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0x).
- La durabilité de l'article est extrême (3x).
- La capacité de la pile est extrême (8x).

<a id="domain-ratings-9"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | favorable (0.92/5) | La pression hostile est plus légère que la normale. |
| Pression de survie | favorable (1.02/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | favorable (0.88/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | favorable (1.54/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.19/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-9"></a>
### Contexte de la rencontre

- Niveau : **rencontres minimales**
- Thème : **récupération de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0**
- Chance d'événement spécial : **0**

<a id="exact-sandbox-settings-9"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 30 | La taille de l'inventaire de base correspond aux conditions de secours à 30. |
| BonusPerkPoints | 10 | Les points bonus sont des conditions de soulagement à 10. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.45 | Le taux de continence est bien inférieur normale à 0,45x. |
| DamageToAlliesMultiplier | 0.0 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0x. |
| DayNightCycleSpeedMultiplier | 0.85 | La vitesse du cycle jour-nuit est proche de la normale à 0,85x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 0 | Les peines de mort sont minimes. |
| DetectionSpeedMultiplier | 0.4 | La vitesse de détection des ennemis est bien inférieure à la normale à 0,4x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0x. |
| EnemyAccuracy | 1 | La précision de l'ennemi est réduite. |
| EnemyDeployableDamageMultiplier | 0.1 | Les dégâts ennemis sur les défenses sont bien inférieurs à la normale à 0,1x. |
| EnemyHealthMultiplier | 0.7 | La résilience ennemie est inférieure à la normale à 0,7x. |
| EnemyPlayerDamageMultiplier | 0.4 | Les dégâts ennemis infligés aux joueurs sont bien inférieurs à la normale à 0,4x. |
| EnemySpawnRate | 0.4 | La fréquence des ennemis est bien inférieure à la normale à 0,4x. |
| FatigueSpeedMultiplier | 0.45 | Le taux de fatigue est bien inférieur à la normale à 0,45x. |
| FirstTimeStartingWeapon | 2 | La fourniture d'armes de départ est à une pression standard de 2. |
| FoodSpoilSpeedMultiplier | 0.4 | La détérioration des aliments est bien inférieure à la normale à 0,4x. |
| GameDifficulty | 1 | La difficulté du jeu est standard. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.45 | Le taux de faim est bien inférieur à la normale à 0,45x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 3.0 | La durabilité des objets est extrême à 3x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.2 | Le poids de l'article est bien en dessous de la normale à 0,2x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 3.0 | Le gain d'expérience est extrême à 3x. |
| PowerSocketsOffAtNight | false | Les prises de courant restent disponibles la nuit. |
| RadiationDealsDamage | false | Les dommages causés par les radiations sont désactivés. |
| RefrigerationEffectivenessMultiplier | 1.8 | La réfrigération est bien au-dessus de la normale à 1,8x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 3.0 | Le taux de remplissage des éviers est extrême à 3x. |
| StorageByTag | false | L'organisation de stockage étiquetée est désactivée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 0.45 | Le taux de soif est bien inférieur à la normale à 0,45x. |
| WeatherFrequency | 1 | La fréquence météo est rare. |

<a id="optional-adapter-selection-9"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `scavenger_quiet_profit_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-salvage"></a>
## Jour 11 - Récupération d'entraînement

**ID de profil :** `scavenger_training_salvage` **Général conditions :** Conditions favorables (1.47/5) **Signification simple :** Conditions favorables. Pression environnementale : la pression standard est la pression principale. Pression de survie : les conditions favorables constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-10"></a>
### Effets principaux

- La perte de durabilité en cas de décès est bien inférieure à la normale (0x).
- La capacité de la pile est extrême (8x).
- Le gain d'expérience est extrême (3,9x).
- La durabilité de l'article est bien supérieure à la normale (2,25x).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).

<a id="domain-ratings-10"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | favorable (1.49/5) | La pression hostile est plus légère que la normale. |
| Pression de survie | favorable (1.58/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.0/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (1.96/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.43/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-10"></a>
### Contexte de la rencontre

- Niveau : **rencontres légères**
- Thème : **entraînement de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0.049**
- Chance d'événement spécial : **3**

<a id="exact-sandbox-settings-10"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.8 | Le taux de continence est inférieur à la normale à 0,8x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.15 | La vitesse du cycle jour-nuit est proche de la normale à 1,15x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 0.9 | La vitesse de détection des ennemis est proche de la normale à 0,9x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.0 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 0.4 | Les dégâts causés par l'ennemi aux défenses sont bien inférieurs à la normale à 0,4x. |
| EnemyHealthMultiplier | 0.9 | La résilience ennemie est proche de la normale à 0,9x. |
| EnemyPlayerDamageMultiplier | 0.7 | Les dégâts ennemis infligés aux joueurs sont inférieurs à la normale à 0,7x. |
| EnemySpawnRate | 0.8 | La fréquence des ennemis est inférieure à la normale à 0,8x. |
| FatigueSpeedMultiplier | 0.8 | Le taux de fatigue est inférieur à la normale à 0,8x. |
| FirstTimeStartingWeapon | 6 | Le démarrage de la fourniture d'armes est des conditions favorables à 6. |
| FoodSpoilSpeedMultiplier | 0.8 | La détérioration des aliments est inférieure à la normale à 0,8x. |
| GameDifficulty | 1 | La difficulté du jeu est standard. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.8 | Le taux de faim est inférieur à la normale à 0,8x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 2.25 | La durabilité de l'objet est bien au-dessus de la normale à 2,25x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.4 | Le poids de l'article est bien inférieur à la normale à 0,4x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 3.9 | Le gain d'expérience est extrême à 3,9x. |
| PowerSocketsOffAtNight | false | Les prises de courant restent disponibles la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 1.3 | La réfrigération est au-dessus de la normale à 1,3x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 2.0 | Le taux de remplissage des éviers est bien supérieur à la normale à 2x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 0.8 | Le taux de soif est inférieur à la normale à 0,8x. |
| WeatherFrequency | 2 | La fréquence météo est occasionnelle. |

<a id="optional-adapter-selection-10"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `scavenger_training_salvage`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-liquidation"></a>
## Jour 12 - Liquidation du Black Lab

**ID de profil :** `scavenger_black_lab_liquidation` **Général conditions :** Pression standard (2.43/5) **Signification simple :** Pression standard. Pression de combat : Les conditions exigeantes constituent la principale pression. Pression de survie : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-11"></a>
### Effets principaux

- Difficulté du jeu : très difficile.
- La capacité de la pile est extrême (8x).
- Le gain d'expérience est extrême (3,1x).
- L'eau de l'évier peut être dangereuse.
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,15x).

<a id="domain-ratings-11"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | exigeant (3.15/5) | La pression hostile est élevée ; préparez-vous avant de vous engager. |
| Pression de survie | standard (2.53/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.46/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.22/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | standard (1.79/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-11"></a>
### Contexte de la rencontre

- Niveau : **rencontres extrêmes**
- Thème : **test intensif de l'itinéraire de butin**
- Groupes actifs maximum : **2**
- Chance de rencontre mixte : **0.161**
- Chance d'événement spécial : **22**

<a id="exact-sandbox-settings-11"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.15 | Les dégâts des tirs amis sont bien inférieurs à la normale, soit 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 2 | Les peines de mort sont lourdes. |
| DetectionSpeedMultiplier | 2.0 | La vitesse de détection de l'ennemi est bien supérieure à la normale à 2x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.4 | La perte de durabilité en cas de décès est bien inférieure à la normale, soit 0,4x. |
| EnemyAccuracy | 3 | La précision de l'ennemi est précis. |
| EnemyDeployableDamageMultiplier | 1.4 | Les dégâts ennemis sur les défenses sont supérieurs à la normale à 1,4x. |
| EnemyHealthMultiplier | 1.8 | La résilience de l'ennemi est bien au-dessus de la normale à 1,8x. |
| EnemyPlayerDamageMultiplier | 2.1 | Les dégâts ennemis infligés aux joueurs sont bien supérieurs à la normale à 2,1x. |
| EnemySpawnRate | 2.0 | La fréquence des ennemis est bien au-dessus de la normale à 2x. |
| FatigueSpeedMultiplier | 1.15 | Le taux de fatigue est proche de la normale à 1,15x. |
| FirstTimeStartingWeapon | 1 | La fourniture d'armes de départ est une pression standard à 1. |
| FoodSpoilSpeedMultiplier | 1.15 | La détérioration des aliments est proche de la normale à 1,15x. |
| GameDifficulty | 3 | La difficulté du jeu est très difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.15 | Le taux de faim est proche de la normale à 1,15x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.1 | La durabilité de l'objet est proche de la normale à 1,1x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.6 | Le poids de l'article est inférieur à la normale à 0,6x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 3.1 | Le gain d'expérience est extrême à 3,1x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 0.85 | La réfrigération est proche de la normale à 0,85x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.75 | Taux de remplissage de l'évier est inférieur à la normale à 0,75x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | true | L'eau de l'évier peut être dangereuse. |
| ThirstSpeedMultiplier | 1.15 | Le taux de soif est proche de la normale à 1,15x. |
| WeatherFrequency | 3 | La fréquence météo est normale. |

<a id="optional-adapter-selection-11"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `scavenger_black_lab_liquidation`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-haul-inventory"></a>
## Jour 13 - Inventaire longue distance

**ID de profil :** `scavenger_long_haul_inventory` **Général conditions :** Pression standard (2.14/5) **Signification simple :** Pression standard. Pression de survie : les conditions exigeantes constituent la principale pression. Pression de combat : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez de la nourriture et de l'eau, reposez-vous avant de longs voyages et planifiez des arrêts en toute sécurité.

<a id="main-effects-12"></a>
### Effets principaux

- La capacité de la pile est extrême (8x).
- L'eau de l'évier peut être dangereuse.
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).
- Difficulté du jeu : difficile.
- Le gain d'expérience est bien supérieur à la normale (2x).

<a id="domain-ratings-12"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.07/5) | La pression hostile est proche de la normale. |
| Pression de survie | exigeant (3.02/5) | La faim, la soif, la fatigue ou l'hygiène nécessitent plus d'attention. |
| Pression des ressources | favorable (1.69/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.01/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.53/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-12"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **endurance de l'itinéraire de butin**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0.098**
- Chance d'événement spécial : **7**

<a id="exact-sandbox-settings-12"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.35 | Le taux de continence est supérieur à la normale à 1,35x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 0.3 | La vitesse du cycle jour-nuit est bien inférieure à la normale à 0,3x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.1 | La vitesse de détection de l'ennemi est proche de la normale à 1,1x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | La perte de durabilité en cas de décès est bien inférieure à la normale à 0,35x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 0.9 | Les dégâts ennemis sur les défenses sont proches de la normale à 0,9x. |
| EnemyHealthMultiplier | 1.3 | La résilience de l'ennemi est supérieure à la normale à 1,3x. |
| EnemyPlayerDamageMultiplier | 1.3 | Les dégâts ennemis infligés aux joueurs sont supérieurs à la normale à 1,3x. |
| EnemySpawnRate | 0.8 | La fréquence des ennemis est inférieure à la normale à 0,8x. |
| FatigueSpeedMultiplier | 1.5 | Le taux de fatigue est supérieur à la normale à 1,5x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 1.8 | La détérioration des aliments est bien supérieure à la normale à 1,8x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.6 | Le taux de faim est supérieur à la normale à 1,6x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 0.9 | La durabilité des articles est proche de la normale à 0,9x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.9 | Le poids de l'article est proche de la normale à 2x. 0,9x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.0 | Le gain d'expérience est bien au-dessus de la normale à 2x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 0.65 | La réfrigération est inférieure à la normale à 0,65x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.35 | Le taux de remplissage de l'évier est bien inférieur à la normale à 0,35x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | true | L'eau de l'évier peut être dangereuse. |
| ThirstSpeedMultiplier | 1.6 | Le taux de soif est supérieur à la normale à 1,6x. |
| WeatherFrequency | 2 | La fréquence météo est occasionnelle. |

<a id="optional-adapter-selection-12"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `scavenger_long_haul_inventory`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-jackpot"></a>
## Jour 14 - Approvisionnement Closet Jackpot

**ID de profil :** `scavenger_supply_closet_jackpot` **Général conditions :** Conditions favorables (1.02/5) **Signification simple :** Conditions favorables. Pression environnementale : Des conditions favorables constituent la principale pression. Pression de reprise : des conditions favorables constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-13"></a>
### Effets principaux

- La taille de l'inventaire de base correspond aux conditions de soulagement (40).
- Les points bonus sont des conditions de soulagement (12).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0x).
- La durabilité de l'article est extrême (6x).

<a id="domain-ratings-13"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | favorable (1.0/5) | La pression hostile est plus légère que la normale. |
| Pression de survie | favorable (0.86/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | soulagement (0.77/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | favorable (1.58/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.19/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-13"></a>
### Contexte de la rencontre

- Niveau : **rencontres minimales**
- Thème : **itinéraire de butin secours**
- Groupes actifs maximum : **1**
- Chance de rencontre mixte : **0**
- Chance d'événement spécial : **0**

<a id="exact-sandbox-settings-13"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 40 | La taille de l'inventaire de base correspond aux conditions de secours à 40. |
| BonusPerkPoints | 12 | Les points bonus sont des conditions de soulagement à 12. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.35 | Continence le taux de fatigue est bien inférieur à la normale à 0,35x. |
| DamageToAlliesMultiplier | 0.0 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 0 | Les peines de mort sont minimes. |
| DetectionSpeedMultiplier | 0.6 | La vitesse de détection des ennemis est inférieure normal à 0,6x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0x. |
| EnemyAccuracy | 1 | La précision de l'ennemi est réduite. |
| EnemyDeployableDamageMultiplier | 0.1 | Les dégâts ennemis sur les défenses sont bien inférieurs à la normale à 0,1x. |
| EnemyHealthMultiplier | 0.8 | La résilience ennemie est inférieure à la normale à 0,8x. |
| EnemyPlayerDamageMultiplier | 0.5 | Les dégâts ennemis infligés aux joueurs sont bien inférieurs à la normale à 0,5x. |
| EnemySpawnRate | 0.4 | La fréquence des ennemis est bien inférieure à la normale à 0,4x. |
| FatigueSpeedMultiplier | 0.35 | Le taux de fatigue est bien inférieur à la normale à 0,35x. |
| FirstTimeStartingWeapon | 6 | Le démarrage de la fourniture d'armes est des conditions favorables à 6. |
| FoodSpoilSpeedMultiplier | 0.25 | La détérioration des aliments est bien en dessous de la normale à 0,25x. |
| GameDifficulty | 1 | La difficulté du jeu est standard. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.35 | Le taux de faim est bien inférieur à la normale à 0,35x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 6.0 | La durabilité des objets est extrême à 6x. |
| ItemStackSizeMultiplier | 14 | La capacité de pile est extrême à 14x. |
| ItemWeightMultiplier | 0.1 | Le poids de l'article est bien inférieur à la normale à 0,1x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 4.4 | Le gain d'expérience est extrême à 4,4x. |
| PowerSocketsOffAtNight | false | Les prises de courant restent disponibles la nuit. |
| RadiationDealsDamage | false | Les dommages causés par les radiations sont désactivés. |
| RefrigerationEffectivenessMultiplier | 2.0 | La réfrigération est bien au-dessus de la normale à 2x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 5.0 | Le taux de remplissage de l'évier est extrême à 5x. |
| StorageByTag | false | L'organisation de stockage étiquetée est désactivée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 0.35 | Le taux de soif est bien inférieur à la normale à 0,35x. |
| WeatherFrequency | 1 | La fréquence météo est rare. |

<a id="optional-adapter-selection-13"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `scavenger_supply_closet_jackpot`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-tax"></a>
## Jour 15 - Taxe de précision

**ID de profil :** `scavenger_accuracy_tax` **Général conditions :** Pression standard (1.92/5) **Signification simple :** Pression standard. Pression de combat : La pression standard est la pression principale. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-14"></a>
### Effets principaux

- Les dégâts des tirs amis sont bien inférieurs à la normale (0x).
- La capacité de la pile est extrême (8x).
- Le gain d'expérience est extrême (2,5x).
- Difficulté du jeu : difficile.
- Les prises de courant s'éteignent la nuit.

<a id="domain-ratings-14"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.2/5) | La pression hostile est proche de la normale. |
| Pression de survie | standard (1.98/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.38/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.17/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.51/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-14"></a>
### Contexte de la rencontre

- Niveau : **rencontres lourdes**
- Thème : **précision de l'itinéraire de butin**
- Groupes actifs maximum : **2**
- Chance de rencontre mixte : **0.119**
- Chance d'événement spécial : **14**

<a id="exact-sandbox-settings-14"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.0 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.5 | La vitesse de détection des ennemis est supérieure à la normale à 1,5x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,3x. |
| EnemyAccuracy | 2 | La précision de l'ennemi est standard. |
| EnemyDeployableDamageMultiplier | 0.8 | Les dégâts ennemis sur les défenses sont inférieurs à la normale à 0,8x. |
| EnemyHealthMultiplier | 1.0 | La résilience ennemie est proche de la normale à 1x. |
| EnemyPlayerDamageMultiplier | 1.5 | Les dégâts ennemis infligés aux joueurs sont supérieurs à la normale à 1,5x. |
| EnemySpawnRate | 1.05 | La fréquence des ennemis est proche de la normale à 1,05x. |
| FatigueSpeedMultiplier | 1.25 | Le taux de fatigue est supérieur à la normale à 1,25x. |
| FirstTimeStartingWeapon | 4 | Le démarrage de la fourniture d'armes se fait dans des conditions favorables à 4. |
| FoodSpoilSpeedMultiplier | 1.0 | La détérioration des aliments est presque normale à 1x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.0 | Le taux de faim est proche de la normale à 1x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.0 | La durabilité de l'objet est proche de la normale à 1x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.6 | Le poids de l'article est inférieur à la normale à 0,6x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.5 | Le gain d'expérience est extrême à 2,5x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 1.0 | La réfrigération est proche de la normale à 1x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 1.0 | Le taux de remplissage de l'évier est proche de la normale à 1x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | false | L'eau de l'évier n'est pas contaminée par cette règle. |
| ThirstSpeedMultiplier | 1.0 | Le taux de soif est proche de la normale à 1x. |
| WeatherFrequency | 2 | La fréquence météo est occasionnelle. |

<a id="optional-adapter-selection-14"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `scavenger_accuracy_tax`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-markup"></a>
## Jour 16 - Expérimental Balisage

**ID de profil :** `scavenger_experimental_markup` **Général conditions :** Pression standard (2.12/5) **Signification simple :** Pression standard. Pression environnementale : la pression standard est la pression principale. Pression de combat : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Vérifiez l'électricité, l'eau, l'abri et la protection contre les dangers avant de quitter la base.

<a id="main-effects-15"></a>
### Effets principaux

- Difficulté du jeu : très difficile.
- Certains rayonnements peuvent manquer d'avertissement visible.
- Fréquence météo : très fréquente.
- Les dégâts des tirs amis sont bien inférieurs à la normale (0x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0x).

<a id="domain-ratings-15"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.45/5) | La pression hostile est proche de la normale. |
| Pression de survie | standard (2.36/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.14/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.59/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.67/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-15"></a>
### Contexte de la rencontre

- Niveau : **rencontres extrêmes**
- Thème : **itinéraire de butin expérimental**
- Groupes actifs maximum : **2**
- Chance de rencontre mixte : **0.154**
- Chance d'événement spécial : **20**

<a id="exact-sandbox-settings-15"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.2 | Le taux de continence est supérieur à la normale à 1,2x. |
| DamageToAlliesMultiplier | 0.0 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | La vitesse du cycle jour-nuit est supérieure à la normale à 1,5x. |
| DayNightCycleState | 1 | L'état jour-nuit est biaisé en fonction du jour. |
| DeathPenalties | 2 | Les peines de mort sont lourdes. |
| DetectionSpeedMultiplier | 0.6 | La vitesse de détection des ennemis est inférieure normal à 0,6x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.0 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0x. |
| EnemyAccuracy | 3 | La précision de l'ennemi est précis. |
| EnemyDeployableDamageMultiplier | 0.7 | Les dégâts ennemis sur les défenses sont inférieurs à la normale à 0,7x. |
| EnemyHealthMultiplier | 1.5 | La résilience de l'ennemi est supérieure à la normale à 1,5x. |
| EnemyPlayerDamageMultiplier | 1.0 | Les dégâts ennemis infligés aux joueurs sont proches de la normale à 1x. |
| EnemySpawnRate | 1.3 | La fréquence des ennemis est supérieure à la normale à 1,3x. |
| FatigueSpeedMultiplier | 0.8 | Le taux de fatigue est inférieur à la normale à 0,8x. |
| FirstTimeStartingWeapon | 6 | Le démarrage de la fourniture d'armes est des conditions favorables à 6. |
| FoodSpoilSpeedMultiplier | 0.4 | La détérioration des aliments est bien inférieure à la normale à 0,4x. |
| GameDifficulty | 3 | La difficulté du jeu est très difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.8 | Le taux de faim est inférieur à la normale à 0,8x. |
| InvisibleRadiation | true | Certains rayonnements peuvent manquer d'avertissement visible. |
| ItemDurabilityMultiplier | 5.0 | La durabilité de l'article est extrême à 5x. |
| ItemStackSizeMultiplier | 8 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.1 | Le poids de l'article est bien inférieur à la normale à 0,1x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 5.0 | Le gain d'expérience est extrême à 5x. |
| PowerSocketsOffAtNight | false | Les prises de courant restent disponibles la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 2.0 | La réfrigération est bien au-dessus de la normale à 2x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.0 | Le taux de remplissage de l'évier est bien inférieur à la normale à 0x. |
| StorageByTag | false | L'organisation de stockage étiquetée est désactivée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | true | L'eau de l'évier peut être dangereuse. |
| ThirstSpeedMultiplier | 1.2 | Le taux de soif est supérieur à la normale à 0x. 1,2x. |
| WeatherFrequency | 5 | La fréquence météo est très fréquente. |

<a id="optional-adapter-selection-15"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `scavenger_experimental_markup`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-audit-of-pockets"></a>
## Jour 17 - Audit final des poches

**ID de profil :** `scavenger_final_audit_of_pockets` **Général conditions :** Conditions exigeantes (2.68/5) **Signification simple :** Conditions exigeantes. Pression de combat : Les conditions difficiles constituent la principale pression. Pression de survie : les conditions exigeantes constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-16"></a>
### Effets principaux

- Difficulté du jeu : très difficile.
- Fréquence météo : très fréquente.
- La fréquence des ennemis est extrême (2,6x).
- Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale (2,4x).
- La capacité de la pile est extrême (14x).

<a id="domain-ratings-16"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | graves (3.53/5) | La pression hostile est élevée ; préparez-vous avant de vous engager. |
| Pression de survie | exigeant (2.72/5) | La faim, la soif, la fatigue ou l'hygiène nécessitent plus d'attention. |
| Pression des ressources | favorable (1.59/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.55/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | standard (1.81/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-16"></a>
### Contexte de la rencontre

- Niveau : **rencontres de synthèse**
- Thème : **pierre finale de l'itinéraire de butin**
- Groupes actifs maximum : **2**
- Chance de rencontre mixte : **0.196**
- Chance d'événement spécial : **30**

<a id="exact-sandbox-settings-16"></a>
### Paramètres exacts du bac à sable

| Paramètre | Valeur brute | Signification traduite |
|---|---:|---|
| AllowCharacterReset | true | La réinitialisation des caractères reste disponible. |
| AllowIronMode | false | Le mode fer est désactivé. |
| AllowPagers | true | Des téléavertisseurs sont disponibles. |
| AllowRecipeSharing | true | Le partage de recettes est disponible. |
| AllowTransmog | true | La personnalisation de l'apparence est disponible. |
| BaseInventorySize | 18 | La taille de l'inventaire de base est dans des conditions favorables à 18. |
| BonusPerkPoints | 4 | Les points bonus sont des conditions favorables à 4. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.1 | Le taux de continence est proche de la normale à 1,1x. |
| DamageToAlliesMultiplier | 0.1 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | La vitesse du cycle jour-nuit est supérieure à la normale à 1,45x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 2 | Les peines de mort sont lourdes. |
| DetectionSpeedMultiplier | 2.3 | La vitesse de détection des ennemis est bien supérieure à la normale à 2,3x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.5 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,5x. |
| EnemyAccuracy | 3 | La précision de l'ennemi est précis. |
| EnemyDeployableDamageMultiplier | 2.0 | Les dégâts ennemis sur les défenses sont bien au-dessus de la normale à 2x. |
| EnemyHealthMultiplier | 2.3 | La résilience de l'ennemi est bien supérieure à la normale à 2,3x. |
| EnemyPlayerDamageMultiplier | 2.4 | Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale à 2,4x. |
| EnemySpawnRate | 2.6 | La fréquence des ennemis est extrême à 2,6x. |
| FatigueSpeedMultiplier | 1.25 | Le taux de fatigue est supérieur à la normale à 1,25x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 1.6 | La détérioration des aliments est supérieure à la normale à 1,6x. |
| GameDifficulty | 3 | La difficulté du jeu est très difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.35 | Le taux de faim est supérieur à la normale à 1,35x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.0 | La durabilité de l'objet est proche de la normale à 1x. |
| ItemStackSizeMultiplier | 14 | La capacité de pile est extrême à 14x. |
| ItemWeightMultiplier | 0.7 | Le poids de l'article est inférieur à la normale à 0,7x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 4.6 | Le gain d'expérience est extrême à 4,6x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 0.6 | La réfrigération est inférieure à la normale à 0,6x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.5 | Le taux de remplissage des éviers est bien inférieur à la normale à 0,5x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | true | L'eau de l'évier peut être dangereuse. |
| ThirstSpeedMultiplier | 1.35 | Le taux de soif est supérieur à la normale à 1,35x. |
| WeatherFrequency | 5 | La fréquence météo est très fréquente. |

<a id="optional-adapter-selection-16"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `scavenger_final_audit_of_pockets`
- `lethal_lasers`: `overcharged_high_hazard`
