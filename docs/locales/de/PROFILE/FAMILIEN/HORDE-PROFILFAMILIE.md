<a id="randomday---horde-family"></a>
# RandomDay - Hordefamilie

> **Kanonisch-englische Quelle:** [horde.md](../../../../profiles/families/horde.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Version: `v0.3.16-alpha`

Mengenproblem. Die Einrichtung hat zu viele Feinde bestellt.

**Spielstil:** Massendruck und Schwarmkontrolle **Nachrichtenton:**überlastetes Logistikbüro

<a id="17-day-index"></a>
## 17-Tage-Index

| Tag | Profil | Bedingungen | Hauptdruck |
|---:|---|---|---|
| 1 | Headcount Error | Standarddruck (1.82/5) | Umweltdruck |
| 2 | Open Floor Overflow | Günstige Bedingungen (1.32/5) | Umweltdruck |
| 3 | Pest Überbuchung | Standarddruck (2.13/5) | Überlebensdruck |
| 4 | Supply Line Stampede | Günstige Bedingungen (1.46/5) | Umweltdruck |
| 5 | Massenkontrolle falsch eingereicht | Standarddruck (2.02/5) | Kampfdruck |
| 6 | Wetter der Leichen | Standarddruck (1.99/5) | Umweltdruck |
| 7 | Anwesenheit in der Nachtschicht | Standarddruck (2.02/5) | Kampfdruck |
| 8 | Streckenüberlastung | Standarddruck (1.8/5) | Umweltdruck |
| 9 | Aufruhr in der Lebensmittelschlange | Standarddruck (2.14/5) | Überlebensdruck |
| 10 | Kurzzeitig weniger überfüllt | Günstige Bedingungen (1.08/5) | Umweltdruck |
| 11 | Anstieg der Trainingsbevölkerung | Günstige Bedingungen (1.47/5) | Umweltdruck |
| 12 | Black Lab Crowd Review | Standarddruck (2.42/5) | Kampfdruck |
| 13 | Erweiterte Linienbildung | Standarddruck (2.23/5) | Überlebensdruck |
| 14 | Versorgung Closet Queue | Günstige Bedingungen (1.07/5) | Umweltdruck |
| 15 | Genauigkeit nach Volumen | Standarddruck (1.98/5) | Kampfdruck |
| 16 | Experimentelle Massendichte | Standarddruck (2.1/5) | Umweltdruck |
| 17 | Endgültiges Anwesenheitsproblem | Standarddruck (2.58/5) | Kampfdruck |

<a id="day-1---headcount-error"></a>
## Tag 1 – Fehler bei der Mitarbeiterzahl

**Profil-ID:** `horde_headcount_error` **Allgemeine Bedingungen:**Standarddruck(1.82/5) **Einfache Bedeutung:**Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Überlebensdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects"></a>
### Haupteffekte

- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,25x).
- Stapelkapazität liegt deutlich über dem Normalwert (2x).
- Steckdosen schalten sich nachts ab.
- Feindfrequenz liegt deutlich über dem Normalwert (1,8x).

<a id="domain-ratings"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.77/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.9/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | Standard (1.78/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.22/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Schwarmorientierung**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.091**
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
| DetectionSpeedMultiplier | 0.9 | Die Geschwindigkeit der Gegnererkennung ist mit 0,9x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.7 | Die Widerstandsfähigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.8 | Der Schaden der Feinde an Spielern liegt mit unter dem Normalwert 0,8x. |
| EnemySpawnRate | 1.8 | Die Häufigkeit von Feinden liegt mit 1,8x deutlich über dem Normalwert. |
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
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 1.0 | Das Gewicht des Gegenstands ist bei nahezu normal 1x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.3 | Der Erfahrungsgewinn liegt mit 1,3x über dem Normalwert. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_headcount_error`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-overflow"></a>
## Tag 2 – Open Floor Overflow

**Profil-ID:** `horde_open_floor_overflow` **Allgemeine Bedingungen:** Günstige Konditionen (1.32/5) **Einfache Bedeutung:** Günstige Konditionen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Überlebensdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-1"></a>
### Haupteffekte

- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Die Haltbarkeit der Gegenstände ist extrem (4x).
- Die Stapelkapazität ist extrem (8x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,05x).
- Todesstrafen: minimal.

<a id="domain-ratings-1"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.25/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (1.34/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (1.13/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.91/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.2/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-1"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Schwarmvorbereitung**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.036**
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
| DetectionSpeedMultiplier | 0.6 | Die Geschwindigkeit der Gegnererkennung ist unter dem Normalwert bei 0,6x. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.05 | Der Haltbarkeitsverlust bei Tod liegt mit 0,05x weit unter dem Normalwert. |
| EnemyAccuracy | 0 | Gegnergenauigkeit ist arm. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.6 | Die Widerstandsfähigkeit des Feindes liegt mit 0,6x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.5 | Der Schaden von Feinden an Spielern liegt mit 0,5x weit unter dem Normalwert. |
| EnemySpawnRate | 1.0 | Die Häufigkeit von Feinden ist mit 1x nahezu normal. |
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
| ItemStackSizeMultiplier | 8.0 | Die Stapelkapazität ist mit 8x extrem. |
| ItemWeightMultiplier | 0.5 | Das Gewicht des Gegenstands liegt mit 0,5x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.8 | Der Erfahrungsgewinn liegt deutlich darüber normal bei 1,8x. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_open_floor_overflow`
- `lethal_lasers`: `low_hazard`

<a id="day-3---pest-overbooking"></a>
## Tag 3 – Schädlingsüberbuchung

**Profil-ID:** `horde_pest_overbooking` **Allgemeine Bedingungen:**Standarddruck(2.13/5) **Einfache Bedeutung:**Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-2"></a>
### Haupteffekte

- Sinkwasser kann unsicher sein.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,25x).
- Spielschwierigkeit: Schwer.
- Stapelkapazität liegt deutlich über dem Normalwert (2x).

<a id="domain-ratings-2"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.98/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (2.84/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (1.93/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.22/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-2"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Schwarmbioressource**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.118**
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
| DetectionSpeedMultiplier | 0.9 | Die Geschwindigkeit der Gegnererkennung ist mit 0,9x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.8 | Die Widerstandsfähigkeit des Feindes liegt mit 0,8x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.9 | Der feindliche Schaden an Spielern ist mit 0,9x nahezu normal. |
| EnemySpawnRate | 1.9 | Die Häufigkeit von Feinden liegt mit 1,9x deutlich über dem Normalwert. |
| FatigueSpeedMultiplier | 1.1 | Die Ermüdungsrate ist mit 1,1x nahezu normal. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Der Lebensmittelverderb liegt mit 1,25x über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.2 | Die Hungerrate liegt über dem Normalwert normal bei 1,2x. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.25 | Die Haltbarkeit des Gegenstands liegt mit 1,25x über dem Normalwert. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 1.0 | Das Gewicht des Gegenstands ist bei nahezu normal 1x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.5 | Der Erfahrungsgewinn liegt mit 1,5x über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.75 | Die Kühlung liegt mit 0,75x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.25 | Die Nachfüllrate des Spülbeckens liegt mit 0,25x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.7 | Die Durstrate liegt mit 1,7x deutlich über dem Normalwert. |
| WeatherFrequency | 3 | Die Wetterhäufigkeit ist normal. |

<a id="optional-adapter-selection-2"></a>
### Optionale Adapterauswahl

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_pest_overbooking`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-line-stampede"></a>
## Tag 4 – Ansturm auf die Versorgungslinie

**Profil-ID:** `horde_supply_line_stampede` **Allgemeine Bedingungen:** Günstige Konditionen (1.46/5) **Einfache Bedeutung:** Günstige Bedingungen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-3"></a>
### Haupteffekte

- Die Haltbarkeit der Gegenstände ist extrem (2,5x).
- Die Stapelkapazität ist extrem (14x).
- Die Nachfüllrate der Senke ist extrem (2,5x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,05x).
- Grundinventargröße entspricht Erleichterungsbedingungen (30).

<a id="domain-ratings-3"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.51/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.5/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (1.03/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.93/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.44/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-3"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Schwarmbeutemobilität**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.073**
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
| DetectionSpeedMultiplier | 0.7 | Die Geschwindigkeit der Feinderkennung liegt mit 0,7x unter dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.05 | Der Haltbarkeitsverlust bei Tod liegt mit 0,05x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.6 | Die Widerstandsfähigkeit des Feindes liegt mit 0,6x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.7 | Der Schaden von Feinden an Spielern liegt mit 0,7x unter dem Normalwert. |
| EnemySpawnRate | 1.4 | Die Häufigkeit von Feinden liegt mit 1,4x über dem Normalwert. |
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
| ItemStackSizeMultiplier | 14.0 | Die Stapelkapazität ist mit 14x extrem. |
| ItemWeightMultiplier | 0.3 | Das Gewicht der Gegenstände liegt mit 0,3x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.9 | Der Erfahrungsgewinn liegt mit 1,9x deutlich über dem Normalwert. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_supply_line_stampede`
- `lethal_lasers`: `low_hazard`

<a id="day-5---crowd-control-misfiled"></a>
## Tag 5 – Massenkontrolle fehlgeschlagen

**Profil-ID:** `horde_crowd_control_misfiled` **Allgemeine Bedingungen:**Standarddruck(2.02/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Der Standarddruck ist der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-4"></a>
### Haupteffekte

- Die Häufigkeit von Feinden ist extrem (2,7x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,1x).
- Spielschwierigkeit: Schwer.
- Stapelkapazität liegt deutlich über dem Normalwert (2x).
- Steckdosen schalten sich nachts ab.

<a id="domain-ratings-4"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.34/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.94/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | Standard (1.72/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.17/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.51/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-4"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Schwarmsicherheit**
- Maximale aktive Gruppen: **2**
- Gemischte Begegnungschance: **0.155**
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
| DetectionSpeedMultiplier | 1.7 | Die Geschwindigkeit der Gegnererkennung liegt mit 1,7x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.3 | Der Haltbarkeitsverlust bei Tod liegt mit 0,3x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.8 | Die Widerstandsfähigkeit des Feindes liegt mit 0,8x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.1 | Der Schaden von Feinden an Spielern ist mit 1,1x nahezu normal. |
| EnemySpawnRate | 2.7 | Die Häufigkeit von Feinden ist mit 2,7x extrem. |
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
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 1.0 | Das Gewicht des Gegenstands ist bei nahezu normal 1x. |
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
| ThirstSpeedMultiplier | 1.0 | Die Durstrate ist mit 1x nahezu normal. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-4"></a>
### Optionale Adapterauswahl

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_crowd_control_misfiled`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weather-of-bodies"></a>
## Tag 6 – Wetter der Körper

**Profil-ID:** `horde_weather_of_bodies` **Allgemeine Bedingungen:**Standarddruck(1.99/5) **Einfache Bedeutung:**Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Überlebensdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-5"></a>
### Haupteffekte

- Wetterhäufigkeit: sehr häufig.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,25x).
- Feindfrequenz liegt deutlich über dem Normalwert (2x).
- Spielschwierigkeit: Schwer.

<a id="domain-ratings-5"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.99/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (2.07/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | Standard (1.89/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.52/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.5/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-5"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Schwarmwetter**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.118**
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
| DetectionSpeedMultiplier | 1.0 | Die Erkennungsgeschwindigkeit von Feinden ist mit 1x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.25 | Der Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert 0,25x. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.7 | Die Widerstandsfähigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.9 | Der feindliche Schaden an Spielern ist mit 0,9x nahezu normal. |
| EnemySpawnRate | 2.0 | Die Häufigkeit von Feinden liegt mit 2x deutlich über dem Normalwert. |
| FatigueSpeedMultiplier | 1.1 | Die Ermüdungsrate ist mit 1,1x nahezu normal. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Der Lebensmittelverderb liegt mit 1,25x über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.1 | Die Hungerrate ist mit 1,1x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.1 | Die Haltbarkeit des Gegenstands liegt mit 1,1x nahezu normal. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 1.0 | Das Gewicht des Gegenstands ist bei nahezu normal 1x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.4 | Der Erfahrungsgewinn liegt mit 1,4x über dem Normalwert. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_weather_of_bodies`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-shift-attendance"></a>
## Tag 7 – Anwesenheit in der Nachtschicht

**Profil-ID:** `horde_night_shift_attendance` **Allgemeine Bedingungen:**Standarddruck(2.02/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Der Standarddruck ist der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-6"></a>
### Haupteffekte

- Die Häufigkeit von Feinden ist extrem (2,9x).
- Die Stapelkapazität ist extrem (3x).
- Tag-Nacht-Zustand: nachtabhängig.
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,2x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).

<a id="domain-ratings-6"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.34/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.96/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (1.59/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.33/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.49/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-6"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Schwarmnacht**
- Maximale aktive Gruppen: **2**
- Gemischte Begegnungschance: **0.155**
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
| DetectionSpeedMultiplier | 1.4 | Die Geschwindigkeit der Feinderkennung liegt mit 1,4x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.2 | Der Widerstandsverlust bei Tod liegt mit 0,2x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.8 | Die Widerstandsfähigkeit des Feindes liegt mit 0,8x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.0 | Der Schaden von Feinden an Spielern ist bei 1x nahezu normal. |
| EnemySpawnRate | 2.9 | Die Häufigkeit von Feinden ist mit 2,9x extrem. |
| FatigueSpeedMultiplier | 1.4 | Die Ermüdungsrate liegt mit 1,4x über dem Normalwert. |
| FirstTimeStartingWeapon | 5 | Die anfängliche Waffenbereitstellung ist mit 5 günstig. |
| FoodSpoilSpeedMultiplier | 1.0 | Lebensmittelverderb ist bei 1x nahezu normal. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 0.95 | Die Hungerrate liegt mit 0,95x nahezu normal. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 1.5 | Die Haltbarkeit des Gegenstands liegt bei 1,5x über dem Normalwert. |
| ItemStackSizeMultiplier | 3.0 | Die Stapelkapazität ist mit 3x extrem. |
| ItemWeightMultiplier | 0.8 | Das Gewicht des Gegenstands liegt mit unter dem Normalwert 0,8x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.0 | Der Erfahrungsgewinn beträgt bei 2x deutlich über dem Normalwert. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_night_shift_attendance`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-congestion"></a>
## Tag 8 – Routenüberlastung

**Profil-ID:** `horde_route_congestion` **Allgemeine Bedingungen:**Standarddruck(1.8/5) **Einfache Bedeutung:** Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-7"></a>
### Haupteffekte

- Die Geschwindigkeit des Tag-Nacht-Zyklus ist extrem (3x).
- Feindfrequenz liegt deutlich über dem Normalwert (2,4x).
- Die Stapelkapazität ist extrem (4x).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0,15x).
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).

<a id="domain-ratings-7"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.06/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.42/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (1.46/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.56/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.47/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-7"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Schwarmroute**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.137**
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
| DetectionSpeedMultiplier | 1.2 | Die Geschwindigkeit der Gegnererkennung liegt mit 1,2x über dem Normalwert. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.15 | Der Haltbarkeitsverlust bei Tod liegt mit 0,15x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.6 | Die Widerstandsfähigkeit des Feindes liegt mit 0,6x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.9 | Der feindliche Schaden an Spielern ist mit 0,9x nahezu normal. |
| EnemySpawnRate | 2.4 | Die Häufigkeit von Feinden liegt mit 2,4x deutlich über dem Normalwert. |
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
| ItemStackSizeMultiplier | 4.0 | Stapelkapazität ist bei 4x extrem. |
| ItemWeightMultiplier | 0.8 | Das Gewicht des Gegenstands liegt mit unter dem Normalwert 0,8x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.0 | Der Erfahrungsgewinn beträgt bei 2x deutlich über dem Normalwert. |
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
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_route_congestion`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-queue-riot"></a>
## Tag 9 – Ration Queue Riot

**Profil-ID:** `horde_ration_queue_riot` **Allgemeine Bedingungen:**Standarddruck(2.14/5) **Einfache Bedeutung:**Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Ressourcendruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-8"></a>
### Haupteffekte

- Grundbestandsgröße ist schwierige Bedingungen (10).
- Sinkwasser kann unsicher sein.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Lebensmittelverderb liegt weit über dem Normalwert (2x).
- Steckdosen schalten sich nachts ab.

<a id="domain-ratings-8"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (1.81/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (2.84/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (2.32/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.17/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.53/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-8"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Schwarmknappheit**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.109**
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
| DetectionSpeedMultiplier | 0.9 | Die Geschwindigkeit der Gegnererkennung ist mit 0,9x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.35 | Der Haltbarkeitsverlust im Todesfall liegt mit 0,35x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.8 | Die Widerstandsfähigkeit des Feindes liegt mit 0,8x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.9 | Der feindliche Schaden an Spielern ist mit 0,9x nahezu normal. |
| EnemySpawnRate | 1.8 | Die Häufigkeit von Feinden liegt mit 1,8x deutlich über dem Normalwert. |
| FatigueSpeedMultiplier | 1.3 | Die Ermüdungsrate liegt mit 1,3x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Der Lebensmittelverderb liegt mit 2x deutlich über dem Normalwert. |
| GameDifficulty | 1 | Spielschwierigkeit ist Standard. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.5 | Die Hungerrate liegt über dem Normalwert bei 1,5x. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 0.75 | Die Haltbarkeit des Artikels liegt mit 0,75x unter dem Normalwert. |
| ItemStackSizeMultiplier | 1.0 | Die Stapelkapazität ist mit 1x nahezu normal. |
| ItemWeightMultiplier | 1.4 | Das Artikelgewicht liegt über dem Normalwert bei 1,4x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.5 | Der Erfahrungsgewinn liegt mit 1,5x über dem Normalwert. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_ration_queue_riot`
- `lethal_lasers`: `standard_safety`

<a id="day-10---briefly-less-crowded"></a>
## Tag 10 – Kurzzeitig weniger überfüllt

**Profil-ID:** `horde_briefly_less_crowded` **Allgemeine Bedingungen:** Günstige Konditionen (1.08/5) **Einfache Bedeutung:** Günstige Bedingungen. Umweltbelastung: Günstige Bedingungen sind die Hauptbelastung. Erholungsdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

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
| Kampfdruck | günstig (1.01/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (1.02/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | günstig (0.9/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | günstig (1.54/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.19/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-9"></a>
### Begegnungskontext

- Stufe: **minimale Begegnungen**
- Thema: **Schwarmwiederherstellung**
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
| EnemyAccuracy | 0 | Gegnergenauigkeit ist arm. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.5 | Die Widerstandsfähigkeit des Feindes liegt mit 0,5x weit unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.3 | Der Schaden von Feinden an Spielern liegt mit 0,3x weit unter dem Normalwert. |
| EnemySpawnRate | 0.7 | Die Häufigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
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
| ItemStackSizeMultiplier | 10.0 | Die Stapelkapazität ist mit extrem 10x. |
| ItemWeightMultiplier | 0.4 | Gegenstandsgewicht liegt mit 0,4x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.6 | Der Erfahrungsgewinn ist mit 2,6x extrem. |
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
- `encounter_director`: `horde_briefly_less_crowded`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-population-spike"></a>
## Tag 11 – Anstieg der Trainingsbevölkerung

**Profil-ID:** `horde_training_population_spike` **Allgemeine Bedingungen:** Günstige Konditionen (1.47/5) **Einfache Bedeutung:** Günstige Konditionen. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Überlebensdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

<a id="main-effects-10"></a>
### Haupteffekte

- Bonusvorteilspunkte sind Erleichterungsbedingungen (12).
- Haltbarkeitsverlust bei Tod liegt weit unter dem Normalwert (0x).
- Die Stapelkapazität ist extrem (5x).
- Der Erfahrungsgewinn ist extrem (3,4x).
- Die Haltbarkeit des Gegenstands liegt deutlich über dem Normalwert (2,25x).

<a id="domain-ratings-10"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | günstig (1.52/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | günstig (1.58/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (0.93/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (1.96/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.43/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-10"></a>
### Begegnungskontext

- Stufe: **Leichte Begegnungen**
- Thema: **Schwarmtraining**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.064**
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
| DetectionSpeedMultiplier | 0.7 | Die Geschwindigkeit der Feinderkennung liegt mit 0,7x unter dem Normalwert. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1 | Der Schaden des Feindes an der Verteidigung ist mit 1x nahezu normal. |
| EnemyHealthMultiplier | 0.6 | Die Widerstandsfähigkeit des Feindes liegt mit 0,6x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.5 | Der Schaden von Feinden an Spielern liegt mit 0,5x weit unter dem Normalwert. |
| EnemySpawnRate | 1.7 | Die Häufigkeit von Feinden liegt mit 1,7x deutlich über dem Normalwert. |
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
| ItemStackSizeMultiplier | 5.0 | Stapelkapazität ist mit 5x extrem. |
| ItemWeightMultiplier | 0.7 | Das Gewicht des Artikels liegt mit 0,7x unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.4 | Der Erfahrungsgewinn ist mit 3,4x extrem. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_training_population_spike`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-crowd-review"></a>
## Tag 12 – Black Lab Crowd Review

**Profil-ID:** `horde_black_lab_crowd_review` **Allgemeine Bedingungen:**Standarddruck(2.42/5) **Einfache Bedeutung:**Standarddruck. Kampfdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Überlebensdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-11"></a>
### Haupteffekte

- Die Häufigkeit von Feinden ist extrem (4x).
- Spielschwierigkeit: sehr schwer.
- Der Erfahrungsgewinn ist extrem (2,7x).
- Sinkwasser kann unsicher sein.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,15x).

<a id="domain-ratings-11"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (2.94/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | Standard (2.53/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | Standard (1.78/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.22/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.79/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-11"></a>
### Begegnungskontext

- Stufe: **extreme Begegnungen**
- Thema: **Schwarmschwerer Test**
- Maximale aktive Gruppen: **3**
- Gemischte Begegnungschance: **0.209**
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
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.0 | Kontinenzrate ist mit 1x nahezu normal. |
| DamageToAlliesMultiplier | 0.15 | Der Schaden durch Eigenfeuer liegt mit 0,15x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.0 | Die Geschwindigkeit des Tag-Nacht-Zyklus ist mit 1x nahezu normal. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 1.7 | Die Geschwindigkeit der Gegnererkennung liegt mit 1,7x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.4 | Der Haltbarkeitsverlust bei Tod liegt mit 0,4x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 1.35 | Der feindliche Schaden an der Verteidigung liegt mit 1,35x über dem Normalwert. |
| EnemyHealthMultiplier | 1.3 | Die Widerstandsfähigkeit des Feindes liegt mit 1,3x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.6 | Der feindliche Schaden an Spielern liegt mit 1,6x über dem Normalwert. |
| EnemySpawnRate | 4.0 | Die Häufigkeit von Feinden ist mit 4x extrem. |
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
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 1.0 | Das Gewicht des Gegenstands ist bei nahezu normal 1x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.7 | Der Erfahrungsgewinn ist mit 2,7x extrem. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `horde_black_lab_crowd_review`
- `lethal_lasers`: `high_hazard`

<a id="day-13---extended-line-formation"></a>
## Tag 13 – Erweiterte Linienbildung

**Profil-ID:** `horde_extended_line_formation` **Allgemeine Bedingungen:**Standarddruck(2.23/5) **Einfache Bedeutung:**Standarddruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Ressourcendruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Nehmen Sie Nahrung und Wasser mit, ruhen Sie sich vor langen Reisen aus und planen Sie sichere Zwischenstopps.

<a id="main-effects-12"></a>
### Haupteffekte

- Grundbestandsgröße ist schwierige Bedingungen (10).
- Sinkwasser kann unsicher sein.
- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0,25x).
- Spielschwierigkeit: Schwer.
- Stapelkapazität liegt deutlich über dem Normalwert (2x).

<a id="domain-ratings-12"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.02/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | anspruchsvolle (3.11/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (2.17/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.01/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.53/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-12"></a>
### Begegnungskontext

- Stufe: **moderate Begegnungen**
- Thema: **Schwarmausdauer**
- Maximale aktive Gruppen: **1**
- Gemischte Begegnungschance: **0.127**
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
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 0.9 | Die Geschwindigkeit der Gegnererkennung ist mit 0,9x nahezu normal. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.35 | Der Haltbarkeitsverlust im Todesfall liegt mit 0,35x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1.35 | Der feindliche Schaden an der Verteidigung liegt mit 1,35x über dem Normalwert. |
| EnemyHealthMultiplier | 0.9 | Die Widerstandsfähigkeit des Feindes ist mit 0,9x nahezu normal. |
| EnemyPlayerDamageMultiplier | 1.0 | Der Schaden von Feinden an Spielern ist bei 1x nahezu normal. |
| EnemySpawnRate | 1.6 | Die Häufigkeit von Feinden liegt mit 1,6x über dem Normalwert. |
| FatigueSpeedMultiplier | 1.6 | Die Ermüdungsrate liegt mit 1,6x über dem Normalwert. |
| FirstTimeStartingWeapon | 0 | Die anfängliche Waffenversorgung ist Standarddruck bei 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Der Lebensmittelverderb liegt mit 1,8x deutlich über dem Normalwert. |
| GameDifficulty | 2 | Der Schwierigkeitsgrad des Spiels ist hoch. |
| HardcoreMode | falsch | Hardcore-Modus ist deaktiviert. |
| HomeWorlds | wahr | Verhalten in der Heimatwelt ist aktiviert. |
| HostAccessPlayerCorpses | wahr | Der Host kann zur Unterstützung bei der Genesung auf Spielerleichen zugreifen. |
| HungerSpeedMultiplier | 1.7 | Die Hungerrate ist gut über dem Normalwert bei 1,7x. |
| InvisibleRadiation | falsch | Strahlung wird durch diese Regel nicht unsichtbar gemacht. |
| ItemDurabilityMultiplier | 0.9 | Die Haltbarkeit des Artikels liegt mit 0,9x nahezu im Normalbereich. |
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 1.5 | Das Artikelgewicht liegt um das 1,5-fache über dem Normalwert. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 1.7 | Der Erfahrungsgewinn liegt mit 1,7x deutlich über dem Normalwert. |
| PowerSocketsOffAtNight | wahr | Steckdosen schalten sich nachts ab. |
| RadiationDealsDamage | wahr | Strahlung verursacht Schaden. |
| RefrigerationEffectivenessMultiplier | 0.65 | Die Kühlung liegt bei 0,65x unter dem Normalwert. |
| ShowDeathMessages | wahr | Todesmeldungen sind angezeigt. |
| SinkRefillRate | 0.35 | Die Nachfüllrate des Spülbeckens liegt bei 0,35x weit unter dem Normalwert. |
| StorageByTag | wahr | Die mit Tags versehene Speicherorganisation ist aktiviert. |
| StructuralSupportLimit | 0 | Die strukturelle Unterstützungsgrenze liegt beim Standarddruck bei 0. |
| TaintedSinkWater | wahr | Sinkwasser kann unsicher sein. |
| ThirstSpeedMultiplier | 1.7 | Die Durstrate liegt mit 1,7x deutlich über dem Normalwert. |
| WeatherFrequency | 2 | Wetterhäufigkeit ist gelegentlich. |

<a id="optional-adapter-selection-12"></a>
### Optionale Adapterauswahl

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_extended_line_formation`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-queue"></a>
## Tag 14 – Warteschlange im Vorratsschrank

**Profil-ID:** `horde_supply_closet_queue` **Allgemeine Bedingungen:** Günstige Konditionen (1.07/5) **Einfache Bedeutung:** Günstige Bedingungen. Umweltbelastung: Günstige Bedingungen sind die Hauptbelastung. Erholungsdruck: Günstige Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Nutzen Sie die günstigen Bedingungen zum Erkunden, Auffüllen, Reparieren und Vorbereiten für den nächsten Neustart.

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
| Kampfdruck | günstig (1.14/5) | Der feindliche Druck ist geringer als normal. |
| Überlebensdruck | günstig (0.86/5) | Die täglichen Überlebensbedürfnisse sind nachsichtig. |
| Ressourcendruck | Erleichterung (0.79/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | günstig (1.58/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.19/5) | Die Regeln für Tod und Genesung sind verzeihend. |

<a id="encounter-context-13"></a>
### Begegnungskontext

- Stufe: **minimale Begegnungen**
- Thema: **Schwarmentlastung**
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
| DetectionSpeedMultiplier | 0.5 | Die Erkennungsgeschwindigkeit von Feinden liegt mit 0,5x weit unter dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 0 | Gegnergenauigkeit ist arm. |
| EnemyDeployableDamageMultiplier | 1.35 | Der feindliche Schaden an der Verteidigung liegt mit 1,35x über dem Normalwert. |
| EnemyHealthMultiplier | 0.5 | Die Widerstandsfähigkeit des Feindes liegt mit 0,5x weit unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 0.4 | Der Schaden von Feinden an Spielern liegt mit 0,4x weit unter dem Normalwert. |
| EnemySpawnRate | 0.9 | Die Häufigkeit von Feinden ist mit 0,9x nahezu normal. |
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
| ItemStackSizeMultiplier | 20.0 | Die Stapelkapazität ist mit 20x extrem. |
| ItemWeightMultiplier | 0.2 | Das Gewicht der Gegenstände liegt mit 0,2x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.8 | Der Erfahrungsgewinn ist mit 3,8x extrem. |
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
- `encounter_director`: `horde_supply_closet_queue`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-by-volume"></a>
## Tag 15 – Genauigkeit nach Volumen

**Profil-ID:** `horde_accuracy_by_volume` **Allgemeine Bedingungen:**Standarddruck(1.98/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Der Standarddruck ist der Hauptdruck. Umgebungsdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-14"></a>
### Haupteffekte

- Der Schaden durch Eigenfeuer liegt weit unter dem Normalwert (0x).
- Der Erfahrungsgewinn liegt weit über dem Normalwert (2,2x).
- Feindfrequenz liegt deutlich über dem Normalwert (2,1x).
- Spielschwierigkeit: Schwer.
- Stapelkapazität liegt deutlich über dem Normalwert (2x).

<a id="domain-ratings-14"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.21/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (1.98/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | Standard (1.71/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.17/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.51/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-14"></a>
### Begegnungskontext

- Stufe: **schwere Begegnungen**
- Thema: **Schwarmpräzision**
- Maximale aktive Gruppen: **2**
- Gemischte Begegnungschance: **0.155**
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
| DeathPenalties | 1 | Todesstrafen sind Standard. |
| DetectionSpeedMultiplier | 1.3 | Die Geschwindigkeit der Gegnererkennung liegt mit 1,3x über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.3 | Der Haltbarkeitsverlust bei Tod liegt mit 0,3x weit unter dem Normalwert. |
| EnemyAccuracy | 1 | Die Genauigkeit des Feindes ist verringert. |
| EnemyDeployableDamageMultiplier | 1.35 | Der feindliche Schaden an der Verteidigung liegt mit 1,35x über dem Normalwert. |
| EnemyHealthMultiplier | 0.7 | Die Widerstandsfähigkeit von Feinden liegt mit 0,7x unter dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.2 | Der Schaden von Feinden an Spielern liegt mit 1,2x über dem Normalwert. |
| EnemySpawnRate | 2.1 | Die Häufigkeit von Feinden liegt mit 2,1x deutlich über dem Normalwert. |
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
| ItemStackSizeMultiplier | 2.0 | Die Stapelkapazität liegt bei 2x deutlich über dem Normalwert. |
| ItemWeightMultiplier | 1.0 | Das Gewicht des Gegenstands ist bei nahezu normal 1x. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 2.2 | Der Erfahrungsgewinn liegt mit 2,2x deutlich über dem Normalwert. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `horde_accuracy_by_volume`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-crowd-density"></a>
## Tag 16 – Experimentelle Menschendichte

**Profil-ID:** `horde_experimental_crowd_density` **Allgemeine Bedingungen:**Standarddruck(2.1/5) **Einfache Bedeutung:** Standarddruck. Umgebungsdruck: Der Standarddruck ist der Hauptdruck. Kampfdruck: Der Standarddruck ist der zweitstärkste Faktor. **Spielerratschlag:** Überprüfen Sie Strom, Wasser, Unterkunft und Gefahrenschutz, bevor Sie die Basis verlassen.

<a id="main-effects-15"></a>
### Haupteffekte

- Spielschwierigkeit: sehr schwer.
- Bei manchen Strahlungen fehlt möglicherweise eine sichtbare Warnung.
- Wetterhäufigkeit: sehr häufig.
- Die Häufigkeit von Feinden ist extrem (2,6x).
- Grundinventargröße entspricht Erleichterungsbedingungen (42).

<a id="domain-ratings-15"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | Standard (2.47/5) | Der feindliche Druck ist nahezu normal. |
| Überlebensdruck | Standard (2.36/5) | Der tägliche Überlebensbedarf ist nahezu normal. |
| Ressourcendruck | günstig (0.99/5) | Vorräte und Transportbedingungen sind günstig. |
| Umweltdruck | Standard (2.59/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | günstig (1.67/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-15"></a>
### Begegnungskontext

- Stufe: **extreme Begegnungen**
- Thema: **schwarmexperimentell**
- Maximale aktive Gruppen: **3**
- Gemischte Begegnungschance: **0.2**
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
| BonusPerkPoints | 15 | Bonusvorteilspunkte sind Entlastungsbedingungen bei 15. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.2 | Kontinenzrate liegt mit 1,2x über dem Normalwert. |
| DamageToAlliesMultiplier | 0.0 | Der Schaden durch Eigenfeuer liegt mit 0x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.5 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 1,5x über dem Normalwert. |
| DayNightCycleState | 1 | Der Tag-Nacht-Zustand ist tagabhängig. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 0.5 | Die Erkennungsgeschwindigkeit von Feinden liegt mit 0,5x weit unter dem Normalwert. |
| DisableResearchMinigame | wahr | Forschungsbypass ist aktiviert. |
| DurabilityLossOnDeathMultiplier | 0.0 | Der Haltbarkeitsverlust bei Tod liegt mit 0x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 1.35 | Der feindliche Schaden an der Verteidigung liegt mit 1,35x über dem Normalwert. |
| EnemyHealthMultiplier | 1.0 | Die Widerstandsfähigkeit des Feindes ist bei 1x nahezu normal. |
| EnemyPlayerDamageMultiplier | 0.8 | Der Schaden der Feinde an Spielern liegt mit unter dem Normalwert 0,8x. |
| EnemySpawnRate | 2.6 | Die Häufigkeit der Feinde ist mit 2,6x extrem. |
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
| ItemStackSizeMultiplier | 15.0 | Die Stapelkapazität ist mit 15x extrem. |
| ItemWeightMultiplier | 0.2 | Das Gewicht der Gegenstände liegt mit 0,2x weit unter dem Normalwert. |
| LootRespawnEnabled | wahr | Beute kann nach dem Einsammeln zurückgegeben werden. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 4.3 | Der Erfahrungsgewinn ist mit 4,3x extrem. |
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

- `ante_up`: `security`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `horde_experimental_crowd_density`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-attendance-problem"></a>
## Tag 17 – Problem mit der letzten Anwesenheit

**Profil-ID:** `horde_final_attendance_problem` **Allgemeine Bedingungen:**Standarddruck(2.58/5) **Einfache Bedeutung:** Standarddruck. Kampfdruck: Anspruchsvolle Bedingungen sind der Hauptdruck. Überlebensdruck: Anspruchsvolle Bedingungen sind der zweitstärkste Faktor. **Spielerratschlag:**Munition tragen, einen Rückzugsweg einhalten und Kämpfe ohne Unterstützung vermeiden.

<a id="main-effects-16"></a>
### Haupteffekte

- Die Häufigkeit von Feinden ist extrem (5,2x).
- Spielschwierigkeit: sehr schwer.
- Wetterhäufigkeit: sehr häufig.
- Die Stapelkapazität ist extrem (3x).
- Der Erfahrungsgewinn ist extrem (3,9x).

<a id="domain-ratings-16"></a>
### Domainbewertungen

| Bereich | Bewertung | Bedeutung |
|---|---|---|
| Kampfdruck | anspruchsvolle (3.12/5) | Der feindliche Druck ist erhöht; Bereiten Sie sich vor, bevor Sie sich engagieren. |
| Überlebensdruck | anspruchsvolle (2.72/5) | Hunger, Durst, Müdigkeit oder Hygiene erfordern mehr Aufmerksamkeit. |
| Ressourcendruck | Standard (1.88/5) | Die Versorgungs- und Transportbedingungen sind nahezu normal. |
| Umweltdruck | Standard (2.55/5) | Die Umgebungsbedingungen sind nahezu normal. |
| Erholungsdruck | Standard (1.81/5) | Die Todes- und Wiederherstellungsregeln sind nahezu normal. |

<a id="encounter-context-16"></a>
### Begegnungskontext

- Stufe: **Capstone-Begegnungen**
- Thema: **Schwarm-Abschlussstein**
- Maximale aktive Gruppen: **3**
- Gemischte Begegnungschance: **0.255**
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
| BonusPerkPoints | 0 | Bonusvorteilspunkte sind Standarddruck bei 0. |
| BridgeSupports | 0 | Brückenunterstützungsgrenze ist Standarddruck bei 0. |
| ContinenceSpeedMultiplier | 1.1 | Die Kontinenzrate ist mit 1,1x nahezu normal. |
| DamageToAlliesMultiplier | 0.1 | Der Schaden durch Eigenfeuer liegt mit 0,1x weit unter dem Normalwert. |
| DayNightCycleSpeedMultiplier | 1.45 | Die Geschwindigkeit des Tag-Nacht-Zyklus liegt mit 1,45x über dem Normalwert. |
| DayNightCycleState | 0 | Tag-Nacht-Zustand ist normaler Zyklus. |
| DeathPenalties | 2 | Die Todesstrafe ist hoch. |
| DetectionSpeedMultiplier | 2.0 | Die Geschwindigkeit der Gegnererkennung liegt mit 2x deutlich über dem Normalwert. |
| DisableResearchMinigame | falsch | Forschung verwendet das normale Minispiel. |
| DurabilityLossOnDeathMultiplier | 0.5 | Der Haltbarkeitsverlust bei Tod liegt mit 0,5x weit unter dem Normalwert. |
| EnemyAccuracy | 2 | Die Genauigkeit des Feindes ist Standard. |
| EnemyDeployableDamageMultiplier | 1.35 | Der feindliche Schaden an der Verteidigung liegt mit 1,35x über dem Normalwert. |
| EnemyHealthMultiplier | 1.6 | Die Widerstandsfähigkeit des Feindes liegt mit 1,6x über dem Normalwert. |
| EnemyPlayerDamageMultiplier | 1.9 | Der feindliche Schaden an Spielern liegt mit 1,9x deutlich über dem Normalwert. |
| EnemySpawnRate | 5.2 | Die Feindfrequenz ist mit 5,2x extrem. |
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
| ItemStackSizeMultiplier | 3.0 | Die Stapelkapazität ist mit 3x extrem. |
| ItemWeightMultiplier | 1.1 | Das Gewicht des Gegenstands ist mit 1,1x nahezu normal. |
| LootRespawnEnabled | falsch | Gesammelte Beute erscheint nicht wieder. |
| PlayerFurnitureDestruction | falsch | Von Spielern gebaute Möbel sind von dieser Regel geschützt. |
| PlayerXPGainMultiplier | 3.9 | Der Erfahrungsgewinn ist mit 3,9x extrem. |
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

- `ante_up`: `speedrun`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `horde_final_attendance_problem`
- `lethal_lasers`: `overcharged_high_hazard`
