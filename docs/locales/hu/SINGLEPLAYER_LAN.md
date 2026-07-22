<a id="singleplayer-and-lan-manual-workflow"></a>
# Singleplayer és LAN kézi munkafolyamat

> **Kanonikus angol forrás:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


RandomDay's singleplayer/LAN csomagja egy teljes `SandboxSettings.ini` mappát hoz létre a modban. Kiválaszthatja a világot, és manuálisan másolja át a fájlt, miközben a játék be van zárva.

A csomag ehhez a kimenethez van zárva:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Letiltja a dedikált szerver Sandbox írását, a sandbox tükrözést és az összes opcionális adapter írást. Nem keres AppData, Steam felhasználói adatok, dokumentumok, mentési mappák, szervermappák vagy harmadik féltől származó mod mappák.

<a id="understand-the-manual-boundary"></a>
## A kézi határok megértése

Indítás előtt konfigurálja az élményt a `RandomDay/Scripts/ax_config/server.lua` helyen. A kézikönyvcsomag elfogadja a `experience.mode="auto"` vagy `"singleplayer_lan"`. Választhat egy fix vagy véletlenszerű első napot és egy szekvenciális vagy nem ismétlődő véletlenszerű 17 napos rendelést. A család kiválasztása ugyanazokat a kiválasztott, rotációs vagy nem ismétlődő véletlenszerű családbeállításokat használja, mint egy dedikált szerver.

A generált kimenet tartalmazza a jelölőt RandomDay olvassa el a következő folyamatot. Az állapot igazításához másolja a generált fájlt a kiválasztott leállított világba, mielőtt újabb generálási folyamatot indítana. A másolás nélküli ismételt indítás előremozdíthatja a mod-local sort, még akkor is, ha a világ soha nem töltötte be az előző kimenetet.

Kövesse a kanonikus [egyjátékos vagy LAN telepítési eljárás](TELEP%C3%8DT%C3%89S.md#singleplayer-or-lan) biztonsági mentéshez, csomagelhelyezéshez, engedélyezéshez, generáláshoz, kézi másoláshoz és ellenőrzéshez. Ez az oldal elmagyarázza a kézi határvonalat; nem határoz meg más telepítési módot.

Az első generáció elkészít egy profilt; nem tudja megváltoztatni az adott játékfolyamat által már betöltött szabályokat. Zárja be, másolja, és kezdje el újra használni. Csak akkor ismételje meg a ciklust, ha szándékosan szeretné, hogy a következő kitartott nap legyen.

Eltávolítás RandomDay nem állítja vissza a kézzel másolt világfájlt; használja a saját biztonsági másolatát a visszaállításhoz. Kövesd a [Távolítson el vagy vonjon vissza minden telepítést](TELEP%C3%8DT%C3%89S.md#remove-or-disable-randomday) a pontos eltávolítási eljáráshoz.
