<a id="status-and-error-reference"></a>
# Status et error referuntur

> **Canonicum Anglicum fontem:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md).  Haec documenta localia mandata exacta, semitas, claves, valores, hashes, nomina fasciculi conservat. Si forma technica differt, fonte Anglico utere.


utere accurato `status`, `transaction_status`, `rollback_status`, et `error` valores e runtime educendo. Similia verba in tabula vel consolatorium pro agris illis substitutum non est.

 Haec sectio est totius spec- tatis referentiae. Arbor decisio superius pertinet ad categoriam eligit; hae tabulae accurate conservant valores apparatus et responsa tuta operatoria.

<a id="normal-or-informational-states"></a>
## Northmanni vel informationales civitates

| Status | Means | Responsio operantis |
|---|---|---|
| `prepared_for_next_reboot` | A profile convalidatur scripta est pro altera tabernus. | Nihil actum; Sessionem hodiernam non mutatur. |
| `next_reboot_already_prepared` | Proximo in animo iam profile scopum aequet. | Nihil actum; aliam gyrationem non opprimere. |
| `already_current` / `unchanged` | Scopus iam bytes intentos continet. | Nulla actio. |
| `applied` | Scribe et productio recitata transiit. | Comprobaactive/prepared distinctionem post proximam tabernus. |
| `bootstrap_prepare_first_family_start_day` | Nulla prior rotationis status exstitit, sic figuratus primus dies paratus est. | Expectata in primo usu. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Reposita Reposita recuperata eademque profile parata rescripta est. | Diem recuperatum comproba; nullum novum temere arbitrium occurrit. |
| `supervision_reconfirm_prepared_profile_no_advance` | uisio saltum praeparationem existentium confirmavit. | Expectatur; bis queue non profecit. |
| `external_mods_disabled` | Libitum adaptator processus debilitatum est. | Nulla actio nisi aptatores destinati essent. |
| `external_mods_processed` | Omnia apta consilia ad exitum finem pervenerunt. | Recognosce ordinem cuiusque adaptoris. |

<a id="startup-configuration-errors"></a>
## Satus configurationem errorum

Hae epistulae ante initium prohibere RandomDayscribit profile. Corrigere nomine occasum vel sarcina titulum; non bypass in radice genere.

| Error text | Means | Responsio tuta |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` deest, deforme, vel ex sarcina iniuncta. | Restitue unam sarcinam integram in folder exhibuit purum atque intentum modum servate titulum. |
| `invalid experience.mode` | `experience.mode` non est unus e valoribus documentis. | Usus `auto`, `persistent_dedicated`, `temporary_dedicated`, vel `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | Involucrum manual-copulum figuratum est pro servo dedicato. | Restitue `auto` vel `singleplayer_lan`; non designare ad mundum externum automatice. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Involucrum dedicatum ad manual-exemplum workflow configuratur. | Usus `auto`, `persistent_dedicated`, vel `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | Delector initialis dies invalidus est. | prorsus utere`configured` vel `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | Delector ordo diurnus invalidus est. | prorsus utere`sequential` vel `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | Satus figuratus dies est fracti vel extra cyclum. | Toto utere numero ex 1 ad `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | Tergum seu ultimum restitutio bona debilitata est. | Rede utrique salutem comis; RandomDay consulto negat securum scribens. |
| `external adapter transaction safety locks must remain true` | Adaptor commissuram vel tergum tutelae debilitatum erat. | Rede utraque adaptor salutem senis vel inactivare adaptors in coetum. |
| `paths.world_name must be one folder name` | Mundi figuratum nomen continet characterem separatorem vel non securum. | Intra nomen solum exactum folder, utens litteris, numeris, spatiis, sapien, vel hyphens. |
| `required runtime directory unavailable` | A requisiti directorii mod-loci output creari vel confirmari non potuit. | Reprehendo solum nominatum RandomDay presul et licentia scribe. |

<a id="profile-wide-configuration-errors"></a>
## Profile-wide errores conformationem

Hi errores prohibere constructionem profile priusquam sandbox scribat.

| Error text | Means | Responsio tuta |
|---|---|---|
| `sandbox.profile_overrides must be a table` | Quatuor electiones profile latae cum alio Luae typo substitutae sunt. | Restitue documentum documentum in `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | Tabula continens ambitum qui non est ex quattuor clavibus sustentatis. | Sculpe nominata clavis et uterefamily/profile fontes ad alias sandbox occasus. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` vel `AllowIronMode` non est `true` vel `false`. | Luae boolean tacito utere. |
| `sandbox.profile_overrides.<key> must be integer` | A valor integer numerus non est. | integro numero utere. |
| `sandbox.profile_overrides.<key> outside supported range` | A subsidium valor extra `0..1000`. | Elige numerum totum e `0` ad `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Rollback et civitates intermediae

| Value | Means | Responsio tuta |
|---|---|---|
| `not_started` / `pending` | Res vel adaptor consilium non attigit terminum exitum. | Exspecta modo currenti saeptum Satumi pass; pertinax status investigationem requirit. |
| `not_needed` | Nullus reverti postulabat. | Nulla actio. |
| `original_held` | scopus originale movebatur in recuperationem positionis ante promotionem. | receptatio ne deleas dum gestum est incompletum. |
| `retained_after_success` | Novus scopus verificatur, sed data recuperatio manet quia tersus perpendat vel ex intentione retineatur. | Reproba productionem bytes antequam aliquem lima nominatum recipiat. |
| `discarded_after_success` | S reposito verificata et temporaria notitia usore vacuefacta est. | Nulla actio. |
| `rollback_failed` | Conatus restituere verificari non potuit. | servitorem sistit et utere verificatur ultima operatione tergum. |
| `skipped_state_persistence_failed` | Sandbox bytes parabantur, sed status gyrationis non perseverabat, ideo adaptores et praeparati-histrio nuntius praetermittebantur. | Repair runtime state storage; non reroll aut progredi queue tincidunt. |
| `failed` | Sextremum summarium significat defectum terminalis cuius causa specifica est in `error` vel transactiones agros. | Sequere primum codicem specificum; ne Troubleshoot ex `failed`solus. |

<a id="transaction-failures"></a>
## Defectis Transactionis

| Status | Means | Responsio tuta |
|---|---|---|
| `invalid_input` | Postulatio subroganda textum validum aut scopum validum non defuit. | Configuratio recta; non retry immutatus. |
| `stale_pending_cleanup_failed` | Lima vetus pendenti amoveri non potuit. | Desiste et conserva tabella tabella ante tersus manuales. |
| `stale_rollback_requires_review` | Recuperatio data iuxta scopus praesens exstat et tuto abici non potest. | Confer scopum et reverti bytes ante eligendo utrumque. |
| `interrupted_transaction_restore_failed` | Recuperatio post intermissam tortorem scopum restituere non potuit. | servitorem sistite et verificatum tergum restitue. |
| `interrupted_transaction_cleanup_failed` | Scopo recepta est, sed res vetus data purgari non potuit. | Verfice scopo bytes, tum remove modo sidecar nominatum. |
| `pending_write_failed` |  Candidatus scribi non potuit. | Reprehende angustum scopum directorium et spatium liberum. |
| `pending_readback_failed` / `pending_readback_mismatch` | Candidate bytes legi aut differre post scribendum non potuerunt. | Nihil promovere tabellam pendentem. |
| `pending_validation_failed` |  Candidatus defecit schema/profile sanatio ante promotionem. | Clavem seu regulae nuntiata fige; non bypass sanatio. |
| `operation_backup_failed` / `backup_failed` | A verificata pre-scribe tergum non creatum est. | Desine; nulla reponenda target credendum. |
| `original_preserved_move_failed` | scopus primigenius in convaluisset positione moveri non potuit. | Cunctionem omnem lima conserva et manually recipies. |
| `promotion_failed` |  candidatus pendenti scopum producere non potuit. | Reprehendo an ante retrying originale restituta sit. |
| `production_validation_failed` | Promotus bytes productione defecit readback/validation. | Restitue verificatum tergum et scopo scriptorem inspice. |
| `replacement_committed_recovery_cleanup_failed` | Repositum validum est, sed notitia reverti purgari non potuit. | Scopum tracta sicut commissum est; remove modo verificatur veteris convaluisset data. |
| `rollback_failed` | Automaticos restituere non comprobavit. | servo cessatum est et manuali salute utere. |

<a id="target-profile-adapter-and-export-failures"></a>
## Target, profano, adaptor et defectis export

| Status | Means | Responsio tuta |
|---|---|---|
| `target_refused` | Via conformatus extra licitum modum limes est. | Iter corrige; terminus numquam debilitare. |
| `target_directory_failed` | scopo presul creari vel confirmari non potuit. | Reprehende solum directorium existentiae et permissionum. |
| `profile_validation_failed` | A profile deest clavis, iniuriam habet type/range vel reliquam invariabilem regulam violat. |  Clave nominato utere, `sandbox.profile_overrides` et profile referuntur ad fontem reficiendum. |
| `skipped_incompatible` |  Modus ad libitum existit, sed subscriptio adaptor subnixa non congruit. | Motum vel disable ut nibh. |
| `external_mods_partial` | Aliquae adaptatores ad libitum peractae et alii in tuto suntskipped/failed. | Recognoscere adaptor ordines independentes; sandbox effectus separatus est. |
| `external_adapter_failed` | A adaptor requisitus tuto non complevit. | Restitue verificatum tergum suum antequam retrying. |
| `degraded_state_persistence` | Sandbox perfecta praeparatio, sed perseverantia gyrationis-status non fecit. | Ne altera caligo recte progredi possit; reparatione publica reposita. |
| `export_directory_failed` | `web_export/` creari vel scribi non potuit. | Praeparatio lusionis adhuc valida est; referens seorsim reficere. |

<a id="translation-and-message-validation-errors"></a>
## Translatio ac nuntius sanatio errorum

Hae sunt dictionarii vel praesentationis delictorum contractus. Convalidantur ante emissionem et etiam apparent sicut monitio runtime-statu terminata.

| Error text | Means | Responsio tuta |
|---|---|---|
| `dictionary coverage mismatch` | Dictionarium profile omne documentum occasum non explicat. | Desunt addere dictionary ingressum et rerun profile generation/validation. |
| `missing profile setting` | A profile electus caret occasus a dictionary/schema. | Reparare profile familiae fontem; non invent runtime defaltam. |
| `empty explanation` | A occasum exstat sed nullum habet operator/player explicatio. | plane linguae explicationem adde antequam emissio. |
| `join line too wide` | A juncta linea genita excedit 42-characteris fontem limitem. | Dictionarium alind comma ; non fidit clientis involuti. |
| `join message too tall` | Generatum summatim iungere quattuor lineas excedit. | Reducere vel reprorire nuntium contentus. |
