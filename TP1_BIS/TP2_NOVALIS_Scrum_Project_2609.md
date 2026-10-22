# TP 2 — NOVALIS Distribution BI
## Créer et piloter un produit avec Scrum et les sprints de Microsoft Project

Support participant et guide formateur — Windows, Microsoft Project version 2609

Version pédagogique : 22 octobre 2026 • Durée : 7 heures hors pauses • Niveau : débutant Scrum, utilisateur débutant/intermédiaire de Project

Public : Product Owners, consultants, chefs de projet, PMO, PMP, AMOA et formateurs.

Fichier de travail à construire : `NOVALIS_BI_Scrum_TP2.mpp`.

Toutes les personnes, données commerciales, capacités, estimations, retours et résultats d’usage du cas sont fictifs. Le TP ne nécessite ni programmation, ni développement d’une solution BI. Les participants simulent la construction et l’inspection du produit à partir de résultats métier fournis. Le fichier Project représente le travail : il n’est pas l’Increment BI.

---

## Mode d’emploi du dossier

Le document comprend une vérification préalable, 15 étapes, des annexes métier, un corrigé séparé de l’exercice autonome, des QCM corrigés, un glossaire, une checklist et les sources officielles.

Le classeur joint contient le backlog complet, les ventes fictives, le suivi quotidien, les sprints, les données de capacité et les scénarios de résultats. Il constitue un complément documentaire, pas une synchronisation automatique avec Project. Aucun fichier MPP préfabriqué ni aucune exécution de Project n’est revendiqué.

Les références [S1] à [S9] renvoient aux liens officiels en fin de support. La documentation Microsoft vérifie les fonctions du produit ; les noms exacts observés sur le poste doivent être consignés au contrôle préalable. Les consignes Scrum reposent sur le Guide de novembre 2020, indiqué comme version officielle courante sur le site des Scrum Guides lors de la vérification. [S1–S4]

### Objectifs pédagogiques

À l’issue du TP, savoir :

1. Expliquer la différence entre planification prédictive et pilotage empirique d’un produit.
2. Identifier l’édition de Project et vérifier ses capacités Sprints.
3. Créer un projet distinct à partir de Projet Sprints lorsque le modèle est disponible.
4. Définir produit, Product Goal, utilisateurs, valeur et critères de qualité.
5. Rédiger et ordonner des User Stories avec critères d’acceptation testables.
6. Préparer trois sprints sans transformer la prévision en engagement de périmètre rigide.
7. Construire un Sprint Backlog et suivre les états, obstacles et travail restant.
8. Interpréter les rapports et les données de burndown sans en faire un classement des personnes.
9. Négocier une évolution du périmètre en préservant l’objectif et la qualité.
10. Préparer Review et Retrospective ; distinguer Increment utilisable et travail simplement exécuté.
11. Relier ces décisions aux responsabilités et connaissances attendues pour PSPO I.

### Prérequis matériels et logiciels

- Un PC Windows par binôme, avec Project activé et droit d’enregistrer des fichiers MPP.
- Environnement principal : Project desktop par abonnement, version 2609, fonctionnalités Sprints présentes et testées.
- Excel, recommandé pour lire le classeur et tracer l’historique illustratif ; un tableau papier suffit pour le débriefing.
- Accès Internet pour consulter les sources et, si nécessaire, charger les modèles autorisés par l’organisation.
- Aucun accès à un serveur Project Online n’est nécessaire pour cet exercice local ; la licence du client et la disponibilité des commandes restent à vérifier.
- TP1 consultable comme point de comparaison, mais non modifié et non importé.
- Connaître les actions élémentaires : enregistrer, saisir une ligne, ouvrir un ruban et ajouter une colonne. Aucun prérequis de développement ni de Power BI.

### Organisation de la journée

| Séquence | Durée |
|---|---:|
| Contrôle logiciel et lancement | 25 min |
| 1. Du prédictif à Scrum | 15 min |
| 2. Création du projet | 25 min |
| 3. Produit et objectif | 15 min |
| 4. Product Backlog | 35 min |
| 5. Représentation dans Project | 30 min |
| 6. Configuration des sprints | 25 min |
| 7. Sprint Planning | 30 min |
| 8. Travail quotidien | 30 min |
| 9. Visualisation et mesures | 25 min |
| 10. Changement de priorité | 20 min |
| 11. Review et Retrospective | 25 min |
| 12. Increment et DoD | 20 min |
| 13. Inspection sur trois sprints | 20 min |
| 14. Exercice autonome | 45 min |
| 15. Préparation PSPO I et correction | 35 min |
| Total hors pauses | 420 min |

Pour tenir en une journée, les 12 stories sont fournies, non rédigées de zéro. Chaque binôme approfondit deux stories puis saisit ou copie les autres. La DoD est lue avant le premier Sprint Planning, puis étudiée en détail à l’étape 12. Les annexes sont des ressources de travail, non des exposés supplémentaires. Répartir les rôles PO/Developers dans chaque binôme ; le formateur facilite et joue les parties prenantes, sans transformer ce jeu de rôle en équipe Scrum réelle de deux personnes.

## Contrôle préalable — ce que signifie réellement « Project 2609 »

### Disponibilité vérifiée dans la documentation

Microsoft répertorie la version 2609 dans l’historique des applications par abonnement ; cet historique s’applique aussi aux versions par abonnement des applications desktop Project et Visio. La version est un numéro de mise à jour, pas une preuve de licence ni une garantie d’identité du ruban. La documentation Sprints réserve explicitement ces fonctions au client de bureau disponible par abonnement. [S1, S2]

| Environnement | Sprints natifs et décision pour ce TP |
|---|---|
| Project Online Desktop Client / Microsoft Project desktop client par abonnement | Tableaux de tâches, modèle Sprints Project, gestion des sprints, affectation par Sprint, états et rapports documentés. Parcours principal si les commandes sont présentes. |
| Project Standard ou Professional à licence perpétuelle sur Windows | Ne pas présumer les fonctions Agile de l’abonnement. La documentation citée ne les donne pas comme disponibles dans ces éditions. Utiliser la variante pédagogique si les commandes sont absentes ; « Professional » seul ne prouve pas un abonnement. |
| Planner inclus dans Microsoft 365, plan Basic | Tableau de tâches possible, mais pas les fonctions natives de backlogs et sprints réservées aux plans Premium dans le comparatif Microsoft. Des compartiments nommés Sprint 1/2/3 restent une simulation. |
| Planner, plan Premium avec licence appropriée | Backlogs et sprints disponibles selon licence et déploiement. Application web/Teams distincte, et non interface du fichier MPP. Alternative collaborative, pas une manipulation Project desktop. |

Les offres commerciales Planner Plan 1 et Planner and Project Plan 3 ne sont pas équivalentes : la première donne notamment les capacités Premium web ; la seconde inclut aussi Project desktop selon la page officielle. Ne pas acheter une licence sur la seule base de ce TP : l’administrateur confirme les droits réels. [S5–S8]

### Contrôle sur chaque poste : fiche à compléter

1. Ouvrir Project > Fichier > Compte.
2. Relever le nom complet sous Informations sur le produit. Chercher la mention de produit par abonnement ; le libellé anglais documenté est « Subscription Product: Microsoft Project desktop client ».
3. Ouvrir À propos de Project, selon l’interface, et relever version 2609, build, architecture et langue. Relever le canal s’il est affiché ; sinon demander à l’administrateur, sans modifier sa politique de mise à jour.
4. Ouvrir Fichier > Nouveau : chercher Projet Sprints / Sprints Project dans les modèles proposés.
5. Créer un fichier d’essai. Vérifier Projet > Gérer les sprints / Manage Sprints ; si le projet possède déjà les sprints, vérifier aussi Sprints > Gérer / Manage.
6. Vérifier les vues de planification, le tableau du sprint et Rapport > Tableau des tâches.
7. Créer une carte test, la déplacer et enregistrer le fichier. Fermer puis rouvrir pour confirmer la persistance.

| Champ de contrôle | Valeur à noter |
|---|---|
| Produit / type de licence | À relever |
| Version / build / langue | À relever |
| Modèle Projet Sprints présent | Oui / Non |
| Gérer les sprints présent | Oui / Non |
| Tableau de planification / état / rapports | Présents / absents, avec intitulés |
| Parcours retenu | A natif / B simulation / C Planner |

Attention — Le présent dossier vérifie la documentation, pas votre installation. Il n’existe pas dans les sources consultées de capture garantissant chaque libellé pour tous les builds 2609. Des traductions Microsoft sont variables ou maladroites. Les équivalents anglais ci-dessous servent de repères. Ne pas annoncer que toutes les commandes ont été testées sur un poste 2609. [S1]

### Dictionnaire d’interface vérifié

| Fonction | Chemin documenté et variations |
|---|---|
| Nouveau modèle | Fichier > Nouveau > modèles proposés > Projet Sprints ; File > New > Featured > Sprints Project |
| Gestion des sprints | Projet > Gérer les sprints ; ou Sprints > Gérer ; Project > Manage Sprints / Sprints > Manage |
| Planification | Sprints > Affichages > Planification > Tableau de planification sprint ; Sprint Planning Board |
| Tableau d’exécution | Sprints > Affichages > Sprint > Tableau sprint actuel ; Current Sprint Board |
| Feuille d’exécution | Sprints > Affichages > Sprint > Feuille sprint actuelle ; Current Sprint Sheet |
| Feuille depuis un tableau | Format > Affichage > Feuille ; Format > View > Sheet |
| Tableau des tâches | Affichage > Affichages des tâches > Tableau des tâches ; View > Task Views > Task Board |
| Autres vues | Affichage > Tableau des tâches > Plus de vues ; More Views |
| États | Colonne État du tableau ; Board Status |
| Visibilité d’une carte | Afficher dans le tableau / Afficher à bord selon traduction ; Show on Board |
| Champs affichés sur les cartes | Format > Personnaliser les cartes ; Customize Cards ; jusqu’à cinq champs supplémentaires |
| Rapports Agile | Rapport > Afficher les rapports > Tableau des tâches ; Report > View Reports > Task Board |

Certains anciens articles citent « Outils Agile : Scrum ». Ne pas chercher obligatoirement ce nom dans 2609 : le parcours principal utilise les commandes Sprints de l’aide actuelle. [S1, S9]

### Arbre de décision en cas d’absence

A. Modèle et commandes présents : réaliser le parcours natif.

A bis. Modèle absent, mais Gérer les sprints présent : créer un Projet vierge distinct, puis Projet > Gérer les sprints. Cela utilise les fonctions natives sur un nouveau fichier, pas une conversion du TP1. Tester les vues avant de poursuivre.

B. Commandes absentes : relever l’édition et demander le contrôle de licence/déploiement à l’administrateur. Ne pas supposer qu’une simple personnalisation du ruban ajoute une fonction non licenciée. Pour maintenir l’atelier, utiliser un Projet vierge et des champs personnalisés Texte pour Sprint et État. C’est une simulation pédagogique : pas de modèle, de gestionnaire de sprints, de tableau Agile ni de rapports Agile inventés. Trier/filtrer les lignes et utiliser Excel pour les suivis.

C. Planner Premium autorisé : créer un plan Premium séparé, ouvrir Tableau et rechercher Regrouper par > Sprint. Les documents Project pour le web décrivent Ajouter un nouveau sprint et les dates ; les plans Premium sont désormais accessibles dans Planner. Si le tenant affiche une autre navigation, vérifier l’aide courante et les droits. Ne pas présenter l’ancienne capture Project pour le web comme une garantie du ruban Planner du jour. Aucune synchronisation MPP/Planner n’est supposée. [S5–S8]

---

## Scénario et données de référence

NOVALIS Distribution souhaite fournir rapidement une première lecture fiable des ventes, puis enrichir le produit à partir des retours réels. Le TP1 avait structuré les phases, tâches, jalons, liens, ressources, chemin critique et référence de planification d’un projet BI. Le TP2 conserve ce contexte métier mais crée un nouvel espace de travail et un backlog de produit.

Le produit est un service d’analyse commerciale avec tableaux de bord et données contrôlées, destiné à des utilisateurs internes autorisés. Périmètre initial : ventes nettes HT, régions Nord/Sud, quatre magasins, trois produits, deux catégories, trois codes clients, janvier et février 2026, monnaie TND. Hors périmètre : comptabilité légale, prévisions automatiques, gestion de stocks, données personnelles réelles, accès mobile spécialisé et développement de connecteurs.

### Personnes fictives

| Personne | Position dans le cas | Besoin ou responsabilité |
|---|---|---|
| Amel Ben Salem | Directrice commerciale, sponsor et utilisatrice | Lire CA, marge et écarts ; décider des actions commerciales |
| Karim Mansour | Responsable régional Nord | Comparer régions et magasins ; analyser les écarts |
| Leïla Haddad | Analyste métier | Classer produits, analyser catégories, préparer les comptes |
| Sonia Trabelsi | Contrôleuse de gestion | Définir et vérifier les indicateurs économiques |
| Nadia Cherif | Product Owner | Maximiser la valeur, expliciter l’objectif, ordonner le backlog |
| Youssef Ben Ali | Scrum Master | Favoriser Scrum, l’autogestion et la suppression des obstacles |
| Inès, Sami, Rania | Developers pluridisciplinaires | Analyse, préparation de données, restitution, tests et mise à disposition |

« Developers » désigne les personnes qui créent l’Increment ; elles ne sont pas nécessairement programmeuses. L’ensemble de la Scrum Team est responsable d’un Increment utile et de valeur ; chaque responsabilité spécifique reste distincte. [S3]

### Résultats métier de référence

Les 24 lignes de ventes du classeur permettent de contrôler les critères sans fabriquer de données pendant la séance. Aucun participant n’a à importer les ventes dans Project : Project reçoit le travail sur le produit, pas les transactions commerciales.

| Indicateur | Janvier | Février | Cumul |
|---|---:|---:|---:|
| CA net HT, TND | 40 000 | 50 000 | 90 000 |
| Coût d’achat, TND | 29 200 | 33 800 | 63 000 |
| Marge commerciale, TND | 10 800 | 16 200 | 27 000 |
| Taux de marque = marge / CA | 27 % | 32,4 % | 30 % |

Nord : 54 000 TND ; Sud : 36 000 TND. Magasins N1/N2/S1/S2 : 32 000/22 000/20 000/16 000 TND. Produits P01/P02/P03 : 45 000/28 000/17 000 TND. Variation février/janvier : +25 %. Les calculs agrégés ont été contrôlés à partir du jeu joint.

Pourquoi ? Dire « calculer une marge » n’est pas un critère suffisant : il faut définir la base, les unités et le dénominateur. Le taux de marque n’est pas le taux de marge rapporté au coût.

## Étape 1 — Comprendre le passage du prédictif à Scrum — 15 min

### Objectif de l’étape

Distinguer organisation du travail, objectif produit et inspection de la valeur.

### Contexte métier

La direction veut une première vue utilisable sans attendre que toutes les fonctions BI soient achevées. Cela ne signifie pas supprimer les tests ni ignorer les contraintes de données.

### Notions Scrum à comprendre

Scrum s’appuie sur transparence, inspection et adaptation, avec une approche itérative et incrémentale. Un Sprint n’est pas une phase technique courte : il doit permettre un Increment utilisable. Product Goal, Sprint Goal et Definition of Done sont les engagements des trois artefacts. [S3]

| TP1 prédictif | TP2 Scrum | Distinction à expliquer |
|---|---|---|
| Phases cadrage, données, restitution, tests | Activités nécessaires présentes dans chaque Sprint selon les besoins | Ne pas réserver les tests au dernier Sprint |
| Tâche « préparer les données » | Travail nécessaire pour une story orientée utilisateur | La tâche ne devient pas une story par simple préfixe |
| Liste de tâches planifiées | Product Backlog ordonné, émergent | Le backlog contient ce qui améliore le produit, pas seulement des actions |
| Durée en jours/heures | Taille relative illustrative en points et prévision de capacité | 5 points ne signifient pas 5 jours |
| Jalon à une date | Sprint Goal décrivant un résultat cohérent | « Fin Sprint 1 » n’est pas un objectif |
| Tâche achevée | Increment intégré, utilisable, conforme à la DoD | Un modèle de données isolé ne suffit pas nécessairement |
| Dépendances et chemin critique | Contraintes explicitées et plan adaptable | Les contraintes existent, mais ne dictent pas une chaîne générale de stories |
| Baseline pour mesurer des écarts | Prévision inspectée et adaptée | Une baseline n’est pas un artefact obligatoire Scrum |

User Stories, Story Points et burndown sont des pratiques compatibles avec Scrum, pas des obligations du Guide. [S3]

### Manipulations détaillées dans Microsoft Project

1. Ouvrir le TP1 uniquement pour consultation ; ne pas enregistrer de modification.
2. Afficher son Diagramme de Gantt et repérer une phase, un jalon et un lien.
3. Noter un exemple de travail technique à recontextualiser, puis fermer le TP1.
4. Garder Project ouvert pour créer un nouveau fichier à l’étape 2.

### Données à saisir

Dans la feuille de réponses : « Importer les ventes » = tâche ; « Consulter le CA mensuel pour repérer les variations » = besoin utilisateur ; « Donner une lecture fiable des ventes » = intention de Sprint Goal.

### Résultat attendu

Un tableau de comparaison commenté, sans copier-coller massif des tâches TP1 dans un backlog.

### Points de vigilance et erreurs fréquentes

Erreur : « Sprint 1 = spécifications, Sprint 2 = réalisation, Sprint 3 = tests ». Correction : chercher une tranche fonctionnelle utilisable dès Sprint 1. Ne pas conclure que l’approche prédictive serait toujours mauvaise : les contextes et incertitudes diffèrent.

### Questions de réflexion pour les participants

Quelle valeur reçoit Amel si seul l’import est fini ? Que pourrait-elle déjà inspecter avec CA, région et classement produits ?

### Lien avec la préparation PSPO I

Identifier empirisme, valeur et différence entre artefact et outil. Le PO ne se limite pas à tenir un échéancier. [S3, S4]

## Étape 2 — Créer le projet Scrum dans Microsoft Project — 25 min

### Objectif de l’étape

Créer un fichier autonome avec les fonctions natives effectivement présentes.

### Contexte métier

Le produit NOVALIS BI reste le même domaine métier ; le fichier TP2 n’est pas une nouvelle baseline du TP1.

### Notions Scrum à comprendre

Un projet de travail Project sert à rendre le travail visible. Il ne suffit pas à définir Scrum, ses interactions ou sa gouvernance de produit. [S3]

### Manipulations détaillées dans Microsoft Project

1. Terminer la fiche de contrôle préalable et retenir A, B ou C.
2. Parcours A : Fichier > Nouveau > modèles proposés > Projet Sprints / Sprints Project. Si une page de présentation s’ouvre, choisir Créer.
3. Vérifier que le Tableau de planification sprint apparaît ; des cartes ou sprints de démonstration peuvent être présents selon le modèle. Ne supprimer que les exemples, jamais des données du TP1.
4. Fichier > Enregistrer sous > Parcourir, selon l’interface ; choisir un dossier autorisé et le type Projet (*.mpp). Enregistrer sous `NOVALIS_BI_Scrum_TP2.mpp`.
5. Projet > Informations sur le projet : fixer le début au 02/11/2026 pour le scénario. Le calendrier de travail sert aux calculs de planning ; il ne redéfinit pas la timebox Scrum.
6. Contrôler Projet > Modifier le temps de travail : relever les jours et horaires. Pour ce cas fictif, retenir lundi-vendredi, sans jour férié particulier ajouté. Ne pas modifier le calendrier global de l’entreprise ; si nécessaire utiliser un calendrier propre au fichier.
7. Affichage > Diagramme de Gantt : vérifier le mode des nouvelles tâches. Retenir la planification manuelle pour les lignes représentant les PBI, afin de ne pas créer une fausse prévision détaillée à partir des points. Utiliser Tâche > Planifier manuellement sur les lignes sélectionnées si nécessaire.
8. Revenir à Sprints > Planification > Tableau de planification sprint. Enregistrer.

Les chemins Sprints et modèle sont documentés en [S1]. Les commandes générales de gestion du fichier/calendrier peuvent varier de disposition ; le formateur les vérifie au lancement. L’affectation à un Sprint ne doit pas être confondue avec une validation de charge ou un ordonnancement automatique de tout son travail.

### Données à saisir

Nom du fichier ci-dessus ; date de début 02/11/2026 ; contexte « Produit NOVALIS BI — simulation pédagogique Scrum ». Ne saisir aucune estimation en points dans Durée.

### Résultat attendu

Un fichier MPP distinct enregistré, avec un tableau de planification accessible. En B : un fichier vide distinct et une mention explicite « simulation sans fonctions Agile natives ».

### Points de vigilance et erreurs fréquentes

Modèle absent : essayer A bis seulement si Gérer les sprints est présent. Aucun bouton trouvé : ne pas inventer un menu ; revenir à l’arbre de décision. Un compte Microsoft 365 ne prouve pas, à lui seul, la présence des droits desktop.

### Questions de réflexion pour les participants

Que prouve le numéro 2609 ? Quelle information de licence et quelle commande complètent cette preuve ?

### Lien avec la préparation PSPO I

Aucun outil de planification particulier n’est prescrit par Scrum ; l’outil doit favoriser la transparence et non remplacer la collaboration. [S3]

## Étape 3 — Définir le produit et son objectif — 15 min

### Objectif de l’étape

Relier les futures fonctionnalités à un état futur utile du produit.

### Contexte métier

Aujourd’hui, Amel reçoit plusieurs extractions et Leïla passe 45 minutes à préparer une première lecture commerciale. Cette durée est une hypothèse initiale fictive à vérifier, pas une mesure réelle.

### Notions Scrum à comprendre

Le produit a des limites et des utilisateurs connus. La vision exprime une ambition ; le Product Goal donne une cible à plus long terme et se trouve dans le Product Backlog. Le PO est redevable de sa formulation et de sa communication, avec les contributions de la Scrum Team et des parties prenantes. [S3]

### Manipulations détaillées dans Microsoft Project

1. Conserver les cartes pour les PBI, sans créer une carte « Product Goal » de 5 points.
2. Ouvrir le classeur complémentaire, onglet Produit, et renseigner les champs ci-dessous.
3. Dans Project, Fichier > Informations > Propriétés du projet > Propriétés avancées, si ce chemin est proposé : renseigner le titre et les commentaires avec le résumé. La position des propriétés peut varier ; cette duplication est facultative.
4. Sinon, garder le registre Produit comme référence et noter son nom dans les Notes de US01 lors de sa création. Aucun champ natif Product Goal n’est présumé dans Project desktop.

### Données à saisir

- Description : « Service BI interne de lecture des ventes nettes HT et de la rentabilité commerciale de NOVALIS ».
- Vision : « Des décisions commerciales plus rapides, fondées sur des chiffres partagés et explicables ».
- Product Goal : « Permettre à la direction et aux responsables régionaux de préparer leur revue commerciale en moins de 15 minutes, avec un accès autonome aux ventes, à la marge et aux écarts entre périodes, sur le périmètre pilote, sans ressaisie et avec des chiffres réconciliés ».
- Valeur attendue : réduire l’effort de préparation et améliorer la confiance ; ne pas promettre une hausse de chiffre d’affaires attribuable au seul tableau de bord.
- Mesure d’inspection : temps de préparation observé pour cinq utilisateurs pilotes et nombre de ressaisies ; noter les conditions de mesure et les commentaires qualitatifs.
- Besoins prioritaires : CA fiable, lecture régionale, produits contributeurs, puis rentabilité et comparaison.

### Résultat attendu

Un registre Produit avec un seul Product Goal en cours et des utilisateurs identifiés.

### Points de vigilance et erreurs fréquentes

« Livrer 12 stories » est une mesure de production, pas un Product Goal orienté résultat. Les mesures proposées restent des hypothèses à inspecter. Ne pas attendre que toute la vision soit réalisée pour produire de la valeur.

### Questions de réflexion pour les participants

Si 12 stories sont terminées mais que personne n’utilise le produit, le Product Goal est-il atteint ? Quelle observation pourrait le confirmer ou l’infirmer ?

### Lien avec la préparation PSPO I

Valeur, vision, objectif, parties prenantes et responsabilité du PO dans le Product Backlog. [S3, S4]

## Étape 4 — Construire le Product Backlog — 35 min

### Objectif de l’étape

Obtenir un backlog ordonné, compréhensible et suffisamment transparent pour discuter un Sprint.

### Contexte métier

Le PO privilégie d’abord une lecture utilisable des ventes. Les coûts et la comparaison de périodes apportent ensuite une information supplémentaire, avec un risque de règles métier mal comprises.

### Notions Scrum à comprendre

Le Product Backlog est ordonné et émergent. L’affinement ajoute de la compréhension, décompose et précise le travail ; ce n’est pas un événement obligatoire supplémentaire. Les Developers sont responsables du dimensionnement. Les points sont une convention locale d’estimation relative, pas une unité calendaire. [S3]

### Manipulations détaillées dans Microsoft Project

1. Lire les 12 fiches ci-dessous et les résultats de référence avant de saisir les cartes.
2. Dans le classeur, sélectionner deux fiches et vérifier que chaque critère peut être contrôlé par un utilisateur.
3. Dans Project, sur le tableau de planification, choisir Nouvelle tâche dans Aucun sprint pour US01.
4. Nommer la carte `US01 — Consulter le CA mensuel`.
5. Ouvrir les informations de la tâche par double-clic ou Informations ; dans Notes, recopier formulation, justification et critères. Si l’ouverture par double-clic varie, passer par la ligne de feuille et Tâche > Informations.
6. Ne pas déplacer les 11 autres cartes dans des sprints à ce stade ; la saisie structurée sera faite à l’étape 5.

### Données à saisir

L’ordre 1–12 est une proposition initiale du PO pour l’atelier. Total initial : 47 points. Les indications Sprint 2 sont des hypothèses, pas des sélections déjà décidées. Les autres éléments restent dans Aucun sprint.

#### US01 — Consulter le CA mensuel

- Formulation : En tant que directeur commercial, je veux consulter le chiffre d’affaires par mois, afin de repérer les variations de ventes.
- Justification métier : Obtenir une première lecture partagée des ventes.
- Critères d’acceptation testables : Janvier : 40 000 TND ; février : 50 000 TND ; cumul : 90 000 TND. Le filtre janvier ne conserve que janvier. Une période sans vente affiche « Aucune vente », pas une erreur.
- Ordre initial : 1 ; estimation relative illustrative : 5 points.
- Contraintes / dépendances : Source de ventes fournie et contrôlée ; aucun autre PBI requis.
- Horizon : Sprint 1.

#### US02 — Analyser le CA par région

- Formulation : En tant que responsable régional, je veux filtrer les ventes par région, afin de identifier les zones qui nécessitent une action.
- Justification métier : Cibler les actions régionales.
- Critères d’acceptation testables : Sur janvier-février : Nord 54 000 TND, Sud 36 000 TND. Nord + janvier : 24 000 TND. Effacer le filtre rétablit 90 000 TND.
- Ordre initial : 2 ; estimation relative illustrative : 3 points.
- Contraintes / dépendances : Réutilise le socle de US01 ; réalisation conjointe possible.
- Horizon : Sprint 1.

#### US03 — Identifier les meilleurs produits

- Formulation : En tant que analyste métier, je veux classer les produits par chiffre d’affaires, afin de préparer une recommandation d’assortiment.
- Justification métier : Concentrer l’analyse sur les produits déterminants.
- Critères d’acceptation testables : Sur les deux mois : P01 45 000, P02 28 000, P03 17 000 TND, tri décroissant. Le filtre janvier produit 20 000, 12 000, 8 000 TND. Le classement suit les filtres.
- Ordre initial : 3 ; estimation relative illustrative : 5 points.
- Contraintes / dépendances : Même source que US01 ; le classement fait partie du premier tableau de bord.
- Horizon : Sprint 1.

#### US04 — Lire la marge commerciale

- Formulation : En tant que contrôleuse de gestion, je veux consulter la marge en valeur et le taux de marque, afin de apprécier la rentabilité des ventes.
- Justification métier : Éviter de confondre volume et rentabilité.
- Critères d’acceptation testables : Sur les deux mois : CA 90 000 TND, coût 63 000 TND, marge 27 000 TND, taux de marque 30 %. Janvier : 10 800 TND et 27 %. CA nul : taux non calculable, sans division par zéro.
- Ordre initial : 4 ; estimation relative illustrative : 5 points.
- Contraintes / dépendances : Coûts disponibles ; règles de calcul à clarifier.
- Horizon : Sprint 2, hypothèse.

#### US05 — Comparer les magasins

- Formulation : En tant que responsable régional, je veux comparer les magasins, afin de repérer les écarts de performance.
- Justification métier : Préparer l’accompagnement des magasins.
- Critères d’acceptation testables : Sur les deux mois : N1 32 000, N2 22 000, S1 20 000, S2 16 000 TND. Filtrer Nord ne montre que N1 et N2. Le total Nord est 54 000 TND.
- Ordre initial : 5 ; estimation relative illustrative : 3 points.
- Contraintes / dépendances : US02 utile ; comparaison descriptive, sans classement causal.
- Horizon : Sprint 2, hypothèse.

#### US06 — Comparer deux périodes

- Formulation : En tant que directeur commercial, je veux comparer février à janvier, afin de détecter la croissance ou le recul.
- Justification métier : Mesurer une évolution lisible.
- Critères d’acceptation testables : 50 000 contre 40 000 TND : écart +10 000 et +25 %. Les périodes comparées sont affichées. Si la période de référence vaut zéro, le pourcentage est indiqué non calculable.
- Ordre initial : 6 ; estimation relative illustrative : 5 points.
- Contraintes / dépendances : US01 ; convention de comparaison explicite.
- Horizon : Sprint 2, hypothèse.

#### US07 — Comparer les catégories

- Formulation : En tant que analyste métier, je veux analyser les ventes par catégorie, afin de ajuster les actions commerciales.
- Justification métier : Relier résultats et portefeuille de produits.
- Critères d’acceptation testables : Sur les deux mois : Équipement (P01+P02) 73 000 TND ; Accessoires (P03) 17 000 TND. Janvier : 32 000 et 8 000 TND. Le filtre catégorie met à jour le total.
- Ordre initial : 7 ; estimation relative illustrative : 3 points.
- Contraintes / dépendances : Référentiel produits fiable.
- Horizon : Non affectée initialement.

#### US08 — Identifier les principaux clients

- Formulation : En tant que directeur commercial, je veux voir les clients les plus contributeurs, afin de préparer les revues de comptes.
- Justification métier : Concentrer les revues commerciales.
- Critères d’acceptation testables : C01 45 000, C02 28 000, C03 17 000 TND sur les deux mois. Les noms réels ne sont pas nécessaires ; seuls les codes clients autorisés apparaissent. Le filtre période s’applique.
- Ordre initial : 8 ; estimation relative illustrative : 5 points.
- Contraintes / dépendances : Codes pseudonymisés ; accès autorisé au pilote.
- Horizon : Non affectée initialement.

#### US09 — Exporter une sélection

- Formulation : En tant que analyste métier, je veux exporter les résultats filtrés, afin de préparer une analyse complémentaire.
- Justification métier : Réduire la ressaisie.
- Critères d’acceptation testables : Un export Nord contient uniquement N1 et N2 et totalise 54 000 TND sur les deux mois. La période et les filtres sont indiqués dans le fichier. Les montants restent numériques.
- Ordre initial : 9 ; estimation relative illustrative : 3 points.
- Contraintes / dépendances : Une vue filtrée exploitable existe ; support CSV ou XLSX à préciser.
- Horizon : Non affectée initialement.

#### US10 — Vérifier la fraîcheur des données

- Formulation : En tant que responsable régional, je veux voir la date et le statut du dernier chargement, afin de éviter une décision sur des données périmées.
- Justification métier : Rendre la confiance et les limites visibles.
- Critères d’acceptation testables : Le scénario nominal affiche « Chargement réussi : 01/03/2026 08:00 ». Une simulation d’échec affiche « Dernier chargement échoué ; données au 28/02/2026 ». Aucun échec ne remplace les données valides par des zéros.
- Ordre initial : 10 ; estimation relative illustrative : 3 points.
- Contraintes / dépendances : Journal de chargement fictif fourni ; ne remplace pas les contrôles de qualité de la DoD.
- Horizon : Non affectée initialement.

#### US11 — Consulter le dictionnaire des indicateurs

- Formulation : En tant que contrôleuse de gestion, je veux accéder aux définitions des indicateurs, afin de interpréter les chiffres de façon homogène.
- Justification métier : Limiter les interprétations contradictoires.
- Critères d’acceptation testables : Le dictionnaire indique CA net HT en TND, coût d’achat, marge = CA − coût, taux de marque = marge / CA. Il précise les périodes et l’absence de taxes. Chaque indicateur affiché renvoie à sa définition.
- Ordre initial : 11 ; estimation relative illustrative : 2 points.
- Contraintes / dépendances : Version enrichie pour utilisateurs ; la documentation minimale existe dès Sprint 1.
- Horizon : Non affectée initialement.

#### US12 — Préparer la réunion de direction

- Formulation : En tant que directeur commercial, je veux ouvrir une vue de synthèse dédiée, afin de préparer rapidement le comité commercial.
- Justification métier : Réduire le temps de préparation et faciliter les décisions.
- Critères d’acceptation testables : La vue regroupe CA, marge et variation mensuelle sans ressaisie. Pour les deux mois : 90 000 TND, 27 000 TND et +25 % février/janvier. Les filtres et la fraîcheur des données restent visibles.
- Ordre initial : 12 ; estimation relative illustrative : 5 points.
- Contraintes / dépendances : US04 et US06 terminées ; découpage ultérieur possible.
- Horizon : Non affectée initialement.


### Comment justifier l’ordre initial

US01 et US02 répondent aux utilisateurs principaux ; US03 rend la première lecture immédiatement utile. US04 permet d’inspecter une règle économique risquée. US05 et US06 enrichissent la décision. Les autres besoins restent visibles, sans être promis. Un binôme peut proposer de remonter US10 si la fraîcheur des données constitue un risque critique : la qualité minimale demeure obligatoire dès le premier Increment.

Il n’existe pas de formule universelle Scrum pour la priorité. Valeur, risque, dépendances, apprentissage et coût peuvent éclairer l’ordre. Une note calculée n’exonère pas le PO de ses décisions. [S3]

### Résultat attendu

12 stories expliquées, un ordre argumenté et deux critères discutés par binôme. Le PO peut modifier l’ordre après discussion ; conserver l’ordre initial pour comparer.

### Points de vigilance et erreurs fréquentes

Éviter « En tant que système, je veux importer une table » comme substitut automatique à un besoin. Ne pas confondre définition de l’indicateur et spécification d’une technologie. Ne pas exiger une User Story pour chaque PBI : le format est une pratique choisie ici, pas une obligation Scrum.

### Questions de réflexion pour les participants

Quelle story apporte un apprentissage rapide ? Laquelle pourrait être plus petite ? Une dépendance réelle impose-t-elle toujours un lien fin-début dans le Gantt ?

### Lien avec la préparation PSPO I

Le PO demeure redevable du backlog même s’il délègue sa rédaction. Les Developers estiment ; la Scrum Team affine ensemble. [S3]

## Étape 5 — Organiser le Product Backlog dans Microsoft Project — 30 min

### Objectif de l’étape

Construire une représentation lisible sans faire croire que Project possède un module complet de Product Backlog.

### Contexte métier

Le formateur doit pouvoir retrouver la valeur, l’ordre, la taille et les critères, tandis que le tableau reste simple.

### Notions Scrum à comprendre

Une carte n’est pas un artefact complet : l’objectif, les informations et la conversation comptent. Un statut d’outil ne prouve pas la qualité d’un Increment. [S3]

### Manipulations détaillées dans Microsoft Project

1. Affichage > Diagramme de Gantt ou, depuis le tableau, Format > Feuille.
2. Saisir une ligne non indentée par story, de US01 à US12, dans Nom de la tâche. Ne pas dupliquer US01 si elle existe déjà.
3. Ajouter les colonnes à droite via Ajouter une nouvelle colonne : Texte1, Nombre1, Nombre2, Nombre3, Texte2, Texte3, Sprint, État du tableau et Afficher dans le tableau, selon leur traduction.
4. Renommer les champs personnalisés : clic droit sur l’en-tête > Champs personnalisés, si disponible ; ou Projet > Champs personnalisés. Sélectionner le champ de tâche, puis Renommer. Vérifier qu’il s’agit de champs de tâches, pas de ressources.
5. Utiliser le dictionnaire ci-dessous. Si les champs ont déjà un usage dans le modèle, prendre des numéros libres et consigner la correspondance ; ne pas écraser des données existantes.
6. Pour Notes : ouvrir les informations de chaque tâche, onglet Notes ; coller les fiches du backlog. Ne pas coller un tableau complexe dans une cellule Nom.
7. Mettre les 12 PBI visibles dans le tableau. Laisser Sprint = Aucun sprint jusqu’à la Planning.
8. Trier la feuille sur Ordre backlog croissant via Affichage > Trier > Trier par, selon le ruban ; vérifier que les champs de la ligne restent ensemble. L’ID de ligne peut changer : utiliser toujours l’identifiant US.
9. Revenir au tableau. Format > Personnaliser les cartes : afficher ID PBI, Points, Ordre backlog, Obstacle, Reste estimé h si ces champs sont disponibles dans la liste. Microsoft documente jusqu’à cinq champs supplémentaires. Si un champ n’est pas proposé sur les cartes du poste, le conserver dans la feuille, sans inventer un affichage. [S1]
10. Enregistrer une copie `NOVALIS_BI_Scrum_00_Backlog.mpp` par Enregistrer sous, puis poursuivre dans le fichier de travail principal.

### Données à saisir

| Champ Project | Alias du TP | Contenu / unité |
|---|---|---|
| Nom de la tâche | — | ID et titre de story |
| Texte1 | ID PBI | US01…US12 ; stable, indépendant de l’ID de ligne |
| Nombre1 | Points | Estimation relative, somme initiale 47 |
| Nombre2 | Ordre backlog | 1…12 ; 1 = premier |
| Nombre3 | Reste estimé h | Prévision manuelle en heures ; vide avant Planning |
| Texte2 | Obstacle | Vide ou description datée |
| Texte3 | Résultat DoD | À vérifier / Conforme / Non conforme |
| Notes | — | Formulation, valeur, critères, contraintes et preuves |
| Sprint | Champ natif | Aucun sprint puis sélection native |
| État du tableau | Champ natif | État opérationnel de la carte |
| Afficher dans le tableau | Champ natif | Oui pour les 12 PBI |

La colonne Priorité native de Project sert au comportement de nivellement des ressources ; ne pas la rebaptiser en règle universelle d’ordre Scrum. Les champs personnalisés du TP n’ont pas de calcul automatique. [S1 pour Sprint et tableaux ; convention pédagogique pour les alias]

Les tâches détaillées créées plus tard auront Nombre1 = 0 ou vide, Texte1 = `T-USxx-n` et Afficher dans le tableau = Non afin de ne pas doubler les stories dans le tableau. Le plan détaillé sera relié au PBI dans Notes ; aucune tâche récapitulative n’est nécessaire ici.

### Résultat attendu

12 cartes visibles, 12 identifiants uniques, 47 points, critères dans Notes et classeur, aucun lien fin-début artificiel entre toutes les stories.

### Points de vigilance et erreurs fréquentes

Le Gantt exprime mal l’ordre de valeur, la conversation et les preuves de qualité. Les points ne sont ni une durée ni un Travail Project. Déplacer une carte ne crée pas automatiquement un historique quotidien exploitable pour un burndown personnalisé. Les documents et l’historique sont donc conservés dans Excel.

Variante B : Texte4 = Sprint simulé, Texte5 = État simulé ; utiliser ces champs à la place des champs Agile absents. Trier/filtrer la feuille. Il ne s’agit pas d’un tableau Scrum natif.

### Questions de réflexion pour les participants

Comment retrouver US03 si son numéro de ligne change ? Pourquoi un tableau Excel reste-t-il utile malgré le fichier Project ?

### Lien avec la préparation PSPO I

Transparence et compréhension du backlog priment sur la complétude d’un formulaire ou le respect d’un modèle de fichier. [S3]

## Étape 6 — Planifier les sprints — 25 min

### Objectif de l’étape

Créer trois timeboxes successives et préparer des prévisions révisables.

### Contexte métier

NOVALIS veut apprendre toutes les deux semaines. Trois sprints fournissent un horizon de travail, pas une garantie de livraison de tout le backlog.

### Notions Scrum à comprendre

Un Sprint dure au plus un mois et le suivant commence immédiatement après le précédent. Les événements, la qualité, la collaboration et l’affinement font partie du travail du Sprint. Le calendrier ne transforme pas les points en temps. [S3]

### Manipulations détaillées dans Microsoft Project

1. Projet > Gérer les sprints ou Sprints > Gérer.
2. Pour Sprint 1, définir Début = 02/11/2026 ; Longueur / Durée = deux semaines. Selon le champ, saisir la valeur dans l’unité proposée (par exemple 2 semaines / 2w) ; vérifier le résultat au lieu de présumer la syntaxe française.
3. Dans Ajouter un sprint, saisir Début = 16/11/2026 et Durée = deux semaines ; Ajouter un sprint.
4. Ajouter Sprint 3 au 30/11/2026 pour deux semaines. Valider par OK.
5. Contrôler les frontières : [02/11,16/11[, [16/11,30/11[, [30/11,14/12[. Les derniers jours calendaires inclus sont 15/11, 29/11 et 13/12. L’affichage peut montrer le dernier jour ouvré pour certaines dates : vérifier la sémantique de la boîte et l’absence de chevauchement ; ne pas confondre 10 jours ouvrés et 10 jours calendaires.
6. Conserver les identifiants Sprint 1/2/3. L’aide consultée documente les dates et durées, mais ne garantit pas une commande de renommage du nom natif de sprint desktop. N’inventer ni clic droit ni champ Nom : si le poste permet réellement de modifier ce nom, le tester ; sinon utiliser les noms métier ci-dessous dans le registre Sprints. Renommer une colonne d’état ne renomme pas un Sprint. [S1]
7. Sprints > Planification > Tableau de planification sprint : observer les colonnes ; ne déplacer pour l’instant que les stories du Sprint 1 après accord à l’étape 7.
8. Pour affecter un élément : glisser de Aucun sprint vers Sprint 1 ; alternative native : Format > Feuille et choisir Sprint 1 dans la colonne Sprint. [S1]

### Données à saisir

| Sprint et nom métier documentaire | Dates calendaires | Objectif indicatif | Prévision avant apprentissage |
|---|---|---|---|
| 1 — Première lecture des ventes | 02–15/11/2026 | Permettre une lecture fiable des ventes, de leur répartition régionale et des produits contributeurs | US01 5 + US02 3 + US03 5 = 13 points |
| 2 — Lecture économique | 16–29/11/2026 | Permettre d’interpréter la rentabilité et de comparer magasins et périodes | US04 5 + US05 3 + US06 5 = 13 points |
| 3 — Approfondir la confiance | 30/11–13/12/2026 | Rendre l’analyse plus explicable et réutilisable | Hypothèse initiale : US07 3 + US09 3 + US10 3 + US11 2 = 11 points ; à replanifier |

Capacité initiale fictive : 3 Developers × 10 jours ouvrés × 6 heures de disponibilité quotidienne = 180 heures disponibles pour les activités du Sprint, avant réservations. Réserver 36 heures-personnes pour événements, affinement et collaboration, 72 pour support/exploitation, soit un plafond prévisionnel de 72 heures-personnes pour le travail des PBI. Les imprévus restent possibles. Sprint 1 : 52 h initiales ; Sprint 2 : 60 h ; Sprint 3 initial : 48 h. Ces prévisions indépendantes ne constituent pas un taux de conversion points/heures.

Ces chiffres n’incluent ni une capacité PO fictivement ajoutée aux Developers ni une productivité garantie. En Sprint 2, une absence imprévue ramènera le plafond à 48 h ; en Sprint 3 il restera à 48 h du fait de la disponibilité annoncée.

### Résultat attendu

Trois sprints natifs successifs ; dates vérifiées ; objectifs et hypothèses de capacité documentés. Seul le Sprint 1 va être réellement sélectionné. Les sprints suivants restent des prévisions hors Sprint Backlog courant.

### Points de vigilance et erreurs fréquentes

Ne pas affecter automatiquement les 12 stories aux trois sprints pour « remplir les colonnes ». Une story peut être réordonnée ou découpée après apprentissage. Une capacité en heures ne prouve pas que 13 points rentreront.

### Questions de réflexion pour les participants

Pourquoi laisser du travail dans Aucun sprint ? Quels risques justifient de ne pas utiliser les 72 heures jusqu’à la dernière minute ?

### Lien avec la préparation PSPO I

Prévision, planification empirique et sélection par les Developers en discussion avec le PO. [S3, S4]

## Étape 7 — Réaliser la Sprint Planning — 30 min

### Objectif de l’étape

Construire le pourquoi, le quoi et le comment du Sprint 1.

### Contexte métier

Amel veut inspecter une première analyse, pas recevoir uniquement un compte rendu de travaux techniques.

### Notions Scrum à comprendre

Toute la Scrum Team collabore à la Planning. Le PO prépare la discussion sur l’objectif et les éléments importants ; les Developers sélectionnent les éléments, élaborent leur plan et sont responsables du dimensionnement. Le Sprint Goal est finalisé avant la fin de la Planning. Le Sprint Backlog associe ce but, les PBI sélectionnés et le plan pour les réaliser. [S3]

### Manipulations détaillées dans Microsoft Project

1. Ouvrir le registre Produit et relire le Product Goal.
2. Discuter US01–US04 avec les critères, la DoD et les risques. Ne pas ajouter US04 uniquement parce qu’elle est « petite ».
3. Dans le registre Sprints, inscrire le Sprint Goal retenu pour Sprint 1.
4. Dans Tableau de planification sprint, déplacer US01, US02 et US03 dans Sprint 1.
5. En feuille, saisir Reste estimé h = 20, 12, 20 sur ces trois PBI ; laisser les points à 5, 3, 5.
6. Dans Notes, ajouter le plan détaillé ci-dessous. Pour pratiquer la saisie de tâches, créer aussi les trois lignes détaillées de US01 dans le Gantt : `T-US01-1`, `T-US01-2`, `T-US01-3` ; planification manuelle, points vides, Afficher dans le tableau = Non. Ne pas additionner leurs heures avec celles des PBI : ce sont deux niveaux du même plan.
7. Les responsables opérationnels sont convenus par les Developers, pas attribués unilatéralement par le PO. Les prénoms servent à rendre la collaboration lisible, sans comparer les performances individuelles.
8. Enregistrer une copie `NOVALIS_BI_Scrum_01_Planning_S1.mpp` avant les mises à jour.

### Données à saisir

Sprint Goal : « Permettre à la direction d’identifier les variations et les principaux contributeurs des ventes du pilote sur des chiffres réconciliés ».

| PBI | Travail indicatif du plan | Prévision initiale |
|---|---|---:|
| US01 | Vérifier les règles et totaux sources (6 h) ; préparer la restitution mensuelle (8 h) ; tester, documenter et rendre disponible (6 h) | 20 h |
| US02 | Vérifier les correspondances région/magasin (3 h) ; préparer le filtre (5 h) ; tester et documenter (4 h) | 12 h |
| US03 | Définir le tri et les filtres (4 h) ; préparer le classement (8 h) ; tester, documenter et intégrer (8 h) | 20 h |
| Total des PBI | Ne pas doubler avec les tâches détaillées | 52 h |

Répartition illustrative convenue : Inès pilote les contrôles avec Rania ; Sami prépare les restitutions avec Rania ; tous contribuent à l’intégration et aux vérifications. Une activité de 8 h peut être fractionnée en deux unités si cela aide l’inspection quotidienne. Il ne s’agit pas d’une prescription Scrum.

### Résultat attendu

Trois PBI sélectionnés, 13 points, un objectif commun, 52 heures de prévision initiale et un plan qui inclut tests et DoD. À la fin du Sprint, la restitution CA/région/classement doit être utilisable sur le pilote, avec limites connues.

### Points de vigilance et erreurs fréquentes

Correction indicative : US01–US03 est cohérent avec l’objectif et les hypothèses. Une autre sélection peut être recevable si elle aboutit à un objectif cohérent et un Increment utilisable ; elle devra disposer de son propre suivi au lieu de réutiliser artificiellement les chiffres du scénario corrigé.

Attention — Le PO n’impose pas US04 et ne répartit pas les tâches individuelles. Le Sprint Goal est un engagement ; la sélection des PBI est une prévision, adaptable dans le cadre de cet objectif. [S3]

### Questions de réflexion pour les participants

Peut-on retirer une fonctionnalité secondaire tout en atteignant le même but ? Qui décide comment réaliser le travail ?

### Lien avec la préparation PSPO I

Autogestion, responsabilités, trois thèmes de la Planning et engagement associé au Sprint Backlog. [S3]

## Étape 8 — Gérer le Sprint Backlog et le travail quotidien — 30 min

### Objectif de l’étape

Adapter quotidiennement le plan en conservant un état transparent du produit et du travail restant.

### Contexte métier

Une difficulté de correspondance entre codes produits est découverte à J3. Le travail restant augmente : ce n’est pas nécessairement de la contre-performance, mais une information nouvelle.

### Notions Scrum à comprendre

Le Product Backlog couvre les améliorations du produit ; le Sprint Backlog est le plan des Developers pour le Sprint courant. Le Daily Scrum est un événement de 15 minutes pour inspecter la progression vers le Sprint Goal et adapter le plan. Ce n’est pas une réunion de reporting au PO ni une affectation de tâches par le Scrum Master. [S3]

### Manipulations détaillées dans Microsoft Project

1. Sprints > Sprint > Tableau sprint actuel. Pour les dates fictives, choisir explicitement Sprint 1 dans le sélecteur Sprint si le sprint « actuel » fondé sur le contexte du poste n’est pas celui du cas. Ne pas changer l’horloge Windows pour cet exercice.
2. Observer les états natifs. Microsoft les donne en anglais comme Next up, In progress, Done ; l’aide française peut afficher « Accès suivant », « En cours », « Terminé ». Renommer seulement la colonne de travail à préparer en « À faire » si besoin : clic droit en-tête > Renommer. Ne pas modifier le sens de la colonne terminale. [S1]
3. À droite de la dernière colonne : Ajouter une nouvelle colonne > À vérifier. Cette colonne signifie « vérifications restantes », pas « Done ».
4. J1 : déplacer US01 et US03 vers En cours ; US02 reste À faire. Mettre à jour Nombre3 en feuille selon les valeurs ci-dessous.
5. J3 : laisser US03 En cours ; saisir dans Obstacle « J3 — correspondance P03 à confirmer ; décision attendue de Leïla ». Noter dans Notes l’action : Rania et Leïla vérifient le référentiel avant J4.
6. J4 : supprimer le blocage seulement après résolution et conserver la trace datée dans Notes. Ne pas créer un état « Bloqué = terminé ».
7. J5 : déplacer US01 vers À vérifier. J6 : après conformité à la DoD, renseigner Texte3 = Conforme et placer US01 en Terminé. J8 : même procédure pour US02 ; J10 pour US03.
8. Après chaque journée, inscrire les valeurs dans le registre de suivi Excel ; Project conserve l’état courant mais l’historique pédagogique est saisi séparément.
9. Si une carte terminale modifie aussi le pourcentage d’achèvement sur votre poste, observer ce comportement et le consigner. Ne pas supposer un lien universel entre pourcentage, reste et DoD ; le reste personnalisé se met à jour manuellement.

### Données à saisir

| Jour ouvré simulé | Reste US01 h | Reste US02 h | Reste US03 h | Situation |
|---|---:|---:|---:|---|
| J0 | 20 | 12 | 20 | Planning terminée |
| J1 | 18 | 12 | 19 | US01 et US03 démarrées |
| J2 | 14 | 12 | 19 | Contrôles en cours |
| J3 | 15 | 12 | 21 | Incertitude découverte ; réestimation |
| J4 | 11 | 10 | 21 | Référentiel clarifié ; US02 démarrée |
| J5 | 6 | 7 | 18 | US01 à vérifier ; rien de Done encore |
| J6 | 0 | 5 | 15 | US01 Done : 5 points |
| J7 | 0 | 2 | 13 | Tests restants sur US02 |
| J8 | 0 | 0 | 8 | US02 Done : 3 points supplémentaires |
| J9 | 0 | 0 | 3 | Vérifications finales US03 |
| J10 | 0 | 0 | 0 | US03 Done : 5 points supplémentaires |

Les jours sont des jours ouvrés : J1 = 02/11, J5 = 06/11, J6 = 09/11, J10 = 13/11. La timebox se termine le 15/11 ; Review et Retrospective ont lieu le dernier jour ouvré dans le scénario. Les heures sont des prévisions du reste, pas des heures réalisées ni une saisie automatique dans Travail restant natif.

### Résultat attendu

À J5 : aucune story Done, 31 h restantes, US01 À vérifier, US02/03 En cours. À J10 : trois stories conformes, 13 points terminés, pas d’obstacle ouvert pour ces éléments.

### Points de vigilance et erreurs fréquentes

Faire baisser le reste de 6 h parce que « la journée fait 6 h » serait une erreur : le reste est réestimé. Une story à 90 % n’est pas 90 % d’un Increment conforme. Ne pas réviser les points chaque jour pour maquiller l’avancement.

### Questions de réflexion pour les participants

Pourquoi le reste augmente-t-il à J3 ? Quelle adaptation du plan aide le Sprint Goal plutôt qu’un indicateur artificiel ?

### Lien avec la préparation PSPO I

Daily Scrum, auto-adaptation et responsabilité des Developers ; transparence des obstacles. [S3]

## Étape 9 — Suivre et visualiser l’avancement — 25 min

### Objectif de l’étape

Produire une lecture croisée de l’état, du reste et de la valeur sans confondre métrique et performance.

### Contexte métier

À J5, Amel voit beaucoup de travail en cours mais aucune fonctionnalité encore conforme. Elle veut comprendre le risque pour le but du Sprint.

### Notions Scrum à comprendre

Burndown et vélocité ne sont ni obligatoires ni suffisants. Une courbe aide à questionner le plan ; elle ne remplace pas l’inspection de l’Increment et de l’objectif. [S3]

### Manipulations détaillées dans Microsoft Project

1. Pour le point de contrôle J5, rouvrir une copie de l’état J5 ou ressaisir les trois restes et états correspondants ; ne pas écraser le fichier final sans copie.
2. Ouvrir la Feuille sprint actuelle ou sélectionner Sprint 1. Afficher Nom, Points, Reste estimé h, Obstacle, Résultat DoD, État du tableau.
3. Vérifier visuellement que seuls les PBI sont comptés ; les tâches détaillées sont masquées du tableau.
4. Rapport > Afficher les rapports > Tableau des tâches : ouvrir un rapport disponible relatif aux tâches ou sprints. Consigner son titre exact, ses unités et son filtre de sprint. L’aide vérifiée confirme cette catégorie, mais n’énumère pas pour tous les builds les mêmes titres de rapport. [S1]
5. Si le rapport affiche Travail ou Travail restant natifs vides, expliquer pourquoi : le TP a saisi des estimations dans Nombre3, pas une planification de ressources et du travail natif. Ne pas présenter un zéro natif comme une absence de reste réelle.
6. Pour un burndown assuré, ouvrir l’onglet Suivi_S1 d’Excel. Sélectionner Jour, Reste total h et Idéal h ; Insertion > Graphiques > Courbes. Donner le titre « Sprint 1 — reste estimé, données pédagogiques » ; axe vertical en heures, horizontal en jours ouvrés.
7. Facultatif : tracer un second graphique avec Points restants. Ne pas additionner heures et points et ne pas les faire partager une échelle indistincte.
8. Si votre édition propose un burndown natif dans les rapports, inspecter la source et la configuration avant emploi. Ce dossier ne garantit pas un burndown de Story Points prêt à l’emploi dans 2609. La méthode Excel est la référence reproductible du TP.

### Données à saisir

| Jour | Reste estimé h | Ligne idéale illustrative h | Points Done cumulés | Points restants |
|---|---:|---:|---:|---:|
| J0 | 52 | 52,0 | 0 | 13 |
| J1 | 49 | 46,8 | 0 | 13 |
| J2 | 45 | 41,6 | 0 | 13 |
| J3 | 48 | 36,4 | 0 | 13 |
| J4 | 42 | 31,2 | 0 | 13 |
| J5 | 31 | 26,0 | 0 | 13 |
| J6 | 20 | 20,8 | 5 | 8 |
| J7 | 15 | 15,6 | 5 | 8 |
| J8 | 8 | 10,4 | 8 | 5 |
| J9 | 3 | 5,2 | 8 | 5 |
| J10 | 0 | 0,0 | 13 | 0 |

Idéal = 52 × (10 − jour) / 10. Cette droite est un repère pédagogique linéaire, pas une obligation de rythme. Toutes ces valeurs sont fournies/simulées ; aucune n’est prétendue automatiquement calculée par Project. Le rapport natif ne devient comparable que si ses champs et unités correspondent réellement.

### Résultat attendu

Un tableau Project lisible et un graphique Excel avec titre, unités, source et commentaire : « hausse du reste à J3 ; nécessité d’inspecter les risques ; premières stories Done à J6 ».

### Points de vigilance et erreurs fréquentes

À J5, 31 h restantes et 13 points restants sont compatibles : aucun PBI n’est encore entièrement Done. Ne pas fractionner les points par pourcentage d’avancement. Ne pas inférer une cause individuelle d’une courbe.

### Questions de réflexion pour les participants

Une courbe proche de l’idéal prouve-t-elle que les utilisateurs obtiennent de la valeur ? Que faut-il inspecter en plus ?

### Lien avec la préparation PSPO I

Prévision empirique, résultats observés et limites des indicateurs de production. [S3, S4]

## Étape 10 — Simuler un changement de priorité en cours de sprint — 20 min

### Objectif de l’étape

Traiter une demande urgente sans confondre changement du Product Backlog et interruption arbitraire du Sprint.

### Contexte métier

À J4 du Sprint 1, Amel demande un taux d’atteinte de l’objectif commercial par région pour son prochain comité. L’objectif du Sprint 1 reste utile et n’est pas devenu obsolète.

### Notions Scrum à comprendre

Le PO ordonne le Product Backlog. Pendant le Sprint, aucun changement ne doit mettre en danger le Sprint Goal, la qualité ne diminue pas et le périmètre peut être clarifié et renégocié avec le PO selon les apprentissages. Seul le PO a le pouvoir d’annuler le Sprint si son objectif devient obsolète. Une urgence seule ne suffit pas à conclure à l’annulation. [S3]

### Manipulations détaillées dans Microsoft Project

1. Tableau de planification sprint > Aucun sprint > Nouvelle tâche : créer US13.
2. Ajouter les Notes et champs ci-dessous ; garder Sprint = Aucun sprint, état À faire/Non démarrée selon l’interface.
3. Dans l’ordre du backlog restant, placer US13 juste après US06 ; donner un rang documentaire 7 et décaler US07–US12 à 8–13. Les éléments déjà sélectionnés gardent leur rattachement au Sprint courant.
4. Consigner la discussion et la décision dans Notes de US13 : « J4 : valeur reconnue, objectif S1 maintenu, clarification des cibles et préparation pour un prochain Sprint ».
5. Ne pas affecter US13 à Sprint 1 dans le scénario corrigé. Les données de suivi S1 restent inchangées.

### Données à saisir

US13 — Mesurer l’atteinte des objectifs commerciaux.

« En tant que directrice commerciale, je veux comparer le CA régional à l’objectif commercial de février, afin de cibler les actions de rattrapage. »

Valeur : distinguer croissance et atteinte d’un engagement commercial. Taille illustrative : 3 points, estimée par les Developers après clarification. Prévision de travail ultérieure : 12 h, distincte des points.

Critères : objectifs février Nord 35 000 TND, Sud 25 000 TND ; CA réel Nord 30 000, Sud 20 000. Taux d’atteinte : 85,71 % et 80,00 % ; écarts : −5 000 TND chacun. Global : 50 000 / 60 000 = 83,33 %, et non moyenne simple des taux. Cible nulle : « Non calculable ». Source, mois et version des objectifs visibles. Les cibles définitives sont fournies après le Sprint 2.

### Résultat attendu

13 PBI au total et 50 points dans le backlog historique complet ; Sprint 1 toujours à 13 points. US13 est visible, clarifiée et ordonnée, sans être injectée de force dans le Sprint.

### Points de vigilance et erreurs fréquentes

Option possible, hors scénario de référence : PO et Developers négocient une substitution réalisable sans menacer le but et sans réduire la DoD. Il faudrait alors rebaser explicitement les données de simulation, pas conserver les mêmes totaux par commodité. Ne pas « annuler » seulement pour améliorer un burndown.

### Questions de réflexion pour les participants

Quelle information manque pour décider ? Dans quel cas le Sprint Goal deviendrait-il réellement obsolète, par exemple abandon du pilote commercial ?

### Lien avec la préparation PSPO I

Autorité du PO sur l’ordre et l’annulation ; limites de cette autorité sur le plan et l’autogestion des Developers. [S3]

## Étape 11 — Organiser la Sprint Review et la Sprint Retrospective — 25 min

### Objectif de l’étape

Séparer inspection du produit et amélioration de la façon de travailler.

### Contexte métier

À J10, les trois PBI du Sprint 1 sont conformes. Le formateur joue la direction et les utilisateurs ; la démonstration est une simulation métier, pas un développement BI réellement réalisé pendant le TP.

### Notions Scrum à comprendre

La Review inspecte le résultat et l’évolution de l’environnement avec les parties prenantes afin de décider des adaptations. Elle n’est pas une simple validation formelle ni une porte imposée avant toute livraison. La Retrospective porte sur qualité et efficacité de la Scrum Team. Elles ont lieu à l’intérieur du Sprint. [S3]

### Manipulations détaillées dans Microsoft Project

1. Filtrer ou afficher Sprint 1 ; confirmer US01–US03 Terminé et Résultat DoD = Conforme avec preuves dans Notes.
2. À partir du tableau métier fourni, démontrer oralement les interactions : sélectionner janvier, sélectionner Nord, effacer le filtre, afficher le classement produits. Le support Project n’exécute pas ces filtres BI ; le formateur fournit les résultats attendus.
3. Dans le registre Review, consigner les retours ci-dessous, leur interprétation et la décision du PO.
4. Revenir à Aucun sprint ; laisser US04/US05/US06 en tête des prochaines discussions. Garder US13 visible mais contrainte par les cibles non finalisées.
5. Dans le registre Retrospective, faire un tour « Conserver / Arrêter / Essayer », puis retenir une amélioration concrète. L’ajouter au plan du Sprint 2 dans Notes ou comme tâche de travail interne masquée du tableau, sans faux Story Points de valeur utilisateur.

### Données à saisir

Review, retours fictifs :

| Partie prenante | Retour | Adaptation proposée |
|---|---|---|
| Amel | « Je repère les produits moteurs ; il me manque la rentabilité » | Maintenir US04 haut dans le backlog |
| Karim | « Le filtre région est utile ; je veux comparer mes magasins » | Préparer US05 |
| Leïla | « Le classement est bon, mais j’ai vérifié les données à la main » | Tester et documenter plus tôt les totaux ; affiner US10 |
| Sonia | « Ne présentez pas une moyenne simple des pourcentages » | Clarifier US04 et US13, calcul sur agrégats |

Mesure exploratoire après S1 : cinq pilotes prennent 28, 30, 32, 30 et 30 minutes pour leur première lecture ; moyenne 30 minutes. Le périmètre du Product Goal n’est pas encore complet.

Retrospective : conserver les vérifications croisées ; arrêter de découvrir les codes produits tardivement ; essayer un contrôle du référentiel et des jeux de tests avant la première restitution. Action choisie : « Rania et Inès vérifient ensemble les codes et les cas limites dès le premier jour du prochain Sprint ; vérifier à J2 qu’aucun code critique n’est inexpliqué ». Le temps est inclus dans la prévision des PBI du Sprint 2, pas ajouté invisiblement.

### Résultat attendu

Deux comptes rendus courts et distincts : adaptations produit d’un côté, amélioration de collaboration/qualité de l’autre.

### Points de vigilance et erreurs fréquentes

Ne pas faire du PO le juge unique du travail Done. Les éléments non Done sont discutés en transparence, mais pas présentés comme un Increment terminé ni démontrés comme tel. Ne pas transformer la Retrospective en recherche de responsables individuels. [S3]

### Questions de réflexion pour les participants

Un retour positif prouve-t-il une amélioration mesurée ? Pourquoi US10 ne dispense-t-elle pas des contrôles qualité dès S1 ?

### Lien avec la préparation PSPO I

Finalités des événements, collaboration des parties prenantes et adaptation du backlog. [S3]

## Étape 12 — Comprendre l’Increment et la Definition of Done — 20 min

### Objectif de l’étape

Déterminer ce qui peut réellement être compté comme Done.

### Contexte métier

Un tableau de bord avec de beaux graphiques mais des totaux faux ne doit pas être annoncé utilisable. La qualité minimale a été fournie avant Planning et reste applicable à chaque Sprint.

### Notions Scrum à comprendre

La DoD définit formellement l’état de qualité requis de l’Increment. Les critères d’acceptation précisent un PBI ; la validation métier apporte un retour ou une décision d’usage ; elle ne remplace pas la DoD. Un Increment doit être intégré aux précédents et utilisable. Plusieurs Increments peuvent être créés dans un même Sprint et délivrés avant la Review. [S3]

### Manipulations détaillées dans Microsoft Project

1. Ouvrir les Notes de US01 ; retrouver les critères et ajouter la liste des preuves ci-dessous.
2. Dans Texte3/Résultat DoD, saisir Conforme seulement lorsque toutes les conditions applicables sont satisfaites.
3. Déplacer vers Terminé seulement après cette vérification partagée ; Project n’applique pas automatiquement les règles métier de la DoD.
4. Cas test : dupliquer le fichier de travail pour l’exercice, puis mettre US03 = Non conforme si le filtre janvier retourne un classement faux. La retirer des éléments Done et consigner le défaut ; revenir ensuite au scénario de référence où le défaut est corrigé à J10.
5. Ne pas faire varier arbitrairement les points pour simuler la non-conformité : un PBI de 5 points non Done compte pour zéro point terminé.

### Données à saisir

DoD pédagogique NOVALIS, applicable à tout Increment :

1. Les critères d’acceptation applicables sont vérifiés avec preuve identifiable.
2. Les totaux CA/coûts du périmètre livré sont réconciliés avec la source fictive de référence ; aucun écart inexpliqué.
3. Absence de doublons ou valeurs obligatoires manquantes non traitées ; limites et exclusions connues sont documentées.
4. Calculs, unités, arrondis et filtres sont cohérents ; les cas sans donnée et dénominateur nul sont traités lorsque pertinents.
5. Les tests fonctionnels et de non-régression des fonctions déjà livrées passent.
6. Les fonctions nouvelles sont intégrées ; le pilote peut utiliser le produit sans assemblage manuel de composants.
7. L’accès est limité aux utilisateurs autorisés du pilote et les données sont fictives/pseudonymisées ; aucun incident critique de sécurité connu n’est laissé sans traitement.
8. Une documentation minimale précise le périmètre, la source, la date des données et la définition des indicateurs livrés.
9. Le produit est mis à disposition dans l’environnement pilote convenu, sans défaut bloquant connu ; consigne d’accès et d’usage disponible.
10. Les preuves de vérification et les limites connues sont accessibles à la Scrum Team.

Exemple US01 : critère = 40 000 TND en janvier ; DoD = résultat testé, source réconciliée, filtre et cas vide contrôlés, accès autorisé et mise à disposition ; retour métier = « la direction souhaite aussi une comparaison ».

### Résultat attendu

Une DoD commune et une décision argumentée sur chaque PBI. Dans ce TP de gestion, les preuves sont des fiches fictives fournies ; elles ne prétendent pas attester un produit BI réellement développé.

### Points de vigilance et erreurs fréquentes

La documentation minimale de DoD est requise dès S1 ; US11 apporte ensuite un dictionnaire utilisateur enrichi et navigable. La visibilité de fraîcheur US10 est une fonction produit supplémentaire, pas une excuse pour livrer avant elle des données sans origine connue. Aucun PO ne peut réduire unilatéralement les standards de qualité pour « finir ».

### Questions de réflexion pour les participants

US06 passe ses calculs simples mais échoue sur la référence zéro : peut-elle être Done ? L’accord oral du sponsor supprime-t-il un test de non-régression nécessaire ?

### Lien avec la préparation PSPO I

Engagement associé à l’Increment ; qualité et transparence ; obligations minimales organisationnelles si une DoD d’entreprise existe. [S3]

## Étape 13 — Gérer plusieurs sprints et inspecter les résultats — 20 min

### Objectif de l’étape

Suivre l’évolution réelle du produit et adapter les prévisions après chaque Sprint.

### Contexte métier

Le Sprint 2 rencontre une absence imprévue et un défaut de comparaison sur période nulle. Le Sprint 3 est replanifié : il ne réalise pas la liste envisagée à l’étape 6.

### Notions Scrum à comprendre

Un élément non Done revient au Product Backlog pour être considéré ultérieurement ; son report dans le prochain Sprint n’est pas automatique. L’historique des prévisions et résultats doit être conservé. La vélocité, si employée, n’est pas un objectif à maximiser ni une mesure individuelle. [S3]

### Manipulations détaillées dans Microsoft Project

1. Avant le Sprint 2, enregistrer une copie de fin S1.
2. Pendant la Planning S2, sélectionner US04/US05/US06 ; garder US13 hors Sprint puisque les cibles ne sont pas finalisées.
3. Saisir les prévisions 24/12/24 h, soit 60 h. Après annonce de l’absence à J2, noter le plafond de capacité révisé à 48 h et les adaptations ; ne pas allonger le Sprint pour masquer l’écart.
4. Fin S2 : US04 et US05 = Terminé/Conforme ; US06 = À vérifier/Non conforme, Reste estimé h = 10. Défaut : comparaison à une référence zéro non gérée. Le PO et les Developers constatent que l’objectif complet de comparaison n’est pas atteint.
5. Enregistrer `NOVALIS_BI_Scrum_02_Fin_S2.mpp` avant de modifier le Sprint de US06. Dans le registre historique, conserver sélection 13 et terminé 8.
6. Remettre US06 dans Aucun sprint pour réexamen ; conserver le même ID, ses critères et son estimation relative de référence 5 pour ce scénario, sans créer un nouveau crédit de 5 points.
7. Planning S3 : cibles confirmées ; sélectionner US06, US13, US10, US11. Reste prévu 10 + 12 + 12 + 8 = 42 h, pour un plafond de 48 h. Les valeurs en points 5 + 3 + 3 + 2 = 13 ne sont pas une conversion de ces 42 h.
8. Fin S3 : mettre les quatre éléments Terminé/Conforme ; conserver les autres PBI dans Aucun sprint. Enregistrer la copie finale.

### Données à saisir

| Sprint | But et sélection réelle | Done / non Done | Retour et adaptation |
|---|---|---|---|
| S1 | Première lecture fiable ; US01/02/03 = 13 pts | 13 Done ; aucun non Done | Besoin de marge et de comparaison ; préparer S2, clarifier taux et référentiels |
| S2 | Interpréter rentabilité et comparer magasins/périodes ; US04/05/06 = 13 pts | US04+05 = 8 pts Done ; US06 5 pts non Done | Rentabilité utile ; comparaison partielle non disponible ; réexaminer US06 et capacité ; cibles US13 confirmées en fin S2 |
| S3 | Préparer le comité avec des écarts explicables et une confiance visible ; US06/13/10/11 = 13 pts | 13 pts Done ; aucun non Done | Mesurer l’usage, garder US07/08/09/12 dans le backlog, envisager ensuite une vue de comité |

Mesures fictives : S1, temps moyen observé 30 min ; S2, 24 min, avec comparaison encore non conforme ; S3, cinq observations 12/14/15/13/16 min, moyenne 14 min et aucune ressaisie sur les essais. Le Product Goal « moins de 15 min » n’est pas pleinement établi pour chaque utilisateur : 15 et 16 min ne satisfont pas ce seuil strict. Décision : continuer à inspecter les usages et ne pas annoncer automatiquement l’objectif atteint sur une moyenne seule.

Bilan contrôlé : 47 points initiaux + US13 3 = 50 points historiques ; 13 + 8 + 13 = 34 points Done uniques ; restent US07 3, US08 5, US09 3, US12 5 = 16 points. US06 sélectionnée deux fois n’est comptée Done qu’une fois. Additionner 13+13+13 comme « produit livré » serait faux.

### Résultat attendu

Trois historiques cohérents et une évolution du produit distincte du nombre de tâches. L’incrément S2 inclut marge et comparaison de magasins utilisables, sans la comparaison de périodes non Done ; les limitations du Sprint Goal sont explicites.

### Points de vigilance et erreurs fréquentes

Ne pas effacer l’échec partiel du S2 en déplaçant seulement la carte vers S3 sans archive. Ne pas croire qu’une vélocité 13/8/13 permet une promesse mécanique du prochain Sprint. Un reste d’heures moindre ne signifie pas moins de points crédités partiellement.

### Questions de réflexion pour les participants

Quelle valeur a été créée en S2 malgré l’objectif incomplètement atteint ? Comment vérifier la valeur réelle sans confondre corrélation et causalité ?

### Lien avec la préparation PSPO I

Prévision, livraison, valeur observée et adaptation de l’ordre du backlog. [S3, S4]

## Étape 14 — Exercice de synthèse autonome — 45 min

### Objectif de l’étape

Reproduire les décisions essentielles sur un nouveau Sprint sans suivre un corrigé pas à pas.

### Contexte métier

Après S3, l’analyse est utilisable, mais les utilisateurs souhaitent préparer plus facilement leur comité. Le temps de préparation reste parfois supérieur ou égal à 15 minutes. Un Sprint 4 est envisagé, du 14 au 27 décembre 2026, selon les mêmes conventions calendaires pédagogiques.

### Notions Scrum à comprendre

Un nouveau Sprint sert l’objectif produit encore en cours. Les Developers sélectionnent selon but, capacité et qualité ; le PO décide de l’ordre produit et dialogue sur les besoins. [S3]

### Manipulations détaillées dans Microsoft Project

1. Enregistrer une copie `NOVALIS_BI_Scrum_Synthese.mpp`.
2. Compléter ou reformuler le Product Goal sans créer deux objectifs concurrents. Expliquer si vous maintenez ou abandonnez le précédent.
3. Relire US07/08/09/12 et proposer un ordre argumenté.
4. Si les fonctions natives sont présentes, ajouter Sprint 4 via Gérer les sprints ; sinon documenter la variante.
5. Écrire un Sprint Goal, sélectionner un sous-ensemble et saisir les prévisions de reste.
6. Simuler J0, J2 et J4 ; mettre à jour états, reste et obstacles, en conservant l’historique dans la feuille Synthèse.
7. Traiter l’événement à J4 ci-dessous, sans modifier silencieusement l’objectif ou la DoD.
8. Rédiger une Review prévue avec preuves, questions d’usage et décisions possibles, puis une amélioration issue de Retrospective.
9. Répondre en une phrase : « Qu’est-ce qui serait réellement un Increment, et qu’avons-nous seulement simulé dans Project ? »

### Données à saisir

Capacité prévisionnelle disponible pour les PBI : 36 h après réservations. Hypothèses d’effort : US07 12 h ; US08 20 h ; US09 12 h ; US12 24 h. Elles sont indépendantes des points 3/5/3/5. Vous pouvez affiner ou découper une story si vous expliquez les critères conservés et l’impact sur la valeur ; ne fabriquer pas un faux Done partiel.

Événement J4 : « Le sponsor demande un export de tous les clients avec coordonnées personnelles pour le lendemain ». Ces données n’existent pas dans le périmètre pédagogique, et les droits d’accès ainsi que la finalité ne sont pas établis. Ne pas assimiler cette demande à la simple US09 d’export des résultats autorisés. Créer un besoin à clarifier dans le Product Backlog, sans inventer de données réelles ni promettre une intégration immédiate.

Livrables : MPP ou variante explicitée, registre produit, backlog ordonné, objectif Sprint 4, sélection motivée, trois points de suivi, décision sur la demande, plan de Review et action d’amélioration. Le corrigé se trouve dans la partie formateur, après les annexes de référence.

### Résultat attendu

Un dossier autonome défendable, sans obligation d’une sélection unique. Le groupe doit pouvoir expliquer pourquoi il a laissé certains besoins hors du Sprint.

### Points de vigilance et erreurs fréquentes

Ne pas remplir la capacité avec des éléments sans lien ; ne pas exporter des données personnelles non autorisées ; ne pas confondre urgence et obsolescence du Sprint Goal. Une alternative raisonnable est acceptée si l’ensemble des chiffres et décisions est cohérent.

### Questions de réflexion pour les participants

Quelle expérience utilisateur permettra de tester la réduction du temps de préparation ? Comment rendre visible un besoin encore trop incertain pour être sélectionné ?

### Lien avec la préparation PSPO I

Décision de valeur, autogestion, parties prenantes, prévision et qualité. L’exercice de sécurité est une contrainte métier du cas, pas une question de droit ou une règle de certification universelle.

## Étape 15 — Préparation à la certification PSPO I — 35 min

### Objectif de l’étape

Relier les décisions du TP aux connaissances officielles, et non à une mémorisation des menus.

### Contexte métier

Un bon fichier MPP ne suffit pas à démontrer une compréhension de Product Ownership. Le participant doit justifier qui décide, pourquoi et sur quelles observations.

### Notions Scrum à comprendre

À réviser : empirisme et pensée Lean ; valeurs ; responsabilités PO/Developers/Scrum Master ; événements et finalités ; artefacts et engagements ; transparence du backlog ; valeur et objectifs ; Increment utilisable et DoD ; adaptation du périmètre et annulation. [S3, S4]

Rappels de timeboxes : Sprint au plus un mois ; Daily Scrum 15 min ; pour un Sprint d’un mois, Planning au plus 8 h, Review 4 h, Retrospective 3 h ; les trois derniers sont généralement plus courts pour un Sprint plus court. Les durées de jeu de rôle du TP ne sont pas des normes imposées à toute équipe. [S3]

### Manipulations détaillées dans Microsoft Project

1. Afficher le tableau final S3, puis le backlog restant.
2. Chaque participant choisit une décision du cas et l’explique sans employer de nom de bouton.
3. Fermer ou réduire Project pour le QCM ; l’évaluation porte sur Scrum et Product Ownership, pas sur la disponibilité d’un logiciel.
4. Répondre individuellement aux questions originales de la partie formateur, puis corriger en groupe.

### Données à saisir

Répondre aux quatre questions ouvertes :

- Qui est redevable de l’ordre et de la transparence du Product Backlog ?
- Que contient le Sprint Backlog en plus des éléments sélectionnés ?
- Que faire d’un élément non conforme à la DoD en fin de Sprint ?
- Quelle preuve manque pour déclarer la valeur attendue réellement obtenue ?

Le QCM comporte 14 questions originales, dont certaines à réponses multiples explicitement signalées. Aucune n’est officielle, divulguée ou représentative d’un item réel d’examen.

### Résultat attendu

Réponses justifiées par les principes du Guide et plan personnel d’étude complémentaire.

### Points de vigilance et erreurs fréquentes

Pièges : PO assimilé à chef de projet attributaire des tâches ; comité jouant le rôle de PO ; sponsor autorisé à forcer le Sprint ; Review comme autorisation nécessaire de toute livraison ; Story Points obligatoires ; maximisation de vélocité à la place de la valeur ; DoD abaissée pour respecter une date.

### Questions de réflexion pour les participants

Quel comportement augmente la transparence sans créer un contrôle hiérarchique inutile ? Quelle règle relève du Guide et quelle pratique n’est qu’une convention de ce TP ?

### Lien avec la préparation PSPO I

La page officielle présente PSPO I comme une évaluation de compréhension de Scrum et de création/livraison de valeur. Elle couvre aussi stratégie produit, parties prenantes et clients, prévisions et release planning. Ce TP contribue à la préparation sans garantir la réussite. La page consultée indique 80 questions, 60 minutes et 85 % pour réussir ; revérifier ces modalités avant inscription. [S4]

Compléments nécessaires : lire intégralement le Guide ; étudier stratégie et vision produit, découverte des besoins et validation d’hypothèses, mesure de valeur, relations clients, arbitrages économiques, prévisions et planification de livraison, et scénarios multiéquipes partageant produit/PO/backlog. Étudier également les Professional Scrum Competencies et pratiquer les évaluations Scrum Open et Product Owner Open recommandées sur la page officielle. Ne pas utiliser ce TP comme unique préparation. [S4]

---

## Annexes participant

### A. Preuves fictives de fin S1 à utiliser pendant la simulation

| Élément | Vérification fournie par le formateur | Décision |
|---|---|---|
| US01 | Janvier 40 000 ; février 50 000 ; cumul 90 000 ; cas vide sans erreur ; contrôles et accès pilote documentés | Conforme à J6 |
| US02 | Nord 54 000 ; Sud 36 000 ; Nord janvier 24 000 ; effacement rétablit 90 000 ; régression US01 réussie | Conforme à J8 |
| US03 | Classement P01 45 000, P02 28 000, P03 17 000 ; filtre janvier correct ; codes clarifiés ; intégration et documentation vérifiées | Conforme à J10 |

Les conditions transversales de la DoD sont supposées vérifiées dans ces fiches de simulation ; elles ne prouvent pas une application réelle. À J5, US01 n’a pas encore terminé ses vérifications : ne pas antidater sa conformité.

### B. Registres à conserver

| Registre | Champs minimaux |
|---|---|
| Produit | Vision, Product Goal, utilisateurs, valeur, hypothèses et mesures |
| Backlog | ID, formulation, valeur, critères, ordre, estimation, contraintes, statut qualité |
| Sprint | Dates, but, sélection prévue, capacité, résultat réel, décision |
| Suivi quotidien | Jour, reste par PBI, état, obstacle, adaptation, points Done uniques |
| Review | Observation, auteur, interprétation, décision produit, question à tester |
| Retrospective | Conserver/Arrêter/Essayer, action, porteur volontaire, date d’inspection |

Une copie de fin de Sprint est une archive pédagogique du fichier. Ce n’est pas une « clôture Scrum » nécessitant approbation d’un PMO, ni une baseline obligatoire.

### C. Variante sans fonctions Agile natives

1. Créer un fichier vierge distinct ; conserver les mêmes 12 PBI et Notes.
2. Ajouter Texte4 « Sprint simulé » et Texte5 « État simulé » aux champs personnalisés des autres étapes.
3. Saisir les valeurs S1/S2/S3 ou Aucun ; À faire/En cours/À vérifier/Terminé.
4. Affichage > Filtrer ou Trier pour travailler sur un Sprint ; si l’interface ne fournit pas le filtre adapté, filtrer le registre Excel.
5. Garder les dates des timeboxes dans le registre, non dans des commandes Gérer les sprints inexistantes.
6. Tracer le burndown à partir du même suivi Excel.
7. Annoter clairement le livrable : « Modélisation pédagogique Scrum ; fonctions Agile natives non présentes sur ce poste ».

Les notions et critères Scrum restent les mêmes. La validation des compétences d’interface natives doit être réalisée ultérieurement sur l’environnement approprié, pas déclarée acquise par simulation.

### D. Complément Planner, si autorisé

Planner est une application web/Teams collaborative ; Project desktop est une application Windows et ce TP construit un fichier MPP local. Les plans Premium ont des capacités supplémentaires ; un simple abonnement Microsoft 365 Basic ne suffit pas pour présumer des sprints natifs. [S5–S8]

Sur un plan Premium d’essai pédagogique autorisé : ouvrir Tableau ; vérifier Regrouper par > Sprint ; ajouter/renommer le Sprint et définir ses dates avec les contrôles disponibles ; ajouter les tâches sans Sprint au backlog ; glisser vers le Sprint ; suivre la progression. Cette procédure dérive de l’aide Project pour le web et doit être contrôlée dans le tenant Planner actuel. Le renommage web n’est pas une preuve de renommage dans Project desktop. Ne pas demander de copie de données professionnelles dans un tenant d’essai non autorisé.

---

## Partie formateur — corrigés et évaluation

### Corrigé transversal des points de contrôle

| Moment | Résultat de référence |
|---|---|
| Fin étape 5 | 12 PBI, 47 points, identifiants uniques, aucun Sprint définitivement sélectionné |
| Fin Planning S1 | US01/02/03 ; but documenté ; 13 points ; reste initial 52 h |
| J3 S1 | 48 h restantes contre 45 h à J2 ; problème de référentiel visible |
| J4 S1 après urgence | US13 créée hors Sprint ; 50 points historiques ; S1 inchangé |
| J5 S1 | 31 h, aucun PBI Done, US01 à vérifier |
| Fin S1 | 13 points Done uniques, DoD conforme ; besoin de marge et comparaison confirmé |
| Fin S2 avant report | 13 prévus, 8 Done ; US06 non conforme avec 10 h restantes ; objectif partiellement atteint |
| Planning S3 | US06/13/10/11 ; 13 points sélectionnés ; 42 h pour un plafond de 48 h |
| Fin S3 | 34 points Done uniques sur 50 ; 16 restants ; objectif produit encore à inspecter |

Le champ Sprint courant de US06 sera S3 dans le fichier final. Son ancienne sélection S2 se retrouve dans l’archive et le registre historique, pas dans deux cartes dupliquées. Les totaux de points ne doivent pas mélanger tâches détaillées et stories.

### Corrigé indicatif de l’exercice autonome — à distribuer après remise

1. Product Goal : maintenir l’objectif de préparation autonome en moins de 15 minutes, car les observations S3 ne le démontrent pas encore pour tous. Ne pas créer simultanément un objectif de fidélisation client sans lien avec cette cible.
2. Ordre proposé du backlog restant : US12, US09, US07, US08, parce que la synthèse et la réutilisation répondent directement au temps de préparation. D’autres ordres sont recevables si les preuves d’usage justifient le choix.
3. Sprint Goal : « Permettre à la direction de préparer son comité à partir d’une synthèse cohérente et réutilisable, sans ressaisie ».
4. Sélection : US12 (5 points, 24 h) + US09 (3 points, 12 h) = 8 points et 36 h. Capacité intégralement prévisionnée : signaler le risque et discuter une sélection plus prudente ou un découpage fonctionnel cohérent, plutôt que présenter ce résultat comme optimal dans tous les cas.
5. Plan : synthèse des indicateurs déjà disponibles, vérification des filtres, export autorisé, tests et preuves DoD. Les exigences de source/fraîcheur déjà livrées doivent être conservées.
6. Simulation indicative :

| Point | US12 reste h | US09 reste h | États et décisions |
|---|---:|---:|---|
| J0 | 24 | 12 | Les deux À faire |
| J2 | 18 | 12 | US12 En cours ; US09 À faire ; difficulté de présentation des filtres visible |
| J4 | 12 | 10 | Deux éléments En cours ; revue croisée pour éviter une mauvaise interprétation |

Total : 36, 30, 22 h ; aucun point Done à ces trois dates. La suite n’est pas prédéterminée : ne pas déclarer Done sans preuve.

7. Demande urgente : créer US14 « Besoin de liste clients enrichie — à clarifier », sans estimation imposée avant compréhension, sans données personnelles saisies et sans affectation automatique au Sprint. Le PO discute valeur/finalité/autorisation et les Developers évaluent faisabilité et risque. Le Sprint Goal actuel n’est pas devenu obsolète.
8. Review prévue : si US12/09 sont Done, montrer la synthèse et l’export avec filtres et totaux concordants, puis faire préparer un comité à cinq pilotes ; relever temps, ressaisies, ambiguïtés et limites. Si un élément n’est pas Done, dire ce qui manque, sans présenter du travail non fini comme Increment.
9. Retrospective : « vérifier les filtres et les libellés par un essai croisé dès J2 », portage volontaire et contrôle à la prochaine Retrospective. L’action est concrète et inspectable, non « mieux communiquer ».
10. Distinction finale : un Increment serait le produit BI intégré et utilisable avec ses preuves ; le fichier MPP et les fiches ne font ici qu’en simuler le travail et les résultats.

### Barème de synthèse — 20 points

| Critère | Points | Indice de réussite |
|---|---:|---|
| Produit et valeur | 3 | Objectif explicite, résultats observables, pas une simple liste de fonctionnalités |
| Backlog | 3 | Ordre justifié, critères testables, estimations correctement interprétées |
| Sprint Goal et sélection | 4 | But cohérent, capacité prise en compte, sélection par les Developers en dialogue |
| Suivi | 3 | États, reste, historique et chiffres cohérents ; pas de faux Done |
| Changement | 3 | Analyse de valeur/risque, respect du but, de la qualité et des responsabilités |
| Review et Retrospective | 2 | Inspection produit distinguée de l’amélioration du travail |
| Usage et limites de l’outil | 2 | Natif/simulation distingués, fichier traçable, pas de fonction inventée |

Repère pédagogique : 14/20 avec absence de confusion majeure. Ce seuil n’est pas un seuil PSPO I. Une confusion « PO impose les tâches », un faux Increment non conforme ou une fonctionnalité native inventée doit être corrigée même si le total est satisfaisant.

### Corrigé des quatre questions ouvertes

1. Le Product Owner est redevable d’une gestion efficace du Product Backlog, incluant ordre, transparence, visibilité et compréhension ; il peut déléguer du travail sans déléguer sa redevabilité.
2. Le Sprint Backlog contient le Sprint Goal, les éléments sélectionnés et le plan pour les réaliser.
3. L’élément non conforme à la DoD n’est pas un Increment ; il retourne au Product Backlog pour examen ultérieur, sans report automatique ni point Done partiel.
4. Il faut des observations d’usage et de résultat dans des conditions connues ; le nombre de cartes et les points ne prouvent pas la valeur obtenue. [S3, S4]

### QCM originaux de préparation — questionnaire

Une seule bonne réponse sauf indication contraire. Ces questions sont créées pour ce support ; elles ne sont pas des questions officielles de Scrum.org.

1. Qui est redevable de l’ordre du Product Backlog ?
A. Le sponsor. B. Le Product Owner. C. Le Scrum Master. D. Le PMO.

2. Pendant la Planning, qui sélectionne les PBI pour le Sprint, en discussion avec le PO ?
A. Les Developers. B. Le PO seul. C. Le Scrum Master. D. Le logiciel selon les dates.

3. Quels éléments constituent le Sprint Backlog ? Trois réponses.
A. Sprint Goal. B. PBI sélectionnés. C. Plan pour les réaliser. D. Toute la liste de demandes de l’entreprise.

4. US06 est presque terminée mais ne satisfait pas à la DoD. Que compter dans l’Increment ?
A. 90 % de ses points. B. Tous ses points sur décision du sponsor. C. Aucun crédit Done pour cet élément. D. Tous ses points si elle est montrée en Review.

5. Le sponsor demande un indicateur urgent à J4 ; le Sprint Goal reste utile. Quelle première démarche est la plus adaptée ?
A. Ajouter immédiatement la demande. B. Annuler automatiquement le Sprint. C. Clarifier valeur et impact, ordonner le backlog et discuter avec les Developers sans menacer l’objectif ni la qualité. D. Refuser toute discussion jusqu’à la Review.

6. Qui peut annuler un Sprint si son objectif devient obsolète ?
A. Le Product Owner uniquement. B. Le Scrum Master uniquement. C. Le sponsor uniquement. D. Toute personne disposant du fichier MPP.

7. Quelle est la finalité principale de la Sprint Review ?
A. Autoriser formellement toutes les livraisons. B. Inspecter le résultat avec les parties prenantes et déterminer les adaptations. C. Attribuer les tâches du Sprint suivant. D. Comparer les performances individuelles.

8. À quoi sert le Daily Scrum ?
A. Rapporter au PO la consommation d’heures de chaque personne. B. Inspecter le progrès vers le Sprint Goal et adapter le plan. C. Réestimer tous les points du backlog chaque jour. D. Faire approuver chaque déplacement de carte par le Scrum Master.

9. Quelle affirmation sur les Story Points est correcte ?
A. Scrum les impose. B. Un point représente un jour. C. Ils peuvent aider une équipe à estimer relativement, mais ne sont pas imposés par le Guide. D. Ils permettent de comparer objectivement deux personnes.

10. Le PO délègue la rédaction des PBI à une analyste. Que devient sa redevabilité ?
A. Elle disparaît. B. Elle est transférée à l’analyste. C. Elle reste celle du PO. D. Elle revient au sponsor.

11. Quelle correspondance artefact/engagement est correcte ? Trois réponses.
A. Product Backlog / Product Goal. B. Sprint Backlog / Sprint Goal. C. Increment / Definition of Done. D. Gantt / vélocité obligatoire.

12. Une hausse de vélocité prouve-t-elle que le produit crée davantage de valeur ?
A. Toujours. B. Oui si les Developers travaillent plus longtemps. C. Non, il faut inspecter les résultats et l’usage. D. Oui si tous les points sont saisis dans Project.

13. Un besoin de dictionnaire enrichi est prévu en S3. Peut-on supprimer toute documentation minimale en S1 ?
A. Oui, tout besoin futur dispense de qualité actuelle. B. Non, si la DoD du premier Increment exige une documentation nécessaire à son utilisation. C. Oui sur simple décision du PO. D. Oui si la story est à 100 % dans Project.

14. Plusieurs équipes travaillent au même produit. Quelle proposition respecte le Guide ?
A. Chacune possède obligatoirement un produit différent. B. Elles partagent le même Product Goal, le même Product Backlog et le même PO ; elles définissent et respectent une DoD commune adaptée. C. Les sponsors ordonnent chacun une partie indépendante du backlog sans coordination. D. Leur Product Owner devient nécessairement un comité.

### Réponses et justifications

| N° | Réponse | Justification |
|---|---|---|
| 1 | B | Le PO est redevable de la gestion efficace du Product Backlog, dont son ordre. |
| 2 | A | Les Developers sélectionnent en discussion avec le PO ; la Planning est collaborative. |
| 3 | A, B, C | Le Sprint Backlog associe pourquoi, quoi et comment ; le Product Backlog est plus large. |
| 4 | C | L’élément ne devient Increment qu’en satisfaisant à la DoD ; un pourcentage ne suffit pas. |
| 5 | C | Le backlog peut évoluer ; le plan peut être renégocié sans mettre en danger l’objectif et sans réduire la qualité. |
| 6 | A | Seul le PO a ce pouvoir ; la condition à considérer est l’obsolescence du Sprint Goal. |
| 7 | B | La Review est une session de travail sur résultats et adaptations, pas une porte obligatoire de livraison. |
| 8 | B | Les Developers inspectent leur progrès et adaptent leur plan ; ce n’est pas un reporting hiérarchique. |
| 9 | C | Les points sont une technique optionnelle ; le Guide laisse les pratiques adaptées au contexte. |
| 10 | C | La réalisation d’un travail peut être déléguée, pas la redevabilité du PO. |
| 11 | A, B, C | Ce sont les trois engagements explicitement associés aux artefacts. |
| 12 | C | Le volume d’éléments finis ne démontre pas leurs effets utiles. |
| 13 | B | Les fonctions futures ne suppriment pas les conditions actuelles d’un Increment utilisable. |
| 14 | B | Le Guide prévoit la cohérence produit et une DoD partagée lorsque plusieurs Scrum Teams travaillent sur le même produit. |

Les justifications 1–11 et 13–14 se rattachent directement au Guide ; la lecture valeur/résultats de la question 12 rejoint les domaines Product Value et Agile Product Management de PSPO I. [S3, S4]

### Situations de décision à discuter

- « Le Scrum Master ordonne à Inès de prendre US04 ». Décision préférable : rappeler l’autogestion, clarifier le besoin et laisser les Developers construire leur plan.
- « Amel accepte oralement un calcul faux pour tenir la date ». Décision préférable : ne pas annoncer Done ; maintenir les exigences de qualité, expliquer le risque et revoir le périmètre avec le PO.
- « La direction veut deux PO pour deux régions du même produit ». Décision préférable : un PO unique peut représenter plusieurs parties prenantes ; éviter le comité et les ordres contradictoires.
- « Les cinq pilotes ne gagnent pas tous du temps malgré 34 points Done ». Décision préférable : inspecter les usages, les blocages et le résultat recherché ; ne pas réclamer seulement plus de points au prochain Sprint.

---

## Glossaire français / anglais

| Terme | Sens dans le TP |
|---|---|
| Produit / Product | Vecteur de valeur avec limites, utilisateurs et parties prenantes identifiés |
| Objectif de produit / Product Goal | État futur ciblé ; engagement du Product Backlog |
| Product Backlog | Liste ordonnée et émergente de ce qui améliore le produit |
| Élément du Product Backlog / PBI | Élément de cette liste ; pas nécessairement une User Story |
| Affinement / Refinement | Activité continue de clarification, décomposition et dimensionnement |
| User Story | Format optionnel centré sur utilisateur, besoin et bénéfice |
| Critères d’acceptation / Acceptance Criteria | Conditions testables propres à un PBI ; pratique utilisée dans ce TP |
| Sprint | Timebox fixe d’un mois ou moins contenant les autres événements |
| Objectif de sprint / Sprint Goal | But unique du Sprint ; engagement du Sprint Backlog |
| Sprint Backlog | Objectif, éléments sélectionnés et plan des Developers |
| Sprint Planning | Événement pour établir pourquoi, quoi et comment |
| Daily Scrum | Événement quotidien de 15 min des Developers pour inspecter et adapter |
| Sprint Review | Inspection du résultat et adaptation avec les parties prenantes |
| Sprint Retrospective | Inspection des façons de travailler pour améliorer qualité et efficacité |
| Increment | Étape concrète, intégrée et utilisable vers le Product Goal |
| Definition of Done / DoD | Description formelle de l’état de qualité requis pour l’Increment |
| Product Owner | Personne redevable de maximiser la valeur et de gérer efficacement le backlog |
| Scrum Master | Personne redevable de la mise en place de Scrum et de l’efficacité de la Scrum Team |
| Developers | Membres qui élaborent l’Increment et leur plan ; pas nécessairement des programmeurs |
| Partie prenante / Stakeholder | Personne concernée par le produit ou ses résultats |
| Empirisme / Empiricism | Décider à partir de l’expérience et de l’observation |
| Autogestion / Self-management | Décider en interne qui fait quoi, quand et comment |
| Story Points | Estimation relative optionnelle ; ni jours, ni heures imposés |
| Travail restant / Remaining Work | Attention : champ natif Project distinct de Nombre3 dans ce TP |
| Burndown | Visualisation du reste dans le temps ; pratique optionnelle |
| Vélocité / Velocity | Mesure locale de quantité finie par Sprint si l’équipe l’utilise ; pas productivité individuelle |
| Résultat / Outcome | Effet observé pour les utilisateurs ou l’organisation |
| Production / Output | Fonction ou autre élément produit ; ne prouve pas son effet utile |
| Tableau / Board | Représentation visuelle du travail ; ne remplace pas un artefact complet |
| Référence de planification / Baseline | Repère de planification Project ; pas un artefact obligatoire de Scrum |

Les définitions du cadre Scrum proviennent du Guide ; les techniques et termes d’outil sont des explications pédagogiques, pas de nouveaux éléments du cadre. [S1, S3]

## Checklist finale de validation

### Environnement et honnêteté du livrable

- [ ] Édition, abonnement, version, build et langue relevés ; parcours A/B/C indiqué.
- [ ] Modèle Projet Sprints utilisé quand disponible, sinon alternative explicitement documentée.
- [ ] Aucun menu non trouvé n’est déclaré exécuté ; aucune fonction Planner n’est présentée comme desktop.
- [ ] Nouveau fichier distinct du TP1 ; nom clair et réouverture testée.
- [ ] Aucun résultat de simulation n’est présenté comme une réalisation BI effective.

### Produit et Scrum

- [ ] Produit, utilisateurs, valeur et Product Goal explicites ; objectif non réduit à un volume de tâches.
- [ ] Product Backlog ordonné, visible et compréhensible ; pas de conversion mécanique du TP1.
- [ ] Stories, tâches, critères, DoD et validation métier distingués.
- [ ] Trois Sprints cohérents ; dates et objectifs documentés ; futurs Sprints traités comme prévisions.
- [ ] Developers responsables de sélection/plan/estimations ; PO responsable de valeur et backlog.
- [ ] Changement urgent analysé sans réduction de qualité ni annulation arbitraire.
- [ ] Review et Retrospective distinctes ; action d’amélioration inspectable.

### Cohérence des données

- [ ] Backlog initial 12 PBI / 47 points ; après US13 : 13 PBI / 50 points.
- [ ] Sprint 1 : US01/02/03 ; 13 points ; reste 52 → 0 h ; aucun Done avant J6.
- [ ] J3 : reste 48 h ; J5 : 31 h et 13 points restants.
- [ ] Sprint 2 : 13 sélectionnés, 8 Done ; US06 non Done à reporter pour examen.
- [ ] Sprint 3 : US06/13/10/11 ; 13 sélectionnés/Done ; reste initial 42 h.
- [ ] Done uniques = 34 points ; restants = 16 ; pas de double crédit US06.
- [ ] Les tâches détaillées ne doublent ni points ni heures du total PBI.
- [ ] Heures, points, durées et pourcentage d’achèvement ne sont pas confondus.
- [ ] Historique conservé hors simple état courant Project ; source des graphiques indiquée.
- [ ] CA 90 000 ; coût 63 000 ; marge 27 000 ; taux de marque 30 %.
- [ ] Les observations S3 de 15 et 16 min empêchent d’affirmer sans réserve le seuil individuel strict de moins de 15 min.

### Préparation PSPO I

- [ ] Le participant distingue Guide Scrum, pratiques optionnelles et conventions du TP.
- [ ] Le participant justifie au moins une décision sur valeur, une sur qualité et une sur responsabilités.
- [ ] QCM corrigé compris ; questions identifiées comme originales et non officielles.
- [ ] Étude complémentaire du Guide et des domaines PSPO I programmée.

## Sources officielles et périmètre de vérification

Consultation documentaire : 22 octobre 2026. Les sources en ligne évoluent ; la présence réelle des commandes reste à contrôler sur le poste. Les liens suivants permettent d’accéder directement aux références.

- [S1] Microsoft Support — [Utiliser des tableaux de tâches dans Microsoft Project desktop](https://support.microsoft.com/fr-fr/project/use-task-boards-in-microsoft-project-online-desktop-client). Source principale pour abonnement, modèle, création/gestion de sprints, Sprint Planning Board, Current Sprint Board/Sheet, états, cartes, visibilité et rapports. [Version anglaise](https://support.microsoft.com/en-us/project/use-task-boards-in-microsoft-project-online-desktop-client), utile pour les libellés non ambigus.
- [S2] Microsoft Learn — [Update history for Microsoft 365 Apps, listed by date](https://learn.microsoft.com/en-us/officeupdates/update-history-microsoft365-apps-by-date). Confirme que l’historique concerne aussi Project desktop par abonnement et répertorie 2609 ; ne garantit pas à lui seul chaque libellé d’interface.
- [S3] Scrum Guides — [Guide Scrum français, novembre 2020](https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-French.pdf) ; [page des versions et traductions](https://scrumguides.org/download.html) ; [ressource Scrum.org](https://www.scrum.org/resources/scrum-guide). Référence normative du cadre, responsabilités, événements, artefacts et engagements.
- [S4] Scrum.org — [Professional Scrum Product Owner I](https://www.scrum.org/assessments/professional-scrum-product-owner-i-certification). Domaines de compétence, modalités et liens vers Scrum Open et Product Owner Open. Ce TP n’est ni une formation officielle Scrum.org ni une banque officielle de questions.
- [S5] Microsoft Support — [Compare Microsoft Planner basic vs. premium plans](https://support.microsoft.com/en-us/planner/compare-microsoft-planner-basic-vs-premium-plans). Distingue capacités de plans ; backlogs et sprints Premium.
- [S6] Microsoft Support — [Frequently asked questions about Microsoft Planner](https://support.microsoft.com/en-us/planner/frequently-asked-questions-about-microsoft-planner). Situation des anciens plans Project pour le web dans Planner et licence Premium.
- [S7] Microsoft Support — [Planifier un projet dans des sprints dans Project pour le web](https://support.microsoft.com/fr-fr/project/plan-a-project-in-sprints-in-project-for-the-web). Repère pour Tableau > Regrouper par Sprint et gestion web ; ne pas assimiler son interface à Project desktop.
- [S8] Microsoft — [Planner : plans et tarifs](https://www.microsoft.com/en/microsoft-365/planner/microsoft-planner-business-plans-and-pricing). Vérification de la distinction Premium web / offre incluant Project desktop. Les prix ne sont pas reproduits et les droits doivent être confirmés par l’administrateur.
- [S9] Microsoft Support — [Nouveautés de Project](https://support.microsoft.com/fr-fr/project/what-s-new-in-project). Historique de fonctions Agile et de libellés plus anciens ; ne pas utiliser une rubrique historique comme capture garantie de 2609.

### Limites explicitement conservées

Pas de test exécuté dans Project 2609 ; pas de capture inventée ; pas de renommage natif des Sprints desktop garanti sans champ réellement présent ; pas de burndown de Story Points supposé prêt à l’emploi ; pas d’historique quotidien automatiquement déduit de Nombre3 ; pas de synchronisation MPP/Planner promise. Les données métier, capacités et décisions constituent un scénario pédagogique cohérent, non une prescription universelle Scrum.
