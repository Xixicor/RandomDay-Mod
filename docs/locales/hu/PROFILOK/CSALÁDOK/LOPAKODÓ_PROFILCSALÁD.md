<a id="randomday---stealth-family"></a>
# RandomDay - Lopakodó család

> **Kanonikus angol forrás:** [stealth.md](../../../../profiles/families/stealth.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Verzió: `v0.3.16-alpha`

Kerülje az észlelést. A létesítmény a szokásosnál erősebben hallgat.

**Játékstílus:** elkerülő és felügyeleti nyomás **Üzenethang:** suttogta a vállalati megfigyelés

<a id="17-day-index"></a>
## 17 napos index

| Nap | Profil | Feltételek | Fő nyomás |
|---:|---|---|---|
| 1 | Suttogó tájolás | Normál nyomás (2.03/5) | Harcnyomás |
| 2 | Engedélyezett elhallgatás | Kedvező feltételek (1.43/5) | Környezeti terhelés |
| 3 | A padló meghallotta | Normál nyomás (2.34/5) | Túlélési nyomás |
| 4 | Zsebelt bizonyítékok | Kedvező feltételek (1.63/5) | Harcnyomás |
| 5 | Silent Security Sweep | Normál nyomás (2.21/5) | Harcnyomás |
| 6 | Előrejelzés: Alacsony profil | Normál nyomás (2.2/5) | Harcnyomás |
| 7 | Sötét útszakasz | Normál nyomás (2.22/5) | Harcnyomás |
| 8 | Láthatatlan tömegközlekedés | Normál nyomás (1.99/5) | Harcnyomás |
| 9 | Adagolás tanúk nélkül | Normál nyomás (2.38/5) | Túlélési nyomás |
| 10 | Csendes javítási ablak | Kedvező feltételek (1.19/5) | Környezeti terhelés |
| 11 | Megfigyelő gyakorlat | Kedvező feltételek (1.61/5) | Környezeti terhelés |
| 12 | Black Lab Blind Spot | Igényes feltételek (2.62/5) | Harcnyomás |
| 13 | Hosszú csendes műszak | Normál nyomás (2.55/5) | Túlélési nyomás |
| 14 | Hamis üres terem | Kedvező feltételek (1.34/5) | Harcnyomás |
| 15 | Érzékelési ellenőrzés | Normál nyomás (2.26/5) | Harcnyomás |
| 16 | Kísérleti csend | Normál nyomás (2.21/5) | Harcnyomás |
| 17 | Végső meg nem jelenés | Igényes feltételek (2.83/5) | Harcnyomás |

<a id="day-1---whispered-orientation"></a>
## 1. nap – Suttogó orientáció

**Profilazonosító:** `stealth_whispered_orientation` **Általános feltételek:** Normál nyomás (2.03/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: A normál nyomás a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects"></a>
### Fő hatások

- Ellenség pontossága: rendkívül pontos.
- A tűz által okozott kár jóval a normál alatt van (0,25x).
- Az ellenségészlelési sebesség jóval meghaladja a normált (2x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,25x).
- A verem kapacitása jóval meghaladja a normál értéket (2x).

<a id="domain-ratings"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.37/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | standard (1.9/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | standard (1.73/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.22/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.5/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **néma járőrtájolás**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0.07**
- Különleges eseményesély: **2**

<a id="exact-sandbox-settings"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 12 | Az alapkészlet mérete normál nyomás 12. |
| BonusPerkPoints | 0 | A bónuszpontok normál nyomás 0-nál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 2.0 | Az ellenségészlelési sebesség jóval meghaladja a normál 2x-et. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.25 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,25-szöröse. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.3 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,3x. |
| EnemyPlayerDamageMultiplier | 1.7 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 1,7-szeres. |
| EnemySpawnRate | 0.6 | Az ellenség gyakorisága a normál alatt van, 0,6x. |
| FatigueSpeedMultiplier | 1.0 | A fáradtság mértéke közel a normálhoz 1x. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 1.0 | Az élelmiszer-romlás 1x-nél közel a normálhoz. |
| GameDifficulty | 1 | A játék nehézsége szabványos. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.0 | Az éhezési arány közel a normálhoz, 1x. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.5 | A cikk tartóssága meghaladja a normál értéket, 1,5-szeres. |
| ItemStackSizeMultiplier | 2.0 | A verem kapacitása jóval meghaladja a normál 2x-et. |
| ItemWeightMultiplier | 0.9 | A cikk súlya közel a normálhoz, 0,9x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 1.7 | Az élménynövekedés jóval meghaladja a normál értéket, 1,7-szeres. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 1.0 | A hűtés 1x közel normális. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 1.0 | A mosogató újratöltési aránya közel a normálhoz, 1x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 1.0 | A szomjúságarány 1x-nél közel van a normálhoz. |
| WeatherFrequency | 3 | Az időjárási gyakoriság normális. |

<a id="optional-adapter-selection"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `stealth_whispered_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---authorized-silence"></a>
## 2. nap – Engedélyezett csend

**Profilazonosító:** `stealth_authorized_silence` **Általános feltételek:** Kedvező feltételek (1.43/5) **Egyszerű jelentése:** Kedvező feltételek. Környezeti nyomás: A standard nyomás a fő nyomás. Harci nyomás: A kedvező körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-1"></a>
### Fő hatások

- A tűz által okozott kár jóval a normál alatt van (0x).
- A cikk tartóssága rendkívüli (4x).
- A veremkapacitás rendkívül nagy (8x).
- A tapasztalatszerzés jóval meghaladja a normál értéket (2,4x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,05x).

<a id="domain-ratings-1"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | kedvező (1.59/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | kedvező (1.34/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | kedvező (1.08/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (1.91/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.2/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-1"></a>
### Találkozási kontextus

- Tier: **könnyű találkozások**
- Téma: **csendes járőrözés előkészítése**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0.028**
- Különleges eseményesély: **0**

<a id="exact-sandbox-settings-1"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 26 | Az alapkészlet mérete a 26-os tehermentesítési feltételeknek felel meg. |
| BonusPerkPoints | 7 | A bónuszpontok a 7-es könnyítési feltételek. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.65 | A kontinencia aránya a normál alatt van, 0,65x. |
| DamageToAlliesMultiplier | 0.0 | A tűz által okozott sebzés messze a normál alatt van, 0x. |
| DayNightCycleSpeedMultiplier | 0.9 | A nappali-éjszaka ciklussebesség a normálhoz közeli, 0,9-szeres. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 0 | A halálbüntetés minimális. |
| DetectionSpeedMultiplier | 1.2 | Az ellenségészlelési sebesség 1,2-szeres a normálnál. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.05 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,05x. |
| EnemyAccuracy | 3 | Az ellenség pontossága pontos. |
| EnemyDeployableDamageMultiplier | 0.1 | Az ellenséges sebzés a védelemben jóval a normál alatt van, 0,1x. |
| EnemyHealthMultiplier | 1.1 | Az ellenség ellenálló képessége a normálhoz közel 1,1-szeres. |
| EnemyPlayerDamageMultiplier | 1.1 | A játékosokat ért ellenséges sebzés 1,1-szeresével közel normális. |
| EnemySpawnRate | 0.3 | Az ellenség gyakorisága messze a normál alatt van, 0,3x. |
| FatigueSpeedMultiplier | 0.65 | A fáradtság aránya a normál alatt van, 0,65x. |
| FirstTimeStartingWeapon | 2 | A fegyverellátás indítása normál nyomás 2-nél. |
| FoodSpoilSpeedMultiplier | 0.75 | Az élelmiszer romlása a normál alatt van, 0,75x. |
| GameDifficulty | 1 | A játék nehézsége szabványos. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.65 | Az éhezési arány a normál alatt van, 0,65-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 4.0 | Az elemek tartóssága rendkívüli, 4x. |
| ItemStackSizeMultiplier | 8.0 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.5 | A cikk súlya jóval a normál alatt van, 0,5x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.4 | Az élménynövekedés jóval meghaladja a normál értéket, 2,4-szeres. |
| PowerSocketsOffAtNight | false | A konnektorok éjjel is elérhetők maradnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 1.5 | A hűtés 1,5-szerese a normálnál magasabb. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 2.0 | A mosogató újratöltési aránya jóval meghaladja a normál kétszeresét. |
| StorageByTag | false | A címkézett tárolási szervezet le van tiltva. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 0.65 | A szomjúságarány a normál alatt van, 0,65-szeres. |
| WeatherFrequency | 2 | Az időjárás gyakorisága alkalmi. |

<a id="optional-adapter-selection-1"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `stealth_authorized_silence`
- `lethal_lasers`: `low_hazard`

<a id="day-3---the-floor-heard-you"></a>
## 3. nap – A padló meghallotta Önt

**Profilazonosító:** `stealth_the_floor_heard_you` **Általános feltételek:** Normál nyomás (2.34/5) **Egyszerű jelentése:** Normál nyomás. Túlélési nyomás: Az igényes feltételek jelentik a fő nyomást. Harci nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Vigyél magaddal élelmet és vizet, pihenj a hosszú utazások előtt, és tervezz biztonságos megállókat.

<a id="main-effects-2"></a>
### Fő hatások

- Ellenség pontossága: rendkívül pontos.
- Lehet, hogy a mosogatóvíz nem biztonságos.
- A tűz által okozott kár jóval a normál alatt van (0,25x).
- Az ellenségészlelési sebesség jóval meghaladja a normált (2x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,25x).

<a id="domain-ratings-2"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.53/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | igényes (2.93/5) | Az éhség, a szomjúság, a fáradtság vagy a higiénia több figyelmet igényel. |
| Az erőforrások nyomása | standard (1.88/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.22/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.5/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-2"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **csendes járőr bioforrás**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0.091**
- Különleges eseményesély: **8**

<a id="exact-sandbox-settings-2"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 12 | Az alapkészlet mérete normál nyomás 12. |
| BonusPerkPoints | 0 | A bónuszpontok normál nyomás 0-nál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.45 | A kontinencia aránya meghaladja a normál értéket, 1,45x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 2.0 | Az ellenségészlelési sebesség jóval meghaladja a normál 2x-et. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.25 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,25-szöröse. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 0.9 | Az ellenséges védekezésben okozott sebzés közel normális, 0,9-szeres. |
| EnemyHealthMultiplier | 1.4 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,4-szeres. |
| EnemyPlayerDamageMultiplier | 1.8 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 1,8-szoros. |
| EnemySpawnRate | 0.6 | Az ellenség gyakorisága a normál alatt van, 0,6x. |
| FatigueSpeedMultiplier | 1.1 | A fáradtság mértéke közel a normálhoz, 1,1x. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 1.25 | Az élelmiszer-romlás mértéke meghaladja a normál értéket, 1,25-szörös. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.3 | Az éhezési arány 1,3-szoros a normálnál. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.25 | A cikk tartóssága meghaladja a normál értéket, 1,25x. |
| ItemStackSizeMultiplier | 2.0 | A verem kapacitása jóval meghaladja a normál 2x-et. |
| ItemWeightMultiplier | 0.9 | A cikk súlya közel a normálhoz, 0,9x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.0 | Az élménynövekedés 2x-nél jóval meghaladja a normál értéket. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 0.75 | A hűtés a normál alatt van, 0,75x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.25 | A mosogató utántöltési aránya jóval a normál alatt van, 0,25x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | igaz | Lehet, hogy a mosogatóvíz nem biztonságos. |
| ThirstSpeedMultiplier | 1.9 | A szomjúságarány jóval a normál felett van, 1,9-szeres. |
| WeatherFrequency | 3 | Az időjárási gyakoriság normális. |

<a id="optional-adapter-selection-2"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `stealth_the_floor_heard_you`
- `lethal_lasers`: `standard_safety`

<a id="day-4---pocketed-evidence"></a>
## 4. nap – Zseb bizonyítékok

**Profilazonosító:** `stealth_pocketed_evidence` **Általános feltételek:** Kedvező feltételek (1.63/5) **Egyszerű jelentése:** Kedvező feltételek. Harci nyomás: A normál nyomás a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-3"></a>
### Fő hatások

- Ellenség pontossága: rendkívül pontos.
- A cikk tartóssága rendkívüli (2,5x).
- A veremkapacitás rendkívül nagy (14x).
- A tapasztalatszerzés rendkívüli (2,6x).
- A mosogató újratöltési aránya rendkívüli (2,5x).

<a id="domain-ratings-3"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (1.99/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | kedvező (1.5/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | kedvező (0.99/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (1.93/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.44/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-3"></a>
### Találkozási kontextus

- Tier: **könnyű találkozások**
- Téma: **csendes járőri zsákmánymobilitás**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0.056**
- Különleges eseményesély: **2**

<a id="exact-sandbox-settings-3"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 30 | Az alapkészlet mérete a 30-as mentességi állapotnak felel meg. |
| BonusPerkPoints | 3 | A bónuszpontok kedvező feltételek a 3. pontnál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.75 | A kontinencia aránya a normál alatt van, 0,75x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.6 | Az ellenségészlelési sebesség 1,6x a normál felett van. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.05 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,05x. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 0.5 | Az ellenséges védekezésben okozott sebzés jóval a normál alatt van, 0,5-szeres. |
| EnemyHealthMultiplier | 1.2 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,2-szeres. |
| EnemyPlayerDamageMultiplier | 1.4 | A játékosokat ért ellenséges sebzés 1,4-szerese a normál feletti. |
| EnemySpawnRate | 0.4 | Az ellenség gyakorisága messze a normál alatt van, 0,4x. |
| FatigueSpeedMultiplier | 0.75 | A fáradtság aránya a normál alatt van, 0,75x. |
| FirstTimeStartingWeapon | 6 | A fegyverellátás megkezdése kedvező feltételekkel 6. |
| FoodSpoilSpeedMultiplier | 0.6 | Az élelmiszer romlása a normál alatt van, 0,6x. |
| GameDifficulty | 1 | A játék nehézsége szabványos. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.75 | Az éhezési arány a normál alatt van, 0,75-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 2.5 | Az elemek tartóssága rendkívüli, 2,5-szeres. |
| ItemStackSizeMultiplier | 14.0 | A veremkapacitás extrém, 14x. |
| ItemWeightMultiplier | 0.3 | A cikk súlya messze a normál alatt van, 0,3x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.6 | Az élménynövekedés extrém, 2,6x. |
| PowerSocketsOffAtNight | false | A konnektorok éjjel is elérhetők maradnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 1.5 | A hűtés 1,5-szerese a normálnál magasabb. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 2.5 | A mosogató újratöltési aránya rendkívüli, 2,5-szeres. |
| StorageByTag | false | A címkézett tárolási szervezet le van tiltva. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 0.75 | A szomjúságarány a normál alatt van, 0,75-szeres. |
| WeatherFrequency | 2 | Az időjárás gyakorisága alkalmi. |

<a id="optional-adapter-selection-3"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `stealth_pocketed_evidence`
- `lethal_lasers`: `low_hazard`

<a id="day-5---silent-security-sweep"></a>
## 5. nap – Csendes biztonsági sweep

**Profilazonosító:** `stealth_silent_security_sweep` **Általános feltételek:** Normál nyomás (2.21/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: Az igényes feltételek a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-4"></a>
### Fő hatások

- Az ellenségészlelési sebesség rendkívüli (3,8x).
- Ellenség pontossága: rendkívül pontos.
- A tapasztalatszerzés jóval meghaladja a normál értéket (2,4x).
- A tűz által okozott kár jóval a normál alatt van (0,1x).
- A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket (2,2x).

<a id="domain-ratings-4"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | igényes (2.92/5) | Az ellenséges nyomás megemelkedett; készüljön fel az eljegyzés előtt. |
| Túlélési nyomás | standard (1.94/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.6/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.17/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.51/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-4"></a>
### Találkozási kontextus

- Tier: **súlyos találkozások**
- Téma: **csendes járőrbiztonság**
- Aktív csoportok maximális száma: **2**
- Vegyes találkozási esély: **0.119**
- Különleges eseményesély: **14**

<a id="exact-sandbox-settings-4"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 12 | Az alapkészlet mérete normál nyomás 12. |
| BonusPerkPoints | 0 | A bónuszpontok normál nyomás 0-nál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.1 | A tűz által okozott kár jóval a normál alatt van, 0,1-szeres. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 3.8 | Az ellenségészlelési sebesség rendkívüli, 3,8-szoros. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.3 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,3-szoros. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.5 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,5-szeres. |
| EnemyPlayerDamageMultiplier | 2.2 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 2,2-szeres. |
| EnemySpawnRate | 0.9 | Az ellenség gyakorisága a normálhoz közeli, 0,9x. |
| FatigueSpeedMultiplier | 1.15 | A fáradtság aránya a normálhoz közeli, 1,15x. |
| FirstTimeStartingWeapon | 4 | A fegyverellátás megkezdése kedvező feltételekkel 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Az élelmiszer-romlás 1x-nél közel a normálhoz. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.0 | Az éhezési arány közel a normálhoz, 1x. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.25 | A cikk tartóssága meghaladja a normál értéket, 1,25x. |
| ItemStackSizeMultiplier | 2.0 | A verem kapacitása jóval meghaladja a normál 2x-et. |
| ItemWeightMultiplier | 0.9 | A cikk súlya közel a normálhoz, 0,9x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.4 | Az élménynövekedés jóval meghaladja a normál értéket, 2,4-szeres. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 1.0 | A hűtés 1x közel normális. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 1.0 | A mosogató újratöltési aránya közel a normálhoz, 1x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 1.0 | A szomjúságarány 1x-nél közel van a normálhoz. |
| WeatherFrequency | 2 | Az időjárás gyakorisága alkalmi. |

<a id="optional-adapter-selection-4"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `stealth_silent_security_sweep`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---forecast-low-profile"></a>
## 6. nap – Előrejelzés: Alacsony profil

**Profilazonosító:** `stealth_forecast_low_profile` **Általános feltételek:** Normál nyomás (2.2/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: A normál nyomás a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-5"></a>
### Fő hatások

- Ellenség pontossága: rendkívül pontos.
- Időjárási gyakoriság: nagyon gyakori.
- Az ellenségészlelési sebesség jóval meghaladja a normált (2,1x).
- A tűz által okozott kár jóval a normál alatt van (0,25x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,25x).

<a id="domain-ratings-5"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.57/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | standard (2.1/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | standard (1.83/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.52/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.5/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-5"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **csendes járőr időjárás**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0.091**
- Különleges eseményesély: **10**

<a id="exact-sandbox-settings-5"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 12 | Az alapkészlet mérete normál nyomás 12. |
| BonusPerkPoints | 0 | A bónuszpontok normál nyomás 0-nál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.25 | A nappali-éjszakai ciklussebesség a normál feletti, 1,25x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 2.1 | Az ellenségészlelési sebesség jóval meghaladja a normál 2,1-szeresét. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.25 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,25-szöröse. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.4 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,4-szeres. |
| EnemyPlayerDamageMultiplier | 1.8 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 1,8-szoros. |
| EnemySpawnRate | 0.6 | Az ellenség gyakorisága a normál alatt van, 0,6x. |
| FatigueSpeedMultiplier | 1.2 | A fáradtság mértéke meghaladja a normál értéket, 1,2-szeres. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 1.25 | Az élelmiszer-romlás mértéke meghaladja a normál értéket, 1,25-szörös. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.1 | Az éhezési arány közel a normálhoz, 1,1-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.1 | A cikk tartóssága közel a normálhoz, 1,1x. |
| ItemStackSizeMultiplier | 2.0 | A verem kapacitása jóval meghaladja a normál 2x-et. |
| ItemWeightMultiplier | 0.9 | A cikk súlya közel a normálhoz, 0,9x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 1.9 | Az élménynövekedés jóval meghaladja a normál értéket, 1,9-szeres. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 0.8 | A hűtés a normál alatt van, 0,8x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.75 | A mosogató utántöltési aránya a normál alatt van, 0,75x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 1.35 | A szomjúságarány 1,35-szerese a normál feletti. |
| WeatherFrequency | 5 | Az időjárási gyakoriság nagyon gyakori. |

<a id="optional-adapter-selection-5"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `stealth_forecast_low_profile`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---dark-route-clearance"></a>
## 7. nap – Sötét útszakasz

**Profilazonosító:** `stealth_dark_route_clearance` **Általános feltételek:** Normál nyomás (2.22/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: Az igényes feltételek a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-6"></a>
### Fő hatások

- Az ellenségészlelési sebesség rendkívüli (3,2x).
- Ellenség pontossága: rendkívül pontos.
- A veremkapacitás rendkívül nagy (3x).
- A tapasztalatszerzés rendkívüli (2,6x).
- Nappali-éjszaka állapot: éjszakai torzítás.

<a id="domain-ratings-6"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | igényes (2.93/5) | Az ellenséges nyomás megemelkedett; készüljön fel az eljegyzés előtt. |
| Túlélési nyomás | standard (1.99/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.48/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.33/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.49/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-6"></a>
### Találkozási kontextus

- Tier: **súlyos találkozások**
- Téma: **néma járőr éjszaka**
- Aktív csoportok maximális száma: **2**
- Vegyes találkozási esély: **0.119**
- Különleges eseményesély: **16**

<a id="exact-sandbox-settings-6"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 16 | Az alapkészlet mérete kedvező feltételek mellett 16. |
| BonusPerkPoints | 0 | A bónuszpontok normál nyomás 0-nál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.95 | A kontinencia aránya a normálhoz közeli, 0,95x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 2 | A nappal-éjszaka állapot éjszakai torzítású. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 3.2 | Az ellenségészlelési sebesség rendkívüli, 3,2-szeres. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.2 | Halál esetén a tartósság csökkenése messze a normál alatt van, 0,2-szeres. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.5 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,5-szeres. |
| EnemyPlayerDamageMultiplier | 2.1 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 2,1-szeres. |
| EnemySpawnRate | 0.9 | Az ellenség gyakorisága a normálhoz közeli, 0,9x. |
| FatigueSpeedMultiplier | 1.5 | A fáradtság mértéke meghaladja a normál értéket, 1,5-szeres. |
| FirstTimeStartingWeapon | 5 | A fegyverellátás megkezdése kedvező feltételekkel 5. |
| FoodSpoilSpeedMultiplier | 1.0 | Az élelmiszer-romlás 1x-nél közel a normálhoz. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.95 | Az éhezési arány közel a normálhoz, 0,95-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.5 | A cikk tartóssága meghaladja a normál értéket, 1,5-szeres. |
| ItemStackSizeMultiplier | 3.0 | A veremkapacitás extrém, 3x. |
| ItemWeightMultiplier | 0.7 | A cikk súlya a normál alatt van, 0,7x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.6 | Az élménynövekedés extrém, 2,6x. |
| PowerSocketsOffAtNight | false | A konnektorok éjjel is elérhetők maradnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 1.0 | A hűtés 1x közel normális. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 1.0 | A mosogató újratöltési aránya közel a normálhoz, 1x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 0.95 | A szomjúságarány a normálhoz közeli, 0,95-szeres. |
| WeatherFrequency | 4 | Az időjárási gyakoriság gyakori. |

<a id="optional-adapter-selection-6"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `stealth_dark_route_clearance`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---unseen-transit"></a>
## 8. nap – Láthatatlan tömegközlekedés

**Profilazonosító:** `stealth_unseen_transit` **Általános feltételek:** Normál nyomás (1.99/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: Az igényes feltételek a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-7"></a>
### Fő hatások

- A nappali-éjszaka ciklussebesség extrém (3x).
- Ellenség pontossága: rendkívül pontos.
- Az ellenségészlelési sebesség rendkívüli (2,7x).
- A veremkapacitás rendkívül nagy (4x).
- A tapasztalatszerzés rendkívüli (2,7x).

<a id="domain-ratings-7"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | igényes (2.61/5) | Az ellenséges nyomás megemelkedett; készüljön fel az eljegyzés előtt. |
| Túlélési nyomás | kedvező (1.42/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | kedvező (1.41/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.56/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.47/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-7"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **csendes járőrút**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0.105**
- Különleges eseményesély: **14**

<a id="exact-sandbox-settings-7"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 0 | A bónuszpontok normál nyomás 0-nál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.7 | A kontinencia aránya a normál alatt van, 0,7-szeres. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 3.0 | A nappali-éjszakai ciklus sebessége extrém, 3x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 2.7 | Az ellenségészlelési sebesség rendkívüli, 2,7-szeres. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.15 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,15-szöröse. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 0.8 | Az ellenséges védekezésben okozott sebzés a normál alatt van, 0,8x. |
| EnemyHealthMultiplier | 1.1 | Az ellenség ellenálló képessége a normálhoz közel 1,1-szeres. |
| EnemyPlayerDamageMultiplier | 1.8 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 1,8-szoros. |
| EnemySpawnRate | 0.8 | Az ellenség gyakorisága a normál alatt van, 0,8x. |
| FatigueSpeedMultiplier | 0.7 | A fáradtság mértéke a normál alatt van, 0,7-szeres. |
| FirstTimeStartingWeapon | 6 | A fegyverellátás megkezdése kedvező feltételekkel 6. |
| FoodSpoilSpeedMultiplier | 0.9 | Az élelmiszer romlása közel normális, 0,9-szeres. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.7 | Az éhezési arány 0,7-szeres a normál alatt. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.25 | A cikk tartóssága meghaladja a normál értéket, 1,25x. |
| ItemStackSizeMultiplier | 4.0 | A verem kapacitása extrém, 4x. |
| ItemWeightMultiplier | 0.7 | A cikk súlya a normál alatt van, 0,7x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.7 | Az élménynövekedés extrém, 2,7-szeres. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 1.1 | A hűtés a normálhoz közel 1,1x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 1.5 | A mosogató utántöltési aránya 1,5-szeres a normálnál. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 0.7 | A szomjúságarány a normál alatt van, 0,7-szeres. |
| WeatherFrequency | 3 | Az időjárási gyakoriság normális. |

<a id="optional-adapter-selection-7"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `stealth_unseen_transit`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-without-witnesses"></a>
## 9. nap – Étkezés tanúk nélkül

**Profilazonosító:** `stealth_ration_without_witnesses` **Általános feltételek:** Normál nyomás (2.38/5) **Egyszerű jelentése:** Normál nyomás. Túlélési nyomás: Az igényes feltételek jelentik a fő nyomást. Harci nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Vigyél magaddal élelmet és vizet, pihenj a hosszú utazások előtt, és tervezz biztonságos megállókat.

<a id="main-effects-8"></a>
### Fő hatások

- Ellenség pontossága: rendkívül pontos.
- Az alapkészlet mérete súlyos körülmények között van (10).
- Lehet, hogy a mosogatóvíz nem biztonságos.
- A tűz által okozott kár jóval a normál alatt van (0,25x).
- Az ellenségészlelési sebesség jóval meghaladja a normált (2x).

<a id="domain-ratings-8"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.44/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | igényes (2.96/5) | Az éhség, a szomjúság, a fáradtság vagy a higiénia több figyelmet igényel. |
| Az erőforrások nyomása | standard (2.26/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.17/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.53/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-8"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **csendes járőrhiány**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0.084**
- Különleges eseményesély: **8**

<a id="exact-sandbox-settings-8"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 10 | Az alapkészlet mérete súlyos körülmények között 10. |
| BonusPerkPoints | 0 | A bónuszpontok normál nyomás 0-nál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.25 | A kontinencia aránya meghaladja a normál értéket, 1,25x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 2.0 | Az ellenségészlelési sebesség jóval meghaladja a normál 2x-et. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.35 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,35-szöröse. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.6 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,6x. |
| EnemyPlayerDamageMultiplier | 1.9 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 1,9-szeres. |
| EnemySpawnRate | 0.6 | Az ellenség gyakorisága a normál alatt van, 0,6x. |
| FatigueSpeedMultiplier | 1.3 | A fáradtság mértéke meghaladja a normál értéket, 1,3-szoros. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 2.0 | Az élelmiszer romlása jóval meghaladja a normál értéket, 2x. |
| GameDifficulty | 1 | A játék nehézsége szabványos. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.7 | Az éhezési arány jóval meghaladja a normált, 1,7-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 0.75 | A cikk tartóssága a normál alatt van, 0,75x. |
| ItemStackSizeMultiplier | 1.0 | A veremkapacitás 1x-nél közel a normálhoz. |
| ItemWeightMultiplier | 1.2 | A cikk súlya meghaladja a normál értéket, 1,2x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 1.9 | Az élménynövekedés jóval meghaladja a normál értéket, 1,9-szeres. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 0.5 | A hűtés jóval a normál alatt van, 0,5x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.5 | A mosogató utántöltési aránya jóval a normál alatt van, 0,5x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | igaz | Lehet, hogy a mosogatóvíz nem biztonságos. |
| ThirstSpeedMultiplier | 1.6 | A szomjúságarány 1,6-szoros a normál felett. |
| WeatherFrequency | 2 | Az időjárás gyakorisága alkalmi. |

<a id="optional-adapter-selection-8"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `stealth_ration_without_witnesses`
- `lethal_lasers`: `standard_safety`

<a id="day-10---quiet-repair-window"></a>
## 10. nap – Csendes javítási ablak

**Profilazonosító:** `stealth_quiet_repair_window` **Általános feltételek:** Kedvező feltételek (1.19/5) **Egyszerű jelentése:** Kedvező feltételek. Környezeti nyomás: A kedvező feltételek a fő terhelés. Harci nyomás: A kedvező körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-9"></a>
### Fő hatások

- A bónuszpontok könnyítési feltételek (10).
- A tűz által okozott kár jóval a normál alatt van (0x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0x).
- A cikk tartóssága rendkívüli (3x).
- A veremkapacitás rendkívül nagy (10x).

<a id="domain-ratings-9"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | kedvező (1.31/5) | Az ellenséges nyomás a normálnál kisebb. |
| Túlélési nyomás | kedvező (1.02/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | kedvező (0.9/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | kedvező (1.54/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.19/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-9"></a>
### Találkozási kontextus

- Tier: **minimális találkozások**
- Téma: **csendes járőr-helyreállítás**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0**
- Különleges eseményesély: **0**

<a id="exact-sandbox-settings-9"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 30 | Az alapkészlet mérete a 30-as mentességi állapotnak felel meg. |
| BonusPerkPoints | 10 | A bónuszpontok 10-es mentességi feltételek. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.45 | A kontinencia aránya messze a normál alatt van, 0,45x. |
| DamageToAlliesMultiplier | 0.0 | A tűz által okozott sebzés messze a normál alatt van, 0x. |
| DayNightCycleSpeedMultiplier | 0.85 | A nappali-éjszaka ciklussebesség közel a normálhoz, 0,85-szerese. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 0 | A halálbüntetés minimális. |
| DetectionSpeedMultiplier | 0.8 | Az ellenségészlelési sebesség a normál alatt van, 0,8x. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.0 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0x. |
| EnemyAccuracy | 3 | Az ellenség pontossága pontos. |
| EnemyDeployableDamageMultiplier | 0.1 | Az ellenséges sebzés a védelemben jóval a normál alatt van, 0,1x. |
| EnemyHealthMultiplier | 1.0 | Az ellenség ellenálló képessége 1x közel normális. |
| EnemyPlayerDamageMultiplier | 0.6 | A játékosokat ért ellenséges sebzés a normál alatt van, 0,6x. |
| EnemySpawnRate | 0.2 | Az ellenség gyakorisága messze a normál alatt van, 0,2x. |
| FatigueSpeedMultiplier | 0.45 | A fáradtság aránya jóval a normál alatt van, 0,45x. |
| FirstTimeStartingWeapon | 2 | A fegyverellátás indítása normál nyomás 2-nél. |
| FoodSpoilSpeedMultiplier | 0.4 | Az élelmiszer romlása jóval a normál alatt van, 0,4-szeres. |
| GameDifficulty | 1 | A játék nehézsége szabványos. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.45 | Az éhezési arány jóval a normál alatt van, 0,45-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 3.0 | Az elemek tartóssága rendkívüli, 3x. |
| ItemStackSizeMultiplier | 10.0 | A veremkapacitás extrém 10x-nél. |
| ItemWeightMultiplier | 0.4 | A cikk súlya jóval a normál alatt van, 0,4x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 3.5 | Az élménynövekedés extrém 3,5-szeresnél. |
| PowerSocketsOffAtNight | false | A konnektorok éjjel is elérhetők maradnak. |
| RadiationDealsDamage | false | A sugárzási kár le van tiltva. |
| RefrigerationEffectivenessMultiplier | 1.8 | A hűtés jóval meghaladja a normál értéket, 1,8x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 3.0 | A mosogató utántöltési arány extrém, 3x. |
| StorageByTag | false | A címkézett tárolási szervezet le van tiltva. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 0.45 | A szomjúságarány jóval a normál alatt van, 0,45x. |
| WeatherFrequency | 1 | Az időjárási gyakoriság ritka. |

<a id="optional-adapter-selection-9"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `stealth_quiet_repair_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---observation-drill"></a>
## 11. nap – Megfigyelési gyakorlat

**Profilazonosító:** `stealth_observation_drill` **Általános feltételek:** Kedvező feltételek (1.61/5) **Egyszerű jelentése:** Kedvező feltételek. Környezeti nyomás: A standard nyomás a fő nyomás. Harci nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-10"></a>
### Fő hatások

- Ellenség pontossága: rendkívül pontos.
- A bónuszpontok könnyítési feltételek (12).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0x).
- A veremkapacitás rendkívül nagy (5x).
- A tapasztalatszerzés rendkívüli (4,5x).

<a id="domain-ratings-10"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (1.93/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | kedvező (1.58/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (0.92/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (1.96/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.43/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-10"></a>
### Találkozási kontextus

- Tier: **könnyű találkozások**
- Téma: **csendes járőrképzés**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0.049**
- Különleges eseményesély: **3**

<a id="exact-sandbox-settings-10"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 24 | Az alapkészlet mérete a 24-es tehermentesítési feltételeknek felel meg. |
| BonusPerkPoints | 12 | A bónuszpontok a 12-es megkönnyebbülés feltételei. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.8 | A kontinencia aránya a normál alatt van, 0,8x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.15 | A nappali-éjszaka ciklussebesség közel a normálhoz, 1,15x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.6 | Az ellenségészlelési sebesség 1,6x a normál felett van. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.0 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0x. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 0.4 | Az ellenséges sebzés a védelemben jóval a normál alatt van, 0,4-szeres. |
| EnemyHealthMultiplier | 1.1 | Az ellenség ellenálló képessége a normálhoz közel 1,1-szeres. |
| EnemyPlayerDamageMultiplier | 1.1 | A játékosokat ért ellenséges sebzés 1,1-szeresével közel normális. |
| EnemySpawnRate | 0.5 | Az ellenség gyakorisága messze a normál alatt van, 0,5x. |
| FatigueSpeedMultiplier | 0.8 | A fáradtság mértéke a normál alatt van, 0,8x. |
| FirstTimeStartingWeapon | 6 | A fegyverellátás megkezdése kedvező feltételekkel 6. |
| FoodSpoilSpeedMultiplier | 0.8 | Az élelmiszer romlása a normál alatt van, 0,8x. |
| GameDifficulty | 1 | A játék nehézsége szabványos. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.8 | Az éhezési arány a normál alatt van, 0,8-szoros. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 2.25 | A cikk tartóssága jóval meghaladja a normál értéket, 2,25x. |
| ItemStackSizeMultiplier | 5.0 | A verem kapacitása rendkívüli, 5x. |
| ItemWeightMultiplier | 0.6 | A cikk súlya a normál alatt van, 0,6x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 4.5 | Az élménynövekedés extrém 4,5-szeresnél. |
| PowerSocketsOffAtNight | false | A konnektorok éjjel is elérhetők maradnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 1.3 | A hűtés a normálnál 1,3-szoros. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 2.0 | A mosogató újratöltési aránya jóval meghaladja a normál kétszeresét. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 0.8 | A szomjúságarány a normál alatt van, 0,8-szoros. |
| WeatherFrequency | 2 | Az időjárás gyakorisága alkalmi. |

<a id="optional-adapter-selection-10"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `stealth_observation_drill`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-blind-spot"></a>
## 12. nap – Fekete laboratóriumi vakfolt

**Profilazonosító:** `stealth_black_lab_blind_spot` **Általános feltételek:** Igényes feltételek (2.62/5) **Egyszerű jelentése:** Igényes feltételek. Harci nyomás: A súlyos körülmények a fő nyomás. Túlélési nyomás: A standard nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-11"></a>
### Fő hatások

- Az ellenségészlelési sebesség rendkívüli (3,7x).
- Ellenség pontossága: rendkívül pontos.
- Az ellenséges sebzés a játékosokban rendkívüli (3,3x).
- Játék nehézsége: nagyon nehéz.
- A tapasztalatszerzés rendkívüli (3,6x).

<a id="domain-ratings-11"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | súlyos (3.52/5) | Az ellenséges nyomás megemelkedett; készüljön fel az eljegyzés előtt. |
| Túlélési nyomás | standard (2.53/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | standard (1.74/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.22/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | standard (1.79/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-11"></a>
### Találkozási kontextus

- Tier: **extrém találkozások**
- Téma: **néma járőrteszt**
- Aktív csoportok maximális száma: **2**
- Vegyes találkozási esély: **0.161**
- Különleges eseményesély: **22**

<a id="exact-sandbox-settings-11"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 12 | Az alapkészlet mérete normál nyomás 12. |
| BonusPerkPoints | 2 | A bónusz pontok kedvező feltételek 2-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.15 | A tűz által okozott kár jóval a normál alatt van, 0,15-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 2 | A halálbüntetés súlyos. |
| DetectionSpeedMultiplier | 3.7 | Az ellenségészlelési sebesség rendkívüli, 3,7-szeres. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.4 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,4-szeres. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 1.4 | Az ellenséges védekezésben okozott sebzés 1,4-szerese a normálnál nagyobb. |
| EnemyHealthMultiplier | 2.3 | Az ellenség ellenálló képessége jóval meghaladja a normál értéket, 2,3x. |
| EnemyPlayerDamageMultiplier | 3.3 | A játékosokat ért ellenséges sebzés extrém, 3,3-szoros. |
| EnemySpawnRate | 1.2 | Az ellenség gyakorisága a normál felett van, 1,2-szeres. |
| FatigueSpeedMultiplier | 1.15 | A fáradtság aránya a normálhoz közeli, 1,15x. |
| FirstTimeStartingWeapon | 1 | A fegyverellátás indítása normál nyomás 1-nél. |
| FoodSpoilSpeedMultiplier | 1.15 | Az élelmiszer romlása közel normális, 1,15-szeres. |
| GameDifficulty | 3 | A játék nehézségei nagyon nehézek. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.15 | Az éhezési arány közel a normálhoz, 1,15-szörös. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.1 | A cikk tartóssága közel a normálhoz, 1,1x. |
| ItemStackSizeMultiplier | 2.0 | A verem kapacitása jóval meghaladja a normál 2x-et. |
| ItemWeightMultiplier | 0.9 | A cikk súlya közel a normálhoz, 0,9x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 3.6 | Az élménynövekedés extrém, 3,6-szoros. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 0.85 | A hűtés közel normális, 0,85x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.75 | A mosogató utántöltési aránya a normál alatt van, 0,75x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | igaz | Lehet, hogy a mosogatóvíz nem biztonságos. |
| ThirstSpeedMultiplier | 1.15 | A szomjúságarány a normálhoz közeli, 1,15-szeres. |
| WeatherFrequency | 3 | Az időjárási gyakoriság normális. |

<a id="optional-adapter-selection-11"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `stealth_black_lab_blind_spot`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-silent-shift"></a>
## 13. nap – Hosszú néma műszak

**Profilazonosító:** `stealth_long_silent_shift` **Általános feltételek:** Normál nyomás (2.55/5) **Egyszerű jelentése:** Normál nyomás. Túlélési nyomás: Az igényes feltételek jelentik a fő nyomást. Harci nyomás: Az igényes körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Vigyél magaddal élelmet és vizet, pihenj a hosszú utazások előtt, és tervezz biztonságos megállókat.

<a id="main-effects-12"></a>
### Fő hatások

- Ellenség pontossága: rendkívül pontos.
- Játék nehézsége: nagyon nehéz.
- Az alapkészlet mérete súlyos körülmények között van (10).
- Lehet, hogy a mosogatóvíz nem biztonságos.
- A tapasztalatszerzés jóval meghaladja a normál értéket (2,2x).

<a id="domain-ratings-12"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | igényes (2.75/5) | Az ellenséges nyomás megemelkedett; készüljön fel az eljegyzés előtt. |
| Túlélési nyomás | igényes (3.28/5) | Az éhség, a szomjúság, a fáradtság vagy a higiénia több figyelmet igényel. |
| Az erőforrások nyomása | standard (2.12/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.01/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | standard (1.77/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-12"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **csendes járőrállóság**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0.098**
- Különleges eseményesély: **7**

<a id="exact-sandbox-settings-12"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 10 | Az alapkészlet mérete súlyos körülmények között 10. |
| BonusPerkPoints | 0 | A bónuszpontok normál nyomás 0-nál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.35 | A kontinencia aránya meghaladja a normál értéket, 1,35x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 0.3 | A nappali-éjszakai ciklussebesség jóval a normál alatt van, 0,3x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 2 | A halálbüntetés súlyos. |
| DetectionSpeedMultiplier | 2.0 | Az ellenségészlelési sebesség jóval meghaladja a normál 2x-et. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.35 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,35-szöröse. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 0.9 | Az ellenséges védekezésben okozott sebzés közel normális, 0,9-szeres. |
| EnemyHealthMultiplier | 1.7 | Az ellenség ellenálló képessége jóval meghaladja a normál értéket, 1,7-szeres. |
| EnemyPlayerDamageMultiplier | 2.1 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 2,1-szeres. |
| EnemySpawnRate | 0.5 | Az ellenség gyakorisága messze a normál alatt van, 0,5x. |
| FatigueSpeedMultiplier | 1.8 | A fáradtság mértéke jóval meghaladja a normál értéket, 1,8x. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 1.8 | Az élelmiszer romlása jóval meghaladja a normál értéket, 1,8x. |
| GameDifficulty | 3 | A játék nehézségei nagyon nehézek. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.9 | Az éhség aránya jóval a normál felett van, 1,9-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 0.9 | A cikk tartóssága közel a normálhoz, 0,9x. |
| ItemStackSizeMultiplier | 2.0 | A verem kapacitása jóval meghaladja a normál 2x-et. |
| ItemWeightMultiplier | 1.4 | A cikk súlya meghaladja a normál értéket, 1,4-szeres. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.2 | Az élménynövekedés jóval meghaladja a normál értéket, 2,2-szeres. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 0.65 | A hűtés a normál alatt van, 0,65x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.35 | A mosogató utántöltési aránya jóval a normál alatt van, 0,35x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | igaz | Lehet, hogy a mosogatóvíz nem biztonságos. |
| ThirstSpeedMultiplier | 1.9 | A szomjúságarány jóval a normál felett van, 1,9-szeres. |
| WeatherFrequency | 2 | Az időjárás gyakorisága alkalmi. |

<a id="optional-adapter-selection-12"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `black_lab`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `stealth_long_silent_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---false-empty-hall"></a>
## 14. nap – Hamis üres terem

**Profilazonosító:** `stealth_false_empty_hall` **Általános feltételek:** Kedvező feltételek (1.34/5) **Egyszerű jelentése:** Kedvező feltételek. Harci nyomás: A normál nyomás a fő nyomás. Helyreállítási nyomás: A kedvező körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-13"></a>
### Fő hatások

- Játék nehézsége: nagyon nehéz.
- Az alapkészlet mérete könnyítési feltételek (40).
- A bónuszpontok könnyítési feltételek (12).
- A tűz által okozott kár jóval a normál alatt van (0x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0x).

<a id="domain-ratings-13"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (1.73/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | kedvező (0.86/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | dombormű (0.79/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | kedvező (1.58/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.67/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-13"></a>
### Találkozási kontextus

- Tier: **minimális találkozások**
- Téma: **néma járőrmentesítés**
- Aktív csoportok maximális száma: **1**
- Vegyes találkozási esély: **0**
- Különleges eseményesély: **0**

<a id="exact-sandbox-settings-13"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 40 | Az alapkészlet mérete a 40-es könnyítési feltételeknek felel meg. |
| BonusPerkPoints | 12 | A bónuszpontok a 12-es megkönnyebbülés feltételei. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.35 | A kontinencia aránya messze a normál alatt van, 0,35x. |
| DamageToAlliesMultiplier | 0.0 | A tűz által okozott sebzés messze a normál alatt van, 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 2 | A halálbüntetés súlyos. |
| DetectionSpeedMultiplier | 1.1 | Az ellenségészlelési sebesség a normálhoz közeli, 1,1-szeres. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.0 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0x. |
| EnemyAccuracy | 3 | Az ellenség pontossága pontos. |
| EnemyDeployableDamageMultiplier | 0.1 | Az ellenséges sebzés a védelemben jóval a normál alatt van, 0,1x. |
| EnemyHealthMultiplier | 1.0 | Az ellenség ellenálló képessége 1x közel normális. |
| EnemyPlayerDamageMultiplier | 0.8 | A játékosokat ért ellenséges sebzés a normál alatt van, 0,8x. |
| EnemySpawnRate | 0.3 | Az ellenség gyakorisága messze a normál alatt van, 0,3x. |
| FatigueSpeedMultiplier | 0.35 | A fáradtság aránya jóval a normál alatt van, 0,35x. |
| FirstTimeStartingWeapon | 6 | A fegyverellátás megkezdése kedvező feltételekkel 6. |
| FoodSpoilSpeedMultiplier | 0.25 | Az élelmiszer romlása jóval a normál alatt van, 0,25-szeres. |
| GameDifficulty | 3 | A játék nehézségei nagyon nehézek. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.35 | Az éhezési arány jóval a normál alatt van, 0,35-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 6.0 | Az elemek tartóssága rendkívüli, hatszoros. |
| ItemStackSizeMultiplier | 20.0 | A veremkapacitás extrém, 20x. |
| ItemWeightMultiplier | 0.2 | A cikk súlya jóval a normál alatt van, 0,2x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 5.1 | Az élménynövekedés extrém 5,1-szeresnél. |
| PowerSocketsOffAtNight | false | A konnektorok éjjel is elérhetők maradnak. |
| RadiationDealsDamage | false | A sugárzási kár le van tiltva. |
| RefrigerationEffectivenessMultiplier | 2.0 | A hűtés jóval meghaladja a normál 2x-et. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 5.0 | A mosogató újratöltési aránya extrém, 5x. |
| StorageByTag | false | A címkézett tárolási szervezet le van tiltva. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 0.35 | A szomjúságarány jóval a normál alatt van, 0,35x. |
| WeatherFrequency | 1 | Az időjárási gyakoriság ritka. |

<a id="optional-adapter-selection-13"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `black_lab`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `stealth_false_empty_hall`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---detection-audit"></a>
## 15. nap – Észlelési ellenőrzés

**Profilazonosító:** `stealth_detection_audit` **Általános feltételek:** Normál nyomás (2.26/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: Az igényes feltételek a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-14"></a>
### Fő hatások

- Ellenség pontossága: rendkívül pontos.
- Játék nehézsége: nagyon nehéz.
- Az ellenségészlelési sebesség rendkívüli (2,8x).
- A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket (2,4x).
- A tűz által okozott kár jóval a normál alatt van (0x).

<a id="domain-ratings-14"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | igényes (2.94/5) | Az ellenséges nyomás megemelkedett; készüljön fel az eljegyzés előtt. |
| Túlélési nyomás | standard (1.98/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.62/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.17/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | standard (1.76/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-14"></a>
### Találkozási kontextus

- Tier: **súlyos találkozások**
- Téma: **csendes járőrözési pontosság**
- Aktív csoportok maximális száma: **2**
- Vegyes találkozási esély: **0.119**
- Különleges eseményesély: **14**

<a id="exact-sandbox-settings-14"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 12 | Az alapkészlet mérete normál nyomás 12. |
| BonusPerkPoints | 0 | A bónuszpontok normál nyomás 0-nál. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.0 | A tűz által okozott sebzés messze a normál alatt van, 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 2 | A halálbüntetés súlyos. |
| DetectionSpeedMultiplier | 2.8 | Az ellenségészlelési sebesség extrém, 2,8x. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.3 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,3-szoros. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 0.8 | Az ellenséges védekezésben okozott sebzés a normál alatt van, 0,8x. |
| EnemyHealthMultiplier | 1.3 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,3x. |
| EnemyPlayerDamageMultiplier | 2.4 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 2,4-szeres. |
| EnemySpawnRate | 0.7 | Az ellenség gyakorisága a normál alatt van, 0,7x. |
| FatigueSpeedMultiplier | 1.25 | A fáradtság mértéke meghaladja a normál értéket, 1,25-szörös. |
| FirstTimeStartingWeapon | 4 | A fegyverellátás megkezdése kedvező feltételekkel 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Az élelmiszer-romlás 1x-nél közel a normálhoz. |
| GameDifficulty | 3 | A játék nehézségei nagyon nehézek. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.0 | Az éhezési arány közel a normálhoz, 1x. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.0 | A cikk tartóssága közel a normálhoz, 1x. |
| ItemStackSizeMultiplier | 2.0 | A verem kapacitása jóval meghaladja a normál 2x-et. |
| ItemWeightMultiplier | 0.9 | A cikk súlya közel a normálhoz, 0,9x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.9 | Az élménynövekedés extrém, 2,9-szeres. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 1.0 | A hűtés 1x közel normális. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 1.0 | A mosogató újratöltési aránya közel a normálhoz, 1x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | false | Ez a szabály nem szennyezi a mosogatóvizet. |
| ThirstSpeedMultiplier | 1.0 | A szomjúságarány 1x-nél közel van a normálhoz. |
| WeatherFrequency | 2 | Az időjárás gyakorisága alkalmi. |

<a id="optional-adapter-selection-14"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `black_lab`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `stealth_detection_audit`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-silence"></a>
## 16. nap – Kísérleti csend

**Profilazonosító:** `stealth_experimental_silence` **Általános feltételek:** Normál nyomás (2.21/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: Az igényes feltételek a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-15"></a>
### Fő hatások

- Ellenség pontossága: rendkívül pontos.
- Játék nehézsége: nagyon nehéz.
- Egyes sugárzások esetében előfordulhat, hogy hiányzik a látható figyelmeztetés.
- Időjárási gyakoriság: nagyon gyakori.
- Az alapkészlet mérete könnyítési feltételek (42).

<a id="domain-ratings-15"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | igényes (2.74/5) | Az ellenséges nyomás megemelkedett; készüljön fel az eljegyzés előtt. |
| Túlélési nyomás | standard (2.36/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.09/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.59/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.67/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-15"></a>
### Találkozási kontextus

- Tier: **extrém találkozások**
- Téma: **csendes járőrkísérlet**
- Aktív csoportok maximális száma: **2**
- Vegyes találkozási esély: **0.154**
- Különleges eseményesély: **20**

<a id="exact-sandbox-settings-15"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 42 | Az alapkészlet mérete a 42-es tehermentesítési feltételeknek felel meg. |
| BonusPerkPoints | 2 | A bónusz pontok kedvező feltételek 2-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.2 | A kontinencia aránya meghaladja a normál értéket, 1,2-szeres. |
| DamageToAlliesMultiplier | 0.0 | A tűz által okozott sebzés messze a normál alatt van, 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | A nappali-éjszakai ciklussebesség 1,5-szerese a normálnál. |
| DayNightCycleState | 1 | A nappal-éjszaka állapot nappal torzított. |
| DeathPenalties | 2 | A halálbüntetés súlyos. |
| DetectionSpeedMultiplier | 1.1 | Az ellenségészlelési sebesség a normálhoz közeli, 1,1-szeres. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.0 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0x. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 0.7 | A védelemben okozott ellenséges sebzés a normál alatt van, 0,7-szeres. |
| EnemyHealthMultiplier | 1.9 | Az ellenség ellenálló képessége jóval meghaladja a normál értéket, 1,9-szeres. |
| EnemyPlayerDamageMultiplier | 1.6 | A játékosokat ért ellenséges sebzés 1,6-szoros a normál felett. |
| EnemySpawnRate | 0.8 | Az ellenség gyakorisága a normál alatt van, 0,8x. |
| FatigueSpeedMultiplier | 0.8 | A fáradtság mértéke a normál alatt van, 0,8x. |
| FirstTimeStartingWeapon | 6 | A fegyverellátás megkezdése kedvező feltételekkel 6. |
| FoodSpoilSpeedMultiplier | 0.4 | Az élelmiszer romlása jóval a normál alatt van, 0,4-szeres. |
| GameDifficulty | 3 | A játék nehézségei nagyon nehézek. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.8 | Az éhezési arány a normál alatt van, 0,8-szoros. |
| InvisibleRadiation | igaz | Egyes sugárzások esetében előfordulhat, hogy hiányzik a látható figyelmeztetés. |
| ItemDurabilityMultiplier | 5.0 | Az elemek tartóssága rendkívüli, 5x. |
| ItemStackSizeMultiplier | 15.0 | A veremkapacitás extrém, 15x. |
| ItemWeightMultiplier | 0.2 | A cikk súlya jóval a normál alatt van, 0,2x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 5.6 | Az élménynövekedés extrém 5,6-szorosnál. |
| PowerSocketsOffAtNight | false | A konnektorok éjjel is elérhetők maradnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 2.0 | A hűtés jóval meghaladja a normál 2x-et. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.0 | A mosogató utántöltési aránya jóval a normál alatt van, 0x. |
| StorageByTag | false | A címkézett tárolási szervezet le van tiltva. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | igaz | Lehet, hogy a mosogatóvíz nem biztonságos. |
| ThirstSpeedMultiplier | 1.2 | A szomjúságarány 1,2-szeres a normál felett. |
| WeatherFrequency | 5 | Az időjárási gyakoriság nagyon gyakori. |

<a id="optional-adapter-selection-15"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `black_lab`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `stealth_experimental_silence`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-nonappearance"></a>
## 17. nap – Végső meg nem jelenés

**Profilazonosító:** `stealth_final_nonappearance` **Általános feltételek:** Igényes feltételek (2.83/5) **Egyszerű jelentése:** Igényes feltételek. Harci nyomás: A súlyos körülmények a fő nyomás. Túlélési nyomás: Az igényes körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-16"></a>
### Fő hatások

- Halálbüntetés: súlyos.
- Az ellenségészlelési sebesség rendkívüli (4,4x).
- Ellenség pontossága: rendkívül pontos.
- Az ellenséges sebzés a játékosokban rendkívüli (3,8x).
- Játék nehézsége: nagyon nehéz.

<a id="domain-ratings-16"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | súlyos (3.79/5) | Az ellenséges nyomás súlyos; kerülje a nem támogatott harcokat. |
| Túlélési nyomás | igényes (2.72/5) | Az éhség, a szomjúság, a fáradtság vagy a higiénia több figyelmet igényel. |
| Az erőforrások nyomása | standard (1.78/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.55/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | standard (2.0/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-16"></a>
### Találkozási kontextus

- Tier: **zárókő-találkozások**
- Téma: **néma járőrözés zárókő**
- Aktív csoportok maximális száma: **2**
- Vegyes találkozási esély: **0.196**
- Különleges eseményesély: **30**

<a id="exact-sandbox-settings-16"></a>
### Pontos sandbox-beállítások

| Beállítás | Nyers érték | Fordított jelentés |
|---|---:|---|
| AllowCharacterReset | igaz | A karakter-visszaállítás továbbra is elérhető. |
| AllowIronMode | false | A vasalási mód le van tiltva. |
| AllowPagers | igaz | Pagerek elérhetők. |
| AllowRecipeSharing | igaz | Elérhető a receptmegosztás. |
| AllowTransmog | igaz | Elérhető a megjelenés testreszabása. |
| BaseInventorySize | 12 | Az alapkészlet mérete normál nyomás 12. |
| BonusPerkPoints | 2 | A bónusz pontok kedvező feltételek 2-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.1 | A kontinencia aránya közel a normálhoz, 1,1x. |
| DamageToAlliesMultiplier | 0.1 | A tűz által okozott kár jóval a normál alatt van, 0,1-szeres. |
| DayNightCycleSpeedMultiplier | 1.45 | A nappali-éjszakai ciklus sebessége meghaladja a normál értéket, 1,45x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 3 | A halálbüntetés súlyos. |
| DetectionSpeedMultiplier | 4.4 | Az ellenségészlelési sebesség rendkívüli, 4,4-szeres. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.5 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,5-szerese. |
| EnemyAccuracy | 4 | Az ellenség pontossága rendkívül pontos. |
| EnemyDeployableDamageMultiplier | 2.0 | Az ellenséges sebzés a védelemben jóval meghaladja a normál értéket, 2x. |
| EnemyHealthMultiplier | 2.9 | Az ellenség ellenálló képessége rendkívüli, 2,9-szeres. |
| EnemyPlayerDamageMultiplier | 3.8 | A játékosokat ért ellenséges sebzés extrém, 3,8-szoros. |
| EnemySpawnRate | 1.6 | Az ellenség gyakorisága a normál felett van, 1,6-szoros. |
| FatigueSpeedMultiplier | 1.25 | A fáradtság mértéke meghaladja a normál értéket, 1,25-szörös. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 1.6 | Az élelmiszer-romlás mértéke meghaladja a normál értéket, 1,6-szoros. |
| GameDifficulty | 3 | A játék nehézségei nagyon nehézek. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.35 | Az éhezési arány 1,35-szöröse a normálnál magasabb. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.0 | A cikk tartóssága közel a normálhoz, 1x. |
| ItemStackSizeMultiplier | 3.0 | A veremkapacitás extrém, 3x. |
| ItemWeightMultiplier | 1.0 | A cikk súlya közel a normálhoz 1x. |
| LootRespawnEnabled | false | Az összegyűjtött zsákmány nem jelenik meg újra. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 4.8 | Az élménynövekedés extrém, 4,8x. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 0.6 | A hűtés a normál alatt van, 0,6x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.5 | A mosogató utántöltési aránya jóval a normál alatt van, 0,5x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | igaz | Lehet, hogy a mosogatóvíz nem biztonságos. |
| ThirstSpeedMultiplier | 1.35 | A szomjúságarány 1,35-szerese a normál feletti. |
| WeatherFrequency | 5 | Az időjárási gyakoriság nagyon gyakori. |

<a id="optional-adapter-selection-16"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `stealth_final_nonappearance`
- `lethal_lasers`: `overcharged_high_hazard`
