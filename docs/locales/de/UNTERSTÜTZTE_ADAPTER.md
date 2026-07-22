<a id="supported-optional-mods"></a>
# Unterstützte optionale Mods

> **Kanonisch-englische Quelle:** [SUPPORTED_ADAPTERS.md](../../SUPPORTED_ADAPTERS.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


RandomDay kann dafür sorgen, dass ein separat installierter Mod dem aktiven folgt RandomDay Profil. Diese Funktion ist nur im Dedicated-Server-Paket verfügbar. Das singleplayer/LAN-Paket bearbeitet niemals einen anderen Mod.

RandomDay beinhaltet keine der hier aufgeführten Mods und verbreitet diese auch nicht weiter. Installieren und aktivieren Sie jeden optionalen Mod über seine eigene Nexus-Seite und befolgen Sie zunächst die Anweisungen des Autors. RandomDay ändert nur erkannte Einstellungen, die bereits in der installierten Datei vorhanden sind. Es fügt keine Funktionen zu einem anderen Mod hinzu und ein Adapter kann deaktiviert werden, ohne diesen Mod zu deinstallieren. Das Dedicated-Server-Paket beginnt mit `external_mods.enabled = true`.

<a id="what-randomday-changes"></a>
## Was RandomDayÄnderungen

| Optionale Integration | Aus dem aktiven Profil ausgewählte Einstellungen |
| --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | Schwerer Modus, player/area Abklingverhalten, Sturm- und Hot-Zone-Aktivität, Boss- und Burst-Spawns, Spawn-Zyklus-Timing, kleine und große Abklingbereiche, Spawn-Distanz, global/local/mod Obergrenzen, Portal-Sturm, Befehlsbruch- und Boss-Chancen sowie minimale Spawns pro Bereich. |
| Optionale Chaotic Spawn Engine-Erweiterungsfelder | Wenn die installierte `SharedData.lua` enthält bereits RandomDay-Erweiterungsfeldern kann der Adapter Begegnungsprofil, Stufe, Thema, Gruppenlimits, Werte für besondere Ereignisse und gemischte Begegnungen, Budget, Abklingzeit und Steuerungen für den Weltbereich bereitstellen. Dies ist kein weiterer Mod zum Herunterladen. |
| Lethal Lasers | Mod-Aktivierung plus Schadens- und Aktivierungssteuerung für einsetzbare Emitter, Umgebungsemitter, Reflektoren und Prismen. |
| ANTEUp | Respawn-Frequenzmultiplikator, Antevariantenfrequenz und die vorhandenen development/debug wechselt. RandomDay hält alle erkannten Entwicklungs- und Debug-Schalter deaktiviert. |

Die Profilbibliothek liefert für jeden unterstützten Tag einen vorbereiteten Wertesatz. Ein ruhiger Tag kann den Druck senken, ein Gefahrentag kann ihn erhöhen und ein Erholungstag kann ihn stark reduzieren. RandomDay berechnet beim Booten keine willkürlichen Werte; Es wendet den überprüften Wertesatz an, der vom aktiven Profil benannt wird.

<a id="current-version-evidence"></a>
## Nachweis der aktuellen Version

Diese Tabelle wurde am 20. Juli 2026 überprüft. „Anerkannt“ bedeutet, dass der freigegebene Adapter über eine vollständige lokale Layoutvorrichtung für die genannten Einstellungen verfügt. Dies bedeutet nicht, dass jede zukünftige Version die gleiche Dateiform haben wird.

| Optionaler Mod | Aktuelle Upstream-Version überprüft | RandomDayVeröffentlichungsstatus |
| --- | --- | --- |
| [Chaotischer Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156) | Nexus-Seite `0.8.5`; aktuelle Hauptdatei `0.8.5-Hotfix1` | Anerkanntes `DynamicSpawns/Scripts/SharedData.lua`-Layout für den gesamten Spawn-, Cooldown-, Portal-, Breach- und Boss-Einstellungssatz. |
| Optionale Chaotic Spawn Engine-Erweiterungsfelder | Kein separater Download; optionale Felder innerhalb desselben `SharedData.lua` | Wird nur angewendet, wenn jedes Erweiterungsfeld bereits vorhanden ist Engine-Installationen bleiben unverändert, wenn diese Felder fehlen. Die interne Adapter-ID ist `encounter_director`; Es wird kein separater öffentlicher Mod benannt. |
| [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Anerkanntes `LethalLasers/Scripts/main.lua`Layout für alle oben aufgeführten Emitter-, Umgebungsemitter-, Reflektor- und Prismeneinstellungen. |
| [ANTEUp](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, aktualisiert am 19. Juli 2026 | Der freigegebene Adapter erkennt den früheren `Settings.lua` Feldsatz. Version 1 wird erst dann als kompatibel beansprucht, wenn ihre aktuelle Datei zum Gerät hinzugefügt wird und die Adaptertransaktionstests besteht. Wenn das Layout abweicht, RandomDay Berichte `skipped_incompatible` und lässt es unverändert. |

<a id="how-recognition-protects-another-mod"></a>
## Wie die Erkennung einen anderen Mod schützt

Es reicht nicht aus, einen bekannten Dateinamen zu finden. Vor dem Schreiben, RandomDay prüft, ob alle erforderlichen Einstellungen für diesen Adapter in der Zieldatei vorhanden sind. Es werden nur bestehende Zuweisungen gepatcht; es erfindet nie eine fehlende Einstellung.

Für ein erkanntes Layout, RandomDay führt eine begrenzte Transaktion aus:

1. jeden beabsichtigten Wert für das aktive Profil berechnen;
2. Erstellen Sie ein Backup jeder Zieldatei und prüfen Sie es auf Bytes.
3. durch eine ausstehende Geschwisterdatei schreiben;
4. die ausstehende Datei hochstufen und die gespeicherten Bytes zurücklesen;
5. Bestätigen Sie jeden beabsichtigten Wert;
6. Verwenden Sie die automatische Wiederherstellung aus den verifizierten Backups, wenn ein Schritt fehlschlägt.

DynamicSpawns kann seine Einstellungen und erkannten Spielernachrichtendateien in einer Transaktion einschließen. RandomDay meldet die Aktualisierung mehrerer Dateien nicht als erfolgreich, es sei denn, die vollständige Transaktion ist abgeschlossen.

<a id="read-an-adapter-result"></a>
## Adapterergebnis lesen

| Ergebnis | Bedeutung |
| --- | --- |
| `applied` | Die erkannten Einstellungen wurden geändert und zurückgelesen. |
| `already_current` | Die erkannten Einstellungen stimmten bereits mit dem aktiven Profil überein. |
| `not_installed` | Der optionale Mod wurde nicht gefunden. RandomDay wurde ohne fortgesetzt. |
| `skipped_incompatible` | Eine Datei wurde gefunden, aber ihr vollständiges Einstellungslayout wurde nicht erkannt. Es wurde nichts geändert. |
| `partial` | Die primären DynamicSpawns Einstellungen wurden angewendet, aber eine optionale übersetzte Nachrichtendatei wurde nicht abgeschlossen. Überprüfen Sie das aufgezeichnete Adapterergebnis. |
| `failed_rolled_back` | Eine Transaktion ist fehlgeschlagen und die vorherigen Bytes blieben intakt oder wurden wiederhergestellt und überprüft. |
| `rollback_failed` | RandomDay konnte die Änderung oder Wiederherstellung nicht überprüfen. Halten Sie den betroffenen Mod gestoppt und stellen Sie die aufgezeichnete Sicherung manuell wieder her. |

Fehlende und inkompatible optionale Mods stoppen nicht die Sandbox-Rotation von RandomDay's Sandbox-Rotation unter der ausgelieferten Konfiguration ein.

<a id="enable-or-disable-integrations"></a>
## Integrationen aktivieren oder deaktivieren

Die Steuerelemente befinden sich in:

```text
RandomDay/Scripts/ax_config/server.lua
```

Das Dedicated-Server-Paket wird geliefert mit:

```lua
external_mods = {
    enabled = true,
    optional_by_default = true,
    patch_only_existing_keys = true,
    backup_before_write = true,
    adapters = {
        "lethal_lasers",
        "dynamic_spawns",
        "encounter_director",
        "ante_up"
    }
}
```

- Stellen Sie `enabled = false` um zu verhindern, dass RandomDay jeden optionalen Mod überprüft oder ändert.
- Entfernen Sie eine Adapter-ID, um diesen Mod in Ruhe zu lassen, während die anderen Integrationen aktiv bleiben.
- Belassen Sie `patch_only_existing_keys` und `backup_before_write` auf `true`. Sie stellen die Schreibsicherheitsgrenze dar.
- Belassen Sie `optional_by_default = true` es sei denn, jeder aufgelistete optionale Mod ist ein erforderlicher Teil des Servers. Wenn Sie es auf `false` setzen, wirkt sich ein fehlender, inkompatibler oder sicher zurückgesetzter Adapter auf das Gesamtergebnis aus.

Das ist nicht erforderlich Deinstallieren oder deaktivieren Sie einen optionalen Mod, wenn Sie seinen RandomDay Adapter deaktivieren.

<a id="thanks-and-ownership"></a>
## Danke und Eigentumsrechte

Vielen Dank an die Autoren und Betreuer von [Chaotischer Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156), [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141) und [ANTEUp](https://www.nexusmods.com/abioticfactor/mods/201). Ihre Mods bleiben separate Downloads, die ihren eigenen Seiten, Berechtigungen und Supportanweisungen unterliegen. RandomDay's Adapter verwenden nur Konfigurationsfelder, die in einem installierten, erkannten Layout vorhanden sind; Sie verteilen oder ersetzen diese Mods nicht.

<a id="backups-and-manual-recovery"></a>
## Backups und manuelle Wiederherstellung

Verifizierte Kopien vor dem Schreiben werden aufbewahrt unter:

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

Wenn `rollback_failed` erscheint:

1. stoppen Sie das Spiel oder den Server;
2. setzen `external_mods.enabled = false`, oder entfernen Sie die betroffene Adapter-ID;
3. behält die aktuelle Zieldatei und ihre Geschwister bei pending/rollbackDateien;
4. Ordnen Sie die nummerierten Sicherungsdateien den im Adapterergebnis aufgezeichneten Zielpfaden zu;
5. Stellen Sie die überprüften Bytes wieder her, während der Dienst gestoppt ist;
6. starten Sie den optionalen Mod selbst, bevor Sie ihn wieder aktivieren. RandomDay Adapter deaktivieren.

Erzwingen Sie keine Kompatibilität, indem Sie Einstellungen umbenennen oder fehlende Schlüssel hinzufügen. Verwenden Sie ein anerkanntes Layout, lassen Sie den Adapter deaktiviert oder fügen Sie eine neue Versionsfixierung und einen Transaktionstest hinzu, bevor Sie den Supportanspruch erweitern.
