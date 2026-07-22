<a id="packaged-source-reference"></a>
# Packaged Source Reference

> **Canonicum Anglicum fontem:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md).  Haec documenta localia mandata exacta, semitas, claves, valores, hashes, nomina fasciculi conservat. Si forma technica differt, fonte Anglico utere.


Remissio ZIP exacte 51 vias infra continet. Hic aedificator reicit iter absentem, fontem additicium fasciculi informatum, casum collisionem, symlink, vel membrum extra suum licitum litteralem. Runtime output, probationes, soUicitudo repositoria, et mods tertii-partii membra non sunt sarcina.

 machinatio-reprehendibilis comes est [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Eaedem semitas cum inputibus, outputibus, effectibus, occasus, visibilia publica, defectus modos, editabilitatem et documenta canonica commemorat.

Omnis ordo Luam exigens unum habet firmum`module-*` anchora. Eadem nexus in fonte canonico suo titulo capitis et machinae proprietatem, contractum, latus effectus, defectiones, et recuperationem directe deprauabilem efficit.

<a id="package-markers"></a>
## Package Markers

| Path | Caller et responsalitatem | Side effectus et morum defectum | Guide |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS titulum inclusum in utraque fasciculis dandis. | No runtime scribe. Absentis fasciculus involucrum sanatio et sarcina praecavens non potest. | [ Installation](INSTALLATION.md) |
| `RandomDay/.randomday_version` | Lege per `ax_core/version.lua`; generatae per sarcina. | No runtime scribe. Missing/blank titulum redit `unversioned`; finalis constructum requirit varius version identitatis. | [sedem solve](REMITTE_VALIDATION.md) |
| `RandomDay/.randomday_mode` | Lege per `ax_core/version.lua`; generatae ut `dedicated_server` vel `singleplayer_manual`. | Aliquam valorem sistit startup ante filesystem opus. | [Architectura](ARCHITECTURA.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Ingressus, Configurationis, Ac Core Services

| Path | Caller et responsalitatem | Inputs, outputs, mores et defectum | Guide |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS aculeo. Mod radicem unam resolvit et invocat `ax_core/init.lua`. | Procer linea fatalis et redit si radix resolutio vel satus defecerit. | [Satus iter](ARCHITECTURA.md#startup-path) |
| <a id="module-ax-cor-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Orchestrator principalis ad satus et ad libitum moderamen. | Anchorae semitas output, urget package/safety | [Satus iter](ARCHITECTURA.md#startup-path) |
| <a id="module-ax-config-servo"></a>`RandomDay/Scripts/ax_config/server.lua` |  Loaded by `init.lua`; perfecta figura rei publicae. | Involucrum legit identitas; occasus et agri reservati singillatim documenta sunt. Incolumis crines prohibere satus. | [Configurationis](CONFIGURATIONIS.md) |
| <a id="module-ax-cor-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Loadus config et profile registro. | Read incisum incisum figunt; redit `unversioned` vel `invalid` cum unavailable. | [Identitatem dimitte](REMITTE_VALIDATION.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Shared logging wrapper. | Emits `[RandomDay]`lineas ad felis gradus; nulla privata iniuriarum oneraria nave exceptus. | [Runtime fasciculi](RUNTIME_TABULARII.md#operator-file-map) |
| <a id="module-ax-core-utilis"></a>`RandomDay/Scripts/ax_core/utils.lua` |  fasciculi Shared, viam, modum translitterandi, detrahendi, presul, et transactionis adiutores. | Creatio directiva tantum confirmat confirmatum Lua/Wine res gestas imperio; pervulgatus, elevatus, significatus, ambiguus, vel eventus non nullus clausus cum nuntiis limitatis et indiciorum runtimorum relativorum deficient. Etiam pending/readback/promotion/rollback semantics et incertas receptas retinet notitias. | [Sandbox transaction](ARCHITECTURA.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Selectio, Sandbox, Status, Mandata

| Path | Caller et responsalitatem | Inputs, outputs, mores et defectum | Guide |
|---|---|---|---|
| <a id="module-ax-cycle-calendarium"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; legit activum titulum et gyrationis statum, unum eligit active/prepared par, perstat sessionis modus et ordo exactus diei. | Aedificat configured/wrapped vel uno tempore permixto 17-positionis ordine, scribens `rotation_state.txt` transactioniter, et ad ultimum bonum sine revolvendo recidit. Turpis transitus pertinacia defectum producit.  | [machinae rotationis status](ARCHITECTURA.md#rotation-state-machine) |
| <a id="module-ax-backup-procurator"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Sandbox Scriptor; operandi ac postremum bonum tergum verificatum bytes recreat. | renovat ultimum bonum sandbox/manifestGeminos; prior par servat, si manifesta postea deficit. | [Runtime fasciculi](RUNTIME_TABULARII.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Profile aedificator, serializer et validator. | Canonicas definit clavem ordinem, genera, regiones, regulas fixas; non scribit filesystem. | [Sandbox claves](PROFILES/SANDBOX_OCCASUS_CLAVES.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Sandbox scriptor. | Producit integram deterministicam INI textum cum RandomDayfigunt; invalidum profile data rejicitur sanatio. | [Profiles](PROFILES/PROFILE_DOCUMENTUM.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Fector probat et auctor. | Validates profano valores ac serialized INI schema, valores fixum, et identitatem profile expectati. | [Sandbox claves](PROFILES/SANDBOX_OCCASUS_CLAVES.md) |
| <a id="module-ax-sandbox-scriptorem"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; scuta modus terminatus resolvit et facit primary/mirrorscribit. | Producit transactionem, tergum, reverti, Nullam, speculum, et manuales exitus. Scuta tuta et sine verificatione scribens deficient clausa. | [Sandbox transaction](ARCHITECTURA.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` post singulas confectionis exitus. | Scribit hodiernam statum, dictionarium, ac nuntium praevisum transactionaliter cum scopum sanitized indiciis. Output defectum initium est et sandbox auctoritatem non mutat.  | [Current status schema](RUNTIME_TABULARII.md#current-status-schema) |
| <a id="module-ax-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` post statum. | Scribit`today.json` et `today.html` ex active/prepared decretum. Defectum nuntiatur defectum exportationis, non victoria sandbox. | [Tabulae exportationis schema](RUNTIME_TABULARII.md#web-export-schema) |
| <a id="module-ax-player-nuntius"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` post prosperam civitatis constantiam. | Build terminatum join/dailyrelatae ex translatione data et optione mandare mandatum loci consolatorium. Absentis player/transport notitiam sine mutatione civitatis transmittit. | [Player epistulae](CONFIGURATIONIS.md#player-messages) |

<a id="optional-adapter-modules"></a>
## Libitum adaptatorem Moduli

| Path | Caller et responsalitatem | Inputs, outputs, mores et defectum | Guide |
|---|---|---|---|
| <a id="module-ax-externum pontem"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; detegit agnita scuta adaptor et omnia imaginalia cogitata transactionally applicat. | Sex eventus documentales producit, tergum verificatum, diagnostica sanitizatum, et probationes reverti. | [Adaptor terminus](ARCHITECTURA.md#adapter-boundary) |
| <a id="module-ax-externi adaptors dynamica-parunt"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Definitio adaptator pontis pro separatim constitutoDynamicSpawns layout. | Copiae subscriptiones recognitae et tabulae pretii paratae; ignotae layout exsultantur. | [ adaptatores suffulti](APTATORS_SUBNIXUS.md) |
| <a id="module-ax-externum adaptatores occurrant director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Aptator internus definitio ad libitum RandomDayextensio agri in Engine agnito Chaotic Spawn `DynamicSpawns`layout; filename non est separatum operis nomen. | Map profile conveniant et scopum figurant valores tantum cum extensione integra exsistit; Chaotic Spawn Engine manet reus in usu runtime. | [ adaptatores suffulti](APTATORS_SUBNIXUS.md) |
| <a id="module-ax-externi adaptors lethalis lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Pontis adaptator definitionem pro obitus lethalis Lasers agniti layout. | quelibet intentum clavem ante mutationem requirit; aliter tradit repugnare. | [ adaptatores suffulti](APTATORS_SUBNIXUS.md) |
| <a id="module-ax-externum adaptors ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Pontis adaptator definitionem agnitae ANTE | Requiret respawn, variant, et debug-portas agros; aliter tradit repugnare. | [ adaptatores suffulti](APTATORS_SUBNIXUS.md) |

<a id="shared-profile-and-translation-modules"></a>
##  Profile Shared Modules et Translationes

| Path | Caller et responsalitatem | Inputs, outputs, mores et defectum | Guide |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; basis valorum canonicorum et defaltis 17 dierum. | Commenta omnia clavium sandalium, quattuor defalta profile emensae, reliquae regulae fixae sunt; non scribit filesystem. Schema sanatio reicit output imperfectum. | [Sandbox claves](PROFILES/SANDBOX_OCCASUS_CLAVES.md) |
| <a id="module-ax-profiles-profile fabricantis"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Omnis domus moduli et legatum familiae visum. | Clones baseos dierum, applicat limitata family/day vincit, validat `sandbox.profile_overrides` | [Profile reference](PROFILES/PROFILE_DOCUMENTUM.md) |
| <a id="module-ax-profiles-profile-familia-subcriptio"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; iussit publicum subcriptio omnium familiarum XVII. | Supplementa IDs, fontium filenamorum, nominum, descriptionum, generum, toni metadata. Absentis familiae fons non loading. | [Genus rotationis](GENUS_ROTATIONIS.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Calendar, scriptor, status, probatio, generator. | Load omnes sarcinas familiares descripserunt et in 17-by-17 statuto profano exponit, defaltis uitis, valores diffusos efficaces, ordinem schematis, regulas fixa. | [Profile reference](PROFILES/PROFILE_DOCUMENTUM.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Packaged convenientiae intuitu actionis originalis 17 diei sarcina. | Redit sarcinam integram familiae sed non est fons familiae subcriptio currentis. Servata est historica sarcina-iter continuitatis. | [Genus rotationis](GENUS_ROTATIONIS.md) |
| <a id="module-ax-profiles-reactio-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Packaged convenientiae intuitu originalis reactionis salvos sarcinas. | Redit sarcinam integram familiae sed non eligitur ex registro currenti. Servata est historica sarcina-iter continuitatis. | [Genus rotationis](GENUS_ROTATIONIS.md) |
| <a id="module-axem-profiles-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Legatus dies-index congressus lookup praesto ad profile codicem. | Reditur una tabula arctissima interdiu; non scribit filesystem. Vena familiae propriae figurae propriae valores congressus portant. | [Profile reference](PROFILES/PROFILE_DOCUMENTUM.md) |
| <a id="module-ax-profiles-epistulae-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Player quantitatem et convenientiam serratus. | Build terminatum joke/notesarcinis ex profile delectis; unavailable profile notitia recidit ad neutrum nuntium. | [Player epistulae](CONFIGURATIONIS.md#player-messages) |
| <a id="module-ax-profiles-nuntius-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | retro-compatible fascia circum `messages_17.lua`. | Nulla independens data vel scribit; onus defectum sequitur nuntius canonicorum moduli. | [Player epistulae](CONFIGURATIONIS.md#player-messages) |
| <a id="module-ax-profiles-dictionarium"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Translation and runtime dictionary writer. | Definit omnes 46 sandbox significationes, rationes, regiones, regiones, valorem linguae. Valores ignoti expliciti manent. | [Translation et dictionarium](RUNTIME_TABULARII.md#current-status-schema) |
| <a id="module-ax-profiles translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Runtime status et ludio ludius nuntius. | Converts valores rudes profile in ustulo dominio terminato, facta, summaria, monita et dictionarium output servato valores crudos. | [Current status schema](RUNTIME_TABULARII.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Registrum familiae Moduli

Omnis ordo a `randomday_17.lua` vocat `profile_builder.lua` exacte 17 perfiles redit, nec latus filesystem directum habet. A absentis, duplicata, incompleta, extra-range, vel fixum-regula-violationis profano deficit curriculum fixturae suite et generatae-relatio portae.

| Path | Genus | Canonicus generatus dux |
|---|---|---|
| <a id="module-ax-profiles-familias-actio-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Actionis | [Actionis](PROFILES/FAMILIAE/ACTIO_PROFILE_FAMILIAE.md) |
| <a id="module-axem-profiles-familias-superstites 17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Survival | [Survival](PROFILES/FAMILIAE/SALVAM_PROFILE_FAMILIAM.md) |
| <a id="module-ax-profiles-familias furtim-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Furte | [Furte](PROFILES/FAMILIAE/FURTIM_PROFILE_FAMILIAE.md) |
| <a id="module-ax-profiles-familias horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Horde | [Horde](PROFILES/FAMILIAE/HORDE_PROFILE_FAMILIAE.md) |
| <a id="module-ax-profiles-familias bulla-vena--17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Boss Hunt | [Boss Hunt](PROFILES/FAMILIAE/UMBO_VENARI_PROFILE_FAMILIAE.md) |
| <a id="module-ax-profiles-familias scavinger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Scavenger | [Scavenger](PROFILES/FAMILIAE/SCAVENGER_PROFILE_FAMILIAE.md) |
| <a id="module-ax-profiles-familiae fabricatoris-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Build | [Build](PROFILES/FAMILIAE/PROFANO_FABRICATOR_FAMILIA.md) |
| <a id="module-ax-profiles-familias-expeditionis-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Expeditio | [Expeditio](PROFILES/FAMILIAE/EXPEDITIO_PROFILE_FAMILIAE.md) |
| <a id="module-axem-profiles-familias-securitates-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Securitatis Lockdown | [Securitatis Lockdown](PROFILES/FAMILIAE/SECURITATEM_LOCKDOWN_PROFILE_FAMILIAE.md) |
| <a id="module-ax-profiles-familias-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Biohazard | [Biohazard](PROFILES/FAMILIAE/BIOHAZARD_PROFILE_FAMILIAE.md) |
| <a id="module-ax-profiles-familias-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Anteverse | [Anteverse](PROFILES/FAMILIAE/PROFANO_ANTEVERSA_FAMILIA.md) |
| <a id="module-ax-profiles-familias-tantibus-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` |  Nightmare | [ Nightmare](PROFILES/FAMILIAE/TANTIBUS_PROFILE_FAMILIAE.md) |
| <a id="module-ax-profiles-familias tempestates 17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Weathered | [Weathered](PROFILES/FAMILIAE/PROFANUM_FAMILIAE_TEMPESTATEM.md) |
| <a id="module-ax-profiles-familias praecisionem-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Precision | [Precision](PROFILES/FAMILIAE/PROFANO_PRAECISIONE_FAMILIAE.md) |
| <a id="module-ax-profiles-familias logistics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Logistics | [Logistics](PROFILES/FAMILIAE/LOGISTICS_PROFILE_FAMILIAE.md) |
| <a id="module-ax-profiles-familias experimentalis-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Experimentalis | [Experimentalis](PROFILES/FAMILIAE/PROFANO_EXPERIMENTALI_FAMILIA.md) |
| <a id="module-ax-profiles-familiae-obsequium test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Obsequium Test | [Obsequium Test](PROFILES/FAMILIAE/OBSEQUIUM_TEST_PROFILE_FAMILIAE.md) |

<a id="generated-references"></a>
## References Generated

`docs/profiles/profiles.generated.json`, familiae Markdown lima, et `FULL_PROFILE_REFERENCE.md` are contributor/operator references ex eadem figura generati. Membra involucra non sunt nec emendari debent ut substitutum ad fontem profile mutandum. Validation postulat familias XVII, personas XVII per familias, IDs unique, omnes claves schematis, regulas fixas, translationem coverage et nuntios terminatos.
