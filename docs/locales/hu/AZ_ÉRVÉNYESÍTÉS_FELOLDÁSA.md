<a id="release-validation"></a>
# Az érvényesítés feloldása

> **Kanonikus angol forrás:** [RELEASE_VALIDATION.md](../../RELEASE_VALIDATION.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Ez az oldal a közreműködőknek és a kiadások karbantartóinak szól. A modot telepítő játékosoknak nem kell futtatniuk ezeket a parancsokat.

<a id="ordinary-user-proof"></a>
## Szokásos felhasználói bizonyíték

A kiadás érthető, ha egy új olvasó választhat a két csomag közül, telepítheti, azonosíthatja az aktív profilt és az előkészített profilt a hiányzó útmutató követésével. Az olvasói feladatokhoz nem szükséges Git, PowerShell, Python vagy ellenőrzőösszeg tudás.

<a id="contributor-checks"></a>
## Közreműködői ellenőrzések

Futtatás a lerakat gyökérből:

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

Mikor `luac` elérhető, ellenőrizze a szintaxist minden kiszállított Lua-fájlnál:

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

A Lua futásidejű tesztekhez `lupa`. Hiányzó Lua-tolmács vagy `lupa` telepítés nem elérhető tesztképesség, nem sikeres eredmény.

<a id="release-checks"></a>
## Feloldási ellenőrzések

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

A kiadási ellenőrzés a következő feltételeket ellenőrzi:

- `VERSION` és `RandomDay/.randomday_version` egyezés.
- Csak a jelenlegi verzió létezik a `releases/`.
- A dedikált és singleplayer/LAN A ZIP-ek teljes alternatívák.
- Mindkét archívum tartalmazza a kanonikus `RandomDay/Scripts/main.lua` elérési út és nincs kis- és nagybetűket ütköztető betöltő.
- A csomag mód jelölői `dedicated_server` és `singleplayer_manual`.
- ZIP bájtok determinisztikusak és egyeznek a `CHECKSUMS.sha256`.
- Nincsenek futásidejű adatok, privát konfigurációk, hitelesítő adatok, gyorsítótárak vagy tesztkimenetek.
- Minden helyi dokumentációs link és 27 területi beállítási oldal érvényes.

<a id="avoid-validation-environment-pitfalls"></a>
## Kerülje el az érvényesítési környezet buktatóit

- Futtassa le a tárhely-írási ellenőrzéseket sorozatosan, hogy két folyamat ne cserélje le egyszerre ugyanazt az ideiglenes fájlt.
- Windows rendszeren jelölje be a ZIP tagneveket ahelyett, hogy a kis- és nagybetűket megkülönböztető fájlkeresést használna annak eldöntésére, hogy létezik-e kisbetűs betöltő.
- Megerősítés `mods.txt` és `enabled.txt` csak telepített szerver tesztben; nem bizonyítják, hogy a forrástesztek lefutottak.
- Rögzítse a parancs időtúllépését befejezetlenként. Ne alakítsa át megfelelővé vagy sikertelenné a parancs korlátozott kimenete nélkül.
- Tartsa az ideiglenes fájlokat a lerakaton belül figyelmen kívül hagyva `.tmp/` könyvtárban.

<a id="known-limits"></a>
## Ismert határok

A helyi ellenőrzés igazolja a forrás-, csomag-, dokumentáció- és felszerelési szerződéseket. Nem bizonyítja egy adott kiszolgálópanel indítási sorrendjét, egy élő kliens üzenetelrendezését vagy egy gazdagép-specifikus fájlrendszer elérési útját. Jegyezze fel ezeket külön integrációs eredményekként, amikor tesztelik őket.
