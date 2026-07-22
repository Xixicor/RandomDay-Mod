<a id="troubleshooting"></a>
# Hibaelhárítás

> **Kanonikus angol forrás:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Álljon meg az első sikertelen ellenőrzésnél. A jelenlegi homokozó megőrzése, `runtime/`, `web_export/` és releváns `UE4SS.log` a helyreállítási kísérlet előtt.

<a id="try-these-common-fixes-first"></a>
## Először próbálja ki ezeket a gyakori javításokat

1. **RandomDay soha nem jelenik meg:** erősítse meg a `RandomDay` mappa közvetlenül benne van `ue4ss/Mods`, engedélyezze `RandomDay : 1` in `mods.txt`, és egyszer indítsa el.
2. **A jelenlegi munkamenet megtartotta régi szabályait:** ez normális. RandomDay előkészíti a következő profilt; a játék későbbi indításkor betölti.
3. **Ugyanaz a profil folyamatosan visszatér:** lehet, hogy egy szerverpanel cserélődik `SandboxSettings.ini`. Használjon egy hiteles sandbox fájlt, és hasonlítsa össze az aktív és előkészített neveket a `web_export/today.html`.
4. **Egy opcionális mod nem követte a profilt:** nyissa meg [Támogatott opcionális modok](T%C3%81MOGATOTT_ADAPTEREK.md). A hiányzó, letiltott vagy fel nem ismert opcionális mod változatlan marad.
5. **RandomDay írási vagy visszaállítási hibát jelez:** leállítás az újabb újraindítás előtt, megőrzés `runtime/backups/`, és kövesse az alábbi megnevezett helyreállítási részt.

Ha ez az öt ellenőrzés nem azonosítja a problémát, folytassa a részletes döntési fával.

<a id="choose-the-first-failed-stage"></a>
## Válassza ki az első sikertelen szakaszt

Használja az első sort, amely megfelel annak, amit ténylegesen tud bizonyítani. Ne kezdje a legsúlyosabb magyarázattal, és ne egyesítse a független kimeneti hibákat egyetlen diagnózisban.

| Amit megfigyelhet? | Először ellenőrizze | Folytatás a következővel: | Várható eredmény |
|---|---|---|---|
| Nem `[RandomDay]` kezdővonal létezik itt: `UE4SS.log`. | Telepítse a root, a csomagjelölőket, `mods.txt` és UE4SS Lua indítása. | [Hiányzó RandomDay start](#restore-a-missing-randomday-start) | Egy kezdősor nevezi meg a kiadási és a csomagolási módot, vagy a hiba a betöltéstől függ. |
| RandomDay betöltve, de nem készült el a profil. | Az első indítási, konfigurációs, cél-, tranzakció- vagy állapothiba. | [Helyreállítás a sikertelen előkészítés után](#recover-from-failed-preparation), majd [állapot- és hibareferencia](%C3%81LLAPOT-_%C3%89S_HIBAREFERENCIA.md) | Egy pontos kód azonosítja a biztonságos következő műveletet. |
| Egy előkészített profil létezik, de a futó szabályok nem változtak. | Aktív és előkészített azonosítók itt: `today.json` vagy `today.html`. | [Erősítse meg az újraindítási határt](#confirm-the-restart-boundary) | Az aktuális munkamenet aktív marad; az elkészített profil későbbi kezdésre vár. |
| Az 1. vagy egy másik nap ismétlődik az újraindítás után. | Sandbox jelölők a panel indítása előtt, a panel indítása után és az előkészítés után. | [Hagyja abba az ismételt előkészítést](#stop-repeated-preparation) | A mérvadó író vagy felülíró pont azonosítva. |
| A sandbox rendben van, de egy opcionális mod kimaradt vagy meghiúsult. | Az egyedi adapter eredménye és a kompatibilitási bizonyíték. | [Kihagyott adapter diagnosztizálása](#diagnose-a-skipped-adapter) vagy [Az adapter visszagörgetési hibájának helyreállítása](#recover-an-adapter-rollback-failure) | Az adapter állapota a sandbox állapotától függetlenül történik. |
| A kézikönyv singleplayer/LAN fájl hiányzik. | Csomag mód és korlátos kimeneti mappa. | [Hiányzó singleplayer/LAN fájl](#generate-a-missing-singleplayerlan-file) | A fájl a RandomDay személyes mentés felfedezése nélkül. |
| Csak a játékos felé mutató üzenet hiányzik vagy rosszul van csomagolva. | Üzenetküldési napló, forrás előnézete és dokumentált korlátok. | [Üzenetprobléma diagnosztizálása](#diagnose-a-message-problem) | A prezentációt anélkül teszteljük, hogy profilellenőrzésként kezelnék. |

<a id="follow-the-safe-diagnostic-order"></a>
### Kövesse a biztonságos diagnosztikai sorrendet

1. Őrizze meg a jelenlegi bizonyítékokat, mielőtt fájlokat módosít.
2. Bizonyítsa be, hogy RandomDay betöltve.
3. Keresse meg az első szakaszt, amely nem érte el a dokumentált eredményt.
4. Másolja a pontos állapot- vagy hibaértéket a futásidejű kimenetről.
5. Használja az alábbi egyező táblázatsort egy biztonságos válaszhoz.
6. Olvassa vissza a cél és a forgatás állapotát, mielőtt újabb kezdést kapna.

Ha egyik sor sem egyezik, használja a [Futási állapot és kimenet referencia](FUT%C3%81SI_IDEJ%C5%B0_KIMENETEK.md) a termelő és a mező jelentésének azonosításához a konfiguráció módosítása előtt.

<a id="restore-a-missing-randomday-start"></a>
## Hiányzó RandomDay start

**Valószínűleg korlátozott ok:** rossz kibontási elrendezés, letiltott mod, rossz csomagmód vagy UE4SS nem töltötte be a Lua belépési pontot.

**Pontos ellenőrzés:** megerősítés `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version` és `RandomDay/Scripts/main.lua`; megerősítés `RandomDay : 1` in `mods.txt`; keresés `UE4SS.log` ehhez: `[RandomDay]`.

**Várt eredmény:** egy kezdősor nevezi el a kiadási azonosítót és a csomag módot.

**A következő biztonságos művelet:** állítsa le az elrendezést vagy az engedélyezést, majd indítsa el egyszer.

**Ne következtessen:** nem RandomDay sor nem bizonyítja a játék- vagy profilhibát.

<a id="confirm-the-restart-boundary"></a>
## Erősítse meg az újraindítási határt

**Valószínűleg korlátozott ok:** normál következő újraindítási viselkedés.

**Pontos ellenőrzés:** az aktív és az előkészített family/day in `web_export/today.json` vagy `today.html`.

**Várt eredmény:** az elkészített profil eltér az aktív profiltól, vagy kifejezetten elkülönül attól.

**A következő biztonságos művelet:** csak akkor indítsa újra, ha készen áll az aktiválásra, majd ellenőrizze az aktív jelölőt.

**Ne következtessen:** egy előkészített profil nem aktív az újraindítás utáni visszaolvasás előtt.

<a id="stop-repeated-preparation"></a>
## Hagyja abba az ismételt előkészítést

**Valószínűleg korlátozott ok:** az aktív RandomDay jelölő hiányzik, mert egy szerverpanel vagy más eszköz átírta a `SandboxSettings.ini` indításkor.

**Pontos ellenőrzés:** hasonlítsa össze a sandbox fájlt és a RandomDay jelölő közvetlenül indítás előtt, a panel elindulása után és után RandomDay előkészíti a fájlt.

**Várt eredmény:** a következő rendszerindításkor jelen lévő fájl megtartja az előkészített jelölőt.

**A következő biztonságos művelet:** konfiguráljon egy hiteles sandbox-forrást, és tiltsa le az ütköző panel átírását.

**Ne következtessen:** ismétlődő 1. nap nem bizonyítja, hogy a családválasztó helytelenül randomizál.

<a id="recover-from-failed-preparation"></a>
## Helyreállítás a sikertelen előkészítés után

**Valószínűleg korlátozott ok:** függőben lévő írás, biztonsági mentés, promóció, éles visszaolvasás, érvényesítés vagy visszaállítás sikertelen.

**Pontos ellenőrzés:** olvassa el az elsőt `[RandomDay] [ERROR]` sort, és őrizze meg a megnevezett művelet biztonsági másolatát. Vizsgálja meg `runtime/last_good/manifest.lua` a sandbox fájl használata előtt.

**Várt eredmény:** vagy az előző fájl visszaállításának igazolása, vagy az eredmény egyértelműen visszaállítási hibáról számol be.

**A következő biztonságos művelet:** tartsa leállítva a szervert, és kövesse a [kézi helyreállítás](M%C5%B0VELETEK.md#manual-recovery).

**Ne következtessen:** egy biztonsági mentési fájl megléte önmagában nem bizonyítja, hogy megfelel a tervezett aktív világállapotnak.

<a id="diagnose-a-skipped-adapter"></a>
## Kihagyott adapter diagnosztizálása

**Valószínűleg korlátozott ok:** a mod hiányzik, vagy a fájl nem egyezik a támogatott aláírással.

**Pontos ellenőrzés:** olvassa el az adapter eredményét, és hasonlítsa össze a telepített verziót és elrendezést a [Támogatott modadapterek](T%C3%81MOGATOTT_ADAPTEREK.md).

**Várt eredmény:** `not_installed` hiányzó cél esetén vagy `skipped_incompatible` egy fel nem ismert célhoz.

**A következő biztonságos művelet:** hagyja változatlanul a fájlt, tiltsa le az adaptert, vagy telepítsen egy pontosan támogatott verziót az eredeti szerzőtől.

**Ne következtessen:** hasonló fájlnév vagy újabb verzió nem bizonyítja a kompatibilitást.

<a id="recover-an-adapter-rollback-failure"></a>
## Az adapter visszagörgetési hibájának helyreállítása

**Valószínűleg korlátozott ok:** sem az írási kísérlet, sem az automatikus visszaállítás nem ellenőrizhető.

**Pontos ellenőrzés:** a cél megőrzése, testvér pending/rollback fájlok, az adapter állapota és a legújabb adapter biztonsági mentése a `runtime/backups/`.

**Várt eredmény:** az eredmény: `rollback_failed`, nem `applied`.

**A következő biztonságos művelet:** az érintett leállítása mod/server és állítsa vissza manuálisan az ellenőrzött biztonsági másolatot az újabb indítás előtt.

**Ne következtessen:** RandomDay's elsődleges sandbox eredmény nem bizonyítja, hogy a különálló adaptercél egészséges.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Hiányzó singleplayer/LAN fájl

**Valószínűleg korlátozott ok:** a dedikált csomag telepítve lett, a módjelző érvénytelen, vagy RandomDay nem töltődött be.

**Pontos ellenőrzés:** `.randomday_mode` tartalmaznia kell a `singleplayer_manual`; majd erősítse meg a RandomDay kezdővonal és ellenőrzés `runtime/singleplayer_manual/SandboxSettings.ini`.

**Várt eredmény:** a fájl a RandomDay csak mappa.

**A következő biztonságos művelet:** telepítse tisztán a megfelelő csomagot, és indítsa el egyszer.

**Ne következtessen:** RandomDay nem keresi és nem írja meg a célvilágot az Ön nevében.

<a id="diagnose-a-message-problem"></a>
## Üzenetprobléma diagnosztizálása

**Valószínűleg korlátozott ok:** nem volt elérhető érvényes játékoskarakter az ütemezett passznál, a figyelmeztető átvitel nem volt elérhető, vagy a kliens kijelzője másképp tördelte a szöveget.

**Pontos ellenőrzés:** ellenőrizze a `[RandomDay]` üzenetnaplót, és hasonlítsa össze a forrásüzenetet a dokumentált hosszkorláttal.

**Várt eredmény:** a futási idő jelenti, hogy futott-e üzenetküldés; A forrásellenőrzés a maximális hosszt jelenti.

**A következő biztonságos művelet:** ellenőrizze a kívánt ügyfélfeloldást. Tartsa külön a játékmenetet és a profilellenőrzést az üzenet eredményétől.

**Ne következtessen:** egy látható üzenet nem bizonyítja a sandbox profil alkalmazását, a hiányzó üzenet pedig nem bizonyítja, hogy az előkészítés sikertelen volt.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Négy profilszintű választási lehetőség visszatért a szállított értékekhez

**Valószínűleg korlátozott ok:** csak a generált `SandboxSettings.ini` szerkesztve, vagy `server.lua` módosult, miközben ugyanaz a Lua folyamat még futott.

**Pontos ellenőrzés:** állítsa le a játékot vagy a dedikált szervert, nyissa meg a `RandomDay/Scripts/ax_config/server.lua`, és erősítse meg a mentést `sandbox.profile_overrides` blokk tartalmazza a kívánt négy értéket.

**Várt eredmény:** a következő indítás után minden újonnan elkészített family/day profil tartalmazza a kiválasztott értékeket. A későbbi profilforgatások és a szerver elindítása továbbra is ugyanazt a blokkot használja.

**A következő biztonságos művelet:** javítsa ki a blokkot, indítsa el egyszer, és ellenőrizze az előkészített profilt. Ne csak a generált sandbox fájlt javítsa, mert egy későbbi előkészítés lecseréli.

<a id="look-up-an-exact-status"></a>
## Keresse meg a pontos állapotot

Miután a döntési fa azonosítja a hibás szakaszt, másolja ki a pontos `status`, `transaction_status`, `rollback_status` vagy `error` érték a futásidejű exportálásból. Használja a [állapot- és hibareferencia](%C3%81LLAPOT-_%C3%89S_HIBAREFERENCIA.md) jelentéséért és egy biztonságos kezelői válaszért. A panelen vagy konzolon található hasonló megfogalmazás nem helyettesíti az exportált értéket.

A csak közreműködői tesztkörnyezeti hibák ide tartoznak a [kiadás-érvényesítési](AZ_%C3%89RV%C3%89NYES%C3%8DT%C3%89S_FELOLD%C3%81SA.md#avoid-validation-environment-pitfalls), nem az operátor helyreállítási útvonalán.
