<a id="glossary"></a>
# Faharasa

> **Chanzo cha Kiingereza cha Canonical:** [GLOSSARY.md](../../GLOSSARY.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Huu ni msamiati wa kisheria wa RandomDay hati. Taratibu huunganisha kwa ufafanuzi huu badala ya kufafanua upya hali sawa katika miongozo mingi. Sheria za sehemu mahususi za schema zimesalia katika [Matokeo ya wakati wa utekelezaji](ZANA_ZA_MUDA_WA_KUENDESHA.md).

| Muda | Maana dhahiri | Maana halisi ya kiufundi |
|---|---|---|
| Wasifu unaotumika | Sheria ambazo kipindi cha sasa kinatumia. | The family/day wasifu uliotambuliwa na RandomDayalama iliyosomwa kutoka kwa kisanduku cha mchanga wakati wa kuanza mchakato. |
| Wasifu uliotayarishwa | Sheria ziko tayari kwa kipindi cha baadaye. | Kamili family/day wasifu ambao baiti zake lengwa zilipitisha uthibitishaji na usomaji na ambao hali ya mzunguko ilitekelezwa. Haitumiki kabla ya kuanza upya usomaji. |
| Imerejeshwa | Utayarishaji haukufaulu na baiti zilizothibitishwa hapo awali zilirejeshwa. | Muamala uliofeli huripoti urejeshaji na usomaji uliofaulu wa nakala halisi au iliyothibitishwa ya urejeshaji. |
| Foleni ya kuwasha upya upya | Chaguo moja lililotayarishwa limeshikiliwa kwa buti inayofuata. | `next_reboot_queue` huchagua mara moja kwa kila mchakato na kutumia tena chaguo hilo linalomilikiwa na kuwasha wakati wa usimamizi. |
| Mkanda wa Boot | Maandalizi ya kwanza wakati hakuna kialamisho amilifu. | Uteuzi wa siku ya kwanza iliyosanidiwa au ya nasibu kutoka kwa familia inayostahiki;`cycle.bootstrap_day` ni njia mbadala tu ya uoanifu. |
| Familia | Mtindo wa kucheza wa siku 17. | Ingizo moja la usajili na sehemu ya familia ambayo hutoa wasifu kamili 17. |
| Mzunguko | Kupitia familia zinazostahiki. | Jimbo lililotambuliwa na `rotation_id`, iliyo na orodha za familia zinazopatikana, zilizosalia na zilizokamilika. |
| Endesha | Familia moja kwa vitambulisho vyote vya siku 17. | Mfuatano wa kifamilia unaotambuliwa na `run_id`; familia husalia imefungwa hadi kila nafasi inayoendelea ya kuagiza siku ikamilike. |
| Modi ya kipindi | Jinsi opereta anavyotumia kifurushi hiki. | `persistent_dedicated`, `temporary_dedicated`, au `singleplayer_lan`; hali ya kifurushi bado inadhibiti mpaka wa mfumo wa faili. |
| Agizo la siku | Mpangilio halisi unaotumiwa na utekelezaji wa familia moja. | A imedumu kwa idhini ya nambari 17. Hali ya mfuatano hufunga kutoka siku yake ya kuanza; hali nasibu huchanganyika mara moja bila kurudiwa. |
| Alama | Kitambulisho kilichohifadhiwa kwenye faili ya kisanduku cha mchanga. | `RANDOMDAY_*` sehemu zinazotolewa kwa wasifu kamili na kusomwa katika mchakato unaofuata wa kuanza. |
| Imetayarishwa tayari | Ahadi ya kuandika na hali imefaulu. | `prepared_ready=true` inahitaji matokeo yenye mafanikio ya kisanduku cha mchanga na hakuna kushindwa kwa ahadi ya serikali. Haithibitishi kuwezesha. |
| Tayari ya sasa | Lengo tayari lina baiti zilizokusudiwa. | Heshi ya wasifu uliotolewa inalingana na lengo, kwa hivyo RandomDay inathibitisha last-good/mirror fanya kazi bila kuandika upya msingi. |
| Udumifu wa hali iliyoshushwa | Baiti za Sandbox zilifaulu lakini uwekaji hesabu wa kupokezana haukuweza. | `profile_status=degraded_state_persistence`; adapta na ujumbe uliotayarishwa wa wasifu umerukwa. |
| Faili inayosubiri | Baiti za mgombea bado hazijapandishwa cheo. | `<target>.randomday.pending`, iliyoandikwa, kusomwa nyuma, na kuthibitishwa kabla ya kubadilishwa. |
| Rejesha faili | Asili iliyoshikiliwa wakati wa kubadilisha. | `<target>.randomday.rollback`, iliyotumika kurejesha uzalishaji kwenye ukuzaji au kutofaulu kwa uthibitishaji. |
| Chelezo ya uendeshaji | Nakala ya kudumu iliyotengenezwa kabla ya mabadiliko. | Faili iliyothibitishwa chini ya `runtime/backups/` kwa shughuli ya msingi, kioo, au adapta. |
| Uzuri wa mwisho unaojulikana | Sanduku la mchanga la hivi punde lililokubaliwa kurejesha. | `runtime/last_good/SandboxSettings.ini` pamoja na `manifest.lua`; jozi hurekodi utambulisho wa wasifu na heshi. |
| Kioo | Lengo la kisanduku cha pili cha hiari. | Lengo lililosanidiwa kwa njia dhahiri au linalotokana na jina la ulimwengu lililoandikwa baada ya msingi kupitia muamala wake. |
| Hali ya kifurushi | Mpaka wa kusakinisha uliochaguliwa na kipengee cha toleo. | `dedicated_server` au `singleplayer_manual` kutoka `.randomday_mode`. |
| Hali ya kunakili mwenyewe | Singleplayer/LAN kizazi bila ugunduzi wa kuhifadhi. | `singleplayer_manual` huandika ndani ya `runtime/singleplayer_manual/` na kuzima adapta na vioo. |
| Adapta | RandomDay-owned ramani ya muundo mwingine uliosakinishwa. | Mpango wa muamala ulio na saini ambayo husasisha kazi zilizopo baada ya ukaguzi wa kuhifadhi nakala na uoanifu. |
| Muundo unaotambulika | Umbo kamili wa faili ya adapta inayokubaliwa kwa maandishi. | Vifunguo vyote vya sahihi vinavyohitajika na faili lengwa zipo; jina la faili pekee halitoshi. |
| `not_installed` | Lengo la hiari halikupatikana. | Tokeo la adapta salama bila mabadiliko. |
| `skipped_incompatible` | Lengo lipo lakini umbo lake halitumiki. | Tokeo la adapta salama bila mabadiliko kwa sababu sahihi kamili haikulingana. |
| `failed_rolled_back` | Badiliko halijafaulu na baiti za awali ziko sawa. | Muamala wa adapta haukufaulu kabla ya ubadilishaji au faili zote zilizoathiriwa kurejeshwa na kuthibitishwa. |
| `rollback_failed` | Urejeshaji kiotomatiki haukuweza kuthibitishwa. | Hali ya adapta ngumu inayohitaji urejeshaji mwenyewe kutoka kwa nakala rudufu iliyorekodiwa. |
| Kamusi | Kuchora ramani kutoka kwa thamani ghafi hadi maelezo ya umma. | `randomday_dictionary_v2`, imetolewa kutoka `dictionary.lua` na imejumuishwa katika utoaji wa hali ya wakati wa utekelezaji. |
| Tafsiri | Mwonekano wa binadamu unaotokana na thamani ghafi za wasifu. | Alama za kikoa, ukweli, muhtasari na ujumbe unaotolewa na `translation.lua`; thamani ghafi zinasalia kuwa na mamlaka. |
| Hali ya umma | Muhtasari wa opereta inayoweza kusomeka kwa mashine iliyosafishwa. | `web_export/today.json` kwa kutumia `randomday_public_status_v2`. |
| Hali ya wakati wa utekelezaji | Picha ya kina ya ndani inayoweza kusomeka kwa mashine. | `runtime/current/randomday_status.json` kwa kutumia `randomday_runtime_status_v2`. |
