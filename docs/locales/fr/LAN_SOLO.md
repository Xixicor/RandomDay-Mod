<a id="singleplayer-and-lan-manual-workflow"></a>
# Le mode solo et LAN workflow manuel

> **Source canonique en anglais:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


RandomDay's singleplayer/LAN de RandomDay génère un `SandboxSettings.ini` complet dans le dossier mod. Vous choisissez le monde et copiez le fichier manuellement pendant que le jeu est fermé.

Le package est verrouillé sur cette sortie :

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Il désactive les écritures sandbox sur serveur dédié, les miroirs sandbox et toutes les écritures d'adaptateur facultatives. Il ne recherche pas AppData, les données utilisateur Steam, les documents, les dossiers de sauvegarde, les dossiers de serveur ou les dossiers de modules tiers.

<a id="understand-the-manual-boundary"></a>
## Comprendre les limites manuelles

Avant de commencer, configurez l'expérience dans `RandomDay/Scripts/ax_config/server.lua`. Le package manuel accepte `experience.mode="auto"` ou `"singleplayer_lan"`. Vous pouvez choisir un premier jour fixe ou aléatoire et un ordre séquentiel ou aléatoire de 17 jours. La sélection de famille utilise les mêmes paramètres de famille sélectionnés, de rotation ou aléatoires non répétitifs qu'un serveur dédié.

La sortie générée contient le marqueur RandomDay lu lors du processus suivant. Pour garder l'état aligné, copiez le fichier généré dans le monde arrêté choisi avant de démarrer un autre processus de génération. Démarrer à plusieurs reprises sans copier peut faire avancer la file d'attente du mod-local même si le monde n'a jamais chargé la sortie précédente.

Suivez la procédure canonique [solo ou LAN d'installation](INSTALLATION.md#singleplayer-or-lan) pour la sauvegarde, le placement de package, l'activation, la génération, le manuel copie et vérification. Cette page explique la limite manuelle ; il ne définit pas une autre méthode d'installation.

La première génération prépare un profil ; il ne peut pas modifier les règles déjà chargées par ce processus de jeu. Fermez, copiez et recommencez pour l'utiliser. Répétez le cycle uniquement lorsque vous souhaitez délibérément conserver le jour suivant.

La suppression RandomDay ne restaure pas un fichier mondial que vous avez copié manuellement ; utilisez votre propre sauvegarde pour cette restauration. Suivez [Supprimer ou restaurer toute installation](INSTALLATION.md#remove-or-disable-randomday) pour connaître la procédure de suppression exacte.
