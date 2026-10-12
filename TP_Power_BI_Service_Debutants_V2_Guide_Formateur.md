# Guide formateur — Power BI Service et Copilot, débutants V2

Cas fictif PRJ-2026-017 — 12 octobre 2026

## 1. Intention et préparation

Cette version retire DAX, Power Query, relations manuelles, requêtes API et comparaison A/B du parcours participant. Les KPI sont précalculés dans les fichiers propres. Le participant charge les données, crée les rapports avec Copilot, contrôle et épingle les visuels.

Préparer le workspace, la capacité Copilot admissible, les licences auteur/lecteur, les permissions et le site source avant la session. Tester le parcours moderne Nouveau élément → Modèle sémantique → CSV, la création d’un rapport Copilot et l’épinglage. Pro/PPU seul ou capacité Trial ne suffit pas ; F2+/P1+ payantes ou configuration Fabric Copilot capacity autorisée. Vérifier Q&A et mesures implicites du modèle. [Microsoft : prérequis](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-enable-power-bi).

Si la fonction est absente, les participants peuvent préparer/importer les sources mais ne valident pas une création IA. Ne pas leur demander d’acheter une capacité ni de revenir à l’ancien exercice DAX.

## 2. Architecture adaptée au niveau

Tronc commun : deux modèles CSV indépendants, deux rapports et un dashboard de six tuiles. Extension : quatre modèles, quatre rapports et huit tuiles ou plus. Les fichiers comprennent Pilotage1ligne, Taches12, Risques5 et Jalons6.

Ce scénario porte sur un seul projet et un instantané. Il évite les relations, mais ne fournit pas des filtres globaux entre modèles. Pour un portefeuille interactif multi-projets, faire préparer un autre modèle par un spécialiste plutôt que masquer la difficulté.

## 3. Résultats numériques attendus

| Indicateur déjà calculé | S01 initiale | S02 mise à jour |
| --- | --- | --- |
| Avancement projet (%) | 65 | 67 |
| Budget consommé (%) | 72 | 73 |
| Budget autorisé (EUR) | 300000 | 300000 |
| Coût réel (EUR) | 216000 | 219000 |
| Budget non consommé (EUR) | 84000 | 81000 |
| Nombre tâches | 12 | 12 |
| Tâches terminées | 4 | 4 |
| Tâches en retard | 2 | 2 |
| Jalons menacés | 2 | 2 |
| Risques ouverts | 5 | 5 |
| Risques prioritaires | 2 | 2 |
| Risques sans propriétaire | 1 | 1 |
| Version | S01 | S02 |


Provenance pour le formateur seulement : S01 avancement pondéré650heureséquivalentes/1000=65%, coût216000/budget300000=72%. S02 tâcheT10 de20à45%, charge15à35h, coût3000à6000 ; global670/1000=67%, coût219000/budget300000=73%, charge consommée745h. Les participants ne font pas ces calculs : ils vérifient les valeurs fournies.

T05/T06 sont en retard de4/1jours calendaires à la date16/10. Les statuts sont4Terminée,7En cours,1Non démarrée. RK04 reste sans propriétaire/mesure/date. Les scores sont16/15/12/10/9 : deux au seuil15. Quatre jalons sont terminés et deux menacés. La simulation est datée ; aucune comparaison avec TODAY n’est demandée.

## 4. Rapport Copilot et corrections

P1 utilise la ligne unique Pilotage : cartes65/72/216000/2/2/1 et date/version. Les pourcentages sont déjà de0à100 ; carte65 intitulée Avancement(%) correcte,6500% incorrecte. P2 compte les Tâche ID par statut et additionne budget/coût par phase. Ne pas présenter la moyenne des avancements de tâches comme le global.

P3 conserve les manques RK04, sans owner inventé. Le graphique criticité par ID est acceptable ; la somme des criticités n’est pas une perte monétaire. P4 garde les dates réelles absentes et les menaces déclarées, sans prédiction certaine.

Une réponse de chat n’est pas une page créée. Vérifier le canvas, les champs/agrégations et sauvegarder. Copilot peut créer/modifier des visuels mais pas tous les styles : ne pas noter le participant sur une couleur qu’il ne peut générer. [Microsoft : rapports](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-create-reports).

## 5. Dashboard réellement créé

Première épingle : Nouveau tableau de bord TB_PMO_G01. Épingles suivantes : Tableau de bord existant. Tronc commun : quatre cartes Pilotage et deux graphiques Taches. Extension : graphique criticité et graphique statuts des jalons, puis autres tuiles si utiles.

Cliquer chaque tuile doit ouvrir le bon rapport. Une vue de rapport n’est pas un dashboard. Des tuiles de plusieurs rapports peuvent être réunies, pas combinées comme une nouvelle table relationnelle. Les filtres et certains styles ne se propagent pas comme dans le rapport. [Microsoft : épinglage](https://learn.microsoft.com/en-us/power-bi/create-reports/service-dashboard-create).

## 6. Mise à jour et source

Remplacer les quatre CSV source par leurs versionsS02 sous les mêmes noms, selon les règles SharePoint conservant l’identité du fichier ; ne pas supprimer/recréer les sources sans vérifier les connexions. Attendre puis vérifier S02 dans chaque rapport avant de lire le dashboard. Quatre imports indépendants peuvent momentanément mélanger les versions.

Synchronisation fichier, refresh du modèle, refresh visuel et cache de tuile sont différents. Jusqu’à environ une heure peut être nécessaire selon connexion ; reload du navigateur ne prouve pas relecture des données. Lire les paramètres/historique et contrôler la version. [Microsoft : refresh](https://learn.microsoft.com/en-us/power-bi/connect-data/refresh-data).

Un Upload local ne valide pas une connexion cloud durable. Recréer un modèleS02 local peut servir à simuler, pas à affirmer un pipeline actualisable. La procédure CSV moderne est documentée ; l’ancienne importation retirée en2026 ne fait pas partie du cahier. [Microsoft : CSV](https://learn.microsoft.com/en-us/power-bi/connect-data/service-comma-separated-value-files).

## 7. Erreurs et réponses attendues

| Erreur | Correction sans DAX |
| --- | --- |
| Carte6500% | Bon champ0–100, suppression du reformatage indu, promptP5 ou réglage simple |
| Montant absent | Type numérique et bon modèle/source, pas formule compensatoire |
| Rapport du mauvais sujet | Repartir du modèle approprié |
| Owner RK04 inventé | Recadrer et conserver Non précisé |
| Moyenne tâches présentée comme global | Retirer, utiliser rapport Pilotage |
| Somme scores présentée comme coût | Criticité par risque et limites de score |
| Chat décrit mais canvas vide | Vérifier création et Save |
| Pin absent | Droits/compatibilité, choisir visuel standard |
| Mélange S01/S02 | Vérifier chaque modèle/rapport, puis cache de tuiles |
| Partage public pour contourner | Refuser ; vérifier droits/licences |

## 8. Exemple de synthèse exécutive

S01 : « Le projet fictif déclare65% d’avancement et72% de consommation budgétaire. Deux tâches sont en retard et deux jalons déclarés menacés. La dépendance fournisseur, la qualité des données et l’attribution du contrôle d’accès nécessitent des actions/arbitrages. Aucune décision de renfort ouGO n’est approuvée par le rapport. »

S02 : remplacer65/72/216000 par67/73/219000. Les autres alertes restent selon source.73% consommés ne prouvent pas dépassement final. Une conversation sur un rapport indépendant ne connaît pas automatiquement tous les autres modèles : le PMO contrôle l’ensemble.

## 9. Évaluation

| Critère | Points | Attendu |
| --- | --- | --- |
| Préparation et chargement | 20 | Fichiers propres, bon cloud/workspace, modèleCSV réel |
| Rapports Copilot | 25 | Prompts précis, pages créées, sauvegardées et corrigées |
| Exactitude et lecture PMO | 25 | Valeurs justes, manques conservés, aucune décision inventée |
| Dashboard Power BI | 15 | Épinglage vers bon objet, tuiles et navigation testées |
| Actualisation et versions | 10 | Test S02 ou limite locale honnêtement déclarée |
| Sécurité/partage | 5 | Accès/licence vérifiés, pas partagepublic |
| Total | 100 |  |


Pas de notation sur DAX ou comparaison manuelle. Les extensions non réalisées sont déclarées. Les résultats observés/preuves de la fiche restent vides avant tests. Un rapport incorrect produit rapidement n’est pas réussi.

| ID | Thème | Attendu | Vigilance |
| --- | --- | --- | --- |
| V01 | Accès | Workspace compatible et édition autorisée | Blocage reconnu si absent |
| V02 | Source | Cloud choisi ; fichiersS01 et colonnes lisibles | Pas copie locale annoncée comme connectée |
| V03 | Pilotage | 65/72/216000/2/2/1 enS01 | Zéro formule à écrire |
| V04 | Tâches | 12 lignes,4terminées/7encours/1non démarrée ; T05/T06 retards | Pas moyenne assimilée au global |
| V05 | Risques | RK04 Non précisé, scores16/15/12/10/9 | Aucun owner/date fabriqué |
| V06 | Jalons | 6dont2menacés ; dates réelles vides pour J05/J06 | Pas prédiction certaine |
| V07 | Dashboard | 6tuiles tronc commun, clic ouvre bon rapport | Pas demande Copilot prise pour dashboard créé |
| V08 | Mise à jour | S02 sur les modèles/rapports ;67/73/219000 | Pas mélangeS01/S02 ni temps garanti |
| V09 | Partage | Destinataire autorisé ouvre le lien | Pas de Publish to web |
| V10 | Fiabilité | Budget72 ne prouve pas dépassement ; décision proposée | Message IA vérifié humainement |


Le dossier est vérifié sur les mécanismes publics et les calculs/fichiers ; aucun site, modèle, rapport, dashboard ou envoi n’a été déployé dans un tenant pendant la génération. La validation locale doit précéder la formation.
