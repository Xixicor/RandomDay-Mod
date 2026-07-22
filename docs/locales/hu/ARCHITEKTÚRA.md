<a id="architecture-and-data-flow"></a>
# Architektúra és adatfolyam

> **Kanonikus angol forrás:** [ARCHITECTURE.md](../../ARCHITECTURE.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


RandomDay egy korlátozott feladattal rendelkezik: készítsen elő egy teljes sandbox-profilt a jövőbeni kezdéshez anélkül, hogy a profilt aktívnak nevezné az aktuális folyamat során. Az aktív profil a sandbox fájl jelölőjéből származik, amelyet az Abiotic Factor a UE4SS elindítása előtt töltött be RandomDay. Az előkészített profil egy különálló, ellenőrzött fájlállapot a következő újraindításhoz.

<a id="package-modes"></a>
## Csomagmódok

A kiadáskészítő két ZIP-et állít elő pontosan ugyanabból a forráslistából, és beállítja a `RandomDay/.randomday_mode` mindegyikben másként.

| Mód | Elsődleges kimenet | Automatikus külső írások |
|---|---|---|
| `dedicated_server` | Dedikált szerver megoldva `SandboxSettings.ini` | Elsődleges homokozó, szándékosan konfigurált tükrök és felismert opcionális adapterek. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Nincs a RandomDay mappán kívül; a tükrök és az adapterek le vannak tiltva. |

`RandomDay/.randomday_version` és `RandomDay/.randomday_mode` generált csomagjelölők. `RandomDay/Scripts/ax_core/version.lua` beolvassa őket; az operátorok nem szerkeszthetik azokat a telepítés után.

<a id="session-modes"></a>
## Munkamenet módok

Csomagolási mód vezérlői, ahová a RandomDay írhat. `experience.mode` külön leírja a tervezett életciklust:

| Munkamenet mód | Csomag | Életciklus-szerződés |
|---|---|---|
| `persistent_dedicated` | Dedikált | Folytassa a tartós családi és 17 pozíciós napi rendelést a hosszú távú újraindítások során. |
| `temporary_dedicated` | Dedikált | Minden egyes indítást korlátozott lejátszási munkamenetként kezeljen, miközben megőrzi az indítások közötti sorrendet. |
| `singleplayer_lan` | Egyjátékos kézikönyv | Mod-local fájl létrehozása az operátor által kiválasztott világhoz; nincs mentési felfedezés vagy automatikus másolás. |

`auto` feloldása a következőre: `persistent_dedicated` a dedikált csomagban és `singleplayer_lan` a kézikönyvcsomagban. A munkamenet mód nem változtatja meg a motor határait: az aktuális folyamat már betöltötte a homokozóját, mielőtt a RandomDay végrehajtódna.

<a id="startup-path"></a>
## Indítási útvonal

1. UE4SS betölti a `RandomDay/Scripts/main.lua`.
2. A belépési pont felold egyet `RandomDay/` gyökér és betölt `Scripts/ax_core/init.lua`.
3. `init.lua` betölti a konfigurációt, a profilokat, a naptárat, az írót, az adaptereket, az állapotot, a webes exportálást és a lejátszó-üzenet modulokat. Elutasítja az érvénytelen csomagmódot vagy letiltja a tranzakciós biztonsági zárolást. Érvényesíti a csomaggal kompatibilis munkamenet módot, a kezdőnapi módot, a konfigurált kezdőnapot és a nap-progresszív módot is.
4. Minden családi építmény érvényes `sandbox.profile_overrides` innen: `Scripts/ax_config/server.lua`. A négy profilszintű választás a family/day értékek és a fennmaradó invariáns szabályok előtt, így minden előkészített profil ugyanazokat a konfigurált lehetőségeket használja.
5. A futásidejű és webes kimeneti gyökerek a feloldott mod mappához vannak rögzítve. Az egyjátékos mód a kiválasztás előtt egy mod-local kimenetre csökken.
6. `ax_cycle/calendar.lua` beolvassa a homokozó jelölőt és a helyreállítható elforgatási állapotot, majd létrehoz egyet active/prepared döntést ehhez a játékfolyamathoz.
7. `ax_sandbox/writer.lua` sorba rendezi és ellenőrzi az előkészített profilt, majd tranzakciós cserét használ a kiválasztott célhoz.
8. A forgatás állapota csak a sandbox-tranzakció sikeressége után kerül végrehajtásra. Az állapot-végrehajtási hiba leromlott: az adapterek és a lejátszó előkészített üzenetei kimaradnak, mert a sandbox és a sor állapota nem egyezik.
9. Dedikált módban `ax_external/bridge.lua` az opcionális adaptereket az aktív profilhoz viszonyítja. Az első bootstrap során nem létezik aktív marker, ezért az előkészített configured/random kezdőnapi profil az egyetlen elérhető adapter-leképezés.
10. Futási idő JSON/text állapot és a HTML/JSON web nézet ugyanabból a döntésből íródik át. A lejátszó értesítései utoljára kerülnek telepítésre.

Az alapértelmezett `cycle.check_interval_ms=0` ezt a sorozatot egyszer lefuttatja indításkor. Ha egy operátor pozitív intervallumot ad meg, és UE4SS felfedi `LoopAsync`, a későbbi visszahívások újra felhasználják a folyamat tulajdonában lévő kijelölést. Kijavíthatják vagy újraexportálhatják ezt a kijelölést, de nem választhatnak másik napot ugyanazon folyamat során.

<a id="rotation-state-machine"></a>
## Forgatás állapotgépe

| Kiválasztás állapota | Belépési feltétel | Elkészített eredmény | Biztonságos helyreállítás |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Nincs aktív marker és nincs helyreállítható előkészített állapot. | Konfigurált vagy véletlenszerűen kiválasztott első pozíció egy újonnan megmaradt napi rendelésben. | A meglévő munkamenet futása; csak `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | Az aktív nap nem az utolsó pozíció a tárolt rendelésben. | Következő tárolt pozíció ugyanabban a családban. | Ha a kitartás sikertelen, állítsa le a szervert, és hangolja össze a homokozó és a forgatás állapotát. |
| `active_marker_found_completed_run_prepare_next_unused_family` | Az aktív nap a tárolt rendelés utolsó pozíciója. | Első pozíció egy új rendelésből a következő jogosult családi vállalkozásban. | Erősítse meg az újat family/day/order újraindítás előtt. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Nincs aktív jelölő, de a forgatás állapota egy előkészített profilt nevez meg. | Ugyanaz a sorba állított profil újraépül. | Megőrzi az állapotfájlokat; ne törölje őket az újragörgetés kényszerítéséhez. |
| `supervision_reconfirm_prepared_profile_no_advance` | Egy későbbi visszahívás fut ugyanabban a folyamatban. | Ugyanaz az előkészített profil. | Az első sikertelen szakasz diagnosztizálása; az ismételt visszahívások nem új választások. |

`selected_run` mindig használja a `selected_family`. `rotation_run` felhasználja a konfigurált jogosult rendelést. `non_repeating_random_run` kiválaszt a fennmaradó jogosult családok közül, és új csoportot indít, miután minden befejeződött. Minden mód egy családot tart fenn mind a 17 egyedi napazonosítóig a `day_order` befejeződött. A szekvenciális mód a 17. nap után fut, ha a konfigurált kezdés nem az 1. nap; A nem ismétlődő véletlenszerű mód egyetlen permutációt tárol, és soha nem görgeti újra a helyreállítás során.

<a id="sandbox-transaction"></a>
## Sandbox tranzakció

Az író az összes kulcsot kanonikus sorrendben jeleníti meg, és írás előtt érvényesíti a típusokat, tartományokat, rögzített szabályokat, jelölőértékeket és profilazonosságot. A csere a következő sorrendben történik:

1. csak akkor távolítson el egy elavult függőben lévő fájlt, ha biztonságosan megteheti;
2. megőrzi vagy leállítja a már meglévő helyreállítási oldalkocsikat;
3. írja a függőben lévő bájtokat;
4. olvassa vissza a függőben lévő fájlt, és érvényesítse azt;
5. hozzon létre egy ellenőrzött műveleti biztonsági másolatot, ha létezik egy cél;
6. tartsa meg az eredetit tranzakció-visszaállítási fájlként;
7. a függőben lévő fájl népszerűsítése;
8. olvassa el és ellenőrizze az éles fájlt;
9. visszaállítja a megtartott eredetit, ha a promóció vagy a gyártás ellenőrzése sikertelen;
10. megőrzi a helyreállítási adatokat, és jelentse a hibát, ha a tisztítás nem ellenőrizhető.

Az első írás ugyanazt használja pending/readback/validation elérési út. Eredeti cél hiányában nincs mit visszaállítani, ezért a sikertelen első írást nem szabad eredeti fájl helyreállításaként jelenteni.

<a id="adapter-boundary"></a>
## Adapter határa

Az adapterek RandomDay-owned javításdefiníciók külön telepített modokhoz. A hídhoz először egy felismert célútvonalra és teljes kulcsaláírásra van szükség. Csak a meglévő hozzárendeléseket javítja, biztonsági mentéseket hoz létre a műveletekről, minden tervezett fájlt egyetlen tranzakcióként alkalmaz, és minden érintett célt visszaállít, ha valamelyik lépés sikertelen. A hiányzó és nem kompatibilis célok normál opcionális eredmény.

RandomDay nem tölti be a harmadik féltől származó kódot a csomagjába. A fixture-alapú elrendezés a RandomDay's az elemző és a tranzakció viselkedése, nem pedig az, hogy egy harmadik féltől származó kiadás töltötte be vagy használta az értékeket egy játékfolyamat során.

<a id="output-boundary"></a>
## Kimeneti határ

A futásidejű fájlok az alábbiakban jönnek létre `RandomDay/runtime/` és `RandomDay/web_export/`; egyik sem kiadási ZIP bemenet. Az állapotíró eltávolítja a gépi helyi adapter elérési útjait a nyilvános JSON diagnosztika. A teljes útvonal, séma, ütem és megőrzési térkép a [Futásidejű fájlok és állapot](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md).

<a id="failure-ownership"></a>
## Hiba miatti tulajdonjog

| Sikertelen szakasz | Tulajdonos által látható következmény |
|---|---|
| Profil vagy INI érvényesítés | Nem történt éles írási kísérlet. |
| Függőben write/readback | A meglévő éles bájtok a helyükön maradnak. |
| Művelet biztonsági mentése | A csere leáll az eredeti áthelyezése előtt. |
| Promóció vagy gyártási ellenőrzés | A rendszer megkísérli az automatikus visszaállítást, és az eredményt jelenti. |
| Forgatási állapot fennmaradása | Létezhetnek előkészített sandbox bájtok, de az átmenet leromlott, és adapters/messages kimaradt. |
| Adapter kompatibilitás | A cél változatlan marad a `not_installed` vagy `skipped_incompatible`. |
| Adapter write/readback | Ha lehetséges, minden módosított adaptercél visszaáll. |
| Állapot vagy webes exportálás | A sandbox eredmény továbbra is mérvadó; A kimeneti hiba naplózásra kerül, és nem kezelhető sikeres jelentésként. |

Kövesd [Műveletek](M%C5%B0VELETEK.md) a helyreállításhoz és a [Hibaelhárítás](HIBAELH%C3%81R%C3%8DT%C3%81S.md) a tünet-első ellenőrzéshez.

<a id="evidence-limit"></a>
## Bizonyítéki korlát

A helyi Lua fixture csomag bizonyítja a forrás viselkedését, a generált profilinvariánsokat, a tranzakciós ágakat és a kimeneti ágakat bizonyítja. épít, egy áram UE4SS kiadás, egy adott szerverpanel, minden megjelenítési méret vagy egy nem tesztelt, harmadik féltől származó mod verzió. Ezek a követelések továbbra is fennállnak `not tested`, amíg a névvel ellátott kompatibilitási futtatást rögzítik.
