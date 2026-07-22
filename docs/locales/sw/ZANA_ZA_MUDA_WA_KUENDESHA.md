<a id="interpret-runtime-state-and-output-schemas"></a>
# Tafsiri hali ya wakati wa utekelezaji na miundo ya kutoa

> **Chanzo cha Kiingereza cha Canonical:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Huu ni mwongozo wa taratibu wa uga wa kisheria. Inajibu nini kila uwanja, jimbo, thamani tupu, na matokeo ya mashine inamaanisha. Tumia [ramani ya faili ya wakati wa utekelezaji](FAILI_ZA_MUDA_WA_KUTUMIKA.md) kwa watayarishaji, njia, muda wa kuandika, uhifadhi, magari ya kando ya shughuli na maeneo ya urejeshaji.

Njia zote katika mwongozo huu zinahusiana na zilizosakinishwa `RandomDay/` folda isipokuwa safu mlalo ikitaja wazi kisanduku cha mchanga kilichosanidiwa au shabaha ya hiari ya adapta. Matoleo ya muda wa utekelezaji yanatolewa baada ya usakinishaji na si washiriki wa toleo lolote ZIP.

<a id="choose-the-authoritative-view"></a>
## Chagua mwonekano unaoidhinishwa

| Inahitaji | Chanzo kilichoidhinishwa |
|---|---|
| Sheria zilizopakiwa na mchakato wa sasa | RandomDayalama katika `SandboxSettings.ini` soma mwanzoni |
| Uhifadhi wa hesabu wa foleni uliotayarishwa | `runtime/rotation_state.txt`, taratibu `1` |
| Hali ya kina ya eneo lako | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Hali inayosomeka na mashine ya umma | `web_export/today.json`, taratibu `2` na `randomday_public_status_v2` |
| Hali inayoweza kusomeka na binadamu | `web_export/today.html`, inayotokana na mpito sawa wa hali ya umma |
| Msamiati wa tafsiri | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Ilani halisi ya mchezaji aliye na mipaka | `runtime/current/player_message_preview.txt` |

The HTML mwonekano, onyesho la kukagua, na muhtasari uliotafsiriwa ni maoni yanayotokana. Hazibatili alama ya kisanduku cha mchanga, matokeo ya muamala, au thamani mbichi za wasifu. Tafuta faili zinazojulikana mara ya mwisho, hifadhi rudufu za uendeshaji, gari za pembeni, vioo, shabaha za adapta na `UE4SS.log` katika [Faili za muda wa utekelezaji](FAILI_ZA_MUDA_WA_KUTUMIKA.md).

<a id="rotation-state-schema"></a>
## Ratiba ya hali ya mzunguko

`runtime/rotation_state.txt` hutumia utaratibu `1` na ina moja `key=value` jozi kwa kila mstari:

| Sehemu | Maana |
|---|---|
| `schema_version` | Lazima iwe `1`. |
| `mod_version` | Kitambulisho cha kifurushi kimesomwa kutoka `.randomday_version`. |
| `rotation_id` | Kitambulishi cha pasi ya sasa kupitia seti ya familia inayostahiki. |
| `mode` | `selected_run`, `non_repeating_random_run`, au `rotation_run`. |
| `available_families` | Vitambulisho vya familia vinavyostahiki vilivyotenganishwa kwa koma baada ya kuchuja usanidi. |
| `remaining_families` | Familia zinazostahiki bado hazijachaguliwa katika pasi ya sasa isiyorudiwa. |
| `completed_families` | Familia ambazo agizo lake kamili la nafasi 17 limekamilika katika pasi ya sasa. |
| `active_family`, `active_day` | Maelezo amilifu ya kialama yaliyorekodiwa wakati uteuzi ulipofanywa. Alama ya kisanduku cha mchanga ni halali kwenye buti inayofuata. |
| `prepared_family`, `prepared_day` | Wasifu umezuiwa kwa uanzishaji upya unaofuata. |
| `active_run_id` | Kitambulishi kinachoendeshwa na familia kinachohusishwa na uteuzi uliotayarishwa. |
| `last_status` | Hali ya uteuzi wa kalenda iliyozalisha faili hii. |
| `session_mode` | Imesuluhishwa iliyojitolea inayoendelea, iliyojitolea kwa muda, au singleplayer/LAN mzunguko wa maisha. |
| `start_day_mode` | Chaguo la kuanza kwa nasibu lililosanidiwa au la mara moja kwa uendeshaji mpya. |
| `day_progression_mode` | Uendelezaji wa mfululizo au usiorudiwa-rudiwa. |
| `day_order` | Vitambulisho vya siku vilivyotenganishwa kwa koma kwa mpangilio kamili vitakavyotayarishwa. |
| `day_position` | Msimamo wa siku iliyotayarishwa katika `day_order`. |
| `updated_at` | Muda wa kuandika wa ndani kwa ulinganisho wa opereta. |

Uandishi wa hali unakubaliwa tu wakati kiweka alama cha taratibu, familia iliyotayarishwa, na siku iliyotayarishwa ikisomwa kwa usahihi. Faili ya sasa isiyoweza kusomeka inaweza kurudi kwa `rotation_state.last_good.txt`; alama ya sandbox iliyochaguliwa bado huamua ni mchezo gani ulipakia kwa mchakato wa sasa.

<a id="runtime-status-json"></a>
## Hali ya wakati wa utekelezaji JSON

`runtime/current/randomday_status.json` hutumia `status_schema=randomday_runtime_status_v2`. Vikundi vyake kuu vya uga ni:

| Kikundi | Nyumba na tafsiri |
|---|---|
| Kitambulisho | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Uteuzi | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Imetumika | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Imetayarishwa | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Muhtasari wa kibinadamu | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Ushahidi wa kuandika | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Uthibitisho wa adapta | `adapter_status`, `adapter_results`; kila rekodi ya adapta ina ushahidi wa uoanifu, transaction/rollback hali, hesabu ya faili zilizobadilishwa, na marejeleo lengwa yaliyorekebishwa |
| Mipaka | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Uchunguzi | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Thamani amilifu zisizojulikana inamaanisha kuwa kisanduku cha mchanga cha sasa hakikuwa na kitu kinachoweza kusomeka RandomDayalama. Ni lazima zisibadilishwe na maadili yaliyotayarishwa. Njia za adapta nje `runtime/` zimepunguzwa hadi marejeleo ya jina la msingi, na mifuatano ya uchunguzi hurekebisha njia kamilifu zilizotambuliwa.

<a id="public-status-json"></a>
## Hali ya umma JSON

`web_export/today.json` hutumia `schema_version=2` na `status_schema=randomday_public_status_v2`. Inarudia utambulisho, active/prepared, uteuzi, muamala, adapta, na ukweli wa kuanzisha upya mipaka unaohitajika na opereta. Inajumuisha pia:

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order`, na `prepared_day_position`;
- `family_selection_mode`, urithi `family_locked_until_day_17`, na `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families`, na idadi yao;
- wasifu uliotayarishwa wa kukutana, kiwango, mandhari, na fursa ya kukutana-mchanganyiko;
- uwezeshaji wa upeo wa dunia, mipangilio ya sera ya wazi, usanidi wa ulimwengu usiojulikana pekee, na ulimwengu usiojulikana pekee. ruwaza;
- ujumbe uliotayarishwa na uhakiki wa ujumbe uliounganishwa;
- `selected_at`, `sandbox_target`, `manual_copy_required`, na heshi iliyotayarishwa.

`profile_status` ni mojawapo ya `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence`, au `write_failed_or_rollback`. `prepared_ready=true` bado haimaanishi kuwa hai; alama ya kuanzisha baadaye inahitajika.

<a id="dictionary-and-translation-output"></a>
## Towe la kamusi na tafsiri

`runtime/current/randomday_dictionary.json` hutumia `schema=randomday_runtime_dictionary_v2` na kubainisha toleo la kamusi `randomday_dictionary_v2`. Inafafanua aina za vifurushi, hali za uteuzi, vikoa vya shinikizo, kuweka lebo, thamani ghafi, na maana za lugha rahisi. Thamani zisizojulikana husalia kuwa wazi badala ya kubadilishwa kuwa maelezo ya uhakika.

`player_message_preview.txt`, `today.json`, `today.html`, na arifa za ndani ya mchezo ni maoni yanayotokana na sehemu sawa ya tafsiri. Wasifu msingi na thamani mbichi za `SandboxSettings.ini`zinasalia kuwa chanzo cha ukweli.

<a id="failure-and-recovery-rules"></a>
## Sheria za kutofaulu na urejeshaji

1. Mwandishi unaosubiri kushindwa au uthibitisho hauwi kamwe lengo la uzalishaji.
2. Utangazaji usiofanikiwa au usomaji wa upya wa uzalishaji huanzisha urejeshaji wa asili iliyoshikiliwa; chelezo ya operesheni ni njia mbadala wakati urejeshaji huo hautafaulu.
3. Faili ya kurejesha iliyohifadhiwa au hali `rollback_failed` inahitaji ukaguzi wa kibinafsi wakati mchezo au seva imesimamishwa.
4. Uandishi wa kisanduku cha mchanga uliofaulu pamoja na ahadi ya hali ya mzunguko iliyofeli imeshushwa hadhi, haiko tayari; adapta na ujumbe wa wasifu uliotayarishwa hurukwa.
5. Kushindwa kwa kuhamisha hakubadilishi matokeo ya kisanduku cha mchanga, lakini huondoa chanzo cha uthibitisho wa manufaa. Tumia kumbukumbu za muamala, hali, na urejeshaji wa faili.
6. Matokeo ya muda wa kukimbia ni data ya uendeshaji ya ndani. Usiziongeze kwenye toleo ZIP au uzichapishe kama mifano bila ukaguzi tofauti wa faragha.
