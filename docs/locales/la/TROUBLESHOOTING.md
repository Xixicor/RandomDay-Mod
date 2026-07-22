<a id="troubleshooting"></a>
#  Troubleshooting

> **Canonicum Anglicum fontem:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md).  Haec documenta localia mandata exacta, semitas, claves, valores, hashes, nomina fasciculi conservat. Si forma technica differt, fonte Anglico utere.


Desine primo incassum reprehendo. Serva hodiernam sandbox, `runtime/`, `web_export/` et pertinentes `UE4SS.log` ante conatum recuperare.

<a id="try-these-common-fixes-first"></a>
## Conare haec communia signa prima

1. **RandomDay numquam apparet:**confirma`RandomDay` folder directe intus est `ue4ss/Mods`, da `RandomDay : 1` in `mods.txt` et incipe semel.
2. **Sessionis hodiernae servabat regulas suas antiquas:** hoc normale est. RandomDay profile proximum parat; ludum onerat in post initium.
3. **Eadem figura retinet reverti:**`SandboxSettings.ini`. Uno auctore fasciculo sandbox utere et nomina activa et praeparata in `web_export/today.html`.
4. **Mod ad libitum profano non secutus est:** open [modo ad libitum suffulti](APTATORS_SUBNIXUS.md). A absentis, debilis, vel incognitum ad libitum mod is immutatus est.
5. **RandomDayrefert defectum scribentis vel restaurationis:** desine coram alio sileo, serva `runtime/backups/` et sequere nominatam sectionem infra.

Si qui problemata illae quinque impedimenta non agnoscunt, cum arbore enucleata pergunt.

<a id="choose-the-first-failed-stage"></a>
## Elige primum scaena defecit

Primo versu utere quod congruit quod actu probare potes. Gravissima explicatione non incipe, nec in unum diagnosin outputus extraneus iungas.

| Quae observare potes | Reprehendo primum | Perge cum | exitus Expectatus |
|---|---|---|---|
| No `[RandomDay]` incipit linea in `UE4SS.log`. | Instrue radix, involucrum venalicium, `mods.txt`, et UE4SS Luae startup. | [Rede absentis RandomDayinitium](#restore-a-missing-randomday-start) |  Lineae initium unum nominat remissionem et sarcinam modum, seu defectus oneratione finitur. |
| RandomDay refertus erat, sed nihil profanum in promptu erat. | Primum initium, figurae, scopo, negotii, seu status erroris. | [Recipe ex incassum praeparatione](#recover-from-failed-preparation), deinde [status et error referuntur](STATUS_ATQUE_ERROR_REFERENCE.md) | Unum codicem exactum sequentem actionem tutam agnoscit. |
| Profanum paratum exstat, praecepta autem currentia non mutaverunt. | Activa et praeparata IDs in `today.json` vel `today.html`. | [Confirma terminum sileo](#confirm-the-restart-boundary) | Sessio hodierna activa manet; paratus profile post initium expectat. |
| Dies 1 vel alius dies repetit post restarts. | Sandbox signatores ante panel initium, post initium panel et post praeparationem. | [Consiste repetita praeparatio](#stop-repeated-preparation) |  Auctoritatis scriptor vel rescribere punctum idem est. |
|  Sandbox sanus est, sed modus ad libitum exsultavit vel defecit. | Singulorum adaptor exitus et convenientiae documenta. | [Diagnose aptator omittendus](#diagnose-a-skipped-adapter) vel [Recipe adaptatorem defectum lapsus](#recover-an-adapter-rollback-failure) | sanitas adaptans independenter a sanitate sandbox decernitur. |
| Manualesingleplayer/LAN fasciculus deest. | Package modum et limitatum output folder. | [Desideratum Generare singleplayer/LAN](#generate-a-missing-singleplayerlan-file) | Tabella generatur intus RandomDay non invenio nisi personale. |
| Solus lusor-adversus nuntius deest vel male inligat. | Nuntium-transiens index, fons praevisus et limites documenti sunt. | [Diagnose nuntium problematis](#diagnose-a-message-problem) | Sententia probatur quin tractatur pro profile probatione. |

<a id="follow-the-safe-diagnostic-order"></a>
### Sequere tutum ordinem diagnostica

1. Tabula current documenta conserva ante mutans tabulas.
2. Probe num RandomDay loaded.
3. Primum scaenam reperi quae exitum documentum non attigit.
4.  Effingo statum vel errorem valorem ex runtime output.
5. Tabulae paris utere infra pro uno responso tuto.
6. Recita scopum et gyrationis statum ante aliud initium.

Si nullus ordo compositus, utere [Runtime publica And Output Reference](RUNTIME_OUTPUTS.md) cognoscendi producentis et campi significationem ante mutans configurationem.

<a id="restore-a-missing-randomday-start"></a>
## Rede absentis RandomDayinitium

**Maxime terminatae causae:** iniuriam extrahendi layout, mod erret, iniquum sarcina modum, vel UE4SSLae ingressum punctum non oneravit.

**Reprehendo:** confirma `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version`, et `RandomDay/Scripts/main.lua`; confirmare `RandomDay : 1` in `mods.txt`; quaerere `UE4SS.log` for `[RandomDay]`.

**Proventus Expectatur:** Lineae initium unum nominat remissionem identitatis ac sarcina modus.

**Tuta altera actio:** layout seu capacitatem corrigere dum desiit, tunc incipe semel.

**Noli colligere:** no RandomDaylinea lusum aut profile bug non probat.

<a id="confirm-the-restart-boundary"></a>
## Confirma terminum sileo

**Maxime terminatae causae:** normales mores proximo-sileo.

**Reprehendo:** activam et paratam comparafamily/day in `web_export/today.json` vel `today.html`.

**Proventus Expectatur:** profile parati ab activo profile differt, vel explicite separat.

**Tuta altera actio:**sileo tantum cum paratus es illud movere, tum activum titulum comprobare.

**Noli colligere:** profile praeparatum ante post-sileo readback activam non est.

<a id="stop-repeated-preparation"></a>
## Consiste repetita praeparatio

**Maxime terminatae causae:** activum RandomDay titulus deest quod tabulae ministri vel aliud instrumentum rescripserunt `SandboxSettings.ini` in startup.

**Reprehendo:** fasciculum sandbox et eius RandomDay titulum statim ante initium, post tabulam incipit, et post RandomDay tabellam praeparat.

**Proventus Expectatur:** tabella praesens tabernus proximae titulum paratum retinet.

**Tuta altera actio:** unum principium sandbox auctoritivum configurare et inactivare diversam tabulam rescribe.

**Noli colligere:**Dies iteratum 1 non probat familiam selectam male temere esse.

<a id="recover-from-failed-preparation"></a>
## Recipe ex incassum praeparatione

**Maxime terminatae causae:** pendenti scribe, tergum, promotionem, productionem readbackum, sanationem, vel reverti defecit.

**Reprehendo:** primam legunt `[RandomDay] [ERROR]` lineam nominatam operandi ac serva tergum. Inspice `runtime/last_good/manifest.lua` antequam lima sandbox utendo.

**Proventus Expectatur:** vel prior lima verificatur ut restitutus vel effectus clare tradit defectum restaurationis.

**Tuta altera actio:** servo cessaverunt et sequere[manualis recuperatio](OPERATIONES.md#manual-recovery).

**Noli colligere:** documenti tergum solam exsistentiam mundi activi statui intento non probat.

<a id="diagnose-a-skipped-adapter"></a>
## Diagnose aptator omittendus

**Maxime terminatae causae:** mod deest aut tabella subscriptione subnixa non congruit.

**Reprehendo:** legite adaptatorem exitum et inauguratum versionem et layout cum [Subnixus Mod adaptors](APTATORS_SUBNIXUS.md).

**Proventus Expectatur:** `not_installed` scopo absenti vel `skipped_incompatible` scopo incognito.

**Tuta altera actio:** tabellam immutatam relinquere, inactivare adaptatorem, vel exactam versionem ab auctori suo fundatam instituere.

**Noli colligere:**

<a id="recover-an-adapter-rollback-failure"></a>
## Recipe adaptatorem defectum lapsus

**Maxime terminatae causae:**

**Reprehendo:** scopo serva, fratrem pending/rollback lima, adaptor status, ac novissimus adaptor tergum sub `runtime/backups/`.

**Proventus Expectatur:**exitus est `rollback_failed`, non `applied`.

**Tuta altera actio:**sede affectusmod/server et restitue verificatum tergum manually coram alio deducito.

**Noli colligere:** RandomDay's sandbox primus effectus non probat separatum scopum adaptorium sanum.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Desideratum Generare singleplayer/LAN

**Maxime terminatae causae:** involucrum dedicatum inauguratum est, modus inscriptionis invalidus est aut RandomDay non aperitur.

**Reprehendo:** `.randomday_mode` continere debet`singleplayer_manual`; deinde confirma RandomDay lineam incipere et inspicere `runtime/singleplayer_manual/SandboxSettings.ini`.

**Proventus Expectatur:** tabella intus exstatRandomDay folder tantum.

**Tuta altera actio:** rectam sarcinam installare nitide et semel incipit.

**Noli colligere:** RandomDay non quaeres aut scribes mundi scopum pro te.

<a id="diagnose-a-message-problem"></a>
## Diagnose nuntium problematis

**Maxime terminatae causae:**nullus lusor nihil validus praesto erat ad transitum accedentium, monitio oneraria inaccessibilis erat, aut ostentatio clientis textum aliter involvit.

**Reprehendo:** inspicere `[RandomDay]`relatum ini et compara fontem nuntium cum documentis longitudinis limitis.

**Proventus Expectatur:**the runtime nuntiat an nuntium praeter- currebant; radix sanatio maximam longitudinem refert.

**Tuta altera actio:** cognoscere in proposito clientis solutionis. Serva lusum et verificationem profile separatum ab nuntius proventuum.

**Noli colligere:** nuntius visibile non probat arenam profile applicatam, et nuntius absentis non fallit praeparationem.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Quatuor electiones profile latae ad valores uitales redierunt

**Maxime terminatae causae:** tantum generatum `SandboxSettings.ini` editum est, vel `server.lua`mutatus est dum idem Luae processu adhuc currit.

**Reprehendo:** ludum cessare vel servo dedicato aperi `RandomDay/Scripts/ax_config/server.lua` et servatos confirma`sandbox.profile_overrides` clausus continet quattuor valores intentos.

**Proventus Expectatur:**post proximum initium, omnia nuper paratafamily/day profile valores electos continet. Postea profile conversiones et server incipit eodem stipite utentes.

**Tuta altera actio:** truncum corrige, semel incipe, et profile paratam inspice. Non repeciare solum generatum sandbox fasciculum quod postea praeparatio restituet.

<a id="look-up-an-exact-status"></a>
## Respice statum exactum

Secundum decisionem arboris scaena deficientem agnoscit, accuratam `status`, `transaction_status`, `rollback_status`, vel `error` valorem ex educendo runtime. Utere [status et error referuntur](STATUS_ATQUE_ERROR_REFERENCE.md) significationem suam et responsionem tutam operator. Similia verba in tabella vel console substituta non est pretii exportati.

Contributor solum testium ambitus defectis in [ radicem divulgationis](REMITTE_VALIDATION.md#avoid-validation-environment-pitfalls) non in operante iter recuperandi.
