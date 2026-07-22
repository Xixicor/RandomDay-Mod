<a id="singleplayer-and-lan-manual-workflow"></a>
# Einzelspieler und LANmanueller Workflow

> **Kanonisch-englische Quelle:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


RandomDay's singleplayer/LAN-Paket generiert ein vollständiges `SandboxSettings.ini` im Mod-Ordner. Sie wählen die Welt aus und kopieren die Datei manuell, während das Spiel geschlossen ist.

Das Paket ist an diese Ausgabe gebunden:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Es deaktiviert Sandbox-Schreibvorgänge auf dedizierten Servern, Sandbox-Spiegelungen und alle optionalen Adapter-Schreibvorgänge. Es wird nicht gesucht AppData, Steam-Benutzerdaten, Dokumente, Speicherordner, Serverordner oder Mod-Ordner von Drittanbietern.

<a id="understand-the-manual-boundary"></a>
## Verstehen Sie die manuelle Grenze

Bevor Sie beginnen, konfigurieren Sie das Erlebnis in `RandomDay/Scripts/ax_config/server.lua`. Das manuelle Paket akzeptiert `experience.mode="auto"` unverändert oder `"singleplayer_lan"`. Sie können einen festen oder zufälligen ersten Tag und eine sequentielle oder sich nicht wiederholende, zufällige 17-Tage-Reihenfolge wählen. Bei der Familienauswahl werden dieselben ausgewählten, rotierenden oder sich nicht wiederholenden zufälligen Familieneinstellungen wie bei einem dedizierten Server verwendet.

Die generierte Ausgabe enthält den Marker RandomDay liest beim nächsten Prozess. Um den Status ausgerichtet zu halten, kopieren Sie die generierte Datei in die ausgewählte gestoppte Welt, bevor Sie einen weiteren Generierungsprozess starten. Wiederholtes Starten ohne Kopieren kann die mod-lokale Warteschlange vorantreiben, obwohl die Welt die vorherige Ausgabe nie geladen hat.

Folgen Sie dem kanonischen [Einzelspieler- oder LAN Installationsverfahren](INSTALLATION.md#singleplayer-or-lan) für Sicherung, Paketplatzierung, Aktivierung, Generierung, manuelles Kopieren und Überprüfung. Auf dieser Seite wird die manuelle Grenze erläutert. es definiert keine andere Installationsmethode.

Die erste Generation bereitet ein Profil vor; Es kann keine Regeln ändern, die bereits von diesem Spielprozess geladen wurden. Schließen, kopieren und erneut starten, um es zu verwenden. Wiederholen Sie den Zyklus nur, wenn Sie den nächsten Tag bewusst beibehalten möchten.

EntfernenRandomDay stellt eine World-Datei, die Sie manuell kopiert haben, nicht wieder her; Verwenden Sie für dieses Rollback Ihr eigenes Backup. Befolgen Sie [Alle Installationen entfernen oder zurücksetzen](INSTALLATION.md#remove-or-disable-randomday) für die genaue Entfernungsprozedur.
