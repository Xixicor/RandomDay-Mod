<a id="interpret-runtime-state-and-output-schemas"></a>
# A futásidejű állapot és a kimeneti sémák értelmezése

> **Kanonikus angol forrás:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Ez a kanonikus mező-teljes séma útmutató. Megválaszolja, hogy mit jelentenek az egyes mezők, állapotok, üres értékek és gépi eredmények. Használja a [futásidejű fájltérkép](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md) előállítókhoz, útvonalakhoz, írási időzítéshez, megőrzéshez, tranzakciós oldalláncokhoz és helyreállítási helyekhez.

Az útmutatóban szereplő összes elérési út a telepítetthez viszonyított `RandomDay/` mappát, kivéve, ha egy sor kifejezetten megnevezi a konfigurált sandboxot vagy egy opcionális adaptercélt. A futásidejű kimenetek a telepítés után jönnek létre, és nem tagjai egyik kiadásnak sem ZIP.

<a id="choose-the-authoritative-view"></a>
## Válassza ki a mérvadó nézetet

| Szükség | Hiteles forrás |
|---|---|
| Az aktuális folyamat által betöltött szabályok | RandomDay jelölő a `SandboxSettings.ini` indításkor olvasható |
| Előkészített sorkönyvelés | `runtime/rotation_state.txt`, séma `1` |
| Részletes helyi állapot | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Nyilvános, géppel olvasható állapot | `web_export/today.json`, séma `2` és `randomday_public_status_v2` |
| Ember által olvasható állapot | `web_export/today.html`, ugyanabból a nyilvános állapotátmenetből származik |
| Fordítási szókincs | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Pontosan korlátozott játékos értesítés | `runtime/current/player_message_preview.txt` |

A HTML nézet, előnézet és lefordított összefoglalók származtatott nézetek. Nem írják felül a sandbox jelölőt, a tranzakció eredményét vagy a nyers profilértékeket. Keresse meg a legutolsó jól ismert fájlokat, biztonsági másolatokat, oldalkocsikat, tükröket, adaptercélokat és `UE4SS.log` in [Futóidejű fájlok](FUT%C3%93IDEJ%C5%B0_F%C3%81JLOK.md).

<a id="rotation-state-schema"></a>
## Forgatási állapot séma

`runtime/rotation_state.txt` sémát használ `1` és tartalmaz egyet `key=value` pár soronként:

| Mező | Jelentés |
|---|---|
| `schema_version` | Kell lennie `1`. |
| `mod_version` | A csomagazonosító beolvasva innen: `.randomday_version`. |
| `rotation_id` | A jogosult családi készleten áthaladó jelenlegi út azonosítója. |
| `mode` | `selected_run`, `non_repeating_random_run` vagy `rotation_run`. |
| `available_families` | Vesszővel elválasztott alkalmas családi azonosítók a konfigurációs szűrést követően. |
| `remaining_families` | A jogosult családok még nincsenek kiválasztva a jelenlegi nem ismétlődő bérletben. |
| `completed_families` | Olyan családok, amelyeknek a teljes tartósan fennálló 17 pozíciós rendelése az aktuális bérlettel befejeződött. |
| `active_family`, `active_day` | A kiválasztás végrehajtásakor rögzített aktív jelölő információ. A sandbox marker a mérvadó a következő rendszerindításkor. |
| `prepared_family`, `prepared_day` | A profil a következő újraindításhoz visszatartva. |
| `active_run_id` | Az előkészített kijelöléshez társított családi azonosító. |
| `last_status` | A fájlt létrehozó naptárkiválasztás állapota. |
| `session_mode` | Megoldott állandó dedikált, ideiglenes dedikált vagy singleplayer/LAN életciklus. |
| `start_day_mode` | Konfigurált vagy egyszeri véletlenszerű indítási választás egy új futtatáshoz. |
| `day_progression_mode` | Borkolt szekvenciális vagy nem ismétlődő véletlenszerű progresszió. |
| `day_order` | Vesszővel elválasztott megmaradt napazonosítók az elkészítésük pontos sorrendjében. |
| `day_position` | Az előkészített nap pozíciója itt: `day_order`. |
| `updated_at` | Helyi írási idő az operátorok összehasonlításához. |

Az állapotírás csak akkor fogadható el, ha a sémajelölő, az előkészített család és az előkészített nap megfelelően visszaolvasott. Egy olvashatatlan aktuális fájl visszakerülhet a `rotation_state.last_good.txt`; a kiválasztott sandbox marker továbbra is meghatározza, hogy a játék mit töltött be az aktuális folyamathoz.

<a id="runtime-status-json"></a>
## Futtatási állapot JSON

`runtime/current/randomday_status.json` használ `status_schema=randomday_runtime_status_v2`. Fő mezőcsoportjai a következők:

| Csoport | Mezők és értelmezés |
|---|---|
| Identitás | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Kiválasztás | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Aktív | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Előkészítve | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Emberi összefoglalók | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Írásbiztos | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Adapter proof | `adapter_status`, `adapter_results`; minden adapterrekord kompatibilitási bizonyítékot, transaction/rollback állapotot, megváltozott fájlok számát és szerkesztett célhivatkozásokat tartalmaz |
| Határok | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Diagnosztika | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Az ismeretlen aktív értékek azt jelentik, hogy az aktuális sandbox nem tartalmaz olvasható RandomDay jelölő. Ezeket nem szabad előkészített értékekkel helyettesíteni. Adapter útvonalak kívül `runtime/` kívüli adapter elérési utak alapnévreferenciává redukálódnak, és a diagnosztikai karakterláncok törlik az észlelt abszolút elérési utakat.

<a id="public-status-json"></a>
## Nyilvános állapot JSON

`web_export/today.json` használ `schema_version=2` és `status_schema=randomday_public_status_v2`. Megismétli az azonosító, active/prepared, kijelölés, tranzakció, illesztő és újraindítási határ tényeket, amelyekre egy operátornak szüksége van. Tartalmazza még:

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order` és `prepared_day_position`;
- `family_selection_mode`, örökölt `family_locked_until_day_17` és `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families` és ezek számát;
- előkészített találkozási profilt, szintet, témát és vegyes találkozási esélyt;
- világhatókör engedélyezése, vagy csak a nyitva, w, és-l számú házirend beállítás konfigurált kizárt világ minták;
- előkészített üzenetek és kombinált üzenetek előnézetei;
- `selected_at`, `sandbox_target`, `manual_copy_required` és előkészített hash.

`profile_status` az egyik `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence` vagy `write_failed_or_rollback`. `prepared_ready=true` még mindig nem azt jelenti, hogy aktív; a későbbi indítási jelölő szükséges.

<a id="dictionary-and-translation-output"></a>
## Szótár és fordítás kimenete

`runtime/current/randomday_dictionary.json` használ `schema=randomday_runtime_dictionary_v2` és azonosítja a szótár verzióját `randomday_dictionary_v2`. Leírja a csomagmódokat, a kiválasztási állapotokat, a nyomástartományokat, a beállítási címkéket, a nyers értékeket és az egyszerű nyelvi jelentéseket. Az ismeretlen értékek egyértelműek maradnak, ahelyett, hogy megbízható leírássá alakítanák őket.

`player_message_preview.txt`, `today.json`, `today.html`, a játékon belüli értesítések pedig ugyanabból a fordítómodulból származó nézetek. Az alapul szolgáló profil és a nyers `SandboxSettings.ini` értékek továbbra is az igazság forrása.

<a id="failure-and-recovery-rules"></a>
## Hiba- és helyreállítási szabályok

1. A sikertelen függőben lévő írás vagy érvényesítés soha nem válik éles célponttá.
2. A sikertelen promóció vagy éles visszaolvasás kiváltja a visszatartott eredeti állapot visszaállítását; a művelet biztonsági mentése a visszaállítás, ha a visszaállítás meghiúsul.
3. A megőrzött visszagörgetési fájl vagy `rollback_failed` állapota kézi ellenőrzést igényel, amíg a játék vagy a szerver le van állítva.
4. A sikeres sandbox-írás és a sikertelen forgatási állapot véglegesítés leromlott, nem kész; az adapterek és az előkészített profilú üzenetek kimaradnak.
5. Az exportálási hiba nem változtatja meg a sandbox eredményét, de eltávolítja a kényelembiztos forrást. Használjon tranzakciós naplókat, állapotot és fájlvisszaolvasást.
6. A futásidejű kimenetek helyi működési adatok. Ne adja hozzá őket egy kiadáshoz ZIP vagy tegye közzé őket példaként, külön adatvédelmi felülvizsgálat nélkül.
