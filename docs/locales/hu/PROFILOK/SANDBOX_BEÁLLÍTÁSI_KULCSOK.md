<a id="randomday---sandboxsettings-dictionary"></a>
# RandomDay - SandboxSettings szótár

> **Kanonikus angol forrás:** [SANDBOX_SETTINGS_KEYS.md](../../../profiles/SANDBOX_SETTINGS_KEYS.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Verzió: `v0.3.16-alpha`

Ez a teljes futásidejű szótár a 46-hoz SandboxSettings minden RandomDay profil. A szótár a nyers értékeket tartománypontszámokká és korlátos player/admin megfogalmazás; soha nem helyettesíti a nyers értéket.

| Kulcs | Játékos jelentése | Domain | Típus | Alapállapot | Nehezebb, amikor |
|---|---|---|---|---:|---|
| AllowCharacterReset | karakter visszaállítása | helyreállítás | boolean | n/a | kontextus |
| AllowIronMode | vasaló mód | helyreállítás | boolean | n/a | kontextus |
| AllowPagers | lapozók | források | boolean | n/a | kontextus |
| AllowRecipeSharing | receptmegosztás | források | boolean | n/a | kontextus |
| AllowTransmog | transzmog | források | boolean | n/a | kontextus |
| BaseInventorySize | alapkészletméret | források | szám | 12 | alacsony |
| BonusPerkPoints | bónuszpontok | források | szám | 0 | alacsony |
| BridgeSupports | híd támogatási korlát | környezet | szám | 0 | magas |
| ContinenceSpeedMultiplier | kontinencia aránya | túlélés | szorzó | 1.0 | magas |
| DamageToAlliesMultiplier | baráti tűzkár | harc | szorzó | 1.0 | magas |
| DayNightCycleSpeedMultiplier | nappali-éjszakai ciklussebesség | környezet | szorzó | 1.0 | magas |
| DayNightCycleState | nappali-éjszaka állapot | környezet | enum | n/a | kontextus |
| DeathPenalties | halálbüntetések | helyreállítás | enum | n/a | kontextus |
| DetectionSpeedMultiplier | ellenségérzékelési sebesség | harc | szorzó | 1.0 | magas |
| DisableResearchMinigame | kutass minijátékot | források | boolean | n/a | kontextus |
| DurabilityLossOnDeathMultiplier | halál esetén a tartósság elvesztése | helyreállítás | szorzó | 1.0 | magas |
| EnemyAccuracy | ellenség pontossága | harc | enum | n/a | kontextus |
| EnemyDeployableDamageMultiplier | ellenség sebzés a védelemben | harc | szorzó | 1.0 | magas |
| EnemyHealthMultiplier | ellenség ellenálló képessége | harc | szorzó | 1.0 | magas |
| EnemyPlayerDamageMultiplier | ellenség kár a játékosokban | harc | szorzó | 1.0 | magas |
| EnemySpawnRate | ellenség gyakorisága | harc | szorzó | 1.0 | magas |
| FatigueSpeedMultiplier | fáradási arány | túlélés | szorzó | 1.0 | magas |
| FirstTimeStartingWeapon | fegyverellátás elindítása | források | szám | 0 | alacsony |
| FoodSpoilSpeedMultiplier | élelmiszerromlás | források | szorzó | 1.0 | magas |
| GameDifficulty | játék nehézsége | harc | enum | n/a | kontextus |
| HardcoreMode | kemény mód | helyreállítás | boolean | n/a | kontextus |
| HomeWorlds | otthoni világok | környezet | boolean | n/a | kontextus |
| HostAccessPlayerCorpses | gazdatest hozzáférése | helyreállítás | boolean | n/a | kontextus |
| HungerSpeedMultiplier | éhségi ráta | túlélés | szorzó | 1.0 | magas |
| InvisibleRadiation | láthatatlan sugárzás | környezet | boolean | n/a | kontextus |
| ItemDurabilityMultiplier | cikk tartóssága | források | szorzó | 1.0 | alacsony |
| ItemStackSizeMultiplier | verem kapacitása | források | szorzó | 1.0 | alacsony |
| ItemWeightMultiplier | elem súlya | források | szorzó | 1.0 | magas |
| LootRespawnEnabled | loot respawn | források | boolean | n/a | kontextus |
| PlayerFurnitureDestruction | lejátszó bútorok megsemmisítése | harc | boolean | n/a | kontextus |
| PlayerXPGainMultiplier | tapasztalatszerzés | források | szorzó | 1.0 | alacsony |
| PowerSocketsOffAtNight | éjszakai energia | környezet | boolean | n/a | kontextus |
| RadiationDealsDamage | sugárkárosodás | környezet | boolean | n/a | kontextus |
| RefrigerationEffectivenessMultiplier | hűtés | források | szorzó | 1.0 | alacsony |
| ShowDeathMessages | haláli üzenetek | helyreállítás | boolean | n/a | kontextus |
| SinkRefillRate | mosogató utántöltési arány | források | szorzó | 1.0 | alacsony |
| StorageByTag | tárolás címke szerint | források | boolean | n/a | kontextus |
| StructuralSupportLimit | strukturális támogatási korlát | környezet | szám | 0 | magas |
| TaintedSinkWater | szennyezett mosogatóvíz | túlélés | boolean | n/a | kontextus |
| ThirstSpeedMultiplier | szomj arány | túlélés | szorzó | 1.0 | magas |
| WeatherFrequency | időjárási gyakoriság | környezet | enum | n/a | kontextus |

<a id="score-bands"></a>
## Értéksávok

| Legpontozás | Értékelés | Egyszerű jelentés |
|---:|---|---|
| 0.8 | Engedélyezési feltételek | dombormű |
| 1.7 | Kedvező feltételek | kedvező |
| 2.6 | Normál nyomás | szabványos |
| 3.4 | Szükséges feltételek | igényes |
| 4.2 | Súlyos állapotok | súlyos |
| 5.0 | Extrém körülmények | extrém |
