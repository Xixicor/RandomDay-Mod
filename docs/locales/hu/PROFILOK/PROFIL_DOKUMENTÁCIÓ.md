<a id="randomday-profile-documentation"></a>
# RandomDay profildokumentáció

> **Kanonikus angol forrás:** [README.md](../../../profiles/README.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Verzió: `v0.3.16-alpha`

- Családok: **17**
- Profilok: **289**
- SandboxSettings szótárbejegyzések: **46**

Válasszon családot játékmeneti szándék alapján a [profilválasztási útmutató](../V%C3%81LASSZ_EGY_PROFILT.md), majd használja ezt a generált indexet a pontos értékekhez.

Ezek a fájlok a futásidejű Lua forrásból és annak dictionary/translation szerződést. Megmutatják a szállított `sandbox.profile_overrides` alapértékek; az egyik szerver konfigurált értékei eltérhetnek:

- `profiles.generated.json`: géppel olvasható profilok, nyers értékek, szótár és fordítások.
- `FULL_PROFILE_REFERENCE.md`: teljes index- és értelmezési szabályok.
- `SANDBOX_SETTINGS_KEYS.md`: teljes 46 kulcsos szótár.
- `families/*.md`: részletes 17 napos családi referenciák.

Újragenerálás a következővel: `python -B tools/generate_profile_docs.py` Ellenőrizze az eltolódást a következővel: `python -B tools/generate_profile_docs.py --check`
