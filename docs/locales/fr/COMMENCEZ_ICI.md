<a id="start-here-complete-the-first-randomday-cycle"></a>
# Commencez ici : complétez le premier RandomDay cycle

> **Source canonique en anglais:** [START_HERE.md](../../START_HERE.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Ce guide démarre après l'installation de RandomDay. Il montre ce que le mod change, ce qu'il laisse tranquille et comment reconnaître un cycle réussi.

<a id="know-the-two-states"></a>
## Connaître les deux états

Abiotic Factor lit les paramètres du bac à sable du monde avant RandomDay de démarrer. RandomDay conserve donc deux états clairement nommés :

- **Profil actif :** les règles que la session en cours utilise déjà.
- **Profil préparé :** les règles enregistrées pour le prochain démarrage.

Le profil préparé ne modifie pas une session déjà en cours.

<a id="dedicated-server-prepare-the-next-profile"></a>
## Serveur dédié : préparez le profil suivant

1. Démarrez le serveur normalement.
2. Attendez que RandomDay termine son travail de démarrage.
3. Ouvrez `RandomDay/web_export/today.html` dans le dossier du mod installé.
4. Rechercher **Profil actif** et **Profil préparé**.

Au premier démarrage réussi, la page doit nommer les règles déjà actives et un profil différent en attente du suivant. commencer. La page explique également la famille choisie, la position et si le fichier préparé a réussi son contrôle de sécurité.

Ne redémarrez pas simplement pour modifier l'état. Continuez à jouer avec les règles actives jusqu'au prochain démarrage du serveur prévu.

<a id="dedicated-server-activate-it-later"></a>
## Serveur dédié : activez-le plus tard

1. Arrêtez et démarrez le serveur au prochain redémarrage prévu.
2. Ouvrez à nouveau la page d'état lisible.
3. Confirmez que le profil précédemment préparé est maintenant répertorié comme actif.
4. Confirmez que RandomDay a préparé le profil suivant.

Cette transition de préparation puis d'activation est une transition complète. RandomDay cycle.

<a id="temporary-dedicated-servers"></a>
## Serveurs dédiés temporaires

Le comportement temporaire utilise le même package de serveur dédié. Dans [Configuration](CONFIGURATION.md), choisissez si une nouvelle exécution commence sur un profil spécifique ou choisit un point de départ aléatoire. La page d'état sépare toujours le profil actif de celui préparé pour le prochain démarrage.

<a id="singleplayer-or-lan"></a>
## Solo ou LAN

1. Démarrez le jeu une fois avec le singleplayer/LAN package installé.
2. Fermez complètement le jeu une fois RandomDay terminé.
3. Lisez le résumé généré.
4. Copier le généré `SandboxSettings.ini` dans le monde que vous avez sélectionné pendant la fermeture du jeu.
5. Démarrez ce monde et confirmez les règles attendues.

Le package local ne choisit jamais de monde ni ne copie le fichier dans une sauvegarde par lui-même. Voir [Le mode solo et LAN](LAN_SOLO.md) pour la procédure complète.

<a id="if-the-expected-result-is-missing"></a>
## Si le résultat attendu est manquant

Ne continuez pas à redémarrer. Conservez les fichiers actuels et choisissez le symptôme correspondant dans [Dépannage](D%C3%89PANNAGE.md). Le résultat normal nomme toujours un profil actif et soit un profil préparé, soit un échec clair de préparation.

<a id="continue"></a>
## Continuer

- [Choisissez un style de jeu](CHOISISSEZ_UN_PROFIL.md)
- [Choisissez le comportement de départ et de progression](CONFIGURATION.md)
- [Utilisez et récupérez RandomDay](OP%C3%89RATIONS.md)
- [Comprenez la rotation](ROTATION_FAMILIALE.md)
