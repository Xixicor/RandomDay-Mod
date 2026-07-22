<a id="release-validation"></a>
# Validation de la version

> **Source canonique en anglais:** [RELEASE_VALIDATION.md](../../RELEASE_VALIDATION.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Cette page est destinée aux contributeurs et aux responsables de la version. Les joueurs installant le mod n'ont pas besoin d'exécuter ces commandes.

<a id="ordinary-user-proof"></a>
## Preuve utilisateur ordinaire

Une version est compréhensible lorsqu'un nouveau lecteur peut choisir l'un des deux packages, l'installer, identifier le profil actif et le profil préparé, et récupérer d'un résultat manquant en suivant le guide lié. Ces tâches de lecture ne doivent pas nécessiter Git, PowerShell, Python ou connaissance de la somme de contrôle.

<a id="contributor-checks"></a>
## Vérifications des contributeurs

Exécuter à partir de la racine du référentiel :

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

Lorsque `luac` est disponible, vérifiez la syntaxe de chaque fichier Lua expédié :

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

Les tests d'exécution Lua nécessitent `lupa`. Un interpréteur Lua manquant ou une installation `lupa` est une capacité de test indisponible, et non un résultat réussi.

<a id="release-checks"></a>
## Vérifications de version

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

La vérification de version vérifie ces conditions :

- `VERSION` et `RandomDay/.randomday_version` correspondance.
- Seule la version actuelle existe sous `releases/`.
- Les ZIP dédiés et singleplayer/LAN sont des alternatives complètes.
- Les deux archives contiennent le chemin canonique `RandomDay/Scripts/main.lua` et aucun chargeur de collision de casse.
- Les marqueurs de mode package sont `dedicated_server` et `singleplayer_manual`.
- ZIP les octets sont déterministes et correspondent `CHECKSUMS.sha256`.
- Aucune donnée d'exécution, configuration privée, identifiants, caches ou sortie de test n'est emballée.
- Tous les liens de documentation locale et 27 pages d'entrée de paramètres régionaux sont validés.

<a id="avoid-validation-environment-pitfalls"></a>
## Évitez les pièges de l'environnement de validation

- Exécutez des vérifications d'écriture de référentiel en série afin que deux processus ne remplacent pas le même fichier temporaire en même temps.
- Sous Windows, cochez ZIP noms de membres plutôt que d'utiliser une recherche de fichier insensible à la casse pour décider si un chargeur en minuscules existe.
- Confirmer `mods.txt` et `enabled.txt` uniquement dans un test de serveur installé ; ils ne constituent pas une preuve que les tests source ont été exécutés.
- Enregistrez un délai d'expiration de commande comme incomplet. Ne le convertissez pas pour réussir ou échouer sans la sortie limitée de la commande.
- Conservez les fichiers temporaires dans les `.tmp/` le répertoire.

<a id="known-limits"></a>
## limites connues du référentiel ignorées

La validation locale prouve les contrats de source, de package, de documentation et de luminaire. Cela ne prouve pas l'ordre de démarrage d'un panneau de serveur particulier, la disposition des messages d'un client actif ou le chemin du système de fichiers spécifique à l'hôte. Enregistrez-les en tant que résultats d'intégration distincts lorsqu'ils sont testés.
