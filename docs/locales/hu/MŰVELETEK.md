<a id="operate-active-prepared-and-recovery-state"></a>
# Aktív, előkészített és helyreállítási állapot működtetése

> **Kanonikus angol forrás:** [OPERATIONS.md](../../OPERATIONS.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


RandomDay módosítja a sandbox fájlt egy jövőbeli rendszerindításhoz. Nem változtatja meg a futó Abiotikus faktor munkamenetbe már betöltött szabályokat.

Ez az oldal birtokolja a kezelői döntéseket és a helyreállítási eljárásokat. Használja a [Szószedet](SZ%C3%93SZEDET.md) a kanonikus kifejezésekhez, [Futóidejű fájlok](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md) az útvonal tulajdonjogához, és [Futási idejű kimenetek](FUT%C3%81SI_IDEJ%C5%B0_KIMENETEK.md) a pontos sémák és mezőjelentésekért.

<a id="distinguish-active-and-prepared-state"></a>
## Az aktív és az előkészített állapot megkülönböztetése

Egy előkészített profil nem aktív, amíg egy későbbi indítás nem olvassa be a jelölőjét. Ne használja az elkészített family/day az aktuális munkamenet leírásához.

Használja a `web_export/today.html` olvasható összefoglaló és `web_export/today.json` a pontos állapotért. Erősítse meg az aktív jelölőt, az előkészített azonosságot, `prepared_ready`, `profile_status`, a tranzakció eredménye, a visszaállítás eredménye és a véglegesítési állapot eredménye az újraindítás előtt.

<a id="follow-the-normal-dedicated-server-sequence"></a>
## Kövesse a normál dedikált szerver sorrendet

| Előtte | Művelet | Utána |
|---|---|---|
| Nem RandomDay jelölő | Kezdje ezzel: RandomDay engedélyezve. | A jelenlegi munkamenet megtartja a meglévő szabályait; RandomDay létrehoz és fenntart egy napi rendelést, majd elkészíti az első configured/random pozíciót. |
| Első pozíció előkészítve | Indítsa újra. | Ez a nap aktívvá válik; a következő tárolt pozíció ugyanabban a családban készül el. |
| A középső pozíció aktív | Az előkészített profil áttekintése után indítsa újra. | Az előkészített nap aktívvá válik, és a következő tárolt pozíció készül el. |
| Végső pozíció aktív | A következő család áttekintése után indítsa újra. | Egy másik jogosult családi rendelés első pozíciója aktívvá válik. |

`selected_run` megtartja a konfigurált családot. `non_repeating_random_run` megtartja a véletlenszerűen kiválasztott családot mind a 17 napos pozícióban, és elkerüli a család újrafelhasználását, amíg a jogosult lista ki nem merül. `rotation_run` a beállított családi sorrendet követi. `cycle.day_progression_mode` a családválasztástól függetlenül szabályozza a napi sorrendet.

A friss telepítésnek mindig egy folyamatra van szüksége az előkészítéshez és egy későbbi folyamathoz az aktiváláshoz. Ez igaz az állandó kiszolgálókra, az ideiglenes kiszolgálókra és a kézi singleplayer/LAN generáció.

<a id="read-the-right-evidence"></a>
## Olvassa el a megfelelő bizonyítékot

Használja a [futásidejű fájltérkép](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md) az elforgatási állapot, az aktuális állapot, a legutoljára ismert fájlok, a műveletek biztonsági mentései, az exportálások és a `UE4SS.log` részben. Használja a [futásidejű kimeneti hivatkozás](FUT%C3%81SI_IDEJ%C5%B0_KIMENETEK.md) minden mezőcsoporthoz, sémához, üres állapothoz, hibajelentéshez és megőrzési szabályhoz. A HTML és JSON exportok összegzik a forrás állapotát; nem bizonyítják, hogy egy profilt élő játékkliens használt.

Ha `prepared_ready` `false` vagy `profile_status` `degraded_state_persistence`, tartsa leállítva a szervert, amíg a sandbox és a forgatás állapota megegyezik. Egy érvényes sandbox-írás sikertelen állapotmaradással nem egy egészséges előkészített átmenet.

<a id="respond-to-writer-outcomes"></a>
## Válasz az írói eredményekre

RandomDay előkészíti az új bájtokat egy testvérfájlban, visszaolvassa őket, érvényesíti a teljes sandboxot, megőrzi az eredetit, ha létezik, előlépteti az új fájlt, és újra visszaolvassa. Csak azután készen áll a jelentésekre, ha az éles visszaolvasás beleegyezik.

Ha a promóció vagy a gyártási ellenőrzés sikertelen, RandomDay megkísérli visszaállítani az adott művelet által tárolt fájlt. A visszaállítási hiba kemény megállás: állítsa le a kiszolgálót, és állítsa helyre manuálisan, ne pedig ismételje meg újraindítását.

<a id="respond-to-adapter-outcomes"></a>
## Válasz az adapter eredményeire

Használja a [Támogatott adapterek](T%C3%81MOGATOTT_ADAPTEREK.md#read-an-adapter-result) a kanonikus hatállapotú eredménytáblázathoz és a következő művelethez. Kezelése `rollback_failed` kemény stopként; a külön rögzített adapter biztonsági másolata a helyreállítási forrás.

Az adapterek csak a külön telepített modokra vannak hatással. Soha nem tesznek aktívvá egy előkészített RandomDay sandbox profilt.

Normál rendszerindításkor az adapterértékek az aktív profilból kerülnek kiválasztásra, mert a külön telepített mod később ugyanabban a UE4SS indításkor betöltődik. Az első bootstrap során, amikor nem létezik aktív RandomDay jelölő, az előkészített kezdőnapi profil az egyetlen elérhető leképezés. Ez az időzítési szabály elkülönül a következő újraindítás sandbox határától, és továbbra is a másik mod saját betöltési viselkedésétől függ.

<a id="manual-recovery"></a>
## Kézi helyreállítás

1. Állítsa le a játékot vagy a szervert. Ne állítson vissza egy fájlt, amíg meg van nyitva.
2. Az aktuális `SandboxSettings.ini`, `runtime/` és `web_export/` egy külön diagnosztikai biztonsági másolathoz.
3. Vizsgálja meg `runtime/last_good/manifest.lua` és a legújabb vonatkozó bejegyzés a `runtime/backups/`. Válasszon egy fájlt, amelynek family/day és a hash megegyezik a visszaállítani kívánt állapottal.
4. Másolja a kiválasztott ellenőrzött fájlt a konfigurált elsődleges sandbox elérési útra.
5. Olvassa el újra, és ellenőrizze, hogy elkészült-e, mielőtt elkezdené.
6. Indítsa el egyszer, és ellenőrizze az aktív jelölőt és az előkészített állapotot. Ne feltételezze, hogy a helyreállítás csak hibaüzenet hiányából sikerült.

Ha nem létezik ellenőrzött biztonsági másolat, állítsa vissza a telepítés előtt létrehozott kezelői biztonsági másolatot. RandomDay nem tud rekonstruálni olyan fájlt, amely soha nem volt olvasható.

<a id="account-for-control-panel-writes"></a>
## A vezérlőpult írásainak fiókja

Néhány szerverpanel generál `SandboxSettings.ini` az indítás során. RandomDay nem tudja megőrizni az előkészített profilt, ha egy másik eszköz felülírja azt az írás ellenőrzése után. Állítson be egy mérvadó sandbox-forrást, és ellenőrizze a fájljelölőt közvetlenül az újraindítás előtt és után, amikor ismétlődő 1. nap vagy hiányzó átmenet diagnosztizálása történik.
