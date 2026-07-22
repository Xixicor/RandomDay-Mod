<a id="randomday---stealth-family"></a>
# RandomDay - Famille furtive

> **Source canonique en anglais:** [stealth.md](../../../../profiles/families/stealth.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Version : `v0.3.16-alpha`

Évitez la détection. L'établissement écoute plus fort que d'habitude.

**Style de jeu :** pression d'évitement et de surveillance **Ton du message :** surveillance d'entreprise chuchotée

<a id="17-day-index"></a>
## Indice sur 17 jours

| Jour | Profil | Conditions | Pression principale |
|---:|---|---|---|
| 1 | Orientation chuchotée | Pression standard (2.03/5) | Pression de combat |
| 2 | Silence autorisé | Conditions favorables (1.43/5) | Pression environnementale |
| 3 | Le sol vous a entendu | Pression standard (2.34/5) | Pression de survie |
| 4 | Preuves empochées | Conditions favorables (1.63/5) | Pression de combat |
| 5 | Balayage de sécurité silencieux | Pression standard (2.21/5) | Pression de combat |
| 6 | Prévision : profil bas | Pression standard (2.2/5) | Pression de combat |
| 7 | Dégagement des routes sombres | Pression standard (2.22/5) | Pression de combat |
| 8 | Transport invisible | Pression standard (1.99/5) | Pression de combat |
| 9 | Ration sans témoins | Pression standard (2.38/5) | Pression de survie |
| 10 | Fenêtre de réparation silencieuse | Conditions favorables (1.19/5) | Pression environnementale |
| 11 | Exercice d'observation | Conditions favorables (1.61/5) | Pression environnementale |
| 12 | Angle mort du laboratoire noir | Conditions exigeantes (2.62/5) | Pression de combat |
| 13 | Long changement de vitesse silencieux | Pression standard (2.55/5) | Pression de survie |
| 14 | Faux hall vide | Conditions favorables (1.34/5) | Pression de combat |
| 15 | Audit de détection | Pression standard (2.26/5) | Pression de combat |
| 16 | Silence expérimental | Pression standard (2.21/5) | Pression de combat |
| 17 | Non-apparition finale | Conditions exigeantes (2.83/5) | Pression de combat |

<a id="day-1---whispered-orientation"></a>
## Jour 1 - Orientation chuchotée

**ID de profil :** `stealth_whispered_orientation` **Général conditions :** Pression standard (2.03/5) **Signification simple :** Pression standard. Pression de combat : La pression standard est la pression principale. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects"></a>
### Effets principaux

- Précision de l'ennemi : très précise.
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).
- La vitesse de détection de l'ennemi est bien supérieure à la normale (2x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,25x).
- La capacité de la pile est bien supérieure à la normale (2x).

<a id="domain-ratings"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.37/5) | La pression hostile est proche de la normale. |
| Pression de survie | standard (1.9/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | standard (1.73/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.22/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.5/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **orientation de la patrouille silencieuse**
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
| BaseInventorySize | 12 | La taille de l'inventaire de base est une pression standard de 12. |
| BonusPerkPoints | 0 | Les points bonus sont une pression standard à 0. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 2.0 | La vitesse de détection de l'ennemi est bien supérieure à la normale à 2x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La perte de durabilité en cas de mort est bien en dessous de la normale à 0,25x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.3 | La résilience de l'ennemi est supérieure à la normale à 1,3x. |
| EnemyPlayerDamageMultiplier | 1.7 | Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale à 1,7x. |
| EnemySpawnRate | 0.6 | La fréquence des ennemis est inférieure à la normale à 0,6x. |
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
| ItemStackSizeMultiplier | 2.0 | La capacité de la pile est bien supérieure à la normale à 2x. |
| ItemWeightMultiplier | 0.9 | Le poids de l'article est proche de la normale à 2x. 0,9x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 1.7 | Le gain d'expérience est bien supérieur à la normale à 1,7x. |
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
- `encounter_director`: `stealth_whispered_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---authorized-silence"></a>
## Jour 2 - Silence autorisé

**ID de profil :** `stealth_authorized_silence` **Général conditions :** Conditions favorables (1.43/5) **Signification simple :** Conditions favorables. Pression environnementale : la pression standard est la pression principale. Pression de combat : Les conditions favorables constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-1"></a>
### Effets principaux

- Les dégâts des tirs amis sont bien inférieurs à la normale (0x).
- La durabilité de l'article est extrême (4x).
- La capacité de la pile est extrême (8x).
- Le gain d'expérience est bien supérieur à la normale (2,4x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,05x).

<a id="domain-ratings-1"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | favorable (1.59/5) | La pression hostile est proche de la normale. |
| Pression de survie | favorable (1.34/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | favorable (1.08/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (1.91/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.2/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-1"></a>
### Contexte de la rencontre

- Niveau : **rencontres légères**
- Thème : **préparation de la patrouille silencieuse**
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
| DetectionSpeedMultiplier | 1.2 | La vitesse de détection de l'ennemi est supérieure à la normale à 1,2x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,05x. |
| EnemyAccuracy | 3 | La précision de l'ennemi est précis. |
| EnemyDeployableDamageMultiplier | 0.1 | Les dégâts ennemis sur les défenses sont bien inférieurs à la normale à 0,1x. |
| EnemyHealthMultiplier | 1.1 | La résilience ennemie est proche de la normale à 1,1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Les dégâts ennemis infligés aux joueurs sont proches de la normale à 1,1x. |
| EnemySpawnRate | 0.3 | La fréquence des ennemis est bien inférieure à la normale à 0,3x. |
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
| ItemStackSizeMultiplier | 8.0 | La capacité de pile est extrême à 8x. |
| ItemWeightMultiplier | 0.5 | Le poids de l'article est bien inférieur à la normale à 0,5x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.4 | Le gain d'expérience est bien supérieur à la normale à 2,4x. |
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
- `encounter_director`: `stealth_authorized_silence`
- `lethal_lasers`: `low_hazard`

<a id="day-3---the-floor-heard-you"></a>
## Jour 3 - Le sol vous a entendu

**ID de profil :** `stealth_the_floor_heard_you` **Général conditions :** Pression standard (2.34/5) **Signification simple :** Pression standard. Pression de survie : les conditions exigeantes constituent la principale pression. Pression de combat : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez de la nourriture et de l'eau, reposez-vous avant de longs voyages et planifiez des arrêts en toute sécurité.

<a id="main-effects-2"></a>
### Effets principaux

- Précision de l'ennemi : très précise.
- L'eau de l'évier peut être dangereuse.
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).
- La vitesse de détection de l'ennemi est bien supérieure à la normale (2x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,25x).

<a id="domain-ratings-2"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.53/5) | La pression hostile est proche de la normale. |
| Pression de survie | exigeant (2.93/5) | La faim, la soif, la fatigue ou l'hygiène nécessitent plus d'attention. |
| Pression des ressources | standard (1.88/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.22/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.5/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-2"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **ressource biologique de la patrouille silencieuse**
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
| BaseInventorySize | 12 | La taille de l'inventaire de base est une pression standard de 12. |
| BonusPerkPoints | 0 | Les points bonus sont une pression standard à 0. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.45 | Le taux de continence est au-dessus de la normale à 1,45x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 2.0 | La vitesse de détection de l'ennemi est bien supérieure à la normale à 2x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La perte de durabilité en cas de mort est bien en dessous de la normale à 0,25x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 0.9 | Les dégâts ennemis sur les défenses sont proches de la normale à 0,9x. |
| EnemyHealthMultiplier | 1.4 | La résilience ennemie est supérieure à la normale à 1,4x. |
| EnemyPlayerDamageMultiplier | 1.8 | Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale à 1,8x. |
| EnemySpawnRate | 0.6 | La fréquence des ennemis est inférieure à la normale à 0,6x. |
| FatigueSpeedMultiplier | 1.1 | Le taux de fatigue est proche de la normale à 1,1x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 1.25 | La détérioration des aliments est supérieure à la normale à 1,25x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.3 | Le taux de faim est supérieur à la normale à 1,3x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.25 | La durabilité de l'article est supérieure à la normale à 1,25x. |
| ItemStackSizeMultiplier | 2.0 | La capacité de la pile est bien supérieure à la normale à 2x. |
| ItemWeightMultiplier | 0.9 | Le poids de l'article est proche de la normale à 2x. 0,9x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.0 | Le gain d'expérience est bien au-dessus de la normale à 2x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 0.75 | La réfrigération est inférieure à la normale à 0,75x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.25 | Le taux de remplissage de l'évier est bien inférieur à la normale à 0,25x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | true | L'eau de l'évier peut être dangereuse. |
| ThirstSpeedMultiplier | 1.9 | Le taux de soif est bien supérieur à la normale à 1,9x. |
| WeatherFrequency | 3 | La fréquence météo est normale. |

<a id="optional-adapter-selection-2"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `stealth_the_floor_heard_you`
- `lethal_lasers`: `standard_safety`

<a id="day-4---pocketed-evidence"></a>
## Jour 4 - Preuves empochées

**ID de profil :** `stealth_pocketed_evidence` **Général conditions :** Conditions favorables (1.63/5) **Signification simple :** Conditions favorables. Pression de combat : La pression standard est la pression principale. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-3"></a>
### Effets principaux

- Précision de l'ennemi : très précise.
- La durabilité de l'article est extrême (2,5x).
- La capacité de la pile est extrême (14x).
- Le gain d'expérience est extrême (2,6x).
- Le taux de remplissage des éviers est extrême (2,5x).

<a id="domain-ratings-3"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (1.99/5) | La pression hostile est proche de la normale. |
| Pression de survie | favorable (1.5/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | favorable (0.99/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (1.93/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.44/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-3"></a>
### Contexte de la rencontre

- Niveau : **rencontres légères**
- Thème : **mobilité du butin de la patrouille silencieuse**
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
| BaseInventorySize | 30 | La taille de l'inventaire de base correspond aux conditions de secours à 30. |
| BonusPerkPoints | 3 | Les points bonus correspondent à des conditions favorables à 3. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.75 | Le taux de continence est inférieur à la normale à 3. 0,75x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.6 | La vitesse de détection des ennemis est supérieure à la normale à 1,6x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,05x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 0.5 | Les dégâts ennemis sur les défenses sont bien inférieurs à la normale à 0,5x. |
| EnemyHealthMultiplier | 1.2 | La résilience de l'ennemi est supérieure à la normale à 1,2x. |
| EnemyPlayerDamageMultiplier | 1.4 | Les dégâts ennemis infligés aux joueurs sont supérieurs à la normale à 1,4x. |
| EnemySpawnRate | 0.4 | La fréquence des ennemis est bien inférieure à la normale à 0,4x. |
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
| ItemStackSizeMultiplier | 14.0 | La capacité de pile est extrême à 14x. |
| ItemWeightMultiplier | 0.3 | Le poids des objets est bien inférieur à la normale à 0,3x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.6 | Le gain d'expérience est extrême à 2,6x. |
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
- `encounter_director`: `stealth_pocketed_evidence`
- `lethal_lasers`: `low_hazard`

<a id="day-5---silent-security-sweep"></a>
## Jour 5 - Balayage de sécurité silencieux

**ID de profil :** `stealth_silent_security_sweep` **Général conditions :** Pression standard (2.21/5) **Signification simple :** Pression standard. Pression de combat : Les conditions exigeantes constituent la principale pression. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-4"></a>
### Effets principaux

- la vitesse de détection des ennemis est extrême (3,8x).
- Précision de l'ennemi : très précise.
- Le gain d'expérience est bien supérieur à la normale (2,4x).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,1x).
- Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale (2,2x).

<a id="domain-ratings-4"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | exigeant (2.92/5) | La pression hostile est élevée ; préparez-vous avant de vous engager. |
| Pression de survie | standard (1.94/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.6/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.17/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.51/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-4"></a>
### Contexte de la rencontre

- Niveau : **rencontres lourdes**
- Thème : **sécurité de la patrouille silencieuse**
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
| BaseInventorySize | 12 | La taille de l'inventaire de base est une pression standard de 12. |
| BonusPerkPoints | 0 | Les points bonus sont une pression standard à 0. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.1 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,1x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 3.8 | La vitesse de détection des ennemis est extrême à 3,8x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.3 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,3x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.5 | La résilience de l'ennemi est supérieure à la normale à 1,5x. |
| EnemyPlayerDamageMultiplier | 2.2 | Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale à 0,5x. 2,2x. |
| EnemySpawnRate | 0.9 | La fréquence des ennemis est proche de la normale à 0,9x. |
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
| ItemStackSizeMultiplier | 2.0 | La capacité de la pile est bien supérieure à la normale à 2x. |
| ItemWeightMultiplier | 0.9 | Le poids de l'article est proche de la normale à 2x. 0,9x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.4 | Le gain d'expérience est bien supérieur à la normale à 2,4x. |
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
- `encounter_director`: `stealth_silent_security_sweep`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---forecast-low-profile"></a>
## Jour 6 - Prévisions : profil bas

**ID de profil :** `stealth_forecast_low_profile` **Général conditions :** Pression standard (2.2/5) **Signification simple :** Pression standard. Pression de combat : La pression standard est la pression principale. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-5"></a>
### Effets principaux

- Précision de l'ennemi : très précise.
- Fréquence météo : très fréquente.
- La vitesse de détection de l'ennemi est bien supérieure à la normale (2,1x).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0,25x).

<a id="domain-ratings-5"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.57/5) | La pression hostile est proche de la normale. |
| Pression de survie | standard (2.1/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | standard (1.83/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.52/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.5/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-5"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **météo de la patrouille silencieuse**
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
| BaseInventorySize | 12 | La taille de l'inventaire de base est une pression standard de 12. |
| BonusPerkPoints | 0 | Les points bonus sont une pression standard à 0. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.25 | La vitesse du cycle jour-nuit est supérieure à la normale à 1,25x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 2.1 | La vitesse de détection des ennemis est bien supérieure à la normale à 2,1x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La perte de durabilité en cas de mort est bien en dessous de la normale à 0,25x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.4 | La résilience ennemie est supérieure à la normale à 1,4x. |
| EnemyPlayerDamageMultiplier | 1.8 | Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale à 1,8x. |
| EnemySpawnRate | 0.6 | La fréquence des ennemis est inférieure à la normale à 0,6x. |
| FatigueSpeedMultiplier | 1.2 | Le taux de fatigue est supérieur à la normale à 1,2x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 1.25 | La détérioration des aliments est supérieure à la normale à 1,25x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.1 | Le taux de faim est proche de la normale à 1,1x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.1 | La durabilité de l'objet est proche de la normale à 1,1x. |
| ItemStackSizeMultiplier | 2.0 | La capacité de la pile est bien supérieure à la normale à 2x. |
| ItemWeightMultiplier | 0.9 | Le poids de l'article est proche de la normale à 2x. 0,9x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 1.9 | Le gain d'expérience est bien supérieur à la normale à 1,9x. |
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
- `encounter_director`: `stealth_forecast_low_profile`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---dark-route-clearance"></a>
## Jour 7 - Dégagement des routes sombres

**ID de profil :** `stealth_dark_route_clearance` **Général conditions :** Pression standard (2.22/5) **Signification simple :** Pression standard. Pression de combat : Les conditions exigeantes constituent la principale pression. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-6"></a>
### Effets principaux

- la vitesse de détection des ennemis est extrême (3,2x).
- Précision de l'ennemi : très précise.
- La capacité de la pile est extrême (3x).
- Le gain d'expérience est extrême (2,6x).
- État jour-nuit : biaisé nocturne.

<a id="domain-ratings-6"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | exigeant (2.93/5) | La pression hostile est élevée ; préparez-vous avant de vous engager. |
| Pression de survie | standard (1.99/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.48/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.33/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.49/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-6"></a>
### Contexte de la rencontre

- Niveau : **rencontres lourdes**
- Thème : **nuit de patrouille silencieuse**
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
| BaseInventorySize | 16 | La taille de l'inventaire de base est dans des conditions favorables à 16. |
| BonusPerkPoints | 0 | Les points bonus sont une pression standard à 0. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.95 | Le taux de continence est proche de la normale à 16. 0,95x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 2 | L'état jour-nuit est biaisé la nuit. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 3.2 | La vitesse de détection des ennemis est extrême à 3,2x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.2 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,2x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.5 | La résilience de l'ennemi est supérieure à la normale à 1,5x. |
| EnemyPlayerDamageMultiplier | 2.1 | Les dégâts ennemis infligés aux joueurs sont bien supérieurs à la normale à 2,1x. |
| EnemySpawnRate | 0.9 | La fréquence des ennemis est proche de la normale à 0,9x. |
| FatigueSpeedMultiplier | 1.5 | Le taux de fatigue est supérieur à la normale à 1,5x. |
| FirstTimeStartingWeapon | 5 | Le démarrage de la fourniture d'armes est dans des conditions favorables à 5. |
| FoodSpoilSpeedMultiplier | 1.0 | La détérioration des aliments est presque normale à 1x. |
| GameDifficulty | 2 | La difficulté du jeu est difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.95 | Le taux de faim est proche de la normale à 0,95x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.5 | La durabilité des objets est supérieure à la normale à 1,5x. |
| ItemStackSizeMultiplier | 3.0 | La capacité de la pile est extrême à 3x. |
| ItemWeightMultiplier | 0.7 | Le poids de l'article est inférieur à la normale à 0,7x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.6 | Le gain d'expérience est extrême à 2,6x. |
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
- `encounter_director`: `stealth_dark_route_clearance`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---unseen-transit"></a>
## Jour 8 - Transit invisible

**ID de profil :** `stealth_unseen_transit` **Général conditions :** Pression standard (1.99/5) **Signification simple :** Pression standard. Pression de combat : Les conditions exigeantes constituent la principale pression. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-7"></a>
### Effets principaux

- La vitesse du cycle jour-nuit est extrême (3x).
- Précision de l'ennemi : très précise.
- la vitesse de détection des ennemis est extrême (2,7x).
- La capacité de la pile est extrême (4x).
- Le gain d'expérience est extrême (2,7x).

<a id="domain-ratings-7"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | exigeant (2.61/5) | La pression hostile est élevée ; préparez-vous avant de vous engager. |
| Pression de survie | favorable (1.42/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | favorable (1.41/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.56/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.47/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-7"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **itinéraire de patrouille silencieuse**
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
| BonusPerkPoints | 0 | Les points bonus sont une pression standard à 0. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.7 | Le taux de continence est inférieur à la normale à 0,7x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 3.0 | La vitesse du cycle jour-nuit est extrême à 0,7x. 3x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 2.7 | La vitesse de détection des ennemis est extrême à 2,7x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.15 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,15x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 0.8 | Les dégâts ennemis sur les défenses sont inférieurs à la normale à 0,8x. |
| EnemyHealthMultiplier | 1.1 | La résilience ennemie est proche de la normale à 1,1x. |
| EnemyPlayerDamageMultiplier | 1.8 | Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale à 1,8x. |
| EnemySpawnRate | 0.8 | La fréquence des ennemis est inférieure à la normale à 0,8x. |
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
| ItemStackSizeMultiplier | 4.0 | Capacité de la pile est extrême à 4x. |
| ItemWeightMultiplier | 0.7 | Le poids de l'article est inférieur à la normale à 0,7x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.7 | Le gain d'expérience est extrême à 2,7x. |
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
- `encounter_director`: `stealth_unseen_transit`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-without-witnesses"></a>
## Jour 9 - Ration sans témoins

**ID de profil :** `stealth_ration_without_witnesses` **Général conditions :** Pression standard (2.38/5) **Signification simple :** Pression standard. Pression de survie : les conditions exigeantes constituent la principale pression. Pression de combat : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez de la nourriture et de l'eau, reposez-vous avant de longs voyages et planifiez des arrêts en toute sécurité.

<a id="main-effects-8"></a>
### Effets principaux

- Précision de l'ennemi : très précise.
- La taille de l'inventaire de base est dans des conditions sévères (10).
- L'eau de l'évier peut être dangereuse.
- Les dégâts des tirs amis sont bien inférieurs à la normale (0,25x).
- La vitesse de détection de l'ennemi est bien supérieure à la normale (2x).

<a id="domain-ratings-8"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (2.44/5) | La pression hostile est proche de la normale. |
| Pression de survie | exigeant (2.96/5) | La faim, la soif, la fatigue ou l'hygiène nécessitent plus d'attention. |
| Pression des ressources | standard (2.26/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.17/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.53/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-8"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **rareté de patrouille silencieuse**
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
| BaseInventorySize | 10 | La taille de l'inventaire de base correspond à des conditions graves à 10. |
| BonusPerkPoints | 0 | Les points bonus sont une pression standard à 0. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.25 | Le taux de continence est supérieur à la normale à 1,25x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 2.0 | La vitesse de détection de l'ennemi est bien supérieure à la normale à 2x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | La perte de durabilité en cas de décès est bien inférieure à la normale à 0,35x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 1.0 | Les dégâts ennemis sur les défenses sont proches de la normale à 1x. |
| EnemyHealthMultiplier | 1.6 | La résilience de l'ennemi est supérieure à la normale à 1,6x. |
| EnemyPlayerDamageMultiplier | 1.9 | Les dégâts ennemis infligés aux joueurs sont bien supérieurs à la normale à 1,9x. |
| EnemySpawnRate | 0.6 | La fréquence des ennemis est inférieure à la normale à 0,6x. |
| FatigueSpeedMultiplier | 1.3 | Le taux de fatigue est supérieur à la normale à 1,3x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 2.0 | La détérioration des aliments est bien au-dessus de la normale à 2x. |
| GameDifficulty | 1 | La difficulté du jeu est standard. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.7 | Le taux de faim est bien au-dessus de la normale à 1,7x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 0.75 | La durabilité des articles est inférieure à la normale à 0,75x. |
| ItemStackSizeMultiplier | 1.0 | La capacité de la pile est proche de la normale à 1x. |
| ItemWeightMultiplier | 1.2 | Le poids de l'objet est supérieur à la normale à 1,2x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 1.9 | Le gain d'expérience est bien supérieur à la normale à 1,9x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 0.5 | La réfrigération est bien inférieure à la normale à 0,5x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.5 | Le taux de remplissage des éviers est bien inférieur à la normale à 0,5x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | true | L'eau de l'évier peut être dangereuse. |
| ThirstSpeedMultiplier | 1.6 | Le taux de soif est supérieur à la normale à 1,6x. |
| WeatherFrequency | 2 | La fréquence météo est occasionnelle. |

<a id="optional-adapter-selection-8"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `stealth_ration_without_witnesses`
- `lethal_lasers`: `standard_safety`

<a id="day-10---quiet-repair-window"></a>
## Jour 10 - Fenêtre de réparation silencieuse

**ID de profil :** `stealth_quiet_repair_window` **Général conditions :** Conditions favorables (1.19/5) **Signification simple :** Conditions favorables. Pression environnementale : Des conditions favorables constituent la principale pression. Pression de combat : Les conditions favorables constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-9"></a>
### Effets principaux

- Les points bonus sont des conditions de soulagement (10).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0x).
- La durabilité de l'article est extrême (3x).
- La capacité de la pile est extrême (10x).

<a id="domain-ratings-9"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | favorable (1.31/5) | La pression hostile est plus légère que la normale. |
| Pression de survie | favorable (1.02/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | favorable (0.9/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | favorable (1.54/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.19/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-9"></a>
### Contexte de la rencontre

- Niveau : **rencontres minimales**
- Thème : **récupération de patrouille silencieuse**
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
| DetectionSpeedMultiplier | 0.8 | La vitesse de détection des ennemis est inférieure à la normale à 0,8x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0x. |
| EnemyAccuracy | 3 | La précision de l'ennemi est précis. |
| EnemyDeployableDamageMultiplier | 0.1 | Les dégâts ennemis sur les défenses sont bien inférieurs à la normale à 0,1x. |
| EnemyHealthMultiplier | 1.0 | La résilience ennemie est proche de la normale à 1x. |
| EnemyPlayerDamageMultiplier | 0.6 | Les dégâts causés par les ennemis aux joueurs sont inférieurs à la normale à 0,6x. |
| EnemySpawnRate | 0.2 | La fréquence des ennemis est bien inférieure à la normale à 0,2x. |
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
| ItemStackSizeMultiplier | 10.0 | La capacité de la pile est extrême à 3x. 10x. |
| ItemWeightMultiplier | 0.4 | Le poids de l'article est bien inférieur à la normale à 0,4x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 3.5 | Le gain d'expérience est extrême à 3,5x. |
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
- `encounter_director`: `stealth_quiet_repair_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---observation-drill"></a>
## Jour 11 - Exercice d'observation

**ID de profil :** `stealth_observation_drill` **Général conditions :** Conditions favorables (1.61/5) **Signification simple :** Conditions favorables. Pression environnementale : la pression standard est la pression principale. Pression de combat : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-10"></a>
### Effets principaux

- Précision de l'ennemi : très précise.
- Les points bonus sont des conditions de soulagement (12).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0x).
- La capacité de la pile est extrême (5x).
- Le gain d'expérience est extrême (4,5x).

<a id="domain-ratings-10"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (1.93/5) | La pression hostile est proche de la normale. |
| Pression de survie | favorable (1.58/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (0.92/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (1.96/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.43/5) | Les règles de mort et de récupération sont indulgentes. |

<a id="encounter-context-10"></a>
### Contexte de la rencontre

- Niveau : **rencontres légères**
- Thème : **entraînement de patrouille silencieuse**
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
| BaseInventorySize | 24 | La taille de l'inventaire de base correspond aux conditions de secours à 24. |
| BonusPerkPoints | 12 | Les points bonus sont des conditions de soulagement à 12. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 0.8 | Le taux de continence est inférieur à la normale à 0,8x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 1.15 | La vitesse du cycle jour-nuit est proche de la normale à 1,15x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 1 | Les peines de mort sont standard. |
| DetectionSpeedMultiplier | 1.6 | La vitesse de détection des ennemis est supérieure à la normale à 1,6x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.0 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 0.4 | Les dégâts causés par l'ennemi aux défenses sont bien inférieurs à la normale à 0,4x. |
| EnemyHealthMultiplier | 1.1 | La résilience ennemie est proche de la normale à 1,1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Les dégâts ennemis infligés aux joueurs sont proches de la normale à 1,1x. |
| EnemySpawnRate | 0.5 | La fréquence des ennemis est bien inférieure à la normale à 0,5x. |
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
| ItemStackSizeMultiplier | 5.0 | La capacité de pile est extrême à 5x. |
| ItemWeightMultiplier | 0.6 | Le poids de l'article est inférieur à la normale à 0,6x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 4.5 | Le gain d'expérience est extrême à 4,5x. |
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
- `encounter_director`: `stealth_observation_drill`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-blind-spot"></a>
## Jour 12 - Black Lab Blind Spot

**ID de profil :** `stealth_black_lab_blind_spot` **Général conditions :** Conditions exigeantes (2.62/5) **Signification simple :** Conditions exigeantes. Pression de combat : Les conditions difficiles constituent la principale pression. Pression de survie : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-11"></a>
### Effets principaux

- la vitesse de détection des ennemis est extrême (3,7x).
- Précision de l'ennemi : très précise.
- Les dégâts ennemis infligés aux joueurs sont extrêmes (3,3x).
- Difficulté du jeu : très difficile.
- Le gain d'expérience est extrême (3,6x).

<a id="domain-ratings-11"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | graves (3.52/5) | La pression hostile est élevée ; préparez-vous avant de vous engager. |
| Pression de survie | standard (2.53/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | standard (1.74/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.22/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | standard (1.79/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-11"></a>
### Contexte de la rencontre

- Niveau : **rencontres extrêmes**
- Thème : **test intensif de patrouille silencieuse**
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
| BaseInventorySize | 12 | La taille de l'inventaire de base est une pression standard de 12. |
| BonusPerkPoints | 2 | Les points bonus sont des conditions favorables à 2. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.15 | Les dégâts des tirs amis sont bien inférieurs à la normale, soit 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 2 | Les peines de mort sont lourdes. |
| DetectionSpeedMultiplier | 3.7 | La vitesse de détection des ennemis est extrême à 3,7x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.4 | La perte de durabilité en cas de décès est bien inférieure à la normale, soit 0,4x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 1.4 | Les dégâts ennemis sur les défenses sont supérieurs à la normale à 1,4x. |
| EnemyHealthMultiplier | 2.3 | La résilience de l'ennemi est bien supérieure à la normale à 2,3x. |
| EnemyPlayerDamageMultiplier | 3.3 | Les dégâts ennemis infligés aux joueurs sont extrêmes, soit 3,3x. |
| EnemySpawnRate | 1.2 | La fréquence des ennemis est supérieure à la normale à 1,1x. 1,2x. |
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
| ItemStackSizeMultiplier | 2.0 | La capacité de la pile est bien supérieure à la normale à 2x. |
| ItemWeightMultiplier | 0.9 | Le poids de l'article est proche de la normale à 2x. 0,9x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 3.6 | Le gain d'expérience est extrême à 3,6x. |
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
- `encounter_director`: `stealth_black_lab_blind_spot`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-silent-shift"></a>
## Jour 13 - Longue période silencieuse

**ID de profil :** `stealth_long_silent_shift` **Général conditions :** Pression standard (2.55/5) **Signification simple :** Pression standard. Pression de survie : les conditions exigeantes constituent la principale pression. Pression de combat : les conditions exigeantes constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez de la nourriture et de l'eau, reposez-vous avant de longs voyages et planifiez des arrêts en toute sécurité.

<a id="main-effects-12"></a>
### Effets principaux

- Précision de l'ennemi : très précise.
- Difficulté du jeu : très difficile.
- La taille de l'inventaire de base est dans des conditions sévères (10).
- L'eau de l'évier peut être dangereuse.
- Le gain d'expérience est bien supérieur à la normale (2,2x).

<a id="domain-ratings-12"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | exigeant (2.75/5) | La pression hostile est élevée ; préparez-vous avant de vous engager. |
| Pression de survie | exigeant (3.28/5) | La faim, la soif, la fatigue ou l'hygiène nécessitent plus d'attention. |
| Pression des ressources | standard (2.12/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.01/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | standard (1.77/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-12"></a>
### Contexte de la rencontre

- Niveau : **rencontres modérées**
- Thème : **endurance de patrouille silencieuse**
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
| BaseInventorySize | 10 | La taille de l'inventaire de base correspond à des conditions graves à 10. |
| BonusPerkPoints | 0 | Les points bonus sont une pression standard à 0. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.35 | Le taux de continence est supérieur à la normale à 1,35x. |
| DamageToAlliesMultiplier | 0.25 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,25x. |
| DayNightCycleSpeedMultiplier | 0.3 | La vitesse du cycle jour-nuit est bien inférieure à la normale à 0,3x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 2 | Les peines de mort sont lourdes. |
| DetectionSpeedMultiplier | 2.0 | La vitesse de détection de l'ennemi est bien supérieure à la normale à 2x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | La perte de durabilité en cas de décès est bien inférieure à la normale à 0,35x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 0.9 | Les dégâts ennemis sur les défenses sont proches de la normale à 0,9x. |
| EnemyHealthMultiplier | 1.7 | La résilience ennemie est bien supérieure à la normale à 1,7x. |
| EnemyPlayerDamageMultiplier | 2.1 | Les dégâts ennemis infligés aux joueurs sont bien supérieurs à la normale à 2,1x. |
| EnemySpawnRate | 0.5 | La fréquence des ennemis est bien inférieure à la normale à 0,5x. |
| FatigueSpeedMultiplier | 1.8 | Le taux de fatigue est bien supérieur à la normale à 1,8x. |
| FirstTimeStartingWeapon | 0 | La fourniture d'armes de départ est une pression standard à 0. |
| FoodSpoilSpeedMultiplier | 1.8 | La détérioration des aliments est bien supérieure à la normale à 1,8x. |
| GameDifficulty | 3 | La difficulté du jeu est très difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.9 | Le taux de faim est bien supérieur à la normale à 1,9x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 0.9 | La durabilité des articles est proche de la normale à 0,9x. |
| ItemStackSizeMultiplier | 2.0 | La capacité de la pile est bien supérieure à la normale à 2x. |
| ItemWeightMultiplier | 1.4 | Le poids de l'article est supérieur à la normale à 1,4x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.2 | Le gain d'expérience est bien au-dessus de la normale à 2,2x. |
| PowerSocketsOffAtNight | true | Les prises de courant s'éteignent la nuit. |
| RadiationDealsDamage | true | Les radiations provoquent des dommages. |
| RefrigerationEffectivenessMultiplier | 0.65 | La réfrigération est inférieure à la normale à 0,65x. |
| ShowDeathMessages | true | Les avis de décès sont affiché. |
| SinkRefillRate | 0.35 | Le taux de remplissage de l'évier est bien inférieur à la normale à 0,35x. |
| StorageByTag | true | L'organisation de stockage étiquetée est activée. |
| StructuralSupportLimit | 0 | La limite de support structurel est la pression standard à 0. |
| TaintedSinkWater | true | L'eau de l'évier peut être dangereuse. |
| ThirstSpeedMultiplier | 1.9 | Le taux de soif est bien supérieur à la normale à 1,9x. |
| WeatherFrequency | 2 | La fréquence météo est occasionnelle. |

<a id="optional-adapter-selection-12"></a>
### Sélection d'adaptateur optionnel

- `ante_up`: `black_lab`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `stealth_long_silent_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---false-empty-hall"></a>
## Jour 14 - Fausse salle vide

**ID de profil :** `stealth_false_empty_hall` **Général conditions :** Conditions favorables (1.34/5) **Signification simple :** Conditions favorables. Pression de combat : La pression standard est la pression principale. Pression de reprise : des conditions favorables constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Utilisez les conditions favorables pour explorer, réapprovisionner, réparer et préparer le prochain redémarrage.

<a id="main-effects-13"></a>
### Effets principaux

- Difficulté du jeu : très difficile.
- La taille de l'inventaire de base correspond aux conditions de soulagement (40).
- Les points bonus sont des conditions de soulagement (12).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0x).
- La perte de durabilité en cas de décès est bien inférieure à la normale (0x).

<a id="domain-ratings-13"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | standard (1.73/5) | La pression hostile est proche de la normale. |
| Pression de survie | favorable (0.86/5) | Les besoins de survie quotidiens sont indulgents. |
| Pression des ressources | soulagement (0.79/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | favorable (1.58/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.67/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-13"></a>
### Contexte de la rencontre

- Niveau : **rencontres minimales**
- Thème : **soulagement de patrouille silencieuse**
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
| DeathPenalties | 2 | Les peines de mort sont lourdes. |
| DetectionSpeedMultiplier | 1.1 | La vitesse de détection de l'ennemi est proche de la normale à 1,1x. |
| DisableResearchMinigame | false | La recherche utilise son mini-jeu normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0x. |
| EnemyAccuracy | 3 | La précision de l'ennemi est précis. |
| EnemyDeployableDamageMultiplier | 0.1 | Les dégâts ennemis sur les défenses sont bien inférieurs à la normale à 0,1x. |
| EnemyHealthMultiplier | 1.0 | La résilience ennemie est proche de la normale à 1x. |
| EnemyPlayerDamageMultiplier | 0.8 | Les dégâts ennemis infligés aux joueurs sont inférieurs à la normale à 0,9x. 0,8x. |
| EnemySpawnRate | 0.3 | La fréquence des ennemis est bien inférieure à la normale à 0,3x. |
| FatigueSpeedMultiplier | 0.35 | Le taux de fatigue est bien inférieur à la normale à 0,35x. |
| FirstTimeStartingWeapon | 6 | Le démarrage de la fourniture d'armes est des conditions favorables à 6. |
| FoodSpoilSpeedMultiplier | 0.25 | La détérioration des aliments est bien en dessous de la normale à 0,25x. |
| GameDifficulty | 3 | La difficulté du jeu est très difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 0.35 | Le taux de faim est bien inférieur à la normale à 0,35x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 6.0 | La durabilité des objets est extrême à 6x. |
| ItemStackSizeMultiplier | 20.0 | La capacité de pile est extrême à 20x. |
| ItemWeightMultiplier | 0.2 | Le poids de l'article est bien en dessous de la normale à 0,2x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 5.1 | Le gain d'expérience est extrême à 5,1x. |
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

- `ante_up`: `black_lab`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `stealth_false_empty_hall`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---detection-audit"></a>
## Jour 15 - Audit de détection

**ID de profil :** `stealth_detection_audit` **Général conditions :** Pression standard (2.26/5) **Signification simple :** Pression standard. Pression de combat : Les conditions exigeantes constituent la principale pression. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-14"></a>
### Effets principaux

- Précision de l'ennemi : très précise.
- Difficulté du jeu : très difficile.
- la vitesse de détection des ennemis est extrême (2,8x).
- Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale (2,4x).
- Les dégâts des tirs amis sont bien inférieurs à la normale (0x).

<a id="domain-ratings-14"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | exigeant (2.94/5) | La pression hostile est élevée ; préparez-vous avant de vous engager. |
| Pression de survie | standard (1.98/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.62/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.17/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | standard (1.76/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-14"></a>
### Contexte de la rencontre

- Niveau : **rencontres lourdes**
- Thème : **précision de patrouille silencieuse**
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
| BaseInventorySize | 12 | La taille de l'inventaire de base est une pression standard de 12. |
| BonusPerkPoints | 0 | Les points bonus sont une pression standard à 0. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.0 | Le taux de continence est proche de la normale à 1x. |
| DamageToAlliesMultiplier | 0.0 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Cycle jour-nuit la vitesse est proche de la normale à 1x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 2 | Les peines de mort sont lourdes. |
| DetectionSpeedMultiplier | 2.8 | La vitesse de détection des ennemis est extrême à 2,8x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.3 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,3x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 0.8 | Les dégâts ennemis sur les défenses sont inférieurs à la normale à 0,8x. |
| EnemyHealthMultiplier | 1.3 | La résilience de l'ennemi est supérieure à la normale à 1,3x. |
| EnemyPlayerDamageMultiplier | 2.4 | Les dégâts ennemis infligés aux joueurs sont bien au-dessus de la normale à 2,4x. |
| EnemySpawnRate | 0.7 | La fréquence des ennemis est inférieure à la normale à 0,7x. |
| FatigueSpeedMultiplier | 1.25 | Le taux de fatigue est supérieur à la normale à 1,25x. |
| FirstTimeStartingWeapon | 4 | Le démarrage de la fourniture d'armes se fait dans des conditions favorables à 4. |
| FoodSpoilSpeedMultiplier | 1.0 | La détérioration des aliments est presque normale à 1x. |
| GameDifficulty | 3 | La difficulté du jeu est très difficile. |
| HardcoreMode | false | Le mode hardcore est désactivé. |
| HomeWorlds | true | Le comportement du monde natal est activé. |
| HostAccessPlayerCorpses | true | L'hôte peut accéder aux cadavres des joueurs pour faciliter la récupération. |
| HungerSpeedMultiplier | 1.0 | Le taux de faim est proche de la normale à 1x. |
| InvisibleRadiation | false | Les radiations ne sont pas rendues invisibles par cette règle. |
| ItemDurabilityMultiplier | 1.0 | La durabilité de l'objet est proche de la normale à 1x. |
| ItemStackSizeMultiplier | 2.0 | La capacité de la pile est bien supérieure à la normale à 2x. |
| ItemWeightMultiplier | 0.9 | Le poids de l'article est proche de la normale à 2x. 0,9x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 2.9 | Le gain d'expérience est extrême à 2,9x. |
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

- `ante_up`: `black_lab`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `stealth_detection_audit`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-silence"></a>
## Jour 16 - Silence expérimental

**ID de profil :** `stealth_experimental_silence` **Général conditions :** Pression standard (2.21/5) **Signification simple :** Pression standard. Pression de combat : Les conditions exigeantes constituent la principale pression. Pression environnementale : la pression standard est le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-15"></a>
### Effets principaux

- Précision de l'ennemi : très précise.
- Difficulté du jeu : très difficile.
- Certains rayonnements peuvent manquer d'avertissement visible.
- Fréquence météo : très fréquente.
- La taille de l'inventaire de base correspond aux conditions de soulagement (42).

<a id="domain-ratings-15"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | exigeant (2.74/5) | La pression hostile est élevée ; préparez-vous avant de vous engager. |
| Pression de survie | standard (2.36/5) | Les besoins quotidiens de survie sont proches de la normale. |
| Pression des ressources | favorable (1.09/5) | Les approvisionnements et les conditions de transport sont favorables. |
| Pression environnementale | standard (2.59/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | favorable (1.67/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-15"></a>
### Contexte de la rencontre

- Niveau : **rencontres extrêmes**
- Thème : **silencieuse patrouille expérimentale**
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
| BaseInventorySize | 42 | La taille de l'inventaire de base correspond aux conditions de soulagement à 42. |
| BonusPerkPoints | 2 | Les points bonus sont des conditions favorables à 2. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.2 | Le taux de continence est supérieur à la normale à 1,2x. |
| DamageToAlliesMultiplier | 0.0 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | La vitesse du cycle jour-nuit est supérieure à la normale à 1,5x. |
| DayNightCycleState | 1 | L'état jour-nuit est biaisé en fonction du jour. |
| DeathPenalties | 2 | Les peines de mort sont lourdes. |
| DetectionSpeedMultiplier | 1.1 | La vitesse de détection de l'ennemi est proche de la normale à 1,1x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.0 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 0.7 | Les dégâts ennemis sur les défenses sont inférieurs à la normale à 0,7x. |
| EnemyHealthMultiplier | 1.9 | La résilience de l'ennemi est bien au-dessus de la normale à 1,9x. |
| EnemyPlayerDamageMultiplier | 1.6 | Les dégâts ennemis infligés aux joueurs sont supérieurs à la normale, soit 1,6x. |
| EnemySpawnRate | 0.8 | La fréquence des ennemis est inférieure à la normale à 0,8x. |
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
| ItemStackSizeMultiplier | 15.0 | La capacité de la pile est extrême à 15x. |
| ItemWeightMultiplier | 0.2 | Le poids de l'article est bien en dessous de la normale à 0,2x. |
| LootRespawnEnabled | true | Le butin peut revenir après la collecte. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 5.6 | Le gain d'expérience est extrême à 5,6x. |
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

- `ante_up`: `black_lab`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `stealth_experimental_silence`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-nonappearance"></a>
## Jour 17 - Non-apparition finale

**ID de profil :** `stealth_final_nonappearance` **Général conditions :** Conditions exigeantes (2.83/5) **Signification simple :** Conditions exigeantes. Pression de combat : Les conditions difficiles constituent la principale pression. Pression de survie : les conditions exigeantes constituent le deuxième facteur le plus important. **Conseil aux joueurs :** Transportez des munitions, gardez un itinéraire de retraite et évitez les combats sans soutien.

<a id="main-effects-16"></a>
### Effets principaux

- Peines de mort : sévères.
- la vitesse de détection des ennemis est extrême (4,4x).
- Précision de l'ennemi : très précise.
- Les dégâts ennemis infligés aux joueurs sont extrêmes (3,8x).
- Difficulté du jeu : très difficile.

<a id="domain-ratings-16"></a>
### Évaluations des domaines

| Zone | Note | Signification |
|---|---|---|
| Pression de combat | graves (3.79/5) | La pression hostile est sévère ; évitez les combats non pris en charge. |
| Pression de survie | exigeant (2.72/5) | La faim, la soif, la fatigue ou l'hygiène nécessitent plus d'attention. |
| Pression des ressources | standard (1.78/5) | Les conditions d'approvisionnement et de transport sont proches de la normale. |
| Pression environnementale | standard (2.55/5) | Les conditions environnementales sont proches de la normale. |
| Pression de récupération | standard (2.0/5) | Les règles de mort et de récupération sont proches de la normale. |

<a id="encounter-context-16"></a>
### Contexte de la rencontre

- Niveau : **rencontres de synthèse**
- Thème : **capstone de patrouille silencieuse**
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
| BaseInventorySize | 12 | La taille de l'inventaire de base est une pression standard de 12. |
| BonusPerkPoints | 2 | Les points bonus sont des conditions favorables à 2. |
| BridgeSupports | 0 | La limite de support du pont est une pression standard à 0. |
| ContinenceSpeedMultiplier | 1.1 | Le taux de continence est proche de la normale à 1,1x. |
| DamageToAlliesMultiplier | 0.1 | Les dégâts des tirs amis sont bien inférieurs à la normale à 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | La vitesse du cycle jour-nuit est supérieure à la normale à 1,45x. |
| DayNightCycleState | 0 | L'état jour-nuit est un cycle normal. |
| DeathPenalties | 3 | Les peines de mort sont sévères. |
| DetectionSpeedMultiplier | 4.4 | La vitesse de détection des ennemis est extrême à 4,4x. |
| DisableResearchMinigame | true | Le contournement de la recherche est activé. |
| DurabilityLossOnDeathMultiplier | 0.5 | La perte de durabilité en cas de mort est bien inférieure à la normale à 0,5x. |
| EnemyAccuracy | 4 | La précision de l'ennemi est très précise. |
| EnemyDeployableDamageMultiplier | 2.0 | Les dégâts ennemis sur les défenses sont bien au-dessus de la normale à 2x. |
| EnemyHealthMultiplier | 2.9 | La résilience ennemie est extrême à 2,9x. |
| EnemyPlayerDamageMultiplier | 3.8 | Dégâts ennemis sur joueurs est extrême à 3,8x. |
| EnemySpawnRate | 1.6 | La fréquence des ennemis est supérieure à la normale à 1,6x. |
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
| ItemStackSizeMultiplier | 3.0 | La capacité de la pile est extrême à 3x. |
| ItemWeightMultiplier | 1.0 | Le poids de l'article est presque normal à 1,15x. 1x. |
| LootRespawnEnabled | false | Le butin collecté ne réapparaît pas. |
| PlayerFurnitureDestruction | false | Les meubles construits par les joueurs sont protégés par cette règle. |
| PlayerXPGainMultiplier | 4.8 | Le gain d'expérience est extrême à 4,8x. |
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
- `encounter_director`: `stealth_final_nonappearance`
- `lethal_lasers`: `overcharged_high_hazard`
