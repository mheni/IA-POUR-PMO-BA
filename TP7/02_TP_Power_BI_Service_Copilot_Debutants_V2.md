# TP — Créer un tableau de bord PMO avec Copilot dans Power BI Service

Parcours débutant, entièrement dans le navigateur : données préparées → chargement dans le workspace → rapports Copilot → tableau de bord → contrôle des mises à jour.

Formation : Utilisation de l’IA par un PMO / PMP / Business Analyst pour accélérer ses travaux.

Version débutant V2 — 12 octobre 2026. Cette version remplace le TP Power BI technique précédent.

## 1. Ce qui a été simplifié

Les participants ne doivent pas écrire DAX, manipuler Power Query, créer des relations ou comparer un parcours manuel à Copilot. Power BI Desktop, requêtes API et scripts Power Automate d’interrogation sont retirés du parcours principal. Les anciens fichiers .dax/.pq et le classeur comparatif ne doivent pas être distribués avec cette version.

Les données sont propres et les indicateurs métier sont déjà calculés. Le participant apprend à choisir la source, créer les objets cloud, demander les visuels à Copilot, vérifier puis partager. Une correction se fait par prompt ciblé ou réglage simple de visuel, jamais par formule à inventer.

Le terme pipeline décrit ici la chaîne de chargement et d’actualisation des fichiers dans Power BI. Nous ne créons pas un objet Fabric « Data pipeline » ni un Dataflow Gen2, qui demanderait un autre niveau technique.

## 2. Objectifs et durée

À la fin, créer au moins deux modèles et deux rapports, puis un vrai tableau de bord avec six tuiles ; vérifier les chiffres et distinguer source/modèle/rapport/dashboard. Extension : ajouter risques et jalons, sans calculs supplémentaires.

Tronc commun : environ2heures de pratique. Extension :30à45minutes. Préparation des licences/capacités et temps de synchronisation ne sont pas compris ; ce n’est pas une garantie de performance.

Les rôles sont PMO/BA responsables de la lecture et de la validation. Aucun développement ni démonstration préalable nécessaire si l’environnement est correctement préparé.

## 3. Préparation indispensable par l’organisation

Copilot dans Power BI Service exige un workspace admissible en capacité payante FabricF2+ / PremiumP1+, ou scénario Fabric Copilot capacity autorisé, des réglages tenant/capacité et droits d’auteur adaptés. Une licence Pro/PPU seule ou un essai Fabric ne suffit pas. Aucun participant ne doit acheter ou activer une capacité pour terminer le TP. [Microsoft : prérequis](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-enable-power-bi).

Préparer compte Power BI et rôle Contributor/Member/Admin sur workspace de formation ; droits SharePoint ; publication/lecture et licences adaptées. Un F2 admissible à Copilot ne rend pas tous lecteurs gratuits. Demander une vérification réelle avant la session, pas seulement l’existence du bouton.

Le responsable teste la création Copilot sur un modèle importé : fonctionnalitéQ&A du modèle activée, mesures implicites non désactivées, type compatible. Ces conditions ne sont pas un exercice de DAX pour les participants. [Microsoft : limites de création](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-create-reports).

Si Copilot est indisponible, on peut préparer/importer les données, mais la compétence « création de rapports avec Copilot » n’est pas exécutée. Ne pas la remplacer silencieusement par l’ancien TP technique.

## 4. Comprendre les quatre objets en une minute

| Objet | Explication simple |
| --- | --- |
| Source | Fichier du projet hébergé dans SharePoint |
| Modèle sémantique | Données chargées et utilisables par Power BI ; créé depuisCSV sans calcul participant |
| Rapport | Pages/visuels générés par Copilot à partir d’un modèle |
| Tableau de bord | Une page de tuiles épinglées depuis un ou plusieurs rapports |

Copilot crée et modifie des pages de RAPPORT dans le volet du rapport, pas par une commande universelle de création du dashboard. Ensuite le participant épingle les visuels pour obtenir l’objet Tableau de bord. Microsoft documente ces deux étapes séparément. [Microsoft : créationCopilot](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-create-reports) ; [Microsoft : dashboard](https://learn.microsoft.com/en-us/power-bi/create-reports/service-dashboard-create).

```text
4CSV prêts dans SharePoint
  →4modèles indépendants (2pour le tronc commun)
  →4rapports Copilot (2pour le tronc commun)
  →1tableau de bord qui regroupe des tuiles
```

Ce choix évite les relations/DAX. Il est adapté à un seul projet et un instantané commun. Un dashboard ne combine pas des modèles comme un modèle relationnel et ne possède pas de filtre global transversal. Pour un portefeuille multi-projets avec filtres communs, un modèle préconfiguré par un spécialiste serait requis.

## 5. Fichiers à utiliser

Dans le ZIP : Sources/S01 contient les quatre CSV initiaux ; Sources/S02 les quatre remplacements pour test. Les noms de fichiers sont identiques entre ces dossiers pour conserver les connexions.

| Fichier | Modèle à créer | Rapport Copilot | Lignes | Périmètre |
| --- | --- | --- | --- | --- |
| PMO_Pilotage.csv | M_PMO_Pilotage_G01 | R_PMO_Synthese_G01 | 1 | Tronc commun |
| PMO_Taches.csv | M_PMO_Taches_G01 | R_PMO_Taches_G01 | 12 | Tronc commun |
| PMO_Risques.csv | M_PMO_Risques_G01 | R_PMO_Risques_G01 | 5 | Extension |
| PMO_Jalons.csv | M_PMO_Jalons_G01 | R_PMO_Jalons_G01 | 6 | Extension |


G01 est votre code de groupe : le remplacer par G02/etc pour éviter d’écraser les objets d’un autre participant. Les deux classeurs Excel S01/S02 permettent de lire les mêmes données ; ils ne sont pas le chemin d’import de ce TP. Les CSV utilisent virgules et UTF-8, datesISO et valeurs numériques propres ; ne pas les réenregistrer dans Excel avec un autre séparateur.

Les chiffres globaux sont précalculés dans la seule ligne Pilotage. La moyenne des avancements de tâches n’est pas le pourcentage global pondéré. Les scores risques ne sont pas une perte financière. Aucune date/owner inconnu n’a été fabriqué.

La simulation est arrêtée au16/10/2026, même si la date du poste est différente. Toutes les données sont fictives. S02 modifie Tests/recette et ses coûts/charges ; le global est fourni déjà recalculé. En utilisation réelle, un responsable de données doit produire les fichiers cohérents : Power BI ne recalcule pas ces KPI source par magie.

## 6. Guide opératoire dans le navigateur

### Étape 1 — Vérifier le workspace préparé

Objectif : Commencer dans un environnement Copilot réellement utilisable.

Point de départ : Navigateur avec compte professionnel.

Manipulations :
1. Ouvrir https://app.powerbi.com et se connecter.
2. À gauche, sélectionner Espaces de travail / Workspaces.
3. Ouvrir le workspace de formation donné par le responsable.
4. Relever son nom et votre droit de création ; un rôle Lecteur ne permet pas ce TP d’auteur.
5. Vérifier que la capacité/les licences Copilot ont été confirmées ; aucun achat ni activation de facturation.
6. Si un workspace personnel doit être créé, la commande Nouveau workspace peut créer le conteneur, mais l’administration doit lui attribuer la capacité admissible avant Copilot.

Valeur à saisir : WORKSPACE_TP réel, identifiant groupe G01 remplacé par votre code.

Résultat attendu : Workspace autorisé prêt à recevoir modèles et rapports.

Point de contrôle : Créer un workspace ne crée pas à lui seul une capacité Copilot.

En cas de problème : Si accès ou Copilot absent, arrêter cette dépendance et solliciter le responsable ; ne pas revenir à un exercice de DAX ou afficher une réussite IA fictive.

### Étape 2 — Préparer le dossier source cloud

Objectif : Disposer de fichiers propres sans nettoyage Power Query.

Point de départ : Site SharePoint de test et ZIP extrait.

Manipulations :
1. Dans Documents/PRJ-2026-017, créer un dossier 05_Reporting_Debutants, puis votre sous-dossier G01 si plusieurs groupes.
2. Dans le ZIP, ouvrir Sources/S01.
3. Charger les quatre CSV avec Charger→Fichiers, sans les ouvrir/réenregistrer dans Excel.
4. Conserver les noms PMO_Pilotage.csv, PMO_Taches.csv, PMO_Risques.csv, PMO_Jalons.csv.
5. Le classeur Donnees_PMO_Debutants_S01.xlsx est fourni pour consultation ; ce parcours charge les CSV, pas ses quatre tables à modéliser.
6. Vérifier accès du participant, puis relever SITE_TP et le dossier réel dans le registre.

Valeur à saisir : Sources/S01 ; quatre CSV UTF-8, virgules, champs déjà nettoyés.

Résultat attendu : Sources hébergées, aucune ligne à recopier manuellement.

Point de contrôle : Les fichiers du sous-dossier S02 ne sont pas les données initiales. Ne pas mélanger S01/S02.

En cas de problème : Sans SharePoint, Upload file depuis ordinateur permet un apprentissage statique ; cela ne valide pas une connexion cloud durable ni refresh automatique.

### Étape 3 — Créer le premier modèle à partir du CSV

Objectif : Charger des données utilisables sans relation ni formule.

Point de départ : Workspace Power BI, pas page SharePoint.

Manipulations :
1. Nouveau élément / New item.
2. Sous Store data / Stocker les données, choisir Modèle sémantique / Semantic model.
3. Choisir CSV.
4. Parcourir SharePoint/OneDrive organisationnel et sélectionner PMO_Pilotage.csv dans G01 ; se connecter au compte autorisé si demandé.
5. Next / Suivant ; regarder l’aperçu : les colonnes ne doivent pas être réunies dans un seul champ.
6. Confirmer le fichier, puis Next.
7. Choisir Create a semantic model only / Créer uniquement un modèle sémantique.
8. Nommer M_PMO_Pilotage_G01 ; Create / Créer.
9. Attendre confirmation et revenir au workspace si le panneau de modèle s’ouvre.

Valeur à saisir : PMO_Pilotage.csv ; M_PMO_Pilotage_G01.

Résultat attendu : Un objet modèle contenant une seule ligne de pilotage.

Point de contrôle : Ce n’est ni une icône de classeur Excel ni un rapport déjà créé. Source choisie cloud et compte organisationnel.

En cas de problème : Si SharePoint n’est pas proposé, prendre Upload file pour essai statique puis marquer connexion non validée. Ne pas chercher l’ancien Create/Get data Excel/CSV supprimé en2026. Si CSV apparaît comme une seule colonne, vérifier séparateur virgule à l’aperçu/options ; ne pas construire les visuels tant que colonnes absentes.

### Étape 4 — Créer le rapport de synthèse et ouvrir Copilot

Objectif : Passer du modèle chargé à la création visuelle.

Point de départ : Workspace, modèle M_PMO_Pilotage_G01.

Manipulations :
1. Ouvrir le modèle ; utiliser Créer un rapport / Create report ou menu …→Create report.
2. Choisir le rapport vierge si plusieurs options.
3. Une fois le rapport ouvert, cliquer Modifier / Edit si nécessaire.
4. Dans le ruban du rapport, cliquer Copilot.
5. Dans le volet, saisir le prompt P1 complet du fichier fourni.
6. Si Suggest content for this report est offert, vous pouvez d’abord voir les suggestions, mais utilisez P1 pour le périmètre du TP.
7. Attendre la génération ; noter les éventuels éléments manquants.
8. Enregistrer / Save, nom R_PMO_Synthese_G01 dans le même workspace.

Valeur à saisir : Prompt P1 ; rapport R_PMO_Synthese_G01.

Résultat attendu : Une page de cartes et informations du projet, générée dans le navigateur.

Point de contrôle : 65,72,216000,2retards,2menaces,1owner absent ; date16/10/2026/versionS01. Aucun champ calculé demandé.

En cas de problème : Si Copilot absent,  modèle sélectionné et droits/capacité ; ne pas chercher le volet autonome Copilot comme substitut à la création de page. La licence M365 Copilot n’est pas une preuve de capacité Power BI.

### Étape 5 — Vérifier et corriger les visuels

Objectif : Contrôler la production IA sans connaissances de DAX.

Point de départ : Rapport de synthèse généré.

Manipulations :
1. Comparer les cartes avec le tableau de contrôle S01.
2. Si une carte est incorrecte, sélectionner ce visuel et saisir P5, en remplaçant champ et attendu. Exemple champ Avancement projet (%) et valeur65 sur la ligne unique.
3. Vérifier que Copilot a réellement changé le visuel ; son explication seule ne suffit pas.
4. Une carte65 avec titre Avancement (%) est correcte ;6500% ne l’est pas. Ne pas demander une multiplication/division.
5. Si la correction est refusée, vérifier le champ dans le volet de construction du visuel ; demander au responsable de corriger le modèle si son type est erroné, pas d’écrire une formule.
6. Modifier éventuellement titre/taille manuellement via Format lorsque nécessaire : Copilot ne gère pas tous les changements de style.
7. Save après validation.

Valeur à saisir : Contrôles S01, prompt P5 ciblé.

Résultat attendu : Rapport lisible avec valeurs fidèles et corrections tracées.

Point de contrôle : Pas de budget consommé transformé en dépassement final, pas d’arbitrage approuvé inventé.

En cas de problème : Si les montants sont classés comme texte, arrêter la création des cartes numériques et faire vérifier l’import ; les fichiers ne doivent pas avoir été réenregistrés avec un autre format.

### Étape 6 — Répéter le chargement pour les tâches

Objectif : Créer le second bloc de suivi sans modèle relationnel.

Point de départ : Workspace, rapport de synthèse enregistré.

Manipulations :
1. Refaire exactement l’étape3 avec PMO_Taches.csv.
2. Nommer le modèle M_PMO_Taches_G01.
3. Refaire l’étape4 à partir de ce modèle, avec prompt P2.
4. Enregistrer R_PMO_Taches_G01.
5. Vérifier12tâches et tableau retards T05/T06 ; les colonnes En retard et Retard sont déjà calculées.
6. Le graphique statuts compte les Tâche ID ; le graphique par Phase additionne Budget tâche et Coût tâche, pas les KPI globaux.
7. Ne pas afficher la moyenne des avancements de tâches comme l’avancement projet.

Valeur à saisir : Modèle/rapport tâches et prompt P2.

Résultat attendu : Graphiques et tableau d’exceptions créés par Copilot.

Point de contrôle : Quatre Terminée, sept En cours, une Non démarrée ;2retards de4/1jours calendaires.

En cas de problème : Si le rapport de tâches ressemble à la synthèse, vous avez créé le rapport sur le mauvais modèle. Revenir au workspace et repartir du modèle tâches.

### Étape 7 — Ajouter risques et jalons en extension

Objectif : Compléter le tableau de bord par les décisions à préparer.

Point de départ : Deux rapports du tronc commun validés.

Manipulations :
1. Répéter étape3 pour PMO_Risques.csv, modèle M_PMO_Risques_G01, puis étape4 avec P3 ; rapport R_PMO_Risques_G01.
2. Vérifier5risques et RK04 Non précisé/À définir, pas owner inventé ; ne pas additionner les scores comme coût.
3. Répéter pour PMO_Jalons.csv, modèle M_PMO_Jalons_G01, P4 ; rapport R_PMO_Jalons_G01.
4. Vérifier6jalons,4terminés et2menacés ; dates réelles absentes restent absentes.
5. Save des deux rapports.

Valeur à saisir : P3/P4 ; deux imports supplémentaires mêmes manipulations.

Résultat attendu : Quatre rapports spécialisés, aucun raccordement relationnel manuel.

Point de contrôle : Un seul projet/instantané, chaque modèle porte ses données ; pas de filtre intermodèles automatique.

En cas de problème : Le tronc commun peut s’arrêter à2rapports ; marquer cette extension non exécutée et ne pas inventer ses tuiles.

### Étape 8 — Créer le véritable tableau de bord par épinglage

Objectif : Assembler les visuels de plusieurs rapports.

Point de départ : Rapport R_PMO_Synthese_G01 .

Manipulations :
1. Survoler la carte Avancement ; cliquer l’icône épingle / Pin visual.
2. Choisir New dashboard / Nouveau tableau de bord ; nom TB_PMO_G01.
3. Cliquer Pin / Épingler puis Go to dashboard si proposé.
4. Revenir au rapport et épingler Budget consommé, Retards et Menaces ; cette fois Existing dashboard → TB_PMO_G01.
5. Ouvrir le rapport Taches ; épingler graphique statuts et Budget/Coût par phase vers le même dashboard.
6. Si extension faite, épingler graphique criticité et graphique statuts des jalons.
7. Si un tableau/visuel ne propose pas Pin, choisir un visuel standard compatible ; ne pas inventer un bouton.
8. Dans le dashboard, repositionner/redimensionner les tuiles si vous êtes auteur.

Valeur à saisir : TB_PMO_G01 ;6tuiles tronc commun,8ouplus avec extensions.

Résultat attendu : Objet Tableau de bord visible dans le workspace formé par les visualisations epinglés précedement .

Point de contrôle : Cliquer sur un des vusuels ouvre le rapport qui l’alimente ; toutes viennent du rapport crée au préalable.

En cas de problème : Ce n’est pas une commande Copilot de création native du dashboard : Copilot a créé les pages/visuels, l’épinglage crée l’objet dashboard. Le dashboard ne filtre pas globalement quatre modèles différents.


### Contrôle de la navigation

Dans un rapport enregistré, la réouverture peut être en lecture : sélectionner Modifier pour retrouver Copilot. Le volet du rapport est celui utilisé pour la création, pas la conversation Copilot autonome multi-items. [Microsoft : procédure](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-create-reports).

Un style/couleur demandé au modèle n’est pas forcément appliqué : Microsoft signale les limites de styling. Copilot peut ajouter/supprimer/changer des visuels et champs ; les mises en forme simples se contrôlent manuellement ou restent avec le thème par défaut. Ne pas évaluer les débutants sur des réglages techniques de style.

## 7. Prompts prêts à copier

### P1 — Synthèse du projet

```text
Crée une page « Synthèse du projet » dans ce rapport à partir du modèle Pilotage chargé.
Public : sponsor et PMO débutant. Il n’y a qu’une ligne de données, pour PRJ-2026-017.
Créer des cartes pour : Avancement projet (%), Budget consommé (%), Coût réel (EUR), Tâches en retard, Jalons menacés et Risques sans propriétaire.
Afficher Projet, Statut projet, Date état et Version sans les transformer en compteurs.
Les colonnes de pourcentage contiennent déjà des valeurs de 0 à100 : 65 signifie65%. Afficher65 avec le titre « Avancement (%) » ; ne multiplier/diviser pas ces chiffres et ne les reformater pas en6500%.
Les nombres sont précalculés et la ligne unique ne doit pas être répétée. Ne crée pas de calcul métier ni de mesure DAX explicite.
Ajouter une table courte avec Prochaine échéance, Date prochaine échéance et Décision à préparer.
Les données sont fictives. 72% de budget consommé ne prouve pas un dépassement final. Aucun GO ou arbitrage n’est approuvé par ce rapport.
```

### P2 — Suivi des tâches

```text
Crée une page « Suivi des tâches » à partir du modèle Taches.
Créer un graphique du nombre de Tâche ID par Statut, puis un graphique Budget tâche (EUR) / Coût tâche (EUR) par Phase.
Ajouter un tableau Tâche ID, Tâche, Responsable, Statut, Avancement tâche (%), Fin prévue et En retard.
Créer un tableau des tâches en retard avec filtre « En retard = Oui », et Retard (jours calendaires).
Chaque ligne représente une tâche unique. Le nombre total attendu dans S01 est12 ; les retards sont des données déjà calculées, pas à recalculer avec la date du jour.
Ne présente pas la moyenne des avancements des tâches comme l’avancement global du projet : il se trouve dans l’autre rapport Pilotage.
Afficher Date état et Version, en texte/date, pas un compteur de versions. Aucun DAX ni modélisation à demander au participant.
```

### P3 — Risques

```text
Crée une page « Risques à suivre » à partir du modèle Risques.
Ajouter un graphique Criticité par Risque ID, tri décroissant ; chaque ID est unique. Ne présente pas la somme des criticités comme une perte financière.
Ajouter un tableau Risque ID, Risque, Priorité, Propriétaire, Mesure proposée et Échéance mesure.
Conserver « Non précisé » et « À définir » pour RK04 ; ne lui attribue pas un propriétaire ou une date.
Afficher Date état et Version. Les réponses sont des propositions à valider ; aucune acceptation de risque ou décision sponsor n’est inventée.
Pas de DAX écrit ni de nouvelle relation de modèle.
```

### P4 — Jalons

```text
Crée une page « Jalons du projet » à partir du modèle Jalons.
Ajouter une table Jalon ID, Jalon, Date prévue, Date réelle, Statut jalon et Point de vigilance.
Créer un graphique du nombre de Jalon ID par Statut jalon, puis un tableau avec filtre Statut jalon=Menacé.
Ne remplis pas les dates réelles absentes. « Menacé » est le statut fourni, pas une prédiction automatique.
Afficher Date état et Version sans compter les versions.
Ne crée pas de calcul de chemin critique, de nouvelle mesure DAX ou de date de production approuvée.
```

### P5 — Correction ciblée

```text
Corrige uniquement le visuel sélectionné : il doit utiliser le champ [NOM EXACT DU CHAMP] du modèle actuel et afficher [VALEUR OU AGRÉGATION ATTENDUE].
Ne change pas les données source et ne crée pas de calcul DAX explicite.
Explique quel champ ou agrégation tu as changé. Ne prétends pas appliquer une mise en forme que ton interface ne sait pas modifier.
```

### P6 — Lecture exécutive

```text
Résume uniquement ce rapport en trois phrases compréhensibles pour un sponsor.
Distingue les chiffres observés, les risques et les décisions à préparer. Rappelle la date d’état et le caractère fictif.
N’invente pas des informations des autres modèles non présents dans ce rapport. Ne transforme pas une décision attendue en accord obtenu.
La réponse est un brouillon à vérifier, pas une preuve de conformité ni une autorisation de mise en production.
```



Les prompts ont un objectif et des contrôles ; ils ne remplacent pas l’enregistrement de la page. Une réponse de chat qui décrit un visuel ne signifie pas que le visuel a été créé sur le canvas. Vérifier et sauvegarder.

## 8. Contrôles chiffrés, sans formule

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


S01 : T05 retard4jours calendaires et T06 retard1jour ; toutes deux non terminées àla date d’état. Quatre tâchesTerminée, septEn cours, uneNon démarrée. RK04 garde Non précisé/À définir et sa date absente. Quatre jalonsTerminé, deuxMenacé. Un statut de menace fourni n’est pas une prédiction validée.

Si une carte représente65 par6500% ou somme des pourcentages, arrêter et corriger le visuel. Ne pas expliquer au sponsor un chiffre incorrect pour « finir l’exercice ».

## 9. Actualisation : ce qui est réellement vérifié

Le chemin principal est Nouveau élément→Modèle sémantique→CSV, puis sélection d’un fichier cloud. Ne pas utiliser l’ancienne importation Create/Getdata retirée en2026, ni Upload d’un classeur pris pour un rapport. La documentation récente décrit la nouvelle procédureCSV. [Microsoft : importCSV](https://learn.microsoft.com/en-us/power-bi/connect-data/service-comma-separated-value-files).

Lire les paramètres du modèle : connexion/fichier cloud et mode de refresh doivent être présents. Selon le scénario, la synchronisation fichier OneDrive/SharePoint peut être vérifiée environ toutes les heures ; Actualiser visuel/navigateur ne signifie pas que la source a été relue. Inspecter Version dans les quatre rapports après chaque mise àjour. Ne pas configurer arbitrairement une fréquence5min ou prétendre que scheduledrefresh et filesync sont identiques. [Microsoft : refresh](https://learn.microsoft.com/en-us/power-bi/connect-data/refresh-data).

Pour une connexion dont l’Actualisation planifiée est effectivement proposée, le responsable peut configurer une fréquence hebdomadaire après contrôle des credentials et quota ; le participant teste Actualiser maintenant et les versions. Si cette rubrique est absente, identifier le type réel de connexion au lieu d’inventer un bouton.

Supprimer un fichier et en créer un autre sous le même nom peut changer l’identité utilisée pour synchroniser. Utiliser modification/remplacement approprié sans casser l’identité du fichier selon règle SharePoint. Un upload local crée un apprentissage statique : il ne prouve pas refresh des futurs CSV SharePoint.

Le dashboard peut afficher un cache de tuile plus ancien que le rapport. Ouvrir le rapport, contrôler S02, puis rafraîchir les visuels/dashboard et vérifier. Ne pas mélanger dates/versions des modèles : quatre imports indépendants ne forment pas une transaction automatique.

## 10. Tests et dépannage

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


| Problème | Diagnostic simple | Action |
| --- | --- | --- |
| Copilot absent | Modelecture, mauvaismodèle, capacité/settings | Edit ; responsable vérifie, pas achat participant |
| CSV en une colonne | Séparateur/encodage ou fichier réenregistré | ReprendreCSVfourni, virguleUTF-8 ; contrôle aperçu |
| Cartes absentes | Champ numérique importé texte | Vérifier l’aperçu/import et modèle avec responsable ; pasformuleDAX |
| Rapport du mauvais sujet | Créé sur mauvais modèle | Repartir du modèle prévu ; ne pas changer à l’aveugle |
| Plus de valeurs attendues | Mauvais champ ou agrégation | P5 ciblé ; vérifier carte ; Pilotage1ligne |
| Pin absent | Droits ou visuel non compatible | Choisir visuelstandard épinglable ; pas boutoninventé |
| Anciennes données | Copie locale, sync/cache, mauvaisfichier | Vérifier connexion/historique/version dans chaque rapport |
| Lien inaccessible | Licence/droits du lecteur | Faire autoriser périmètre, pasPublishtoweb |

La fiche de validation laisse observations et captures à renseigner après exécution. Aucun test n’est prérempli comme réussi. La correction et les limites sont des livrables, pas des fautes de novice.

## 11. Livrables et évaluation

Tronc commun : deux sources importées, deux modèles, deux rapportsCopilot validés et dashboard avec6tuiles ; fichecomplétée et testS02. Extension : quatre modèles/quatre rapports et8tuiles ouplus, risques/jalons contrôlés. Le nombre de tuiles doit correspondre au scope réellement exécuté.

| Critère | Points | Attendu |
| --- | --- | --- |
| Préparation et chargement | 20 | Fichiers propres, bon cloud/workspace, modèleCSV réel |
| Rapports Copilot | 25 | Prompts précis, pages créées, sauvegardées et corrigées |
| Exactitude et lecture PMO | 25 | Valeurs justes, manques conservés, aucune décision inventée |
| Dashboard Power BI | 15 | Épinglage vers bon objet, tuiles et navigation testées |
| Actualisation et versions | 10 | Test S02 ou limite locale honnêtement déclarée |
| Sécurité/partage | 5 | Accès/licence vérifiés, pas partagepublic |
| Total | 100 |  |


Seuil indicatif70/100 avec valeurs exactes et aucune décisioninventée. Une extensionnon réalisée doit être signalée. Pas de notation sur DAX/PowerQuery/relations ni calcul de gainA/B. Une importation statique peut valider la création de rapports, pas la connexionactualisable.

## 12. Sécurité, limites et retour d’expérience

Données fictives, workspace/site privés, accès par rôles, cibles de partage testées. Aucun secret, adresse réelle de client, partagepublic ou activationbudget dans ce document. Les URLs réelles sont relevées après dépôt ; le pack n’invente pas un lien public/permanent du tenant.

Les données préparées ne peuvent pas valider elles-mêmes une décision métier : budget73% ne prouve pas dépassementfinal, risqueprioritaire ne prouve pas incident, approuver le rapport ne vaut pasGO.

Questions : Où sont les données ? Modèle ourapport ? Qu’a crééCopilot ? Comment aété créé le tableau de bord ? Quel chiffre avez-vous vérifié ? Comment reconnaître unmélangeS01/S02 ? Pourquoi un lien n’accorde-t-ilpas de droits ? Quelle décision reste humaine ?

Ce TP est vérifié sur les mécanismes Microsoft et les fichiers/chiffres, pas exécuté dans votre tenant. Le responsable doit tester une fois la connexionCSV cloud, Copilot et épinglage dans l’environnement exact avant la formation. Aucun modèle, dashboard, site ni envoi réel n’a été créé par le générateur du pack.
