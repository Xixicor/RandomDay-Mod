<a id="release-validation"></a>
# Uthibitishaji wa toleo

> **Chanzo cha Kiingereza cha Canonical:** [RELEASE_VALIDATION.md](../../RELEASE_VALIDATION.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Ukurasa huu ni wa wachangiaji na wasimamizi wa matoleo. Wachezaji wanaosakinisha mod hawahitaji kutekeleza amri hizi.

<a id="ordinary-user-proof"></a>
## Uthibitisho wa kawaida wa mtumiaji

Toleo linaeleweka wakati msomaji mpya anaweza kuchagua mojawapo ya vifurushi viwili, kukisakinisha, kutambua wasifu unaotumika na wasifu uliotayarishwa, na kupata tena kutoka kwa mwongozo uliokosekana. Kazi hizo za msomaji lazima zisihitaji Git, PowerShell, Python, au checksum knowledge.

<a id="contributor-checks"></a>
## Kagua mchangiaji

Endesha kutoka kwenye mzizi wa hazina:

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

Wakati `luac` inapatikana, angalia sintaksia kila faili ya Lua iliyosafirishwa:

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

Majaribio ya wakati wa utekelezaji wa Lua yanahitaji `lupa`. Mkalimani wa Kilua anayekosekana au `lupa` usakinishaji ni uwezo wa majaribio ambao haupatikani, si matokeo ya kupita.

<a id="release-checks"></a>
## Ukaguzi wa matoleo

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

Ukaguzi wa toleo unathibitisha masharti haya:

- `VERSION` na `RandomDay/.randomday_version` inalingana.
- Toleo la sasa pekee linapatikana chini ya `releases/`.
- Waliojitolea na singleplayer/LAN ZIP ni mbadala kamili.
- Kumbukumbu zote mbili zina kanuni `RandomDay/Scripts/main.lua` njia na hakuna kipakiaji kinachogongana.
- Alama za modi ya kifurushi ni `dedicated_server` na `singleplayer_manual`.
- ZIP baiti zinaweza kubainisha na zinalingana `CHECKSUMS.sha256`.
- Hakuna data ya wakati wa utekelezaji, usanidi wa faragha, vitambulisho, akiba, au matokeo ya majaribio ambayo yamefungashwa.
- Viungo vyote vya hati za ndani na kurasa 27 za ingizo za lugha huidhinishwa.

<a id="avoid-validation-environment-pitfalls"></a>
## Epuka mitego ya mazingira ya uthibitishaji

- Endesha ukaguzi wa uandishi wa hazina mfululizo ili michakato miwili isichukue nafasi ya faili moja ya muda mara moja.
- Kwenye Windows, angalia ZIP majina ya wanachama badala ya kutumia uchunguzi usiojali kesi ili kuamua kama kipakiaji cha herufi ndogo kipo.
- Thibitisha `mods.txt` na `enabled.txt` katika jaribio la seva iliyosakinishwa pekee; sio uthibitisho kwamba majaribio ya chanzo yalifanyika.
- Rekodi muda wa kuisha kwa amri kama haujakamilika. Usiibadilishe kuwa kupita au kushindwa bila matokeo yenye mipaka ya amri.
- Weka faili za muda ndani ya hazina zilizopuuzwa `.tmp/` saraka.

<a id="known-limits"></a>
## Vikomo vinavyojulikana

Uthibitishaji wa ndani huthibitisha chanzo, kifurushi, hati na mikataba ya urekebishaji. Haithibitishi mpangilio wa uanzishaji wa paneli fulani ya seva, mpangilio wa ujumbe wa moja kwa moja wa mteja, au njia mahususi ya mfumo wa faili ya mwenyeji. Rekodi hizo kama matokeo tofauti ya ujumuishaji zinapojaribiwa.
