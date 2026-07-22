<a id="choose-the-kind-of-game-you-want"></a>
# Válassza ki a kívánt játéktípust

> **Kanonikus angol forrás:** [CHOOSE_A_PROFILE.md](../../CHOOSE_A_PROFILE.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


RandomDay 289 kész világszabály-készletet tartalmaz. 17 **családok**, 17-tel **profilok** minden családban:

- a család egy átfogó játékstílus, mint például a túlélés, az építés, a lopakodás vagy a felfedezés;
- a profil egy teljes szabálykészlet a játékstíluson belül; és
- a profilszámot egy napnak hívják, mert RandomDay ezen a 17 helyen mozog a szerver újraindulásakor. Ez nem egy valós naptári nap.

Kezdje az alábbi táblázattal. Válassza ki azt a sort, amelyik a legközelebb áll a kívánt munkamenethez, majd nyisson meg egy vagy két családi oldalt a pontos hatások összehasonlításához.

<a id="start-with-a-playstyle"></a>
## Kezdje játékstílussal

| Azt szeretné | Kezdje ezzel: | Hasonlítsa össze ezeket a hatásokat |
|---|---|---|
| Gyakori közvetlen harc vagy élesebb tűzharcok | [Művelet](PROFILOK/CSAL%C3%81DOK/M%C5%B0VELETI_PROFILCSAL%C3%81D.md), [Horda](PROFILOK/CSAL%C3%81DOK/HORDA_PROFILCSAL%C3%81D.md), [Főnökvadászat](PROFILOK/CSAL%C3%81DOK/F%C5%90N%C3%96KVAD%C3%81SZAT_PROFILCSAL%C3%81D.md) vagy [Precízió](PROFILOK/CSAL%C3%81DOK/PREC%C3%8DZI%C3%93S_PROFILCSAL%C3%81D.md) | Ellenségszám, találkozási szint, pontosság, sebzés és helyreállítási napok |
| Érzékelés, sötétség vagy járőrnyomás | [Lopakodó](PROFILOK/CSAL%C3%81DOK/LOPAKOD%C3%93_PROFILCSAL%C3%81D.md), [Rémálom](PROFILOK/CSAL%C3%81DOK/R%C3%89M%C3%81LOM_PROFILCSAL%C3%81D.md) vagy [Biztonsági zárolás](PROFILOK/CSAL%C3%81DOK/BIZTONS%C3%81GI_Z%C3%81ROL%C3%81SI_PROFILCSAL%C3%81D.md) | Láthatóság, észlelési sebesség, éjszakai torzítás, robotok és biztonságos intervallumok |
| Éhség, időjárás, szennyeződés vagy kopás | [Túlélés](PROFILOK/CSAL%C3%81DOK/T%C3%9AL%C3%89L%C3%89SI_PROFILCSAL%C3%81D.md), [Viharvert](PROFILOK/CSAL%C3%81DOK/VISELT_PROFILCSAL%C3%81D.md) vagy [Biohazard](PROFILOK/CSAL%C3%81DOK/BIOHAZARD_PROFILCSAL%C3%81D.md) | Erőforrások, víz, sugárzás, időjárás, tartósság és halálbüntetések |
| Alapnövekedés, szállítás, készletezés vagy ellátás tervezése | [Builder](PROFILOK/CSAL%C3%81DOK/%C3%89P%C3%8DT%C5%90_PROFILCSAL%C3%81D.md) vagy [Logisztika](PROFILOK/CSAL%C3%81DOK/LOGISZTIKAI_PROFILCSAL%C3%81D.md) | Kötegméret, készlet, súly, tartósság, teljesítmény és építési nyomás |
| Utazás, portálok, zsákmányútvonalak vagy felfedezés | [Expedíció](PROFILOK/CSAL%C3%81DOK/EXPED%C3%8DCI%C3%93S_PROFILCSAL%C3%81D.md), [Anteverse](PROFILOK/CSAL%C3%81DOK/ANTEVERSE_PROFILCSAL%C3%81D.md) vagy [Scavenger](PROFILOK/CSAL%C3%81DOK/SCAVENGER_PROFILCSAL%C3%81D.md) | Mozgás, portálnyomás, jutalmak, az útvonal kockázata és a bázistól távol töltött idő |
| Kiszámíthatatlan kombinációk vagy átfogó végső kihívás | [Kísérleti](PROFILOK/CSAL%C3%81DOK/K%C3%8DS%C3%89RLETI_PROFILCSAL%C3%81D.md) vagy [Megfelelőségi teszt](PROFILOK/CSAL%C3%81DOK/MEGFELEL%C5%90S%C3%89GI_TESZTPROFILCSAL%C3%81D.md) | Minden nap ebben a szándékosan vegyes folyamatban |

Ezek a javaslatok navigációt jelentenek, nem helyettesítik a pontos értékeket. Minden családi oldal felsorolja a fő hatásokat, a domain besorolásait, a találkozási kontextust, mind a 46 sandbox-beállítást és az opcionális adapterválasztásokat minden napra.

<a id="confirm-the-exact-family-and-day"></a>
## Erősítse meg a pontos családot és napot

1. Nyissa meg a családi oldalt, és hasonlítsa össze a 17 napos pozíciókat.
2. Használja a [teljes profil hivatkozás](PROFILOK/TELJES_PROFIL_REFERENCIA.md) a profilnevek és az értelmezési szabályok összehasonlításához mind a 289 kombinációban.
3. Használja a [sandbox beállítási kulcsok](PROFILOK/SANDBOX_BE%C3%81LL%C3%8DT%C3%81SI_KULCSOK.md) az egyes nyers értékek, támogatott tartományok, pontszámok sávjai és a szállított profil alapértelmezett értelmezéséhez.
4. Használja a [`profiles.generated.json`](../../profiles/profiles.generated.json) amikor a szerszámozáshoz pontos, gépileg olvasható profilra, szótárra és fordítási forrásra van szükség.

<a id="configure-the-chosen-experience"></a>
## A kiválasztott élmény konfigurálása

Kövesd [Válasszon élményt](KONFIGUR%C3%81CI%C3%93.md#choose-an-experience) a családi mód, a jogosult családlista, a kezdőnapi viselkedés és a szekvenciális vagy nem ismétlődő véletlenszerű napi sorrend beállításához. RandomDay megtartja a kiválasztott sorrendet; A helyreállítás nem állítja csendben újra a folyamatban lévő családi futást.
