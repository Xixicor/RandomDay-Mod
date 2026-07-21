# RandomDay magyarul

**v0.3.16-alpha**

A RandomDay teljes `SandboxSettings.ini` fájlt készít az Abiotic Factor következő
indításához. A futó munkamenet szabályait nem módosítja; az aktív és a következő
indításra előkészített profil külön állapotként jelenik meg.

## Telepítés és ellenőrzés

Kövesse a [telepítési útmutatót](../../../INSTALL.md). A helyes mappa
`ue4ss/Mods/RandomDay`, a `mods.txt` pedig tartalmazza ezt: `RandomDay : 1`.
Általában az első indítás előkészít, a következő pedig aktivál egy profilt.

Ellenőrizze a `runtime/current/randomday_status.json`,
`runtime/rotation_state.txt` és `web_export/today.json` fájlt. Az aktív és az
előkészített profil azonosítója mindháromban egyezzen.

## Játékélmény kiválasztása

Az üzemmód, család, kezdőnap és haladás a
`RandomDay/Scripts/ax_config/server.lua` fájlban állítható. Olvassa el a
[Kezdés](../../START_HERE.md), [Profilválasztás](../../CHOOSE_A_PROFILE.md),
[Beállítás](../../CONFIGURATION.md) és [Hibaelhárítás](../../TROUBLESHOOTING.md) oldalakat.

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
