<a id="packaged-source-reference"></a>
# Csomagolt forrásreferencia

> **Kanonikus angol forrás:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


A kiadás ZIP pontosan az alábbi 51 elérési utat tartalmazza. Az építő elutasít egy hiányzó elérési utat, egy további csomag alakú forrást, egy esetütközést, egy szimbolikus hivatkozást vagy egy tagot, amely kívül esik a szó szerinti engedélyezési listán. A futásidejű kimenet, a tesztek, a tárolódokumentumok és a harmadik féltől származó modok nem tartoznak a csomaghoz.

A géppel ellenőrizhető kísérő a [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Ugyanazokat az útvonalakat rögzíti a bemenetekkel, kimenetekkel, mellékhatásokkal, nyilvános beállításokkal, látható állapotokkal, hibamódokkal, szerkeszthetőséggel és kanonikus dokumentációval.

Minden szállított Lua sorhoz tartozik egy stabil `module-*` horgony. A kanonikus forrásfejlécben és a géprekordban található azonos hivatkozás közvetlenül nyomon követhetővé teszi a tulajdonjogot, a szerződést, a mellékhatásokat, a hibákat és a helyreállítást.

<a id="package-markers"></a>
## Csomagjelzők

| Elérési út | Hívó és felelősség | Mellékhatások és hibaviselkedés | Útmutató |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS engedélyezési jelző mindkét csomagban megtalálható. | Nincs futásidejű írás. A hiányzó fájl nem tudja ellenőrizni a csomagot, és megakadályozhatja a betöltést. | [Telepítés](TELEP%C3%8DT%C3%89S.md) |
| `RandomDay/.randomday_version` | Olvasta `ax_core/version.lua`; csomagonként generált. | Nincs futásidejű írás. Missing/blank jelölő `unversioned`; a végleges összeállításhoz igazított verzióazonosító szükséges. | [Az érvényesítés feloldása](AZ_%C3%89RV%C3%89NYES%C3%8DT%C3%89S_FELOLD%C3%81SA.md) |
| `RandomDay/.randomday_mode` | Olvasta `ax_core/version.lua`; mint `dedicated_server` vagy `singleplayer_manual`. | Az érvénytelen érték leállítja az indítást a fájlrendszer működése előtt. | [Architektúra](ARCHITEKT%C3%9ARA.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Belépés, konfigurálás és alapszolgáltatások

| Elérési út | Hívó és felelősség | Bemenetek, kimenetek és hibaviselkedés | Útmutató |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS belépési pont. Felold egy mod-gyökeret, és meghívja a `ax_core/init.lua`. | Végzetes sort nyomtat, és visszatér, ha a gyökérfeloldás vagy az indítás sikertelen. | [Indítási útvonal](ARCHITEKT%C3%9ARA.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Fő hangszerelő az indításhoz és az opcionális felügyelethez. | Kimeneti útvonalakat rögzít, kényszerít package/safety zárol, egy kijelölést birtokol, és sorozatokat ír, állapot, adapterek, állapot, web és üzenetek. | [Indítási útvonal](ARCHITEKT%C3%9ARA.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Betöltő: `init.lua`; teljes nyilvános konfigurációs objektum. | Beolvassa a csomagazonosítót; a beállításokat és a lefoglalt mezőket egyenként dokumentálják. Az érvénytelen biztonsági zárak leállítják az indítást. | [Konfiguráció](KONFIGUR%C3%81CI%C3%93.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | A konfiguráció és a profil-nyilvántartás betöltötte. | Olvasi a vágott csomagjelzőket; visszatér `unversioned` vagy `invalid`, ha nem elérhető. | [Identitás kiadása](AZ_%C3%89RV%C3%89NYES%C3%8DT%C3%89S_FELOLD%C3%81SA.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Megosztott naplózási burkoló. | Kibocsát `[RandomDay]` sorok a beállított szinteken; nincs privát rönkszállítás. | [Futóidejű fájlok](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | Megosztott fájl, elérési út, kódolás, hash, könyvtár és tranzakciós segítők. | A könyvtár létrehozása csak megerősített Lua/Wine parancs sikeres; a nem elérhető, emelt, jelzett, kétértelmű vagy nullától eltérő eredmények sikertelen lezárása korlátos üzenetekkel és futásidejű relatív hivatkozásokkal. A pending/readback/promotion/rollback szemantikát, és megőrzi a bizonytalan helyreállítási adatokat. | [Sandbox tranzakció](ARCHITEKT%C3%9ARA.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Kiválasztás, homokozó, állapot és üzenetek

| Elérési út | Hívó és felelősség | Bemenetek, kimenetek és hibaviselkedés | Útmutató |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; beolvassa az aktív markert és a forgatás állapotát, kiválaszt egyet active/prepared pár, megmarad a munkamenet mód és a pontos napi sorrend. | Egy configured/wrapped vagy egyszeri kevert 17 pozíciós sorrend, írja `rotation_state.txt` tranzakciósan, és újragörgetés nélkül visszaáll a legutolsó jó állapotba. A perzisztencia hiba leromlott átmenetet eredményez. | [Forgatás állapotgépe](ARCHITEKT%C3%9ARA.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Sandbox író; műveleti és utolsó jó biztonsági mentéseket hoz létre, és visszaállítja az ellenőrzött bájtokat. | Frissíti az utolsó jót sandbox/manifest párként; megőrzi az előző párt, ha a jegyzékcsere sikertelen. | [Futóidejű fájlok](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Profilkészítő, sorosító és érvényesítő. | Meghatározza a kanonikus kulcssorrendet, típusokat, tartományokat és rögzített szabályokat; egyetlen fájlrendszer sem ír. | [Sandbox kulcsok](PROFILOK/SANDBOX_BE%C3%81LL%C3%8DT%C3%81SI_KULCSOK.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Sandbox író. | Teljes determinisztikus eredményt hoz létre INI szöveg a RandomDay jelölők; az érvénytelen profiladatokat az érvényesítés elutasítja. | [Profilok](PROFILOK/PROFIL_DOKUMENT%C3%81CI%C3%93.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Builder tesztek és író. | Ellenőrzi a profilértékeket, és sorba állítja INI a séma, a rögzített értékek és a várt profilazonosság ellen. | [Sandbox kulcsok](PROFILOK/SANDBOX_BE%C3%81LL%C3%8DT%C3%81SI_KULCSOK.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; feloldja a módhoz kötött célokat és végrehajtja a primary/mirror írja. | Tranzakciós, biztonsági mentési, visszaállítási, kivonatolási, tükrözési és kézi kimeneti eredményeket hoz létre. A nem biztonságos célpontok és az ellenőrizetlen írások bezárása sikertelen. | [Sandbox tranzakció](ARCHITEKT%C3%9ARA.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` minden előkészítési eredmény után. | Tranzakciósan megírja az aktuális állapotot, a szótárt és az üzenet előnézetét megtisztított célhivatkozásokkal. A kimeneti hiba naplózásra kerül, és nem módosítja a sandbox jogosultságát. | [Jelenlegi állapot séma](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` állapot után. | Ír `today.json` és `today.html` innen: active/prepared döntés. A meghibásodást a rendszer az exportálási hibaként jelenti, nem a sandbox sikerét. | [Webes exportálási séma](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` sikeres állapotmegtartás után. | Korlátozott építmények join/daily üzeneteket küld a fordítási adatokból, és opcionálisan regisztrál egy helyi konzolparancsot. Hiányzik player/transport kihagy egy értesítést a profilállapot megváltoztatása nélkül. | [Játékos üzenetek](KONFIGUR%C3%81CI%C3%93.md#player-messages) |

<a id="optional-adapter-modules"></a>
## Opcionális adaptermodulok

| Elérési út | Hívó és felelősség | Bemenetek, kimenetek és hibaviselkedés | Útmutató |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; felismeri a felismert illesztőcélokat, és minden tervezett fájlt tranzakciósan alkalmaz. | Hat dokumentált eredményt, ellenőrzött biztonsági másolatot, megtisztított diagnosztikát és visszaállítási bizonyítékot készít. | [Adapterhatár](ARCHITEKT%C3%9ARA.md#adapter-boundary) |
| <a id="module-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Adapterhíd definíció egy külön telepítetthez DynamicSpawns elrendezés. | Ellátja a felismert aláírásokat és elkészített értéktérképeket; az ismeretlen elrendezések kimaradnak. | [Támogatott adapterek](T%C3%81MOGATOTT_ADAPTEREK.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Belső adapterdefiníció az opcionálishoz RandomDay kiterjesztési mezők egy felismert Chaotic Spawn Engine-ben `DynamicSpawns` elrendezés; a fájlnév nem egy külön terméknév. | A Maps-profil találkozása és a konfigurált hatókörértékek csak akkor fordulnak elő, ha a teljes bővítményelrendezés létezik; A Chaotic Spawn Engine továbbra is felelős a futásidejű használatért. | [Támogatott adapterek](T%C3%81MOGATOTT_ADAPTEREK.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Adapterhíd definíciója felismert Lethal Lasers beállításelrendezéshez. | Minden tervezett kulcsot igényel a mutáció előtt; egyébként nem kompatibilis. | [Támogatott adapterek](T%C3%81MOGATOTT_ADAPTEREK.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Adapterhíd definíciója felismert ANTE A beállítások elrendezése felfelé. | Respawn, variáns és debug-gate mezőket igényel; egyébként nem kompatibilis. | [Támogatott adapterek](T%C3%81MOGATOTT_ADAPTEREK.md) |

<a id="shared-profile-and-translation-modules"></a>
## Megosztott profil és fordítási modulok

| Elérési út | Hívó és felelősség | Bemenetek, kimenetek és hibaviselkedés | Útmutató |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; kanonikus alapértékek és 17 napos alapértelmezett értékek. | Ellátja az összes sandbox kulcsot, a négy szállított profil alapértelmezett beállítását és a fennmaradó rögzített szabályokat; egyetlen fájlrendszer sem ír. A sémaellenőrzés elutasítja a hiányos kimenetet. | [Sandbox kulcsok](PROFILOK/SANDBOX_BE%C3%81LL%C3%8DT%C3%81SI_KULCSOK.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Minden családi modul és örökölt családi nézet. | Alapnapokat klónoz, korlátosan alkalmazza family/day felülírja, érvényesíti `sandbox.profile_overrides`, alkalmazza az állandó értékeket és a fennmaradó rögzített szabályokat, és egy 17 profilos családi csomagot ad vissza. | [Profilhivatkozás](PROFILOK/PROFIL_DOKUMENT%C3%81CI%C3%93.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; elrendelte mind a 17 család nyilvános anyakönyvét. | Azonosítókat, forrásfájlneveket, neveket, leírásokat, műfajokat és hangszín metaadatokat biztosít. A hiányzó családi forrás betöltése sikertelen. | [Családi rotáció](CSAL%C3%81D_ROT%C3%81CI%C3%93.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Naptár, író, állapot, tesztek és generátorok. | Betölti az összes regisztrált családi csomagot, és megjeleníti a 17x17 profilkészletet, a szállított alapértelmezett értékeket, az érvényes profilszintű értékeket, a séma sorrendjét és a rögzített szabályokat. | [Profilhivatkozás](PROFILOK/PROFIL_DOKUMENT%C3%81CI%C3%93.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Az eredeti, 17 napos akciócsomag kompatibilitási nézete. | A teljes családi csomagot adja vissza, de nem az aktuális rendszerleíró adatbázis családforrása. Megtartva a történelmi csomag-útvonal folytonosság érdekében. | [Családi rotáció](CSAL%C3%81D_ROT%C3%81CI%C3%93.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Az eredeti Reaction túlélési csomag kompatibilitási nézete. | Egy teljes családi csomagot ad vissza, de a jelenlegi beállításjegyzék nem jelöli ki. Megtartva a történelmi csomag-útvonal folytonosság érdekében. | [Családi rotáció](CSAL%C3%81D_ROT%C3%81CI%C3%93.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | A régi napindex találkozási keresés elérhető a profilkódhoz. | Egy napra határolt találkozási térképet ad vissza; egyetlen fájlrendszer sem ír. A jelenlegi családi profiloknak saját találkozási értékeik vannak. | [Profilhivatkozás](PROFILOK/PROFIL_DOKUMENT%C3%81CI%C3%93.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Játékos üzenetküldés és kompatibilitási burkoló. | Korlátozott építmények joke/note csomagok a kiválasztott profilból; a nem elérhető profiladatok semleges üzenetté válnak vissza. | [Játékos üzenetek](KONFIGUR%C3%81CI%C3%93.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Visszakompatibilis burkolólap `messages_17.lua`. | Nincsenek független adatok vagy írások; betöltési hiba követi a kanonikus üzenetmodult. | [Játékos üzenetek](KONFIGUR%C3%81CI%C3%93.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Fordító és futásidejű szótáríró. | Meghatározza mind a 46 sandbox beállítás jelentését, típusát, tartományát, tartományát és értéknyelvét. Az ismeretlen értékek explicitek maradnak. | [Fordítás és szótár](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Futtatási állapot és lejátszó üzenetek. | A nyers profilértékeket korlátos tartománypontszámokká, tényekké, összefoglalókká, figyelmeztetésekké és szótárkimenetekké alakítja, miközben megtartja a nyers értékeket. | [Jelenlegi állapot séma](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Regisztrált családi modulok

Minden sort a `randomday_17.lua`, hívások `profile_builder.lua`, pontosan 17 profilt ad vissza, és nincs közvetlen fájlrendszer-mellékhatása. A hiányzó, ismétlődő, hiányos, tartományon kívüli vagy a rögzített szabályokat sértő profil meghibásodik a futásidejű berendezéscsomagban és a generált referenciakapuban.

| Elérési út | Család | Kanonikus generált útmutató |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Művelet | [Művelet](PROFILOK/CSAL%C3%81DOK/M%C5%B0VELETI_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Túlélés | [Túlélés](PROFILOK/CSAL%C3%81DOK/T%C3%9AL%C3%89L%C3%89SI_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Lopakodó | [Lopakodó](PROFILOK/CSAL%C3%81DOK/LOPAKOD%C3%93_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Horda | [Horda](PROFILOK/CSAL%C3%81DOK/HORDA_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Főnökvadászat | [Főnökvadászat](PROFILOK/CSAL%C3%81DOK/F%C5%90N%C3%96KVAD%C3%81SZAT_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Scavenger | [Scavenger](PROFILOK/CSAL%C3%81DOK/SCAVENGER_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Builder | [Builder](PROFILOK/CSAL%C3%81DOK/%C3%89P%C3%8DT%C5%90_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Expedíció | [Expedíció](PROFILOK/CSAL%C3%81DOK/EXPED%C3%8DCI%C3%93S_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Biztonsági zárolás | [Biztonsági zárolás](PROFILOK/CSAL%C3%81DOK/BIZTONS%C3%81GI_Z%C3%81ROL%C3%81SI_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Biohazard | [Biohazard](PROFILOK/CSAL%C3%81DOK/BIOHAZARD_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Anteverse | [Anteverse](PROFILOK/CSAL%C3%81DOK/ANTEVERSE_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Rémálom | [Rémálom](PROFILOK/CSAL%C3%81DOK/R%C3%89M%C3%81LOM_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Viharvert | [Viharvert](PROFILOK/CSAL%C3%81DOK/VISELT_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Precízió | [Precízió](PROFILOK/CSAL%C3%81DOK/PREC%C3%8DZI%C3%93S_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-logistics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Logisztika | [Logisztika](PROFILOK/CSAL%C3%81DOK/LOGISZTIKAI_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Kísérleti | [Kísérleti](PROFILOK/CSAL%C3%81DOK/K%C3%8DS%C3%89RLETI_PROFILCSAL%C3%81D.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Megfelelőségi teszt | [Megfelelőségi teszt](PROFILOK/CSAL%C3%81DOK/MEGFELEL%C5%90S%C3%89GI_TESZTPROFILCSAL%C3%81D.md) |

<a id="generated-references"></a>
## Létrehozott hivatkozások

`docs/profiles/profiles.generated.json`, a családi Markdown-fájlok és `FULL_PROFILE_REFERENCE.md` vannak contributor/operator hivatkozások ugyanabból a profilkészletből generálva. Nem tagjai a csomagnak, és nem szerkeszthetők a profilforrás megváltoztatása helyett. Az érvényesítéshez 17 családra, családonként 17 profilra, egyedi azonosítókra, minden sémakulcsra, rögzített szabályokra, fordítási lefedettségre és korlátos üzenetekre van szükség.
