<a id="status-and-error-reference"></a>
# Référence sur l'état et les erreurs

> **Source canonique en anglais:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Utilisez le exact `status`, `transaction_status`, `rollback_status` et `error` valeurs de l'exportation d'exécution. Une formulation similaire dans un panneau ou une console ne remplace pas ces champs.

Cette section est la référence de recherche complète. L'arbre de décision ci-dessus choisit la catégorie pertinente ; ces tableaux préservent les valeurs exactes de la machine et les réponses sûres de l'opérateur.

<a id="normal-or-informational-states"></a>
## États normaux ou informatifs

| Statut | Signification | Réponse de l'opérateur |
|---|---|---|
| `prepared_for_next_reboot` | Un profil validé a été écrit pour le prochain démarrage. | Aucune action ; la session en cours reste inchangée. |
| `next_reboot_already_prepared` | Le prochain profil prévu correspond déjà à la cible. | Aucune action ; ne forcez pas une autre rotation. |
| `already_current` / `unchanged` | La cible contient déjà les octets prévus. | Aucune action. |
| `applied` | La relecture d'écriture et de production a réussi. | Vérifiez la distinction active/prepared après le prochain démarrage. |
| `bootstrap_prepare_first_family_start_day` | Aucun état de rotation préalable existait, donc le premier jour configuré a été préparé. | Attendu lors de la première utilisation. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | L'état stocké a été récupéré et le même profil préparé a été réécrit. | Vérifiez le jour récupéré ; aucun nouveau choix aléatoire n'a eu lieu. |
| `supervision_reconfirm_prepared_profile_no_advance` | Une passe de supervision a confirmé la préparation existante. | Attendu ; la file d'attente n'a pas avancé deux fois. |
| `external_mods_disabled` | Le traitement facultatif de l'adaptateur est désactivé. | Aucune action sauf si les adaptateurs étaient prévus. |
| `external_mods_processed` | Tous les plans d'adaptateur activés ont atteint un résultat final. | Examinez chaque ligne d'adaptateur. |

<a id="startup-configuration-errors"></a>
## Erreurs de configuration de démarrage

Ces messages arrêtent le démarrage avant RandomDay écrit un profil. Corrigez le paramètre nommé ou le marqueur de package ; ne contournez pas la branche de validation.

| Le texte d'erreur | Signification | Réponse sécurisée |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` est manquant, mal formé ou provient du mauvais package. | Réinstallez un package complet dans un dossier intermédiaire propre et conservez le marqueur de mode prévu. |
| `invalid experience.mode` | `experience.mode` ne fait pas partie des valeurs documentées. | Utilisez `auto`, `persistent_dedicated`, `temporary_dedicated` ou `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | Un package de copie manuelle a été configuré en tant que serveur dédié. | Restaurer `auto` ou `singleplayer_lan` ; ne le dirigez pas automatiquement vers un monde externe. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Un package dédié a été configuré pour le flux de travail de copie manuelle. | Utilisez `auto`, `persistent_dedicated` ou `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | Le sélecteur de jour initial n'est pas valide. | Utilisez exactement `configured` ou `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | Le sélecteur d'ordre journalier n'est pas valide. | Utilisez exactement `sequential` ou `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | Le jour de début configuré est fractionnaire ou en dehors du cycle. | Utilisez un nombre entier de 1 à `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | La sauvegarde ou la dernière restauration correcte a été désactivée. | Restaurez les deux verrous de sécurité ; RandomDay refuse intentionnellement les écritures dangereuses. |
| `external adapter transaction safety locks must remain true` | Les correctifs de l'adaptateur ou la protection contre les sauvegardes ont été désactivés. | Restaurez les verrous de sécurité des deux adaptateurs ou désactivez les adaptateurs en groupe. |
| `paths.world_name must be one folder name` | Le nom du monde configuré contient un séparateur ou un caractère non sécurisé. | Entrez uniquement le nom exact du dossier, en utilisant des lettres, des chiffres, des espaces, traits de soulignement ou traits d'union. |
| `required runtime directory unavailable` | Un répertoire de sortie mod-local requis n'a pas pu être créé ou confirmé. | Vérifiez uniquement le répertoire nommé RandomDay et son autorisation en écriture. |

<a id="profile-wide-configuration-errors"></a>
## Erreurs de configuration à l'échelle du profil

Ces erreurs arrêtent la construction du profil avant une écriture sandbox.

| Le texte d'erreur | Signification | Réponse sécurisée |
|---|---|---|
| `sandbox.profile_overrides must be a table` | Les quatre choix à l'échelle du profil ont été remplacés par un autre type Lua. | Restaurez la table documentée dans `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | La table contient un paramètre qui ne fait pas partie des quatre clés prises en charge. | Supprimez la clé nommée et utilisez family/profile sources pour d'autres paramètres du bac à sable. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` ou `AllowIronMode` ne l'est pas `true` ou `false`. | Utilisez un booléen Lua sans guillemets. |
| `sandbox.profile_overrides.<key> must be integer` | Une valeur de support n'est pas un nombre entier. | Utilisez un nombre entier. |
| `sandbox.profile_overrides.<key> outside supported range` | Une valeur de support est extérieure `0..1000`. | Choisissez un nombre entier parmi `0` à `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Rollback et états intermédiaires

| Valeur | Signification | Réponse sécurisée |
|---|---|---|
| `not_started` / `pending` | Le plan de transaction ou d'adaptateur n'a pas atteint un résultat de terminal. | Attendez uniquement la passe de démarrage limitée actuelle ; l'état persistant nécessite une enquête. |
| `not_needed` | Aucune restauration n'a été requise. | Aucune action. |
| `original_held` | La cible d'origine a été déplacée en position de récupération avant la promotion. | Ne supprimez pas le fichier de récupération tant que la transaction est incomplète. |
| `retained_after_success` | La nouvelle cible a été vérifiée, mais les données de récupération restent car le nettoyage n'était pas disponible ou a été intentionnellement conservé. | Vérifiez les octets de production avant de supprimer tout fichier de récupération nommé. |
| `discarded_after_success` | Les données de remplacement vérifiées et de restauration temporaire ont été effacées. | Aucune action. |
| `rollback_failed` | La tentative de restauration n'a pas pu être vérifiée. | Gardez le serveur arrêté et utilisez la dernière sauvegarde d'opération vérifiée. |
| `skipped_state_persistence_failed` | Les octets du bac à sable ont été préparés, mais la rotation l'état n'a pas persisté, donc les adaptateurs et la messagerie du lecteur préparé ont été ignorés. | Réparer le stockage de l'état d'exécution ; ne relancez pas et n'avancez pas la file d'attente manuellement. |
| `failed` | Une ligne récapitulative représente une panne de terminal dont la cause spécifique se trouve dans ses `error` ou dans ses champs de transaction. | Suivez le premier code spécifique ; ne dépannez pas à partir de `failed` seul. |

<a id="transaction-failures"></a>
## Échecs de transaction

| Statut | Signification | Réponse sécurisée |
|---|---|---|
| `invalid_input` | La demande de remplacement n'était pas un texte valide ou manquait de cible valide. | Configuration correcte ; ne réessayez pas inchangé. |
| `stale_pending_cleanup_failed` | Un ancien fichier en attente n'a pas pu être supprimé. | Arrêtez et conservez le fichier en attente avant le nettoyage manuel. |
| `stale_rollback_requires_review` | Les données de récupération existent à côté d'une cible actuelle et ne peuvent pas être supprimées en toute sécurité. | Comparez les octets de cible et d'annulation avant de choisir l'un ou l'autre. |
| `interrupted_transaction_restore_failed` | La récupération après un remplacement interrompu n'a pas pu restaurer la cible. | Gardez le serveur arrêté et restaurez une sauvegarde vérifiée. |
| `interrupted_transaction_cleanup_failed` | La cible a été récupérée mais les données de transaction obsolètes n'ont pas pu être effacées. | Vérifiez les octets cibles, puis supprimez uniquement le side-car périmé nommé. |
| `pending_write_failed` | Le candidat n'a pas pu être écrit. | Vérifiez le répertoire cible restreint et l'espace libre. |
| `pending_readback_failed` / `pending_readback_mismatch` | Les octets du candidat n'ont pas pu être lus ou différés après l'écriture. | Ne pas promouvoir le fichier en attente. |
| `pending_validation_failed` | Le candidat a échoué schema/profile la validation avant promotion. | Corrigez la clé ou la règle signalée ; ne contournez pas la validation. |
| `operation_backup_failed` / `backup_failed` | Une sauvegarde de pré-écriture vérifiée n'a pas été créée. | Arrêtez ; aucun remplacement de cible ne doit être approuvé. |
| `original_preserved_move_failed` | La cible d'origine n'a pas pu être déplacée en position de récupération. | Conservez tous les fichiers de transaction et récupérez-les manuellement. |
| `promotion_failed` | Le candidat en attente n'a pas pu devenir la cible de production. | Vérifiez si l'original a été restauré avant de réessayer. |
| `production_validation_failed` | La production des octets promus a échoué. readback/validation. | Restaurez la sauvegarde vérifiée et inspectez l'enregistreur cible. |
| `replacement_committed_recovery_cleanup_failed` | Le remplacement est valide, mais les données de restauration n'ont pas pu être effacées. | Traitez la cible comme validée ; supprimez uniquement les données de récupération obsolètes vérifiées. |
| `rollback_failed` | La restauration automatique n'a pas été vérifiée. | Gardez le serveur arrêté et utilisez la récupération manuelle. |

<a id="target-profile-adapter-and-export-failures"></a>
## Échecs de cible, de profil, d'adaptateur et d'exportation

| Statut | Signification | Réponse sécurisée |
|---|---|---|
| `target_refused` | Le chemin configuré se trouve en dehors des limites du mode autorisé. | Corrigez le chemin ; n'affaiblissez jamais la limite. |
| `target_directory_failed` | Le répertoire cible n'a pas pu être créé ou confirmé. | Vérifiez uniquement l'existence et les autorisations de ce répertoire. |
| `profile_validation_failed` | Il manque une clé à un profil, a la mauvaise type/range ou viole une règle invariante restante. | Utilisez le nom nommé. clé, `sandbox.profile_overrides` et référence de profil pour réparer la source. |
| `skipped_incompatible` | Un mod facultatif existe mais ne correspond pas à une signature d'adaptateur prise en charge. | Laissez-le inchangé ou désactivez cet adaptateur. |
| `external_mods_partial` | Certains adaptateurs facultatifs sont terminés et d'autres ont été en toute sécurité skipped/failed. | Examinez les lignes de l'adaptateur indépendamment ; le résultat du bac à sable est séparé. |
| `external_adapter_failed` | Un adaptateur requis ne s'est pas terminé en toute sécurité. | Restaurez sa sauvegarde vérifiée avant de réessayer. |
| `degraded_state_persistence` | La préparation du bac à sable est terminée, mais la persistance de l'état de rotation ne s'est pas déroulée. | Ne présumez pas que le prochain démarrage peut avancer correctement ; réparer le stockage de l'état. |
| `export_directory_failed` | `web_export/` n'a pas pu être créé ou écrit. | La préparation du jeu peut toujours être valide ; réparer les rapports séparément. |

<a id="translation-and-message-validation-errors"></a>
## Erreurs de traduction et de validation des messages

Il s'agit d'échecs de dictionnaire ou de contrat de présentation. Ils sont validés avant la publication et peuvent également apparaître sous la forme d'un avertissement limité sur l'état d'exécution.

| Le texte d'erreur | Signification | Réponse sécurisée |
|---|---|---|
| `dictionary coverage mismatch` | Le dictionnaire de profil n'explique pas tous les paramètres documentés. | Ajoutez l'entrée de dictionnaire manquante et réexécutez le profil generation/validation. |
| `missing profile setting` | Un profil sélectionné ne dispose pas d'un paramètre requis par dictionary/schema. | Réparez la source de la famille de profils ; n'inventez pas de valeur par défaut d'exécution. |
| `empty explanation` | Un paramètre existe mais n'a pas operator/player d'explication. | Ajoutez une explication en langage clair avant la publication. |
| `join line too wide` | Une ligne de jointure générée dépasse la limite source de 42 caractères. | Raccourcissez la phrase du dictionnaire ; ne comptez pas sur l'encapsulation client. |
| `join message too tall` | Le résumé de jointure généré dépasse quatre lignes. | Réduisez ou redéfinissez la priorité du contenu du message. |
