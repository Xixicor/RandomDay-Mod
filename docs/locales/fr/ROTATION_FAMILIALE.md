<a id="seventeen-families-seventeen-days"></a>
# Dix-sept familles, Seventeen Days

> **Source canonique en anglais:** [FAMILY_ROTATION.md](../../FAMILY_ROTATION.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


RandomDay contient 17 familles de styles de jeu avec 17 profils quotidiens complets dans chaque famille. Cela produit 289 documentés family/day combinaisons documentées.

La famille définit le style général d'une exécution. Les jours 1 à 17 indiquent la progression de cette famille en termes de pression, de récupération, de rythme et de ressources. Une exécution stocke une commande contenant chaque identifiant quotidien exactement une fois. Un redémarrage avance à la position stockée suivante ; RandomDay ne change pas de famille au milieu de la commande.

<a id="selection-modes"></a>
## Modes de sélection

| Mode | Comportement lors d'une nouvelle exécution | Pendant l'exécution |
|---|---|---|
| `selected_run` | Utilise `profile_family.selected_family`. | Conserve cette famille dans les 17 positions stockées. |
| `non_repeating_random_run` | Choisit une famille inutilisée éligible. | Le conserve dans les 17 positions et évite les répétitions de famille jusqu'à ce que la liste éligible soit épuisée. |
| `rotation_run` | Prend la famille suivante dans l'ordre configuré. | Le conserve dans les 17 positions stockées. |

La configuration expédiée utilise `non_repeating_random_run`. La famille préparée après la position finale enregistrée n'est encore que préparée ; il devient actif après le redémarrage. `cycle.start_day_mode` et `cycle.day_progression_mode` choisissez le premier jour et l'ordre du jour sans modifier la sélection de la famille.

<a id="families"></a>
## Familles

- Action
- Survie
- Furtivité
- Horde
- Chasse au boss
- Scavenger
- Builder
- Expédition
- Verrouillage de sécurité
- Risque biologique
- Anteverse
- Cauchemar
- altéré
- Précision
- Logistique
- Expérimental
- Test de conformité

Utilisez la [index de profil généré](PROFILS/DOCUMENTATION_DU_PROFIL.md) pour ouvrir une famille ou sur [référence complète du profil](PROFILS/R%C3%89F%C3%89RENCE_COMPL%C3%88TE_DU_PROFIL.md) pour examiner les 289 combinaisons. La [référence de clé sandbox](PROFILS/CL%C3%89S_DES_PARAM%C3%88TRES_DU_BAC_%C3%80_SABLE.md) définit chaque valeur prise en charge et le profil par défaut livré.

<a id="custom-families-and-days"></a>
## Familles et jours personnalisés

La source familiale se trouve sous :

```text
RandomDay/Scripts/ax_profiles/families/
```

Le Markdown et JSON sous `docs/profiles/` sont des références générées. Changez la source, pas la sortie générée, puis exécutez la version complète profile/schemavalidation. Un ensemble personnalisé n’est pas prêt lorsqu’il n’est analysé qu’en un seul jour ; tous les 17 jours, les valeurs par défaut du profil configuré, les types, les plages et la référence générée doivent correspondre.
