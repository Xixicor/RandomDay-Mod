<a id="randomday---nightmare-family"></a>
# RandomDay - Albtraumfamilie

> **Kanonisch-englische Quelle:** [nightmare.md](../../../../profiles/families/nightmare.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Version: `v0.3.16-alpha`

Dunkelheit, Schrecken, seltene schwere Drohungen und stille Fehler.

**Spielstil:** dunkler Horror und seltene schwere Bedrohungen **Nachrichtenton:** ausdruckslose Horrorverwaltung

<a id="17-day-index"></a>
## 17-Tage-Index

| Tag | Profil | Bedingungen | Hauptdruck |
|---:|---|---|---|
| 1 | Sanft beleuchteter Fehler | Standarddruck (2.03/5) | Umweltdruck |
| 2 | Open Floor Dread | Günstige Bedingungen (1.43/5) | Umweltdruck |
| 3 | Wasser im Dunkeln | Standarddruck (2.35/5) | Überlebensdruck |
| 4 | Supply Closet Breathing | Günstige Bedingungen (1.62/5) | Umweltdruck |
| 5 | Sicherheit unter dem Bett | Standarddruck (2.27/5) | Kampfdruck |
| 6 | Wetter mit Zähnen | Standarddruck (2.21/5) | Umweltdruck |
| 7 | Lichter für immer aus | Standarddruck (2.23/5) | Kampfdruck |
| 8 | Lauf nicht laut los | Standarddruck (1.99/5) | Umweltdruck |
| 9 | Rationen für das Ding | Standarddruck (2.38/5) | Überlebensdruck |
| 10 | Erholung hinter einer Tür | Günstige Bedingungen (1.15/5) | Umweltdruck |
| 11 | Training im Dunkeln | Günstige Bedingungen (1.63/5) | Umweltdruck |
| 12 | Black Lab Nightmare Review | Anspruchsvolle Bedingungen (2.75/5) | Kampfdruck |
| 13 | Long Shift After Midnight | Standarddruck (2.56/5) | Überlebensdruck |
| 14 | False Morning | Günstige Bedingungen (1.3/5) | Umweltdruck |
| 15 | Accuracy of Shadows | Standarddruck (2.29/5) | Kampfdruck |
| 16 | Experimentelle Angst | Standarddruck (2.33/5) | Umweltdruck |
| 17 | Final Nightmare Practical | Anspruchsvolle Bedingungen (2.99/5) | Kampfdruck |

<a id="day-1---softly-lit-mistake"></a>
## Tag 1 – Sanft beleuchteter Fehler

**Profil-ID:** `nightmare_softly_lit_mistake` **Allgemeine Bedingungen:**Standarddruck(2.03/5) **Einfache Bedeutung:** Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects"></a>
### Haupteffekte

- Tag-Nacht-Zustand: nachtabhängig.
- Gegnergenauigkeit: genau.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,25x).
- Stapelkapazität liegt deutlich über dem Normalwert (2x).

<a id="domain-ratings"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.25/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.99/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | Standard (1.71/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.42/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Alptraumorientierung**
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
| BaseInventorySize | 12 | Grundinventargröße ist Standarddruck bei 12. |
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.5 | Die Erkennungsgeschwindigkeit von Feinden liegt mit 1,5x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.6 | Die Widerstandsfähigkeit des Feindes liegt mit 1,6x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.8 | Der feindliche Schaden an Spielern liegt mit 1,8x deutlich über dem Normalwert. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.1 | Die Ermüdungsrate ist mit 1,1x nahezu normal. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.1 | Die Hungerrate ist mit 1,1x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.5 | Die Haltbarkeit des Gegenstands liegt bei 1,5x über dem Normalwert. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.9 | Das Gewicht des Gegenstands ist bei nahezu normal 0,9x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.9 | Der Erfahrungsgewinn liegt mit 1,9x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.1 | Die Durstrate ist mit 1,1x nahezu normal. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection"></a>
### Optionale Adapterauswahl

- `ante_up`: `standard`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_softly_lit_mistake`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-dread"></a>
## Tag 2 – Open Floor Dread

**Profil-ID:** `nightmare_open_floor_dread` **Allgemeine Bedingungen:** Günstige Konditionen (1.43/5) **Einfache Bedeutung:** Günstige Bedingungen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-1"></a>
### Haupteffekte

- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Die Haltbarkeit der Gegenstände ist extrem (4x).
- Die Stapelkapazität ist extrem (8x).
- Der Erfahrungsgewinn ist extrem (2,7x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,05x).

<a id="domain-ratings-1"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.46/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (1.4/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (1.08/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.11/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.2/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-1"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Albtraum-Vorbereitung**
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
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 0 | Die Todesstrafe ist minimal. |
| DetectionSpeedMultiplier | 1.0 | Die Erkennungsgeschwindigkeit von Feinden ist mit 1x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.05 | Der Haltbarkeitsverlust bei Tod liegt mit 0,05x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.1 | Der Schaden der Verteidigung durch den Feind liegt mit 0,1x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.3 | Die Widerstandsfähigkeit des Feindes liegt mit 1,3x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.1 | Der Schaden von Feinden an Spielern ist mit 1,1x nahezu normal. |
| EnemySpawnRate | 0.4 | Die Häufigkeit von Feinden liegt mit 0,4x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.7 | Die Ermüdungsrate liegt mit 0,7x unter dem Normalwert. |
| FirstTimeStartingWeapon | 2 | Die anfängliche Waffenversorgung liegt bei Standarddruck bei 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Der Lebensmittelverderb liegt unter dem Normalwert bei 0,75x. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.7 | Die Hungerrate liegt mit 0,7x unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 4.0 | Die Haltbarkeit des Gegenstands ist mit 4x extrem. |
| ItemStackSizeMultiplier | 8.0 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.5 | Das Gewicht des Gegenstands liegt mit 0,5x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.7 | Der Erfahrungsgewinn ist mit 2,7x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.5 | Die Kühlung liegt mit 1,5x über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 2.0 | Die Nachfüllrate des Spülbeckens liegt deutlich über dem Normalwert 2x. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.7 | Die Durstrate liegt mit 0,7x unter dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-1"></a>
### Optionale Adapterauswahl

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `nightmare_open_floor_dread`
- `lethal_lasers`: `low_hazard`

<a id="day-3---water-in-the-dark"></a>
## Tag 3 – Wasser im Dunkeln

**Profil-ID:** `nightmare_water_in_the_dark` **Allgemeine Bedingungen:**Standarddruck(2.35/5) **Einfache Bedeutung:** Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-2"></a>
### Haupteffekte

- Sinkwasser kann unsicher sein.
- Tag-Nacht-Zustand: nachtabhängig.
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,2x).
- Gegnergenauigkeit: genau.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).

<a id="domain-ratings-2"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.43/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (3.05/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (1.86/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.42/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-2"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Albtraum-Bioressource**
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
| BaseInventorySize | 12 | Grundinventargröße ist Standarddruck bei 12. |
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.45 | Kontinenzrate ist über dem Normalwert bei 1,45x. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.6 | Die Geschwindigkeit der Feinderkennung liegt mit über dem Normalwert 1,6x. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.9 | Der Schaden der Feinde an der Verteidigung ist mit 0,9x nahezu normal. |
| EnemyHealthMultiplier | 1.7 | Die Widerstandsfähigkeit des Feindes liegt mit 1,7x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.0 | Der Schaden der Spieler durch Feinde liegt mit 2x deutlich über dem Normalwert. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.3 | Die Ermüdungsrate liegt mit 1,3x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Der Lebensmittelverderb liegt mit 1,25x über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.4 | Hungerrate liegt mit 1,4x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.9 | Das Gewicht des Gegenstands ist bei nahezu normal 0,9x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.2 | Der Erfahrungsgewinn liegt mit 2,2x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.75 | Die Kühlung liegt mit 0,75x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.25 | Die Nachfüllrate des Spülbeckens liegt mit 0,25x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 2.0 | Die Durstrate liegt mit 2x deutlich über dem Normalwert. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-2"></a>
### Optionale Adapterauswahl

- `ante_up`: `biohazard`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_water_in_the_dark`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-closet-breathing"></a>
## Tag 4 – Schrankatmung versorgen

**Profil-ID:** `nightmare_supply_closet_breathing` **Allgemeine Bedingungen:** Günstige Konditionen (1.62/5) **Einfache Bedeutung:** Günstige Konditionen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-3"></a>
### Haupteffekte

- Die Haltbarkeit der Gegenstände ist extrem (2,5x).
- Die Stapelkapazität ist extrem (14x).
- Der Erfahrungsgewinn ist extrem (2,9x).
- Die Nachfüllrate der Senke ist extrem (2,5x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,05x).

<a id="domain-ratings-3"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.85/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.56/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (0.99/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.13/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.44/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-3"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Albtraum-Beutemobilität**
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
| BaseInventorySize | 30 | Basisinventargröße beträgt Erleichterungsbedingungen bei 30. |
| BonusPerkPoints | 3 | Bonusvorteilspunkte sind günstige Bedingungen bei 3. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.75 | Kontinenzrate liegt unter dem Normalwert bei 0,75x. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.2 | Die Geschwindigkeit der Gegnererkennung liegt mit 1,2x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.05 | Der Haltbarkeitsverlust bei Tod liegt mit 0,05x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.5 | Der Schaden der Feinde an der Verteidigung liegt mit 0,5x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.4 | Die Widerstandsfähigkeit des Feindes liegt mit 1,4x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.4 | Der Schaden von Feinden an Spielern liegt mit 1,4x über dem Normalwert. |
| EnemySpawnRate | 0.5 | Die Häufigkeit von Feinden liegt mit 0,5x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.8 | Die Ermüdungsrate liegt mit 0,8x unter dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.6 | Der Lebensmittelverderb liegt mit 0,6x unter dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.8 | Die Hungerrate liegt mit 0,8x unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 2.5 | Die Haltbarkeit der Gegenstände ist mit 2,5x extrem. |
| ItemStackSizeMultiplier | 14.0 | Die Stapelkapazität ist mit 14x extrem. |
| ItemWeightMultiplier | 0.3 | Das Gewicht der Gegenstände liegt mit 0,3x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.9 | Der Erfahrungsgewinn ist mit 2,9x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.5 | Die Kühlung liegt mit 1,5x über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 2.5 | Die Nachfüllrate des Spülbeckens ist mit 2,5x extrem. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.8 | Die Durstrate liegt mit 0,8x unter dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-3"></a>
### Optionale Adapterauswahl

- `ante_up`: `loot`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_supply_closet_breathing`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-under-the-bed"></a>
## Tag 5 – Sicherheit unter dem Bett

**Profil-ID:** `nightmare_security_under_the_bed` **Allgemeine Bedingungen:**Standarddruck(2.27/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-4"></a>
### Haupteffekte

- Die Geschwindigkeit der Feinderkennung ist extrem (3x).
- Der Erfahrungsgewinn ist extrem (2,7x).
- Der feindliche Schaden an Spielern liegt deutlich über dem Normalwert (2,3x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,1x).
- Tag-Nacht-Zustand: nachtabhängig.

<a id="domain-ratings-4"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.88/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | Standard (2.14/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.66/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.37/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.51/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-4"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Albtraum-Sicherheit**
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
| BaseInventorySize | 12 | Grundinventargröße ist Standarddruck bei 12. |
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.1 | Der Schaden durch Eigenfeuer liegt mit 0,1x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 3.0 | Die Geschwindigkeit der Gegnererkennung ist mit 3x extrem. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.3 | Der Haltbarkeitsverlust bei Tod liegt mit 0,3x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.8 | Die Widerstandsfähigkeit des Feindes liegt mit 1,8x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.3 | Der Schaden des Gegners an Spielern liegt mit 2,3x deutlich über dem Normalwert. |
| EnemySpawnRate | 1.1 | Die Häufigkeit von Feinden ist bei 1,1x nahezu normal. |
| FatigueSpeedMultiplier | 1.4 | Die Ermüdungsrate liegt mit 1,4x über dem Normalwert. |
| FirstTimeStartingWeapon | 4 | Der Beginn der Waffenversorgung ist ab dem 4. Tag günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.2 | Die Hungerrate liegt über dem Normalwert normal bei 1,2x. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.9 | Das Gewicht des Gegenstands ist bei nahezu normal 0,9x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.7 | Der Erfahrungsgewinn ist mit 2,7x extrem. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.2 | Die Durstrate liegt über dem Normalwert 1,2x. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-4"></a>
### Optionale Adapterauswahl

- `ante_up`: `security`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_security_under_the_bed`
- `lethal_lasers`: `high_hazard`

<a id="day-6---weather-with-teeth"></a>
## Tag 6 – Wetter mit Zähnen

**Profil-ID:** `nightmare_weather_with_teeth` **Allgemeine Bedingungen:**Standarddruck(2.21/5) **Einfache Bedeutung:** Standarddruck. Umweltbelastung: Anspruchsvolle Bedingungen sind die Hauptbelastung. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-5"></a>
### Haupteffekte

- Wetterhäufigkeit: sehr häufig.
- Tag-Nacht-Zustand: nachtabhängig.
- Gegnergenauigkeit: genau.
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,1x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).

<a id="domain-ratings-5"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.45/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (2.26/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | Standard (1.81/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | anspruchsvolle (2.72/5) | Strom-, Wetter-, Wasser- oder Strahlungsbedingungen sind ungeklärt. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-5"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Albtraumwetter**
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
| BaseInventorySize | 12 | Grundinventargröße ist Standarddruck bei 12. |
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.25 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 1,25x über dem Normalwert. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.6 | Die Geschwindigkeit der Feinderkennung liegt mit über dem Normalwert 1,6x. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.6 | Die Widerstandsfähigkeit des Feindes liegt mit 1,6x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.9 | Der feindliche Schaden an Spielern liegt mit 1,9x deutlich über dem Normalwert. |
| EnemySpawnRate | 0.8 | Die Häufigkeit von Feinden liegt mit 0,8x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.3 | Die Ermüdungsrate liegt mit 1,3x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Der Lebensmittelverderb liegt mit 1,25x über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.3 | Die Hungerrate liegt mit 1,3x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.1 | Die Haltbarkeit des Gegenstands liegt mit 1,1x nahezu normal. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.9 | Das Gewicht des Gegenstands ist bei nahezu normal 0,9x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.1 | Der Erfahrungsgewinn liegt mit 2,1x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.8 | Die Kühlung liegt mit 0,8x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.75 | Spüle auffüllen Die Rate liegt mit 0,75x unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.6 | Die Durstrate liegt mit 1,6x über dem Normalwert. |
| WeatherFrequency | 5 | Die Wetterhäufigkeit ist sehr häufig. |

<a id="optional-adapter-selection-5"></a>
### Optionale Adapterauswahl

- `ante_up`: `weather`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_weather_with_teeth`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---lights-out-forever"></a>
## Tag 7 – Für immer Licht aus

**Profil-ID:** `nightmare_lights_out_forever` **Allgemeine Bedingungen:**Standarddruck(2.23/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-6"></a>
### Haupteffekte

- Die Geschwindigkeit der Feinderkennung ist extrem (2,5x).
- Die Stapelkapazität ist extrem (3x).
- Der Erfahrungsgewinn ist extrem (2,9x).
- Tag-Nacht-Zustand: nachtabhängig.
- Der feindliche Schaden an Spielern liegt deutlich über dem Normalwert (2,2x).

<a id="domain-ratings-6"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.82/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | Standard (2.18/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.54/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.33/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.49/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-6"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Albtraumnacht**
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
| BaseInventorySize | 16 | Die Basisinventargröße liegt bei günstigen Bedingungen bei 16. |
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.95 | Die Kontinuitätsrate ist mit 0,95x nahezu normal. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 2.5 | Die Geschwindigkeit der Gegnererkennung ist mit 2,5x extrem. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.2 | Der Widerstandsverlust bei Tod liegt mit 0,2x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.8 | Die Widerstandsfähigkeit des Feindes liegt mit 1,8x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.2 | Der feindliche Schaden an Spielern liegt deutlich über dem Normalwert bei 2,2x. |
| EnemySpawnRate | 1.1 | Die Häufigkeit von Feinden ist bei 1,1x nahezu normal. |
| FatigueSpeedMultiplier | 1.6 | Die Ermüdungsrate liegt mit 1,6x über dem Normalwert. |
| FirstTimeStartingWeapon | 5 | Die anfängliche Waffenbereitstellung ist mit 5 günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.2 | Die Hungerrate liegt über dem Normalwert normal bei 1,2x. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.5 | Die Haltbarkeit des Gegenstands liegt bei 1,5x über dem Normalwert. |
| ItemStackSizeMultiplier | 3.0 | Die Stapelkapazität ist mit 3x extrem. |
| ItemWeightMultiplier | 0.7 | Das Gewicht des Artikels liegt mit 0,7x unter dem Normalwert. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.9 | Der Erfahrungsgewinn ist mit 2,9x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.2 | Die Durstrate liegt über dem Normalwert 1,2x. |
| WeatherFrequency | 4 | Die Wetterhäufigkeit ist häufig. |

<a id="optional-adapter-selection-6"></a>
### Optionale Adapterauswahl

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_lights_out_forever`
- `lethal_lasers`: `high_hazard`

<a id="day-8---do-not-run-loudly"></a>
## Tag 8 – Nicht laut rennen

**Profil-ID:** `nightmare_do_not_run_loudly` **Allgemeine Bedingungen:**Standarddruck(1.99/5) **Einfache Bedeutung:** Standarddruck. Umweltbelastung: Anspruchsvolle Bedingungen sind die Hauptbelastung. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-7"></a>
### Haupteffekte

- Die Geschwindigkeit des Tag-Nacht-Zyklus ist extrem (3x).
- Die Stapelkapazität ist extrem (4x).
- Der Erfahrungsgewinn ist extrem (3x).
- Tag-Nacht-Zustand: nachtabhängig.
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,15x).

<a id="domain-ratings-7"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.46/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.54/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.41/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | anspruchsvolle (2.76/5) | Strom-, Wetter-, Wasser- oder Strahlungsbedingungen sind ungeklärt. |
| Erholungsdruck | günstig (1.47/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-7"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Albtraumroute**
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
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.7 | Die Kontinenzrate liegt mit 0,7x unter dem Normalwert. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 3.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist extrem 3x. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 2.1 | Die Geschwindigkeit der Gegnererkennung liegt deutlich über dem Normalwert 2,1x. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.15 | Der Haltbarkeitsverlust bei Tod liegt mit 0,15x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.8 | Der Schaden der Feinde an der Verteidigung liegt mit 0,8x unter dem Normalwert. |
| EnemyHealthMultiplier | 1.3 | Die Widerstandsfähigkeit des Feindes liegt mit 1,3x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.9 | Der feindliche Schaden an Spielern liegt mit 1,9x deutlich über dem Normalwert. |
| EnemySpawnRate | 0.9 | Die Häufigkeit von Feinden ist mit 0,9x nahezu normal. |
| FatigueSpeedMultiplier | 0.8 | Die Ermüdungsrate liegt mit 0,8x unter dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.9 | Der Lebensmittelverderb ist mit 0,9x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.8 | Die Hungerrate liegt mit 0,8x unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 4.0 | Stapelkapazität ist bei 4x extrem. |
| ItemWeightMultiplier | 0.7 | Das Gewicht des Artikels liegt mit 0,7x unter dem Normalwert. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.0 | Der Erfahrungsgewinn ist mit 3x extrem. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.1 | Die Kühlung ist mit 1,1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.5 | Die Nachfüllrate des Spülbeckens liegt mit 1,5x über dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.8 | Die Durstrate liegt mit 0,8x unter dem Normalwert. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-7"></a>
### Optionale Adapterauswahl

- `ante_up`: `speedrun`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_do_not_run_loudly`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---rations-for-the-thing"></a>
## Tag 9 – Rationen für das Ding

**Profil-ID:** `nightmare_rations_for_the_thing` **Allgemeine Bedingungen:**Standarddruck(2.38/5) **Einfache Bedeutung:**Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-8"></a>
### Haupteffekte

- Grundbestandsgröße ist schwierige Bedingungen (10).
- Sinkwasser kann unsicher sein.
- Tag-Nacht-Zustand: nachtabhängig.
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,2x).
- Gegnergenauigkeit: genau.

<a id="domain-ratings-8"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.32/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (3.08/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (2.23/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.37/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.53/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-8"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Albtraumknappheit**
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
| BaseInventorySize | 10 | Die Grundbestandsgröße liegt bei schweren Bedingungen bei 10. |
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.25 | Die Kontinenzrate liegt mit 1,25x über dem Normalwert. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.6 | Die Geschwindigkeit der Feinderkennung liegt mit über dem Normalwert 1,6x. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.35 | Der Haltbarkeitsverlust im Todesfall liegt mit 0,35x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.8 | Die Widerstandsfähigkeit des Feindes liegt mit 1,8x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.0 | Der Schaden der Spieler durch Feinde liegt mit 2x deutlich über dem Normalwert. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.5 | Die Ermüdungsrate liegt mit 1,5x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Der Lebensmittelverderb liegt mit 2x deutlich über dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.8 | Die Hungerrate liegt mit 1,8x deutlich über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 0.75 | Die Haltbarkeit des Artikels liegt mit 0,75x unter dem Normalwert. |
| ItemStackSizeMultiplier | 1.0 | Die Stapelkapazität ist mit 1x nahezu normal. |
| ItemWeightMultiplier | 1.2 | Gegenstandsgewicht liegt mit 1,2x über dem Normalwert. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.2 | Der Erfahrungsgewinn liegt mit 2,2x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.5 | Die Kühlung liegt mit 0,5x weit unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.5 | Die Nachfüllrate des Waschbeckens liegt mit 0,5x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.7 | Die Durstrate liegt mit 1,7x deutlich über dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-8"></a>
### Optionale Adapterauswahl

- `ante_up`: `scarcity`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_rations_for_the_thing`
- `lethal_lasers`: `standard_safety`

<a id="day-10---recovery-behind-a-door"></a>
## Tag 10 – Erholung hinter einer Tür

**Profil-ID:** `nightmare_recovery_behind_a_door` **Allgemeine Bedingungen:** Günstige Konditionen (1.15/5) **Einfache Bedeutung:** Günstige Bedingungen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Erholungsdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-9"></a>
### Haupteffekte

- Bonusvorteilspunkte sind Erleichterungsbedingungen (10).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0x).
- Die Haltbarkeit der Gegenstände ist extrem (3x).
- Die Stapelkapazität ist extrem (10x).

<a id="domain-ratings-9"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.18/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (0.96/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (0.9/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.74/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.19/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-9"></a>
### Begegnungskontext

- Stufe: **minimale Begegnungen**
- Thema: **Albtraum-Erholung**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.02**
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
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 0 | Die Todesstrafe ist minimal. |
| DetectionSpeedMultiplier | 0.7 | Die Geschwindigkeit der Feinderkennung liegt mit 0,7x unter dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.1 | Der Schaden der Verteidigung durch den Feind liegt mit 0,1x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.1 | Die Widerstandsfähigkeit des Feindes ist mit 1,1x nahezu normal. |
| EnemyPlayerDamageMultiplier | 0.6 | Der Schaden von Feinden an Spielern liegt mit 0,6x unter dem Normalwert. |
| EnemySpawnRate | 0.3 | Die Häufigkeit von Feinden liegt mit 0,3x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.4 | Die Ermüdungsrate liegt mit 0,4x weit unter dem Normalwert. |
| FirstTimeStartingWeapon | 2 | Die anfängliche Waffenversorgung liegt bei Standarddruck bei 2. |
| FoodSpoilSpeedMultiplier | 0.4 | Der Verderb von Lebensmitteln liegt mit 0,4x weit unter dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.4 | Die Hungerrate liegt mit 0,4x weit unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 3.0 | Die Haltbarkeit der Gegenstände ist mit 3x extrem. |
| ItemStackSizeMultiplier | 10.0 | Die Stapelkapazität ist mit extrem 10x. |
| ItemWeightMultiplier | 0.4 | Gegenstandsgewicht liegt mit 0,4x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.9 | Der Erfahrungsgewinn ist mit 3,9x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | falsch | Strahlungsschaden ist deaktiviert. |
| RefrigerationEffectivenessMultiplier | 1.8 | Die Kühlung liegt mit 1,8x deutlich über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 3.0 | Die Nachfüllrate des Waschbeckens ist mit 3x extrem. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.4 | Die Durstrate ist mit 0,4x weit unter dem Normalwert. |
| WeatherFrequency | 1 | Wetterhäufigkeit ist selten. |

<a id="optional-adapter-selection-9"></a>
### Optionale Adapterauswahl

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `nightmare_recovery_behind_a_door`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-in-the-dark"></a>
## Tag 11 – Training im Dunkeln

**Profil-ID:** `nightmare_training_in_the_dark` **Allgemeine Bedingungen:** Günstige Konditionen (1.63/5) **Einfache Bedeutung:** Günstige Konditionen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-10"></a>
### Haupteffekte

- Bonusvorteilspunkte sind Erleichterungsbedingungen (12).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0x).
- Die Stapelkapazität ist extrem (5x).
- Der Erfahrungsgewinn ist extrem (5x).
- Die Haltbarkeit des Gegenstands liegt deutlich über dem Normalwert (2,25x).

<a id="domain-ratings-10"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.84/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.7/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (0.92/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.16/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.43/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-10"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Albtraum-Training**
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
| BaseInventorySize | 24 | Die Basisinventargröße liegt bei Entlastungskonditionen bei 24. |
| BonusPerkPoints | 12 | Bonusvorteilspunkte sind Erleichterungsbedingungen bei 12. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 0.8 | Kontinenzrate liegt mit 0,8x unter dem Normalwert. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.15 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1,15x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.3 | Die Geschwindigkeit der Gegnererkennung liegt mit 1,3x über dem Normalwert. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.4 | Der feindliche Schaden an der Verteidigung liegt mit 0,4x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.3 | Die Widerstandsfähigkeit des Feindes liegt mit 1,3x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.2 | Der Schaden von Feinden an Spielern liegt mit 1,2x über dem Normalwert. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.9 | Die Ermüdungsrate ist mit 0,9x nahezu normal. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.8 | Der Lebensmittelverderb liegt mit 0,8x unter dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.9 | Die Hungerrate ist mit 0,9x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 2.25 | Die Haltbarkeit des Gegenstands beträgt deutlich über dem Normalwert bei 2,25x. |
| ItemStackSizeMultiplier | 5.0 | Stapelkapazität ist mit 5x extrem. |
| ItemWeightMultiplier | 0.6 | Gegengewicht liegt mit 0,6x unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 5.0 | Der Erfahrungsgewinn ist mit 5x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.3 | Kühlung liegt mit 1,3x über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 2.0 | Die Nachfüllrate des Spülbeckens liegt deutlich über dem Normalwert 2x. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.9 | Die Durstrate ist nahezu normal 0,9x. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-10"></a>
### Optionale Adapterauswahl

- `ante_up`: `training`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_training_in_the_dark`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-nightmare-review"></a>
## Tag 12 – Black Lab Nightmare Review

**Profil-ID:** `nightmare_black_lab_nightmare_review` **Allgemeine Bedingungen:** Anspruchsvolle Bedingungen (2.75/5) **Einfache Bedeutung:** Anspruchsvolle Bedingungen. Kampfdruck: Schwere Bedingungen sind der Hauptdruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-11"></a>
### Haupteffekte

- Gegnerpräzision: sehr genau.
- Der feindliche Schaden an Spielern ist extrem (3,5x).
- Spielschwierigkeit: sehr schwer.
- Die Geschwindigkeit der Feinderkennung ist extrem (2,9x).
- Die Widerstandsfähigkeit des Feindes ist extrem (2,8x).

<a id="domain-ratings-11"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | schwerwiegend (3.62/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | anspruchsvolle (2.85/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (1.74/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.42/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.79/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-11"></a>
### Begegnungskontext

- Stufe: **extreme Begegnungen**
- Thema: **Albtraum-Schwertest**
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
| BaseInventorySize | 12 | Grundinventargröße ist Standarddruck bei 12. |
| BonusPerkPoints | 2 | Bonuspunkte sind günstig Bedingungen bei 2. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.15 | Der Schaden durch Eigenfeuer liegt mit 0,15x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 2.9 | Die Geschwindigkeit der Gegnererkennung ist mit 2,9x extrem. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.4 | Der Haltbarkeitsverlust bei Tod liegt mit 0,4x weit unter dem Normalwert. |
| EnemyAccuracy | 4 | Die Genauigkeit der Feinde ist sehr genau. |
| EnemyDeployableDamageMultiplier | 1.4 | Der feindliche Schaden an der Verteidigung liegt mit 1,4x über dem Normalwert. |
| EnemyHealthMultiplier | 2.8 | Die Widerstandsfähigkeit der Feinde ist mit 2,8x extrem. |
| EnemyPlayerDamageMultiplier | 3.5 | Der Schaden von Feinden an Spielern ist mit 3,5x extrem. |
| EnemySpawnRate | 1.5 | Die Häufigkeit von Feinden liegt über dem Normalwert normal bei 1,5x. |
| FatigueSpeedMultiplier | 1.5 | Die Ermüdungsrate liegt mit 1,5x über dem Normalwert. |
| FirstTimeStartingWeapon | 1 | Die anfängliche Waffenbereitstellung beträgt den Standarddruck bei 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Der Lebensmittelverderb ist bei 1,15x nahezu normal. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.5 | Die Hungerrate liegt über dem Normalwert bei 1,5x. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.1 | Die Haltbarkeit des Gegenstands liegt mit 1,1x nahezu normal. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.9 | Das Gewicht des Gegenstands ist bei nahezu normal 0,9x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 4.0 | Der Erfahrungsgewinn ist mit 4x extrem. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.85 | Die Kühlung ist mit 0,85x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.75 | Spüle auffüllen Die Rate liegt mit 0,75x unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.5 | Die Durstrate liegt mit 1,5x über dem Normalwert. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-11"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_black_lab_nightmare_review`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-shift-after-midnight"></a>
## Tag 13 – Lange Schicht nach Mitternacht

**Profil-ID:** `nightmare_long_shift_after_midnight` **Allgemeine Bedingungen:**Standarddruck(2.56/5) **Einfache Bedeutung:** Standarddruck. Überlebensdruck: Schwere Bedingungen sind der Hauptdruck. Kampfdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-12"></a>
### Haupteffekte

- Spielschwierigkeit: sehr schwer.
- Grundbestandsgröße ist schwierige Bedingungen (10).
- Der Erfahrungsgewinn ist extrem (2,5x).
- Sinkwasser kann unsicher sein.
- Tag-Nacht-Zustand: nachtabhängig.

<a id="domain-ratings-12"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.64/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | schwerwiegend (3.44/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (2.11/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.21/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.77/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-12"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Albtraum-Ausdauer**
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
| BaseInventorySize | 10 | Die Grundbestandsgröße liegt bei schweren Bedingungen bei 10. |
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.35 | Die Kontinenzrate liegt mit 1,35x über dem Normalwert. |
| DamageToAlliesMultiplier | 0.25 | Der Schaden durch Eigenfeuer liegt mit 0,25x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 0.3 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 0,3x weit unter dem Normalwert. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 1.6 | Die Geschwindigkeit der Feinderkennung liegt mit über dem Normalwert 1,6x. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.35 | Der Haltbarkeitsverlust im Todesfall liegt mit 0,35x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.9 | Der Schaden der Feinde an der Verteidigung ist mit 0,9x nahezu normal. |
| EnemyHealthMultiplier | 2.0 | Die Widerstandsfähigkeit von Feinden ist deutlich über dem Normalwert bei 2x. |
| EnemyPlayerDamageMultiplier | 2.2 | Der feindliche Schaden an Spielern liegt deutlich über dem Normalwert bei 2,2x. |
| EnemySpawnRate | 0.6 | Die Häufigkeit von Feinden liegt mit 0,6x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.9 | Die Hungerrate liegt mit 1,9x deutlich über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Der Lebensmittelverderb liegt mit 1,8x deutlich über dem Normalwert. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 2.1 | Die Hungerrate liegt mit 2,1x deutlich über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 0.9 | Die Haltbarkeit des Artikels liegt mit 0,9x nahezu im Normalbereich. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 1.4 | Das Artikelgewicht liegt über dem Normalwert bei 1,4x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.5 | Der Erfahrungsgewinn ist mit 2,5x extrem. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.65 | Die Kühlung liegt bei 0,65x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.35 | Die Nachfüllrate des Spülbeckens liegt bei 0,35x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 2.1 | Die Durstrate liegt mit 2,1x deutlich über dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-12"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_long_shift_after_midnight`
- `lethal_lasers`: `standard_safety`

<a id="day-14---false-morning"></a>
## Tag 14 – Falscher Morgen

**Profil-ID:** `nightmare_false_morning` **Allgemeine Bedingungen:** Günstige Konditionen (1.3/5) **Einfache Bedeutung:** Günstige Bedingungen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Erholungsdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-13"></a>
### Haupteffekte

- Spielschwierigkeit: sehr schwer.
- Grundinventargröße entspricht Erleichterungsbedingungen (40).
- Bonusvorteilspunkte sind Erleichterungsbedingungen (12).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0x).

<a id="domain-ratings-13"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.59/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Erleichterung (0.8/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | Erleichterung (0.79/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.78/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.67/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-13"></a>
### Begegnungskontext

- Stufe: **minimale Begegnungen**
- Thema: **Albtraum-Erleichterung**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.02**
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
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 0.9 | Die Geschwindigkeit der Gegnererkennung ist mit 0,9x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.1 | Der Schaden der Verteidigung durch den Feind liegt mit 0,1x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.2 | Die Widerstandsfähigkeit des Feindes liegt mit über dem Normalwert 1,2x. |
| EnemyPlayerDamageMultiplier | 0.9 | Der feindliche Schaden an Spielern ist mit 0,9x nahezu normal. |
| EnemySpawnRate | 0.3 | Die Häufigkeit von Feinden liegt mit 0,3x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.3 | Die Ermüdungsrate liegt mit 0,3x weit unter dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.25 | Der Lebensmittelverderb liegt weit unter dem Normalwert bei 0,25x. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.3 | Die Hungerrate liegt mit 0,3x weit unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 6.0 | Die Haltbarkeit der Gegenstände ist mit 6x extrem. |
| ItemStackSizeMultiplier | 20.0 | Die Stapelkapazität ist mit 20x extrem. |
| ItemWeightMultiplier | 0.2 | Das Gewicht der Gegenstände liegt mit 0,2x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 5.6 | Der Erfahrungsgewinn ist mit 5,6x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | falsch | Strahlungsschaden ist deaktiviert. |
| RefrigerationEffectivenessMultiplier | 2.0 | Die Kühlung liegt mit 2x deutlich über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 5.0 | Die Nachfüllrate des Waschbeckens ist mit 5x extrem. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.3 | Die Durstrate liegt mit 0,3x weit unter dem Normalwert. |
| WeatherFrequency | 1 | Wetterhäufigkeit ist selten. |

<a id="optional-adapter-selection-13"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `nightmare_false_morning`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-of-shadows"></a>
## Tag 15 – Genauigkeit der Schatten

**Profil-ID:** `nightmare_accuracy_of_shadows` **Allgemeine Bedingungen:**Standarddruck(2.29/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-14"></a>
### Haupteffekte

- Spielschwierigkeit: sehr schwer.
- Der feindliche Schaden an Spielern ist extrem (2,6x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Der Erfahrungsgewinn ist extrem (3,2x).
- Tag-Nacht-Zustand: nachtabhängig.

<a id="domain-ratings-14"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.81/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | Standard (2.17/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.68/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.37/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.76/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-14"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Albtraum-Präzision**
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
| BaseInventorySize | 12 | Grundinventargröße ist Standarddruck bei 12. |
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.0 | Der Schaden durch Eigenfeuer liegt mit 0x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 2.2 | Die Erkennungsgeschwindigkeit von Feinden liegt mit 2,2x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.3 | Der Haltbarkeitsverlust bei Tod liegt mit 0,3x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.8 | Der Schaden der Feinde an der Verteidigung liegt mit 0,8x unter dem Normalwert. |
| EnemyHealthMultiplier | 1.6 | Die Widerstandsfähigkeit des Feindes liegt mit 1,6x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.6 | Der Schaden von Feinden an Spielern ist mit 2,6x extrem. |
| EnemySpawnRate | 0.8 | Die Häufigkeit von Feinden liegt mit 0,8x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.5 | Die Ermüdungsrate liegt mit 1,5x über dem Normalwert. |
| FirstTimeStartingWeapon | 4 | Der Beginn der Waffenversorgung ist ab dem 4. Tag günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.2 | Die Hungerrate liegt über dem Normalwert normal bei 1,2x. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.0 | Die Haltbarkeit des Gegenstands liegt mit 1x nahezu normal. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.9 | Das Gewicht des Gegenstands ist bei nahezu normal 0,9x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.2 | Der Erfahrungsgewinn ist mit extrem 3,2x. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.2 | Die Durstrate liegt über dem Normalwert 1,2x. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-14"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_accuracy_of_shadows`
- `lethal_lasers`: `high_hazard`

<a id="day-16---experimental-fear"></a>
## Tag 16 - Experimentelle Angst

**Profil-ID:** `nightmare_experimental_fear` **Allgemeine Bedingungen:**Standarddruck(2.33/5) **Einfache Bedeutung:** Standarddruck. Umweltbelastung: Anspruchsvolle Bedingungen sind die Hauptbelastung. Kampfdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-15"></a>
### Haupteffekte

- Gegnerpräzision: sehr genau.
- Spielschwierigkeit: sehr schwer.
- Bei manchen Strahlungen fehlt möglicherweise eine sichtbare Warnung.
- Wetterhäufigkeit: sehr häufig.
- Grundinventargröße entspricht Erleichterungsbedingungen (42).

<a id="domain-ratings-15"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.8/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | anspruchsvolle (2.64/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | günstig (1.09/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | anspruchsvolle (2.86/5) | Strom-, Wetter-, Wasser- oder Strahlungsbedingungen sind ungeklärt. |
| Erholungsdruck | günstig (1.67/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-15"></a>
### Begegnungskontext

- Stufe: **extreme Begegnungen**
- Thema: **Albtraum experimentell**
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
| BaseInventorySize | 42 | Grundinventargröße beträgt Entlastungsbedingungen bei 42. |
| BonusPerkPoints | 2 | Bonuspunkte sind günstig Bedingungen bei 2. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.2 | Kontinenzrate liegt mit 1,2x über dem Normalwert. |
| DamageToAlliesMultiplier | 0.0 | Der Schaden durch Eigenfeuer liegt mit 0x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.5 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 1,5x über dem Normalwert. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 0.8 | Die Geschwindigkeit der Gegnererkennung liegt mit 0,8x unter dem Normalwert. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 4 | Die Genauigkeit der Feinde ist sehr genau. |
| EnemyDeployableDamageMultiplier | 0.7 | Der Schaden der Verteidigung durch Feinde liegt mit 0,7x unter dem Normalwert. |
| EnemyHealthMultiplier | 2.3 | Die Widerstandsfähigkeit der Feinde liegt mit 2,3x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.7 | Der feindliche Schaden an Spielern liegt weit über dem Normalwert 1,7x. |
| EnemySpawnRate | 1.0 | Die Häufigkeit von Feinden ist mit 1x nahezu normal. |
| FatigueSpeedMultiplier | 1.0 | Die Ermüdungsrate ist bei 1x nahezu normal. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.4 | Der Verderb von Lebensmitteln liegt mit 0,4x weit unter dem Normalwert. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.0 | Die Hungerrate ist bei 1x nahezu normal. |
| InvisibleRadiation | wahr | Bei manchen Strahlungen fehlt möglicherweise eine sichtbare Warnung. |
| ItemDurabilityMultiplier | 5.0 | Die Haltbarkeit des Gegenstands ist mit 5x extrem. |
| ItemStackSizeMultiplier | 15.0 | Die Stapelkapazität ist mit 15x extrem. |
| ItemWeightMultiplier | 0.2 | Das Gewicht der Gegenstände liegt mit 0,2x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 6.1 | Der Erfahrungsgewinn ist mit 6,1x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 2.0 | Die Kühlung liegt mit 2x deutlich über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.0 | Die Auffüllrate des Waschbeckens liegt bei 0x weit unter dem Normalwert. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.6 | Die Durstrate liegt mit 1,6x über dem Normalwert. |
| WeatherFrequency | 5 | Die Wetterhäufigkeit ist sehr häufig. |

<a id="optional-adapter-selection-15"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_experimental_fear`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-nightmare-practical"></a>
## Tag 17 – Final Nightmare Practical

**Profil-ID:** `nightmare_final_nightmare_practical` **Allgemeine Bedingungen:** Anspruchsvolle Bedingungen (2.99/5) **Einfache Bedeutung:** Anspruchsvolle Bedingungen. Kampfdruck: Schwere Bedingungen sind der Hauptdruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-16"></a>
### Haupteffekte

- Todesstrafen: schwer.
- Die Geschwindigkeit der Feinderkennung ist extrem (3,4x).
- Gegnerpräzision: sehr genau.
- Die Widerstandsfähigkeit des Feindes ist extrem (3,5x).
- Der feindliche Schaden an Spielern ist extrem (4,1x).

<a id="domain-ratings-16"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | schwerwiegend (3.87/5) | Der feindliche Druck ist stark; Vermeiden Sie nicht unterstützte Kämpfe. |
| Überlebensdruck | anspruchsvolle (3.18/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (1.84/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | anspruchsvolle (2.75/5) | Strom-, Wetter-, Wasser- oder Strahlungsbedingungen sind ungeklärt. |
| Erholungsdruck | Standard (2.0/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-16"></a>
### Begegnungskontext

- Stufe: **Capstone-Begegnungen**
- Thema: **Alptraum-Schlussstein**
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
| BaseInventorySize | 12 | Grundinventargröße ist Standarddruck bei 12. |
| BonusPerkPoints | 2 | Bonuspunkte sind günstig Bedingungen bei 2. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.1 | Die Kontinenzrate ist mit 1,1x nahezu normal. |
| DamageToAlliesMultiplier | 0.1 | Der Schaden durch Eigenfeuer liegt mit 0,1x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.45 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 1,45x über dem Normalwert. |
| DayNightCycleState | 2 | Der Tag-Nacht-Zustand ist nachtabhängig. |
| DeathPenalties | 3 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 3.4 | Die Geschwindigkeit der Gegnererkennung ist mit 3,4x extrem. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.5 | Der Haltbarkeitsverlust bei Tod liegt mit 0,5x weit unter dem Normalwert. |
| EnemyAccuracy | 4 | Die Genauigkeit der Feinde ist sehr genau. |
| EnemyDeployableDamageMultiplier | 2.0 | Der feindliche Schaden an der Verteidigung liegt mit 2x deutlich über dem Normalwert. |
| EnemyHealthMultiplier | 3.5 | Die Widerstandsfähigkeit der Feinde ist extrem 3,5x. |
| EnemyPlayerDamageMultiplier | 4.1 | Der feindliche Schaden an Spielern ist mit 4,1x extrem. |
| EnemySpawnRate | 2.0 | Die Häufigkeit von Feinden liegt mit 2x deutlich über dem Normalwert. |
| FatigueSpeedMultiplier | 1.7 | Die Ermüdungsrate liegt deutlich über dem Normalwert normal bei 1,7x. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Lebensmittelverderb ist mit 1,6x über dem Normalwert. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.9 | Die Hungerrate liegt mit 1,9x deutlich über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.0 | Die Haltbarkeit des Gegenstands liegt mit 1x nahezu normal. |
| ItemStackSizeMultiplier | 3.0 | Die Stapelkapazität ist mit 3x extrem. |
| ItemWeightMultiplier | 1.0 | Das Gewicht des Gegenstands ist bei nahezu normal 1x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 4.8 | Der Erfahrungsgewinn ist mit 4,8x extrem. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.6 | Die Kühlung liegt mit 0,6x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.5 | Die Nachfüllrate des Waschbeckens liegt mit 0,5x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.9 | Die Durstrate liegt mit 1,9x deutlich über dem Normalwert. |
| WeatherFrequency | 5 | Die Wetterhäufigkeit ist sehr häufig. |

<a id="optional-adapter-selection-16"></a>
### Optionale Adapterauswahl

- `ante_up`: `capstone`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_final_nightmare_practical`
- `lethal_lasers`: `overcharged_high_hazard`
