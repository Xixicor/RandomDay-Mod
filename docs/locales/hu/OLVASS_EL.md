# RandomDay magyarul

> [!IMPORTANT]
> ## Projektállapot — a RandomDay tesztelése lezárult
>
> A RandomDay tesztüzeme befejeződött, a nyilvános tesztszerver pedig hamarosan bezár.
>
> A művelet során a RandomDay és a RandomDayGuard együtt futott ismételt profilváltásokon, normál és megszakított szerver-újraindításokon, helyreállítási és visszaállítási ellenőrzéseken, kibővített modintegráción, szerverbizonyíték-gyűjtésen és üzemeltetői jelentések felülvizsgálatán keresztül.
>
> Ezzel megszereztük a kívánt ismereteket: hogyan viselkednek a váltakozó sandboxprofilok valós dedikáltszerver-életciklusokban; hogyan működik együtt a RandomDay a támogatott kibővített modokkal; és milyen mértékben tudja a RandomDayGuard a szerver által rögzített bizonyítékokat hasznos, óvatos megfigyeléssé alakítani anélkül, hogy a hiányokat vagy feltételezéseket tényként mutatná be.
>
> **A tesztszerveren használt összeállítás:**
>
> - RandomDay privát fejlesztői build `v0.41.76`
> - RandomDayGuard privát fejlesztői build `v0.46.130`
> - Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
> - Lethal Lasers `1.0 UE4SS`
> - ANTE Up `0.26`
> - Encounter Director integration — a RandomDay saját DynamicSpawns-bővítménye, nem külön terjesztett mod
> - UE4SS `v3.0.1 Beta #0` (Git `01e0a584`; Nexus `v3.0.1-940-g01e0a584`)
> - Abiotic Factor dedikált szerver `1.4.0.27939`
>
> A jelenleg közzétett csomagok továbbra is a RandomDay `v0.3.16-alpha` és a RandomDayGuard `v0.4.12-alpha`.
>
> Mindkét projekt fejlesztése egyelőre szünetel. A meglévő kiadások és dokumentációk elérhetők maradnak, és visszatérhetünk, amikor ismét kedvet érzünk a munka folytatásához.
>
> Ez az összeállítás a művelet során használt elemeket dokumentálja; nem minimumverzió-követelmény, és nem garantál kompatibilitást a játék, a betöltő vagy a modok későbbi verzióival. Az utolsó hivatalosan rögzített ciklus az Abiotic Factor `1.4.0.27939` verzióját használta.

**v0.3.16-alpha**

A RandomDay teljes `SandboxSettings.ini` fájlt készít az Abiotic Factor következő
indításához. A futó munkamenet szabályait nem módosítja; az aktív és a következő
indításra előkészített profil külön állapotként jelenik meg.

## Telepítés és ellenőrzés

Kövesse a [telepítési útmutatót](TELEP%C3%8DT%C3%89S.md). A helyes mappa
`ue4ss/Mods/RandomDay`, a `mods.txt` pedig tartalmazza ezt: `RandomDay : 1`.
Általában az első indítás előkészít, a következő pedig aktivál egy profilt.

Ellenőrizze a `runtime/current/randomday_status.json`,
`runtime/rotation_state.txt` és `web_export/today.json` fájlt. Az aktív és az
előkészített profil azonosítója mindháromban egyezzen.

## Játékélmény kiválasztása

Az üzemmód, család, kezdőnap és haladás a
`RandomDay/Scripts/ax_config/server.lua` fájlban állítható. Olvassa el a
[Kezdés](KEZDJE_EL_ITT.md), [Profilválasztás](V%C3%81LASSZ_EGY_PROFILT.md),
[Beállítás](KONFIGUR%C3%81CI%C3%93.md) és [Hibaelhárítás](HIBAELH%C3%81R%C3%8DT%C3%81S.md) oldalakat.

A `HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` és
`BridgeSupports=0` a mellékelt profilépítő kezdőértékei, nem az Abiotic Factor
kötelező szabályai. Módosításuk és újragenerálásuk a beállítási leírásban található.

A parancsok, elérési utak, INI-kulcsok és állapotok angolul maradnak, hogy
pontosan egyezzenek a valódi fájlokkal.

## Alfa kiadás és tartós beállítások

Ez alfa kiadás. A dokumentált telepítési, váltási és helyreállítási útvonalakat teszteltük; a kompatibilitást és a használhatóságot tovább javítjuk.

A `RandomDay/Scripts/ax_config/server.lua` fájlban a `sandbox.profile_overrides` mind a négy értéket megtartja minden családhoz és naphoz. Állítsa le a szervert, egyszer módosítsa, majd indítsa újra. A későbbi váltások és indítások ugyanazokat az értékeket használják; csak a `SandboxSettings.ini` módosítása ideiglenes.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Az alábbi opcionális modok a saját készítőik külön letöltései. A RandomDay nem terjeszti és nem módosítja a funkcióikat; az engedélyezett adapter csak meglévő, támogatott beállításokat változtat. Köszönjük a készítők és karbantartók munkáját.

## Teljes dokumentációs könyvtár

Minden nyilvános Markdown-dokumentum elérhető ezen a nyelven, lokalizált fájlnevekkel.

- [Nyissa meg a lokalizált dokumentációs indexet](DOKUMENT%C3%81CI%C3%93.md)
