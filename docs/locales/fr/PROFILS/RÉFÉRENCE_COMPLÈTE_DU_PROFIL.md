<a id="randomday---full-profile-reference"></a>
# RandomDay - Référence complète du profil

> **Source canonique en anglais:** [FULL_PROFILE_REFERENCE.md](../../../profiles/FULL_PROFILE_REFERENCE.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Version : `v0.3.16-alpha`

Cette référence générée couvre les 289 profils répartis en 17 familles. Il est généré à partir des mêmes tables de profil Lua et du même dictionnaire de traduction que ceux utilisés lors de l'exécution ; les valeurs brutes font autorité.

<a id="read-the-reference"></a>
## Lire la référence

- Les notes globales et de domaine sont calculées à partir des 46 SandboxSettings clés plus la pression de rencontre.
- Le texte en langage clair est consultatif. Les valeurs exactes sont conservées à côté de chaque explication.
- Les paramètres actifs s'appliquent au démarrage en cours. Les paramètres préparés ne s'appliquent qu'après le prochain redémarrage.
- Les sélections d'adaptateur facultatives sont des requêtes ; L'état d'exécution enregistre si un adaptateur installé correspond réellement et est vérifié.

<a id="families"></a>
## Familles

- [Action](FAMILLES/FAMILLE_DE_PROFILS_D_ACTION.md) : Plus de tirs, plus de combats visibles, moins de furtivité.
- [Survie](FAMILLES/FAMILLE_DE_PROFILS_DE_SURVIE.md) : moins d'ennemis, des menaces plus fortes, des récompenses plus élevées et moins de pardon.
- [Furtivité](FAMILLES/FAMILLE_DE_PROFILS_FURTIFS.md) : éviter la détection. L'établissement écoute plus fort que d'habitude.
- [Horde](FAMILLES/FAMILLE_DE_PROFILS_DE_HORDE.md) : Problème de quantité. L'installation a commandé trop d'ennemis.
- [Chasse au boss](FAMILLES/FAMILLE_DE_PROFILS_DE_CHASSE_AU_BOSS.md) : rencontres graves rares avec des récompenses de niveau trophée et des erreurs de niveau trophée.
- [Scavenger](FAMILLES/FAMILLE_DE_PROFILS_DE_CHAROGNARDS.md) : les itinéraires de butin sont rentables, encombrés et moralement non surveillés.
- [Builder](FAMILLES/FAMILLE_DE_PROFILS_DE_CONSTRUCTEUR.md) : expansion de la base et logistique avec des objections structurelles occasionnelles.
- [Expédition](FAMILLES/FAMILLE_DE_PROFILS_D_EXP%C3%89DITION.md) : course axée sur les voyages. Les itinéraires comptent ; s'attarder est déconseillé.
- [Verrouillage de sécurité](FAMILLES/FAMILLE_DE_PROFILS_DE_VERROUILLAGE_DE_S%C3%89CURIT%C3%89.md) : Ordre, robots, patrouilles, détection et trop de procédures.
- [Risque biologique](FAMILLES/FAMILLE_DE_PROFILS_DE_RISQUE_BIOLOGIQUE.md) : Ravageurs, contamination, problèmes d'eau et hygiène légalement vague.
- [Anteverse](FAMILLES/FAMILLE_DE_PROFILS_ANTEVERSE.md) : Pression du portail, variantes et effets secondaires dimensionnels.
- [Cauchemar](FAMILLES/FAMILLE_DE_PROFILS_DE_CAUCHEMAR.md) : Ténèbres, effroi, menaces graves rares et calme. erreurs.
- [altéré](FAMILLES/FAMILLE_DE_PROFILS_ALT%C3%89R%C3%89S.md) : Survie environnementale : météo, radiations, énergie, faim, soif.
- [Précision](FAMILLES/FAMILLE_DE_PROFILS_DE_PR%C3%89CISION.md) : Moins d'ennemis, visée plus précise, punition plus élevée en cas d'exposition.
- [Logistique](FAMILLES/PROFIL_LOGISTIQUE_FAMILLE.md) : Transport, inventaire, durabilité, poids, approvisionnement, économie de préparation.
- [Expérimental](FAMILLES/FAMILLE_DE_PROFILS_EXP%C3%89RIMENTAUX.md) : Combinaisons étranges, tables instables, étranges résistances.
- [Test de conformité](FAMILLES/FAMILLE_DE_PROFILS_DE_TESTS_DE_CONFORMIT%C3%89.md) : Un examen final de 17 jours sur les pires idées de l'établissement.

<a id="profile-index"></a>
## Indice de profil

| Famille | Jour | Profil | Conditions |
|---|---:|---|---|
| Action | 1 | Orientation du tir réel | Pression standard (1.85/5) |
| Action | 2 | Escarmouche à étage ouvert | Conditions favorables (1.29/5) |
| Action | 3 | Exercice de lutte antiparasitaire | Pression standard (2.14/5) |
| Action | 4 | Fight Firefight | Conditions favorables (1.47/5) |
| Action | 5 | Contact de sécurité | Pression standard (2.03/5) |
| Action | 6 | Engagement contre les intempéries | Pression standard (2.02/5) |
| Action | 7 | Raid nocturne | Pression standard (2.03/5) |
| Action | 8 | Itinéraire Coureur | Pression standard (1.81/5) |
| Action | 9 | Ration Riot | Pression standard (2.17/5) |
| Action | 10 | Récupération d'escorte | Conditions favorables (1.05/5) |
| Action | 11 | Cibles d'entraînement | Conditions favorables (1.46/5) |
| Action | 12 | Black Lab Assault | Pression standard (2.49/5) |
| Action | 13 | Extended Fireline | Pression standard (2.22/5) |
| Action | 14 | Supply Closet Miracle | Conditions favorables (1.02/5) |
| Action | 15 | Audit de précision en direct | Pression standard (1.97/5) |
| Action | 16 | Experimental Crossfire | Pression standard (2.09/5) |
| Action | 17 | Conformité Jeu de guerre | Conditions exigeantes (2.72/5) |
| Survie | 1 | Admission silencieuse | Pression standard (2.02/5) |
| Survie | 2 | Protocole de barricade | Conditions favorables (1.41/5) |
| Survie | 3 | Silence contaminé | Pression standard (2.35/5) |
| Survie | 4 | Dette du charognard | Conditions favorables (1.61/5) |
| Survie | 5 | Verrouillage de sécurité | Pression standard (2.26/5) |
| Survie | 6 | Avis en matière d'abri | Pression standard (2.2/5) |
| Survie | 7 | Éteignez les lumières | Pression standard (2.25/5) |
| Survie | 8 | Ne vous attardez pas | Pression standard (1.97/5) |
| Survie | 9 | Essai du garde-manger vide | Pression standard (2.4/5) |
| Survie | 10 | Récupération silencieuse | Conditions favorables (1.14/5) |
| Survie | 11 | Risque mesuré | Conditions favorables (1.62/5) |
| Survie | 12 | Examen des prédateurs | Conditions exigeantes (2.76/5) |
| Survie | 13 | Longue période de travail Survie | Pression standard (2.57/5) |
| Survie | 14 | Faux calme | Conditions favorables (1.29/5) |
| Survie | 15 | Vu premier mort en premier | Pression standard (2.28/5) |
| Survie | 16 | Conditions non approuvées | Pression standard (2.33/5) |
| Survie | 17 | Test d'évasion final | Conditions exigeantes (3.01/5) |
| Furtivité | 1 | Orientation chuchotée | Pression standard (2.03/5) |
| Furtivité | 2 | Silence autorisé | Conditions favorables (1.43/5) |
| Furtivité | 3 | Le sol vous a entendu | Pression standard (2.34/5) |
| Furtivité | 4 | Preuves empochées | Conditions favorables (1.63/5) |
| Furtivité | 5 | Balayage de sécurité silencieux | Pression standard (2.21/5) |
| Furtivité | 6 | Prévision : profil bas | Pression standard (2.2/5) |
| Furtivité | 7 | Dégagement des routes sombres | Pression standard (2.22/5) |
| Furtivité | 8 | Transport invisible | Pression standard (1.99/5) |
| Furtivité | 9 | Ration sans témoins | Pression standard (2.38/5) |
| Furtivité | 10 | Fenêtre de réparation silencieuse | Conditions favorables (1.19/5) |
| Furtivité | 11 | Exercice d'observation | Conditions favorables (1.61/5) |
| Furtivité | 12 | Angle mort du laboratoire noir | Conditions exigeantes (2.62/5) |
| Furtivité | 13 | Long changement de vitesse silencieux | Pression standard (2.55/5) |
| Furtivité | 14 | Faux hall vide | Conditions favorables (1.34/5) |
| Furtivité | 15 | Audit de détection | Pression standard (2.26/5) |
| Furtivité | 16 | Silence expérimental | Pression standard (2.21/5) |
| Furtivité | 17 | Non-apparition finale | Conditions exigeantes (2.83/5) |
| Horde | 1 | Erreur d'effectif | Pression standard (1.82/5) |
| Horde | 2 | Débordement d'étage ouvert | Conditions favorables (1.32/5) |
| Horde | 3 | Surréservation antiparasitaire | Pression standard (2.13/5) |
| Horde | 4 | Bousculade sur la ligne d'approvisionnement | Conditions favorables (1.46/5) |
| Horde | 5 | Contrôle des foules mal classé | Pression standard (2.02/5) |
| Horde | 6 | Météo des corps | Pression standard (1.99/5) |
| Horde | 7 | Présence des équipes de nuit | Pression standard (2.02/5) |
| Horde | 8 | Congestion des routes | Pression standard (1.8/5) |
| Horde | 9 | Émeute dans la file d'attente des rations | Pression standard (2.14/5) |
| Horde | 10 | Brief moins de monde | Conditions favorables (1.08/5) |
| Horde | 11 | Pic de population en formation | Conditions favorables (1.47/5) |
| Horde | 12 | Examen de la foule du Black Lab | Pression standard (2.42/5) |
| Horde | 13 | Formation de lignes étendues | Pression standard (2.23/5) |
| Horde | 14 | Approvisionnement File d'attente dans les placards | Conditions favorables (1.07/5) |
| Horde | 15 | Précision par volume | Pression standard (1.98/5) |
| Horde | 16 | Densité de foule expérimentale | Pression standard (2.1/5) |
| Horde | 17 | Problème de présence finale | Pression standard (2.58/5) |
| Chasse au boss | 1 | Orientation du trophée | Pression standard (1.98/5) |
| Chasse au boss | 2 | Construction d'appâts | Conditions favorables (1.45/5) |
| Chasse au boss | 3 | Avertissement pour petit gibier | Pression standard (2.28/5) |
| Chasse au boss | 4 | Sentier de récompense | Conditions favorables (1.62/5) |
| Chasse au boss | 5 | Problème de sommet autorisé | Pression standard (2.16/5) |
| Chasse au boss | 6 | Carrière altérée | Pression standard (2.13/5) |
| Chasse au boss | 7 | Mouvement du trophée nocturne | Pression standard (2.16/5) |
| Chasse au boss | 8 | Route cible rapide | Pression standard (1.93/5) |
| Chasse au boss | 9 | Coffret du trophée affamé | Pression standard (2.29/5) |
| Chasse au boss | 10 | Pause taxidermie | Conditions favorables (1.2/5) |
| Chasse au boss | 11 | Chasse d'entraînement | Conditions favorables (1.61/5) |
| Chasse au boss | 12 | Spécimen de laboratoire noir | Conditions exigeantes (2.62/5) |
| Chasse au boss | 13 | Longue période de chasse | Pression standard (2.39/5) |
| Chasse au boss | 14 | Journée d'appât tranquille | Conditions favorables (1.19/5) |
| Chasse au boss | 15 | Audit du trophée de précision | Pression standard (2.12/5) |
| Chasse au boss | 16 | Apex expérimental | Pression standard (2.24/5) |
| Chasse au boss | 17 | Tableau final du trophée | Conditions exigeantes (2.79/5) |
| Scavenger | 1 | Éthique des stocks lâches | Pression standard (1.79/5) |
| Scavenger | 2 | Acquisition en étage ouvert | Conditions favorables (1.28/5) |
| Scavenger | 3 | Collations douteuses | Pression standard (2.08/5) |
| Scavenger | 4 | Supply Run Dividende | Conditions favorables (1.47/5) |
| Scavenger | 5 | Contrôle des reçus de sécurité | Pression standard (1.98/5) |
| Scavenger | 6 | Vente d'itinéraires altérés | Pression standard (1.95/5) |
| Scavenger | 7 | Permis de marché de nuit | Pression standard (1.98/5) |
| Scavenger | 8 | Frais de dédouanement d'itinéraire | Pression standard (1.75/5) |
| Scavenger | 9 | Arbitrage des rations | Pression standard (2.07/5) |
| Scavenger | 10 | Fenêtre de profit tranquille | Conditions favorables (1.04/5) |
| Scavenger | 11 | Récupération d'entraînement | Conditions favorables (1.47/5) |
| Scavenger | 12 | Liquide du Black Lab | Pression standard (2.43/5) |
| Scavenger | 13 | Inventaire longue distance | Pression standard (2.14/5) |
| Scavenger | 14 | Jackpot du placard d'approvisionnement | Conditions favorables (1.02/5) |
| Scavenger | 15 | Taxe de précision | Pression standard (1.92/5) |
| Scavenger | 16 | Marquage expérimental | Pression standard (2.12/5) |
| Scavenger | 17 | Audit final des poches | Conditions exigeantes (2.68/5) |
| Builder | 1 | Orientation du zonage | Pression standard (1.71/5) |
| Builder | 2 | Autorisation d'étage ouvert | Conditions favorables (1.22/5) |
| Builder | 3 | Problème d'humidité des fondations | Pression standard (1.95/5) |
| Builder | 4 | Réquisition de matériel | Conditions favorables (1.39/5) |
| Builder | 5 | Permis d'inspection | Pression standard (1.87/5) |
| Builder | 6 | Avis de retard dû aux intempéries | Pression standard (1.84/5) |
| Builder | 7 | Écart de construction de nuit | Pression standard (1.86/5) |
| Builder | 8 | Route vers le matériel | Conditions favorables (1.66/5) |
| Builder | 9 | Béton rationné | Pression standard (1.93/5) |
| Builder | 10 | Fenêtre de construction de récupération | Conditions favorables (0.99/5) |
| Builder | 11 | Rail de sécurité Séminaire | Conditions favorables (1.39/5) |
| Builder | 12 | Code du bâtiment Black Lab | Pression standard (2.29/5) |
| Builder | 13 | Cadre de quart de travail étendu | Pression standard (1.99/5) |
| Builder | 14 | Placard d'approvisionnement approuvé | Conditions favorables (0.95/5) |
| Builder | 15 | Précision des mesures | Pression standard (1.82/5) |
| Builder | 16 | Plan d'étage expérimental | Pression standard (2.0/5) |
| Builder | 17 | Examen final de l'occupation | Pression standard (2.52/5) |
| Expédition | 1 | Briefing de départ | Pression standard (1.86/5) |
| Expédition | 2 | Erreur sur la liste de colisage | Conditions favorables (1.29/5) |
| Expédition | 3 | Kilométrage d'hydratation | Pression standard (2.19/5) |
| Expédition | 4 | Dividende du long trajet | Conditions favorables (1.47/5) |
| Expédition | 5 | Contact du point de contrôle | Pression standard (2.06/5) |
| Expédition | 6 | Itinéraire consultatif météo | Pression standard (2.03/5) |
| Expédition | 7 | Route de nuit Protocole | Pression standard (2.05/5) |
| Expédition | 8 | Route Runner Plus | Pression standard (1.82/5) |
| Expédition | 9 | Rations par distance | Pression standard (2.22/5) |
| Expédition | 10 | Réinitialisation du camp | Conditions favorables (1.05/5) |
| Expédition | 11 | Détour d'entraînement | Conditions favorables (1.47/5) |
| Expédition | 12 | Excursion sur le terrain du Black Lab | Pression standard (2.52/5) |
| Expédition | 13 | Changement de transit prolongé | Pression standard (2.29/5) |
| Expédition | 14 | Découverte du cache d'approvisionnement | Conditions favorables (1.03/5) |
| Expédition | 15 | Waypoint de précision | Pression standard (1.99/5) |
| Expédition | 16 | Détour expérimental | Pression standard (2.11/5) |
| Expédition | 17 | Examen final d'expédition | Conditions exigeantes (2.78/5) |
| Verrouillage de sécurité | 1 | Vérification des badges Orientation | Pression standard (2.02/5) |
| Verrouillage de sécurité | 2 | Classement des barricades | Conditions favorables (1.43/5) |
| Verrouillage de sécurité | 3 | Point de contrôle d'hydratation | Pression standard (2.33/5) |
| Verrouillage de sécurité | 4 | Route d'approvisionnement en contrebande | Conditions favorables (1.63/5) |
| Verrouillage de sécurité | 5 | Balayage de sécurité complet | Pression standard (2.23/5) |
| Verrouillage de sécurité | 6 | Avis de verrouillage météo | Pression standard (2.19/5) |
| Verrouillage de sécurité | 7 | Extension de la patrouille de nuit | Pression standard (2.23/5) |
| Verrouillage de sécurité | 8 | Accélération des points de contrôle | Pression standard (1.99/5) |
| Verrouillage de sécurité | 9 | Inspection des rations | Pression standard (2.36/5) |
| Verrouillage de sécurité | 10 | brièvement non surveillée | Conditions favorables (1.17/5) |
| Verrouillage de sécurité | 11 | Formation avec des témoins | Conditions favorables (1.62/5) |
| Verrouillage de sécurité | 12 | Réponse de sécurité du Black Lab | Conditions exigeantes (2.65/5) |
| Verrouillage de sécurité | 13 | Verrouillage des heures supplémentaires | Pression standard (2.45/5) |
| Verrouillage de sécurité | 14 | Approvisionnement Mandat de placard | Conditions favorables (1.16/5) |
| Verrouillage de sécurité | 15 | Audit de précision formel | Pression standard (2.16/5) |
| Verrouillage de sécurité | 16 | Protocole de sécurité expérimental | Pression standard (2.2/5) |
| Verrouillage de sécurité | 17 | Examen final de verrouillage | Conditions exigeantes (2.89/5) |
| Risque biologique | 1 | Contamination acceptable | Pression standard (2.03/5) |
| Risque biologique | 2 | Décontamination des sols ouverts | Conditions favorables (1.43/5) |
| Risque biologique | 3 | Eau potable plus douteuse | Pression standard (2.26/5) |
| Risque biologique | 4 | Approvisionnement en échantillons | Conditions favorables (1.63/5) |
| Risque biologique | 5 | Le confinement était facultatif | Pression standard (2.22/5) |
| Risque biologique | 6 | Événement météorologique sanitaire | Pression standard (2.25/5) |
| Risque biologique | 7 | Échec de la désinfection nocturne | Pression standard (2.28/5) |
| Risque biologique | 8 | Itinéraire Avis de contamination | Pression standard (1.99/5) |
| Risque biologique | 9 | Audition sur la détérioration des rations | Pression standard (2.29/5) |
| Risque biologique | 10 | Rumeur de salle blanche | Conditions favorables (1.19/5) |
| Risque biologique | 11 | Entraînement avec des gants | Conditions favorables (1.63/5) |
| Risque biologique | 12 | Revue bio du Black Lab | Conditions exigeantes (2.61/5) |
| Risque biologique | 13 | Quarantaine prolongée | Pression standard (2.43/5) |
| Risque biologique | 14 | Placard d'approvisionnement Stérile | Conditions favorables (1.16/5) |
| Risque biologique | 15 | Précision des éternuements | Pression standard (2.15/5) |
| Risque biologique | 16 | Exposition expérimentale | Pression standard (2.19/5) |
| Risque biologique | 17 | Examen final de confinement | Conditions exigeantes (2.88/5) |
| Anteverse | 1 | Apport dimensionnel | Pression standard (1.88/5) |
| Anteverse | 2 | Géométrie du sol ouvert | Conditions favorables (1.3/5) |
| Anteverse | 3 | Hydratation à travers Angles | Pression standard (2.18/5) |
| Anteverse | 4 | Approvisionnement depuis ailleurs | Conditions favorables (1.48/5) |
| Anteverse | 5 | Violation de la sécurité depuis ailleurs | Pression standard (2.06/5) |
| Anteverse | 6 | Météo dans les murs | Pression standard (2.04/5) |
| Anteverse | 7 | Courtoisie du portail de nuit | Pression standard (2.05/5) |
| Anteverse | 8 | Route à travers le mal | Pression standard (1.82/5) |
| Anteverse | 9 | Dérive de la chronologie des rations | Pression standard (2.2/5) |
| Anteverse | 10 | Fenêtre de réalité stable | Conditions favorables (1.07/5) |
| Anteverse | 11 | Entraînement avec des variables | Conditions favorables (1.48/5) |
| Anteverse | 12 | Examen dimensionnel du Black Lab | Pression standard (2.52/5) |
| Anteverse | 13 | Déplacement prolongé ailleurs | Pression standard (2.29/5) |
| Anteverse | 14 | Supply Closet Paradox | Conditions favorables (1.05/5) |
| Anteverse | 15 | Précision sur tous les angles | Pression standard (2.0/5) |
| Anteverse | 16 | Antéphase expérimentale | Pression standard (2.11/5) |
| Anteverse | 17 | Conformité finale de l'Anteverse | Conditions exigeantes (2.77/5) |
| Cauchemar | 1 | Erreur doucement allumée | Pression standard (2.03/5) |
| Cauchemar | 2 | Dread du sol ouvert | Conditions favorables (1.43/5) |
| Cauchemar | 3 | Eau dans le noir | Pression standard (2.35/5) |
| Cauchemar | 4 | Approvisionnement dans le placard | Conditions favorables (1.62/5) |
| Cauchemar | 5 | Sécurité sous le lit | Pression standard (2.27/5) |
| Cauchemar | 6 | Météo avec les dents | Pression standard (2.21/5) |
| Cauchemar | 7 | Les lumières s'éteignent pour toujours | Pression standard (2.23/5) |
| Cauchemar | 8 | Ne courez pas fort | Pression standard (1.99/5) |
| Cauchemar | 9 | Rations pour la chose | Pression standard (2.38/5) |
| Cauchemar | 10 | Récupération derrière une porte | Conditions favorables (1.15/5) |
| Cauchemar | 11 | Entraînement dans le noir | Conditions favorables (1.63/5) |
| Cauchemar | 12 | Revue du Black Lab Nightmare | Conditions exigeantes (2.75/5) |
| Cauchemar | 13 | Longue journée après minuit | Pression standard (2.56/5) |
| Cauchemar | 14 | Faux matin | Conditions favorables (1.3/5) |
| Cauchemar | 15 | Précision des ombres | Pression standard (2.29/5) |
| Cauchemar | 16 | Peur expérimentale | Pression standard (2.33/5) |
| Cauchemar | 17 | Cauchemar final pratique | Conditions exigeantes (2.99/5) |
| altéré | 1 | Orientation des prévisions | Pression standard (1.99/5) |
| altéré | 2 | Cisaillement du vent dans les sols ouverts | Conditions favorables (1.39/5) |
| altéré | 3 | Avis d'hydratation | Pression standard (2.34/5) |
| altéré | 4 | Lavage des voies d'approvisionnement | Conditions favorables (1.59/5) |
| altéré | 5 | Sécurité en cas de mauvaise visibilité | Pression standard (2.2/5) |
| altéré | 6 | Excuses du service météorologique | Pression standard (2.15/5) |
| altéré | 7 | Veille de tempête nocturne | Pression standard (2.19/5) |
| altéré | 8 | Avertissement d'inondation d'itinéraire | Pression standard (1.93/5) |
| altéré | 9 | Essai d'humidité des rations | Pression standard (2.4/5) |
| altéré | 10 | Fenêtre d'abri | Conditions favorables (1.14/5) |
| altéré | 11 | Parapluie de sécurité Formation | Conditions favorables (1.59/5) |
| altéré | 12 | Examen climatique du Black Lab | Conditions exigeantes (2.74/5) |
| altéré | 13 | Changement d'exposition prolongé | Pression standard (2.5/5) |
| altéré | 14 | Point sec du placard d'approvisionnement | Conditions favorables (1.11/5) |
| altéré | 15 | Précision par vent traversier | Pression standard (2.16/5) |
| altéré | 16 | Cellule météo expérimentale | Pression standard (2.25/5) |
| altéré | 17 | Audit climatique final | Conditions exigeantes (3.0/5) |
| Précision | 1 | Orientation de la visée | Pression standard (2.02/5) |
| Précision | 2 | Plan de ligne de visibilité ouverte | Conditions favorables (1.43/5) |
| Précision | 3 | Hydratation à couvert | Pression standard (2.32/5) |
| Précision | 4 | Ligne de tir de ravitaillement | Conditions favorables (1.62/5) |
| Précision | 5 | Adresse au tir de sécurité | Pression standard (2.21/5) |
| Précision | 6 | Note balistique météo | Pression standard (2.19/5) |
| Précision | 7 | Audit de vue nocturne | Pression standard (2.23/5) |
| Précision | 8 | Indice d'exposition des itinéraires | Pression standard (1.99/5) |
| Précision | 9 | Ration sous le feu | Pression standard (2.35/5) |
| Précision | 10 | Récupération à couvert | Conditions favorables (1.18/5) |
| Précision | 11 | Entraînement avec couverture | Conditions favorables (1.61/5) |
| Précision | 12 | Précision du laboratoire noir Examen | Conditions exigeantes (2.64/5) |
| Précision | 13 | Déplacement de ligne de vue étendu | Pression standard (2.5/5) |
| Précision | 14 | Angle mort du placard d'approvisionnement | Conditions favorables (1.34/5) |
| Précision | 15 | Audit de précision | Pression standard (2.25/5) |
| Précision | 16 | Balistique expérimentale | Pression standard (2.22/5) |
| Précision | 17 | Examen final de précision | Conditions exigeantes (2.85/5) |
| Logistique | 1 | Orientation de l'inventaire | Pression standard (1.72/5) |
| Logistique | 2 | Stockage en étage ouvert | Conditions favorables (1.22/5) |
| Logistique | 3 | Documents d'hydratation | Pression standard (2.0/5) |
| Logistique | 4 | Célébration de la chaîne d'approvisionnement | Conditions favorables (1.4/5) |
| Logistique | 5 | Sécurité des reçus | Pression standard (1.89/5) |
| Logistique | 6 | Frêt altéré | Pression standard (1.87/5) |
| Logistique | 7 | Inventaire de nuit | Pression standard (1.9/5) |
| Logistique | 8 | Mémo d'optimisation des itinéraires | Conditions favorables (1.68/5) |
| Logistique | 9 | Ration Ledger | Pression standard (1.99/5) |
| Logistique | 10 | Repack de récupération | Conditions favorables (0.99/5) |
| Logistique | 11 | Formation sur les étiquettes de sécurité | Conditions favorables (1.4/5) |
| Logistique | 12 | Examen logistique du Black Lab | Pression standard (2.32/5) |
| Logistique | 13 | Déplacement de transport prolongé | Pression standard (2.05/5) |
| Logistique | 14 | Audit miracle du placard d'approvisionnement | Conditions favorables (0.97/5) |
| Logistique | 15 | Précision du comptage | Pression standard (1.84/5) |
| Logistique | 16 | Inventaire expérimental | Pression standard (2.03/5) |
| Logistique | 17 | Examen logistique final | Pression standard (2.55/5) |
| Expérimental | 1 | Orientation variable | Pression standard (1.89/5) |
| Expérimental | 2 | Hypothèse d'étage ouvert | Conditions favorables (1.31/5) |
| Expérimental | 3 | Contrôle de l'eau douteux | Pression standard (2.21/5) |
| Expérimental | 4 | Biais de l'échantillon d'approvisionnement | Conditions favorables (1.5/5) |
| Expérimental | 5 | Groupe de contrôle de sécurité | Pression standard (2.08/5) |
| Expérimental | 6 | Anomalie météo | Pression standard (2.07/5) |
| Expérimental | 7 | Variable de nuit | Pression standard (2.09/5) |
| Expérimental | 8 | Essai d'itinéraire Dérive | Pression standard (1.84/5) |
| Expérimental | 9 | Expérience de rationnement | Pression standard (2.24/5) |
| Expérimental | 10 | Fenêtre de contrôle de récupération | Conditions favorables (1.07/5) |
| Expérimental | 11 | Erreur de données d'entraînement | Conditions favorables (1.5/5) |
| Expérimental | 12 | Examen des variables du Black Lab | Pression standard (2.56/5) |
| Expérimental | 13 | Essai prolongé | Pression standard (2.35/5) |
| Expérimental | 14 | Supply Closet Outlier | Conditions favorables (1.05/5) |
| Expérimental | 15 | Variable de précision | Pression standard (2.02/5) |
| Expérimental | 16 | Conditions expérimentales approuvées | Pression standard (2.13/5) |
| Expérimental | 17 | Résultat expérimental final | Conditions exigeantes (2.8/5) |
| Test de conformité | 1 | Admission de conformité | Pression standard (1.97/5) |
| Test de conformité | 2 | Conformité structurelle | Conditions favorables (1.38/5) |
| Test de conformité | 3 | Conformité de l'hydratation | Pression standard (2.31/5) |
| Test de conformité | 4 | Conformité de l'approvisionnement | Conditions favorables (1.58/5) |
| Test de conformité | 5 | Conformité de la sécurité | Pression standard (2.19/5) |
| Test de conformité | 6 | Conformité météo | Pression standard (2.14/5) |
| Test de conformité | 7 | Conformité de nuit | Pression standard (2.2/5) |
| Test de conformité | 8 | Conformité des itinéraires | Pression standard (1.93/5) |
| Test de conformité | 9 | Conformité des rations | Pression standard (2.35/5) |
| Test de conformité | 10 | Conformité en matière de récupération | Conditions favorables (1.13/5) |
| Test de conformité | 11 | Conformité de la formation | Conditions favorables (1.58/5) |
| Test de conformité | 12 | Conformité Black Lab | Conditions exigeantes (2.67/5) |
| Test de conformité | 13 | Conformité des heures supplémentaires | Pression standard (2.51/5) |
| Test de conformité | 14 | Conformité Supply Miracle | Conditions favorables (1.22/5) |
| Test de conformité | 15 | Conformité en matière de précision | Pression standard (2.17/5) |
| Test de conformité | 16 | Conformité expérimentale | Pression standard (2.22/5) |
| Test de conformité | 17 | Test de conformité final | Conditions exigeantes (2.9/5) |
