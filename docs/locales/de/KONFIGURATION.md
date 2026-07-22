<a id="configuration"></a>
# Konfiguration

> **Kanonisch-englische Quelle:** [CONFIGURATION.md](../../CONFIGURATION.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Die Hauptkonfiguration des Operators ist:

```text
RandomDay/Scripts/ax_config/server.lua
```

Sichern Sie die Datei und ändern Sie jeweils einen Abschnitt. Lua-Boolesche Werte werden in Kleinbuchstaben geschrieben `true` und `false`; Zeichenfolgen benötigen Anführungszeichen; Listeneinträge benötigen Kommas. Lesen Sie nach dem nächsten Start die Statusseite, bevor Sie eine weitere Änderung vornehmen. Mitwirkende, die von der Quelle aus arbeiten, können die separaten [Release-Validierungsprüfungen](RELEASE-VALIDIERUNG.md) verwenden, bevor sie einen geänderten Build verpacken.

Bearbeiten Sie `.randomday_mode`, `.randomday_version`, generierte Profilverweise, `runtime/` oder `web_export/` nicht manuell. Der Paketersteller besitzt den Paketmodus und die Versionsmarkierungen und prüft, ob sie mit den Release-Metadaten übereinstimmen.

Alle unten aufgeführten Einstellungen sind in `RandomDay/Scripts/ax_config/server.lua` definiert. Tabellen unterscheiden bearbeitbare Einstellungen von releaseeigenen Identitäts- und reservierten Kompatibilitätsfeldern. Wenn ein Feld in Lua vorhanden ist, bedeutet das nicht, dass es ein unterstütztes Verhalten ist, es zu ändern.

<a id="choose-an-experience"></a>
## Wählen Sie ein Erlebnis

RandomDay verfügt über zwei Pakete: eines für jeden dedizierten Server und eines für singleplayer/LAN manuelle Kopie. Das dedizierte Paket verfügt über zwei Betriebsmodi; Diese Modi sind Einstellungen, keine separaten Downloads.

| Ihre Welt | Installieren | Wählen Sie dieses Verhalten |
| --- | --- | --- |
| Ein dedizierter Server, der eine Kampagne über routinemäßige Neustarts hinweg am Laufen hält | Dediziertes Serverpaket | `persistent_dedicated` nimmt die gespeicherte Familien- und Profilreihenfolge wieder auf. |
| Ein dedizierter Server, der nur für einzelne Spielsitzungen geöffnet ist | Das gleiche dedizierte Serverpaket | `temporary_dedicated` behält das sicher vorbereitete nächste Profil zwischen den Sitzungen bei, während ein neuer Familienlauf einen konfigurierten oder zufälligen Start verwenden kann. |
| Ein Einzelspieler oder eine LAN Welt | Singleplayer/LAN package | `auto` wählt das Verhalten beim manuellen Kopieren aus; Stoppen Sie die Welt, bevor Sie die generierte Datei kopieren. |

Wenn Sie sich nicht sicher sind, verwenden Sie `auto`. Das Paket wählt das normale Verhalten für seinen Installationstyp. Wählen Sie den breiten Spielstil in [Familienrotation](FAMILIENROTATION.md). Verwenden Sie den [generierten Familienindex](PROFILE/PROFILDOKUMENTATION.md), wenn Sie genaue Gameplay- und Sandbox-Werte wünschen. Wählen Sie dann den ersten Tag und den Verlauf:

- `start_day_mode="configured"` beginnt bei `start_day`.
- `start_day_mode="random"` wählt einen gültigen ersten Tag zu Beginn eines neuen Familienlaufs und behält diese Auswahl bei.
- `day_progression_mode="sequential"` durchläuft alle 17 Positionen.
- `day_progression_mode="non_repeating_random"` speichert eine gemischte Reihenfolge, die jeden Tag genau einmal enthält.

Verwenden Sie die vollständigen Voreinstellungen in [Rotation](#rotation). Eine Neuinstallation erfordert immer noch einen Start, um das ausgewählte erste Profil vorzubereiten, und einen späteren Start, um es zu aktivieren.

<a id="release-identity-and-logging"></a>
## Identität und Protokollierung freigeben

| Einstellung | Typ und Versandwert | Unterstützte Verwendung | Fehler oder Interaktion |
|---|---|---|---|
| `version` | String gelesen aus `.randomday_version` | Schreibgeschützt. | Fehlende oder leere Markierung wird zu `unversioned`; Die endgültige Paketvalidierung lehnt Identitätsdrift ab. |
| `package_mode` | String gelesen aus `.randomday_mode` | Nur lesen: `dedicated_server` unverändert oder `singleplayer_manual`. | Jeder andere Wert stoppt den Start, bevor das Ziel schreibt. |
| `plan_basis` | String: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Nur Diagnosebezeichnung; Verwenden Sie es nicht als Funktionsumschaltung. | Die aktuelle Laufzeit verzweigt nicht in diesem Feld. |
| `logging.level` | String: `info` | `debug`, `info`, `warn` oder `error`. | Unbekannte Werte fügen keine Protokollierungsziele hinzu; behalten `info`, es sei denn, es wird das Profilgenerierungsverhalten diagnostiziert. |

Beispiel:

```lua
logging = { level = "debug" }
```

Verwenden Sie `debug` vorübergehend, behalten Sie den relevanten `UE4SS.log` bei und kehren Sie dann zu `info` zurück. Protokolle können lokale Pfade von Fehlern auf niedriger Ebene enthalten. Überprüfen Sie sie, bevor Sie sie teilen.

<a id="experience-mode"></a>
## Der Erlebnismodus

`experience.mode` benennt die Art und Weise, wie diese Installation betrieben wird. Die Sicherheitsgrenze für den nächsten Start wird dadurch nicht geschwächt: Abiotischer Faktor liest Sandbox-Einstellungen vor UE4SS lädt RandomDay, sodass kein Modus die Regeln des bereits laufenden Prozesses ersetzen kann.

| Einstellung | Lieferwert | Unterstützte Werte | Effekt |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` wird aus dem Paket aufgelöst. Dedizierte Pakete können einen der beiden dedizierten Modi verwenden. Das manuelle Kopierpaket akzeptiert nur `auto` unverändert oder `singleplayer_lan`. |

- `persistent_dedicated` behält eine gespeicherte family/day Reihenfolge über normale langfristige Serverneustarts hinweg.
- `temporary_dedicated` beschreibt einen Server, der für begrenzte Spielsitzungen gestartet wird. Die vorbereitete Reihenfolge wird weiterhin beibehalten, sodass durch das Stoppen des Hosts die nächste Sitzung nicht stillschweigend neu gestartet wird.
- `singleplayer_lan` generiert nur die begrenzte manuelle Kopierausgabe. Ein persönlicher Speicherordner wird nie erkannt oder bearbeitet.

Eine inkompatible package/experience Kombination stoppt vor einem Sandbox-Schreibvorgang.

<a id="rotation"></a>
## Rotation

| Einstellung | Lieferwert | Unterstützte Werte | Effekt |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Behält alle Sandbox-Änderungen an der Neustartgrenze bei. |
| `cycle.cycle_length_days` | `17` | `17` für den Standardprofilsatz | Entspricht jedem Familienpaket und jeder generierten Referenz. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Verwendet `cycle.start_day` oder wählt einmal zu Beginn eines Familienlaufs einen gültigen Starttag aus. |
| `cycle.start_day` | `1` | Ganze Zahl `1` bis `17` | Erster Tag, an dem `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Erstellt eine umschlossene sequentielle Reihenfolge oder eine gemischte Reihenfolge, die jeden Tag genau einmal enthält. |
| `cycle.bootstrap_day` | `1` | Ganze Zahl `1` bis `17` | Kompatibilitäts-Fallback wird nur verwendet, wenn `cycle.start_day` nicht vorhanden ist. Neue Konfiguration sollte `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` oder ein begrenztes positives Intervall | `0` bereitet sich einmal beim Start vor; Ein positiver Wert ermöglicht die regelmäßige Überwachung, wenn UE4SS `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Wählt aus, wie ein neuer 17-tägiger Familienlauf beginnt. |
| `profile_family.selected_family` | `action` | Eine ID in `allowed_families` | Familie, die von `selected_run` und als Ersatz verwendet wird. |
| `profile_family.default_family` | `action` | Eine registrierte Familien-ID | Fallback, wenn die ausgewählte ID fehlt oder ungültig ist. |
| `profile_family.allowed_families` | Alle 17 öffentlichen Familien-IDs | Jede nicht leere Teilmenge der registrierten IDs | Begrenzt die Familien, die für neue Läufe in Frage kommen. |
| `profile_family.preserve_family_until_day_17` | Boolescher Wert: `true` | Reserviertes Kompatibilitätsfeld; behalten `true`. | Der aktuelle Kalender behält die Familie immer an jeder Position in der beibehaltenen 17-Tage-Reihenfolge bei und liest dieses Feld nicht als Umschalter. |
| `profile_family.reroll_only_after_day_17` | Boolescher Wert: `true` | Reserviertes Kompatibilitätsfeld; behalten `true`. | Der aktuelle Kalender ändert die Familie erst nach Abschluss jeder Tages-ID, unabhängig davon, welcher Tag in der gespeicherten Reihenfolge der letzte ist. |
| `profile_family.prevent_repeats_until_rotation_complete` | Boolescher Wert: `true` | Reserviertes Kompatibilitätsfeld; behalten `true`. | Die aktuelle sich nicht wiederholende Poollogik ist festgelegt und liest diesen Wert nicht als Umschalter. |

Die Tagesordnung wird einmalig für einen neuen Familienlauf erstellt und nach `runtime/rotation_state.txt` geschrieben. Bei der Wiederherstellung und späteren Neustarts werden genau diese Positionen wiederverwendet. Eine Konfigurationsbearbeitung führt nicht dazu, dass eine laufende Bestellung erneut ausgeführt wird. Die Familie ändert sich erst, nachdem alle 17 Positionen abgeschlossen sind.

<a id="recommended-presets"></a>
### Empfohlene Voreinstellungen

Persistenter dedizierter Server:

```lua
experience = { mode = "persistent_dedicated" }
cycle = {
    application_mode = "next_reboot_queue",
    cycle_length_days = 17,
    start_day_mode = "configured",
    start_day = 1,
    day_progression_mode = "sequential",
    bootstrap_day = 1,
    check_interval_ms = 0,
}
```

Temporäre dedizierte Sitzungen mit einer anderen, sich nicht wiederholenden Reihenfolge pro neuem Familienlauf:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN Beim manuellen Kopieren wird das Einzelspielerpaket verwendet und normalerweise bleibt `experience.mode="auto"` bestehen. Sie können die gleichen Start- und Fortschrittskontrollen wählen, bevor Sie die nächste Datei generieren. Kopieren Sie die generierte Datei vor einem weiteren Generierungslauf in die ausgewählte gestoppte Welt, wenn Sie möchten, dass der Laufzeitstatus und das geladene Profil der Welt übereinstimmen.

Bei einer Neuinstallation kann der erste Prozess nur den ausgewählten Starttag vorbereiten. Ein späterer Prozess aktiviert es. Zufälliger oder konfigurierter Start umgeht diese Engine-Ladereihenfolge nicht.

Beispiel für eine feste Builder-Ausführung:

```lua
profile_family = {
    mode = "selected_run",
    selected_family = "builder",
    default_family = "action",
    allowed_families = { "builder" },
    preserve_family_until_day_17 = true,
    reroll_only_after_day_17 = true,
    prevent_repeats_until_rotation_complete = true,
}
```

Ein leerer oder unbekannter berechtigter Satz greift auf eine registrierte Familie zurück, anstatt ein unvollständiges Profil zu erstellen.

<a id="primary-sandbox-path"></a>
## Primärer Sandbox-Pfad

| Einstellung | Typ und Versandwert | Unterstützte Verwendung | Fehler oder Interaktion |
|---|---|---|---|
| `paths.runtime_dir` | String: `ue4ss/Mods/RandomDay/runtime` | Nur in der Quellkonfiguration lesbar. | `init.lua` ersetzt es mit dem aufgelösten Mod-Root-Pfad `runtime/`. |
| `paths.web_export_dir` | String: `ue4ss/Mods/RandomDay/web_export` | Nur in der Quellkonfiguration lesbar. | `init.lua` ersetzt es mit dem aufgelösten Mod-Root-Pfad `web_export/`. |
| `paths.sandbox_path_override` | String oder `nil`: `nil` | Ein literaler `SandboxSettings.ini` Pfad für ein nicht standardmäßiges dediziertes Layout. | Unsichere oder nicht verfügbare Ziele schlagen beim Schreiben fehl; Der Einzelspielermodus löscht die Überschreibung. |
| `paths.sandbox_candidates` | Liste der Zeichenfolgen: sieben generische Kandidaten | Sortierte Ersatzkandidaten für dedizierte Server. | `init.lua` stellt von der Installation abgeleitete Kandidaten voran; der erste vorhandene Pfad gewinnt. |
| `paths.write_sandbox_mirrors` | Boolescher Wert: `true` | Ermöglicht absichtlich konfigurierte Spiegel. | Es wird kein Spiegel geschrieben, solange die Spiegelliste leer ist und `world_name=nil`; Der Einzelspielermodus erzwingt `false`. |
| `paths.sandbox_mirror_required` | Boolescher Wert: `false` | Reserviertes Kompatibilitätsfeld; behalten `false`. | Der aktuelle Autor behandelt Spiegel als optional und liest dieses Feld nicht als erforderliches Gate. |
| `paths.world_name` | String oder `nil`: `nil` | Eine sichere Weltordnerkomponente, die zum Ableiten generischer Spiegelkandidaten verwendet wird. | Alles außer Buchstaben, Zahlen, Leerzeichen, `_` oder `-` stoppt den Start; Der Einzelspielermodus ignoriert es. |
| `paths.sandbox_mirror_candidates` | Liste der Zeichenfolgen: leer | Exakte optionale Spiegeldateien. | Jeder berechtigte Spiegel verwendet seine eigene Transaktion; Ein Spiegelungsfehler ändert nichts am primären Erfolg. |

`paths.sandbox_path_override` ist standardmäßig `nil` bereitstellt. Ohne Überschreibung prüft RandomDay zunächst generische WindowsServer Kandidaten, die in der erkannten RandomDay Installation verankert sind, und prüft dann alle konfigurierten Kandidaten. Wenn keiner vorhanden ist, wird der erste in der Installation verankerte generische Kandidat verwendet, der in die Serverinstallation aufgelöst wird:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Dieser Fallback wird nicht aus dem aktuellen Arbeitsverzeichnis des Prozesses aufgelöst. Legen Sie `sandbox_path_override` nur fest, wenn Ihre Installation eine andere Literaldatei verwendet. Verweisen Sie auf einen `SandboxSettings.ini`, nicht auf ein Verzeichnis. Stoppen Sie den Server und vergewissern Sie sich vor der Verwendung, dass sich die Datei in der vorgesehenen Installation befindet.

<a id="optional-mirrors"></a>
### Optionale Spiegel

`paths.write_sandbox_mirrors` werden als `true` geliefert, aber die Spiegelpfadliste ist leer und `paths.world_name` ist `nil`. Daher enthalten die ausgelieferten Standardeinstellungen keinen zusätzlichen Spiegel. Legen Sie es auf `false` fest, wenn die Installation immer nur das aufgelöste primäre Ziel schreiben muss. Ohne konfigurierten Spiegelkandidaten oder Weltnamen schreibt jeder Wert weiterhin nur die primäre Sandbox-Datei.

Ein Spiegel wird nur dann geeignet, wenn Sie absichtlich einen genauen Eintrag zu `paths.sandbox_mirror_candidates` hinzufügen oder `paths.world_name` festlegen. Mirrors sind Best-Effort-Kopien für Installationen, die einen zweiten weltspezifischen Sandbox-Pfad lesen. Sie sind kein Ersatz für die Konfiguration des richtigen Primärpfads.

Bevor Sie einen Spiegel aktivieren:

1. stoppen Sie den Server;
2. identifizieren Sie die genaue Datei, die der Server liest;
3. bestätigen Sie, dass sich das Ziel in der vorgesehenen Installation befindet;
4. sichern Sie sie up;
5. fügen Sie nur diesen Pfad hinzu;
6. überprüfen Sie das Spiegelergebnis nach der Vorbereitung.

Beispiel für eine Überschreibung ohne Spiegel:

```lua
paths = {
    runtime_dir = "ue4ss/Mods/RandomDay/runtime",
    web_export_dir = "ue4ss/Mods/RandomDay/web_export",
    sandbox_path_override = "<server-root>/AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    sandbox_candidates = {},
    write_sandbox_mirrors = false,
    sandbox_mirror_required = false,
    world_name = nil,
    sandbox_mirror_candidates = {},
}
```

`<server-root>` ist ein Platzhalter. Ersetzen Sie es lokal. Veröffentlichen Sie keinen maschinenspezifischen Pfad.

<a id="non-disableable-safety-locks"></a>
## Nicht deaktivierbare Sicherheitssperren

| Einstellung | Erforderlicher Wert | Bedeutung |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Bewahren Sie eine überprüfte Kopie auf, bevor Sie eine vorhandene Primärdatei ersetzen. |
| `sandbox.restore_last_good_on_failure` | `true` | Versuchen Sie eine automatische Wiederherstellung nach einem fehlgeschlagenen Ersetzen oder Rücklesen. |
| `external_mods.patch_only_existing_keys` | `true` | Weigern Sie sich, eine unbekannte Einstellung in der Datei eines anderen Mods zu erfinden. |
| `external_mods.backup_before_write` | `true` | Zielbytes vor der Bearbeitung eines unterstützten Transaktionsadapters beibehalten. |

RandomDay verweigert den Start, wenn einer dieser vier Werte nicht vorhanden ist. `true` ist. Es handelt sich um Sicherheitsschlösser und nicht um unterstützte Bedienschalter. Deaktivieren Sie sie nicht, auch nicht bei der Entwicklung oder Fehlerbehebung, da sich dadurch die Fail-Closed-Grenze ändert, die die Writer- und Adaptertests beweisen.

`sandbox.force_rewrite_every_supervision_tick` bleibt eine normale Einstellung und wird als `false` ausgeliefert, wodurch eine bereits übereinstimmende Sandbox-Datei unberührt bleibt. Es akzeptiert einen Booleschen Wert. Wenn Sie es auf `true` setzen, werden dieselben prozesseigenen vorbereiteten Bytes erneut durch den Writer geleitet. Der family/day wird dadurch nicht vorangetrieben. Verwenden Sie es nur für einen begrenzten Wiederherstellungstest, da wiederholte Schreibvorgänge mehr Betriebssicherungen erstellen.

<a id="optional-mod-adapters"></a>
## Optionale Mod-Adapter

| Einstellung | Lieferwert | Bedeutung |
|---|---:|---|
| `external_mods.enabled` | `true` | Ermöglichen Sie konfigurierten Adaptern, separat installierte Ziele zu überprüfen. |
| `external_mods.optional_by_default` | `true` | Fehlende oder inkompatible optionale Mods blockieren nicht. RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Erforderliche Sicherheitssperre; Der Start schlägt fehl, wenn er geändert wird. |
| `external_mods.backup_before_write` | `true` | Erforderliche Sicherheitssperre; Der Start schlägt fehl, wenn er geändert wird. |
| `external_mods.adapters` | Vier öffentliche Adapter-IDs | Begrenzt, welche Adapter im Besitz von RandomDay-ownedAdapter können ausgeführt werden. |

Entfernen Sie eine Adapter-ID aus der Liste, um diese Integration in Ruhe zu lassen, ohne den Drittanbieter-Mod zu deaktivieren oder zu deinstallieren. Das singleplayer/LAN-Paket deaktiviert jeden Adapter unabhängig von dieser Liste.

`external_mods.optional_by_default=false` führt dazu, dass ein anderes konfiguriertes Adapterergebnis als `applied` unverändert oder `already_current` das aggregierte Adapterergebnis fehlschlägt. Es führt nicht dazu, dass die primäre Sandbox-Transaktion zurückgesetzt wird. Behalten Sie den mitgelieferten `true` bei, es sei denn, der Betreiber hat einen getesteten Grund, eine Integration zu erfordern.

Siehe [Unterstützte Mod-Adapter](UNTERST%C3%9CTZTE_ADAPTER.md) für erkannte Layouts und die sechs möglichen Ergebnisse.

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### Optionale Chaotic Spawn Engine-Bereichsfelder

`world_scope` stellt fünf optionale RandomDay Erweiterungseinstellungen nur bereit, wenn eine erkannte Chaotic Spawn Engine `DynamicSpawns/SharedData.lua` enthält diese Felder bereits. Dies ist kein separater Mod oder Download:

| Einstellung | Lieferwert | Adaptereffekt |
|---|---:|---|
| `world_scope.enabled` | `true` | das optionale RandomDay World-Scope-Gate innerhalb eines erkannten DynamicSpawnsLayout. |
| `world_scope.affect_open_worlds` | `true` | Beinhaltet offene Welten, es sei denn, der Ziel-Mod wendet eine Protected-World-Regel an. |
| `world_scope.unknown_world_policy` | `allow` | Anfordert `allow` unverändert oder `block`, wenn die Der Ziel-Mod kann eine Welt nicht klassifizieren. |
| `world_scope.log_scope_decisions` | `true` | Fordert die Protokollierung des Ziel-Mods für seine Bereichsentscheidung an. |
| `world_scope.protected_worlds` | Leere Liste | Fügt durch Kommas getrennte Muster für geschützte Welten in das Ziellayout ein. |

Diese Werte sind Adaptereingaben, kein von RandomDay's Sandbox-Writer. Sie werden nur wirksam, wenn das separat installierte Chaotic Spawn Engine-Layout bereits die vollständigen optionalen RandomDay Feldsatz und Berichte `applied` unverändert oder `already_current`. Die Chaotic Spawn Engine bleibt für die Verwendung dieser Felder zur Laufzeit verantwortlich. Eine normale Installation ohne die Erweiterungsfelder bleibt unverändert.

Alle fünf Werte sind Adaptereingaben. `unknown_world_policy` akzeptiert nur die dokumentierten Zielwerte `allow` unverändert oder `block`; ein nicht erkanntes Ziellayout wird übersprungen. Lassen Sie `protected_worlds` in Dokumentationsbeispielen leer. Wenn ein Betreiber lokale Muster verwendet, dürfen diese nicht in Screenshots, Problemen oder Release-Artefakten enthalten sein.

<a id="player-messages"></a>
## Spielernachrichten

Die ausgelieferte dedizierte Serverkonfiguration ermöglicht kompakte Beitrittsbenachrichtigungen und eine kurze tägliche Warteschlange. Es wartet 30 Sekunden vor dem ersten Durchgang, sucht alle 15 Sekunden nach neu beigetretenen Spielern und wartet 10 Sekunden nach einer Beitrittsbenachrichtigung vor der täglichen Zeile.

| Einstellung | Lieferwert |
|---|---:|
| `player_message.enabled` | `true` |
| `player_message.log_on_startup` | `true` |
| `player_message.register_console_command` | `false` |
| `player_message.console_command` | `randomday` |
| `player_message.broadcast_enabled` | `true` |
| `player_message.startup_delay_ms` | `30000` |
| `player_message.join_check_interval_ms` | `15000` |
| `player_message.send_daily_joke_after_join` | `true` |
| `player_message.daily_joke_delay_seconds` | `10` |
| `player_message.criticality_join` | `2` |
| `player_message.criticality_joke` | `0` |
| `player_message.max_line_chars` | `42` |
| `player_message.max_join_lines` | `4` |
| `player_message.max_warning_lines` | `3` |
| `player_message.max_note_lines` | `3` |

Die Validierung der Nachrichtenlänge überprüft die Quellgrenzen. Es ersetzt nicht einen visuellen Test bei jeder Client-Auflösung.

Timing-Werte sind nicht negative Zahlen, die als Millisekunden interpretiert werden, außer `daily_joke_delay_seconds`. Eine deaktivierte Nachrichten- oder Broadcast-Einstellung unterdrückt Clientbenachrichtigungen, ohne die Sandbox-Vorbereitung zu ändern. Der Konsolenbefehl wird nur registriert, wenn sowohl die Einstellung als auch UE4SS-Handler sind verfügbar. Behalten Sie die Kritikalitätswerte auf den Ebenen des versendeten Transports bei, es sei denn, ein benannter Kundentest weist einen anderen Wert nach.

`max_line_chars` wird vom Übersetzer auf 8 bis 64 Zeichen begrenzt. Die drei Einstellungen für die Zeilenanzahl begrenzen die Ausgabe von Verknüpfungen, Warnungen und Notizen. Die ausgelieferten Werte stimmen mit der Anzahl der verfügbaren Quellzeilen überein. Behalten Sie diese vier Grenzwerte auf ihren Standardwerten bei, es sei denn, ein Client-Layout-Test ergibt eine engere Einstellung.

Beispiel mit deaktivierten Nachrichten:

```lua
player_message = {
    enabled = false,
    log_on_startup = true,
    register_console_command = false,
    console_command = "randomday",
    broadcast_enabled = false,
    startup_delay_ms = 30000,
    join_check_interval_ms = 15000,
    send_daily_joke_after_join = false,
    daily_joke_delay_seconds = 10,
    criticality_join = 2,
    criticality_joke = 0,
    max_line_chars = 42,
    max_join_lines = 4,
    max_warning_lines = 3,
    max_note_lines = 3,
}
```

<a id="profiles-and-sandbox-values"></a>
## Profile und Sandbox-Werte

Die Familienquelldateien unter `RandomDay/Scripts/ax_profiles/families/` definieren 17 vollständige Tage pro Familie. Die generierte Dokumentation unter `docs/profiles/` ist eine Referenzausgabe, nicht die Anpassungsquelle.

Verwenden Sie [die Sandbox-Schlüsselreferenz](PROFILE/SANDBOX-EINSTELLUNGSSCHL%C3%9CSSEL.md) für Typen, Bereiche, standardmäßige Standardprofile und verbleibende invariante Werte. Nachdem Sie eine Profilquelle bearbeitet haben, generieren und validieren Sie alle 289 Kombinationen neu. Patchen Sie nicht einen generierten Markdown oder JSONvon Hand aufzeichnen.

<a id="customize-the-shipped-profile-defaults"></a>
### Passen Sie die Standardeinstellungen des mitgelieferten Profils an

Öffnen:

```text
RandomDay/Scripts/ax_config/server.lua
```

Diesen Block finden Sie unter `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Das sind RandomDay's Startoptionen enthält, keine unveränderlichen Regeln für den abiotischen Faktor. Stellen Sie einen der beiden Modi auf `true` unverändert oder `false` fest. Legen Sie jeden Unterstützungswert auf eine ganze Zahl von `0` bis `1000` fest. Stoppen Sie das Spiel oder den dedizierten Server, bevor Sie die Datei bearbeiten, speichern Sie sie und starten Sie sie dann erneut, damit Lua die neue Konfiguration lädt.

RandomDay liest diesen Block immer dann, wenn die 17 Profile in einer Familie erstellt werden. Die gewählten Werte werden daher auf jede Familie und jeden Tag angewendet, einschließlich der nach einer Rotation erstellten Profile und der nach einem späteren Serverstart neu erstellten Profile. Sie müssen 289 Profildateien nicht bearbeiten oder die Profilreferenz neu generieren.

Die Änderung nur eines Live-Profils `SandboxSettings.ini` ist vorübergehend, da das nächste vorbereitete Profil aus `server.lua` generiert wird. Ungültige Typen, unbekannte Schlüssel oder Unterstützungswerte außerhalb `0..1000` stoppen die Profilerstellung mit einem benannten Konfigurationsfehler, anstatt stillschweigend zu den Standardeinstellungen zurückzukehren.

Die generierte Profilreferenz zeigt weiterhin die gelieferten Standardeinstellungen an. Es handelt sich um eine Release-Referenz, nicht um eine Kopie der privaten Konfiguration eines Servers.
