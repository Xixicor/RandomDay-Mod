<a id="packaged-source-reference"></a>
# Référence des sources packagées

> **Source canonique en anglais:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


La version ZIP contient exactement les 51 chemins ci-dessous. Le constructeur rejette un chemin manquant, une source supplémentaire en forme de package, une collision de cas, un lien symbolique ou un membre en dehors de sa liste autorisée littérale. La sortie d'exécution, les tests, les documents du référentiel et les mods tiers ne sont pas membres du package.

Le compagnon vérifiable par machine est [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Il enregistre les mêmes chemins avec les entrées, les sorties, les effets secondaires, les paramètres publics, les états visibles, les modes de défaillance, la possibilité de modification et la documentation canonique.

Chaque ligne Lua livrée a une ancre `module-*` stable. Le lien identique dans son en-tête source canonique et son enregistrement machine permet de tracer directement la propriété, le contrat, les effets secondaires, les échecs et la récupération.

<a id="package-markers"></a>
## Marqueurs de package

| Chemin | Appelant et responsabilité | Effets secondaires et comportement en cas d'échec | Guide |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS marqueur d'activation inclus dans les deux packages. | Aucune écriture à l'exécution. Le fichier manquant échoue à la validation du package et peut empêcher le chargement. | [Installation](INSTALLATION.md) |
| `RandomDay/.randomday_version` | Lu par `ax_core/version.lua` ; généré par package. | Aucune écriture à l'exécution. Missing/blank le marqueur renvoie `unversioned` ; La version finale nécessite une identité de version alignée. | [Validation de la version](VALIDATION_DE_LA_VERSION.md) |
| `RandomDay/.randomday_mode` | Lu par `ax_core/version.lua` ; généré comme `dedicated_server` ou `singleplayer_manual`. | Une valeur invalide arrête le démarrage avant le fonctionnement du système de fichiers. | [Architecture](ARCHITECTURE.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Entrée, configuration et services de base

| Chemin | Appelant et responsabilité | Entrées, sorties et comportement en cas d'échec | Guide |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS point d'entrée Résout une racine de mod et invoque `ax_core/init.lua`. | Imprime une ligne fatale et renvoie si la résolution racine ou le démarrage échoue. | [Chemin de démarrage](ARCHITECTURE.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Orchestrateur principal pour le démarrage et la supervision facultative. | Ancre les chemins de sortie, applique package/safety les verrous, possède une sélection et séquence l'écriture, l'état, les adaptateurs, l'état, le Web et les messages. | [Chemin de démarrage](ARCHITECTURE.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Chargé par `init.lua` ; objet de configuration public complet. | Lit l'identité du package ; les paramètres et les champs réservés sont documentés individuellement. Des verrous de sécurité non valides arrêtent le démarrage. | [Configuration](CONFIGURATION.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Chargé par la configuration et le registre de profil. | Lectures. marqueurs de package découpés ; renvoie `unversioned` ou `invalid` lorsqu'ils sont indisponibles. | [Identité de version](VALIDATION_DE_LA_VERSION.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Wrapper de journalisation partagé. | Émet `[RandomDay]` des lignes aux niveaux configurés ; pas de transport de journaux privés. | [Fichiers d'exécution](FICHIERS_D_EX%C3%89CUTION.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | Fichier partagé, chemin, encodage, hachage, répertoire et assistants de transaction. | La création de répertoire n'accepte qu'un succès confirmé de la commande Lua/Wine ; Les résultats indisponibles, déclenchés, signalés, ambigus ou non nuls échouent avec des messages limités et des références relatives à l'exécution. Il possède également pending/readback/promotion/rollback la sémantique et conserve les données de récupération incertaines. | [Transaction sandbox](ARCHITECTURE.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Sélection, Sandbox, statut et messages

| Chemin | Appelant et responsabilité | Entrées, sorties et comportement en cas d'échec | Guide |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; lit le marqueur actif et l'état de rotation, choisit une active/prepared paire, conserve le mode session et l'ordre exact du jour. | Construit un configured/wrapped ou un ordre à 17 positions mélangé une seule fois, écrit `rotation_state.txt` de manière transactionnelle et revient au dernier bon état sans relancer l'échec de persistance. produit une transition dégradée. | [Machine à états de rotation](ARCHITECTURE.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Enregistreur Sandbox ; crée des sauvegardes d'opération et de dernière bonne qualité et restaure les octets vérifiés. | Mise à jour la dernière bonne sandbox/manifest sous forme de paire ; préserve la paire précédente si le remplacement du manifeste échoue. | [Fichiers d'exécution](FICHIERS_D_EX%C3%89CUTION.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Créateur de profil, sérialiseur et validateur. | Définit l'ordre canonique des clés, les types, les plages et les règles fixes ; aucun système de fichiers n'écrit. | [Clés du bac à sable](PROFILS/CL%C3%89S_DES_PARAM%C3%88TRES_DU_BAC_%C3%80_SABLE.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Écrivain de bac à sable. | Produit un texte déterministe complet INI avec des marqueurs RandomDay ; les données de profil invalides sont rejetées par validation. | [Profils](PROFILS/DOCUMENTATION_DU_PROFIL.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Tests et rédacteur du générateur. | Valide les valeurs de profil et sérialisées INI par rapport au schéma, aux valeurs fixes et à l'identité de profil attendue. | [Clés du bac à sable](PROFILS/CL%C3%89S_DES_PARAM%C3%88TRES_DU_BAC_%C3%80_SABLE.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua` ; résout les cibles liées au mode et exécute primary/mirror écrit. | Produit des résultats de transaction, de sauvegarde, de restauration, de hachage, de mise en miroir et de sortie manuelle. Les cibles non sécurisées et les écritures non vérifiées échouent. | [Transaction sandbox](ARCHITECTURE.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` après chaque résultat de préparation. | Écrit l'état actuel, le dictionnaire et l'aperçu des messages de manière transactionnelle avec des références cibles nettoyées. L'échec de sortie est enregistré et ne modifie pas l'autorité du bac à sable. | [Schéma d'état actuel](FICHIERS_D_EX%C3%89CUTION.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` après le statut. | Écrit `today.json` et `today.html` du active/prepared décision. L'échec est signalé comme un échec d'exportation et non comme un succès du bac à sable. | [Schéma d'exportation Web](FICHIERS_D_EX%C3%89CUTION.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` après une persistance réussie de l'état. | Builds limités join/daily messages à partir des données de traduction et enregistre éventuellement une commande de console locale. Manquant player/transport ignore une notification sans modifier l'état du profil. | [Messages du lecteur](CONFIGURATION.md#player-messages) |

<a id="optional-adapter-modules"></a>
## Modules adaptateurs en option

| Chemin | Appelant et responsabilité | Entrées, sorties et comportement en cas d'échec | Guide |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua` ; découvre les cibles d'adaptateur reconnues et applique tous les fichiers planifiés de manière transactionnelle. | Produit six résultats documentés, des sauvegardes vérifiées, des diagnostics nettoyés et des preuves de restauration. | [Limite de l'adaptateur](ARCHITECTURE.md#adapter-boundary) |
| <a id="module-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Définition du pont d'adaptateur pour un DynamicSpawns disposition. | Fournit des signatures reconnues et des cartes de valeurs préparées ; les mises en page inconnues sont ignorées. | [Adaptateurs pris en charge](ADAPTATEURS_PRIS_EN_CHARGE.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Définition d'adaptateur interne pour les champs d'extension facultatifs RandomDay dans un moteur Chaotic Spawn Engine reconnu `DynamicSpawns` mise en page ; le nom de fichier n'est pas un nom de produit distinct. | Rencontre de profil Maps et valeurs de portée configurées uniquement lorsque la présentation complète de l'extension existe ; Chaotic Spawn Engine reste responsable de l'utilisation du runtime. | [Adaptateurs pris en charge](ADAPTATEURS_PRIS_EN_CHARGE.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Définition du pont adaptateur pour une disposition des paramètres de lasers mortels reconnus. | Nécessite chaque clé prévue avant la mutation ; sinon, les rapports sont incompatibles. | [Adaptateurs pris en charge](ADAPTATEURS_PRIS_EN_CHARGE.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Définition du pont d'adaptateur pour une disposition des paramètres ANTE Up reconnue. | Nécessite les champs respawn, variant et debug-gate ; sinon, les rapports sont incompatibles. | [Adaptateurs pris en charge](ADAPTATEURS_PRIS_EN_CHARGE.md) |

<a id="shared-profile-and-translation-modules"></a>
## Profil partagé et modules de traduction

| Chemin | Appelant et responsabilité | Entrées, sorties et comportement en cas d'échec | Guide |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua` ; valeurs de base canoniques et valeurs par défaut de 17 jours. | Fournit toutes les clés du bac à sable, les quatre valeurs par défaut du profil fourni et les règles fixes restantes ; aucun système de fichiers n'écrit. La validation du schéma rejette la sortie incomplète. | [Clés du bac à sable](PROFILS/CL%C3%89S_DES_PARAM%C3%88TRES_DU_BAC_%C3%80_SABLE.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Chaque module de famille et chaque vue de famille héritée. | Clone les jours de base, applique les remplacements family/day limités, valide `sandbox.profile_overrides`, applique ces valeurs persistantes ainsi que les règles fixes restantes et renvoie un pack familial de 17 profils. | [Référence du profil](PROFILS/DOCUMENTATION_DU_PROFIL.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua` ; registre public ordonné des 17 familles. | Fournit les identifiants, les noms de fichiers sources, les noms, les descriptions, les genres et les métadonnées de tonalité. La source familiale manquante échoue lors du chargement. | [Rotation familiale](ROTATION_FAMILIALE.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Calendrier, écrivain, statut, tests et générateurs. | Charge tous les packs familiaux enregistrés et expose l'ensemble de profils 17 x 17, les valeurs par défaut fournies, les valeurs effectives à l'échelle du profil, l'ordre du schéma et les règles fixes. | [Référence du profil](PROFILS/DOCUMENTATION_DU_PROFIL.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Vue de compatibilité packagée du Pack Action original de 17 jours. | Renvoie un pack familial complet mais n'est pas la source familiale du registre actuel. Conservé pour la continuité historique du chemin de paquet. | [Rotation familiale](ROTATION_FAMILIALE.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Vue de compatibilité du package du pack de survie Reaction original. | Renvoie un pack familial complet mais n'est pas sélectionné par le registre actuel. Conservé pour la continuité historique du chemin de paquet. | [Rotation familiale](ROTATION_FAMILIALE.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Recherche de rencontres d'index journalier héritée disponible pour le code de profil. | Renvoie une carte de rencontre délimitée par jour ; aucun système de fichiers n'écrit. Les profils familiaux actuels portent leurs propres valeurs de rencontre. | [Référence du profil](PROFILS/DOCUMENTATION_DU_PROFIL.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Messagerie du lecteur et wrapper de compatibilité. | Builds limités joke/note packs du profil sélectionné ; les données de profil indisponibles reviennent à un message neutre. | [Messages du lecteur](CONFIGURATION.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Wrapper rétrocompatible autour `messages_17.lua`. | Aucune donnée ou écriture indépendante ; l'échec de chargement suit le module de message canonique. | [Messages du lecteur](CONFIGURATION.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Rédacteur de dictionnaire de traduction et d'exécution. | Définit les 46 significations, types, plages, domaines et langages de valeurs des paramètres du bac à sable. Les valeurs inconnues restent explicites. | [Traduction et dictionnaire](FICHIERS_D_EX%C3%89CUTION.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | État d'exécution et messagerie du joueur. | Convertit les valeurs brutes du profil en scores de domaine délimité, faits, résumés, avertissements et sorties de dictionnaire tout en conservant les valeurs brutes. | [Schéma d'état actuel](FICHIERS_D_EX%C3%89CUTION.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Modules familiaux enregistrés

Chaque ligne est chargée par `randomday_17.lua`, appels `profile_builder.lua`, renvoie exactement 17 profils et n'a aucun effet secondaire direct sur le système de fichiers. Un profil manquant, en double, incomplet, hors plage ou enfreignant les règles fixes fait échouer la suite de luminaires d'exécution et la porte de référence générée.

| Chemin | Famille | Guide généré canonique |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Action | [Action](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_D_ACTION.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Survie | [Survie](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_SURVIE.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Furtivité | [Furtivité](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_FURTIFS.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Horde | [Horde](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_HORDE.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Chasse au boss | [Chasse au boss](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_CHASSE_AU_BOSS.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Scavenger | [Scavenger](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_CHAROGNARDS.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Builder | [Builder](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_CONSTRUCTEUR.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Expédition | [Expédition](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_D_EXP%C3%89DITION.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Verrouillage de sécurité | [Verrouillage de sécurité](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_VERROUILLAGE_DE_S%C3%89CURIT%C3%89.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Risque biologique | [Risque biologique](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_RISQUE_BIOLOGIQUE.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Anteverse | [Anteverse](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_ANTEVERSE.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Cauchemar | [Cauchemar](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_CAUCHEMAR.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | altéré | [altéré](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_ALT%C3%89R%C3%89S.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Précision | [Précision](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_PR%C3%89CISION.md) |
| <a id="module-ax-profiles-families-logistics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Logistique | [Logistique](PROFILS/FAMILLES/PROFIL_LOGISTIQUE_FAMILLE.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Expérimental | [Expérimental](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_EXP%C3%89RIMENTAUX.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Test de conformité | [Test de conformité](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_TESTS_DE_CONFORMIT%C3%89.md) |

<a id="generated-references"></a>
## Références générées

`docs/profiles/profiles.generated.json`, les fichiers Markdown de la famille et `FULL_PROFILE_REFERENCE.md` sont des contributor/operator références générées à partir du même ensemble de profils. Ils ne sont pas membres du package et ne doivent pas être modifiés en remplacement de la modification de la source du profil. La validation nécessite 17 familles, 17 profils par famille, des identifiants uniques, toutes les clés de schéma, des règles fixes, une couverture de traduction et des messages limités.
