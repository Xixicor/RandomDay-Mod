<a id="supported-optional-mods"></a>
# Támogatott opcionális modok

> **Kanonikus angol forrás:** [SUPPORTED_ADAPTERS.md](../../SUPPORTED_ADAPTERS.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


RandomDay egy külön telepített modot követhet az aktív RandomDay profil. Ez a funkció csak a dedikált szerver csomagban érhető el. A singleplayer/LAN csomag soha nem szerkeszt másik modot.

RandomDay nem tartalmazza vagy terjeszti tovább az itt felsorolt ​​modokat. Telepítse és engedélyezze az egyes opcionális modokat a saját Nexus-oldaláról, és először kövesse a szerzői utasításokat. RandomDay csak a telepített fájlban már meglévő felismert beállításokat módosítja. Nem ad hozzá funkciókat egy másik modhoz, és az adapter letiltható a mod eltávolítása nélkül. A dedikált szerver csomag `external_mods.enabled = true`.

<a id="what-randomday-changes"></a>
## Mit RandomDay módosítások

| Opcionális integráció | Az aktív profilból kiválasztott beállítások |
| --- | --- |
| Kaotikus Spawn Engine / DynamicSpawns | Kemény mód, player/area lehűlési viselkedés, vihar és forró zóna tevékenység, boss és burst spawnok, spawn ciklus időzítése, kis és nagy lehűlési tartományok, ívási távolság, global/local/mod caps, portal-storm, Order-beach és boss esélyek, valamint minimális spawn területenként. |
| Opcionális Chaotic Spawn Engine bővítménymezők | Amikor a telepített `SharedData.lua` már tartalmazza a RandomDay kiterjesztési mezőkben az illesztő megadhatja a találkozási profilt, a szintet, a témát, a csoportkorlátokat, a különleges eseményekre és a vegyes eseményekre vonatkozó értékeket, a költségvetést, a lehűlést és a világ hatókörét. Ez nem egy újabb letölthető mod. |
| Halálos lézerek | Modaktiválás, valamint károk, valamint a kihelyezhető sugárzók, környezeti sugárzók, reflektorok és prizmák vezérlőinek engedélyezése. |
| ANTE Fel | Respawn-frekvencia szorzó, Antevariant frekvencia és a meglévő development/debug kapcsolók. RandomDay kikapcsolva tart minden felismert fejlesztési és hibakereső kapcsolót. |

A profilkönyvtár minden támogatott naphoz megad egy előkészített értékkészletet. Egy csendes nap csökkentheti a nyomást, egy veszélyes nap növelheti, a gyógyulási nap pedig élesen csökkentheti. RandomDay nem számít ki tetszőleges értékeket rendszerindításkor; az aktív profil által megnevezett felülvizsgált értékkészletet alkalmazza.

<a id="current-version-evidence"></a>
## A jelenlegi verzió bizonyítéka

Ezt a táblázatot 2026. július 20-án felülvizsgálták. A „Felismert” azt jelenti, hogy a kiadott adapter teljes helyi elrendezéssel rendelkezik a megnevezett beállításokhoz. Ez nem jelenti azt, hogy minden jövőbeli kiadásnak ugyanolyan fájlformája lesz.

| Opcionális mód | A jelenlegi upstream verzió felülvizsgálva | RandomDay kiadás állapota |
| --- | --- | --- |
| [Kaotikus Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156) | Nexus oldal `0.8.5`; aktuális főfájl `0.8.5-Hotfix1` | Felismerve `DynamicSpawns/Scripts/SharedData.lua` elrendezés a teljes spawn, cooldown, cap, portál, breach és boss beállításkészlethez. |
| Opcionális Chaotic Spawn Engine bővítménymezők | Nincs külön letöltés; nem kötelező mezők ugyanazon belül `SharedData.lua` | Csak akkor alkalmazza, ha már minden bővítménymező létezik. A szokásos Chaotic Spawn Engine telepítések változatlanok maradnak, ha ezek a mezők hiányoznak. A belső adapter azonosítója `encounter_director`; nem nevez meg külön nyilvános modot. |
| [Halálos lézerek](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Felismerve `LethalLasers/Scripts/main.lua` elrendezés a fent felsorolt ​​összes emitter, környezeti emitter, reflektor és prizma beállításhoz. |
| [ANTE Fel](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, frissítve: 2026. július 19. | A kiadott adapter felismeri a korábbit `Settings.lua` mezőkészlet. Az 1-es verzió nem tekinthető kompatibilisnek mindaddig, amíg az aktuális fájlt hozzá nem adják a fixture-hez, és át nem ment az adapter tranzakciós tesztjein. Ha az elrendezése eltér, RandomDay jelentések `skipped_incompatible`, és változatlanul hagyja. |

<a id="how-recognition-protects-another-mod"></a>
## Hogyan védi a felismerés egy másik modot

Nem elegendő egy ismerős fájlnév megtalálása. Írás előtt RandomDay ellenőrzi, hogy az adott adapterhez szükséges összes beállítás megtalálható-e a célfájlban. Csak a meglévő hozzárendeléseket javítja; soha nem talál ki hiányzó beállítást.

A felismert elrendezéshez RandomDay egy korlátos tranzakciót hajt végre:

1. számítson ki minden tervezett értéket az aktív profilhoz;
2. minden célfájl biztonsági másolatának létrehozása és bájtellenőrzése;
3. írjon egy függőben lévő testvérfájlba;
4. a függőben lévő fájl népszerűsítése és a mentett bájtok visszaolvasása;
5. erősítsen meg minden tervezett értéket;
6. használjon automatikus visszaállítást az ellenőrzött biztonsági másolatokból, ha valamelyik lépés sikertelen.

DynamicSpawns egy tranzakcióba foglalhatja a beállításait és a felismert lejátszó-üzenetfájlokat. RandomDay nem jelenti a többfájlos frissítést sikeresnek, hacsak nem fejeződik be a teljes tranzakció.

<a id="read-an-adapter-result"></a>
## Olvassa el az adapter eredményét

| Eredmény | Jelentés |
| --- | --- |
| `applied` | A felismert beállítások módosultak, és visszaolvasásra kerültek. |
| `already_current` | A felismert beállítások már megegyeztek az aktív profillal. |
| `not_installed` | Az opcionális mod nem található. RandomDay nélküle folytatódott. |
| `skipped_incompatible` | A rendszer talált egy fájlt, de a teljes beállítási elrendezését nem ismeri fel a rendszer. Semmi sem változott. |
| `partial` | Az elsődleges DynamicSpawns beállítások alkalmazásra kerültek, de az opcionális lefordított üzenetfájl nem fejeződött be. Tekintse át a rögzített adapter eredményét. |
| `failed_rolled_back` | Egy tranzakció meghiúsult, és a korábbi bájtok érintetlenek maradtak, vagy vissza lettek állítva és ellenőrizve. |
| `rollback_failed` | RandomDay nem tudta ellenőrizni a módosítást vagy a visszaállítást. Tartsa leállítva az érintett modot, és állítsa vissza manuálisan a rögzített biztonsági másolatot. |

A hiányzó és nem kompatibilis opcionális modok nem állnak meg RandomDay's Sandbox forgatás a szállított konfigurációban.

<a id="enable-or-disable-integrations"></a>
## Integráció engedélyezése vagy letiltása

A vezérlők itt találhatók:

```text
RandomDay/Scripts/ax_config/server.lua
```

A dedikált szerver csomag a következőket tartalmazza:

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

- Beállítás `enabled = false` a leállításhoz RandomDay ne ellenőrizze vagy módosítsa az összes opcionális modot.
- Távolítsa el az egyik adapterazonosítót, hogy magára hagyja a modot, miközben a többi integráció aktív marad.
- Megtartás `patch_only_existing_keys` és `backup_before_write` értéke `true`. Ezek jelentik az írásbiztonság határát.
- Megtartás `optional_by_default = true` kivéve, ha minden felsorolt ​​opcionális mod kötelező része a szervernek. `false` hiányzó, inkompatibilis vagy biztonságosan visszagurított adapter befolyásolja az összesített eredményt.

Nem kell eltávolítania vagy letiltania az opcionális modokat, ha letiltja azt RandomDay adapter.

<a id="thanks-and-ownership"></a>
## Köszönet és tulajdonjog

Köszönet a [Kaotikus Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156), [Halálos lézerek](https://www.nexusmods.com/abioticfactor/mods/141) és [ANTE Fel](https://www.nexusmods.com/abioticfactor/mods/201). A modjaik különálló letöltések maradnak, amelyeket saját oldalaik, engedélyeik és támogatási utasításaik szabályoznak. RandomDay's az adapterek csak a telepített, felismert elrendezésben található konfigurációs mezőket használják; nem terjesztik újra és nem cserélik ki azokat a modokat.

<a id="backups-and-manual-recovery"></a>
## Biztonsági mentések és kézi helyreállítás

Az ellenőrzött, írás előtti másolatokat a következő helyen őrzik meg:

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

Ha `rollback_failed` jelenik meg:

1. állítsa le a játékot vagy a szervert;
2. beállítás `external_mods.enabled = false`, vagy távolítsa el az érintett adapterazonosítót;
3. megőrzi az aktuális célfájlt és testvérét pending/rollback fájl;
4. egyeztesse a számozott biztonsági mentési fájlokat az illesztő eredményében rögzített célútvonalakkal;
5. visszaállítja az ellenőrzött bájtokat a szolgáltatás leállítása közben;
6. indítsa el magától az opcionális modot, mielőtt újra engedélyezné RandomDay adapter.

Ne erőltesse a kompatibilitást beállítások átnevezésével vagy hiányzó kulcsok hozzáadásával. Használjon felismert elrendezést, hagyja letiltva az adaptert, vagy adjon hozzá egy új verziót és tranzakciótesztet, mielőtt kiterjeszti a támogatási igényt.
