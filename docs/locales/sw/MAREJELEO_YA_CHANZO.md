<a id="packaged-source-reference"></a>
# Rejea Chanzo Kilichofungwa

> **Chanzo cha Kiingereza cha Canonical:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Toleo ZIP ina njia 51 zilizo hapa chini. Mjenzi anakataa njia inayokosekana, chanzo cha ziada cha umbo la kifurushi, mgongano wa kesi, ulinganifu, au mwanachama aliye nje ya orodha yake halisi ya ruhusa. Toleo la wakati wa utekelezaji, majaribio, hati za hazina, na mods za wahusika wengine si washiriki wa kifurushi.

Mwongozo wa kukaguliwa na mashine ni [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Hurekodi njia sawa na ingizo, matokeo, madoido, mipangilio ya umma, hali zinazoonekana, hali za kushindwa, uhariri na uwekaji hati za kisheria.

Kila safu mlalo ya Lua inayosafirishwa ina zizi moja `module-*` nanga. Kiungo sawia katika kichwa chake cha msingi cha chanzo na rekodi ya mashine hufanya umiliki, mkataba, athari, kushindwa na urejeshaji kufuatiliwa moja kwa moja.

<a id="package-markers"></a>
## Alama za Kifurushi

| Njia | Mpigaji na wajibu | Madhara na tabia ya kushindwa | Mwongozo |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS kiashirio cha kuwezesha kilichojumuishwa katika vifurushi vyote viwili. | Hakuna kuandika wakati wa utekelezaji. Faili inayokosekana itashindwa uthibitishaji wa kifurushi na inaweza kuzuia upakiaji. | [Usakinishaji](USAKINISHAJI.md) |
| `RandomDay/.randomday_version` | Imesomwa na `ax_core/version.lua`; huzalishwa kwa kila kifurushi. | Hakuna wakati wa kuandika.Missing/blank alama hurejesha `unversioned`; muundo wa mwisho unahitaji utambulisho wa toleo uliopangiliwa. | [Uthibitishaji wa toleo](UTHIBITISHAJI_WA_TOLEO.md) |
| `RandomDay/.randomday_mode` | Imesomwa na `ax_core/version.lua`; imetolewa kama `dedicated_server` au `singleplayer_manual`. | Thamani batili husimamisha uanzishaji kabla ya mfumo wa faili kufanya kazi. | [Usanifu](USANIFU.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Ingizo, Usanidi, na Huduma za Msingi

| Njia | Mpigaji na wajibu | Ingizo, matokeo, na tabia ya kutofaulu | Mwongozo |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS mahali pa kuingilia. Husuluhisha mzizi mmoja wa mod na inaomba `ax_core/init.lua`. | Huchapisha mstari mbaya na kurejesha ikiwa azimio la mizizi au uanzishaji utashindwa. | [Njia ya kuanzisha](USANIFU.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Mwimbaji mkuu wa uanzishaji na usimamizi wa hiari. | Njia za pato za nanga, hutekeleza package/safety hufunga, humiliki chaguo moja, na mifuatano huandika, hali, adapta, hali, wavuti na ujumbe. | [Njia ya kuanzisha](USANIFU.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Imepakiwa na `init.lua`; kamilisha kipengee cha usanidi wa umma. | Husoma utambulisho wa kifurushi; mipangilio na sehemu zilizohifadhiwa zimeandikwa kibinafsi. Uanzishaji wa kufuli za usalama zisizo sahihi. | [Usanidi](USANIDI.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Imepakiwa na sajili ya usanidi na wasifu. | Husoma alama za kifurushi zilizopunguzwa; inarudi `unversioned` au `invalid` wakati haipatikani. | [Kitambulisho cha kutolewa](UTHIBITISHAJI_WA_TOLEO.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Karatasi iliyoshirikiwa ya ukataji miti. | Inatoa `[RandomDay]` mistari katika viwango vilivyosanidiwa; hakuna usafiri wa kibinafsi wa logi. | [Faili za muda wa utekelezaji](FAILI_ZA_MUDA_WA_KUTUMIKA.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | Faili iliyoshirikiwa, njia, usimbaji, heshi, saraka na visaidizi vya muamala. | Uundaji wa saraka hukubali tu Lua/Wine mafanikio ya amri; matokeo yasiyopatikana, yaliyoinuliwa, yaliyotiwa saini, yenye utata, au yasiyo ya kawaida yameshindwa kufungwa kwa ujumbe wenye mipaka na marejeleo yanayohusiana na wakati wa utekelezaji. Pia inamiliki pending/readback/promotion/rollback semantiki na huhifadhi data ya uokoaji isiyo na uhakika. | [Muamala wa Sandbox](USANIFU.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Uteuzi, Sandbox, Hali na Ujumbe

| Njia | Mpigaji na wajibu | Ingizo, matokeo, na tabia ya kutofaulu | Mwongozo |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; husoma kialama amilifu na hali ya mzunguko, huchagua moja active/prepared, weka hali ya kipindi na mpangilio kamili wa siku. | Hujenga configured/wrapped au mpangilio wa nafasi 17 uliochanganywa mara moja, huandika `rotation_state.txt` kiuamala, na inarudi katika hali ya mwisho bila kuzungushwa tena. Kushindwa kwa ustahimilivu husababisha mabadiliko duni. | [Mashine ya hali ya mzunguko](USANIFU.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Mwandishi wa sanduku la mchanga; huunda utendakazi na hifadhi rudufu za mwisho na kurejesha baiti zilizothibitishwa. | Husasisha ubora wa mwisho sandbox/manifest kama jozi; huhifadhi jozi ya awali ikiwa uingizwaji wa faili ya maelezo utashindwa. | [Faili za muda wa utekelezaji](FAILI_ZA_MUDA_WA_KUTUMIKA.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Kiunda wasifu, kiboreshaji na kithibitishaji. | Inafafanua mpangilio wa ufunguo wa kisheria, aina, masafa na sheria zisizobadilika; hakuna mfumo wa faili unaoandika. | [Vifunguo vya Sandbox](WASIFU/VIFUNGUO_VYA_MIPANGILIO_YA_SANDBOX.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Mwandishi wa sanduku la mchanga. | Hutoa ubainishaji kamili INI maandishi yenye RandomDay alama; data batili ya wasifu imekataliwa kwa uthibitishaji. | [Wasifu](WASIFU/HATI_ZA_WASIFU.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Majaribio ya wajenzi na mwandishi. | Huthibitisha thamani za wasifu na kupangwa mfululizo INI dhidi ya taratibu, thamani zisizobadilika, na utambulisho wa wasifu unaotarajiwa. | [Vifunguo vya Sandbox](WASIFU/VIFUNGUO_VYA_MIPANGILIO_YA_SANDBOX.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; husuluhisha shabaha zilizo na hali na hufanya primary/mirror anaandika. | Hutoa matokeo ya muamala, chelezo, kurejesha nyuma, hashi, kioo na matokeo ya mikono. Malengo yasiyo salama na maandishi ambayo hayajathibitishwa yameshindwa kufungwa. | [Muamala wa Sandbox](USANIFU.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` baada ya kila matokeo ya maandalizi. | Huandika hali ya sasa, kamusi na onyesho la kukagua ujumbe kwa kutumia marejeleo yaliyosafishwa. Kushindwa kwa pato kumerekodiwa na haibadilishi mamlaka ya kisanduku cha mchanga. | [Mchoro wa hali ya sasa](FAILI_ZA_MUDA_WA_KUTUMIKA.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` baada ya hali. | Inaandika `today.json` na `today.html` kutoka kwa active/prepared uamuzi. Kushindwa kumeripotiwa kama kutofaulu kuhamishwa, sio mafanikio ya kisanduku cha mchanga. | [Taratibu za kuhamisha wavuti](FAILI_ZA_MUDA_WA_KUTUMIKA.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` baada ya kudumu kwa hali iliyofaulu. | Miundo iliyo na mipaka join/daily ujumbe kutoka kwa data ya tafsiri na kusajili kwa hiari amri ya dashibodi ya ndani. Haipo player/transport inaruka notisi bila kubadilisha hali ya wasifu. | [Ujumbe wa kichezaji](USANIDI.md#player-messages) |

<a id="optional-adapter-modules"></a>
## Moduli za Hiari za Adapta

| Njia | Mpigaji na wajibu | Ingizo, matokeo, na tabia ya kutofaulu | Mwongozo |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; hugundua shabaha za adapta zinazotambulika na kutumia faili zote zilizopangwa katika shughuli. | Hutoa matokeo sita yaliyoandikwa, nakala rudufu zilizothibitishwa, uchunguzi uliosafishwa na ushahidi wa kurejesha. | [Mpaka wa adapta](USANIFU.md#adapter-boundary) |
| <a id="module-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Ufafanuzi wa daraja la Adapta kwa kisakinishi tofauti DynamicSpawns mpangilio. | Hutoa saini zinazotambulika na ramani za thamani zilizotayarishwa; miundo isiyojulikana imerukwa. | [Adapta zinazotumika](ADAPTER_ZINAZOTUMIKA.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Ufafanuzi wa adapta ya ndani kwa hiari RandomDay sehemu za upanuzi katika Injini ya Machafuko inayotambulika `DynamicSpawns` mpangilio; jina la faili si jina tofauti la bidhaa. | Kutana na wasifu wa Ramani na kusanidi thamani za upeo wakati tu mpangilio kamili wa kiendelezi upo; Chaotic Spawn Engine inasalia kuwajibika kwa matumizi ya wakati wa utekelezaji. | [Adapta zinazotumika](ADAPTER_ZINAZOTUMIKA.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Ufafanuzi wa daraja la adapta kwa mpangilio wa mipangilio wa Lethal Lasers unaotambuliwa. | Inahitaji kila ufunguo unaokusudiwa kabla ya ubadilishaji; vinginevyo inaripoti kuwa haioani. | [Adapta zinazotumika](ADAPTER_ZINAZOTUMIKA.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Ufafanuzi wa daraja la Adapta kwa ANTE Mpangilio wa mipangilio ya juu. | Inahitaji sehemu za kuibua upya, lahaja, na lango la utatuzi; vinginevyo inaripoti kuwa haioani. | [Adapta zinazotumika](ADAPTER_ZINAZOTUMIKA.md) |

<a id="shared-profile-and-translation-modules"></a>
## Wasifu Ulioshirikiwa na Moduli za Tafsiri

| Njia | Mpigaji na wajibu | Ingizo, matokeo, na tabia ya kutofaulu | Mwongozo |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; thamani za msingi za kanuni na chaguo-msingi za siku 17. | Hutoa funguo zote za sandbox, chaguomsingi nne za wasifu uliosafirishwa, na sheria zisizobadilika zilizosalia; hakuna mfumo wa faili unaoandika. Uthibitishaji wa taratibu unakataa towe lisilokamilika. | [Vifunguo vya Sandbox](WASIFU/VIFUNGUO_VYA_MIPANGILIO_YA_SANDBOX.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Kila sehemu ya familia na mwonekano wa urithi wa familia. | Siku za msingi za clones, inatumika kwa mipaka family/day inabatilisha, inathibitisha `sandbox.profile_overrides`, hutumia thamani hizo zinazodumu pamoja na sheria zisizobadilika zilizosalia, na hurejesha kifurushi cha familia chenye wasifu 17. | [Rejea ya wasifu](WASIFU/HATI_ZA_WASIFU.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; aliamuru usajili wa umma wa familia zote 17. | Vitambulisho vya vifaa, majina ya faili chanzo, majina, maelezo, aina na metadata ya sauti. Chanzo cha familia kinachokosekana hakijapakia. | [Mzunguko wa familia](MZUNGUKO_WA_FAMILIA.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Kalenda, mwandishi, hali, majaribio na jenereta. | Hupakia vifurushi vyote vya familia vilivyosajiliwa na kufichua seti ya wasifu wa 17-kwa-17, chaguomsingi zilizosafirishwa, thamani bora za wasifu mzima, mpangilio wa taratibu na sheria zisizobadilika. | [Rejea ya wasifu](WASIFU/HATI_ZA_WASIFU.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Mwonekano wa uoanifu uliopakiwa wa kifurushi asili cha Action cha siku 17. | Hurejesha kifurushi kamili cha familia lakini si chanzo cha familia cha usajili wa sasa. Imehifadhiwa kwa mwendelezo wa kifurushi cha kihistoria. | [Mzunguko wa familia](MZUNGUKO_WA_FAMILIA.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Mwonekano wa uoanifu uliopakiwa wa kifurushi asili cha kupona kwa Reaction. | Hurejesha kifurushi kamili cha familia lakini hakijachaguliwa na sajili ya sasa. Imehifadhiwa kwa mwendelezo wa kifurushi cha kihistoria. | [Mzunguko wa familia](MZUNGUKO_WA_FAMILIA.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Utafutaji wa faharasa ya siku ya urithi unapatikana kwa msimbo wa wasifu. | Hurejesha ramani moja ya matukio yenye mipaka kwa siku; hakuna mfumo wa faili unaoandika. Wasifu wa sasa wa familia hubeba maadili yao ya kukutana. | [Rejea ya wasifu](WASIFU/HATI_ZA_WASIFU.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Ujumbe wa kichezaji na karatasi ya uoanifu. | Miundo iliyo na mipaka joke/note pakiti kutoka kwa wasifu uliochaguliwa; data ya wasifu isiyopatikana inarudi kwa ujumbe usioegemea upande wowote. | [Ujumbe wa kichezaji](USANIDI.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Karatasi inayooana na Nyuma karibu `messages_17.lua`. | Hakuna data huru au maandishi; upakiaji umeshindwa kufuata moduli ya ujumbe wa kisheria. | [Ujumbe wa kichezaji](USANIDI.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Tafsiri na mwandishi wa kamusi wakati wa utekelezaji. | Inafafanua maana zote 46 za kisanduku cha mchanga, aina, masafa, vikoa na lugha ya thamani. Thamani zisizojulikana zinasalia kuwa wazi. | [Tafsiri na kamusi](FAILI_ZA_MUDA_WA_KUTUMIKA.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Hali ya wakati wa utekelezaji na utumaji ujumbe wa kicheza. | Hubadilisha thamani ghafi za wasifu kuwa alama za kikoa, ukweli, muhtasari, maonyo na towe la kamusi huku ikihifadhi thamani ghafi. | [Mchoro wa hali ya sasa](FAILI_ZA_MUDA_WA_KUTUMIKA.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Moduli za Familia Zilizosajiliwa

Kila safu mlalo inapakiwa na `randomday_17.lua`, simu `profile_builder.lua`, hurejesha wasifu 17 haswa, na haina athari ya moja kwa moja ya mfumo wa faili. Wasifu unaokosekana, unaorudiwa, ambao haujakamilika, nje ya masafa, au ukiukaji wa kanuni zisizobadilika unashindwa kutumia mpangilio wa wakati wa utekelezaji na lango la marejeleo lililoundwa.

| Njia | Familia | Mwongozo unaozalishwa na kanuni |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Kitendo | [Kitendo](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_KITENDO.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Kuishi | [Kuishi](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_KUISHI.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Siri | [Siri](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_SIRI.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Horde | [Horde](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_KUNDI_KUBWA.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Hunt Boss | [Hunt Boss](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_BOSI.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Scavenger | [Scavenger](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_MLAFI.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Mjenzi | [Mjenzi](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_WAJENZI.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Msafara | [Msafara](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_SAFARI.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Kufungia Usalama | [Kufungia Usalama](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_KUFUNGA_USALAMA.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Biohazard | [Biohazard](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_BIOHAZARD.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Kinyume | [Kinyume](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_ULIO_KINYUME.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Ndoto mbaya | [Ndoto mbaya](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_JINAMIZI.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Iliyo na hali ya hewa | [Iliyo na hali ya hewa](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_HALI_YA_HEWA.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Usahihi | [Usahihi](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_SAHIHI.md) |
| <a id="module-ax-profiles-families-logistics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Usafirishaji | [Usafirishaji](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_VIFAA.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Majaribio | [Majaribio](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_MAJARIBIO.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Mtihani wa Utiifu | [Mtihani wa Utiifu](WASIFU/FAMILIA/FAMILIA_YA_WASIFU_WA_JARIBIO_LA_KUFUATA.md) |

<a id="generated-references"></a>
## Marejeleo Yanayozalishwa

`docs/profiles/profiles.generated.json`, faili za familia za Markdown, na `FULL_PROFILE_REFERENCE.md` ni contributor/operator marejeleo yaliyotolewa kutoka kwa seti sawa ya wasifu. Wao si wanachama wa kifurushi na haipaswi kuhaririwa kama mbadala wa kubadilisha chanzo cha wasifu. Uthibitishaji unahitaji familia 17, wasifu 17 kwa kila familia, vitambulisho vya kipekee, funguo zote za taratibu, sheria zisizobadilika, chanjo ya tafsiri na ujumbe wenye mipaka.
