<a id="troubleshooting"></a>
# Utatuzi wa matatizo

> **Chanzo cha Kiingereza cha Canonical:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Simamisha kwa ukaguzi wa kwanza ambao haukufaulu. Hifadhi sanduku la mchanga la sasa, `runtime/`, `web_export/`, na muhimu `UE4SS.log` kabla ya kujaribu kurejesha.

<a id="try-these-common-fixes-first"></a>
## Jaribu marekebisho haya ya kawaida kwanza

1. **RandomDay haionekani kamwe:** thibitisha `RandomDay` folda iko moja kwa moja ndani `ue4ss/Mods`, washa `RandomDay : 1` katika `mods.txt`, na uanze mara moja.
2. **Kipindi cha sasa kilishika sheria zake za zamani:**hii ni kawaida.RandomDay hutayarisha wasifu unaofuata; mchezo huipakia wakati wa kuanza baadaye.
3. **Wasifu ule ule unaendelea kurudi:** paneli ya seva inaweza kuchukua nafasi ya `SandboxSettings.ini`. Tumia faili moja halali ya sanduku la mchanga na ulinganishe majina amilifu na yaliyotayarishwa katika `web_export/today.html`.
4. **Modi ya hiari haikufuata wasifu:** fungua [Njia za hiari zinazotumika](ADAPTER_ZINAZOTUMIKA.md). Moduli ya hiari inayokosekana, iliyozimwa, au isiyotambulika haijabadilishwa.
5. **RandomDay inaripoti kushindwa kuandika au kurejesha:** simamisha kabla ya kuwasha tena, hifadhi `runtime/backups/`, na ufuate sehemu ya uokoaji iliyotajwa hapa chini.

Ikiwa ukaguzi huo tano hautambui tatizo, endelea na mti wa uamuzi wa kina.

<a id="choose-the-first-failed-stage"></a>
## Chagua hatua ya kwanza ambayo haikufaulu

Tumia safu mlalo ya kwanza inayolingana na kile unachoweza kuthibitisha. Usianze na maelezo makali zaidi, na usichanganye kutofaulu kwa matokeo yasiyohusiana katika utambuzi mmoja.

| Unachoweza kuona | Angalia kwanza | Endelea na | Tokeo linalotarajiwa |
|---|---|---|---|
| Hapana `[RandomDay]` mstari wa kuanzia upo katika `UE4SS.log`. | Sakinisha mzizi, alama za kifurushi, `mods.txt`, na UE4SS Anza kwa Lua. | [Rejesha iliyokosekana RandomDay anza](#restore-a-missing-randomday-start) | Mstari mmoja wa mwanzo hutaja hali ya kutolewa na kifurushi, au kutofaulu kunategemea kupakiwa. |
| RandomDay imepakiwa, lakini hakuna wasifu uliokuwa tayari. | Hitilafu ya kwanza ya uanzishaji, usanidi, lengwa, muamala au hali. | [Ona kutokana na utayarishaji ambao haujafaulu](#recover-from-failed-preparation), kisha [rejeleo la hali na hitilafu](MAREJELEO_YA_HALI_NA_HITILAFU.md) | Msimbo mmoja kamili hutambulisha kitendo kinachofuata kilicho salama. |
| Wasifu uliotayarishwa upo, lakini kanuni za uendeshaji hazikubadilika. | Vitambulisho vinavyotumika na vilivyotayarishwa katika `today.json` au `today.html`. | [Thibitisha mpaka wa kuanzisha upya](#confirm-the-restart-boundary) | Kipindi cha sasa kinasalia kuwa amilifu; wasifu uliotayarishwa unasubiri kuanza baadaye. |
| Siku ya 1 au siku nyingine hurudiwa baada ya kuanza upya. | Alama za kisanduku cha mchanga kabla ya kuanza kwa kidirisha, baada ya kidirisha kuanza na baada ya kutayarisha. | [Komesha utayarishaji unaorudiwa](#stop-repeated-preparation) | Mwandishi aliyeidhinishwa au hoja ya kubatilisha imetambuliwa. |
| Sanduku la mchanga ni sawa, lakini hali ya hiari ilirukwa au haikufaulu. | Tokeo la adapta ya kibinafsi na ushahidi wa uoanifu. | [Tambua adapta iliyorukwa](#diagnose-a-skipped-adapter) au [Rejesha hitilafu ya kurejesha adapta](#recover-an-adapter-rollback-failure) | Afya ya adapta huamuliwa bila kutumia sandbox health. |
| Mwongozo singleplayer/LAN faili haipo. | Hali ya kifurushi na folda ya towe yenye mipaka. | [Zalisha inayokosekana singleplayer/LANfaili](#generate-a-missing-singleplayerlan-file) | Faili inatolewa ndani RandomDay bila kugundua hifadhi ya kibinafsi. |
| Ujumbe unaomhusu mchezaji pekee ndio unakosekana au unasongwa vibaya. | Kumbukumbu ya pasi ya ujumbe, onyesho la kukagua chanzo, na vikomo vilivyoandikwa. | [Tambua tatizo la ujumbe](#diagnose-a-message-problem) | Wasilisho hujaribiwa bila kuchukuliwa kama uthibitisho wa wasifu. |

<a id="follow-the-safe-diagnostic-order"></a>
### Fuata agizo salama la uchunguzi

1. Hifadhi ushahidi wa sasa kabla ya kubadilisha faili.
2. Thibitisha kama RandomDay imepakiwa.
3. Tafuta hatua ya kwanza ambayo haikufikia matokeo yake yaliyoandikwa.
4. Nakili hali halisi au thamani ya hitilafu kutoka kwa wakati wa kutoa matokeo.
5. Tumia safu mlalo ya jedwali inayolingana hapa chini kwa jibu moja salama.
6. Soma tena lengwa na hali ya mzunguko kabla ya kuanza tena.

Ikiwa hakuna safu mlalo inayolingana, tumia [Marejeleo ya Hali ya Muda wa Kuendesha na Tokeo](ZANA_ZA_MUDA_WA_KUENDESHA.md) ili kutambua mzalishaji na maana ya uga kabla ya kubadilisha usanidi.

<a id="restore-a-missing-randomday-start"></a>
## Rejesha iliyokosekana RandomDay anza

**Kisababishi kinachowezekana zaidi:** mpangilio usio sahihi wa uchimbaji, mod iliyozimwa, hali ya kifurushi isiyo sahihi, au UE4SS haikupakia sehemu ya kuingilia ya Lua.

**Angalia haswa:** thibitisha `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version`, na `RandomDay/Scripts/main.lua`; thibitisha `RandomDay : 1` katika `mods.txt`; tafuta `UE4SS.log` ya `[RandomDay]`.

**Tokeo linalotarajiwa:** mstari wa mwanzo hutaja utambulisho wa toleo na hali ya kifurushi.

**Kitendo kinachofuata salama:** sahihisha mpangilio au kuwezesha ukiwa umesimamishwa, kisha uanze mara moja.

**Usifikirie:** hapana RandomDay line haithibitishi mchezo au hitilafu ya wasifu.

<a id="confirm-the-restart-boundary"></a>
## Thibitisha mpaka wa kuanzisha upya

**Kisababishi kinachowezekana zaidi:** tabia ya kawaida ya kuanzisha upya.

**Angalia haswa:** linganisha amilifu na tayari family/day katika `web_export/today.json` au `today.html`.

**Tokeo linalotarajiwa:** wasifu uliotayarishwa unatofautiana na, au umejitenga kwa uwazi kutoka, wasifu unaotumika.

**Kitendo kinachofuata salama:** anza upya tu wakati uko tayari kuiwasha, kisha uthibitishe kialamisho amilifu.

**Usifikirie:** wasifu uliotayarishwa haufanyiki kabla ya baada ya kuanza upya usomaji.

<a id="stop-repeated-preparation"></a>
## Komesha utayarishaji unaorudiwa

**Kisababishi kinachowezekana zaidi:** amilifu RandomDay alama haipo kwa sababu paneli ya seva au zana nyingine iliandika upya `SandboxSettings.ini` wakati wa kuanzisha.

**Angalia haswa:** linganisha faili ya sandbox na RandomDay alama mara moja kabla ya kuanza, baada ya kidirisha kuanza, na baada ya RandomDay hutayarisha faili.

**Tokeo linalotarajiwa:** faili iliyo kwenye buti inayofuata huhifadhi alama iliyotayarishwa.

**Kitendo kinachofuata salama:** sanidi chanzo kimoja kinachoidhinishwa cha kisanduku cha mchanga na uzime uandishi wa paneli zinazokinzana.

**Usifikirie:** iliyorudiwa Siku ya 1 haithibitishi kwamba kiteuzi cha familia kinabahatisha kimakosa.

<a id="recover-from-failed-preparation"></a>
## Ona kutokana na utayarishaji ambao haujafaulu

**Kisababishi kinachowezekana zaidi:** inasubiri kuandika, kuhifadhi nakala, kukuza, usomaji wa toleo la awali, uthibitishaji, au urejeshaji umeshindwa.

**Angalia haswa:** soma ya kwanza `[RandomDay] [ERROR]` line na uhifadhi nakala ya uendeshaji iliyotajwa. Kagua `runtime/last_good/manifest.lua` kabla ya kutumia faili yake ya sandbox.

**Tokeo linalotarajiwa:** ama faili iliyotangulia itathibitishwa kuwa imerejeshwa au matokeo yanaripoti kwa uwazi kushindwa kurejesha.

**Kitendo kinachofuata salama:** simamisha seva na ufuate [urejeshaji wa mikono](UENDESHAJI.md#manual-recovery).

**Usifikirie:** kuwepo kwa faili mbadala pekee hakuthibitishi kuwa inalingana na hali ya ulimwengu inayotumika.

<a id="diagnose-a-skipped-adapter"></a>
## Tambua adapta iliyorukwa

**Kisababishi kinachowezekana zaidi:** mod haipo au faili hailingani na sahihi inayotumika.

**Angalia haswa:** soma matokeo ya adapta na ulinganishe toleo na mpangilio uliosakinishwa na [Adapta za Mod zinazotumika](ADAPTER_ZINAZOTUMIKA.md).

**Tokeo linalotarajiwa:** `not_installed` kwa lengo ambalo halipo au `skipped_incompatible` kwa lengo lisilotambulika.

**Kitendo kinachofuata salama:** acha faili bila kubadilika, zima adapta hiyo, au sakinisha toleo linalotumika kabisa kutoka kwa mwandishi wake asilia.

**Usifikirie:** jina la faili sawa au toleo jipya zaidi si uthibitisho wa uoanifu.

<a id="recover-an-adapter-rollback-failure"></a>
## Rejesha hitilafu ya kurejesha adapta

**Kisababishi kinachowezekana zaidi:** jaribio la kuandika na kurejesha otomatiki halikuweza kuthibitishwa.

**Angalia haswa:** hifadhi lengwa, ndugu pending/rollback faili, hali ya adapta, na chelezo mpya zaidi ya adapta chini ya `runtime/backups/`.

**Tokeo linalotarajiwa:** matokeo ni `rollback_failed`, si `applied`.

**Kitendo kinachofuata salama:** komesha walioathirika mod/server na urejeshe hifadhi rudufu iliyothibitishwa wewe mwenyewe kabla ya uzinduzi mwingine.

**Usifikirie:** RandomDay's matokeo ya msingi ya kisanduku cha mchanga hayathibitishi kuwa shabaha tofauti ya adapta ni nzuri.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Zalisha inayokosekana singleplayer/LANfaili

**Kisababishi kinachowezekana zaidi:** kifurushi maalum kilisakinishwa, kialamisho cha hali ni batili, au RandomDay haikupakia.

**Angalia haswa:** `.randomday_mode` lazima iwe na `singleplayer_manual`; kisha thibitisha RandomDay mstari wa kuanzia na ukague `runtime/singleplayer_manual/SandboxSettings.ini`.

**Tokeo linalotarajiwa:** faili ipo ndani ya RandomDayfolda pekee.

**Kitendo kinachofuata salama:** sakinisha kifurushi sahihi kwa usafi na uanze mara moja.

**Usifikirie:** RandomDay haitatafuta au kuandika ulimwengu unaolengwa kwa niaba yako.

<a id="diagnose-a-message-problem"></a>
## Tambua tatizo la ujumbe

**Kisababishi kinachowezekana zaidi:** hakuna kibambo halali cha kichezaji kilichopatikana katika pasi iliyoratibiwa, usafiri wa onyo haukupatikana, au onyesho la mteja lilifunga maandishi kwa njia tofauti.

**Angalia haswa:** kagua `[RandomDay]` logi ya ujumbe na ulinganishe ujumbe chanzo na kikomo cha urefu kilichoandikwa.

**Tokeo linalotarajiwa:** muda wa utekelezaji huripoti kama ujumbe ulifanyika; uthibitishaji wa chanzo huripoti urefu wa juu zaidi.

**Kitendo kinachofuata salama:** thibitisha kwa ubora wa mteja uliokusudiwa. Weka uchezaji wa mchezo na uthibitishaji wa wasifu tofauti na matokeo ya ujumbe.

**Usifikirie:** ujumbe unaoonekana hauthibitishi wasifu wa kisanduku cha mchanga kutumika, na ujumbe unaokosekana hauthibitishi kuwa utayarishaji haukufaulu.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Chaguo nne za wasifu mzima zimerejeshwa kwa thamani zilizosafirishwa

**Kisababishi kinachowezekana zaidi:** iliyozalishwa pekee `SandboxSettings.ini` ilihaririwa, au `server.lua` ilibadilishwa wakati mchakato ule ule wa Lua ukiendelea.

**Angalia haswa:** simamisha mchezo au seva maalum, fungua `RandomDay/Scripts/ax_config/server.lua`, na uthibitishe zilizohifadhiwa `sandbox.profile_overrides` block ina thamani nne zilizokusudiwa.

**Tokeo linalotarajiwa:** baada ya kuanza tena, kila iliyotayarishwa upya family/day wasifu una thamani zilizochaguliwa. Baadaye mizunguko ya wasifu na seva huanza kuendelea kutumia kizuizi kile kile.

**Kitendo kinachofuata salama:** sahihisha kizuizi, anza mara moja, na uangalie wasifu uliotayarishwa. Usibandike tu faili ya kisanduku cha mchanga iliyotengenezwa kwa sababu matayarisho ya baadaye yatachukua nafasi yake.

<a id="look-up-an-exact-status"></a>
## Angalia hali halisi

Baada ya mti wa uamuzi kubainisha hatua iliyofeli, nakili halisi`status`, `transaction_status`, `rollback_status`, au `error` thamani kutoka kwa uhamishaji wa wakati wa utekelezaji. Tumia [rejeleo la hali na hitilafu](MAREJELEO_YA_HALI_NA_HITILAFU.md) kwa maana yake na jibu moja la opereta salama. Maneno sawa katika paneli au kiweko si mbadala wa thamani iliyohamishwa.

Kushindwa kwa mazingira ya majaribio ya mchangiaji pekee ni katika [uthibitishaji wa kutolewa](UTHIBITISHAJI_WA_TOLEO.md#avoid-validation-environment-pitfalls), haiko katika njia ya kurejesha opereta.
