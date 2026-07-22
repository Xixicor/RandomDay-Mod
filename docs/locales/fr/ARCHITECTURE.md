<a id="architecture-and-data-flow"></a>
# Architecture et données. Flow

> **Source canonique en anglais:** [ARCHITECTURE.md](../../ARCHITECTURE.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


RandomDay possède une tâche limitée : préparer un profil sandbox complet pour un démarrage futur sans décrire ce profil comme actif pendant le processus en cours. Le profil actif provient du marqueur dans le fichier sandbox qu'Abiotic Factor a chargé avant le UE4SS démarré RandomDay. Le profil préparé est un état de fichier distinct et validé pour le prochain redémarrage.

<a id="package-modes"></a>
## Modes de package

Le générateur de versions produit deux ZIP à partir de la même liste autorisée de source exacte et définit `RandomDay/.randomday_mode` différemment dans chacun.

| Mode | Sortie principale | Écritures externes automatiques |
|---|---|---|
| `dedicated_server` | Serveur dédié résolu `SandboxSettings.ini` | Bac à sable principal, miroirs délibérément configurés et adaptateurs facultatifs reconnus. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Aucun en dehors du dossier RandomDay ; les miroirs et les adaptateurs sont désactivés. |

`RandomDay/.randomday_version` et `RandomDay/.randomday_mode` sont des marqueurs de package générés. `RandomDay/Scripts/ax_core/version.lua` les lit ; les opérateurs ne doivent pas les modifier après l'installation.

<a id="session-modes"></a>
## Modes de session

Le mode package contrôle où RandomDay peut écrire. `experience.mode` décrit séparément le cycle de vie prévu :

| Mode session | Package | Contrat de cycle de vie |
|---|---|---|
| `persistent_dedicated` | Dédié | Reprendre la famille persistante et l'ordre journalier à 17 positions sur le long terme redémarre. |
| `temporary_dedicated` | Dédié | Traitez chaque lancement comme une session de jeu limitée tout en préservant l'ordre de la file d'attente entre les lancements. |
| `singleplayer_lan` | Manuel solo | Générez un fichier mod-local pour un monde sélectionné par l'opérateur ; pas de découverte de sauvegarde ni de copie automatique. |

`auto` se résout en `persistent_dedicated` dans le package dédié et `singleplayer_lan` dans le package manuel. Le mode session ne modifie pas les limites du moteur : le processus actuel a déjà chargé son bac à sable avant l'exécution de RandomDay.

<a id="startup-path"></a>
## Chemin de démarrage

1. UE4SS charge `RandomDay/Scripts/main.lua`.
2. Le point d'entrée résout une `RandomDay/` racine et charge `Scripts/ax_core/init.lua`.
3. `init.lua` charge la configuration, les profils, le calendrier, l'écrivain, adaptateurs, modules d'état, d'exportation Web et de message du lecteur. Il rejette un mode de package invalide ou un verrouillage de sécurité de transaction désactivé. Il valide également le mode de session compatible avec le package, le mode jour de début, le jour de début configuré et le mode de progression du jour.
4. Chaque build de famille est validé `sandbox.profile_overrides` à partir de `Scripts/ax_config/server.lua`. Les quatre choix à l'échelle du profil sont appliqués après les valeurs family/day et avant les règles invariantes restantes, de sorte que chaque profil préparé utilise les mêmes choix configurés.
5. Les racines d'exécution et de sortie Web sont ancrées dans le dossier mod résolu. Le mode solo est réduit à sa seule sortie mod-locale avant la sélection.
6. `ax_cycle/calendar.lua` lit le marqueur du bac à sable et l'état de rotation récupérable, puis crée une active/prepared décision pour ce processus de jeu.
7. `ax_sandbox/writer.lua` sérialise et valide le profil préparé, puis utilise un remplacement transactionnel pour la cible sélectionnée.
8. L'état de rotation est validé uniquement. une fois la transaction sandbox réussie. Un échec de validation d'état est dégradé : les adaptateurs et la messagerie du lecteur préparé sont ignorés car l'état du bac à sable et de la file d'attente ne concordent pas.
9. En mode dédié, `ax_external/bridge.lua` évalue les adaptateurs facultatifs par rapport au profil actif. Lors du premier bootstrap, aucun marqueur actif n'existe, donc le configured/random profil du jour de début préparé est le seul mappage d'adaptateur disponible.
10. L'état d'exécution JSON/text et la vue Web HTML/JSON sont réécrits à partir de la même décision. Les notifications des joueurs sont installées en dernier.

La valeur par défaut `cycle.check_interval_ms=0` exécute cette séquence une fois au démarrage. Si un opérateur fournit un intervalle positif et UE4SS expose `LoopAsync`, les rappels ultérieurs réutilisent la sélection appartenant au processus. Ils peuvent réparer ou réexporter cette sélection, mais ne choisissent pas un autre jour au cours du même processus.

<a id="rotation-state-machine"></a>
## Machine à états de rotation

| État de sélection | Condition d'entrée | Résultat préparé | Récupération sécurisée |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Aucun marqueur actif et aucun récupérable préparé état. | Première position configurée ou sélectionnée au hasard dans un ordre journalier nouvellement persistant. | Gardez la session existante en cours d'exécution ; redémarrer seulement après `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | Le jour actif n'est pas la dernière position dans l'ordre stocké. | Prochaine position stockée dans la même famille. | Si la persistance échoue, gardez le serveur arrêté et réconciliez le bac à sable et l'état de rotation. |
| `active_marker_found_completed_run_prepare_next_unused_family` | Le jour actif est la dernière position dans l'ordre stocké. | Première position d'une nouvelle commande dans la prochaine exécution familiale éligible. | Confirmez la nouvelle family/day/order avant de redémarrer. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Aucun marqueur actif, mais l'état de rotation nomme un profil préparé. | Le même profil en file d'attente est reconstruit. | Conserver les dossiers de l'État ; ne les supprimez pas pour forcer une relance. |
| `supervision_reconfirm_prepared_profile_no_advance` | Un rappel ultérieur s'exécute dans le même processus. | Le même profil préparé. | Diagnostiquer la première étape défaillante ; les rappels répétés ne sont pas de nouvelles sélections. |

`selected_run` utilise toujours `selected_family`. `rotation_run` consomme la commande éligible configurée. `non_repeating_random_run` choisit parmi les familles éligibles restantes et démarre un nouveau pool une fois que tout est terminé. Chaque mode conserve une famille jusqu'à ce que les 17 identifiants de jour uniques dans `day_order` soient terminés. Le mode séquentiel s'achève après le jour 17 lorsque le début configuré n'est pas le jour 1 ; Le mode aléatoire non répétitif stocke une permutation et ne la relance jamais pendant la récupération.

<a id="sandbox-transaction"></a>
## Transaction Sandbox

Le rédacteur restitue toutes les clés dans l'ordre canonique et valide les types, les plages, les règles fixes, les valeurs de marqueur et l'identité du profil avant d'écrire. Le remplacement suit ensuite cet ordre :

1. supprimez un fichier en attente obsolète uniquement lorsque cela est sécuritaire ;
2. conservez ou arrêtez les side-cars de récupération préexistants ;
3. écrivez les octets en attente ;
4. lisez le fichier en attente et validez-le ;
5. créez une sauvegarde d'opération vérifiée lorsqu'une cible existe ;
6. conserver l'original comme fichier d'annulation de transaction ;
7. promouvoir le fichier en attente ;
8. lire et valider le fichier de production ;
9. restaurer l'original conservé si la promotion ou la validation de la production échoue ;
10. conserver les données de récupération et signaler l'échec si le nettoyage ne peut pas être vérifié.

La première écriture utilise le même pending/readback/validation chemin. Sans cible d'origine, il n'y a rien à restaurer, donc un échec de première écriture ne doit pas être signalé comme une récupération de fichier d'origine.

<a id="adapter-boundary"></a>
## Limite de l'adaptateur

Les adaptateurs sont RandomDay-owned définitions de correctifs pour les mods installés séparément. Le pont nécessite d'abord un chemin cible reconnu et une signature de clé complète. Il corrige uniquement les affectations existantes, crée des sauvegardes d'opérations, applique chaque fichier planifié en une seule transaction et annule toutes les cibles affectées si une étape échoue. Les cibles manquantes et incompatibles sont des résultats facultatifs normaux.

RandomDay ne charge pas de code tiers dans son package. Une mise en page basée sur les appareils prouve le comportement de l'analyseur et des transactions de RandomDay's comportement de l'analyseur et des transactions, pas qu'une version tierce ait chargé ou utilisé les valeurs dans un processus de jeu.

<a id="output-boundary"></a>
## Limite de sortie

Les fichiers d'exécution sont générés ci-dessous `RandomDay/runtime/` et `RandomDay/web_export/` ; aucun n'est une entrée de version ZIP. L'enregistreur d'état supprime les chemins d'accès de l'adaptateur local à la machine des diagnostics publics JSON diagnostics. Le chemin complet, le schéma, la cadence et la carte de rétention se trouvent dans [Fichiers et statut d'exécution](FICHIERS_D_EX%C3%89CUTION.md).

<a id="failure-ownership"></a>
## Propriété d'échec

| Étape d'échec | Conséquence visible pour le propriétaire |
|---|---|
| Profil ou INI validation | Aucune écriture de production n'est tentée. |
| En attente write/readback | Les octets de production existants restent en place. |
| Sauvegarde de l'opération | Le remplacement s'arrête avant que l'original ne soit déplacé. |
| Validation de promotion ou de production | Une restauration automatique est tentée et son résultat est signalé. |
| Persistance de l'état de rotation | Des octets de sandbox préparés peuvent exister, mais la transition est dégradée et adapters/messages sont ignorés. |
| Compatibilité des adaptateurs | La cible reste inchangée avec `not_installed` ou `skipped_incompatible`. |
| Adaptateur write/readback | Toutes les cibles d'adaptateur modifiées sont restaurées lorsque cela est possible. |
| Statut ou exportation Web | Le résultat du bac à sable fait autorité ; l'échec de sortie est enregistré et ne doit pas être traité comme un rapport réussi. |

Suivez [Opérations](OP%C3%89RATIONS.md) pour la récupération et [Dépannage](D%C3%89PANNAGE.md) pour les vérifications d'abord des symptômes.

<a id="evidence-limit"></a>
## Limite de preuves

La suite de luminaires Lua locale peut prouver le comportement de la source, les invariants de profil générés, les branches de transaction, les formes de sortie et les limites du package. Cela ne prouve pas une version actuelle d'Abiotic Factor, une version actuelle UE4SS version, un panneau de serveur particulier, chaque taille d'affichage ou une version de mod tiers non testée. Ces affirmations restent `not tested` jusqu'à ce qu'une exécution de compatibilité nommée soit enregistrée.
