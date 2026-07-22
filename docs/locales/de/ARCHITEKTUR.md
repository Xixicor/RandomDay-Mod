<a id="architecture-and-data-flow"></a>
# Architektur und Datenfluss

> **Kanonisch-englische Quelle:** [ARCHITECTURE.md](../../ARCHITECTURE.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


RandomDay besitzt eine begrenzte Aufgabe: Bereiten Sie ein vollständiges Sandbox-Profil für einen zukünftigen Start vor, ohne dieses Profil während des aktuellen Prozesses als aktiv zu beschreiben. Das aktive Profil stammt von der Markierung in der Sandbox-Datei, die Abbiotic Factor geladen hat, bevor UE4SS gestartet wurde RandomDay. Das vorbereitete Profil ist ein separater, validierter Dateistatus für den nächsten Neustart.

<a id="package-modes"></a>
## Paketmodi

Der Release Builder erstellt zwei ZIPs aus genau derselben Quell-Zulassungsliste und legt `RandomDay/.randomday_mode` in jedem unterschiedlich fest.

| Modus | Primäre Ausgabe | Automatische externe Schreibvorgänge |
|---|---|---|
| `dedicated_server` | Aufgelöster dedizierter Server `SandboxSettings.ini` | Primäre Sandbox, bewusst konfigurierte Spiegelungen und erkannte optionale Adapter. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Keine außerhalb des Ordners RandomDay; Spiegel und Adapter sind deaktiviert. |

`RandomDay/.randomday_version` und `RandomDay/.randomday_mode` sind generierte Paketmarkierungen. `RandomDay/Scripts/ax_core/version.lua` liest sie; Operatoren dürfen sie nach der Installation nicht mehr bearbeiten.

<a id="session-modes"></a>
## Sitzungsmodi

Der Paketmodus steuert, wohin RandomDay schreiben darf. `experience.mode` beschreibt separat den beabsichtigten Lebenszyklus:

| Sitzungsmodus | Paket | Lebenszyklusvertrag |
|---|---|---|
| `persistent_dedicated` | Dediziert | Fortsetzung der beibehaltenen Familie und der 17-Positionen-Tagesreihenfolge über einen langen Zeitraum hinweg startet neu. |
| `temporary_dedicated` | Dediziert | Behandeln Sie jeden Start als begrenzte Spielsitzung und behalten Sie dabei die Reihenfolge in der Warteschlange zwischen den Starts bei. |
| `singleplayer_lan` | Einzelspieler-Handbuch | Generieren Sie eine mod-lokale Datei für eine vom Bediener ausgewählte Welt; Keine Speichererkennung oder automatische Kopie. |

`auto` wird im dedizierten Paket zu `persistent_dedicated` aufgelöst und `singleplayer_lan` im Handbuchpaket. Der Sitzungsmodus ändert die Engine-Grenze nicht: Der aktuelle Prozess hat seine Sandbox bereits geladen, bevor RandomDay ausgeführt wird.

<a id="startup-path"></a>
## Startpfad

1. UE4SS lädt `RandomDay/Scripts/main.lua`.
2. Der Einstiegspunkt löst einen `RandomDay/` Root auf und lädt `Scripts/ax_core/init.lua`.
3. `init.lua` lädt Konfiguration, Profile, Kalender, Writer, Adapter, Status, Web Export- und Player-Nachrichtenmodule. Es lehnt einen ungültigen Paketmodus oder eine deaktivierte Transaktionssicherheitssperre ab. Außerdem werden der paketkompatible Sitzungsmodus, der Starttagsmodus, der konfigurierte Starttag und der Tagesfortschrittsmodus validiert.
4. Jeder Familienbuild validiert `sandbox.profile_overrides` ab `Scripts/ax_config/server.lua`. Die vier profilweiten Auswahlmöglichkeiten werden nach family/day Werten und vor den verbleibenden invarianten Regeln angewendet, sodass jedes vorbereitete Profil dieselben konfigurierten Auswahlmöglichkeiten verwendet.
5. Laufzeit- und Webausgabe-Roots sind im aufgelösten Mod-Ordner verankert. Der Einzelspielermodus wird vor der Auswahl auf eine mod-lokale Ausgabe reduziert.
6. `ax_cycle/calendar.lua` liest die Sandbox-Markierung und den wiederherstellbaren Rotationsstatus und erstellt dann eine active/prepared Entscheidung für diesen Spielprozess.
7. `ax_sandbox/writer.lua` serialisiert und validiert das vorbereitete Profil und verwendet dann einen transaktionalen Ersatz für das ausgewählte Ziel.
8. Der Rotationsstatus wird nur festgeschrieben nachdem die Sandbox-Transaktion erfolgreich war. Ein State-Commit-Fehler wird herabgestuft: Adapter und Nachrichten an vorbereitete Spieler werden übersprungen, da der Sandbox- und Warteschlangenstatus nicht übereinstimmen.
9. Im dedizierten Modus wertet `ax_external/bridge.lua` optionale Adapter anhand des aktiven Profils aus. Beim ersten Bootstrap ist kein aktiver Marker vorhanden, daher ist das vorbereitete configured/random Starttagsprofil die einzige verfügbare Adapterzuordnung.
10. Laufzeitstatus JSON/text und die HTML/JSON Webansicht werden aus derselben Entscheidung neu geschrieben. Spielerhinweise werden zuletzt installiert.

Standardmäßig `cycle.check_interval_ms=0` führt diese Sequenz einmal beim Start aus. Wenn ein Operator ein positives Intervall angibt und UE4SS offenlegt, `LoopAsync`, spätere Rückrufe verwenden die prozesseigene Auswahl wieder. Sie können diese Auswahl reparieren oder erneut exportieren, aber während desselben Vorgangs keinen anderen Tag auswählen.

<a id="rotation-state-machine"></a>
## Rotationszustandsmaschine

| Auswahlstatus | Eintrittsbedingung | Vorbereitetes Ergebnis | Sichere Wiederherstellung |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Keine aktive Markierung und keine wiederherstellbare Markierung Vorbereiteter Zustand. | Konfigurierte oder zufällig ausgewählte erste Position in einer neu beibehaltenen Tagesreihenfolge. | Bestehende Sitzung am Laufen halten; Neustart erst nach `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | Der aktive Tag ist nicht die letzte Position in der gespeicherten Reihenfolge. | Nächste gespeicherte Position in derselben Familie. | Wenn die Persistenz fehlschlägt, lassen Sie den Server gestoppt und gleichen Sie Sandbox- und Rotationsstatus ab. |
| `active_marker_found_completed_run_prepare_next_unused_family` | Der aktive Tag ist die letzte Position in der gespeicherten Reihenfolge. | Erste Position aus einer neuen Bestellung im nächsten berechtigten Familienlauf. | Bestätigen Sie die neue family/day/order vor dem Neustart. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Keine aktive Markierung, aber der Rotationsstatus benennt ein vorbereitetes Profil. | Das gleiche Profil in der Warteschlange wird neu erstellt. | Behalten die Staatsakten; Löschen Sie sie nicht, um ein erneutes Rollen zu erzwingen. |
| `supervision_reconfirm_prepared_profile_no_advance` | Ein späterer Rückruf wird im selben Prozess ausgeführt. | Dasselbe vorbereitete Profil. | Diagnostizieren Sie die erste fehlgeschlagene Phase. Wiederholte Rückrufe sind keine neuen Auswahlen. |

`selected_run` verwendet immer `selected_family`. `rotation_run` verbraucht die konfigurierte berechtigte Reihenfolge. `non_repeating_random_run` wählt aus den verbleibenden berechtigten Familien aus und startet einen neuen Pool, nachdem alle abgeschlossen sind. Jeder Modus behält eine Familie bei, bis alle 17 eindeutigen Tages-IDs in `day_order` abgeschlossen sind. Der sequenzielle Modus wird nach Tag 17 beendet, wenn der konfigurierte Start nicht Tag 1 ist; Der nicht wiederkehrende Zufallsmodus speichert eine Permutation und rollt sie während der Wiederherstellung nie erneut aus.

<a id="sandbox-transaction"></a>
## Sandbox-Transaktion

Der Writer rendert alle Schlüssel in kanonischer Reihenfolge und validiert vor dem Schreiben Typen, Bereiche, feste Regeln, Markierungswerte und Profilidentität. Die Ersetzung folgt dann dieser Reihenfolge:

1. eine veraltete ausstehende Datei nur entfernen, wenn dies sicher ist;
2. bereits vorhandene Wiederherstellungs-Sidecars beibehalten oder anhalten;
3. die ausstehenden Bytes schreiben;
4. die ausstehende Datei zurücklesen und validieren;
5. eine verifizierte Vorgangssicherung erstellen, wenn ein Ziel vorhanden ist;
6. das Original als Transaktions-Rollback-Datei behalten;
7. die ausstehende Datei hochstufen;
8. die Produktionsdatei lesen und validieren;
9. das zurückgehaltene Original wiederherstellen, wenn die Hochstufung oder Produktionsvalidierung fehlschlägt;
10. Wiederherstellungsdaten beibehalten und Fehler melden, wenn die Bereinigung nicht überprüft werden kann.

Der erste Schreibvorgang verwendet denselben pending/readback/validation Pfad. Ohne Originalziel gibt es nichts wiederherzustellen, daher darf ein fehlgeschlagener erster Schreibvorgang nicht als Wiederherstellung der Originaldatei gemeldet werden.

<a id="adapter-boundary"></a>
## Adaptergrenze

Adapter sind RandomDay-owned Patchdefinitionen für separat installierte Mods. Die Bridge benötigt zunächst einen erkannten Zielpfad und eine vollständige Schlüsselsignatur. Es patcht nur bestehende Zuweisungen, erstellt Betriebssicherungen, wendet jede geplante Datei als eine Transaktion an und setzt alle betroffenen Ziele zurück, wenn ein Schritt fehlschlägt. Fehlende und inkompatible Ziele sind normale optionale Ergebnisse.

RandomDay lädt keinen Code von Drittanbietern in sein Paket. Ein durch Fixtures unterstütztes Layout beweist das Parser- und Transaktionsverhalten von RandomDay's Parser- und Transaktionsverhalten, nicht, dass eine Drittanbieterversion die Werte in einem Spielprozess geladen oder verwendet hat.

<a id="output-boundary"></a>
## Ausgabegrenze

Laufzeitdateien werden unten generiert `RandomDay/runtime/` und `RandomDay/web_export/`; none ist eine Release-Eingabe ZIP. Der Statuswriter entfernt rechnerlokale Adapterpfade aus der öffentlichen JSON Diagnose. Der vollständige Pfad, das Schema, die Kadenz und die Aufbewahrungszuordnung finden Sie in [Laufzeitdateien und Status](LAUFZEITDATEIEN.md).

<a id="failure-ownership"></a>
## Fehlereigentum

| Fehlgeschlagene Phase | Für den Besitzer sichtbare Konsequenz |
|---|---|
| Profil oder INIValidierung | Kein Produktionsschreibvorgang versucht. |
| Ausstehendwrite/readback | Vorhandene Produktionsbytes bleiben erhalten. |
| Vorgangssicherung | Ersetzung stoppt, bevor das Original verschoben wird. |
| Hochstufung oder Produktionsvalidierung | Automatische Wiederherstellung wird versucht und das Ergebnis ist gemeldet. |
| Persistenz des Rotationszustands | Vorbereitete Sandbox-Bytes können vorhanden sein, aber der Übergang ist beeinträchtigt und adapters/messages werden übersprungen. |
| Adapterkompatibilität | Das Ziel bleibt mit `not_installed` unverändert oder `skipped_incompatible`. |
| Adapter write/readback | Alle geänderten Adapterziele werden nach Möglichkeit wiederhergestellt. |
| Status oder Webexport | Das Sandbox-Ergebnis bleibt maßgeblich; Ausgabefehler werden protokolliert und dürfen nicht als erfolgreicher Bericht behandelt werden. |

Folgen Sie [Operationen](OPERATIONEN.md) für die Wiederherstellung und [Fehlerbehebung](FEHLERBEHEBUNG.md) für Symptom-First-Checks.

<a id="evidence-limit"></a>
## Beweisgrenze

Die lokale Lua-Fixture-Suite kann Quellverhalten, generierte Profilinvarianten, Transaktionszweige, Ausgabeformen und Paketgrenzen nachweisen. Sie beweist keinen aktuellen Abiotischen Faktor-Build, keinen aktuellen UE4SS-Release, ein bestimmtes Server-Panel, jede Displaygröße oder eine ungetestete Mod-Version eines Drittanbieters. Diese Ansprüche bleiben bestehen. `not tested`bis ein benannter Kompatibilitätslauf aufgezeichnet wird.
