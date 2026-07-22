<a id="choose-the-kind-of-game-you-want"></a>
# Choisissez le type de jeu que vous voulez

> **Source canonique en anglais:** [CHOOSE_A_PROFILE.md](../../CHOOSE_A_PROFILE.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


RandomDay comprend 289 ensembles de règles mondiales prêts à l'emploi. Ils sont organisés en 17 **familles**, avec 17 **profils** dans chaque famille :

- une famille est un vaste style de jeu, comme la survie, la construction, la furtivité ou l'exploration ;
- un profil est un ensemble complet de règles au sein de ce style de jeu ; et
- le numéro de profil est appelé par jour car RandomDay passe par ces 17 positions au redémarrage du serveur. Il ne s'agit pas d'un jour calendaire réel.

Commencez par le tableau ci-dessous. Choisissez la ligne qui se rapproche le plus de la session souhaitée, puis ouvrez une ou deux pages familiales pour comparer leurs effets exacts.

<a id="start-with-a-playstyle"></a>
## Commencez par un style de jeu

| Vous souhaitez | Commencez par | Comparez ces effets |
|---|---|---|
| Combat direct fréquent ou plus net échanges de tirs | [Action](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_D_ACTION.md), [Horde](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_HORDE.md), [Chasse au boss](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_CHASSE_AU_BOSS.md) ou [Précision](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_PR%C3%89CISION.md) | Nombre d'ennemis, niveau de rencontre, précision, dégâts et jours de récupération |
| Détection, obscurité ou pression de patrouille | [Furtivité](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_FURTIFS.md), [Cauchemar](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_CAUCHEMAR.md) ou [Verrouillage de sécurité](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_VERROUILLAGE_DE_S%C3%89CURIT%C3%89.md) | Visibilité, vitesse de détection, biais nocturne, robots et intervalles de sécurité |
| Faim, conditions météorologiques, contamination ou attrition | [Survie](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_SURVIE.md), [altéré](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_ALT%C3%89R%C3%89S.md) ou [Risque biologique](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_RISQUE_BIOLOGIQUE.md) | Ressources, eau, radiations, conditions météorologiques, durabilité et peines de mort |
| Croissance de base, transport, inventaire ou planification de l'approvisionnement | [Builder](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_CONSTRUCTEUR.md) ou [Logistique](PROFILS/FAMILLES/PROFIL_LOGISTIQUE_FAMILLE.md) | Taille de la pile, inventaire, poids, durabilité, puissance et pression de construction |
| Voyage, portails, itinéraires de butin ou exploration | [Expédition](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_D_EXP%C3%89DITION.md), [Anteverse](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_ANTEVERSE.md) ou [Scavenger](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_CHAROGNARDS.md) | Mouvement, pression du portail, récompenses, risque d'itinéraire et temps passé hors de la base |
| Combinaisons imprévisibles ou grand défi final | [Expérimental](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_EXP%C3%89RIMENTAUX.md) ou [Test de conformité](PROFILS/FAMILLES/FAMILLE_DE_PROFILS_DE_TESTS_DE_CONFORMIT%C3%89.md) | Chaque jour dans ces progressions délibérément mixtes |

Ces suggestions sont une navigation et ne remplacent pas des valeurs exactes. Chaque page de famille répertorie les principaux effets, domaine évaluations, contexte de rencontre, les 46 paramètres du bac à sable et les sélections d'adaptateurs facultatives pour chaque jour.

<a id="confirm-the-exact-family-and-day"></a>
## Confirmez la famille et le jour exacts

1. Ouvrez la page de la famille et comparez les 17 positions quotidiennes.
2. Utilisez la [référence complète du profil](PROFILS/R%C3%89F%C3%89RENCE_COMPL%C3%88TE_DU_PROFIL.md) pour comparer les noms de profils et les règles d'interprétation dans les 289 combinaisons.
3. Utilisez [clés de configuration du bac à sable](PROFILS/CL%C3%89S_DES_PARAM%C3%88TRES_DU_BAC_%C3%80_SABLE.md) pour interpréter chaque valeur brute, plage prise en charge, bande de score et profil par défaut expédié.
4. Utilisez [`profiles.generated.json`](../../profiles/profiles.generated.json) lorsque l'outillage nécessite le profil, le dictionnaire et la source de traduction exacts lisibles par machine.

<a id="configure-the-chosen-experience"></a>
## Configurez l'expérience choisie

Suivez [Choisissez une expérience](CONFIGURATION.md#choose-an-experience) pour définissez le mode familial, la liste des familles éligibles, le comportement du jour de départ et l'ordre des jours séquentiels ou non répétitifs. RandomDay conserve l'ordre choisi ; la récupération ne relance pas silencieusement une exécution familiale en cours.
