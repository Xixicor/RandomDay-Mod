# Mwongozo wa RandomDay kwa Kiswahili

**v0.3.16-alpha**

RandomDay huandaa `SandboxSettings.ini` kamili kwa kuanza kwa Abiotic Factor
kunakofuata. Haibadilishi sheria za kipindi kinachoendelea; wasifu unaotumika
na wasifu ulioandaliwa kwa kuanza kwingine huripotiwa tofauti.

## Kusakinisha na kuthibitisha

Fuata [mwongozo wa usakinishaji](../../../INSTALL.md). Folda sahihi ni
`ue4ss/Mods/RandomDay` na `mods.txt` lazima iwe na `RandomDay : 1`. Kwa kawaida
kuanza kwanza huandaa wasifu na kuanza kwingine huuwasha.

Kagua `runtime/current/randomday_status.json`, `runtime/rotation_state.txt` na
`web_export/today.json`. Utambulisho wa wasifu unaotumika na ulioandaliwa lazima
ulingane katika faili zote tatu.

## Kuchagua uzoefu

Weka hali, familia, siku ya kwanza na mwendelezo katika
`RandomDay/Scripts/ax_config/server.lua`. Soma [Mwanzo](../../START_HERE.md),
[Chagua wasifu](../../CHOOSE_A_PROFILE.md), [Usanidi](../../CONFIGURATION.md)
na [Utatuzi](../../TROUBLESHOOTING.md).

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
