<a id="supported-optional-mods"></a>
# Mods facultatifs pris en charge

> **Source canonique en anglais:** [SUPPORTED_ADAPTERS.md](../../SUPPORTED_ADAPTERS.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


RandomDay peut faire en sorte qu'un mod installé séparément suive le profil RandomDay actif. Cette fonctionnalité est disponible uniquement dans le package serveur dédié. Le singleplayer/LAN ne modifie jamais un autre mod.

RandomDay n'inclut ni ne redistribue aucun des mods répertoriés ici. Installez et activez chaque mod facultatif à partir de sa propre page Nexus et suivez d'abord les instructions de son auteur. RandomDay modifie uniquement les paramètres reconnus qui existent déjà dans le fichier installé. Il n'ajoute pas de fonctionnalités à un autre mod et un adaptateur peut être désactivé sans désinstaller ce mod. Le package de serveur dédié commence par `external_mods.enabled = true`.

<a id="what-randomday-changes"></a>
## Quels RandomDay changements

| Intégration facultative | Paramètres sélectionnés dans le profil actif |
| --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | Mode difficile, player/area comportement du temps de recharge, activité des tempêtes et des zones chaudes, apparitions de boss et de rafales, timing du cycle d'apparition, petites et grandes plages de temps de recharge, distance d'apparition, global/local/mod plafonds, tempête de portail, chances de violation d'ordre et de boss, et apparitions minimales par zone. |
| Champs d'extension facultatifs du Chaotic Spawn Engine | Lorsque le `SharedData.lua` contient déjà RandomDay des champs d'extension, l'adaptateur peut fournir un profil de rencontre, un niveau, un thème, des limites de groupe, des valeurs d'événements spéciaux et de rencontres mixtes, un budget, un temps de recharge et des contrôles de portée mondiale. Ce n'est pas un autre mod à télécharger. |
| Lasers mortels | Activation du module plus dégâts et activation des contrôles pour les émetteurs déployables, les émetteurs environnementaux, les réflecteurs et les prismes. |
| ANTE Up | Multiplicateur de fréquence de réapparition, fréquence antévariante et les commutateurs development/debug commutateurs. RandomDay maintient tous les commutateurs de développement et de débogage reconnus désactivés. |

La bibliothèque de profils fournit un ensemble de valeurs préparées pour chaque jour pris en charge. Une journée calme peut réduire la pression, une journée à risque peut l’augmenter et une journée de récupération peut la réduire considérablement. RandomDay ne calcule pas de valeurs arbitraires au démarrage ; il applique l'ensemble de valeurs révisé nommé par le profil actif.

<a id="current-version-evidence"></a>
## Preuve de la version actuelle

Ce tableau a été révisé le 20 juillet 2026. « Reconnu » signifie que l'adaptateur publié dispose d'un dispositif de disposition locale complet pour les paramètres nommés. Cela ne signifie pas que chaque version future aura la même forme de fichier.

| Mod facultatif | Version en amont actuelle examinée | RandomDay état de la version |
| --- | --- | --- |
| [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156) | Page Nexus `0.8.5` ; présentation du fichier principal actuel `0.8.5-Hotfix1` | Reconnu `DynamicSpawns/Scripts/SharedData.lua` pour l'ensemble complet des paramètres d'apparition, de temps de recharge, de portail, de brèche et de boss. |
| Champs d'extension facultatifs du Chaotic Spawn Engine | Pas de téléchargement séparé ; `SharedData.lua` | Appliqué uniquement lorsque chaque champ d'extension existe déjà. Les installations de Spawn Engine restent inchangées lorsque ces champs sont absents. L'ID de l'adaptateur interne est `encounter_director` ; il ne nomme pas de mod public distinct. |
| [Lasers mortels](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Reconnu `LethalLasers/Scripts/main.lua` disposition pour tous les paramètres d'émetteur, d'émetteur d'environnement, de réflecteur et de prisme répertoriés ci-dessus. |
| [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, mis à jour le 19 juillet 2026 | L'adaptateur publié reconnaît l'ensemble de champs `Settings.lua` ensemble de champs. La version 1 n'est pas déclarée compatible jusqu'à ce que son fichier actuel soit ajouté à l'appareil et réussisse les tests de transaction de l'adaptateur. Si sa disposition diffère, RandomDay rapporte `skipped_incompatible` et le laisse inchangé. |

<a id="how-recognition-protects-another-mod"></a>
## Comment la reconnaissance protège un autre mod

Trouver un nom de fichier familier ne suffit pas. Avant d'écrire, RandomDay vérifie que tous les paramètres requis pour cet adaptateur existent dans le fichier cible. Il corrige uniquement les affectations existantes ; il n'invente jamais un paramètre manquant.

Pour une mise en page reconnue, RandomDay effectue une transaction limitée :

1. calcule chaque valeur prévue pour le profil actif ;
2. crée et vérifie les octets d'une sauvegarde de chaque fichier cible ;
3. écrit dans un fichier en attente frère ;
4. promouvez le fichier en attente et relisez les octets enregistrés ;
5. confirmez chaque valeur prévue ;
6. utilisez la restauration automatique à partir des sauvegardes vérifiées si une étape échoue.

DynamicSpawns peut inclure ses paramètres et les fichiers de messages du lecteur reconnus en une seule transaction. RandomDay ne signale pas cette mise à jour multi-fichiers comme réussie à moins que la transaction complète ne soit terminée.

<a id="read-an-adapter-result"></a>
## Lire le résultat d'un adaptateur

| Résultat | Signification |
| --- | --- |
| `applied` | Les paramètres reconnus ont été modifiés et relus. |
| `already_current` | Les paramètres reconnus correspondaient déjà au profil actif. |
| `not_installed` | Le mod facultatif n'a pas été trouvé. RandomDay a continué sans cela. |
| `skipped_incompatible` | Un fichier a été trouvé, mais sa disposition complète des paramètres n'a pas été reconnue. Rien n'a été modifié. |
| `partial` | Les paramètres principaux DynamicSpawns ont été appliqués, mais un fichier de message traduit facultatif n'a pas été terminé. Vérifiez le résultat de l'adaptateur enregistré. |
| `failed_rolled_back` | Une transaction a échoué et les octets précédents sont restés intacts ou ont été restaurés et vérifiés. |
| `rollback_failed` | RandomDay n'a pas pu vérifier la modification ou la restauration. Gardez le mod concerné arrêté et restaurez sa sauvegarde enregistrée manuellement. |

Les mods facultatifs manquants et incompatibles n'arrêtent pas la rotation du bac à sable RandomDay's rotation du bac à sable dans la configuration fournie.

<a id="enable-or-disable-integrations"></a>
## Activer ou désactiver les intégrations

Les contrôles sont dans :

```text
RandomDay/Scripts/ax_config/server.lua
```

Le package de serveur dédié est livré avec :

```lua
external_mods = {
    enabled = true,
    optional_by_default = true,
    patch_only_existing_keys = true,
    backup_before_write = true,
    adapters = {
        "lethal_lasers",
        "dynamic_spawns",
        "encounter_director",
        "ante_up"
    }
}
```

- Définir `enabled = false` pour empêcher RandomDay d'inspecter ou de modifier chaque mod facultatif.
- Supprimez un ID d'adaptateur pour laisser ce mod tranquille tout en gardant les autres intégrations actives.
- Gardez `patch_only_existing_keys` et `backup_before_write` défini sur `true`. Ils constituent la limite de sécurité en écriture.
- Gardez `optional_by_default = true` à moins que chaque mod facultatif répertorié ne soit une partie obligatoire du serveur. En le définissant sur `false`, un adaptateur manquant, incompatible ou restauré en toute sécurité affectera le résultat global.

Vous n'avez pas besoin de désinstaller ou de modifier désactivez un mod facultatif lorsque vous désactivez son RandomDay adaptateur.

<a id="thanks-and-ownership"></a>
## Merci et propriété

Merci aux auteurs et responsables de [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156), [Lasers mortels](https://www.nexusmods.com/abioticfactor/mods/141) et [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201). Leurs mods restent des téléchargements distincts régis par leurs propres pages, autorisations et instructions d'assistance. Les adaptateurs RandomDay's utilisent uniquement les champs de configuration présents dans une mise en page installée et reconnue ; ils ne redistribuent ni ne remplacent ces mods.

<a id="backups-and-manual-recovery"></a>
## Sauvegardes et récupération manuelle

Les copies de pré-écriture vérifiées sont conservées sous :

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

Si `rollback_failed` apparaît :

1. arrêter le jeu ou le serveur ;
2. définir `external_mods.enabled = false`, ou supprimez l'ID de l'adaptateur concerné ;
3. conservez le fichier cible actuel et ses fichiers frères pending/rollback ;
4. faites correspondre les fichiers de sauvegarde numérotés aux chemins cibles enregistrés dans le résultat de l'adaptateur ;
5. restaurez les octets vérifiés pendant que le service est arrêté ;
6. démarrez le mod optionnel tout seul avant de le réactiver RandomDay adaptateur.

Ne forcez pas la compatibilité en renommant les paramètres ou en ajoutant des clés manquantes. Utilisez une mise en page reconnue, laissez l'adaptateur désactivé ou ajoutez une nouvelle version et un nouveau test de transaction avant d'étendre la demande de support.
