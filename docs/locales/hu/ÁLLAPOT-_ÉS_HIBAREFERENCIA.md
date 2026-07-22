<a id="status-and-error-reference"></a>
# Állapot- és hibareferencia

> **Kanonikus angol forrás:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Használja a pontos `status`, `transaction_status`, `rollback_status` és `error` értékek a futásidejű exportálásból. A panelen vagy konzolon található hasonló megfogalmazás nem helyettesíti ezeket a mezőket.

Ez a szakasz a teljes keresési hivatkozás. A fenti döntési fa kiválasztja a megfelelő kategóriát; ezek a táblázatok megőrzik a pontos gépértékeket és a biztonságos kezelői válaszokat.

<a id="normal-or-informational-states"></a>
## Normál vagy információs állapotok

| Állapot | Jelentés | Üzemeltető válasza |
|---|---|---|
| `prepared_for_next_reboot` | Ellenőrzött profil készült a következő rendszerindításhoz. | Nincs művelet; az aktuális munkamenet változatlan. |
| `next_reboot_already_prepared` | A tervezett következő profil már megfelel a célnak. | Nincs művelet; ne erőltessen újabb forgatást. |
| `already_current` / `unchanged` | A cél már tartalmazza a kívánt bájtokat. | Nincs művelet. |
| `applied` | Az írási és éles visszaolvasás sikeres. | Ellenőrizze a active/prepared megkülönböztetés a következő rendszerindítás után. |
| `bootstrap_prepare_first_family_start_day` | Nem létezett korábbi forgatási állapot, ezért a konfigurált első nap készült. | Első használatkor várható. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | A tárolt állapot helyreállt, és ugyanazt az előkészített profilt újraírták. | Ellenőrizze a helyreállított napot; nem történt új véletlenszerű választás. |
| `supervision_reconfirm_prepared_profile_no_advance` | A felügyeleti engedély megerősítette a meglévő felkészülést. | Várható; a sor kétszer nem haladt előre. |
| `external_mods_disabled` | Az opcionális adapterfeldolgozás le van tiltva. | Nincs teendő, hacsak nem az adaptereket tervezték. |
| `external_mods_processed` | Minden engedélyezett adapterterv terminális eredményt ért el. | Tekintse át az egyes adaptersorokat. |

<a id="startup-configuration-errors"></a>
## Indítási konfigurációs hibák

Ezek az üzenetek RandomDay profilt ír. Javítsa ki a megnevezett beállítást vagy csomagjelzőt; ne kerülje meg az érvényesítési ágat.

| Hibaszöveg | Jelentés | Biztonságos válasz |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` hiányzik, hibásan van kialakítva, vagy rossz csomagból származik. | Telepítsen újra egy teljes csomagot egy tiszta állomásozó mappába, és őrizze meg a kívánt módjelzőt. |
| `invalid experience.mode` | `experience.mode` nem tartozik a dokumentált értékek közé. | Használja a `auto`, `persistent_dedicated`, `temporary_dedicated` vagy `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | Egy kézi másolású csomag dedikált szerverként lett konfigurálva. | Visszaállítás `auto` vagy `singleplayer_lan`; ne irányítsa automatikusan egy külső világra. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Egy dedikált csomag lett konfigurálva a kézi másolás munkafolyamatához. | Használja a `auto`, `persistent_dedicated` vagy `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | A kezdeti nap választó érvénytelen. | Használja pontosan `configured` vagy `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | A napi sorrend választó érvénytelen. | Használja pontosan `sequential` vagy `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | A konfigurált kezdőnap töredékes vagy a cikluson kívül esik. | Használjon egész számot 1-től `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | A biztonsági mentés vagy a legutolsó állapotú visszaállítás letiltva. | Mindkét biztonsági zár visszaállítása; RandomDay szándékosan elutasítja a nem biztonságos írásokat. |
| `external adapter transaction safety locks must remain true` | Az adapter javítása vagy a biztonsági mentés védelme le van tiltva. |  Állítsa vissza mindkét adapter biztonsági zárját, vagy tiltsa le az adaptereket csoportként. |
| `paths.world_name must be one folder name` | A konfigurált világnév elválasztót vagy nem biztonságos karaktert tartalmaz. | Csak a mappa pontos nevét adja meg, betűk, számok, szóközök, aláhúzásjelek vagy kötőjelek használatával. |
| `required runtime directory unavailable` | Nem sikerült létrehozni vagy megerősíteni a szükséges mod-local kimeneti könyvtárat. | Csak a megnevezett RandomDay könyvtár és írási engedélye. |

<a id="profile-wide-configuration-errors"></a>
## Profilszintű konfigurációs hibák

Ezek a hibák leállítják a profilépítést a homokozó írása előtt.

| Hibaszöveg | Jelentés | Biztonságos válasz |
|---|---|---|
| `sandbox.profile_overrides must be a table` | A négy profilszintű lehetőséget egy másik Lua-típus váltotta fel. | A dokumentált tábla visszaállítása itt: `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | A táblázat olyan beállítást tartalmaz, amely nem tartozik a négy támogatott kulcs közé. | Távolítsa el a megnevezett kulcsot, és használja a family/profile források az egyéb sandbox-beállításokhoz. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` vagy `AllowIronMode` nem `true` vagy `false`. | Használjon idézet nélküli Lua logikai értéket. |
| `sandbox.profile_overrides.<key> must be integer` | A támogatási érték nem egész szám. | Használjon egész számot. |
| `sandbox.profile_overrides.<key> outside supported range` | Egy támogatási érték kívül esik `0..1000`. | Válasszon egy egész számot a `0` - `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Visszaállítás és köztes állapotok

| Érték | Jelentés | Biztonságos válasz |
|---|---|---|
| `not_started` / `pending` | A tranzakció vagy az illesztőterv nem ért el terminális eredményt. | Csak az aktuális korlátos indítási engedélyre várjon; tartós állapot vizsgálatot igényel. |
| `not_needed` | Nem volt szükség visszaállításra. | Nincs művelet. |
| `original_held` | Az eredeti célpont helyreállítási pozícióba került az előléptetés előtt. | Ne törölje a helyreállítási fájlt, amíg a tranzakció még nem fejeződött be. |
| `retained_after_success` | Az új cél ellenőrzése megtörtént, de a helyreállítási adatok megmaradnak, mert a tisztítás nem volt elérhető, vagy szándékosan megőrizték. | Ellenőrizze a termelési bájtokat, mielőtt eltávolítana bármilyen nevű helyreállító fájlt. |
| `discarded_after_success` | A csere ellenőrzött és ideiglenes visszaállítási adatai törölve. | Nincs művelet. |
| `rollback_failed` | A visszaállítási kísérletet nem sikerült ellenőrizni. | Tartsa leállítva a szervert, és használja az utolsó ellenőrzött műveleti biztonsági másolatot. |
| `skipped_state_persistence_failed` | A Sandbox bájtok elő voltak készítve, de a forgatás állapota nem maradt fenn, így az adapterek és az előkészített lejátszó üzenetküldése kimaradt. | Futtatási állapot tárolásának javítása; ne görgessen újra vagy léptessen előre a sorban kézzel. |
| `failed` | Egy összefoglaló sor olyan terminálhibát jelöl, amelynek konkrét oka a `error` vagy tranzakciós mezőket. | Kövesse az első konkrét kódot; ne végezzen hibaelhárítást innen: `failed` egyedül. |

<a id="transaction-failures"></a>
## Tranzakciós hibák

| Állapot | Jelentés | Biztonságos válasz |
|---|---|---|
| `invalid_input` | A cserekérelem nem érvényes szöveg, vagy hiányzott belőle érvényes cél. | Helyes konfiguráció; ne próbálkozzon újra változatlanul. |
| `stale_pending_cleanup_failed` | Egy régi függőben lévő fájl nem távolítható el. | A kézi tisztítás előtt állítsa le és őrizze meg a függőben lévő fájlt. |
| `stale_rollback_requires_review` | A helyreállítási adatok egy jelenlegi cél mellett léteznek, és nem dobhatók el biztonságosan. | Hasonlítsa össze a cél és a visszagörgetés bájtjait, mielőtt bármelyiket választaná. |
| `interrupted_transaction_restore_failed` | A megszakított csere utáni helyreállítás nem tudta visszaállítani a célt. | Tartsa leállítva a szervert, és állítson vissza egy ellenőrzött biztonsági másolatot. |
| `interrupted_transaction_cleanup_failed` | A cél helyreállt, de az elavult tranzakciós adatokat nem lehetett törölni. | Ellenőrizze a célbájtokat, majd távolítsa el csak a megnevezett elavult oldalkocsit. |
| `pending_write_failed` | A jelölt nem írható meg. | Ellenőrizze a szűk célkönyvtárat és a szabad területet. |
| `pending_readback_failed` / `pending_readback_mismatch` | A jelölt bájtok nem olvashatók, vagy írás után eltértek egymástól. | Ne reklámozza a függőben lévő fájlt. |
| `pending_validation_failed` | A jelölt megbukott schema/profile érvényesítés a promóció előtt. | Javítsa ki a jelentett kulcsot vagy szabályt; ne kerülje meg az érvényesítést. |
| `operation_backup_failed` / `backup_failed` | Nem jött létre ellenőrzött írás előtti biztonsági másolat. | Stop; nem szabad megbízni a cél cseréjében. |
| `original_preserved_move_failed` | Az eredeti célpont nem helyezhető át helyreállítási pozícióba. | Őrizze meg az összes tranzakciós fájlt, és állítsa helyre manuálisan. |
| `promotion_failed` | A függőben lévő jelölt nem válhatott éles célponttá. | Ellenőrizze, hogy az eredetit visszaállította-e az újrapróbálkozás előtt. |
| `production_validation_failed` | A kiemelt bájtok előállítása sikertelen readback/validation. |  Állítsa vissza az ellenőrzött biztonsági másolatot, és ellenőrizze a cél írót. |
| `replacement_committed_recovery_cleanup_failed` | A csere érvényes, de az adatok visszaállítása nem törölhető. | A célt elkötelezettként kezelje; csak ellenőrzött elavult helyreállítási adatokat távolítson el. |
| `rollback_failed` | Az automatikus visszaállítás nem igazolt. | Tartsa leállítva a szervert, és használja a kézi helyreállítást. |

<a id="target-profile-adapter-and-export-failures"></a>
## Cél-, profil-, illesztő- és exporthiba

| Állapot | Jelentés | Biztonságos válasz |
|---|---|---|
| `target_refused` | A konfigurált elérési út kívül esik az engedélyezett mód határain. | Javítsa ki az elérési utat; soha ne gyengítse a határt. |
| `target_directory_failed` | A célkönyvtár létrehozása vagy megerősítése nem sikerült. | Csak az adott könyvtár létezését és jogosultságait ellenőrizze. |
| `profile_validation_failed` | Hiányzik egy profil kulcsa, hibás type/range, vagy megsért egy fennmaradó invariáns szabályt. | Használja a megnevezett kulcsot, `sandbox.profile_overrides` és profilhivatkozás a forrás javításához. |
| `skipped_incompatible` | Létezik egy opcionális mod, de nem egyezik a támogatott adapter aláírásával. | Hagyja változatlanul, vagy tiltsa le az adaptert. |
| `external_mods_partial` | Néhány opcionális adapter elkészült, mások pedig biztonságosan működtek skipped/failed. | Az illesztősorok önálló áttekintése; a sandbox eredmény külön. |
| `external_adapter_failed` | A szükséges adapter nem fejeződött be biztonságosan. | Az újrapróbálkozás előtt állítsa vissza az ellenőrzött biztonsági másolatot. |
| `degraded_state_persistence` | A homokozó előkészítése befejeződött, de a rotációs állapot megmaradása nem. | Ne feltételezze, hogy a következő rendszerindítás megfelelően halad előre; állapottár javítása. |
| `export_directory_failed` | `web_export/` nem hozható létre vagy írható. | A játékra való felkészülés továbbra is érvényes lehet; javítási jelentést külön. |

<a id="translation-and-message-validation-errors"></a>
## Fordítási és üzenetellenőrzési hibák

Ezek szótári vagy prezentációs szerződési hibák. A kiadás előtt érvényesítésre kerülnek, és korlátozott futási állapotra vonatkozó figyelmeztetésként is megjelenhetnek.

| Hibaszöveg | Jelentés | Biztonságos válasz |
|---|---|---|
| `dictionary coverage mismatch` | A profilszótár nem magyaráz meg minden dokumentált beállítást. | Adja hozzá a hiányzó szótárbejegyzést, és futtassa újra a profilt generation/validation. |
| `missing profile setting` | Egy kiválasztott profilból hiányzik a dictionary/schema. | Javítsa ki a profilcsalád forrását; ne találjon ki egy futásidejű alapértelmezést. |
| `empty explanation` | Létezik beállítás, de nincs operator/player magyarázatot. | Adjon hozzá egy egyszerű nyelvű magyarázatot a kiadás előtt. |
| `join line too wide` | Egy létrehozott csatlakozási sor meghaladja a 42 karakteres forráskorlátot. |  Rövidítse le a szótári kifejezést; ne hagyatkozzon az ügyfélcsomagolásra. |
| `join message too tall` | A létrehozott csatlakozási összefoglaló meghaladja a négy sort. | Csökkentse vagy állítsa át az üzenet tartalmát. |
