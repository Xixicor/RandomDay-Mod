<a id="glossary"></a>
# Szószedet

> **Kanonikus angol forrás:** [GLOSSARY.md](../../GLOSSARY.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Ez a RandomDay dokumentáció. Az eljárások ezekre a definíciókra hivatkoznak, ahelyett, hogy ugyanazt az állapotot több útmutatóban újradefiniálnák. A sémaspecifikus mezőszabályok a [Futási idejű kimenetek](FUT%C3%81SI_IDEJ%C5%B0_KIMENETEK.md).

| Időtartam | Egyszerű jelentés | Pontos műszaki jelentés |
|---|---|---|
| Aktív profil | Az aktuális munkamenet által használt szabályok. | A family/day profil, amelyet a RandomDay jelölő olvasható a homokozóból a folyamat indításakor. |
| Előkészített profil | A szabályok készen állnak egy későbbi munkamenetre. | A teljes family/day profil, amelynek célbájtjai átmentek az érvényesítésen és visszaolvasáson, és amelynek forgatási állapota véglegesített. A visszaolvasás újraindítása előtt nem aktív. |
| Visszaállítva | Az előkészítés sikertelen volt, és a korábban ellenőrzött bájtok visszakerültek. | A sikertelen tranzakció a visszatartott eredeti vagy ellenőrzött helyreállítási másolat sikeres visszaállítását és visszaolvasását jelenti. |
| Következő újraindítási sor | Egy előkészített választás a következő rendszerindításhoz. | `next_reboot_queue` folyamatonként egyszer választ ki, és a felügyelet során újra felhasználja a rendszerindításhoz tartozó választást. |
| Bootstrap | Az első előkészítés, amikor nem létezik aktív marker. | A konfigurált vagy véletlenszerű első nap kiválasztása egy jogosult családból; `cycle.bootstrap_day` csak egy kompatibilitási tartalék. |
| Család | 17 napos játékstílus-fejlődés. | Egy regisztrációs bejegyzés és családmodul, amely pontosan 17 teljes profilt állít elő. |
| Forgatás | A jogosult családokon keresztüli átutazás. | A `rotation_id`, elérhető, fennmaradó és befejezett családlistákkal. |
| Futtatás | Egy család a 17 napos azonosítókkal. | Családhoz kötött sorozat, amelyet a `run_id`; a család zárva marad mindaddig, amíg minden fenntartott napi rendelési pozíció be nem fejeződik. |
| Munkamenet mód | Hogyan használja az operátor ezt a csomagot. | `persistent_dedicated`, `temporary_dedicated` vagy `singleplayer_lan`; a csomag mód továbbra is szabályozza a fájlrendszer határát. |
| Napi rendelés | Az egy családi vállalkozás által használt pontos sorrend. | Egy megmaradt 17 számból álló permutáció. A szekvenciális mód a kezdő naptól kezdve; véletlenszerű módban egyszer megkeveri ismétlés nélkül. |
| Jelölő | A sandbox fájlban tárolt azonosító. | `RANDOMDAY_*` mezők a teljes profillal jelennek meg, és a következő folyamatindításkor olvashatók. |
| Készen készítve | Az írás és az állapot véglegesítése sikerült. | `prepared_ready=true` sikeres sandbox eredményt igényel, és nincs állapot-végrehajtási hiba. Ez nem bizonyítja az aktiválást. |
| Már aktuális | A cél már rendelkezik a kívánt bájtokkal. | A megjelenített profil hash megegyezik a céllal, így RandomDay ellenőrzi last-good/mirror működjön az elsődleges átírása nélkül. |
| Csökkent állapot fennmaradása | A Sandbox byte-ok sikeresek voltak, de a rotációs könyvelés nem. | `profile_status=degraded_state_persistence`; az adapterek és az előkészített profilú üzenetek kimaradnak. |
| Függőben lévő fájl | A jelölt bájtok még nincsenek előléptetve. | `<target>.randomday.pending`, megírva, visszaolvasva és csere előtt érvényesítve. |
| Visszaállítási fájl | Az eredeti a csere során megmaradt. | `<target>.randomday.rollback`, a termelés visszaállítására szolgál promóció vagy ellenőrzési hiba esetén. |
| Művelet biztonsági mentése | Mutáció előtt készült tartós másolat. | Egy ellenőrzött fájl a `runtime/backups/` az elsődleges, tükör- vagy adaptertranzakcióhoz. |
| Utolsó ismert termék | A legfrissebb, helyreállításra elfogadott sandbox. | `runtime/last_good/SandboxSettings.ini` plusz `manifest.lua`; a pár rögzíti a profilazonosítót és a hash-t. |
| Tükör | Opcionális második sandbox cél. | Egy kifejezetten konfigurált vagy világnévből származó cél, amely az elsődleges után van írva a saját tranzakcióján keresztül. |
| Csomag mód | A kiadási eszköz által kiválasztott telepítési határ. | `dedicated_server` vagy `singleplayer_manual` innen: `.randomday_mode`. |
| Kézi másolás mód | Singleplayer/LAN generálás mentési felfedezés nélkül. | `singleplayer_manual` csak belül ír `runtime/singleplayer_manual/` és letiltja az adaptereket és a tükröket. |
| Adapter | RandomDay-owned leképezés egy másik telepített modhoz. | Aláírással kötött tranzakciós terv, amely csak a biztonsági mentés és a kompatibilitás ellenőrzése után frissíti a meglévő hozzárendeléseket. |
| Felismert elrendezés | Az illesztőfájl pontos alakja elfogadott íráshoz. | Minden szükséges aláírási kulcs és célfájl megvan; a fájlnév önmagában nem elegendő. |
| `not_installed` | Az opcionális cél nem található. | Biztonságos adapter végeredmény mutáció nélkül. |
| `skipped_incompatible` | Létezik egy cél, de az alakja nem támogatott. | Biztonságos adapter végeredmény mutáció nélkül, mert a teljes aláírás nem egyezik. |
| `failed_rolled_back` | A módosítás sikertelen, és a korábbi bájtok sértetlenek. | Az adaptertranzakció meghiúsult a mutáció vagy az összes érintett fájl visszaállítása és ellenőrzése előtt. |
| `rollback_failed` | Az automatikus helyreállítás nem ellenőrizhető. | Hard-stop adapter állapota, amely kézi helyreállítást igényel a rögzített biztonsági másolatból. |
| Szótár | Leképezés nyers értékekről nyilvános magyarázatokra. | `randomday_dictionary_v2`, generálva innen: `dictionary.lua` és szerepel a futási állapot kimenetében. |
| Fordítás | A nyers profilértékekből származó emberi nézet. | Korlátozott domain pontszámok, tények, összefoglalók és üzenetek által generált `translation.lua`; A nyers értékek továbbra is mérvadóak. |
| Nyilvános állapot | Tisztított, géppel olvasható kezelői összefoglaló. | `web_export/today.json` a `randomday_public_status_v2`. |
| Futtatási állapot | Részletes helyi, géppel olvasható pillanatkép. | `runtime/current/randomday_status.json` a `randomday_runtime_status_v2`. |
