<a id="architecture-and-data-flow"></a>
# Architectura Et Data Flow

> **Canonicum Anglicum fontem:** [ARCHITECTURE.md](../../ARCHITECTURE.md).  Haec documenta localia mandata exacta, semitas, claves, valores, hashes, nomina fasciculi conservat. Si forma technica differt, fonte Anglico utere.


RandomDay officium finitum possidet: profile sandbox integram praepara ad initium futuri sine describendo illam profile actuosam in praesenti processu. Activa profano ex titulo in tabella sandbox quae Abiotic Factor onustus ante UE4SS incepit RandomDay. Profile paratus est separatus, status fasciculi convalidatur pro tunc sileo.

<a id="package-modes"></a>
## Package Modes

structor emissio duos ZIPs ex eodem fonte accurato permissos reddit et `RandomDay/.randomday_mode` aliter in unoquoque.

| Modus | Primary output | automaticus externus scribit |
|---|---|---|
| `dedicated_server` | Dedicata-servo`SandboxSettings.ini` | Sandba prima, specula de industria configurata et adaptatores ad libitum agnita. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Nihil extra RandomDayfolder; speculis et adaptors erret. |

`RandomDay/.randomday_version` et `RandomDay/.randomday_mode` generantur involucrum venalicium. `RandomDay/Scripts/ax_core/version.lua` eas legit; operators non debent eas recensere post institutionem.

<a id="session-modes"></a>
## Sessionis Modos

Package modus moderatur ubi RandomDay scribat fortasse. `experience.mode` seorsim describit vitam intentam:

| Sessionis modus | Package | Vita contractus |
|---|---|---|
| `persistent_dedicated` | Dedicatum | Resume familiam perseuerantiam et diem 17-positionis ordinem per longum tempus restarts. |
| `temporary_dedicated` | Dedicatum | Sessionem deducunt pro clausula fabula, servato queued ordine inter launches. |
| `singleplayer_lan` | Singleplayer manualem | Fasciculum mod-loci generare pro mundo operator electo; non nisi inventio vel automatic exemplum. |

`auto` proposito ad `persistent_dedicated` in fasciculo dedicato et `singleplayer_lan` in sarcina manuali. Sessionis modus non mutat machinam limitem: processus currentis iam onerat sandbox ante RandomDay exequitur.

<a id="startup-path"></a>
## Satus Path

1. UE4SS onera `RandomDay/Scripts/main.lua`.
2. Viscus punctum unum resolvit `RandomDay/` radix et onerat `Scripts/ax_core/init.lua`.
3. `init.lua` onera figurarum, figurarum, calendarium, scriptorum, adaptors, status, telae exportationis et modulorum scaenicorum. Negotium inritas reiicit modum vel debilem rem tutae cincinno. Etiam modus sessionis sarcina-compatibilis, modus satus-diei, dies satus, diesque progressionis modus configuratur.
4. Omnis familia aedificatum validat `sandbox.profile_overrides` ex `Scripts/ax_config/server.lua`. Quattuor electiones profile latae applicantur post family/day valores et apud reliquos regulas immutabiles, sic omnis profile praeparatus iisdem electionibus conformatus utitur.
5. Runtime et radices web-output ad mod folder resolutae religantur. Singleplayer modus reducitur ad unum mod-loci output ante electionem.
6. `ax_cycle/calendar.lua` arenosum titulum et recuperabilem gyrationis statum legit, deinde unum efficit active/prepared decisionem processus huius ludi.
7. `ax_sandbox/writer.lua`senalizet ac profile praeparatum validat, tum reposito transactionali ad scopum delectum utitur.
8. Rotation status committitur tantum postquam sandbox transactionis succedit. Status-promissionis defectus degradatur: adaptores et praeparati-ludii nuntius exsultaverunt quia sandbox et queue status non conveniunt.
9. In modo dedicato, `ax_external/bridge.lua` adaptatores ad libitum contra profile activum aestimant. In primis bootstrap nihil agentis titulus exstat, sic paratus configured/randomsatus-diei profile solus praesto adaptor tabularum faciendarum.
10. RuntimeJSON/text status et HTML/JSON interretiali sententia revocetur ex eodem decreto. Ludio proscriptiones novissimae installed.

Defalta `cycle.check_interval_ms=0` hanc seriem semel in satus decurrit. Si operator praebet spatium positivum et UE4SS exponit `LoopAsync`, postea callbacks reuse processui-possessores lectionis. Lectionem illam reficere vel exportare possint, sed in eodem processu alium diem non eligunt.

<a id="rotation-state-machine"></a>
## Ratio publica Machina

| Selectionis status | Ingressus conditionem | Proventus Paratus | Recepta tuta |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Nullus titulus activus nec recuperabilis res publica praeparata. | configuratus vel passim prima positione electus in ordine diei noviter perseverans. | Sessionem currens existentem habeto; sileo solum post `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | Actus dies ultimus in ordine condito non est. | Proximum in eadem familia situm repositum. | Si perseverantia deficiat, servo sistitur et arenam et statum gyrationis conciliat. |
| `active_marker_found_completed_run_prepare_next_unused_family` | Actus dies ultimus est positus in ordine condito. | Primo loco ex novo ordine in altera familia eligibili currunt. | Novum confirmafamily/day/order ante sileo. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Nulla titulum activum, sed statum rotationis nominat profile paratam. | Idem profile reaedificatur. | Serva rem publicam limam; neque eas delere reroll. |
| `supervision_reconfirm_prepared_profile_no_advance` | A postea callback eodem processu decurrit. | Idem profile parata. | egritudo prima deficiente scaena; callbacks repetita non sunt nova excerpta. |

`selected_run` semper utitur `selected_family`. `rotation_run` figuram eligibilem ordinem consumit. `non_repeating_random_run` e familiis eligibilibus eligit et incipit novam piscinam postquam omnes compleverunt. Omnis modus unam familiam servat donec omnes dies unus IDs in `day_order`explevi. Sequentialis modus adligat post diem 17 cum satus figuratus non est dies 1; non-repetito-temere modum reponit unam permutationem et numquam revolvens in recuperatione.

<a id="sandbox-transaction"></a>
## Sandbox Transaction

Scriptor omnes claves in ordine canonico reddit et typos, ranges, regulas fixas, valores titulum, et identitatem profile ante scriptionem reddit. Substitutio igitur hunc ordinem sequitur:

1. sule pendenti fasciculum remove modo cum id tutum est;
2. servare vel prohibere in praeexistente sidecars convaluisset;
3. scribe pendens bytes;
4.  tabellam pendentem legere et convalidare illud;
5. reverificam operationem creare tergum cum signum existit;
6. reprehende original ut file transactionis;
7.  tabellam pendentem promovere;
8.
9. restituat tentum originale, si promotionem vel productionem sanatio deficiat;
10. receptatio notitia et fama defectio si tersus verificari non potest.

Primo scribe eodem utitur pending/readback/validation iter. Cum scopo originali nullo nihil est quod restituat, itaque primum scribens incassum nuntiari non debet ut receptaculum primigenium.

<a id="adapter-boundary"></a>
## Adaptor Terminus

Aptatoria sunt RandomDay-ownedrepeciare definitiones separatim installed mods. Pons primus signum scopum postulat viam ac subscriptio clavem completam. Negotiationes tantum exsistentes inaequaliter distinguit, operationem tergum creat, omnem limam meditatam ut rem unam applicat, omnia affectata scuta retro volvit, si quis gradus deficit. Absentis et repugnantia scuta normales eventus ad libitum sunt.

RandomDay tertiam partem codicis in eius sarcina non aperit. Fixture-backed layout probat RandomDay'sreser et agendi mores, non quod tertia pars emissio onerata vel in processu lusus adhibeatur.

<a id="output-boundary"></a>
## Outputus terminus

Runtime files generantur infra `RandomDay/runtime/` et `RandomDay/web_export/`; nulla est liberatio ZIP input. Status scriptor machina-locum removet adaptor vias publicas JSON diagnostica. Via plena, schema, clausula et retentionis tabula in [Limae Runtime Et Status](RUNTIME_TABULARII.md).

<a id="failure-ownership"></a>
## Defectum Possessionis

| Deficio scaena | Secundum dominum visibilis |
|---|---|
| Profile vel INI sanatio | Nulla productio scribere temptatur. |
| Pending write/readback | productio bytes exsistens in loco manent. |
| Operatio tergum | Restitutio subsistit antequam originale moveatur. |
| Promotio seu validatio productio | Automatic restituere temptatur et effectus eius traditur. |
| Rotation-status perseverantia | Adparatus sandbox bytes extare potest, sed transitus degradatus et adapters/messages omittuntur. |
| Adaptor convenientiae | Scopo nihil mutatum est cum `not_installed` vel `skipped_incompatible`. |
| Adaptorwrite/readback | Omnes adaptores scuta mutata cum fieri potest restituuntur. |
| Status vel textus export | Sandbox effectus manet auctoritatis; output defectio est initium et non debet tractari ut felix fama. |

Sequere[Operationes](OPERATIONES.md) ad recuperationem et [ Troubleshooting](TROUBLESHOOTING.md) signa primum compescit.

<a id="evidence-limit"></a>
## Evidentia Limit

Luae fixture localis congruens mores, generata profile invariantium, gerentes ramos, figuras outputa, finesque involucrum probare potest. Vena abiotic Factor fabricare non probat, currente UE4SS emissio, peculiaris decuriae cultor, omnis ostentationis magnitudo, aut incognita tertiae partis mod versionis. Quae iura manent `not tested` usque ad nominatam convenientiam detegere traditur.
