<a id="randomday---sandboxsettings-dictionary"></a>
# RandomDay - SandboxSettings kamusi

> **Chanzo cha Kiingereza cha Canonical:** [SANDBOX_SETTINGS_KEYS.md](../../../profiles/SANDBOX_SETTINGS_KEYS.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Toleo: `v0.3.16-alpha`

Hii ndiyo kamusi kamili ya wakati wa utekelezaji ya 46 SandboxSettings vitufe vinavyotumiwa na kila RandomDay wasifu. Kamusi hubadilisha thamani ghafi kuwa alama za kikoa na kuwekewa mipaka player/admin maneno; kamwe haibadilishi thamani ghafi.

| Ufunguo | Maana ya kicheza | Kikoa | Aina | Msingi | Kigumu zaidi wakati |
|---|---|---|---|---:|---|
| AllowCharacterReset | weka upya herufi | ahueni | boolean | n/a | muktadha |
| AllowIronMode | hali ya chuma | ahueni | boolean | n/a | muktadha |
| AllowPagers | pagers | rasilimali | boolean | n/a | muktadha |
| AllowRecipeSharing | kushiriki mapishi | rasilimali | boolean | n/a | muktadha |
| AllowTransmog | transmog | rasilimali | boolean | n/a | muktadha |
| BaseInventorySize | ukubwa msingi wa orodha | rasilimali | namba | 12 | chini |
| BonusPerkPoints | alama za marupurupu ya bonasi | rasilimali | namba | 0 | chini |
| BridgeSupports | kikomo cha usaidizi wa daraja | mazingira | namba | 0 | juu |
| ContinenceSpeedMultiplier | asilimia ya kujizuia | kuishi | kizidishi | 1.0 | juu |
| DamageToAlliesMultiplier | uharibifu wa moto-rafiki | pigana | kizidishi | 1.0 | juu |
| DayNightCycleSpeedMultiplier | kasi ya mzunguko wa mchana na usiku | mazingira | kizidishi | 1.0 | juu |
| DayNightCycleState | hali ya mchana-usiku | mazingira | enum | n/a | muktadha |
| DeathPenalties | adhabu za kifo | ahueni | enum | n/a | muktadha |
| DetectionSpeedMultiplier | kasi ya kugundua adui | pigana | kizidishi | 1.0 | juu |
| DisableResearchMinigame | mchezo mdogo wa utafiti | rasilimali | boolean | n/a | muktadha |
| DurabilityLossOnDeathMultiplier | kupoteza uimara wakati wa kifo | ahueni | kizidishi | 1.0 | juu |
| EnemyAccuracy | usahihi wa adui | pigana | enum | n/a | muktadha |
| EnemyDeployableDamageMultiplier | uharibifu wa adui kwa ulinzi | pigana | kizidishi | 1.0 | juu |
| EnemyHealthMultiplier | ustahimilivu wa adui | pigana | kizidishi | 1.0 | juu |
| EnemyPlayerDamageMultiplier | uharibifu wa adui kwa wachezaji | pigana | kizidishi | 1.0 | juu |
| EnemySpawnRate | masafa ya adui | pigana | kizidishi | 1.0 | juu |
| FatigueSpeedMultiplier | kiwango cha uchovu | kuishi | kizidishi | 1.0 | juu |
| FirstTimeStartingWeapon | kuanzisha utoaji wa silaha | rasilimali | namba | 0 | chini |
| FoodSpoilSpeedMultiplier | uharibifu wa chakula | rasilimali | kizidishi | 1.0 | juu |
| GameDifficulty | ugumu wa mchezo | pigana | enum | n/a | muktadha |
| HardcoreMode | hali ngumu | ahueni | boolean | n/a | muktadha |
| HomeWorlds | ulimwengu wa nyumbani | mazingira | boolean | n/a | muktadha |
| HostAccessPlayerCorpses | ufikiaji wa maiti mwenyeji | ahueni | boolean | n/a | muktadha |
| HungerSpeedMultiplier | kiwango cha njaa | kuishi | kizidishi | 1.0 | juu |
| InvisibleRadiation | mnururisho usioonekana | mazingira | boolean | n/a | muktadha |
| ItemDurabilityMultiplier | uimara wa kipengee | rasilimali | kizidishi | 1.0 | chini |
| ItemStackSizeMultiplier | uwezo wa rafu | rasilimali | kizidishi | 1.0 | chini |
| ItemWeightMultiplier | uzito wa bidhaa | rasilimali | kizidishi | 1.0 | juu |
| LootRespawnEnabled | loot repawn | rasilimali | boolean | n/a | muktadha |
| PlayerFurnitureDestruction | uharibifu wa fanicha ya mchezaji | pigana | boolean | n/a | muktadha |
| PlayerXPGainMultiplier | manufaa ya uzoefu | rasilimali | kizidishi | 1.0 | chini |
| PowerSocketsOffAtNight | nguvu ya usiku | mazingira | boolean | n/a | muktadha |
| RadiationDealsDamage | uharibifu wa mionzi | mazingira | boolean | n/a | muktadha |
| RefrigerationEffectivenessMultiplier | friji | rasilimali | kizidishi | 1.0 | chini |
| ShowDeathMessages | ujumbe wa kifo | ahueni | boolean | n/a | muktadha |
| SinkRefillRate | kiwango cha kujaza tena sinki | rasilimali | kizidishi | 1.0 | chini |
| StorageByTag | hifadhi kwa tagi | rasilimali | boolean | n/a | muktadha |
| StructuralSupportLimit | kikomo cha usaidizi wa miundo | mazingira | namba | 0 | juu |
| TaintedSinkWater | maji ya sinki yaliyochafuliwa | kuishi | boolean | n/a | muktadha |
| ThirstSpeedMultiplier | kiwango cha kiu | kuishi | kizidishi | 1.0 | juu |
| WeatherFrequency | marudio ya hali ya hewa | mazingira | enum | n/a | muktadha |

<a id="score-bands"></a>
## Bendi za alama

| Alama hadi | Ukadiriaji | Maana dhahiri |
|---:|---|---|
| 0.8 | Masharti ya usaidizi | unafuu |
| 1.7 | Masharti yanayofaa | inapendeza |
| 2.6 | Shinikizo la kawaida | standard |
| 3.4 | Masharti ya kudai | inayohitaji |
| 4.2 | Hali kali | kali |
| 5.0 | Masharti ya hali ya juu | iliyokithiri |
