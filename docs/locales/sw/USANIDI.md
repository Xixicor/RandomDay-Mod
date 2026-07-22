<a id="configuration"></a>
# Usanidi

> **Chanzo cha Kiingereza cha Canonical:** [CONFIGURATION.md](../../CONFIGURATION.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Usanidi mkuu wa opereta ni:

```text
RandomDay/Scripts/ax_config/server.lua
```

Hifadhi nakala ya faili na ubadilishe sehemu moja kwa wakati mmoja. Lua booleans ni herufi ndogo `true` na `false`; masharti yanahitaji quotes; maingizo ya orodha yanahitaji koma. Baada ya kuanza tena, soma ukurasa wa hali kabla ya kufanya mabadiliko mengine. Wachangiaji wanaofanya kazi kutoka chanzo wanaweza kutumia tofauti [uthibitishaji wa kutolewa](UTHIBITISHAJI_WA_TOLEO.md) hukagua kabla ya kupakia muundo uliorekebishwa.

Usihariri kwa mkono `.randomday_mode`, `.randomday_version`, marejeleo ya wasifu yaliyotolewa, `runtime/`, au `web_export/`. Mjenzi wa kifurushi anamiliki modi ya kifurushi na vialamisho vya toleo na huangalia kama zinakubaliana na metadata ya toleo.

Kila mpangilio hapa chini umefafanuliwa katika `RandomDay/Scripts/ax_config/server.lua`. Majedwali hutofautisha mipangilio inayoweza kuhaririwa kutoka kwa utambulisho unaomilikiwa na toleo na sehemu za uoanifu zilizohifadhiwa. Sehemu kuwapo katika Lua haimaanishi kuibadilisha ni tabia inayotumika.

<a id="choose-an-experience"></a>
## Chagua matumizi

RandomDay ina vifurushi viwili: kimoja kwa kila seva maalum na kimoja singleplayer/LAN nakala ya mwongozo. Mfuko wa kujitolea una njia mbili za uendeshaji; hali hizo ni mipangilio, sio upakuaji tofauti.

| Ulimwengu wako | Sakinisha | Chagua tabia hii |
| --- | --- | --- |
| Seva iliyojitolea ambayo hudumisha kampeni moja kwenye uanzishaji upya wa kawaida | Kifurushi cha seva maalum | `persistent_dedicated` inaendelea na mpangilio wa familia na wasifu uliohifadhiwa. |
| Seva maalum hufunguliwa kwa vipindi mahususi vya kucheza pekee | Kifurushi sawa cha seva maalum | `temporary_dedicated` huhifadhi wasifu unaofuata uliotayarishwa kwa usalama kati ya vipindi, huku kukimbia kwa familia mpya kwa kutumia mwanzo uliowekwa au wa nasibu. |
| Mchezaji mmoja au LAN dunia | Singleplayer/LAN kifurushi | `auto` huchagua tabia ya kunakili kwa mikono; simamisha ulimwengu kabla ya kunakili faili iliyotengenezwa. |

Ikiwa huna uhakika, tumia `auto`. Kifurushi huchagua tabia ya kawaida kwa aina yake ya usakinishaji. Chagua mtindo mpana wa kucheza katika [Mzunguko wa familia](MZUNGUKO_WA_FAMILIA.md). Tumia [kielezo cha familia kilichozalishwa](WASIFU/HATI_ZA_WASIFU.md) unapotaka uchezaji kamili na thamani za sandbox. Kisha chagua siku ya kwanza na kuendelea:

- `start_day_mode="configured"` inaanza `start_day`.
- `start_day_mode="random"` huchagua siku moja halali ya kwanza mwanzoni mwa kipindi kipya cha familia na kuendelea na chaguo hilo.
- `day_progression_mode="sequential"` hujumuisha nafasi zote 17.
- `day_progression_mode="non_repeating_random"` huhifadhi agizo moja lililochanganyika ambalo lina kila siku mara moja haswa.

Tumia uwekaji upya kamili katika [Mzunguko](#rotation). Usakinishaji mpya bado unahitaji mwanzo mmoja ili kuandaa wasifu uliochaguliwa wa kwanza na kuanza baadaye ili kuuwezesha.

<a id="release-identity-and-logging"></a>
## Achilia utambulisho na uwekaji kumbukumbu

| Mipangilio | Aina na thamani iliyosafirishwa | Matumizi yanayotumika | Kushindwa au mwingiliano |
|---|---|---|---|
| `version` | Mfuatano umesomwa kutoka `.randomday_version` | Kusoma pekee. | Kiweka alama kinachokosekana au tupu kinakuwa `unversioned`; uthibitishaji wa kifurushi cha mwisho unakataa utambulisho utambulisho. |
| `package_mode` | Mfuatano umesomwa kutoka `.randomday_mode` | Soma pekee: `dedicated_server` au `singleplayer_manual`. | Thamani nyingine yoyote husimamisha uanzishaji kabla lengo halijaandikwa. |
| `plan_basis` | Kamba: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Lebo ya uchunguzi pekee; usiitumie kama kipengele cha kugeuza. | Muda wa sasa wa utekelezaji haufanyiki kwenye sehemu hii. |
| `logging.level` | Kamba: `info` | `debug`, `info`, `warn`, au `error`. | Thamani zisizojulikana haziongezi marudio ya kuingia; weka`info` isipokuwa kugundua tabia ya kuzalisha wasifu. |

Mfano:

```lua
logging = { level = "debug" }
```

Tumia `debug` kwa muda, hifadhi husika `UE4SS.log`, kisha urudi kwa `info`. Kumbukumbu zinaweza kuwa na njia za ndani kutoka kwa kushindwa kwa kiwango cha chini; zihakiki kabla ya kushiriki.

<a id="experience-mode"></a>
## Hali ya matumizi

`experience.mode` hutaja jinsi usakinishaji huu unavyoendeshwa. Haidhoofishi mpaka wa usalama unaoanza: Abiotic Factor inasoma mipangilio ya sanduku la mchanga kabla ya UE4SS hupakia RandomDay, kwa hivyo hakuna modi inayoweza kuchukua nafasi ya sheria za mchakato ambao tayari unaendelea.

| Mipangilio | Thamani iliyosafirishwa | Thamani zinazotumika | Athari |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` hutatua kutoka kwa kifurushi. Vifurushi vilivyojitolea vinaweza kutumia hali maalum. Kifurushi cha nakala kwa mikono kinakubali tu `auto` au `singleplayer_lan`. |

- `persistent_dedicated` huhifadhi moja family/day agiza kwenye uanzishaji upya wa kawaida wa muda mrefu wa seva.
- `temporary_dedicated` inafafanua seva ambayo imeanzishwa kwa vipindi vya kucheza vilivyo na mipaka. Bado hudumu kwa mpangilio uliotayarishwa kwa hivyo kusimamisha seva pangishi hakuandikishe tena kipindi kijacho kimya kimya.
- `singleplayer_lan` hutengeneza towe la nakala ya mwongozo pekee. Haigundui au kuhariri folda ya kibinafsi ya kuhifadhi.

Kisichooana package/experience mchanganyiko husimama kabla ya kisanduku cha mchanga kuandika.

<a id="rotation"></a>
## Mzunguko

| Mipangilio | Thamani iliyosafirishwa | Thamani zinazotumika | Athari |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Huweka mabadiliko yote ya sandbox kwenye mpaka wa kuwasha upya. |
| `cycle.cycle_length_days` | `17` | `17` kwa muundo wa kawaida wa wasifu | Inalingana na kila kifurushi cha familia na marejeleo yaliyotolewa. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Hutumia `cycle.start_day` au uchague siku moja sahihi ya kuanza mara moja mwanzoni mwa kukimbia kwa familia. |
| `cycle.start_day` | `1` | Nambari nzima `1` kupitia `17` | Siku ya kwanza wakati `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Huunda mpangilio mfuatano uliofungwa au agizo moja lililochanganyika lenye kila siku mara moja haswa. |
| `cycle.bootstrap_day` | `1` | Nambari nzima `1` kupitia `17` | Urejeaji wa uoanifu hutumika wakati `cycle.start_day` haipo. Usanidi mpya unapaswa kutumia `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` au muda chanya ulio na mipaka | `0` hutayarisha mara moja wakati wa kuanza; thamani chanya huwezesha usimamizi wa mara kwa mara wakati UE4SS hutoa `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Huchagua jinsi uendeshaji mpya wa familia wa siku 17 utaanza. |
| `profile_family.selected_family` | `action` | Kitambulisho kimoja katika `allowed_families` | Familia inayotumiwa na `selected_run` na kama njia mbadala. |
| `profile_family.default_family` | `action` | Kitambulisho kimoja cha familia kilichosajiliwa | Nyuma wakati kitambulisho kilichochaguliwa kinakosekana au ni batili. |
| `profile_family.allowed_families` | Vitambulisho vyote 17 vya familia vinavyoonekana hadharani | Kitengo kidogo chochote kisicho tupu cha Vitambulisho vilivyosajiliwa | Inaweka kikomo kwa familia zinazostahiki kwa uendeshaji mpya. |
| `profile_family.preserve_family_until_day_17` | Boolean: `true` | Sehemu ya utangamano iliyohifadhiwa; weka`true`. | Kalenda ya sasa daima huweka familia katika kila nafasi katika utaratibu unaoendelea wa siku 17 na haisomi sehemu hii kama kigeuzi. |
| `profile_family.reroll_only_after_day_17` | Boolean: `true` | Sehemu ya utangamano iliyohifadhiwa; weka`true`. | Kalenda ya sasa hubadilisha familia baada tu ya kila siku kitambulisho kukamilika, bila kujali ni siku gani ni ya mwisho katika mpangilio uliohifadhiwa. |
| `profile_family.prevent_repeats_until_rotation_complete` | Boolean: `true` | Sehemu ya utangamano iliyohifadhiwa; weka`true`. | Mantiki ya sasa ya hifadhi isiyojirudia imerekebishwa na haisomi thamani hii kama kigeuzi. |

Agizo la siku huundwa mara moja kwa ajili ya uendeshaji mpya wa familia na kuandikiwa `runtime/rotation_state.txt`. Urejeshaji na kuanza tena baadaye tumia nafasi hizo haswa. Uhariri wa usanidi hauandiki tena agizo linaloendelea. Familia hubadilika baada ya nafasi zote 17 kukamilika.

<a id="recommended-presets"></a>
### Mipangilio ya awali inayopendekezwa

Seva inayoendelea kujitolea:

```lua
experience = { mode = "persistent_dedicated" }
cycle = {
    application_mode = "next_reboot_queue",
    cycle_length_days = 17,
    start_day_mode = "configured",
    start_day = 1,
    day_progression_mode = "sequential",
    bootstrap_day = 1,
    check_interval_ms = 0,
}
```

Vipindi maalum vya muda vilivyo na agizo tofauti lisilorudiwa kwa kila utekelezaji mpya wa familia:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN nakala ya mwongozo hutumia kifurushi cha mchezaji mmoja na kwa kawaida huondoka `experience.mode="auto"`. Unaweza kuchagua vidhibiti sawa vya kuanza na kuendeleza kabla ya kuzalisha faili inayofuata. Nakili faili iliyotengenezwa kwenye ulimwengu uliochaguliwa uliosimamishwa kabla ya kizazi kingine kutekelezwa ikiwa ungependa hali ya wakati wa utekelezaji na wasifu uliopakiwa duniani usalie kuwa sawa.

Kwenye usakinishaji mpya, mchakato wa kwanza unaweza tu kuandaa siku ya kuanza iliyochaguliwa. Mchakato wa baadaye huiwezesha. Uanzishaji wa nasibu au uliosanidiwa hauendi agizo hilo la upakiaji wa injini.

Mfano wa uendeshaji thabiti wa Mjenzi:

```lua
profile_family = {
    mode = "selected_run",
    selected_family = "builder",
    default_family = "action",
    allowed_families = { "builder" },
    preserve_family_until_day_17 = true,
    reroll_only_after_day_17 = true,
    prevent_repeats_until_rotation_complete = true,
}
```

Seti tupu au isiyojulikana inayostahiki itarejea kwa familia iliyosajiliwa badala ya kuunda wasifu ambao haujakamilika.

<a id="primary-sandbox-path"></a>
## Njia ya msingi ya kisanduku cha mchanga

| Mipangilio | Aina na thamani iliyosafirishwa | Matumizi yanayotumika | Kushindwa au mwingiliano |
|---|---|---|---|
| `paths.runtime_dir` | Kamba: `ue4ss/Mods/RandomDay/runtime` | Soma katika usanidi wa chanzo pekee. | `init.lua` huibadilisha na mod-root iliyotatuliwa `runtime/` njia. |
| `paths.web_export_dir` | Kamba: `ue4ss/Mods/RandomDay/web_export` | Soma katika usanidi wa chanzo pekee. | `init.lua` huibadilisha na mod-root iliyotatuliwa `web_export/` njia. |
| `paths.sandbox_path_override` | Mfuatano au `nil`: `nil` | Moja halisi `SandboxSettings.ini` njia ya mpangilio maalum usio wa kawaida. | Malengo yasiyo salama au yasiyopatikana yanashindwa kuandika; hali ya mchezaji mmoja hufuta ubatilishaji. |
| `paths.sandbox_candidates` | Orodha ya mifuatano: wagombea saba wa jumla | Iliagiza wagombeaji mbadala wa seva iliyojitolea. | `init.lua` hutangulia wateuliwa wanaotokana na usakinishaji; njia ya kwanza iliyopo inashinda. |
| `paths.write_sandbox_mirrors` | Boolean: `true` | Huruhusu vioo vilivyosanidiwa kimakusudi. | Hakuna kioo kinachoandikwa huku orodha ya kioo ikiwa tupu na `world_name=nil`; Nguvu za hali ya mchezaji mmoja `false`. |
| `paths.sandbox_mirror_required` | Boolean: `false` | Sehemu ya utangamano iliyohifadhiwa; weka`false`. | Mwandishi wa sasa anachukulia vioo kama hiari na hasomi sehemu hii kama lango linalohitajika. |
| `paths.world_name` | Mfuatano au `nil`: `nil` | Kipengele kimoja cha folda salama cha dunia kinachotumiwa kupata waombaji wa kioo cha kawaida. | Kitu chochote nje ya herufi, nambari, nafasi, `_`, au `-` inasimamisha uanzishaji; hali ya mchezaji mmoja inaipuuza. |
| `paths.sandbox_mirror_candidates` | Orodha ya mifuatano: tupu | Faili za kioo za hiari kabisa. | Kila kioo kinachostahiki hutumia muamala wake; kushindwa kwa kioo hakubadilishi mafanikio ya msingi. |

`paths.sandbox_path_override` chaguo-msingi kwa `nil`. Bila kubatilisha, RandomDay kwanza hukagua generic WindowsServer watahiniwa walitia nanga kwenye zilizotambuliwa RandomDay usakinishaji, kisha hukagua wagombeaji wowote waliosanidiwa. Ikiwa haipo, hutumia kiteua cha kwanza cha usakinishaji-ancha wa kisakinishi, ambacho hutatua kwa usakinishaji wa seva:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Nyumba hii mbadala haijasuluhishwa kutoka kwa saraka ya kazi ya sasa ya mchakato. Weka `sandbox_path_override` tu wakati usakinishaji wako unatumia faili halisi tofauti. Ielekeze kwa moja `SandboxSettings.ini`, si saraka. Zima seva na uthibitishe kuwa faili iko ndani ya usakinishaji uliokusudiwa kabla ya matumizi.

<a id="optional-mirrors"></a>
### Vioo vya Hiari

`paths.write_sandbox_mirrors` husafirishwa kama `true`, lakini orodha ya njia ya kioo ni tupu na `paths.world_name` ni `nil`. Kwa hivyo chaguo-msingi zilizosafirishwa haziandiki kioo cha ziada. Iweke kuwa `false` wakati usakinishaji lazima uandike tu lengo la msingi lililotatuliwa kila wakati. Bila mteule wa kioo aliyesanidiwa au jina la ulimwengu, thamani yoyote bado huandika faili msingi ya kisanduku cha mchanga pekee.

Kioo kinaweza kustahiki tu unapoongeza kimakusudi ingizo kamili kwenye `paths.sandbox_mirror_candidates` au weka `paths.world_name`. Vioo ni nakala za juhudi bora zaidi za usakinishaji zinazosoma njia ya pili ya kisanduku cha mchanga ulimwenguni mahususi. Wao si mbadala wa kusanidi njia sahihi ya msingi.

Kabla ya kuwezesha kioo:

1. simamisha seva;
2. tambua faili halisi ambayo seva inasoma;
3. thibitisha lengwa liko ndani ya usakinishaji uliokusudiwa;
4. hifadhi nakala;
5. ongeza njia hiyo pekee;
6. thibitisha matokeo ya kioo baada ya kutayarisha.

Mfano kubatilisha bila kioo:

```lua
paths = {
    runtime_dir = "ue4ss/Mods/RandomDay/runtime",
    web_export_dir = "ue4ss/Mods/RandomDay/web_export",
    sandbox_path_override = "<server-root>/AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    sandbox_candidates = {},
    write_sandbox_mirrors = false,
    sandbox_mirror_required = false,
    world_name = nil,
    sandbox_mirror_candidates = {},
}
```

`<server-root>` ni kishikilia nafasi. Badilisha ndani ya nchi; usichapishe njia mahususi ya mashine.

<a id="non-disableable-safety-locks"></a>
## Vifungo vya Usalama Visivyoweza Kuzimwa

| Mipangilio | Thamani inayohitajika | Maana |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Hifadhi nakala iliyothibitishwa kabla ya kubadilisha faili msingi iliyopo. |
| `sandbox.restore_last_good_on_failure` | `true` | Jaribu kurejesha kiotomatiki baada ya uingizwaji usiofanikiwa au usomaji. |
| `external_mods.patch_only_existing_keys` | `true` | Kataa kuvumbua mpangilio usiojulikana katika faili ya mod nyingine. |
| `external_mods.backup_before_write` | `true` | Hifadhi baiti lengwa kabla ya uhariri wa adapta ya shughuli inayotumika. |

RandomDay inakataa kuanzisha ikiwa mojawapo ya thamani hizi nne haiko `true`. Ni vifuli vya usalama, vigeuza viendeshaji visivyotumika. Usizizima, ikijumuisha katika ukuzaji au utatuzi, kwa sababu kufanya hivyo hubadilisha mpaka usio na matokeo ambao majaribio ya mwandishi na adapta yanathibitisha.

`sandbox.force_rewrite_every_supervision_tick` inasalia kuwa mpangilio wa kawaida na husafirishwa kama `false`, ambayo huacha faili ya kisanduku cha mchanga ambayo tayari inalingana bila kuguswa. Inakubali Boolean. Kuiweka kuwa `true` hulazimisha baiti zile zile zinazomilikiwa na mchakato kupitia kwa mwandishi tena; haiendelezi family/day. Itumie tu kwa jaribio la urejeshaji lenye mipaka kwa sababu maandishi yanayorudiwa hutengeneza nakala zaidi za uendeshaji.

<a id="optional-mod-adapters"></a>
## Vifaa vya Hiari vya Adapta

| Mipangilio | Thamani iliyosafirishwa | Maana |
|---|---:|---|
| `external_mods.enabled` | `true` | Ruhusu adapta zilizosanidiwa kukagua malengo yaliyosakinishwa tofauti. |
| `external_mods.optional_by_default` | `true` | Modi za hiari zinazokosekana au zisizooana hazizuii RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Kufuli la usalama linalohitajika; uanzishaji utashindwa ikibadilishwa. |
| `external_mods.backup_before_write` | `true` | Kufuli la usalama linalohitajika; uanzishaji utashindwa ikibadilishwa. |
| `external_mods.adapters` | Vitambulisho vinne vya adapta ya umma | Mipaka ambayo RandomDay-owned adapta zinaweza kufanya kazi. |

Ondoa kitambulisho cha adapta kutoka kwenye orodha ili kuacha muunganisho huo pekee bila kuzima au kusanidua mod ya mtu mwingine. Thesingleplayer/LAN kifurushi huzima kila adapta bila kujali orodha hii.

`external_mods.optional_by_default=false` hufanya tokeo la adapta iliyosanidiwa isipokuwa `applied` au `already_current` imeshindwa kupata matokeo ya jumla ya adapta. Haifanyi shughuli ya msingi ya sanduku la mchanga kurudi nyuma. Hifadhi iliyosafirishwa `true` isipokuwa opereta ana sababu iliyojaribiwa ya kuhitaji ujumuishaji.

Angalia [Adapta za Mod zinazotumika](ADAPTER_ZINAZOTUMIKA.md) kwa miundo inayotambulika na matokeo sita yanayowezekana.

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### Sehemu za Chaguo za Injini ya Machafuko ya Chaotic

`world_scope` hutoa tano za hiari RandomDay mipangilio ya kiendelezi wakati tu Injini ya Chaotic Spawn inayotambulika `DynamicSpawns/SharedData.lua` mpangilio tayari una sehemu hizo. Hii si mod au pakua tofauti:

| Mipangilio | Thamani iliyosafirishwa | Athari ya adapta |
|---|---:|---|
| `world_scope.enabled` | `true` | Inaomba hiari RandomDay lango la upeo wa ulimwengu ndani ya DynamicSpawns mpangilio. |
| `world_scope.affect_open_worlds` | `true` | Inajumuisha ulimwengu ulio wazi isipokuwa muundo unaolengwa utumie sheria ya ulimwengu unaolindwa. |
| `world_scope.unknown_world_policy` | `allow` | Maombi `allow` au `block` wakati mod inayolengwa haiwezi kuainisha ulimwengu. |
| `world_scope.log_scope_decisions` | `true` | Inaomba uwekaji kumbukumbu wa mod-lengwa kwa uamuzi wake wa upeo. |
| `world_scope.protected_worlds` | Orodha tupu | Hutoa mifumo ya ulimwengu ya ulinzi iliyotenganishwa kwa koma kwa mpangilio lengwa. |

Thamani hizi ni ingizo la adapta, si kichujio cha ulimwengu kinachotekelezwa na RandomDay's mwandishi wa sandbox. Huanza kutumika tu wakati muundo wa Chaotic Spawn Engine uliosakinishwa kando tayari una hiari kamili RandomDayseti ya sehemu na ripoti `applied` au `already_current`. Chaotic Spawn Engine inasalia na jukumu la kutumia sehemu hizo wakati wa utekelezaji. Usakinishaji wa kawaida bila sehemu za kiendelezi huachwa bila kubadilika.

Thamani zote tano ni pembejeo za adapta.`unknown_world_policy` inakubali tu maadili lengwa yaliyoandikwa `allow` au `block`; mpangilio lengwa usiotambulika umerukwa. Weka `protected_worlds` tupu katika mifano ya hati. Opereta akitumia mifumo ya ndani, lazima zisijumuishwe katika picha za skrini, masuala au vizalia vya programu.

<a id="player-messages"></a>
## Ujumbe wa Kichezaji

Usanidi wa seva maalum iliyosafirishwa huwezesha arifa za kujiunga na laini fupi ya kila siku. Husubiri sekunde 30 kabla ya pasi ya kwanza, hukagua wachezaji wapya waliojiunga kila baada ya sekunde 15, na husubiri sekunde 10 baada ya arifa ya kujiunga kabla ya mstari wa kila siku.

| Mipangilio | Thamani iliyosafirishwa |
|---|---:|
| `player_message.enabled` | `true` |
| `player_message.log_on_startup` | `true` |
| `player_message.register_console_command` | `false` |
| `player_message.console_command` | `randomday` |
| `player_message.broadcast_enabled` | `true` |
| `player_message.startup_delay_ms` | `30000` |
| `player_message.join_check_interval_ms` | `15000` |
| `player_message.send_daily_joke_after_join` | `true` |
| `player_message.daily_joke_delay_seconds` | `10` |
| `player_message.criticality_join` | `2` |
| `player_message.criticality_joke` | `0` |
| `player_message.max_line_chars` | `42` |
| `player_message.max_join_lines` | `4` |
| `player_message.max_warning_lines` | `3` |
| `player_message.max_note_lines` | `3` |

Uthibitishaji wa urefu wa ujumbe hukagua vikomo vya chanzo. Haichukui nafasi ya jaribio la kuona kwenye kila ubora wa mteja.

Thamani za muda ni nambari zisizo hasi zinazofasiriwa kama milisekunde isipokuwa `daily_joke_delay_seconds`. Ujumbe uliozimwa au mpangilio wa matangazo hukandamiza arifa za mteja bila kubadilisha utayarishaji wa sanduku la mchanga. Amri ya kiweko husajiliwa tu wakati mpangilio na UE4SS kidhibiti kinapatikana. Weka thamani muhimu katika viwango vya usafiri vilivyosafirishwa isipokuwa jaribio la mteja lililotajwa lithibitishe thamani nyingine.

`max_line_chars`imebanwa hadi herufi 8 hadi 64 na mtafsiri. Kikomo cha mipangilio ya hesabu tatu za mstari ungana, onyo, na towe la dokezo mtawalia; thamani zilizosafirishwa zinalingana na idadi ya mistari ya chanzo inayopatikana. Weka vikomo hivi vinne katika chaguo-msingi vyake isipokuwa jaribio la mpangilio wa mteja lithibitishe mpangilio finyu.

Mfano ulio na ujumbe umezimwa:

```lua
player_message = {
    enabled = false,
    log_on_startup = true,
    register_console_command = false,
    console_command = "randomday",
    broadcast_enabled = false,
    startup_delay_ms = 30000,
    join_check_interval_ms = 15000,
    send_daily_joke_after_join = false,
    daily_joke_delay_seconds = 10,
    criticality_join = 2,
    criticality_joke = 0,
    max_line_chars = 42,
    max_join_lines = 4,
    max_warning_lines = 3,
    max_note_lines = 3,
}
```

<a id="profiles-and-sandbox-values"></a>
## Wasifu na Thamani za Sandbox

Faili za chanzo cha familia chini ya `RandomDay/Scripts/ax_profiles/families/` kamili ya siku kwa kila familia. Hati zinazozalishwa chini ya `docs/profiles/` ni towe la marejeleo, si chanzo cha kubinafsisha.

Tumia [rejeleo la ufunguo wa kisanduku cha mchanga](WASIFU/VIFUNGUO_VYA_MIPANGILIO_YA_SANDBOX.md) kwa aina, masafa, chaguomsingi za wasifu uliosafirishwa, na thamani zisizobadilika zilizosalia. Baada ya kuhariri chanzo cha wasifu, tengeneza upya na uthibitishe michanganyiko yote 289; usiweke alama moja iliyozalishwa au JSON rekodi kwa mkono.

<a id="customize-the-shipped-profile-defaults"></a>
### Geuza kukufaa chaguo-msingi za wasifu uliosafirishwa

Fungua:

```text
RandomDay/Scripts/ax_config/server.lua
```

Tafuta kizuizi hiki chini ya `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Hizi ni RandomDay's chaguo za kuanzia, si sheria zisizobadilika za Abiotic Factor. Weka modi yoyote kuwa `true` au `false`. Weka kila thamani ya usaidizi kuwa nambari nzima kutoka `0` kupitia `1000`. Simamisha mchezo au seva maalum kabla ya kuhariri faili, ihifadhi, kisha uanze tena ili Lua ipakie usanidi mpya.

RandomDay husoma kitabu hiki wakati wowote inapounda wasifu 17 katika familia. Kwa hivyo maadili yaliyochaguliwa yanatumika kwa kila familia na siku, ikijumuisha wasifu uliotayarishwa baada ya mzunguko na wasifu kujengwa upya baada ya seva kuanza baadaye. Huhitaji kuhariri faili 289 za wasifu au kuunda upya rejeleo la wasifu.

Kubadilisha moja kwa moja pekee `SandboxSettings.ini` ni ya muda kwa sababu wasifu unaofuata uliotayarishwa unatolewa kutoka `server.lua`. Aina batili, vitufe visivyojulikana, au thamani za usaidizi nje ya `0..1000` komesha uundaji wa wasifu kwa hitilafu ya usanidi iliyopewa jina badala ya kurejea kimyakimya kwa chaguomsingi.

Rejeleo la wasifu uliotengenezwa linaendelea kuonyesha chaguomsingi zilizosafirishwa. Ni rejeleo la toleo, si nakala ya usanidi wa faragha wa seva moja.
