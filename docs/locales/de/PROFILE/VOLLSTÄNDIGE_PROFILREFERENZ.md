<a id="randomday---full-profile-reference"></a>
# RandomDay – Vollständige Profilreferenz

> **Kanonisch-englische Quelle:** [FULL_PROFILE_REFERENCE.md](../../../profiles/FULL_PROFILE_REFERENCE.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Version: `v0.3.16-alpha`

Diese generierte Referenz deckt alle 289 Profile in 17 Familien ab. Es wird aus denselben Lua-Profiltabellen und demselben Übersetzungswörterbuch generiert, die zur Laufzeit verwendet werden. Rohwerte bleiben maßgebend.

<a id="read-the-reference"></a>
## Referenz lesen

- Gesamt- und Domainbewertungen werden aus allen 46 SandboxSettings Schlüsseln plus Begegnungsdruck berechnet.
- Klartext ist eine Empfehlung. Genaue Werte werden neben jeder Erklärung beibehalten.
- Aktive Einstellungen gelten für den aktuellen Start. Vorbereitete Einstellungen gelten erst nach dem nächsten Neustart.
- Optionale Adapterauswahlen sind Anfragen; Der Laufzeitstatus zeichnet auf, ob ein installierter Adapter tatsächlich übereinstimmt und überprüft wird.

<a id="families"></a>
## Familien

- [Aktion](FAMILIEN/AKTIONSPROFILFAMILIE.md): Mehr Schießen, mehr sichtbarer Kampf, weniger Schleichen.
- [Überleben](FAMILIEN/SURVIVAL-PROFILFAMILIE.md): Weniger Feinde, stärkere Bedrohungen, höhere Belohnungen, und weniger Vergebung.
- [Stealth](FAMILIEN/STEALTH-PROFILFAMILIE.md): Vermeiden Sie Entdeckung. Die Einrichtung lauscht stärker als sonst.
- [Horde](FAMILIEN/HORDE-PROFILFAMILIE.md): Mengenproblem. Die Einrichtung hat zu viele Feinde bestellt.
- [Bossjagd](FAMILIEN/BOSS_HUNT-PROFILFAMILIE.md): Seltene schwere Begegnungen mit Belohnungen auf Trophäenebene und Fehlern auf Trophäenebene.
- [Aasfresser](FAMILIEN/SCAVENGER-PROFILFAMILIE.md): Beuterouten sind profitabel, überfüllt und moralisch unbeaufsichtigt.
- [Builder](FAMILIEN/BUILDER-PROFILFAMILIE.md): Basiserweiterung und Logistik mit gelegentlichen strukturellen Einwänden.
- [Expedition](FAMILIEN/EXPEDITION-PROFILFAMILIE.md): Auf Reisen ausgerichtet laufen. Routen sind wichtig; Vom Verweilen wird abgeraten.
- [Sicherheitssperre](FAMILIEN/SECURITY_LOCKDOWN-PROFILFAMILIE.md): Ordnung, Roboter, Patrouillen, Erkennung und zu viel Prozedur.
- [Biohazard](FAMILIEN/BIOHAZARD-PROFILFAMILIE.md): Schädlinge, Kontamination, Wasserprobleme und rechtlich vage Hygiene.
- [Anteverse](FAMILIEN/ANTEVERSE-PROFILFAMILIE.md): Portaldruck, Varianten und dimensionale Nebenwirkungen.
- [Albtraum](FAMILIEN/ALBTRAUM-PROFILFAMILIE.md): Dunkelheit, Angst, selten schwerwiegend Bedrohungen und stille Fehler.
- [Verwittert](FAMILIEN/VERWITTERTE_PROFILFAMILIE.md): Überleben in der Umwelt: Wetter, Strahlung, Macht, Hunger, Durst.
- [Präzision](FAMILIEN/PR%C3%84ZISIONSPROFILFAMILIE.md): Weniger Feinde, schärferes Zielen, höhere Strafe für Exposition.
- [Logistik](FAMILIEN/LOGISTIK_PROFILFAMILIE.md): Transport, Inventar, Haltbarkeit, Gewicht, Versorgungsläufe, Vorbereitungsökonomie.
- [Experimentell](FAMILIEN/EXPERIMENTAL-PROFILFAMILIE.md): Seltsame Kombinationen, instabile Tische, seltsame Widerstände.
- [Konformitätstest](FAMILIEN/COMPLIANCE-TEST-PROFILFAMILIE.md): Eine 17-tägige Abschlussprüfung zu den schlechtesten Ideen der Einrichtung.

<a id="profile-index"></a>
## Profilindex

| Familie | Tag | Profil | Bedingungen |
|---|---:|---|---|
| Aktion | 1 | Live-Feuerausrichtung | Standarddruck (1.85/5) |
| Aktion | 2 | Offenes Bodengefecht | Günstige Bedingungen (1.29/5) |
| Aktion | 3 | Schädlingsbekämpfungsübung | Standarddruck (2.14/5) |
| Aktion | 4 | Supply Run Firefight | Günstige Bedingungen (1.47/5) |
| Aktion | 5 | Sicherheitskontakt | Standarddruck (2.03/5) |
| Aktion | 6 | Weathered Engagement | Standarddruck (2.02/5) |
| Aktion | 7 | Night Raid | Standarddruck (2.03/5) |
| Aktion | 8 | Route Runner | Standarddruck (1.81/5) |
| Aktion | 9 | Ration Riot | Standarddruck (2.17/5) |
| Aktion | 10 | Escort Recovery | Günstige Bedingungen (1.05/5) |
| Aktion | 11 | Trainingsziele | Günstige Bedingungen (1.46/5) |
| Aktion | 12 | Black Lab Assault | Standarddruck (2.49/5) |
| Aktion | 13 | Extended Fireline | Standarddruck (2.22/5) |
| Aktion | 14 | Supply Closet Miracle | Günstige Bedingungen (1.02/5) |
| Aktion | 15 | Accuracy Audit Live | Standarddruck (1.97/5) |
| Aktion | 16 | Experimental Crossfire | Standarddruck (2.09/5) |
| Aktion | 17 | Compliance War Spiel | Anspruchsvolle Bedingungen (2.72/5) |
| Überleben | 1 | Quiet Intake | Standarddruck (2.02/5) |
| Überleben | 2 | Barricade Protocol | Günstige Bedingungen (1.41/5) |
| Überleben | 3 | Contaminated Silence | Standarddruck (2.35/5) |
| Überleben | 4 | Scavenger's Debt | Günstige Bedingungen (1.61/5) |
| Überleben | 5 | Sicherheitssperre | Standarddruck (2.26/5) |
| Überleben | 6 | Shelter Advisory | Standarddruck (2.2/5) |
| Überleben | 7 | Licht aus | Standarddruck (2.25/5) |
| Überleben | 8 | Nicht verweilen | Standarddruck (1.97/5) |
| Überleben | 9 | Empty Pantry Trial | Standarddruck (2.4/5) |
| Überleben | 10 | Silent Recovery | Günstige Bedingungen (1.14/5) |
| Überleben | 11 | Gemessenes Risiko | Günstige Bedingungen (1.62/5) |
| Überleben | 12 | Predator Review | Anspruchsvolle Bedingungen (2.76/5) |
| Überleben | 13 | Long Shift Überleben | Standarddruck (2.57/5) |
| Überleben | 14 | Falsche Ruhe | Günstige Bedingungen (1.29/5) |
| Überleben | 15 | Erste Tote zuerst gesehen | Standarddruck (2.28/5) |
| Überleben | 16 | Nicht genehmigte Bedingungen | Standarddruck (2.33/5) |
| Überleben | 17 | Letzter Ausweichtest | Anspruchsvolle Bedingungen (3.01/5) |
| Stealth | 1 | Geflüsterte Orientierung | Standarddruck (2.03/5) |
| Stealth | 2 | Autorisiertes Schweigen | Günstige Bedingungen (1.43/5) |
| Stealth | 3 | Der Boden hat Sie gehört | Standarddruck (2.34/5) |
| Stealth | 4 | Eingesteckte Beweise | Günstige Bedingungen (1.63/5) |
| Stealth | 5 | Stille Sicherheitsüberprüfung | Standarddruck (2.21/5) |
| Stealth | 6 | Vorhersage: Unauffällig | Standarddruck (2.2/5) |
| Stealth | 7 | Dunkle Route Freigabe | Standarddruck (2.22/5) |
| Stealth | 8 | Unsichtbarer Transit | Standarddruck (1.99/5) |
| Stealth | 9 | Ration ohne Zeugen | Standarddruck (2.38/5) |
| Stealth | 10 | Quiet Repair Window | Günstige Bedingungen (1.19/5) |
| Stealth | 11 | Beobachtungsübung | Günstige Bedingungen (1.61/5) |
| Stealth | 12 | Black Lab Blind Spot | Anspruchsvolle Bedingungen (2.62/5) |
| Stealth | 13 | Lange Stillschicht | Standarddruck (2.55/5) |
| Stealth | 14 | False Empty Hall | Günstige Bedingungen (1.34/5) |
| Stealth | 15 | Detection Audit | Standarddruck (2.26/5) |
| Stealth | 16 | Experimental Silence | Standarddruck (2.21/5) |
| Stealth | 17 | Endgültiges Nichterscheinen | Anspruchsvolle Bedingungen (2.83/5) |
| Horde | 1 | Headcount Error | Standarddruck (1.82/5) |
| Horde | 2 | Open Floor Overflow | Günstige Bedingungen (1.32/5) |
| Horde | 3 | Pest Überbuchung | Standarddruck (2.13/5) |
| Horde | 4 | Supply Line Stampede | Günstige Bedingungen (1.46/5) |
| Horde | 5 | Massenkontrolle falsch eingereicht | Standarddruck (2.02/5) |
| Horde | 6 | Wetter der Leichen | Standarddruck (1.99/5) |
| Horde | 7 | Anwesenheit in der Nachtschicht | Standarddruck (2.02/5) |
| Horde | 8 | Streckenüberlastung | Standarddruck (1.8/5) |
| Horde | 9 | Aufruhr in der Lebensmittelschlange | Standarddruck (2.14/5) |
| Horde | 10 | Kurzzeitig weniger überfüllt | Günstige Bedingungen (1.08/5) |
| Horde | 11 | Anstieg der Trainingsbevölkerung | Günstige Bedingungen (1.47/5) |
| Horde | 12 | Black Lab Crowd Review | Standarddruck (2.42/5) |
| Horde | 13 | Erweiterte Linienbildung | Standarddruck (2.23/5) |
| Horde | 14 | Versorgung Closet Queue | Günstige Bedingungen (1.07/5) |
| Horde | 15 | Genauigkeit nach Volumen | Standarddruck (1.98/5) |
| Horde | 16 | Experimentelle Massendichte | Standarddruck (2.1/5) |
| Horde | 17 | Endgültiges Anwesenheitsproblem | Standarddruck (2.58/5) |
| Bossjagd | 1 | Trophäenausrichtung | Standarddruck (1.98/5) |
| Bossjagd | 2 | Köderkonstruktion | Günstige Bedingungen (1.45/5) |
| Bossjagd | 3 | Kleinwildwarnung | Standarddruck (2.28/5) |
| Bossjagd | 4 | Belohnungspfad | Günstige Bedingungen (1.62/5) |
| Bossjagd | 5 | Autorisiertes Apex-Problem | Standarddruck (2.16/5) |
| Bossjagd | 6 | Verwitterter Steinbruch | Standarddruck (2.13/5) |
| Bossjagd | 7 | Nachttrophäenbewegung | Standarddruck (2.16/5) |
| Bossjagd | 8 | Schnelle Zielroute | Standarddruck (1.93/5) |
| Bossjagd | 9 | Hungry Trophy Case | Standarddruck (2.29/5) |
| Bossjagd | 10 | Präparatorenpause | Günstige Bedingungen (1.2/5) |
| Bossjagd | 11 | Übungsjagd | Günstige Bedingungen (1.61/5) |
| Bossjagd | 12 | Schwarzes Laborexemplar | Anspruchsvolle Bedingungen (2.62/5) |
| Bossjagd | 13 | Lange Jagdschicht | Standarddruck (2.39/5) |
| Bossjagd | 14 | Tag des stillen Köders | Günstige Bedingungen (1.19/5) |
| Bossjagd | 15 | Precision Trophy Audit | Standarddruck (2.12/5) |
| Bossjagd | 16 | Experimental Apex | Standarddruck (2.24/5) |
| Bossjagd | 17 | Final Trophy Board | Anspruchsvolle Bedingungen (2.79/5) |
| Aasfresser | 1 | Lose Inventory Ethics | Standarddruck (1.79/5) |
| Aasfresser | 2 | Open Floor Acquisition | Günstige Bedingungen (1.28/5) |
| Aasfresser | 3 | fragwürdige Snacks | Standarddruck (2.08/5) |
| Aasfresser | 4 | Supply Führen Sie Dividende durch | Günstige Bedingungen (1.47/5) |
| Aasfresser | 5 | Sicherheitsbelegprüfung | Standarddruck (1.98/5) |
| Aasfresser | 6 | Verwitterter Streckenverkauf | Standarddruck (1.95/5) |
| Aasfresser | 7 | Nachtmarktgenehmigung | Standarddruck (1.98/5) |
| Aasfresser | 8 | Routenräumungsgebühr | Standarddruck (1.75/5) |
| Aasfresser | 9 | Ration Arbitrage | Standarddruck (2.07/5) |
| Aasfresser | 10 | Stilles Gewinnfenster | Günstige Bedingungen (1.04/5) |
| Aasfresser | 11 | Trainingsbergung | Günstige Bedingungen (1.47/5) |
| Aasfresser | 12 | Black Lab Liquidation | Standarddruck (2.43/5) |
| Aasfresser | 13 | Langstreckeninventar | Standarddruck (2.14/5) |
| Aasfresser | 14 | Supply Closet Jackpot | Günstige Bedingungen (1.02/5) |
| Aasfresser | 15 | Genauigkeitssteuer | Standarddruck (1.92/5) |
| Aasfresser | 16 | Experimenteller Aufschlag | Standarddruck (2.12/5) |
| Aasfresser | 17 | Abschlussprüfung der Taschen | Anspruchsvolle Bedingungen (2.68/5) |
| Builder | 1 | Bebauungsausrichtung | Standarddruck (1.71/5) |
| Builder | 2 | Genehmigung für offene Böden | Günstige Bedingungen (1.22/5) |
| Builder | 3 | Fundamentfeuchtigkeitsproblem | Standarddruck (1.95/5) |
| Builder | 4 | Materialanforderung | Günstige Bedingungen (1.39/5) |
| Builder | 5 | Genehmigungsinspektion | Standarddruck (1.87/5) |
| Builder | 6 | Benachrichtigung über wetterbedingte Verzögerungen | Standarddruck (1.84/5) |
| Builder | 7 | Nächtliche Bauabweichung | Standarddruck (1.86/5) |
| Builder | 8 | Route zur Hardware | Günstige Bedingungen (1.66/5) |
| Builder | 9 | Rationierter Beton | Standarddruck (1.93/5) |
| Builder | 10 | Fenster für den Wiederherstellungsbau | Günstige Bedingungen (0.99/5) |
| Builder | 11 | Sicherheitsgeländer-Seminar | Günstige Bedingungen (1.39/5) |
| Builder | 12 | Black Lab Building Code | Standarddruck (2.29/5) |
| Builder | 13 | Extended Shift Framing | Standarddruck (1.99/5) |
| Builder | 14 | Supply Closet Approved | Günstige Bedingungen (0.95/5) |
| Builder | 15 | Genauigkeit der Messungen | Standarddruck (1.82/5) |
| Builder | 16 | Experimenteller Grundriss | Standarddruck (2.0/5) |
| Builder | 17 | Endgültige Belegungsüberprüfung | Standarddruck (2.52/5) |
| Expedition | 1 | Abreisebesprechung | Standarddruck (1.86/5) |
| Expedition | 2 | Fehler in der Packliste | Günstige Bedingungen (1.29/5) |
| Expedition | 3 | Trinkkilometer | Standarddruck (2.19/5) |
| Expedition | 4 | Long Route Dividend | Günstige Bedingungen (1.47/5) |
| Expedition | 5 | Checkpoint-Kontakt | Standarddruck (2.06/5) |
| Expedition | 6 | Wetterberatungsroute | Standarddruck (2.03/5) |
| Expedition | 7 | Night Road Protokoll | Standarddruck (2.05/5) |
| Expedition | 8 | Route Runner Plus | Standarddruck (1.82/5) |
| Expedition | 9 | Rationen nach Entfernung | Standarddruck (2.22/5) |
| Expedition | 10 | Camp Reset | Günstige Bedingungen (1.05/5) |
| Expedition | 11 | Trainingsumweg | Günstige Bedingungen (1.47/5) |
| Expedition | 12 | Black Lab Field Trip | Standarddruck (2.52/5) |
| Expedition | 13 | Extended Transit Shift | Standarddruck (2.29/5) |
| Expedition | 14 | Supply Cache Discovery | Günstige Bedingungen (1.03/5) |
| Expedition | 15 | Precision Waypoint | Standarddruck (1.99/5) |
| Expedition | 16 | Experimental Detour | Standarddruck (2.11/5) |
| Expedition | 17 | Abschließende Expeditionsprüfung | Anspruchsvolle Bedingungen (2.78/5) |
| Sicherheitssperre | 1 | Abzeichenprüfung Orientierung | Standarddruck (2.02/5) |
| Sicherheitssperre | 2 | Barrikadenregistrierung | Günstige Bedingungen (1.43/5) |
| Sicherheitssperre | 3 | Hydrationskontrollpunkt | Standarddruck (2.33/5) |
| Sicherheitssperre | 4 | Route für Schmuggelware | Günstige Bedingungen (1.63/5) |
| Sicherheitssperre | 5 | Vollständige Sicherheitsüberprüfung | Standarddruck (2.23/5) |
| Sicherheitssperre | 6 | Hinweis zur Wettersperre | Standarddruck (2.19/5) |
| Sicherheitssperre | 7 | Erweiterung der Nachtpatrouille | Standarddruck (2.23/5) |
| Sicherheitssperre | 8 | Checkpoint-Beschleunigung | Standarddruck (1.99/5) |
| Sicherheitssperre | 9 | Rationskontrolle | Standarddruck (2.36/5) |
| Sicherheitssperre | 10 | Kurzzeitig unbeobachtet | Günstige Bedingungen (1.17/5) |
| Sicherheitssperre | 11 | Training mit Zeugen | Günstige Bedingungen (1.62/5) |
| Sicherheitssperre | 12 | Black Lab Security Response | Anspruchsvolle Bedingungen (2.65/5) |
| Sicherheitssperre | 13 | Überstundensperre | Standarddruck (2.45/5) |
| Sicherheitssperre | 14 | Versorgung Closet Warrant | Günstige Bedingungen (1.16/5) |
| Sicherheitssperre | 15 | Formelles Genauigkeitsaudit | Standarddruck (2.16/5) |
| Sicherheitssperre | 16 | Experimentelles Sicherheitsprotokoll | Standarddruck (2.2/5) |
| Sicherheitssperre | 17 | Abschließende Sperrprüfung | Anspruchsvolle Bedingungen (2.89/5) |
| Biohazard | 1 | Akzeptable Kontamination | Standarddruck (2.03/5) |
| Biohazard | 2 | Offene Bodendekontamination | Günstige Bedingungen (1.43/5) |
| Biohazard | 3 | Fragwürdiges Trinkwasser Plus | Standarddruck (2.26/5) |
| Biohazard | 4 | Probenversorgungslauf | Günstige Bedingungen (1.63/5) |
| Biohazard | 5 | Eindämmung war optional | Standarddruck (2.22/5) |
| Biohazard | 6 | Sanitäres Wetterereignis | Standarddruck (2.25/5) |
| Biohazard | 7 | Nächtlicher Desinfektionsfehler | Standarddruck (2.28/5) |
| Biohazard | 8 | Hinweis zur Streckenkontamination | Standarddruck (1.99/5) |
| Biohazard | 9 | Anhörung über Lebensmittelverderb | Standarddruck (2.29/5) |
| Biohazard | 10 | Gerücht über Reinräume | Günstige Bedingungen (1.19/5) |
| Biohazard | 11 | Training mit Handschuhen | Günstige Bedingungen (1.63/5) |
| Biohazard | 12 | Black Lab Bio Review | Anspruchsvolle Bedingungen (2.61/5) |
| Biohazard | 13 | Verlängerte Quarantäne | Standarddruck (2.43/5) |
| Biohazard | 14 | Versorgung Schranksteril | Günstige Bedingungen (1.16/5) |
| Biohazard | 15 | Genauigkeit des Niesens | Standarddruck (2.15/5) |
| Biohazard | 16 | Experimentelle Exposition | Standarddruck (2.19/5) |
| Biohazard | 17 | Abschließende Eindämmungsprüfung | Anspruchsvolle Bedingungen (2.88/5) |
| Anteverse | 1 | Dimensionale Aufnahme | Standarddruck (1.88/5) |
| Anteverse | 2 | Offene Bodengeometrie | Günstige Bedingungen (1.3/5) |
| Anteverse | 3 | Flüssigkeitszufuhr quer Angles | Standarddruck (2.18/5) |
| Anteverse | 4 | Versorgung von anderswo | Günstige Bedingungen (1.48/5) |
| Anteverse | 5 | Sicherheitsverletzung von anderswo | Standarddruck (2.06/5) |
| Anteverse | 6 | Wetter in den Mauern | Standarddruck (2.04/5) |
| Anteverse | 7 | Night Portal Courtesy | Standarddruck (2.05/5) |
| Anteverse | 8 | Route Through Wrongness | Standarddruck (1.82/5) |
| Anteverse | 9 | Ration Timeline Drift | Standarddruck (2.2/5) |
| Anteverse | 10 | Stable Reality Window | Günstige Bedingungen (1.07/5) |
| Anteverse | 11 | Training With Variables | Günstige Bedingungen (1.48/5) |
| Anteverse | 12 | Black Lab Dimensional Review | Standarddruck (2.52/5) |
| Anteverse | 13 | Extended Shift Anderswo | Standarddruck (2.29/5) |
| Anteverse | 14 | Supply Closet Paradox | Günstige Bedingungen (1.05/5) |
| Anteverse | 15 | Genauigkeit über Winkel hinweg | Standarddruck (2.0/5) |
| Anteverse | 16 | Experimentelle Antephase | Standarddruck (2.11/5) |
| Anteverse | 17 | Endgültige Anteverse-Compliance | Anspruchsvolle Bedingungen (2.77/5) |
| Albtraum | 1 | Sanft beleuchteter Fehler | Standarddruck (2.03/5) |
| Albtraum | 2 | Open Floor Dread | Günstige Bedingungen (1.43/5) |
| Albtraum | 3 | Wasser im Dunkeln | Standarddruck (2.35/5) |
| Albtraum | 4 | Supply Closet Breathing | Günstige Bedingungen (1.62/5) |
| Albtraum | 5 | Sicherheit unter dem Bett | Standarddruck (2.27/5) |
| Albtraum | 6 | Wetter mit Zähnen | Standarddruck (2.21/5) |
| Albtraum | 7 | Lichter für immer aus | Standarddruck (2.23/5) |
| Albtraum | 8 | Lauf nicht laut los | Standarddruck (1.99/5) |
| Albtraum | 9 | Rationen für das Ding | Standarddruck (2.38/5) |
| Albtraum | 10 | Erholung hinter einer Tür | Günstige Bedingungen (1.15/5) |
| Albtraum | 11 | Training im Dunkeln | Günstige Bedingungen (1.63/5) |
| Albtraum | 12 | Black Lab Nightmare Review | Anspruchsvolle Bedingungen (2.75/5) |
| Albtraum | 13 | Long Shift After Midnight | Standarddruck (2.56/5) |
| Albtraum | 14 | False Morning | Günstige Bedingungen (1.3/5) |
| Albtraum | 15 | Accuracy of Shadows | Standarddruck (2.29/5) |
| Albtraum | 16 | Experimentelle Angst | Standarddruck (2.33/5) |
| Albtraum | 17 | Final Nightmare Practical | Anspruchsvolle Bedingungen (2.99/5) |
| Verwittert | 1 | Prognoseausrichtung | Standarddruck (1.99/5) |
| Verwittert | 2 | Windscherung im offenen Boden | Günstige Bedingungen (1.39/5) |
| Verwittert | 3 | Hydrationsberatung | Standarddruck (2.34/5) |
| Verwittert | 4 | Auswaschung der Versorgungsroute | Günstige Bedingungen (1.59/5) |
| Verwittert | 5 | Sicherheit bei schlechter Sicht | Standarddruck (2.2/5) |
| Verwittert | 6 | Entschuldigung der Wetterbehörde | Standarddruck (2.15/5) |
| Verwittert | 7 | Night Storm Watch | Standarddruck (2.19/5) |
| Verwittert | 8 | Route Flood Warning | Standarddruck (1.93/5) |
| Verwittert | 9 | Ration Humidity Trial | Standarddruck (2.4/5) |
| Verwittert | 10 | Shelter Window | Günstige Bedingungen (1.14/5) |
| Verwittert | 11 | Safety Umbrella Training | Günstige Bedingungen (1.59/5) |
| Verwittert | 12 | Black Lab Climate Review | Anspruchsvolle Bedingungen (2.74/5) |
| Verwittert | 13 | Extended Exposure Shift | Standarddruck (2.5/5) |
| Verwittert | 14 | Supply Closet Dry Spot | Günstige Bedingungen (1.11/5) |
| Verwittert | 15 | Genauigkeit bei Seitenwind | Standarddruck (2.16/5) |
| Verwittert | 16 | Experimentelle Wetterzelle | Standarddruck (2.25/5) |
| Verwittert | 17 | Abschließendes Klimaaudit | Anspruchsvolle Bedingungen (3.0/5) |
| Präzision | 1 | Sichtungsausrichtung | Standarddruck (2.02/5) |
| Präzision | 2 | Offener Sichtlinienplan | Günstige Bedingungen (1.43/5) |
| Präzision | 3 | Flüssigkeitszufuhr hinter Deckung | Standarddruck (2.32/5) |
| Präzision | 4 | Versorgungslinie der Schusslinie | Günstige Bedingungen (1.62/5) |
| Präzision | 5 | Sicherheitstreffsicherheit | Standarddruck (2.21/5) |
| Präzision | 6 | Notiz zur Wetterballistik | Standarddruck (2.19/5) |
| Präzision | 7 | Nachtsichtprüfung | Standarddruck (2.23/5) |
| Präzision | 8 | Routenexpositionsindex | Standarddruck (1.99/5) |
| Präzision | 9 | Ration Under Fire | Standarddruck (2.35/5) |
| Präzision | 10 | Erholung hinter der Deckung | Günstige Bedingungen (1.18/5) |
| Präzision | 11 | Training in Deckung | Günstige Bedingungen (1.61/5) |
| Präzision | 12 | Black Lab Genauigkeit Überprüfen Sie | Anspruchsvolle Bedingungen (2.64/5) |
| Präzision | 13 | Extended Sightline Shift | Standarddruck (2.5/5) |
| Präzision | 14 | Supply Closet Blind Spot | Günstige Bedingungen (1.34/5) |
| Präzision | 15 | Accuracy Audit | Standarddruck (2.25/5) |
| Präzision | 16 | Experimental Ballistics | Standarddruck (2.22/5) |
| Präzision | 17 | Abschließende Präzisionsprüfung | Anspruchsvolle Bedingungen (2.85/5) |
| Logistik | 1 | Inventory Orientation | Standarddruck (1.72/5) |
| Logistik | 2 | Offene Bodenlagerung | Günstige Bedingungen (1.22/5) |
| Logistik | 3 | Hydrationspapiere | Standarddruck (2.0/5) |
| Logistik | 4 | Feier der Lieferkette | Günstige Bedingungen (1.4/5) |
| Logistik | 5 | Sicherheit der Quittungen | Standarddruck (1.89/5) |
| Logistik | 6 | Verwitterte Fracht | Standarddruck (1.87/5) |
| Logistik | 7 | Nächtliche Bestandsaufnahme | Standarddruck (1.9/5) |
| Logistik | 8 | Route Optimization Memo | Günstige Bedingungen (1.68/5) |
| Logistik | 9 | Ration Ledger | Standarddruck (1.99/5) |
| Logistik | 10 | Recovery Repack | Günstige Bedingungen (0.99/5) |
| Logistik | 11 | Schulung zum Sicherheitsetikett | Günstige Bedingungen (1.4/5) |
| Logistik | 12 | Black Lab Logistics Review | Standarddruck (2.32/5) |
| Logistik | 13 | Erweiterte Transportschicht | Standarddruck (2.05/5) |
| Logistik | 14 | Supply Closet Miracle Audit | Günstige Bedingungen (0.97/5) |
| Logistik | 15 | Genauigkeit der Zählung | Standarddruck (1.84/5) |
| Logistik | 16 | Experimentelles Inventar | Standarddruck (2.03/5) |
| Logistik | 17 | Abschließende Logistikprüfung | Standarddruck (2.55/5) |
| Experimentell | 1 | Variablenausrichtung | Standarddruck (1.89/5) |
| Experimentell | 2 | Offene Bodenhypothese | Günstige Bedingungen (1.31/5) |
| Experimentell | 3 | Fragwürdige Wasserkontrolle | Standarddruck (2.21/5) |
| Experimentell | 4 | Supply Sample Bias | Günstige Bedingungen (1.5/5) |
| Experimentell | 5 | Sicherheitskontrollgruppe | Standarddruck (2.08/5) |
| Experimentell | 6 | Wetteranomalie | Standarddruck (2.07/5) |
| Experimentell | 7 | Nachtvariable | Standarddruck (2.09/5) |
| Experimentell | 8 | Route Versuchsdrift | Standarddruck (1.84/5) |
| Experimentell | 9 | Rationsexperiment | Standarddruck (2.24/5) |
| Experimentell | 10 | Wiederherstellungskontrollfenster | Günstige Bedingungen (1.07/5) |
| Experimentell | 11 | Trainingsdatenfehler | Günstige Bedingungen (1.5/5) |
| Experimentell | 12 | Black Lab-Variablenüberprüfung | Standarddruck (2.56/5) |
| Experimentell | 13 | Erweiterter Testlauf | Standarddruck (2.35/5) |
| Experimentell | 14 | Supply Closet Outlier | Günstige Bedingungen (1.05/5) |
| Experimentell | 15 | Genauigkeitsvariable | Standarddruck (2.02/5) |
| Experimentell | 16 | Genehmigte Versuchsbedingungen | Standarddruck (2.13/5) |
| Experimentell | 17 | Endgültiges Versuchsergebnis | Anspruchsvolle Bedingungen (2.8/5) |
| Konformitätstest | 1 | Konformitätsaufnahme | Standarddruck (1.97/5) |
| Konformitätstest | 2 | Strukturelle Konformität | Günstige Bedingungen (1.38/5) |
| Konformitätstest | 3 | Einhaltung der Trinkzufuhr | Standarddruck (2.31/5) |
| Konformitätstest | 4 | Einhaltung der Versorgung | Günstige Bedingungen (1.58/5) |
| Konformitätstest | 5 | Einhaltung der Sicherheit | Standarddruck (2.19/5) |
| Konformitätstest | 6 | Einhaltung der Wetterlage | Standarddruck (2.14/5) |
| Konformitätstest | 7 | Einhaltung der Nacht | Standarddruck (2.2/5) |
| Konformitätstest | 8 | Einhaltung der Routen | Standarddruck (1.93/5) |
| Konformitätstest | 9 | Einhaltung der Verpflegung | Standarddruck (2.35/5) |
| Konformitätstest | 10 | Recovery Compliance | Günstige Bedingungen (1.13/5) |
| Konformitätstest | 11 | Training Compliance | Günstige Bedingungen (1.58/5) |
| Konformitätstest | 12 | Black Lab Compliance | Anspruchsvolle Bedingungen (2.67/5) |
| Konformitätstest | 13 | Overtime Compliance | Standarddruck (2.51/5) |
| Konformitätstest | 14 | Supply Miracle Compliance | Günstige Bedingungen (1.22/5) |
| Konformitätstest | 15 | Genauigkeit Compliance | Standarddruck (2.17/5) |
| Konformitätstest | 16 | Experimental Compliance | Standarddruck (2.22/5) |
| Konformitätstest | 17 | Abschließender Konformitätstest | Anspruchsvolle Bedingungen (2.9/5) |
