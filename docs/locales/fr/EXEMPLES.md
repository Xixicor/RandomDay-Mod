<a id="worked-configuration-examples"></a>
# Exemples de configuration travaillés

> **Source canonique en anglais:** [EXAMPLES.md](../../EXAMPLES.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Ces exemples utilisent des noms et des valeurs inventés pour montrer comment RandomDay rapporte les résultats ordinaires de préparation, d'activation, de récupération et de compatibilité.

<a id="first-bootstrap"></a>
## Premier démarrage

Avant : la session en cours chargeait un bac à sable sans RandomDay marqueur.

Après un démarrage RandomDay réussi :

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

Signification : la session en cours reste inconnue de RandomDay. Le jour 8 configuré est prêt pour le prochain redémarrage et la commande emballée complète est conservée. Ne décrivez pas le jour 8 comme actif pour le moment.

<a id="normal-next-day"></a>
## Jour suivant normal

Avant : le marqueur du bac à sable actuel identifie le jour d'action 1.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Signification : le jour 1 est actif pour ce processus ; Le jour 2 est préparé. Le redémarrage est une décision de l'opérateur.

<a id="state-commit-failure"></a>
## Échec de validation d'état

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Signification : des octets de sandbox valides peuvent être sur le disque, mais RandomDay n'a pas pu conserver un enregistrement de file d'attente correspondant. Gardez le serveur arrêté, conservez le bac à sable et les deux fichiers d'état de rotation, et suivez la récupération manuelle. Une écriture sandbox réussie ne constitue pas à elle seule une transition saine et préparée.

<a id="primary-write-restored"></a>
## Écriture principale restaurée

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Signification : la relecture de production a échoué et le fichier précédent a été restauré. Inspectez la sauvegarde de l'opération et la première erreur avant un autre démarrage. N'en déduisez pas que le profil préparé est utilisable.

<a id="adapter-outcomes"></a>
## Résultats de l'adaptateur

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Signification : la cible Lethal Lasers est restée inchangée car sa disposition complète n'a pas été reconnue. Le ANTE La cible supérieure correspond déjà. Aucun des deux résultats ne modifie la transaction sandbox principale.

Si un adaptateur signale `rollback_failed`, arrêtez le service concerné et conservez la cible, les side-cars et `runtime/backups/external_<operation>/` le répertoire.

<a id="singleplayer-or-lan"></a>
## Solo ou LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Signification : RandomDay écrit uniquement `runtime/singleplayer_manual/SandboxSettings.ini`. Fermez le jeu, inspectez le fichier, sauvegardez le monde choisi et copiez-le manuellement. La sortie ne prouve pas qu'un monde l'a chargé.

<a id="incompatible-environment"></a>
## Environnement incompatible

Lorsqu'il n'y a pas de facteur abiotique nommé ou UE4SS l'exécution existe, la copie de version doit indiquer :

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

L'analyse Lua locale, les appareils et l'extraction de packages restent une preuve utile, mais ne deviennent pas une revendication de compatibilité plus large.
