<a id="worked-configuration-examples"></a>
# Mifano ya usanidi iliyofanya kazi

> **Chanzo cha Kiingereza cha Canonical:** [EXAMPLES.md](../../EXAMPLES.md). Hati hizi zilizojanibishwa huhifadhi amri kamili, njia, funguo, thamani za hali, heshi na majina ya faili. Ikiwa maneno ya kiufundi yanatofautiana, tumia chanzo cha Kiingereza.


Mifano hii hutumia majina na thamani zilizovumbuliwa ili kuonyesha jinsi RandomDay inaripoti utayarishaji wa kawaida, kuwezesha, urejeshaji, na matokeo ya uoanifu.

<a id="first-bootstrap"></a>
## Mkanda wa Boot wa Kwanza

Kabla: kipindi kinachoendeshwa kilipakia kisanduku cha mchanga bila RandomDayalama.

Baada ya moja kufanikiwa RandomDay anza:

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

Maana: kipindi cha sasa bado hakijulikani kwa RandomDay. Siku ya 8 Iliyosanidiwa iko tayari kwa uanzishaji upya unaofuata na mpangilio kamili unaendelea. Usielezee Siku ya 8 kuwa hai bado.

<a id="normal-next-day"></a>
## Kawaida Siku Inayofuata

Kabla: kialama cha sasa cha kisanduku cha mchanga hutambulisha Siku ya 1 ya Kitendo.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Maana: Siku ya 1 inatumika kwa mchakato huu; Siku ya 2 imeandaliwa. Kuanzisha upya ni uamuzi wa opereta.

<a id="state-commit-failure"></a>
## Kushindwa Kujitolea kwa Jimbo

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Maana: baiti za sandbox halali zinaweza kuwa kwenye diski, lakini RandomDay haikuweza kuendelea na rekodi ya foleni inayolingana. Weka seva imesimama, hifadhi kisanduku cha mchanga na faili zote mbili za hali ya mzunguko, na ufuate urejeshaji wa mwongozo. Uandishi wa kisanduku cha mchanga uliofaulu pekee sio mpito ulioandaliwa kiafya.

<a id="primary-write-restored"></a>
## Uandishi wa Msingi Umerejeshwa

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Maana: usomaji wa toleo la umma haukufaulu na faili ya awali ilirejeshwa. Kagua chelezo ya operesheni na hitilafu ya kwanza kabla ya kuanza tena. Usifikirie kuwa wasifu uliotayarishwa unaweza kutumika.

<a id="adapter-outcomes"></a>
## Matokeo ya Adapta

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Maana: lengo la Lethal Lasers liliachwa bila kubadilishwa kwa sababu mpangilio wake kamili haukutambuliwa. TheANTE Lengo la juu tayari limelingana. Hakuna tokeo lolote linalobadilisha muamala msingi wa sanduku la mchanga.

Ikiwa adapta itaripoti `rollback_failed`, sitisha huduma iliyoathiriwa na uhifadhi lengwa, kando, na `runtime/backups/external_<operation>/` saraka.

<a id="singleplayer-or-lan"></a>
## Mchezaji Mmoja Au LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Maana: RandomDay aliandika pekee `runtime/singleplayer_manual/SandboxSettings.ini`. Funga mchezo, kagua faili, uhifadhi nakala ya ulimwengu uliochaguliwa, na unakili mwenyewe. Matokeo hayathibitishi kwamba ulimwengu wowote umeipakia.

<a id="incompatible-environment"></a>
## Mazingira Yasiyotangamana

Wakati hakuna jina Abiotic Factor au UE4SS kukimbia ipo, nakala ya toleo lazima iseme:

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

Uchanganuzi, urekebishaji, na uchimbaji wa kifurushi wa Lua wa Ndani unasalia kuwa uthibitisho muhimu, lakini usiwe dai pana la uoanifu.
