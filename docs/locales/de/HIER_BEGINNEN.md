<a id="start-here-complete-the-first-randomday-cycle"></a>
# Hier beginnen: Vervollständigen Sie das erste RandomDay Zyklus

> **Kanonisch-englische Quelle:** [START_HERE.md](../../START_HERE.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Diese Anleitung beginnt nach der Installation von RandomDay. Es zeigt, was der Mod ändert, was er in Ruhe lässt und wie man einen erfolgreichen Zyklus erkennt.

<a id="know-the-two-states"></a>
## Kennen Sie die beiden Zustände

Abiotic Factor liest die Sandbox-Einstellungen der Welt, bevor RandomDay startet. RandomDay behält daher zwei klar benannte Zustände bei:

- **Aktives Profil:**die Regeln, die die aktuelle Sitzung bereits verwendet.
- **Vorbereitetes Profil:**die für den nächsten Start gespeicherten Regeln.

Das vorbereitete Profil ändert keine bereits laufende Sitzung.

<a id="dedicated-server-prepare-the-next-profile"></a>
## Dedizierter Server: Bereiten Sie das nächste Profil vor

1. Starten Sie den Server normal.
2. Warten Sie, bis RandomDay seine Startarbeit abgeschlossen hat.
3. Öffnen Sie `RandomDay/web_export/today.html` im installierten Mod-Ordner.
4. Suchen **Aktives Profil** und **Vorbereitetes Profil**.

Beim ersten erfolgreichen Start sollte die Seite die bereits aktiven Regeln und ein anderes Profil, das auf das nächste wartet, nennen beginnen. Auf der Seite werden außerdem die ausgewählte Familie, die Position und die Frage erläutert, ob die vorbereitete Datei die Sicherheitsprüfung bestanden hat.

Starten Sie nicht neu, nur um die Statusänderung vorzunehmen. Spielen Sie bis zum nächsten geplanten Serverstart weiter mit den aktiven Regeln.

<a id="dedicated-server-activate-it-later"></a>
## Dedizierter Server: später aktivieren

1. Stoppen und starten Sie den Server beim nächsten geplanten Neustart.
2. Öffnen Sie die lesbare Statusseite erneut.
3. Bestätigen Sie, dass das zuvor vorbereitete Profil jetzt als aktiv aufgeführt ist.
4. Bestätigen Sie, dass RandomDay das folgende Profil vorbereitet hat.

Dieser Übergang „Vorbereiten-dann-aktivieren“ ist abgeschlossen RandomDay Zyklus.

<a id="temporary-dedicated-servers"></a>
## Temporäre dedizierte Server

Temporäres Verhalten verwendet dasselbe dedizierte Serverpaket. Wählen Sie in [Konfiguration](KONFIGURATION.md) aus, ob ein neuer Lauf auf einem bestimmten Profil beginnt oder einen zufälligen Startpunkt wählt. Die Statusseite trennt immer noch das aktive Profil von dem, das für den nächsten Start vorbereitet ist.

<a id="singleplayer-or-lan"></a>
## Einzelspieler oder LAN

1. Starten Sie das Spiel einmal mit dem installierten singleplayer/LAN-Paket.
2. Schließen Sie das Spiel vollständig, nachdem RandomDay beendet ist.
3. Lesen Sie die generierte Zusammenfassung.
4. Kopieren Sie die generierte `SandboxSettings.ini`in die von Ihnen ausgewählte Welt, während das Spiel geschlossen ist.
5. Starten Sie diese Welt und bestätigen Sie die erwarteten Regeln.

Das lokale Paket wählt niemals eine Welt aus oder kopiert die Datei selbst in einen Speicher. Das vollständige Verfahren finden Sie unter [Einzelspieler und LAN](EINZELSPIELER-LAN.md).

<a id="if-the-expected-result-is-missing"></a>
## Wenn das erwartete Ergebnis ausbleibt

Nicht ständig neu starten. Behalten Sie die aktuellen Dateien bei und wählen Sie das entsprechende Symptom in [Fehlerbehebung](FEHLERBEHEBUNG.md) aus. Das normale Ergebnis benennt immer ein aktives Profil und entweder ein vorbereitetes Profil oder einen eindeutigen Vorbereitungsfehler.

<a id="continue"></a>
## Weiter

- [Wählen Sie einen Spielstil](PROFIL_AUSW%C3%84HLEN.md)
- [Wählen Sie Start- und Fortschrittsverhalten](KONFIGURATION.md)
- [Bedienen und erholen RandomDay](OPERATIONEN.md)
- [Verstehen Sie die Rotation](FAMILIENROTATION.md)
