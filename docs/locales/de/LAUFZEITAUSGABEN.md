<a id="interpret-runtime-state-and-output-schemas"></a>
# Laufzeitstatus und Ausgabeschemata interpretieren

> **Kanonisch-englische Quelle:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Dies ist der kanonische Leitfaden zum feldvollständigen Schema. Es beantwortet die Bedeutung der einzelnen Felder, Zustände, leeren Werte und Maschinenergebnisse. Verwenden Sie [Laufzeitdateizuordnung](LAUFZEITDATEIEN.md) für Produzenten, Pfade, Schreibzeit, Aufbewahrung, Transaktions-Sidecars und Wiederherstellungsorte.

Alle Pfade in diesem Handbuch beziehen sich auf den installierten `RandomDay/`-Ordner, es sei denn, eine Zeile benennt explizit die konfigurierte Sandbox oder ein optionales Adapterziel. Laufzeitausgaben werden nach der Installation generiert und sind nicht Teil einer der beiden Versionen ZIP.

<a id="choose-the-authoritative-view"></a>
## Wählen Sie die autorisierende Ansicht

| Benötigt | Authoritative Quelle |
|---|---|
| Vom aktuellen Prozess geladene Regeln | RandomDay Markierung im `SandboxSettings.ini`Beim Start lesen |
| Vorbereitete Warteschlangenbuchhaltung | `runtime/rotation_state.txt`, Schema `1` |
| Detaillierter lokaler Status | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Öffentlicher maschinenlesbarer Status | `web_export/today.json`, Schema `2` und `randomday_public_status_v2` |
| Menschlich lesbarer Status | `web_export/today.html`, abgeleitet von derselbe öffentliche Statusübergang |
| Übersetzungsvokabular | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Hinweis für genau begrenzte Spieler | `runtime/current/player_message_preview.txt` |

Das Paket HTML Ansicht, Vorschau und übersetzte Zusammenfassungen sind abgeleitete Ansichten. Sie überschreiben nicht die Sandbox-Markierung, das Transaktionsergebnis oder die Rohprofilwerte. Suchen Sie nach den zuletzt als funktionierend bekannten Dateien, Vorgangssicherungen, Sidecars, Spiegeln, Adapterzielen und `UE4SS.log` in [Laufzeitdateien](LAUFZEITDATEIEN.md).

<a id="rotation-state-schema"></a>
## Rotationszustandsschema

`runtime/rotation_state.txt` verwendet Schema `1` und enthält jeweils ein `key=value` Paar Zeile:

| Feld | Bedeutung |
|---|---|
| `schema_version` | Muss `1`. |
| `mod_version` | Paketidentität gelesen aus `.randomday_version`. |
| `rotation_id` | Identifikator für den aktuellen Durchgang durch den berechtigten Familiensatz. |
| `mode` | `selected_run`, `non_repeating_random_run` oder `rotation_run`. |
| `available_families` | Kommagetrennte berechtigte Familien-IDs nach der Konfigurationsfilterung. |
| `remaining_families` | Berechtigte Familien, die im aktuellen, sich nicht wiederholenden Durchgang noch nicht ausgewählt wurden. |
| `completed_families` | Familien, deren vollständige persistente 17-Positionen-Reihenfolge im aktuellen Durchgang abgeschlossen wurde. |
| `active_family`, `active_day` | Aktive Markierungsinformationen, die beim Festschreiben der Auswahl aufgezeichnet wurden. Die Sandbox-Markierung ist beim nächsten Start maßgeblich. |
| `prepared_family`, `prepared_day` | Profil für den nächsten Neustart gehalten. |
| `active_run_id` | Family-Run-ID, die der vorbereiteten Auswahl zugeordnet ist. |
| `last_status` | Kalenderauswahlstatus, der diese Datei erstellt hat. |
| `session_mode` | Persistent dediziert, temporär dediziert oder singleplayer/LAN behoben Lebenszyklus. |
| `start_day_mode` | Konfigurierte oder einmalige zufällige Startauswahl für einen neuen Lauf. |
| `day_progression_mode` | Umschlossene sequentielle oder sich nicht wiederholende zufällige Abfolge. |
| `day_order` | Durch Kommas getrennte persistente Tages-IDs in der genauen Reihenfolge, in der sie vorbereitet werden. |
| `day_position` | Position des vorbereiteten Tages in `day_order`. |
| `updated_at` | Lokale Schreibzeit für Operatorvergleich. |

Der Zustandsschreibvorgang wird nur akzeptiert, wenn die Schemamarkierung, die vorbereitete Familie und der vorbereitete Tag korrekt zurückgelesen werden. Eine nicht lesbare aktuelle Datei kann auf `rotation_state.last_good.txt`; Die ausgewählte Sandbox-Markierung bestimmt weiterhin, was das Spiel für den aktuellen Prozess geladen hat.

<a id="runtime-status-json"></a>
## Laufzeitstatus JSON

`runtime/current/randomday_status.json` verwendet `status_schema=randomday_runtime_status_v2`. Seine Hauptfeldgruppen sind:

| Gruppe | Felder und Interpretation |
|---|---|
| Identität | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Auswahl | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Aktiv | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Vorbereitet | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Menschliche Zusammenfassungen | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Beweis schreiben | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Adapterbeweis | `adapter_status`, `adapter_results`; Jeder Adapterdatensatz enthält Kompatibilitätsnachweise, transaction/rollback Status, Anzahl der geänderten Dateien und redigierte Zielreferenzen |
| Grenzen | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Diagnosen | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Unbekannte aktive Werte bedeuten, dass die aktuelle Sandbox kein lesbares RandomDay Markierung. Sie dürfen nicht durch vorbereitete Werte ersetzt werden. Adapterpfade außerhalb von `runtime/` werden auf eine Basisnamenreferenz reduziert und Diagnosezeichenfolgen schwärzen erkannte absolute Pfade.

<a id="public-status-json"></a>
## Öffentlicher Status JSON

`web_export/today.json` verwendet `schema_version=2` und `status_schema=randomday_public_status_v2`. Es wiederholt die von einem Operator benötigten Fakten zu Identität, active/prepared, Auswahl, Transaktion, Adapter und Neustartgrenze. Es umfasst außerdem:

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order` und `prepared_day_position`;
- `family_selection_mode`, Legacy `family_locked_until_day_17` und `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families` und deren Anzahl;
- vorbereitetes Begegnungsprofil, Stufe, Thema und Chance auf gemischte Begegnungen;
- Weltbereichsaktivierung, Open-World-Einstellung, Richtlinie für unbekannte Welten und nur eine Anzahl konfigurierter Muster für ausgeschlossene Welten;
- vorbereitete Nachricht und kombinierte Nachrichtenvorschau;
- `selected_at`, `sandbox_target`, `manual_copy_required` und vorbereiteter Hash.

`profile_status` ist einer von `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence` oder `write_failed_or_rollback`. `prepared_ready=true` bedeutet immer noch nicht aktiv; Die spätere Startmarkierung ist erforderlich.

<a id="dictionary-and-translation-output"></a>
## Wörterbuch- und Übersetzungsausgabe

`runtime/current/randomday_dictionary.json` verwendet `schema=randomday_runtime_dictionary_v2` und identifiziert die Wörterbuchversion `randomday_dictionary_v2`. Es beschreibt Paketmodi, Auswahlzustände, Druckdomänen, Einstellungsbezeichnungen, Rohwerte und Bedeutungen im Klartext. Unbekannte Werte bleiben explizit, anstatt in eine zuverlässige Beschreibung umgewandelt zu werden.

`player_message_preview.txt`, `today.json`, `today.html`, und Hinweise im Spiel sind Ansichten, die aus demselben Übersetzungsmodul abgeleitet sind. Das zugrunde liegende Profil und die rohen `SandboxSettings.ini`-Werte bleiben die Quelle der Wahrheit.

<a id="failure-and-recovery-rules"></a>
## Fehler- und Wiederherstellungsregeln

1. Ein fehlgeschlagener ausstehender Schreibvorgang oder eine ausstehende Validierung wird niemals zu einem Produktionsziel.
2. Eine fehlgeschlagene Heraufstufung oder Produktionsrücklesung löst die Wiederherstellung des gehaltenen Originals aus; Eine Vorgangssicherung ist der Fallback, wenn diese Wiederherstellung fehlschlägt.
3. Eine beibehaltene Rollback-Datei oder ein `rollback_failed`-Status erfordert eine manuelle Überprüfung, während das Spiel oder der Server gestoppt ist.
4. Ein erfolgreicher Sandbox-Schreibvorgang plus fehlgeschlagener Rotationsstatus-Commit ist beeinträchtigt, nicht bereit; Adapter und vorbereitetes Profil-Messaging werden übersprungen.
5. Ein Exportfehler ändert das Sandbox-Ergebnis nicht, entfernt aber eine praktische Quelle. Verwenden Sie Transaktionsprotokolle, Status und Dateirücklesungen.
6. Laufzeitausgaben sind lokale Betriebsdaten. Fügen Sie sie nicht zu einer Version hinzu ZIP oder veröffentlichen Sie sie als Beispiele ohne separate Datenschutzprüfung.
