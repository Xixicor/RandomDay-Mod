<a id="glossary"></a>
# Glossarium

> **Canonicum Anglicum fontem:** [GLOSSARY.md](../../GLOSSARY.md).  Haec documenta localia mandata exacta, semitas, claves, valores, hashes, nomina fasciculi conservat. Si forma technica differt, fonte Anglico utere.


Hoc vocabularium canonicum pro RandomDay documentis. Procedendi nexus ad has definitiones pro eodem statu reducendo in pluribus ducibus. Regulae schematis speciales campi in [Runtime outputs](RUNTIME_OUTPUTS.md).

| Term | Plane significatio | Respondet technicam significationem |
|---|---|---|
| Profile activa | Praecepta hodiernae sessionis utitur. | The family/day profile notatur in RandomDay titulum lege ex sandbox in processu startup. |
| Profile Paratus | Regulae proximae sessionis paratae sunt. | The complete family/day profile cuius scopum bytes convalidandum ac relegatum transierunt et cuius rotatio status commissus est. Non active ante sileo readback. |
| Restituta | Praeparatio defecit et prior probatus bytes repulsus est. | Res gestae incassum prospere reverti ac lecta terga detenti originalis seu verificatae receptae rescriptum. |
| Next-reboot queue | electio praeparata altera pro tabernus habita. | `next_reboot_queue`semel per processum et reuses eligit ut per visum optionis tabernus. |
| Bootstrap | Prima praeparatio cum titulus activus nullus exstat. | Selectio felis vel temere primo die ex familia eligibili; `cycle.bootstrap_day` tantum convenientiae fallback. |
| Genus | A 17-diei ludi progressionis. | Regii unius introitus et moduli familiares qui exacte 17 integras personas producit. |
| Rotation | A ingrediuntur per familias eligibiles. | Status notus a `rotation_id`, cum promptu, manente et peracto indices familiae. |
| Run | Una familia per totum diem XVII IDs. | Res familiares ligatae series quae a `run_id`; familia clausa manet donec omnis ordinis positio perseuerantiam perficiat. |
| Sessionis modus | Quomodo auctor hac sarcina utitur. | `persistent_dedicated`, `temporary_dedicated`, vel `singleplayer_lan`; sarcina modus adhuc filesystem terminus regens. |
| Dies ordinis | Recte ordo usus unius familiae detegere. | Perseuerantia 17 numerorum permutatio. Sequentialis modus adligat ab initio suo die; temere modus terit semel sine repetitione. |
| Marker | Identitas in tabella sandbox condita. | `RANDOMDAY_*`agros cum profano perfecto redditos et sequenti processu satus lege. |
| Paratus paratus | Scriptura et status patrandi successit. | `prepared_ready=true` feliciter eventum sandbox requirit et nullum defectum status committendi. activation non probat. |
| iam vena | Scopus iam bytes intentum habet. | Profilia nulla reddita scopo aequet, sic RandomDay verificat last-good/mirrorsine rescribens opera primaria. |
| Degradatus status pervicacia | Sandbox bytes successit sed gyrationis book custodia non fecit. | `profile_status=degraded_state_persistence`; adaptors et paratus profile nuntius exsultaverunt. |
|  fasciculi pendentium | Candidate bytes nondum promovetur. | `<target>.randomday.pending` scripta, relecta, convalescit ante tortor. |
| Tabula Rollback | The original tentum in reposito. | `<target>.randomday.rollback`, productionem restituere ad promotionem vel sanationem defectum. |
| Operatio tergum | A vetustate exemplum ante mutationem factae. | A verificata lima sub `runtime/backups/` pro prima, speculi, seu transactioni adaptor. |
| Novissima bona | Antiqua sandbox pro recuperatione accipitur. | `runtime/last_good/SandboxSettings.ini` plus `manifest.lua`; par records profile identitatem et Nullam. |
|  Speculum | Libitum secundum scopum sandbox. | An expresse figuratus seu scopus mundi nomen-sumptum post principale per suum negotium scriptum. |
| Package mode | Instrue terminus lectus dignissim accumsan. | `dedicated_server` vel `singleplayer_manual` ex `.randomday_mode`. |
| Manualis-copiae | Singleplayer/LAN generatio sine inventione. | `singleplayer_manual`scribit solum intra`runtime/singleplayer_manual/` ac disables adaptors et specula. |
| Adaptor | RandomDay-owned destinata pro alio modulo inaugurato. | A subscriptio-gatum transactionis consilium quod updates exsistentes destinationes solum post tergum et convenientiam compescit. |
| Agnovit layout | Aptatoria fasciculi aptator figurae scribendae recepta est. | Omnes subscriptio requisita claves et clypei adsunt; filename solus insufficiens est. |
| `not_installed` | Scopo libitum non inventum est. | Tutus adaptor exitus nulla mutatione. |
| `skipped_incompatible` | A scopum exstat, sed figura destituitur. | Tutus adaptor exitus nulla mutatione, quia subscriptio integra non congruit. |
| `failed_rolled_back` | Muto defecit et prior bytes integra sunt. | Adaptor transactiones ante mutationem vel omnia documenta affectata defecerunt ac restituta sunt et verificabantur. |
| `rollback_failed` | Automatic recuperatio verificari non potuit. | Dura-stop adaptor status requirit manualem recuperationem a scripti tergum. |
| Dictionary | Mapping a rudibus valoribus ad explicationes publicas. | `randomday_dictionary_v2`, genitus ex `dictionary.lua` et inclusa in runtime statu output. |
| Translation | Humanum visum ex valores profano rudis derivatos. | Bounded domain scores, facta, summaria, nuntiisque generata ex `translation.lua`; rudis values ​​​​manet auctoritas. |
| Publicus status | Sanitized apparatus-readable operator summary. | `web_export/today.json`usura `randomday_public_status_v2`. |
| Runtime status | Retineo apparatus localis-readable snapshot. | `runtime/current/randomday_status.json`usura `randomday_runtime_status_v2`. |
