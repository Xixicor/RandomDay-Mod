<a id="worked-configuration-examples"></a>
# Beispiele für funktionierende Konfigurationen

> **Kanonisch-englische Quelle:** [EXAMPLES.md](../../EXAMPLES.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Diese Beispiele verwenden erfundene Namen und Werte, um zu zeigen, wie RandomDay meldet normale Vorbereitungs-, Aktivierungs-, Wiederherstellungs- und Kompatibilitätsergebnisse.

<a id="first-bootstrap"></a>
## Erster Bootstrap

Vorher: Die laufende Sitzung hat eine Sandbox ohne RandomDayMarkierung.

Nach einem erfolgreichen RandomDayStartup:

```text
selection_status=bootstrap_prepare_first_family_start_day
session_mode=temporary_dedicated
start_day_mode=configured
day_progression_mode=sequential
day_order=8,9,10,11,12,13,14,15,16,17,1,2,3,4,5,6,7
active_profile_id=unknown_current_boot
prepared_next_profile_id=<action-day-8-profile-id>
prepared_ready=true
restart_required_for_prepared_profile=true
```

Bedeutung: Die aktuelle Sitzung bleibt für RandomDay. Der konfigurierte Tag 8 ist für den nächsten Neustart bereit und die vollständig verpackte Bestellung wird beibehalten. Beschreiben Sie Tag 8 noch nicht als aktiv.

<a id="normal-next-day"></a>
## Normaler nächster Tag

Vorher: Die aktuelle Sandbox-Markierung identifiziert Aktionstag 1.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Bedeutung: Tag 1 ist für diesen Prozess aktiv; Tag 2 ist vorbereitet. Der Neustart ist eine Entscheidung des Bedieners.

<a id="state-commit-failure"></a>
## State Commit Failure

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Bedeutung: Gültige Sandbox-Bytes befinden sich möglicherweise auf der Festplatte, aber RandomDay konnte einen passenden Warteschlangendatensatz nicht beibehalten. Lassen Sie den Server angehalten, behalten Sie die Sandbox und beide Rotationsstatusdateien bei und befolgen Sie die manuelle Wiederherstellung. Ein erfolgreicher Sandbox-Schreibvorgang allein ist kein gesund vorbereiteter Übergang.

<a id="primary-write-restored"></a>
## Primärer Schreibvorgang wiederhergestellt

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Bedeutung: Produktions-Readback ist fehlgeschlagen und die vorherige Datei wurde wiederhergestellt. Überprüfen Sie vor einem erneuten Start die Betriebssicherung und den ersten Fehler. Daraus darf nicht geschlossen werden, dass das vorbereitete Profil verwendbar ist.

<a id="adapter-outcomes"></a>
## Adapterergebnisse

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Bedeutung: Das Lethal Lasers-Ziel wurde unverändert gelassen, da sein vollständiges Layout nicht erkannt wurde. Das ANTE Das obere Ziel wurde bereits abgeglichen. Keines der Ergebnisse ändert die primäre Sandbox-Transaktion.

Wenn ein Adapter meldet `rollback_failed`, stoppen Sie den betroffenen Dienst und behalten Sie das Ziel, die Sidecars und `runtime/backups/external_<operation>/`Verzeichnis.

<a id="singleplayer-or-lan"></a>
## Einzelspieler Oder LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Bedeutung: RandomDay hat nur geschrieben `runtime/singleplayer_manual/SandboxSettings.ini`. Schließen Sie das Spiel, überprüfen Sie die Datei, sichern Sie die ausgewählte Welt und kopieren Sie sie manuell. Die Ausgabe beweist nicht, dass irgendeine Welt sie geladen hat.

<a id="incompatible-environment"></a>
## Inkompatible Umgebung

Wenn kein abiotischer Faktor genannt wird oder UE4SS run existiert, Release-Kopie muss lauten:

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

Lokales Lua-Parsing, Fixtures und Paketextraktion bleiben ein nützlicher Beweis, werden aber nicht zu einem umfassenderen Kompatibilitätsanspruch.
