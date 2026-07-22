<a id="locate-runtime-files-and-status"></a>
# Tafuta faili na hali wakati wa utekelezaji

> **Chanzo cha Kiingereza cha Canonical:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Hii ni orodha ya njia ya kisheria inayotumiwa na waendeshaji na ufuatiliaji wa chanzo. Inajibu faili iko wapi, ni nani anayeiandika, wakati inabadilika, inabaki kwa muda gani, na ni jukumu gani la uokoaji linatumika. The[rejeleo la pato la wakati wa utekelezaji](ZANA_ZA_MUDA_WA_KUENDESHA.md) anamiliki michoro, maana za uga, hali tupu, na tafsiri ya thamani ya mashine.

Njia zote katika mwongozo huu zinahusiana na zilizosakinishwa `RandomDay/` folda isipokuwa imeelezwa vinginevyo. Matokeo ya Runtime huundwa baada ya ufungaji; hazijajumuishwa kwenye ZIP zilizotolewa.

<a id="operator-file-map"></a>
## Ramani ya faili ya opereta

| Njia | Mtayarishaji na kianzishaji | Sasisha na uhifadhi | Maana na ahueni |
|---|---|---|---|
| Msingi wa msingi uliosanidiwa `SandboxSettings.ini` | `ax_sandbox/writer.lua` baada ya uthibitishaji wa wasifu na uthibitishaji katika hali maalum. | Imebadilishwa kwa shughuli; lengo limesanidiwa na opereta au linatokana na usakinishaji. | Kamilisha wasifu kwa mwanzo unaofuata. Kipindi kinachoendeshwa huweka sheria zake ambazo tayari zimepakiwa. |
| Kioo kilichosanidiwa `SandboxSettings.ini` | Mwandishi wa kisanduku cha mchanga baada ya matokeo ya msingi yaliyofaulu wakati kioo chafu kinapostahiki. | Ubadilishaji wa shughuli bora zaidi. | Nakala ya pili pekee; kioo hakichukui nafasi ya usanidi sahihi wa njia ya msingi. |
| Lengo la adapta inayotambulika | `ax_external/bridge.lua` baada ya ulinganishaji kamili wa saini ya mpangilio. | Kazi zilizopo hubadilishwa kwa kutumia nakala rudufu za kipekee. | Usanidi wa mod uliosakinishwa tofauti; kagua matokeo ya adapta ya serikali sita bila kisanduku cha msingi cha mchanga. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` baada ya muamala uliofaulu wa sandbox. | Ilibadilishwa kwa shughuli baada ya kila maandalizi yanayokubaliwa. | Uwekaji hesabu kwenye foleni. Ikiwa haisomeki, RandomDay hujaribu hali nzuri ya mwisho. |
| `runtime/rotation_state.last_good.txt` | Chelezo cha shughuli za Kalenda. | Ilibadilishwa wakati hali ya sasa inasasishwa. | Hali ya awali inayosomeka; ihifadhi wakati wa utambuzi na masasisho. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` baada ya kufaulu, kuendelea kuharibika, au kushindwa kuandika. | Imebadilishwa kwa shughuli kwenye kila pasi ya hali. | Muundo wa kisheria active/prepared, muamala, tafsiri, na muhtasari wa adapta. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` kando ya hali. | Imebadilishwa kwa shughuli. | Taratibu `randomday_runtime_dictionary_v2`: maneno, kuweka tafsiri, vikoa, hali za kifurushi na hali za uteuzi. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` kando ya hali. | Imebadilishwa kwa shughuli. | Onyesho la kuchungulia la ujumbe wenye mipaka kwa ukaguzi wa opereta; haidhibitishi uwasilishaji wa mteja. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` baada ya matokeo ya kisanduku cha msingi yaliyothibitishwa. | Imebadilishwa kwa shughuli. | Sanduku la mchanga la mwisho lilikubaliwa kama linalojulikana vizuri. Tumia tu na faili yake ya maelezo. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua` baada ya picha ya kisanduku cha mchanga kufaulu. | Ilibadilishwa kwa shughuli kama jozi na muhtasari wa kisanduku cha mchanga. | Toleo, kitambulisho cha wasifu, jina, siku, heshi ya maudhui, na wakati wa kuandika wa faili iliyoboreshwa mwisho. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Mwandishi wa msingi au kioo kabla ya mabadiliko. | Saraka ya operesheni ya kipekee;RandomDay haikatiki. | Baiti za kuandika mapema zilizothibitishwa. Waendeshaji wanamiliki uhifadhi baada ya ukaguzi. |
| `runtime/backups/external_<operation>/...` | Daraja la adapta kabla ya mabadiliko yoyote ya adapta. | Saraka ya operesheni ya kipekee; hakuna kupogoa kiotomatiki. | Nakala moja iliyothibitishwa ya kila adapta inayolengwa. |
| `runtime/pending/` | Imeundwa na usanidi wa saraka wakati wa utekelezaji. | Imehifadhiwa; shughuli za kimsingi za sasa hutumia kando kando badala yake. | Usichukulie saraka tupu kama uthibitisho wa utayarishaji. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Mwandishi wa Sandbox katika `singleplayer_manual` modi. | Ilibadilishwa kiuamala wakati kifurushi cha mwongozo kinapofanya kazi. | Kamilisha faili ili opereta aikague na kunakili mwenyewe katika ulimwengu mmoja uliosimamishwa. |
| `web_export/today.json` | `ax_web/export.lua` baada ya kila matokeo ya utayarishaji. | Imebadilishwa kwa shughuli. | Inaweza kusomeka kwa mashine active/prepared na writer/adaptertokeo. |
| `web_export/today.html` | `ax_web/export.lua` baada ya kufanikiwa kutuma pasi. | Imebadilishwa kwa shughuli. | Mwonekano wa mwanadamu unaotokana na mpito sawa; si uthibitisho huru. |
| `UE4SS.log` | UE4SS na `ax_core/log.lua`. | Inadhibitiwa na UE4SS, si RandomDay. | Anzisha, wasifu uliochaguliwa, andika, adapta, ujumbe, hali, na mistari ya kushindwa iliyoamrishwa na `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Tambua hali tupu na zilizoshindwa za faili

- Lengo la msingi linalokosekana au kioo linaweza kuundwa. Wasifu batili, uandishi unaosubiri, ukuzaji, au kutofaulu kwa usomaji wa uzalishaji hauko tayari. Kushindwa kwa kioo hakubadilishi matokeo ya msingi yanayokubalika.
- `runtime/singleplayer_manual/SandboxSettings.ini` inaweza kuundwa kwa uendeshaji wa kwanza wa mikono. Kushindwa kwa kizazi kunaendelea kuonekana katika hali na matokeo ya kumbukumbu.
- Isiyosomeka `rotation_state.txt` inaweza kurudi kwenye hali nzuri ya mwisho au mkanda wa kuanza kwa alama. Ahadi ya hali iliyofeli hutoa `degraded_state_persistence`.
- `runtime/last_good/` inaweza kuwa haipo kabla ya lengo la kwanza lililothibitishwa. Ikiwa sasisho la maelezo lililooanishwa litashindwa, RandomDay hurejesha jozi iliyokubaliwa hapo awali.
- `runtime/backups/mirror_<operation>/` ni eneo la kuhifadhi nakala maalum la kioo. Hakuna faili msingi au kioo chelezo iliyopo wakati lengo hilo halikuwepo kabla ya muamala.
- Ugeuzaji wa adapta hauanzi wakati uundaji wake wa chelezo au usomaji unashindikana.
- Hali ya sasa, kamusi, au faili za onyesho la kukagua zinaweza zisiwepo wakati utoaji wa hali ya wakati wa utekelezaji haupatikani au haujakamilika.
- A `export_failed` yanaweza kuacha `today.json` mahali. Masasisho ya kushindwa kwa sanduku la mchanga JSON lakini haileti hitilafu mpya HTML; linganisha mihuri ya muda na `UE4SS.log`.
- Gari iliyochakaa inayosubiri inaondolewa kabla ya jaribio jipya; kushindwa kwa kusafisha kunasimamisha shughuli. Ikiwa lengwa la uzalishaji na gari la kurudisha nyuma zipo, RandomDay huhifadhi baiti za uokoaji kwa ukaguzi.
- Hapana `[RandomDay]` mstari wa kuanzia katika `UE4SS.log` inamaanisha upakiaji wa mod haukuthibitishwa.

<a id="transaction-sidecars"></a>
## Miamala ya pembeni

Mwandishi wa shughuli anaweza kuunda faili za ndugu kando na lengo:

| Muundo | Jimbo | Kitendo cha mwendeshaji |
|---|---|---|
| `<target>.randomday.pending` | Baiti za mgombea kabla ya kupandishwa cheo. | Kwa kawaida huondolewa kwa kukuza. Ihifadhi ikiwa itaripoti kutofaulu inasubiri kusafishwa au shida ya kusoma tena. |
| `<target>.randomday.rollback` | Baiti asili zilizoshikiliwa wakati wa uingizwaji. | Kwa kawaida hurejeshwa kwa kushindwa au kuondolewa baada ya mafanikio yaliyothibitishwa. Usiifute wakati lengo pia lipo; mchanganyiko huo unahitaji ukaguzi. |
| `<target>.randomday.restore.pending` | Baiti za mgombea wakati wa urejeshaji wa adapta. | Hifadhi kwa hifadhi rudufu ya adapta ikiwa urejeshaji utashindwa. |
| `<target>.randomday.restore.rollback` | Baiti za uokoaji zilizoshikiliwa wakati wa urejeshaji wa adapta. | Hifadhi na usimamishe huduma iliyoathiriwa ikiwa usafishaji au urejeshaji haujathibitishwa. |

Faili hizi zinaweza kuwepo kando ya sandbox maalum au shabaha ya adapta iliyosakinishwa tofauti. Uwepo wao ni hali ya muamala, sio ushahidi kwamba wasifu mpya ulianza kutumika.

<a id="interpret-file-contents"></a>
## Tafsiri yaliyomo kwenye faili

Tumia [Rejeleo la wakati wa utekelezaji na pato](ZANA_ZA_MUDA_WA_KUENDESHA.md) kwa `rotation_state.txt`, `randomday_status.json`, na `today.json` miundo. Rejeleo hilo pia linamiliki hali tupu, maana za kutofaulu, pato la kamusi, na sheria kwamba hali iliyoandaliwa sio hali amilifu. Tumia [rejeleo la hali na hitilafu](MAREJELEO_YA_HALI_NA_HITILAFU.md) wakati thamani kamili ya mashine inahitaji kitendo cha mendeshaji.

<a id="rotation-state-fields"></a>
### Nyuga za hali ya mzunguko

Angalia kanuni [taratibu za hali ya mzunguko](ZANA_ZA_MUDA_WA_KUENDESHA.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Mchoro wa hali ya sasa

Angalia kanuni [hali ya wakati wa utekelezaji JSON utaratibu](ZANA_ZA_MUDA_WA_KUENDESHA.md#runtime-status-json).

<a id="web-export-schema"></a>
### Taratibu za kuhamisha wavuti

Angalia kanuni [hali ya umma JSON utaratibu](ZANA_ZA_MUDA_WA_KUENDESHA.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Hifadhi ushahidi wa urejeshi

RandomDay hubatilisha hali ya sasa, hali ya sasa, hali nzuri ya mwisho na mitazamo ya wavuti. Inaunda saraka za kipekee za uhifadhi wa uendeshaji na haifuti za zamani. Chagua sera ya kubaki nje ya mchakato unaoendelea, lakini kamwe usifute ushahidi mpya wa urejeshaji wakati suala la kuandika, kusoma, hali au kurejesha halijatatuliwa.
