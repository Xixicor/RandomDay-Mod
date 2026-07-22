<a id="locate-runtime-files-and-status"></a>
# Laufzeitdateien und Status lokalisieren

> **Kanonisch-englische Quelle:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Dies ist das kanonische Pfadinventar, das von Bedienern und zur Rückverfolgbarkeit von Quellen verwendet wird. Es antwortet, wo sich eine Datei befindet, wer sie schreibt, wann sie sich ändert, wie lange sie verbleibt und welche Wiederherstellungsfunktion sie übernimmt. Der [Laufzeitausgabereferenz](LAUFZEITAUSGABEN.md) besitzt Schemata, Feldbedeutungen, leere Zustände und Maschinenwertinterpretation.

Alle Pfade in diesem Handbuch beziehen sich auf den installierten `RandomDay/` Ordner, sofern nicht anders angegeben. Laufzeitausgaben werden nach der Installation erstellt; Sie sind von Release-ZIPs ausgeschlossen.

<a id="operator-file-map"></a>
## Operator-Dateizuordnung

| Pfad | Produzent und Trigger | Aktualisierung und Aufbewahrung | Bedeutung und Wiederherstellung |
|---|---|---|---|
| Konfigurierte primäre `SandboxSettings.ini` | `ax_sandbox/writer.lua`nach Profilserialisierung und Validierung im dedizierten Modus. | Transaktional ersetzt; Ziel ist vom Bediener konfiguriert oder von der Installation abgeleitet. | Vollständiges Profil für den nächsten Start. Die laufende Sitzung behält ihre bereits geladenen Regeln. |
| Konfigurierter Spiegel `SandboxSettings.ini` | Sandbox-Writer nach einem erfolgreichen primären Ergebnis, wenn ein expliziter Spiegel geeignet ist. | Best-Effort-Transaktionsersatz. | Nur sekundäre Kopie; ein Spiegel ersetzt nicht die korrekte Primärpfadkonfiguration. |
| Erkanntes Adapterziel | `ax_external/bridge.lua` nach vollständigem Layout-Signatur-Abgleich. | Bestehende Zuweisungen werden transaktional mit eindeutigen Backups geändert. | Separat installierte Mod-Konfiguration; Überprüfen Sie das Ergebnis des sechsstufigen Adapters unabhängig von der primären Sandbox. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua`nach einer erfolgreichen Sandbox-Transaktion. | Wird nach jeder akzeptierten Vorbereitung transaktional ersetzt. | Warteschlangenbuchhaltung. Wenn nicht lesbar, RandomDayversucht den letzten guten Zustand. |
| `runtime/rotation_state.last_good.txt` | Sicherung der Kalendertransaktion. | Wird ersetzt, wenn der aktuelle Zustand aktualisiert wird. | Vorheriger lesbarer Zustand; Bewahren Sie es während der Diagnose und bei Aktualisierungen auf. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` nach Erfolg, verminderter Persistenz oder Schreibfehler. | Wird bei jedem Statusdurchlauf transaktional ersetzt. | Kanonisch strukturiert active/prepared, Transaktion, Übersetzung und Adapterzusammenfassung. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` neben dem Status. | Transaktional ersetzt. | Schema `randomday_runtime_dictionary_v2`: Begriffe, Einstellungsübersetzungen, Domänen, Paketmodi und Auswahlzustände. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` neben dem Status. | Transaktional ersetzt. | Genau begrenzte Nachrichtenvorschau zur Überprüfung durch den Bediener; Es beweist nicht das Client-Rendering. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua`nach einem verifizierten primären Sandbox-Ergebnis. | Transaktional ersetzt. | Letzte Sandbox als bekanntermaßen funktionsfähig akzeptiert. Nur mit seinem Manifest verwenden. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua`nachdem der Sandbox-Snapshot erfolgreich war. | Transaktional als Paar mit dem Sandbox-Snapshot ersetzt. | Version, Profil-ID, Name, Tag, Inhalts-Hash und Schreibzeit für die zuletzt gültige Datei. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Primärer oder Spiegel-Writer vor der Mutation. | Eindeutiges Operationsverzeichnis; RandomDay bereinigt es nicht. | Überprüfte Pre-Write-Bytes. Betreiber besitzen die Aufbewahrung nach Überprüfung. |
| `runtime/backups/external_<operation>/...` | Adapterbrücke vor jeder Adaptermutation. | Einzigartiges Operationsverzeichnis; keine automatische Bereinigung. | Eine verifizierte Kopie jedes geplanten Adapterziels. |
| `runtime/pending/` | Erstellt durch die Einrichtung des Laufzeitverzeichnisses. | Reserviert; Aktuelle Primärtransaktionen verwenden stattdessen Geschwister-Sidecars. | Behandeln Sie ein leeres Verzeichnis nicht als Vorbereitungsnachweis. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Sandbox-Writer im `singleplayer_manual`-Modus. | Wird transaktional ersetzt, wenn das manuelle Paket ausgeführt wird. | Vollständige Datei, damit der Bediener sie überprüfen und überprüfen kann manuell in eine gestoppte Welt kopieren. |
| `web_export/today.json` | `ax_web/export.lua`nach jedem Vorbereitungsergebnis. | Transaktional ersetzt. | Kompaktes maschinenlesbares active/prepared und writer/adapterErgebnis. |
| `web_export/today.html` | `ax_web/export.lua`nach einem erfolgreichen Exportdurchlauf. | Transaktional ersetzt. | Menschliche Sichtweise abgeleitet aus demselben Übergang; Kein unabhängiger Beweis. |
| `UE4SS.log` | UE4SS und `ax_core/log.lua`. | Verwaltet von UE4SS, nicht RandomDay. | Start-, ausgewählte Profil-, Schreib-, Adapter-, Nachrichten-, Status- und Fehlerzeilen mit dem Präfix `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Leere und fehlgeschlagene Dateistatus erkennen

- Möglicherweise wird ein fehlendes Primär- oder Spiegelziel erstellt. Ein ungültiges Profil, ein ausstehender Schreibvorgang, eine Heraufstufung oder ein Produktionsrücklesefehler ist nicht bereit. Ein Spiegelfehler ändert nichts am akzeptierten Primärergebnis.
- `runtime/singleplayer_manual/SandboxSettings.ini` kann beim ersten manuellen Lauf erstellt werden. Ein Generierungsfehler bleibt im Status und in der Protokollausgabe sichtbar.
- Ein nicht lesbarer `rotation_state.txt` kann auf den letzten guten Zustand oder einen markerbasierten Bootstrap zurückgreifen. Ein fehlgeschlagener Status-Commit führt dazu, dass `degraded_state_persistence`.
- `runtime/last_good/` kann vor dem ersten verifizierten Ziel fehlen. Wenn die gepaarte Manifestaktualisierung fehlschlägt, RandomDay stellt das zuvor akzeptierte Paar wieder her.
- `runtime/backups/mirror_<operation>/` ist der spiegelspezifische Sicherungsspeicherort. Es ist keine primäre oder gespiegelte Sicherungsdatei vorhanden, wenn das Ziel vor der Transaktion nicht vorhanden war.
- Die Adaptermutation beginnt nicht, wenn die Erstellung oder das Zurücklesen der Sicherung fehlschlägt.
- Aktuelle Status-, Wörterbuch- oder Vorschaudateien fehlen möglicherweise, wenn die Ausgabe des Laufzeitstatus nicht verfügbar oder unvollständig ist.
- Ein `export_failed` Ergebnis kann ein älteres Ergebnis hinterlassen `today.json` vorhanden. Ein Sandbox-Fehler aktualisiert JSON, erzeugt aber keinen neuen Fehler HTML Seite; Vergleichen Sie Zeitstempel mit `UE4SS.log`.
- Ein veralteter ausstehender Sidecar wird vor einem neuen Versuch entfernt; Ein Bereinigungsfehler stoppt die Transaktion. Wenn sowohl das Produktionsziel als auch der Rollback-Sidecar vorhanden sind, RandomDay bewahrt die Wiederherstellungsbytes zur Überprüfung auf.
- Keine `[RandomDay]` Startzeile in `UE4SS.log` bedeutet, dass das Laden des Mods nicht nachgewiesen wurde.

<a id="transaction-sidecars"></a>
## Transaktions-Sidecars

Der Transaktionsschreiber kann Geschwisterdateien erstellen neben einem Ziel:

| Muster | Status | Operatoraktion |
|---|---|---|
| `<target>.randomday.pending` | Kandidatenbytes vor Heraufstufung. | Wird normalerweise durch Heraufstufung entfernt. Behalten Sie es bei, wenn ein Fehler eine ausstehende Bereinigung oder Rückleseprobleme meldet. |
| `<target>.randomday.rollback` | Ursprüngliche Bytes, die beim Ersetzen gehalten wurden. | Wird normalerweise bei einem Fehler wiederhergestellt oder nach verifiziertem Erfolg entfernt. Löschen Sie es nicht, wenn das Ziel ebenfalls vorhanden ist. Diese Kombination muss überprüft werden. |
| `<target>.randomday.restore.pending` | Kandidatenbytes während der Adapterwiederherstellung. | Beibehalten mit der Adaptersicherung, wenn die Wiederherstellung fehlschlägt. |
| `<target>.randomday.restore.rollback` | Während der Adapterwiederherstellung zurückgehaltene Wiederherstellungsbytes. | Behalten und stoppen Sie den betroffenen Dienst, wenn die Bereinigung oder Wiederherstellung nicht überprüft wurde. |

Diese Dateien können neben der dedizierten Sandbox oder einem separat installierten Adapterziel vorhanden sein. Ihr Vorhandensein ist ein Transaktionsstatus und kein Beweis dafür, dass das neue Profil aktiv wurde.

<a id="interpret-file-contents"></a>
## Dateiinhalte interpretieren

Verwenden Sie [Laufzeitstatus und Ausgabereferenz](LAUFZEITAUSGABEN.md) für die vollständigen `rotation_state.txt`, `randomday_status.json` und `today.json` Schemata. Diese Referenz besitzt auch leere Zustände, Fehlerbedeutungen, Wörterbuchausgaben und die Regel, dass der vorbereitete Zustand kein aktiver Zustand ist. Verwenden Sie die [Status- und Fehlerreferenz](STATUS-_UND_FEHLERREFERENZ.md), wenn ein exakter Maschinenwert eine Bedieneraktion erfordert.

<a id="rotation-state-fields"></a>
### Rotationsstatusfelder

Sehen Sie sich das kanonische [Rotationszustandsschema](LAUFZEITAUSGABEN.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Aktuelles Statusschema

Sehen Sie sich das kanonische [Laufzeitstatus JSON Schema](LAUFZEITAUSGABEN.md#runtime-status-json).

<a id="web-export-schema"></a>
### Webexportschema

Sehen Sie sich das kanonische [öffentlicher Status JSON Schema](LAUFZEITAUSGABEN.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Wiederherstellungsnachweise aufbewahren

RandomDay überschreibt den aktuellen Status, den aktuellen Status, den zuletzt gültigen Status und Webansichten. Es erstellt eindeutige Betriebssicherungsverzeichnisse und löscht keine alten. Wählen Sie eine Aufbewahrungsrichtlinie außerhalb des laufenden Prozesses, aber löschen Sie niemals die neuesten Wiederherstellungsnachweise, solange ein Schreib-, Rücklese-, Status- oder Rollback-Problem ungelöst ist.
