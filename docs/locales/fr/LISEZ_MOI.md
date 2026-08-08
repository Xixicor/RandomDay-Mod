# RandomDay en français

> [!IMPORTANT]
> ## État du projet — essais de RandomDay terminés
>
> L’opération d’essai de RandomDay est terminée et le serveur d’essai public fermera bientôt.
>
> Pendant cette opération, RandomDay et RandomDayGuard ont fonctionné ensemble au fil de rotations répétées de profils, de redémarrages normaux et interrompus du serveur, de vérifications de récupération et de retour arrière, de l’intégration de mods étendus, de la collecte de preuves serveur et de l’examen des rapports d’exploitation.
>
> Nous avons ainsi obtenu les connaissances recherchées : le comportement des profils sandbox rotatifs sur de véritables cycles de vie de serveur dédié, l’interaction de RandomDay avec les mods étendus pris en charge et la mesure dans laquelle RandomDayGuard peut transformer les preuves écrites par le serveur en une surveillance utile et prudente, sans présenter des lacunes ou des suppositions comme des faits.
>
> **Pile utilisée sur le serveur d’essai:**
>
> - RandomDay version de développement privée `v0.41.76`
> - RandomDayGuard version de développement privée `v0.46.130`
> - Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
> - Lethal Lasers `1.0 UE4SS`
> - ANTE Up `0.26`
> - Encounter Director integration — une extension DynamicSpawns appartenant à RandomDay, et non un mod distribué séparément
> - UE4SS `v3.0.1 Beta #0` (Git `01e0a584`; Nexus `v3.0.1-940-g01e0a584`)
> - serveur dédié Abiotic Factor `1.4.0.27939`
>
> Les paquets actuellement publiés restent RandomDay `v0.3.16-alpha` et RandomDayGuard `v0.4.12-alpha`.
>
> Le développement des deux projets est désormais en pause. Les versions et la documentation existantes resteront disponibles, et nous pourrons revenir lorsque nous ressentirons de nouveau l’envie de poursuivre le travail.
>
> Cette pile décrit ce qui a été utilisé pendant l’opération ; elle ne constitue ni une exigence de version minimale ni une garantie de compatibilité avec des versions ultérieures du jeu, du chargeur ou des mods. Le dernier cycle officiellement consigné utilisait Abiotic Factor `1.4.0.27939`.

**v0.3.16-alpha**

RandomDay prépare un `SandboxSettings.ini` complet pour le prochain démarrage
d’Abiotic Factor. Il ne modifie jamais les règles déjà chargées par la session.
Le profil actif et le profil préparé restent distincts.

## Installer et vérifier

Suivez le [guide d’installation](INSTALLATION.md). Le dossier correct est
`ue4ss/Mods/RandomDay` et `mods.txt` doit contenir `RandomDay : 1`. Le premier
démarrage prépare généralement un profil; un démarrage ultérieur l’active.

Vérifiez `runtime/current/randomday_status.json`, `runtime/rotation_state.txt`
et `web_export/today.json`. Les identités active et préparée doivent être
cohérentes dans les trois fichiers.

## Choisir l’expérience

Réglez le mode, la famille, le jour initial et la progression dans
`RandomDay/Scripts/ax_config/server.lua`. Consultez [Démarrage](COMMENCEZ_ICI.md),
[Choisir un profil](CHOISISSEZ_UN_PROFIL.md), [Configuration](CONFIGURATION.md)
et [Opérations](OP%C3%89RATIONS.md).

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` et
`BridgeSupports=0` sont les valeurs par défaut de cette version, pas des règles
fixes du jeu. La [configuration avancée](CONFIGURATION.md#customize-the-shipped-profile-defaults)
explique comment les modifier durablement.

Les commandes, chemins, clés et états restent en anglais pour correspondre aux fichiers.

## Version alpha et choix persistants

Il s'agit d'une version alpha. Les procédures documentées d'installation, de rotation et de récupération ont été testées; la compatibilité et l'ergonomie continuent d'être améliorées.

Dans `RandomDay/Scripts/ax_config/server.lua`, `sandbox.profile_overrides` conserve les quatre valeurs pour chaque famille et chaque jour. Arrêtez le serveur, modifiez-les une fois, puis redémarrez. Les rotations et démarrages suivants utilisent les mêmes valeurs; modifier seulement `SandboxSettings.ini` est temporaire.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Les mods facultatifs ci-dessous sont des téléchargements séparés fournis par leurs auteurs. RandomDay ne les redistribue pas et ne modifie pas leurs fonctions; un adaptateur activé ne règle que les paramètres existants et pris en charge. Merci à leurs auteurs et mainteneurs.

## Bibliothèque de documentation complète

Chaque document public Markdown est disponible dans cette langue avec des noms de fichiers localisés.

- [Ouvrir l'index de la documentation localisée](DOCUMENTATION.md)
