<a id="interpret-runtime-state-and-output-schemas"></a>
# Interpretare statum runtim et schemas output

> **Canonicum Anglicum fontem:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md).  Haec documenta localia mandata exacta, semitas, claves, valores, hashes, nomina fasciculi conservat. Si forma technica differt, fonte Anglico utere.


Hic est schema canonicum campi completum. Respondet quid quisque ager, status, inanis pretii, apparatus effectus sit. Utere [runtime tabula geographica](RUNTIME_TABULARII.md)

Viae omnes in hoc duce relati sunt ad inauguratum `RandomDay/` folder nisi ordo expresse nominat sandbox conformatum vel scopum adaptatorem libitum. Runtime outputs are generated after installation and are not members of either release ZIP.

<a id="choose-the-authoritative-view"></a>
## Elige sententiam

| Necessitas | auctoritatis principium |
|---|---|
| Regulae onustae processus currentis | RandomDay titulum in `SandboxSettings.ini` legitur apud startup |
| Paratus queue bookkeeping | `runtime/rotation_state.txt`, schema`1` |
| Detailed status localis | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Publicus apparatus-readabilis status | `web_export/today.json`, schema`2` et `randomday_public_status_v2` |
| Humanus-readable status | `web_export/today.html` |
| Translation vocabularium | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| exigite limitatum ludio ludius notitiam | `runtime/current/player_message_preview.txt` |

The HTML visum, praevisum et translatum summaria sumuntur sententiae. Non vincunt sabuleum titulum, eventum transactionis, vel valores profile rudes. Locate ultimos notos-bonos ordines, operandi tergum, sidecars, specula, scuta adaptans et `UE4SS.log` in [Runtime fasciculi](RUNTIME_TABULARII.md).

<a id="rotation-state-schema"></a>
## Ratio schematis rotationis

`runtime/rotation_state.txt` utitur schema`1` et unum continet`key=value` par per lineam:

| Field | Means |
|---|---|
| `schema_version` | Debet esse `1`. |
| `mod_version` | Package identitatis ex `.randomday_version`. |
| `rotation_id` | Identifier ad currentem transitum per familiam eligibilem paro. |
| `mode` | `selected_run`, `non_repeating_random_run`, vel `rotation_run`. |
| `available_families` | Comma-separatae familiae eligendae IDs cum configuratione eliquare. |
| `remaining_families` | Eligibiles familiae nondum selectae in hodierna praeter- iterare. |
| `completed_families` | Familiae quarum integra perseuerat 17 ordo positus in transitu currenti complevit. |
| `active_family`, `active_day` | Active indicio descriptis cum delectu commissum est. In sandbox titulus est auctor in altera tabernus. |
| `prepared_family`, `prepared_day` | Profile tenendum pro tunc sileo. |
| `active_run_id` | Genus-rum identifier cum selectione praeparata coniungitur. |
| `last_status` | Calendarium selectum qui hunc fasciculum attulit. |
| `session_mode` | Dedicata pertinacia, temporaria dicata, vel singleplayer/LAN lifecycle. |
| `start_day_mode` | Configured vel temere inire electionem pro novo spatio. |
| `day_progression_mode` | Involutus sequentiae vel non repetens progressionem temere. |
| `day_order` | Comma-separatis perseuerantibus IDs dies exacto ordine praeparabuntur. |
| `day_position` | positio diei praeparati in `day_order`. |
| `updated_at` | Locus scribe tempus comparationis operator. |

Statu scribentium tantum accipitur cum schema schedae, familiae paratae, et dies paratus recte relecta. Fasciculus currentis unreadable ut redeat ad `rotation_state.last_good.txt`; delectae sandbox titulum adhuc determinat quid ludus onustus pro processu currens.

<a id="runtime-status-json"></a>
## Runtime statusJSON

`runtime/current/randomday_status.json` utitur `status_schema=randomday_runtime_status_v2`. Praecipui campi eius coetus sunt:

| Group | Agri et interpretatio |
|---|---|
| Identity | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Selection | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Active | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Paratus | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Humanae summaria | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Scribe probationem | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Aptator probationis | `adapter_status`, `adapter_results`; unumquodque adaptorium recordum convenientiam continet testimonio, transaction/rollbackrelatum, lima comitem mutatum et scopum indiciorum redactum |
| Boundaries | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Diagnostica | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Incognita valores activos intelliguntur qui sandbox hodiernam lectabilem RandomDay titulum. Praeparatis valoribus restitui non debent. Viae nibh extra `runtime/` ad base nomen redacta sunt, et chordae diagnosticae redactae semitas absolutas deprehenduntur.

<a id="public-status-json"></a>
## Publicus statusJSON

`web_export/today.json` utitur `schema_version=2` et `status_schema=randomday_public_status_v2`. Identitatem repetit, active/prepared, selectio, transactionis, adaptor, et facta sileo-fines quae ab operante requiruntur. Etiam:

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order`, et `prepared_day_position`;
- `family_selection_mode`, legatum`family_locked_until_day_17`, et `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families` et eorum comitem;
- concursus profile, ordo, thema, et fortuitus mixti occurrant;
- acceptio mundi, ambitus mundi, incogniti mundi, et solum computatorum figuratorum exclusis mundi exemplarium;
- nuntium paravit ac nuntium praevisum componit;
- `selected_at`, `sandbox_target`, `manual_copy_required` et parata Nullam.

`profile_status`unus e `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence`, vel `write_failed_or_rollback`. `prepared_ready=true`adhuc non significat activum; postea satus titulus requiritur.

<a id="dictionary-and-translation-output"></a>
## Dictionarium et translationem output

`runtime/current/randomday_dictionary.json` utitur `schema=randomday_runtime_dictionary_v2` et notat glossarium versionem `randomday_dictionary_v2`. Modos sarcinas describit, civitates selectae, ditiones pressationes, pittacia, valores rudis, et significationes simplicis linguae describit. Valores ignoti aperte manent potius quam in fiducialem descriptionem convertantur.

`player_message_preview.txt`, `today.json`, `today.html`, et notationes in-ludorum ex eiusdem moduli translatione derivatae sunt. Subiecta profile et rudis `SandboxSettings.ini` valores veritatis fons manent.

<a id="failure-and-recovery-rules"></a>
## Defectum et recuperatio praecepta

1. A incassum pendenti scribe vel sanatio numquam fit scopum productionis.
2. A deficiente promotione vel productio lecta back triggers restituendi detenti originalis; operatio tergum est fallback quando deficit restitutio.
3. A retenta fasciculi reverti seu `rollback_failed`status requirit recognitionem manualem dum ludus vel ministrator intercluditur.
4. Felix sandbox scribe plus defuit rotationis-status committe degradatus, non paratus; adaptors et praeparatus nuntius profile omittuntur.
5. Defectio exportationis sandbox exitum non mutat, sed commoditatis documenti fontem removet. Tigna transactionis utere, statu, et lima readback.
6. Runtime outputes sunt notitiae locales operationales. Noli eas addere ad remissionem ZIP vel exempla ede sine secreti recognitione separato.
