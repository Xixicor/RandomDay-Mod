<a id="glossary"></a>
# Glossar

> **Kanonisch-englische Quelle:** [GLOSSARY.md](../../GLOSSARY.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Dies ist das kanonische Vokabular für RandomDay Dokumentation. Prozeduren verknüpfen diese Definitionen, anstatt denselben Zustand in mehreren Handbüchern neu zu definieren. Schemaspezifische Feldregeln bleiben in [Laufzeitausgaben](LAUFZEITAUSGABEN.md).

| Begriff | Einfache Bedeutung | Genaue technische Bedeutung |
|---|---|---|
| Aktives Profil | Die Regeln, die die aktuelle Sitzung verwendet. | Das Paket family/dayProfil, identifiziert durch RandomDayMarker, der beim Prozessstart aus der Sandbox gelesen wird. |
| Vorbereitetes Profil | Regeln bereit für eine spätere Sitzung. | Das vollständige family/day Profil, dessen Zielbytes die Validierung und Rücklesung bestanden haben und dessen Rotationsstatus vor dem Neustart der Rücklesung nicht aktiv war. |
| Wiederhergestellt | Vorbereitung fehlgeschlagen und zuvor überprüfte Bytes wurden zurückgesetzt. | Die fehlgeschlagene Transaktion meldet ein erfolgreiches Rollback und Readback der zurückgehaltenen ursprünglichen oder überprüften Wiederherstellungskopie. |
| Warteschlange für nächsten Neustart | Eine vorbereitete Auswahl wird für den nächsten Start zurückgehalten. | `next_reboot_queue` wählt einmal pro Prozess aus und verwendet diese booteigene Auswahl während der Überwachung wieder. |
| Bootstrap | Die erste Vorbereitung, wenn kein aktiver Marker vorhanden ist. | Auswahl des konfigurierten oder zufälligen ersten Tages aus einer berechtigten Familie; `cycle.bootstrap_day` ist nur ein Kompatibilitäts-Fallback. |
| Familie | Ein 17-tägiger Spielstilfortschritt. | Ein Registrierungseintrag und ein Familienmodul, das genau 17 vollständige Profile erstellt. |
| Rotation | Ein Durchgang durch berechtigte Familien. | Zustand identifiziert durch `rotation_id`, mit verfügbaren, verbleibenden und abgeschlossene Familienlisten. |
| Führen | Eine Familie über alle 17-Tage-IDs aus. | Eine familiengebundene Sequenz, identifiziert durch `run_id`; Die Familie bleibt gesperrt, bis jede persistente Tagesauftragsposition abgeschlossen ist. |
| Sitzungsmodus | Wie der Operator dieses Paket verwendet. | `persistent_dedicated`, `temporary_dedicated` oder `singleplayer_lan`; Der Paketmodus steuert weiterhin die Dateisystemgrenze. |
| Tagesreihenfolge | Die genaue Reihenfolge, die von einem Familienlauf verwendet wird. | Eine persistente Permutation mit 17 Zahlen. Der sequentielle Modus beginnt mit dem Starttag. Der Zufallsmodus mischt einmal ohne Wiederholung. |
| Marker | In der Sandbox-Datei gespeicherte Identität. | `RANDOMDAY_*` Felder werden mit dem vollständigen Profil gerendert und beim nächsten Prozessstart gelesen. |
| Vorbereitet und bereit | Das Schreiben und das Festschreiben des Status waren erfolgreich. | `prepared_ready=true` erfordert ein erfolgreiches Sandbox-Ergebnis und keinen State-Commit-Fehler. Es beweist nicht die Aktivierung. |
| Bereits aktuell | Das Ziel verfügt bereits über die beabsichtigten Bytes. | Der gerenderte Profil-Hash stimmt mit dem Ziel überein, also RandomDay überprüft last-good/mirrorfunktioniert ohne Neuschreiben der Primärdatenbank. |
| Herabgesetzte Statuspersistenz | Sandbox-Bytes waren erfolgreich, Rotationsbuchhaltung jedoch nicht. | `profile_status=degraded_state_persistence`; Adapter und vorbereitete Profilnachrichten werden übersprungen. |
| Ausstehende Datei | Kandidatenbytes noch nicht hochgestuft. | `<target>.randomday.pending`, geschrieben, zurückgelesen und vor dem Ersetzen validiert. |
| Rollback-Datei | Das Original wurde während des Ersetzens aufbewahrt. | `<target>.randomday.rollback`, Wird verwendet, um die Produktion bei Hochstufungs- oder Validierungsfehlern wiederherzustellen. |
| Vorgangssicherung | Eine dauerhafte Kopie, die vor der Mutation erstellt wurde. | Eine überprüfte Datei unter `runtime/backups/` für die Primär-, Spiegel- oder Adaptertransaktion. |
| Letzte als gültig bekannte Datei | Die neueste Sandbox, die zur Wiederherstellung akzeptiert wurde. | `runtime/last_good/SandboxSettings.ini` plus `manifest.lua`; Das Paar zeichnet die Profilidentität und den Hash auf. |
| Spiegel | Optionales zweites Sandbox-Ziel. | Ein explizit konfiguriertes oder vom Weltnamen abgeleitetes Ziel, das durch seine eigene Transaktion nach dem Primären geschrieben wird. |
| Paketmodus | Durch die Version ausgewählte Installationsgrenze Asset. | `dedicated_server` unverändert oder `singleplayer_manual` ab `.randomday_mode`. |
| Manueller Kopiermodus | Singleplayer/LAN Generierung ohne Speichererkennung. | `singleplayer_manual` schreibt nur innerhalb von `runtime/singleplayer_manual/` und deaktiviert Adapter und Spiegel. |
| Adapter | RandomDay-owned Zuordnung für einen anderen installierten Mod. | Ein signaturgesteuerter Transaktionsplan, der vorhandene Zuweisungen erst nach Sicherungs- und Kompatibilitätsprüfungen aktualisiert. |
| Erkanntes Layout | Genaue Adapterdateiform für einen Schreibvorgang akzeptiert. | Alle erforderlichen Signaturschlüssel und Zieldateien sind vorhanden; Ein Dateiname allein reicht nicht aus. |
| `not_installed` | Das optionale Ziel wurde nicht gefunden. | Sicheres Adapterergebnis ohne Mutation. |
| `skipped_incompatible` | Ein Ziel existiert, aber seine Form wird nicht unterstützt. | Sicheres Adapterergebnis ohne Mutation, da die vollständige Signatur nicht übereinstimmte. |
| `failed_rolled_back` | Eine Änderung ist fehlgeschlagen und vorherige Bytes sind intakt. | Adaptertransaktion ist vor der Mutation fehlgeschlagen oder alle betroffenen Dateien wurden wiederhergestellt und überprüft. |
| `rollback_failed` | Automatische Wiederherstellung konnte nicht überprüft werden. | Hard-Stop-Adapterstatus, der eine manuelle Wiederherstellung aus der aufgezeichneten Sicherung erfordert. |
| Wörterbuch | Zuordnung von Rohwerten zu öffentlichen Erklärungen. | `randomday_dictionary_v2`, generiert aus `dictionary.lua` und in der Laufzeitstatusausgabe enthalten. |
| Übersetzung | Menschliche Ansicht, abgeleitet aus Rohprofilwerten. | Begrenzte Domain-Scores, Fakten, Zusammenfassungen und Nachrichten, die von `translation.lua`; Rohwerte bleiben maßgebend. |
| Öffentlicher Status | Bereinigte maschinenlesbare Operatorzusammenfassung. | `web_export/today.json` unter Verwendung von `randomday_public_status_v2`. |
| Laufzeitstatus | Detaillierter lokaler maschinenlesbarer Snapshot. | `runtime/current/randomday_status.json` unter Verwendung von `randomday_runtime_status_v2`. |
