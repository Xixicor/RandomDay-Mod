<a id="supported-optional-mods"></a>
# Modi za Chaguo Zinazotumika

> **Chanzo cha Kiingereza cha Canonical:** [SUPPORTED_ADAPTERS.md](../../SUPPORTED_ADAPTERS.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


RandomDay inaweza kutengeneza modi iliyosakinishwa tofauti kufuata inayotumika RandomDaywasifu. Kipengele hiki kinapatikana tu kwenye kifurushi cha seva maalum. Thesingleplayer/LAN kifurushi hakiwahi kuhariri muundo mwingine.

RandomDayhaijumuishi au kusambaza upya mods zozote zilizoorodheshwa hapa. Sakinisha na uwashe kila hali ya hiari kutoka kwa ukurasa wake wa Nexus na ufuate maagizo ya mwandishi wake kwanza.RandomDay hubadilisha tu mipangilio inayotambulika ambayo tayari ipo kwenye faili iliyosakinishwa. Haiongezi vipengele kwenye mod nyingine, na adapta inaweza kulemazwa bila kusanidua mod hiyo. Kifurushi cha seva maalum huanza na `external_mods.enabled = true`.

<a id="what-randomday-changes"></a>
## Nini RandomDay mabadiliko

| Uunganisho wa hiari | Mipangilio iliyochaguliwa kutoka kwa wasifu unaotumika |
| --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | Hali ngumu, player/area tabia ya kutuliza, dhoruba na shughuli za ukanda wa joto, bosi na milipuko, muda wa mzunguko wa kuzaa, safu ndogo na kubwa za kushuka, umbali wa kuzaa, global/local/mod kofia, portal-storm, ukiukaji wa agizo na nafasi za wasimamizi, na kiwango cha chini cha kuzaa kwa kila eneo. |
| Nyuga za Hiari za Injini ya Kuzaa yenye machafuko | Ikisakinishwa `SharedData.lua` tayari ina RandomDay sehemu za upanuzi, adapta inaweza kusambaza wasifu, kiwango, mandhari, mipaka ya kikundi, matukio maalum na thamani mchanganyiko, bajeti, upunguzaji kasi na vidhibiti vya upeo wa dunia. Hii si muundo mwingine wa kupakua. |
| Lethal Lasers | Uwezeshaji wa mod pamoja na uharibifu na kuwezesha vidhibiti vya vitoa umeme vinavyoweza kutumiwa, vitoa umeme vya mazingira, viakisi na prisms. |
| ANTE Juu | Respawn-frequency multiplier, Antevariant frequency, na iliyopo development/debugswichi.RandomDay huzuia vipengele vyote vinavyotambulika vya usanidi na utatuzi vimezimwa. |

Maktaba ya wasifu hutoa thamani iliyoandaliwa kwa kila siku inayotumika. Siku ya utulivu inaweza kupunguza shinikizo, siku ya hatari inaweza kuinua, na siku ya kurejesha inaweza kupunguza kwa kasi.RandomDay haikokoti thamani kiholela wakati wa kuwasha; inatumia thamani iliyopitiwa iliyowekwa jina na wasifu unaotumika.

<a id="current-version-evidence"></a>
## Ushahidi wa toleo la sasa

Jedwali hili lilikaguliwa tarehe 20 Julai 2026. “Inatambulika” inamaanisha kuwa adapta iliyotolewa ina mpangilio kamili wa ndani wa mipangilio iliyotajwa. Haimaanishi kwamba kila toleo la siku zijazo litakuwa na umbo sawa la faili.

| Modi ya hiari | Toleo la sasa la mkondo wa juu limekaguliwa | RandomDay hali ya kutolewa |
| --- | --- | --- |
| [Injini Chaotic Spawn](https://www.nexusmods.com/abioticfactor/mods/156) | Ukurasa wa Nexus `0.8.5`; faili kuu ya sasa `0.8.5-Hotfix1` | Inatambulika `DynamicSpawns/Scripts/SharedData.lua` mpangilio wa mpangilio kamili wa kuzaa, upunguzaji, kifuniko, mlango, uvunjaji na mpangilio wa bosi. |
| Nyuga za Hiari za Injini ya Kuzaa yenye machafuko | Hakuna upakuaji tofauti; sehemu za hiari ndani `SharedData.lua` | Inatumika tu wakati kila uga wa kiendelezi tayari upo. Ufungaji wa Injini ya Kawaida ya Chaotic Spawn huachwa bila kubadilika sehemu hizo zinapokosekana. Kitambulisho cha adapta ya ndani ni `encounter_director`; haitaji muundo tofauti wa umma. |
| [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Inatambulika `LethalLasers/Scripts/main.lua` mpangilio wa emitter yote, emitter ya mazingira, kiakisi, na mipangilio ya prism iliyoorodheshwa hapo juu. |
| [ANTE Juu](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, ilisasishwa 19 Julai 2026 | Adapta iliyotolewa hutambua ya awali `Settings.lua`seti ya sehemu. Toleo la 1 halidaiwi kuwa linatumika hadi faili yake ya sasa iongezwe kwenye muundo na kupitisha majaribio ya muamala wa adapta. Ikiwa mpangilio wake unatofautiana, RandomDay ripoti `skipped_incompatible` na kuiacha bila kubadilika. |

<a id="how-recognition-protects-another-mod"></a>
## Jinsi utambuzi hulinda muundo mwingine

Kutafuta jina la faili linalofahamika haitoshi. Kabla ya kuandika, RandomDay hukagua kuwa kila mpangilio unaohitajika wa adapta hiyo upo katika faili inayolengwa. Inaweka viraka kazi zilizopo tu; kamwe haizuii mpangilio unaokosekana.

Kwa mpangilio unaotambulika, RandomDay hufanya muamala mmoja wenye mipaka:

1. kokotoa kila thamani inayokusudiwa kwa wasifu unaotumika;
2. unda na uangalie nakala rudufu ya kila faili lengwa;
3. andika kupitia faili ya ndugu inayosubiri;
4. kuza faili inayosubiri na usome baiti zilizohifadhiwa;
5. thibitisha kila thamani inayokusudiwa;
6. tumia urejeshaji kiotomatiki kutoka kwa chelezo zilizothibitishwa ikiwa hatua yoyote itashindikana.

DynamicSpawnsinaweza kujumuisha mipangilio yake na faili zinazotambulika za ujumbe wa kicheza katika muamala mmoja.RandomDay hairipoti kuwa sasisho la faili nyingi limefaulu isipokuwa muamala kamili ukamilike.

<a id="read-an-adapter-result"></a>
## Soma tokeo la adapta

| Tokeo | Maana |
| --- | --- |
| `applied` | Mipangilio inayotambuliwa ilibadilishwa na kupitishwa usomaji. |
| `already_current` | Mipangilio inayotambuliwa tayari ililingana na wasifu unaotumika. |
| `not_installed` | Njia ya hiari haikupatikana.RandomDay iliendelea bila hiyo. |
| `skipped_incompatible` | Faili ilipatikana, lakini mpangilio wake kamili haukutambuliwa. Hakuna kilichobadilishwa. |
| `partial` | Msingi DynamicSpawns ilitumiwa, lakini faili ya ujumbe iliyotafsiriwa kwa hiari haikukamilika. Kagua matokeo ya adapta iliyorekodiwa. |
| `failed_rolled_back` | Muamala haukufaulu na baiti za awali zilibakia sawa au zilirejeshwa na kuthibitishwa. |
| `rollback_failed` | RandomDay haikuweza kuthibitisha mabadiliko au urejeshaji. Usisimamishe na urejeshe nakala yake iliyorekodiwa. |

Modi za hiari zinazokosekana na zisizooana hazikomi RandomDay's mzunguko wa kisanduku cha mchanga chini ya usanidi uliosafirishwa.

<a id="enable-or-disable-integrations"></a>
## Washa au lemaza miunganisho

Vidhibiti viko katika:

```text
RandomDay/Scripts/ax_config/server.lua
```

Kifurushi cha seva maalum husafirishwa na:

```lua
external_mods = {
    enabled = true,
    optional_by_default = true,
    patch_only_existing_keys = true,
    backup_before_write = true,
    adapters = {
        "lethal_lasers",
        "dynamic_spawns",
        "encounter_director",
        "ante_up"
    }
}
```

- Weka `enabled = false` ili kusimamisha RandomDay kutoka kwa kukagua au kubadilisha kila hali ya hiari.
- Ondoa kitambulisho cha adapta moja ili kuacha muundo huo huku ukiwasha miunganisho mingine amilifu.
- Weka `patch_only_existing_keys` na `backup_before_write` imewekwa kuwa `true`. Ndio mpaka wa usalama wa maandishi.
- Weka `optional_by_default = true` isipokuwa kila mod ya hiari iliyoorodheshwa ni sehemu inayohitajika ya seva. Kuiweka kuwa `false` hufanya adapta inayokosekana, isioane, au iliyovingirishwa kwa usalama kuathiri matokeo ya jumla.

Si lazima usanidue au kuzima muundo wa hiari unapozima RandomDay adapta.

<a id="thanks-and-ownership"></a>
## Shukrani na umiliki

Shukrani kwa waandishi na wasimamizi wa [Injini Chaotic Spawn](https://www.nexusmods.com/abioticfactor/mods/156), [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141), na [ANTE Juu](https://www.nexusmods.com/abioticfactor/mods/201). Mods zao hubakia vipakuliwa tofauti vinavyotawaliwa na kurasa zao, ruhusa, na maagizo ya usaidizi.RandomDay's adapta hutumia tu sehemu za usanidi zilizopo katika mpangilio uliosakinishwa, unaotambulika; hazigawanyi tena au kubadilisha mods hizo.

<a id="backups-and-manual-recovery"></a>
## Hifadhi rudufu na urejeshaji wa mikono

Nakala za kuandika mapema zilizothibitishwa huhifadhiwa chini ya:

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

Kama `rollback_failed` inaonekana:

1. komesha mchezo au seva;
2. weka `external_mods.enabled = false`, au ondoa kitambulisho cha adapta kilichoathiriwa;
3. hifadhi faili inayolengwa ya sasa na ndugu yake pending/rollbackfaili;
4. linganisha faili za chelezo zilizo na nambari na njia lengwa zilizorekodiwa katika matokeo ya adapta;
5. rejesha baiti zilizothibitishwa wakati huduma imesimamishwa;
6. anzisha muundo wa hiari peke yake kabla ya kuwasha tenaRandomDay adapta.

Usilazimishe uoanifu kwa kubadilisha jina la mipangilio au kuongeza vitufe vinavyokosekana. Tumia mpangilio unaotambulika, acha adapta ikiwa imezimwa, au ongeza urekebishaji wa toleo jipya na jaribio la muamala kabla ya kupanua dai la usaidizi.
