# RandomDay auf Deutsch

**v0.3.16-alpha**

RandomDay bereitet eine vollständige `SandboxSettings.ini` für den nächsten
Start von Abiotic Factor vor. Bereits geladene Regeln werden nicht geändert.
Aktives und vorbereitetes Profil bleiben getrennt.

## Installieren und prüfen

Folgen Sie der [Installationsanleitung](../../../INSTALL.md). Der korrekte Pfad
ist `ue4ss/Mods/RandomDay`; in `mods.txt` muss `RandomDay : 1` stehen. Der erste
Start bereitet normalerweise vor, ein späterer Start aktiviert das Profil.

Prüfen Sie `runtime/current/randomday_status.json`, `runtime/rotation_state.txt`
und `web_export/today.json`. Aktive und vorbereitete Identität müssen in allen
drei Dateien übereinstimmen.

## Spielerlebnis wählen

Modus, Familie, Starttag und Fortschritt stehen in
`RandomDay/Scripts/ax_config/server.lua`. Nutzen Sie [Start](../../START_HERE.md),
[Profilauswahl](../../CHOOSE_A_PROFILE.md), [Konfiguration](../../CONFIGURATION.md)
und [Betrieb](../../OPERATIONS.md).

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` und
`BridgeSupports=0` sind Vorgaben dieser Version, keine unveränderlichen
Spielregeln. Die [erweiterte Konfiguration](../../CONFIGURATION.md#customize-the-shipped-profile-defaults)
erklärt dauerhafte Änderungen.

Befehle, Pfade, Schlüssel und Statuswerte bleiben auf Englisch.

## Alpha-Version und dauerhafte Einstellungen

Dies ist eine Alpha-Version. Die dokumentierten Installations-, Rotations- und Wiederherstellungswege wurden getestet; Kompatibilität und Bedienbarkeit werden weiter verbessert.

In `RandomDay/Scripts/ax_config/server.lua` behält `sandbox.profile_overrides` die vier Werte für jede Familie und jeden Tag bei. Server anhalten, einmal ändern und neu starten. Spätere Rotationen und Starts verwenden dieselben Werte; nur `SandboxSettings.ini` zu ändern ist vorübergehend.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Die optionalen Mods unten sind separate Downloads ihrer jeweiligen Autoren. RandomDay verteilt sie nicht weiter und verändert ihre Funktionen nicht; ein aktivierter Adapter ändert nur vorhandene, unterstützte Einstellungen. Vielen Dank an die Autoren und Betreuer.
