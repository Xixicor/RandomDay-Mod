<a id="install-update-or-remove-randomday"></a>
# Installieren, aktualisieren oder entfernen RandomDay

> **Kanonisch-englische Quelle:** [INSTALL.md](../../../INSTALL.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


RandomDay verfügt über zwei vollständige Downloads. Wählen Sie eine für die Welt aus, die Sie einrichten:

- verwenden Sie den **dedizierten Server ZIP** für jeden dedizierten Server, einschließlich eines Servers, der nur für gelegentliche Sitzungen geöffnet ist;
- verwenden Sie den **singleplayer/LAN ZIP** für eine lokale Welt, deren Einstellungen Sie manuell kopieren.

Kombinieren Sie die Pakete nicht. In RandomDay's Einstellungen, kein anderer Download.

<a id="before-you-begin"></a>
## Bevor Sie beginnen

Erstellen Sie eine wiederherstellbare Kopie von:

- der Welt, die Sie verändern;
- ihrer aktuellen `SandboxSettings.ini`;
- der vorhandenen `RandomDay`Ordner, falls einer installiert ist.

Installieren UE4SS vor RandomDay. In den folgenden Anweisungen bedeutet der **Mods-Ordner**, dass `ue4ss/Mods/` Verzeichnis innerhalb des Spiels oder der Installation auf einem dedizierten Server.

<a id="dedicated-server"></a>
## Dedizierter Server

<a id="new-installation"></a>
### Neue Installation

1. Stoppen Sie den Server.
2. Öffnen Sie esUE4SS `Mods` Ordner.
3. Den dedizierten Server extrahieren ZIP. Das Ergebnis sollte eins sein `ue4ss/Mods/RandomDay/` Ordner, kein Ordner in einem anderen `RandomDay` Ordner.
4. Öffnen Sie diesen Ordner und bestätigen Sie, dass `RandomDay/Scripts/main.lua` ist vorhanden. Wenn es fehlt, wird das ZIP wurde in die falsche Ebene extrahiert.
5. Öffnen Sie UE4SS `mods.txt` und aktivieren Sie diese Zeile:

   ```text
   RandomDay : 1
   ```

6. Starten Sie den Server normal.
7. Öffnen Sie RandomDay's lesbare Statusseite und Bestätigung, dass sie sowohl das aktive Profil als auch das für den nächsten Start vorbereitete Profil benennt.

Der erste Start ersetzt nicht die Regeln, die bereits von dieser Sitzung geladen wurden. Es bereitet das nächste Profil vor. Starten Sie den Server nur dann erneut, wenn Sie tatsächlich möchten, dass das vorbereitete Profil aktiv wird.

[den ersten Zyklus überprüfen](HIER_BEGINNEN.md)

<a id="choose-always-on-or-temporary-behavior"></a>
### Wählen Sie „Immer aktiv“ oder „temporäres Verhalten“

Das Dedicated-Server-Paket unterstützt beide Stile:

- **persistent dediziert** die gespeicherte Rotation bei normalen Neustarts fortsetzt;
- **temporär dediziert** kann am konfigurierten oder zufälligen Startpunkt beginnen, wenn eine neue temporäre Ausführung beginnt.

Wählen Sie das Verhalten in [Konfiguration](KONFIGURATION.md). Installieren Sie kein zweites Paket, um diese Einstellung zu ändern.

<a id="update-an-existing-installation"></a>
### Aktualisieren Sie eine vorhandene Installation

1. Stoppen Sie den Server und führen Sie die Installation durch Sicherungen, die oben aufgeführt sind.
2. Verschieben Sie den alten `RandomDay`-Ordner aus dem UE4SS `Mods`-Ordner. Behalten Sie ihn, bis das Update einen erfolgreichen Zyklus abgeschlossen hat.
3. Extrahieren Sie den neuen dedizierten Server ZIP in den `Mods` Ordner.
4. Wenden Sie nur die Einstellungen erneut an, die Sie absichtlich geändert haben und die noch in der neuen [Konfigurationsanleitung](KONFIGURATION.md).
5. Behalten Sie die dokumentierten Rotationsstatusdateien nur bei, wenn in den Versionshinweisen angegeben ist, dass ihr Format kompatibel ist. Kopieren Sie keine alten temporären Ausgabe- oder fehlgeschlagenen Schreibdateien in die neue Installation.
6. Bestätigen `RandomDay : 1` ist noch aktiviert, dann starten Sie den Server einmal und überprüfen Sie die aktiven und vorbereiteten Profilnamen.

<a id="updating-from-v0315-alpha"></a>
### Aktualisierung von v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip` war das alte Basispaket. `RandomDay_v0.3.15-alpha_singleplayer_patch.zip` war ein Overlay und kein eigenständiger Download.

Der aktuelle `v0.3.16-alpha` ersetzt die historische Basis- und Overlay-Anordnung durch zwei vollständige Pakete. Platzieren Sie den alten Patch nicht auf einem der Pakete. Die aktuellen Marker sind `.randomday_mode=dedicated_server` und `.randomday_mode=singleplayer_manual`.

<a id="singleplayer-or-lan"></a>
## Einzelspieler oder LAN

Das Paket singleplayer/LAN erstellt eine Einstellungsdatei; Es sucht nicht selbst nach einem persönlichen Speicherstand und ändert diesen auch nicht.

1. Schließen Sie das Spiel.
2. Sichern Sie die Welt und ihre aktuelle `SandboxSettings.ini`.
3. Extrahieren Sie die singleplayer/LAN ZIP in das Spiel UE4SS `Mods` Ordner des Spiels, also eine `Mods/RandomDay/` Ordner existiert.
4. Aktivieren `RandomDay : 1` in UE4SS `mods.txt`.
5. Starten Sie das Spiel einmal und warten Sie RandomDay um das Spiel zu beenden und vollständig zu schließen.
6. Suchen Sie den generierten `SandboxSettings.ini` in RandomDay's `runtime/singleplayer_manual/` Ordner.
7. Lesen Sie die generierte Zusammenfassung und kopieren Sie dann die Datei in die von Ihnen ausgewählte Welt.
8. Starten Sie diese Welt und prüfen Sie, ob das erwartete Sandbox-Verhalten aktiv ist.

LAN verwendet denselben manuellen Prozess, da der Host Eigentümer der lokalen Welt ist. Der Mod wählt keine Welt aus und überschreibt auch keine automatisch.

[Einzelspieler und LAN Anleitung](EINZELSPIELER-LAN.md)

<a id="remove-or-disable-randomday"></a>
## Entfernen oder deaktivieren RandomDay

1. Spiel oder Server stoppen.
2. Sichern Sie die Welt, ihre aktuellen Sandbox-Einstellungen und RandomDay's Status.
3. Stellen Sie `RandomDay : 0` in UE4SS `mods.txt` ein, um den Mod zu deaktivieren, oder Verschieben Sie den kompletten `RandomDay`-Ordner aus dem `Mods`-Ordner, um ihn zu entfernen.
4. Entscheiden Sie, welcher `SandboxSettings.ini` sollte beim nächsten Start geladen werden. Stellen Sie Ihre Vorinstallationskopie wieder her, wenn Sie die aktuell vorbereitete Version nicht möchten RandomDayProfil.
5. Starten Sie die Welt und bestätigen Sie ihre Regeln, bevor Sie sie löschen Jede Sicherung.

Deaktivieren RandomDay stoppt die zukünftige Profilvorbereitung. Die Sandbox-Datei, die bereits auf der Festplatte wartet, wird nicht neu geschrieben.

<a id="recover-from-an-unsuccessful-update"></a>
## Wiederherstellung nach einem fehlgeschlagenen Update

Nach dem ersten Löschfehler anhalten. Wiederholte Neustarts können es schwieriger machen, zu erkennen, welches Profil aktiv war und welches wartete.

1. Spiel oder Server stoppen.
2. Verschieben Beheben Sie die fehlgeschlagene Installation, ohne sie zu löschen.
3. Komplett wiederherstellenRandomDayOrdner- und Sandbox-Backup, das vor dem Update erstellt wurde.
4. Starten Sie einmal und bestätigen Sie die wiederhergestellten aktiven und vorbereiteten Profilnamen.
5. Verwenden Sie [Fehlerbehebung](FEHLERBEHEBUNG.md) für den ersten fehlenden oder fehlgeschlagenen Schritt vorhanden sind, bevor Sie ein weiteres Update versuchen.

<a id="more-help"></a>
## Weitere Hilfe

- [Erster Zyklus](HIER_BEGINNEN.md)
- [Profil auswählen](PROFIL_AUSW%C3%84HLEN.md)
- [Konfiguration](KONFIGURATION.md)
- [Betrieb und Wiederherstellung](OPERATIONEN.md)
- [Fehlerbehebung](FEHLERBEHEBUNG.md)
- [Kompatibilität](KOMPATIBILIT%C3%84T.md)

Release-Betreuer finden Build- und Paketprüfungen in [Release-Validierung](RELEASE-VALIDIERUNG.md). Sie sind für eine normale Installation nicht erforderlich.
