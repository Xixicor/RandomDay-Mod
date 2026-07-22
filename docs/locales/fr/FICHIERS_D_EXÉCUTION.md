<a id="locate-runtime-files-and-status"></a>
# Localiser les fichiers d'exécution et leur statut

> **Source canonique en anglais:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Il s'agit de l'inventaire canonique des chemins utilisé par les opérateurs et de la traçabilité des sources. Il indique où se trouve un fichier, qui l'écrit, quand il change, combien de temps il reste et quel rôle de récupération il joue. Le [référence de sortie d'exécution](SORTIES_D_EX%C3%89CUTION.md) possède les schémas, les significations des champs, les états vides et l'interprétation des valeurs machine.

Tous les chemins de ce guide sont relatifs au dossier `RandomDay/` installé, sauf indication contraire. Les sorties d'exécution sont créées après l'installation ; ils sont exclus des ZIP de version.

<a id="operator-file-map"></a>
## Carte des fichiers de l'opérateur

| Chemin | Producteur et déclencheur | Mise à jour et conservation | Signification et récupération |
|---|---|---|---|
| Primaire configuré `SandboxSettings.ini` | `ax_sandbox/writer.lua` après sérialisation et validation du profil en mode dédié. | Remplacé de manière transactionnelle ; la cible est configurée par l'opérateur ou dérivée de l'installation. | Profil complet pour le prochain démarrage. La session en cours conserve ses règles déjà chargées. |
| Miroir configuré `SandboxSettings.ini` | Enregistreur Sandbox après un résultat principal réussi lorsqu'un miroir explicite est éligible. | Remplacement transactionnel au mieux. | Copie secondaire uniquement ; un miroir ne remplace pas la configuration correcte du chemin principal. |
| Cible d'adaptateur reconnue | `ax_external/bridge.lua` après une correspondance complète de la signature de mise en page. | Les affectations existantes sont modifiées de manière transactionnelle avec des sauvegardes uniques. | Configuration de mod installée séparément ; inspectez le résultat de l'adaptateur à six états indépendamment du bac à sable principal. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` après une transaction sandbox réussie. | Remplacé de manière transactionnelle après chaque préparation acceptée. | Comptabilité de file d'attente. Si illisible, RandomDay essaie le dernier bon état. |
| `runtime/rotation_state.last_good.txt` | Sauvegarde des transactions du calendrier. | Remplacé lorsque l'état actuel est mis à jour. | État lisible précédent ; conservez-le pendant le diagnostic et les mises à jour. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` après un succès, une persistance dégradée ou un échec d'écriture. | Remplacé de manière transactionnelle à chaque passage d'état. | Structure canonique active/prepared, transaction, traduction et résumé de l'adaptateur. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` à côté statut. | Remplacé de manière transactionnelle. | Schéma `randomday_runtime_dictionary_v2` : termes, définition des traductions, domaines, modes de package et états de sélection. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` à côté statut. | Remplacé de manière transactionnelle. | Aperçu exact du message délimité pour examen par l'opérateur ; cela ne prouve pas le rendu client. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` après un résultat de sandbox principal vérifié. | Remplacé de manière transactionnelle. | Dernier bac à sable accepté comme bon connu. À utiliser uniquement avec son manifeste. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua` une fois l'instantané sandbox réussi. | Remplacé transactionnellement par paire avec l'instantané sandbox. | Version, ID de profil, nom, jour, hachage du contenu et heure d'écriture du dernier fichier correct. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Enregistreur principal ou miroir avant la mutation. | Répertoire d'opération unique ; RandomDay ne l'élague pas. | Octets de pré-écriture vérifiés. Les opérateurs sont propriétaires de la rétention après examen. |
| `runtime/backups/external_<operation>/...` | Pont d'adaptateur avant toute mutation d'adaptateur. | Répertoire d'opérations unique ; pas d'élagage automatique. | Une copie vérifiée de chaque cible d'adaptateur planifiée. |
| `runtime/pending/` | Créée par la configuration du répertoire d'exécution. | Réservé ; les transactions principales actuelles utilisent à la place des side-cars frères et sœurs. | Ne traitez pas un répertoire vide comme une preuve de préparation. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Écrivain sandbox en `singleplayer_manual` mode. | Remplacé de manière transactionnelle lors de l'exécution du package manuel. | Fichier complet que l'opérateur peut inspecter et copier manuellement. dans un monde arrêté. |
| `web_export/today.json` | `ax_web/export.lua` après chaque résultat de préparation. | Remplacé de manière transactionnelle. | Résultat compact lisible par machine active/prepared et writer/adapter. |
| `web_export/today.html` | `ax_web/export.lua` après une passe d'exportation réussie. | Remplacé de manière transactionnelle. | Vue humaine dérivée de la même transition ; pas une preuve indépendante. |
| `UE4SS.log` | UE4SS et `ax_core/log.lua`. | Géré par UE4SS, pas RandomDay. | Lignes de démarrage, de profil sélectionné, d'écriture, d'adaptateur, de message, d'état et d'échec préfixées par `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Reconnaître les états de fichier vides et en échec

- Une cible principale ou miroir manquante peut être créée. Un profil non valide, un échec d'écriture en attente, de promotion ou de relecture de production n'est pas prêt. Un échec de miroir ne modifie pas le résultat principal accepté.
- `runtime/singleplayer_manual/SandboxSettings.ini` peut être créé lors de la première exécution manuelle. Un échec de génération reste visible dans l'état et la sortie du journal.
- Un `rotation_state.txt` illisible peut revenir au dernier bon état ou à un bootstrap basé sur un marqueur. Un commit d'état échoué produit `degraded_state_persistence`.
- `runtime/last_good/` peut être absent avant la première cible vérifiée. Si la mise à jour du manifeste associé échoue, RandomDay restaure la paire acceptée précédente.
- `runtime/backups/mirror_<operation>/` est l'emplacement de sauvegarde spécifique au miroir. Aucun fichier de sauvegarde principal ou miroir n'existe lorsque cette cible n'existait pas avant la transaction.
- La mutation de l'adaptateur ne commence pas lorsque sa création de sauvegarde ou sa relecture échoue.
- Les fichiers d'état actuel, de dictionnaire ou d'aperçu peuvent être absents lorsque la sortie de l'état d'exécution est indisponible ou incomplète.
- Un `export_failed` résultat peut laisser un fichier plus ancien. `today.json` en place. Un échec de mise à jour du bac à sable JSON mais ne crée pas de nouvelle panne HTMLpage ; comparer les horodatages avec `UE4SS.log`.
- Un side-car obsolète en attente est supprimé avant une nouvelle tentative ; un échec de nettoyage arrête la transaction. Si l'objectif de production et le side-car d'annulation existent, RandomDay conserve les octets de récupération pour examen.
- Aucune `[RandomDay]` ligne de début dans `UE4SS.log` signifie que le chargement du mod n'a pas été prouvé.

<a id="transaction-sidecars"></a>
## Side-cars de transaction

L'écrivain transactionnel peut créer des fichiers frères à côté d'un cible :

| Modèle | État | Action de l'opérateur |
|---|---|---|
| `<target>.randomday.pending` | Octets candidats avant la promotion. | Normalement supprimé par la promotion. Conservez-le si un échec signale un problème de nettoyage ou de relecture en attente. |
| `<target>.randomday.rollback` | Octets d'origine conservés lors du remplacement. | Normalement restauré en cas d'échec ou supprimé après vérification du succès. Ne le supprimez pas lorsque la cible est également présente ; cette combinaison doit être révisée. |
| `<target>.randomday.restore.pending` | Octets candidats pendant la restauration de l'adaptateur. | Conservez avec la sauvegarde de l'adaptateur si la restauration échoue. |
| `<target>.randomday.restore.rollback` | Octets de récupération conservés pendant la restauration de l'adaptateur. | Conservez et arrêtez le service affecté si le nettoyage ou la restauration n'est pas vérifié. |

Ces fichiers peuvent exister à côté du un bac à sable dédié ou une cible d'adaptateur installée séparément. Leur présence est un état de transaction, et non une preuve que le nouveau profil est devenu actif.

<a id="interpret-file-contents"></a>
## Interpréter le contenu du fichier

Utilisez [État d'exécution et référence de sortie](SORTIES_D_EX%C3%89CUTION.md) pour les schémas `rotation_state.txt`, `randomday_status.json` et `today.json` complets. Cette référence possède également les états vides, les significations des échecs, la sortie du dictionnaire et la règle selon laquelle l'état préparé n'est pas l'état actif. Utilisez le [référence d'état et d'erreur](R%C3%89F%C3%89RENCE_SUR_L_%C3%89TAT_ET_LES_ERREURS.md) lorsqu'une valeur exacte de la machine nécessite une action de l'opérateur.

<a id="rotation-state-fields"></a>
### Champs d'état de rotation

Voir le [schéma canonique d'état de rotation](SORTIES_D_EX%C3%89CUTION.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Schéma d'état actuel

Voir le [état d'exécution JSON schéma d'état de rotation](SORTIES_D_EX%C3%89CUTION.md#runtime-status-json).

<a id="web-export-schema"></a>
### Schéma d'exportation Web

Voir le [statut public JSON schéma d'état de rotation](SORTIES_D_EX%C3%89CUTION.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Conserver les preuves de récupération

RandomDay écrase l'état actuel, l'état actuel, le dernier bon état et les vues Web. Il crée des répertoires de sauvegarde d'opération uniques et ne supprime pas les anciens. Choisissez une politique de conservation en dehors du processus en cours, mais ne supprimez jamais les preuves de récupération les plus récentes tant qu'un problème d'écriture, de relecture, d'état ou de restauration n'est pas résolu.
