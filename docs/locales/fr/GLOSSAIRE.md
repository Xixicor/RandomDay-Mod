<a id="glossary"></a>
# Glossaire

> **Source canonique en anglais:** [GLOSSARY.md](../../GLOSSARY.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Voici le vocabulaire canonique pour RandomDay documentation. Les procédures sont liées à ces définitions au lieu de redéfinir le même état dans plusieurs guides. Les règles de champ spécifiques au schéma restent dans [Sorties d'exécution](SORTIES_D_EX%C3%89CUTION.md).

| Terme | Signification simple | Signification technique exacte |
|---|---|---|
| Profil actif | Les règles utilisées par la session en cours. | Le package family/day profil identifié par le RandomDay marqueur lu dans le bac à sable au démarrage du processus. |
| Profil préparé | Règles prêtes pour une session ultérieure. | Le complet family/day profil dont les octets cibles ont réussi la validation et la relecture et dont l'état de rotation a été validé. Il n'est pas actif avant le redémarrage de la relecture. |
| Restauré | La préparation a échoué et les octets préalablement vérifiés ont été remis en place. | La transaction ayant échoué signale une restauration et une relecture réussies de la copie de récupération originale ou vérifiée détenue. |
| File d'attente du prochain redémarrage | Un choix préparé retenu pour le prochain démarrage. | `next_reboot_queue` sélectionne une fois par processus et réutilise ce choix appartenant au démarrage pendant la supervision. |
| Bootstrap | La première préparation lorsqu'aucun marqueur actif n'existe. | Sélection du premier jour configuré ou aléatoire parmi une famille éligible ; `cycle.bootstrap_day` n'est qu'une solution de secours en matière de compatibilité. |
| Famille | Une progression du style de jeu sur 17 jours. | Une entrée de registre et un module familial qui produit exactement 17 profils complets. |
| Rotation | Un passage à travers les familles éligibles. | État identifié par `rotation_id`, avec les familles disponibles, restantes et listes de familles complétées. |
| Exécuter | Une famille sur les 17 identifiants de jour. | Une séquence liée à la famille identifiée par `run_id` ; la famille reste verrouillée jusqu'à ce que chaque position d'ordre journalier persistante soit terminée. |
| Mode session | Comment l'opérateur utilise ce package. | `persistent_dedicated`, `temporary_dedicated` ou `singleplayer_lan` ; Le mode package contrôle toujours les limites du système de fichiers. |
| Ordre journalier | L'ordre exact utilisé par une exécution familiale. | Une permutation persistante de 17 nombres. Le mode séquentiel se termine à partir de son jour de début ; le mode aléatoire est mélangé une fois sans répétition. |
| Marqueur | Identité stockée dans le fichier sandbox. | `RANDOMDAY_*` champs rendus avec le profil complet et lus au prochain démarrage du processus. |
| Préparé prêt | La validation d'écriture et d'état a réussi. | `prepared_ready=true` nécessite un résultat sandbox réussi et aucun échec de validation d'état. Cela ne prouve pas l'activation. |
| Déjà actuel | La cible contient déjà les octets prévus. | Le hachage du profil rendu correspond à la cible, donc RandomDay vérifie last-good/mirror fonctionne sans réécrire le primaire. |
| Persistance de l'état dégradé | Les octets du bac à sable ont réussi mais pas la comptabilité de rotation. | `profile_status=degraded_state_persistence` ; les adaptateurs et les messages de profil préparé sont ignorés. |
| Fichier en attente | Octets candidats non encore promus. | `<target>.randomday.pending`, écrits, relus et validés avant le remplacement. |
| Fichier de restauration | L'original conservé lors du remplacement. | `<target>.randomday.rollback`, utilisé pour restaurer la production en cas d'échec de promotion ou de validation. |
| Sauvegarde de l'opération | Une copie durable réalisée avant la mutation. | Un fichier vérifié sous `runtime/backups/` pour la transaction principale, miroir ou adaptateur. |
| Dernier bon connu | Le dernier bac à sable accepté pour récupération. | `runtime/last_good/SandboxSettings.ini` plus `manifest.lua` ; la paire enregistre l'identité et le hachage du profil. |
| Miroir | Deuxième cible de bac à sable facultative. | Une cible explicitement configurée ou dérivée d'un nom mondial écrite après la principale via sa propre transaction. |
| Mode package | Installer la limite sélectionnée par la version actif. | `dedicated_server` ou `singleplayer_manual` à partir de `.randomday_mode`. |
| Mode de copie manuelle | Singleplayer/LAN génération sans découverte de sauvegarde. | `singleplayer_manual` écrit uniquement à l'intérieur de `runtime/singleplayer_manual/` et désactive les adaptateurs et les miroirs. |
| Adaptateur | RandomDay-owned mappage pour un autre mod installé. | Un plan de transaction sécurisé par signature qui met à jour les affectations existantes uniquement après des vérifications de sauvegarde et de compatibilité. |
| Mise en page reconnue | Forme exacte du fichier adaptateur acceptée pour une écriture. | Toutes les clés de signature et fichiers cibles requis sont présents ; un nom de fichier seul est insuffisant. |
| `not_installed` | La cible facultative n'a pas été trouvée. | Résultat de l'adaptateur sécurisé sans mutation. |
| `skipped_incompatible` | Une cible existe mais sa forme n'est pas prise en charge. | Résultat de l'adaptateur sécurisé sans mutation car la signature complète ne correspond pas. |
| `failed_rolled_back` | Une modification a échoué et les octets précédents sont intact. | La transaction de l'adaptateur a échoué avant la mutation ou tous les fichiers concernés ont été restaurés et vérifiés. |
| `rollback_failed` | La récupération automatique n'a pas pu être vérifiée. | État de l'adaptateur d'arrêt brutal nécessitant une récupération manuelle à partir de la sauvegarde enregistrée. |
| Dictionnaire | Mappage des valeurs brutes vers le public explications. | `randomday_dictionary_v2`, généré à partir de `dictionary.lua` et inclus dans la sortie de l'état d'exécution. |
| Traduction | Vue humaine dérivée des valeurs brutes du profil. | Scores de domaine limité, faits, résumés et messages générés par `translation.lua`; les valeurs brutes restent faisant autorité. |
| État public | Résumé de l'opérateur nettoyé et lisible par machine. | `web_export/today.json` à l'aide de `randomday_public_status_v2`. |
| État d'exécution | Instantané local détaillé lisible par machine. | `runtime/current/randomday_status.json` à l'aide de `randomday_runtime_status_v2`. |
