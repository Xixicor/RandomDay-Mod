# RandomDay auf Deutsch

> [!IMPORTANT]
> ## Projektstatus — RandomDay-Testphase abgeschlossen
>
> Der RandomDay-Testbetrieb ist abgeschlossen; der öffentliche Testserver wird demnächst geschlossen.
>
> Während dieses Betriebs liefen RandomDay und RandomDayGuard gemeinsam durch wiederholte Profilwechsel, normale und unterbrochene Serverneustarts, Wiederherstellungs- und Rollback-Prüfungen, die Einbindung erweiterter Mods, die Sammlung von Servernachweisen und die Prüfung der Betreiberberichte.
>
> Damit haben wir das angestrebte Wissen gewonnen: wie sich wechselnde Sandbox-Profile über reale Lebenszyklen eines dedizierten Servers verhalten, wie RandomDay mit unterstützten erweiterten Mods zusammenspielt und in welchem Umfang RandomDayGuard die vom Server geschriebenen Nachweise in eine nützliche, vorsichtige Überwachung umwandeln kann, ohne Lücken oder Vermutungen als Tatsachen darzustellen.
>
> **Verwendeter Testserver-Stack:**
>
> - RandomDay private Entwicklungsversion `v0.41.76`
> - RandomDayGuard private Entwicklungsversion `v0.46.130`
> - Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
> - Lethal Lasers `1.0 UE4SS`
> - ANTE Up `0.26`
> - Encounter Director integration — eine RandomDay-eigene DynamicSpawns-Erweiterung, keine separat vertriebene Mod
> - UE4SS `v3.0.1 Beta #0` (Git `01e0a584`; Nexus `v3.0.1-940-g01e0a584`)
> - dedizierter Abiotic-Factor-Server `1.4.0.27939`
>
> Die derzeit veröffentlichten Pakete bleiben RandomDay `v0.3.16-alpha` und RandomDayGuard `v0.4.12-alpha`.
>
> Die Entwicklung beider Projekte ist vorerst pausiert. Die bestehenden Releases und Dokumentationen bleiben verfügbar; möglicherweise kehren wir zurück, wenn wir wieder den Wunsch verspüren, die Arbeit fortzusetzen.
>
> Dieser Stack dokumentiert, was während des Betriebs eingesetzt wurde; er ist weder eine Mindestversionsanforderung noch eine Kompatibilitätsgarantie für spätere Spiel-, Loader- oder Mod-Versionen. Der letzte formell dokumentierte Zyklus verwendete Abiotic Factor `1.4.0.27939`.

**v0.3.16-alpha**

RandomDay bereitet eine vollständige `SandboxSettings.ini` für den nächsten
Start von Abiotic Factor vor. Bereits geladene Regeln werden nicht geändert.
Aktives und vorbereitetes Profil bleiben getrennt.

## Installieren und prüfen

Folgen Sie der [Installationsanleitung](INSTALLATION.md). Der korrekte Pfad
ist `ue4ss/Mods/RandomDay`; in `mods.txt` muss `RandomDay : 1` stehen. Der erste
Start bereitet normalerweise vor, ein späterer Start aktiviert das Profil.

Prüfen Sie `runtime/current/randomday_status.json`, `runtime/rotation_state.txt`
und `web_export/today.json`. Aktive und vorbereitete Identität müssen in allen
drei Dateien übereinstimmen.

## Spielerlebnis wählen

Modus, Familie, Starttag und Fortschritt stehen in
`RandomDay/Scripts/ax_config/server.lua`. Nutzen Sie [Start](HIER_BEGINNEN.md),
[Profilauswahl](PROFIL_AUSW%C3%84HLEN.md), [Konfiguration](KONFIGURATION.md)
und [Betrieb](OPERATIONEN.md).

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` und
`BridgeSupports=0` sind Vorgaben dieser Version, keine unveränderlichen
Spielregeln. Die [erweiterte Konfiguration](KONFIGURATION.md#customize-the-shipped-profile-defaults)
erklärt dauerhafte Änderungen.

Befehle, Pfade, Schlüssel und Statuswerte bleiben auf Englisch.

## Alpha-Version und dauerhafte Einstellungen

Dies ist eine Alpha-Version. Die dokumentierten Installations-, Rotations- und Wiederherstellungswege wurden getestet; Kompatibilität und Bedienbarkeit werden weiter verbessert.

In `RandomDay/Scripts/ax_config/server.lua` behält `sandbox.profile_overrides` die vier Werte für jede Familie und jeden Tag bei. Server anhalten, einmal ändern und neu starten. Spätere Rotationen und Starts verwenden dieselben Werte; nur `SandboxSettings.ini` zu ändern ist vorübergehend.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Die optionalen Mods unten sind separate Downloads ihrer jeweiligen Autoren. RandomDay verteilt sie nicht weiter und verändert ihre Funktionen nicht; ein aktivierter Adapter ändert nur vorhandene, unterstützte Einstellungen. Vielen Dank an die Autoren und Betreuer.

## Vollständige Dokumentationsbibliothek

Jedes öffentliche Markdown-Dokument ist in dieser Sprache mit lokalisierten Dateinamen verfügbar.

- [Öffnen Sie den lokalisierten Dokumentationsindex](DOKUMENTATION.md)
