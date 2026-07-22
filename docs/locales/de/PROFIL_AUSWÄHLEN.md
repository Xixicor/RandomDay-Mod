<a id="choose-the-kind-of-game-you-want"></a>
# Wählen Sie die Art von Spiel, die Sie möchten

> **Kanonisch-englische Quelle:** [CHOOSE_A_PROFILE.md](../../CHOOSE_A_PROFILE.md). Diese lokalisierte Dokumentation bewahrt genaue Befehle, Pfade, Schlüssel, Statuswerte, Hashes und Dateinamen. Wenn der technische Wortlaut abweicht, verwenden Sie die englische Quelle.


RandomDay enthält 289 vorgefertigte Sätze von Weltregeln. Sie sind in 17 **Familien** mit 17 **Profilen** in jeder Familie organisiert:

- Eine Familie ist ein umfassender Spielstil, wie Überleben, Bauen, Heimlichkeit oder Erkundung;
- Ein Profil ist ein vollständiger Satz von Regeln innerhalb dieses Spielstils; und
- Die Profilnummer wird als Tag bezeichnet, da RandomDay diese 17 Positionen durchläuft, wenn der Server neu startet. Es handelt sich nicht um einen realen Kalendertag.

Beginnen Sie mit der folgenden Tabelle. Wählen Sie die Zeile aus, die der gewünschten Sitzung am nächsten kommt, und öffnen Sie dann eine oder zwei Familienseiten, um deren genaue Auswirkungen zu vergleichen.

<a id="start-with-a-playstyle"></a>
## Beginnen Sie mit einem Spielstil

| Sie möchten | Beginnen Sie mit | Vergleichen Sie diese Effekte |
|---|---|---|
| Häufiger direkter Kampf oder schärfer Feuergefechte | [Aktion](PROFILE/FAMILIEN/AKTIONSPROFILFAMILIE.md), [Horde](PROFILE/FAMILIEN/HORDE-PROFILFAMILIE.md), [Bossjagd](PROFILE/FAMILIEN/BOSS_HUNT-PROFILFAMILIE.md) oder [Präzision](PROFILE/FAMILIEN/PR%C3%84ZISIONSPROFILFAMILIE.md) | Gegneranzahl, Begegnungsstufe, Genauigkeit, Schaden und Erholungstage |
| Erkennung, Dunkelheit oder Patrouillendruck | [Stealth](PROFILE/FAMILIEN/STEALTH-PROFILFAMILIE.md), [Albtraum](PROFILE/FAMILIEN/ALBTRAUM-PROFILFAMILIE.md) oder [Sicherheitssperre](PROFILE/FAMILIEN/SECURITY_LOCKDOWN-PROFILFAMILIE.md) | Sichtbarkeit, Erkennungsgeschwindigkeit, Nachtvoreingenommenheit, Roboter und sichere Intervalle |
| Hunger, Wetter, Kontamination oder Abnutzung | [Überleben](PROFILE/FAMILIEN/SURVIVAL-PROFILFAMILIE.md), [Verwittert](PROFILE/FAMILIEN/VERWITTERTE_PROFILFAMILIE.md) oder [Biohazard](PROFILE/FAMILIEN/BIOHAZARD-PROFILFAMILIE.md) | Ressourcen, Wasser, Strahlung, Wetter, Haltbarkeit und Todesstrafen |
| Basiswachstum, Transport, Bestand oder Versorgungsplanung | [Builder](PROFILE/FAMILIEN/BUILDER-PROFILFAMILIE.md) unverändert oder [Logistik](PROFILE/FAMILIEN/LOGISTIK_PROFILFAMILIE.md) | Stapelgröße, Inventar, Gewicht, Haltbarkeit, Leistung und Baudruck |
| Reisen, Portale, Beuterouten oder Erkundungen | [Expedition](PROFILE/FAMILIEN/EXPEDITION-PROFILFAMILIE.md), [Anteverse](PROFILE/FAMILIEN/ANTEVERSE-PROFILFAMILIE.md) oder [Aasfresser](PROFILE/FAMILIEN/SCAVENGER-PROFILFAMILIE.md) | Bewegung, Portaldruck, Belohnungen, Routenrisiko und Zeit außerhalb der Basis |
| Unvorhersehbare Kombinationen oder eine umfassende Abschlussherausforderung | [Experimentell](PROFILE/FAMILIEN/EXPERIMENTAL-PROFILFAMILIE.md) unverändert oder [Konformitätstest](PROFILE/FAMILIEN/COMPLIANCE-TEST-PROFILFAMILIE.md) | Jeden Tag in diesen bewusst gemischten Abläufen |

Diese Vorschläge dienen der Orientierung und ersetzen nicht die genauen Werte. Auf jeder Familienseite werden die wichtigsten aufgeführt Effekte, Domänenbewertungen, Begegnungskontext, alle 46 Sandbox-Einstellungen und optionale Adapterauswahlen für jeden Tag.

<a id="confirm-the-exact-family-and-day"></a>
## Bestätigen Sie die genaue Familie und den genauen Tag

1. Öffnen Sie die Familienseite und vergleichen Sie alle 17 Tagespositionen.
2. Verwenden Sie die [vollständige Profilreferenz](PROFILE/VOLLST%C3%84NDIGE_PROFILREFERENZ.md), um Vergleichen Sie Profilnamen und Interpretationsregeln für alle 289 Kombinationen.
3. Verwenden Sie [Sandbox-Einstellungsschlüssel](PROFILE/SANDBOX-EINSTELLUNGSSCHL%C3%9CSSEL.md) zum Interpretieren jedes Rohwerts, unterstützten Bereichs, Bewertungsbands und standardmäßigen Standardprofils.
4. Verwenden Sie [`profiles.generated.json`](../../profiles/profiles.generated.json) wenn Werkzeuge das genaue maschinenlesbare Profil, Wörterbuch und die Übersetzungsquelle benötigen.

<a id="configure-the-chosen-experience"></a>
## Konfigurieren Sie die Auswahl Erlebnis

Folgen Sie [Wählen Sie ein Erlebnis](KONFIGURATION.md#choose-an-experience) zum Festlegen des Familienmodus, der Liste der berechtigten Familien, Verhalten am Starttag und sequentielle oder sich nicht wiederholende zufällige Tagesreihenfolge. RandomDay behält die gewählte Reihenfolge bei; Bei der Wiederherstellung wird ein laufender Familienlauf nicht stillschweigend neu gestartet.
