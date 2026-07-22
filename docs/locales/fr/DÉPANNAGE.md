<a id="troubleshooting"></a>
# Dépannage

> **Source canonique en anglais:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md). Cette documentation localisée conserve les commandes, chemins, clés, valeurs d'état, hachages et noms de fichiers exacts. Si la formulation technique diffère, utilisez la source anglaise.


Arrêtez-vous à la première vérification échouée. Conservez le bac à sable actuel, `runtime/`, `web_export/` et les `UE4SS.log` pertinents avant de tenter une récupération.

<a id="try-these-common-fixes-first"></a>
## Essayez d'abord ces correctifs courants

1. **RandomDay n'apparaît jamais :** confirmez le `RandomDay` se trouve directement à l'intérieur de `ue4ss/Mods`, activez `RandomDay : 1` dans `mods.txt` et démarrez une fois.
2. **La session en cours a conservé ses anciennes règles :** c'est normal. RandomDay prépare le profil suivant ; le jeu le charge lors d'un démarrage ultérieur.
3. **Le même profil revient sans cesse :** un panneau de serveur est peut-être en train de remplacer `SandboxSettings.ini`. Utilisez un fichier sandbox faisant autorité et comparez les noms actifs et préparés dans `web_export/today.html`.
4. **Un mod facultatif n'a pas suivi le profil :** ouvert [Mods facultatifs pris en charge](ADAPTATEURS_PRIS_EN_CHARGE.md). Un mod facultatif manquant, désactivé ou non reconnu reste inchangé.
5. **RandomDay signale un échec d'écriture ou de restauration :** arrêtez-vous avant un autre redémarrage, conservez `runtime/backups/` et suivez la section de récupération nommée ci-dessous.

Si ces cinq vérifications n'identifient pas le problème, poursuivez avec l'arbre de décision détaillé.

<a id="choose-the-first-failed-stage"></a>
## Choisissez la première étape ayant échoué

Utilisez la première ligne qui correspond à ce que vous pouvez réellement prouver. Ne commencez pas par l'explication la plus grave et ne combinez pas les échecs de sortie non liés en un seul diagnostic.

| Ce que vous pouvez observer | Vérifiez d'abord | Continuez avec | Résultat attendu |
|---|---|---|---|
| Aucune `[RandomDay]` la ligne de départ existe dans `UE4SS.log`. | Installer la racine, le package marqueurs, `mods.txt` et UE4SS le démarrage de Lua. | [Restaurer un RandomDay manquant start](#restore-a-missing-randomday-start) | Une ligne de démarrage nomme la version et le mode du package, ou l'échec est lié au chargement. |
| RandomDay chargé, mais aucun profil n'est prêt. | La première erreur de démarrage, de configuration, de cible, de transaction ou d'état. | [Récupération après un échec de préparation](#recover-from-failed-preparation), puis [référence d'état et d'erreur](R%C3%89F%C3%89RENCE_SUR_L_%C3%89TAT_ET_LES_ERREURS.md) | Un code exact identifie l'action suivante sûre. |
| Un profil préparé existe, mais les règles d'exécution ne l'ont pas fait. changement. | ID actifs et préparés dans `today.json` ou `today.html`. | [Confirmez la limite de redémarrage](#confirm-the-restart-boundary) | La session en cours reste active ; le profil préparé attend un démarrage ultérieur. |
| Le jour 1 ou un autre jour se répète après le redémarrage. | Marqueurs sandbox avant le panneau démarrage, après le démarrage du panneau et après la préparation. | [Arrêtez la préparation répétée](#stop-repeated-preparation) | L'auteur faisant autorité ou le point d'écrasement est identifié. |
| Le bac à sable est sain, mais un module facultatif a été ignoré ou a échoué. | Le résultat de l'adaptateur individuel et les preuves de compatibilité. | [Diagnostiquer un adaptateur ignoré](#diagnose-a-skipped-adapter) ou [Récupérer un échec de restauration d'un adaptateur](#recover-an-adapter-rollback-failure) | L'état de l'adaptateur est décidé indépendamment du bac à sable santé. |
| Le fichier manuel singleplayer/LAN est absent. | Mode package et dossier de sortie limité. | [Générer un singleplayer/LAN fichier](#generate-a-missing-singleplayerlan-file) | Le fichier est généré à l'intérieur de RandomDay sans découvrir de sauvegarde personnelle. |
| Seul le message destiné au joueur est manquant ou s'enroule mal. | Journal de transmission des messages, aperçu de la source et limites documentées. | [Diagnostiquer un problème de message](#diagnose-a-message-problem) | La présentation est testée sans être traitée comme une preuve de profil. |

<a id="follow-the-safe-diagnostic-order"></a>
### Suivez l'ordre de diagnostic sécurisé

1. Conservez les preuves actuelles avant de modifier les fichiers.
2. Prouvez si RandomDay est chargé.
3. Trouvez la première étape qui n'a pas atteint son résultat documenté.
4. Copiez l'état exact ou la valeur d'erreur à partir de la sortie d'exécution.
5. Utilisez la ligne du tableau correspondant ci-dessous pour une réponse sûre.
6. Relisez la cible et l'état de rotation avant un autre démarrage.

Si aucune ligne ne correspond, utilisez [État d'exécution et référence de sortie](SORTIES_D_EX%C3%89CUTION.md) pour identifier le producteur et la signification du champ avant de modifier la configuration.

<a id="restore-a-missing-randomday-start"></a>
## Restaurer un RandomDay manquant start

**Cause limitée la plus probable :** mauvaise disposition d'extraction, mod désactivé, mode de package incorrect ou UE4SS n'a pas chargé le point d'entrée Lua.

**Vérification exacte :** confirmer `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version` et `RandomDay/Scripts/main.lua` ; confirmer `RandomDay : 1` dans `mods.txt` ; recherchez `UE4SS.log` `[RandomDay]`.

**Résultat attendu :** une ligne de départ nomme l'identité de la version et le mode du package.

**Action suivante sûre :** corrigez la mise en page ou l'activation à l'arrêt, puis démarrez une fois.

**Ne pas en déduire :** non RandomDay la ligne ne prouve pas un bug de jeu ou de profil.

<a id="confirm-the-restart-boundary"></a>
## Confirmez la limite de redémarrage

**Cause limitée la plus probable :** comportement normal au prochain redémarrage.

**Vérification exacte :** comparez le profil actif et préparé family/day dans `web_export/today.json` ou `today.html`.

**Résultat attendu :** le profil préparé diffère ou est explicitement distinct du profil actif.

**Action suivante sûre :** redémarrez uniquement lorsque vous êtes prêt à l'activer, puis vérifiez le marqueur actif.

**Ne pas en déduire :** un profil préparé n'est pas actif avant le redémarrage relecture.

<a id="stop-repeated-preparation"></a>
## Arrêtez la préparation répétée

**Cause limitée la plus probable :** l'actif RandomDay actif est manquant car un panneau de serveur ou un autre outil a réécrit `SandboxSettings.ini` au démarrage.

**Vérification exacte :** compare le fichier sandbox et son RandomDay immédiatement avant le démarrage, après le démarrage du panneau et après RandomDay prépare le fichier.

**Résultat attendu :** le fichier présent au prochain démarrage conserve le marqueur préparé.

**Action suivante sûre :** configurez une source sandbox faisant autorité et désactivez la réécriture du panneau en conflit.

**Ne pas en déduire :** le jour 1 répété ne prouve pas la famille le sélecteur ne randomise pas correctement.

<a id="recover-from-failed-preparation"></a>
## Récupération après un échec de préparation

**Cause limitée la plus probable :** échec d'écriture, de sauvegarde, de promotion, de relecture de production, de validation ou de restauration en attente.

**Vérification exacte :** lisez le premier `[RandomDay] [ERROR]` et conservez la sauvegarde de l'opération nommée. Inspectez `runtime/last_good/manifest.lua` avant d'utiliser son fichier sandbox.

**Résultat attendu :** soit le fichier précédent est vérifié comme restauré, soit le résultat signale clairement un échec de restauration.

**Action suivante sûre :** gardez le serveur arrêté et suivez [récupération manuelle](OP%C3%89RATIONS.md#manual-recovery).

**Ne pas en déduire :** l'existence d'un fichier de sauvegarde à elle seule ne prouve pas qu'il correspond à l'état du monde actif prévu.

<a id="diagnose-a-skipped-adapter"></a>
## Diagnostiquer un adaptateur ignoré

**Cause limitée la plus probable :** le mod est absent ou le fichier ne correspond pas à une signature prise en charge.

**Vérification exacte :** lisez le résultat de l'adaptateur et comparez la version installée et la mise en page avec [Adaptateurs de modules pris en charge](ADAPTATEURS_PRIS_EN_CHARGE.md).

**Résultat attendu :** `not_installed` pour une cible absente ou `skipped_incompatible` pour une cible non reconnue.

**Action suivante sûre :** laissez le fichier inchangé, désactivez cet adaptateur ou installez une version exactement prise en charge par son auteur d'origine.

**Ne pas en déduire :** un nom de fichier similaire ou une version plus récente ne constitue pas une preuve de compatibilité.

<a id="recover-an-adapter-rollback-failure"></a>
## Récupérer un échec de restauration d'un adaptateur

**Cause limitée la plus probable :** la tentative d'écriture et la restauration automatique n'ont pas pu être vérifiées.

**Vérification exacte :** préservez la cible, le frère pending/rollback, l'état de l'adaptateur et la dernière sauvegarde de l'adaptateur sous `runtime/backups/`.

**Résultat attendu :** le résultat est `rollback_failed`, pas `applied`.

**Action suivante sûre :** arrêter le mod/server concernée et restaurez la sauvegarde vérifiée manuellement avant un autre lancement.

**Ne pas en déduire :** RandomDay's résultat du bac à sable principal ne prouve pas qu'une cible d'adaptateur distincte est saine.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Générer un singleplayer/LAN fichier

**Cause limitée la plus probable :** le package dédié a été installé, le marqueur de mode n'est pas valide ou RandomDay ne s'est pas chargé.

**Vérification exacte :** `.randomday_mode` doit contenir `singleplayer_manual` ; puis confirmez la RandomDay ligne de départ et inspectez `runtime/singleplayer_manual/SandboxSettings.ini`.

**Résultat attendu :** le fichier existe dans le RandomDay.

**Action suivante sûre :** installez le package correct proprement et démarrez une fois.

**Ne pas en déduire :** RandomDay ne recherchera ni n'écrira le monde cible en votre nom.

<a id="diagnose-a-message-problem"></a>
## Diagnostiquer un problème de message

**Cause limitée la plus probable :** aucun personnage de joueur valide n'était disponible lors de la passe planifiée, le transport d'avertissement n'était pas disponible ou l'affichage du client a enveloppé le texte différemment.

**Vérification exacte :** inspectez le `[RandomDay]` et comparez le message source avec la longueur documentée limite.

**Résultat attendu :** le runtime indique si une passe de message a été exécutée ; la validation de la source indique la longueur maximale.

**Action suivante sûre :** vérifiez la résolution client prévue. Gardez le gameplay et la vérification du profil séparés du résultat du message.

**Ne pas en déduire :** un message visible ne prouve pas que le profil sandbox est appliqué, et un message manquant ne prouve pas l'échec de la préparation.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Quatre choix à l'échelle du profil renvoyés aux valeurs expédiées

**Cause limitée la plus probable :** seul le `SandboxSettings.ini` généré a été modifié, ou `server.lua` a été modifié alors que le même processus Lua était encore en cours d'exécution.

**Vérification exacte :** généré arrête le jeu ou le serveur dédié, ouvre `RandomDay/Scripts/ax_config/server.lua` et confirmez que le bloc `sandbox.profile_overrides` enregistré contient les quatre valeurs prévues.

**Résultat attendu :** après le prochain démarrage, chaque nouveau préparé family/day nouvellement préparé contient les valeurs choisies. Les rotations de profil ultérieures et les démarrages de serveur continuent d'utiliser le même bloc.

**Action suivante sûre :** corrigez le bloc, démarrez une fois et inspectez le profil préparé. Ne corrigez pas uniquement le fichier sandbox généré car une préparation ultérieure le remplacera.

<a id="look-up-an-exact-status"></a>
## Recherchez un statut exact

Une fois que l'arbre de décision a identifié l'étape défaillante, copiez la valeur `status`, `transaction_status`, `rollback_status` ou `error` valeur de l'exportation du runtime. Utilisez le [référence d'état et d'erreur](R%C3%89F%C3%89RENCE_SUR_L_%C3%89TAT_ET_LES_ERREURS.md) pour sa signification et une réponse sûre de l'opérateur. Une formulation similaire dans un panneau ou une console ne remplace pas la valeur exportée.

Les échecs de l'environnement de test réservés aux contributeurs appartiennent à [validation de version](VALIDATION_DE_LA_VERSION.md#avoid-validation-environment-pitfalls), pas au chemin de récupération de l'opérateur.
