<a id="operate-active-prepared-and-recovery-state"></a>
# Aktiver, vorbereiteter und Wiederherstellungsstatus des Betriebs

> **Kanonisch-englische Quelle:** [OPERATIONS.md](../../OPERATIONS.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


RandomDay ändert die Sandbox-Datei für einen zukünftigen Start. Die Regeln, die bereits in eine laufende Abiotische Faktor-Sitzung geladen wurden, werden dadurch nicht geändert.

Diese Seite enthält Bedienerentscheidungen und Wiederherstellungsverfahren. Verwenden Sie [Glossar](GLOSSAR.md) für kanonische Begriffe, [Laufzeitdateien](LAUFZEITDATEIEN.md) für den Pfadbesitz und [Laufzeitausgaben](LAUFZEITAUSGABEN.md) für genaue Schemata und Feldbedeutungen.

<a id="distinguish-active-and-prepared-state"></a>
## Unterscheiden Sie zwischen aktivem und vorbereitetem Zustand

Ein vorbereitetes Profil ist erst aktiv, wenn ein späterer Start seine Markierung liest. Verwenden Sie nicht den vorbereiteten family/day zur Beschreibung der aktuellen Sitzung.

Verwenden Sie `web_export/today.html` für eine lesbare Zusammenfassung und `web_export/today.json` für den genauen Status. Bestätigen Sie die aktive Markierung, die vorbereitete Identität, `prepared_ready`, `profile_status`, das Transaktionsergebnis, das Rollback-Ergebnis und das State-Commit-Ergebnis, bevor Sie sich für einen Neustart entscheiden.

<a id="follow-the-normal-dedicated-server-sequence"></a>
## Folgen Sie der normalen Sequenz für dedizierte Server

| Vorher | Aktion | Nachher |
|---|---|---|
| Keine RandomDayMarkierung | Beginnen Sie mit RandomDay aktiviert. | Die aktuelle Sitzung behält ihre bestehenden Regeln bei; RandomDay erstellt eine Tagesbestellung, behält sie bei und bereitet dann ihre erste vor configured/randomPosition vor. |
| Erste Position vorbereitet | Neustart. | Dieser Tag wird aktiv; Die nächste gespeicherte Position in derselben Familie wird vorbereitet. |
| Mittelposition aktiv | Neustart nach Überprüfung des vorbereiteten Profils. | Der vorbereitete Tag wird aktiv und die folgende gespeicherte Position wird vorbereitet. |
| Endposition aktiv | Neustart nach Überprüfung der nächsten Familie. | Die erste Position einer anderen berechtigten Familienbestellung wird aktiv. |

`selected_run` behält die konfigurierte Familie. `non_repeating_random_run` behält eine zufällig ausgewählte Familie über alle 17-Tage-Positionen bei und vermeidet die Wiederverwendung einer Familie, bis die Auswahlliste erschöpft ist. `rotation_run` folgt der konfigurierten Familienreihenfolge. `cycle.day_progression_mode` steuert die Tagesreihenfolge unabhängig von der Familienauswahl.

Eine Neuinstallation erfordert immer einen Prozess zur Vorbereitung und einen späteren Prozess zur Aktivierung. Dies gilt für persistente Server, temporäre Server und manuelle singleplayer/LANGenerierung.

<a id="read-the-right-evidence"></a>
## Lesen Sie die richtigen Beweise

Verwenden Sie die [Laufzeitdateizuordnung](LAUFZEITDATEIEN.md), um den aktuellen Rotationsstatus zu lokalisieren Status, letzte als funktionierend bekannte Dateien, Vorgangssicherungen, Exporte und `UE4SS.log`. Verwenden Sie den [Laufzeitausgabereferenz](LAUFZEITAUSGABEN.md) für jede Feldgruppe, jedes Schema, jeden Leerzustand, jede Fehlerbedeutung und jede Aufbewahrungsregel. Die HTML und JSON-Exporte fassen den Quellstatus zusammen; Sie beweisen nicht, dass ein Profil von einem Live-Spiel-Client verwendet wurde.

Wenn `prepared_ready` ist `false` unverändert oder `profile_status` ist `degraded_state_persistence`, halten Sie den Server angehalten, bis Sandbox und Rotationsstatus übereinstimmen. Ein gültiger Sandbox-Schreibvorgang mit fehlgeschlagener Statuspersistenz ist kein ordnungsgemäß vorbereiteter Übergang.

<a id="respond-to-writer-outcomes"></a>
## Reagieren Sie auf die Ergebnisse der Autoren

RandomDay bereitet die neuen Bytes in einer Geschwisterdatei vor, liest sie zurück, validiert die gesamte Sandbox, behält das Original bei, wenn eines vorhanden ist, stuft die neue Datei hoch und liest sie erneut zurück. Es meldet sich erst bereit, wenn der Produktions-Readback zustimmt.

Wenn die Heraufstufung oder Produktionsvalidierung fehlschlägt, RandomDay versucht, die von diesem Vorgang gehaltene Datei wiederherzustellen. Ein Wiederherstellungsfehler ist ein harter Stopp: Halten Sie den Server angehalten und stellen Sie ihn manuell wieder her, anstatt ihn wiederholt neu zu starten.

<a id="respond-to-adapter-outcomes"></a>
## Reagieren Sie auf Adapterergebnisse

Verwenden Sie [Unterstützten Adapter](UNTERST%C3%9CTZTE_ADAPTER.md#read-an-adapter-result) für die kanonische Ergebnistabelle mit sechs Zuständen und die nächste Aktion. Behandeln Sie `rollback_failed` als harten Stopp. Das separat aufgezeichnete Adapter-Backup ist die Wiederherstellungsquelle.

Adapter wirken sich nur auf separat installierte Mods aus. Sie aktivieren niemals ein vorbereitetes RandomDay Sandbox-Profil.

Bei einem normalen Start werden Adapterwerte aus dem aktiven Profil ausgewählt, da der separat installierte Mod möglicherweise später im selben UE4SS Startvorgang geladen wird. Wenn beim ersten Bootstrap kein aktiver RandomDay-Marker vorhanden ist, ist das vorbereitete Starttagsprofil die einzige verfügbare Zuordnung. Diese Zeitregel ist unabhängig von der Sandbox-Grenze für den nächsten Neustart und hängt dennoch vom eigenen Ladeverhalten des anderen Mods ab.

<a id="manual-recovery"></a>
## Manuelle Wiederherstellung

1. Stoppen Sie das Spiel oder den Server. Stellen Sie eine Datei nicht wieder her, während sie möglicherweise geöffnet ist.
2. Kopieren Sie den aktuellen `SandboxSettings.ini`, `runtime/` und `web_export/` in ein separates Diagnose-Backup.
3. Überprüfen Sie `runtime/last_good/manifest.lua` und den neuesten relevanten Eintrag unter `runtime/backups/`. Wählen Sie eine Datei aus, deren family/day und Hash mit dem Status übereinstimmen, den Sie wiederherstellen möchten.
4. Kopieren Sie die ausgewählte überprüfte Datei in den konfigurierten primären Sandbox-Pfad.
5. Lesen Sie sie noch einmal und bestätigen Sie, dass sie vollständig ist, bevor Sie beginnen.
6. Starten Sie einmal und überprüfen Sie die aktive Markierung und den vorbereiteten Status. Gehen Sie nicht allein aufgrund des Fehlens einer Fehlermeldung davon aus, dass die Wiederherstellung erfolgreich war.

Wenn kein verifiziertes Backup vorhanden ist, stellen Sie das vor der Installation erstellte Operator-Backup wieder her. RandomDay kann eine Datei nicht rekonstruieren, die beim Start nie lesbar war.

<a id="account-for-control-panel-writes"></a>
## Konto für Control-Panel-Schreibvorgänge

Einige Server-Panels generieren `SandboxSettings.ini`. RandomDay kann ein vorbereitetes Profil nicht beibehalten, wenn ein anderes Tool es überschreibt, nachdem der Schreibvorgang überprüft wurde. Konfigurieren Sie eine autoritative Sandbox-Quelle und überprüfen Sie die Dateimarkierung unmittelbar vor und nach dem Neustart, wenn Sie einen wiederholten Day-1- oder fehlenden Übergang diagnostizieren.
