<a id="start-here-complete-the-first-randomday-cycle"></a>
# Kezdje itt: fejezze be az elsőt RandomDay ciklus

> **Kanonikus angol forrás:** [START_HERE.md](../../START_HERE.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Ez az útmutató RandomDay telepítve van. Megmutatja, hogy a mod mit változtat, mit hagy magára, és hogyan lehet felismerni egy sikeres ciklust.

<a id="know-the-two-states"></a>
## Ismerje meg a két állapotot

Az Abiotic Factor RandomDay elindul. RandomDay ezért két világosan megnevezett állapotot tart meg:

- **Aktív profil:** azok a szabályok, amelyeket az aktuális munkamenet már használ.
- **Előkészített profil:** a következő kezdéshez mentett szabályokat.

Az előkészített profil nem módosítja a már folyamatban lévő munkamenetet.

<a id="dedicated-server-prepare-the-next-profile"></a>
## Dedikált szerver: készítse elő a következő profilt

1. Indítsa el a szervert a szokásos módon.
2. Várjon RandomDay az indítási munka befejezéséhez.
3. Megnyitás `RandomDay/web_export/today.html` a telepített mod mappában.
4. Keresés **Aktív profil** és **Előkészített profil**.

Az első sikeres indításkor az oldalnak meg kell neveznie a már aktív szabályokat és egy másik profilt, amely a következő indításra vár. Az oldal ismerteti a választott családot, pozíciót és azt is, hogy az elkészített fájl átment-e a biztonsági ellenőrzésen.

Ne indítsa újra csak az állapotmódosítás érdekében. Játssz az aktív szabályokkal a következő tervezett szerver indulásáig.

<a id="dedicated-server-activate-it-later"></a>
## Dedikált szerver: aktiválja később

1. Állítsa le és indítsa el a szervert a következő tervezett újraindításkor.
2. Nyissa meg újra az olvasható állapotoldalt.
3. Győződjön meg arról, hogy a korábban elkészített profil aktívként szerepel.
4. Erősítse meg RandomDay elkészítette a következő profilt.

Az előkészítés, majd aktiválás átmenet egy teljes RandomDay ciklus.

<a id="temporary-dedicated-servers"></a>
## Ideiglenes dedikált szerverek

Az ideiglenes viselkedés ugyanazt a dedikált szervercsomagot használja. Itt: [Konfiguráció](KONFIGUR%C3%81CI%C3%93.md), válassza ki, hogy egy új futás kezdődjön egy adott profilon, vagy válasszon egy véletlenszerű kezdőpontot. Az állapotoldal továbbra is elválasztja az aktív profilt a következő kezdésre előkészített profiltól.

<a id="singleplayer-or-lan"></a>
## Egyjátékos vagy LAN

1. Indítsa el a játékot egyszer a singleplayer/LAN csomag telepítve.
2. Zárja be teljesen a játékot RandomDay befejeződik.
3. Olvassa el a generált összefoglalót.
4. Másolja a generált `SandboxSettings.ini` a kiválasztott világba, miközben a játék be van zárva.
5. Kezdje el ezt a világot, és erősítse meg a várt szabályokat.

A helyi csomag soha nem választ világot, és nem másolja be a fájlt egy mentésbe. Lásd: [Singleplayer és LAN](SINGLEPLAYER_LAN.md) a teljes eljáráshoz.

<a id="if-the-expected-result-is-missing"></a>
## Ha a várt eredmény hiányzik

Ne indítsa újra. Őrizze meg az aktuális fájlokat, és válassza ki a megfelelő tünetet a [Hibaelhárítás](HIBAELH%C3%81R%C3%8DT%C3%81S.md). A normál eredmény mindig egy aktív profilt és egy előkészített profilt vagy egy egyértelmű előkészítési hibát nevez meg.

<a id="continue"></a>
## Folytatás

- [Válassz játékstílust](V%C3%81LASSZ_EGY_PROFILT.md)
- [Válassza ki az indítási és a továbblépési viselkedést](KONFIGUR%C3%81CI%C3%93.md)
- [Működtetés és helyreállítás RandomDay](M%C5%B0VELETEK.md)
- [Az elforgatás megértése](CSAL%C3%81D_ROT%C3%81CI%C3%93.md)
