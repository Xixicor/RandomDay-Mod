<a id="operate-active-prepared-and-recovery-state"></a>
# Endesha hali amilifu, iliyotayarishwa na ya uokoaji

> **Chanzo cha Kiingereza cha Canonical:** [OPERATIONS.md](../../OPERATIONS.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


RandomDay hubadilisha faili ya sandbox kwa buti ya siku zijazo. Haibadilishi sheria ambazo tayari zimepakiwa kwenye kipindi cha Abiotic Factor.

Ukurasa huu unamiliki maamuzi ya opereta na taratibu za urejeshaji. Tumia [Faharasa](FAHARASA.md) kwa masharti ya kisheria, [Faili za muda wa utekelezaji](FAILI_ZA_MUDA_WA_KUTUMIKA.md) kwa umiliki wa njia, na [Matokeo ya wakati wa utekelezaji](ZANA_ZA_MUDA_WA_KUENDESHA.md) kwa miundo na maana halisi ya uga.

<a id="distinguish-active-and-prepared-state"></a>
## tofautisha hali inayotumika na iliyotayarishwa

Wasifu uliotayarishwa haufanyiki hadi uanzishaji wa baadaye usome alama yake. Usitumie iliyotayarishwa family/day kuelezea kipindi cha sasa.

Tumia `web_export/today.html` kwa muhtasari unaosomeka na `web_export/today.json` kwa hali halisi. Thibitisha alama inayotumika, utambulisho uliotayarishwa, `prepared_ready`, `profile_status`, matokeo ya muamala, matokeo ya kurejesha nyuma, na matokeo ya ahadi ya serikali kabla ya kuamua kuwasha upya.

<a id="follow-the-normal-dedicated-server-sequence"></a>
## Fuata mfuatano wa kawaida wa seva maalum

| Kabla | Kitendo | Baada ya |
|---|---|---|
| Hapana RandomDayalama | Anza na RandomDay imewezeshwa. | Kikao cha sasa kinaweka sheria zake zilizopo;RandomDay huunda na kubaki agizo la siku, kisha hutayarisha configured/random nafasi. |
| Nafasi ya kwanza imetayarishwa | Anzisha upya. | Siku hiyo inakuwa amilifu; nafasi inayofuata iliyohifadhiwa katika familia moja imetayarishwa. |
| Nafasi ya kati inatumika | Anzisha upya baada ya kukagua wasifu uliotayarishwa. | Siku iliyotayarishwa huwa hai na nafasi ifuatayo iliyohifadhiwa inatayarishwa. |
| Nafasi ya mwisho imetumika | Anzisha upya baada ya kukagua familia inayofuata. | Nafasi ya kwanza ya agizo lingine la familia linalostahiki huanza kutumika. |

`selected_run`huhifadhi familia iliyosanidiwa.`non_repeating_random_run`huhifadhi familia iliyochaguliwa nasibu katika nafasi zote za siku 17 na huepuka kutumia tena familia hadi orodha inayostahiki itakapoisha.`rotation_run`hufuata mpangilio wa familia uliowekwa.`cycle.day_progression_mode` hudhibiti mpangilio wa siku bila kutegemea uteuzi wa familia.

Usakinishaji mpya daima unahitaji mchakato mmoja ili kutayarisha na mchakato wa baadaye kuamilisha. Hii ni kweli kwa seva zinazoendelea, seva za muda, na mwongozo singleplayer/LAN kizazi.

<a id="read-the-right-evidence"></a>
## Soma ushahidi sahihi

Tumia [ramani ya faili ya wakati wa utekelezaji](FAILI_ZA_MUDA_WA_KUTUMIKA.md) ili kupata hali ya mzunguko, hali ya sasa, faili zinazojulikana mara ya mwisho, hifadhi rudufu za uendeshaji, usafirishaji, na `UE4SS.log`. Tumia [rejeleo la pato la wakati wa utekelezaji](ZANA_ZA_MUDA_WA_KUENDESHA.md)kwa kila kikundi cha uga, schema, hali tupu, maana ya kutofaulu, na sheria ya kuhifadhi. TheHTML na JSON uhamishaji nje ni muhtasari wa hali ya chanzo; hazithibitishi kuwa wasifu ulitumiwa na mteja wa mchezo wa moja kwa moja.

Kama `prepared_ready` ni `false` au `profile_status` ni `degraded_state_persistence`, simamisha seva hadi kisanduku cha mchanga na hali ya mzunguko ikubaliane. Maandishi sahihi ya kisanduku cha mchanga yenye hali thabiti ya kudumu sio mpito mzuri uliotayarishwa.

<a id="respond-to-writer-outcomes"></a>
## Jibu matokeo ya mwandishi

RandomDayhutayarisha baiti mpya katika faili ya ndugu, kuzisoma tena, kuhalalisha kisanduku cha mchanga kamili, kuhifadhi asili kunapopatikana, kukuza faili mpya, na kuisoma tena. Inaripoti kuwa tayari baada ya usomaji wa toleo la umma kukubali.

Iwapo uthibitishaji wa ukuzaji au uzalishaji utashindwa, RandomDay hujaribu kurejesha faili iliyoshikiliwa na operesheni hiyo. Hitilafu ya kurejesha ni kusimamishwa kabisa: simamisha seva na urejeshe uokoaji wewe mwenyewe badala ya kuwasha upya mara kwa mara.

<a id="respond-to-adapter-outcomes"></a>
## Jibu matokeo ya adapta

Tumia [Adapta zinazotumika](ADAPTER_ZINAZOTUMIKA.md#read-an-adapter-result) kwa jedwali la kisheria la matokeo ya serikali sita na kitendo kinachofuata. Tibu `rollback_failed` kama kituo kikuu; chelezo ya adapta iliyorekodiwa tofauti ndicho chanzo cha urejeshaji.

Adapta huathiri tu mods zilizosakinishwa tofauti. Kamwe hazifanyi wasifu RandomDay uliotayarishwa wa kisanduku kuwa kazi.

Kwenye buti ya kawaida, thamani za adapta huchaguliwa kutoka kwa wasifu unaotumika kwa sababu modi iliyosakinishwa tofauti inaweza kupakiwa baadaye katika UE4SSkuanzisha sawa. Wakati wa kianzio cha kwanza, wakati hakuna RandomDayalama inayotumika, wasifu uliotayarishwa wa siku ya kuanza ndio upangaji pekee unaopatikana. Sheria hii ya kuweka muda ni tofauti na mpaka wa kisanduku cha kuweka upya unaofuata na bado inategemea tabia ya upakiaji ya mod nyingine.

<a id="manual-recovery"></a>
## Urejeshaji kikuli

1. Simamisha mchezo au seva. Usipate faili wakati inaweza kuwa wazi.
2. Nakili ya sasa `SandboxSettings.ini`, `runtime/`, na `web_export/` kwa hifadhi rudufu tofauti ya uchunguzi.
3. Kagua `runtime/last_good/manifest.lua` na ingizo jipya zaidi linalofaa chini ya `runtime/backups/`. Chagua faili ambayo family/day na heshi inalingana na hali unayonuia kurejesha.
4. Nakili faili iliyothibitishwa iliyochaguliwa kwenye njia ya msingi ya kisanduku cha mchanga iliyosanidiwa.
5. Isome tena na uthibitishe kuwa imekamilika kabla ya kuanza.
6. Anza mara moja na kagua kialamisho amilifu na hali iliyotayarishwa. Usidhani urejeshaji umefaulu kutokana na kukosekana kwa ujumbe wa hitilafu pekee.

Ikiwa hakuna nakala rudufu iliyothibitishwa, rejesha nakala rudufu ya opereta iliyoundwa kabla ya kusakinisha. RandomDay haiwezi kuunda upya faili ambayo haikuwahi kusomeka.

<a id="account-for-control-panel-writes"></a>
## Akaunti ya paneli-dhibiti huandika

Baadhi ya paneli za seva huzalisha `SandboxSettings.ini`wakati wa kuanzisha. RandomDay haiwezi kuhifadhi wasifu uliotayarishwa ikiwa zana nyingine itaubatilisha baada ya maandishi kuthibitishwa. Sanidi chanzo kimoja kinachoidhinishwa cha kisanduku cha mchanga na uangalie alama ya faili mara moja kabla na baada ya kuwasha upya unapotambua Siku ya 1 iliyorudiwa au kukosa mpito.
