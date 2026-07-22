<a id="release-validation"></a>
# Release-Validierung

> **Kanonisch-englische Quelle:** [RELEASE_VALIDATION.md](../../RELEASE_VALIDATION.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Diese Seite richtet sich an Mitwirkende und Release-Betreuer. Spieler, die den Mod installieren, müssen diese Befehle nicht ausführen.

<a id="ordinary-user-proof"></a>
## Normaler Benutzernachweis

Eine Veröffentlichung ist verständlich, wenn ein neuer Leser eines der beiden Pakete auswählen, es installieren, das aktive Profil und das vorbereitete Profil identifizieren und ein fehlendes Ergebnis beheben kann, indem er der verlinkten Anleitung folgt. Diese Leseaufgaben dürfen kein Git erfordern, PowerShell, Python oder Prüfsummenkenntnisse.

<a id="contributor-checks"></a>
## Mitwirkende prüft

Aus dem Repository-Stammverzeichnis ausführen:

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

Wenn `luac` verfügbar ist, überprüfen Sie die Syntax jeder gelieferten Lua-Datei:

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

Die Lua-Laufzeittests erfordern `lupa`. Ein fehlender Lua-Interpreter oder eine `lupa` Installation ist eine nicht verfügbare Testfunktion, kein bestandenes Ergebnis.

<a id="release-checks"></a>
## Release-Prüfungen

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

Die Release-Prüfung überprüft diese Bedingungen:

- `VERSION` und `RandomDay/.randomday_version` Übereinstimmung.
- Nur die aktuelle Version existiert unter `releases/`.
- Die dedizierten und singleplayer/LAN ZIPs sind vollständige Alternativen.
- Beide Archive enthalten den kanonischen `RandomDay/Scripts/main.lua` Pfad und keinen Loader, der die Groß-/Kleinschreibung kollidiert.
- Paketmodusmarkierungen sind `dedicated_server` und `singleplayer_manual`.
- ZIP Bytes sind deterministisch und stimmen überein `CHECKSUMS.sha256`.
- Es werden keine Laufzeitdaten, privaten Konfigurationen, Anmeldeinformationen, Caches oder Testausgaben gepackt.
- Alle lokalen Dokumentationslinks und 27 Ländereintragsseiten werden validiert.

<a id="avoid-validation-environment-pitfalls"></a>
## Fallstricke in der Validierungsumgebung vermeiden

- Führen Sie Repository-Schreibprüfungen nacheinander aus, damit nicht zwei Prozesse gleichzeitig dieselbe temporäre Datei ersetzen.
- Unter Windows prüfen Sie ZIP Mitgliedsnamen, anstatt eine Dateisuche ohne Berücksichtigung der Groß- und Kleinschreibung zu verwenden, um zu entscheiden, ob ein Kleinbuchstaben-Loader vorhanden ist.
- Bestätigen `mods.txt` und `enabled.txt` nur in einem Test auf einem installierten Server; Sie sind kein Beweis dafür, dass Quelltests ausgeführt wurden.
- Zeichnen Sie eine Befehlszeitüberschreitung als unvollständig auf. Konvertieren Sie es nicht in „Bestanden“ oder „Fehlgeschlagen“ ohne die begrenzte Ausgabe des Befehls.
- Behalten Sie temporäre Dateien in den ignorierten `.tmp/`Verzeichnis.

<a id="known-limits"></a>
## Bekannten Grenzen

Lokale Validierung, um Quell-, Paket-, Dokumentations- und Fixture-Verträge zu prüfen. Es beweist nicht die Startreihenfolge eines bestimmten Server-Panels, das Nachrichtenlayout eines Live-Clients oder einen hostspezifischen Dateisystempfad. Zeichnen Sie diese als separate Integrationsergebnisse auf, wenn sie getestet werden.
