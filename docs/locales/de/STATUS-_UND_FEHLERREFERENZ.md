<a id="status-and-error-reference"></a>
# Status- und Fehlerreferenz

> **Kanonisch-englische Quelle:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Verwenden Sie die genauen `status`, `transaction_status`, `rollback_status` und `error` Werte aus dem Laufzeitexport. Ähnliche Formulierungen in einem Panel oder einer Konsole sind kein Ersatz für diese Felder.

Dieser Abschnitt ist die vollständige Suchreferenz. Der obige Entscheidungsbaum wählt die aus relevante Kategorie; diese Tabellen enthalten die genauen Maschinenwerte und sicheren Bedienerreaktionen.

<a id="normal-or-informational-states"></a>
## Normale oder informative Zustände

| Status | Bedeutung | Antwort des Bedieners |
|---|---|---|
| `prepared_for_next_reboot` | Ein validiertes Profil wurde für den nächsten Start geschrieben. | Keine Aktion; die aktuelle Sitzung bleibt unverändert. |
| `next_reboot_already_prepared` | Das beabsichtigte nächste Profil stimmt bereits mit dem Ziel überein. | Keine Aktion; Erzwingen Sie keine weitere Rotation. |
| `already_current` / `unchanged` | Das Ziel enthält bereits die beabsichtigten Bytes. | Keine Aktion. |
| `applied` | Der Schreib- und Produktions-Readback wurde bestanden. | Überprüfen Sie die active/prepared Unterscheidung nach dem nächsten Start. |
| `bootstrap_prepare_first_family_start_day` | Kein vorheriger Rotationsstatus existierte, daher wurde der konfigurierte erste Tag vorbereitet. | Erwartet bei der ersten Verwendung. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Der gespeicherte Zustand wurde wiederhergestellt und das gleiche vorbereitete Profil wurde neu geschrieben. | Überprüfen Sie den wiederhergestellten Tag; Es ist keine neue Zufallsauswahl aufgetreten. |
| `supervision_reconfirm_prepared_profile_no_advance` | Ein Aufsichtspass bestätigte die bestehende Vorbereitung. | Erwartet; Die Warteschlange ist nicht zweimal vorgerückt. |
| `external_mods_disabled` | Optionale Adapterverarbeitung ist deaktiviert. | Keine Aktion, es sei denn, Adapter waren vorgesehen. |
| `external_mods_processed` | Alle aktivierten Adapterpläne haben ein Endergebnis erreicht. | Überprüfen Sie jede Adapterzeile. |

<a id="startup-configuration-errors"></a>
## Startkonfigurationsfehler

Diese Meldungen stoppen den Start, bevor RandomDay ein Profil schreibt. Korrigieren Sie die benannte Einstellung oder Paketmarkierung. Umgehen Sie nicht den Validierungszweig.

| Fehlertext | Bedeutung | Sichere Antwort |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` fehlt, ist fehlerhaft oder stammt aus dem falschen Paket. | Installieren Sie ein vollständiges Paket in einem sauberen Staging-Ordner neu und behalten Sie die vorgesehene Modusmarkierung bei. |
| `invalid experience.mode` | `experience.mode` ist keiner der dokumentierten Werte. | Verwenden Sie `auto`, `persistent_dedicated`, `temporary_dedicated` oder `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | Ein manuelles Kopierpaket wurde als dedizierter Server konfiguriert. | Wiederherstellen `auto` unverändert oder `singleplayer_lan`; Richten Sie es nicht automatisch auf eine externe Welt. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Für den Workflow zum manuellen Kopieren wurde ein spezielles Paket konfiguriert. | Verwenden Sie `auto`, `persistent_dedicated` oder `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | Die Auswahl für den ersten Tag ist ungültig. | Genau verwenden. `configured` unverändert oder `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | Die Auswahl für die Tagesreihenfolge ist ungültig. | Genau verwenden. `sequential` unverändert oder `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | Der konfigurierte Starttag ist ein Bruchtag oder außerhalb Der Zyklus. | Verwenden Sie eine ganze Zahl von 1 bis `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | Sicherung oder letzte Wiederherstellung wurde deaktiviert. | Beide Sicherheitssperren wiederherstellen; RandomDayverweigert absichtlich unsichere Schreibvorgänge. |
| `external adapter transaction safety locks must remain true` | Adapter-Patching oder Sicherungsschutz wurde deaktiviert. | Stellen Sie beide Adapter-Sicherheitssperren wieder her oder deaktivieren Sie Adapter als Gruppe. |
| `paths.world_name must be one folder name` | Der konfigurierte Weltname enthält ein Trennzeichen oder ein unsicheres Zeichen. | Geben Sie nur den genauen Ordnernamen mit Buchstaben, Zahlen, Leerzeichen usw. ein. Unterstriche oder Bindestriche. |
| `required runtime directory unavailable` | Ein erforderliches mod-lokales Ausgabeverzeichnis konnte nicht erstellt oder bestätigt werden. | Überprüfen Sie nur das benannte RandomDayVerzeichnis und seine Schreibberechtigung. |

<a id="profile-wide-configuration-errors"></a>
## Profilweite Konfigurationsfehler

Diese Fehler stoppen die Profilerstellung vor einem Sandbox-Schreibvorgang.

| Fehlertext | Bedeutung | Sichere Antwort |
|---|---|---|
| `sandbox.profile_overrides must be a table` | Die vier profilweiten Auswahlmöglichkeiten wurden durch einen anderen Lua-Typ ersetzt. | Stellen Sie die dokumentierte Tabelle wieder her in `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | Die Tabelle enthält eine Einstellung, die nicht einer der vier unterstützten Schlüssel ist. | Entfernen Sie den benannten Schlüssel und verwenden Sie family/profile Quellen für andere Sandbox-Einstellungen. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` unverändert oder `AllowIronMode` ist nicht `true` unverändert oder `false`. | Verwenden Sie einen Lua-Booleschen Wert ohne Anführungszeichen. |
| `sandbox.profile_overrides.<key> must be integer` | Ein Unterstützungswert ist keine ganze Zahl. | Verwenden Sie eine ganze Zahl. |
| `sandbox.profile_overrides.<key> outside supported range` | Ein Unterstützungswert liegt außerhalb `0..1000`. | Wählen Sie eine ganze Zahl aus `0` bis `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Rollback und Zwischenzustände

| Wert | Bedeutung | Sichere Antwort |
|---|---|---|
| `not_started` / `pending` | Die Transaktion oder der Adapterplan hat kein Endergebnis erreicht. | Warten Sie nur auf den aktuellen begrenzten Startdurchlauf; Der persistente Zustand erfordert eine Untersuchung. |
| `not_needed` | Es war kein Rollback erforderlich. | Keine Aktion. |
| `original_held` | Das ursprüngliche Ziel wurde vor der Heraufstufung in die Wiederherstellungsposition verschoben. | Löschen Sie die Wiederherstellungsdatei nicht, während die Transaktion unvollständig ist. |
| `retained_after_success` | Das neue Ziel wurde überprüft, die Wiederherstellungsdaten bleiben jedoch bestehen, da die Bereinigung nicht verfügbar war oder absichtlich beibehalten wurde. | Überprüfen Sie die Produktionsbytes, bevor Sie eine benannte Wiederherstellungsdatei entfernen. |
| `discarded_after_success` | Die überprüften Ersatz- und temporären Rollback-Daten wurden gelöscht. | Keine Aktion. |
| `rollback_failed` | Der Wiederherstellungsversuch konnte nicht überprüft werden. | Halten Sie den Server angehalten und verwenden Sie die Sicherung des letzten überprüften Vorgangs. |
| `skipped_state_persistence_failed` | Sandbox-Bytes wurden vorbereitet, aber Rotation Der Status blieb nicht bestehen, daher wurden Adapter und vorbereitete Player-Nachrichten übersprungen. | Laufzeitstatusspeicher reparieren; Rollen Sie die Warteschlange nicht manuell neu oder verschieben Sie sie nicht. |
| `failed` | Eine Zusammenfassungszeile stellt einen Terminalfehler dar, dessen spezifische Ursache in seinen `error` oder Transaktionsfeldern liegt. | Folgen Sie dem ersten spezifischen Code; Führen Sie die Fehlerbehebung nicht `failed` allein durch. |

<a id="transaction-failures"></a>
## Transaktionsfehler

| Status | Bedeutung | Sichere Antwort |
|---|---|---|
| `invalid_input` | Die Ersetzungsanforderung war kein gültiger Text oder es fehlte ein gültiges Ziel. | Korrekte Konfiguration; Versuchen Sie es nicht unverändert. |
| `stale_pending_cleanup_failed` | Eine alte ausstehende Datei konnte nicht entfernt werden. | Halten Sie die ausstehende Datei vor der manuellen Bereinigung an und bewahren Sie sie auf. |
| `stale_rollback_requires_review` | Wiederherstellungsdaten sind neben einem aktuellen Ziel vorhanden und können nicht sicher verworfen werden. | Vergleichen Sie Ziel- und Rollback-Bytes, bevor Sie eine der beiden Optionen auswählen. |
| `interrupted_transaction_restore_failed` | Wiederherstellung nach einem unterbrochenen Austausch konnte das Ziel nicht wiederherstellen. | Halten Sie den Server angehalten und stellen Sie ein verifiziertes Backup wieder her. |
| `interrupted_transaction_cleanup_failed` | Das Ziel wurde wiederhergestellt, aber veraltete Transaktionsdaten konnten nicht gelöscht werden. | Überprüfen Sie die Zielbytes und entfernen Sie dann nur den benannten veralteten Sidecar. |
| `pending_write_failed` | Der Kandidat konnte nicht geschrieben werden. | Überprüfen Sie das enge Zielverzeichnis und den freien Speicherplatz. |
| `pending_readback_failed` / `pending_readback_mismatch` | Die Bytes des Kandidaten konnten nach dem Schreiben nicht gelesen oder unterschieden werden. | Die ausstehende Datei nicht hochstufen. |
| `pending_validation_failed` | Der Kandidat ist fehlgeschlagen schema/profile Validierung vor der Heraufstufung. | Korrigieren Sie den gemeldeten Schlüssel oder die gemeldete Regel; Validierung nicht umgehen. |
| `operation_backup_failed` / `backup_failed` | Es wurde kein verifiziertes Pre-Write-Backup erstellt. | Stopp; Es sollte keinem Zielersatz vertraut werden. |
| `original_preserved_move_failed` | Das ursprüngliche Ziel konnte nicht in die Wiederherstellungsposition verschoben werden. | Alle Transaktionsdateien beibehalten und manuell wiederherstellen. |
| `promotion_failed` | Der ausstehende Kandidat konnte nicht zum Produktionsziel werden. | Überprüfen Sie, ob das Original wiederhergestellt wurde, bevor Sie es erneut versuchen. |
| `production_validation_failed` | Heraufgestufte Bytes konnten nicht produziert werden readback/validation. | Stellen Sie die verifizierte Sicherung wieder her und überprüfen Sie den Ziel-Writer. |
| `replacement_committed_recovery_cleanup_failed` | Die Ersetzung ist gültig, aber Rollback-Daten konnten nicht gelöscht werden. | Behandeln Sie das Ziel als festgeschrieben; Entfernen Sie nur verifizierte veraltete Wiederherstellungsdaten. |
| `rollback_failed` | Die automatische Wiederherstellung wurde nicht überprüft. | Halten Sie den Server angehalten und verwenden Sie die manuelle Wiederherstellung. |

<a id="target-profile-adapter-and-export-failures"></a>
## Ziel-, Profil-, Adapter- und Exportfehler

| Status | Bedeutung | Sichere Antwort |
|---|---|---|
| `target_refused` | Der konfigurierte Pfad liegt außerhalb der zulässigen Modusgrenze. | Korrigieren Sie die Weg; Schwächen Sie niemals die Grenze. |
| `target_directory_failed` | Das Zielverzeichnis konnte nicht erstellt oder bestätigt werden. | Überprüfen Sie nur die Existenz und Berechtigungen dieses Verzeichnisses. |
| `profile_validation_failed` | Einem Profil fehlt ein Schlüssel, es hat den falschen type/range oder es verstößt gegen eine verbleibende invariante Regel. | Verwenden Der benannte Schlüssel `sandbox.profile_overrides` und die Profilreferenz zum Reparieren der Quelle. |
| `skipped_incompatible` | Ein optionaler Mod ist vorhanden, stimmt aber nicht mit einer unterstützten Adaptersignatur überein. | Lassen Sie ihn unverändert oder deaktivieren Sie diesen Adapter. |
| `external_mods_partial` | Einige optionale Adapter wurden fertiggestellt und andere wurden sicher skipped/failed. | Überprüfen Sie die Adapterzeilen unabhängig; Das Sandbox-Ergebnis ist separat. |
| `external_adapter_failed` | Ein erforderlicher Adapter wurde nicht sicher abgeschlossen. | Stellen Sie die überprüfte Sicherung wieder her, bevor Sie es erneut versuchen. |
| `degraded_state_persistence` | Sandbox-Vorbereitung abgeschlossen, Rotationsstatus-Persistenz jedoch nicht. | Gehen Sie nicht davon aus, dass der nächste Startvorgang ordnungsgemäß durchgeführt werden kann. Statusspeicher reparieren. |
| `export_directory_failed` | `web_export/` konnte nicht erstellt oder geschrieben werden. | Gameplay-Vorbereitung ist möglicherweise noch gültig; Reparaturbericht separat. |

<a id="translation-and-message-validation-errors"></a>
## Übersetzungs- und Nachrichtenvalidierungsfehler

Dies sind Wörterbuch- oder Präsentationsvertragsfehler. Sie werden vor der Veröffentlichung validiert und können auch als begrenzte Laufzeitstatuswarnung angezeigt werden.

| Fehlertext | Bedeutung | Sichere Antwort |
|---|---|---|
| `dictionary coverage mismatch` | Das Profilwörterbuch erklärt nicht jede dokumentierte Einstellung. | Fügen Sie den fehlenden Wörterbucheintrag hinzu und führen Sie das Profil erneut aus. generation/validation. |
| `missing profile setting` | Einem ausgewählten Profil fehlt eine Einstellung, die von der dictionary/schema. | Reparieren Sie die Profilfamilienquelle; Erfinden Sie keinen Laufzeitstandard. |
| `empty explanation` | Eine Einstellung ist vorhanden, hat aber keine operator/player Erklärung. | Fügen Sie vor der Veröffentlichung eine Erklärung in einfacher Sprache hinzu. |
| `join line too wide` | Eine generierte Verbindungslinie überschreitet die Quellbeschränkung von 42 Zeichen. | Kürzen Sie die Wörterbuchphrase; Verlassen Sie sich nicht auf Client-Wrapping. |
| `join message too tall` | Die generierte Join-Zusammenfassung umfasst mehr als vier Zeilen. | Reduzieren oder priorisieren Sie den Nachrichteninhalt neu. |
