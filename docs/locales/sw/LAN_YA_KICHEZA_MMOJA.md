<a id="singleplayer-and-lan-manual-workflow"></a>
# Mchezaji Mmoja na LAN mtiririko wa kazi mwenyewe

> **Chanzo cha Kiingereza cha Canonical:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


RandomDay's singleplayer/LAN cha RandomDay hutengeneza `SandboxSettings.ini` folda kamili ndani ya mod. Unachagua ulimwengu na kunakili faili mwenyewe wakati mchezo umefungwa.

Kifurushi kimefungwa kwa pato hili:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Inazima uandishi wa sandbox ya seva maalum, vioo vya sandbox, na adapta zote za hiari huandika. Haitafuta AppData, Data ya mtumiaji ya Steam, Hati, hifadhi folda, folda za seva, au folda za mod za wengine.

<a id="understand-the-manual-boundary"></a>
## Elewa mpaka wa mwongozo

Kabla ya kuanza, sanidi utumiaji katika`RandomDay/Scripts/ax_config/server.lua`. Kifurushi cha mwongozo kinakubali `experience.mode="auto"` au `"singleplayer_lan"`. Unaweza kuchagua siku ya kwanza isiyobadilika au nasibu na agizo la siku 17 linalofuatana au lisilorudiwa-rudiwa. Uteuzi wa familia hutumia mipangilio sawa ya familia iliyochaguliwa, kuzungushwa au isiyorudiwa-rudiwa kama seva maalum.

Toleo lililotolewa linajumuisha kialamisho RandomDay inasoma kwenye mchakato unaofuata. Ili kuweka hali ikiwa imepangiliwa, nakili faili iliyozalishwa katika ulimwengu uliochaguliwa uliosimamishwa kabla ya kuanza mchakato mwingine wa kizazi. Kuanza mara kwa mara bila kunakili kunaweza kuendeleza foleni ya kisasa hata ingawa ulimwengu haujawahi kupakia matokeo ya awali.

Fuata kanuni [kichezaji kimoja au LANutaratibu wa usakinishaji](USAKINISHAJI.md#singleplayer-or-lan) kwa chelezo, uwekaji wa kifurushi, kuwezesha, kutengeneza, kunakili mwenyewe na uthibitishaji. Ukurasa huu unaelezea mpaka wa mwongozo; haifafanui njia nyingine ya usakinishaji.

Kizazi cha kwanza hutayarisha wasifu; haiwezi kubadilisha sheria ambazo tayari zimepakiwa na mchakato huo wa mchezo. Funga, nakili na uanze tena kuitumia. Rudia mzunguko tu wakati unataka kwa makusudi siku inayoendelea.

Inaondoa RandomDay hairejeshi faili ya ulimwengu ambayo umenakili mwenyewe; tumia chelezo yako mwenyewe kwa urejeshaji huo. Fuata [Ondoa au rudisha usakinishaji wowote](USAKINISHAJI.md#remove-or-disable-randomday) kwa utaratibu kamili wa kuondoa.
