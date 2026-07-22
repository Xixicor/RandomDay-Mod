<a id="seventeen-families-seventeen-days"></a>
# Siebzehn Familien, siebzehn Tage

> **Kanonisch-englische Quelle:** [FAMILY_ROTATION.md](../../FAMILY_ROTATION.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


RandomDay enthält 17 Spielstilfamilien mit 17 vollständigen Tagesprofilen in jeder Familie. Das ergibt 289 dokumentierte family/dayKombinationen.

Die Familie legt den allgemeinen Stil eines Laufs fest. Die Tage 1 bis 17 zeigen den Fortschritt der Familie in Bezug auf Druck, Erholung, Tempo und Ressourcen. Bei einem Lauf wird eine Bestellung mit jeder Tages-ID genau einmal gespeichert. Ein Neustart führt zur nächsten gespeicherten Position; RandomDay ändert die Familien nicht mitten in der Bestellung.

<a id="selection-modes"></a>
## Auswahlmodi

| Modus | Verhalten bei neuer Ausführung | Während des Laufs |
|---|---|---|
| `selected_run` | Verwendet `profile_family.selected_family`. | Behält diese Familie über alle 17 gespeicherten Positionen hinweg. |
| `non_repeating_random_run` | Wählt eine berechtigte ungenutzte Familie aus. | Behält alle 17 Positionen bei und vermeidet Familienwiederholungen, bis die zulässige Liste erschöpft ist. |
| `rotation_run` | Übernimmt die nächste Familie in der konfigurierten Reihenfolge. | Behält alle 17 gespeicherten Positionen bei. |

Die ausgelieferte Konfiguration verwendet `non_repeating_random_run`. Die nach der endgültigen Speicherung der Position vorbereitete Familie ist immer noch nur vorbereitet; es wird nach dem Neustart aktiv. `cycle.start_day_mode` und `cycle.day_progression_mode`wählen Sie den ersten Tag und die Tagesreihenfolge, ohne die Familienauswahl zu ändern.

<a id="families"></a>
## Familien

- Aktion
- Überleben
- Stealth
- Horde
- Bossjagd
- Aasfresser
- Builder
- Expedition
- Sicherheitssperre
- Biohazard
- Anteverse
- Albtraum
- Verwittert
- Präzision
- Logistik
- Experimentell
- Konformitätstest

Verwenden Sie die [generierten Profilindex](PROFILE/PROFILDOKUMENTATION.md), um eine Familie zu öffnen, oder den [vollständige Profilreferenz](PROFILE/VOLLST%C3%84NDIGE_PROFILREFERENZ.md), um alle 289 Kombinationen zu überprüfen. Die [Sandbox-Schlüsselreferenz](PROFILE/SANDBOX-EINSTELLUNGSSCHL%C3%9CSSEL.md) definiert jeden unterstützten Wert und die standardmäßigen Standardprofile.

<a id="custom-families-and-days"></a>
## Benutzerdefinierte Familien und Tage

Familienquelle lebt unter:

```text
RandomDay/Scripts/ax_profiles/families/
```

Der Markdown und JSON unter `docs/profiles/` sind generierte Referenzen. Ändern Sie die Quelle, nicht die generierte Ausgabe, und führen Sie dann die vollständige profile/schema-Validierung aus. Ein benutzerdefinierter Satz ist nicht fertig, wenn die Analyse nur einen Tag dauert. alle 17 Tage, konfigurierte Profilstandards, Typen, Bereiche und die generierte Referenz müssen übereinstimmen.
