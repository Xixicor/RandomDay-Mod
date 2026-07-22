<a id="install-update-or-remove-randomday"></a>
# Telepítse, frissítse vagy távolítsa el RandomDay

> **Kanonikus angol forrás:** [INSTALL.md](../../../INSTALL.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


RandomDay két teljes letöltést tartalmaz. Válasszon egyet a beállított világhoz:

- használja a **dedikált szerver ZIP** minden dedikált szerverhez, beleértve a csak alkalmi munkamenetekre megnyitott szervert is;
- használja a **singleplayer/LAN ZIP** egy helyi világhoz, amelynek beállításait manuálisan másolja át.

Ne kombinálja a csomagokat. Állandó vagy ideiglenes dedikált szerver választható a RandomDay's beállítások, nem egy másik letöltés.

<a id="before-you-begin"></a>
## Mielőtt elkezdi

Készítsen visszaállítható másolatot a következőkről:

- a világ, amelyet megváltoztatsz;
- a jelenlegi `SandboxSettings.ini`;
- a meglévő `RandomDay` mappát, ha van ilyen.

Telepítés UE4SS előtte RandomDay. Az alábbi utasításokban a **Mods mappa** azt jelenti, hogy a `ue4ss/Mods/` könyvtárban a játékon belül vagy a dedikált szerver telepítésén.

<a id="dedicated-server"></a>
## Dedikált szerver

<a id="new-installation"></a>
### Új telepítés

1. Állítsa le a szervert.
2. Nyissa meg a UE4SS `Mods` mappába.
3. Kicsomagolja a dedikált szervert ZIP. Az eredmény egy `ue4ss/Mods/RandomDay/` mappa, nem egy másik mappa `RandomDay` mappába.
4. Nyissa meg a mappát, és erősítse meg `RandomDay/Scripts/main.lua` van jelen. Ha hiányzik, a ZIP rossz szintre lett kicsomagolva.
5. Megnyitás UE4SS `mods.txt` és engedélyezze ezt a sort:

   ```text
   RandomDay : 1
   ```

6. Indítsa el a szervert a szokásos módon.
7. Megnyitás RandomDay's olvasható állapotoldal, és erősítse meg, hogy megnevezi mind az aktív, mind a következő kezdésre előkészített profilt.

Az első indítás nem helyettesíti az adott munkamenet által már betöltött szabályokat. Előkészíti a következő profilt. Csak akkor indítsa újra a szervert, ha ténylegesen szeretné, hogy az előkészített profil aktív legyen.

[Ellenőrizze az első ciklust](KEZDJE_EL_ITT.md)

<a id="choose-always-on-or-temporary-behavior"></a>
### Válassza ki a mindig bekapcsolt vagy ideiglenes viselkedést

A dedikált szerver csomag mindkét stílust támogatja:

- **állandóan dedikált** folytatja a mentett forgatást a normál újraindítások között;
- **ideiglenes dedikált** kezdődhet a konfigurált vagy véletlenszerű kezdőponttól, amikor egy új ideiglenes futtatás kezdődik.

Válassza ki a viselkedést itt: [Konfiguráció](KONFIGUR%C3%81CI%C3%93.md). Ne telepítsen második csomagot a beállítás módosításához.

<a id="update-an-existing-installation"></a>
### Meglévő telepítés frissítése

1. Állítsa le a szervert, és készítse el a fent felsorolt ​​biztonsági másolatokat.
2. A régi áthelyezése `RandomDay` mappából a UE4SS `Mods` mappát. Tartsa meg, amíg a frissítés egy sikeres ciklust le nem hajt.
3. Kicsomagolja az új dedikált szervert ZIP a `Mods` mappába.
4. Csak azokat a beállításokat alkalmazza újra, amelyeket szándékosan módosított, és amelyek továbbra is léteznek az új [konfigurációs útmutató](KONFIGUR%C3%81CI%C3%93.md).
5. Csak akkor őrizze meg a dokumentált forgatási állapotú fájlokat, ha a kiadási megjegyzések szerint a formátumuk kompatibilis. Ne másoljon a régi ideiglenes kimenetet vagy a sikertelen írási fájlokat az új telepítésbe.
6. Megerősítés `RandomDay : 1` továbbra is engedélyezve van, majd indítsa el egyszer a szervert, és ellenőrizze az aktív és előkészített profilneveket.

<a id="updating-from-v0315-alpha"></a>
### Frissítés innen: v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip` volt a régi alapcsomag. `RandomDay_v0.3.15-alpha_singleplayer_patch.zip` fedvény volt, és nem önálló letöltés.

Jelenlegi `v0.3.16-alpha` lecseréli a korábbi alap és átfedés elrendezést két teljes csomagra. Ne helyezze a régi tapaszt egyik csomagra sem. Az aktuális jelölők a `.randomday_mode=dedicated_server` és `.randomday_mode=singleplayer_manual`.

<a id="singleplayer-or-lan"></a>
## Egyjátékos vagy LAN

A singleplayer/LAN csomag létrehoz egy beállítási fájlt; önmagában nem keres vagy módosít egy személyes mentést.

1. Zárd be a játékot.
2. Biztonsági mentés a világról és annak jelenlegi állapotáról `SandboxSettings.ini`.
3. Kicsomagolja a singleplayer/LAN ZIP a játékba UE4SS `Mods` mappa így egy `Mods/RandomDay/` mappa létezik.
4. Engedélyezés `RandomDay : 1` in UE4SS `mods.txt`.
5. Indítsa el egyszer a játékot, várjon RandomDay a befejezéshez, és zárja be teljesen a játékot.
6. Keresse meg a generált `SandboxSettings.ini` in RandomDay's `runtime/singleplayer_manual/` mappába.
7. Olvassa el a generált összefoglalót, majd másolja a fájlt a kiválasztott világba.
8. Indítsa el ezt a világot, és ellenőrizze, hogy a várt homokozó-viselkedés aktív-e.

LAN ugyanazt a kézi folyamatot használja, mivel a gazdagép birtokolja a helyi világot. A mod nem választ automatikusan világot és nem ír felül egyet.

[Singleplayer és LAN útmutató](SINGLEPLAYER_LAN.md)

<a id="remove-or-disable-randomday"></a>
## Eltávolítás vagy letiltás RandomDay

1. Állítsa le a játékot vagy a szervert.
2. Biztonsági másolat készítése a világról, a jelenlegi sandbox-beállításokról és RandomDay's állapot.
3. Beállítás `RandomDay : 0` in UE4SS `mods.txt` a mod letiltásához vagy a teljes áthelyezéshez `RandomDay` mappából a `Mods` mappába az eltávolításhoz.
4. Döntse el, melyik `SandboxSettings.ini` be kell tölteni a következő indításkor. Állítsa vissza a telepítés előtti másolatot, ha nem szeretné a jelenleg előkészített RandomDay profil.
5. Indítsa el a világot, és erősítse meg a szabályait, mielőtt bármilyen biztonsági másolatot törölne.

Letiltás RandomDay leállítja a profil jövőbeli előkészítését. Nem írja át a lemezen már várakozó sandbox fájlt.

<a id="recover-from-an-unsuccessful-update"></a>
## Helyreállítás sikertelen frissítés után

Leállítás az első törlési hiba után. Az ismételt újraindítások megnehezíthetik annak megállapítását, hogy melyik profil volt aktív, és melyik várt.

1. Állítsa le a játékot vagy a szervert.
2. Tegye félre a sikertelen telepítést anélkül, hogy törölné.
3. A teljes RandomDay mappa és sandbox biztonsági mentés a frissítés előtt.
4. Indítsa el egyszer, és erősítse meg a visszaállított aktív és előkészített profilneveket.
5. Használja a [Hibaelhárítás](HIBAELH%C3%81R%C3%8DT%C3%81S.md) az első hiányzó vagy sikertelen lépéshez, mielőtt újabb frissítést próbálna ki.

<a id="more-help"></a>
## További segítség

- [Első ciklus](KEZDJE_EL_ITT.md)
- [Válasszon profilt](V%C3%81LASSZ_EGY_PROFILT.md)
- [Konfiguráció](KONFIGUR%C3%81CI%C3%93.md)
- [Műveletek és helyreállítás](M%C5%B0VELETEK.md)
- [Hibaelhárítás](HIBAELH%C3%81R%C3%8DT%C3%81S.md)
- [Kompatibilitás](KOMPATIBILIT%C3%81S.md)

A kiadás-karbantartók a [Az érvényesítés feloldása](AZ_%C3%89RV%C3%89NYES%C3%8DT%C3%89S_FELOLD%C3%81SA.md). Ezek nem szükségesek a normál telepítéshez.
