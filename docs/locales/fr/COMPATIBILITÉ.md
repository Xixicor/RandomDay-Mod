<a id="compatibility"></a>
# Compatibilité

> **Source canonique en anglais:** [COMPATIBILITY.md](../../COMPATIBILITY.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


<a id="supported-installations"></a>
## Installations prises en charge

RandomDay est conçu pour les installations d'Abiotic Factor qui peuvent charger UE4SS des mods Lua.

| Environnement | Support | Package |
| --- | --- | --- |
| Serveur dédié Windows | Prise en charge | Serveur dédié ZIP |
| Solo Windows ou LAN hôte | Flux de travail de copie manuelle pris en charge | Singleplayer/LAN ZIP |
| Serveur Linux utilisant Wine ou Proton | Non testé en version | Le package dédié Windows peut être évalué par des opérateurs expérimentés, mais aucune promesse de compatibilité n'est faite. |
| Xbox et PlayStation | Non pris en charge | Ces plates-formes ne fournissent pas l'accès aux fichiers et UE4SS le chemin de chargement Lua requis par cette version. |

RandomDay ne combine pas les deux packages. Un serveur dédié qui n'est démarré que pour une lecture occasionnelle utilise toujours l'état du serveur dédié ZIP et sélectionne un comportement temporaire dans la configuration.

<a id="abiotic-factor-updates"></a>
## Mises à jour d'Abiotic Factor

Après une mise à jour du jeu, démarrez avec le serveur arrêté et conservez une copie restaurable du monde, `SandboxSettings.ini` et RandomDay. Confirmez le chargement du UE4SS, puis effectuez un RandomDay cycle et vérifiez à la fois le profil actif et le profil préparé avant de reprendre la rotation normale.

<a id="companion-mods"></a>
## Mods compagnons

RandomDay modifie un mod installé séparément uniquement lorsque sa disposition complète des paramètres correspond à un adaptateur pris en charge. Un numéro de version seul ne suffit pas.

| Intégration | Version actuelle révisée | RandomDay limite de prise en charge |
| --- | --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | `0.8.5` ; fichier principal `0.8.5-Hotfix1` | La disposition `SharedData.lua` la disposition couvre l'apparition, le temps de recharge, la population, le portail, la brèche, le boss et RandomDay les paramètres de rencontre répertoriés dans la référence de l'adaptateur. |
| Lasers mortels | `1.0-UE4SS` | La disposition `Scripts/main.lua` la disposition couvre les paramètres d'émetteur, d'émetteur environnemental, de réflecteur et de prisme reconnus. |
| ANTE Up | `1`, mis à jour le 19 juillet 2026 | La mise en page publique actuelle n'a pas terminé le montage de l'adaptateur. RandomDay ignore un fichier sans correspondance jusqu'à ce que cette présentation soit vérifiée. |

Un mod compagnon absent, désactivé ou non reconnu reste inchangé. Voir [Mods facultatifs pris en charge](ADAPTATEURS_PRIS_EN_CHARGE.md) pour les paramètres exacts, les contrôles de configuration, le comportement de sauvegarde et les étapes de récupération.

<a id="what-compatibility-validation-proves"></a>
## Ce que prouve la validation de compatibilité

La validation du référentiel peut prouver la présentation du package expédié, la couverture de configuration, les champs d'adaptateur reconnus, le comportement de sauvegarde et de restauration et le rejet en toute sécurité d'une présentation inconnue. Il ne peut pas prouver chaque future version d'Abiotic Factor, UE4SS ou de module compagnon. Les notes de version nomment les versions testées plutôt que de supposer la compatibilité à partir d'un chargement réussi.
