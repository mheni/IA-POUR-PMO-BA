# TP — Planification d’un projet Business Intelligence avec Microsoft Project et l’IA

Dossier participant — Version 1.0 — Octobre 2026

Cas pédagogique fictif : NOVALIS Distribution. Toutes les personnes, données, coûts et contraintes sont inventés pour la formation. Le document n’est pas un modèle officiel ATOS.

avant de commencer regarder cette vidéo :https://www.youtube.com/watch?v=Ho08ahyc12s

## 1. Présentation du TP

Vous allez transformer une demande métier en planning pilotable : cadrage → WBS → réseau de tâches → ressources → arbitrages → planning optimisé → référence → suivi. Chaque atelier enrichit le même fichier Microsoft Project ; aucun exercice ne repart d’un fichier vide, sauf la création initiale.

Le travail porte sur la gestion du projet BI, pas sur l’écriture de SQL, de code ETL ou de mesures Power BI. Pour une activité technique, on définit un résultat, une durée, une dépendance, un responsable et un critère de validation.

Format recommandé : 14 heures nettes d’apprentissage en binômes PMO/BA, avec permutation des rôles. Un participant manipule et l’autre contrôle, puis ils échangent à l’atelier 6. Cette version approfondie constitue un TP dédié ; elle ne tient pas dans le seul créneau de trois heures de planification du programme initial.

| Séquence | Durée | Produit réutilisé ensuite |
| --- | --- | --- |
| Ateliers 1 à 3 | 150 min | Charte, WBS validée, structure Project |
| Ateliers 4 à 5 | 150 min | Réseau de tâches et jalons |
| Ateliers 6 à 7 | 150 min | Ressources, affectations, surcharge résolue |
| Ateliers 8 à 9 | 180 min | Analyse critique et scénario d’optimisation |
| Atelier 10 | 90 min | Référence et premier suivi |
| Projet final et restitution | 120 min | Dossier complet et soutenance |
| Total | 840 min | 14 heures hors pauses |

Le formateur peut répartir le TP sur deux jours. Distribuer le corrigé seulement après la construction autonome de la première WBS. Les tableaux de référence permettent ensuite de normaliser les fichiers pour obtenir un exercice de surcharge reproductible.

## 2. Contexte du projet

NOVALIS Distribution exploite 12 agences et vend des équipements à des clients professionnels. Les directions commerciale et financière consolident chaque mois des exports de l’ERP, du CRM et des objectifs commerciaux. Des divergences apparaissent sur le chiffre d’affaires net, les retours et le rattachement des clients aux agences.

Le sponsor souhaite une plateforme décisionnelle pilote permettant de consulter les ventes, la marge et l’atteinte des objectifs par agence, période et famille de produits. Le premier périmètre couvre les ventes françaises, 24 mois d’historique et une actualisation quotidienne. Les règles métier et les droits d’accès doivent être validés avant l’ouverture du service.

La plateforme cible comprend une zone de préparation, un Data Warehouse, un Data Mart commercial et trois dashboards. L’équipe réalise la plateforme ; les participants organisent et pilotent ce travail. La complexité technique est représentée par des durées de travail et des validations, pas par des développements à exécuter en classe.

## 3. Public cible

PMO, Business Analysts, chefs de projet, coordinateurs et profils fonctionnels connaissant les notions de tâche, livrable, risque et jalon. Aucune expérience approfondie en BI ou en Microsoft Project n’est requise.

La contribution PMO consiste à contrôler le réseau, les charges, les marges et les versions approuvées. La contribution BA consiste à clarifier le périmètre, les règles KPI, les validations, les acteurs métier et les critères de recette.

## 4. Prérequis

- Savoir utiliser un tableau et enregistrer des fichiers.
- Connaître la différence entre projet et activité récurrente.
- Comprendre les notions élémentaires de dépendance et de disponibilité.
- Disposer de Microsoft Project desktop sur Windows et d’un accès à une IA autorisée, ou utiliser les sorties fictives proposées par le formateur.
- Ne transmettre aucune donnée réelle de client à un service non autorisé.

Mini-test de démarrage : « Une tâche dure cinq jours et mobilise une personne à 50 %. Combien d’heures représente-t-elle avec une journée de huit heures ? » Réponse attendue : 20 heures dans les hypothèses de cet exercice. Une durée n’est pas une charge.

## 5. Objectifs pédagogiques

À la fin du TP, vous devez savoir analyser une demande BI, critiquer une WBS générée, construire tâches et jalons, estimer et justifier durées et travail, relier les activités, définir calendriers et ressources, affecter les capacités, identifier les surcharges, analyser le chemin critique, optimiser le planning, enregistrer une référence et suivre les écarts.

Vous devez surtout pouvoir expliquer vos choix : l’IA suggère, le BA clarifie, le chef de projet arbitre et Microsoft Project calcule à partir des paramètres réellement saisis.

## 6. Environnement technique

### Socle obligatoire

Microsoft Project desktop, par exemple une édition Standard ou Professional offrant les fonctionnalités de planification utilisées ici. Le fichier de travail est un `.mpp`. Les menus français sont indiqués ; leur intitulé ou leur position peuvent varier légèrement selon la version.

Prévoir le Diagramme de Gantt, le Tableau des ressources, l’Utilisation des ressources et le Gantt suivi. Ne pas confondre Microsoft Project desktop avec un plan Planner : les interfaces et possibilités ne sont pas interchangeables.

### IA et Copilot : vérifier avant la formation

Ne pas supposer l’existence d’un bouton Copilot dans Project desktop. La documentation Microsoft consultée décrit Planner Agent dans l’écosystème Planner/Copilot, avec disponibilité soumise aux licences, au tenant et aux décisions d’administration. Cela ne démontre pas une intégration Copilot native au client desktop utilisé pour ce TP. 

Mode A, toujours exploitable : produire et analyser des tableaux dans Microsoft 365 Copilot ou un LLM autorisé, puis reporter manuellement les propositions validées dans Project desktop.

Mode B, optionnel : si un assistant IA de planification est effectivement disponible dans l’environnement, lui fournir le même contexte et vérifier les résultats. Le formateur doit tester les actions réellement offertes avant la session. Si l’assistant crée un plan Planner, ne pas présumer qu’il devient automatiquement un fichier `.mpp` avec calendriers et affectations détaillées.

Mode C, sans IA accessible : utiliser les sorties fictives de l’atelier 2 et les propositions du corrigé. Les apprentissages de contrôle restent identiques.

Ne jamais demander à l’IA de prétendre avoir analysé un `.mpp` qu’elle ne peut pas lire. Fournir une exportation avec codes, durées, liens, dates calculées, marges, ressources et unités.

### Paramétrage commun reproductible

- Début du projet fictif : lundi 2 novembre 2026 à 08:00.
- Calendrier : lundi–vendredi, 08:00–12:00 et 13:00–17:00.
- Huit heures par jour et quarante heures par semaine.
- Aucun jour férié ni congé dans le modèle de référence : hypothèse volontairement simplifiée, à ne pas reproduire sans vérification sur un vrai projet.
- Tâches planifiées automatiquement ; calcul automatique activé.
- Tâches opérationnelles à durée fixe, non pilotées par l’effort, pour stabiliser le modèle pédagogique pendant les affectations.
- Liens Fin-Début sans décalage dans le réseau de référence.
- Contraintes « Dès que possible » ; pas de dates forcées, sauf éventuels essais dans une copie.
- Nivellement manuel, sans fractionnement dans l’exercice de comparaison.

Le choix « durée fixe » n’est pas une règle universelle. Il permet ici de conserver les estimations de durée quand on ajoute une contribution secondaire ; Project recalcule alors le travail. Pour une activité réellement accélérable par ajout de ressources, il faut discuter le travail et le type de tâche. 

## 7. Scénario fil rouge

### Mission et critères d’acceptation

Le pilote est accepté si les trois dashboards livrent des KPI documentés, si les données sont rapprochées avec un échantillon de référence validé par la finance, si les utilisateurs ne voient que les agences autorisées et si l’exploitation quotidienne est transférée à une équipe identifiée.

Les validations sont exercées dans le TP par le représentant métier et le sponsor. Les tâches de validation ont une durée ; les jalons matérialisant leur résultat ont une durée nulle.

### Trois événements successifs

1. L’équipe découvre que le même Data Engineer est affecté à deux développements simultanés à 100 % chacun. Le planning initial n’est pas faisable.
2. Après correction de la surcharge, le sponsor demande une livraison dix jours ouvrés plus tôt, soit deux semaines sur le calendrier pédagogique.
3. Après approbation et enregistrement de la référence optimisée, une anomalie allonge la conception des flux de deux jours. Il faut mesurer l’impact, pas réécrire discrètement la référence.

Chaque événement produit un fichier distinct ou une copie conservée : initial → faisable → optimisé → suivi.

## 8. Données initiales fournies aux participants

### 8.1 Demande métier à donner à l’IA

> Nous voulons un pilote BI commercial pour 12 agences : trois dashboards de ventes, marge et objectifs ; 24 mois d’historique ; actualisation quotidienne ; données issues d’un ERP, d’un CRM et d’un fichier d’objectifs. Le projet doit inclure cadrage, besoins, règles KPI, qualité des données, conception, flux ETL/ELT, entrepôt, rapports, tests, recette métier, formation, déploiement, stabilisation et transfert à l’exploitation. Un BA est disponible au maximum à 100 %, un représentant métier à 50 %, un Data Architect, un Data Engineer, un BI Developer, un QA et un référent IT à 100 %. Le chef de projet est disponible à 50 % et le PMO à 25 %. Les taux et estimations sont pédagogiques. Toute hypothèse non fournie doit être signalée. La recette métier et la formation sont obligatoires ; la mise en production nécessite un go/no-go et un contrôle post-déploiement.

### 8.2 Sources et échantillon d’anomalies

| Source | Contenu | Responsable d’accès | Point à clarifier |
| --- | --- | --- | --- |
| ERP | Factures, avoirs, articles et coûts | Finance / référent IT | Date comptable ou date de facture pour le CA ? |
| CRM | Clients, commerciaux et agences | Direction commerciale | Client en double et changement d’agence |
| Objectifs | Objectifs mensuels par agence | Contrôle de gestion | Version approuvée et historique |

Données pédagogiques : 3 % de clients du CRM n’ont pas de correspondance ERP ; 2 % des lignes d’objectifs ont un code d’agence obsolète ; les retours sont enregistrés comme avoirs. Ces chiffres sont fictifs. Ne pas déduire automatiquement leur impact financier : demander une analyse.

### 8.3 Fiche KPI à compléter

| Champ | Exemple / consigne |
| --- | --- |
| Nom | Chiffre d’affaires net |
| Finalité | Comparer réalisé et objectif |
| Formule | À valider avec la finance : factures moins avoirs, hors taxes |
| Grain | Mois × agence × famille de produits |
| Source | ERP, table ou export à confirmer |
| Règles | Période de rattachement, exclusions et conversion monétaire |
| Responsable | Direction financière |
| Critère de recette | Rapprochement documenté sur échantillon validé |

Compléter aussi marge et taux d’atteinte des objectifs. Ne pas inventer le traitement des coûts absents ou des objectifs nuls.

### 8.4 Ressources du cas

Tous les profils sont des ressources de type Travail, une personne par code. Les rôles combinés simplifient le TP ; sur un vrai projet ils pourraient être séparés. Les taux sont horaires et entièrement fictifs. Le coût journalier à 100 % est huit fois le taux horaire, et non un taux à appliquer à chaque journée calendaire.

| Code | Ressource | Groupe | Unités max. | Taux fictif €/h | Rôle |
| --- | --- | --- | --- | --- | --- |
| SP | Sponsor | Pilotage | 10% | 100 | Arbitrage et autorisation des jalons |
| CP | Chef de projet BI | Pilotage | 50% | 90 | Planification, arbitrages, coordination |
| PMO | PMO | Pilotage | 25% | 70 | Contrôle du planning et reporting |
| BA | Business Analyst | Fonctionnel | 100% | 75 | Besoins, KPI, spécifications et recette |
| MET | Représentant métier / Key User | Fonctionnel | 50% | 60 | Validation métier et tests utilisateurs |
| DA | Data Analyst | Data / BI | 100% | 70 | Analyse des sources et qualité des données |
| ARCH | Data Architect | Data / BI | 100% | 100 | Architecture et modèle décisionnel |
| DE | Data Engineer | Data / BI | 100% | 85 | Flux, entrepôt et alimentation |
| BI | BI Developer | Data / BI | 100% | 75 | Indicateurs, rapports et dashboards |
| IT | Référent infrastructure / DBA | IT | 100% | 85 | Accès, environnements, déploiement et exploitation |
| QA | QA / Test Engineer | Qualité | 100% | 65 | Préparation, exécution des tests et retests |
| FORM | Formateur / Change Manager | Accompagnement | 100% | 65 | Formation, communication et adoption |


Unités max. = capacité allouée à ce projet. Unités d’affectation = part de la journée consacrée à une tâche. Calendrier = créneaux réellement travaillés. Une ressource à 50 % d’unités max. avec un calendrier de huit heures offre ici quatre heures/jour au projet ; ne pas lui appliquer en plus un calendrier de quatre heures pour représenter la même réduction. [web:53][web:55]

Les affectations sont proposées dans le tableau de référence. Un profil à 100 % de capacité peut être affecté à 25 %, 50 % ou 100 % selon les tâches. Le sponsor est renseigné pour le coût et la validation, pas affecté aux jalons nuls.

### 8.5 Conventions et table de normalisation

Le modèle contient exactement 45 tâches opérationnelles, 7 jalons et 7 tâches récapitulatives, soit 59 lignes hors tâche récapitulative du projet. Les 45 activités sont le nombre évalué : les phases et jalons ne sont pas comptés comme activités opérationnelles.

Les identifiants Project ci-dessous sont valables si les lignes sont créées dans cet ordre, sans ajouter de ligne. Les codes I1, A1, etc., sont des identifiants pédagogiques stables à saisir dans Texte1, renommé « Code activité ». Les liens sont saisis avec les ID Project, jamais avec ces codes. Si l’ordre change, reconstruire la correspondance code/ID.

R1 et R2 sont intentionnellement parallèles et affectés au même DE pour créer la surcharge. Ne pas corriger ce piège avant l’atelier 7. Toutes les lignes récapitulatives sont sans ressource, sans durée saisie et sans lien.

| ID Project | Code | Phase / activité | Durée (j ouvrés) | Prédécesseurs (codes) | Prédécesseurs (ID) | Affectations (%) |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | P1 | Initialisation |  | — | — | — |
| 2 | I1 | Identifier et qualifier le besoin | 2 | — | — | BA:50;CP:25 |
| 3 | I2 | Identifier les parties prenantes | 1 | I1 | 2 | BA:50;PMO:25 |
| 4 | I3 | Définir objectifs, périmètre et exclusions | 2 | I2 | 3 | BA:50;CP:25 |
| 5 | I4 | Définir livrables, contraintes et charte projet | 2 | I3 | 4 | CP:50;PMO:25 |
| 6 | I5 | Faire valider le cadrage | 1 | I4 | 5 | CP:25;SP:10 |
| 7 | J1 | Projet officiellement lancé | 0 | I5 | 6 | — |
| 8 | P2 | Analyse et spécifications |  | — | — | — |
| 9 | A1 | Préparer et conduire les ateliers de besoins | 4 | J1 | 7 | BA:50;MET:25 |
| 10 | A2 | Analyser les processus métier | 3 | A1 | 9 | BA:50 |
| 11 | A3 | Définir et documenter les KPI | 3 | A2 | 10 | BA:50;MET:25 |
| 12 | A4 | Inventorier les sources et obtenir les accès | 3 | J1 | 7 | DA:50;IT:50 |
| 13 | A5 | Analyser la qualité des données | 4 | A4 | 12 | DA:50 |
| 14 | A6 | Rédiger les spécifications fonctionnelles | 4 | A3;A5 | 11;13 | BA:50;DA:25 |
| 15 | A7 | Faire valider les spécifications | 2 | A6 | 14 | BA:50;MET:25 |
| 16 | J2 | Spécifications validées | 0 | A7 | 15 | — |
| 17 | P3 | Conception |  | — | — | — |
| 18 | C1 | Concevoir les parcours et règles fonctionnelles | 3 | J2 | 16 | BA:50 |
| 19 | C2 | Concevoir l’architecture BI et les accès | 4 | J2 | 16 | ARCH:100;IT:25 |
| 20 | C3 | Concevoir le modèle de données | 4 | C2;C1 | 19;18 | ARCH:100 |
| 21 | C4 | Concevoir le Data Warehouse et le Data Mart | 3 | C3 | 20 | ARCH:100 |
| 22 | C5 | Concevoir les flux d’alimentation | 3 | C4;A5 | 21;13 | DE:100 |
| 23 | C6 | Concevoir les maquettes de dashboards | 4 | C1 | 18 | BI:100;MET:25 |
| 24 | C7 | Revoir et faire valider la conception | 2 | C5;C6 | 22;23 | ARCH:100;BA:25 |
| 25 | J3 | Architecture et conception validées | 0 | C7 | 24 | — |
| 26 | P4 | Réalisation |  | — | — | — |
| 27 | R1 | Développer les flux ETL/ELT | 8 | J3 | 25 | DE:100 |
| 28 | R2 | Développer le modèle et créer le Data Warehouse | 6 | J3 | 25 | DE:100 |
| 29 | R3 | Alimenter le Data Warehouse pilote | 4 | R1;R2 | 27;28 | DE:100 |
| 30 | R4 | Développer et vérifier les indicateurs | 4 | R3 | 29 | BI:100;BA:25 |
| 31 | R5 | Développer les rapports | 4 | R4 | 30 | BI:100 |
| 32 | R6 | Développer les dashboards | 4 | R5 | 31 | BI:100 |
| 33 | R7 | Intégrer les composants BI | 3 | R6;R3 | 32;29 | BI:100;DE:50 |
| 34 | J4 | Version BI prête pour les tests | 0 | R7 | 33 | — |
| 35 | P5 | Tests et recette |  | — | — | — |
| 36 | T1 | Préparer jeux de données et cahier de tests | 3 | J3 | 25 | QA:100;BA:25 |
| 37 | T2 | Exécuter les tests techniques | 3 | J4;T1 | 34;36 | QA:100;DE:25 |
| 38 | T3 | Exécuter les tests d’intégration | 3 | T2 | 37 | QA:100 |
| 39 | T4 | Exécuter les tests fonctionnels | 3 | T3 | 38 | QA:100;BA:25 |
| 40 | T5 | Corriger les anomalies et retester | 4 | T4 | 39 | BI:100;QA:50 |
| 41 | T6 | Conduire la recette métier | 4 | T5 | 40 | BA:50;MET:50;QA:25 |
| 42 | T7 | Obtenir la validation finale et le go/no-go | 1 | T6 | 41 | CP:25;MET:25 |
| 43 | J5 | Recette validée | 0 | T7 | 42 | — |
| 44 | P6 | Déploiement / Mise en production |  | — | — | — |
| 45 | D1 | Préparer le plan de déploiement et de retour arrière | 2 | T4 | 39 | IT:50;CP:25 |
| 46 | D2 | Préparer et vérifier les environnements | 3 | D1 | 45 | IT:100 |
| 47 | D3 | Former les utilisateurs pilotes | 2 | T5 | 40 | FORM:100;MET:25 |
| 48 | D4 | Déployer et migrer en production | 1 | J5;D2;D3 | 43;46;47 | IT:100;DE:50 |
| 49 | D5 | Vérifier les données et accès en production | 1 | D4 | 48 | QA:100;IT:50 |
| 50 | J6 | Mise en production | 0 | D5 | 49 | — |
| 51 | D6 | Accompagner le démarrage et stabiliser | 3 | J6 | 50 | BI:50;FORM:50 |
| 52 | P7 | Clôture |  | — | — | — |
| 53 | L1 | Finaliser la documentation opérationnelle | 2 | J6 | 50 | BA:50;BI:25 |
| 54 | L2 | Transférer le service aux équipes opérationnelles | 2 | D6;L1 | 51;53 | IT:50;BI:25 |
| 55 | L3 | Établir le bilan du projet | 1 | L2 | 54 | CP:50;PMO:25 |
| 56 | L4 | Organiser le retour d’expérience | 1 | L3 | 55 | PMO:25;BA:25 |
| 57 | L5 | Effectuer la clôture administrative | 1 | L4 | 56 | CP:25;PMO:25 |
| 58 | L6 | Tenir la réunion de clôture | 1 | L5 | 57 | CP:25;SP:10 |
| 59 | J7 | Projet clôturé | 0 | L6 | 58 | — |


Règle particulière de la phase 6 : J6 intervient après D5, puis D6 représente l’accompagnement après mise en production. Il ne faut pas placer J6 après la stabilisation uniquement pour qu’il soit visuellement la dernière ligne de la phase.

Le CSV fourni avec ce dossier reproduit cette table. Il sert d’aide à la saisie, pas de remplacement de la construction pédagogique. Le niveau hiérarchique reste à appliquer dans Project après import éventuel. Le séparateur de prédécesseurs affiché par Project dépend des paramètres régionaux ; remplacer les points-virgules par le séparateur local si nécessaire.

## 9. Atelier 1 — Comprendre et cadrer le projet

Durée : 45 minutes. Entrée : demande métier et sources. Sortie réutilisée : charte et hypothèses pour la WBS.

### Objectif

Distinguer besoin, solution, périmètre, livrables et critères d’acceptation. Identifier les décisions nécessaires avant toute estimation.

### Situation

La direction demande « des dashboards fiables ». Cette phrase ne précise ni la formule de marge ni les droits ni le traitement des avoirs.

### Consigne

Rédigez une charte d’une page : problème, objectifs, inclusions, exclusions, trois livrables majeurs, acteurs de validation, contraintes, hypothèses et cinq questions ouvertes. Complétez une fiche pour chacun des trois KPI. Écartez du pilote la paie, la logistique détaillée et le temps réel. Toute extension doit passer par un arbitrage.

### Prompt IA

```text
Agis comme un Business Analyst aidant un PMO à cadrer un pilote BI.
Voici la demande, les sources et les KPI : [coller 8.1, 8.2 et 8.3].
Produis une fiche de cadrage avec problème, objectifs mesurables à confirmer,
périmètre, exclusions, livrables, parties prenantes, hypothèses et questions.
Sépare faits fournis, hypothèses proposées et décisions à obtenir.
N’invente pas les règles de calcul, le budget ni une obligation réglementaire.
Propose des critères d’acceptation vérifiables pour les trois dashboards.
```

Vérifiez que l’IA ne transforme pas « fiable » en seuil numérique approuvé et ne suppose pas que les accès sources sont déjà disponibles.

### Actions dans Microsoft Project

1. Fichier → Nouveau → Projet vierge ; enregistrer le fichier initial.
2. Projet → Informations sur le projet : planifier à partir de la date de début, 02/11/2026 à 08:00.
3. Projet → Modifier le temps de travail : créer un calendrier « BI-8h » à partir du Standard ; vérifier les horaires.
4. Fichier → Options → Échéancier : 8 h/jour, 40 h/semaine ; nouvelles tâches planifiées automatiquement.
5. Revenir dans Informations sur le projet et sélectionner le calendrier BI-8h.
6. Conserver la charte dans le dossier et inscrire son résumé dans les notes de la tâche récapitulative du projet si elle est affichée.

Le calendrier répond à un besoin de gestion : toutes les estimations doivent utiliser la même unité de jour.

### Livrable

Charte, trois fiches KPI et fichier Project initial paramétré.

### Contrôle

Pas de confusion entre objectif et outil ; pas de validation prétendument obtenue ; pas de périmètre supplémentaire implicite ; calendrier et conversion heures/jours cohérents.

### Débriefing / validation

Pourquoi « livrer trois dashboards » ne suffit-il pas comme critère de succès ? Qui valide la formule de marge ? Quel effet aurait un calendrier de sept heures sur les charges ?

## 10. Atelier 2 — Utiliser l’IA pour générer une première WBS

Durée : 45 minutes. Entrée : charte. Sortie : WBS révisée.

### Objectif

Obtenir une première structure, puis reconnaître ses omissions et hypothèses.

### Situation

Vous devez organiser le travail en sept phases sans confondre WBS et chronologie détaillée.

### Consigne

Générez une WBS, comparez-la aux exigences et corrigez au moins cinq éléments. Chaque correction doit indiquer le risque évité. Une proposition déjà correcte ne doit pas être modifiée artificiellement : utilisez alors la sortie défectueuse fournie ci-dessous.

### Prompt IA — Exercice IA 1

```text
Génère une première structure WBS pour ce projet BI.
Contexte et charte validée : [coller la charte de l’atelier 1].
Utilise exactement sept phases : Initialisation ; Analyse et spécifications ;
Conception ; Réalisation ; Tests et recette ; Déploiement / Mise en production ; Clôture.
Sous chaque phase, propose les lots de travail et leurs livrables vérifiables.
Couvre KPI, qualité des données, accès, conception BI, flux, entrepôt,
dashboards, tests, recette, formation, stabilisation et transfert.
Ne donne pas encore de dates. Signale les questions et hypothèses.
Une WBS n’est pas une preuve que les ressources et durées sont validées.
```

### Sortie volontairement défectueuse à critiquer

> 1. Cadrage (déjà approuvé). 2. Développement des dashboards, 5 jours. 3. Création automatique des KPI. 4. Mise en production avant recette pour recueillir des retours. 5. Tests et formation, facultatifs. 6. Clôture immédiatement après déploiement. Ressources : un développeur réalise tout.

Défauts attendus : phase analyse absente, règles KPI non validées, sources et qualité oubliées, estimation sans base, conception absente, recette déplacée, formation facultative, transfert absent, ressources non crédibles, cadrage déclaré approuvé sans preuve.

### Actions dans Microsoft Project

Insérer la colonne Texte1 et la renommer « Code activité ». Consigner le titre des sept phases proposées et leur justification dans les notes, sans encore créer les activités. Ne saisir aucune date de fin proposée par l’IA.

### Livrable

WBS à sept phases et registre « proposition IA / décision humaine / justification ».

### Contrôle

La WBS couvre le périmètre sans inclure de nouveaux produits. Les livrables ont un valideur. Les essais et validations ne sont pas regroupés sous « divers ».

### Débriefing / validation

Pourquoi une WBS peut-elle être complète en apparence et oublier la qualité des données ? Quelle différence entre décomposition du travail et ordre de réalisation ?

## 11. Atelier 3 — Construire la WBS dans Microsoft Project

Durée : 60 minutes. Entrée : WBS corrigée. Sortie : hiérarchie Project.

### Objectif

Traduire la WBS en phases récapitulatives et sous-tâches sans perturber le calcul.

### Situation

Le sponsor veut lire une vue synthétique par phase, tandis que l’équipe doit voir les activités détaillées.

### Consigne

Créez les sept phases et les activités de votre proposition. Après revue, normalisez la structure avec la table 8.5 pour la suite du TP. Les lignes de jalon peuvent être réservées dès maintenant ; leur durée et leurs liens seront vérifiés à l’atelier 5.

### Prompt IA

```text
Compare ma WBS [coller] avec le périmètre validé [coller].
Repère doublons, lots sans livrable et éléments manquants.
Ne propose pas de dépendances au niveau des phases récapitulatives.
Retourne un tableau : élément, problème, correction, justification.
```

### Actions dans Microsoft Project

1. Vue Diagramme de Gantt : saisir les phases, puis les activités sous chaque phase.
2. Sélectionner les activités et utiliser Tâche → Abaisser la tâche pour les placer un niveau sous la phase.
3. Ne pas abaisser les phases principales sous la phase précédente.
4. Afficher les colonnes ID, Code activité, Numéro hiérarchique ou WBS, Mode tâche, Nom et Durée.
5. Choisir la planification automatique pour toutes les tâches opérationnelles.
6. Replier les sous-tâches pour vérifier les sept phases ; développer pour contrôler le détail.
7. Si nécessaire, Projet → WBS → Définir le code : utiliser un masque cohérent. Le numéro hiérarchique automatique suffit pour ce TP.

Ne jamais saisir une durée totale ou affecter une équipe directement à une phase récapitulative : elle synthétise ses enfants.

### Livrable

Structure de 59 lignes hors récapitulatif projet, avec sept phases et 45 activités identifiables.

### Contrôle

Pas de ligne orpheline ; pas de phase absorbée par une autre ; pas de ressource sur une phase ; codes pédagogiques uniques ; IDs conformes ou correspondance mise à jour.

### Débriefing / validation

Que calcule Project sur une tâche récapitulative ? Pourquoi éviter d’y lier d’autres phases ? Un code WBS décrit-il une date ?

## 12. Atelier 4 — Définir les tâches, durées et dépendances

Durée : 100 minutes. Entrée : structure. Sortie : réseau initial.

### Objectif

Passer d’une liste d’activités à un réseau calculable et justifier les estimations.

### Situation

Certaines activités peuvent se dérouler en parallèle, mais une dashboard ne peut pas être recettée sur des règles KPI non approuvées.

### Consigne

Proposez des durées avant de consulter les valeurs de référence. Documentez trois estimations : unité de travail, volume, expert consulté et incertitude. Normalisez ensuite avec 8.5. Reliez les tâches détaillées et réservez les liens vers les jalons à compléter à l’atelier 5.

### Prompt IA — Exercice IA 2

```text
À partir de cette WBS et de la charte [coller], propose entre 35 et 50
activités opérationnelles, des sous-tâches et sept jalons de validation.
Pour chaque activité : code stable, phase, libellé orienté action,
livrable, durée en jours ouvrés, prédécesseurs par code, justification
et niveau d’incertitude. Liens Fin-Début par défaut.
Distingue dépendance logique et choix d’organisation.
N’impose aucune date calendaire et ne prétends pas que ces estimations sont approuvées.
```

Vérifier particulièrement les estimations « 1 jour » universelles, l’oubli des validations, les cycles de dépendance et le parallélisme sans ressource disponible.

### Actions dans Microsoft Project

1. Insérer Type et Pilotée par l’effort ; configurer les activités en Durée fixe et non pilotées par l’effort, avant les affectations.
2. Saisir les durées, par exemple `4j` ; ne pas saisir des dates de début/fin à la place des liens.
3. Double-cliquer une activité → Informations sur la tâche → Prédécesseurs, ou utiliser la colonne Prédécesseurs et les ID.
4. Utiliser les liens Fin-Début. Dans la boîte Prédécesseurs, lire le nom des tâches pour vérifier la correspondance.
5. Informations sur la tâche → Avancées : conserver Dès que possible et aucun décalage.
6. Afficher le Gantt et contrôler les parallélismes A1/A4, C1/C2 et C6/C4.
7. Inspecter une tâche avec l’inspecteur disponible, ou via Informations sur la tâche, pour expliquer sa date.

Mini-expérience, dans une copie : appliquer un lien Début-Début entre deux activités susceptibles de travailler sur une version intermédiaire. Écrire le prérequis métier nécessaire. Annuler si ce prérequis n’est pas démontré. La parallélisation n’est pas justifiée uniquement par une préférence de date.

### Livrable

Réseau initial avec durées justifiées et registre d’hypothèses. Le calcul n’est final qu’après l’atelier 5.

### Contrôle

Pas de boucle ; pas de lien avec soi-même ; pas de liens sur les phases ; pas de longs décalages utilisés pour masquer une activité ; pas de dates forcées héritées d’un copier-coller.

### Débriefing / validation

Pourquoi A4 peut-elle démarrer avec J1 sans attendre les KPI ? Une dépendance de ressource est-elle identique à une dépendance technique ? Que risque-t-on à remplacer un lien par une date fixe ?

## 13. Atelier 5 — Définir les jalons

Durée : 50 minutes. Entrée : réseau. Sortie : gates de validation.

### Objectif

Rendre les décisions de passage visibles et distinguer jalon, activité et échéance.

### Situation

Le sponsor veut savoir à quel moment le projet est engagé et quand chaque phase est validée.

### Consigne

Créer les sept jalons de 8.5. Pour chacun, écrire une preuve, un valideur et une condition de non-passage. La mise en production correspond à l’acceptation des vérifications après déploiement ; l’accompagnement vient ensuite.

### Prompt IA

```text
Pour les sept jalons [coller les libellés] et ce projet [coller la charte],
propose un critère de passage, une preuve et un valideur.
Ne considère pas la simple fin d’une tâche comme une preuve d’approbation.
Signale les cas où l’autorité de validation doit être confirmée.
```

### Actions dans Microsoft Project

1. Saisir `0j` sur J1 à J7 et vérifier l’apparition du symbole de jalon.
2. Affecter leurs prédécesseurs d’après 8.5, puis compléter les liens des activités qui attendent ces jalons.
3. Ne leur affecter aucune ressource : la durée de validation et son travail sont portés par I5, A7, C7, T7 ou L6.
4. Ajouter dans les notes les critères de passage.
5. Sur J6 : Informations → Avancées → Échéance ; utiliser la date de mise en production initialement calculée comme cible provisoire, puis la faire réviser après l’arbitrage de l’atelier 9.
6. Afficher Indicateurs et Échéance. Ne pas utiliser « Doit finir le » pour représenter une cible.

Une échéance permet de signaler un dépassement sans généralement forcer la date calculée comme une contrainte rigide. [web:50]

### Livrable

Sept jalons à durée nulle ; Gantt initial complet et cible provisoire visible.

### Contrôle

Jalon validé avant la tâche de validation ? J6 situé après D6 ? Jalon avec une durée de cinq jours ? Contrat de livraison supposé ferme sans arbitrage ? Corriger ces confusions.

### Débriefing / validation

Où se trouve le travail de validation ? Pourquoi une échéance est-elle préférable à une date forcée dans cet exercice ? Peut-on mettre en production avant J5 ?

## 14. Atelier 6 — Identifier et gérer les ressources

Durée : 60 minutes. Entrée : réseau et rôles. Sortie : pool de ressources.

### Objectif

Distinguer compétences requises, capacité allouée et temps réellement disponible.

### Situation

Le métier ne consacre que la moitié de son temps au pilote ; la disponibilité du sponsor est faible. Il ne suffit pas d’écrire « équipe BI » sur chaque tâche.

### Consigne

Proposez un pool utile, comparez-le à 8.4 puis saisissez les 12 profils du modèle. Justifiez pourquoi aucun développeur logiciel généraliste ni spécialiste DevOps supplémentaire n’est indispensable dans ce périmètre pédagogique.

### Prompt IA — Exercice IA 3

```text
Pour chacune des activités du tableau [coller codes, tâches et durées],
identifie les profils nécessaires et explique leur rôle.
Contrainte : partir du pool fourni [coller 8.4], sans multiplier les profils.
Distingue exécutant principal, contributeur et valideur.
Signale les compétences manquantes et les hypothèses de disponibilité.
Ne déduis pas une capacité d’une simple présence dans l’organigramme.
```

### Actions dans Microsoft Project

1. Affichage → Tableau des ressources ; saisir noms, Type Travail, Groupe, Unités max. et Taux standard en €/h.
2. Ouvrir Informations sur la ressource pour chacune ; contrôler son calendrier de base BI-8h.
3. Utiliser Informations → Général → Disponibilité de la ressource si une capacité varie entre dates ; conserver les capacités constantes pour le modèle de référence.
4. Exercice de calendrier, dans une copie : ouvrir le calendrier BA et ajouter une absence le 05/11/2026. Affecter BA à I3 à l’atelier suivant et comparer les dates obtenues.
5. Retirer l’exception ou revenir à la version sans absence avant la comparaison chiffrée du corrigé.

Cette manipulation répond à une vraie question : une indisponibilité datée n’est pas la même chose qu’une capacité permanente réduite. [web:53][web:55]

### Livrable

Pool de 12 ressources et preuve de l’expérience sur le calendrier BA.

### Contrôle

Taux horaire saisi comme journalier ? Doublon entre « BA » et « Business Analyst » ? Sponsor à 100 % ? Disponibilité réduite deux fois ? Calendrier de ressource ignoré ?

### Débriefing / validation

Une ressource à 50 % peut-elle travailler à 100 % sur deux tâches simultanées ? Que représente une unité max. de 200 % si le nom est celui d’une seule personne ? Quand utiliser une exception de calendrier ?

## 15. Atelier 7 — Affecter les ressources et détecter les surcharges

Durée : 90 minutes. Entrée : pool et réseau. Sortie : plan faisable.

### Objectif

Calculer le travail, détecter un conflit daté et comparer résolution manuelle et nivellement.

### Situation

R1 et R2 démarrent après J3. Elles sollicitent le seul Data Engineer à 100 % chacune : le même jour, 16 heures sont demandées pour huit heures disponibles.

### Consigne

Appliquez toutes les affectations de 8.5. Identifiez la surcharge du DE, ses dates et son volume. Comparez trois options : séquencer, ajouter une ressource compétente, réduire les unités avec allongement réaliste des durées. Pour la version faisable de référence, conserver un seul DE et faire R2 avant R1.

### Prompt IA

```text
Voici mes affectations : [coller codes, dates, durées, travail et unités].
Voici les capacités et calendriers : [coller].
Analyse la surcharge du Data Engineer sans inventer de dates.
Propose trois solutions et explique effets sur fin projet, coût et risque.
N’affirme pas qu’un nivellement réduit automatiquement la durée totale.
```

### Actions dans Microsoft Project

1. Sélectionner une tâche → Ressource → Affecter les ressources ; saisir les unités proposées, pas seulement le nom.
2. Vérifier Informations sur la tâche → Ressources ; afficher Travail et Coût.
3. Contrôler R1 : 8 j × 8 h × 100 % = 64 h ; R2 : 6 j × 8 h × 100 % = 48 h.
4. Contrôler A1 : BA 50 % = 16 h ; MET 25 % = 8 h ; travail total = 24 h sur quatre jours. Les contributions secondaires ne sont pas gratuites.
5. Affichage → Utilisation des ressources : développer DE, afficher Travail et Surallocation ; régler l’échelle sur le jour.
6. Pendant les six premiers jours de réalisation, constater 200 % de demande sur 100 % de capacité : 48 h d’excès cumulées sur cette fenêtre.
7. Enregistrer une copie « Essai-nivellement ». Ressource → Options de nivellement : manuel, analyse jour par jour, désactiver « uniquement dans la marge disponible », éviter le fractionnement pour cette comparaison ; lancer le nivellement sur DE.
8. Relever la nouvelle fin, les décalages et les liens inchangés. Le résultat dépend des priorités et options ; il peut différer du séquencement retenu.
9. Dans la version principale, effacer les effets du nivellement d’essai. Ajouter R2 comme prédécesseur de R1, en gardant J3 si souhaité. R2 reste après J3, R3 attend R1 et R2.
10. Vérifier l’absence de surcharge journalière sur toutes les ressources ; sauvegarder la version faisable.

Avec les hypothèses du modèle, le séquencement ajoute six jours ouvrés au projet. Ce n’est pas une perte arbitraire : le planning initial avait ignoré une limite de capacité.

### Livrable

Capture de la surcharge initiale, tableau comparatif des solutions et fichier faisable sans surcharge.

### Contrôle

Ne pas masquer la surcharge en passant DE à 200 % sans créer de capacité réelle. Ne pas réduire les unités d’une tâche à durée fixe sans contrôler que son travail et sa promesse de résultat restent plausibles. Le nivellement n’est pas une validation métier du nouvel ordre.

### Débriefing / validation

Pourquoi ajouter une ressource sur une tâche à durée fixe ne raccourcit-il pas mécaniquement sa durée ? Quelle différence entre 48 h de surcharge dans une fenêtre et 112 h de travail total sur R1/R2 ? Le nouveau lien R2→R1 est-il technique ou organisationnel ?

## 16. Atelier 8 — Analyser le chemin critique

Durée : 60 minutes. Entrée : planning faisable. Sortie : analyse de sensibilité.

### Objectif

Identifier les activités qui pilotent la fin et comprendre les marges.

### Situation

Le sponsor demande de concentrer les efforts sur les activités qui peuvent réellement faire avancer la livraison.

### Consigne

Identifiez le chemin critique du plan faisable, trois activités non critiques et deux activités à faible marge. Simulez +2 jours sur C5, puis sur A4. Comparez l’effet sur J6 et J7 ; annulez les essais.

### Prompt IA

```text
Voici le planning calculé dans Project : [coller codes, durées,
prédécesseurs, début, fin, marge totale et indicateur critique].
Explique quelles activités pilotent J6 et J7 et pourquoi.
Ne confonds pas durée longue et criticité.
Propose deux tests de sensibilité et annonce les effets à vérifier,
pas des conclusions que tu ne peux pas calculer à partir des données.
```

### Actions dans Microsoft Project

1. Diagramme de Gantt → Format → Tâches critiques ; afficher Marge totale et Critique.
2. Trier ou filtrer les tâches détaillées, sans modifier leurs liens ni mélanger les phases.
3. Lire Informations sur la tâche et les prédécesseurs pour expliquer chaque activité critique.
4. Dans une copie, modifier la durée de C5 de 3 à 5 jours ; relever les nouvelles dates.
5. Revenir au fichier faisable, puis modifier A4 de 3 à 5 jours ; comparer.
6. Revenir au modèle sans modification et enregistrer les observations dans le registre d’arbitrage.

Le chemin critique signale les activités dont le retard peut repousser la fin ; Project le calcule à partir du réseau et des paramètres saisis. Une activité importante pour le métier n’est pas nécessairement critique pour la date finale. [web:51]

### Livrable

Gantt annoté, liste des activités critiques et résultat des deux tests de sensibilité.

### Contrôle

Ressources nivelées mais délai oublié ? Marges changées par une échéance trop serrée ? Plusieurs chemins critiques après optimisation ? Liste rouge assimilée à « toutes les tâches à financer » ?

### Débriefing / validation

Peut-on accélérer la fin en raccourcissant une tâche avec cinq jours de marge ? Le chemin critique reste-t-il identique après ajout d’une ressource ? Quelle marge protège l’analyse des sources dans ce cas ?

## 17. Atelier 9 — Utiliser l’IA pour challenger et optimiser le planning

Durée : 120 minutes. Entrée : planning faisable. Sortie : scénario choisi et testé.

### Objectif

Comparer des propositions d’optimisation par effet calculé, faisabilité, coût et risque.

### Situation

Le sponsor demande J6 et J7 dix jours ouvrés plus tôt que dans le plan faisable. Il peut accepter des renforts temporaires, mais pas la suppression de la recette, de la formation ou des contrôles d’accès.

### Consigne

Produisez au moins trois scénarios. Testez dans Project celui que vous recommandez. Un scénario n’est accepté que si le gain est calculé, les ressources disponibles sont identifiées et les critères métier sont conservés.

### Prompt IA — Exercice IA 4

```text
Analyse ce planning de projet BI et identifie les incohérences,
dépendances manquantes, tâches trop longues, risques de surcharge
et possibilités de parallélisation.
Données calculées : [coller tableau complet avec codes, liens, dates,
unités, travail, calendriers, capacités et marges].
Contraintes métier : [coller charte et gates].
Classe tes constats : prouvé par les données / hypothèse / question.
Pour chaque recommandation, indique le test à réaliser dans Project.
N’invente pas de marge ou de date ; ne supprime aucun contrôle obligatoire.
```

### Prompt IA — Exercice IA 5

```text
Le projet doit être livré deux semaines plus tôt : ici dix jours ouvrés
sur le calendrier lundi-vendredi de huit heures.
À partir du planning faisable joint [coller export et capacités],
propose trois scénarios en identifiant tâches parallélisables,
ressources supplémentaires, charge, coût indicatif et risques.
Distingue réduction de périmètre, ajout de capacité et modification des liens.
Garde recette, formation, go/no-go et contrôles post-déploiement.
Ne promets pas dix jours de gain avant simulation dans Project.
```

### Actions dans Microsoft Project

1. Créer trois copies du fichier faisable ; garder une version témoin.
2. Scénario A : créer DE2, Travail, 100 %, 85 €/h, calendrier BI-8h. Affecter R2 à DE2 au lieu de DE ; retirer le lien organisationnel R2→R1, garder les liens techniques.
3. Scénario B : à partir de A, créer BI2, Travail, 100 %, 75 €/h. Pour R6, affecter BI et BI2 à 100 % chacun et passer la durée à 2 j après confirmation que les deux modules sont divisibles. Vérifier 16 h par personne, soit 32 h au total, comme dans R6 initiale.
4. Scénario C : à partir de B, sur T5, affecter BI et BI2 à 100 % ; QA à 50 %. Passer la durée à 2 j. Vérifier le travail BI total inchangé, mais le travail QA réduit de 16 à 8 h : l’accepter seulement sous hypothèse explicite de retests plus ciblés et automatisés préparés par l’équipe. Le formateur joue le responsable QA pour valider ou refuser cette hypothèse.
5. Alternative si QA refuse : conserver 16 h QA en passant QA à 100 % sur T5 de 2 j ; vérifier qu’aucune autre tâche QA ne chevauche T5. C’est l’option recommandée pour préserver le travail QA du modèle.
6. Contrôler fin, marges, travail et surcharges ; recalculer le coût total et le coût des renforts. Ne pas attribuer automatiquement un coût supplémentaire égal à tous les jours gagnés.
7. Choisir C avec QA à 100 %, documenter les conditions, puis mettre l’échéance de J6 à la nouvelle cible approuvée.

Le scénario de référence C récupère six jours grâce au second DE, deux grâce à R6 et deux grâce à T5 : dix jours par rapport au plan faisable. Ce calcul dépend du réseau fourni, pas d’une promesse générale de parallélisation.

### Livrable

Comparatif A/B/C, fichier optimisé, arbitrage sponsor et preuves de validation des nouvelles estimations.

### Contrôle

Ne pas seulement changer une durée pour atteindre une date. BI2 doit être disponible et capable de travailler indépendamment. DE2 nécessite coordination et accès. Ajouter deux personnes sur une tâche non divisible ne suffit pas. Contrôler la charge QA après compression.

### Débriefing / validation

Quelles recommandations IA avez-vous refusées ? Quelle hypothèse produit les deux jours de gain sur R6 ? Pourquoi le coût n’augmente-t-il pas forcément dans ce modèle à taux égaux et travail conservé ? Quels coûts de coordination le modèle simplifié oublie-t-il ?

## 18. Atelier 10 — Baseline et préparation du suivi

Durée : 90 minutes. Entrée : plan optimisé approuvé. Sortie : référence et état d’avancement.

### Objectif

Conserver la promesse approuvée, saisir des faits et mesurer un écart sans effacer l’historique.

### Situation

Le sponsor approuve le scénario C avec QA à 100 % sur T5. La référence doit être figée avant l’événement de retard.

### Consigne

Enregistrez une référence sur tout le projet. Ensuite, positionnez la date d’état au soir de la fin de C4. Les activités réellement terminées à cette date sont validées selon le scénario ci-dessous ; C5 demande finalement cinq jours au lieu de trois.

### Prompt IA

```text
Voici la référence approuvée et l’état actualisé [coller début/fin de
référence, début/fin courants, travail, durées et faits d’avancement].
Rédige une note PMO de 150 mots : faits, écarts, impact sur les jalons,
actions proposées et décision attendue.
Ne réécris pas la référence, ne transforme pas une prévision en réalisation
et ne présente pas les pourcentages de durée comme des pourcentages de valeur métier.
```

### Actions dans Microsoft Project

1. Projet → Définir la planification initiale / Définir la référence, selon version → ensemble du projet. Vérifier que la référence contient début, fin, durée, travail et coût.
2. Affichage → Gantt suivi ; ajouter Début de référence, Fin de référence, Variation de fin, Durée réelle, Durée restante et % achevé.
3. Projet → Informations sur le projet → Date d’état : fin calculée de C4 à 17:00.
4. Données simulées : toutes les tâches d’initialisation et d’analyse sont terminées selon leurs dates prévues ; C1 à C4 et C6 sont terminées selon leurs dates prévues. Ne marquer aucune autre tâche comme terminée.
5. Saisir pour ces tâches un avancement de 100 % en vérifiant les débuts/fins réels ; si Project propose des dates différentes des faits fournis, corriger les champs réels.
6. C5 n’a pas commencé à la date d’état : Durée réelle = 0 j, Durée restante = 5 j. Ne pas saisir un pourcentage arbitraire.
7. Recalculer et constater l’écart sur J6/J7, les activités critiques et la fin projet.
8. Si nécessaire, Projet → Mettre à jour le projet → replanifier le travail non achevé après la date d’état ; vérifier les effets avant validation.
9. Enregistrer une version « Suivi ». Ne pas remplacer la référence approuvée. Une nouvelle référence exigerait une décision de changement documentée.

### Livrable

Fichier suivi avec référence, date d’état, faits saisis et note PMO d’écart.

### Contrôle

Référence enregistrée après le retard ? 100 % sur une activité future ? Date d’état absente ? Pourcentage global assimilé à conformité métier ? Durée restante non actualisée ?

### Débriefing / validation

Pourquoi conserver une référence même si le planning change ? Quelle différence entre date d’état et date du jour ? Quand une replanification justifie-t-elle une nouvelle référence approuvée ?

## 19. Projet final

Mission : remettre un plan BI défendable en COPIL, pas uniquement un Gantt lisible. À partir du scénario et de vos essais, présentez le plan faisable, le plan optimisé approuvé et son premier suivi.

Le fichier final doit conserver sept phases, 45 activités opérationnelles, sept jalons, durées, liens, pool de ressources, unités d’affectation, calendrier, échéance, chemin critique et référence. Il doit montrer le retard de suivi sans écraser la référence. Une capture et le registre doivent prouver la surcharge initiale analysée et résolue ; il n’est pas nécessaire de laisser une surcharge dans le fichier final pour démontrer son existence.

Présentation : huit minutes de démonstration, puis cinq minutes de questions. Expliquer une décision BA, une décision PMO, une proposition IA rejetée et le scénario d’optimisation retenu.

## 20. Livrables attendus

1. Fichier `.mpp` initial avec surcharge et réseau non optimisé.
2. Fichier `.mpp` faisable avec séquencement R2→R1.
3. Fichier `.mpp` optimisé approuvé avec référence.
4. Fichier `.mpp` de suivi conservant cette référence.
5. Charte d’une page et trois fiches KPI.
6. Registre IA : prompt, données transmises, proposition, contrôles, décision et justification.
7. Tableau de scénarios : dates, gain, travail, coûts, ressources et risques.
8. Synthèse de deux pages maximum : usage de l’IA, corrections, risques, optimisation et premier écart.
9. Captures de la surcharge, du chemin critique, du Gantt suivi et de la référence.

Les noms de fichiers sont laissés à la convention du groupe. Les fichiers `.mpp` sont produits par les participants dans Project ; le présent dossier ne fournit pas de faux fichier Project généré par une autre méthode.

## 21. Critères d’évaluation

L’évaluation combine exactitude du modèle et capacité de justification. Un participant qui copie le planning de référence sans comprendre les dépendances ne peut pas obtenir la totalité des points.

Conditions minimales de recevabilité : fichier ouvrable, phases identifiables, réseau calculable, ressources définies et décisions traçables. Une comparaison numérique différente du corrigé n’est pas nécessairement fausse si les hypothèses supplémentaires sont explicites et leurs conséquences démontrées.

Évaluer l’esprit critique dans plusieurs critères : couverture WBS contrôlée, estimations non inventées, disponibilité vérifiée, recommandations IA testées, hypothèses d’optimisation validées et référence non réécrite.

## 22. Grille d’évaluation

| Critère | Points | Éléments observables |
| --- | ---: | --- |
| Qualité de la WBS | 15 | Sept phases, périmètre couvert, hiérarchie lisible, omissions IA corrigées |
| Cohérence des tâches | 10 | 35–50 activités utiles, libellés clairs, livrables et validations distincts |
| Jalons | 10 | Sept jalons nuls, critères, valideurs, J6 avant stabilisation |
| Dépendances | 15 | Réseau sans cycle, liens logiques, parallélisme justifié, absence de dates forcées |
| Estimation des durées | 10 | Unités cohérentes, trois bases d’estimation documentées, incertitudes identifiées |
| Ressources et affectations | 15 | Capacités, calendriers, taux, unités et travail vérifiés ; ressources non fictivement doublées |
| Chemin critique | 10 | Identification, marge, tests de sensibilité et effet des optimisations expliqués |
| Gestion des surcharges | 5 | Cause datée, preuve, comparaison et résolution vérifiée |
| Utilisation pertinente de l’IA | 5 | Prompts contextualisés, limites reconnues, correction argumentée et test réel d’au moins une suggestion |
| Qualité globale et suivi | 5 | Référence avant retard, date d’état, écarts visibles, synthèse et fichiers exploitables |
| Total | 100 | |

Repères : 0 % des points si absent ; environ 50 % si présent mais incomplet ou expliqué de manière fragile ; 100 % si correct, vérifié et argumenté. Pour les cinq points IA : contexte et traçabilité 1 ; identification d’erreurs 2 ; recommandation testée et arbitrage humain 2.

Seuil pédagogique recommandé : 70/100, avec reprise obligatoire si le fichier est inexploitable, si la surcharge est seulement masquée ou si la référence a été écrasée sans justification.

## 23. Corrigé / solution formateur

### 23.1 Solution de cadrage

Objectif : fiabiliser le pilotage commercial du périmètre pilote, pas transformer toute l’organisation en une seule livraison. Livrables majeurs : spécifications et dictionnaire KPI approuvés ; plateforme BI testée et recettée ; service en production avec utilisateurs formés et transfert effectué.

Questions attendues : qui tranche les règles de marge ? Quelle date rattache les avoirs ? Quelle version des objectifs est approuvée ? Qui autorise les accès ? Quel échantillon représente une recette suffisante ? Quels incidents interdisent le go-live ? Quelles agences participent au pilote ?

Les formules KPI restent des décisions métier. Il n’existe pas une définition universelle du « bon » chiffre d’affaires net pour toutes les organisations.

### 23.2 Modèle de tâches et preuves des jalons

Utiliser 8.5 comme solution normalisée. Les liens entre C1/C2 et C3, les attentes de R3, le go/no-go T7 et les prérequis D4 sont des points particulièrement importants à faire expliquer.

| Jalon | Preuve attendue | Autorité dans le scénario |
| --- | --- | --- |
| J1 | Charte et périmètre approuvés | Sponsor |
| J2 | Spécifications et règles KPI approuvées | Représentant métier |
| J3 | Dossier de conception revu et accepté | Data Architect + chef de projet |
| J4 | Version intégrée disponible avec contrôle interne | Chef de projet / équipe BI |
| J5 | PV de recette et go/no-go documentés | Métier + chef de projet |
| J6 | Déploiement vérifié et service ouvert | Référent IT + métier |
| J7 | Transfert, bilan et clôture acceptés | Sponsor |

Le responsable d’une preuve n’est pas automatiquement l’unique valideur. Les autorités seraient à préciser contractuellement dans un projet réel.

### 23.3 Résultats numériques reproductibles

Les résultats suivants sont calculés sur le réseau normalisé, en jours ouvrés, sans congés ni jours fériés, avec durées fixes et affectations du tableau. Les marges présentées sont celles du réseau avant une éventuelle échéance plus serrée ; une échéance peut modifier l’affichage des marges dans Project. Les dates de jalon ci-dessous correspondent à 17:00, après l’activité de validation. La durée totale est celle du réseau jusqu’à J7.

| Version | Modification | Durée totale | Gain vs faisable |
| --- | --- | ---: | ---: |
| Initiale | R1/R2 simultanées avec un seul DE : non faisable | 96 j | Non recevable comme engagement |
| Faisable | R2 avant R1, seul DE | 102 j | 0 j |
| Scénario A | DE2 sur R2 et retrait du lien organisationnel R2→R1 | 96 j | 6 j |
| Scénario B | A + BI2 sur R6, durée R6 = 2 j | 94 j | 8 j |
| Scénario C | B + BI2 sur T5, durée T5 = 2 j, QA = 100 % | 92 j | 10 j |

| Jalon | Initial non faisable | Corrigé faisable | Optimisé |
| --- | --- | --- | --- |
| J1 | 2026-11-11 | 2026-11-11 | 2026-11-11 |
| J2 | 2026-12-03 | 2026-12-03 | 2026-12-03 |
| J3 | 2026-12-25 | 2026-12-25 | 2026-12-25 |
| J4 | 2027-02-02 | 2027-02-10 | 2027-01-29 |
| J5 | 2027-02-26 | 2027-03-08 | 2027-02-22 |
| J6 | 2027-03-02 | 2027-03-10 | 2027-02-24 |
| J7 | 2027-03-15 | 2027-03-23 | 2027-03-09 |


En exploitation réelle, les jours fériés, congés, délais d’accès et indisponibilités métier allongeraient ou déplaceraient ces dates. Le calendrier pédagogique sert à isoler les mécanismes de planification.

### 23.4 Chemin critique du plan faisable

La chaîne calculée avant échéance plus serrée est :

I1 → I2 → I3 → I4 → I5 → J1 → A1 → A2 → A3 → A6 → A7 → J2 → C2 → C3 → C4 → C5 → C7 → J3 → R2 → R1 → R3 → R4 → R5 → R6 → R7 → J4 → T2 → T3 → T4 → T5 → T6 → T7 → J5 → D4 → D5 → J6 → D6 → L2 → L3 → L4 → L5 → L6 → J7

Toutes les activités de cette chaîne ont une marge totale nulle dans le modèle normalisé. Les phases récapitulatives ne sont pas listées dans cette chaîne d’activités.

Le retard de deux jours sur C5 décale J6/J7 de deux jours. A4 dispose de marge dans ce réseau : son allongement de deux jours ne décale pas la fin tant que la branche des sources rejoint A6 avant que les besoins et KPI soient prêts. Faire vérifier la marge exacte dans Project, plutôt que la mémoriser hors contexte.

### 23.5 Surcharge et coûts

R1 = 64 h et R2 = 48 h. Lorsqu’elles débutent ensemble, les six premiers jours demandent 16 h/j au DE, soit une surallocation de 8 h/j et 48 h sur la fenêtre. Ensuite R1 demande encore deux jours à 100 %. Le planning initial sous-estime le délai, pas le nombre total d’heures.

Dans la solution faisable, R2 puis R1 puis R3 utilisent DE de façon séquentielle. Dans le scénario A, DE2 réalise R2 et DE réalise R1 puis R3. Il faut supprimer DE de R2 pour ne pas créer un double travail involontaire.

R6 initiale : BI 4 j × 8 h = 32 h. R6 optimisée : BI 100 % et BI2 100 % pendant 2 j, soit 16 h chacun et 32 h au total. T5 initiale : BI 32 h et QA 16 h ; T5 optimisée : BI 16 h + BI2 16 h + QA 16 h si QA passe à 100 %. Dans ce cas, le travail est conservé tandis que la durée diminue ; cette possibilité suppose que les tâches soient réellement divisibles.

Les renforts remplacent des heures au même taux dans ce modèle ; ils ne créent pas automatiquement un surcoût de main-d’œuvre à travail total conservé. Ajouter un coût de mobilisation ou une charge de coordination seulement comme hypothèse explicite, puis l’affecter à une tâche ou ressource coût de façon documentée. Ne pas prétendre que ces coûts réels sont nuls parce que le modèle simplifié ne les contient pas.

### 23.6 Corrigé du suivi

Sur le scénario C approuvé, la fin de C4 sert de date d’état. C5 passe de trois à cinq jours avant de démarrer. La branche critique est rallongée de deux jours : le planning courant devient 94 jours jusqu’à J7, tandis que la référence reste 92 jours.

Les débuts/fins de référence restent inchangés. J6 doit signaler un dépassement de la cible approuvée. La note PMO distingue : cause réelle confirmée, impact calculé, options à étudier et décision à obtenir. Elle ne doit pas annoncer une récupération automatique de deux jours sans nouvelle simulation.

### 23.7 Registre d’arbitrage attendu

| Proposition | Décision attendue | Justification |
| --- | --- | --- |
| Réaliser les dashboards avant les KPI | Rejeter | Règles non approuvées et reprises probables |
| Déployer avant recette | Rejeter | Critère de passage violé |
| Faire travailler DE à 200 % | Rejeter pour une personne unique | Capacité inexistante |
| Ajouter DE2 sur R2 | Accepter sous conditions | Six jours récupérés, compétences et accès à confirmer |
| Diviser R6 entre deux développeurs | Accepter sous conditions | Modules divisibles, intégration à organiser |
| Ramener T5 à deux jours | Accepter sous conditions | Renfort BI, QA et retests maintenus |
| Effacer le retard en changeant la référence | Rejeter | Perte de traçabilité de l’engagement |

## 24. Points de vigilance pour le formateur

### Préparation

Ouvrir un fichier test sur les postes, vérifier accès Project, libellés des menus, droits de sauvegarde, taux en euros et paramètres régionaux. Tester l’IA du tenant sans supposer la présence d’une intégration. Préparer une copie locale du tableau et des sorties IA fictives.

Le fichier de référence doit rester privé jusqu’à la normalisation. Montrer les fonctions au moment du problème, pas sous forme d’une démonstration exhaustive préalable : calendrier pour les estimations ; ressources pour le conflit ; chemin critique pour l’optimisation ; référence pour le suivi.

### Erreurs à provoquer ou repérer

- WBS réduite au développement technique.
- Fausse certitude sur les durées IA.
- Dépendances saisies avec des codes à la place des ID.
- Tâche manuelle qui ne réagit pas à un lien.
- Date forcée pour satisfaire le sponsor.
- Affectation sur une phase récapitulative.
- Confusion unités max. / unités d’affectation.
- Réduction d’unités à durée fixe qui réduit la charge sans raison métier.
- Surcharge masquée par une capacité arbitrairement augmentée.
- Nivellement exécuté sans conserver le modèle antérieur.
- Criticité interprétée sans tenir compte du calendrier ou de l’échéance.
- Référence créée après la mise à jour.
- IA déclarant avoir modifié Project alors qu’elle a seulement généré un tableau.

### Adaptation du temps

Pour un public débutant, conserver les 14 heures et distribuer les tableaux à la normalisation. Pour un créneau de trois heures, limiter explicitement les objectifs à cadrage, WBS, saisie d’une partie du réseau et démonstration d’une surcharge : ne pas annoncer l’ensemble du présent TP comme réalisable dans ce créneau.

### Vérification technique et limites

Le réseau et les résultats de référence ont été calculés indépendamment pour vérifier les durées et les gains. Aucun fichier `.mpp` n’a été exécuté ou validé dans une installation Microsoft Project lors de la génération du dossier : le formateur doit vérifier une fois le modèle dans sa version avant la session. Des écarts exigent d’abord de vérifier horaires, fin à 17:00, durées fixes, unités, liens, contraintes, échéances et nivellement résiduel.

Sources Microsoft pour les mécanismes logiciels : planification, types de tâches, unités et calendriers, chemin critique et accès à Planner Agent. [web:50][web:56][web:53][web:55][web:51][web:49][web:52]

## 25. Questions de débriefing

| Question | Éléments attendus |
| --- | --- |
| 1. Pourquoi l’IA peut-elle proposer une WBS incomplète ? | Contexte incomplet, hypothèses implicites, omissions de validation, biais vers les tâches visibles |
| 2. Comment un PMO contrôle-t-il un planning IA ? | Périmètre, livrables, liens, calendrier, durées, capacités, calcul réel et décisions |
| 3. Quels éléments ne jamais accepter automatiquement ? | Engagements de date, disponibilité, coûts, règles KPI, conformité, validation et renoncement aux contrôles |
| 4. Dépendance logique ou contrainte artificielle ? | Prérequis causal vs date forcée ; séquencement de ressource explicitement identifié comme organisationnel |
| 5. Comment le BA contribue-t-il au planning ? | Besoins, règles, volumes, interlocuteurs, cycles de validation, recette et adoption |
| 6. Comment gérer un conflit métier/planning ? | Rendre l’impact visible, proposer options, préserver critères obligatoires, obtenir arbitrage |
| 7. Risques d’une utilisation non contrôlée de l’IA ? | Faux faits, estimations non justifiées, données exposées, engagements irréalistes et responsabilité diluée |
| 8. Durée et travail : quelle différence ? | Temps écoulé ouvré vs effort des ressources ; influence des unités et du calendrier |
| 9. Pourquoi le premier Gantt semblait-il plus court ? | Il ignorait la faisabilité d’une personne sollicitée à 200 % |
| 10. Pourquoi une activité longue peut-elle ne pas être critique ? | Marge et réseau, pas longueur seule |
| 11. Que prouve une baseline ? | Elle conserve l’état approuvé ; elle ne garantit ni exactitude ni faisabilité |
| 12. Que demander à l’IA après un retard ? | Analyse sur faits et export à jour, options conditionnelles et contrôles, pas une promesse de rattrapage |
| 13. Quand refuser une optimisation ? | Qualité, sécurité, recette, compétence, accès ou charge impossibles à garantir |
| 14. Quelle proposition avez-vous corrigée et pourquoi ? | Une preuve concrète issue du registre IA, pas « l’IA peut se tromper » sans exemple |

Question finale individuelle : « Si l’assistant IA n’était plus disponible demain, pourriez-vous expliquer et maintenir votre planning ? » La réponse doit s’appuyer sur le fichier, ses hypothèses et ses décisions, pas sur la seule conversation avec l’IA.
