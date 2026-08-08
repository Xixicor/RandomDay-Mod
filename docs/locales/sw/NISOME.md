# Mwongozo wa RandomDay kwa Kiswahili

> [!IMPORTANT]
> ## Hali ya mradi — majaribio ya RandomDay yamekamilika
>
> Operesheni ya majaribio ya RandomDay imekamilika, na seva ya majaribio ya umma itafungwa hivi karibuni.
>
> Wakati wa operesheni hii, RandomDay na RandomDayGuard ziliendeshwa pamoja kupitia mizunguko ya mara kwa mara ya wasifu, uanzishaji upya wa seva wa kawaida na uliokatizwa, ukaguzi wa urejeshaji na kurudisha nyuma, ujumuishaji wa mod zilizopanuliwa, ukusanyaji wa ushahidi wa seva na mapitio ya ripoti za mwendeshaji.
>
> Hili limetupa maarifa tuliyolenga kupata: jinsi wasifu wa sandbox unaozunguka unavyofanya kazi katika mizunguko halisi ya maisha ya seva maalumu; jinsi RandomDay inavyoshirikiana na mod zilizopanuliwa zinazotumika; na kiwango ambacho RandomDayGuard inaweza kubadili ushahidi ulioandikwa na seva kuwa ufuatiliaji wenye manufaa na tahadhari bila kuonyesha mapengo au makisio kama ukweli.
>
> **Muundo uliotumika kwenye seva ya majaribio:**
>
> - RandomDay build ya maendeleo ya faragha `v0.41.76`
> - RandomDayGuard build ya maendeleo ya faragha `v0.46.130`
> - Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
> - Lethal Lasers `1.0 UE4SS`
> - ANTE Up `0.26`
> - Encounter Director integration — kiendelezi cha DynamicSpawns kinachomilikiwa na RandomDay, si mod inayosambazwa kando
> - UE4SS `v3.0.1 Beta #0` (Git `01e0a584`; Nexus `v3.0.1-940-g01e0a584`)
> - seva maalumu ya Abiotic Factor `1.4.0.27939`
>
> Vifurushi vilivyochapishwa sasa vinaendelea kuwa RandomDay `v0.3.16-alpha` na RandomDayGuard `v0.4.12-alpha`.
>
> Maendeleo ya miradi yote miwili yamesitishwa kwa sasa. Matoleo na nyaraka zilizopo zitaendelea kupatikana, na tunaweza kurudi tutakapohisi tena hamu ya kuendelea na kazi.
>
> Muundo huu unaandika kilichotumika wakati wa operesheni; si hitaji la toleo la chini wala dhamana ya utangamano na matoleo ya baadaye ya mchezo, loader au mod. Mzunguko wa mwisho uliorekodiwa rasmi ulitumia Abiotic Factor `1.4.0.27939`.

**v0.3.16-alpha**

RandomDay huandaa `SandboxSettings.ini` kamili kwa kuanza kwa Abiotic Factor
kunakofuata. Haibadilishi sheria za kipindi kinachoendelea; wasifu unaotumika
na wasifu ulioandaliwa kwa kuanza kwingine huripotiwa tofauti.

## Kusakinisha na kuthibitisha

Fuata [mwongozo wa usakinishaji](USAKINISHAJI.md). Folda sahihi ni
`ue4ss/Mods/RandomDay` na `mods.txt` lazima iwe na `RandomDay : 1`. Kwa kawaida
kuanza kwanza huandaa wasifu na kuanza kwingine huuwasha.

Kagua `runtime/current/randomday_status.json`, `runtime/rotation_state.txt` na
`web_export/today.json`. Utambulisho wa wasifu unaotumika na ulioandaliwa lazima
ulingane katika faili zote tatu.

## Kuchagua uzoefu

Weka hali, familia, siku ya kwanza na mwendelezo katika
`RandomDay/Scripts/ax_config/server.lua`. Soma [Mwanzo](ANZIA_HAPA.md),
[Chagua wasifu](CHAGUA_WASIFU.md), [Usanidi](USANIDI.md)
na [Utatuzi](UTATUZI_WA_MATATIZO.md).

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` na
`BridgeSupports=0` ni thamani za mwanzo za mtengenezaji wa wasifu, si sheria za
lazima za Abiotic Factor. Namna ya kuzibadilisha na kujenga wasifu upya imo
katika hati ya usanidi.

Amri, njia, funguo za INI na hali hubaki kwa Kiingereza ili zilingane kabisa na
faili halisi.

## Toleo la alfa na chaguo zinazodumu

Hili ni toleo la alfa. Njia zilizoandikwa za usakinishaji, mzunguko na urejeshaji zimejaribiwa; uoanifu na urahisi wa matumizi vinaendelea kuboreshwa.

Katika `RandomDay/Scripts/ax_config/server.lua`, `sandbox.profile_overrides` huhifadhi thamani nne kwa kila familia na siku. Simamisha seva, zibadilishe mara moja, kisha ianzishe tena. Mizunguko na uanzishaji unaofuata hutumia thamani zilezile; kubadili `SandboxSettings.ini` pekee ni kwa muda.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Modi za hiari hapa chini ni vipakuliwa tofauti vya watunzi wao. RandomDay haisambazi tena wala kubadili vipengele vyao; adapta iliyowashwa hubadili tu mipangilio iliyopo na inayotumika. Tunawashukuru watunzi na watunzaji wao.

## Kamilisha maktaba ya hati

Kila hati ya Markdown ya umma inapatikana katika lugha hii yenye majina ya faili yaliyojanibishwa.

- [Fungua faharasa ya hati iliyojanibishwa](HATI.md)
