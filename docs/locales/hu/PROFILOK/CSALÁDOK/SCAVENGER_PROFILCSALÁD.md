<a id="randomday---scavenger-family"></a>
# RandomDay – Scavenger család

> **Kanonikus angol forrás:** [scavenger.md](../../../../profiles/families/scavenger.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Verzió: `v0.3.16-alpha`

A zsákmányútvonalak jövedelmezőek, zsúfoltak és erkölcsileg nem felügyelnek.

**Játékstílus:** zsákmányútvonalak és kapzsi kockázat **Üzenethang:** ellátási lánc viccek

<a id="17-day-index"></a>
## 17 napos index

| Nap | Profil | Feltételek | Fő nyomás |
|---:|---|---|---|
| 1 | Laza készlet-etika | Normál nyomás (1.79/5) | Környezeti terhelés |
| 2 | Open Floor akvizíció | Kedvező feltételek (1.28/5) | Környezeti terhelés |
| 3 | Megkérdőjelezhető snackek | Normál nyomás (2.08/5) | Túlélési nyomás |
| 4 | Ellátási osztalék | Kedvező feltételek (1.47/5) | Környezeti terhelés |
| 5 | Biztonsági nyugta ellenőrzése | Normál nyomás (1.98/5) | Harcnyomás |
| 6 | Vitorlázott útvonalak akciója | Normál nyomás (1.95/5) | Környezeti terhelés |
| 7 | Éjszakai piac engedélye | Normál nyomás (1.98/5) | Harcnyomás |
| 8 | Útvonal-kezelési díj | Normál nyomás (1.75/5) | Környezeti terhelés |
| 9 | Arányarbitrázs | Normál nyomás (2.07/5) | Túlélési nyomás |
| 10 | Csendes profitablak | Kedvező feltételek (1.04/5) | Környezeti terhelés |
| 11 | Tréning Salvage | Kedvező feltételek (1.47/5) | Környezeti terhelés |
| 12 | Black Lab felszámolása | Normál nyomás (2.43/5) | Harcnyomás |
| 13 | Hosszú távú készlet | Normál nyomás (2.14/5) | Túlélési nyomás |
| 14 | Ellátási szekrény főnyeremény | Kedvező feltételek (1.02/5) | Környezeti terhelés |
| 15 | Pontossági adó | Normál nyomás (1.92/5) | Harcnyomás |
| 16 | Kísérleti jelölés | Normál nyomás (2.12/5) | Környezeti terhelés |
| 17 | Zsebek végső ellenőrzése | Igényes feltételek (2.68/5) | Harcnyomás |

<a id="day-1---loose-inventory-ethics"></a>
## 1. nap – laza készlet-etika

**Profilazonosító:** `scavenger_loose_inventory_ethics` **Általános feltételek:** Normál nyomás (1.79/5) **Egyszerű jelentése:** Normál nyomás. Környezeti nyomás: A standard nyomás a fő nyomás. Túlélési nyomás: A standard nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** A bázis elhagyása előtt ellenőrizze az áramellátást, a vizet, a menedéket és a veszély elleni védelmet.

<a id="main-effects"></a>
### Fő hatások

- A veremkapacitás rendkívül nagy (8x).
- A tűz által okozott kár jóval a normál alatt van (0,25x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,25x).
- Az aljzatok éjszaka kikapcsolnak.
- A zsákmány a begyűjtés után visszatérhet.

<a id="domain-ratings"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (1.86/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | standard (1.9/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.44/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.22/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.5/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **Lot route orientation**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.0 | Az ellenségészlelési sebesség közel a normálhoz, 1x. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.25 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,25-szöröse. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.0 | Az ellenség ellenálló képessége 1x közel normális. |
| EnemyPlayerDamageMultiplier | 1.1 | A játékosokat ért ellenséges sebzés 1,1-szeresével közel normális. |
| EnemySpawnRate | 0.9 | Az ellenség gyakorisága a normálhoz közeli, 0,9x. |
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
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.6 | A cikk súlya a normál alatt van, 0,6x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 1.5 | Az élménynövekedés 1,5-szerese a normál feletti. |
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
- `encounter_director`: `scavenger_loose_inventory_ethics`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-acquisition"></a>
## 2. nap – Open Floor akvizíció

**Profilazonosító:** `scavenger_open_floor_acquisition` **Általános feltételek:** Kedvező feltételek (1.28/5) **Egyszerű jelentése:** Kedvező feltételek. Környezeti nyomás: A standard nyomás a fő nyomás. Túlélési nyomás: A kedvező körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-1"></a>
### Fő hatások

- A tűz által okozott kár jóval a normál alatt van (0x).
- A cikk tartóssága rendkívüli (4x).
- A veremkapacitás rendkívül nagy (8x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,05x).
- Az ellenséges sebzés a védelemben jóval a normál alatt van (0,1x).

<a id="domain-ratings-1"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | kedvező (1.17/5) | Az ellenséges nyomás a normálnál kisebb. |
| Túlélési nyomás | kedvező (1.34/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | kedvező (1.08/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (1.91/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.2/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-1"></a>
### Találkozási kontextus

- Tier: **könnyű találkozások**
- Téma: **zsákmány útvonal előkészítése**
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
| DetectionSpeedMultiplier | 0.65 | Az ellenségészlelési sebesség a normál alatt van, 0,65x. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.05 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,05x. |
| EnemyAccuracy | 1 | Csökkent az ellenség pontossága. |
| EnemyDeployableDamageMultiplier | 0.1 | Az ellenséges sebzés a védelemben jóval a normál alatt van, 0,1x. |
| EnemyHealthMultiplier | 0.9 | Az ellenség ellenálló képessége közel normális, 0,9-szeres. |
| EnemyPlayerDamageMultiplier | 0.7 | A játékosokat ért ellenséges sebzés a normál alatt van, 0,7-szeres. |
| EnemySpawnRate | 0.5 | Az ellenség gyakorisága messze a normál alatt van, 0,5x. |
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
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.3 | A cikk súlya messze a normál alatt van, 0,3x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.1 | Az élménynövekedés 2,1x-nél jóval meghaladja a normál értéket. |
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
- `encounter_director`: `scavenger_open_floor_acquisition`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-3---questionable-snacks"></a>
## 3. nap – Megkérdőjelezhető snackek

**Profilazonosító:** `scavenger_questionable_snacks` **Általános feltételek:** Normál nyomás (2.08/5) **Egyszerű jelentése:** Normál nyomás. Túlélési nyomás: Az igényes feltételek jelentik a fő nyomást. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Vigyél magaddal élelmet és vizet, pihenj a hosszú utazások előtt, és tervezz biztonságos megállókat.

<a id="main-effects-2"></a>
### Fő hatások

- A veremkapacitás rendkívül nagy (8x).
- Lehet, hogy a mosogatóvíz nem biztonságos.
- A tűz által okozott kár jóval a normál alatt van (0,25x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,25x).
- Játék nehézsége: nehéz.

<a id="domain-ratings-2"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.04/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | igényes (2.78/5) | Az éhség, a szomjúság, a fáradtság vagy a higiénia több figyelmet igényel. |
| Az erőforrások nyomása | kedvező (1.59/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.22/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.5/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-2"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **útvonal bioforrás kizsákmányolása**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.45 | A kontinencia aránya meghaladja a normál értéket, 1,45x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.1 | Az ellenségészlelési sebesség a normálhoz közeli, 1,1-szeres. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.25 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,25-szöröse. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 0.9 | Az ellenséges védekezésben okozott sebzés közel normális, 0,9-szeres. |
| EnemyHealthMultiplier | 1.1 | Az ellenség ellenálló képessége a normálhoz közel 1,1-szeres. |
| EnemyPlayerDamageMultiplier | 1.2 | A játékosokat ért ellenséges sebzés 1,2-szerese a normál feletti. |
| EnemySpawnRate | 0.9 | Az ellenség gyakorisága a normálhoz közeli, 0,9x. |
| FatigueSpeedMultiplier | 1.1 | A fáradtság mértéke közel a normálhoz, 1,1x. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 1.25 | Az élelmiszer-romlás mértéke meghaladja a normál értéket, 1,25-szörös. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.1 | Az éhezési arány közel a normálhoz, 1,1-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.25 | A cikk tartóssága meghaladja a normál értéket, 1,25x. |
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.6 | A cikk súlya a normál alatt van, 0,6x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 1.8 | Az élménynövekedés jóval meghaladja a normál értéket, 1,8x. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 0.75 | A hűtés a normál alatt van, 0,75x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.25 | A mosogató utántöltési aránya jóval a normál alatt van, 0,25x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | igaz | Lehet, hogy a mosogatóvíz nem biztonságos. |
| ThirstSpeedMultiplier | 1.6 | A szomjúságarány 1,6-szoros a normál felett. |
| WeatherFrequency | 3 | Az időjárási gyakoriság normális. |

<a id="optional-adapter-selection-2"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `scavenger_questionable_snacks`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-run-dividend"></a>
## 4. nap – Ellátási osztalék

**Profilazonosító:** `scavenger_supply_run_dividend` **Általános feltételek:** Kedvező feltételek (1.47/5) **Egyszerű jelentése:** Kedvező feltételek. Környezeti nyomás: A standard nyomás a fő nyomás. Harci nyomás: A kedvező körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-3"></a>
### Fő hatások

- A cikk tartóssága rendkívüli (2,5x).
- A veremkapacitás rendkívül nagy (8x).
- A mosogató újratöltési aránya rendkívüli (2,5x).
- A tapasztalatszerzés jóval meghaladja a normál értéket (2,3x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,05x).

<a id="domain-ratings-3"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | kedvező (1.51/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | kedvező (1.5/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | kedvező (1.04/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (1.93/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.44/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-3"></a>
### Találkozási kontextus

- Tier: **könnyű találkozások**
- Téma: **loot route loot mobilitás**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.75 | A kontinencia aránya a normál alatt van, 0,75x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 0.8 | Az ellenségészlelési sebesség a normál alatt van, 0,8x. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.05 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,05x. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 0.5 | Az ellenséges védekezésben okozott sebzés jóval a normál alatt van, 0,5-szeres. |
| EnemyHealthMultiplier | 0.9 | Az ellenség ellenálló képessége közel normális, 0,9-szeres. |
| EnemyPlayerDamageMultiplier | 0.9 | A játékosokat ért ellenséges sebzés közel normális, 0,9-szeres. |
| EnemySpawnRate | 0.7 | Az ellenség gyakorisága a normál alatt van, 0,7x. |
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
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.2 | A cikk súlya jóval a normál alatt van, 0,2x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.3 | Az élménynövekedés jóval meghaladja a normál értéket, 2,3x. |
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
- `encounter_director`: `scavenger_supply_run_dividend`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-receipt-check"></a>
## 5. nap – Biztonsági nyugta ellenőrzése

**Profilazonosító:** `scavenger_security_receipt_check` **Általános feltételek:** Normál nyomás (1.98/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: A normál nyomás a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-4"></a>
### Fő hatások

- A veremkapacitás rendkívül nagy (8x).
- A tűz által okozott kár jóval a normál alatt van (0,1x).
- A tapasztalatszerzés jóval meghaladja a normál értéket (2,1x).
- Az ellenségészlelési sebesség jóval meghaladja a normált (2x).
- Játék nehézsége: nehéz.

<a id="domain-ratings-4"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.39/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | standard (1.94/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.37/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.17/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.51/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-4"></a>
### Találkozási kontextus

- Tier: **súlyos találkozások**
- Téma: **az útvonal biztonságának kizsákmányolása**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.1 | A tűz által okozott kár jóval a normál alatt van, 0,1-szeres. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 2.0 | Az ellenségészlelési sebesség jóval meghaladja a normál 2x-et. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.3 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,3-szoros. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.2 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,2-szeres. |
| EnemyPlayerDamageMultiplier | 1.4 | A játékosokat ért ellenséges sebzés 1,4-szerese a normál feletti. |
| EnemySpawnRate | 1.35 | Az ellenség gyakorisága a normál felett van, 1,35x. |
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
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.6 | A cikk súlya a normál alatt van, 0,6x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.1 | Az élménynövekedés 2,1x-nél jóval meghaladja a normál értéket. |
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
- `encounter_director`: `scavenger_security_receipt_check`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weathered-route-sale"></a>
## 6. nap – viharvert útvonalak kiárusítása

**Profilazonosító:** `scavenger_weathered_route_sale` **Általános feltételek:** Normál nyomás (1.95/5) **Egyszerű jelentése:** Normál nyomás. Környezeti nyomás: A standard nyomás a fő nyomás. Harci nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** A bázis elhagyása előtt ellenőrizze az áramellátást, a vizet, a menedéket és a veszély elleni védelmet.

<a id="main-effects-5"></a>
### Fő hatások

- Időjárási gyakoriság: nagyon gyakori.
- A veremkapacitás rendkívül nagy (8x).
- A tűz által okozott kár jóval a normál alatt van (0,25x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,25x).
- Játék nehézsége: nehéz.

<a id="domain-ratings-5"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.07/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | standard (2.04/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.54/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.52/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.5/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-5"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **Lot route időjárás**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.25 | A nappali-éjszakai ciklussebesség a normál feletti, 1,25x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.1 | Az ellenségészlelési sebesség a normálhoz közeli, 1,1-szeres. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.25 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,25-szöröse. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.1 | Az ellenség ellenálló képessége a normálhoz közel 1,1-szeres. |
| EnemyPlayerDamageMultiplier | 1.1 | A játékosokat ért ellenséges sebzés 1,1-szeresével közel normális. |
| EnemySpawnRate | 1.0 | Az ellenség gyakorisága közel normális, 1x. |
| FatigueSpeedMultiplier | 1.0 | A fáradtság mértéke közel a normálhoz 1x. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 1.25 | Az élelmiszer-romlás mértéke meghaladja a normál értéket, 1,25-szörös. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.1 | Az éhezési arány közel a normálhoz, 1,1-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.1 | A cikk tartóssága közel a normálhoz, 1,1x. |
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.6 | A cikk súlya a normál alatt van, 0,6x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 1.7 | Az élménynövekedés jóval meghaladja a normál értéket, 1,7-szeres. |
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
- `encounter_director`: `scavenger_weathered_route_sale`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-market-permit"></a>
## 7. nap – Éjszakai piac engedélye

**Profilazonosító:** `scavenger_night_market_permit` **Általános feltételek:** Normál nyomás (1.98/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: A normál nyomás a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-6"></a>
### Fő hatások

- A veremkapacitás rendkívül nagy (8x).
- A tapasztalatszerzés jóval meghaladja a normál értéket (2,3x).
- Nappali-éjszaka állapot: éjszakai torzítás.
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,2x).
- A tűz által okozott kár jóval a normál alatt van (0,25x).

<a id="domain-ratings-6"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.38/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | standard (1.93/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.31/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.33/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.49/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-6"></a>
### Találkozási kontextus

- Tier: **súlyos találkozások**
- Téma: **zsákmányolási útvonal éjszaka**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.95 | A kontinencia aránya a normálhoz közeli, 0,95x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 2 | A nappal-éjszaka állapot éjszakai torzítású. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.7 | Az ellenségészlelési sebesség jóval meghaladja a normál 1,7-szeresét. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.2 | Halál esetén a tartósság csökkenése messze a normál alatt van, 0,2-szeres. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.2 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,2-szeres. |
| EnemyPlayerDamageMultiplier | 1.3 | A játékosokat ért ellenséges sebzés 1,3-szoros a normálnál. |
| EnemySpawnRate | 1.45 | Az ellenség gyakorisága a normál felett van, 1,45x. |
| FatigueSpeedMultiplier | 1.3 | A fáradtság mértéke meghaladja a normál értéket, 1,3-szoros. |
| FirstTimeStartingWeapon | 5 | A fegyverellátás megkezdése kedvező feltételekkel 5. |
| FoodSpoilSpeedMultiplier | 1.0 | Az élelmiszer-romlás 1x-nél közel a normálhoz. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.95 | Az éhezési arány közel a normálhoz, 0,95-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.5 | A cikk tartóssága meghaladja a normál értéket, 1,5-szeres. |
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.5 | A cikk súlya jóval a normál alatt van, 0,5x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.3 | Az élménynövekedés jóval meghaladja a normál értéket, 2,3x. |
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
- `encounter_director`: `scavenger_night_market_permit`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-clearance-fee"></a>
## 8. nap – Útvonalkezelési díj

**Profilazonosító:** `scavenger_route_clearance_fee` **Általános feltételek:** Normál nyomás (1.75/5) **Egyszerű jelentése:** Normál nyomás. Környezeti nyomás: A standard nyomás a fő nyomás. Harci nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** A bázis elhagyása előtt ellenőrizze az áramellátást, a vizet, a menedéket és a veszély elleni védelmet.

<a id="main-effects-7"></a>
### Fő hatások

- A nappali-éjszaka ciklussebesség extrém (3x).
- A veremkapacitás rendkívül nagy (8x).
- A tapasztalatszerzés jóval meghaladja a normál értéket (2,3x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0,15x).
- A tűz által okozott kár jóval a normál alatt van (0,25x).

<a id="domain-ratings-7"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.07/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | kedvező (1.42/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | kedvező (1.18/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.56/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.47/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-7"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **útvonal kizsákmányolása**
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
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.7 | A kontinencia aránya a normál alatt van, 0,7-szeres. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 3.0 | A nappali-éjszakai ciklus sebessége extrém, 3x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.4 | Az ellenségészlelési sebesség 1,4-szeres a normálnál. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.15 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,15-szöröse. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 0.8 | Az ellenséges védekezésben okozott sebzés a normál alatt van, 0,8x. |
| EnemyHealthMultiplier | 0.9 | Az ellenség ellenálló képessége közel normális, 0,9-szeres. |
| EnemyPlayerDamageMultiplier | 1.1 | A játékosokat ért ellenséges sebzés 1,1-szeresével közel normális. |
| EnemySpawnRate | 1.2 | Az ellenség gyakorisága a normál felett van, 1,2-szeres. |
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
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.4 | A cikk súlya jóval a normál alatt van, 0,4x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.3 | Az élménynövekedés jóval meghaladja a normál értéket, 2,3x. |
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
- `encounter_director`: `scavenger_route_clearance_fee`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-arbitrage"></a>
## 9. nap – Arbitrázs

**Profilazonosító:** `scavenger_ration_arbitrage` **Általános feltételek:** Normál nyomás (2.07/5) **Egyszerű jelentése:** Normál nyomás. Túlélési nyomás: Az igényes feltételek jelentik a fő nyomást. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Vigyél magaddal élelmet és vizet, pihenj a hosszú utazások előtt, és tervezz biztonságos megállókat.

<a id="main-effects-8"></a>
### Fő hatások

- A veremkapacitás rendkívül nagy (8x).
- Lehet, hogy a mosogatóvíz nem biztonságos.
- A tűz által okozott kár jóval a normál alatt van (0,25x).
- Az élelmiszer romlása jóval meghaladja a normál értéket (2x).
- Az aljzatok éjszaka kikapcsolnak.

<a id="domain-ratings-8"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (1.93/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | igényes (2.81/5) | Az éhség, a szomjúság, a fáradtság vagy a higiénia több figyelmet igényel. |
| Az erőforrások nyomása | standard (1.75/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.17/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.53/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-8"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **kizsákmányolt útvonal szűkössége**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.25 | A kontinencia aránya meghaladja a normál értéket, 1,25x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.1 | Az ellenségészlelési sebesség a normálhoz közeli, 1,1-szeres. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.35 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,35-szöröse. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 1.0 | Az ellenséges védekezésben okozott sebzés 1x-nél közel normális. |
| EnemyHealthMultiplier | 1.2 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,2-szeres. |
| EnemyPlayerDamageMultiplier | 1.2 | A játékosokat ért ellenséges sebzés 1,2-szerese a normál feletti. |
| EnemySpawnRate | 0.9 | Az ellenség gyakorisága a normálhoz közeli, 0,9x. |
| FatigueSpeedMultiplier | 1.3 | A fáradtság mértéke meghaladja a normál értéket, 1,3-szoros. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 2.0 | Az élelmiszer romlása jóval meghaladja a normál értéket, 2x. |
| GameDifficulty | 1 | A játék nehézsége szabványos. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.4 | Az éhezési arány 1,4-szeres a normálnál. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 0.75 | A cikk tartóssága a normál alatt van, 0,75x. |
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.8 | A cikk súlya a normál alatt van, 0,8x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 1.7 | Az élménynövekedés jóval meghaladja a normál értéket, 1,7-szeres. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 0.5 | A hűtés jóval a normál alatt van, 0,5x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.5 | A mosogató utántöltési aránya jóval a normál alatt van, 0,5x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | igaz | Lehet, hogy a mosogatóvíz nem biztonságos. |
| ThirstSpeedMultiplier | 1.4 | A szomjúságarány 1,4-szeres a normál felett. |
| WeatherFrequency | 2 | Az időjárás gyakorisága alkalmi. |

<a id="optional-adapter-selection-8"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `scavenger_ration_arbitrage`
- `lethal_lasers`: `standard_safety`

<a id="day-10---quiet-profit-window"></a>
## 10. nap – Csendes profitablak

**Profilazonosító:** `scavenger_quiet_profit_window` **Általános feltételek:** Kedvező feltételek (1.04/5) **Egyszerű jelentése:** Kedvező feltételek. Környezeti nyomás: A kedvező feltételek a fő terhelés. Helyreállítási nyomás: A kedvező körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-9"></a>
### Fő hatások

- A bónuszpontok könnyítési feltételek (10).
- A tűz által okozott kár jóval a normál alatt van (0x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0x).
- A cikk tartóssága rendkívüli (3x).
- A veremkapacitás rendkívül nagy (8x).

<a id="domain-ratings-9"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | kedvező (0.92/5) | Az ellenséges nyomás a normálnál kisebb. |
| Túlélési nyomás | kedvező (1.02/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | kedvező (0.88/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | kedvező (1.54/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.19/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-9"></a>
### Találkozási kontextus

- Tier: **minimális találkozások**
- Téma: **Loot útvonal helyreállítása**
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
| DetectionSpeedMultiplier | 0.4 | Az ellenségészlelési sebesség jóval a normál alatt van, 0,4x. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.0 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0x. |
| EnemyAccuracy | 1 | Csökkent az ellenség pontossága. |
| EnemyDeployableDamageMultiplier | 0.1 | Az ellenséges sebzés a védelemben jóval a normál alatt van, 0,1x. |
| EnemyHealthMultiplier | 0.7 | Az ellenség ellenálló képessége a normál alatt van, 0,7-szeres. |
| EnemyPlayerDamageMultiplier | 0.4 | A játékosokat ért ellenséges sebzés jóval a normál alatt van, 0,4x. |
| EnemySpawnRate | 0.4 | Az ellenség gyakorisága messze a normál alatt van, 0,4x. |
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
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.2 | A cikk súlya jóval a normál alatt van, 0,2x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 3.0 | A tapasztalatszerzés extrém 3x. |
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
- `encounter_director`: `scavenger_quiet_profit_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-salvage"></a>
## 11. nap – Képzési mentés

**Profilazonosító:** `scavenger_training_salvage` **Általános feltételek:** Kedvező feltételek (1.47/5) **Egyszerű jelentése:** Kedvező feltételek. Környezeti nyomás: A standard nyomás a fő nyomás. Túlélési nyomás: A kedvező körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-10"></a>
### Fő hatások

- Halál esetén a tartósság csökkenése messze a normál alatt van (0x).
- A veremkapacitás rendkívül nagy (8x).
- A tapasztalatszerzés rendkívüli (3,9x).
- A cikk tartóssága jóval meghaladja a normál értéket (2,25x).
- A tűz által okozott kár jóval a normál alatt van (0,25x).

<a id="domain-ratings-10"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | kedvező (1.49/5) | Az ellenséges nyomás a normálnál kisebb. |
| Túlélési nyomás | kedvező (1.58/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.0/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (1.96/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.43/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-10"></a>
### Találkozási kontextus

- Tier: **könnyű találkozások**
- Téma: **zsákmányos útvonal képzés**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 0.8 | A kontinencia aránya a normál alatt van, 0,8x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 1.15 | A nappali-éjszaka ciklussebesség közel a normálhoz, 1,15x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 0.9 | Az ellenségészlelési sebesség a normálhoz közeli, 0,9-szeres. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.0 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0x. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 0.4 | Az ellenséges sebzés a védelemben jóval a normál alatt van, 0,4-szeres. |
| EnemyHealthMultiplier | 0.9 | Az ellenség ellenálló képessége közel normális, 0,9-szeres. |
| EnemyPlayerDamageMultiplier | 0.7 | A játékosokat ért ellenséges sebzés a normál alatt van, 0,7-szeres. |
| EnemySpawnRate | 0.8 | Az ellenség gyakorisága a normál alatt van, 0,8x. |
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
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.4 | A cikk súlya jóval a normál alatt van, 0,4x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 3.9 | Az élménynövekedés extrém, 3,9-szeres. |
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
- `encounter_director`: `scavenger_training_salvage`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-liquidation"></a>
## 12. nap – Black Lab felszámolása

**Profilazonosító:** `scavenger_black_lab_liquidation` **Általános feltételek:** Normál nyomás (2.43/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: Az igényes feltételek a fő nyomás. Túlélési nyomás: A standard nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-11"></a>
### Fő hatások

- Játék nehézsége: nagyon nehéz.
- A veremkapacitás rendkívül nagy (8x).
- A tapasztalatszerzés rendkívüli (3,1x).
- Lehet, hogy a mosogatóvíz nem biztonságos.
- A tűz által okozott kár jóval a normál alatt van (0,15x).

<a id="domain-ratings-11"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | igényes (3.15/5) | Az ellenséges nyomás megemelkedett; készüljön fel az eljegyzés előtt. |
| Túlélési nyomás | standard (2.53/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.46/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.22/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | standard (1.79/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-11"></a>
### Találkozási kontextus

- Tier: **extrém találkozások**
- Téma: **Loot útvonal nehéz teszt**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.15 | A tűz által okozott kár jóval a normál alatt van, 0,15-szöröse. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 2 | A halálbüntetés súlyos. |
| DetectionSpeedMultiplier | 2.0 | Az ellenségészlelési sebesség jóval meghaladja a normál 2x-et. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.4 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,4-szeres. |
| EnemyAccuracy | 3 | Az ellenség pontossága pontos. |
| EnemyDeployableDamageMultiplier | 1.4 | Az ellenséges védekezésben okozott sebzés 1,4-szerese a normálnál nagyobb. |
| EnemyHealthMultiplier | 1.8 | Az ellenség ellenálló képessége jóval meghaladja a normál értéket, 1,8x. |
| EnemyPlayerDamageMultiplier | 2.1 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 2,1-szeres. |
| EnemySpawnRate | 2.0 | Az ellenség gyakorisága jóval a normál felett van, 2x. |
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
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.6 | A cikk súlya a normál alatt van, 0,6x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 3.1 | A tapasztalatszerzés extrém, 3,1-szeres. |
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
- `encounter_director`: `scavenger_black_lab_liquidation`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-haul-inventory"></a>
## 13. nap – Hosszú távú leltár

**Profilazonosító:** `scavenger_long_haul_inventory` **Általános feltételek:** Normál nyomás (2.14/5) **Egyszerű jelentése:** Normál nyomás. Túlélési nyomás: Az igényes feltételek jelentik a fő nyomást. Harci nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Vigyél magaddal élelmet és vizet, pihenj a hosszú utazások előtt, és tervezz biztonságos megállókat.

<a id="main-effects-12"></a>
### Fő hatások

- A veremkapacitás rendkívül nagy (8x).
- Lehet, hogy a mosogatóvíz nem biztonságos.
- A tűz által okozott kár jóval a normál alatt van (0,25x).
- Játék nehézsége: nehéz.
- A tapasztalatszerzés jóval meghaladja a normál értéket (2x).

<a id="domain-ratings-12"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.07/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | igényes (3.02/5) | Az éhség, a szomjúság, a fáradtság vagy a higiénia több figyelmet igényel. |
| Az erőforrások nyomása | kedvező (1.69/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.01/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.53/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-12"></a>
### Találkozási kontextus

- Tier: **mérsékelt találkozások**
- Téma: **zsákmányolási útvonal tartóssága**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.35 | A kontinencia aránya meghaladja a normál értéket, 1,35x. |
| DamageToAlliesMultiplier | 0.25 | A tűz által okozott kár jóval a normál alatt van, 0,25-szöröse. |
| DayNightCycleSpeedMultiplier | 0.3 | A nappali-éjszakai ciklussebesség jóval a normál alatt van, 0,3x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.1 | Az ellenségészlelési sebesség a normálhoz közeli, 1,1-szeres. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.35 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,35-szöröse. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 0.9 | Az ellenséges védekezésben okozott sebzés közel normális, 0,9-szeres. |
| EnemyHealthMultiplier | 1.3 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,3x. |
| EnemyPlayerDamageMultiplier | 1.3 | A játékosokat ért ellenséges sebzés 1,3-szoros a normálnál. |
| EnemySpawnRate | 0.8 | Az ellenség gyakorisága a normál alatt van, 0,8x. |
| FatigueSpeedMultiplier | 1.5 | A fáradtság mértéke meghaladja a normál értéket, 1,5-szeres. |
| FirstTimeStartingWeapon | 0 | A fegyverellátás indítása normál nyomás 0-nál. |
| FoodSpoilSpeedMultiplier | 1.8 | Az élelmiszer romlása jóval meghaladja a normál értéket, 1,8x. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.6 | Az éhezési arány 1,6-szoros a normálnál. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 0.9 | A cikk tartóssága közel a normálhoz, 0,9x. |
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.9 | A cikk súlya közel a normálhoz, 0,9x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.0 | Az élménynövekedés 2x-nél jóval meghaladja a normál értéket. |
| PowerSocketsOffAtNight | igaz | Az aljzatok éjszaka kikapcsolnak. |
| RadiationDealsDamage | igaz | A sugárzás károkat okoz. |
| RefrigerationEffectivenessMultiplier | 0.65 | A hűtés a normál alatt van, 0,65x. |
| ShowDeathMessages | igaz | Megjelenik a halotti értesítés. |
| SinkRefillRate | 0.35 | A mosogató utántöltési aránya jóval a normál alatt van, 0,35x. |
| StorageByTag | igaz | A címkézett tárolási szervezés engedélyezve van. |
| StructuralSupportLimit | 0 | A szerkezeti támogatás határértéke a normál nyomás 0-nál. |
| TaintedSinkWater | igaz | Lehet, hogy a mosogatóvíz nem biztonságos. |
| ThirstSpeedMultiplier | 1.6 | A szomjúságarány 1,6-szoros a normál felett. |
| WeatherFrequency | 2 | Az időjárás gyakorisága alkalmi. |

<a id="optional-adapter-selection-12"></a>
### Opcionális adapter kiválasztása

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `scavenger_long_haul_inventory`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-jackpot"></a>
## 14. nap – Supply Closet Jackpot

**Profilazonosító:** `scavenger_supply_closet_jackpot` **Általános feltételek:** Kedvező feltételek (1.02/5) **Egyszerű jelentése:** Kedvező feltételek. Környezeti nyomás: A kedvező feltételek a fő terhelés. Helyreállítási nyomás: A kedvező körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Használja a kedvező feltételeket a felfedezéshez, a készletek feltöltéséhez, a javításhoz és a következő újraindításra való felkészüléshez.

<a id="main-effects-13"></a>
### Fő hatások

- Az alapkészlet mérete könnyítési feltételek (40).
- A bónuszpontok könnyítési feltételek (12).
- A tűz által okozott kár jóval a normál alatt van (0x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0x).
- A cikk tartóssága rendkívüli (6x).

<a id="domain-ratings-13"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | kedvező (1.0/5) | Az ellenséges nyomás a normálnál kisebb. |
| Túlélési nyomás | kedvező (0.86/5) | A napi túlélési szükségletek elnézőek. |
| Az erőforrások nyomása | dombormű (0.77/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | kedvező (1.58/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.19/5) | A halálra és a felépülésre vonatkozó szabályok elnézőek. |

<a id="encounter-context-13"></a>
### Találkozási kontextus

- Tier: **minimális találkozások**
- Téma: **zsákmányos útvonal domborítása**
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
| DeathPenalties | 0 | A halálbüntetés minimális. |
| DetectionSpeedMultiplier | 0.6 | Az ellenségészlelési sebesség a normál alatt van, 0,6x. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.0 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0x. |
| EnemyAccuracy | 1 | Csökkent az ellenség pontossága. |
| EnemyDeployableDamageMultiplier | 0.1 | Az ellenséges sebzés a védelemben jóval a normál alatt van, 0,1x. |
| EnemyHealthMultiplier | 0.8 | Az ellenség ellenálló képessége a normál alatt van, 0,8x. |
| EnemyPlayerDamageMultiplier | 0.5 | A játékosokat ért ellenséges sebzés jóval a normál alatt van, 0,5-szeres. |
| EnemySpawnRate | 0.4 | Az ellenség gyakorisága messze a normál alatt van, 0,4x. |
| FatigueSpeedMultiplier | 0.35 | A fáradtság aránya jóval a normál alatt van, 0,35x. |
| FirstTimeStartingWeapon | 6 | A fegyverellátás megkezdése kedvező feltételekkel 6. |
| FoodSpoilSpeedMultiplier | 0.25 | Az élelmiszer romlása jóval a normál alatt van, 0,25-szeres. |
| GameDifficulty | 1 | A játék nehézsége szabványos. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 0.35 | Az éhezési arány jóval a normál alatt van, 0,35-szeres. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 6.0 | Az elemek tartóssága rendkívüli, hatszoros. |
| ItemStackSizeMultiplier | 14 | A veremkapacitás extrém, 14x. |
| ItemWeightMultiplier | 0.1 | A cikk súlya jóval a normál alatt van, 0,1x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 4.4 | Az élménynövekedés extrém 4,4-szeresnél. |
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

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `scavenger_supply_closet_jackpot`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-tax"></a>
## 15. nap – Pontossági adó

**Profilazonosító:** `scavenger_accuracy_tax` **Általános feltételek:** Normál nyomás (1.92/5) **Egyszerű jelentése:** Normál nyomás. Harci nyomás: A normál nyomás a fő nyomás. Környezeti nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-14"></a>
### Fő hatások

- A tűz által okozott kár jóval a normál alatt van (0x).
- A veremkapacitás rendkívül nagy (8x).
- A tapasztalatszerzés rendkívüli (2,5x).
- Játék nehézsége: nehéz.
- Az aljzatok éjszaka kikapcsolnak.

<a id="domain-ratings-14"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.2/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | standard (1.98/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.38/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.17/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.51/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-14"></a>
### Találkozási kontextus

- Tier: **súlyos találkozások**
- Téma: **Loot útvonal pontossága**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.0 | A kontinencia aránya közel a normálhoz 1x. |
| DamageToAlliesMultiplier | 0.0 | A tűz által okozott sebzés messze a normál alatt van, 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | A nappali-éjszakai ciklus sebessége közel a normálhoz, 1x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 1 | A halálbüntetés szabványos. |
| DetectionSpeedMultiplier | 1.5 | Az ellenségészlelési sebesség 1,5-szeres a normálnál. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.3 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,3-szoros. |
| EnemyAccuracy | 2 | Az ellenség pontossága szabványos. |
| EnemyDeployableDamageMultiplier | 0.8 | Az ellenséges védekezésben okozott sebzés a normál alatt van, 0,8x. |
| EnemyHealthMultiplier | 1.0 | Az ellenség ellenálló képessége 1x közel normális. |
| EnemyPlayerDamageMultiplier | 1.5 | A játékosokat ért ellenséges sebzés 1,5-szerese a normál feletti. |
| EnemySpawnRate | 1.05 | Az ellenség gyakorisága közel a normálhoz, 1,05x. |
| FatigueSpeedMultiplier | 1.25 | A fáradtság mértéke meghaladja a normál értéket, 1,25-szörös. |
| FirstTimeStartingWeapon | 4 | A fegyverellátás megkezdése kedvező feltételekkel 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Az élelmiszer-romlás 1x-nél közel a normálhoz. |
| GameDifficulty | 2 | A játék nehézsége nehéz. |
| HardcoreMode | false | A kemény mód le van tiltva. |
| HomeWorlds | igaz | Az otthoni világ viselkedése engedélyezve van. |
| HostAccessPlayerCorpses | igaz | A házigazda hozzáférhet a játékos holttestéhez helyreállítási támogatás céljából. |
| HungerSpeedMultiplier | 1.0 | Az éhezési arány közel a normálhoz, 1x. |
| InvisibleRadiation | false | A sugárzást ez a szabály nem teszi láthatatlanná. |
| ItemDurabilityMultiplier | 1.0 | A cikk tartóssága közel a normálhoz, 1x. |
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.6 | A cikk súlya a normál alatt van, 0,6x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 2.5 | Az élménynövekedés extrém 2,5-szeresnél. |
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

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `scavenger_accuracy_tax`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-markup"></a>
## 16. nap – Kísérleti jelölés

**Profilazonosító:** `scavenger_experimental_markup` **Általános feltételek:** Normál nyomás (2.12/5) **Egyszerű jelentése:** Normál nyomás. Környezeti nyomás: A standard nyomás a fő nyomás. Harci nyomás: A normál nyomás a következő legerősebb tényező. **Játékos a játékosoknak:** A bázis elhagyása előtt ellenőrizze az áramellátást, a vizet, a menedéket és a veszély elleni védelmet.

<a id="main-effects-15"></a>
### Fő hatások

- Játék nehézsége: nagyon nehéz.
- Egyes sugárzások esetében előfordulhat, hogy hiányzik a látható figyelmeztetés.
- Időjárási gyakoriság: nagyon gyakori.
- A tűz által okozott kár jóval a normál alatt van (0x).
- Halál esetén a tartósság csökkenése messze a normál alatt van (0x).

<a id="domain-ratings-15"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | standard (2.45/5) | Az ellenséges nyomás közel van a normálhoz. |
| Túlélési nyomás | standard (2.36/5) | A napi túlélési szükségletek közel vannak a normálishoz. |
| Az erőforrások nyomása | kedvező (1.14/5) | A kellékek és a szállítási feltételek kedvezőek. |
| Környezeti terhelés | standard (2.59/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | kedvező (1.67/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-15"></a>
### Találkozási kontextus

- Tier: **extrém találkozások**
- Téma: **Kísérleti zsákmányútvonal**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.2 | A kontinencia aránya meghaladja a normál értéket, 1,2-szeres. |
| DamageToAlliesMultiplier | 0.0 | A tűz által okozott sebzés messze a normál alatt van, 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | A nappali-éjszakai ciklussebesség 1,5-szerese a normálnál. |
| DayNightCycleState | 1 | A nappal-éjszaka állapot nappal torzított. |
| DeathPenalties | 2 | A halálbüntetés súlyos. |
| DetectionSpeedMultiplier | 0.6 | Az ellenségészlelési sebesség a normál alatt van, 0,6x. |
| DisableResearchMinigame | igaz | A kutatás megkerülése engedélyezve van. |
| DurabilityLossOnDeathMultiplier | 0.0 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0x. |
| EnemyAccuracy | 3 | Az ellenség pontossága pontos. |
| EnemyDeployableDamageMultiplier | 0.7 | A védelemben okozott ellenséges sebzés a normál alatt van, 0,7-szeres. |
| EnemyHealthMultiplier | 1.5 | Az ellenség ellenálló képessége meghaladja a normál értéket, 1,5-szeres. |
| EnemyPlayerDamageMultiplier | 1.0 | A játékosokat ért ellenséges sebzés 1x-nél közel a normálhoz. |
| EnemySpawnRate | 1.3 | Az ellenség gyakorisága a normál felett van, 1,3x. |
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
| ItemStackSizeMultiplier | 8 | A veremkapacitás extrém, 8x. |
| ItemWeightMultiplier | 0.1 | A cikk súlya jóval a normál alatt van, 0,1x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 5.0 | A tapasztalatszerzés extrém 5x-nél. |
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

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `scavenger_experimental_markup`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-audit-of-pockets"></a>
## 17. nap – Zsebek végső ellenőrzése

**Profilazonosító:** `scavenger_final_audit_of_pockets` **Általános feltételek:** Igényes feltételek (2.68/5) **Egyszerű jelentése:** Igényes feltételek. Harci nyomás: A súlyos körülmények a fő nyomás. Túlélési nyomás: Az igényes körülmények a következő legerősebb tényező. **Játékos a játékosoknak:** Hordjon lőszert, tartsa be a visszavonulási útvonalat, és kerülje a támogatás nélküli harcot.

<a id="main-effects-16"></a>
### Fő hatások

- Játék nehézsége: nagyon nehéz.
- Időjárási gyakoriság: nagyon gyakori.
- Az ellenség gyakorisága szélsőséges (2,6x).
- A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket (2,4x).
- A veremkapacitás rendkívül nagy (14x).

<a id="domain-ratings-16"></a>
### Domainértékelések

| Terület | Értékelés | Jelentés |
|---|---|---|
| Harcnyomás | súlyos (3.53/5) | Az ellenséges nyomás megemelkedett; készüljön fel az eljegyzés előtt. |
| Túlélési nyomás | igényes (2.72/5) | Az éhség, a szomjúság, a fáradtság vagy a higiénia több figyelmet igényel. |
| Az erőforrások nyomása | kedvező (1.59/5) | Az ellátási és szállítási feltételek a normálhoz közeliek. |
| Környezeti terhelés | standard (2.55/5) | A környezeti feltételek közel állnak a normálhoz. |
| Helyreállítási nyomás | standard (1.81/5) | A halálra és a felépülésre vonatkozó szabályok közel állnak a normálhoz. |

<a id="encounter-context-16"></a>
### Találkozási kontextus

- Tier: **zárókő-találkozások**
- Téma: **Lot route capstone**
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
| BaseInventorySize | 18 | Az alapkészlet mérete kedvező feltételek mellett 18. |
| BonusPerkPoints | 4 | A bónuszpontok kedvező feltételek 4-nél. |
| BridgeSupports | 0 | A híd támogatási határértéke a normál nyomás 0-nál. |
| ContinenceSpeedMultiplier | 1.1 | A kontinencia aránya közel a normálhoz, 1,1x. |
| DamageToAlliesMultiplier | 0.1 | A tűz által okozott kár jóval a normál alatt van, 0,1-szeres. |
| DayNightCycleSpeedMultiplier | 1.45 | A nappali-éjszakai ciklus sebessége meghaladja a normál értéket, 1,45x. |
| DayNightCycleState | 0 | A nappali-éjszaka állapot normál ciklus. |
| DeathPenalties | 2 | A halálbüntetés súlyos. |
| DetectionSpeedMultiplier | 2.3 | Az ellenségészlelési sebesség jóval meghaladja a normál 2,3x-ot. |
| DisableResearchMinigame | false | A kutatás a szokásos minijátékát használja. |
| DurabilityLossOnDeathMultiplier | 0.5 | Halál esetén a tartósság csökkenése jóval a normál alatt van, 0,5-szerese. |
| EnemyAccuracy | 3 | Az ellenség pontossága pontos. |
| EnemyDeployableDamageMultiplier | 2.0 | Az ellenséges sebzés a védelemben jóval meghaladja a normál értéket, 2x. |
| EnemyHealthMultiplier | 2.3 | Az ellenség ellenálló képessége jóval meghaladja a normál értéket, 2,3x. |
| EnemyPlayerDamageMultiplier | 2.4 | A játékosokat ért ellenséges sebzés jóval meghaladja a normál értéket, 2,4-szeres. |
| EnemySpawnRate | 2.6 | Az ellenség gyakorisága extrém, 2,6x. |
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
| ItemStackSizeMultiplier | 14 | A veremkapacitás extrém, 14x. |
| ItemWeightMultiplier | 0.7 | A cikk súlya a normál alatt van, 0,7x. |
| LootRespawnEnabled | igaz | A zsákmány a begyűjtés után visszatérhet. |
| PlayerFurnitureDestruction | false | A játékos által épített bútorok védve vannak ettől a szabálytól. |
| PlayerXPGainMultiplier | 4.6 | Az élménynövekedés extrém, 4,6-szoros. |
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
- `encounter_director`: `scavenger_final_audit_of_pockets`
- `lethal_lasers`: `overcharged_high_hazard`
