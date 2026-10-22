# TP 2 — NOVALIS Distribution BI
## Utiliser l’IA pour construire, contrôler et adapter un planning Scrum dans Microsoft Project 2609

Support participant — Windows — Version enrichie IA du 22 octobre 2026

Public : consultants, Product Owners, chefs de projet, PMO, PMP et AMOA.

Durée indicative : 7 heures hors pauses. Le contrôle initial dure 25 minutes ; les 13 étapes, avec utilisation de l’IA, totalisent 6 h 35. Les données et prompts sont fournis pour tenir en une journée. La préparation PSPO I demeure un document indépendant.

Fichier à créer : `NOVALIS_BI_Scrum_IA_TP2.mpp`.

Toutes les personnes, transactions, capacités, estimations et observations sont fictives et pédagogiques. Ce TP ne développe pas réellement un produit BI : il simule son pilotage et l’inspection de ses résultats. Un fichier Project représente le travail ; il n’est pas l’Increment BI.

## Objectifs pédagogiques

L’objectif principal est de construire et de faire évoluer le planning avec l’aide de l’IA, tout en démontrant les contrôles humains et le résultat dans Project. Vous devrez savoir :

1. Préparer un contexte et un prompt exploitables pour la planification.
2. Faire produire vision, backlog, critères, scénarios de Sprint et plans de travail.
3. Distinguer faits, hypothèses, recommandations et informations manquantes.
4. Détecter calculs faux, dépendances artificielles, dates inventées et confusions Scrum.
5. Transformer une sortie IA validée en champs, Notes, cartes et sprints dans Project.
6. Faire analyser un état d’avancement réellement exporté ou recopié du fichier.
7. Comparer des adaptations et conserver la décision humaine dans un registre IA.

À l’issue du TP, vous saurez distinguer approche prédictive et empirique, créer un projet Sprints, définir produit et objectif, identifier utilisateurs et besoins, rédiger et ordonner des stories, préparer un Sprint selon sa capacité, suivre le travail et les obstacles, traiter un changement, préparer Review et Retrospective, appliquer une Definition of Done et inspecter les résultats sur plusieurs sprints.

Les liens conceptuels avec PSPO I restent signalés dans les étapes ; l’entraînement aux questions de certification est séparé.

## Prérequis et consignes d’utilisation

- PC Windows avec Microsoft Project version 2609, activé ; pour les fonctions Sprints, client desktop par abonnement et commandes présentes.
- Droit d’enregistrer des fichiers MPP ; Excel recommandé pour les registres et graphiques, ou tableaux papier.
- Accès à un assistant IA autorisé ; aucun connecteur au fichier MPP n’est présumé. Préparer un dossier de traces et vérifier que les données fictives peuvent être utilisées.
- TP1 disponible en lecture, sans modification ni importation de ses tâches.
- Aucun développement, aucune programmation, aucun accès à une base BI réelle requis.
- Connaître les actions de base : saisir une ligne, ouvrir un ruban, enregistrer et ajouter une colonne.
- Les données du présent support suffisent pour réaliser les manipulations ; un classeur peut être construit à partir des tableaux fournis.

Attention — Le support s’appuie sur la documentation officielle ; aucune exécution de Project 2609 sur votre poste n’est revendiquée. Les fonctions Sprints documentées concernent le client par abonnement. Le numéro 2609 ne prouve pas à lui seul la présence de ces fonctions. Les traductions et l’emplacement des groupes peuvent varier. [S1, S2]

## Contrôle pratique du poste — 25 min

1. Ouvrir Project > Fichier > Compte ; relever le nom complet du produit et le type de licence sous Informations sur le produit.
2. Ouvrir À propos de Project, selon l’interface ; relever version, build et langue.
3. Fichier > Nouveau : repérer Projet Sprints / Sprints Project.
4. Dans un fichier d’essai, vérifier Projet > Gérer les sprints ou Sprints > Gérer.
5. Vérifier le tableau de planification, le tableau du Sprint et Rapport > Tableau des tâches.
6. Créer une carte test, la déplacer, enregistrer, fermer et rouvrir.

| Contrôle | Valeur à relever |
|---|---|
| Produit et type de licence | À compléter |
| Version, build, langue | À compléter |
| Modèle Projet Sprints | Présent / absent |
| Gérer les sprints | Présent / absent |
| Tableaux et rapports | Intitulés réellement observés |

Si une commande manque, consigner le constat et faire contrôler le déploiement par l’administrateur. Ne pas annoncer une manipulation native non effectuée. Pour poursuivre temporairement, une feuille avec champs personnalisés Sprint et État permet une simulation, mais ne remplace pas la validation des compétences sur le tableau natif. Le présent support privilégie le modèle Sprints.

### Repères d’interface

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Modèle | Fichier > Nouveau > modèles proposés > Projet Sprints ; Sprints Project |
| Gestion des sprints | Projet > Gérer les sprints ; Sprints > Gérer ; Manage Sprints |
| Planification | Sprints > Affichages > Planification > Tableau de planification sprint ; Sprint Planning Board |
| Exécution | Sprints > Affichages > Sprint > Tableau sprint actuel ; Current Sprint Board |
| Feuille | Sprints > Affichages > Sprint > Feuille sprint actuelle ; Current Sprint Sheet |
| Tableau général | Affichage > Affichages des tâches > Tableau des tâches ; Task Board |
| Passage tableau/feuille | Format > Affichage > Feuille ; Sheet |
| Cartes | Format > Personnaliser les cartes ; Customize Cards |
| Visibilité | Afficher dans le tableau / Afficher à bord ; Show on Board |
| États | État du tableau ; Board Status |
| Rapports | Rapport > Afficher les rapports > Tableau des tâches |

Ces chemins proviennent de [S1]. Une traduction inhabituelle, par exemple « Accès suivant » pour Next up, ne doit pas être transformée en règle Scrum.

## Fil conducteur — utiliser l’IA pour construire et adapter le planning

L’objectif central de ce TP est d’utiliser une IA comme assistant de construction et de contrôle du planning Scrum dans Microsoft Project. Il ne s’agit ni de demander à l’IA de développer la BI, ni de saisir passivement un planning déjà fourni.

À chaque étape, appliquer le même cycle :

1. Fournir le contexte et les seules données disponibles à ce moment.
2. Exécuter le prompt et conserver la sortie brute.
3. Vérifier les omissions, hypothèses, calculs et responsabilités.
4. Accepter, corriger ou rejeter les propositions en justifiant la décision.
5. Reporter uniquement la version validée dans Project ou dans le registre approprié.
6. Vérifier le résultat dans Project et, si nécessaire, renvoyer les données observées à l’IA.

L’IA propose ; les participants contrôlent et décident ; Project représente le planning et effectue les calculs correspondant aux champs réellement renseignés. Les estimations du scénario restent des hypothèses pédagogiques. Aucun indicateur ni statut d’outil ne remplace une preuve de qualité.

### Configuration de l’IA et confidentialité

- Utiliser uniquement un assistant autorisé par l’organisation, externe au fichier Project si aucune intégration n’est effectivement disponible.
- Ne pas supposer la présence d’un bouton Copilot dans Project desktop ni l’accès de l’IA au fichier MPP.
- Transmettre des extraits textuels ou tableaux sélectionnés, pas de données réelles sensibles.
- Une même conversation peut conserver le contexte, mais chaque nouvelle étape doit fournir l’état à jour et les décisions validées.
- Ne pas demander de SQL, de code, de mesures BI ni de scripts d’automatisation : le travail porte sur la planification.
- Si aucun assistant n’est accessible, utiliser les données de référence et documenter une analyse critique manuelle ; l’usage effectif d’un assistant reste alors à pratiquer ultérieurement.

### Prompt de cadrage de la conversation — à exécuter une fois

```text
Tu m’assistes pour construire et adapter un planning de travail Scrum
pour NOVALIS Distribution BI dans Microsoft Project desktop Windows.
Le poste annonce la version 2609 ; l’édition, la licence et les commandes
réellement disponibles seront fournies après vérification.

Ce TP concerne le pilotage du travail, pas le développement BI.
Tu ne vois pas mon fichier MPP et tu ne peux pas le modifier.
N’affirme jamais avoir lu, modifié ou recalculé mon fichier sans preuve.

Distingue systématiquement :
1. faits fournis et leur provenance ;
2. hypothèses proposées à valider ;
3. informations manquantes ;
4. recommandations et contrôles à faire dans Project.

Ne transforme pas les Story Points en jours ou en heures.
Ne fabrique pas de durées, capacités, dates de fin, preuves de tests
ou résultats utilisateurs en les présentant comme des faits.
N’invente aucun menu ; signale les fonctions à vérifier sur le poste.
Ne confonds pas Project desktop et Planner.

Le PO gère la valeur et le backlog ; les Developers sélectionnent et
planifient en discussion avec le PO ; le Scrum Master accompagne Scrum.
La qualité ne doit pas être abaissée pour finir le périmètre.
Utilise la DoD fournie ; ne déclare pas un élément Done sans preuve.

À chaque réponse, termine par :
- éléments à valider humainement ;
- éléments à reporter dans Project ;
- éléments à conserver hors de Project ;
- contrôles après saisie.

Attends maintenant les données de la première étape.
```

### Comment utiliser les données de référence sans transformer le TP en copie

Pour chaque étape : produire d’abord une proposition IA à partir des entrées indiquées, puis seulement la confronter aux tableaux de référence. Ces tableaux servent à la normalisation et à la simulation suivante, pas de preuve que l’IA a trouvé la bonne réponse.

À l’étape 4, l’IA propose les formulations et critères ; les participants normalisent ensuite les 12 PBI avec les fiches du support. Les points restent illustratifs et sont validés dans le jeu de rôle Developers. À l’étape 7, comparer les scénarios, puis retenir US01/02/03 pour utiliser le suivi fourni. Si une autre sélection est conservée, créer un autre jeu de suivi et ne pas réutiliser artificiellement les chiffres du scénario de référence.

Ne pas fournir prématurément les résultats des Sprints 2 et 3 à l’assistant : ce serait lui donner le résultat à expliquer au lieu de lui faire analyser la situation disponible. Pour les exercices d’analyse de J5, ne transmettre que J0 à J5. Si la conversation contient déjà des données futures, ouvrir une nouvelle conversation avec le prompt de cadrage et le seul état du moment : c’est notamment nécessaire pour rejouer l’urgence J4 après avoir étudié la fin du Sprint.

### Registre IA obligatoire

Créer un registre dans Excel avec les colonnes : référence, étape, date, outil/modèle si connu, entrées transmises, prompt utilisé, lien ou emplacement de la sortie brute, proposition, contrôle effectué, décision, justification, éléments reportés dans Project, résultat observé et question ouverte.

Références : IA-01 à IA-13. Conserver une entrée par étape ; plusieurs lignes sont autorisées pour une même référence si plusieurs propositions sont examinées. Ne pas inventer une erreur si la réponse IA est correcte : préciser le contrôle qui l’a confirmé. Les exemples défectueux du support permettent de s’entraîner à détecter des pièges sans prétendre qu’un assistant les a réellement produits.

Dans Project, ajouter deux champs de tâche si libres : Texte4 renommé « Référence IA » et Texte5 renommé « Décision IA ». Si ces champs sont déjà utilisés, choisir des champs libres et noter la correspondance. Ne pas remplacer ID PBI, Points, Ordre backlog, Reste ou Résultat DoD.

Pour un PBI, Texte4 peut contenir « IA-04 ; IA-07 », Texte5 « Corrigé puis retenu ». Les échanges complets restent dans le registre ; ils ne sont pas tous collés sur les cartes. Ajouter dans Notes un bref résumé de la décision et des contrôles. Ces champs ne créent ni synchronisation avec l’IA ni automatisation du planning.

### Deux demandes de relance à réutiliser

```text
RELANCE DE CONTRÔLE
Relis ta réponse en cherchant activement les incohérences avec les seules
données fournies. Pour chaque valeur, indique sa source ou classe-la comme
hypothèse. Vérifie les unités, totaux, doublons, dépendances et responsabilités.
Corrige ce qui est faux sans modifier silencieusement le périmètre.
```

```text
RELANCE APRÈS SAISIE
Voici les données réellement observées dans Project : [coller le tableau].
Voici la décision validée : [coller].
Compare attendu et observé ; distingue erreur de saisie, paramétrage à vérifier,
limite de l’outil et hypothèse de travail. N’invente pas de valeur manquante.
Propose une vérification à la fois, sans affirmer que le MPP a été corrigé.
```


## Programme

| Étape | Durée |
|---|---:|
| 1. Du prédictif à Scrum | 20 min |
| 2. Créer le projet | 25 min |
| 3. Définir le produit | 20 min |
| 4. Construire le backlog | 45 min |
| 5. Organiser le backlog dans Project | 35 min |
| 6. Configurer les sprints | 30 min |
| 7. Sprint Planning | 40 min |
| 8. Travail quotidien | 35 min |
| 9. Visualisation | 30 min |
| 10. Changement de priorité | 25 min |
| 11. Review et Retrospective | 30 min |
| 12. Increment et DoD | 25 min |
| 13. Inspection sur trois sprints | 35 min |

## Scénario métier et acteurs

Le TP1 a structuré NOVALIS Distribution BI en phases, tâches, jalons, durées, liens et ressources, puis étudié chemin critique, optimisation et baseline. Le TP2 conserve le domaine métier et crée un fichier distinct, sans convertir mécaniquement les tâches en User Stories.

NOVALIS souhaite obtenir rapidement une première lecture fiable des ventes, puis enrichir la solution avec les utilisateurs. Produit : service BI interne permettant d’analyser ventes, régions, magasins, produits et rentabilité. Périmètre pilote : janvier et février 2026, deux régions, quatre magasins, trois produits, deux catégories et trois codes clients. Monnaie : TND ; montants nets hors taxes. Hors périmètre : comptabilité légale, prévisions automatiques, données personnelles réelles et développement de connecteurs.

| Nom | Position dans le cas | Besoin / responsabilité |
|---|---|---|
| Dhirar A | Direction commerciale, sponsor et utilisateur | Lire CA, marge et écarts ; décider des actions |
| Sanae A | Responsable régional Nord | Comparer régions et magasins |
| Haida B | Analyste métier | Classer les produits et préparer les analyses |
| Khansa D | Contrôle de gestion | Définir et vérifier les indicateurs |
| Samia L | Product Owner | Valeur, Product Goal et gestion du Product Backlog |
| Nicolas M | Scrum Master | Efficacité, autogestion et compréhension de Scrum |
| Cheikh AS | Developer, avec deux collègues non nommés | Analyse, données, restitution, tests et intégration |

Les trois Developers constituent une équipe pluridisciplinaire fictive. Les deux autres membres sont volontairement désignés par leur fonction, sans ajout de prénom. « Developers » ne signifie pas nécessairement développeurs informatiques. [S3]

### Données BI de référence

| Indicateur | Janvier | Février | Cumul |
|---|---:|---:|---:|
| CA net HT TND | 40 000 | 50 000 | 90 000 |
| Coût d’achat TND | 29 200 | 33 800 | 63 000 |
| Marge commerciale TND | 10 800 | 16 200 | 27 000 |
| Taux de marque = marge / CA | 27 % | 32,4 % | 30 % |

| Répartition | Janvier | Février | Cumul |
|---|---:|---:|---:|
| Nord | 24 000 | 30 000 | 54 000 |
| Sud | 16 000 | 20 000 | 36 000 |
| N1 | 14 000 | 18 000 | 32 000 |
| N2 | 10 000 | 12 000 | 22 000 |
| S1 | 9 000 | 11 000 | 20 000 |
| S2 | 7 000 | 9 000 | 16 000 |
| P01 / C01 | 20 000 | 25 000 | 45 000 |
| P02 / C02 | 12 000 | 16 000 | 28 000 |
| P03 / C03 | 8 000 | 9 000 | 17 000 |

P01 et P02 appartiennent à Équipement ; P03 à Accessoires. Les codes C01/C02/C03 sont pseudonymisés. Variation février/janvier : +10 000 TND, soit +25 %. Ces agrégats servent à simuler les vérifications sans construire un tableau de bord réel. Ils ne doivent pas être saisis comme tâches dans Project.

Pourquoi ? Une marge doit avoir une formule, un périmètre et une unité. Le taux de marque rapporté au CA ne se confond pas avec un taux rapporté au coût.


## Étape 1 — Comprendre le passage du prédictif à Scrum — 20 min

### Objectif de l’étape
Distinguer pilotage empirique, organisation du travail et découpage calendaire.

### Contexte métier
La direction veut un premier résultat utilisable sans attendre l’achèvement de toutes les fonctions BI.

### Notions Scrum à comprendre
Scrum repose sur transparence, inspection et adaptation. Un Sprint n’est pas une phase technique raccourcie : il permet un Increment utilisable. Stories, points et burndown sont des techniques optionnelles. [S3]

| TP1 | TP2 | Distinction |
|---|---|---|
| Phases données, restitution, tests | Travail transversal dans chaque Sprint | Ne pas repousser tous les tests au dernier Sprint |
| Tâches techniques | PBI orientés amélioration produit et tâches associées | Une tâche ne devient pas une story par simple reformulation |
| Liste de tâches planifiées | Backlog ordonné et émergent | Ordre de valeur, pas seulement séquence d’exécution |
| Durées en jours | Taille relative et capacité | Un point ne vaut pas un jour |
| Jalon daté | Sprint Goal | Un but, pas « fin du Sprint » |
| Tâche terminée | Increment intégré et conforme à la DoD | Un composant isolé ne suffit pas |
| Baseline | Prévision inspectée et adaptée | Pas de baseline obligatoire dans Scrum |
| Liens et chemin critique | Contraintes explicites et plan adaptable | Pas de chaîne fin-début imposée à tout le backlog |

### Utilisation de l’IA — IA-01

#### Pourquoi utiliser l’IA ici ?
Faire analyser ce qui change entre planning prédictif et planification empirique, sans produire une fausse conversion des tâches.

#### Entrées à fournir
La description du TP1, le scénario métier du TP2 et trois exemples : importer les ventes, concevoir un modèle de données, vérifier les KPI. Ne pas transmettre tout le Gantt comme backlog à convertir.

#### Prompt prêt à copier

```text
Agis comme un assistant PMO/BA connaissant Scrum.
Contexte NOVALIS : [coller le scénario métier].
Travail prédictif déjà étudié : [coller le résumé TP1 et trois activités].
Construis un tableau : élément prédictif, besoin qu’il sert,
représentation possible dans un backlog, risque de mauvaise conversion.
Explique phases/tâches, PBI/User Stories, points/durées, jalon/Sprint Goal,
tâche finie/Increment. Propose une tranche fonctionnelle utilisable tôt.
Ne convertis pas chaque tâche en story. Ne propose ni dates ni estimation.
Termine par cinq questions de clarification et trois erreurs à éviter.
```

#### Sortie attendue
Un tableau d’au moins six distinctions, une première tranche fonctionnelle et des questions ; aucune conversion mécanique.

#### Contrôles humains avant toute saisie
Verifier que tests et intégration ne sont pas repoussés après tous les Sprints ; repérer une vraie valeur utilisateur. Comparer ensuite au tableau TP1/TP2 du support.

#### Passage concret de la réponse IA à Project
À ce stade, ne créer aucune activité supplémentaire. Conserver le tableau dans le dossier ; lors de la création de US01, ajouter en Notes une phrase justifiant son orientation utilisateur.

#### Trace à conserver
IA-01 : décision sur la tranche fonctionnelle et une différence expliquée avec vos propres mots.

#### Proposition défectueuse à savoir rejeter
« Sprint 1 : spécifications ; Sprint 2 : développement ; Sprint 3 : tests » : c’est un découpage technique successif, pas une proposition assurant un Increment utilisable par Sprint.

### Manipulations détaillées dans Microsoft Project
1. Ouvrir le TP1 en consultation.
2. Afficher le Gantt et repérer phase, jalon et lien.
3. Choisir une tâche technique et expliquer le besoin utilisateur qu’elle pourrait servir.
4. Fermer sans modification ; ne pas importer son planning.

### Données à saisir
Réponse dans les notes de travail : « importer les ventes » = tâche ; « consulter les ventes mensuelles pour comprendre les variations » = besoin ; « disposer d’une première lecture fiable » = intention de Sprint Goal.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

Un tableau comparatif compris et un exemple de tranche fonctionnelle utilisable.

### Points de vigilance et erreurs fréquentes
Erreur : Sprint 1 = spécification, Sprint 2 = construction, Sprint 3 = tests. Correction : intégrer analyse, réalisation et vérifications dans un premier résultat utilisable. Ne pas conclure que le prédictif est toujours inadapté.

### Questions de réflexion pour les participants
Quelle valeur reçoit Dhirar A si seul un import est terminé ? Que peut-on déjà inspecter avec CA, région et classement produits ?

### Lien avec la préparation PSPO I
Empirisme, valeur et distinction entre artefact et outil. [S3]


## Étape 2 — Créer le projet Scrum dans Microsoft Project — 25 min

### Objectif de l’étape
Créer un nouveau fichier autonome à partir de Projet Sprints.

### Contexte métier
Le TP2 n’est ni une nouvelle baseline ni une copie du planning TP1.

### Notions Scrum à comprendre
L’outil rend le travail visible ; il ne définit pas à lui seul Scrum et ne remplace pas les interactions.

### Utilisation de l’IA — IA-02

#### Pourquoi utiliser l’IA ici ?
Utiliser l’assistant pour préparer une vérification de configuration, pas lui déléguer des clics ni lui faire inventer une interface.

#### Entrées à fournir
Nom exact du produit, licence si connue, version/build, langue et commandes observées pendant le contrôle pratique. Joindre un extrait de [S1] ou la procédure du support, sans supposer que l’IA ouvre une URL.

#### Prompt prêt à copier

```text
Je prépare le fichier NOVALIS_BI_Scrum_TP2.mpp.
Informations réellement relevées sur mon poste : [coller la fiche].
Procédure de référence disponible : [coller les repères du support].
Prépare une checklist : action, fonction native vérifiée,
point à contrôler, preuve de réussite.
Privilégie Fichier > Nouveau > Projet Sprints si présent.
N’invente pas une commande à partir du seul mot Professional ou de 2609.
Ne propose ni conversion du TP1 ni intégration Copilot supposée.
Si l’information manque, indique le contrôle nécessaire au lieu de donner
un chemin garanti. Aucun script et aucune date de fin à saisir.
```

#### Sortie attendue
Une checklist compatible avec les observations, avec incertitudes explicitement signalées.

#### Contrôles humains avant toute saisie
Comparer chaque chemin au ruban du poste. Rejeter toute affirmation d’ouverture ou de modification automatique du fichier. Ne pas transmettre une capture contenant des données sensibles.

#### Passage concret de la réponse IA à Project
Appliquer vous-même les clics vérifiés de l’étape 2. Enregistrer puis rouvrir ; compléter le registre avec le constat. Le nom et le début du projet restent ceux du cas.

#### Trace à conserver
IA-02 : fiche environnement, un contrôle de commande et preuve de réouverture ; aucun faux journal d’exécution IA.

#### Proposition défectueuse à savoir rejeter
« J’ai créé votre MPP et activé Copilot » : à rejeter si l’assistant n’a aucun outil démontrant ces actions.

### Manipulations détaillées dans Microsoft Project
1. Fichier > Nouveau > modèles proposés > Projet Sprints / Sprints Project. Choisir Créer si un écran de présentation le demande.
2. Vérifier l’ouverture du Tableau de planification sprint. Retirer seulement les cartes d’exemple du nouveau fichier, si présentes.
3. Fichier > Enregistrer sous > Parcourir, selon l’interface. Choisir un dossier autorisé et le type Projet (*.mpp).
4. Enregistrer sous `NOVALIS_BI_Scrum_IA_TP2.mpp`.
5. Projet > Informations sur le projet : début au 02/11/2026.
6. Projet > Modifier le temps de travail : contrôler le calendrier. Le cas utilise lundi-vendredi sans jour férié spécifique ; ne pas modifier un calendrier global de l’entreprise.
7. Affichage > Diagramme de Gantt : pour les lignes PBI, retenir le mode manuel via Tâche > Planifier manuellement si nécessaire. Les points ne vont pas dans Durée.
8. Revenir à Sprints > Affichages > Planification > Tableau de planification sprint ; enregistrer. [S1]

Si le modèle manque mais que Gérer les sprints est réellement disponible, un nouveau Projet vierge peut recevoir des sprints. Consigner alors cette différence. Si les fonctions sont absentes, ne pas simuler leur présence.

### Données à saisir
Nom du fichier ci-dessus ; début 02/11/2026 ; commentaire « NOVALIS BI — simulation pédagogique Scrum ».

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

Un fichier distinct enregistré et rouvert, avec les fonctions natives disponibles identifiées.

### Points de vigilance et erreurs fréquentes
Ne pas confondre date de début du projet et début automatique de tous les PBI. L’affectation à un Sprint n’est pas une preuve de capacité. Le calendrier de calcul Project ne définit pas à lui seul une timebox Scrum.

### Questions de réflexion pour les participants
Que prouve le numéro 2609 ? Pourquoi vérifier aussi licence, modèle et commandes ?

### Lien avec la préparation PSPO I
Aucun outil particulier n’est prescrit par Scrum. [S3]


## Étape 3 — Définir le produit et son objectif — 20 min

### Objectif de l’étape
Relier les fonctionnalités à un état futur utile et observable.

### Contexte métier
La préparation actuelle de la première lecture commerciale prendrait 45 minutes : hypothèse fictive à vérifier.

### Notions Scrum à comprendre
La vision décrit une ambition. Le Product Goal décrit l’état futur ciblé et se trouve dans le Product Backlog. Samia L en est redevable pour sa formulation et sa communication. Un seul Product Goal est poursuivi à la fois. [S3]

### Utilisation de l’IA — IA-03

#### Pourquoi utiliser l’IA ici ?
Faire proposer une cible produit et des mesures d’usage, puis distinguer hypothèses et faits.

#### Entrées à fournir
Scénario, acteurs, périmètre, exclusions et hypothèse initiale de 45 minutes. Ne pas commencer en fournissant le Product Goal de référence à reproduire.

#### Prompt prêt à copier

```text
À partir du cas NOVALIS [coller scénario, utilisateurs et exclusions],
propose une description produit, une vision et deux formulations alternatives
d’un Product Goal. Compare-les selon valeur observable et clarté.
La préparation actuelle de 45 minutes est une hypothèse pédagogique,
pas une mesure terrain vérifiée. Propose comment la contrôler.
Sépare résultat utilisateur, fonctionnalité et indicateur de production.
Pour chaque mesure, précise quoi observer, auprès de qui et dans quelles conditions.
Ne promets ni hausse de CA ni délai ferme sans preuve.
Propose une seule cible à retenir, soumise à validation du PO.
```

#### Sortie attendue
Deux alternatives argumentées, une recommandation et un protocole d’observation simple.

#### Contrôles humains avant toute saisie
Verifier que le but n’est pas « livrer 12 stories » ; ne pas transformer les 45 minutes en observation prouvée. Discuter le seuil « moins de 15 » avant de voir les résultats.

#### Passage concret de la réponse IA à Project
Après discussion, normaliser le registre Produit avec le Product Goal de référence pour la suite. Reporter seulement le résumé dans les propriétés ou Notes ; ne pas créer de carte Product Goal estimée en points.

#### Trace à conserver
IA-03 : deux formulations, choix du PO simulé, justification et statut des mesures.

#### Proposition défectueuse à savoir rejeter
« Le produit augmentera les ventes de 20 % en trois Sprints » : chiffre inventé et attribution causale non établie.

### Manipulations détaillées dans Microsoft Project
1. Créer un registre Produit dans Excel ou dans un document de travail.
2. Saisir les éléments ci-dessous ; garder les cartes Project pour les PBI.
3. Si proposé, Fichier > Informations > Propriétés du projet > Propriétés avancées : saisir titre et résumé dans les commentaires. Ce chemin peut varier.
4. À défaut, conserver le registre et ajouter sa référence dans Notes de US01 à sa création. Aucun champ natif Product Goal n’est présumé.

### Données à saisir
- Produit : service BI interne d’analyse des ventes nettes HT et de la rentabilité.
- Vision : « Des décisions commerciales plus rapides à partir de chiffres partagés et explicables ».
- Product Goal : « Permettre à la direction et aux responsables régionaux de préparer leur revue commerciale en moins de 15 minutes, avec un accès autonome aux ventes, à la marge et aux écarts entre périodes, sans ressaisie et sur des chiffres réconciliés du pilote ».
- Valeur : effort de préparation réduit, chiffres partagés, confiance accrue ; pas de promesse de hausse du CA attribuable au seul outil.
- Mesures : temps observé pour cinq pilotes, ressaisies et ambiguïtés ; préciser les conditions d’essai.
- Besoins : CA fiable, lecture régionale, contributeurs, puis rentabilité et comparaisons.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

Un registre produit avec limites, utilisateurs, objectif et hypothèses de valeur.

### Points de vigilance et erreurs fréquentes
« Livrer 12 stories » est une mesure de production, pas un résultat utilisateur. Un indicateur moyen ne prouve pas un bénéfice pour tous.

### Questions de réflexion pour les participants
Si les cartes sont toutes terminées mais que personne n’utilise le produit, quel objectif est réellement atteint ?

### Lien avec la préparation PSPO I
Product Goal, valeur et collaboration avec les parties prenantes. [S3, S4]


## Étape 4 — Construire le Product Backlog — 45 min

### Objectif de l’étape
Comprendre les 12 stories et leurs critères, puis discuter leur ordre.

### Contexte métier
Samia L privilégie d’abord une première lecture utilisable, puis la rentabilité et les comparaisons.

### Notions Scrum à comprendre
Le backlog est ordonné et émergent. L’affinement clarifie et décompose ; ce n’est pas un événement obligatoire distinct. Les Developers qui feront le travail sont responsables du dimensionnement. Les points sont une convention relative, pas une durée. [S3]

### Utilisation de l’IA — IA-04

#### Pourquoi utiliser l’IA ici ?
Produire réellement un backlog initial et faire de son contrôle une activité centrale du TP.

#### Entrées à fournir
Product Goal validé, profils, besoins et agrégats BI ; fournir les douze thèmes du support, mais pas encore leurs fiches complètes. Les estimations de référence sont consultées après la génération.

#### Prompt prêt à copier

```text
Tu assistes le PO pour élaborer un premier backlog NOVALIS.
Objectif validé : [coller]. Utilisateurs et données : [coller].
Thèmes à couvrir avec IDs stables :
US01 CA mensuel ; US02 régions ; US03 produits ; US04 marge ;
US05 magasins ; US06 périodes ; US07 catégories ; US08 clients ;
US09 export ; US10 fraîcheur ; US11 dictionnaire ; US12 synthèse direction.
Pour chaque thème, propose titre, formulation utilisateur/besoin/bénéfice,
valeur, trois critères testables, ordre argumenté, contraintes et questions.
Utilise les chiffres fournis ; n’invente aucun total ni règle métier manquante.
Ne déclare pas de Sprint définitivement sélectionné.
Si tu proposes une taille relative, marque-la hypothèse à discuter par
les Developers ; aucune conversion automatique points/heures/jours.
Distingue dépendance réelle et simple préférence d’ordre.
Signale la documentation et la qualité minimales nécessaires dès le premier Increment.
```

#### Sortie attendue
12 fiches avec IDs uniques, critères vérifiables et questions ; un ordre expliqué, pas seulement une liste numérotée.

#### Contrôles humains avant toute saisie
Comparer deux fiches en profondeur, puis contrôler les douze : doublons, rôle, bénéfice, calculs, cas vide/zéro, droits et dépendances. Consulter ensuite les fiches de référence et normaliser les tailles 5/3/5/5/3/5/3/5/3/3/2/5, total 47. Ne pas présenter ces tailles comme une expertise démontrée de l’IA.

#### Passage concret de la réponse IA à Project
Créer US01 comme indiqué, puis préparer les douze lignes à l’étape 5. Dans Notes, saisir les critères corrigés ; Texte4 = IA-04 et Texte5 = Retenu ou Corrigé puis retenu. Les critères non validés restent des questions, pas des exigences approuvées.

#### Trace à conserver
IA-04 : sortie brute, deux fiches annotées, ordre retenu, estimations normalisées et validations encore requises.

#### Proposition défectueuse à savoir rejeter
« Taux de marque = marge / coût », « client sans droit d’accès », ou « US11 dispense de documentation en S1 » : à détecter et corriger.

### Manipulations détaillées dans Microsoft Project
1. Lire les fiches suivantes et choisir deux stories à examiner en binôme.
2. Vérifier que leurs critères sont testables à partir des données de référence.
3. Tableau de planification sprint > Aucun sprint > Nouvelle tâche : créer US01.
4. Nommer la carte « US01 — Consulter le CA mensuel ».
5. Ouvrir Informations de la tâche par double-clic ou Tâche > Informations ; onglet Notes : saisir formulation, valeur et critères.
6. Ne pas affecter les autres stories à des Sprints avant discussion. La saisie structurée complète se fait à l’étape 5.

### Données à saisir
Backlog initial : 12 PBI, 47 points. Les horizons S2 sont des hypothèses, pas des engagements.

#### US01 — Consulter le CA mensuel

- Formulation : « En tant que direction commerciale, je veux consulter le CA par mois, afin de repérer les variations de ventes. »
- Valeur : Première lecture commune du CA.
- Critères testables : Janvier 40 000 TND ; février 50 000 ; cumul 90 000. Le filtre janvier conserve seulement janvier. Une période vide affiche « Aucune vente », sans erreur.
- Ordre initial : 1 ; taille relative illustrative : 5 points.
- Contraintes : Source contrôlée ; aucun PBI préalable requis.
- Horizon initial : Sprint 1.

#### US02 — Analyser les ventes par région

- Formulation : « En tant que responsable régional, je veux filtrer les ventes par région, afin de cibler les zones nécessitant une action. »
- Valeur : Cibler les actions régionales.
- Critères testables : Nord 54 000 TND, Sud 36 000 sur les deux mois ; Nord + janvier = 24 000 ; effacer le filtre rétablit 90 000.
- Ordre initial : 2 ; taille relative illustrative : 3 points.
- Contraintes : Socle US01 réutilisable ; réalisation conjointe possible.
- Horizon initial : Sprint 1.

#### US03 — Identifier les meilleurs produits

- Formulation : « En tant que analyste métier, je veux classer les produits par CA, afin de préparer une recommandation d’assortiment. »
- Valeur : Identifier les contributeurs principaux.
- Critères testables : P01 45 000, P02 28 000, P03 17 000 TND, tri décroissant. Janvier : 20 000, 12 000, 8 000. Le classement suit les filtres.
- Ordre initial : 3 ; taille relative illustrative : 5 points.
- Contraintes : Source de ventes commune ; codes produits à clarifier.
- Horizon initial : Sprint 1.

#### US04 — Lire la marge commerciale

- Formulation : « En tant que contrôle de gestion, je veux consulter marge et taux de marque, afin de apprécier la rentabilité. »
- Valeur : Éviter la confusion entre volume et rentabilité.
- Critères testables : Cumul : CA 90 000, coût 63 000, marge 27 000 TND, taux de marque 30 %. Janvier : marge 10 800 et 27 %. CA nul : taux non calculable.
- Ordre initial : 4 ; taille relative illustrative : 5 points.
- Contraintes : Coûts et formules validés ; taux calculé sur les agrégats.
- Horizon initial : Sprint 2, hypothèse.

#### US05 — Comparer les magasins

- Formulation : « En tant que responsable régional, je veux comparer les magasins, afin de repérer les écarts de performance. »
- Valeur : Préparer leur accompagnement.
- Critères testables : N1 32 000, N2 22 000, S1 20 000, S2 16 000 TND ; filtre Nord : N1/N2 seulement, total 54 000.
- Ordre initial : 5 ; taille relative illustrative : 3 points.
- Contraintes : US02 utile ; comparaison descriptive, sans causalité supposée.
- Horizon initial : Sprint 2, hypothèse.

#### US06 — Comparer deux périodes

- Formulation : « En tant que direction commerciale, je veux comparer février à janvier, afin de détecter la croissance ou le recul. »
- Valeur : Lire une évolution explicite.
- Critères testables : 50 000 contre 40 000 TND : +10 000 et +25 %. Les périodes sont affichées. Référence zéro : pourcentage non calculable, sans erreur.
- Ordre initial : 6 ; taille relative illustrative : 5 points.
- Contraintes : US01 ; convention de comparaison explicite.
- Horizon initial : Sprint 2, hypothèse.

#### US07 — Comparer les catégories

- Formulation : « En tant que analyste métier, je veux analyser les ventes par catégorie, afin de adapter les actions commerciales. »
- Valeur : Relier résultats et portefeuille.
- Critères testables : Équipement P01+P02 : 73 000 TND ; Accessoires P03 : 17 000. Janvier : 32 000 et 8 000. Le filtre catégorie actualise le total.
- Ordre initial : 7 ; taille relative illustrative : 3 points.
- Contraintes : Référentiel produits fiable.
- Horizon initial : Aucun sprint.

#### US08 — Identifier les principaux clients

- Formulation : « En tant que direction commerciale, je veux voir les principaux clients contributeurs, afin de préparer les revues de comptes. »
- Valeur : Cibler les revues commerciales.
- Critères testables : C01 45 000, C02 28 000, C03 17 000 TND ; seuls les codes autorisés apparaissent ; filtre période appliqué.
- Ordre initial : 8 ; taille relative illustrative : 5 points.
- Contraintes : Codes pseudonymisés, accès autorisé.
- Horizon initial : Aucun sprint.

#### US09 — Exporter une sélection

- Formulation : « En tant que analyste métier, je veux exporter les résultats filtrés, afin de éviter une ressaisie. »
- Valeur : Réutiliser les résultats.
- Critères testables : Export Nord : N1/N2 uniquement, cumul 54 000 TND ; période et filtres indiqués ; montants numériques ; format CSV ou XLSX convenu.
- Ordre initial : 9 ; taille relative illustrative : 3 points.
- Contraintes : Une vue filtrée exploitable existe.
- Horizon initial : Aucun sprint.

#### US10 — Vérifier la fraîcheur des données

- Formulation : « En tant que responsable régional, je veux voir date et statut du chargement, afin de éviter une décision sur des données périmées. »
- Valeur : Rendre la confiance visible.
- Critères testables : Nominal : « Chargement réussi : 01/03/2026 08:00 ». Échec simulé : « Dernier chargement échoué ; données au 28/02/2026 ». Un échec ne remplace pas les données valides par des zéros.
- Ordre initial : 10 ; taille relative illustrative : 3 points.
- Contraintes : Journal fictif ; les contrôles qualité minimaux restent requis dès S1.
- Horizon initial : Aucun sprint.

#### US11 — Consulter le dictionnaire des indicateurs

- Formulation : « En tant que contrôle de gestion, je veux accéder aux définitions des indicateurs, afin de interpréter les chiffres de façon homogène. »
- Valeur : Réduire les interprétations contradictoires.
- Critères testables : Dictionnaire : CA net HT en TND, coût, marge = CA − coût, taux de marque = marge / CA ; périodes explicites ; chaque indicateur renvoie à sa définition.
- Ordre initial : 11 ; taille relative illustrative : 2 points.
- Contraintes : Dictionnaire utilisateur enrichi ; documentation minimale de DoD dès S1.
- Horizon initial : Aucun sprint.

#### US12 — Préparer la réunion de direction

- Formulation : « En tant que direction commerciale, je veux ouvrir une synthèse dédiée, afin de préparer rapidement le comité. »
- Valeur : Réduire le temps de préparation.
- Critères testables : CA, marge et variation affichés sans ressaisie ; cumul 90 000 TND, marge 27 000, variation février/janvier +25 % ; filtres et fraîcheur visibles.
- Ordre initial : 12 ; taille relative illustrative : 5 points.
- Contraintes : US04/US06 terminées ; dépendances à inspecter.
- Horizon initial : Aucun sprint.

### Principes d’ordonnancement

US01/02 servent les utilisateurs principaux ; US03 rend la première restitution immédiatement utile ; US04 permet d’inspecter des règles économiques risquées. US05/06 enrichissent les décisions. Les autres besoins restent visibles. Une remontée de US10 peut être défendue si le risque de fraîcheur est majeur, sans supprimer la qualité minimale requise dès S1.

Il n’existe pas de formule universelle de priorité Scrum. Valeur, risques, apprentissages, dépendances et coût éclairent l’ordre ; une note ne décide pas à la place du PO.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

12 stories comprises, un ordre argumenté, deux critères examinés en profondeur par binôme.

### Points de vigilance et erreurs fréquentes
Ne pas utiliser systématiquement « En tant que système » pour transformer chaque tâche technique en story. Le format story est optionnel ; le backlog peut contenir d’autres PBI.

### Questions de réflexion pour les participants
Quel élément réduit le plus une incertitude ? Quelle story gagnerait à être découpée ? Une dépendance implique-t-elle toujours un lien Gantt ?

### Lien avec la préparation PSPO I
Redevabilité du PO sur le backlog, dimensionnement par les Developers et affinement collaboratif. [S3]


## Étape 5 — Organiser le Product Backlog dans Microsoft Project — 35 min

### Objectif de l’étape
Représenter valeur, ordre, taille et qualité sans inventer un module complet de backlog.

### Contexte métier
Le tableau doit rester simple et les informations détaillées accessibles.

### Notions Scrum à comprendre
La carte est une représentation ; elle ne remplace ni les informations ni la conversation. Un état logiciel n’atteste pas la qualité.

### Utilisation de l’IA — IA-05

#### Pourquoi utiliser l’IA ici ?
Transformer le backlog validé en données faciles à reporter dans Project, en réduisant les erreurs de structure.

#### Entrées à fournir
Uniquement le backlog normalisé, le dictionnaire des champs de l’étape et les alias réellement créés sur le poste.

#### Prompt prêt à copier

```text
Voici mon backlog validé et le dictionnaire des champs : [coller].
Prépare un tableau de transfert, une ligne par PBI, sans code ni macro :
ID PBI ; Nom ; Points ; Ordre backlog ; Reste estimé h ; Sprint ;
Obstacle ; Résultat DoD ; Référence IA ; Décision IA.
Reste initial vide avant Planning ; Sprint = Aucun sprint.
Prépare séparément une fiche Notes par ID avec formulation, valeur,
critères, contraintes et questions restantes.
Vérifie exactement 12 PBI, IDs uniques et total de 47 points.
Ne place pas les points dans Durée et n’assimile pas Nombre3 au Travail restant natif.
Ne crée pas de liens fin-début entre tous les PBI.
N’affirme pas qu’un tableau collé constitue un import automatique fiable.
```

#### Sortie attendue
Un tableau contrôlé et douze fiches Notes séparées ; aucune ligne de synthèse à coller comme tâche.

#### Contrôles humains avant toute saisie
Recalculer les points et vérifier l’ordre. Tester d’abord une seule ligne, puis une deuxième. Vérifier les colonnes réellement ciblées et les séparateurs ; ne pas coller les en-têtes dans les données.

#### Passage concret de la réponse IA à Project
Insérer les colonnes et les alias de l’étape 5, puis ajouter Texte4/Référence IA et Texte5/Décision IA. Saisir ou copier colonne par colonne les valeurs validées, contrôlées sur deux lignes. Les Notes sont saisies via Informations ; elles ne sont pas un champ de formule.

#### Trace à conserver
IA-05 : table de transfert, correspondance champs/alias et contrôle après saisie : 12 IDs, 47 points, aucun Sprint sélectionné.

#### Proposition défectueuse à savoir rejeter
« 5 points = Durée 5j » ou « Priorité native = ordre commercial » : confusion entre estimation, ordonnancement et nivellement.

### Manipulations détaillées dans Microsoft Project
1. Affichage > Diagramme de Gantt, ou Format > Feuille depuis le tableau.
2. Saisir une ligne non indentée par PBI ; ne pas dupliquer US01 déjà créée.
3. Ajouter les colonnes ci-dessous via Ajouter une nouvelle colonne.
4. Pour les alias : Projet > Champs personnalisés, ou clic droit sur l’en-tête > Champs personnalisés ; sélectionner un champ de tâche et Renommer. Si un champ est déjà utilisé, choisir un numéro libre et noter la correspondance.
5. Remplir les Notes de chaque ligne avec la fiche complète. Ne pas coller les critères dans Nom.
6. Laisser Sprint = Aucun sprint ; mettre Afficher dans le tableau = Oui pour les 12 PBI.
7. Trier la feuille sur Ordre backlog croissant, via Affichage > Trier > Trier par selon le ruban ; garder les champs de chaque ligne ensemble.
8. Format > Personnaliser les cartes : choisir jusqu’à cinq champs supplémentaires réellement proposés, par exemple ID, points, ordre, obstacle et reste. [S1]
9. Enregistrer une copie « NOVALIS_BI_Scrum_00_Backlog.mpp », puis reprendre le fichier principal.

### Données à saisir
| Champ | Alias / usage |
|---|---|
| Nom de la tâche | USxx et titre |
| Texte1 | ID PBI, stable même si l’ID de ligne change |
| Nombre1 | Points, total initial 47 |
| Nombre2 | Ordre backlog, 1 = premier |
| Nombre3 | Reste estimé h, saisi manuellement, vide avant Planning |
| Texte2 | Obstacle et date |
| Texte3 | Résultat DoD : À vérifier / Conforme / Non conforme |
| Notes | Formulation, valeur, critères, contraintes et preuves |
| Sprint | Affectation native |
| État du tableau | État opérationnel natif |
| Afficher dans le tableau | Oui pour les PBI ; Non pour les tâches détaillées |

Les tâches détaillées auront identifiant T-USxx-n, points vides et visibilité Non pour éviter le double comptage. La priorité native de nivellement Project n’est pas l’ordre Scrum : utiliser Nombre2. Ne saisir ni points dans Durée ni heures personnalisées dans Travail en prétendant qu’il s’agit du même champ.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

12 identifiants uniques, 12 cartes visibles, 47 points et critères dans Notes ; pas de liens artificiels entre toutes les stories.

### Points de vigilance et erreurs fréquentes
Le Gantt représente mal la valeur, la conversation et les preuves. Le champ Nombre3 n’est pas Travail restant natif. Les cartes n’assurent pas un historique quotidien : un registre complémentaire reste utile.

### Questions de réflexion pour les participants
Comment retrouver US03 après un tri ? Pourquoi garder un registre de suivi hors du simple état courant ?

### Lien avec la préparation PSPO I
Transparence et compréhension priment sur le respect d’un formulaire. [S3]


## Étape 6 — Planifier les sprints — 30 min

### Objectif de l’étape
Créer trois timeboxes et documenter des prévisions révisables.

### Contexte métier
NOVALIS veut inspecter des résultats toutes les deux semaines.

### Notions Scrum à comprendre
Un Sprint dure au plus un mois ; le suivant commence immédiatement. Événements, affinement, tests et collaboration font partie du Sprint. [S3]

### Utilisation de l’IA — IA-06

#### Pourquoi utiliser l’IA ici ?
Faire vérifier les timeboxes et les hypothèses de capacité, puis préparer une prévision distincte d’un engagement de périmètre.

#### Entrées à fournir
Dates de début 02/11, 16/11, 30/11/2026, durées deux semaines, calendrier fictif lundi-vendredi sans exception ; 3 Developers × 10 jours × 6 h, réservations 36 h et 72 h ; backlog validé.

#### Prompt prêt à copier

```text
Prépare trois Sprints successifs pour NOVALIS à partir de ces données : [coller].
Présente : début, prochain début, dernier jour calendaire inclus,
jours ouvrés du cas, objectif candidat, PBI pressentis et incertitudes.
Calcule la capacité en heures-personnes et explicite chaque réservation.
Distingue 180 h disponibles, 108 h réservées et 72 h pour les PBI.
Ne crée aucun taux de conversion points/heures. Ne sélectionne pas
les PBI à la place des Developers et ne garantis pas les Sprints futurs.
Indique les paramètres à saisir dans Gérer les sprints et les informations
qui doivent rester dans un registre, sans inventer un renommage desktop.
```

#### Sortie attendue
Trois périodes sans chevauchement, plafond PBI 72 h et objectifs candidats liés au Product Goal.

#### Contrôles humains avant toute saisie
Verifier les frontières et les dix jours ouvrés selon le calendrier du cas. Ne pas confondre fin incluse 15/11 et prochain début 16/11. Vérifier que le PO et le SM ne sont pas ajoutés artificiellement à la capacité des Developers.

#### Passage concret de la réponse IA à Project
Saisir vous-même les dates dans Gérer les sprints ; vérifier le résultat affiché. Garder les noms métier et hypothèses dans le registre. N’affecter les cartes S1 qu’après Planning ; S2/S3 sont prévisionnels.

#### Trace à conserver
IA-06 : calcul de capacité, trois timeboxes contrôlées et liste des hypothèses.

#### Proposition défectueuse à savoir rejeter
« Deux semaines = 14 jours × 6 h par personne » : compter les jours calendaires comme des jours ouvrés surestime la capacité.

### Manipulations détaillées dans Microsoft Project
1. Projet > Gérer les sprints ou Sprints > Gérer.
2. Sprint 1 : Début 02/11/2026, Longueur deux semaines ; vérifier l’unité proposée par le champ.
3. Ajouter un sprint : Début 16/11/2026, Durée deux semaines, puis Ajouter un sprint.
4. Ajouter Sprint 3 : Début 30/11/2026, deux semaines. Valider OK.
5. Contrôler les frontières [02/11,16/11[, [16/11,30/11[, [30/11,14/12[. Les derniers jours inclus sont 15/11, 29/11 et 13/12. Vérifier la sémantique des dates si le poste montre le dernier jour ouvré.
6. Conserver les identifiants Sprint 1/2/3. Les noms métier ci-dessous vont dans le registre : la documentation ne garantit pas de commande de renommage du Sprint desktop. Ne pas inventer un champ Nom. Renommer une colonne d’état n’est pas renommer un Sprint.
7. Ouvrir Sprints > Planification > Tableau de planification sprint. Les cartes sont déplacées vers un Sprint après accord en Planning ; alternative : saisir la colonne Sprint en feuille. [S1]

### Données à saisir
| Sprint | Dates | Objectif | Prévision initiale |
|---|---|---|---|
| 1 — Première lecture des ventes | 02–15/11 | Lecture fiable des ventes, régions et contributeurs | US01 5 + US02 3 + US03 5 = 13 pts |
| 2 — Lecture économique | 16–29/11 | Interpréter rentabilité et comparer magasins/périodes | US04 5 + US05 3 + US06 5 = 13 pts |
| 3 — Approfondir la confiance | 30/11–13/12 | Analyse plus explicable et réutilisable | Hypothèse : US07 3 + US09 3 + US10 3 + US11 2 = 11 pts |

Capacité fictive initiale : 3 Developers × 10 jours × 6 h = 180 heures-personnes ; réserver 36 h aux événements/affinement/collaboration et 72 h au support, soit 72 h pour les PBI. Prévisions indépendantes : S1 52 h, S2 60 h, S3 initial 48 h. Ce n’est pas une conversion points/heures. Une absence en S2 réduira le plafond à 48 h ; S3 conservera ce plafond annoncé.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

Trois Sprints successifs et un registre d’objectifs/capacité. S2/S3 restent des prévisions ; seul S1 va être sélectionné.

### Points de vigilance et erreurs fréquentes
Ne pas remplir mécaniquement tous les Sprints pour vider Aucun sprint. Deux semaines calendaires ne signifient pas dix jours calendaires. Les horaires de Project ne garantissent pas la capacité effective.

### Questions de réflexion pour les participants
Pourquoi laisser du travail sans Sprint ? Une capacité de 72 h garantit-elle de finir 13 points ?

### Lien avec la préparation PSPO I
Prévisions empiriques, capacité et sélection par les Developers en discussion avec le PO. [S3]


## Étape 7 — Réaliser la Sprint Planning — 40 min

### Objectif de l’étape
Construire pourquoi, quoi et comment pour le Sprint 1.

### Contexte métier
Dhirar A veut inspecter une analyse utilisable, pas uniquement des travaux techniques.

### Notions Scrum à comprendre
Toute la Scrum Team collabore. Samia L prépare la discussion de valeur ; les Developers sélectionnent et élaborent le plan. Le Sprint Goal est finalisé avant la fin de la Planning. Sprint Backlog = objectif + sélection + plan. [S3]

### Utilisation de l’IA — IA-07

#### Pourquoi utiliser l’IA ici ?
Comparer des sélections possibles et produire un plan de travail discuté, incluant la qualité.

#### Entrées à fournir
Product Goal, DoD, US01/02/03/04, tailles 5/3/5/5 ; capacité PBI 72 h ; hypothèses initiales d’effort US01 20 h, US02 12 h, US03 20 h, US04 24 h. Ces heures sont des hypothèses distinctes des points.

#### Prompt prêt à copier

```text
Aide la Scrum Team à préparer sa Planning, sans décider à sa place.
Voici les éléments et hypothèses : [coller].
Compare deux scénarios :
A = US01/US02/US03 ; B = US01/US02/US04.
Pour chacun, propose un Sprint Goal cohérent, total points, total heures
hypothétiques, risques, apprentissages et conditions d’un Increment utilisable.
Ne transforme pas le plafond de capacité en obligation de le remplir.
Décompose le scénario A en travail fonctionnel : règles/données,
restitution, tests, documentation, intégration et disponibilité.
Conserve ses totaux 20/12/20 h ; propose une répartition interne à discuter.
Précise ce que le PO clarifie et ce que les Developers sélectionnent et organisent.
Ne fournis aucun code BI ni attribution unilatérale des tâches par le PO.
```

#### Sortie attendue
Deux scénarios de 13 points : A 52 h, B 56 h ; différences de valeur et risque explicites ; plan du scénario A incluant la DoD.

#### Contrôles humains avant toute saisie
Les deux scénarios peuvent être recevables selon le besoin. Discuter puis retenir A pour suivre le jeu du TP. Les Developers valident la faisabilité ; ne pas additionner les tâches détaillées aux mêmes heures déjà portées par les PBI.

#### Passage concret de la réponse IA à Project
Déplacer US01/02/03 dans S1. Nombre3 = 20/12/20 ; enregistrer le Sprint Goal au registre, le plan en Notes et les tâches détaillées demandées. Texte4 peut devenir IA-04 ; IA-07. Archiver la Planning.

#### Trace à conserver
IA-07 : comparaison A/B, scénario retenu, raisons du rejet ou report de l’autre et plan validé.

#### Proposition défectueuse à savoir rejeter
« La capacité restante permet forcément d’ajouter US04 » : une marge en heures ne prouve ni faisabilité ni cohérence avec le but.

### Manipulations détaillées dans Microsoft Project
1. Relire le Product Goal et la DoD fournie à l’étape 12, avant toute sélection.
2. Examiner US01–US04 : critères, risques et capacité.
3. Consigner le Sprint Goal ci-dessous dans le registre Sprints.
4. Déplacer US01/02/03 de Aucun sprint à Sprint 1.
5. En feuille, Nombre3 = 20/12/20 h ; Nombre1 reste 5/3/5 points.
6. Ajouter le plan détaillé dans Notes.
7. Pour pratiquer les tâches : créer T-US01-1, T-US01-2, T-US01-3 en mode manuel, points vides, Afficher dans le tableau = Non. Ces lignes décrivent les mêmes 20 h : ne pas les additionner aux 20 h du PBI.
8. Les Developers conviennent de la répartition. Cheikh AS contribue aux contrôles avec un collègue ; la restitution et la vérification croisée sont prises en charge ensemble.
9. Enregistrer « NOVALIS_BI_Scrum_01_Planning_S1.mpp ».

### Données à saisir
Sprint Goal : « Permettre à la direction d’identifier les variations et les principaux contributeurs des ventes du pilote sur des chiffres réconciliés ».

| PBI | Plan indicatif | Prévision |
|---|---|---:|
| US01 | Règles/totaux 6 h ; restitution mensuelle 8 h ; tests/documentation/disponibilité 6 h | 20 h |
| US02 | Correspondances région/magasin 3 h ; filtre 5 h ; tests/documentation 4 h | 12 h |
| US03 | Tri/filtres 4 h ; classement 8 h ; tests/documentation/intégration 8 h | 20 h |
| Total PBI | Tests et qualité inclus | 52 h |

Les activités peuvent être fractionnées davantage si cela facilite le suivi. Leur découpage est une décision des Developers.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

Trois PBI, 13 points, 52 h initiales, un but cohérent et un plan intégrant la DoD.

### Points de vigilance et erreurs fréquentes
Le PO ne distribue pas unilatéralement les tâches et n’impose pas US04. Une autre sélection cohérente est recevable, mais nécessite son propre suivi : ne pas réutiliser les chiffres du scénario sans adaptation.

### Questions de réflexion pour les participants
Qui décide comment réaliser le travail ? Peut-on supprimer une fonction secondaire sans perdre le but ?

### Lien avec la préparation PSPO I
Autogestion, responsabilités et engagement associé au Sprint Backlog. [S3]


## Étape 8 — Gérer le Sprint Backlog et le travail quotidien — 35 min

### Objectif de l’étape
Adapter le plan et rendre visibles obstacles, états et reste.

### Contexte métier
À J3, une correspondance de codes produits incertaine impose une réestimation.

### Notions Scrum à comprendre
Le Product Backlog porte les améliorations du produit ; le Sprint Backlog est le plan des Developers pour le Sprint. Le Daily Scrum, de 15 min, inspecte l’avancement vers le but et adapte le plan : pas de reporting hiérarchique au PO. [S3]

### Utilisation de l’IA — IA-08

#### Pourquoi utiliser l’IA ici ?
Faire synthétiser les faits d’un suivi quotidien et préparer les discussions d’adaptation, sans déléguer le Daily ni la déclaration Done.

#### Entrées à fournir
Sprint Goal, sélection S1, état J0 puis J1–J3 uniquement pour la première analyse ; à la seconde analyse, ajouter J4–J5 et les obstacles réellement simulés. Ne pas transmettre J6–J10 en avance.

#### Prompt prêt à copier

```text
Analyse ces données de suivi NOVALIS : [coller J0 à J3 puis, plus tard, J4 à J5].
Unité : heures estimées restantes dans Nombre3 ; ce ne sont ni les heures
consommées ni le champ natif Travail restant. Points inchangés : 5/3/5.
Distingue faits observables, causes possibles et questions à poser.
Calcule les totaux et leurs variations. Explique pourquoi le reste peut augmenter.
Propose trois questions utiles aux Developers pour adapter le plan au Sprint Goal.
Prépare un tableau : PBI, état proposé, reste, obstacle, prochaine action,
preuve manquante avant Done. Ne déclare aucun élément terminé sans preuve.
Ne juge pas la performance individuelle et ne transforme pas le Daily en reporting au PO.
```

#### Sortie attendue
J2 45 h ; J3 48 h, hausse de 3 h ; J5 31 h et aucun PBI Done selon les faits. Causes présentées comme hypothèses sauf obstacle fourni.

#### Contrôles humains avant toute saisie
Comparer chaque total au tableau. Exiger une référence au jour et au PBI. À J5, US01 est À vérifier ; les autres restent En cours. Une baisse d’heures ne permet pas de créditer des points.

#### Passage concret de la réponse IA à Project
Appliquer seulement les mises à jour du scénario : état, Nombre3, obstacle et Notes. Inscrire les actions discutées, puis exporter le nouvel état pour vérifier la synthèse. Le registre quotidien conserve l’historique.

#### Trace à conserver
IA-08 : première analyse J3, décision d’adaptation, seconde analyse J5 et différence après saisie.

#### Proposition défectueuse à savoir rejeter
« 40 % d’heures consommées implique 40 % de valeur livrée » : le reste n’est pas une consommation, et la valeur n’est pas déduite d’un pourcentage.

### Manipulations détaillées dans Microsoft Project
1. Sprints > Sprint > Tableau sprint actuel. Choisir explicitement Sprint 1 si la date du poste ne correspond pas au cas ; ne pas changer l’horloge Windows.
2. Observer les colonnes natives Next up / In progress / Done ; la traduction peut montrer Accès suivant / En cours / Terminé. Clic droit sur la première colonne > Renommer > À faire si souhaité.
3. À droite de la dernière colonne, Ajouter une nouvelle colonne > À vérifier. Ce n’est pas Done.
4. J1 : US01/03 En cours ; US02 À faire. Mettre à jour Nombre3 en feuille.
5. J3 : obstacle US03 = « J3 — correspondance P03 à confirmer avec Haida B ». Action dans Notes : Cheikh AS et Haida B vérifient avant J4.
6. J4 : après résolution, retirer le blocage courant, conserver la trace datée dans Notes ; démarrer US02.
7. J5 : US01 À vérifier ; J6 : après preuves DoD, Texte3 = Conforme et US01 Terminé. Même procédure à J8 pour US02, J10 pour US03.
8. Copier chaque jour l’état et les restes dans un registre Excel. Project ne reconstitue pas automatiquement cet historique personnalisé.
9. Observer tout effet du déplacement sur le pourcentage d’achèvement et le consigner : ni le pourcentage ni l’état ne vérifient la DoD. [S1]

### Données à saisir
| Jour | Reste US01 h | Reste US02 h | Reste US03 h | Total h | Points Done cumulés |
|---|---:|---:|---:|---:|---:|
| J0 | 20 | 12 | 20 | 52 | 0 |
| J1 | 18 | 12 | 19 | 49 | 0 |
| J2 | 14 | 12 | 19 | 45 | 0 |
| J3 | 15 | 12 | 21 | 48 | 0 |
| J4 | 11 | 10 | 21 | 42 | 0 |
| J5 | 6 | 7 | 18 | 31 | 0 |
| J6 | 0 | 5 | 15 | 20 | 5 |
| J7 | 0 | 2 | 13 | 15 | 5 |
| J8 | 0 | 0 | 8 | 8 | 8 |
| J9 | 0 | 0 | 3 | 3 | 8 |
| J10 | 0 | 0 | 0 | 0 | 13 |

J1 = 02/11, J5 = 06/11, J6 = 09/11, J10 = 13/11. La timebox se termine le 15/11 ; Review et Retrospective se tiennent le dernier jour ouvré. Les heures sont des prévisions du reste, pas des heures réalisées.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

J5 : 31 h, aucune story Done, US01 à vérifier. J10 : trois PBI conformes et 13 points Done.

### Points de vigilance et erreurs fréquentes
Ne pas réduire mécaniquement le reste d’un nombre d’heures fixe chaque jour. Ne pas réestimer les points pour maquiller le suivi. Une story « à 90 % » n’est pas un Increment Done.

### Questions de réflexion pour les participants
Pourquoi le reste monte-t-il à J3 ? Quelle adaptation aide le but plutôt qu’un indicateur artificiel ?

### Lien avec la préparation PSPO I
Daily Scrum, transparence des obstacles et adaptation par les Developers. [S3]


## Étape 9 — Suivre et visualiser l’avancement — 30 min

### Objectif de l’étape
Lire état, reste et risque sans confondre quantité produite et valeur.

### Contexte métier
À J5, la direction voit du travail en cours mais encore aucun PBI conforme.

### Notions Scrum à comprendre
Burndown et vélocité peuvent aider ; ni leur utilisation ni une droite parfaite ne sont imposées. L’empirisme et l’inspection de l’Increment restent nécessaires. [S3]

### Utilisation de l’IA — IA-09

#### Pourquoi utiliser l’IA ici ?
Aider à choisir et interpréter les indicateurs, en séparant données fournies, calculs simples et rapports réellement disponibles.

#### Entrées à fournir
Données complètes J0–J10 au moment de l’exercice de fin S1, points Done 0/0/0/0/0/0/5/5/8/8/13, champs saisis et titre exact des rapports observés sur le poste.

#### Prompt prêt à copier

```text
Voici le suivi S1 et les champs réellement alimentés : [coller].
1. Prépare un tableau Jour, reste total h, repère idéal h,
points Done cumulés et points restants.
2. Idéal = 52 × (10 − jour) / 10 ; explique que ce n’est pas une obligation.
3. Propose un commentaire factuel de 120 mots distinguant heures et points.
4. Indique comment tracer les deux séries d’heures dans Excel et une courbe
séparée de points, sans mélanger les unités.
5. Voici les rapports effectivement présents : [coller]. Explique ce qu’ils
permettent seulement si les champs requis sont renseignés.
Ne prétends pas que Nombre3 alimente un rapport natif Travail restant,
ni qu’un burndown Story Points existe automatiquement dans mon édition.
Aucune conclusion sur la productivité individuelle.
```

#### Sortie attendue
Un tableau identique aux valeurs de référence, des axes explicites et un commentaire nuancé sur J3, J5 et J6.

#### Contrôles humains avant toute saisie
Recalculer les points restants = 13 − Done cumulés. À J5, idéal 26 h contre reste 31 h, mais pas de diagnostic causal certain. Contrôler la provenance des séries, pas seulement l’aspect de la courbe.

#### Passage concret de la réponse IA à Project
Ouvrir les rapports natifs présents et consigner les champs utilisés. Produire dans Excel les courbes pédagogiques garanties par le jeu de données. Coller le commentaire corrigé dans le registre, non comme preuve de valeur.

#### Trace à conserver
IA-09 : tableau de calcul, unités, source, commentaire retenu et limites des rapports natifs.

#### Proposition défectueuse à savoir rejeter
« La courbe descend, donc les utilisateurs gagnent du temps » : une observation de travail n’établit pas un résultat d’usage.

### Manipulations détaillées dans Microsoft Project
1. Enregistrer une copie du fichier final avant de reconstituer l’état J5 si nécessaire.
2. Afficher Feuille sprint actuelle, Sprint 1, et Nom/Points/Reste/Obstacle/Résultat DoD/État.
3. Vérifier que les tâches détaillées ne sont pas comptées comme PBI supplémentaires.
4. Rapport > Afficher les rapports > Tableau des tâches : ouvrir un rapport présent ; noter titre, unité et filtre. L’aide confirme la catégorie, pas un catalogue identique pour chaque build. [S1]
5. Si Travail ou Travail restant natifs sont vides, l’expliquer : Nombre3 n’alimente pas ces champs.
6. Dans Excel, saisir Jour, Reste total h, Idéal h, Points restants ; Insertion > Graphiques > Courbes. Sélectionner les deux séries d’heures, pas les points sur la même échelle.
7. Titre : « Sprint 1 — reste estimé, données pédagogiques » ; axe vertical heures, horizontal jours ouvrés.
8. Facultatif : courbe distincte de points. Si un burndown natif existe, inspecter ses données avant d’annoncer sa pertinence ; aucun burndown Story Points prêt à l’emploi n’est garanti ici.

### Données à saisir
Reprendre les totaux J0–J10 de l’étape 8 : 52, 49, 45, 48, 42, 31, 20, 15, 8, 3, 0 h.

Ligne idéale illustrative : 52 ; 46,8 ; 41,6 ; 36,4 ; 31,2 ; 26 ; 20,8 ; 15,6 ; 10,4 ; 5,2 ; 0 h. Formule : 52 × (10 − jour) / 10.

Points restants : 13, 13, 13, 13, 13, 13, 8, 8, 5, 5, 0. Ces données sont fournies et simulées, non calculées automatiquement par Project.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

Un tableau lisible et une courbe avec source, unités et commentaire : hausse du reste J3, premiers PBI Done J6.

### Points de vigilance et erreurs fréquentes
À J5, 31 h restantes et 13 points restants sont compatibles. Ne pas fractionner les points au pourcentage. Ne pas attribuer une variation de courbe à un individu sans preuve.

### Questions de réflexion pour les participants
Une courbe idéale prouve-t-elle un usage utile ? Que faut-il observer en plus ?

### Lien avec la préparation PSPO I
Limites des métriques de production et prévision empirique. [S3, S4]


## Étape 10 — Simuler un changement de priorité en cours de sprint — 25 min

### Objectif de l’étape
Analyser une urgence sans perdre le Sprint Goal ni réduire la qualité.

### Contexte métier
À J4 S1, Dhirar A demande un taux d’atteinte des objectifs régionaux. Le but S1 reste utile.

### Notions Scrum à comprendre
Le PO ordonne le backlog. Le périmètre peut être clarifié/renégocié avec les Developers sans mettre en danger le but et sans réduire la qualité. Seul le PO peut annuler un Sprint si son objectif devient obsolète. [S3]

### Utilisation de l’IA — IA-10

#### Pourquoi utiliser l’IA ici ?
Comparer les options de traitement d’une urgence au lieu d’ajouter automatiquement une carte au Sprint.

#### Entrées à fournir
Événement J4, Product Goal, Sprint Goal S1 toujours pertinent, sélection et état courant, description US13 et cibles encore non finalisées.

#### Prompt prêt à copier

```text
À J4 S1, la direction demande l’indicateur suivant : [coller US13].
Le Sprint Goal actuel reste pertinent. Les cibles définitives ne seront
confirmées qu’après S2. État courant : [coller J4 seulement].
Compare trois options : préparer le besoin dans le backlog ; négocier
une substitution compatible avec le but ; annuler le Sprint.
Pour chacune, indique valeur, conditions, risque, données manquantes
et qui prend quelles décisions. Ne présente pas les options comme équivalentes.
Explique pourquoi une urgence n’impose pas une annulation.
Propose une formulation testable et les cas zéro/agrégation à vérifier.
Ne force pas la sélection US13 et ne fabrique pas de preuve sur les cibles.
```

#### Sortie attendue
Une matrice de décision ; report préparé dans le backlog recommandé dans le scénario ; annulation non justifiée par les faits.

#### Contrôles humains avant toute saisie
Verifier que seul le PO a le pouvoir d’annulation et que la condition discutée est l’obsolescence du but. Contrôler 85,71 %, 80 %, global 83,33 % ; aucune moyenne simple des taux.

#### Passage concret de la réponse IA à Project
Créer US13 hors Sprint, points illustratifs 3 après clarification, ordre 7 ; conserver la décision datée en Notes et IA-10 dans Texte4. Ne modifier ni la sélection ni les données S1.

#### Trace à conserver
IA-10 : options comparées, décision du PO simulé et discussion de faisabilité avec les Developers.

#### Proposition défectueuse à savoir rejeter
« Le sponsor est urgent, donc annuler immédiatement et recommencer » : autorité et condition d’annulation confondues.

### Manipulations détaillées dans Microsoft Project
1. Tableau de planification > Aucun sprint > Nouvelle tâche : US13.
2. Ajouter les champs et Notes ci-dessous. Garder Aucun sprint et état À faire.
3. Ordre du backlog : US13 juste après US06, rang 7 ; décaler US07–US12 à 8–13.
4. Notes : « J4 : valeur reconnue ; objectif S1 maintenu ; cibles à clarifier pour un prochain Sprint ».
5. Ne pas déplacer US13 dans S1 : le scénario de suivi reste inchangé.

### Données à saisir
US13 — Mesurer l’atteinte des objectifs commerciaux.

« En tant que direction commerciale, je veux comparer le CA régional à l’objectif commercial de février, afin de cibler les actions de rattrapage. »

Taille illustrative après clarification par les Developers : 3 points ; prévision de travail S3 : 12 h, sans conversion automatique.

Critères : Nord, objectif 35 000 / réel 30 000 TND → 85,71 %, écart −5 000 ; Sud, objectif 25 000 / réel 20 000 → 80 %, écart −5 000. Global : 50 000 / 60 000 = 83,33 %, pas la moyenne simple des taux ; écart −10 000. Cible zéro : Non calculable. Mois, source et version des cibles visibles. Cibles définitives fournies fin S2.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

13 PBI, 50 points historiques ; S1 reste à 13 points. Besoin urgent visible et ordonné, sans injection forcée.

### Points de vigilance et erreurs fréquentes
Une substitution peut être discutée si elle préserve le but et la qualité, mais nécessiterait un suivi adapté. Ne pas annuler pour masquer un écart. Une urgence n’implique pas une obsolescence du Sprint Goal.

### Questions de réflexion pour les participants
Quelles informations manquent ? Quel changement rendrait vraiment le but obsolète ?

### Lien avec la préparation PSPO I
Autorité du PO sur ordre et annulation ; limites sur le plan des Developers. [S3]


## Étape 11 — Organiser la Sprint Review et la Sprint Retrospective — 30 min

### Objectif de l’étape
Séparer inspection du produit et amélioration de la façon de travailler.

### Contexte métier
À J10 S1, les trois PBI sont conformes selon les fiches pédagogiques.

### Notions Scrum à comprendre
La Review est une session de travail sur résultat et adaptations, pas une simple validation ni une porte obligatoire avant livraison. La Retrospective améliore qualité et efficacité de la Scrum Team. [S3]

### Utilisation de l’IA — IA-11

#### Pourquoi utiliser l’IA ici ?
Préparer des supports de Review et de Retrospective à partir des faits, sans fabriquer de retours utilisateurs.

#### Entrées à fournir
Résultats S1, fiches de conformité simulées, retours Dhirar A/Sanae A/Haida B/Khansa D fournis par le cas, observations 28/30/32/30/30 minutes et incident de codes produits.

#### Prompt prêt à copier

```text
Prépare deux supports distincts à partir des seules données : [coller].
A. Review : scénario de démonstration des PBI conformes, éléments à montrer,
retours fournis, conséquences possibles sur le backlog, questions de valeur.
B. Retrospective : Conserver/Arrêter/Essayer, puis une action concrète,
portage volontaire à confirmer et moment d’inspection.
Ne présente pas la Review comme une signature obligatoire avant toute livraison.
Ne fabrique aucune citation utilisateur, décision approuvée ou test réalisé.
Les retours et durées sont fictifs : signale-le.
Calcule la moyenne et explique ce qu’elle ne démontre pas encore.
```

#### Sortie attendue
Deux supports séparés ; moyenne 30 min ; pas d’objectif produit annoncé atteint. Une action précise sur le référentiel dès J1 avec inspection J2.

#### Contrôles humains avant toute saisie
Comparer toutes les citations à celles du cas. Distinguer faits, interprétations et recommandations. L’IA ne doit attribuer une action à personne sans discussion. Ne pas confondre nouvelle fonctionnalité et amélioration de collaboration.

#### Passage concret de la réponse IA à Project
Mettre à jour uniquement l’ordre et les Notes validés ; conserver les comptes rendus hors du Gantt. Ajouter au plan S2 une action de contrôle, sans doubler son temps déjà inclus dans les PBI.

#### Trace à conserver
IA-11 : deux supports, corrections, décisions produit et action d’amélioration retenue.

#### Proposition défectueuse à savoir rejeter
« Les utilisateurs ont validé toutes les fonctions » alors que seuls des retours partiels sont fournis : une approbation a été inventée.

### Manipulations détaillées dans Microsoft Project
1. Afficher S1 ; vérifier Terminé/Conforme et preuves dans Notes.
2. Simuler la démonstration BI à partir des agrégats : janvier, Nord, effacement des filtres et classement produits. Project n’exécute pas ces interactions BI.
3. Consigner les retours dans un registre Review avec auteur, observation, décision et question à tester.
4. Revenir au backlog ; préparer US04/05/06, conserver US13 visible avec sa contrainte de cibles.
5. Ouvrir un registre Retrospective : Conserver / Arrêter / Essayer. Choisir une action concrète ; noter sa mise en œuvre dans le plan S2, pas de points de valeur utilisateur fictifs.

### Données à saisir
| Personne | Retour fictif | Adaptation |
|---|---|---|
| Dhirar A | « Les contributeurs sont visibles ; il manque la rentabilité » | Maintenir US04 haute |
| Sanae A | « Je veux comparer mes magasins » | Préparer US05 |
| Haida B | « J’ai encore contrôlé les données manuellement » | Contrôles précoces et affinement US10 |
| Khansa D | « Attention aux moyennes simples des pourcentages » | Clarifier les calculs US04/13 |

Observations S1 : 28/30/32/30/30 minutes, moyenne 30 ; le périmètre du Product Goal n’est pas encore complet.

Retrospective : conserver les vérifications croisées ; arrêter de découvrir les codes tardivement ; essayer un contrôle du référentiel dès J1. Action : Cheikh AS et un collègue vérifient codes/cas limites avant restitution et inspectent le résultat à J2 du prochain Sprint. Temps inclus dans les prévisions S2.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

Deux registres distincts : adaptations produit et amélioration du travail.

### Points de vigilance et erreurs fréquentes
Ne pas faire du PO le juge unique du Done. Le travail non Done est signalé en transparence mais pas présenté comme Increment terminé. Éviter la recherche de coupables dans la Retrospective.

### Questions de réflexion pour les participants
Un retour positif suffit-il à mesurer la valeur ? Pourquoi US10 ne dispense-t-elle pas des contrôles dès S1 ?

### Lien avec la préparation PSPO I
Finalité des événements et collaboration avec les parties prenantes. [S3]


## Étape 12 — Comprendre l’Increment et la Definition of Done — 25 min

### Objectif de l’étape
Distinguer critères spécifiques, qualité commune et retour métier.

### Contexte métier
Un beau tableau avec des totaux faux ne doit pas être annoncé utilisable. Lire cette DoD avant la Planning, puis l’étudier ici.

### Notions Scrum à comprendre
Un Increment est intégré, utilisable et conforme à la DoD. Les critères portent sur un PBI ; la DoD définit son état de qualité ; la validation métier apporte un retour sans remplacer la DoD. Plusieurs Increments peuvent être créés et livrés avant la fin du Sprint. [S3]

### Utilisation de l’IA — IA-12

#### Pourquoi utiliser l’IA ici ?
Faire auditer les critères et les preuves de qualité, sans laisser l’IA certifier un Increment.

#### Entrées à fournir
DoD du cas, critères de US01/US03/US06 et preuves disponibles au point simulé. Pour le test difficile, fournir explicitement US06 en échec sur référence zéro.

#### Prompt prêt à copier

```text
Compare les critères, la DoD et les preuves ci-dessous : [coller].
Prépare une matrice : exigence, preuve fournie, preuve manquante,
conforme/non conforme/non démontré, action de vérification.
N’invente pas de tests exécutés. Une preuve absente signifie non démontré,
pas réussite présumée. Un échec explicite signifie non conforme.
Explique les différences entre critères d’acceptation, DoD et retour métier.
US06 échoue sur la référence zéro : quelle décision Done est cohérente ?
Propose des questions de test fonctionnelles sans code ni développement.
N’autorise pas une réduction de DoD pour tenir une date.
```

#### Sortie attendue
Une matrice de preuves et une liste de contrôles ; US06 non conforme ; qualité commune distincte de critères spécifiques.

#### Contrôles humains avant toute saisie
Chaque statut doit renvoyer à un fait fourni. Ne pas marquer US01 conforme avant J6. Vérifier que US11/US10 ne sont pas utilisées comme prétexte pour différer les exigences minimales.

#### Passage concret de la réponse IA à Project
Saisir le statut validé dans Texte3 et les références de preuves dans Notes. Ne déplacer vers Terminé qu’après la vérification du jeu de rôle ; le diagnostic IA seul ne suffit pas.

#### Trace à conserver
IA-12 : matrice, anomalies corrigées, décisions qualité et limites de la simulation.

#### Proposition défectueuse à savoir rejeter
« Aucun défaut signalé, donc tous les tests sont passés » : absence d’information confondue avec preuve positive.

### Manipulations détaillées dans Microsoft Project
1. Ouvrir Notes de US01 et retrouver critères et preuves.
2. Vérifier la liste ci-dessous ; Texte3 = Conforme seulement après satisfaction.
3. Déplacer vers Terminé : Project n’applique pas automatiquement cette liste.
4. Dans une copie d’exercice, simuler US03 Non conforme si le classement janvier est faux ; retirer le statut Done et noter le défaut. Revenir ensuite au scénario corrigé où le problème est résolu à J10.
5. Un élément de 5 points non Done vaut zéro point Done, pas un crédit proportionnel.

### Données à saisir
DoD pédagogique, commune à chaque Increment :

1. Critères applicables vérifiés avec preuve identifiable.
2. Totaux CA/coût réconciliés avec la référence, aucun écart inexpliqué.
3. Doublons et valeurs obligatoires manquantes traités ; exclusions documentées.
4. Calculs, unités, filtres, arrondis et cas limites cohérents.
5. Tests fonctionnels et de non-régression des fonctions déjà livrées réussis.
6. Fonctions intégrées et utilisables sans assemblage manuel.
7. Accès limité aux utilisateurs autorisés ; données fictives/pseudonymisées ; aucun incident critique connu laissé sans traitement.
8. Documentation minimale : périmètre, source, date et définitions des indicateurs livrés.
9. Mise à disposition dans le pilote convenu, sans défaut bloquant connu, consigne d’accès disponible.
10. Preuves et limites accessibles à la Scrum Team.

Exemple : US01 = janvier 40 000 TND ; DoD = tests, réconciliation, documentation, intégration et accès ; retour métier = demande ultérieure de comparaison.

Les preuves sont simulées : US01 conforme J6, US02 J8, US03 J10. Elles ne certifient pas une solution BI réellement développée.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

Une qualité commune et une décision claire pour chaque élément.

### Points de vigilance et erreurs fréquentes
US11 est un dictionnaire enrichi, pas une dispense de documentation minimale avant S3. US10 ajoute la visibilité de fraîcheur, pas le droit de livrer sans contrôle. Le PO ne peut pas abaisser unilatéralement la qualité.

### Questions de réflexion pour les participants
US06 échoue sur la référence zéro : peut-elle être Done ? L’accord du sponsor supprime-t-il la nécessité du test ?

### Lien avec la préparation PSPO I
DoD, engagement de l’Increment, standards organisationnels minimaux et travail non terminé. [S3]


## Étape 13 — Gérer plusieurs sprints et inspecter les résultats — 35 min

### Objectif de l’étape
Conserver l’historique et adapter les prévisions après inspection.

### Contexte métier
Une absence imprévue et un défaut en S2 obligent à revoir S3.

### Notions Scrum à comprendre
Un élément non Done revient au backlog pour examen, sans report automatique. Une vélocité locale ne mesure pas la productivité individuelle et ne devient pas un objectif à maximiser. [S3]

### Utilisation de l’IA — IA-13

#### Pourquoi utiliser l’IA ici ?
Utiliser l’assistant pour analyser l’historique, replanifier après apprentissage et rédiger une synthèse de pilotage traçable.

#### Entrées à fournir
Pour la première passe : fin S2, US04/05 Done, US06 non conforme avec reste 10 h, capacité S3 48 h, US13 cibles confirmées et efforts 12 h, US10 12 h, US11 8 h. Pour la seconde passe seulement : résultats fin S3 et observations d’usage.

#### Prompt prêt à copier

```text
PASSE 1 — Préparation S3
Historique et données disponibles : [coller les données de fin S2 seulement].
Explique l’écart entre sélection et Done S2 sans juger les personnes.
Compare la prévision S3 initiale à une adaptation servant le Product Goal.
Propose un but S3 et examine US06/US13/US10/US11 : total points,
reste prévu, capacité, risques et marge de prévision.
US06 garde son ID ; ne la duplique pas et ne crédite aucun point partiel.
La sélection finale relève des Developers en discussion avec le PO.

PASSE 2 — Bilan après S3, à lancer seulement une fois la simulation terminée
Données fin S3 : [coller les résultats et observations réels du scénario].
Vérifie les PBI Done uniques, points restants et absence de double crédit.
Rédige une synthèse de 180 mots : faits, écarts, résultat produit,
valeur observée, limites, décision suivante et questions ouvertes.
Distingue moyenne et condition individuelle du Product Goal.
Ne déclare pas automatiquement l’objectif atteint parce que 34 points sont Done.
```

#### Sortie attendue
Première passe : S3 13 points, 42 h pour capacité 48 h, écart prévisionnel 6 h, sans garantie. Seconde passe : 50 = 34 Done uniques + 16 restants ; moyenne 14 min mais seuil strict non démontré pour tous.

#### Contrôles humains avant toute saisie
Verifier les IDs uniques ; US06 n’est pas comptée deux fois. Ne pas donner les résultats fin S3 à la première passe. Contrôler que l’écart de 6 h ne devient pas une promesse de capacité additionnelle.

#### Passage concret de la réponse IA à Project
Archiver S2 avant report, réexaminer US06 dans Aucun sprint puis l’affecter à S3 après Planning. Mettre à jour les quatre PBI, conserver les autres hors Sprint ; archiver S3 et joindre la synthèse corrigée.

#### Trace à conserver
IA-13 : prévision initiale, proposition révisée, décision, observation fin S3 et synthèse finale. Relever une recommandation confirmée et une limite de l’assistant.

#### Proposition défectueuse à savoir rejeter
« S1 13 + S2 13 + S3 13 = 39 points livrés » : additionner les sélections inclut le travail non Done et le report de US06.

### Manipulations détaillées dans Microsoft Project
1. Archiver la fin S1 avant de poursuivre.
2. Planning S2 : sélectionner US04/05/06 ; prévisions 24/12/24 h = 60 h. US13 reste sans Sprint : cibles non finalisées.
3. J2 S2 : noter absence et plafond révisé de 72 à 48 h. Adapter le plan sans allonger le Sprint ni abaisser la DoD.
4. Fin S2 : US04/05 Terminé/Conforme ; US06 À vérifier/Non conforme, reste 10 h. Défaut : référence zéro non gérée. Le but complet n’est pas atteint.
5. Enregistrer « NOVALIS_BI_Scrum_02_Fin_S2.mpp » et l’historique avant de modifier le Sprint de US06.
6. Remettre US06 dans Aucun sprint pour réexamen ; même ID, même estimation relative de référence 5 points dans ce scénario. Ne pas dupliquer le PBI.
7. Planning S3 : cibles confirmées ; sélectionner US06/13/10/11. Reste 10 + 12 + 12 + 8 = 42 h pour plafond 48 h ; total 13 points.
8. Fin S3 : quatre PBI Terminé/Conforme ; les autres restent Aucun sprint ; enregistrer une copie finale.

### Données à saisir
| Sprint | Sélection réelle | Done / non Done | Retours et décisions |
|---|---|---|---|
| S1 | US01/02/03 = 13 pts | 13 Done ; aucun non Done | Marge et comparaisons demandées |
| S2 | US04/05/06 = 13 pts | US04/05 = 8 Done ; US06 non Done | Objectif partiellement atteint ; US06 réexaminée ; cibles US13 confirmées fin S2 |
| S3 | US06/13/10/11 = 13 pts | 13 Done ; aucun non Done | Préparer le comité avec écarts explicables et confiance visible ; inspecter l’usage |

S3 initial envisagé à l’étape 6 est remplacé : les apprentissages priment sur la liste initiale.

Temps fictifs : S1 moyenne 30 min ; S2 moyenne 24 min, comparaison encore non conforme ; S3 observations 12/14/15/13/16 min, moyenne 14, aucune ressaisie sur les essais. Le seuil strict « moins de 15 min » n’est pas établi pour chaque utilisateur : 15 et 16 ne le satisfont pas.

Bilan : 47 + US13 3 = 50 points ; Done uniques 13 + 8 + 13 = 34 ; restants US07 3 + US08 5 + US09 3 + US12 5 = 16. US06 n’est créditée Done qu’une fois.

### Résultat attendu
Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

Trois historiques cohérents ; valeur obtenue, fonctionnalités livrées et tâches exécutées distinguées. Le produit S2 comprend marge et comparaison de magasins, mais pas la comparaison de périodes non conforme.

### Points de vigilance et erreurs fréquentes
Ne pas effacer l’échec partiel S2 en déplaçant seulement une carte. Ne pas additionner les points sélectionnés pour annoncer le produit livré. Ne pas déclarer automatiquement le Product Goal atteint sur une moyenne.

### Questions de réflexion pour les participants
Quelle valeur reste obtenue en S2 ? Comment vérifier le gain d’usage sans se limiter aux points ?

### Lien avec la préparation PSPO I
Prévision, livraison, valeur observée et adaptation du Product Backlog. [S3, S4]


## Dossier participant — livrables IA attendus

1. Un fichier MPP de travail enrichi des champs de traçabilité IA, avec archives Backlog, Planning S1, Fin S1, Fin S2 et Fin S3.
2. Treize entrées IA-01 à IA-13, avec prompts, sorties et décisions ; les étapes de création de fichier ou de registre ne nécessitent pas de carte artificielle dans le backlog.
3. Deux stories analysées en profondeur : sortie IA, critères contrôlés, corrections et version finale.
4. Une comparaison de scénarios de Planning A/B et la justification du scénario conservé.
5. Une analyse J3/J5 avec distinction entre reste, heures consommées et points Done.
6. Une analyse de la demande urgente et une décision traçable sans injection forcée dans S1.
7. Deux supports distincts Review/Retrospective, fondés sur les retours fournis et non inventés.
8. Un audit DoD avec preuves manquantes/non-conformités ; aucune certification automatique par l’IA.
9. Une synthèse de fin S3 confrontant prévision, résultat produit et valeur observée.

### Auto-contrôle de l’usage de l’IA

Pour chaque proposition retenue, pouvoir répondre : quelles entrées l’IA a-t-elle reçues ? qu’a-t-elle ajouté ? qu’avons-nous vérifié ? qui a décidé ? qu’avons-nous réellement saisi ? quelle preuve avons-nous du résultat ?

Une bonne sortie ne dispense pas de contrôle. Une mauvaise sortie est exploitable pédagogiquement si l’erreur est identifiée et corrigée. La qualité du TP se juge à la traçabilité et à la cohérence du planning, pas au nombre de prompts ni au fait que toutes les suggestions aient été acceptées.

## Registres participant à conserver

| Registre | Informations |
|---|---|
| IA | Entrées, prompts, sorties brutes, contrôles, décisions, report Project et observation |
| Produit | Vision, objectif, utilisateurs, hypothèses de valeur et mesures |
| Backlog | ID, formulation, critères, valeur, ordre, taille, contraintes |
| Sprints | Dates, objectif, sélection, capacité, résultat et décisions |
| Suivi quotidien | Jour, reste, état, obstacle et adaptation |
| Review | Auteur, observation, interprétation, décision produit |
| Retrospective | Conserver/Arrêter/Essayer, action, porteur volontaire, inspection |

Une archive MPP n’est ni une clôture Scrum avec validation du PMO ni une baseline obligatoire.

## Checklist finale

- [ ] IA utilisée pour produire des propositions, pas seulement reformuler les réponses du support.
- [ ] Prompt de cadrage exécuté ; données fictives seulement ; aucun accès au MPP supposé.
- [ ] Treize traces IA conservées avec décision et contrôle, sans inventer des erreurs.
- [ ] Champs Référence IA / Décision IA créés avec numéros libres et sans écraser les champs existants.
- [ ] Les données futures ne sont pas révélées dans les analyses d’un point de suivi antérieur.
- [ ] Aucun calcul, durée, date, droit d’accès ou test réalisé n’est accepté sans contrôle.
- [ ] L’IA ne sélectionne pas les PBI à la place des Developers, ne déclare pas Done sans preuve et n’annule pas un Sprint à la place du PO.
- [ ] Proposition, saisie effective et résultat observé sont distingués.
- [ ] Édition, licence, version, build et langue relevés ; fonctions réellement observées notées.
- [ ] Nouveau fichier distinct du TP1, modèle Sprints utilisé si présent, réouverture vérifiée.
- [ ] Aucune fonction absente annoncée comme native ; Project et Planner distingués.
- [ ] Produit, utilisateurs, valeur et Product Goal explicites.
- [ ] 12 PBI initiaux / 47 points, puis 13 PBI / 50 points après US13.
- [ ] Stories, tâches, critères, DoD et validation métier distincts.
- [ ] Trois Sprints successifs ; objectifs cohérents ; prévisions futures adaptables.
- [ ] Developers responsables du plan et de la sélection en dialogue ; PO redevable de la valeur et du backlog.
- [ ] S1 : 13 points, 52 h initiales ; J3 48 h ; J5 31 h et aucun point Done ; fin 13 points Done.
- [ ] S2 : 13 sélectionnés, 8 Done, US06 non conforme et réexaminée.
- [ ] S3 : US06/13/10/11, 13 points Done, reste initial 42 h.
- [ ] Done uniques 34 ; restants 16 ; aucun double crédit US06 ou double comptage des tâches.
- [ ] Heures, points, pourcentage et durées non confondus ; historique conservé.
- [ ] Graphiques identifiés comme données pédagogiques, pas calculs natifs non vérifiés.
- [ ] CA 90 000, coût 63 000, marge 27 000 TND ; taux de marque 30 %.
- [ ] Review et Retrospective distinctes ; action d’amélioration concrète.
- [ ] Aucun élément non conforme présenté comme Increment terminé.
- [ ] Résultat d’usage inspecté : moyenne 14 min ne prouve pas le seuil individuel pour tous.
- [ ] Aucun produit BI réel annoncé comme développé pendant cette simulation.

## Limites du support

L’assistant IA ne dispose d’aucun accès implicite au MPP et ne certifie ni qualité ni valeur. Aucun script ou développement n’est requis. Pas de test exécuté sur votre poste Project 2609 ; pas de capture inventée ; pas de renommage natif des sprints desktop garanti ; pas de burndown Story Points présumé ; pas d’historique déduit automatiquement du champ Nombre3 ; pas de synchronisation MPP/Planner promise. Les conventions de capacité et d’estimation ne sont pas des règles universelles Scrum.


## Glossaire français / anglais

| Terme | Définition |
|---|---|
| Prompt | Instruction et contexte transmis à un assistant IA pour une tâche explicite |
| Hypothèse / Assumption | Proposition à valider, distincte d’un fait établi |
| Registre IA / AI decision log | Historique des entrées, sorties, contrôles et décisions humaines |
| Traçabilité / Traceability | Lien entre besoin, proposition, décision, saisie et preuve de résultat |
| Produit / Product | Vecteur de valeur dont les limites, utilisateurs et parties prenantes sont identifiés |
| Product Goal / Objectif de produit | État futur ciblé ; engagement associé au Product Backlog |
| Product Backlog | Liste ordonnée et émergente de ce qui est nécessaire pour améliorer le produit |
| PBI / Product Backlog Item | Élément de cette liste, pas nécessairement une User Story |
| Refinement / Affinement | Activité continue de clarification, découpage et dimensionnement |
| User Story | Format optionnel reliant utilisateur, besoin et bénéfice |
| Acceptance Criteria / Critères d’acceptation | Conditions testables propres à un élément ; pratique utilisée dans le TP |
| Sprint | Événement de durée fixe, d’un mois au plus, contenant les autres événements |
| Sprint Goal / Objectif de Sprint | But unique et engagement associé au Sprint Backlog |
| Sprint Backlog | Objectif, éléments sélectionnés et plan des Developers |
| Sprint Planning | Événement établissant pourquoi, quoi et comment pour le Sprint |
| Daily Scrum | Événement de 15 minutes des Developers pour inspecter et adapter leur plan |
| Sprint Review | Inspection du résultat et de l’environnement avec les parties prenantes pour déterminer les adaptations |
| Sprint Retrospective | Inspection de la façon de travailler pour améliorer qualité et efficacité |
| Increment | Étape concrète, intégrée et utilisable vers le Product Goal |
| Definition of Done / DoD | Description formelle de l’état de qualité requis pour l’Increment |
| Product Owner / PO | Personne redevable de maximiser la valeur et de gérer efficacement le Product Backlog |
| Scrum Master | Personne redevable de la mise en place de Scrum et de l’efficacité de la Scrum Team |
| Developers | Membres qui créent l’Increment et leur plan ; pas nécessairement des programmeurs |
| Stakeholder / Partie prenante | Personne concernée par le produit ou ses résultats |
| Empiricism / Empirisme | Connaissance issue de l’expérience et décisions fondées sur l’observation |
| Self-management / Autogestion | Décider en interne qui fait quoi, quand et comment |
| Story Points | Estimation relative optionnelle ; ni jours ni heures imposés |
| Remaining Work / Travail restant | Champ natif Project distinct du champ personnalisé Nombre3 utilisé ici |
| Burndown | Représentation du travail restant dans le temps ; pratique optionnelle |
| Velocity / Vélocité | Mesure locale de quantité finie par Sprint, si utilisée ; pas productivité individuelle |
| Outcome / Résultat | Effet observé pour les utilisateurs ou l’organisation |
| Output / Production | Fonction ou élément produit ; ne prouve pas la valeur obtenue |
| Board / Tableau | Représentation visuelle du travail, non substitut aux interactions |
| Baseline / Référence de planification | Repère Project ; pas un artefact obligatoire Scrum |

Les définitions Scrum s’appuient sur [S3]. Les techniques et termes d’outil ne constituent pas des éléments supplémentaires du cadre.


## Sources officielles

Sources consultées le 22 octobre 2026. Les fonctions doivent être contrôlées sur le poste ; les traductions et le déploiement peuvent varier.

- [S1] Microsoft Support — [Tableaux de tâches et sprints dans Project desktop](https://support.microsoft.com/fr-fr/project/use-task-boards-in-microsoft-project-online-desktop-client) ; [version anglaise](https://support.microsoft.com/en-us/project/use-task-boards-in-microsoft-project-online-desktop-client). Modèle Projet Sprints, gestion des sprints, tableaux, états, cartes et rapports.
- [S2] Microsoft Learn — [Historique des mises à jour Microsoft 365 Apps](https://learn.microsoft.com/en-us/officeupdates/update-history-microsoft365-apps-by-date). Numéros de version, dont 2609, et versions par abonnement de Project.
- [S3] Scrum Guides — [Scrum Guide français, novembre 2020](https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-French.pdf) ; [versions et traductions](https://scrumguides.org/download.html) ; [ressource Scrum.org](https://www.scrum.org/resources/scrum-guide).
- [S4] Scrum.org — [Certification Professional Scrum Product Owner I](https://www.scrum.org/assessments/professional-scrum-product-owner-i-certification). Périmètre et modalités de certification, ressources et évaluations de préparation.
- [S5] Microsoft Support — [Planner Basic et Premium : comparaison](https://support.microsoft.com/en-us/planner/compare-microsoft-planner-basic-vs-premium-plans).
- [S6] Microsoft Support — [Questions fréquentes sur Planner](https://support.microsoft.com/en-us/planner/frequently-asked-questions-about-microsoft-planner).
- [S7] Microsoft Support — [Planifier un projet en sprints dans Project pour le web](https://support.microsoft.com/fr-fr/project/plan-a-project-in-sprints-in-project-for-the-web). Référence web à distinguer de Project desktop.
- [S8] Microsoft — [Offres et licences Planner](https://www.microsoft.com/en/microsoft-365/planner/microsoft-planner-business-plans-and-pricing).
- [S9] Microsoft Support — [Nouveautés de Project](https://support.microsoft.com/fr-fr/project/what-s-new-in-project). Historique des évolutions, pas une capture garantie de chaque build 2609.
