<a id="compatibility"></a>
# Kompatibilitás

> **Kanonikus angol forrás:** [COMPATIBILITY.md](../../COMPATIBILITY.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


<a id="supported-installations"></a>
## Támogatott telepítések

RandomDay az Abiotikus Factor telepítésekhez készült, amelyek betölthetők UE4SS Lua modok.

| Környezet | Támogatás | Csomag |
| --- | --- | --- |
| Windows dedikált szerver | Támogatott | Dedikált szerver ZIP |
| Windows egyjátékos vagy LAN gazdagép | Támogatott kézi másolási munkafolyamat | Singleplayer/LAN ZIP |
| Linux szerver Wine vagy Proton használatával | Nincs kiadási tesztelés | A Windows dedikált csomagot tapasztalt üzemeltetők értékelhetik, de kompatibilitási ígéretet nem teszünk. |
| Xbox és PlayStation | Nem támogatott | Ezek a platformok nem biztosítják a fájlhozzáférést és a UE4SS Ez a kiadás megköveteli a Lua betöltési útvonalát. |

RandomDay nem egyesíti a két csomagot. Egy dedikált szerver, amely csak alkalmanként indul el, továbbra is a dedikált szervert használja ZIP és kiválasztja az ideiglenes viselkedést a konfigurációban.

<a id="abiotic-factor-updates"></a>
## Abiotikus faktor frissítései

A játék frissítése után kezdje úgy, hogy a szerver leállt, és őrizze meg a világ, `SandboxSettings.ini` és RandomDay állapot. Erősítse meg a UE4SS betöltődik, majd végezzen el egyet RandomDay ismételje meg a ciklust, és ellenőrizze az aktív és az előkészített profilt is, mielőtt folytatná a normál forgatást.

<a id="companion-mods"></a>
## Kísérő módok

RandomDay csak akkor módosítja a külön telepített modot, ha annak teljes beállítási elrendezése megegyezik egy támogatott adapterrel. A verziószám önmagában nem elég.

| Integráció | A jelenlegi verzió felülvizsgálva | RandomDay támogatási határ |
| --- | --- | --- |
| Kaotikus Spawn Engine / DynamicSpawns | `0.8.5`; fő fájl `0.8.5-Hotfix1` | A támogatott `SharedData.lua` az elrendezés lefedi a spawn-ot, a cooldown-t, a populációt, a portált, az incidenst, a főnököt és a RandomDay találkozik az adapterreferenciában felsorolt ​​beállításokkal. |
| Halálos lézerek | `1.0-UE4SS` | A támogatott `Scripts/main.lua` felismerve, kibocsátva, reflektálva. beállítások. |
| ANTE Fel | `1`, frissítve: 2026. július 19. | A jelenlegi nyilvános elrendezés nem fejezte be az adapter rögzítését. RandomDay változatlan formában kihagyja az egyező fájlt az elrendezés ellenőrzéséig. |

A hiányzó, letiltott vagy fel nem ismert kísérőmod változatlan marad. Lásd: [Támogatott opcionális modok](T%C3%81MOGATOTT_ADAPTEREK.md) a pontos beállításokhoz, konfigurációs vezérlőkhöz, biztonsági mentési viselkedéshez és helyreállítási lépésekhez.

<a id="what-compatibility-validation-proves"></a>
## Mit bizonyít a kompatibilitás ellenőrzése?

A lerakatellenőrzés igazolhatja a szállított csomagelrendezést, a konfigurációs lefedettséget, a felismert illesztőmezőket, a biztonsági mentés és visszaállítás viselkedését, valamint az ismeretlen elrendezés biztonságos elutasítását. Nem bizonyíthat minden jövőbeli Abiotikus Tényezőt, UE4SS vagy companion-mod verzió. A kibocsátási megjegyzések a tesztelt verziókat nevezik meg ahelyett, hogy a sikeres betöltésből származó kompatibilitást feltételeznék.
