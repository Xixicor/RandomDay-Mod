<a id="randomday-profile-documentation"></a>
# RandomDay Profildokumentation

> **Kanonisch-englische Quelle:** [README.md](../../../profiles/README.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


Version: `v0.3.16-alpha`

- Familien: **17**
- Profile: **289**
- SandboxSettings Wörterbucheinträge: **46**

Wählen Sie eine Familie nach Spielabsicht im [Leitfaden zur Profilauswahl](../PROFIL_AUSW%C3%84HLEN.md) aus und verwenden Sie dann diesen generierter Index für genaue Werte.

Diese Dateien werden aus der Laufzeit-Lua-Quelle und ihrem dictionary/translation-Vertrag generiert. Sie zeigen die ausgelieferten `sandbox.profile_overrides` Standardeinstellungen; Die konfigurierten Werte eines Servers können unterschiedlich sein:

- `profiles.generated.json`: maschinenlesbare Profile, Rohwerte, Wörterbuch und Übersetzungen.
- `FULL_PROFILE_REFERENCE.md`: vollständiger Index und Interpretationsregeln.
- `SANDBOX_SETTINGS_KEYS.md`: vollständiges 46-Tasten-Wörterbuch.
- `families/*.md`: detaillierte 17-Tage-Familienreferenzen.

Neugenerieren mit: `python -B tools/generate_profile_docs.py` Auf Drift prüfen mit: `python -B tools/generate_profile_docs.py --check`
