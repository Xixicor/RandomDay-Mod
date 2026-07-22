<a id="configuration"></a>
# Configuration

> **Source canonique en anglais:** [CONFIGURATION.md](../../CONFIGURATION.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


La configuration principale de l'opérateur est :

```text
RandomDay/Scripts/ax_config/server.lua
```

Sauvegardez le fichier et modifiez une section à la fois. Les booléens Lua sont en minuscules `true` et `false` ; les chaînes ont besoin de guillemets ; les entrées de liste nécessitent des virgules. Après le prochain démarrage, lisez la page d'état avant d'effectuer une autre modification. Les contributeurs travaillant à partir des sources peuvent utiliser les contrôles de [validation de version](VALIDATION_DE_LA_VERSION.md) distincts avant d'empaqueter une version modifiée.

Ne modifiez pas manuellement `.randomday_mode`, `.randomday_version` les références de profil générées, `runtime/` ou `web_export/`. Le générateur de package est propriétaire des marqueurs de mode et de version du package et vérifie qu'ils sont conformes aux métadonnées de la version.

Chaque paramètre ci-dessous est défini dans `RandomDay/Scripts/ax_config/server.lua`. Les tableaux distinguent les paramètres modifiables des champs d'identité appartenant à la version et de compatibilité réservés. Un champ présent dans Lua ne signifie pas que sa modification est un comportement pris en charge.

<a id="choose-an-experience"></a>
## Choisissez une expérience

RandomDay propose deux packages : un pour chaque serveur dédié et un pour singleplayer/LAN copie manuelle. Le package dédié dispose de deux modes de fonctionnement ; ces modes sont des paramètres, pas des téléchargements séparés.

| Votre monde | Installer | Choisir ce comportement |
| --- | --- | --- |
| Un serveur dédié qui maintient une campagne en mouvement lors des redémarrages de routine | Package de serveur dédié | `persistent_dedicated` reprend le famille enregistrée et ordre des profils. |
| Un serveur dédié ouvert uniquement pour les sessions de jeu individuelles | Le même package de serveur dédié | `temporary_dedicated` conserve le prochain profil préparé en toute sécurité entre les sessions, tandis qu'une nouvelle course familiale peut utiliser un démarrage configuré ou aléatoire. |
| Un joueur solo ou LAN monde | Singleplayer/LAN package | `auto` sélectionne le comportement de copie manuelle ; arrêtez le monde avant de copier le fichier généré. |

Si vous n'êtes pas sûr, utilisez `auto`. Le package sélectionne le comportement normal pour son type d'installation. Choisissez le style de jeu large dans [Rotation familiale](ROTATION_FAMILIALE.md). Utilisez l'[index familial généré](PROFILS/DOCUMENTATION_DU_PROFIL.md) lorsque vous souhaitez des valeurs exactes de gameplay et de bac à sable. Choisissez ensuite le premier jour et la progression :

- `start_day_mode="configured"` commence à `start_day`.
- `start_day_mode="random"` choisit un premier jour valide au début d'une nouvelle course familiale et persiste ce choix.
- `day_progression_mode="sequential"` s'étend sur les 17 positions.
- `day_progression_mode="non_repeating_random"` stocke une commande mélangée qui contient chaque jour exactement une fois.

Utilisez les préréglages complets dans [Rotation](#rotation). Une nouvelle installation nécessite encore un démarrage pour préparer le premier profil choisi et un démarrage ultérieur pour l'activer.

<a id="release-identity-and-logging"></a>
## Identité et journalisation de la version

| Paramètre | Type et valeur expédiée | Utilisation prise en charge | Échec ou interaction |
|---|---|---|---|
| `version` | Chaîne lue depuis `.randomday_version` | Lecture seule. | Le marqueur manquant ou vide devient `unversioned` ; la validation finale du package rejette la dérive d'identité. |
| `package_mode` | Chaîne lue depuis `.randomday_mode` | Lecture seule : `dedicated_server` ou `singleplayer_manual`. | Toute autre valeur arrête le démarrage avant l'écriture de la cible. |
| `plan_basis` | Chaîne : `RandomDay - Seventeen Suns Rotation + Open World Scope` | Étiquette de diagnostic uniquement ; ne l'utilisez pas comme bascule de fonctionnalité. | Le runtime actuel ne branche pas sur ce champ. |
| `logging.level` | Chaîne : `info` | `debug`, `info`, `warn` ou `error`. | Les valeurs inconnues n'ajoutent pas de destinations de journalisation ; garder `info` à moins de diagnostiquer le comportement de génération de profil. |

Exemple :

```lua
logging = { level = "debug" }
```

Utilisez `debug` temporairement, conservez le `UE4SS.log` pertinent, puis revenez à `info`. Les journaux peuvent contenir des chemins locaux provenant d'échecs de bas niveau ; examinez-les avant de les partager.

<a id="experience-mode"></a>
## Mode expérience

`experience.mode` nomme la façon dont cette installation est exploitée. Cela n'affaiblit pas la limite de sécurité du prochain démarrage : Abiotic Factor lit les paramètres du bac à sable avant UE4SS charge RandomDay, donc aucun mode ne peut remplacer les règles du processus déjà en cours.

| Paramètre | Valeur expédiée | Valeurs prises en charge | L'effet |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` est résolu à partir du package. Les packages dédiés peuvent utiliser l’un ou l’autre mode dédié. Le package de copie manuelle accepte uniquement `auto` ou `singleplayer_lan`. |

- `persistent_dedicated` de conserver une seule commande family/day lors des redémarrages normaux à long terme du serveur.
- `temporary_dedicated` décrit un serveur démarré pour des sessions de jeu limitées. Il conserve toujours l'ordre préparé, de sorte que l'arrêt de l'hôte ne relance pas silencieusement la session suivante.
- `singleplayer_lan` génère uniquement la sortie de copie manuelle limitée. Il ne découvre ni ne modifie jamais un dossier de sauvegarde personnel.

Une combinaison package/experience incompatible s'arrête avant une écriture dans le bac à sable.

<a id="rotation"></a>
## Rotation

| Paramètre | Valeur expédiée | Valeurs prises en charge | L'effet |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Conserve toutes les modifications du bac à sable à la limite de redémarrage. |
| `cycle.cycle_length_days` | `17` | `17` pour l'ensemble de profils standard | Correspond à chaque pack familial et référence générée. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Utilise `cycle.start_day` ou choisit un jour de début valide une fois au début d'une course familiale. |
| `cycle.start_day` | `1` | Nombre entier `1` à `17` | Premier jour où `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Construit un ordre séquentiel encapsulé ou un ordre mélangé contenant chaque jour exactement une fois. |
| `cycle.bootstrap_day` | `1` | Nombre entier `1` à `17` | Repli de compatibilité utilisé uniquement lorsque `cycle.start_day` est absent. La nouvelle configuration doit utiliser `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` ou un intervalle positif limité | `0` se prépare une fois au démarrage ; une valeur positive permet une supervision périodique lorsque UE4SS fournit `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Choisit comment commence une nouvelle course familiale de 17 jours. |
| `profile_family.selected_family` | `action` | Un identifiant dans `allowed_families` | Famille utilisée par `selected_run` et comme solution de secours. |
| `profile_family.default_family` | `action` | Un identifiant familial enregistré | Retour lorsque l'ID sélectionné est manquant ou invalide. |
| `profile_family.allowed_families` | Tous les 17 ID de famille publics | Tout sous-ensemble non vide d'ID enregistrés | Lime les familles éligibles pour les nouvelles exécutions. |
| `profile_family.preserve_family_until_day_17` | Booléen : `true` | Champ de compatibilité réservé ; keep `true`. | Le calendrier actuel garde toujours la famille à travers chaque position dans l'ordre persistant de 17 jours et ne lit pas ce champ comme une bascule. |
| `profile_family.reroll_only_after_day_17` | Booléen : `true` | Champ de compatibilité réservé ; keep `true`. | Le calendrier actuel ne change de famille qu'une fois chaque ID de jour terminé, quel que soit le dernier jour dans l'ordre stocké. |
| `profile_family.prevent_repeats_until_rotation_complete` | Booléen : `true` | Champ de compatibilité réservé ; keep `true`. | La logique de pool non répétitive actuelle est fixe et ne lit pas cette valeur. comme bascule. |

L'ordre journalier est créé une fois pour une nouvelle gestion familiale et écrit dans `runtime/rotation_state.txt`. La récupération et les redémarrages ultérieurs réutilisent ces positions exactes. Une modification de configuration ne relance pas une commande en cours. La famille ne change qu'une fois les 17 positions terminées.

<a id="recommended-presets"></a>
### Préréglages recommandés

Serveur dédié persistant :

```lua
experience = { mode = "persistent_dedicated" }
cycle = {
    application_mode = "next_reboot_queue",
    cycle_length_days = 17,
    start_day_mode = "configured",
    start_day = 1,
    day_progression_mode = "sequential",
    bootstrap_day = 1,
    check_interval_ms = 0,
}
```

Sessions dédiées temporaires avec un ordre non répétitif différent par nouvelle exécution familiale :

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN la copie manuelle utilise le package solo et quitte normalement `experience.mode="auto"`. Vous pouvez choisir les mêmes contrôles de démarrage et de progression avant de générer le fichier suivant. Copiez le fichier généré dans le monde arrêté choisi avant l'exécution d'une autre génération si vous souhaitez que l'état d'exécution et le profil chargé du monde restent alignés.

Sur une nouvelle installation, le premier processus ne peut préparer que le jour de début sélectionné. Un processus ultérieur l'active. Le démarrage aléatoire ou configuré ne contourne pas l'ordre de chargement du moteur.

Exemple d'exécution fixe du générateur :

```lua
profile_family = {
    mode = "selected_run",
    selected_family = "builder",
    default_family = "action",
    allowed_families = { "builder" },
    preserve_family_until_day_17 = true,
    reroll_only_after_day_17 = true,
    prevent_repeats_until_rotation_complete = true,
}
```

Un ensemble éligible vide ou inconnu revient à une famille enregistrée au lieu de créer un profil incomplet.

<a id="primary-sandbox-path"></a>
## Chemin du bac à sable principal

| Paramètre | Type et valeur expédiée | Utilisation prise en charge | Échec ou interaction |
|---|---|---|---|
| `paths.runtime_dir` | Chaîne : `ue4ss/Mods/RandomDay/runtime` | Lecture seule dans la configuration source. | `init.lua` le remplace par le chemin `runtime/` racine du mod résolu. |
| `paths.web_export_dir` | Chaîne : `ue4ss/Mods/RandomDay/web_export` | Lecture seule dans la configuration source. | `init.lua` le remplace par le chemin `web_export/` racine du mod résolu. |
| `paths.sandbox_path_override` | Chaîne ou `nil`: `nil` | Un chemin littéral `SandboxSettings.ini` pour une mise en page dédiée non standard. | Les cibles non sécurisées ou indisponibles échouent à l'écriture ; Le mode solo efface le remplacement. |
| `paths.sandbox_candidates` | Liste des chaînes : sept candidats génériques | Candidats de secours de serveur dédié ordonnés. | `init.lua` ajoute les candidats dérivés de l'installation ; le premier chemin existant l'emporte. |
| `paths.write_sandbox_mirrors` | Booléen : `true` | Autorise les miroirs délibérément configurés. | Aucun miroir n'est écrit tant que la liste des miroirs est vide et `world_name=nil` ; Le mode solo force `false`. |
| `paths.sandbox_mirror_required` | Booléen : `false` | Champ de compatibilité réservé ; keep `false`. | Le rédacteur actuel traite les miroirs comme facultatifs et ne lit pas ce champ comme une porte obligatoire. |
| `paths.world_name` | Chaîne ou `nil`: `nil` | Un composant de dossier mondial sécurisé utilisé pour dériver des candidats miroirs génériques. | Tout ce qui se trouve en dehors des lettres, chiffres, espaces, `_` ou `-` arrête le démarrage ; le mode solo l'ignore. |
| `paths.sandbox_mirror_candidates` | Liste des chaînes : vide | Fichiers miroir facultatifs exacts. | Chaque miroir éligible utilise sa propre transaction ; un échec de miroir ne modifie pas le succès principal. |

`paths.sandbox_path_override` est par défaut `nil`. Sans remplacement, RandomDay vérifie d'abord les candidats WindowsServer génériques ancrés à l'installation RandomDay détectée, puis vérifie tous les candidats configurés. S'il n'en existe pas, il utilise le premier candidat générique ancré dans l'installation, qui résout celui de l'installation du serveur :

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Cette solution de secours n'est pas résolue à partir du répertoire de travail actuel du processus. Définissez `sandbox_path_override` uniquement lorsque votre installation utilise un fichier littéral différent. Pointez-le vers un `SandboxSettings.ini`, pas vers un répertoire. Arrêtez le serveur et vérifiez que le fichier se trouve dans l'installation prévue avant utilisation.

<a id="optional-mirrors"></a>
### Miroirs facultatifs

`paths.write_sandbox_mirrors` est livré sous le nom `true`, mais la liste des chemins du miroir est vide et `paths.world_name` est `nil`. Par conséquent, les valeurs par défaut expédiées n’écrivent aucun miroir supplémentaire. Définissez-le sur `false` lorsque l'installation doit toujours écrire uniquement la cible principale résolue. Sans candidat miroir ni nom mondial configuré, l'une ou l'autre des valeurs écrit toujours uniquement le fichier sandbox principal.

Un miroir devient éligible uniquement lorsque vous ajoutez délibérément une entrée exacte à `paths.sandbox_mirror_candidates` ou définissez `paths.world_name`. Les miroirs sont des copies optimales pour les installations qui lisent un deuxième chemin de bac à sable spécifique au monde. Ils ne remplacent pas la configuration du chemin principal correct.

Avant d'activer un miroir :

1. arrêtez le serveur ;
2. identifiez le fichier exact lu par le serveur ;
3. confirmez que la cible se trouve dans l'installation prévue ;
4. sauvegardez-le ;
5. ajoutez uniquement ce chemin ;
6. vérifiez le résultat du miroir après la préparation.

Exemple de remplacement sans miroir :

```lua
paths = {
    runtime_dir = "ue4ss/Mods/RandomDay/runtime",
    web_export_dir = "ue4ss/Mods/RandomDay/web_export",
    sandbox_path_override = "<server-root>/AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    sandbox_candidates = {},
    write_sandbox_mirrors = false,
    sandbox_mirror_required = false,
    world_name = nil,
    sandbox_mirror_candidates = {},
}
```

`<server-root>` est un espace réservé. Remplacez-le localement ; ne publiez pas de chemin spécifique à la machine.

<a id="non-disableable-safety-locks"></a>
## Verrouillages de sécurité non désactivables

| Paramètre | Valeur requise | Signification |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Conservez une copie vérifiée avant de remplacer un fichier principal existant. |
| `sandbox.restore_last_good_on_failure` | `true` | Tentez une récupération automatique après un échec de remplacement ou de relecture. |
| `external_mods.patch_only_existing_keys` | `true` | Refusez d'inventer un paramètre inconnu dans le fichier d'un autre mod. |
| `external_mods.backup_before_write` | `true` | Conservez les octets cibles avant une modification d'un adaptateur transactionnel pris en charge. |

RandomDay refuse le démarrage si l'une de ces quatre valeurs n'est pas `true`. Ce sont des verrous de sécurité et non des boutons à bascule pris en charge. Ne les désactivez pas, y compris lors du développement ou du dépannage, car cela modifie la limite de fermeture en cas d'échec prouvée par les tests de l'enregistreur et de l'adaptateur.

`sandbox.force_rewrite_every_supervision_tick` reste un paramètre normal et est livré en tant que `false`, ce qui laisse intact un fichier sandbox déjà correspondant. Il accepte un booléen. Le définir sur `true` force à nouveau les mêmes octets préparés appartenant au processus à travers l'enregistreur ; il ne fait pas avancer le family/day. Utilisez-le uniquement pour un test de récupération limité, car les écritures répétées créent davantage de sauvegardes d'opérations.

<a id="optional-mod-adapters"></a>
## Adaptateurs de modules en option

| Paramètre | Valeur expédiée | Signification |
|---|---:|---|
| `external_mods.enabled` | `true` | Autoriser les adaptateurs configurés à inspecter les cibles installées séparément. |
| `external_mods.optional_by_default` | `true` | Les modules facultatifs manquants ou incompatibles ne bloquent pas RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Verrou de sécurité requis ; le démarrage échoue s'il est modifié. |
| `external_mods.backup_before_write` | `true` | Verrou de sécurité requis ; le démarrage échoue s'il est modifié. |
| `external_mods.adapters` | Quatre ID d'adaptateur publics | Limites que les adaptateurs appartenant à RandomDay-owned les adaptateurs peuvent fonctionner. |

Supprimez un ID d'adaptateur de la liste pour laisser cette intégration seule sans désactiver ou désinstaller le mod tiers. Le singleplayer/LAN désactive chaque adaptateur, quelle que soit cette liste.

`external_mods.optional_by_default=false` fait échouer un résultat d'adaptateur configuré autre que `applied` ou `already_current` dans le résultat global de l'adaptateur. Cela n’annule pas la transaction sandbox principale. Conservez le `true` fourni, sauf si l'opérateur a une raison testée pour exiger une intégration.

Voir [Adaptateurs de modules pris en charge](ADAPTATEURS_PRIS_EN_CHARGE.md) pour les mises en page reconnues et les six résultats possibles.

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### Champs de portée facultatifs du moteur Chaotic Spawn

`world_scope` fournit cinq paramètres d'extension RandomDay facultatifs uniquement lorsqu'un moteur de génération chaotique reconnu `DynamicSpawns/SharedData.lua` contient déjà ces champs. Il ne s'agit pas d'un mod ou d'un téléchargement distinct :

| Paramètre | Valeur expédiée | Effet d'adaptateur |
|---|---:|---|
| `world_scope.enabled` | `true` | demande la porte facultative RandomDay de portée mondiale à l'intérieur d'un DynamicSpawns disposition. |
| `world_scope.affect_open_worlds` | `true` | Inclut les mondes ouverts à moins que le mod cible n'applique une règle de monde protégé. |
| `world_scope.unknown_world_policy` | `allow` | Demandes `allow` ou `block` lorsque le mod cible ne peut pas classer un monde. |
| `world_scope.log_scope_decisions` | `true` | Demande la journalisation du mod cible pour sa décision de portée. |
| `world_scope.protected_worlds` | Liste vide | Fournit des modèles de monde protégé séparés par des virgules à la mise en page cible. |

Ces valeurs sont des entrées d'adaptateur, et non un filtre mondial implémenté par le rédacteur sandbox de RandomDay's écrivain sandbox. Ils ne prennent effet que lorsque la disposition Chaotic Spawn Engine installée séparément contient déjà la RandomDay et les rapports `applied` ou `already_current`. Chaotic Spawn Engine reste responsable de l'utilisation de ces champs au moment de l'exécution. Une installation ordinaire sans les champs d'extension reste inchangée.

Les cinq valeurs sont des entrées d'adaptateur. `unknown_world_policy` accepte uniquement les valeurs cibles documentées `allow` ou `block` ; une disposition cible non reconnue est ignorée. Gardez `protected_worlds` vide dans les exemples de documentation. Si un opérateur utilise des modèles locaux, ils ne doivent pas être inclus dans les captures d'écran, les problèmes ou les artefacts de version.

<a id="player-messages"></a>
## Messages du joueur

La configuration de serveur dédié livrée permet des notifications de jointure compactes et une ligne quotidienne courte. Il attend 30 secondes avant le premier passage, vérifie les joueurs nouvellement rejoints toutes les 15 secondes et attend 10 secondes après un avis d'adhésion avant la ligne quotidienne.

| Paramètre | Valeur expédiée |
|---|---:|
| `player_message.enabled` | `true` |
| `player_message.log_on_startup` | `true` |
| `player_message.register_console_command` | `false` |
| `player_message.console_command` | `randomday` |
| `player_message.broadcast_enabled` | `true` |
| `player_message.startup_delay_ms` | `30000` |
| `player_message.join_check_interval_ms` | `15000` |
| `player_message.send_daily_joke_after_join` | `true` |
| `player_message.daily_joke_delay_seconds` | `10` |
| `player_message.criticality_join` | `2` |
| `player_message.criticality_joke` | `0` |
| `player_message.max_line_chars` | `42` |
| `player_message.max_join_lines` | `4` |
| `player_message.max_warning_lines` | `3` |
| `player_message.max_note_lines` | `3` |

La validation de la longueur du message vérifie les limites de la source. Cela ne remplace pas un test visuel sur chaque résolution client.

Les valeurs de timing sont des nombres non négatifs interprétés en millisecondes sauf `daily_joke_delay_seconds`. Un paramètre de message ou de diffusion désactivé supprime les notifications client sans modifier la préparation du bac à sable. La commande de console est enregistrée uniquement lorsque le paramètre et le gestionnaire UE4SS sont disponibles. Conservez les valeurs de criticité aux niveaux de transport expédiés, sauf si un test client nommé prouve une autre valeur.

`max_line_chars` est limité à 8 à 64 caractères par le traducteur. Les trois paramètres de nombre de lignes limitent respectivement la jointure, l'avertissement et la sortie de note ; les valeurs expédiées correspondent au nombre de lignes source disponibles. Conservez ces quatre limites par défaut, à moins qu'un test de configuration client ne prouve un paramètre plus étroit.

Exemple avec les messages désactivés :

```lua
player_message = {
    enabled = false,
    log_on_startup = true,
    register_console_command = false,
    console_command = "randomday",
    broadcast_enabled = false,
    startup_delay_ms = 30000,
    join_check_interval_ms = 15000,
    send_daily_joke_after_join = false,
    daily_joke_delay_seconds = 10,
    criticality_join = 2,
    criticality_joke = 0,
    max_line_chars = 42,
    max_join_lines = 4,
    max_warning_lines = 3,
    max_note_lines = 3,
}
```

<a id="profiles-and-sandbox-values"></a>
## Profils et valeurs du bac à sable

Les fichiers sources de famille sous `RandomDay/Scripts/ax_profiles/families/` définissent 17 jours complets par famille. La documentation générée sous `docs/profiles/` est une sortie de référence, pas la source de personnalisation.

Utilisez [référence de clé sandbox facultative complète](PROFILS/CL%C3%89S_DES_PARAM%C3%88TRES_DU_BAC_%C3%80_SABLE.md) pour les types, les plages, les valeurs par défaut du profil fourni et les valeurs invariantes restantes. Après avoir édité une source de profil, régénérez et validez les 289 combinaisons ; ne corrigez pas un Markdown généré ou JSON enregistrement à la main.

<a id="customize-the-shipped-profile-defaults"></a>
### Personnalisez les paramètres par défaut du profil livré

Ouvrir :

```text
RandomDay/Scripts/ax_config/server.lua
```

Trouvez ce bloc sous `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Ce sont les choix de départ de RandomDay's des choix de départ, pas des règles de facteur abiotique immuables. Définissez l'un ou l'autre mode sur `true` ou `false`. Définissez chaque valeur de support sur un nombre entier à partir de `0` à `1000`. Arrêtez le jeu ou le serveur dédié avant de modifier le fichier, enregistrez-le, puis redémarrez pour que Lua charge la nouvelle configuration.

RandomDay lit ce bloc chaque fois qu'il crée les 17 profils d'une famille. Les valeurs choisies sont donc appliquées à chaque famille et chaque jour, y compris les profils préparés après une rotation et les profils reconstruits après un démarrage ultérieur du serveur. Vous n'avez pas besoin de modifier 289 fichiers de profil ni de régénérer la référence de profil.

La modification d'un seul `SandboxSettings.ini` en direct est temporaire car le prochain profil préparé est généré à partir de `server.lua`. Les types invalides, les clés inconnues ou les valeurs prises en charge en dehors de `0..1000` arrêtent la construction du profil avec une erreur de configuration nommée au lieu de revenir silencieusement aux valeurs par défaut.

La référence de profil générée continue d'afficher les valeurs par défaut fournies. Il s'agit d'une référence de version, et non d'une copie de la configuration privée d'un serveur.
