<a id="randomday---survival-family"></a>
# RandomDay - Survival Family

> **Kanonisch-englische Quelle:** [survival.md](../../../../profiles/families/survival.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Version: `v0.3.16-alpha`

Weniger Feinde, stärkere Bedrohungen, höhere Belohnungen und weniger Vergebung.

**Spielstil:**Stealth-Überleben gegen stärkere Bedrohungen**Nachrichtenton:**grausam höfliche Überlebensmitteilung

<a id="17-day-index"></a>
## 17-Tage-Index

| Tag | Profil | Bedingungen | Hauptdruck |
|---:|---|---|---|
| 1 | Quiet Intake | Standarddruck (2.02/5) | Umweltdruck |
| 2 | Barricade Protocol | Günstige Bedingungen (1.41/5) | Umweltdruck |
| 3 | Contaminated Silence | Standarddruck (2.35/5) | Überlebensdruck |
| 4 | Scavenger's Debt | Günstige Bedingungen (1.61/5) | Umweltdruck |
| 5 | Sicherheitssperre | Standarddruck (2.26/5) | Kampfdruck |
| 6 | Shelter Advisory | Standarddruck (2.2/5) | Umweltdruck |
| 7 | Licht aus | Standarddruck (2.25/5) | Kampfdruck |
| 8 | Nicht verweilen | Standarddruck (1.97/5) | Umweltdruck |
| 9 | Empty Pantry Trial | Standarddruck (2.4/5) | Überlebensdruck |
| 10 | Silent Recovery | Günstige Bedingungen (1.14/5) | Umweltdruck |
| 11 | Gemessenes Risiko | Günstige Bedingungen (1.62/5) | Umweltdruck |
| 12 | Predator Review | Anspruchsvolle Bedingungen (2.76/5) | Kampfdruck |
| 13 | Long Shift Überleben | Standarddruck (2.57/5) | Überlebensdruck |
| 14 | Falsche Ruhe | Günstige Bedingungen (1.29/5) | Erholungsdruck |
| 15 | Erste Tote zuerst gesehen | Standarddruck (2.28/5) | Kampfdruck |
| 16 | Nicht genehmigte Bedingungen | Standarddruck (2.33/5) | Überlebensdruck |
| 17 | Letzter Ausweichtest | Anspruchsvolle Bedingungen (3.01/5) | Kampfdruck |

<a id="day-1---quiet-intake"></a>
## Tag 1 – Ruhe Einnahme

**Profil-ID:** `survival_quiet_intake` **Allgemeine Bedingungen:**Standarddruck(2.02/5) **Einfache Bedeutung:** Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects"></a>
### Haupteffekte

- Gegnergenauigkeit: genau.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,25x).
- Stapelkapazität liegt deutlich über dem Normalwert (2x).
- Steckdosen schalten sich nachts ab.

<a id="domain-ratings"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.2/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (2.17/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | Standard (1.71/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.22/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Ausweichorientierung**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.4 | Die Geschwindigkeit der Feinderkennung liegt mit 1,4x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.6 | Die Widerstandsfähigkeit des Feindes liegt mit 1,6x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.6 | Der feindliche Schaden an Spielern liegt mit 1,6x über dem Normalwert. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.3 | Die Ermüdungsrate liegt mit 1,3x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.3 | Die Hungerrate liegt mit 1,3x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.5 | Die Haltbarkeit des Gegenstands liegt bei 1,5x über dem Normalwert. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.8 | Das Gewicht des Gegenstands liegt mit unter dem Normalwert 0,8x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.8 | Der Erfahrungsgewinn liegt deutlich darüber normal bei 1,8x. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.3 | Die Durstrate liegt mit dem 1,3-fachen über dem Normalwert. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection"></a>
### Optionale Adapterauswahl

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `survival_quiet_intake`
- `lethal_lasers`: `standard_safety`

<a id="day-2---barricade-protocol"></a>
## Tag 2 – Barricade Protocol

**Profil-ID:** `survival_barricade_protocol` **Allgemeine Bedingungen:** Günstige Konditionen (1.41/5) **Einfache Bedeutung:** Günstige Konditionen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Überlebensdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-1"></a>
### Haupteffekte

- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Die Haltbarkeit der Gegenstände ist extrem (4x).
- Die Stapelkapazität ist extrem (8x).
- Der Erfahrungsgewinn ist extrem (2,5x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,05x).

<a id="domain-ratings-1"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.43/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (1.52/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.07/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.91/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.2/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-1"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Ausweichvorbereitung**
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
| DetectionSpeedMultiplier | 0.9 | Die Geschwindigkeit der Gegnererkennung ist mit 0,9x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.05 | Der Haltbarkeitsverlust bei Tod liegt mit 0,05x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.1 | Der Schaden der Verteidigung durch den Feind liegt mit 0,1x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.3 | Die Widerstandsfähigkeit des Feindes liegt mit 1,3x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.0 | Der Schaden von Feinden an Spielern ist bei 1x nahezu normal. |
| EnemySpawnRate | 0.4 | Die Häufigkeit von Feinden liegt mit 0,4x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.8 | Die Ermüdungsrate liegt mit 0,8x unter dem Normalwert. |
| FirstTimeStartingWeapon | 2 | Die anfängliche Waffenversorgung liegt bei Standarddruck bei 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Der Lebensmittelverderb liegt unter dem Normalwert bei 0,75x. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.8 | Die Hungerrate liegt mit 0,8x unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 4.0 | Die Haltbarkeit des Gegenstands ist mit 4x extrem. |
| ItemStackSizeMultiplier | 8.0 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.4 | Gegenstandsgewicht liegt mit 0,4x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.5 | Der Erfahrungsgewinn ist mit 2,5x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.5 | Die Kühlung liegt mit 1,5x über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 2.0 | Die Nachfüllrate des Spülbeckens liegt deutlich über dem Normalwert 2x. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.8 | Die Durstrate liegt mit 0,8x unter dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-1"></a>
### Optionale Adapterauswahl

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `survival_barricade_protocol`
- `lethal_lasers`: `low_hazard`

<a id="day-3---contaminated-silence"></a>
## Tag 3 – Kontaminierte Stille

**Profil-ID:** `survival_contaminated_silence` **Allgemeine Bedingungen:**Standarddruck(2.35/5) **Einfache Bedeutung:** Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-2"></a>
### Haupteffekte

- Sinkwasser kann unsicher sein.
- Die Durstrate liegt deutlich über dem Normalwert (2,3x).
- Gegnergenauigkeit: genau.
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,1x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).

<a id="domain-ratings-2"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.38/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (3.23/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (1.85/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.22/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-2"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Umgehungs-Bioressource**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.5 | Die Erkennungsgeschwindigkeit von Feinden liegt mit 1,5x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.9 | Der Schaden der Feinde an der Verteidigung ist mit 0,9x nahezu normal. |
| EnemyHealthMultiplier | 1.7 | Die Widerstandsfähigkeit des Feindes liegt mit 1,7x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.7 | Der feindliche Schaden an Spielern liegt weit über dem Normalwert 1,7x. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.4 | Die Ermüdungsrate liegt mit 1,4x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Der Lebensmittelverderb liegt mit 1,25x über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.6 | Die Hungerrate liegt mit 1,6x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.8 | Das Gewicht des Gegenstands liegt mit unter dem Normalwert 0,8x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.1 | Der Erfahrungsgewinn liegt mit 2,1x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.75 | Die Kühlung liegt mit 0,75x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.25 | Die Nachfüllrate des Spülbeckens liegt mit 0,25x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 2.3 | Die Durstrate liegt mit 2,3x deutlich über dem Normalwert. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-2"></a>
### Optionale Adapterauswahl

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `survival_contaminated_silence`
- `lethal_lasers`: `standard_safety`

<a id="day-4---scavengers-debt"></a>
## Tag 4 – Scavenger's Debt

**Profil-ID:** `survival_scavenger_s_debt` **Allgemeine Bedingungen:** Günstige Konditionen (1.61/5) **Einfache Bedeutung:** Günstige Konditionen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-3"></a>
### Haupteffekte

- Die Haltbarkeit der Gegenstände ist extrem (2,5x).
- Die Stapelkapazität ist extrem (14x).
- Der Erfahrungsgewinn ist extrem (2,7x).
- Die Nachfüllrate der Senke ist extrem (2,5x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,05x).

<a id="domain-ratings-3"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.84/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.68/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (0.99/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.93/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.44/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-3"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Umgehungs-Beutemobilität**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.1 | Die Geschwindigkeit der Gegnererkennung ist mit 1,1x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.05 | Der Haltbarkeitsverlust bei Tod liegt mit 0,05x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.5 | Der Schaden der Feinde an der Verteidigung liegt mit 0,5x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.5 | Die Widerstandsfähigkeit von Feinden liegt mit 1,5x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.3 | Der Schaden von Feinden an Spielern liegt mit 1,3x über dem Normalwert. |
| EnemySpawnRate | 0.5 | Die Häufigkeit von Feinden liegt mit 0,5x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.9 | Die Ermüdungsrate ist mit 0,9x nahezu normal. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.6 | Der Lebensmittelverderb liegt mit 0,6x unter dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.9 | Die Hungerrate ist mit 0,9x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 2.5 | Die Haltbarkeit der Gegenstände ist mit 2,5x extrem. |
| ItemStackSizeMultiplier | 14.0 | Die Stapelkapazität ist mit 14x extrem. |
| ItemWeightMultiplier | 0.3 | Das Gewicht der Gegenstände liegt mit 0,3x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.7 | Der Erfahrungsgewinn ist mit 2,7x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.5 | Die Kühlung liegt mit 1,5x über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 2.5 | Die Nachfüllrate des Spülbeckens ist mit 2,5x extrem. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.9 | Die Durstrate ist nahezu normal 0,9x. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-3"></a>
### Optionale Adapterauswahl

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `survival_scavenger_s_debt`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-lockdown"></a>
## Tag 5 – Sicherheitssperre

**Profil-ID:** `survival_security_lockdown` **Allgemeine Bedingungen:**Standarddruck(2.26/5) **Einfache Bedeutung:**Standarddruck. Kampfdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Überlebensdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-4"></a>
### Haupteffekte

- Die Geschwindigkeit der Feinderkennung ist extrem (2,8x).
- Der Erfahrungsgewinn ist extrem (2,5x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,1x).
- Gegnergenauigkeit: genau.
- Der feindliche Schaden an Spielern liegt deutlich über dem Normalwert (2x).

<a id="domain-ratings-4"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.82/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | Standard (2.32/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.65/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.17/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.51/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-4"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Umgehungssicherheit**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 2.8 | Die Geschwindigkeit der Feinderkennung ist mit 2,8x extrem. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.3 | Der Haltbarkeitsverlust bei Tod liegt mit 0,3x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.9 | Die Widerstandsfähigkeit der Feinde liegt mit 1,9x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.0 | Der Schaden der Spieler durch Feinde liegt mit 2x deutlich über dem Normalwert. |
| EnemySpawnRate | 1.1 | Die Häufigkeit von Feinden ist bei 1,1x nahezu normal. |
| FatigueSpeedMultiplier | 1.6 | Die Ermüdungsrate liegt mit 1,6x über dem Normalwert. |
| FirstTimeStartingWeapon | 4 | Der Beginn der Waffenversorgung ist ab dem 4. Tag günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.4 | Hungerrate liegt mit 1,4x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.8 | Das Gewicht des Gegenstands liegt mit unter dem Normalwert 0,8x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
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
| ThirstSpeedMultiplier | 1.4 | Die Durstrate liegt mit 1,4x über dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-4"></a>
### Optionale Adapterauswahl

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `survival_security_lockdown`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---shelter-advisory"></a>
## Tag 6 - Shelter Advisory

**Profil-ID:** `survival_shelter_advisory` **Allgemeine Bedingungen:**Standarddruck(2.2/5) **Einfache Bedeutung:** Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-5"></a>
### Haupteffekte

- Wetterhäufigkeit: sehr häufig.
- Gegnergenauigkeit: genau.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,25x).
- Spielschwierigkeit: Schwer.

<a id="domain-ratings-5"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.42/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (2.38/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | Standard (1.81/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.52/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-5"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Umgehungswetter**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.5 | Die Erkennungsgeschwindigkeit von Feinden liegt mit 1,5x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.7 | Die Widerstandsfähigkeit des Feindes liegt mit 1,7x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.7 | Der feindliche Schaden an Spielern liegt weit über dem Normalwert 1,7x. |
| EnemySpawnRate | 0.8 | Die Häufigkeit von Feinden liegt mit 0,8x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.4 | Die Ermüdungsrate liegt mit 1,4x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Der Lebensmittelverderb liegt mit 1,25x über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.4 | Hungerrate liegt mit 1,4x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.1 | Die Haltbarkeit des Gegenstands liegt mit 1,1x nahezu normal. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.8 | Das Gewicht des Gegenstands liegt mit unter dem Normalwert 0,8x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.0 | Der Erfahrungsgewinn beträgt bei 2x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.8 | Die Kühlung liegt mit 0,8x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.75 | Spüle auffüllen Die Rate liegt mit 0,75x unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.8 | Die Durstrate liegt mit 1,8x deutlich über dem Normalwert. |
| WeatherFrequency | 5 | Die Wetterhäufigkeit ist sehr häufig. |

<a id="optional-adapter-selection-5"></a>
### Optionale Adapterauswahl

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `survival_shelter_advisory`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---lights-out"></a>
## Tag 7 – Lichter aus

**Profil-ID:** `survival_lights_out` **Allgemeine Bedingungen:**Standarddruck(2.25/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-6"></a>
### Haupteffekte

- Die Stapelkapazität ist extrem (3x).
- Der Erfahrungsgewinn ist extrem (2,7x).
- Die Geschwindigkeit der Gegnererkennung liegt weit über dem Normalwert (2,3x).
- Tag-Nacht-Zustand: nachtabhängig.
- Gegnergenauigkeit: genau.

<a id="domain-ratings-6"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.78/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | Standard (2.33/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.53/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.33/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.49/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-6"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Umgehungsnacht**
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
| DetectionSpeedMultiplier | 2.3 | Die Geschwindigkeit der Feinderkennung liegt mit 2,3x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.2 | Der Widerstandsverlust bei Tod liegt mit 0,2x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.9 | Die Widerstandsfähigkeit der Feinde liegt mit 1,9x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.0 | Der Schaden der Spieler durch Feinde liegt mit 2x deutlich über dem Normalwert. |
| EnemySpawnRate | 1.1 | Die Häufigkeit von Feinden ist bei 1,1x nahezu normal. |
| FatigueSpeedMultiplier | 1.9 | Die Hungerrate liegt mit 1,9x deutlich über dem Normalwert. |
| FirstTimeStartingWeapon | 5 | Die anfängliche Waffenbereitstellung ist mit 5 günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.3 | Die Hungerrate liegt mit 1,3x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.5 | Die Haltbarkeit des Gegenstands liegt bei 1,5x über dem Normalwert. |
| ItemStackSizeMultiplier | 3.0 | Die Stapelkapazität ist mit 3x extrem. |
| ItemWeightMultiplier | 0.6 | Gegengewicht liegt mit 0,6x unter dem Normalwert. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.7 | Der Erfahrungsgewinn ist mit 2,7x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.3 | Die Durstrate liegt mit dem 1,3-fachen über dem Normalwert. |
| WeatherFrequency | 4 | Die Wetterhäufigkeit ist häufig. |

<a id="optional-adapter-selection-6"></a>
### Optionale Adapterauswahl

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `survival_lights_out`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---do-not-linger"></a>
## Tag 8 – Nicht verweilen

**Profil-ID:** `survival_do_not_linger` **Allgemeine Bedingungen:**Standarddruck(1.97/5) **Einfache Bedeutung:** Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-7"></a>
### Haupteffekte

- Die Geschwindigkeit des Tag-Nacht-Zyklus ist extrem (3x).
- Die Stapelkapazität ist extrem (4x).
- Der Erfahrungsgewinn ist extrem (2,8x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,15x).
- Gegnergenauigkeit: genau.

<a id="domain-ratings-7"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.41/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.66/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.4/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.56/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.47/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-7"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Umgehungsroute**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 2.0 | Die Geschwindigkeit der Gegnererkennung liegt mit 2x deutlich über dem Normalwert. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.15 | Der Haltbarkeitsverlust bei Tod liegt mit 0,15x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.8 | Der Schaden der Feinde an der Verteidigung liegt mit 0,8x unter dem Normalwert. |
| EnemyHealthMultiplier | 1.3 | Die Widerstandsfähigkeit des Feindes liegt mit 1,3x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.7 | Der feindliche Schaden an Spielern liegt weit über dem Normalwert 1,7x. |
| EnemySpawnRate | 0.9 | Die Häufigkeit von Feinden ist mit 0,9x nahezu normal. |
| FatigueSpeedMultiplier | 0.9 | Die Ermüdungsrate ist mit 0,9x nahezu normal. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.9 | Der Lebensmittelverderb ist mit 0,9x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.9 | Die Hungerrate ist mit 0,9x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 4.0 | Stapelkapazität ist bei 4x extrem. |
| ItemWeightMultiplier | 0.6 | Gegengewicht liegt mit 0,6x unter dem Normalwert. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.8 | Der Erfahrungsgewinn ist extrem bei 2,8x. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.1 | Die Kühlung ist mit 1,1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.5 | Die Nachfüllrate des Spülbeckens liegt mit 1,5x über dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.9 | Die Durstrate ist nahezu normal 0,9x. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-7"></a>
### Optionale Adapterauswahl

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `survival_do_not_linger`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---empty-pantry-trial"></a>
## Tag 9 – Testversion der leeren Speisekammer

**Profil-ID:** `survival_empty_pantry_trial` **Allgemeine Bedingungen:**Standarddruck(2.4/5) **Einfache Bedeutung:** Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-8"></a>
### Haupteffekte

- Grundbestandsgröße ist schwierige Bedingungen (10).
- Sinkwasser kann unsicher sein.
- Gegnergenauigkeit: genau.
- Hungerrate liegt deutlich über dem Normalwert (2,1x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).

<a id="domain-ratings-8"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.29/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (3.32/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (2.24/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.17/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.53/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-8"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Umgehungsknappheit**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.5 | Die Erkennungsgeschwindigkeit von Feinden liegt mit 1,5x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.35 | Der Haltbarkeitsverlust im Todesfall liegt mit 0,35x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 1.0 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 1.9 | Die Widerstandsfähigkeit der Feinde liegt mit 1,9x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.8 | Der feindliche Schaden an Spielern liegt mit 1,8x deutlich über dem Normalwert. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.7 | Die Ermüdungsrate liegt deutlich über dem Normalwert normal bei 1,7x. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Der Lebensmittelverderb liegt mit 2x deutlich über dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 2.1 | Die Hungerrate liegt mit 2,1x deutlich über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 0.75 | Die Haltbarkeit des Artikels liegt mit 0,75x unter dem Normalwert. |
| ItemStackSizeMultiplier | 1.0 | Die Stapelkapazität ist mit 1x nahezu normal. |
| ItemWeightMultiplier | 1.1 | Das Gewicht des Gegenstands ist mit 1,1x nahezu normal. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.0 | Der Erfahrungsgewinn beträgt bei 2x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.5 | Die Kühlung liegt mit 0,5x weit unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.5 | Die Nachfüllrate des Waschbeckens liegt mit 0,5x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 2.0 | Die Durstrate liegt mit 2x deutlich über dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-8"></a>
### Optionale Adapterauswahl

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `survival_empty_pantry_trial`
- `lethal_lasers`: `standard_safety`

<a id="day-10---silent-recovery"></a>
## Tag 10 – Stille Erholung

**Profil-ID:** `survival_silent_recovery` **Allgemeine Bedingungen:** Günstige Konditionen (1.14/5) **Einfache Bedeutung:** Günstige Bedingungen. Umweltbelastung: Günstige Bedingungen sind die Hauptbelastung. Erholungsdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

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
| Kampfdruck | günstig (1.15/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (1.08/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (0.89/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | günstig (1.54/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.19/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-9"></a>
### Begegnungskontext

- Stufe: **minimale Begegnungen**
- Thema: **Umgehungswiederherstellung**
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
| DetectionSpeedMultiplier | 0.6 | Die Geschwindigkeit der Gegnererkennung ist unter dem Normalwert bei 0,6x. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.1 | Der Schaden der Verteidigung durch den Feind liegt mit 0,1x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.2 | Die Widerstandsfähigkeit des Feindes liegt mit über dem Normalwert 1,2x. |
| EnemyPlayerDamageMultiplier | 0.5 | Der Schaden von Feinden an Spielern liegt mit 0,5x weit unter dem Normalwert. |
| EnemySpawnRate | 0.3 | Die Häufigkeit von Feinden liegt mit 0,3x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.5 | Die Ermüdungsrate liegt mit 0,5x weit unter dem Normalwert. |
| FirstTimeStartingWeapon | 2 | Die anfängliche Waffenversorgung liegt bei Standarddruck bei 2. |
| FoodSpoilSpeedMultiplier | 0.4 | Der Verderb von Lebensmitteln liegt mit 0,4x weit unter dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.5 | Die Hungerrate liegt mit 0,5x weit unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 3.0 | Die Haltbarkeit der Gegenstände ist mit 3x extrem. |
| ItemStackSizeMultiplier | 10.0 | Die Stapelkapazität ist mit extrem 10x. |
| ItemWeightMultiplier | 0.3 | Das Gewicht der Gegenstände liegt mit 0,3x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.7 | Der Erfahrungsgewinn ist mit 3,7x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | falsch | Strahlungsschaden ist deaktiviert. |
| RefrigerationEffectivenessMultiplier | 1.8 | Die Kühlung liegt mit 1,8x deutlich über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 3.0 | Die Nachfüllrate des Waschbeckens ist mit 3x extrem. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.5 | Die Durstrate liegt mit 0,5x weit unter dem Normalwert. |
| WeatherFrequency | 1 | Wetterhäufigkeit ist selten. |

<a id="optional-adapter-selection-9"></a>
### Optionale Adapterauswahl

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `survival_silent_recovery`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---measured-risk"></a>
## Tag 11 – Gemessenes Risiko

**Profil-ID:** `survival_measured_risk` **Allgemeine Bedingungen:** Günstige Konditionen (1.62/5) **Einfache Bedeutung:** Günstige Konditionen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Überlebensdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-10"></a>
### Haupteffekte

- Bonusvorteilspunkte sind Erleichterungsbedingungen (12).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0x).
- Die Stapelkapazität ist extrem (5x).
- Der Erfahrungsgewinn ist extrem (4,7x).
- Die Haltbarkeit des Gegenstands liegt deutlich über dem Normalwert (2,25x).

<a id="domain-ratings-10"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.81/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.82/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (0.9/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.96/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.43/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-10"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Ausweichtraining**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.2 | Die Geschwindigkeit der Gegnererkennung liegt mit 1,2x über dem Normalwert. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.4 | Der feindliche Schaden an der Verteidigung liegt mit 0,4x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.4 | Die Widerstandsfähigkeit des Feindes liegt mit 1,4x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.0 | Der Schaden von Feinden an Spielern ist bei 1x nahezu normal. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.0 | Die Ermüdungsrate ist bei 1x nahezu normal. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.8 | Der Lebensmittelverderb liegt mit 0,8x unter dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.0 | Die Hungerrate ist bei 1x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 2.25 | Die Haltbarkeit des Gegenstands beträgt deutlich über dem Normalwert bei 2,25x. |
| ItemStackSizeMultiplier | 5.0 | Stapelkapazität ist mit 5x extrem. |
| ItemWeightMultiplier | 0.5 | Das Gewicht des Gegenstands liegt mit 0,5x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 4.7 | Der Erfahrungsgewinn ist mit 4,7x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.3 | Kühlung liegt mit 1,3x über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 2.0 | Die Nachfüllrate des Spülbeckens liegt deutlich über dem Normalwert 2x. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.0 | Die Durstrate ist mit 1x nahezu normal. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-10"></a>
### Optionale Adapterauswahl

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `survival_measured_risk`
- `lethal_lasers`: `training_hazard`

<a id="day-12---predator-review"></a>
## Tag 12 – Predator-Rezension

**Profil-ID:** `survival_predator_review` **Allgemeine Bedingungen:** Anspruchsvolle Bedingungen (2.76/5) **Einfache Bedeutung:** Anspruchsvolle Bedingungen. Kampfdruck: Schwere Bedingungen sind der Hauptdruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-11"></a>
### Haupteffekte

- Gegnerpräzision: sehr genau.
- Der feindliche Schaden an Spielern ist extrem (3,1x).
- Spielschwierigkeit: sehr schwer.
- Die Widerstandsfähigkeit des Feindes ist extrem (2,9x).
- Die Geschwindigkeit der Feinderkennung ist extrem (2,7x).

<a id="domain-ratings-11"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | schwerwiegend (3.6/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | anspruchsvolle (3.03/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (1.73/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.22/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.79/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-11"></a>
### Begegnungskontext

- Stufe: **extreme Begegnungen**
- Thema: **Schwerer Ausweichtest**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 2.7 | Die Geschwindigkeit der Gegnererkennung ist mit 2,7x extrem. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.4 | Der Haltbarkeitsverlust bei Tod liegt mit 0,4x weit unter dem Normalwert. |
| EnemyAccuracy | 4 | Die Genauigkeit der Feinde ist sehr genau. |
| EnemyDeployableDamageMultiplier | 1.4 | Der feindliche Schaden an der Verteidigung liegt mit 1,4x über dem Normalwert. |
| EnemyHealthMultiplier | 2.9 | Die Widerstandsfähigkeit von Feinden ist mit 2,9x extrem. |
| EnemyPlayerDamageMultiplier | 3.1 | Der Schaden von Feinden an Spielern ist mit 3,1x extrem. |
| EnemySpawnRate | 1.5 | Die Häufigkeit von Feinden liegt über dem Normalwert normal bei 1,5x. |
| FatigueSpeedMultiplier | 1.7 | Die Ermüdungsrate liegt deutlich über dem Normalwert normal bei 1,7x. |
| FirstTimeStartingWeapon | 1 | Die anfängliche Waffenbereitstellung beträgt den Standarddruck bei 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Der Lebensmittelverderb ist bei 1,15x nahezu normal. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.7 | Die Hungerrate ist gut über dem Normalwert bei 1,7x. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.1 | Die Haltbarkeit des Gegenstands liegt mit 1,1x nahezu normal. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.8 | Das Gewicht des Gegenstands liegt mit unter dem Normalwert 0,8x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.8 | Der Erfahrungsgewinn ist mit 3,8x extrem. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.85 | Die Kühlung ist mit 0,85x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.75 | Spüle auffüllen Die Rate liegt mit 0,75x unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.7 | Die Durstrate liegt mit 1,7x deutlich über dem Normalwert. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-11"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `survival_predator_review`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-shift-survival"></a>
## Tag 13 – Überleben in langen Schichten

**Profil-ID:** `survival_long_shift_survival` **Allgemeine Bedingungen:**Standarddruck(2.57/5) **Einfache Bedeutung:** Standarddruck. Überlebensdruck: Schwere Bedingungen sind der Hauptdruck. Kampfdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-12"></a>
### Haupteffekte

- Spielschwierigkeit: sehr schwer.
- Grundbestandsgröße ist schwierige Bedingungen (10).
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,4x).
- Sinkwasser kann unsicher sein.
- Hungerrate liegt deutlich über dem Normalwert (2,3x).

<a id="domain-ratings-12"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.61/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | schwerwiegend (3.65/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (2.09/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.01/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.77/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-12"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Ausweichausdauer**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 1.5 | Die Erkennungsgeschwindigkeit von Feinden liegt mit 1,5x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.35 | Der Haltbarkeitsverlust im Todesfall liegt mit 0,35x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.9 | Der Schaden der Feinde an der Verteidigung ist mit 0,9x nahezu normal. |
| EnemyHealthMultiplier | 2.1 | Die Widerstandskraft des Feindes liegt mit 2,1x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.0 | Der Schaden der Spieler durch Feinde liegt mit 2x deutlich über dem Normalwert. |
| EnemySpawnRate | 0.6 | Die Häufigkeit von Feinden liegt mit 0,6x unter dem Normalwert. |
| FatigueSpeedMultiplier | 2.2 | Die Ermüdungsrate liegt mit 2,2x deutlich über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Der Lebensmittelverderb liegt mit 1,8x deutlich über dem Normalwert. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 2.3 | Die Hungerrate liegt deutlich über dem Normalwert 2,3x. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 0.9 | Die Haltbarkeit des Artikels liegt mit 0,9x nahezu im Normalbereich. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 1.2 | Gegenstandsgewicht liegt mit 1,2x über dem Normalwert. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.4 | Der Erfahrungsgewinn liegt mit 2,4x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.65 | Die Kühlung liegt bei 0,65x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.35 | Die Nachfüllrate des Spülbeckens liegt bei 0,35x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 2.3 | Die Durstrate liegt mit 2,3x deutlich über dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-12"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `survival_long_shift_survival`
- `lethal_lasers`: `standard_safety`

<a id="day-14---false-calm"></a>
## Tag 14 – Falsche Ruhe

**Profil-ID:** `survival_false_calm` **Allgemeine Bedingungen:** Günstige Konditionen (1.29/5) **Einfache Bedeutung:** Günstige Bedingungen. Erholungsdruck: Günstige Bedingungen sind der Hauptdruck. Umweltbelastung: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

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
| Kampfdruck | günstig (1.55/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (0.92/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | Erleichterung (0.79/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | günstig (1.58/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.67/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-13"></a>
### Begegnungskontext

- Stufe: **minimale Begegnungen**
- Thema: **Umgehungserleichterung**
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
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 0.8 | Die Geschwindigkeit der Gegnererkennung liegt mit 0,8x unter dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 0.1 | Der Schaden der Verteidigung durch den Feind liegt mit 0,1x weit unter dem Normalwert. |
| EnemyHealthMultiplier | 1.2 | Die Widerstandsfähigkeit des Feindes liegt mit über dem Normalwert 1,2x. |
| EnemyPlayerDamageMultiplier | 0.8 | Der Schaden der Feinde an Spielern liegt mit unter dem Normalwert 0,8x. |
| EnemySpawnRate | 0.3 | Die Häufigkeit von Feinden liegt mit 0,3x weit unter dem Normalwert. |
| FatigueSpeedMultiplier | 0.4 | Die Ermüdungsrate liegt mit 0,4x weit unter dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.25 | Der Lebensmittelverderb liegt weit unter dem Normalwert bei 0,25x. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.4 | Die Hungerrate liegt mit 0,4x weit unter dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 6.0 | Die Haltbarkeit der Gegenstände ist mit 6x extrem. |
| ItemStackSizeMultiplier | 20.0 | Die Stapelkapazität ist mit 20x extrem. |
| ItemWeightMultiplier | 0.2 | Das Gewicht der Gegenstände liegt mit 0,2x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 5.4 | Der Erfahrungsgewinn ist mit 5,4x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | falsch | Strahlungsschaden ist deaktiviert. |
| RefrigerationEffectivenessMultiplier | 2.0 | Die Kühlung liegt mit 2x deutlich über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 5.0 | Die Nachfüllrate des Waschbeckens ist mit 5x extrem. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 0.4 | Die Durstrate ist mit 0,4x weit unter dem Normalwert. |
| WeatherFrequency | 1 | Wetterhäufigkeit ist selten. |

<a id="optional-adapter-selection-13"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `survival_false_calm`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---seen-first-dead-first"></a>
## Tag 15 – Zuerst gesehen, zuerst tot

**Profil-ID:** `survival_seen_first_dead_first` **Allgemeine Bedingungen:**Standarddruck(2.28/5) **Einfache Bedeutung:**Standarddruck. Kampfdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Überlebensdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-14"></a>
### Haupteffekte

- Spielschwierigkeit: sehr schwer.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Der Erfahrungsgewinn ist extrem (3x).
- Der feindliche Schaden an Spielern liegt deutlich über dem Normalwert (2,3x).
- Todesstrafen: Schwer.

<a id="domain-ratings-14"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.74/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | Standard (2.35/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.67/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.17/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.76/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-14"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Umgehungspräzision**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 2.0 | Die Geschwindigkeit der Gegnererkennung liegt mit 2x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.3 | Der Haltbarkeitsverlust bei Tod liegt mit 0,3x weit unter dem Normalwert. |
| EnemyAccuracy | 3 | Die Genauigkeit des Feindes beträgt genau. |
| EnemyDeployableDamageMultiplier | 0.8 | Der Schaden der Feinde an der Verteidigung liegt mit 0,8x unter dem Normalwert. |
| EnemyHealthMultiplier | 1.6 | Die Widerstandsfähigkeit des Feindes liegt mit 1,6x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 2.3 | Der Schaden des Gegners an Spielern liegt mit 2,3x deutlich über dem Normalwert. |
| EnemySpawnRate | 0.8 | Die Häufigkeit von Feinden liegt mit 0,8x unter dem Normalwert. |
| FatigueSpeedMultiplier | 1.7 | Die Ermüdungsrate liegt deutlich über dem Normalwert normal bei 1,7x. |
| FirstTimeStartingWeapon | 4 | Der Beginn der Waffenversorgung ist ab dem 4. Tag günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.4 | Hungerrate liegt mit 1,4x über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.0 | Die Haltbarkeit des Gegenstands liegt mit 1x nahezu normal. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 0.8 | Das Gewicht des Gegenstands liegt mit unter dem Normalwert 0,8x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.0 | Der Erfahrungsgewinn ist mit 3x extrem. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 1.0 | Die Kühlung ist mit 1x nahezu normal. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 1.0 | Die Nachfüllrate des Spülbeckens ist mit 1x nahezu normal. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | falsch | Spülbeckenwasser wird durch diese Regel nicht beeinträchtigt. |
| ThirstSpeedMultiplier | 1.4 | Die Durstrate liegt mit 1,4x über dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-14"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `survival_seen_first_dead_first`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---unapproved-conditions"></a>
## Tag 16 – Nicht genehmigte Bedingungen

**Profil-ID:** `survival_unapproved_conditions` **Allgemeine Bedingungen:**Standarddruck(2.33/5) **Einfache Bedeutung:** Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Kampfdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

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
| Kampfdruck | anspruchsvolle (2.77/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | anspruchsvolle (2.82/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | günstig (1.09/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.59/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.67/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-15"></a>
### Begegnungskontext

- Stufe: **extreme Begegnungen**
- Thema: **Umgehung experimentell**
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
| DayNightCycleState | 1 | Der Tag-Nacht-Zustand ist tagabhängig. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 0.8 | Die Geschwindigkeit der Gegnererkennung liegt mit 0,8x unter dem Normalwert. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 4 | Die Genauigkeit der Feinde ist sehr genau. |
| EnemyDeployableDamageMultiplier | 0.7 | Der Schaden der Verteidigung durch Feinde liegt mit 0,7x unter dem Normalwert. |
| EnemyHealthMultiplier | 2.3 | Die Widerstandsfähigkeit der Feinde liegt mit 2,3x deutlich über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.5 | Der Schaden von Feinden an Spielern liegt mit 1,5x über dem Normalwert. |
| EnemySpawnRate | 1.0 | Die Häufigkeit von Feinden ist mit 1x nahezu normal. |
| FatigueSpeedMultiplier | 1.2 | Die Ermüdungsrate liegt mit dem 1,2-fachen über dem Normalwert. |
| FirstTimeStartingWeapon | 6 | Die anfängliche Waffenversorgung ist bei 6 günstig. |
| FoodSpoilSpeedMultiplier | 0.4 | Der Verderb von Lebensmitteln liegt mit 0,4x weit unter dem Normalwert. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.2 | Die Hungerrate liegt über dem Normalwert normal bei 1,2x. |
| InvisibleRadiation | wahr | Bei manchen Strahlungen fehlt möglicherweise eine sichtbare Warnung. |
| ItemDurabilityMultiplier | 5.0 | Die Haltbarkeit des Gegenstands ist mit 5x extrem. |
| ItemStackSizeMultiplier | 15.0 | Die Stapelkapazität ist mit 15x extrem. |
| ItemWeightMultiplier | 0.2 | Das Gewicht der Gegenstände liegt mit 0,2x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 6.0 | Der Erfahrungsgewinn ist mit 6x extrem. |
| PowerSocketsOffAtNight | falsch | Steckdosen bleiben nachts verfügbar. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 2.0 | Die Kühlung liegt mit 2x deutlich über dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.0 | Die Auffüllrate des Waschbeckens liegt bei 0x weit unter dem Normalwert. |
| StorageByTag | falsch | Tagged-Speicherorganisation ist deaktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.8 | Die Durstrate liegt mit 1,8x deutlich über dem Normalwert. |
| WeatherFrequency | 5 | Die Wetterhäufigkeit ist sehr häufig. |

<a id="optional-adapter-selection-15"></a>
### Optionale Adapterauswahl

- `ante_up`: `black_lab`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `survival_unapproved_conditions`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-evasion-test"></a>
## Tag 17 – Letzter Ausweichtest

**Profil-ID:** `survival_final_evasion_test` **Allgemeine Bedingungen:** Anspruchsvolle Bedingungen (3.01/5) **Einfache Bedeutung:** Anspruchsvolle Bedingungen. Kampfdruck: Schwere Bedingungen sind der Hauptdruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-16"></a>
### Haupteffekte

- Todesstrafen: schwer.
- Die Geschwindigkeit der Feinderkennung ist extrem (3,2x).
- Gegnerpräzision: sehr genau.
- Die Widerstandsfähigkeit des Feindes ist extrem (3,6x).
- Der feindliche Schaden an Spielern ist extrem (3,6x).

<a id="domain-ratings-16"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | schwerwiegend (3.87/5) | Der feindliche Druck ist stark; Vermeiden Sie nicht unterstützte Kämpfe. |
| Überlebensdruck | anspruchsvolle (3.39/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (1.83/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.55/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (2.0/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-16"></a>
### Begegnungskontext

- Stufe: **Capstone-Begegnungen**
- Thema: **Umgehungsschlussstein**
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
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 3 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 3.2 | Die Geschwindigkeit der Gegnererkennung ist mit 3,2x extrem. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.5 | Der Haltbarkeitsverlust bei Tod liegt mit 0,5x weit unter dem Normalwert. |
| EnemyAccuracy | 4 | Die Genauigkeit der Feinde ist sehr genau. |
| EnemyDeployableDamageMultiplier | 2.0 | Der feindliche Schaden an der Verteidigung liegt mit 2x deutlich über dem Normalwert. |
| EnemyHealthMultiplier | 3.6 | Die Widerstandsfähigkeit des Feindes ist mit 3,6x extrem. |
| EnemyPlayerDamageMultiplier | 3.6 | Der Schaden von Feinden an Spielern ist mit 3,6x extrem. |
| EnemySpawnRate | 2.0 | Die Häufigkeit von Feinden liegt mit 2x deutlich über dem Normalwert. |
| FatigueSpeedMultiplier | 2.0 | Die Ermüdungsrate liegt deutlich über dem Normalwert 2x. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Lebensmittelverderb ist mit 1,6x über dem Normalwert. |
| GameDifficulty | 3 | Der Schwierigkeitsgrad des Spiels ist sehr hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 2.1 | Die Hungerrate liegt mit 2,1x deutlich über dem Normalwert. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.0 | Die Haltbarkeit des Gegenstands liegt mit 1x nahezu normal. |
| ItemStackSizeMultiplier | 3.0 | Die Stapelkapazität ist mit 3x extrem. |
| ItemWeightMultiplier | 0.9 | Das Gewicht des Gegenstands ist bei nahezu normal 0,9x. |
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
| ThirstSpeedMultiplier | 2.1 | Die Durstrate liegt mit 2,1x deutlich über dem Normalwert. |
| WeatherFrequency | 5 | Die Wetterhäufigkeit ist sehr häufig. |

<a id="optional-adapter-selection-16"></a>
### Optionale Adapterauswahl

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `survival_final_evasion_test`
- `lethal_lasers`: `overcharged_high_hazard`
