<a id="install-update-or-remove-randomday"></a>
# Sakinisha, sasisha, au ondoa RandomDay

> **Chanzo cha Kiingereza cha Canonical:** [INSTALL.md](../../../INSTALL.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


RandomDay ina vipakuliwa viwili kamili. Chagua moja kwa ajili ya ulimwengu unaoweka:

- tumia **seva-iliyojitolea ZIP** kwa seva yoyote maalum, ikiwa ni pamoja na seva ambayo inafunguliwa kwa vipindi vya mara kwa mara tu;
- tumia **singleplayer/LAN ZIP** kwa ulimwengu wa ndani ambao mipangilio yake utanakili wewe mwenyewe.

Usichanganye vifurushi. Seva inayoendelea au iliyojitolea kwa muda ni chaguo katika RandomDay's mipangilio, sio upakuaji tofauti.

<a id="before-you-begin"></a>
## Kabla ya kuanza

Unda nakala inayoweza kurejeshwa ya:

- ulimwengu unaobadilisha;
- ya sasa `SandboxSettings.ini`;
- iliyopo `RandomDay` folda, ikiwa moja imesakinishwa.

Sakinisha UE4SS kabla ya RandomDay. Katika maagizo hapa chini, **Folda ya Mods** ina maana `ue4ss/Mods/` saraka ndani ya mchezo au usakinishaji wa seva maalum.

<a id="dedicated-server"></a>
## Seva maalum

<a id="new-installation"></a>
### Usakinishaji mpya

1. Simamisha seva.
2. Fungua UE4SS `Mods`folda.
3. Nyoa seva iliyojitolea ZIP. Matokeo yanapaswa kuwa moja `ue4ss/Mods/RandomDay/` folda, si folda ndani ya nyingine `RandomDay`folda.
4. Fungua folda hiyo na uthibitishe `RandomDay/Scripts/main.lua` iko. Ikiwa haipo, ZIP ilitolewa katika kiwango kisicho sahihi.
5. Fungua UE4SS `mods.txt` na uwashe laini hii:

   ```text
   RandomDay : 1
   ```

6. Anzisha seva kwa kawaida.
7. Fungua RandomDay's ukurasa wa hali unaoweza kusomeka na uthibitishe kuwa unataja wasifu unaotumika na wasifu uliotayarishwa kwa kuanza tena.

Mwanzo wa kwanza hauchukui nafasi ya sheria ambazo tayari zimepakiwa na kipindi hicho. Inatayarisha wasifu unaofuata. Anzisha seva tena wakati tu unataka wasifu ulioandaliwa kuanza kutumika.

[Angalia mzunguko wa kwanza](ANZIA_HAPA.md)

<a id="choose-always-on-or-temporary-behavior"></a>
### Chagua tabia inayowashwa kila wakati au ya muda

Kifurushi cha seva maalum kinaauni mitindo yote miwili:

- **inayoendelea kujitolea** inaendelea na mzunguko uliohifadhiwa kwenye uanzishaji upya wa kawaida;
- **wakfu wa muda** inaweza kuanza kutoka kwa sehemu iliyosanidiwa au isiyo ya kawaida wakati uendeshaji mpya wa muda unapoanza.

Chagua tabia katika [Usanidi](USANIDI.md). Usisakinishe kifurushi cha pili ili kubadilisha mpangilio huu.

<a id="update-an-existing-installation"></a>
### Sasisha usakinishaji uliopo

1. Simamisha seva na ufanye hifadhi rudufu zilizoorodheshwa hapo juu.
2. Hamisha ya zamani `RandomDay` folda nje ya UE4SS `Mods` folda. Ihifadhi hadi sasisho likamilishe mzunguko mmoja uliofaulu.
3. Nyoa seva mpya iliyojitolea ZIP kwenye `Mods`folda.
4. Tumia tena mipangilio uliyobadilisha kimakusudi pekee na ambayo bado ipo kwenye [mwongozo wa usanidi](USANIDI.md).
5. Hifadhi hati za hali ya mzunguko wakati madokezo ya toleo yanasema kuwa umbizo lao linaoana. Usinakili towe la muda la zamani au faili ambazo hazijafaulu katika usakinishaji mpya.
6. Thibitisha `RandomDay : 1` bado imewezeshwa, kisha anzisha seva mara moja na uangalie majina ya wasifu amilifu na yaliyotayarishwa.

<a id="updating-from-v0315-alpha"></a>
### Inasasisha kutoka v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip`ilikuwa kifurushi cha zamani cha msingi.`RandomDay_v0.3.15-alpha_singleplayer_patch.zip` ilikuwa ni wekeleo na haikuwa upakuaji wa pekee.

Ya Sasa`v0.3.16-alpha` hubadilisha mpangilio wa msingi-na-wekeleo wa kihistoria na vifurushi viwili kamili. Usiweke kiraka cha zamani kwenye kifurushi chochote. Alama za sasa ni `.randomday_mode=dedicated_server` na `.randomday_mode=singleplayer_manual`.

<a id="singleplayer-or-lan"></a>
## Mchezaji Mmoja au LAN

The singleplayer/LAN kifurushi huunda faili ya mipangilio; haitafuti au kubadilisha hifadhi ya kibinafsi peke yake.

1. Funga mchezo.
2. Hifadhi nakala ya ulimwengu na ya sasa `SandboxSettings.ini`.
3. Nyoa singleplayer/LAN ZIP kwenye UE4SS `Mods` folda moja `Mods/RandomDay/` folda ipo.
4. Washa `RandomDay : 1` katika UE4SS `mods.txt`.
5. Anzisha mchezo mara moja, subiri RandomDay ili kumaliza, na kufunga mchezo kikamilifu.
6. Tafuta iliyozalishwa `SandboxSettings.ini` katika RandomDay's `runtime/singleplayer_manual/`folda.
7. Soma muhtasari uliotolewa, kisha unakili faili katika ulimwengu mmoja uliochagua.
8. Anzisha ulimwengu huo na uangalie kuwa tabia inayotarajiwa ya kisanduku cha mchanga inatumika.

LAN hutumia mchakato sawa wa mikono kwa sababu mwenyeji anamiliki ulimwengu wa ndani. Mfumo hauchagui ulimwengu au kubatilisha ulimwengu kiotomatiki.

[Mchezaji Mmoja na LAN mwongozo](LAN_YA_KICHEZA_MMOJA.md)

<a id="remove-or-disable-randomday"></a>
## Ondoa au zima RandomDay

1. Simamisha mchezo au seva.
2. Hifadhi dunia, mipangilio yake ya sasa ya kisanduku cha mchanga, na RandomDay'shali.
3. Weka `RandomDay : 0` katika UE4SS `mods.txt` ili kuzima mod, au kuhamisha kamili `RandomDay` folda nje ya `Mods` folda ili kuiondoa.
4. Amua ipi `SandboxSettings.ini` inapaswa kupakiwa kwenye mwanzo unaofuata. Rejesha nakala yako ya kusakinisha awali ikiwa hutaki iliyotayarishwa kwa sasa RandomDay wasifu.
5. Anzisha ulimwengu na uthibitishe sheria zake kabla ya kufuta nakala yoyote.

Inalemaza RandomDay husimamisha utayarishaji wa wasifu wa siku zijazo. Haiandiki tena faili ya sandbox ambayo tayari inasubiri kwenye diski.

<a id="recover-from-an-unsuccessful-update"></a>
## Rejesha kutoka kwa sasisho ambalo halijafaulu

Simamisha baada ya kushindwa kwa mara ya kwanza. Kuanzisha upya mara kwa mara kunaweza kuifanya iwe vigumu kuona ni wasifu upi uliokuwa unatumika na upi ulikuwa unasubiri.

1. Simamisha mchezo au seva.
2. Sogeza usakinishaji ambao haujafaulu kando bila kuufuta.
3. Rejesha kamili RandomDay folda na hifadhi rudufu ya sandbox iliyofanywa kabla ya kusasisha.
4. Anza mara moja na uthibitishe majina ya wasifu yaliyorejeshwa na yaliyotayarishwa.
5. Tumia [Utatuzi wa matatizo](UTATUZI_WA_MATATIZO.md) kwa hatua ya kwanza kukosa au kushindwa kabla ya kujaribu sasisho lingine.

<a id="more-help"></a>
## Usaidizi zaidi

- [Mzunguko wa kwanza](ANZIA_HAPA.md)
- [Chagua wasifu](CHAGUA_WASIFU.md)
- [Usanidi](USANIDI.md)
- [Uendeshaji na urejeshaji](UENDESHAJI.md)
- [Utatuzi wa matatizo](UTATUZI_WA_MATATIZO.md)
- [Upatanifu](UPATANIFU.md)

Watunzaji matoleo wanaweza kupata ukaguzi wa muundo na vifurushi katika [Uthibitishaji wa toleo](UTHIBITISHAJI_WA_TOLEO.md). Hazihitajiki kwa usakinishaji wa kawaida.
