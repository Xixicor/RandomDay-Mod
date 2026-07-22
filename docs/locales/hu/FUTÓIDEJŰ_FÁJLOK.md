<a id="locate-runtime-files-and-status"></a>
# A futásidejű fájlok és állapotok megkeresése

> **Kanonikus angol forrás:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Ez az operátorok által használt kanonikus elérési útvonal leltár és a forrás nyomon követhetősége. Megválaszolja, hol van egy fájl, ki írja, mikor változik, mennyi ideig marad meg, és melyik helyreállítási szerepet tölti be. A [futásidejű kimeneti hivatkozás](FUT%C3%81SI_IDEJ%C5%B0_KIMENETEK.md) birtokolja a sémákat, a mezőjelentéseket, az üres állapotokat és a gépi értékek értelmezését.

Az útmutatóban szereplő összes elérési út a telepítetthez viszonyított `RandomDay/` mappát, hacsak nincs másképp jelezve. A futásidejű kimenetek a telepítés után jönnek létre; ki vannak zárva a kiadási ZIP-ekből.

<a id="operator-file-map"></a>
## Operátor fájltérkép

| Elérési út | Producer és trigger | Frissítés és megőrzés | Jelentés és helyreállítás |
|---|---|---|---|
| Elsődleges konfigurálva `SandboxSettings.ini` | `ax_sandbox/writer.lua` a profil sorozatosítása és dedikált módban történő érvényesítése után. | Tranzakciósan lecserélve; a cél a kezelő által konfigurált vagy a telepítésből származó. | Töltsd ki a profilt a következő kezdéshez. A futó munkamenet megtartja a már betöltött szabályait. |
| Konfigurált tükör `SandboxSettings.ini` | Sandbox író a sikeres elsődleges eredmény után, ha az explicit tükör alkalmas. | Tranzakciós csere a legjobb erőfeszítéssel. | Csak másodlagos példány; a tükör nem helyettesíti a helyes elsődleges útvonal-konfigurációt. |
| Felismert adaptercél | `ax_external/bridge.lua` a teljes elrendezés-aláírás egyeztetés után. | A meglévő hozzárendelések tranzakciónként módosulnak egyedi biztonsági mentésekkel. | Külön telepített mod konfiguráció; ellenőrizze a hatállapotú adapter eredményét az elsődleges sandboxtól függetlenül. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` sikeres sandbox tranzakció után. | Tranzakciósan cserélve minden egyes elfogadott előkészítés után. | Sorkönyvelés. Ha nem olvasható, RandomDay megpróbálja az utolsó jó állapotot. |
| `runtime/rotation_state.last_good.txt` | Naptári tranzakció biztonsági mentése. | Cserélve, amikor az aktuális állapot frissül. | Korábbi olvasható állapot; őrizze meg a diagnózis és a frissítések során. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` siker, romlott tartósság vagy írási hiba után. | Tranzakciósan lecserélve minden állapotjegynél. | Kanonikus szerkezetű active/prepared, tranzakció, fordítás és illesztő összefoglalója. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` az állapot mellett. | Tranzakciósan lecserélve. | Séma `randomday_runtime_dictionary_v2`: kifejezések, fordítások beállítása, tartományok, csomagmódok és kiválasztási állapotok. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` az állapot mellett. | Tranzakciósan lecserélve. | Pontos korlátos üzenet előnézet a kezelői áttekintéshez; nem bizonyítja a kliens megjelenítést. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` ellenőrzött elsődleges sandbox eredmény után. | Tranzakciósan lecserélve. | Utolsó homokozó, amelyet ismert termékként fogadtak el. Csak a manifesttel együtt használja. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua`, miután a sandbox pillanatfelvétel sikeres volt. | Tranzakciósan lecserélve a sandbox pillanatképre. | Az utolsó jó fájl verziója, profilazonosítója, név, napja, tartalomkivonat és írási idő. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Elsődleges vagy tüköríró a mutáció előtt. | Egyedi műveleti könyvtár; RandomDay nem metszi. | Ellenőrzött írás előtti bájtok. Az üzemeltetők saját megőrzési kötelezettséget vállalnak a felülvizsgálat után. |
| `runtime/backups/external_<operation>/...` | Adapterhíd bármilyen adaptermutáció előtt. | Egyedi műveleti könyvtár; nincs automatikus metszés. | Minden tervezett adaptercél egy ellenőrzött példánya. |
| `runtime/pending/` | Létrehozta a futásidejű könyvtár beállítása. | Fenntartva; a jelenlegi elsődleges tranzakciók helyett testvéroldalkocsikat használnak. | Ne kezelje az üres könyvtárat előkészítő bizonyítékként. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Sandbox író itt: `singleplayer_manual` módban. | Tranzakciósan lecserélve, amikor a kézi csomag fut. | Teljes fájl a kezelő számára, hogy ellenőrizhesse és manuálisan másolhasson egy megállt világba. |
| `web_export/today.json` | `ax_web/export.lua` minden előkészítési eredmény után. | Tranzakciósan lecserélve. | Kompakt, géppel olvasható active/prepared és writer/adapter eredmény. |
| `web_export/today.html` | `ax_web/export.lua` sikeres exportálás után. | Tranzakciósan lecserélve. | Az emberi nézet ugyanabból az átmenetből származik; nem független bizonyíték. |
| `UE4SS.log` | UE4SS és `ax_core/log.lua`. | Kezelő: UE4SS, nem RandomDay. | Indítás, kiválasztott profil, írás, adapter, üzenet, állapot és hibasorok előtaggal `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Üres és sikertelen fájlállapotok felismerése

- Előfordulhat, hogy egy hiányzó elsődleges vagy tükröző célpont jött létre. Érvénytelen profil, függőben lévő írási, promóciós vagy éles visszaolvasási hiba nem áll készen. A tükrözési hiba nem változtatja meg az elfogadott elsődleges eredményt.
- `runtime/singleplayer_manual/SandboxSettings.ini` létrejöhet az első kézi futtatáskor. A generálási hiba továbbra is látható az állapotban és a naplókimenetben.
- Egy olvashatatlan `rotation_state.txt` visszaállhat a legutolsó jó állapotba vagy egy marker alapú rendszerindítóba. A sikertelen állapotú véglegesítés a `degraded_state_persistence`.
- `runtime/last_good/` hiányzik az első ellenőrzött cél előtt. Ha a párosított jegyzékfrissítés sikertelen, RandomDay visszaállítja az előző elfogadott párt.
- `runtime/backups/mirror_<operation>/` a tükörspecifikus biztonsági mentés helye. Nem létezik elsődleges vagy tükör biztonsági mentési fájl, amikor a cél nem létezett a tranzakció előtt.
- Az adaptermutáció nem indul el, ha a biztonsági mentés létrehozása vagy visszaolvasása sikertelen.
- A jelenlegi állapot-, szótár- vagy előnézeti fájlok hiányozhatnak, ha a futási állapot kimenete nem érhető el vagy nem teljes.
- An `export_failed` eredmény régebbi `today.json` a helyén. A sandbox meghibásodása frissül JSON, de nem hoz létre új hibát HTML oldal; az időbélyegek összehasonlítása a `UE4SS.log`.
- Egy elavult függőben lévő oldalkocsi eltávolításra kerül egy új kísérlet előtt; a tisztítási hiba leállítja a tranzakciót. Ha a gyártási cél és a visszagurított oldalkocsi is létezik, RandomDay megőrzi a helyreállítási bájtokat ellenőrzés céljából.
- Nem `[RandomDay]` kezdővonal itt: `UE4SS.log` azt jelenti, hogy a mod betöltés nem bizonyított.

<a id="transaction-sidecars"></a>
## Tranzakciós oldalkocsik

A tranzakció írója létrehozhat testvérfájlokat egy cél mellett:

| Minta | Állam | Kezelői művelet |
|---|---|---|
| `<target>.randomday.pending` | Jelölj bájtokat az előléptetés előtt. | Általában promócióval eltávolítják. Őrizze meg, ha hiba függőben lévő tisztítási vagy visszaolvasási problémát jelez. |
| `<target>.randomday.rollback` | A csere során tárolt eredeti bájtok. | Általában hiba esetén visszaállítják, vagy igazolt siker után eltávolítják. Ne törölje, ha a cél is jelen van; az a kombináció felülvizsgálatot igényel. |
| `<target>.randomday.restore.pending` | Jelölt bájtok az adapter visszaállítása során. | Ha a visszaállítás sikertelen, őrizze meg az adapter biztonsági másolatával. |
| `<target>.randomday.restore.rollback` | Az adapter visszaállítása során tárolt helyreállítási bájtok. | Megőrzi és állítsa le az érintett szolgáltatást, ha a tisztítás vagy visszaállítás nem ellenőrizhető. |

Ezek a fájlok a dedikált sandbox vagy egy külön telepített adaptercél mellett is létezhetnek. Jelenlétük tranzakciós állapot, nem pedig annak bizonyítéka, hogy az új profil aktívvá vált.

<a id="interpret-file-contents"></a>
## Fájltartalmak értelmezése

Használja a [Futtatási állapot és kimeneti hivatkozás](FUT%C3%81SI_IDEJ%C5%B0_KIMENETEK.md) a teljes `rotation_state.txt`, `randomday_status.json` és `today.json` sémák. Ez a hivatkozás üres állapotokat, hibajelentéseket, szótárkimenetet és azt a szabályt is birtokolja, amely szerint az előkészített állapot nem aktív állapot. Használja a [állapot- és hibareferencia](%C3%81LLAPOT-_%C3%89S_HIBAREFERENCIA.md) amikor egy pontos gépérték kezelői műveletet igényel.

<a id="rotation-state-fields"></a>
### Forgatás állapotmezői

Lásd a kanonikus [forgásállapot-séma](FUT%C3%81SI_IDEJ%C5%B0_KIMENETEK.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Jelenlegi állapot séma

Lásd a kanonikus [futásidejű állapot JSON séma](FUT%C3%81SI_IDEJ%C5%B0_KIMENETEK.md#runtime-status-json).

<a id="web-export-schema"></a>
### Webes exportálási séma

Lásd a kanonikus [nyilvános állapot JSON séma](FUT%C3%81SI_IDEJ%C5%B0_KIMENETEK.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Őrizze meg a helyreállítási bizonyítékokat

RandomDay felülírja az aktuális állapotot, az aktuális állapotot, az utolsó jó állapotot és a webnézeteket. Egyedi művelet-mentési könyvtárakat hoz létre, és nem törli a régieket. Válasszon egy megőrzési házirendet a futó folyamaton kívül, de soha ne törölje a legújabb helyreállítási bizonyítékokat, amíg az írási, visszaolvasási, állapot- vagy visszaállítási probléma nincs megoldva.
