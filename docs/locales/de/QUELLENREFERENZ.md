<a id="packaged-source-reference"></a>
# Referenz der gepackten Quellen

> **Kanonisch-englische Quelle:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Die Veröffentlichung ZIP enthält genau die 51 unten aufgeführten Pfade. Der Builder lehnt einen fehlenden Pfad, eine zusätzliche paketförmige Quelle, eine Fallkollision, einen Symlink oder ein Mitglied außerhalb seiner wörtlichen Zulassungsliste ab. Laufzeitausgabe, Tests, Repository-Dokumente und Drittanbieter-Mods sind keine Paketmitglieder.

Der maschinenprüfbare Begleiter ist [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Es zeichnet die gleichen Pfade mit Eingaben, Ausgaben, Nebenwirkungen, öffentlichen Einstellungen, sichtbaren Zuständen, Fehlermodi, Bearbeitbarkeit und kanonischer Dokumentation auf.

Jede ausgelieferte Lua-Zeile verfügt über einen stabilen `module-*` Anker. Der identische Link im kanonischen Quellheader und Maschinendatensatz macht Eigentum, Vertrag, Nebenwirkungen, Fehler und Wiederherstellung direkt nachvollziehbar.

<a id="package-markers"></a>
## Paketmarkierungen

| Pfad | Anrufer und Verantwortung | Nebenwirkungen und Fehlerverhalten | Leitfaden |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SSAktivierungsmarker in beiden Paketen enthalten. | Kein Laufzeitschreiben. Fehlende Datei schlägt bei der Paketvalidierung fehl und verhindert möglicherweise das Laden. | [Installation](INSTALLATION.md) |
| `RandomDay/.randomday_version` | Gelesen von `ax_core/version.lua`; pro Paket generiert. | Kein Laufzeitschreiben. Missing/blank Markierung gibt zurück `unversioned`; Der endgültige Build erfordert eine angepasste Versionsidentität. | [Release-Validierung](RELEASE-VALIDIERUNG.md) |
| `RandomDay/.randomday_mode` | Gelesen von `ax_core/version.lua`; generiert als `dedicated_server` unverändert oder `singleplayer_manual`. | Ungültiger Wert stoppt den Start, bevor das Dateisystem funktioniert. | [Architektur](ARCHITEKTUR.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Eingabe, Konfiguration und Kerndienste

| Pfad | Anrufer und Verantwortung | Eingaben, Ausgaben und Fehlerverhalten | Leitfaden |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS Einstiegspunkt. Löst einen Mod-Root auf und ruft `ax_core/init.lua`. | Druckt eine fatale Zeile und kehrt zurück, wenn die Root-Auflösung oder der Start fehlschlägt. | [Startpfad](ARCHITEKTUR.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Hauptorchestrator für Start und optionale Überwachung. | Verankert Ausgabepfade, erzwingt package/safety sperrt, besitzt eine Auswahl und sequenziert Schreiben, Status, Adapter, Status, Web und Nachrichten. | [Startpfad](ARCHITEKTUR.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Geladen von `init.lua`; vollständiges öffentliches Konfigurationsobjekt. | Liest die Paketidentität; Einstellungen und reservierte Felder werden einzeln dokumentiert. Ungültige Sicherheitssperren stoppen den Start. | [Konfiguration](KONFIGURATION.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Geladen von der Konfigurations- und Profilregistrierung. | Liest zugeschnittene Paketmarkierungen; gibt `unversioned` unverändert oder `invalid`wenn nicht verfügbar. | [Release-Identität](RELEASE-VALIDIERUNG.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Gemeinsamer Protokollierungs-Wrapper. | Emittiert `[RandomDay]` Zeilen auf konfigurierten Ebenen; kein privater Protokolltransport. | [Laufzeitdateien](LAUFZEITDATEIEN.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | Gemeinsame Datei, Pfad, Kodierung, Hash, Verzeichnis und Transaktionshelfer. | Die Verzeichniserstellung akzeptiert nur einen bestätigten Lua/Wine Befehlserfolg; Nicht verfügbare, ausgelöste, signalisierte, mehrdeutige oder Nicht-Null-Ergebnisse schlagen bei begrenzten Nachrichten und laufzeitrelativen Referenzen fehl. Es besitzt auch pending/readback/promotion/rollback Semantik und speichert unsichere Wiederherstellungsdaten. | [Sandbox-Transaktion](ARCHITEKTUR.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Auswahl, Sandbox, Status und Nachrichten

| Pfad | Anrufer und Verantwortung | Eingaben, Ausgaben und Fehlerverhalten | Leitfaden |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; liest aktiver Marker und Rotationsstatus, wählt ein active/prepared Paar, behält den Sitzungsmodus und die genaue Tagesreihenfolge bei. | Erstellt eine configured/wrapped oder einmalig gemischte 17-Positionen-Reihenfolge, schreibt `rotation_state.txt` transaktional und fällt ohne erneutes Rollen auf den letzten guten Zustand zurück Herabgesetzter Übergang. | [Rotationszustandsmaschine](ARCHITEKTUR.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Sandbox-Writer; erstellt Betriebs- und Last-Good-Backups und stellt überprüfte Bytes wieder her. | Aktualisiert den Last-Good sandbox/manifest als Paar; behält das vorherige Paar bei, wenn die Manifestersetzung fehlschlägt. | [Laufzeitdateien](LAUFZEITDATEIEN.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Profilersteller, Serialisierer und Validator. | Definiert kanonische Schlüsselreihenfolge, Typen, Bereiche und feste Regeln; keine Dateisystemschreibvorgänge. | [Sandbox-Schlüssel](PROFILE/SANDBOX-EINSTELLUNGSSCHL%C3%9CSSEL.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Sandbox-Writer. | Erzeugt vollständige Deterministik INIText mit RandomDay markers; Ungültige Profildaten werden von der Validierung abgelehnt. | [Profile](PROFILE/PROFILDOKUMENTATION.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Builder-Tests und Writer. | Validiert Profilwerte und serialisiert INI gegen Schema, feste Werte und erwartete Profilidentität. | [Sandbox-Schlüssel](PROFILE/SANDBOX-EINSTELLUNGSSCHL%C3%9CSSEL.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; löst modusgebundene Ziele auf und führt primary/mirrorSchreibvorgänge durch. | Erzeugt Transaktions-, Backup-, Rollback-, Hash-, Spiegel- und manuelle Ausgabeergebnisse. Unsichere Ziele und nicht überprüfte Schreibvorgänge schlagen fehl. | [Sandbox-Transaktion](ARCHITEKTUR.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` nach jedem Vorbereitungsergebnis. | Schreibt den aktuellen Status, das Wörterbuch und die Nachrichtenvorschau transaktional mit bereinigten Zielreferenzen. Ausgabefehler werden protokolliert und ändern die Sandbox-Berechtigung nicht. | [Aktuelles Statusschema](LAUFZEITDATEIEN.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` nach dem Status. | Schreibt `today.json` und `today.html` aus der active/prepared-Entscheidung. Ein Fehler wird als Exportfehler und nicht als Sandbox-Erfolg gemeldet. | [Webexportschema](LAUFZEITDATEIEN.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` nach erfolgreicher Zustandspersistenz. | Erstellt begrenzte join/daily Nachrichten aus Übersetzungsdaten und registriert optional einen lokalen Konsolenbefehl. Fehlendes player/transport überspringt einen Hinweis, ohne den Profilstatus zu ändern. | [Spielernachrichten](KONFIGURATION.md#player-messages) |

<a id="optional-adapter-modules"></a>
## Optionale Adaptermodule

| Pfad | Anrufer und Verantwortung | Eingaben, Ausgaben und Fehlerverhalten | Leitfaden |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; erkennt erkannte Adapterziele und wendet alle geplanten Dateien an transaktional. | Erzeugt sechs dokumentierte Ergebnisse, verifizierte Backups, bereinigte Diagnosen und Rollback-Beweise. | [Adaptergrenze](ARCHITEKTUR.md#adapter-boundary) |
| <a id="module-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Adapterbrückendefinition für eine separat installierte DynamicSpawnsLayout. | Stellt erkannte Signaturen und vorbereitete Wertezuordnungen bereit; unbekannte Layouts werden übersprungen. | [Unterstützten Adapter](UNTERST%C3%9CTZTE_ADAPTER.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Interne Adapterdefinition für optionale RandomDay Erweiterungsfelder in einer anerkannten Chaotic Spawn Engine `DynamicSpawns`Layout; der Dateiname ist kein separater Produktname. | Zuordnung von Profilbegegnungen und konfigurierten Bereichswerten nur, wenn das vollständige Erweiterungslayout vorhanden ist; | [Unterstützten Adapter](UNTERST%C3%9CTZTE_ADAPTER.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Adapterbrückendefinition für ein erkanntes Lethal Lasers-Einstellungslayout. | Erfordert jeden vorgesehenen Schlüssel vor der Mutation; andernfalls wird Inkompatibilität gemeldet. | [Unterstützten Adapter](UNTERST%C3%9CTZTE_ADAPTER.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Adapterbrückendefinition für ein anerkanntes ANTE Up-Einstellungslayout. | Erfordert Respawn-, Variant- und Debug-Gate-Felder; andernfalls wird eine Inkompatibilität gemeldet. | [Unterstützten Adapter](UNTERST%C3%9CTZTE_ADAPTER.md) |

<a id="shared-profile-and-translation-modules"></a>
## Gemeinsame Profil- und Übersetzungsmodule

| Pfad | Anrufer und Verantwortung | Eingaben, Ausgaben und Fehlerverhalten | Leitfaden |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; kanonische Basiswerte und 17-Tage-Standardwerte. | Stellt alle Sandbox-Schlüssel, die vier ausgelieferten Profilstandards und die restlichen festen Regeln bereit; Kein Dateisystem schreibt. Die Schemavalidierung lehnt unvollständige Ausgaben ab. | [Sandbox-Schlüssel](PROFILE/SANDBOX-EINSTELLUNGSSCHL%C3%9CSSEL.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Jedes Familienmodul und jede Legacy-Familienansicht. | Klont Basistage, wendet begrenzte family/day Überschreibungen an, validiert `sandbox.profile_overrides` und wendet diese an persistente Werte plus die verbleibenden festen Regeln und gibt ein Familienpaket mit 17 Profilen zurück. | [Profilreferenz](PROFILE/PROFILDOKUMENTATION.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; geordnetes öffentliches Register aller 17 Familien. | Liefert IDs, Quelle Dateinamen, Namen, Beschreibungen, Genres und Tonmetadaten können nicht geladen werden. | [Familienrotation](FAMILIENROTATION.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Kalender, Autor, Status, Tests und Generatoren. | Lädt alle registrierten Familienpakete und stellt den 17-mal-17-Profilsatz, die ausgelieferten Standardeinstellungen, die effektiven profilweiten Werte, die Schemareihenfolge und feste Regeln bereit. | [Profilreferenz](PROFILE/PROFILDOKUMENTATION.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Gepackte Kompatibilitätsansicht des ursprünglichen Action 17-Tage-Pakets. | Gibt ein vollständiges Familienpaket zurück, ist jedoch nicht die Familienquelle der aktuellen Registrierung. Wird für die Kontinuität des historischen Paketpfads beibehalten. | [Familienrotation](FAMILIENROTATION.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Gepackte Kompatibilitätsansicht des ursprünglichen Reaction-Überlebenspakets. | Gibt ein vollständiges Familienpaket zurück, ist es aber Nicht von der aktuellen Registrierung ausgewählt. Wird für die Kontinuität des historischen Paketpfads beibehalten. | [Familienrotation](FAMILIENROTATION.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Legacy-Tagesindex-Begegnungssuche für Profilcode verfügbar. | Gibt eine begrenzte Begegnungskarte pro Tag zurück; Kein Dateisystem schreibt. Aktuelle Familienprofile tragen ihre eigenen Begegnungswerte. | [Profilreferenz](PROFILE/PROFILDOKUMENTATION.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Player-Messaging- und Kompatibilitäts-Wrapper. | Erstellt begrenzte joke/note packt aus dem ausgewählten Profil; Nicht verfügbare Profildaten fallen auf eine neutrale Nachricht zurück. | [Spielernachrichten](KONFIGURATION.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Abwärtskompatibler Wrapper um `messages_17.lua`. | Keine unabhängigen Daten oder Schreibvorgänge; Der Ladefehler folgt dem kanonischen Nachrichtenmodul. | [Spielernachrichten](KONFIGURATION.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Übersetzung und Laufzeitwörterbuch-Writer. | Definiert alle 46 Sandbox-Einstellungsbedeutungen, Typen, Bereiche, Domänen und Wertesprache. Unbekannte Werte bleiben explizit. | [Übersetzung und Wörterbuch](LAUFZEITDATEIEN.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Laufzeitstatus und Player-Nachrichten. | Konvertiert rohe Profilwerte in begrenzte Domänenbewertungen, Fakten, Zusammenfassungen, Warnungen und Wörterbuchausgaben während Beibehaltung der Rohwerte. | [Aktuelles Statusschema](LAUFZEITDATEIEN.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Registrierte Familienmodule

Jede Zeile wird von `randomday_17.lua` geladen, ruft `profile_builder.lua` auf, gibt genau 17 Profile zurück und hat keine direkte Nebenwirkung auf das Dateisystem. Ein fehlendes, doppeltes, unvollständiges, außerhalb des Bereichs liegendes oder gegen feste Regeln verstoßendes Profil schlägt bei der Laufzeitvorrichtung fehl Suite und Generated-Reference-Gate.

| Pfad | Familie | Kanonisch generierter Leitfaden |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Aktion | [Aktion](PROFILE/FAMILIEN/AKTIONSPROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Überleben | [Überleben](PROFILE/FAMILIEN/SURVIVAL-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Stealth | [Stealth](PROFILE/FAMILIEN/STEALTH-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Horde | [Horde](PROFILE/FAMILIEN/HORDE-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Bossjagd | [Bossjagd](PROFILE/FAMILIEN/BOSS_HUNT-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Aasfresser | [Aasfresser](PROFILE/FAMILIEN/SCAVENGER-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Builder | [Builder](PROFILE/FAMILIEN/BUILDER-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Expedition | [Expedition](PROFILE/FAMILIEN/EXPEDITION-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Sicherheitssperre | [Sicherheitssperre](PROFILE/FAMILIEN/SECURITY_LOCKDOWN-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Biohazard | [Biohazard](PROFILE/FAMILIEN/BIOHAZARD-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Anteverse | [Anteverse](PROFILE/FAMILIEN/ANTEVERSE-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Albtraum | [Albtraum](PROFILE/FAMILIEN/ALBTRAUM-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Verwittert | [Verwittert](PROFILE/FAMILIEN/VERWITTERTE_PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Präzision | [Präzision](PROFILE/FAMILIEN/PR%C3%84ZISIONSPROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-logistics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Logistik | [Logistik](PROFILE/FAMILIEN/LOGISTIK_PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Experimentell | [Experimentell](PROFILE/FAMILIEN/EXPERIMENTAL-PROFILFAMILIE.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Konformitätstest | [Konformitätstest](PROFILE/FAMILIEN/COMPLIANCE-TEST-PROFILFAMILIE.md) |

<a id="generated-references"></a>
## Generierte Referenzen

`docs/profiles/profiles.generated.json`, die Familien-Markdown-Dateien, und `FULL_PROFILE_REFERENCE.md` sind contributor/operator Referenzen, die aus demselben Profilsatz generiert wurden. Sie sind keine Paketmitglieder und dürfen nicht als Ersatz für die Änderung der Profilquelle bearbeitet werden. Für die Validierung sind 17 Familien, 17 Profile pro Familie, eindeutige IDs, alle Schemaschlüssel, feste Regeln, Übersetzungsabdeckung und begrenzte Nachrichten erforderlich.
