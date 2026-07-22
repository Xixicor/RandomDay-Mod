<a id="randomday-profile-documentation"></a>
# RandomDay documentation du profil

> **Source canonique en anglais:** [README.md](../../../profiles/README.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Version : `v0.3.16-alpha`

- Familles : **17**
- Profils : **289**
- SandboxSettings entrées du dictionnaire : **46**

Choisissez une famille en fonction de l'intention de jeu dans le [guide de choix de profil](../CHOISISSEZ_UN_PROFIL.md), puis utilisez cet index généré pour les valeurs exactes.

Ces fichiers sont générés à partir de la source d'exécution Lua et de son dictionary/translation contrat. Ils affichent les valeurs par défaut `sandbox.profile_overrides` livrées ; les valeurs configurées d'un serveur peuvent différer :

- `profiles.generated.json` : profils lisibles par machine, valeurs brutes, dictionnaire et traductions.
- `FULL_PROFILE_REFERENCE.md` : règles complètes d'indexation et d'interprétation.
- `SANDBOX_SETTINGS_KEYS.md` : dictionnaire complet de 46 clés.
- `families/*.md` : références familiales détaillées sur 17 jours.

Régénérer avec : `python -B tools/generate_profile_docs.py` Vérifiez la dérive avec : `python -B tools/generate_profile_docs.py --check`
