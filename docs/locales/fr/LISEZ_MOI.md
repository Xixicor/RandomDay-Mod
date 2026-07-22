# RandomDay en français

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
