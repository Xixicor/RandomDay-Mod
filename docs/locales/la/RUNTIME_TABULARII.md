<a id="locate-runtime-files-and-status"></a>
# Locate fasciculi runtime et status

> **Canonicum Anglicum fontem:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md).  Haec documenta localia mandata exacta, semitas, claves, valores, hashes, nomina fasciculi conservat. Si forma technica differt, fonte Anglico utere.


Hic est via canonica inventarii usus ab operatoribus et fonte tracabilitatis. Respondet ubi fasciculus est, qui scribit, quando mutat, quousque manet, et quae receptae partes inservit. In [runtime output reference](RUNTIME_OUTPUTS.md) Schemata habent, significationes campi, civitates inanes, et machinae interpretationem.

Viae omnes in hoc duce relati sunt ad inauguratum `RandomDay/`folder nisi aliter dictum est. Runtime outputs are created after installation; exclusi sunt a ZIPs emissione.

<a id="operator-file-map"></a>
## Operatoris fasciculi tabula

| Path | Producentis et felis | Renovatio et retentio | Significatio et recuperatio |
|---|---|---|---|
| configuratus primaria`SandboxSettings.ini` | `ax_sandbox/writer.lua` post profile serializationem et sanationem in modo dedicato. | Transactio substituitur; scopum est operator felis vel institutionem propriae. | Profile in proximo initio. Sessionem currentem servat suas iam onustas regulas. |
| Speculum configuratum`SandboxSettings.ini` | Sandbox scriptoris post felicem exitum primariam cum speculo explicito eligitur. | Optimus repositorium transactionalis. | Secundarium exemplum tantum; Speculum prima-via configuratione non reponere rectam. |
| Agnovit adaptor scopum | `ax_external/bridge.lua`postquam integram tabularum subscriptionem congruentem. | C. assignationes exsistens cum unico tergum mutatur. | Separatim inauguratus mod conformatio; inspicere adaptatorem sex-statum sine prima sandbox. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` prosperam sandbox transactionem. | Restituo transactioniter post quamlibet praeparationem receptam. | queue bookkeeping. Si unreadable, RandomDaysaltem ultimum bonum probat. |
| `runtime/rotation_state.last_good.txt` | Calendarium transactionis tergum. | Reponitur cum status hodierna renovatur. | Priorem statum readable; eam in diagnosi et updates conservare. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` bene gesta, pertinacia degradata, vel defectum scribens. | Reposito transactionaliter in singulis status passibus. | Canonicum exstructum active/prepared, transactiones, translationes, summarium adaptator. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` iuxta statum. | Reposito transactionally. | Schema`randomday_runtime_dictionary_v2`: vocabula, occasus, translationes, ditiones, involucrum modi, ac delectu civitates. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` iuxta statum. | Reposito transactionally. | Logamentum praevisum accuratae ad operator recensendum; clientem reddere non probat. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` post verificatum primarium sandbox eventum. | Reposito transactionally. | Sandbox Last pro noto bono accipitur. Tantum utere cum manifesto. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua` post sandbox snapshot succedit. | Reposuit transactionally ut par cum sandbox snapshot. | Version, profile ID, nomen, dies, contentus Nullam et tempus scribe in ultimo bono tabellae. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Primaria seu Speculum scriptoris ante mutationem. | Unica operandi presul; RandomDay hoc non putat. | Verified pre-bytes scribe. Operatores retentionem habent post recensionem. |
| `runtime/backups/external_<operation>/...` | Pone adaptator ante omnem mutationem adaptor. | Unicum operandi presul; nullae latae Aa. | Unum exemplar verificatur omnium scopo consiliariorum adaptorum. |
| `runtime/pending/` | Creatus runtime presul setup. | Ligula; vena prima transactions utere fratrem sidecars loco. | Nolite inani indice pro probatione praeparationis tractare. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Sandbox scriptor in `singleplayer_manual`modo. | Restituo transactionally cum sarcina manuali decurrit. |  Fasciculus completus operanti inspicere et exscribere manually in unum mundum reclusum. |
| `web_export/today.json` | `ax_web/export.lua` post singulas praeparationes. | Reposito transactionally. | Contractus apparatus-readable active/prepared et writer/adapterresult. |
| `web_export/today.html` | `ax_web/export.lua` feliciter export pass. | Reposito transactionally. | Ab eodem transitus hominis sententia; non independens probationem. |
| `UE4SS.log` | UE4SS et `ax_core/log.lua`. | Acta per UE4SS, non RandomDay. | Startup, profile delectus, scribe, adaptor, nuntius, status, lineae defectus praefixis cum `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Agnosce vacua et defecit lima civitatibus

- A absentis primigenii seu speculi scopum creari potest. Inrita profile, pendens scribe, promotionem, seu productio defectionis lecta terga non parata est. Speculum defectum non mutat primum effectum acceptum.
- `runtime/singleplayer_manual/SandboxSettings.ini` creari potest in primo cursu manuali. Defectio generationis in statu visibili et output log manet.
- An unreadable `rotation_state.txt` ad ultimum bonum statum recidere potest vel ad bootstrap titulum substructum. Defecit statum committere A producit `degraded_state_persistence`.
- `runtime/last_good/` abesse potest antequam primum scopum verificatur. Si paribus renovatio manifesta deficit, RandomDay priorem par acceptum reddit.
- `runtime/backups/mirror_<operation>/` est speculi specialium tergum locus. Nullus primus aut speculum tergum lima existit, cum ille scopum non ante transactionem existit.
- Mutationis adaptator non incipit cum eius tergum creationis vel lectitati deficit.
- Current status, dictionary, aut praevisum abesse potest cum status runtime output est unavailable vel imperfectus.
- An `export_failed``today.json` loco. A sandbox defectum updates JSONsed novum defectum HTML page; compare timestamps cum `UE4SS.log`.
- A pigra sidecaro tollitur antequam novum conatum; Tersus defectum patitur transactionem. Si utrumque scopum productio et sidecar revertitur, RandomDay receptam servat ad recensendum.
- No `[RandomDay]`initium lineae in `UE4SS.log`

<a id="transaction-sidecars"></a>
## Transactionis sidecars

Res transactionalis scriptor creare potest fratrem files iuxta signum:

| Pattern | State | actio operantis |
|---|---|---|
| `<target>.randomday.pending` | Candidate bytes ante promotionem. | Norte promocione remota. Serva eam si per defectum tradit pendens tersus vel readback molestiam. |
| `<target>.randomday.rollback` | Original bytes subrogando tenuit. | Nolite restituta in defectum vel post veri- tatem sublata. Noli eam delere cum scopus praesens est; coniunctio illa requirit recensionem. |
| `<target>.randomday.restore.pending` | Candidate bytes in adaptoris restitutione. | Conserve adaptatorem tergum si restitutio deficit. |
| `<target>.randomday.restore.rollback` | Recuperatio bytes habita in adaptoris restitutione. | Conserve et obsiste servitium affectatum, si tersus vel restitutus subsignatus est. |

 Haec fasciculi extra arenam dedicatam existere possunt vel scopum adaptatorem separatim inauguratum. Eorum praesentia status est transactionis, non evidentiae novae profile factae activae.

<a id="interpret-file-contents"></a>
## Interpretare documenta contenta

Usus [Runtime publica et output referentia](RUNTIME_OUTPUTS.md) ad integrum `rotation_state.txt`, `randomday_status.json`, et `today.json` schemas. Quae relatio etiam civitates inanes, significationes defectus, dictionarium output possidet, et regula quae status praeparatus status activae non est. Utere [status et error referuntur](STATUS_ATQUE_ERROR_REFERENCE.md) cum machina exacta valorem actionem operatorem requirit.

<a id="rotation-state-fields"></a>
### Rationes rotationis status

Vide canonicos[revolutionis schema](RUNTIME_OUTPUTS.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Current status schema

Vide canonicos[runtime statusJSON schema](RUNTIME_OUTPUTS.md#runtime-status-json).

<a id="web-export-schema"></a>
### Tabulae exportationis schema

Vide canonicos[publici statusJSON schema](RUNTIME_OUTPUTS.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Recipe recuperationem testimonio

RandomDay scribit praesentem statum, statum currentem, statum ultimum bonum, et sententias interretiales. Singulares operationes tergum directoria creat et vetera non delet. Retentionis consilium extra processum currens elige, sed numquam recentissimas recuperationis documenta delebit dum scriptionis, lectae, status, aut exitus reverti dubitatur.
