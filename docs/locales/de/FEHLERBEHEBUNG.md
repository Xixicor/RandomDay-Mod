<a id="troubleshooting"></a>
# Fehlerbehebung

> **Kanonisch-englische Quelle:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Bei der ersten fehlgeschlagenen Prüfung anhalten. Behalten Sie die aktuelle Sandbox bei, `runtime/`, `web_export/` und relevant `UE4SS.log`vor dem Wiederherstellungsversuch.

<a id="try-these-common-fixes-first"></a>
## Probieren Sie zuerst diese allgemeinen Korrekturen aus

1. **RandomDay erscheint nie:** bestätigen Sie die `RandomDay` befindet sich direkt darin `ue4ss/Mods`, aktivieren `RandomDay : 1` in `mods.txt`, und einmal starten.
2. **Die aktuelle Sitzung hat ihre alten Regeln beibehalten:** das ist normal. RandomDay bereitet das nächste Profil vor; Das Spiel lädt es bei einem späteren Start.
3. **Das gleiche Profil kehrt immer wieder zurück:** Möglicherweise wird ein Serverpanel ersetzt. `SandboxSettings.ini`. Verwenden Sie eine autoritative Sandbox-Datei und vergleichen Sie die aktiven und vorbereiteten Namen in `web_export/today.html`.
4. **Ein optionaler Mod folgte dem Profil nicht:** öffnen [Unterstützte optionale Mods](UNTERST%C3%9CTZTE_ADAPTER.md). Ein fehlender, deaktivierter oder nicht erkannter optionaler Mod bleibt unverändert.
5. **RandomDay meldet einen Schreib- oder Wiederherstellungsfehler:** vor einem weiteren Neustart anhalten, `runtime/backups/` und befolgen Sie den unten genannten Wiederherstellungsabschnitt.

Wenn diese fünf Prüfungen das Problem nicht identifizieren, fahren Sie mit dem detaillierten Entscheidungsbaum fort.

<a id="choose-the-first-failed-stage"></a>
## Wählen Sie die erste fehlgeschlagene Stufe

Verwenden Sie die erste Zeile, die mit dem übereinstimmt, was Sie tatsächlich beweisen können. Beginnen Sie nicht mit der schwerwiegendsten Erklärung und kombinieren Sie nicht zusammenhängende Ausgabefehler nicht in einer Diagnose.

| Was Sie beobachten können | Zuerst prüfen | Weiter mit | Erwartetes Ergebnis |
|---|---|---|---|
| Keine `[RandomDay]` Startzeile vorhanden in `UE4SS.log`. | Root installieren, Paket Markierungen, `mods.txt` und UE4SS Lua-Start beibehalten. | [Stellen Sie einen fehlenden RandomDay wieder her start](#restore-a-missing-randomday-start) | Eine Startzeile benennt den Release- und Paketmodus, oder der Fehler ist auf das Laden beschränkt. |
| RandomDay geladen, aber kein Profil wurde bereit. | Der erste Start-, Konfigurations-, Ziel-, Transaktions- oder Statusfehler. | [Wiederherstellung nach fehlgeschlagener Vorbereitung](#recover-from-failed-preparation) beibehalten, dann [Status- und Fehlerreferenz](STATUS-_UND_FEHLERREFERENZ.md) | Ein genauer Code identifiziert die sichere nächste Aktion. |
| Ein vorbereitetes Profil ist vorhanden, die laufenden Regeln jedoch nicht ändern. | Aktive und vorbereitete IDs in `today.json` unverändert oder `today.html`. | [Bestätigen Sie die Neustartgrenze](#confirm-the-restart-boundary) | Die aktuelle Sitzung bleibt aktiv; das vorbereitete Profil wartet auf einen späteren Start. |
| Tag 1 oder ein anderer Tag wiederholt sich nach dem Neustart. | Sandbox-Markierungen vor dem Panel Start, nach Panel-Start und nach der Vorbereitung. | [Wiederholte Vorbereitung stoppen](#stop-repeated-preparation) | Der maßgebliche Schreib- oder Überschreibpunkt wird identifiziert. |
| Die Sandbox ist fehlerfrei, aber ein optionaler Mod wurde übersprungen oder ist fehlgeschlagen. | Das Ergebnis des einzelnen Adapters und Kompatibilitätsnachweise. | [Übersprungenen Adapter diagnostizieren](#diagnose-a-skipped-adapter) unverändert oder [Fehler beim Wiederherstellen eines Adapter-Rollbacks](#recover-an-adapter-rollback-failure) | Der Zustand des Adapters wird unabhängig von der Sandbox entschieden Gesundheit. |
| Die manuelle singleplayer/LAN-Datei fehlt. | Paketmodus und begrenzter Ausgabeordner. | [Erzeugen Sie ein fehlendes singleplayer/LAN Datei](#generate-a-missing-singleplayerlan-file) | Die Datei wird in RandomDay generiert, ohne dass ein persönlicher Speicher ermittelt wird. |
| Nur die dem Spieler zugewandte Nachricht fehlt oder wird schlecht umbrochen. | Message-Pass-Protokoll, Quellvorschau und dokumentierte Grenzwerte. | [Diagnose Ein Nachrichtenproblem](#diagnose-a-message-problem) | Die Präsentation wird getestet, ohne als Profilnachweis behandelt zu werden. |

<a id="follow-the-safe-diagnostic-order"></a>
### Befolgen Sie die sichere Diagnosereihenfolge

1. Bewahren Sie die aktuellen Beweise auf, bevor Sie Dateien ändern.
2. Überprüfen Sie, ob RandomDay geladen wurde.
3. Finden Sie die erste Stufe, die ihr dokumentiertes Ergebnis nicht erreicht hat.
4. Kopieren Sie den genauen Status oder Fehlerwert aus der Laufzeitausgabe.
5. Verwenden Sie die passende Tabellenzeile unten für eine sichere Antwort.
6. Lesen Sie das Ziel und den Rotationsstatus vor einem weiteren Start zurück.

Wenn keine Zeile übereinstimmt, verwenden Sie [Laufzeitstatus und Ausgabereferenz](LAUFZEITAUSGABEN.md) um den Produzenten und die Feldbedeutung zu identifizieren, bevor die Konfiguration geändert wird.

<a id="restore-a-missing-randomday-start"></a>
## Stellen Sie einen fehlenden RandomDay wieder her start

**Höchstwahrscheinlich begrenzte Ursache:** falsches Extraktionslayout, deaktivierter Mod, falscher Paketmodus oder UE4SS hat den Lua-Einstiegspunkt nicht geladen.

**Genaue Prüfung:** bestätigen `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version` und `RandomDay/Scripts/main.lua`; bestätigen `RandomDay : 1` in `mods.txt`; Suchen Sie `UE4SS.log` nach `[RandomDay]`.

**Erwartetes Ergebnis:** Eine Startzeile benennt die Release-Identität und den Paketmodus.

**Sichere nächste Aktion:** Korrigieren Sie das Layout oder die Aktivierung im gestoppten Zustand und starten Sie dann einmal.

**Nicht ableiten:** nein RandomDay Zeile beweist keinen Spiel- oder Profilfehler.

<a id="confirm-the-restart-boundary"></a>
## Bestätigen Sie die Neustartgrenze

**Höchstwahrscheinlich begrenzte Ursache:** normaler nächster Neustart Verhalten.

**Genaue Prüfung:** Vergleichen Sie das aktive und das vorbereitete family/day in `web_export/today.json` unverändert oder `today.html`.

**Erwartetes Ergebnis:** das vorbereitete Profil unterscheidet sich vom aktiven Profil oder ist explizit davon getrennt.

**Sichere nächste Aktion:** Starten Sie erst neu, wenn Sie bereit sind, es zu aktivieren, und überprüfen Sie dann die aktive Markierung.

**Nicht ableiten:** ein vorbereitetes Profil ist vor dem Rücklesen nach dem Neustart nicht aktiv.

<a id="stop-repeated-preparation"></a>
## Wiederholte Vorbereitung stoppen

**Höchstwahrscheinlich begrenzte Ursache:** der aktive RandomDay-Marker fehlt, weil ein Server-Panel oder ein anderes Tool `SandboxSettings.ini` beim Start.

**Genaue Prüfung:** vergleichen Sie die Sandbox-Datei und ihre RandomDay-Marker unmittelbar vor dem Start, nach dem Start des Panels und nachdem RandomDay die Datei vorbereitet hat.

**Erwartetes Ergebnis:** die Datei, die beim nächsten Start vorhanden ist, behält die vorbereitete Markierung bei.

**Sichere nächste Aktion:** konfigurieren Sie eine autoritative Sandbox-Quelle und deaktivieren Sie das Umschreiben des widersprüchlichen Panels.

**Nicht ableiten:** Wiederholter Tag 1 beweist nicht, dass der Familienselektor falsch randomisiert.

<a id="recover-from-failed-preparation"></a>
## Wiederherstellung nach fehlgeschlagener Vorbereitung

**Höchstwahrscheinlich begrenzte Ursache:** ausstehender Schreibvorgang, Sicherung, Heraufstufung, Produktionsrücklesung, Validierung oder Rollback sind fehlgeschlagen.

**Genaue Prüfung:** Lesen Sie die erste Datei `[RandomDay] [ERROR]` Zeile und bewahrt die benannte Vorgangssicherung auf. Überprüfen Sie `runtime/last_good/manifest.lua` vor der Verwendung der Sandbox-Datei.

**Erwartetes Ergebnis:**. Entweder wird die vorherige Datei als wiederhergestellt bestätigt oder das Ergebnis meldet eindeutig einen Wiederherstellungsfehler.

**Sichere nächste Aktion:** Halten Sie den Server angehalten und folgen Sie der [manuellen Wiederherstellung](OPERATIONEN.md#manual-recovery).

**Nicht ableiten:** Das Vorhandensein einer Sicherungsdatei allein beweist dies nicht entspricht dem beabsichtigten aktiven Weltstatus.

<a id="diagnose-a-skipped-adapter"></a>
## Übersprungenen Adapter diagnostizieren

**Höchstwahrscheinlich begrenzte Ursache:** Der Mod fehlt oder die Datei stimmt nicht mit einer unterstützten Signatur überein.

**Genaue Prüfung:** Lesen Sie das Adapterergebnis und vergleichen Sie die installierte Version und das Layout mit [Unterstützte Mod-Adapter](UNTERST%C3%9CTZTE_ADAPTER.md).

**Erwartetes Ergebnis:** `not_installed` für ein abwesendes Ziel oder `skipped_incompatible` für ein nicht erkanntes Ziel.

**Sichere nächste Aktion:** Lassen Sie die Datei unverändert, deaktivieren Sie diesen Adapter oder installieren Sie eine exakte unterstützte Version von seinem ursprünglichen Autor.

**Nicht ableiten:** Ein ähnlicher Dateiname oder eine neuere Version ist kein Beweis dafür Kompatibilität.

<a id="recover-an-adapter-rollback-failure"></a>
## Fehler beim Wiederherstellen eines Adapter-Rollbacks

**Höchstwahrscheinlich begrenzte Ursache:** Sowohl der Schreibversuch als auch die automatische Wiederherstellung konnten nicht überprüft werden.

**Genaue Prüfung:** Behalten Sie das Ziel bei, Geschwister pending/rollback, den Adapterstatus und die neueste Adaptersicherung unter `runtime/backups/`.

**Erwartetes Ergebnis:** Das Ergebnis ist `rollback_failed`, nicht `applied`.

**Sichere nächste Aktion:** Stoppen Sie das Betroffene mod/server und stellen Sie die überprüfte Sicherung vor einem weiteren Start manuell wieder her.

**Nicht ableiten:** RandomDay's Das primäre Sandbox-Ergebnis beweist nicht, dass ein separates Adapterziel fehlerfrei ist.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Erzeugen Sie ein fehlendes singleplayer/LAN Datei

**Höchstwahrscheinlich begrenzte Ursache:** Das dedizierte Paket wurde installiert, die Modusmarkierung ist ungültig oder RandomDay wurde nicht geladen.

**Genaue Prüfung:** `.randomday_mode` muss `singleplayer_manual`; Bestätigen Sie dann die Startzeile RandomDay und überprüfen Sie `runtime/singleplayer_manual/SandboxSettings.ini`.

**Erwartetes Ergebnis:** Die Datei existiert im RandomDay.

**Sichere nächste Aktion:** Installieren Sie das richtige Paket sauber und starten Sie es einmal.

**Nicht ableiten:** RandomDay wird die Zielwelt nicht in Ihrem Namen suchen oder schreiben.

<a id="diagnose-a-message-problem"></a>
## Diagnose Ein Nachrichtenproblem

**Höchstwahrscheinlich begrenzte Ursache:** Beim geplanten Durchgang war kein gültiger Spielercharakter verfügbar, der Warntransport war nicht verfügbar oder die Client-Anzeige hat den Text anders umbrochen.

**Genaue Prüfung:** Überprüfen Sie den `[RandomDay]` und vergleichen Sie die Quellnachricht mit der dokumentierten Längenbeschränkung.

**Erwartetes Ergebnis:** Die Laufzeit meldet, ob ein Nachrichtendurchlauf ausgeführt wurde. Die Quellvalidierung meldet die maximale Länge.

**Sichere nächste Aktion:** Überprüfen Sie die beabsichtigte Client-Auflösung. Halten Sie die Gameplay- und Profilüberprüfung vom Nachrichtenergebnis getrennt.

**Nicht ableiten:** Eine sichtbare Nachricht beweist nicht, dass das Sandbox-Profil angewendet wurde, und eine fehlende Nachricht beweist nicht, dass die Vorbereitung fehlgeschlagen ist.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Vier profilweite Auswahlmöglichkeiten wurden auf die ausgelieferten Werte zurückgesetzt

**Höchstwahrscheinlich begrenzte Ursache:** Nur die generierten `SandboxSettings.ini` wurde zurückgegeben bearbeitet oder `server.lua` wurde geändert, während derselbe Lua-Prozess noch lief.

**Genaue Prüfung:** stoppen Sie das Spiel oder den dedizierten Server, öffnen `RandomDay/Scripts/ax_config/server.lua` und bestätigen Sie, dass der gespeicherte `sandbox.profile_overrides` Block die beabsichtigten vier Werte enthält.

**Erwartetes Ergebnis:** nach dem nächsten Start, alle neu vorbereiteten family/day Profil die gewählten Werte. Spätere Profilrotationen und Serverstarts verwenden weiterhin denselben Block.

**Sichere nächste Aktion:** korrigieren die Blockieren, einmal starten und das vorbereitete Profil prüfen. Patchen Sie nicht nur die generierte Sandbox-Datei, da diese durch eine spätere Vorbereitung ersetzt wird.

<a id="look-up-an-exact-status"></a>
## Suchen Sie nach einem genauen Status

Nachdem der Entscheidungsbaum die fehlerhafte Phase identifiziert hat, kopieren Sie den genauen `status`, `transaction_status`, `rollback_status` oder `error` Wert aus dem Laufzeitexport. Verwenden Sie [Status- und Fehlerreferenz](STATUS-_UND_FEHLERREFERENZ.md) wegen seiner Bedeutung und einer sicheren Bedienerreaktion. Ein ähnlicher Wortlaut in einem Panel oder einer Konsole ist kein Ersatz für den exportierten Wert.

Fehler in der Testumgebung nur für Mitwirkende gehören in [Release-Validierungsprüfungen](RELEASE-VALIDIERUNG.md#avoid-validation-environment-pitfalls), nicht in den Operator-Wiederherstellungspfad.
