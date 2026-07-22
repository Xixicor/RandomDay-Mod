<a id="configuration"></a>
# Konfiguráció

> **Kanonikus angol forrás:** [CONFIGURATION.md](../../CONFIGURATION.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


A fő operátorkonfiguráció a következő:

```text
RandomDay/Scripts/ax_config/server.lua
```

A fájl biztonsági mentése és egy-egy szakasz módosítása. A Lua logikai értékei kisbetűk `true` és `false`; a karakterláncokhoz idézőjel kell; a lista bejegyzéseihez vessző szükséges. A következő indítás után olvassa el az állapotoldalt, mielőtt újabb változtatást hajtana végre. A forrásból dolgozó közreműködők használhatják a különálló [kiadás-érvényesítési](AZ_%C3%89RV%C3%89NYES%C3%8DT%C3%89S_FELOLD%C3%81SA.md) ellenőrzéseket, mielőtt becsomagolnának egy módosított buildet.

Ne szerkessze kézzel `.randomday_mode`, `.randomday_version`, generált profilhivatkozások, `runtime/` vagy `web_export/`. A csomagkészítő birtokolja a csomagmód- és verziójelzőket, és ellenőrzi, hogy megegyeznek-e a kiadás metaadataival.

Az alábbi beállítások a `RandomDay/Scripts/ax_config/server.lua`. A táblázatok megkülönböztetik a szerkeszthető beállításokat a kiadás tulajdonában lévő identitástól és a fenntartott kompatibilitási mezőktől. A mező jelenléte a Lua-ban nem jelenti azt, hogy a megváltoztatása támogatott viselkedés.

<a id="choose-an-experience"></a>
## Válasszon élményt

RandomDay két csomagot tartalmaz: egyet minden dedikált szerverhez és egyet a singleplayer/LAN kézi másolás. A dedikált csomag két üzemmóddal rendelkezik; ezek a módok beállítások, nem pedig külön letöltések.

| Az Ön világa | Telepítés | Válassza ezt a viselkedést |
| --- | --- | --- |
| Dedikált szerver, amely a rutin újraindítások között mozgatja az egyik kampányt | Dedikált szerver csomag | `persistent_dedicated` folytatja a mentett családi és profilrendelést. |
| Egy dedikált szerver csak az egyes játékmenetekhez nyílik meg | Ugyanaz a dedikált szervercsomag | `temporary_dedicated` megtartja a biztonságosan előkészített következő profilt a munkamenetek között, míg egy új családi vállalkozás konfigurált vagy véletlenszerű indítást használhat. |
| Egyjátékos vagy LAN világ | Singleplayer/LAN csomag | `auto` kiválasztja a kézi másolás viselkedését; állítsa meg a világot a generált fájl másolása előtt. |

Ha nem biztos benne, használja a `auto`. A csomag a telepítési típusának megfelelő normál viselkedést választja ki. Válassza ki a széles játékstílust a [Családi rotáció](CSAL%C3%81D_ROT%C3%81CI%C3%93.md) részben. Használja a [generált családi indexet](PROFILOK/PROFIL_DOKUMENT%C3%81CI%C3%93.md), ha pontos játékmeneti és homokozóértékeket szeretne. Ezután válassza ki az első napot és a folyamatot:

- `start_day_mode="configured"` a következővel kezdődik: `start_day`.
- `start_day_mode="random"` kiválaszt egy érvényes első napot egy új családi vállalkozás kezdetekor, és ezt a választást továbbra is fenntartja.
- `day_progression_mode="sequential"` végigfut mind a 17 pozíción.
- `day_progression_mode="non_repeating_random"` egy kevert rendelést tárol, amely minden napot pontosan egyszer tartalmaz.

Használja a [Forgatás](#rotation) teljes előbeállításait. Egy friss telepítésnek még el kell kezdenie a kiválasztott első profilt, majd egy későbbi indítást az aktiváláshoz.

<a id="release-identity-and-logging"></a>
## Identitás és naplózás kiadása

| Beállítás | Típus és kiszállítási érték | Támogatott használat | Hiba vagy interakció |
|---|---|---|---|
| `version` | Karakterlánc beolvasása innen: `.randomday_version` | Csak olvasható. | A hiányzó vagy üres jelölő `unversioned`; A csomag végső ellenőrzése elutasítja az identitáseltolódást. |
| `package_mode` | Karakterlánc beolvasása innen: `.randomday_mode` | Csak olvasható: `dedicated_server` vagy `singleplayer_manual`. | Bármely más érték leállítja az indítást, mielőtt a cél írna. |
| `plan_basis` | Karakterlánc: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Csak diagnosztikai címke; ne használja funkciókapcsolóként. | A jelenlegi futási környezet nem ágazik el ezen a mezőn. |
| `logging.level` | Karakterlánc: `info` | `debug`, `info`, `warn` vagy `error`. | Az ismeretlen értékek nem adnak hozzá naplózási célokat; megtartani `info`, hacsak nem diagnosztizálja a profilgenerálási viselkedést. |

Példa:

```lua
logging = { level = "debug" }
```

Használja a `debug` ideiglenesen, őrizze meg a vonatkozó `UE4SS.log`, majd térjen vissza ide: `info`. A naplók tartalmazhatnak helyi elérési utakat az alacsony szintű hibákból; megosztás előtt tekintse át őket.

<a id="experience-mode"></a>
## Tapasztalat mód

`experience.mode` megnevezi a telepítés működési módját. Nem gyengíti a következő indítás biztonsági határát: Az Abiotic Factor beolvassa a sandbox beállításait a UE4SS betölti a RandomDay, így egyetlen mód sem helyettesítheti a már futó folyamat szabályait.

| Beállítás | Szállítási érték | Támogatott értékek | Hatás |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` megoldódik a csomagból. A dedikált csomagok bármelyik dedikált módot használhatják. A kézi másolású csomag csak `auto` vagy `singleplayer_lan`. |

- `persistent_dedicated` tárol egyet family/day rendes, hosszú távú szerver-újraindítások között.
- `temporary_dedicated` egy szervert ír le, amely korlátozott lejátszási munkamenetekhez indul el. Továbbra is megőrzi az előkészített sorrendet, így a gazdagép leállítása nem állítja csendben újra a következő munkamenetet.
- `singleplayer_lan` csak a korlátos kézi másolás kimenetet állítja elő. Soha nem fedez fel vagy szerkeszt személyes mentési mappát.

Inkompatibilis package/experience kombináció leáll a sandbox írása előtt.

<a id="rotation"></a>
## Forgatás

| Beállítás | Szállítási érték | Támogatott értékek | Hatás |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | A sandbox összes módosítását az újraindítás határán tartja. |
| `cycle.cycle_length_days` | `17` | `17` a szabványos profilkészlethez | Minden családi csomagnak és generált referenciának felel meg. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Felhasználások `cycle.start_day` vagy kiválaszt egy érvényes kezdési napot a családi futam kezdetén. |
| `cycle.start_day` | `1` | Teljes szám `1` - `17` | Az első nap, amikor `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Egy összecsomagolt szekvenciális rendelést vagy egy kevert rendelést hoz létre, amely minden napot pontosan egyszer tartalmaz. |
| `cycle.bootstrap_day` | `1` | Teljes szám `1` - `17` | A kompatibilitási tartalék csak akkor használatos, ha `cycle.start_day` hiányzik. Az új konfigurációban a `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` vagy egy korlátozott pozitív intervallum | `0` indításkor egyszer készül el; a pozitív érték lehetővé teszi az időszakos felügyeletet, amikor UE4SS biztosít `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Kiválaszthatja, hogyan induljon el egy új, 17 napos családi futam. |
| `profile_family.selected_family` | `action` | Egy azonosító a `allowed_families` | A család által használt `selected_run` és tartalékként. |
| `profile_family.default_family` | `action` | Egy regisztrált családi azonosító | Tartalék, ha a kiválasztott azonosító hiányzik vagy érvénytelen. |
| `profile_family.allowed_families` | Mind a 17 nyilvános családi azonosító | A regisztrált azonosítók bármely nem üres részhalmaza | Korlátozza az új futásokra jogosult családok számát. |
| `profile_family.preserve_family_until_day_17` | Logi: `true` | Fenntartott kompatibilitási mező; megtartani `true`. | Az aktuális naptár mindig végigkíséri a családot a 17 napos rendelés minden pozícióján, és nem olvassa be ezt a mezőt kapcsolóként. |
| `profile_family.reroll_only_after_day_17` | Logi: `true` | Fenntartott kompatibilitási mező; megtartani `true`. | Az aktuális naptár csak minden nap azonosítójának befejezése után változtatja meg a családot, függetlenül attól, hogy melyik nap az utolsó a tárolt rendelésben. |
| `profile_family.prevent_repeats_until_rotation_complete` | Logi: `true` | Fenntartott kompatibilitási mező; megtartani `true`. | A jelenlegi nem ismétlődő készletlogika rögzített, és nem olvassa be ezt az értéket kapcsolóként. |

A napi rendelés egyszer jön létre egy új családi vállalkozáshoz, és a `runtime/rotation_state.txt`. A helyreállítás és a későbbi újraindítás pontosan ezeket a pozíciókat használja fel. A konfiguráció szerkesztése nem görgeti újra a folyamatban lévő rendelést. A család csak akkor változik, ha mind a 17 pozíció betöltődik.

<a id="recommended-presets"></a>
### Javasolt előre beállított értékek

Állandó dedikált szerver:

```lua
experience = { mode = "persistent_dedicated" }
cycle = {
    application_mode = "next_reboot_queue",
    cycle_length_days = 17,
    start_day_mode = "configured",
    start_day = 1,
    day_progression_mode = "sequential",
    bootstrap_day = 1,
    check_interval_ms = 0,
}
```

Ideiglenes dedikált munkamenetek új, családi futásonként eltérő, nem ismétlődő sorrenddel:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN kézi másolás az egyjátékos csomagot használja, és általában elhagyja a `experience.mode="auto"`. A következő fájl létrehozása előtt kiválaszthatja ugyanazokat a kezdési és folyamatvezérlőket. Ha azt szeretné, hogy a futásidejű állapot és a világ betöltött profilja összhangban maradjon, másolja a generált fájlt a kiválasztott leállított világba, mielőtt egy újabb generáció futna.

Új telepítés esetén az első folyamat csak a kiválasztott kezdőnapot tudja előkészíteni. Egy későbbi folyamat aktiválja. A véletlenszerű vagy konfigurált indítás nem kerüli meg a motor betöltési sorrendjét.

Példa egy rögzített Builder futtatásra:

```lua
profile_family = {
    mode = "selected_run",
    selected_family = "builder",
    default_family = "action",
    allowed_families = { "builder" },
    preserve_family_until_day_17 = true,
    reroll_only_after_day_17 = true,
    prevent_repeats_until_rotation_complete = true,
}
```

Egy üres vagy ismeretlen jogosult készlet visszakerül egy regisztrált családhoz, ahelyett, hogy hiányos profilt hozna létre.

<a id="primary-sandbox-path"></a>
## Elsődleges sandbox elérési út

| Beállítás | Típus és kiszállítási érték | Támogatott használat | Hiba vagy interakció |
|---|---|---|---|
| `paths.runtime_dir` | Karakterlánc: `ue4ss/Mods/RandomDay/runtime` | Csak olvasható a forráskonfigurációban. | `init.lua` lecseréli a feloldott mod-root-ra `runtime/` elérési út. |
| `paths.web_export_dir` | Karakterlánc: `ue4ss/Mods/RandomDay/web_export` | Csak olvasható a forráskonfigurációban. | `init.lua` lecseréli a feloldott mod-root-ra `web_export/` elérési út. |
| `paths.sandbox_path_override` | Karakterlánc vagy `nil`: `nil` | Egy literál `SandboxSettings.ini` elérési út egy nem szabványos dedikált elrendezéshez. | A nem biztonságos vagy nem elérhető célok írása sikertelen; Az egyjátékos mód törli a felülírást. |
| `paths.sandbox_candidates` | A karakterláncok listája: hét általános jelölt | Megrendelt dedikált szerver tartalék jelöltek. | `init.lua` a telepítésből származó jelölteket elé fűzi; az első létező útvonal nyer. |
| `paths.write_sandbox_mirrors` | Logi: `true` | Lehetővé teszi a szándékosan konfigurált tükröket. | Nincs tükörírás, amíg a tükörlista üres és `world_name=nil`; egyjátékos mód kényszeríti `false`. |
| `paths.sandbox_mirror_required` | Logi: `false` | Fenntartott kompatibilitási mező; megtartani `false`. | A jelenlegi író a tükröket nem kötelezőként kezeli, és nem olvassa be ezt a mezőt kötelező kapuként. |
| `paths.world_name` | Karakterlánc vagy `nil`: `nil` | Egy biztonságos világmappa-komponens, amely általános tükörjelöltek származtatására szolgál. | Bármi, ami betűkön, számokon, szóközökön kívül esik `_` vagy `-` leállítja az indítást; az egyjátékos mód figyelmen kívül hagyja. |
| `paths.sandbox_mirror_candidates` | A karakterláncok listája: üres | Pontos opcionális tükörfájlok. | Minden jogosult tükör a saját tranzakcióját használja; a tükörhiba nem változtat az elsődleges sikeren. |

`paths.sandbox_path_override` alapértelmezett értéke `nil`. Felülírás nélkül, RandomDay először az általánost ellenőrzi WindowsServer jelöltek rögzítve az észlelthez RandomDay telepítést, majd ellenőrzi a konfigurált jelölteket. Ha egyik sem létezik, akkor az első telepítéshez rögzített általános jelöltet használja, amely a kiszolgáló telepítésének feloldását adja meg:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Ez a tartalék nincs megoldva a folyamat jelenlegi munkakönyvtárából. Beállítás `sandbox_path_override` csak akkor, ha a telepítés egy másik literál fájlt használ. Irányítsa az egyikre `SandboxSettings.ini`, nem egy könyvtár. Használat előtt állítsa le a kiszolgálót, és ellenőrizze, hogy a fájl a tervezett telepítésen belül van.

<a id="optional-mirrors"></a>
### Opcionális tükrök

`paths.write_sandbox_mirrors` szállítási név: `true`, de a tükrözési útvonal lista üres és `paths.world_name` `nil`. Ezért a szállított alapértelmezések nem írnak extra tükört. Állítsa `false` amikor a telepítésnek mindig csak a feloldott elsődleges célt kell írnia. Ha nincs beállított tükörjelölt vagy világnév, bármelyik érték továbbra is csak az elsődleges sandbox fájlt írja ki.

A tükör csak akkor válik használhatóvá, ha szándékosan pontos bejegyzést ad hozzá a `paths.sandbox_mirror_candidates` vagy állítsa be `paths.world_name`. A tükrök a legjobb másolatok olyan telepítésekhez, amelyek egy második világspecifikus sandbox útvonalat olvasnak. Nem helyettesítik a helyes elsődleges útvonal beállítását.

A tükör engedélyezése előtt:

1. állítsa le a szervert;
2. azonosítsa pontosan a szerver által olvasott fájlt;
3. erősítse meg, hogy a cél a tervezett telepítésen belül van;
4. másoljon biztonsági másolatot;
5. csak ezt az elérési utat adja hozzá;
6. előkészítés után ellenőrizze a tükrözött eredményt.

Példa felülírásra tükör nélkül:

```lua
paths = {
    runtime_dir = "ue4ss/Mods/RandomDay/runtime",
    web_export_dir = "ue4ss/Mods/RandomDay/web_export",
    sandbox_path_override = "<server-root>/AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    sandbox_candidates = {},
    write_sandbox_mirrors = false,
    sandbox_mirror_required = false,
    world_name = nil,
    sandbox_mirror_candidates = {},
}
```

`<server-root>` egy helyőrző. Helyben cserélje ki; ne tegyen közzé gépspecifikus elérési utat.

<a id="non-disableable-safety-locks"></a>
## Nem letiltható biztonsági zárak

| Beállítás | Kötelező érték | Jelentés |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Őrizzen meg egy ellenőrzött másolatot, mielőtt lecserél egy meglévő elsődleges fájlt. |
| `sandbox.restore_last_good_on_failure` | `true` | Kísérletezzen meg az automatikus helyreállítást sikertelen csere vagy visszaolvasás után. |
| `external_mods.patch_only_existing_keys` | `true` | Ne találjon ki egy ismeretlen beállítást egy másik mod fájljában. |
| `external_mods.backup_before_write` | `true` | Őrizze meg a célbájtokat a támogatott tranzakciós adapter szerkesztése előtt. |

RandomDay visszautasítja az indítást, ha a négy érték közül bármelyik nem `true`. Ezek biztonsági zárak, nem támogatott kezelőgombok. Ne tiltsa le őket, beleértve a fejlesztést vagy a hibaelhárítást, mert ezzel megváltoztatja az író- és illesztőtesztek által igazolt hibazárási határt.

`sandbox.force_rewrite_every_supervision_tick` normál beállítás marad, és `false`, amely érintetlenül hagy egy már egyező sandbox fájlt. Boole-t fogad el. `true` ugyanazokat a folyamattulajdonú előkészített bájtokat kényszeríti újra az írón keresztül; nem viszi előre a family/day. Csak korlátozott helyreállítási teszthez használja, mert az ismételt írások több műveleti biztonsági másolatot hoznak létre.

<a id="optional-mod-adapters"></a>
## Opcionális modadapterek

| Beállítás | Szállítási érték | Jelentés |
|---|---:|---|
| `external_mods.enabled` | `true` | Engedélyezze a konfigurált adapterek számára, hogy megvizsgálják a külön telepített célokat. |
| `external_mods.optional_by_default` | `true` | A hiányzó vagy nem kompatibilis opcionális modok nem blokkolják RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Szükséges biztonsági zár; módosítás esetén az indítás sikertelen. |
| `external_mods.backup_before_write` | `true` | Szükséges biztonsági zár; módosítás esetén az indítás sikertelen. |
| `external_mods.adapters` | Négy nyilvános adapterazonosító | Korlátozza, mely RandomDay-owned futhatnak az adapterek. |

Távolítson el egy adapterazonosítót a listáról, hogy magára hagyja az integrációt a harmadik féltől származó mod letiltása vagy eltávolítása nélkül. A singleplayer/LAN csomag minden adaptert letilt, függetlenül a listától.

`external_mods.optional_by_default=false` a `applied` vagy `already_current` sikertelen az összesített adapter eredménye. Ez nem állítja vissza az elsődleges sandbox-tranzakciót. Őrizze meg a szállított `true` kivéve, ha az operátornak tesztelt oka van az integráció megkövetelésére.

Lásd [Támogatott modadapterek](T%C3%81MOGATOTT_ADAPTEREK.md) a felismert elrendezésekhez és a hat lehetséges eredményhez.

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### Opcionális Chaotic Spawn Engine hatókörmezők

`world_scope` öt választható elemet biztosít RandomDay kiterjesztés beállításai csak akkor, ha egy Chaotic Spawn Engine felismert `DynamicSpawns/SharedData.lua` elrendezés már tartalmazza ezeket a mezőket. Ez nem egy külön mod vagy letöltés:

| Beállítás | Szállítási érték | Adaptereffektus |
|---|---:|---|
| `world_scope.enabled` | `true` | Az opcionális RandomDay világméretű kapu egy felismert DynamicSpawns elrendezés. |
| `world_scope.affect_open_worlds` | `true` | Tartalmazza a nyílt világokat, hacsak a célmod nem alkalmaz védett világ szabályt. |
| `world_scope.unknown_world_policy` | `allow` | Kérések `allow` vagy `block` amikor a célmod nem tud besorolni egy világot. |
| `world_scope.log_scope_decisions` | `true` | Cél-mod naplózást kér a hatókör döntéséhez. |
| `world_scope.protected_worlds` | Üres lista | Vesszővel elválasztott védett világmintákat biztosít a célelrendezéshez. |

Ezek az értékek az adapter bemenetei, nem pedig a RandomDay's sandbox writer="14. Csak akkor lépnek érvénybe, ha a külön telepített Chaotic Spawn Engine elrendezés már tartalmazza a teljes opcionális RandomDay mezőkészlet és jelentések `applied` vagy `already_current`. A Chaotic Spawn Engine továbbra is felelős a mezők használatáért futás közben. A bővítménymezők nélküli szokásos telepítés változatlan marad.

Mind az öt érték adapter bemenet. `unknown_world_policy` csak a dokumentált célértékeket fogadja el `allow` vagy `block`; egy fel nem ismert célelrendezés kimarad. Tartsa meg `protected_worlds` üres a dokumentációs példákban. Ha egy operátor helyi mintákat használ, akkor ezek nem szerepelhetnek képernyőképekben, problémákban vagy kiadási műtermékekben.

<a id="player-messages"></a>
## Játékos üzenetek

A szállított dedikált szerver konfiguráció kompakt csatlakozási értesítéseket és rövid napi sort tesz lehetővé. 30 másodpercet vár az első lépés előtt, 15 másodpercenként ellenőrzi az újonnan csatlakozott játékosokat, és 10 másodpercet vár a csatlakozási értesítés után a napi sor előtt.

| Beállítás | Szállítási érték |
|---|---:|
| `player_message.enabled` | `true` |
| `player_message.log_on_startup` | `true` |
| `player_message.register_console_command` | `false` |
| `player_message.console_command` | `randomday` |
| `player_message.broadcast_enabled` | `true` |
| `player_message.startup_delay_ms` | `30000` |
| `player_message.join_check_interval_ms` | `15000` |
| `player_message.send_daily_joke_after_join` | `true` |
| `player_message.daily_joke_delay_seconds` | `10` |
| `player_message.criticality_join` | `2` |
| `player_message.criticality_joke` | `0` |
| `player_message.max_line_chars` | `42` |
| `player_message.max_join_lines` | `4` |
| `player_message.max_warning_lines` | `3` |
| `player_message.max_note_lines` | `3` |

Az üzenethosszúság ellenőrzése ellenőrzi a forráskorlátokat. Nem helyettesíti a vizuális tesztet minden ügyfélfelbontásnál.

Az időzítési értékek nem negatív számok, amelyeket ezredmásodpercként értelmezünk, kivéve a `daily_joke_delay_seconds`. A letiltott üzenetek vagy üzenetszórás-beállítások letiltják az ügyfél értesítéseit a sandbox előkészítésének megváltoztatása nélkül. A konzolparancs csak akkor kerül bejegyzésre, ha mind a beállítás, mind a UE4SS kezelő elérhető. Tartsa a kritikussági értékeket a szállított szállítási szinteken, kivéve, ha egy megnevezett kliens teszt más értéket igazol.

`max_line_chars` a fordító 8 és 64 karakter között van rögzítve. A három sorszám-beállítás korlátozza a csatlakozást, a figyelmeztetést és a megjegyzés kimenetet; a szállított értékek megegyeznek az elérhető forrássorok számával. Tartsa ezt a négy korlátot az alapértelmezett értéken, hacsak egy kliens-elrendezési teszt nem bizonyít szűkebb beállítást.

Példa letiltott üzenetekre:

```lua
player_message = {
    enabled = false,
    log_on_startup = true,
    register_console_command = false,
    console_command = "randomday",
    broadcast_enabled = false,
    startup_delay_ms = 30000,
    join_check_interval_ms = 15000,
    send_daily_joke_after_join = false,
    daily_joke_delay_seconds = 10,
    criticality_join = 2,
    criticality_joke = 0,
    max_line_chars = 42,
    max_join_lines = 4,
    max_warning_lines = 3,
    max_note_lines = 3,
}
```

<a id="profiles-and-sandbox-values"></a>
## Profilok és Sandbox-értékek

A `RandomDay/Scripts/ax_profiles/families/` alatti családi forrásfájlok családonként 17 teljes napot határoznak meg. A `docs/profiles/` alatt generált dokumentáció referenciakimenet, nem pedig testreszabási forrás.

Használja a [a sandbox kulcs hivatkozását](PROFILOK/SANDBOX_BE%C3%81LL%C3%8DT%C3%81SI_KULCSOK.md) a típusokhoz, tartományokhoz, a szállított profil alapértékeihez és a fennmaradó invariáns értékekhez. A profilforrás szerkesztése után generálja újra és érvényesítse mind a 289 kombinációt; ne patch egy generált Markdown vagy JSON rögzítse kézzel.

<a id="customize-the-shipped-profile-defaults"></a>
### A szállított profil alapbeállításainak testreszabása

Megnyitás:

```text
RandomDay/Scripts/ax_config/server.lua
```

Keresse meg ezt a blokkot a `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Ezek RandomDay's kezdő választásokat, ne változtatható Abiotikus faktor szabályokat. Állítsa bármelyik módot `true` vagy `false` értékre. Állítsa be az egyes támogatási értékeket egy egész számra a `0` - `1000`ból. A fájl szerkesztése előtt állítsa le a játékot vagy a dedikált szervert, mentse el, majd indítsa újra, hogy a Lua betöltse az új konfigurációt.

RandomDay beolvassa ezt a blokkot, amikor egy család 17 profilját felépíti. A kiválasztott értékek ezért minden családra és napra vonatkoznak, beleértve a rotáció után készített profilokat és a későbbi szerverindítás után újraépített profilokat is. Nem kell szerkesztenie 289 profilfájlt, vagy újra generálnia a profilhivatkozást.

Csak élő adás módosítása `SandboxSettings.ini` ideiglenes, mert a következő előkészített profil a `server.lua`. Érvénytelen típusok, ismeretlen kulcsok vagy a `0..1000` állítsa le a profilépítést egy elnevezett konfigurációs hibával ahelyett, hogy csendben visszaállna az alapértelmezett értékekre.

A generált profilhivatkozás továbbra is a leszállított alapértelmezett értékeket mutatja. Ez egy kiadási hivatkozás, nem pedig egy szerver privát konfigurációjának másolata.
