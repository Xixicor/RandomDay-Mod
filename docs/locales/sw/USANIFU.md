<a id="architecture-and-data-flow"></a>
# Usanifu na Mtiririko wa Data

> **Chanzo cha Kiingereza cha Canonical:** [ARCHITECTURE.md](../../ARCHITECTURE.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


RandomDay anamiliki kazi moja yenye mipaka: tayarisha wasifu kamili wa kisanduku cha mchanga kwa ajili ya kuanza siku zijazo bila kuelezea wasifu huo kuwa amilifu wakati wa mchakato wa sasa. Wasifu unaotumika hutoka kwa kialama katika faili ya kisanduku cha mchanga ambayo Abiotic Factor ilipakia kabla ya UE4SS kuanza RandomDay. Wasifu uliotayarishwa ni hali tofauti, iliyothibitishwa ya faili kwa uanzishaji upya unaofuata.

<a id="package-modes"></a>
## Njia za Kifurushi

Kiunda toleo hutoa ZIP mbili kutoka kwa orodha sawa ya vibali vya chanzo na huweka `RandomDay/.randomday_mode` tofauti katika kila moja.

| Modi | Toleo la msingi | Maandishi ya nje ya kiotomatiki |
|---|---|---|
| `dedicated_server` | Seva maalum iliyotatuliwa `SandboxSettings.ini` | Sanduku la mchanga la msingi, vioo vilivyosanidiwa kimakusudi, na adapta za hiari zinazotambuliwa. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Hakuna nje ya RandomDayfolda; vioo na adapta zimezimwa. |

`RandomDay/.randomday_version` na `RandomDay/.randomday_mode`ni alama za kifurushi zinazozalishwa.`RandomDay/Scripts/ax_core/version.lua` inazisoma; waendeshaji lazima wasizihariri baada ya usakinishaji.

<a id="session-modes"></a>
## Njia za Kipindi

Modi ya kifurushi hudhibiti ambapo RandomDayinaweza kuandika. `experience.mode` inaeleza kando mzunguko wa maisha unaokusudiwa:

| Modi ya kipindi | Kifurushi | Mkataba wa mzunguko wa maisha |
|---|---|---|
| `persistent_dedicated` | Imejitolea | Endelea na agizo linaloendelea la familia na lenye nafasi 17 katika uanzishaji upya wa muda mrefu. |
| `temporary_dedicated` | Imejitolea | Chukua kila uzinduzi kama kipindi cha kucheza chenye mipaka huku ukihifadhi mpangilio uliowekwa kati ya uzinduzi. |
| `singleplayer_lan` | Mwongozo wa mchezaji mmoja | Tengeneza faili ya kisasa kwa ajili ya ulimwengu uliochaguliwa na opereta; hakuna ugunduzi wa kuhifadhi au kunakili kiotomatiki. |

`auto` inaamua kuwa `persistent_dedicated` kwenye kifurushi maalum na `singleplayer_lan` kwenye kifurushi cha mwongozo. Hali ya kipindi haibadilishi mpaka wa injini: mchakato wa sasa tayari umepakia kisanduku chake kabla ya RandomDaykutekeleza.

<a id="startup-path"></a>
## Njia ya Kuanzisha

1. UE4SS hupakia `RandomDay/Scripts/main.lua`.
2. Eneo la kuingilia linasuluhisha moja `RandomDay/` mzizi na mizigo `Scripts/ax_core/init.lua`.
3. `init.lua` hupakia usanidi, wasifu, kalenda, mwandishi, adapta, hali, uhamishaji wa wavuti, na moduli za ujumbe wa kichezaji. Inakataa hali ya kifurushi batili au imezima kufuli ya usalama ya muamala. Pia huthibitisha hali ya kipindi inayooana na kifurushi, hali ya siku ya kuanza, siku ya kuanza iliyosanidiwa na modi ya kuendeleza siku.
4. Kila muundo wa familia huidhinishwa `sandbox.profile_overrides` kutoka `Scripts/ax_config/server.lua`. Chaguzi nne za wasifu zitatumika baada ya family/day thamani na kabla ya sheria zisizobadilika zilizosalia, kwa hivyo kila wasifu uliotayarishwa hutumia chaguo zile zile zilizosanidiwa.
5. Mizizi ya muda wa utekelezaji na pato la wavuti imeunganishwa kwenye folda ya mod iliyotatuliwa. Hali ya mchezaji mmoja imepunguzwa hadi toleo lake moja la ndani kabla ya uteuzi.
6. `ax_cycle/calendar.lua` husoma alama ya kisanduku cha mchanga na hali ya mzunguko inayoweza kurejeshwa, kisha huunda moja active/prepared uamuzi wa mchakato huu wa mchezo.
7. `ax_sandbox/writer.lua` huratibu na kuthibitisha wasifu uliotayarishwa, kisha hutumia ubadilishaji wa shughuli kwa lengo lililochaguliwa.
8. Hali ya kuzunguka inafanywa tu baada ya muamala wa sandbox kufaulu. Kushindwa kwa ahadi ya serikali kunashushwa hadhi: adapta na ujumbe uliotayarishwa wa kichezaji kurukwa kwa sababu kisanduku cha mchanga na hali ya foleni hazikubaliani.
9. Katika hali maalum, `ax_external/bridge.lua` hutathmini adapta za hiari dhidi ya wasifu unaotumika. Wakati wa bootstrap ya kwanza, hakuna alama inayotumika, kwa hivyo iliyoandaliwa configured/random wasifu wa siku ya kuanza ndio upangaji wa ramani ya adapta pekee.
10. Wakati wa utekelezaji JSON/text hali na HTML/JSON mwonekano wa wavuti huandikwa upya kutokana na uamuzi sawa. Arifa za wachezaji zimesakinishwa mwisho.

Chaguo-msingi `cycle.check_interval_ms=0` huendesha mfuatano huu mara moja inapowashwa. Opereta akitoa muda chanya na UE4SS kufichua `LoopAsync`, simu za baadaye hutumia tena uteuzi unaomilikiwa na mchakato. Wanaweza kurekebisha au kuuza nje tena uteuzi huo, lakini wasichague siku nyingine wakati wa mchakato sawa.

<a id="rotation-state-machine"></a>
## Mashine ya Hali ya Mzunguko

| Hali ya uteuzi | Hali ya kuingia | Tokeo lililotayarishwa | Urejeshaji salama |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Hakuna alama inayotumika na hakuna hali inayoweza kurejeshwa iliyotayarishwa. | Imesanidiwa au kuchaguliwa kwa nasibu nafasi ya kwanza katika mpangilio mpya wa siku unaoendelea. | Dumisha kipindi kilichopo kikiendelea; anzisha upya tu baada ya `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | Siku inayotumika sio nafasi ya mwisho katika mpangilio uliohifadhiwa. | Nafasi inayofuata iliyohifadhiwa katika familia moja. | Kama uendelevu utashindwa, simamisha seva na upatanishe kisanduku cha mchanga na hali ya kuzunguka. |
| `active_marker_found_completed_run_prepare_next_unused_family` | Siku amilifu ndiyo nafasi ya mwisho katika mpangilio uliohifadhiwa. | Nafasi ya kwanza kutoka kwa agizo jipya katika utekelezaji unaofuata wa familia unaostahiki. | Thibitisha family/day/order kabla ya kuwasha upya. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Hakuna alama inayotumika, lakini mzunguko unasema wasifu uliotayarishwa. | Wasifu ule ule ulio kwenye foleni umeundwa upya. | Hifadhi faili za hali; usizifute ili kulazimisha kuandikishwa upya. |
| `supervision_reconfirm_prepared_profile_no_advance` | Piga simu baadaye itaendeshwa kwa mchakato sawa. | Wasifu sawa uliotayarishwa. | Tambua hatua ya kwanza iliyofeli; kupiga simu mara kwa mara sio chaguo jipya. |

`selected_run` hutumia `selected_family`. `rotation_run`hutumia agizo linalostahiki lililowekwa.`non_repeating_random_run` huchagua kutoka kwa familia zilizosalia zinazostahiki na kuanzisha kikundi kipya baada ya yote kukamilika. Kila hali huweka familia moja hadi vitambulisho vyote 17 vya kipekee vya siku `day_order` zimekamilika. Hali ya mfuatano hufungwa baada ya Siku ya 17 wakati mwanzo uliosanidiwa si Siku ya 1; hali ya kutorudia-rudia-nasibu huhifadhi kibali kimoja na kamwe haiirudishi tena wakati wa kurejesha.

<a id="sandbox-transaction"></a>
## Muamala wa Sandbox

Mwandishi anatoa funguo zote kwa mpangilio wa kisheria na kuhalalisha aina, safu, sheria zisizobadilika, thamani za kialamisho na utambulisho wa wasifu kabla ya kuandika. Ubadilishaji basi hufuata agizo hili:

1. ondoa faili iliyochakaa inayosubiri tu wakati ni salama kufanya hivyo;
2. hifadhi au usimamishe kwenye kando za uokoaji zilizokuwepo awali;
3. andika baiti zinazosubiri;
4. soma tena faili inayosubiri na uithibitishe;
5. unda hifadhi rudufu ya operesheni iliyothibitishwa wakati lengo lipo;
6. shikilia ya asili kama faili ya kurejesha muamala;
7. kuza faili ambayo haijashughulikiwa;
8. soma na uthibitishe faili ya uzalishaji;
9. rejesha asili iliyoshikiliwa ikiwa uthibitishaji wa ukuzaji au uzalishaji utashindwa;
10. hifadhi data ya uokoaji na uripoti kushindwa ikiwa usafishaji hauwezi kuthibitishwa.

Kwanza kuandika hutumia vivyo hivyo pending/readback/validation njia. Bila lengo asili hakuna kitu cha kurejesha, kwa hivyo uandishi ulioshindwa kwanza lazima uripotiwe kama urejeshaji wa faili asili.

<a id="adapter-boundary"></a>
## Mpaka wa Adapta

Adapta ni RandomDay-owned weka ufafanuzi kwa mods zilizosakinishwa tofauti. Daraja kwanza linahitaji njia inayotambulika lengwa na saini kamili ya ufunguo. Hubandika mgawo uliopo pekee, huunda nakala rudufu za uendeshaji, hutumia kila faili iliyopangwa kama muamala mmoja, na kurudisha malengo yote yaliyoathiriwa ikiwa hatua yoyote itashindwa. Malengo yanayokosekana na yasiyooani ni matokeo ya hiari ya kawaida.

RandomDay haipakii misimbo ya wahusika wengine kwenye kifurushi chake. Mpangilio unaoungwa mkono na muundo unathibitisha RandomDay's tabia ya kichanganuzi na muamala, si kwamba toleo la wahusika wengine lilipakia au kutumia thamani katika mchakato wa mchezo.

<a id="output-boundary"></a>
## Mpaka wa Pato

Faili za muda wa utekelezaji zinatolewa hapa chini `RandomDay/runtime/` na `RandomDay/web_export/`; hakuna toleo ZIP ingizo. Mwandishi wa hali huondoa njia za adapta za ndani za mashine kutoka kwa uchunguzi wa umma JSON uchunguzi. Njia kamili, schema, mwanguko, na ramani ya uhifadhi iko kwenye [Faili na Hali Wakati wa Utekelezaji](FAILI_ZA_MUDA_WA_KUTUMIKA.md).

<a id="failure-ownership"></a>
## Umiliki Ulioshindwa

| Hatua iliyoshindikana | Matokeo yanayoonekana kwa mmiliki |
|---|---|
| Wasifu au INIuthibitishaji | Hakuna maandishi ya uzalishaji yanayojaribiwa. |
| Inasubiri write/readback | Baiti za uzalishaji zilizopo zimesalia mahali pake. |
| Chelezo ya uendeshaji | Uwekaji husimama kabla ya asili kuhamishwa. |
| Uthibitishaji wa ukuzaji au uzalishaji | Urejeshaji otomatiki unajaribiwa na matokeo yake yanaripotiwa. |
| Uwezo wa hali ya mzunguko | Baiti za sandbox zilizotayarishwa zinaweza kuwepo, lakini mpito umeharibika na adapters/messages zimerukwa. |
| Upatanifu wa Adapta | Lengo limeachwa bila kubadilishwa na `not_installed` au `skipped_incompatible`. |
| Adapta write/readback | Lengo zote za adapta zilizobadilishwa hurejeshwa inapowezekana. |
| Hali au uhamishaji wa wavuti | Matokeo ya kisanduku cha mchanga yanasalia kuwa halali; kutofaulu kwa matokeo kumerekodiwa na haipaswi kuchukuliwa kama ripoti iliyofaulu. |

Fuata [Uendeshaji](UENDESHAJI.md) kwa ajili ya kurejesha na [Utatuzi wa matatizo](UTATUZI_WA_MATATIZO.md) kwa ukaguzi wa dalili-kwanza.

<a id="evidence-limit"></a>
## Kikomo cha Ushahidi

Mpangilio wa eneo wa Lua unaweza kuthibitisha tabia ya chanzo, kuzalisha vibadala vya kutoa wasifu, hutengeneza vibadilishi vya sasa vya malipo, hutengeneza vifurushi vya Abiotic na vifurushi vya kifurushi. kujenga, ya sasa UE4SS toleo, paneli mahususi ya seva, kila saizi ya onyesho, au toleo lisilojaribiwa la muundo wa mtu mwingine. Madai hayo yanasalia `not tested` hadi utendakazi uliopewa jina urekodiwe.
