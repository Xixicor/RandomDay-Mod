<a id="configuration"></a>
# Configurationis

> **Canonicum Anglicum fontem:** [CONFIGURATION.md](../../CONFIGURATION.md).  Haec documenta localia mandata exacta, semitas, claves, valores, hashes, nomina fasciculi conservat. Si forma technica differt, fonte Anglico utere.


Configuratio principalis operator est:

```text
RandomDay/Scripts/ax_config/server.lua
```

Tabellae tergum sursum et unam sectionem muta ad tempus. Luae Booleans sunt lowercase `true` et `false`; chordis quotes opus est; album entries opus commatibus. Post inceptum proximum, lege paginae status ante aliam mutationem facere. Contributores e fonte operando uti possunt separati [ radicem divulgationis](REMITTE_VALIDATION.md)reprehendit ante packaging mutationi aedificandi.

re noli tradere-edit`.randomday_mode`, `.randomday_version`, generatae profile indiciorum, `runtime/`, vel `web_export/`. Sarcina fabricator modum et versionem venalicium sarcinam possidet et compescit ut cum metadata emissione consentiunt.

Omnis locus infra definitur in `RandomDay/Scripts/ax_config/server.lua`. Tabulae distinguunt occasus editabiles ab identitate emissione possessorum et convenientiae agrorum reservatorum. Ager praesens in Lua mutatus non significat mores sustentans.

<a id="choose-an-experience"></a>
## Elige experientiam

RandomDay duas fasciculos habet: unum pro omni servo dedicato, alterum pro singleplayer/LAN manuale exemplum. Involucrum dedicatum duos modos operandi habet; illi modi sunt occasus, non downloads separatae.

| mundum tuum | Instrue | Moribus hunc elige |
| --- | --- | --- |
| A dicatum servo qui custodit unam expeditionem per consuetudinem restarts | Dedicata-servo sarcina | `persistent_dedicated` servatae familiae et ordinis profano resumit. |
| A servo dedicatum aperuit solum ad singulas sessiones fabularum | Idem servo dedicato involucro | `temporary_dedicated` |
| A simplicibus lusoribus vel LAN | Singleplayer/LANsarcina | `auto`manual-morum exemplar eligit; orbis terrarum prohibere antequam generatae lima exscribend testatem. |

Si incerta es, utere `auto`. Sarcina deligit mores normales ad genus institutionis. Lata fabula in [Genus rotationis](GENUS_ROTATIONIS.md). Utere [index familiae generati](PROFILES/PROFILE_DOCUMENTUM.md)cum vis lusionis et sandbox valores exigere. Ergo elige primum diem et progressionem;

- `start_day_mode="configured"` incipit apud `start_day`.
- `start_day_mode="random"` validum primum diem eligit in novae familiae initium currit ac persistit in illa electione.
- `day_progression_mode="sequential"` involvit per omnia 17 positiones.
- `day_progression_mode="non_repeating_random"`

Utere integerrimis presetis in [Rotation](#rotation). Nova institutione adhuc indiget uno incipiente profile electum praeparare ac postea inceptum illud movere.

<a id="release-identity-and-logging"></a>
## Remitte identitatem et colligationem

| Ponere | Typus et valorem exigendi | Fusus usus | Defectum vel commercium |
|---|---|---|---|
| `version` | String legitur ex `.randomday_version` | Lege tantum. | Missing vel blank titulus fit `unversioned`; ultima involucrum sanatio identitatis calliditate respuit. |
| `package_mode` | String legitur ex `.randomday_mode` | Lege tantum: `dedicated_server` vel `singleplayer_manual`. | Numquam aliud valorem incipit ante scopum scribit. |
| `plan_basis` | String: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Diagnostic titulus tantum; non uti pluma toggle. | Current runtime in hoc campo non oriuntur. |
| `logging.level` | String: `info` | `debug`, `info`, `warn`, vel `error`. |  valores ignoti non adiciunt logationes; custodi `info`nisi mores profile generationis dignoscentes. |

Exemple:

```lua
logging = { level = "debug" }
```

Usus `debug` ad tempus, conserva pertinet`UE4SS.log`, deinde ad `info`. Tigna locorum semitas ab infimo gradu delapsas continere possunt; recensebimus ante communicantes.

<a id="experience-mode"></a>
## Experientia modum

`experience.mode` nominat quo modo haec institutionis operata sit. Proximum-initium salutis finem non minuit: Abiotic Factor legit sandbox occasus ante UE4SS onera RandomDay

| Ponere | Tavit valorem |  valores suffulti | Effectus |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` ex involucro resolvit. Dedicatis fasciculis uti potest vel modus dedicatus. In sarcina manual-exemplum accipit solum `auto` vel `singleplayer_lan`. |

- `persistent_dedicated` unum servatum servatfamily/day ut per normalem diu-term servo restarts.
- `temporary_dedicated` ministratorem describit qui incepit ad sessiones fabularum terminatas. Persistit adhuc ordo praeparatus ut hospitem intercipiendo non tacite proximam sessionem revolvat.
- `singleplayer_lan` modo limitatum manualem exemplar output generat. Numquam personalem nisi folder vel invenit vel edit.

An incompossibilis package/experience compositione cessat antequam sandbox scribam.

<a id="rotation"></a>
## Rotation

| Ponere | Tavit valorem |  valores suffulti | Effectus |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Sandbos omnes mutationes apud sileo limitem custodit. |
| `cycle.cycle_length_days` | `17` | `17` signaculum pro profile pone | Compositae omni familiae sarcinae et generatae referentiae. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Usus `cycle.start_day` |
| `cycle.start_day` | `1` | Integrum numerum `1` ad `17` | Primo die cum `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Convolvit ordinem sequentem involutum vel permixtum ordinem continens in dies prorsus semel. |
| `cycle.bootstrap_day` | `1` | Integrum numerum `1` ad `17` | Compatibilitas fallback nonnisi cum `cycle.start_day` deest. Nova figura debet uti `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` vel positivi intervallum | `0` praeparat semel ad satus; positivum valorem dat periodica vigilantiae, cum UE4SS praebet `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Eligit quomodo nova 17-dierum familia incipit currere. |
| `profile_family.selected_family` | `action` | Unum ID in `allowed_families` | Genus usus ex `selected_run` et ut fallback. |
| `profile_family.default_family` | `action` | Una familia ID | Fallback cum ID delectis deest aut irritum est. |
| `profile_family.allowed_families` | Omnes 17 familiae publicae IDs | Quaelibet subsetulus non-vacuus IDs inscriptus | Limites familiarum novorum currentium eligibile. |
| `profile_family.preserve_family_until_day_17` | Boolean: `true` | reservati campi convenientiae; custodi `true`. | Calendarii currentis familiam per omnem dignitatem in 17 dierum ordine permanentem semper servat nec hunc agrum ut toggle legit. |
| `profile_family.reroll_only_after_day_17` | Boolean: `true` | reservati campi convenientiae; custodi `true`. | Calendarii currentis familiae mutationes tantum post singulos dies ID complevit, cuiuscumque dies ultimus est in ordine condito. |
| `profile_family.prevent_repeats_until_rotation_complete` | Boolean: `true` | reservati campi convenientiae; custodi `true`. | Current non repetens logicam piscinam fixa est nec hunc valorem pro toggle legit. |

Dies ordo semel creatus est ad novam familiam currendam et ad `runtime/rotation_state.txt`. Recuperatio et postea restarts reuse illae positiones exactae. Configuratio recensionis ordinem in- gressum non revolvit. Familia mutationes tantum post omnes 17 positiones perfectae sunt.

<a id="recommended-presets"></a>
### Commendatae presetes

Pertinax servo dedicatum:

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

Sessiones dedicatae temporariae cum alio ordine non repetente per novam familiam decurrunt:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN exemplar manuale utitur fasciculo singleplayer ac normaliter relinquit `experience.mode="auto"`. Idem initium ac progressiones eligat licet ante imperium proximum fasciculi generandi. Effingo generatum fasciculum in mundum electum reclusum ante aliam generationem currere si vis runtimum statum et profile onustam mundi manere aligned.

In nova institutione, primus processus non potest tantum diem initium electum praeparare. Postea processus operatur illum. Initium temere vel felis non praetermittendum est ut engine onerationis ordinem.

Exemplum ad certum conditorem currendum:

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

Inanis vel ignota habiles copiae recidit in familiam genealogiam pro incompletam rationem creantis.

<a id="primary-sandbox-path"></a>
## Prima sandbox iter

| Ponere | Typus et valorem exigendi | Fusus usus | Defectum vel commercium |
|---|---|---|---|
| `paths.runtime_dir` | String: `ue4ss/Mods/RandomDay/runtime` | Lege tantum in fonte configuration. | `init.lua`reponit illud cum mod-radix resoluto`runtime/` viam. |
| `paths.web_export_dir` | String: `ue4ss/Mods/RandomDay/web_export` | Lege tantum in fonte configuration. | `init.lua`reponit illud cum mod-radix resoluto`web_export/` viam. |
| `paths.sandbox_path_override` | String vel `nil`: `nil` | Unus litteralis `SandboxSettings.ini` | Scuta tuta vel pervulgata deficiunt scribentes; singleplayer modus primi ante repurgat. |
| `paths.sandbox_candidates` | List chordarum: candidati septem generici | Ordinatus dicatus-servatori fallback candidatorum. | `init.lua`institutionem propriae candidati praependet; primus essc viam vincit. |
| `paths.write_sandbox_mirrors` | Boolean: `true` | Concedit speculis configuratus. | Nullum speculum scriptum est dum speculum inanis est et `world_name=nil`; singleplayer modus copiae `false`. |
| `paths.sandbox_mirror_required` | Boolean: `false` | reservati campi convenientiae; custodi `false`. | Current Scriptor speculis ad libitum tractat nec hunc campum pro porta requisita legit. |
| `paths.world_name` | String vel `nil`: `nil` | Una pars mundi-folder adhibita candidati speculi generici trahunt. | Quidquid extra litteras, numeros, spatia, `_`, vel `-`desinit startup; singleplayer modus negligit. |
| `paths.sandbox_mirror_candidates` | List chordarum: inanis | Speculum libitum exigito. | Uterque Speculum eligibile adhibet sua transactione; speculum defectum non mutat prima victoria. </ P> |

`paths.sandbox_path_override` defaltis ad `nil`. Cum no delendi, RandomDayprima generica cohibetWindowsServer candidati in deprehensis ancoris RandomDay institutionem, deinde omnes candidatos conformatus coercet. Si nemo exsistit, utitur candidato generico primo ancoris institutionem, quae servo institutionem scriptoris destinat:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Hoc fallback non resolvitur ex directorio currentis operandi. Pone `sandbox_path_override` tantum cum institutione tua alia tabella litterali utitur. Indicare uni `SandboxSettings.ini` non directorium. Subsisto servo ac confirmo tabella intra institutionem destinatam ante usum.

<a id="optional-mirrors"></a>
### Libitum Speculi

`paths.write_sandbox_mirrors` naves ut `true`, sed index semitarum speculum vacuum est et `paths.world_name` est `nil`. Itaque defaltis navigiis non extra speculum scribes. Pone eam ad `false` cum institutionem scribere semper debet solum primum scopum determinatum. Cum nullum candidatum vel mundi nomen speculi figuratum vel pretii adhuc tantum fasciculi primitivarum sandbox scribit.

Speculum ingrediuntur tantum cum de industria exactam addis ingressum ad `paths.sandbox_mirror_candidates` vel pone `paths.world_name`. Specula in exemplaribus maxime elaborandis sunt ad officinas quae iter faciendum sandbox secundum mundum legunt. Non sunt substituti ad rectam primam viam conformandi.

Antequam ut speculum:

1.  servo desine;
2. sed exactam tabellam legit;
3. scopo confirmandum est intra institutionem in animo;
4. retro eum;
5. adam viam illam tantum addas;
6.

Exemplum primi ante speculum sine speculo:

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

`<server-root>` est placeholder. Repone illita; noli evulgare machinam specialem viam.

<a id="non-disableable-safety-locks"></a>
## Non-Disableable Salutis Seras

| Ponere | requiritur valor | Means |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Conserve exemplar verificatum antequam tabellam primariam reponat. |
| `sandbox.restore_last_good_on_failure` | `true` | Conatus automatic recuperatio post defecit tortor vel readback. |
| `external_mods.patch_only_existing_keys` | `true` |  Noli invenire ignotam occasum in alio tabellae moduli. |
| `external_mods.backup_before_write` | `true` | Scopo bytes conserva antequam aptator transactionalis recensere nibh. |

RandomDaysatum recusat si quis ex his quattuor valoribus non sit `true`. Serae tutae sunt, non operante toggles subnixa. Noli distrahere eas, in evolutione vel sollicitudine inclusis, quia hoc modo mutatur terminus defectivus quem scriptor et adaptor probat.

`sandbox.force_rewrite_every_supervision_tick` normale remanet occasus et naves ut `false`, quae tabellam arenam integram iam congruens relinquit. a Boolean acceptat. Ponens ad `true` eundem erum pa- bytes per scriptorem denuo cogit; non proficit in family/day. Hoc tantum utere ad testam receptam terminatam, quod iteratae scribens plus operandi tergum creat.

<a id="optional-mod-adapters"></a>
## Libitum Mod Adaptors

| Ponere | Tavit valorem | Means |
|---|---:|---|
| `external_mods.enabled` | `true` | Permitte adaptatores conformatus inspicere singula scuta installed. |
| `external_mods.optional_by_default` | `true` | Mods Absentis vel incompossibilis ad libitum non angustos RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Requiritur tuta serura; startup non mutatum. |
| `external_mods.backup_before_write` | `true` | Requiritur tuta serura; startup non mutatum. |
| `external_mods.adapters` | Quatuor IDs publicus adaptor | Limites quos RandomDay-owned adaptatores currere possunt. |

 Aptorem ID ex albo remove ut solam integrationem relinquas sine inactivare vel inaugurari tertiam partem mod. In singleplayer/LANsarcina disables omnem adaptatorem cuiuscumque indicem.

`external_mods.optional_by_default=false` figuratum facit adaptatorem alium quam `applied` vel `already_current`deficiet aggregatum adaptatorem effectum. Res prima sandbox revolvere non facit. Serva amet `true`nisi auctor causam probatam habet integrationem requirendi.

Vide[Subnixus Mod adaptors](APTATORS_SUBNIXUS.md)

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### Libitum Chaotic Spawn Engine scope agros

`world_scope` suppeditat quinque ad libitum RandomDay occasus extensio tantum cum Engine agnito Chaotic Spawn `DynamicSpawns/SharedData.lua` layout agros illos continet. Hoc separatum non est mod or download:

| Ponere | Tavit valorem | Accommodator effectus |
|---|---:|---|
| `world_scope.enabled` | `true` | Requisita ad libitum RandomDay porta mundi-scoporum intus agnita DynamicSpawns layout. |
| `world_scope.affect_open_worlds` | `true` | Apertos mundos includit nisi scopo mod applicat regulam mundi conservatam. |
| `world_scope.unknown_world_policy` | `allow` | Requisita `allow` vel `block` cum scopo mod inserere mundum non potest. |
| `world_scope.log_scope_decisions` | `true` | Requisita scopo-mod logging pro decisione scopi eius. |
| `world_scope.protected_worlds` | Inanis index | Commenta distingue-separata exemplaria in scopo mundi conservata in layout. |

Hones valores adaptores initus sunt, non mundus colum per RandomDay's sandbox scriptor. Effectum sortiuntur solum cum separatim inauguravit chaotic Spawn Engine layout iam completum ad libitum RandomDayagro pone et tradit `applied` vel `already_current`. Engine Spawn Chaotic manet author utendo his agris in runtime. Ordinarium institutionem sine extensione agri non mutatur.

 Omnes quinque valores inputs adaptores sunt. `unknown_world_policy` tantum accipit documenta valorum target`allow` vel `block`; incognitum scopum layout est omittendum. Serva `protected_worlds`vana documentis exempla. Si operans exemplaria locali utitur, in screenshots, exitibus, artificiis includi non debent.

<a id="player-messages"></a>
## Player Messages

Numerus deditus configurationis servo compacto animadversiones et brevem lineam cotidianam dat. XXX seconds ante primum transitum exspectat, histriones in singulis 15 secundis nuper coniunctis reprimit, et post 10 seconds ad notitiam ante lineam cotidianam observat.

| Ponere | Tavit valorem |
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

Nuntius validationum longitudo fines fons coercet. Non succedit visualis experimentum in omnem clientem resolutionem.

 Valores Timing non-negativi numeri milliseconds nisi `daily_joke_delay_seconds`. Nuntius debilis vel passim occasus animadversiones clientes supprimit sine mutatione sandbox praeparationis. Console mandatum relatus est solum cum occasu et UE4SS tracto in promptu sunt. Serva criticas valores in gradibus transvectionibus navigiis, nisi cliens nominatus experimentum aliud valorem probat.

`max_line_chars` ad 8 per 64 characteres ab interprete coagmentatur. Tres lineae numerales occasus limites iungunt monendo, note output respectively; valores uit par numerus lineae fons praesto. Hos quattuor fines in defaltis custodies, nisi probatio clientis-positii occasum angustiorem probat.

Exemplum cum nuntiis erret:

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
## Profiles et Sandbox Pretio

 Familiae fons lima sub `RandomDay/Scripts/ax_profiles/families/` definiunt 17 dies integros per familiam. Documenta generatae sub `docs/profiles/`respectus est output, non fons css.

Usus [Sandbox clavem referentia](PROFILES/SANDBOX_OCCASUS_CLAVES.md) pro speciebus, iugis, defaltis profanis uit, et valores invariatos manens. Fontem profano edito, omnes coniunctiones 289 regenerare et convalescere; non repeciare unum generatae Markdown vel JSONrecordare manu.

<a id="customize-the-shipped-profile-defaults"></a>
### Customize in uit profile defaltis

Open:

```text
RandomDay/Scripts/ax_config/server.lua
```

Scribe hunc stipitem sub `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Haec sunt RandomDay's electiones incipiens, non incommutabiles abioticae Factoris praecepta. Aut modum pone `true` vel `false`. Pone unumquemque ad valorem totius numeri e `0` ad `1000`. Siste ludum vel servo dedicato antequam tabellam edat, eam serva et deinde rursus ut Lua novam configurationem onerat.

RandomDay hunc stipitem legit quotiescumque 17 personas in familia aedificat. Valores electi ideo ad omnem familiam ac diem applicantur, inter profiles praeparatae post conversionem et profile reaedificatae post initium servitoris. Non opus est ut 289 tabulas profile recenseas aut referat profile regenerare.

Vivamus solum mutans`SandboxSettings.ini` temporalis est quia profile proximus praeparatus generatur ex `server.lua`. Typi invalidi, claves ignotae, vel valores extra `0..1000` profile constructionem siste cum nomine configurationis errore pro tacito reverti ad defaltam.

Profile relatio genitus pergit ostendere defaltis amet. Remissio est relatio, non exemplum unius figurae privatae servientis.
