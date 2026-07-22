<a id="operate-active-prepared-and-recovery-state"></a>
# État de fonctionnement, de préparation et de récupération

> **Source canonique en anglais:** [OPERATIONS.md](../../OPERATIONS.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


RandomDay modifie le fichier sandbox pour un prochain démarrage. Cela ne modifie pas les règles déjà chargées dans une session Abiotic Factor en cours.

Cette page possède les décisions des opérateurs et les procédures de récupération. Utilisez [Glossaire](GLOSSAIRE.md) pour les termes canoniques, [Fichiers d'exécution](FICHIERS_D_EX%C3%89CUTION.md) pour la propriété du chemin et [Sorties d'exécution](SORTIES_D_EX%C3%89CUTION.md) pour les schémas exacts et la signification des champs.

<a id="distinguish-active-and-prepared-state"></a>
## Distinguer l'état actif et préparé

Un profil préparé n'est actif que lorsqu'un démarrage ultérieur lit son marqueur. N'utilisez pas le family/day préparé pour décrire la session en cours.

Utilisez `web_export/today.html` pour un résumé lisible et `web_export/today.json` pour l'état exact. Confirmez le marqueur actif, l'identité préparée, `prepared_ready`, `profile_status`, le résultat de la transaction, le résultat de l'annulation et le résultat de la validation de l'état avant de décider de redémarrer.

<a id="follow-the-normal-dedicated-server-sequence"></a>
## Suivez la séquence normale du serveur dédié

| Avant | Action | Après |
|---|---|---|
| Aucune RandomDay marqueur | Commencer par RandomDay activé. | La session actuelle conserve ses règles existantes ; RandomDay crée et conserve une commande journalière, puis prépare sa première configured/random position. |
| Première position préparée | Redémarrage. | Ce jour devient actif ; la prochaine position stockée dans la même famille est préparée. |
| Position intermédiaire active | Redémarrer après avoir examiné le profil préparé. | Le jour préparé devient actif et la position stockée suivante est préparée. |
| Position finale active | Redémarrer après avoir examiné la famille suivante. | La première position d'une autre commande de famille éligible devient active. |

`selected_run` conserve la famille configurée. `non_repeating_random_run` conserve une famille choisie au hasard pendant les 17 jours et évite de réutiliser une famille jusqu'à ce que la liste éligible soit épuisée. `rotation_run` suit l'ordre des familles configuré. `cycle.day_progression_mode` contrôle l'ordre quotidien indépendamment de la sélection de la famille.

Une nouvelle installation nécessite toujours un processus à préparer et un processus ultérieur à activer. Cela est vrai pour les serveurs persistants, les serveurs temporaires et la génération singleplayer/LAN manuelle.

<a id="read-the-right-evidence"></a>
## Lisez les bonnes preuves

Utilisez la [carte des fichiers d'exécution](FICHIERS_D_EX%C3%89CUTION.md) pour localiser l'état de rotation, l'état actuel, derniers fichiers connus, sauvegardes d'opérations, exportations et `UE4SS.log`. Utilisez l'[référence de sortie d'exécution](SORTIES_D_EX%C3%89CUTION.md) pour chaque groupe de champs, schéma, état vide, signification d'échec et règle de conservation. Les HTML et JSON résument l'état source ; ils ne prouvent pas qu'un profil a été utilisé par un client de jeu en direct.

Si `prepared_ready` est `false` ou `profile_status` est `degraded_state_persistence`, maintenez le serveur arrêté jusqu'à ce que le bac à sable et l'état de rotation soient d'accord. Une écriture sandbox valide avec persistance d'un état d'échec n'est pas une transition saine et préparée.

<a id="respond-to-writer-outcomes"></a>
## Répondre aux résultats de l'écrivain

RandomDay prépare les nouveaux octets dans un fichier frère, les relit, valide le bac à sable complet, préserve l'original lorsqu'il existe, promeut le nouveau fichier et le relit. Il n'est déclaré prêt qu'après l'accord de la relecture de la production.

Si la promotion ou la validation de la production échoue, RandomDay tente de restaurer le fichier détenu par cette opération. Un échec de restauration est un arrêt brutal : gardez le serveur arrêté et récupérez-le manuellement plutôt que de le redémarrer à plusieurs reprises.

<a id="respond-to-adapter-outcomes"></a>
## Répondre aux résultats de l'adaptateur

Utilisez [Adaptateurs pris en charge](ADAPTATEURS_PRIS_EN_CHARGE.md#read-an-adapter-result) pour la table de résultats canonique à six états et l'action suivante. Traiter `rollback_failed` comme un arrêt brutal ; la sauvegarde de l'adaptateur enregistrée séparément est la source de récupération.

Les adaptateurs n'affectent que les mods installés séparément. Ils ne rendent jamais actif un profil sandbox RandomDay préparé.

Lors d'un démarrage normal, les valeurs de l'adaptateur sont sélectionnées à partir du profil actif car le mod installé séparément peut se charger plus tard dans le même UE4SS démarrage. Lors du premier bootstrap, lorsqu'aucun marqueur RandomDay actif n'existe, le profil de jour de début préparé est le seul mappage disponible. Cette règle de synchronisation est distincte de la limite du sandbox au prochain redémarrage et dépend toujours du comportement de chargement de l'autre mod.

<a id="manual-recovery"></a>
## Récupération manuelle

1. Arrêtez le jeu ou le serveur. Ne récupérez pas un fichier lorsqu'il est ouvert.
2. Copiez le `SandboxSettings.ini`, `runtime/` et `web_export/` dans une sauvegarde de diagnostic distincte.
3. Inspectez `runtime/last_good/manifest.lua` et la dernière entrée pertinente sous `runtime/backups/`. Choisissez un fichier dont family/day et le hachage correspondent à l'état que vous avez l'intention de restaurer.
4. Copiez le fichier vérifié sélectionné dans le chemin principal configuré du bac à sable.
5. Relisez-le et confirmez qu'il est terminé avant de commencer.
6. Démarrez une fois et inspectez le marqueur actif et l'état préparé. Ne présumez pas que la récupération a réussi uniquement par l'absence d'un message d'erreur.

Si aucune sauvegarde vérifiée n'existe, restaurez la sauvegarde de l'opérateur créée avant l'installation. RandomDay impossible de reconstruire un fichier qui n'a jamais été lisible.

<a id="account-for-control-panel-writes"></a>
## Compte pour les écritures du panneau de contrôle

Certains panneaux de serveur génèrent `SandboxSettings.ini` lors du démarrage. RandomDay ne peut pas conserver un profil préparé si un autre outil l'écrase après la vérification de l'écriture. Configurez une source de bac à sable faisant autorité et vérifiez le marqueur de fichier immédiatement avant et après le redémarrage lors du diagnostic d'un jour 1 répété ou d'une transition manquante.
