<a id="seventeen-families-seventeen-days"></a>
# Tizenhét család, tizenhét nap

> **Kanonikus angol forrás:** [FAMILY_ROTATION.md](../../FAMILY_ROTATION.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


RandomDay 17 játékstílus-családot tartalmaz, 17 teljes napi profillal minden családban. Ez 289 dokumentált family/day kombinációk.

A család határozza meg a futás tág stílusát. Az 1–17. nap biztosítja a család előrehaladását a nyomás, a felépülés, az ütemezés és az erőforrások terén. Egy futtatás minden nap azonosítóját pontosan egyszer tárolja. Az újraindítás a következő tárolt pozícióra lép; RandomDay nem módosítja a családokat a sorrend közepén.

<a id="selection-modes"></a>
## Kiválasztási módok

| Mód | Új futtatási viselkedés | Futtatás közben |
|---|---|---|
| `selected_run` | Felhasználások `profile_family.selected_family`. | Megtartja a családot mind a 17 tárolt pozíción keresztül. |
| `non_repeating_random_run` | Kiválaszt egy jogosult, használaton kívüli családot. | Megtartja mind a 17 pozíciót, és elkerüli a családi ismétléseket, amíg a jogosult lista ki nem fogy. |
| `rotation_run` | A következő családot veszi át a beállított sorrendben. | Megtartja mind a 17 tárolt pozíción. |

A szállított konfiguráció a következőt használja: `non_repeating_random_run`. A végleges tárolt pozíció után felkészült család még mindig csak felkészült; újraindítás után válik aktívvá. `cycle.start_day_mode` és `cycle.day_progression_mode` válassza ki az első napi és napi sorrendet anélkül, hogy megváltoztatná a család kiválasztását.

<a id="families"></a>
## Családok

- Művelet
- Túlélés
- Lopakodó
- Horda
- Főnökvadászat
- Scavenger
- Builder
- Expedíció
- Biztonsági zárolás
- Biohazard
- Anteverse
- Rémálom
- Viharvert
- Precízió
- Logisztika
- Kísérleti
- Megfelelőségi teszt

Használja a [generált profilindexre](PROFILOK/PROFIL_DOKUMENT%C3%81CI%C3%93.md) egy család megnyitásához, vagy a [teljes profil hivatkozás](PROFILOK/TELJES_PROFIL_REFERENCIA.md) módot az összes 289 kombináció áttekintéséhez. A [sandbox kulcshivatkozás](PROFILOK/SANDBOX_BE%C3%81LL%C3%8DT%C3%81SI_KULCSOK.md) meghatározza az egyes támogatott értékeket és a szállított profil alapértelmezett értékét.

<a id="custom-families-and-days"></a>
## Egyéni családok és napok

A családi forrás itt él:

```text
RandomDay/Scripts/ax_profiles/families/
```

A Markdown és JSON a `docs/profiles/` generált hivatkozások. Változtassa meg a forrást, ne a generált kimenetet, majd futtassa a teljes profile/schema érvényesítés. Egy egyéni készlet nem áll készen, ha csak egy nap elemzése történik; mind a 17 napnak egyeznie kell a konfigurált profil alapértelmezett értékeivel, típusaival, tartományaival és a generált referenciával.
