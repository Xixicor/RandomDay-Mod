<a id="worked-configuration-examples"></a>
# Bevált konfigurációs példák

> **Kanonikus angol forrás:** [EXAMPLES.md](../../EXAMPLES.md). Ez a lokalizált dokumentáció megőrzi a pontos parancsokat, elérési utakat, kulcsokat, állapotértékeket, kivonatokat és fájlneveket. Ha a technikai megfogalmazás eltér, használja az angol forrást.


Ezek a példák kitalált neveket és értékeket használnak annak bemutatására, hogyan RandomDay a szokásos előkészítési, aktiválási, helyreállítási és kompatibilitási eredményeket jeleníti meg.

<a id="first-bootstrap"></a>
## Első rendszerindítás

Előtte: a futó munkamenet egy homokozót töltött be RandomDay jelölő.

Egy sikeres RandomDay indítás:

```text
selection_status=bootstrap_prepare_first_family_start_day
session_mode=temporary_dedicated
start_day_mode=configured
day_progression_mode=sequential
day_order=8,9,10,11,12,13,14,15,16,17,1,2,3,4,5,6,7
active_profile_id=unknown_current_boot
prepared_next_profile_id=<action-day-8-profile-id>
prepared_ready=true
restart_required_for_prepared_profile=true
```

Jelentés: az aktuális munkamenet ismeretlen marad RandomDay. A konfigurált 8. nap készen áll a következő újraindításra, és a teljes csomagolt rendelés megmarad. Még ne írja le aktívnak a 8. napot.

<a id="normal-next-day"></a>
## Normál következő nap

Előtte: az aktuális sandbox jelölő az 1. akciónapot azonosítja.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Jelentés: Az 1. nap aktív ehhez a folyamathoz; Elkészült a 2. nap. Az újraindítás a kezelő döntése.

<a id="state-commit-failure"></a>
## Állami kötelezettségvállalási hiba

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Jelentés: érvényes sandbox bájtok lehetnek a lemezen, de RandomDay nem tudott megőrizni a megfelelő sorrekordot. Tartsa leállítva a kiszolgálót, őrizze meg a homokozót és mindkét forgatási állapotú fájlt, és kövesse a kézi helyreállítást. Egy sikeres sandbox-írás önmagában nem egészséges előkészített átmenet.

<a id="primary-write-restored"></a>
## Elsődleges írás visszaállítva

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Jelentés: az éles visszaolvasás sikertelen, és az előző fájl visszaállításra került. Ellenőrizze a művelet biztonsági másolatát és az első hibát, mielőtt újabb indítást végez. Ne következtessen arra, hogy az elkészített profil használható.

<a id="adapter-outcomes"></a>
## Adapter eredmények

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Jelentés: a Lethal Lasers cél változatlan maradt, mert a rendszer nem ismeri fel a teljes elrendezését. A ANTE Felfelé cél már megegyezett. Egyik eredmény sem módosítja az elsődleges sandbox-tranzakciót.

Ha egy adapter jelent `rollback_failed`, állítsa le az érintett szolgáltatást, és őrizze meg a célpontot, az oldalkocsikat és a `runtime/backups/external_<operation>/` könyvtárban.

<a id="singleplayer-or-lan"></a>
## Egyjátékos vagy LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Jelentés: RandomDay csak írt `runtime/singleplayer_manual/SandboxSettings.ini`. Zárja be a játékot, nézze meg a fájlt, készítsen biztonsági másolatot a kiválasztott világról, és másolja ki manuálisan. A kimenet nem bizonyítja, hogy bármelyik világ betöltötte.

<a id="incompatible-environment"></a>
## Inkompatibilis környezet

Ha nincs megnevezett Abiotikus faktor vagy UE4SS fut, a kiadási példánynak a következőnek kell lennie:

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

A helyi Lua elemzés, a rögzítések és a csomagok kibontása hasznos bizonyíték marad, de nem válik szélesebb körű kompatibilitási állításgá.
