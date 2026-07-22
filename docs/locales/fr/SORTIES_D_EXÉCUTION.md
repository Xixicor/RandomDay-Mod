<a id="interpret-runtime-state-and-output-schemas"></a>
# Interpréter l'état d'exécution et les schémas de sortie

> **Source canonique en anglais:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Ceci est le guide canonique des schémas complets sur les champs. Il répond à la signification de chaque champ, état, valeur vide et résultat de la machine. Utilisez le [carte des fichiers d'exécution](FICHIERS_D_EX%C3%89CUTION.md) pour les producteurs, les chemins, le timing d'écriture, la conservation, les side-cars de transaction et les emplacements de récupération.

Tous les chemins de ce guide sont relatifs au dossier `RandomDay/` sauf si une ligne nomme explicitement le bac à sable configuré ou une cible d'adaptateur facultative. Les sorties d'exécution sont générées après l'installation et ne sont membres d'aucune des deux versions ZIP.

<a id="choose-the-authoritative-view"></a>
## Choisissez la vue faisant autorité

| Besoin | Source faisant autorité |
|---|---|
| Règles chargées par le processus actuel | RandomDay marqueur dans le `SandboxSettings.ini` lu au démarrage |
| Comptabilité de file d'attente préparée | `runtime/rotation_state.txt`, schéma `1` |
| Statut local détaillé | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Statut public lisible par machine | `web_export/today.json`, schéma `2` et `randomday_public_status_v2` |
| Statut lisible par l'homme | `web_export/today.html`, dérivé de la même transition de statut public |
| Vocabulaire de traduction | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Avis exact du joueur limité | `runtime/current/player_message_preview.txt` |

Le package HTML la vue, l'aperçu et les résumés traduits sont des vues dérivées. Ils ne remplacent pas le marqueur sandbox, le résultat de la transaction ou les valeurs brutes du profil. Localisez les derniers fichiers connus, les sauvegardes d'opérations, les side-cars, les miroirs, les cibles d'adaptateur et `UE4SS.log` dans [Fichiers d'exécution](FICHIERS_D_EX%C3%89CUTION.md).

<a id="rotation-state-schema"></a>
## Schéma d'état de rotation

`runtime/rotation_state.txt` utilise le schéma `1` et contient une `key=value` paire par ligne :

| Champ | Signification |
|---|---|
| `schema_version` | Doit être `1`. |
| `mod_version` | Identité du package lue à partir de `.randomday_version`. |
| `rotation_id` | Identifiant du passage actuel dans l'ensemble de familles éligibles. |
| `mode` | `selected_run`, `non_repeating_random_run` ou `rotation_run`. |
| `available_families` | Identifiants de famille éligibles séparés par des virgules après filtrage de configuration. |
| `remaining_families` | Familles éligibles non encore sélectionnées dans le passage non répétitif actuel. |
| `completed_families` | Familles dont l'ordre complet persistant à 17 positions a été terminé dans le passage actuel non répétitif. réussite. |
| `active_family`, `active_day` | Informations de marqueur actif enregistrées lorsque la sélection a été validée. Le marqueur sandbox fait autorité au prochain démarrage. |
| `prepared_family`, `prepared_day` | Profil conservé pour le prochain redémarrage. |
| `active_run_id` | Identifiant familial associé à la sélection préparée. |
| `last_status` | État de sélection du calendrier qui a produit ce fichier. |
| `session_mode` | Dédié persistant, dédié temporaire ou singleplayer/LAN cycle de vie. |
| `start_day_mode` | Choix de démarrage aléatoire configuré ou unique pour une nouvelle exécution. |
| `day_progression_mode` | Progression séquentielle ou aléatoire non répétitive. |
| `day_order` | ID de jour persistants séparés par des virgules dans l'ordre exact dans lequel ils seront préparés. |
| `day_position` | Position du jour préparé dans `day_order`. |
| `updated_at` | Temps d'écriture local pour la comparaison des opérateurs. |

L'écriture d'état n'est acceptée que lorsque le marqueur de schéma, la famille préparée et le jour préparé sont relus correctement. Un fichier actuel illisible peut revenir à `rotation_state.last_good.txt` ; le marqueur de bac à sable sélectionné détermine toujours ce que le jeu a chargé pour le processus en cours.

<a id="runtime-status-json"></a>
## État d'exécution JSON

`runtime/current/randomday_status.json` utilise `status_schema=randomday_runtime_status_v2`. Ses principaux groupes de champs sont :

| Groupe | Champs et interprétation |
|---|---|
| Identité | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Sélection | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Actif | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Préparé | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Résumés humains | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Preuve d'écriture | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Preuve d'adaptateur | `adapter_status`, `adapter_results` ; chaque enregistrement d'adaptateur contient des preuves de compatibilité, transaction/rollback état, nombre de fichiers modifiés et références cibles expurgées |
| Limites | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Diagnostics | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Les valeurs actives inconnues signifient que le bac à sable actuel ne contenait pas de marqueur RandomDay lisible. Ils ne doivent pas être remplacés par des valeurs préparées. Les chemins d'accès de l'adaptateur en dehors de l'`runtime/` sont réduits à une référence de nom de base et les chaînes de diagnostic suppriment les chemins absolus détectés.

<a id="public-status-json"></a>
## État public JSON

`web_export/today.json` utilise `schema_version=2` et `status_schema=randomday_public_status_v2`. Il répète les faits d'identité, active/prepared, de sélection, de transaction, d'adaptateur et de limite de redémarrage nécessaires à un opérateur. Il comprend également :

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order` et `prepared_day_position`;
- `family_selection_mode`, les anciens `family_locked_until_day_17` et `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families` et leur nombre ;
- profil de rencontre préparé, niveau, thème et chance de rencontre mixte ;
- activation à l'échelle mondiale, paramètre de monde ouvert, politique de monde inconnu et seulement un nombre de modèles de monde exclu configurés ;
- message préparé et aperçus de messages combinés ;
- `selected_at`, `sandbox_target`, `manual_copy_required` et hachage préparé.

`profile_status` est l'un des `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence` ou `write_failed_or_rollback`. `prepared_ready=true` ne signifie toujours pas actif ; le marqueur de démarrage le plus récent est requis.

<a id="dictionary-and-translation-output"></a>
## Sortie du dictionnaire et de la traduction

`runtime/current/randomday_dictionary.json` utilise `schema=randomday_runtime_dictionary_v2` et identifie la version du dictionnaire `randomday_dictionary_v2`. Il décrit les modes de package, les états de sélection, les domaines de pression, les étiquettes de définition, les valeurs brutes et les significations en langage simple. Les valeurs inconnues restent explicites au lieu d'être converties en une description sûre.

`player_message_preview.txt`, `today.json`, `today.html`, et les avis dans le jeu sont des vues dérivées du même module de traduction. Le profil sous-jacent et les valeurs brutes `SandboxSettings.ini` restent la source de vérité.

<a id="failure-and-recovery-rules"></a>
## Règles d'échec et de récupération

1. Un échec d'écriture ou de validation en attente ne devient jamais une cible de production.
2. Un échec de promotion ou de relecture de production déclenche la restauration de l'original détenu ; une sauvegarde d'opération est la solution de secours lorsque cette restauration échoue.
3. Un fichier de restauration conservé ou `rollback_failed` l'état nécessite un examen manuel lorsque le jeu ou le serveur est arrêté.
4. Une écriture sandbox réussie et un échec de validation de l'état de rotation sont dégradés, pas prêts ; les adaptateurs et la messagerie du profil préparé sont ignorés.
5. Un échec d'exportation ne modifie pas le résultat du bac à sable, mais il supprime une source de preuve pratique. Utilisez les journaux de transactions, l'état et la relecture des fichiers.
6. Les sorties d'exécution sont des données opérationnelles locales. Ne les ajoutez pas à une version ZIP et ne les publiez pas comme exemples sans un examen de confidentialité distinct.
