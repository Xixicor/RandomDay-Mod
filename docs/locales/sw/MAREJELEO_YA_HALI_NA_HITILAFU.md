<a id="status-and-error-reference"></a>
# Marejeleo ya hali na makosa

> **Chanzo cha Kiingereza cha Canonical:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Tumia `status`, `transaction_status`, `rollback_status`, na `error` thamani kutoka kwa uhamishaji wa wakati wa utekelezaji. Maneno sawa katika paneli au kiweko si mbadala wa sehemu hizo.

Sehemu hii ndiyo marejeleo kamili ya utafutaji. Mti wa uamuzi hapo juu huchagua kategoria inayofaa; majedwali haya huhifadhi thamani halisi za mashine na majibu salama ya waendeshaji.

<a id="normal-or-informational-states"></a>
## Hali za kawaida au za taarifa

| Hali | Maana | Jibu la Opereta |
|---|---|---|
| `prepared_for_next_reboot` | Wasifu ulioidhinishwa uliandikwa kwa buti inayofuata. | Hakuna kitendo; kipindi cha sasa hakijabadilika. |
| `next_reboot_already_prepared` | Wasifu unaofuata unaokusudiwa tayari unalingana na lengwa. | Hakuna kitendo; usilazimishe mzunguko mwingine. |
| `already_current` / `unchanged` | Lengo tayari lina baiti zilizokusudiwa. | Hakuna kitendo. |
| `applied` | Usomaji wa maandishi na uzalishaji umepitishwa. | Thibitisha active/prepared tofauti baada ya kuwasha kifuatacho. |
| `bootstrap_prepare_first_family_start_day` | Hakuna hali ya awali ya mzunguko iliyokuwepo, kwa hivyo siku ya kwanza iliyosanidiwa ilitayarishwa. | Inatarajiwa kwa matumizi ya kwanza. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Hali iliyohifadhiwa ilipatikana na wasifu ule ule uliotayarishwa ukaandikwa upya. | Thibitisha siku iliyorejeshwa; hakuna chaguo jipya la nasibu lililotokea. |
| `supervision_reconfirm_prepared_profile_no_advance` | Pasi ya usimamizi ilithibitisha maandalizi yaliyopo. | Inatarajiwa; foleni haikusonga mbele mara mbili. |
| `external_mods_disabled` | Uchakataji wa hiari wa adapta umezimwa. | Hakuna hatua isipokuwa adapta zilikusudiwa. |
| `external_mods_processed` | Mipango yote ya adapta iliyowezeshwa ilifikia matokeo ya mwisho. | Kagua kila safu mlalo ya adapta. |

<a id="startup-configuration-errors"></a>
## Hitilafu za usanidi wa kuanzisha

Ujumbe huu huacha kuanza kabla ya RandomDay huandika wasifu. Sahihisha mpangilio uliotajwa au alama ya kifurushi; usipite tawi la uthibitishaji.

| Maandishi ya hitilafu | Maana | Jibu salama |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` haipo, ina hitilafu, au kutoka kwa kifurushi kisicho sahihi. | Sakinisha upya kifurushi kimoja kamili kwenye folda safi ya kuweka alama na uhifadhi kialamisho kilichokusudiwa. |
| `invalid experience.mode` | `experience.mode` si mojawapo ya thamani zilizoandikwa. | Tumia `auto`, `persistent_dedicated`, `temporary_dedicated`, au `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | Kifurushi cha nakala kwa mikono kilisanidiwa kama seva maalum. | Rejesha `auto` au `singleplayer_lan`; usiielekeze kwenye ulimwengu wa nje kiotomatiki. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Kifurushi maalum kilisanidiwa kwa utiririshaji wa nakala ya mikono. | Tumia `auto`, `persistent_dedicated`, au `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | Kiteuzi cha siku ya kwanza si sahihi. | Tumia haswa `configured` au `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | Kiteuzi cha agizo la siku si sahihi. | Tumia haswa `sequential` au `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | Siku ya kuanza iliyosanidiwa ni ya sehemu au nje ya mzunguko. | Tumia nambari nzima kutoka 1 hadi `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | Hifadhi nakala au urejeshaji wa mwisho umezimwa. | Rejesha kufuli zote mbili za usalama;RandomDay anakataa kimakusudi maandishi yasiyo salama. |
| `external adapter transaction safety locks must remain true` | Urekebishaji wa adapta au ulinzi wa kuhifadhi nakala umezimwa. | Rejesha kufuli zote mbili za usalama za adapta au zima adapta kama kikundi. |
| `paths.world_name must be one folder name` | Jina la ulimwengu lililosanidiwa lina kitenganishi au herufi isiyo salama. | Ingiza tu jina halisi la folda, kwa kutumia herufi, nambari, nafasi, mistari chini au vistari. |
| `required runtime directory unavailable` | Saraka ya towe ya muundo wa ndani inayohitajika haikuweza kuundwa au kuthibitishwa. | Angalia majina RandomDay saraka na ruhusa yake ya kuandika. |

<a id="profile-wide-configuration-errors"></a>
## Hitilafu za usanidi wa maelezo mafupi

Hitilafu hizi husimamisha ujenzi wa wasifu kabla ya kisanduku cha mchanga kuandika.

| Maandishi ya hitilafu | Maana | Jibu salama |
|---|---|---|
| `sandbox.profile_overrides must be a table` | Chaguo nne za maelezo mafupi zilibadilishwa na aina nyingine ya Lua. | Rejesha jedwali lililoandikwa katika `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | Jedwali lina mpangilio ambao si mojawapo ya funguo nne zinazotumika. | Ondoa ufunguo uliotajwa na utumie family/profile vyanzo vya mipangilio mingine ya kisanduku cha mchanga. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` au `AllowIronMode` sio `true` au `false`. | Tumia boolean ya Kilua ambayo haijanukuliwa. |
| `sandbox.profile_overrides.<key> must be integer` | Thamani ya usaidizi si nambari nzima. | Tumia nambari nzima. |
| `sandbox.profile_overrides.<key> outside supported range` | Thamani ya usaidizi iko nje `0..1000`. | Chagua nambari nzima kutoka `0` kupitia `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Urejeshaji na hali za kati

| Thamani | Maana | Jibu salama |
|---|---|---|
| `not_started` / `pending` | Muamala au mpango wa adapta haujafikia matokeo ya mwisho. | Subiri tu kwa pasi ya kuanza iliyo na mipaka ya sasa; hali inayoendelea inahitaji uchunguzi. |
| `not_needed` | Hakuna urejeshaji uliohitajika. | Hakuna kitendo. |
| `original_held` | Lengo asili lilihamishwa katika nafasi ya urejeshaji kabla ya kupandishwa cheo. | Usifute faili ya urejeshaji wakati muamala haujakamilika. |
| `retained_after_success` | Lengo jipya limethibitishwa, lakini data ya urejeshaji inasalia kwa sababu usafishaji haukupatikana au ulisasishwa kimakusudi. | Thibitisha baiti za uzalishaji kabla ya kuondoa faili yoyote ya urejeshaji iliyopewa jina. |
| `discarded_after_success` | Data mbadala iliyothibitishwa na ya muda ya kurejesha ilifutwa. | Hakuna kitendo. |
| `rollback_failed` | Jaribio la kurejesha halikuweza kuthibitishwa. | Simamisha seva na utumie chelezo ya mwisho ya operesheni iliyothibitishwa. |
| `skipped_state_persistence_failed` | Baiti za Sandbox zilitayarishwa, lakini hali ya mzunguko haikuendelea, kwa hivyo adapta na ujumbe wa kichezaji kilichotayarishwa ulirukwa. | Rekebisha hifadhi ya wakati wa utekelezaji; usiandikishe upya au kuendeleza foleni wewe mwenyewe. |
| `failed` | Safu mlalo ya muhtasari inawakilisha hitilafu ya mwisho ambayo sababu yake mahususi iko katika `error` au sehemu za muamala. | Fuata msimbo mahususi wa kwanza; usitatue matatizo kutoka `failed` peke yake. |

<a id="transaction-failures"></a>
## Kushindwa kwa muamala

| Hali | Maana | Jibu salama |
|---|---|---|
| `invalid_input` | Ombi la kubadilisha halikuwa maandishi halali au lilikosa lengo halali. | Usanidi sahihi; usijaribu tena bila kubadilika. |
| `stale_pending_cleanup_failed` | Faili ya zamani inayosubiri haikuweza kuondolewa. | Simamisha na uhifadhi faili inayosubiri kabla ya kusafisha mwenyewe. |
| `stale_rollback_requires_review` | Data ya uokoaji ipo kando ya lengo la sasa na haiwezi kutupwa kwa usalama. | Linganisha baiti lengwa na urejeshaji kabla ya kuchagua mojawapo. |
| `interrupted_transaction_restore_failed` | Ufufuaji baada ya uingizwaji uliokatizwa haukuweza kurejesha lengo. | Simamisha seva na urejeshe nakala rudufu iliyothibitishwa. |
| `interrupted_transaction_cleanup_failed` | Lengo lilirejeshwa lakini data ya zamani ya muamala haikuweza kufutwa. | Thibitisha baiti lengwa, kisha uondoe gari la kando lililoitwa tu. |
| `pending_write_failed` | Mtahiniwa hakuweza kuandikwa. | Angalia saraka finyu inayolengwa na nafasi huru. |
| `pending_readback_failed` / `pending_readback_mismatch` | Baiti za mgombea hazingeweza kusomwa au kutofautishwa baada ya kuandika. | Usitangaze faili ambayo haijashughulikiwa. |
| `pending_validation_failed` | Mtahiniwa ameshindwa schema/profile uthibitishaji kabla ya kukuza. | Rekebisha ufunguo au sheria iliyoripotiwa; usikwepe uthibitishaji. |
| `operation_backup_failed` / `backup_failed` | Nakala ya nakala iliyothibitishwa ya kuandika mapema haikuundwa. | Acha; hakuna uingizwaji lengwa unapaswa kuaminiwa. |
| `original_preserved_move_failed` | Lengo asili halikuweza kusogezwa katika nafasi ya urejeshaji. | Hifadhi faili zote za muamala na upate nafuu wewe mwenyewe. |
| `promotion_failed` | Mwombaji anayesubiri kushughulikiwa hakuweza kuwa walengwa wa uzalishaji. | Angalia ikiwa ya asili ilirejeshwa kabla ya kujaribu tena. |
| `production_validation_failed` | Baiti zilizopandishwa hazijafanywa kwa uzalishaji readback/validation. | Rejesha nakala rudufu iliyothibitishwa na ukague mwandishi lengwa. |
| `replacement_committed_recovery_cleanup_failed` | Kibadala ni halali, lakini data ya urejeshaji haikuweza kufutwa. | Chukua lengo kama limejitolea; ondoa data tuli ya urejeshaji iliyothibitishwa pekee. |
| `rollback_failed` | Urejeshaji wa kiotomatiki haukuthibitishwa. | Simamisha seva na utumie urejeshaji mwenyewe. |

<a id="target-profile-adapter-and-export-failures"></a>
## Lengo, wasifu, adapta, na hitilafu za kuhamisha

| Hali | Maana | Jibu salama |
|---|---|---|
| `target_refused` | Njia iliyosanidiwa iko nje ya mpaka wa modi inayoruhusiwa. | Rekebisha njia; usiwahi kudhoofisha mpaka. |
| `target_directory_failed` | Saraka inayolengwa haikuweza kuundwa au kuthibitishwa. | Angalia uwepo wa saraka hiyo pekee na ruhusa. |
| `profile_validation_failed` | Wasifu hauna ufunguo, una makosa type/range, au inakiuka kanuni iliyosalia ya kutobadilika. | Tumia kitufe kilichopewa jina, `sandbox.profile_overrides`, na kumbukumbu ya wasifu ili kurekebisha chanzo. |
| `skipped_incompatible` | Modi ya hiari ipo lakini hailingani na sahihi ya adapta inayotumika. | Iache bila kubadilika au zima adapta hiyo. |
| `external_mods_partial` | Baadhi ya adapta za hiari zimekamilika na zingine zilikuwa salama skipped/failed. | Kagua safu mlalo za adapta kwa kujitegemea; matokeo ya kisanduku cha mchanga ni tofauti. |
| `external_adapter_failed` | Adapta inayohitajika haikukamilika kwa usalama. | Rejesha nakala yake iliyothibitishwa kabla ya kujaribu tena. |
| `degraded_state_persistence` | Maandalizi ya kisanduku cha mchanga yamekamilika, lakini usugu wa hali ya mzunguko haukufanyika. | Usidhani kuwa kuwasha kifurushi kifuatacho kunaweza kusonga mbele ipasavyo; rekebisha hifadhi ya hali. |
| `export_directory_failed` | `web_export/` haikuweza kuundwa au kuandikwa. | Maandalizi ya uchezaji bado yanaweza kuwa halali; rekebisha kuripoti kando. |

<a id="translation-and-message-validation-errors"></a>
## Hitilafu za utafsiri na uthibitishaji wa ujumbe

Hizi ni hitilafu za kamusi au uwasilishaji-mkataba. Zinaidhinishwa kabla ya kutolewa na zinaweza pia kuonekana kama onyo la hali ya wakati wa utekelezaji.

| Maandishi ya hitilafu | Maana | Jibu salama |
|---|---|---|
| `dictionary coverage mismatch` | Kamusi ya wasifu haielezi kila mpangilio ulioandikwa. | Ongeza ingizo la kamusi ambalo halipo na utekeleze wasifu upya generation/validation. |
| `missing profile setting` | Wasifu uliochaguliwa hauna mpangilio unaohitajika na dictionary/schema. | Rekebisha chanzo cha familia ya wasifu; usivumbue chaguo-msingi la wakati wa utekelezaji. |
| `empty explanation` | Mpangilio upo lakini hauna operator/player maelezo. | Ongeza maelezo ya lugha rahisi kabla ya kutolewa. |
| `join line too wide` | Mstari wa kujiunga unaozalishwa unazidi kikomo cha chanzo cha herufi 42. | Futa maneno ya kamusi; usitegemee ufungaji wa mteja. |
| `join message too tall` | Muhtasari wa kujiunga uliozalishwa unazidi mistari minne. | Punguza au weka upya maudhui ya ujumbe. |
