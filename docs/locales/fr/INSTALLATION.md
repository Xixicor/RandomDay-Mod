<a id="install-update-or-remove-randomday"></a>
# Installer, mettre à jour ou supprimer RandomDay

> **Source canonique en anglais:** [INSTALL.md](../../../INSTALL.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


RandomDay comporte deux téléchargements complets. Choisissez-en un pour le monde que vous configurez :

- utilisez le **serveur dédié ZIP** pour tout serveur dédié, y compris un serveur ouvert uniquement pour des sessions occasionnelles ;
- utilisez le **singleplayer/LAN ZIP** pour un monde local dont vous copierez les paramètres manuellement.

Ne combinez pas les packages. Un serveur dédié persistant ou temporaire est un choix dans les paramètres de RandomDay's paramètres, pas un téléchargement différent.

<a id="before-you-begin"></a>
## Avant de commencer

Créez une copie restaurable de :

- le monde que vous changez ;
- son actuel `SandboxSettings.ini`;
- l'existant `RandomDay`, s'il est installé.

Installez UE4SS avant RandomDay. Dans les instructions ci-dessous, le **Dossier Mods** désigne la `ue4ss/Mods/` dans le jeu ou dans l'installation du serveur dédié.

<a id="dedicated-server"></a>
## Serveur dédié

<a id="new-installation"></a>
### Nouvelle installation

1. Arrêtez le serveur.
2. Ouvrir son UE4SS `Mods`.
3. Extraire le serveur dédié ZIP. Le résultat devrait être qu'un `ue4ss/Mods/RandomDay/` dossier, pas un dossier dans un autre `RandomDay`.
4. Ouvrez ce dossier et confirmez `RandomDay/Scripts/main.lua` soit présent. S'il est manquant, le ZIP a été extrait au mauvais niveau.
5. Ouvrez UE4SS `mods.txt` et activez cette ligne :

   ```text
   RandomDay : 1
   ```

6. Démarrez le serveur normalement.
7. Ouvrez RandomDay's page d'état lisible et confirmez qu'il nomme à la fois le profil actif et le profil préparé pour le prochain démarrage.

Le premier démarrage ne remplace pas les règles déjà chargées par cette session. Il prépare le profil suivant. Redémarrez le serveur uniquement lorsque vous souhaitez réellement que ce profil préparé devienne actif.

[Vérifiez le premier cycle](COMMENCEZ_ICI.md)

<a id="choose-always-on-or-temporary-behavior"></a>
### Choisissez un comportement permanent ou temporaire

Le package de serveur dédié prend en charge les deux styles :

- **persistant dédié** reprend la rotation enregistrée lors des redémarrages normaux ;
- **temporaire dédié** peut commencer à partir du point de départ configuré ou aléatoire lorsqu'une nouvelle exécution temporaire commence.

Choisissez le comportement dans [Configuration](CONFIGURATION.md). N'installez pas un deuxième package pour modifier ce paramètre.

<a id="update-an-existing-installation"></a>
### Mettez à jour une installation existante

1. Arrêtez le serveur et effectuez le sauvegardes répertoriées ci-dessus.
2. Déplacez l'ancien dossier `RandomDay` dossier hors du UE4SS `Mods`. Conservez-le jusqu'à ce que la mise à jour ait terminé un cycle réussi.
3. Extraire le nouveau serveur dédié ZIP dans le `Mods`.
4. Réappliquez uniquement les paramètres que vous avez intentionnellement modifiés et qui existent toujours dans le nouvel [guide de configuration](CONFIGURATION.md).
5. Conservez les fichiers d'état de rotation documentés uniquement lorsque les notes de version indiquent que leur format est compatible. Ne copiez pas les anciennes sorties temporaires ou les fichiers ayant échoué en écriture dans la nouvelle installation.
6. Confirmer `RandomDay : 1` est toujours activé, puis démarrez le serveur une fois et vérifiez les noms de profils actifs et préparés.

<a id="updating-from-v0315-alpha"></a>
### La mise à jour à partir de v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip` était l'ancien package de base. `RandomDay_v0.3.15-alpha_singleplayer_patch.zip` était une superposition et n'était pas un téléchargement autonome.

Actuel `v0.3.16-alpha` remplace l'arrangement historique de base et de superposition par deux packages complets. Ne placez pas l'ancien patch sur l'un ou l'autre des packages. Les marqueurs actuels sont `.randomday_mode=dedicated_server` et `.randomday_mode=singleplayer_manual`.

<a id="singleplayer-or-lan"></a>
## Solo ou LAN

Le package singleplayer/LAN crée un fichier de paramètres ; il ne recherche ni ne modifie une sauvegarde personnelle par lui-même.

1. Fermez le jeu.
2. Sauvegardez le monde et son `SandboxSettings.ini`.
3. Extractez le singleplayer/LAN ZIP dans le UE4SS `Mods` pour en faire un `Mods/RandomDay/` existe.
4. Activez `RandomDay : 1` dans UE4SS `mods.txt`.
5. Démarrez le jeu une fois, attendez la fin du RandomDay et fermez complètement le jeu.
6. Trouvez le `SandboxSettings.ini` dans RandomDay's `runtime/singleplayer_manual/`.
7. Lisez le résumé généré, puis copiez le fichier dans le monde que vous avez choisi.
8. Démarrez ce monde et vérifiez que le comportement attendu du bac à sable est actif.

LAN utilise le même processus manuel car l'hôte possède le monde local. Le mod ne choisit pas de monde et n'en écrase pas un automatiquement.

[Le mode solo et LAN état du guide](LAN_SOLO.md)

<a id="remove-or-disable-randomday"></a>
## Supprimer ou désactiver RandomDay

1. Arrêtez le jeu ou le serveur.
2. Sauvegarder le monde, ses paramètres actuels de sandbox et RandomDay's.
3. Définir `RandomDay : 0` dans UE4SS `mods.txt` pour désactiver le mod, ou déplacer le complet `RandomDay` dossier hors du `Mods` dossier pour le supprimer.
4. Décidez lequel `SandboxSettings.ini` doit être chargé au prochain démarrage. Restaurez votre copie de pré-installation si vous ne souhaitez pas le profil RandomDay actuellement préparé.
5. Démarrez le monde et confirmez ses règles avant de supprimer toute sauvegarde.

La désactivation RandomDay arrête la préparation future du profil. Elle ne réécrit pas le fichier sandbox déjà en attente sur le disque.

<a id="recover-from-an-unsuccessful-update"></a>
## Récupérer après une mise à jour infructueuse

Arrêtez après le premier échec d'effacement. Des redémarrages répétés peuvent rendre plus difficile la détermination du profil actif et de celui en attente.

1. Arrêtez le jeu ou le serveur.
2. Mettez de côté l'installation ayant échoué sans la supprimer.
3. Restaurez l'intégralité. RandomDay sauvegarde du dossier et du bac à sable effectuée avant la mise à jour.
4. Démarrez une fois et confirmez les noms de profils actifs et préparés restaurés.
5. Utilisez [Dépannage](D%C3%89PANNAGE.md) pour la première étape manquante ou échouée avant d'essayer une autre mise à jour.

<a id="more-help"></a>
## Plus d'aide

- [Premier cycle](COMMENCEZ_ICI.md)
- [Choisissez un profil](CHOISISSEZ_UN_PROFIL.md)
- [Configuration](CONFIGURATION.md)
- [Opérations et récupération](OP%C3%89RATIONS.md)
- [Dépannage](D%C3%89PANNAGE.md)
- [Compatibilité](COMPATIBILIT%C3%89.md)

Les responsables de la version peuvent trouver des vérifications de build et de package dans [Validation de la version](VALIDATION_DE_LA_VERSION.md). Ils ne sont pas requis pour une installation normale.
