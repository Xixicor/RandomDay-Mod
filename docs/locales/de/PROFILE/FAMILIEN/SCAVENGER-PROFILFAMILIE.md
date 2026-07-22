<a id="randomday---scavenger-family"></a>
# RandomDay - Plünderer Familie

> **Kanonisch-englische Quelle:** [scavenger.md](../../../../profiles/families/scavenger.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Version: `v0.3.16-alpha`

Beuterouten sind profitabel, überfüllt und moralisch unbeaufsichtigt.

**Spielstil:**Beutewege und Gierrisiko **Nachrichtenton:**Witze über die Lieferkette

<a id="17-day-index"></a>
## 17-Tage-Index

| Tag | Profil | Bedingungen | Hauptdruck |
|---:|---|---|---|
| 1 | Lose Inventory Ethics | Standarddruck (1.79/5) | Umweltdruck |
| 2 | Open Floor Acquisition | Günstige Bedingungen (1.28/5) | Umweltdruck |
| 3 | fragwürdige Snacks | Standarddruck (2.08/5) | Überlebensdruck |
| 4 | Supply Führen Sie Dividende durch | Günstige Bedingungen (1.47/5) | Umweltdruck |
| 5 | Sicherheitsbelegprüfung | Standarddruck (1.98/5) | Kampfdruck |
| 6 | Verwitterter Streckenverkauf | Standarddruck (1.95/5) | Umweltdruck |
| 7 | Nachtmarktgenehmigung | Standarddruck (1.98/5) | Kampfdruck |
| 8 | Routenräumungsgebühr | Standarddruck (1.75/5) | Umweltdruck |
| 9 | Ration Arbitrage | Standarddruck (2.07/5) | Überlebensdruck |
| 10 | Stilles Gewinnfenster | Günstige Bedingungen (1.04/5) | Umweltdruck |
| 11 | Trainingsbergung | Günstige Bedingungen (1.47/5) | Umweltdruck |
| 12 | Black Lab Liquidation | Standarddruck (2.43/5) | Kampfdruck |
| 13 | Langstreckeninventar | Standarddruck (2.14/5) | Überlebensdruck |
| 14 | Supply Closet Jackpot | Günstige Bedingungen (1.02/5) | Umweltdruck |
| 15 | Genauigkeitssteuer | Standarddruck (1.92/5) | Kampfdruck |
| 16 | Experimenteller Aufschlag | Standarddruck (2.12/5) | Umweltdruck |
| 17 | Abschlussprüfung der Taschen | Anspruchsvolle Bedingungen (2.68/5) | Kampfdruck |

<a id="day-1---loose-inventory-ethics"></a>
## Tag 1 – Ethik bei losem Inventar

**Profil-ID:** `scavenger_loose_inventory_ethics` **Allgemeine Bedingungen:**Standarddruck(1.79/5) **Einfache Bedeutung:**Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Überlebensdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects"></a>
### Haupteffekte

- Die Stapelkapazität ist extrem (8x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,25x).
- Steckdosen schalten sich nachts ab.
- Beute kann nach dem Einsammeln zurückgegeben werden.

<a id="domain-ratings"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.86/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.9/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.44/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.22/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Beute Routenorientierung**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.07**
- Besondere Eventchance: **2**

<a id="exact-sandbox-settings"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.0 | Die Erkennungsgeschwindigkeit von Feinden ist mit 1x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.0 | Die Widerstandsfähigkeit des Feindes ist bei 1x nahezu normal. |
| EnemyPlayerDamageMultiplier | 1.1 | Der Schaden von Feinden an Spielern ist mit 1,1x nahezu normal. |
| EnemySpawnRate | 0.9 | Die Häufigkeit von Feinden ist mit 0,9x nahezu normal. |
| FatigueSpeedMultiplier | 1.0 | Die Ermüdungsrate ist bei 1x nahezu normal. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.0 | Die Hungerrate ist bei 1x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.5 | Die Haltbarkeit des Gegenstands liegt bei 1,5x über dem Normalwert. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.6 | Gegengewicht liegt mit 0,6x unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.5 | Der Erfahrungsgewinn liegt mit 1,5x über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.0 | Die Durstrate ist mit 1x nahezu normal. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection"></a>
### Optionale Adapterauswahl

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `scavenger_loose_inventory_ethics`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-acquisition"></a>
## Tag 2 – Offene Bodenakquise

**Profil-ID:** `scavenger_open_floor_acquisition` **Allgemeine Bedingungen:** Günstige Konditionen (1.28/5) **Einfache Bedeutung:** Günstige Konditionen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Überlebensdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-1"></a>
### Haupteffekte

- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Die Haltbarkeit der Gegenstände ist extrem (4x).
- Die Stapelkapazität ist extrem (8x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,05x).
- Der feindliche Schaden an der Verteidigung liegt weit unter dem Normalwert (0,1x).

<a id="domain-ratings-1"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.17/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (1.34/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (1.08/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.91/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.2/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-1"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Beuteroutenvorbereitung**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.028**
- Besondere Eventchance: **0**

<a id="exact-sandbox-settings-1"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 26 | Grundinventargröße beträgt Erleichterungsbedingungen bei 26. |
| BonusPerkPoints | 7 | Bonusvorteilspunkte sind Erleichterungsbedingungen bei 7. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.65 | Die Kontinuitätsrate liegt mit 0,65x unter dem Normalwert. |
| DamageToAlliesMultiplier | 0.0 | Der Schaden durch Eigenfeuer liegt mit 0x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 0.9 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 0,9x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 0 | Die Todesstrafe ist minimal. |
| DetectionSpeedMultiplier | 0.65 | Die Geschwindigkeit der Gegnererkennung liegt mit 0,65x unter dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.05 | Der Haltbarkeitsverlust bei Tod liegt mit 0,05x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 0.1 | Der Schaden der Verteidigung durch den Feind liegt mit 0,1x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 0.9 | Die Widerstandsfähigkeit des Feindes ist mit 0,9x nahezu normal. |
| EnemyPlayerDamageMultiplier | 0.7 | Der Schaden von Feinden an Spielern liegt mit 0,7x unter dem Normalwert. |
| EnemySpawnRate | 0.5 | Die Häufigkeit von Feinden liegt mit 0,5x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.65 | Die Ermüdungsrate liegt mit 0,65x unter dem Normalwert. |
| FirstTimeStartingWeapon | 2 | Die anfängliche Waffenversorgung liegt bei Standarddruck bei 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Der Lebensmittelverderb liegt unter dem Normalwert bei 0,75x. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.65 | Die Hungerrate liegt mit 0,65x unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 4.0 | Die Haltbarkeit des Gegenstands ist mit 4x extrem. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.3 | Das Gewicht der Gegenstände liegt mit 0,3x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.1 | Der Erfahrungsgewinn liegt mit 2,1x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.5 | Die Kühlung liegt mit 1,5x über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 2.0 | Die Nachfüllrate des Spülbeckens liegt deutlich über dem Normalwert 2x. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.65 | Die Durstrate liegt mit 0,65x unter dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-1"></a>
### Optionale Adapterauswahl

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `scavenger_open_floor_acquisition`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-3---questionable-snacks"></a>
## Tag 3 – Fragwürdige Snacks

**Profil-ID:** `scavenger_questionable_snacks` **Allgemeine Bedingungen:**Standarddruck(2.08/5) **Einfache Bedeutung:**Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-2"></a>
### Haupteffekte

- Die Stapelkapazität ist extrem (8x).
- Sinkwasser kann unsicher sein.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,25x).
- Spielschwierigkeit: Schwer.

<a id="domain-ratings-2"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.04/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (2.78/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | günstig (1.59/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.22/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-2"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Beuterouten-Bioressource**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.091**
- Besondere Eventchance: **8**

<a id="exact-sandbox-settings-2"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.45 | Kontinenzrate ist über dem Normalwert bei 1,45x. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.1 | Die Geschwindigkeit der Gegnererkennung ist mit 1,1x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.9 | Der Schaden der Feinde an der Verteidigung ist mit 0,9x nahezu normal. |
| EnemyHealthMultiplier | 1.1 | Die Widerstandsfähigkeit des Feindes ist mit 1,1x nahezu normal. |
| EnemyPlayerDamageMultiplier | 1.2 | Der Schaden von Feinden an Spielern liegt mit 1,2x über dem Normalwert. |
| EnemySpawnRate | 0.9 | Die Häufigkeit von Feinden ist mit 0,9x nahezu normal. |
| FatigueSpeedMultiplier | 1.1 | Die Ermüdungsrate ist mit 1,1x nahezu normal. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Der Lebensmittelverderb liegt mit 1,25x über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.1 | Die Hungerrate ist mit 1,1x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.6 | Gegengewicht liegt mit 0,6x unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.8 | Der Erfahrungsgewinn liegt deutlich darüber normal bei 1,8x. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.75 | Die Kühlung liegt mit 0,75x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.25 | Die Nachfüllrate des Spülbeckens liegt mit 0,25x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.6 | Die Durstrate liegt mit 1,6x über dem Normalwert. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-2"></a>
### Optionale Adapterauswahl

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `scavenger_questionable_snacks`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-run-dividend"></a>
## Tag 4 – Supply Run Dividend

**Profil-ID:** `scavenger_supply_run_dividend` **Allgemeine Bedingungen:** Günstige Konditionen (1.47/5) **Einfache Bedeutung:** Günstige Bedingungen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-3"></a>
### Haupteffekte

- Die Haltbarkeit der Gegenstände ist extrem (2,5x).
- Die Stapelkapazität ist extrem (8x).
- Die Nachfüllrate der Senke ist extrem (2,5x).
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,3x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,05x).

<a id="domain-ratings-3"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.51/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.5/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (1.04/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.93/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.44/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-3"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Beuteroute Beutemobilität**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.056**
- Besondere Eventchance: **2**

<a id="exact-sandbox-settings-3"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.75 | Kontinenzrate liegt unter dem Normalwert bei 0,75x. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 0.8 | Die Geschwindigkeit der Gegnererkennung liegt mit 0,8x unter dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.05 | Der Haltbarkeitsverlust bei Tod liegt mit 0,05x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.5 | Der Schaden der Feinde an der Verteidigung liegt mit 0,5x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 0.9 | Die Widerstandsfähigkeit des Feindes ist mit 0,9x nahezu normal. |
| EnemyPlayerDamageMultiplier | 0.9 | Der feindliche Schaden an Spielern ist mit 0,9x nahezu normal. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.75 | Die Ermüdungsrate liegt mit 0,75x unter dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.6 | Der Lebensmittelverderb liegt mit 0,6x unter dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.75 | Die Hungerrate liegt mit 0,75x unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 2.5 | Die Haltbarkeit der Gegenstände ist mit 2,5x extrem. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.2 | Das Gewicht der Gegenstände liegt mit 0,2x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.3 | Erfahrungsgewinn liegt mit 2,3x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.5 | Die Kühlung liegt mit 1,5x über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 2.5 | Die Nachfüllrate des Spülbeckens ist mit 2,5x extrem. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.75 | Die Durstrate liegt mit 0,75x unter dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-3"></a>
### Optionale Adapterauswahl

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `scavenger_supply_run_dividend`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-receipt-check"></a>
## Tag 5 – Überprüfung der Sicherheitsbelege

**Profil-ID:** `scavenger_security_receipt_check` **Allgemeine Bedingungen:**Standarddruck(1.98/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Der Standarddruck ist der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-4"></a>
### Haupteffekte

- Die Stapelkapazität ist extrem (8x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,1x).
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,1x).
- Die Geschwindigkeit der Gegnererkennung liegt weit über dem Normalwert (2x).
- Spielschwierigkeit: Schwer.

<a id="domain-ratings-4"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.39/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.94/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.37/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.17/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.51/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-4"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Beuteroutensicherheit**
- Maximale aktive Gruppen: **2**
- Gemischte Begegnungschance: **0.119**
- Besondere Eventchance: **14**

<a id="exact-sandbox-settings-4"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.1 | Der Schaden durch Eigenfeuer liegt mit 0,1x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 2.0 | Die Geschwindigkeit der Gegnererkennung liegt mit 2x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.3 | Der Haltbarkeitsverlust bei Tod liegt mit 0,3x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.2 | Die Widerstandsfähigkeit des Feindes liegt mit über dem Normalwert 1,2x. |
| EnemyPlayerDamageMultiplier | 1.4 | Der Schaden von Feinden an Spielern liegt mit 1,4x über dem Normalwert. |
| EnemySpawnRate | 1.35 | Die Häufigkeit von Feinden liegt mit 1,35x über dem Normalwert. |
| FatigueSpeedMultiplier | 1.15 | Die Ermüdungsrate ist mit 1,15x nahezu normal. |
| FirstTimeStartingWeapon | 4 | Der Beginn der Waffenversorgung ist ab dem 4. Tag günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.0 | Die Hungerrate ist bei 1x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.6 | Gegengewicht liegt mit 0,6x unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.1 | Der Erfahrungsgewinn liegt mit 2,1x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.0 | Die Durstrate ist mit 1x nahezu normal. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-4"></a>
### Optionale Adapterauswahl

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `scavenger_security_receipt_check`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weathered-route-sale"></a>
## Tag 6 – Verkauf verwitterter Routen

**Profil-ID:** `scavenger_weathered_route_sale` **Allgemeine Bedingungen:**Standarddruck(1.95/5) **Einfache Bedeutung:** Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-5"></a>
### Haupteffekte

- Wetterhäufigkeit: sehr häufig.
- Die Stapelkapazität ist extrem (8x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,25x).
- Spielschwierigkeit: Schwer.

<a id="domain-ratings-5"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.07/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (2.04/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.54/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.52/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-5"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Beuteroutenwetter**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.091**
- Besondere Eventchance: **10**

<a id="exact-sandbox-settings-5"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.25 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 1,25x über dem Normalwert. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.1 | Die Geschwindigkeit der Gegnererkennung ist mit 1,1x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.1 | Die Widerstandsfähigkeit des Feindes ist mit 1,1x nahezu normal. |
| EnemyPlayerDamageMultiplier | 1.1 | Der Schaden von Feinden an Spielern ist mit 1,1x nahezu normal. |
| EnemySpawnRate | 1.0 | Die Häufigkeit von Feinden ist mit 1x nahezu normal. |
| FatigueSpeedMultiplier | 1.0 | Die Ermüdungsrate ist bei 1x nahezu normal. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Der Lebensmittelverderb liegt mit 1,25x über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.1 | Die Hungerrate ist mit 1,1x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.1 | Die Haltbarkeit des Gegenstands liegt mit 1,1x nahezu normal. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.6 | Gegengewicht liegt mit 0,6x unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.7 | Der Erfahrungsgewinn liegt mit 1,7x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.8 | Die Kühlung liegt mit 0,8x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.75 | Spüle auffüllen Die Rate liegt mit 0,75x unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.35 | Die Durstrate liegt mit 1,35x über dem Normalwert. |
| WeatherFrequency | 5 | Die Wetterhäufigkeit ist sehr häufig. |

<a id="optional-adapter-selection-5"></a>
### Optionale Adapterauswahl

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `scavenger_weathered_route_sale`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-market-permit"></a>
## Tag 7 – Nachtmarktgenehmigung

**Profil-ID:** `scavenger_night_market_permit` **Allgemeine Bedingungen:**Standarddruck(1.98/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Der Standarddruck ist der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-6"></a>
### Haupteffekte

- Die Stapelkapazität ist extrem (8x).
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,3x).
- Tag-Nacht-Zustand: nachtabhängig.
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,2x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).

<a id="domain-ratings-6"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.38/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.93/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.31/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.33/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.49/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-6"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Beuteroutenacht**
- Maximale aktive Gruppen: **2**
- Gemischte Begegnungschance: **0.119**
- Besondere Eventchance: **16**

<a id="exact-sandbox-settings-6"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.95 | Die Kontinuitätsrate ist mit 0,95x nahezu normal. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.7 | Die Geschwindigkeit der Gegnererkennung liegt mit 1,7x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.2 | Der Widerstandsverlust bei Tod liegt mit 0,2x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.2 | Die Widerstandsfähigkeit des Feindes liegt mit über dem Normalwert 1,2x. |
| EnemyPlayerDamageMultiplier | 1.3 | Der Schaden von Feinden an Spielern liegt mit 1,3x über dem Normalwert. |
| EnemySpawnRate | 1.45 | Die Häufigkeit von Feinden liegt mit 1,45x über dem Normalwert. |
| FatigueSpeedMultiplier | 1.3 | Die Ermüdungsrate liegt mit 1,3x über dem Normalwert. |
| FirstTimeStartingWeapon | 5 | Die anfängliche Waffenbereitstellung ist mit 5 günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.95 | Die Hungerrate liegt mit 0,95x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.5 | Die Haltbarkeit des Gegenstands liegt bei 1,5x über dem Normalwert. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.5 | Das Gewicht des Gegenstands liegt mit 0,5x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.3 | Erfahrungsgewinn liegt mit 2,3x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.95 | Die Durstrate ist mit 0,95x nahezu normal. |
| WeatherFrequency | 4 | Die Wetterhäufigkeit ist häufig. |

<a id="optional-adapter-selection-6"></a>
### Optionale Adapterauswahl

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `scavenger_night_market_permit`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-clearance-fee"></a>
## Tag 8 – Routenfreigabegebühr

**Profil-ID:** `scavenger_route_clearance_fee` **Allgemeine Bedingungen:**Standarddruck(1.75/5) **Einfache Bedeutung:** Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-7"></a>
### Haupteffekte

- Die Geschwindigkeit des Tag-Nacht-Zyklus ist extrem (3x).
- Die Stapelkapazität ist extrem (8x).
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,3x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,15x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).

<a id="domain-ratings-7"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.07/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.42/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (1.18/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.56/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.47/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-7"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Beuteroutenroute**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.105**
- Besondere Eventchance: **14**

<a id="exact-sandbox-settings-7"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.7 | Die Kontinenzrate liegt mit 0,7x unter dem Normalwert. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 3.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist extrem 3x. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.4 | Die Geschwindigkeit der Feinderkennung liegt mit 1,4x über dem Normalwert. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.15 | Der Haltbarkeitsverlust bei Tod liegt mit 0,15x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.8 | Der Schaden der Feinde an der Verteidigung liegt mit 0,8x unter dem Normalwert. |
| EnemyHealthMultiplier | 0.9 | Die Widerstandsfähigkeit des Feindes ist mit 0,9x nahezu normal. |
| EnemyPlayerDamageMultiplier | 1.1 | Der Schaden von Feinden an Spielern ist mit 1,1x nahezu normal. |
| EnemySpawnRate | 1.2 | Die Häufigkeit von Feinden liegt mit über dem Normalwert 1,2x. |
| FatigueSpeedMultiplier | 0.7 | Die Ermüdungsrate liegt mit 0,7x unter dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.9 | Der Lebensmittelverderb ist mit 0,9x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.7 | Die Hungerrate liegt mit 0,7x unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.4 | Gegenstandsgewicht liegt mit 0,4x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.3 | Erfahrungsgewinn liegt mit 2,3x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.1 | Die Kühlung ist mit 1,1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.5 | Die Nachfüllrate des Spülbeckens liegt mit 1,5x über dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.7 | Die Durstrate liegt mit 0,7x unter dem Normalwert. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-7"></a>
### Optionale Adapterauswahl

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `scavenger_route_clearance_fee`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-arbitrage"></a>
## Tag 9 – Ration Arbitrage

**Profil-ID:** `scavenger_ration_arbitrage` **Allgemeine Bedingungen:**Standarddruck(2.07/5) **Einfache Bedeutung:**Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-8"></a>
### Haupteffekte

- Die Stapelkapazität ist extrem (8x).
- Sinkwasser kann unsicher sein.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Lebensmittelverderb liegt weit über dem Normalwert (2x).
- Steckdosen schalten sich nachts ab.

<a id="domain-ratings-8"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.93/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (2.81/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (1.75/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.17/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.53/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-8"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Beuteroutenknappheit**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.084**
- Besondere Eventchance: **8**

<a id="exact-sandbox-settings-8"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.25 | Die Kontinenzrate liegt mit 1,25x über dem Normalwert. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.1 | Die Geschwindigkeit der Gegnererkennung ist mit 1,1x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.35 | Der Haltbarkeitsverlust im Todesfall liegt mit 0,35x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.2 | Die Widerstandsfähigkeit des Feindes liegt mit über dem Normalwert 1,2x. |
| EnemyPlayerDamageMultiplier | 1.2 | Der Schaden von Feinden an Spielern liegt mit 1,2x über dem Normalwert. |
| EnemySpawnRate | 0.9 | Die Häufigkeit von Feinden ist mit 0,9x nahezu normal. |
| FatigueSpeedMultiplier | 1.3 | Die Ermüdungsrate liegt mit 1,3x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Der Lebensmittelverderb liegt mit 2x deutlich über dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.4 | Hungerrate liegt mit 1,4x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 0.75 | Die Haltbarkeit des Artikels liegt mit 0,75x unter dem Normalwert. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.8 | Das Gewicht des Gegenstands liegt mit unter dem Normalwert 0,8x. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.7 | Der Erfahrungsgewinn liegt mit 1,7x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.5 | Die Kühlung liegt mit 0,5x weit unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.5 | Die Nachfüllrate des Waschbeckens liegt mit 0,5x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.4 | Die Durstrate liegt mit 1,4x über dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-8"></a>
### Optionale Adapterauswahl

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `scavenger_ration_arbitrage`
- `lethal_lasers`: `standard_safety`

<a id="day-10---quiet-profit-window"></a>
## Tag 10 – Ruhiges Gewinnfenster

**Profil-ID:** `scavenger_quiet_profit_window` **Allgemeine Bedingungen:** Günstige Konditionen (1.04/5) **Einfache Bedeutung:** Günstige Bedingungen. Umweltbelastung: Günstige Bedingungen sind die Hauptbelastung. Erholungsdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-9"></a>
### Haupteffekte

- Bonusvorteilspunkte sind Erleichterungsbedingungen (10).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0x).
- Die Haltbarkeit der Gegenstände ist extrem (3x).
- Die Stapelkapazität ist extrem (8x).

<a id="domain-ratings-9"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (0.92/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (1.02/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (0.88/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | günstig (1.54/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.19/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-9"></a>
### Begegnungskontext

- Stufe: **minimale Begegnungen**
- Thema: **Beuteroutenwiederherstellung**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0**
- Besondere Eventchance: **0**

<a id="exact-sandbox-settings-9"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 30 | Basisinventargröße beträgt Erleichterungsbedingungen bei 30. |
| BonusPerkPoints | 10 | Bonusvorteilspunkte sind Erleichterungsbedingungen bei 10. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.45 | Die Kontinuitätsrate liegt weit unter dem Normalwert bei 0,45x. |
| DamageToAlliesMultiplier | 0.0 | Der Schaden durch Eigenfeuer liegt mit 0x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 0.85 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 0,85x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 0 | Die Todesstrafe ist minimal. |
| DetectionSpeedMultiplier | 0.4 | Die Geschwindigkeit der Feinderkennung liegt mit 0,4x weit unter dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 0.1 | Der Schaden der Verteidigung durch den Feind liegt mit 0,1x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 0.7 | Die Widerstandsfähigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.4 | Der Schaden von Feinden an Spielern liegt mit 0,4x weit unter dem Normalwert. |
| EnemySpawnRate | 0.4 | Die Häufigkeit von Feinden liegt mit 0,4x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.45 | Die Ermüdungsrate liegt mit 0,45x weit unter dem Normalwert. |
| FirstTimeStartingWeapon | 2 | Die anfängliche Waffenversorgung liegt bei Standarddruck bei 2. |
| FoodSpoilSpeedMultiplier | 0.4 | Der Verderb von Lebensmitteln liegt mit 0,4x weit unter dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.45 | Die Hungerrate liegt mit 0,45x weit unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 3.0 | Die Haltbarkeit der Gegenstände ist mit 3x extrem. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.2 | Das Gewicht der Gegenstände liegt mit 0,2x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.0 | Der Erfahrungsgewinn ist mit 3x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | falsch | Strahlungsschaden ist deaktiviert. |
| RefrigerationEffectivenessMultiplier | 1.8 | Die Kühlung liegt mit 1,8x deutlich über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 3.0 | Die Nachfüllrate des Waschbeckens ist mit 3x extrem. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.45 | Die Durstrate liegt mit 0,45x weit unter dem Normalwert. |
| WeatherFrequency | 1 | Wetterhäufigkeit ist selten. |

<a id="optional-adapter-selection-9"></a>
### Optionale Adapterauswahl

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `scavenger_quiet_profit_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-salvage"></a>
## Tag 11 – Schulungsrettung

**Profil-ID:** `scavenger_training_salvage` **Allgemeine Bedingungen:** Günstige Konditionen (1.47/5) **Einfache Bedeutung:** Günstige Konditionen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Überlebensdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-10"></a>
### Haupteffekte

- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0x).
- Die Stapelkapazität ist extrem (8x).
- Der Erfahrungsgewinn ist extrem (3,9x).
- Die Haltbarkeit des Gegenstands liegt deutlich über dem Normalwert (2,25x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).

<a id="domain-ratings-10"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.49/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (1.58/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.0/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.96/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.43/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-10"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Beuteroutentraining**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.049**
- Besondere Eventchance: **3**

<a id="exact-sandbox-settings-10"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.8 | Kontinenzrate liegt mit 0,8x unter dem Normalwert. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.15 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1,15x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 0.9 | Die Geschwindigkeit der Gegnererkennung ist mit 0,9x nahezu normal. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.4 | Der feindliche Schaden an der Verteidigung liegt mit 0,4x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 0.9 | Die Widerstandsfähigkeit des Feindes ist mit 0,9x nahezu normal. |
| EnemyPlayerDamageMultiplier | 0.7 | Der Schaden von Feinden an Spielern liegt mit 0,7x unter dem Normalwert. |
| EnemySpawnRate | 0.8 | Die Häufigkeit von Feinden liegt mit 0,8x unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.8 | Die Ermüdungsrate liegt mit 0,8x unter dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.8 | Der Lebensmittelverderb liegt mit 0,8x unter dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.8 | Die Hungerrate liegt mit 0,8x unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 2.25 | Die Haltbarkeit des Gegenstands beträgt deutlich über dem Normalwert bei 2,25x. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.4 | Gegenstandsgewicht liegt mit 0,4x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.9 | Der Erfahrungsgewinn ist mit 3,9x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.3 | Kühlung liegt mit 1,3x über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 2.0 | Die Nachfüllrate des Spülbeckens liegt deutlich über dem Normalwert 2x. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.8 | Die Durstrate liegt mit 0,8x unter dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-10"></a>
### Optionale Adapterauswahl

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `scavenger_training_salvage`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-liquidation"></a>
## Tag 12 – Black Lab Liquidation

**Profil-ID:** `scavenger_black_lab_liquidation` **Allgemeine Bedingungen:**Standarddruck(2.43/5) **Einfache Bedeutung:**Standarddruck. Kampfdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Überlebensdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-11"></a>
### Haupteffekte

- Spielschwierigkeit: sehr schwer.
- Die Stapelkapazität ist extrem (8x).
- Der Erfahrungsgewinn ist extrem (3,1x).
- Sinkwasser kann unsicher sein.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,15x).

<a id="domain-ratings-11"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (3.15/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | Standard (2.53/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.46/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.22/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.79/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-11"></a>
### Begegnungskontext

- Stufe: **extreme Begegnungen**
- Thema: **Beuteroutenschwerer Test**
- Maximale aktive Gruppen: **2**
- Gemischte Begegnungschance: **0.161**
- Besondere Eventchance: **22**

<a id="exact-sandbox-settings-11"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.15 | Der Schaden durch Eigenfeuer liegt mit 0,15x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 2.0 | Die Geschwindigkeit der Gegnererkennung liegt mit 2x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.4 | Der Haltbarkeitsverlust bei Tod liegt mit 0,4x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.4 | Der feindliche Schaden an der Verteidigung liegt mit 1,4x über dem Normalwert. |
| EnemyHealthMultiplier | 1.8 | Die Widerstandsfähigkeit des Feindes liegt mit 1,8x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.1 | Der Schaden von Feinden an Spielern liegt mit 2,1x deutlich über dem Normalwert. |
| EnemySpawnRate | 2.0 | Die Häufigkeit von Feinden liegt mit 2x deutlich über dem Normalwert. |
| FatigueSpeedMultiplier | 1.15 | Die Ermüdungsrate ist mit 1,15x nahezu normal. |
| FirstTimeStartingWeapon | 1 | Die anfängliche Waffenbereitstellung beträgt den Standarddruck bei 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Der Lebensmittelverderb ist bei 1,15x nahezu normal. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.15 | Die Hungerrate ist bei 1,15x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.1 | Die Haltbarkeit des Gegenstands liegt mit 1,1x nahezu normal. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.6 | Gegengewicht liegt mit 0,6x unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.1 | Erfahrungsgewinn ist mit 3,1x extrem. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.85 | Die Kühlung ist mit 0,85x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.75 | Spüle auffüllen Die Rate liegt mit 0,75x unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.15 | Die Durstrate ist mit 1,15x nahezu normal. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-11"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `scavenger_black_lab_liquidation`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-haul-inventory"></a>
## Tag 13 – Langstreckeninventur

**Profil-ID:** `scavenger_long_haul_inventory` **Allgemeine Bedingungen:**Standarddruck(2.14/5) **Einfache Bedeutung:** Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-12"></a>
### Haupteffekte

- Die Stapelkapazität ist extrem (8x).
- Sinkwasser kann unsicher sein.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Spielschwierigkeit: Schwer.
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2x).

<a id="domain-ratings-12"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.07/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (3.02/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | günstig (1.69/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.01/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.53/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-12"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Beuteroutenausdauer**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.098**
- Besondere Eventchance: **7**

<a id="exact-sandbox-settings-12"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.35 | Die Kontinenzrate liegt mit 1,35x über dem Normalwert. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 0.3 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 0,3x weit unter dem Normalwert. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.1 | Die Geschwindigkeit der Gegnererkennung ist mit 1,1x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.35 | Der Haltbarkeitsverlust im Todesfall liegt mit 0,35x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.9 | Der Schaden der Feinde an der Verteidigung ist mit 0,9x nahezu normal. |
| EnemyHealthMultiplier | 1.3 | Die Widerstandsfähigkeit des Feindes liegt mit 1,3x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.3 | Der Schaden von Feinden an Spielern liegt mit 1,3x über dem Normalwert. |
| EnemySpawnRate | 0.8 | Die Häufigkeit von Feinden liegt mit 0,8x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.5 | Die Ermüdungsrate liegt mit 1,5x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Der Lebensmittelverderb liegt mit 1,8x deutlich über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.6 | Die Hungerrate liegt mit 1,6x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 0.9 | Die Haltbarkeit des Artikels liegt mit 0,9x nahezu im Normalbereich. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.9 | Das Gewicht des Gegenstands ist bei nahezu normal 0,9x. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.0 | Der Erfahrungsgewinn beträgt bei 2x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.65 | Die Kühlung liegt bei 0,65x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.35 | Die Nachfüllrate des Spülbeckens liegt bei 0,35x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.6 | Die Durstrate liegt mit 1,6x über dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-12"></a>
### Optionale Adapterauswahl

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `scavenger_long_haul_inventory`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-jackpot"></a>
## Tag 14 – Versorgungsschrank Jackpot

**Profil-ID:** `scavenger_supply_closet_jackpot` **Allgemeine Bedingungen:** Günstige Konditionen (1.02/5) **Einfache Bedeutung:** Günstige Bedingungen. Umweltbelastung: Günstige Bedingungen sind die Hauptbelastung. Erholungsdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-13"></a>
### Haupteffekte

- Grundinventargröße entspricht Erleichterungsbedingungen (40).
- Bonusvorteilspunkte sind Erleichterungsbedingungen (12).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0x).
- Die Haltbarkeit der Gegenstände ist extrem (6x).

<a id="domain-ratings-13"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.0/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (0.86/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | Erleichterung (0.77/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | günstig (1.58/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.19/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-13"></a>
### Begegnungskontext

- Stufe: **minimale Begegnungen**
- Thema: **Erleichterung der Beuteroute**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0**
- Besondere Eventchance: **0**

<a id="exact-sandbox-settings-13"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 40 | Grundbestandsgröße liegt bei Erleichterungsbedingungen bei 40. |
| BonusPerkPoints | 12 | Bonusvorteilspunkte sind Erleichterungsbedingungen bei 12. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.35 | Die Kontinuitätsrate ist weit unter dem Normalwert bei 0,35x. |
| DamageToAlliesMultiplier | 0.0 | Der Schaden durch Eigenfeuer liegt mit 0x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 0 | Die Todesstrafe ist minimal. |
| DetectionSpeedMultiplier | 0.6 | Die Geschwindigkeit der Gegnererkennung ist unter dem Normalwert bei 0,6x. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 0.1 | Der Schaden der Verteidigung durch den Feind liegt mit 0,1x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 0.8 | Die Widerstandsfähigkeit des Feindes liegt mit 0,8x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.5 | Der Schaden von Feinden an Spielern liegt mit 0,5x weit unter dem Normalwert. |
| EnemySpawnRate | 0.4 | Die Häufigkeit von Feinden liegt mit 0,4x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.35 | Die Ermüdungsrate liegt mit 0,35x weit unter dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.25 | Der Lebensmittelverderb liegt weit unter dem Normalwert bei 0,25x. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.35 | Die Hungerrate liegt mit 0,35x weit unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 6.0 | Die Haltbarkeit der Gegenstände ist mit 6x extrem. |
| ItemStackSizeMultiplier | 14 | Die Stapelkapazität ist mit 14x extrem. |
| ItemWeightMultiplier | 0.1 | Das Gewicht des Artikels liegt weit unter dem Normalwert 0,1x. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 4.4 | Der Erfahrungsgewinn ist mit extrem hoch 4,4x. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | falsch | Strahlungsschaden ist deaktiviert. |
| RefrigerationEffectivenessMultiplier | 2.0 | Die Kühlung liegt mit 2x deutlich über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 5.0 | Die Nachfüllrate des Waschbeckens ist mit 5x extrem. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.35 | Die Durstrate liegt mit 0,35x weit unter dem Normalwert. |
| WeatherFrequency | 1 | Wetterhäufigkeit ist selten. |

<a id="optional-adapter-selection-13"></a>
### Optionale Adapterauswahl

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `scavenger_supply_closet_jackpot`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-tax"></a>
## Tag 15 – Genauigkeitssteuer

**Profil-ID:** `scavenger_accuracy_tax` **Allgemeine Bedingungen:**Standarddruck(1.92/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Der Standarddruck ist der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-14"></a>
### Haupteffekte

- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Die Stapelkapazität ist extrem (8x).
- Der Erfahrungsgewinn ist extrem (2,5x).
- Spielschwierigkeit: Schwer.
- Steckdosen schalten sich nachts ab.

<a id="domain-ratings-14"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.2/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.98/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.38/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.17/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.51/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-14"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Präzision der Beuteroute**
- Maximale aktive Gruppen: **2**
- Gemischte Begegnungschance: **0.119**
- Besondere Eventchance: **14**

<a id="exact-sandbox-settings-14"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.0 | Der Schaden durch Eigenfeuer liegt mit 0x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.5 | Die Erkennungsgeschwindigkeit von Feinden liegt mit 1,5x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.3 | Der Haltbarkeitsverlust bei Tod liegt mit 0,3x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.8 | Der Schaden der Feinde an der Verteidigung liegt mit 0,8x unter dem Normalwert. |
| EnemyHealthMultiplier | 1.0 | Die Widerstandsfähigkeit des Feindes ist bei 1x nahezu normal. |
| EnemyPlayerDamageMultiplier | 1.5 | Der Schaden von Feinden an Spielern liegt mit 1,5x über dem Normalwert. |
| EnemySpawnRate | 1.05 | Die Gegnerhäufigkeit ist mit 1,05x nahezu normal. |
| FatigueSpeedMultiplier | 1.25 | Die Ermüdungsrate liegt mit 1,25x über dem Normalwert. |
| FirstTimeStartingWeapon | 4 | Der Beginn der Waffenversorgung ist ab dem 4. Tag günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.0 | Die Hungerrate ist bei 1x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.0 | Die Haltbarkeit des Gegenstands liegt mit 1x nahezu normal. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.6 | Gegengewicht liegt mit 0,6x unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.5 | Der Erfahrungsgewinn ist mit 2,5x extrem. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.0 | Die Durstrate ist mit 1x nahezu normal. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-14"></a>
### Optionale Adapterauswahl

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `scavenger_accuracy_tax`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-markup"></a>
## Tag 16 – Experimentell Markup

**Profil-ID:** `scavenger_experimental_markup` **Allgemeine Bedingungen:**Standarddruck(2.12/5) **Einfache Bedeutung:** Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-15"></a>
### Haupteffekte

- Spielschwierigkeit: sehr schwer.
- Bei manchen Strahlungen fehlt möglicherweise eine sichtbare Warnung.
- Wetterhäufigkeit: sehr häufig.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0x).

<a id="domain-ratings-15"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.45/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (2.36/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.14/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.59/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.67/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-15"></a>
### Begegnungskontext

- Stufe: **extreme Begegnungen**
- Thema: **experimentelle Beuteroute**
- Maximale aktive Gruppen: **2**
- Gemischte Begegnungschance: **0.154**
- Besondere Eventchance: **20**

<a id="exact-sandbox-settings-15"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.2 | Kontinenzrate liegt mit 1,2x über dem Normalwert. |
| DamageToAlliesMultiplier | 0.0 | Der Schaden durch Eigenfeuer liegt mit 0x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.5 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 1,5x über dem Normalwert. |
| DayNightCycleState | 1 | Der Tag-Nacht-Zustand ist tagabhängig. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 0.6 | Die Geschwindigkeit der Gegnererkennung ist unter dem Normalwert bei 0,6x. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.7 | Der Schaden der Verteidigung durch Feinde liegt mit 0,7x unter dem Normalwert. |
| EnemyHealthMultiplier | 1.5 | Die Widerstandsfähigkeit von Feinden liegt mit 1,5x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.0 | Der Schaden von Feinden an Spielern ist bei 1x nahezu normal. |
| EnemySpawnRate | 1.3 | Die Häufigkeit von Feinden liegt mit 1,3x über dem Normalwert. |
| FatigueSpeedMultiplier | 0.8 | Die Ermüdungsrate liegt mit 0,8x unter dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.4 | Der Verderb von Lebensmitteln liegt mit 0,4x weit unter dem Normalwert. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.8 | Die Hungerrate liegt mit 0,8x unter dem Normalwert. |
| InvisibleRadiation | wahr | Bei manchen Strahlungen fehlt möglicherweise eine sichtbare Warnung. |
| ItemDurabilityMultiplier | 5.0 | Die Haltbarkeit des Gegenstands ist mit 5x extrem. |
| ItemStackSizeMultiplier | 8 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.1 | Das Gewicht des Artikels liegt weit unter dem Normalwert 0,1x. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 5.0 | Der Erfahrungsgewinn ist mit 5x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 2.0 | Die Kühlung liegt mit 2x deutlich über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.0 | Die Auffüllrate des Waschbeckens liegt bei 0x weit unter dem Normalwert. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.2 | Die Durstrate liegt über dem Normalwert 1,2x. |
| WeatherFrequency | 5 | Die Wetterhäufigkeit ist sehr häufig. |

<a id="optional-adapter-selection-15"></a>
### Optionale Adapterauswahl

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `scavenger_experimental_markup`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-audit-of-pockets"></a>
## Tag 17 – Abschlussprüfung der Taschen

**Profil-ID:** `scavenger_final_audit_of_pockets` **Allgemeine Bedingungen:** Anspruchsvolle Bedingungen (2.68/5) **Einfache Bedeutung:** Anspruchsvolle Bedingungen. Kampfdruck: Schwere Bedingungen sind der Hauptdruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-16"></a>
### Haupteffekte

- Spielschwierigkeit: sehr schwer.
- Wetterhäufigkeit: sehr häufig.
- Die Häufigkeit von Feinden ist extrem (2,6x).
- Der feindliche Schaden an Spielern liegt deutlich über dem Normalwert (2,4x).
- Die Stapelkapazität ist extrem (14x).

<a id="domain-ratings-16"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | schwerwiegend (3.53/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | anspruchsvolle (2.72/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | günstig (1.59/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.55/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.81/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-16"></a>
### Begegnungskontext

- Stufe: **Capstone-Begegnungen**
- Thema: **Abschlussstein der Beuteroute**
- Maximale aktive Gruppen: **2**
- Gemischte Begegnungschance: **0.196**
- Besondere Eventchance: **30**

<a id="exact-sandbox-settings-16"></a>
### Genaue Sandbox-Einstellungen

| Einstellung | Rohwert | Übersetzte Bedeutung |
|---|---:|---|
| AllowCharacterReset | wahr | Zeichenrücksetzung bleibt verfügbar. |
| AllowIronMode | falsch | Eisenmodus ist deaktiviert. |
| AllowPagers | wahr | Pager sind verfügbar. |
| AllowRecipeSharing | wahr | Rezeptfreigabe ist verfügbar. |
| AllowTransmog | wahr | Anpassung des Aussehens ist verfügbar. |
| BaseInventorySize | 18 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 18. |
| BonusPerkPoints | 4 | Bonusvorteilspunkte gibt es zu günstigen Konditionen bei 4. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.1 | Die Kontinenzrate ist mit 1,1x nahezu normal. |
| DamageToAlliesMultiplier | 0.1 | Der Schaden durch Eigenfeuer liegt mit 0,1x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.45 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 1,45x über dem Normalwert. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 2.3 | Die Geschwindigkeit der Feinderkennung liegt mit 2,3x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.5 | Der Haltbarkeitsverlust bei Tod liegt mit 0,5x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 2.0 | Der feindliche Schaden an der Verteidigung liegt mit 2x deutlich über dem Normalwert. |
| EnemyHealthMultiplier | 2.3 | Die Widerstandsfähigkeit der Feinde liegt mit 2,3x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.4 | Der Schaden von Feinden an Spielern liegt mit 2,4x deutlich über dem Normalwert. |
| EnemySpawnRate | 2.6 | Die Häufigkeit der Feinde ist mit 2,6x extrem. |
| FatigueSpeedMultiplier | 1.25 | Die Ermüdungsrate liegt mit 1,25x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Lebensmittelverderb ist mit 1,6x über dem Normalwert. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.35 | Die Hungerrate ist mit 1,35x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.0 | Die Haltbarkeit des Gegenstands liegt mit 1x nahezu normal. |
| ItemStackSizeMultiplier | 14 | Die Stapelkapazität ist mit 14x extrem. |
| ItemWeightMultiplier | 0.7 | Das Gewicht des Artikels liegt mit 0,7x unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 4.6 | Der Erfahrungsgewinn ist extrem 4,6x. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.6 | Die Kühlung liegt mit 0,6x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.5 | Die Nachfüllrate des Waschbeckens liegt mit 0,5x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.35 | Die Durstrate liegt mit 1,35x über dem Normalwert. |
| WeatherFrequency | 5 | Die Wetterhäufigkeit ist sehr häufig. |

<a id="optional-adapter-selection-16"></a>
### Optionale Adapterauswahl

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `scavenger_final_audit_of_pockets`
- `lethal_lasers`: `overcharged_high_hazard`
