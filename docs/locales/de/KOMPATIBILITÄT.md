<a id="compatibility"></a>
# Kompatibilität

> **Kanonisch-englische Quelle:** [COMPATIBILITY.md](../../COMPATIBILITY.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


<a id="supported-installations"></a>
## Unterstützte Installationen

RandomDay wurde für Installationen von Abiotic Factor entwickelt, die UE4SS Lua-Mods laden können.

| Umgebung | Unterstützung | Paket |
| --- | --- | --- |
| Dedizierter Windows-Server | Unterstützt | Dedicated-Server ZIP |
| Windows-Einzelspieler oder LAN Host | Unterstützter Arbeitsablauf für manuelles Kopieren | Singleplayer/LAN ZIP |
| Linux-Server mit Wine oder Proton | Nicht auf Veröffentlichung getestet | Das Windows-spezifische Paket kann von erfahrenen Betreibern evaluiert werden, es wird jedoch keine Kompatibilitätszusage gemacht. |
| Xbox und PlayStation | Nicht unterstützt | Diese Plattformen bieten nicht den für diese Version erforderlichen Dateizugriff und UE4SS Lua-Ladepfad. |

RandomDay kombiniert die beiden Pakete nicht. Ein dedizierter Server, der nur für gelegentliches Spielen gestartet wird, verwendet weiterhin den Status „dedicated-server“ ZIP und wählt temporäres Verhalten in der Konfiguration.

<a id="abiotic-factor-updates"></a>
## Abiotic Factor-Updates

Beginnen Sie nach einem Spielupdate mit angehaltenem Server und behalten Sie eine wiederherstellbare Kopie der Welt, `SandboxSettings.ini` und RandomDay aus. Bestätigen Sie UE4SS das Laden, führen Sie dann einen RandomDay Zyklus durch und überprüfen Sie sowohl das aktive als auch das vorbereitete Profil, bevor Sie mit der normalen Rotation fortfahren.

<a id="companion-mods"></a>
## Companion-Mods

RandomDay ändert einen separat installierten Mod nur, wenn sein vollständiges Einstellungslayout mit einem unterstützten Adapter übereinstimmt. Eine Versionsnummer allein reicht nicht aus.

| Integration | Aktuelle Version überprüft | RandomDayUnterstützungsgrenze |
| --- | --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | `0.8.5`; Hauptdatei `0.8.5-Hotfix1` | Das unterstützte `SharedData.lua` Das Layout deckt die Spawn-, Abklingzeit-, Bevölkerungs-, Portal-, Breach-, Boss- und RandomDay Begegnungseinstellungen ab, die in der Adapterreferenz aufgeführt sind. |
| Lethal Lasers | `1.0-UE4SS` | Das unterstützte `Scripts/main.lua` Das Layout deckt erkannte Emitter-, Umgebungs-Emitter-, Reflektor- und Prisma-Einstellungen ab. |
| ANTEUp | `1`, aktualisiert am 19. Juli 2026 | Das aktuelle öffentliche Layout hat die Adapterbefestigung nicht abgeschlossen. RandomDay überspringt eine nicht übereinstimmende Datei unverändert, bis das Layout überprüft wird. |

Ein abwesender, deaktivierter oder nicht erkannter Begleiter-Mod bleibt unverändert. Genaue Einstellungen, Konfigurationskontrollen, Sicherungsverhalten und Wiederherstellungsschritte finden Sie unter [Unterstützte optionale Mods](UNTERST%C3%9CTZTE_ADAPTER.md).

<a id="what-compatibility-validation-proves"></a>
## Was die Kompatibilitätsvalidierung beweist

Die Repository-Validierung kann das Layout des gelieferten Pakets, die Konfigurationsabdeckung, erkannte Adapterfelder, das Sicherungs- und Wiederherstellungsverhalten und die sichere Ablehnung eines unbekannten Layouts nachweisen. Es kann nicht jede zukünftige Version von Abiotic Factor, UE4SS oder Companion-Mod beweisen. Versionshinweise benennen getestete Versionen, anstatt Kompatibilität von einem erfolgreichen Ladevorgang auszugehen.
