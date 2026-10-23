# TP 2 — NOVALIS Distribution BI — Scrum + IA dans Microsoft Project 2609 (version restructurée pour débutants)

Utiliser l’IA pour construire, contrôler et adapter un planning Scrum dans Microsoft Project 2609. Version restructurée du TP source « TP 2 — NOVALIS Distribution BI », sans réduction du travail demandé.

## Sommaire
- [0A — Avant de commencer](#0a--avant-de-commencer)
- [Partie 1 — Découvrir Microsoft Project](#partie-1--découvrir-microsoft-project)
  - [Étape 0 — Prise en main de Microsoft Project](#étape-0--prise-en-main-de-microsoft-project)
- [Contrôle du poste (25 min)](#contrôle-du-poste-25-min)
- [0B — Cadre du TP](#0b--cadre-du-tp)
- [Partie 2 — Préparer le produit](#partie-2--préparer-le-produit)
  - [Étape 1 — Comprendre le passage du prédictif à Scrum](#étape-1--comprendre-le-passage-du-prédictif-à-scrum)
  - [Étape 2 — Créer le projet Scrum dans Microsoft Project](#étape-2--créer-le-projet-scrum-dans-microsoft-project)
  - [Étape 3 — Définir le produit et son objectif](#étape-3--définir-le-produit-et-son-objectif)
  - [Étape 4 — Construire le Product Backlog](#étape-4--construire-le-product-backlog)
  - [Étape 5 — Organiser le Product Backlog dans Microsoft Project](#étape-5--organiser-le-product-backlog-dans-microsoft-project)
- [Partie 3 — Vivre un Sprint](#partie-3--vivre-un-sprint)
  - [Étape 6 — Planifier les sprints](#étape-6--planifier-les-sprints)
  - [Étape 7 — Réaliser la Sprint Planning](#étape-7--réaliser-la-sprint-planning)
  - [Étape 8 — Gérer le Sprint Backlog et le travail quotidien](#étape-8--gérer-le-sprint-backlog-et-le-travail-quotidien)
  - [Étape 9 — Suivre et visualiser l’avancement](#étape-9--suivre-et-visualiser-lavancement)
- [Partie 4 — S’adapter et inspecter](#partie-4--sadapter-et-inspecter)
  - [Étape 10 — Simuler un changement de priorité en cours de sprint](#étape-10--simuler-un-changement-de-priorité-en-cours-de-sprint)
  - [Étape 11 — Organiser la Sprint Review et la Sprint Retrospective](#étape-11--organiser-la-sprint-review-et-la-sprint-retrospective)
  - [Étape 12 — Comprendre l’Increment et la Definition of Done](#étape-12--comprendre-lincrement-et-la-definition-of-done)
  - [Étape 13 — Gérer plusieurs sprints et inspecter les résultats](#étape-13--gérer-plusieurs-sprints-et-inspecter-les-résultats)
- [Annexe A — Prompts : index, cadrage et relances](#annexe-a--prompts--index-cadrage-et-relances)
- [Annexe B — Registre IA](#annexe-b--registre-ia)
- [Annexe C — Données de référence](#annexe-c--données-de-référence)
- [Annexe D — Dépannage](#annexe-d--dépannage)
  - [Étape 0](#étape-0)
  - [Étape 1](#étape-1)
  - [Étape 2](#étape-2)
  - [Étape 3](#étape-3)
  - [Étape 4](#étape-4)
  - [Étape 5](#étape-5)
  - [Étape 6](#étape-6)
  - [Étape 7](#étape-7)
  - [Étape 8](#étape-8)
  - [Étape 9](#étape-9)
  - [Étape 10](#étape-10)
  - [Étape 11](#étape-11)
  - [Étape 12](#étape-12)
  - [Étape 13](#étape-13)
- [Annexe E — Checklist finale et livrables](#annexe-e--checklist-finale-et-livrables)
- [Annexe F — Glossaire français / anglais](#annexe-f--glossaire-français--anglais)
- [Annexe G — Liens PSPO I](#annexe-g--liens-pspo-i)
- [Annexe H — Sources et limites du support](#annexe-h--sources-et-limites-du-support)
- [Annexe I — Traçabilité et contrôles](#annexe-i--traçabilité-et-contrôles)

## 0A — Avant de commencer

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; US = User Story ; AMOA = assistance à maîtrise d’ouvrage ; PMO = Project Management Office (bureau de gestion de projets) ; PMP = Project Management Professional ; PSPO I = Professional Scrum Product Owner I ; MPP = format de fichier de Microsoft Project ; TP = travaux pratiques ; TP1 = premier TP (planning prédictif NOVALIS) ; J0 = jour 0 du Sprint (J1 à J10 : jours ouvrés suivants).

### Objectif et résultat final

Ce TP vous apprend à construire, contrôler et adapter un planning Scrum dans Microsoft Project, avec l’aide d’une IA. Vous avancez seul, étape par étape. Chaque étape vous dit quoi faire, quoi vérifier et quoi conserver.

À la fin du TP, vous disposez des éléments suivants : un fichier `NOVALIS_BI_Scrum_IA_TP2.mpp` enregistré et rouvert, treize traces IA (IA-01 à IA-13), un registre IA, un backlog de 13 éléments et trois Sprints suivis. Le détail des neuf livrables figure en [Annexe E](#annexe-e--checklist-finale-et-livrables).

Support participant — Windows — Version enrichie IA du 22 octobre 2026

Public : consultants, Product Owners, chefs de projet, PMO, PMP et AMOA.

Durée indicative : 7 heures hors pauses. Le contrôle initial dure 25 minutes ; les 13 étapes, avec utilisation de l’IA, totalisent 6 h 35. Les données et prompts sont fournis pour tenir en une journée. (Précision ajoutée : pour un débutant, ce support propose un découpage en deux journées avec un point d’arrêt après l’étape 6 ; voir [0B — Cadre du TP](#0b--cadre-du-tp).) La préparation PSPO I demeure un document indépendant.

Fichier à créer : `NOVALIS_BI_Scrum_IA_TP2.mpp`.

Toutes les personnes, transactions, capacités, estimations et observations sont fictives et pédagogiques. Ce TP ne développe pas réellement un produit BI : il simule son pilotage et l’inspection de ses résultats. Un fichier Project représente le travail ; il n’est pas l’Increment BI.

#### Objectifs pédagogiques

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

### Prérequis

Cochez chaque ligne avant de commencer. Ces prérequis proviennent du support d’origine.

- [ ] PC Windows avec Microsoft Project version 2609, activé ; pour les fonctions Sprints, client desktop par abonnement et commandes présentes.
- [ ] Droit d’enregistrer des fichiers MPP ; Excel recommandé pour les registres et graphiques, ou tableaux papier.
- [ ] Accès à un assistant IA autorisé ; aucun connecteur au fichier MPP n’est présumé. Préparer un dossier de traces et vérifier que les données fictives peuvent être utilisées.
- [ ] TP1 disponible en lecture, sans modification ni importation de ses tâches.
- [ ] Aucun développement, aucune programmation, aucun accès à une base BI réelle requis.
- [ ] Connaître les actions de base : saisir une ligne, ouvrir un ruban, enregistrer et ajouter une colonne.
- [ ] Les données du présent support suffisent pour réaliser les manipulations ; un classeur peut être construit à partir des tableaux fournis.

> ⚠️ Attention — Le support s’appuie sur la documentation officielle ; aucune exécution de Project 2609 sur votre poste n’est revendiquée. Les fonctions Sprints documentées concernent le client par abonnement. Le numéro 2609 ne prouve pas à lui seul la présence de ces fonctions. Les traductions et l’emplacement des groupes peuvent varier. [S1, S2]

### Comment lire ce TP

Le TP contient une Étape 0 de prise en main, puis 13 étapes. Chaque étape suit le même plan en 11 rubriques, toujours dans le même ordre :

1. Ce que vous allez obtenir.
2. Pourquoi cette étape.
3. À faire dans Project (clics numérotés).
4. Avec l’IA (prompt à copier).
5. Contrôles humains à faire avant de saisir.
6. Passage de la réponse IA à Project.
7. Données à saisir.
8. Vérifier le résultat et trace IA à conserver.
9. Erreurs fréquentes et proposition défectueuse à rejeter.
10. Si ça ne marche pas.
11. Pour réfléchir et lien PSPO I (optionnel).

Lisez chaque étape en entier avant d’agir. Une ligne « Ordre de travail » en tête d’étape indique s’il faut commencer par Project ou par l’IA.

Chaque chemin de menu est donné avec son équivalent anglais documenté. Les menus peuvent varier selon votre poste : vérifiez toujours sur votre écran. Les emplacements `[CAPTURE À INSÉRER : …]` indiquent où ajouter une copie d’écran de votre poste.

Les champs personnalisés s’écrivent toujours avec leur alias, par exemple « Nombre3 (Reste estimé h) ». La table complète des huit champs figure en [Annexe C](#annexe-c--données-de-référence).

Le TP se fait en deux journées, avec un point d’arrêt après l’étape 6. Le planning complet figure en [0B — Cadre du TP](#0b--cadre-du-tp).

#### Utiliser les données de référence

Pour chaque étape : produire d’abord une proposition IA à partir des entrées indiquées, puis seulement la confronter aux tableaux de référence. Ces tableaux servent à la normalisation et à la simulation suivante, pas de preuve que l’IA a trouvé la bonne réponse.

À l’étape 4, l’IA propose les formulations et critères ; les participants normalisent ensuite les 12 PBI avec les fiches du support. Les points restent illustratifs et sont validés dans le jeu de rôle Developers. À l’étape 7, comparer les scénarios, puis retenir US01/02/03 pour utiliser le suivi fourni. Si une autre sélection est conservée, créer un autre jeu de suivi et ne pas réutiliser artificiellement les chiffres du scénario de référence.

Ne pas fournir prématurément les résultats des Sprints 2 et 3 à l’assistant : ce serait lui donner le résultat à expliquer au lieu de lui faire analyser la situation disponible. Pour les exercices d’analyse de J5, ne transmettre que J0 à J5. Si la conversation contient déjà des données futures, ouvrir une nouvelle conversation avec le prompt de cadrage et le seul état du moment : c’est notamment nécessaire pour rejouer l’urgence J4 après avoir étudié la fin du Sprint.

### Code couleur

| Pastille | Signification | Où la trouver |
|---|---|---|
| 🟦 | Project : clics et saisies | Rubriques 3, 6 et 7 de chaque étape |
| 🟩 | Scrum : concept à comprendre | Rubriques 2 et 11 de chaque étape |
| 🟨 | IA : prompt, contrôle et décision | Rubriques 4 et 5 de chaque étape |

### Cycle IA en 6 temps

L’objectif central de ce TP est d’utiliser une IA comme assistant de construction et de contrôle du planning Scrum dans Microsoft Project. Il ne s’agit ni de demander à l’IA de développer la BI, ni de saisir passivement un planning déjà fourni.

À chaque étape, appliquer le même cycle :

1. Fournir le contexte et les seules données disponibles à ce moment.
2. Exécuter le prompt et conserver la sortie brute.
3. Vérifier les omissions, hypothèses, calculs et responsabilités.
4. Accepter, corriger ou rejeter les propositions en justifiant la décision.
5. Reporter uniquement la version validée dans Project ou dans le registre approprié.
6. Vérifier le résultat dans Project et, si nécessaire, renvoyer les données observées à l’IA.

L’IA propose ; les participants contrôlent et décident ; Project représente le planning et effectue les calculs correspondant aux champs réellement renseignés. Les estimations du scénario restent des hypothèses pédagogiques. Aucun indicateur ni statut d’outil ne remplace une preuve de qualité.

### Confidentialité

Respectez cette règle à chaque prompt : n’envoyez à l’IA que des données fictives et des extraits sélectionnés.

- Utiliser uniquement un assistant autorisé par l’organisation, externe au fichier Project si aucune intégration n’est effectivement disponible.
- Ne pas supposer la présence d’un bouton Copilot dans Project desktop ni l’accès de l’IA au fichier MPP.
- Transmettre des extraits textuels ou tableaux sélectionnés, pas de données réelles sensibles.
- Une même conversation peut conserver le contexte, mais chaque nouvelle étape doit fournir l’état à jour et les décisions validées.
- Ne pas demander de SQL, de code, de mesures BI ni de scripts d’automatisation : le travail porte sur la planification.
- Si aucun assistant n’est accessible, utiliser les données de référence et documenter une analyse critique manuelle ; l’usage effectif d’un assistant reste alors à pratiquer ultérieurement.

> ⚠️ Le prompt de cadrage de la conversation se trouve en [Annexe A](#annexe-a--prompts--index-cadrage-et-relances). Vous l’exécutez une seule fois, avant l’étape 1.

## Partie 1 — Découvrir Microsoft Project

> **Sigles de cette partie** : IA = intelligence artificielle ; PBI = Product Backlog Item (élément du Product Backlog) ; PSPO I = Professional Scrum Product Owner I ; TP = travaux pratiques.

> Cette partie est une addition de la version restructurée : elle n’existe pas dans le TP source. Elle prépare les débutants aux gestes de base utilisés ensuite.

### Étape 0 — Prise en main de Microsoft Project

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| Absente du TP source | 60 min | 1 |

**Ordre de travail** : Project d’abord (aucune IA dans cette étape).

#### 1. Ce que vous allez obtenir

Vous apprenez le vocabulaire de base et les gestes essentiels dans un fichier d’essai. Résultat attendu : un fichier d’essai avec trois tâches, une colonne, une note et un tri, enregistré puis rouvert.

#### 2. Pourquoi cette étape

🟩 Les étapes suivantes supposent que vous savez saisir une ligne, ajouter une colonne et enregistrer. Le support d’origine demande de connaître ces actions de base. Cette étape vous les fait pratiquer sans risque, hors du fichier du TP.

Le vocabulaire ci-dessous revient dans toutes les étapes. Lisez-le une fois, puis revenez-y en cas de doute.

| Terme | Définition simple | Où le retrouver dans le TP |
|---|---|---|
| Tâche | Une ligne du planning dans Project. Dans ce TP, un PBI (Product Backlog Item) est une ligne de tâche. | Étapes 4 et 5 |
| Colonne / champ | Une colonne affiche un champ de la tâche, par exemple Texte1 (ID PBI) ou Nombre3 (Reste estimé h). | Étape 5 |
| Note | Zone de texte libre d’une tâche, dans Informations de la tâche, onglet Notes. | Étapes 4 et 5 |
| Mode manuel | Mode de planification d’une tâche, activé par Tâche > Planifier manuellement. Les points ne vont pas dans Durée. | Étape 2 |
| Vue Gantt | Affichage du planning sous forme de lignes et de barres : Affichage > Diagramme de Gantt. | Étapes 1, 2 et 5 |
| Vue Feuille | Affichage en lignes et colonnes, sans barres : Format > Affichage > Feuille (Sheet). | Étapes 5, 7, 8 et 9 |
| Tableau | Représentation visuelle du travail en colonnes de cartes (Board). Il ne remplace pas les échanges de l’équipe. | Étapes 2, 6, 7 et 8 |
| Sprint | Événement de durée fixe, d’un mois au plus, qui contient les autres événements Scrum. | Étape 6 |
| Carte | Représentation d’une tâche sur le tableau. Format > Personnaliser les cartes (Customize Cards) choisit les champs affichés. | Étapes 5 et 8 |

#### 3. 🟦 À faire dans Project

> ⚠️ Chaque chemin de menu de cette étape est à vérifier sur votre poste. Il s’appuie sur les chemins du TP source ; les menus peuvent varier selon la traduction.

1. Ouvrez Microsoft Project (à vérifier sur votre poste).
2. Cliquez sur Fichier > Nouveau, puis choisissez un projet vierge (à vérifier sur votre poste).
3. Cliquez sur Affichage > Diagramme de Gantt (à vérifier sur votre poste).
4. Saisissez trois tâches, une par ligne : « Tâche A », « Tâche B », « Tâche C ».
5. Sélectionnez les trois lignes, puis cliquez sur Tâche > Planifier manuellement (à vérifier sur votre poste).
6. Cliquez sur Ajouter une nouvelle colonne, à droite de la dernière colonne, puis choisissez Texte1 (à vérifier sur votre poste).
7. Saisissez « A1 », « B1 » et « C1 » dans cette colonne.
8. Double-cliquez sur « Tâche B » pour ouvrir Informations de la tâche, ou cliquez sur Tâche > Informations (à vérifier sur votre poste).
9. Ouvrez l’onglet Notes et écrivez une phrase de votre choix, puis validez.
10. Cliquez sur Affichage > Trier > Trier par, puis triez sur la colonne Texte1 dans l’ordre décroissant (à vérifier sur votre poste).
11. Cliquez sur Format > Affichage > Feuille (Sheet) pour voir les mêmes données en feuille (à vérifier sur votre poste).
12. Cliquez sur Fichier > Enregistrer sous > Parcourir, choisissez le type Projet (*.mpp) et un nom libre, par exemple `Essai_prise_en_main.mpp` (à vérifier sur votre poste).
13. Fermez le fichier, puis rouvrez-le depuis Fichier > Ouvrir (à vérifier sur votre poste).
14. Vérifiez que les trois tâches, la colonne, la note et le tri sont toujours là.

> [CAPTURE À INSÉRER : fenêtre Project en vue Diagramme de Gantt avec les trois tâches « Tâche A », « Tâche B », « Tâche C » et la colonne Texte1 remplie]

> [CAPTURE À INSÉRER : fenêtre Informations de la tâche, onglet Notes ouvert, avec la phrase saisie]

#### 4. 🟨 Avec l’IA

Cette étape n’utilise pas l’IA. Vous apprenez d’abord l’outil, pour pouvoir contrôler ensuite ce que l’IA propose.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Vous travaillez dans un fichier d’essai, pas dans le fichier du TP.
- [ ] Vous n’avez saisi aucune donnée NOVALIS réelle.
- [ ] Vous connaissez le nom et le dossier de votre fichier d’essai.

#### 6. Passage de la réponse IA à Project

Aucune réponse IA à reporter. Le fichier d’essai reste hors du TP. Vous pouvez le supprimer à la fin de la journée.

#### 7. Données à saisir

| Tâche | Texte1 (ID PBI) | Note |
|---|---|---|
| Tâche A | A1 | (libre) |
| Tâche B | B1 | Une phrase de votre choix |
| Tâche C | C1 | (libre) |

Ces valeurs sont des données d’exercice. Elles n’ont aucun lien avec le scénario NOVALIS.

#### 8. ✅ Vérifier le résultat

- [ ] Trois tâches sont visibles, une par ligne, en mode manuel.
- [ ] Une colonne Texte1 (ID PBI) est affichée et remplie.
- [ ] Une note est présente sur « Tâche B ».
- [ ] Le tri décroissant place « C1 » en première ligne.
- [ ] Le fichier a été enregistré, fermé, puis rouvert avec le même contenu.
- [ ] Trace IA à conserver : aucune pour cette étape (étape sans IA).

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Saisissez une tâche par ligne, sans ligne vide. Évitez de mettre des points ou des heures dans la colonne Durée : le TP réserve des champs personnalisés à ces valeurs (voir l’étape 5).

> ⚠️ Proposition défectueuse à rejeter : aucune, car cette étape n’utilise pas l’IA.

#### 10. Si ça ne marche pas

- **Un menu n’existe pas ou porte un autre nom.** Comparez avec le tableau des repères d’interface de la section « Contrôle du poste ». Les traductions peuvent varier. Notez le constat et poursuivez avec le chemin le plus proche.
- **La colonne souhaitée n’apparaît pas.** Cliquez sur Ajouter une nouvelle colonne, à droite de la dernière colonne. Si le champ est déjà utilisé, choisissez un numéro libre et notez la correspondance.
- **Les données ont disparu à la réouverture.** Vérifiez que vous avez enregistré au type Projet (*.mpp) avant de fermer. Refaites l’enregistrement, puis rouvrez.

#### 11. Pour réfléchir et lien PSPO I

- Quelle différence faites-vous entre une colonne et une note ?
- Pourquoi enregistrer puis rouvrir un fichier avant de continuer ?

> 🟩 **Lien PSPO I (optionnel)** — Aucun outil particulier n’est prescrit par Scrum. [S3]

#### Auto-évaluation de l’Étape 0

- [ ] Je sais expliquer ce qu’est une tâche, une colonne, une note, une carte et un Sprint.
- [ ] Je sais passer de la vue Gantt à la vue Feuille.
- [ ] Je sais enregistrer et rouvrir un fichier .mpp.

## Contrôle du poste (25 min)

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 25 min | 40 min | 1 |

Cochez chaque contrôle une fois réalisé, puis complétez le tableau « Valeur à relever ». Ces contrôles décident de la suite du TP.

- [ ] 1. Ouvrir Project > Fichier > Compte ; relever le nom complet du produit et le type de licence sous Informations sur le produit.
- [ ] 2. Ouvrir À propos de Project, selon l’interface ; relever version, build et langue.
- [ ] 3. Fichier > Nouveau : repérer Projet Sprints / Sprints Project.
- [ ] 4. Dans un fichier d’essai, vérifier Projet > Gérer les sprints ou Sprints > Gérer.
- [ ] 5. Vérifier le tableau de planification, le tableau du Sprint et Rapport > Tableau des tâches.
- [ ] 6. Créer une carte test, la déplacer, enregistrer, fermer et rouvrir.

| Contrôle | Valeur à relever |
|---|---|
| Produit et type de licence | À compléter |
| Version, build, langue | À compléter |
| Modèle Projet Sprints | Présent / absent |
| Gérer les sprints | Présent / absent |
| Tableaux et rapports | Intitulés réellement observés |

Si une commande manque, consigner le constat et faire contrôler le déploiement par l’administrateur. Ne pas annoncer une manipulation native non effectuée. Pour poursuivre temporairement, une feuille avec champs personnalisés Sprint et État permet une simulation, mais ne remplace pas la validation des compétences sur le tableau natif. Le présent support privilégie le modèle Sprints.

> ⚠️ Précision ajoutée (décision de restructuration) : au point 4, notez dans le tableau lequel des deux chemins s’affiche sur votre poste : « Projet > Gérer les sprints » ou « Sprints > Gérer ». Le chemin principal du TP restructuré est « Sprints > Gérer (Manage Sprints) ». L’autre chemin est repris dans « Si ça ne marche pas » de l’étape 6.

> [CAPTURE À INSÉRER : écran Fichier > Compte montrant le nom du produit et le type de licence sous Informations sur le produit]

> [CAPTURE À INSÉRER : écran Fichier > Nouveau montrant la présence ou l’absence du modèle Projet Sprints / Sprints Project]

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

## 0B — Cadre du TP

### Scénario métier et acteurs

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

Les données chiffrées de référence (CA, coût, marge, répartitions) figurent en [Annexe C](#annexe-c--données-de-référence). Elles servent à simuler les vérifications ; ne les saisissez pas comme tâches dans Project.

### Programme et durées

La colonne « Durée d’origine » reprend le TP source. La colonne « Durée conseillée débutant » est un indicatif, hors pauses. Les lignes marquées « ajout » n’existent pas dans le TP source.

| Bloc | Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---:|---:|---:|
| Avant de commencer (0A et 0B) — ajout | – | 20 min | 1 |
| Étape 0. Prise en main de Microsoft Project — ajout | – | 60 min | 1 |
| Contrôle du poste | 25 min | 40 min | 1 |
| 1. Du prédictif à Scrum | 20 min | 30 min | 1 |
| 2. Créer le projet | 25 min | 40 min | 1 |
| 3. Définir le produit | 20 min | 30 min | 1 |
| 4. Construire le backlog | 45 min | 60 min | 1 |
| 5. Organiser le backlog dans Project | 35 min | 50 min | 1 |
| 6. Configurer les sprints | 30 min | 45 min | 1 |
| 7. Sprint Planning | 40 min | 55 min | 2 |
| 8. Travail quotidien | 35 min | 50 min | 2 |
| 9. Visualisation | 30 min | 45 min | 2 |
| 10. Changement de priorité | 25 min | 35 min | 2 |
| 11. Review et Retrospective | 30 min | 40 min | 2 |
| 12. Increment et DoD | 25 min | 35 min | 2 |
| 13. Inspection sur trois sprints | 35 min | 50 min | 2 |
| Reprise de la journée 2 (rappel et auto-évaluation) — ajout | – | 15 min | 2 |
| Checklist finale (Annexe E) — ajout | – | 30 min | 2 |
| **Total** | **420 min (25 + 395)** | **730 min (12 h 10)** | |

Les 13 étapes d’origine totalisent 395 minutes, soit 6 h 35. Avec le contrôle de 25 minutes, le total d’origine est de 420 minutes, soit 7 heures hors pauses.

### Découpage en deux journées

Les durées sont indicatives et hors pauses. Aucune activité n’est retirée : le découpage répartit seulement le même travail.

| Journée | Contenu | Durée conseillée (indicatif, hors pauses) |
|---|---|---:|
| 1 | Avant de commencer, Étape 0, Contrôle du poste, Étapes 1 à 6 | 375 min (6 h 15) |
| 2 | Reprise, Étapes 7 à 13, Checklist finale | 355 min (5 h 55) |

**Point d’arrêt de la journée 1** : après l’étape 6, quand les trois Sprints sont créés, enregistrés et rouverts. **Point d’arrêt de la journée 2** : après la checklist finale (Annexe E). Chaque point d’arrêt comporte une auto-évaluation à cocher.

### Prompt de cadrage

Le prompt de cadrage doit être exécuté une seule fois, au début de la conversation avec l’IA, avant l’étape 1. Son texte complet, mot pour mot, figure en [Annexe A](#annexe-a--prompts--index-cadrage-et-relances). Copiez-le depuis l’annexe.

- [ ] Le prompt de cadrage a été exécuté une fois.
- [ ] Vous avez compris qu’il faut redonner l’état à jour et les décisions validées à chaque nouvelle étape.

### Schéma du flux Scrum du TP

Ce schéma montre le cycle que vous allez jouer. Chaque flèche correspond à des étapes du TP.

```text
Product Backlog (ordonné par le PO)            Étapes 3 à 5
        |
        v
Sprint Planning (but, sélection, plan)       Étapes 6 et 7
        |
        v
Sprint (Daily Scrum, suivi, obstacles)       Étapes 8 et 9 (et 10 : changement)
        |
        v
Sprint Review + Sprint Retrospective          Étapes 11 et 12 (Increment, DoD)
        |
        v
Product Backlog (adaptations, éléments non Done) Étape 13 (puis retour à la Planning)
```

### Ce que je saisis, ce que Project calcule

Ce tableau reprend uniquement ce que le TP source affirme. Il vous aide à ne pas attendre de Project ce qu’il ne fait pas.

| Élément | Je saisis | Ce que Project calcule (selon le TP source) |
|---|---|---|
| Points | Nombre1 (Points), à la main | Aucune conversion en durée : les points ne vont pas dans Durée |
| Ordre du backlog | Nombre2 (Ordre backlog), 1 = premier | Le tri suit ce champ ; la priorité native de nivellement n’est pas l’ordre Scrum |
| Reste estimé | Nombre3 (Reste estimé h), à la main | N’alimente pas le champ natif Travail restant |
| Dates des Sprints | Début et longueur dans Gérer les sprints | Les frontières affichées sont à contrôler vous-même |
| Affectation d’une carte | Sprint, État du tableau | Ne prouve ni la capacité ni la qualité (DoD) |
| Terminé / pourcentage | Déplacement vers Terminé, Texte3 (Résultat DoD) | Project n’applique pas la DoD ; l’effet sur le pourcentage d’achèvement est à observer |
| Historique quotidien | Copie de l’état dans un registre Excel | Project ne le reconstitue pas |
| Courbes de suivi | Tableau et courbe dans Excel | Données fournies et simulées, non calculées automatiquement par Project |
| Rapports natifs | Champs réellement renseignés | Rapports disponibles selon votre poste, à noter |

> ⚠️ Project représente le planning et effectue les calculs correspondant aux champs réellement renseignés. Il ne vérifie ni la qualité, ni la valeur, ni la DoD.

## Partie 2 — Préparer le produit

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PO = Product Owner ; DoD = Definition of Done ; US = User Story ; PMO = Project Management Office (bureau de gestion de projets) ; PSPO I = Professional Scrum Product Owner I ; MPP = format de fichier de Microsoft Project ; TND = dinar tunisien ; HT = hors taxes ; CA = chiffre d’affaires ; KPI = indicateur clé de performance ; TP = travaux pratiques ; TP1 = premier TP (planning prédictif NOVALIS).

### Étape 1 — Comprendre le passage du prédictif à Scrum

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 20 min | 30 min | 1 |

**Ordre de travail** : Project d’abord (rubrique 3), puis IA (rubrique 4).

#### 1. Ce que vous allez obtenir

**Objectif.** Distinguer pilotage empirique, organisation du travail et découpage calendaire.

**Résultat attendu.** Un tableau comparatif compris et un exemple de tranche fonctionnelle utilisable.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** La direction veut un premier résultat utilisable sans attendre l’achèvement de toutes les fonctions BI.

🟩 **Notion Scrum.** Scrum repose sur transparence, inspection et adaptation. Un Sprint n’est pas une phase technique raccourcie : il permet un Increment utilisable. Stories, points et burndown sont des techniques optionnelles. [S3]

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

#### 3. 🟦 À faire dans Project

1. Ouvrir le TP1 en consultation.
2. Afficher le Gantt et repérer phase, jalon et lien.
3. Choisir une tâche technique et expliquer le besoin utilisateur qu’elle pourrait servir.
4. Fermer sans modification ; ne pas importer son planning.

> [CAPTURE À INSÉRER : écran du Diagramme de Gantt du TP1 ouvert en lecture, avec une phase, un jalon et un lien repérés]

#### 4. 🟨 Avec l’IA

**Trace** : IA-01

##### Pourquoi utiliser l’IA ici ?

Faire analyser ce qui change entre planning prédictif et planification empirique, sans produire une fausse conversion des tâches.

##### Entrées à fournir

La description du TP1, le scénario métier du TP2 et trois exemples : importer les ventes, concevoir un modèle de données, vérifier les KPI. Ne pas transmettre tout le Gantt comme backlog à convertir.

##### Prompt prêt à copier

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

##### Sortie attendue

Un tableau d’au moins six distinctions, une première tranche fonctionnelle et des questions ; aucune conversion mécanique.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Vérifier que tests et intégration ne sont pas repoussés après tous les Sprints ; repérer une vraie valeur utilisateur.
- [ ] Comparer ensuite au tableau TP1/TP2 du support.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

À ce stade, ne créer aucune activité supplémentaire. Conserver le tableau dans le dossier ; lors de la création de US01, ajouter en Notes une phrase justifiant son orientation utilisateur.

#### 7. Données à saisir

Réponse dans les notes de travail : « importer les ventes » = tâche ; « consulter les ventes mensuelles pour comprendre les variations » = besoin ; « disposer d’une première lecture fiable » = intention de Sprint Goal.

#### 8. ✅ Vérifier le résultat

- [ ] Un tableau comparatif compris et un exemple de tranche fonctionnelle utilisable.

- [ ] Trace IA à conserver — IA-01 : décision sur la tranche fonctionnelle et une différence expliquée avec vos propres mots.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Erreur : Sprint 1 = spécification, Sprint 2 = construction, Sprint 3 = tests. Correction : intégrer analyse, réalisation et vérifications dans un premier résultat utilisable. Ne pas conclure que le prédictif est toujours inadapté.

> ⚠️ Proposition défectueuse à rejeter : « Sprint 1 : spécifications ; Sprint 2 : développement ; Sprint 3 : tests » : c’est un découpage technique successif, pas une proposition assurant un Increment utilisable par Sprint.

#### 10. Si ça ne marche pas

- **L’IA convertit chaque tâche du TP1 en story.** Relancez avec la RELANCE DE CONTRÔLE (Annexe A) et rappelez la consigne « Ne convertis pas chaque tâche en story ». Comparez avec le tableau TP1/TP2 de la rubrique 2.
- **Le TP1 n’est pas accessible.** Le prérequis demande un TP1 disponible en lecture. Utilisez le résumé du TP1 et les trois activités du prompt, sans modifier ni importer ses tâches.
- **L’IA propose Sprint 1 : spécifications, Sprint 2 : développement, Sprint 3 : tests.** Rejetez cette proposition, expliquée en rubrique 9, et demandez une tranche fonctionnelle utilisable.

#### 11. Pour réfléchir et lien PSPO I

- Quelle valeur reçoit Dhirar A si seul un import est terminé ?
- Que peut-on déjà inspecter avec CA, région et classement produits ?

> 🟩 **Lien PSPO I (optionnel)** — Empirisme, valeur et distinction entre artefact et outil. [S3]

---

### Étape 2 — Créer le projet Scrum dans Microsoft Project

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 25 min | 40 min | 1 |

**Ordre de travail** : IA d’abord (rubrique 4), puis contrôles (5), puis clics Project (3).

#### 1. Ce que vous allez obtenir

**Objectif.** Créer un nouveau fichier autonome à partir de Projet Sprints.

**Résultat attendu.** Un fichier distinct enregistré et rouvert, avec les fonctions natives disponibles identifiées.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Le TP2 n’est ni une nouvelle baseline ni une copie du planning TP1.

🟩 **Notion Scrum.** L’outil rend le travail visible ; il ne définit pas à lui seul Scrum et ne remplace pas les interactions.

#### 3. 🟦 À faire dans Project

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces clics.

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Modèle | Fichier > Nouveau > modèles proposés > Projet Sprints ; Sprints Project |

1. Fichier > Nouveau > modèles proposés > Projet Sprints / Sprints Project. Choisir Créer si un écran de présentation le demande.
2. Vérifier l’ouverture du Tableau de planification sprint. Retirer seulement les cartes d’exemple du nouveau fichier, si présentes.
3. Fichier > Enregistrer sous > Parcourir. Choisir un dossier autorisé et le type Projet (*.mpp).
4. Enregistrer sous `NOVALIS_BI_Scrum_IA_TP2.mpp`.
5. Projet > Informations sur le projet : début au 02/11/2026.
6. Projet > Modifier le temps de travail : contrôler le calendrier. Le cas utilise lundi-vendredi sans jour férié spécifique ; ne pas modifier un calendrier global de l’entreprise.
7. Affichage > Diagramme de Gantt : pour les lignes PBI, retenir le mode manuel via Tâche > Planifier manuellement si nécessaire. Les points ne vont pas dans Durée.
8. Revenir à Sprints > Affichages > Planification > Tableau de planification sprint ; enregistrer. [S1]

Si le modèle manque mais que Gérer les sprints est réellement disponible, un nouveau Projet vierge peut recevoir des sprints. Consigner alors cette différence. Si les fonctions sont absentes, ne pas simuler leur présence.

> [CAPTURE À INSÉRER : écran Fichier > Nouveau montrant le modèle Projet Sprints, puis le Tableau de planification sprint ouvert dans le nouveau fichier]

#### 4. 🟨 Avec l’IA

**Trace** : IA-02

##### Pourquoi utiliser l’IA ici ?

Utiliser l’assistant pour préparer une vérification de configuration, pas lui déléguer des clics ni lui faire inventer une interface.

##### Entrées à fournir

Nom exact du produit, licence si connue, version/build, langue et commandes observées pendant le contrôle pratique. Joindre un extrait de [S1] ou la procédure du support, sans supposer que l’IA ouvre une URL.

##### Prompt prêt à copier

```text
Je prépare le fichier NOVALIS_BI_Scrum_IA_TP2.mpp.
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

##### Sortie attendue

Une checklist compatible avec les observations, avec incertitudes explicitement signalées.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Comparer chaque chemin au ruban du poste.
- [ ] Rejeter toute affirmation d’ouverture ou de modification automatique du fichier.
- [ ] Ne pas transmettre une capture contenant des données sensibles.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Appliquer vous-même les clics vérifiés de l’étape 2. Enregistrer puis rouvrir ; compléter le registre avec le constat. Le nom et le début du projet restent ceux du cas.

#### 7. Données à saisir

Nom du fichier ci-dessus ; début 02/11/2026 ; commentaire « NOVALIS BI — simulation pédagogique Scrum ».

#### 8. ✅ Vérifier le résultat

- [ ] Un fichier distinct enregistré et rouvert, avec les fonctions natives disponibles identifiées.

- [ ] Trace IA à conserver — IA-02 : fiche environnement, un contrôle de commande et preuve de réouverture ; aucun faux journal d’exécution IA.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Ne pas confondre date de début du projet et début automatique de tous les PBI. L’affectation à un Sprint n’est pas une preuve de capacité. Le calendrier de calcul Project ne définit pas à lui seul une timebox Scrum.

> ⚠️ Proposition défectueuse à rejeter : « J’ai créé votre MPP et activé Copilot » : à rejeter si l’assistant n’a aucun outil démontrant ces actions.

#### 10. Si ça ne marche pas

- **Le modèle Projet Sprints est absent.** Vérifiez d’abord Gérer les sprints. S’il est disponible, un nouveau Projet vierge peut recevoir des sprints : consignez cette différence. Si les fonctions sont absentes, ne simulez pas leur présence et faites contrôler le déploiement par l’administrateur.
- **Le Tableau de planification sprint ne s’ouvre pas.** Cliquez sur Sprints > Affichages > Planification > Tableau de planification sprint (Sprint Planning Board).
- **Le chemin d’enregistrement diffère.** Le TP source précisait « selon l’interface » pour Enregistrer sous > Parcourir. Choisissez un dossier autorisé et le type Projet (*.mpp), puis rouvrez le fichier pour vérifier.

#### 11. Pour réfléchir et lien PSPO I

- Que prouve le numéro 2609 ?
- Pourquoi vérifier aussi licence, modèle et commandes ?

> 🟩 **Lien PSPO I (optionnel)** — Aucun outil particulier n’est prescrit par Scrum. [S3]

---

### Étape 3 — Définir le produit et son objectif

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 20 min | 30 min | 1 |

**Ordre de travail** : IA d’abord. Séquence : l’IA propose, l’équipe discute, puis on retient la référence du support.

#### 1. Ce que vous allez obtenir

**Objectif.** Relier les fonctionnalités à un état futur utile et observable.

**Résultat attendu.** Un registre produit avec limites, utilisateurs, objectif et hypothèses de valeur.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** La préparation actuelle de la première lecture commerciale prendrait 45 minutes : hypothèse fictive à vérifier.

🟩 **Notion Scrum.** La vision décrit une ambition. Le Product Goal décrit l’état futur ciblé et se trouve dans le Product Backlog. Samia L en est redevable pour sa formulation et sa communication. Un seul Product Goal est poursuivi à la fois. [S3]

#### 3. 🟦 À faire dans Project

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces clics.

1. Créer un registre Produit dans Excel ou dans un document de travail.
2. Saisir les éléments ci-dessous ; garder les cartes Project pour les PBI.
3. Si proposé, Fichier > Informations > Propriétés du projet > Propriétés avancées : saisir titre et résumé dans les commentaires.
4. À défaut, conserver le registre et ajouter sa référence dans Notes de US01 à sa création. Aucun champ natif Product Goal n’est présumé.

> [CAPTURE À INSÉRER : fenêtre Fichier > Informations > Propriétés du projet (si elle existe sur votre poste), ou le registre Produit dans Excel]

#### 4. 🟨 Avec l’IA

L’IA propose, l’équipe discute, puis on retient la référence du support.

**Trace** : IA-03

##### Pourquoi utiliser l’IA ici ?

Faire proposer une cible produit et des mesures d’usage, puis distinguer hypothèses et faits.

##### Entrées à fournir

Scénario, acteurs, périmètre, exclusions et hypothèse initiale de 45 minutes. Ne pas commencer en fournissant le Product Goal de référence à reproduire.

##### Prompt prêt à copier

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

##### Sortie attendue

Deux alternatives argumentées, une recommandation et un protocole d’observation simple.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Vérifier que le but n’est pas « livrer 12 stories » ; ne pas transformer les 45 minutes en observation prouvée.
- [ ] Discuter le seuil « moins de 15 » avant de voir les résultats.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Après discussion, normaliser le registre Produit avec le Product Goal de référence pour la suite. Reporter seulement le résumé dans les propriétés ou Notes ; ne pas créer de carte Product Goal estimée en points.

#### 7. Données à saisir

- Produit : service BI interne d’analyse des ventes nettes HT et de la rentabilité.
- Vision : « Des décisions commerciales plus rapides à partir de chiffres partagés et explicables ».
- Product Goal : « Permettre à la direction et aux responsables régionaux de préparer leur revue commerciale en moins de 15 minutes, avec un accès autonome aux ventes, à la marge et aux écarts entre périodes, sans ressaisie et sur des chiffres réconciliés du pilote ».
- Valeur : effort de préparation réduit, chiffres partagés, confiance accrue ; pas de promesse de hausse du CA attribuable au seul outil.
- Mesures : temps observé pour cinq pilotes, ressaisies et ambiguïtés ; préciser les conditions d’essai.
- Besoins : CA fiable, lecture régionale, contributeurs, puis rentabilité et comparaisons.

#### 8. ✅ Vérifier le résultat

- [ ] Un registre produit avec limites, utilisateurs, objectif et hypothèses de valeur.

- [ ] Trace IA à conserver — IA-03 : deux formulations, choix du PO simulé, justification et statut des mesures.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

« Livrer 12 stories » est une mesure de production, pas un résultat utilisateur. Un indicateur moyen ne prouve pas un bénéfice pour tous.

> ⚠️ Proposition défectueuse à rejeter : « Le produit augmentera les ventes de 20 % en trois Sprints » : chiffre inventé et attribution causale non établie.

#### 10. Si ça ne marche pas

- **Le chemin Propriétés avancées n’existe pas.** Ce chemin peut varier. Conservez le registre Produit et ajoutez sa référence dans les Notes de US01 à sa création. Aucun champ natif Product Goal n’est présumé.
- **L’IA propose un chiffre de hausse de CA.** Rejetez-le (voir rubrique 9) et rappelez que les 45 minutes sont une hypothèse à vérifier.
- **Le but proposé ressemble à « livrer 12 stories ».** Demandez un résultat utilisateur observable, pas une mesure de production.

#### 11. Pour réfléchir et lien PSPO I

- Si les cartes sont toutes terminées mais que personne n’utilise le produit, quel objectif est réellement atteint ?

> 🟩 **Lien PSPO I (optionnel)** — Product Goal, valeur et collaboration avec les parties prenantes. [S3, S4]

---

### Étape 4 — Construire le Product Backlog

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 45 min | 60 min | 1 |

**Ordre de travail** : IA d’abord, car les fiches du backlog doivent exister avant d’être saisies dans Project. Séquence : l’IA propose, l’équipe discute, puis on retient la référence du support.

#### 1. Ce que vous allez obtenir

**Objectif.** Comprendre les 12 stories et leurs critères, puis discuter leur ordre.

**Résultat attendu.** 12 stories comprises, un ordre argumenté, deux critères examinés en profondeur par binôme.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Samia L privilégie d’abord une première lecture utilisable, puis la rentabilité et les comparaisons.

🟩 **Notion Scrum.** Le backlog est ordonné et émergent. L’affinement clarifie et décompose ; ce n’est pas un événement obligatoire distinct. Les Developers qui feront le travail sont responsables du dimensionnement. Les points sont une convention relative, pas une durée. [S3]

#### 3. 🟦 À faire dans Project

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces clics.

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Planification | Sprints > Affichages > Planification > Tableau de planification sprint ; Sprint Planning Board |

1. Lire les fiches suivantes et choisir deux stories à examiner en binôme.
2. Vérifier que leurs critères sont testables à partir des données de référence.
3. Tableau de planification sprint > Aucun sprint > Nouvelle tâche : créer US01.
4. Nommer la carte « US01 — Consulter le CA mensuel ».
5. Ouvrir Informations de la tâche par double-clic ou Tâche > Informations ; onglet Notes : saisir formulation, valeur et critères.
6. Ne pas affecter les autres stories à des Sprints avant discussion. La saisie structurée complète se fait à l’étape 5.

> [CAPTURE À INSÉRER : Tableau de planification sprint avec la carte « US01 — Consulter le CA mensuel » dans Aucun sprint, puis l’onglet Notes de cette carte]

#### 4. 🟨 Avec l’IA

L’IA propose, l’équipe discute, puis on retient la référence du support.

> ⚠️ Dans cette étape, l’IA passe avant Project, car les fiches du backlog doivent exister avant d’être saisies dans Project.

**Trace** : IA-04

##### Pourquoi utiliser l’IA ici ?

Produire réellement un backlog initial et faire de son contrôle une activité centrale du TP.

##### Entrées à fournir

Product Goal validé, profils, besoins et agrégats BI ; fournir les douze thèmes du support, mais pas encore leurs fiches complètes. Les estimations de référence sont consultées après la génération.

##### Prompt prêt à copier

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

##### Sortie attendue

12 fiches avec IDs uniques, critères vérifiables et questions ; un ordre expliqué, pas seulement une liste numérotée.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Comparer deux fiches en profondeur, puis contrôler les douze : doublons, rôle, bénéfice, calculs, cas vide/zéro, droits et dépendances.
- [ ] Consulter ensuite les fiches de référence et normaliser les tailles 5/3/5/5/3/5/3/5/3/3/2/5, total 47.
- [ ] Ne pas présenter ces tailles comme une expertise démontrée de l’IA.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Créer US01 comme indiqué, puis préparer les douze lignes à l’étape 5. Dans Notes, saisir les critères corrigés ; Texte4 (Référence IA) = IA-04 et Texte5 (Décision IA) = Retenu ou Corrigé puis retenu. Les critères non validés restent des questions, pas des exigences approuvées.

#### 7. Données à saisir

Alias des champs techniques utilisés dans cette étape :

| Champ technique (alias) | Usage selon le TP |
|---|---|
| Texte4 (Référence IA) | Référence IA (ex. « IA-04 ; IA-07 ») |
| Texte5 (Décision IA) | Décision IA (ex. « Corrigé puis retenu ») |

Backlog initial : 12 PBI, 47 points. Les horizons S2 sont des hypothèses, pas des engagements.

##### US01 — Consulter le CA mensuel

- Formulation : « En tant que direction commerciale, je veux consulter le CA par mois, afin de repérer les variations de ventes. »
- Valeur : Première lecture commune du CA.
- Critères testables : Janvier 40 000 TND ; février 50 000 ; cumul 90 000. Le filtre janvier conserve seulement janvier. Une période vide affiche « Aucune vente », sans erreur.
- Ordre initial : 1 ; taille relative illustrative : 5 points.
- Contraintes : Source contrôlée ; aucun PBI préalable requis.
- Horizon initial : Sprint 1.

##### US02 — Analyser les ventes par région

- Formulation : « En tant que responsable régional, je veux filtrer les ventes par région, afin de cibler les zones nécessitant une action. »
- Valeur : Cibler les actions régionales.
- Critères testables : Nord 54 000 TND, Sud 36 000 sur les deux mois ; Nord + janvier = 24 000 ; effacer le filtre rétablit 90 000.
- Ordre initial : 2 ; taille relative illustrative : 3 points.
- Contraintes : Socle US01 réutilisable ; réalisation conjointe possible.
- Horizon initial : Sprint 1.

##### US03 — Identifier les meilleurs produits

- Formulation : « En tant que analyste métier, je veux classer les produits par CA, afin de préparer une recommandation d’assortiment. »
- Valeur : Identifier les contributeurs principaux.
- Critères testables : P01 45 000, P02 28 000, P03 17 000 TND, tri décroissant. Janvier : 20 000, 12 000, 8 000. Le classement suit les filtres.
- Ordre initial : 3 ; taille relative illustrative : 5 points.
- Contraintes : Source de ventes commune ; codes produits à clarifier.
- Horizon initial : Sprint 1.

##### US04 — Lire la marge commerciale

- Formulation : « En tant que contrôle de gestion, je veux consulter marge et taux de marque, afin de apprécier la rentabilité. »
- Valeur : Éviter la confusion entre volume et rentabilité.
- Critères testables : Cumul : CA 90 000, coût 63 000, marge 27 000 TND, taux de marque 30 %. Janvier : marge 10 800 et 27 %. CA nul : taux non calculable.
- Ordre initial : 4 ; taille relative illustrative : 5 points.
- Contraintes : Coûts et formules validés ; taux calculé sur les agrégats.
- Horizon initial : Sprint 2, hypothèse.

##### US05 — Comparer les magasins

- Formulation : « En tant que responsable régional, je veux comparer les magasins, afin de repérer les écarts de performance. »
- Valeur : Préparer leur accompagnement.
- Critères testables : N1 32 000, N2 22 000, S1 20 000, S2 16 000 TND ; filtre Nord : N1/N2 seulement, total 54 000.
- Ordre initial : 5 ; taille relative illustrative : 3 points.
- Contraintes : US02 utile ; comparaison descriptive, sans causalité supposée.
- Horizon initial : Sprint 2, hypothèse.

##### US06 — Comparer deux périodes

- Formulation : « En tant que direction commerciale, je veux comparer février à janvier, afin de détecter la croissance ou le recul. »
- Valeur : Lire une évolution explicite.
- Critères testables : 50 000 contre 40 000 TND : +10 000 et +25 %. Les périodes sont affichées. Référence zéro : pourcentage non calculable, sans erreur.
- Ordre initial : 6 ; taille relative illustrative : 5 points.
- Contraintes : US01 ; convention de comparaison explicite.
- Horizon initial : Sprint 2, hypothèse.

##### US07 — Comparer les catégories

- Formulation : « En tant que analyste métier, je veux analyser les ventes par catégorie, afin de adapter les actions commerciales. »
- Valeur : Relier résultats et portefeuille.
- Critères testables : Équipement P01+P02 : 73 000 TND ; Accessoires P03 : 17 000. Janvier : 32 000 et 8 000. Le filtre catégorie actualise le total.
- Ordre initial : 7 ; taille relative illustrative : 3 points.
- Contraintes : Référentiel produits fiable.
- Horizon initial : Aucun sprint.

##### US08 — Identifier les principaux clients

- Formulation : « En tant que direction commerciale, je veux voir les principaux clients contributeurs, afin de préparer les revues de comptes. »
- Valeur : Cibler les revues commerciales.
- Critères testables : C01 45 000, C02 28 000, C03 17 000 TND ; seuls les codes autorisés apparaissent ; filtre période appliqué.
- Ordre initial : 8 ; taille relative illustrative : 5 points.
- Contraintes : Codes pseudonymisés, accès autorisé.
- Horizon initial : Aucun sprint.

##### US09 — Exporter une sélection

- Formulation : « En tant que analyste métier, je veux exporter les résultats filtrés, afin de éviter une ressaisie. »
- Valeur : Réutiliser les résultats.
- Critères testables : Export Nord : N1/N2 uniquement, cumul 54 000 TND ; période et filtres indiqués ; montants numériques ; format CSV ou XLSX convenu.
- Ordre initial : 9 ; taille relative illustrative : 3 points.
- Contraintes : Une vue filtrée exploitable existe.
- Horizon initial : Aucun sprint.

##### US10 — Vérifier la fraîcheur des données

- Formulation : « En tant que responsable régional, je veux voir date et statut du chargement, afin de éviter une décision sur des données périmées. »
- Valeur : Rendre la confiance visible.
- Critères testables : Nominal : « Chargement réussi : 01/03/2026 08:00 ». Échec simulé : « Dernier chargement échoué ; données au 28/02/2026 ». Un échec ne remplace pas les données valides par des zéros.
- Ordre initial : 10 ; taille relative illustrative : 3 points.
- Contraintes : Journal fictif ; les contrôles qualité minimaux restent requis dès S1.
- Horizon initial : Aucun sprint.

##### US11 — Consulter le dictionnaire des indicateurs

- Formulation : « En tant que contrôle de gestion, je veux accéder aux définitions des indicateurs, afin de interpréter les chiffres de façon homogène. »
- Valeur : Réduire les interprétations contradictoires.
- Critères testables : Dictionnaire : CA net HT en TND, coût, marge = CA − coût, taux de marque = marge / CA ; périodes explicites ; chaque indicateur renvoie à sa définition.
- Ordre initial : 11 ; taille relative illustrative : 2 points.
- Contraintes : Dictionnaire utilisateur enrichi ; documentation minimale de DoD dès S1.
- Horizon initial : Aucun sprint.

##### US12 — Préparer la réunion de direction

- Formulation : « En tant que direction commerciale, je veux ouvrir une synthèse dédiée, afin de préparer rapidement le comité. »
- Valeur : Réduire le temps de préparation.
- Critères testables : CA, marge et variation affichés sans ressaisie ; cumul 90 000 TND, marge 27 000, variation février/janvier +25 % ; filtres et fraîcheur visibles.
- Ordre initial : 12 ; taille relative illustrative : 5 points.
- Contraintes : US04/US06 terminées ; dépendances à inspecter.
- Horizon initial : Aucun sprint.

##### Principes d’ordonnancement

US01/02 servent les utilisateurs principaux ; US03 rend la première restitution immédiatement utile ; US04 permet d’inspecter des règles économiques risquées. US05/06 enrichissent les décisions. Les autres besoins restent visibles. Une remontée de US10 peut être défendue si le risque de fraîcheur est majeur, sans supprimer la qualité minimale requise dès S1.

Il n’existe pas de formule universelle de priorité Scrum. Valeur, risques, apprentissages, dépendances et coût éclairent l’ordre ; une note ne décide pas à la place du PO.

#### 8. ✅ Vérifier le résultat

- [ ] 12 stories comprises, un ordre argumenté, deux critères examinés en profondeur par binôme.

- [ ] Trace IA à conserver — IA-04 : sortie brute, deux fiches annotées, ordre retenu, estimations normalisées et validations encore requises.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Ne pas utiliser systématiquement « En tant que système » pour transformer chaque tâche technique en story. Le format story est optionnel ; le backlog peut contenir d’autres PBI.

> ⚠️ Proposition défectueuse à rejeter : « Taux de marque = marge / coût », « client sans droit d’accès », ou « US11 dispense de documentation en S1 » : à détecter et corriger.

#### 10. Si ça ne marche pas

- **L’IA fournit moins de 12 fiches, ou des IDs en double.** Relancez avec la RELANCE DE CONTRÔLE et vérifiez 12 IDs uniques, de US01 à US12.
- **Un critère contredit les données de référence.** Contrôlez le calcul avec le tableau de l’Annexe C. Les critères non validés restent des questions, pas des exigences.
- **La carte US01 ne se crée pas.** Passez par Tableau de planification sprint > Aucun sprint > Nouvelle tâche, puis ouvrez l’onglet Notes depuis Informations de la tâche.

#### 11. Pour réfléchir et lien PSPO I

- Quel élément réduit le plus une incertitude ?
- Quelle story gagnerait à être découpée ?
- Une dépendance implique-t-elle toujours un lien Gantt ?

> 🟩 **Lien PSPO I (optionnel)** — Redevabilité du PO sur le backlog, dimensionnement par les Developers et affinement collaboratif. [S3]

---

### Étape 5 — Organiser le Product Backlog dans Microsoft Project

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 35 min | 50 min | 1 |

**Ordre de travail** : IA d’abord (table de transfert), puis contrôles, puis saisie dans Project.

#### 1. Ce que vous allez obtenir

**Objectif.** Représenter valeur, ordre, taille et qualité sans inventer un module complet de backlog.

**Résultat attendu.** 12 identifiants uniques, 12 cartes visibles, 47 points et critères dans Notes ; pas de liens artificiels entre toutes les stories.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Le tableau doit rester simple et les informations détaillées accessibles.

🟩 **Notion Scrum.** La carte est une représentation ; elle ne remplace ni les informations ni la conversation. Un état logiciel n’atteste pas la qualité.

#### 3. 🟦 À faire dans Project

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces clics.

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Passage tableau/feuille | Format > Affichage > Feuille ; Sheet |
| Cartes | Format > Personnaliser les cartes ; Customize Cards |
| Visibilité | Afficher dans le tableau / Afficher à bord ; Show on Board |
| États | État du tableau ; Board Status |

1. Affichage > Diagramme de Gantt, ou Format > Feuille depuis le tableau.
2. Saisir une ligne non indentée par PBI ; ne pas dupliquer US01 déjà créée.
3. Ajouter les colonnes ci-dessous via Ajouter une nouvelle colonne.
4. Pour les alias : Projet > Champs personnalisés, ou clic droit sur l’en-tête > Champs personnalisés ; sélectionner un champ de tâche et Renommer. Si un champ est déjà utilisé, choisir un numéro libre et noter la correspondance.
5. Remplir les Notes de chaque ligne avec la fiche complète. Ne pas coller les critères dans Nom.
6. Laisser Sprint = Aucun sprint ; mettre Afficher dans le tableau = Oui pour les 12 PBI.
7. Trier la feuille sur Ordre backlog croissant, via Affichage > Trier > Trier par selon le ruban ; garder les champs de chaque ligne ensemble.
8. Format > Personnaliser les cartes : choisir jusqu’à cinq champs supplémentaires réellement proposés, par exemple ID, points, ordre, obstacle et reste. [S1]
9. Enregistrer une copie « NOVALIS_BI_Scrum_00_Backlog.mpp », puis reprendre le fichier principal.

> [CAPTURE À INSÉRER : feuille avec les colonnes ID PBI, Points, Ordre backlog, Reste, Obstacle, Résultat DoD, puis la fenêtre Personnaliser les cartes]

#### 4. 🟨 Avec l’IA

**Trace** : IA-05

##### Pourquoi utiliser l’IA ici ?

Transformer le backlog validé en données faciles à reporter dans Project, en réduisant les erreurs de structure.

##### Entrées à fournir

Uniquement le backlog normalisé, le dictionnaire des champs de l’étape et les alias réellement créés sur le poste.

##### Prompt prêt à copier

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

##### Sortie attendue

Un tableau contrôlé et douze fiches Notes séparées ; aucune ligne de synthèse à coller comme tâche.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Recalculer les points et vérifier l’ordre.
- [ ] Tester d’abord une seule ligne, puis une deuxième.
- [ ] Vérifier les colonnes réellement ciblées et les séparateurs ; ne pas coller les en-têtes dans les données.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Insérer les colonnes et les alias de l’étape 5, puis ajouter Texte4/Référence IA et Texte5/Décision IA. Saisir ou copier colonne par colonne les valeurs validées, contrôlées sur deux lignes. Les Notes sont saisies via Informations ; elles ne sont pas un champ de formule.

#### 7. Données à saisir

Alias des champs techniques utilisés dans cette étape :

| Champ technique (alias) | Usage selon le TP |
|---|---|
| Nombre1 (Points) | Points, total initial 47 |
| Nombre2 (Ordre backlog) | Ordre backlog, 1 = premier |
| Nombre3 (Reste estimé h) | Reste estimé h, saisi manuellement, vide avant Planning |
| Texte1 (ID PBI) | ID PBI, stable même si l’ID de ligne change |
| Texte2 (Obstacle) | Obstacle et date |
| Texte3 (Résultat DoD) | Résultat DoD : À vérifier / Conforme / Non conforme |
| Texte4 (Référence IA) | Référence IA (ex. « IA-04 ; IA-07 ») |
| Texte5 (Décision IA) | Décision IA (ex. « Corrigé puis retenu ») |

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

Les tâches détaillées auront identifiant T-USxx-n, points vides et visibilité Non pour éviter le double comptage. La priorité native de nivellement Project n’est pas l’ordre Scrum : utiliser Nombre2 (Ordre backlog). Ne saisir ni points dans Durée ni heures personnalisées dans Travail en prétendant qu’il s’agit du même champ.

#### 8. ✅ Vérifier le résultat

- [ ] 12 identifiants uniques, 12 cartes visibles, 47 points et critères dans Notes ; pas de liens artificiels entre toutes les stories.

- [ ] Trace IA à conserver — IA-05 : table de transfert, correspondance champs/alias et contrôle après saisie : 12 IDs, 47 points, aucun Sprint sélectionné.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Le Gantt représente mal la valeur, la conversation et les preuves. Le champ Nombre3 (Reste estimé h) n’est pas Travail restant natif. Les cartes n’assurent pas un historique quotidien : un registre complémentaire reste utile.

> ⚠️ Proposition défectueuse à rejeter : « 5 points = Durée 5j » ou « Priorité native = ordre commercial » : confusion entre estimation, ordonnancement et nivellement.

#### 10. Si ça ne marche pas

- **Le collage place les valeurs dans les mauvaises colonnes.** Testez d’abord une ligne, puis une deuxième. Vérifiez les séparateurs et ne collez pas les en-têtes dans les données.
- **Un champ Texte ou Nombre est déjà utilisé.** Choisissez un numéro libre et notez la correspondance dans le registre.
- **Le tri sépare les champs d’une ligne.** Triez la feuille sur Nombre2 (Ordre backlog) via Affichage > Trier > Trier par et gardez les champs de chaque ligne ensemble. Vérifiez que « Afficher dans le tableau » est Oui pour les 12 PBI.

#### 11. Pour réfléchir et lien PSPO I

- Comment retrouver US03 après un tri ?
- Pourquoi garder un registre de suivi hors du simple état courant ?

> 🟩 **Lien PSPO I (optionnel)** — Transparence et compréhension priment sur le respect d’un formulaire. [S3]

## Partie 3 — Vivre un Sprint

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PO = Product Owner ; SM = Scrum Master ; DoD = Definition of Done ; US = User Story ; PSPO I = Professional Scrum Product Owner I ; TP = travaux pratiques ; TP1 = premier TP (planning prédictif NOVALIS) ; J0 = jour 0 du Sprint (J1 à J10 : jours ouvrés suivants).

### Étape 6 — Planifier les sprints

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 30 min | 45 min | 1 |

**Ordre de travail** : IA d’abord (calcul des capacités), puis saisie des dates dans Project.

#### 1. Ce que vous allez obtenir

**Objectif.** Créer trois timeboxes et documenter des prévisions révisables.

**Résultat attendu.** Trois Sprints successifs et un registre d’objectifs/capacité. S2/S3 restent des prévisions ; seul S1 va être sélectionné.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** NOVALIS veut inspecter des résultats toutes les deux semaines.

🟩 **Notion Scrum.** Un Sprint dure au plus un mois ; le suivant commence immédiatement. Événements, affinement, tests et collaboration font partie du Sprint. [S3]

#### 3. 🟦 À faire dans Project

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces clics.

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Gestion des sprints | Projet > Gérer les sprints ; Sprints > Gérer ; Manage Sprints |
| Planification | Sprints > Affichages > Planification > Tableau de planification sprint ; Sprint Planning Board |

1. Sprints > Gérer (Manage Sprints).
2. Sprint 1 : Début 02/11/2026, Longueur deux semaines ; vérifier l’unité proposée par le champ.
3. Ajouter un sprint : Début 16/11/2026, Durée deux semaines, puis Ajouter un sprint.
4. Ajouter Sprint 3 : Début 30/11/2026, deux semaines. Valider OK.
5. Contrôler les frontières [02/11,16/11[, [16/11,30/11[, [30/11,14/12[. Les derniers jours inclus sont 15/11, 29/11 et 13/12. Vérifier la sémantique des dates si le poste montre le dernier jour ouvré.
6. Conserver les identifiants Sprint 1/2/3. Les noms métier ci-dessous vont dans le registre : la documentation ne garantit pas de commande de renommage du Sprint desktop. Ne pas inventer un champ Nom. Renommer une colonne d’état n’est pas renommer un Sprint.
7. Ouvrir Sprints > Planification > Tableau de planification sprint. Les cartes sont déplacées vers un Sprint après accord en Planning ; alternative : saisir la colonne Sprint en feuille. [S1]

> ⚠️ Précision ajoutée : les trois dates de fin incluse (15/11, 29/11, 13/12) tombent un dimanche, et le dernier jour ouvré du Sprint 1 est le 13/11. Les « prochains débuts » (16/11, 30/11) restent distincts des fins incluses.

> [CAPTURE À INSÉRER : fenêtre Gérer les sprints avec les trois Sprints et leurs dates de début et de longueur]

#### 4. 🟨 Avec l’IA

**Trace** : IA-06

##### Pourquoi utiliser l’IA ici ?

Faire vérifier les timeboxes et les hypothèses de capacité, puis préparer une prévision distincte d’un engagement de périmètre.

##### Entrées à fournir

Dates de début 02/11, 16/11, 30/11/2026, durées deux semaines, calendrier fictif lundi-vendredi sans exception ; 3 Developers × 10 jours × 6 h, réservations 36 h et 72 h ; backlog validé.

##### Prompt prêt à copier

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

##### Sortie attendue

Trois périodes sans chevauchement, plafond PBI 72 h et objectifs candidats liés au Product Goal.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Vérifier les frontières et les dix jours ouvrés selon le calendrier du cas.
- [ ] Ne pas confondre fin incluse 15/11 et prochain début 16/11.
- [ ] Vérifier que le PO et le SM ne sont pas ajoutés artificiellement à la capacité des Developers.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Saisir vous-même les dates dans Gérer les sprints ; vérifier le résultat affiché. Garder les noms métier et hypothèses dans le registre. N’affecter les cartes S1 qu’après Planning ; S2/S3 sont prévisionnels.

#### 7. Données à saisir

| Sprint | Dates | Objectif | Prévision initiale |
|---|---|---|---|
| 1 — Première lecture des ventes | 02–15/11 | Lecture fiable des ventes, régions et contributeurs | US01 5 + US02 3 + US03 5 = 13 pts |
| 2 — Lecture économique | 16–29/11 | Interpréter rentabilité et comparer magasins/périodes | US04 5 + US05 3 + US06 5 = 13 pts |
| 3 — Approfondir la confiance | 30/11–13/12 | Analyse plus explicable et réutilisable | Hypothèse : US07 3 + US09 3 + US10 3 + US11 2 = 11 pts |

Capacité fictive initiale : 3 Developers × 10 jours × 6 h = 180 heures-personnes ; réserver 36 h aux événements/affinement/collaboration et 72 h au support, soit 72 h pour les PBI. Prévisions indépendantes : S1 52 h, S2 60 h, S3 initial 48 h. Ce n’est pas une conversion points/heures. Une absence en S2 réduira le plafond à 48 h ; S3 conservera ce plafond annoncé.

#### 8. ✅ Vérifier le résultat

- [ ] Trois Sprints successifs et un registre d’objectifs/capacité.
- [ ] S2/S3 restent des prévisions ; seul S1 va être sélectionné.

- [ ] Trace IA à conserver — IA-06 : calcul de capacité, trois timeboxes contrôlées et liste des hypothèses.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Ne pas remplir mécaniquement tous les Sprints pour vider Aucun sprint. Deux semaines calendaires ne signifient pas dix jours calendaires. Les horaires de Project ne garantissent pas la capacité effective.

> ⚠️ Proposition défectueuse à rejeter : « Deux semaines = 14 jours × 6 h par personne » : compter les jours calendaires comme des jours ouvrés surestime la capacité.

#### 10. Si ça ne marche pas

- **Les dates des Sprints ne correspondent pas.** Ouvrez Sprints > Gérer (Manage Sprints). Si ce chemin manque, essayez Projet > Gérer les sprints. Contrôlez les frontières [02/11,16/11[, [16/11,30/11[, [30/11,14/12[.
- **L’unité de longueur diffère.** Vérifiez l’unité proposée par le champ : le TP demande deux semaines. Vérifiez aussi la sémantique des dates si le poste affiche le dernier jour ouvré.
- **Aucune commande de renommage du Sprint n’existe.** Gardez Sprint 1, 2, 3 et notez les noms métier dans le registre. Renommer une colonne d’état n’est pas renommer un Sprint.

#### 11. Pour réfléchir et lien PSPO I

- Pourquoi laisser du travail sans Sprint ?
- Une capacité de 72 h garantit-elle de finir 13 points ?

> 🟩 **Lien PSPO I (optionnel)** — Prévisions empiriques, capacité et sélection par les Developers en discussion avec le PO. [S3]

#### Point d’arrêt — fin de la journée 1

Enregistrez `NOVALIS_BI_Scrum_IA_TP2.mpp`, fermez-le, puis rouvrez-le. Cochez ensuite votre auto-évaluation.

- [ ] Je sais expliquer la différence entre approche prédictive et Scrum (étape 1).
- [ ] Mon fichier est distinct du TP1, enregistré et rouvert (étape 2).
- [ ] Je peux citer le Product Goal et au moins un indicateur de mesure (étape 3).
- [ ] Mes 12 PBI ont des IDs uniques et totalisent 47 points (étapes 4 et 5).
- [ ] Mes trois Sprints sont créés avec les bonnes dates (étape 6).
- [ ] Mon registre IA contient IA-01 à IA-06.

---

### Étape 7 — Réaliser la Sprint Planning

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 40 min | 55 min | 2 |

**Ordre de travail** : IA d’abord (comparaison des scénarios), puis saisie dans Project.

#### Reprise de la journée 2

> ⚠️ À lire avant de commencer : lisez la Definition of Done (DoD) complète dans l’[Annexe C](#annexe-c--données-de-référence) (rubrique « DoD pédagogique »). Vous devez la connaître avant toute sélection de PBI. Son étude détaillée a lieu à l’étape 12.

- [ ] J’ai ouvert `NOVALIS_BI_Scrum_IA_TP2.mpp` et vérifié les trois Sprints (02/11, 16/11, 30/11).
- [ ] Mon registre IA contient IA-01 à IA-06.
- [ ] J’ai relu la DoD en Annexe C.

#### 1. Ce que vous allez obtenir

**Objectif.** Construire pourquoi, quoi et comment pour le Sprint 1.

**Résultat attendu.** Trois PBI, 13 points, 52 h initiales, un but cohérent et un plan intégrant la DoD.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Dhirar A veut inspecter une analyse utilisable, pas uniquement des travaux techniques.

🟩 **Notion Scrum.** Toute la Scrum Team collabore. Samia L prépare la discussion de valeur ; les Developers sélectionnent et élaborent le plan. Le Sprint Goal est finalisé avant la fin de la Planning. Sprint Backlog = objectif + sélection + plan. [S3]

#### 3. 🟦 À faire dans Project

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces clics.

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Planification | Sprints > Affichages > Planification > Tableau de planification sprint ; Sprint Planning Board |
| Feuille | Sprints > Affichages > Sprint > Feuille sprint actuelle ; Current Sprint Sheet |

1. Relire le Product Goal et la DoD fournie à l’étape 12, avant toute sélection.
2. Examiner US01–US04 : critères, risques et capacité.
3. Consigner le Sprint Goal ci-dessous dans le registre Sprints.
4. Déplacer US01/02/03 de Aucun sprint à Sprint 1.
5. En feuille, Nombre3 (Reste estimé h) = 20/12/20 h ; Nombre1 (Points) reste 5/3/5 points.
6. Ajouter le plan détaillé dans Notes.
7. Pour pratiquer les tâches : créer T-US01-1, T-US01-2, T-US01-3 en mode manuel, points vides, Afficher dans le tableau = Non. Ces lignes décrivent les mêmes 20 h : ne pas les additionner aux 20 h du PBI.
8. Les Developers conviennent de la répartition. Cheikh AS contribue aux contrôles avec un collègue ; la restitution et la vérification croisée sont prises en charge ensemble.
9. Enregistrer « NOVALIS_BI_Scrum_01_Planning_S1.mpp ».

> [CAPTURE À INSÉRER : Tableau de planification sprint avec US01, US02 et US03 affectés à Sprint 1, puis la feuille avec Nombre3 (Reste estimé h) = 20, 12, 20]

#### 4. 🟨 Avec l’IA

**Trace** : IA-07

##### Pourquoi utiliser l’IA ici ?

Comparer des sélections possibles et produire un plan de travail discuté, incluant la qualité.

##### Entrées à fournir

Product Goal, DoD, US01/02/03/04, tailles 5/3/5/5 ; capacité PBI 72 h ; hypothèses initiales d’effort US01 20 h, US02 12 h, US03 20 h, US04 24 h. Ces heures sont des hypothèses distinctes des points.

##### Prompt prêt à copier

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

##### Sortie attendue

Deux scénarios de 13 points : A 52 h, B 56 h ; différences de valeur et risque explicites ; plan du scénario A incluant la DoD.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Les deux scénarios peuvent être recevables selon le besoin.
- [ ] Discuter puis retenir A pour suivre le jeu du TP.
- [ ] Les Developers valident la faisabilité ; ne pas additionner les tâches détaillées aux mêmes heures déjà portées par les PBI.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Déplacer US01/02/03 dans S1. Nombre3 (Reste estimé h) = 20/12/20 ; enregistrer le Sprint Goal au registre, le plan en Notes et les tâches détaillées demandées. Texte4 (Référence IA) peut devenir IA-04 ; IA-07. Archiver la Planning.

#### 7. Données à saisir

Alias des champs techniques utilisés dans cette étape :

| Champ technique (alias) | Usage selon le TP |
|---|---|
| Nombre1 (Points) | Points, total initial 47 |
| Nombre3 (Reste estimé h) | Reste estimé h, saisi manuellement, vide avant Planning |
| Texte4 (Référence IA) | Référence IA (ex. « IA-04 ; IA-07 ») |

Sprint Goal : « Permettre à la direction d’identifier les variations et les principaux contributeurs des ventes du pilote sur des chiffres réconciliés ».

| PBI | Plan indicatif | Prévision |
|---|---|---:|
| US01 | Règles/totaux 6 h ; restitution mensuelle 8 h ; tests/documentation/disponibilité 6 h | 20 h |
| US02 | Correspondances région/magasin 3 h ; filtre 5 h ; tests/documentation 4 h | 12 h |
| US03 | Tri/filtres 4 h ; classement 8 h ; tests/documentation/intégration 8 h | 20 h |
| Total PBI | Tests et qualité inclus | 52 h |

Les activités peuvent être fractionnées davantage si cela facilite le suivi. Leur découpage est une décision des Developers.

#### 8. ✅ Vérifier le résultat

- [ ] Trois PBI, 13 points, 52 h initiales, un but cohérent et un plan intégrant la DoD.

- [ ] Trace IA à conserver — IA-07 : comparaison A/B, scénario retenu, raisons du rejet ou report de l’autre et plan validé.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Le PO ne distribue pas unilatéralement les tâches et n’impose pas US04. Une autre sélection cohérente est recevable, mais nécessite son propre suivi : ne pas réutiliser les chiffres du scénario sans adaptation.

> ⚠️ Proposition défectueuse à rejeter : « La capacité restante permet forcément d’ajouter US04 » : une marge en heures ne prouve ni faisabilité ni cohérence avec le but.

#### 10. Si ça ne marche pas

- **Vous voulez ajouter US04 « parce qu’il reste de la capacité ».** Rejetez ce raisonnement (rubrique 9). Une autre sélection cohérente demande son propre suivi.
- **Les heures des tâches détaillées s’ajoutent à celles du PBI.** Ne les additionnez pas : T-US01-1 à T-US01-3 décrivent les mêmes 20 h.
- **Vous n’avez pas lu la DoD.** Lisez-la en Annexe C avant de sélectionner les PBI.

#### 11. Pour réfléchir et lien PSPO I

- Qui décide comment réaliser le travail ?
- Peut-on supprimer une fonction secondaire sans perdre le but ?

> 🟩 **Lien PSPO I (optionnel)** — Autogestion, responsabilités et engagement associé au Sprint Backlog. [S3]

---

### Étape 8 — Gérer le Sprint Backlog et le travail quotidien

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 35 min | 50 min | 2 |

**Ordre de travail** : Alternez : saisissez J0 à J3 dans Project, consultez l’IA, puis saisissez J4 et J5.

#### 1. Ce que vous allez obtenir

**Objectif.** Adapter le plan et rendre visibles obstacles, états et reste.

**Résultat attendu.** J5 : 31 h, aucune story Done, US01 à vérifier. J10 : trois PBI conformes et 13 points Done.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** À J3, une correspondance de codes produits incertaine impose une réestimation.

🟩 **Notion Scrum.** Le Product Backlog porte les améliorations du produit ; le Sprint Backlog est le plan des Developers pour le Sprint. Le Daily Scrum, de 15 min, inspecte l’avancement vers le but et adapte le plan : pas de reporting hiérarchique au PO. [S3]

#### 3. 🟦 À faire dans Project

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Exécution | Sprints > Affichages > Sprint > Tableau sprint actuel ; Current Sprint Board |
| Feuille | Sprints > Affichages > Sprint > Feuille sprint actuelle ; Current Sprint Sheet |
| États | État du tableau ; Board Status |

1. Sprints > Sprint > Tableau sprint actuel. Choisir explicitement Sprint 1 si la date du poste ne correspond pas au cas ; ne pas changer l’horloge Windows.
2. Observer les colonnes natives Next up / In progress / Done ; la traduction peut montrer Accès suivant / En cours / Terminé. Clic droit sur la première colonne > Renommer > À faire si souhaité.
3. À droite de la dernière colonne, Ajouter une nouvelle colonne > À vérifier. Ce n’est pas Done.
4. J1 : US01/03 En cours ; US02 À faire. Mettre à jour Nombre3 (Reste estimé h) en feuille.
5. J3 : obstacle US03 = « J3 — correspondance P03 à confirmer avec Haida B ». Action dans Notes : Cheikh AS et Haida B vérifient avant J4.
6. J4 : après résolution, retirer le blocage courant, conserver la trace datée dans Notes ; démarrer US02.
7. J5 : US01 À vérifier ; J6 : après preuves DoD, Texte3 (Résultat DoD) = Conforme et US01 Terminé. Même procédure à J8 pour US02, J10 pour US03.
8. Copier chaque jour l’état et les restes dans un registre Excel. Project ne reconstitue pas automatiquement cet historique personnalisé.
9. Observer tout effet du déplacement sur le pourcentage d’achèvement et le consigner : ni le pourcentage ni l’état ne vérifient la DoD. [S1]

> [CAPTURE À INSÉRER : Tableau sprint actuel du Sprint 1 avec les colonnes À faire / En cours / À vérifier / Terminé, puis la feuille avec Nombre3 (Reste estimé h) à J3]

#### 4. 🟨 Avec l’IA

**Trace** : IA-08

##### Pourquoi utiliser l’IA ici ?

Faire synthétiser les faits d’un suivi quotidien et préparer les discussions d’adaptation, sans déléguer le Daily ni la déclaration Done.

##### Entrées à fournir

Sprint Goal, sélection S1, état J0 puis J1–J3 uniquement pour la première analyse ; à la seconde analyse, ajouter J4–J5 et les obstacles réellement simulés. Ne pas transmettre J6–J10 en avance.

##### Prompt prêt à copier

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

##### Sortie attendue

J2 45 h ; J3 48 h, hausse de 3 h ; J5 31 h et aucun PBI Done selon les faits. Causes présentées comme hypothèses sauf obstacle fourni.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Comparer chaque total au tableau.
- [ ] Exiger une référence au jour et au PBI.
- [ ] À J5, US01 est À vérifier ; les autres restent En cours.
- [ ] Une baisse d’heures ne permet pas de créditer des points.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Appliquer seulement les mises à jour du scénario : état, Nombre3 (Reste estimé h), obstacle et Notes. Inscrire les actions discutées, puis exporter le nouvel état pour vérifier la synthèse. Le registre quotidien conserve l’historique.

#### 7. Données à saisir

Alias des champs techniques utilisés dans cette étape :

| Champ technique (alias) | Usage selon le TP |
|---|---|
| Nombre3 (Reste estimé h) | Reste estimé h, saisi manuellement, vide avant Planning |
| Texte3 (Résultat DoD) | Résultat DoD : À vérifier / Conforme / Non conforme |

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

#### 8. ✅ Vérifier le résultat

- [ ] J5 : 31 h, aucune story Done, US01 à vérifier.
- [ ] J10 : trois PBI conformes et 13 points Done.

- [ ] Trace IA à conserver — IA-08 : première analyse J3, décision d’adaptation, seconde analyse J5 et différence après saisie.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Ne pas réduire mécaniquement le reste d’un nombre d’heures fixe chaque jour. Ne pas réestimer les points pour maquiller le suivi. Une story « à 90 % » n’est pas un Increment Done.

> ⚠️ Proposition défectueuse à rejeter : « 40 % d’heures consommées implique 40 % de valeur livrée » : le reste n’est pas une consommation, et la valeur n’est pas déduite d’un pourcentage.

#### 10. Si ça ne marche pas

- **La date du poste ne correspond pas au cas.** Choisissez explicitement Sprint 1. Ne changez pas l’horloge Windows.
- **Les colonnes natives portent d’autres noms.** La traduction peut afficher Accès suivant / En cours / Terminé pour Next up / In progress / Done. Ne transformez pas cette traduction en règle Scrum.
- **Le Travail restant natif reste vide.** C’est normal : Nombre3 (Reste estimé h) n’alimente pas ce champ. Observez aussi l’effet du déplacement sur le pourcentage d’achèvement et consignez-le.

#### 11. Pour réfléchir et lien PSPO I

- Pourquoi le reste monte-t-il à J3 ?
- Quelle adaptation aide le but plutôt qu’un indicateur artificiel ?

> 🟩 **Lien PSPO I (optionnel)** — Daily Scrum, transparence des obstacles et adaptation par les Developers. [S3]

---

### Étape 9 — Suivre et visualiser l’avancement

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 30 min | 45 min | 2 |

**Ordre de travail** : Alternez : ouvrez les rapports dans Project, faites préparer le tableau par l’IA, puis tracez la courbe dans Excel.

#### 1. Ce que vous allez obtenir

**Objectif.** Lire état, reste et risque sans confondre quantité produite et valeur.

**Résultat attendu.** Un tableau lisible et une courbe avec source, unités et commentaire : hausse du reste J3, premiers PBI Done J6.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** À J5, la direction voit du travail en cours mais encore aucun PBI conforme.

🟩 **Notion Scrum.** Burndown et vélocité peuvent aider ; ni leur utilisation ni une droite parfaite ne sont imposées. L’empirisme et l’inspection de l’Increment restent nécessaires. [S3]

#### 3. 🟦 À faire dans Project

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Feuille | Sprints > Affichages > Sprint > Feuille sprint actuelle ; Current Sprint Sheet |
| Rapports | Rapport > Afficher les rapports > Tableau des tâches |

1. Enregistrer une copie du fichier final avant de reconstituer l’état J5 si nécessaire.
2. Afficher Feuille sprint actuelle, Sprint 1, et Nom/Points/Reste/Obstacle/Résultat DoD/État.
3. Vérifier que les tâches détaillées ne sont pas comptées comme PBI supplémentaires.
4. Rapport > Afficher les rapports > Tableau des tâches : ouvrir un rapport présent ; noter titre, unité et filtre. L’aide confirme la catégorie, pas un catalogue identique pour chaque build. [S1]
5. Si Travail ou Travail restant natifs sont vides, l’expliquer : Nombre3 (Reste estimé h) n’alimente pas ces champs.
6. Dans Excel, saisir Jour, Reste total h, Idéal h, Points restants ; Insertion > Graphiques > Courbes. Sélectionner les deux séries d’heures, pas les points sur la même échelle.
7. Titre : « Sprint 1 — reste estimé, données pédagogiques » ; axe vertical heures, horizontal jours ouvrés.
8. Facultatif : courbe distincte de points. Si un burndown natif existe, inspecter ses données avant d’annoncer sa pertinence ; aucun burndown Story Points prêt à l’emploi n’est garanti ici.

> [CAPTURE À INSÉRER : Feuille sprint actuelle du Sprint 1, puis le rapport Tableau des tâches ouvert, puis la courbe Excel]

#### 4. 🟨 Avec l’IA

**Trace** : IA-09

##### Pourquoi utiliser l’IA ici ?

Aider à choisir et interpréter les indicateurs, en séparant données fournies, calculs simples et rapports réellement disponibles.

##### Entrées à fournir

Données complètes J0–J10 au moment de l’exercice de fin S1, points Done 0/0/0/0/0/0/5/5/8/8/13, champs saisis et titre exact des rapports observés sur le poste.

##### Prompt prêt à copier

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

##### Sortie attendue

Un tableau identique aux valeurs de référence, des axes explicites et un commentaire nuancé sur J3, J5 et J6.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Recalculer les points restants = 13 − Done cumulés.
- [ ] À J5, idéal 26 h contre reste 31 h, mais pas de diagnostic causal certain.
- [ ] Contrôler la provenance des séries, pas seulement l’aspect de la courbe.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Ouvrir les rapports natifs présents et consigner les champs utilisés. Produire dans Excel les courbes pédagogiques garanties par le jeu de données. Coller le commentaire corrigé dans le registre, non comme preuve de valeur.

#### 7. Données à saisir

Alias des champs techniques utilisés dans cette étape :

| Champ technique (alias) | Usage selon le TP |
|---|---|
| Nombre3 (Reste estimé h) | Reste estimé h, saisi manuellement, vide avant Planning |

Reprendre les totaux J0–J10 de l’étape 8 : 52, 49, 45, 48, 42, 31, 20, 15, 8, 3, 0 h.

Ligne idéale illustrative : 52 ; 46,8 ; 41,6 ; 36,4 ; 31,2 ; 26 ; 20,8 ; 15,6 ; 10,4 ; 5,2 ; 0 h. Formule : 52 × (10 − jour) / 10.

Points restants : 13, 13, 13, 13, 13, 13, 8, 8, 5, 5, 0. Ces données sont fournies et simulées, non calculées automatiquement par Project.

#### 8. ✅ Vérifier le résultat

- [ ] Un tableau lisible et une courbe avec source, unités et commentaire : hausse du reste J3, premiers PBI Done J6.

- [ ] Trace IA à conserver — IA-09 : tableau de calcul, unités, source, commentaire retenu et limites des rapports natifs.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

À J5, 31 h restantes et 13 points restants sont compatibles. Ne pas fractionner les points au pourcentage. Ne pas attribuer une variation de courbe à un individu sans preuve.

> ⚠️ Proposition défectueuse à rejeter : « La courbe descend, donc les utilisateurs gagnent du temps » : une observation de travail n’établit pas un résultat d’usage.

#### 10. Si ça ne marche pas

- **Le rapport attendu n’existe pas dans votre édition.** Ouvrez Rapport > Afficher les rapports > Tableau des tâches et notez le titre réel. Le catalogue peut différer selon la version.
- **Travail ou Travail restant sont vides.** Expliquez-le : Nombre3 (Reste estimé h) n’alimente pas ces champs. Aucun burndown Story Points prêt à l’emploi n’est garanti.
- **Les tâches détaillées gonflent le total.** Vérifiez qu’elles ne sont pas comptées comme PBI supplémentaires.

#### 11. Pour réfléchir et lien PSPO I

- Une courbe idéale prouve-t-elle un usage utile ?
- Que faut-il observer en plus ?

> 🟩 **Lien PSPO I (optionnel)** — Limites des métriques de production et prévision empirique. [S3, S4]

## Partie 4 — S’adapter et inspecter

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PO = Product Owner ; DoD = Definition of Done ; US = User Story ; PSPO I = Professional Scrum Product Owner I ; TND = dinar tunisien ; CA = chiffre d’affaires ; TP = travaux pratiques.

### Étape 10 — Simuler un changement de priorité en cours de sprint

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 25 min | 35 min | 2 |

**Ordre de travail** : IA d’abord (comparaison des options), puis création de US13 dans Project.

#### 1. Ce que vous allez obtenir

**Objectif.** Analyser une urgence sans perdre le Sprint Goal ni réduire la qualité.

**Résultat attendu.** 13 PBI, 50 points historiques ; S1 reste à 13 points. Besoin urgent visible et ordonné, sans injection forcée.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** À J4 S1, Dhirar A demande un taux d’atteinte des objectifs régionaux. Le but S1 reste utile.

🟩 **Notion Scrum.** Le PO ordonne le backlog. Le périmètre peut être clarifié/renégocié avec les Developers sans mettre en danger le but et sans réduire la qualité. Seul le PO peut annuler un Sprint si son objectif devient obsolète. [S3]

#### 3. 🟦 À faire dans Project

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces clics.

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Planification | Sprints > Affichages > Planification > Tableau de planification sprint ; Sprint Planning Board |

1. Tableau de planification > Aucun sprint > Nouvelle tâche : US13.
2. Ajouter les champs et Notes ci-dessous. Garder Aucun sprint et état À faire.
3. Ordre du backlog : US13 juste après US06, rang 7 ; décaler US07–US12 à 8–13.
4. Notes : « J4 : valeur reconnue ; objectif S1 maintenu ; cibles à clarifier pour un prochain Sprint ».
5. Ne pas déplacer US13 dans S1 : le scénario de suivi reste inchangé.

> [CAPTURE À INSÉRER : Tableau de planification sprint avec US13 dans Aucun sprint, et l’ordre du backlog décalé]

#### 4. 🟨 Avec l’IA

**Trace** : IA-10

##### Pourquoi utiliser l’IA ici ?

Comparer les options de traitement d’une urgence au lieu d’ajouter automatiquement une carte au Sprint.

##### Entrées à fournir

Événement J4, Product Goal, Sprint Goal S1 toujours pertinent, sélection et état courant, description US13 et cibles encore non finalisées.

##### Prompt prêt à copier

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

##### Sortie attendue

Une matrice de décision ; report préparé dans le backlog recommandé dans le scénario ; annulation non justifiée par les faits.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Vérifier que seul le PO a le pouvoir d’annulation et que la condition discutée est l’obsolescence du but.
- [ ] Contrôler 85,71 %, 80 %, global 83,33 % ; aucune moyenne simple des taux.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Créer US13 hors Sprint, points illustratifs 3 après clarification, ordre 7 ; conserver la décision datée en Notes et IA-10 dans Texte4 (Référence IA). Ne modifier ni la sélection ni les données S1.

#### 7. Données à saisir

Alias des champs techniques utilisés dans cette étape :

| Champ technique (alias) | Usage selon le TP |
|---|---|
| Texte4 (Référence IA) | Référence IA (ex. « IA-04 ; IA-07 ») |

US13 — Mesurer l’atteinte des objectifs commerciaux.

« En tant que direction commerciale, je veux comparer le CA régional à l’objectif commercial de février, afin de cibler les actions de rattrapage. »

Taille illustrative après clarification par les Developers : 3 points ; prévision de travail S3 : 12 h, sans conversion automatique.

Critères : Nord, objectif 35 000 / réel 30 000 TND → 85,71 %, écart −5 000 ; Sud, objectif 25 000 / réel 20 000 → 80 %, écart −5 000. Global : 50 000 / 60 000 = 83,33 %, pas la moyenne simple des taux ; écart −10 000. Cible zéro : Non calculable. Mois, source et version des cibles visibles. Cibles définitives fournies fin S2.

> ⚠️ Précision ajoutée : le taux d’atteinte se calcule toujours réel ÷ objectif. Nord : 30 000 / 35 000 = 85,71 %. Sud : 20 000 / 25 000 = 80 %. Global : 50 000 / 60 000 = 83,33 %. Les valeurs du TP sont inchangées.

#### 8. ✅ Vérifier le résultat

- [ ] 13 PBI, 50 points historiques ;
- [ ] S1 reste à 13 points.
- [ ] Besoin urgent visible et ordonné, sans injection forcée.

- [ ] Trace IA à conserver — IA-10 : options comparées, décision du PO simulé et discussion de faisabilité avec les Developers.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Une substitution peut être discutée si elle préserve le but et la qualité, mais nécessiterait un suivi adapté. Ne pas annuler pour masquer un écart. Une urgence n’implique pas une obsolescence du Sprint Goal.

> ⚠️ Proposition défectueuse à rejeter : « Le sponsor est urgent, donc annuler immédiatement et recommencer » : autorité et condition d’annulation confondues.

#### 10. Si ça ne marche pas

- **L’IA conclut qu’il faut annuler le Sprint.** Rappelez que seul le PO peut annuler un Sprint, si le but devient obsolète. Une urgence ne suffit pas.
- **US13 se retrouve dans Sprint 1.** Remettez-la dans Aucun sprint : le scénario de suivi reste inchangé.
- **Des données futures figurent déjà dans la conversation.** Ouvrez une nouvelle conversation avec le prompt de cadrage et le seul état J4.

#### 11. Pour réfléchir et lien PSPO I

- Quelles informations manquent ?
- Quel changement rendrait vraiment le but obsolète ?

> 🟩 **Lien PSPO I (optionnel)** — Autorité du PO sur ordre et annulation ; limites sur le plan des Developers. [S3]

---

### Étape 11 — Organiser la Sprint Review et la Sprint Retrospective

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 30 min | 40 min | 2 |

**Ordre de travail** : IA d’abord (supports de Review et de Retrospective), puis mise à jour de Project.

#### 1. Ce que vous allez obtenir

**Objectif.** Séparer inspection du produit et amélioration de la façon de travailler.

**Résultat attendu.** Deux registres distincts : adaptations produit et amélioration du travail.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** À J10 S1, les trois PBI sont conformes selon les fiches pédagogiques.

🟩 **Notion Scrum.** La Review est une session de travail sur résultat et adaptations, pas une simple validation ni une porte obligatoire avant livraison. La Retrospective améliore qualité et efficacité de la Scrum Team. [S3]

#### 3. 🟦 À faire dans Project

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces clics.

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Exécution | Sprints > Affichages > Sprint > Tableau sprint actuel ; Current Sprint Board |

1. Afficher S1 ; vérifier Terminé/Conforme et preuves dans Notes.
2. Simuler la démonstration BI à partir des agrégats : janvier, Nord, effacement des filtres et classement produits. Project n’exécute pas ces interactions BI.
3. Consigner les retours dans un registre Review avec auteur, observation, décision et question à tester.
4. Revenir au backlog ; préparer US04/05/06, conserver US13 visible avec sa contrainte de cibles.
5. Ouvrir un registre Retrospective : Conserver / Arrêter / Essayer. Choisir une action concrète ; noter sa mise en œuvre dans le plan S2, pas de points de valeur utilisateur fictifs.

> [CAPTURE À INSÉRER : Tableau du Sprint 1 avec US01, US02 et US03 Terminé, et les Notes contenant les preuves]

#### 4. 🟨 Avec l’IA

**Trace** : IA-11

##### Pourquoi utiliser l’IA ici ?

Préparer des supports de Review et de Retrospective à partir des faits, sans fabriquer de retours utilisateurs.

##### Entrées à fournir

Résultats S1, fiches de conformité simulées, retours Dhirar A/Sanae A/Haida B/Khansa D fournis par le cas, observations 28/30/32/30/30 minutes et incident de codes produits.

##### Prompt prêt à copier

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

##### Sortie attendue

Deux supports séparés ; moyenne 30 min ; pas d’objectif produit annoncé atteint. Une action précise sur le référentiel dès J1 avec inspection J2.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Comparer toutes les citations à celles du cas.
- [ ] Distinguer faits, interprétations et recommandations.
- [ ] L’IA ne doit attribuer une action à personne sans discussion.
- [ ] Ne pas confondre nouvelle fonctionnalité et amélioration de collaboration.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Mettre à jour uniquement l’ordre et les Notes validés ; conserver les comptes rendus hors du Gantt. Ajouter au plan S2 une action de contrôle, sans doubler son temps déjà inclus dans les PBI.

#### 7. Données à saisir

| Personne | Retour fictif | Adaptation |
|---|---|---|
| Dhirar A | « Les contributeurs sont visibles ; il manque la rentabilité » | Maintenir US04 haute |
| Sanae A | « Je veux comparer mes magasins » | Préparer US05 |
| Haida B | « J’ai encore contrôlé les données manuellement » | Contrôles précoces et affinement US10 |
| Khansa D | « Attention aux moyennes simples des pourcentages » | Clarifier les calculs US04/13 |

Observations S1 : 28/30/32/30/30 minutes, moyenne 30 ; le périmètre du Product Goal n’est pas encore complet.

Retrospective : conserver les vérifications croisées ; arrêter de découvrir les codes tardivement ; essayer un contrôle du référentiel dès J1. Action : Cheikh AS et un collègue vérifient codes/cas limites avant restitution et inspectent le résultat à J2 du prochain Sprint. Temps inclus dans les prévisions S2.

#### 8. ✅ Vérifier le résultat

- [ ] Deux registres distincts : adaptations produit et amélioration du travail.

- [ ] Trace IA à conserver — IA-11 : deux supports, corrections, décisions produit et action d’amélioration retenue.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Ne pas faire du PO le juge unique du Done. Le travail non Done est signalé en transparence mais pas présenté comme Increment terminé. Éviter la recherche de coupables dans la Retrospective.

> ⚠️ Proposition défectueuse à rejeter : « Les utilisateurs ont validé toutes les fonctions » alors que seuls des retours partiels sont fournis : une approbation a été inventée.

#### 10. Si ça ne marche pas

- **L’IA invente des citations d’utilisateurs.** Comparez toutes les citations à celles du tableau de l’étape et rejetez les autres.
- **Vous cherchez à faire la démonstration BI dans Project.** Project n’exécute pas ces interactions BI : simulez-la à partir des agrégats.
- **Les comptes rendus encombrent le Gantt.** Conservez-les dans les registres Review et Retrospective, hors du Gantt.

#### 11. Pour réfléchir et lien PSPO I

- Un retour positif suffit-il à mesurer la valeur ?
- Pourquoi US10 ne dispense-t-elle pas des contrôles dès S1 ?

> 🟩 **Lien PSPO I (optionnel)** — Finalité des événements et collaboration avec les parties prenantes. [S3]

---

### Étape 12 — Comprendre l’Increment et la Definition of Done

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 25 min | 35 min | 2 |

**Ordre de travail** : Project d’abord (relire les Notes de US01), puis IA (audit des preuves), puis décision dans Project.

#### 1. Ce que vous allez obtenir

**Objectif.** Distinguer critères spécifiques, qualité commune et retour métier.

**Résultat attendu.** Une qualité commune et une décision claire pour chaque élément.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Un beau tableau avec des totaux faux ne doit pas être annoncé utilisable. Lire cette DoD avant la Planning, puis l’étudier ici.

🟩 **Notion Scrum.** Un Increment est intégré, utilisable et conforme à la DoD. Les critères portent sur un PBI ; la DoD définit son état de qualité ; la validation métier apporte un retour sans remplacer la DoD. Plusieurs Increments peuvent être créés et livrés avant la fin du Sprint. [S3]

#### 3. 🟦 À faire dans Project

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Exécution | Sprints > Affichages > Sprint > Tableau sprint actuel ; Current Sprint Board |

1. Ouvrir Notes de US01 et retrouver critères et preuves.
2. Vérifier la liste ci-dessous ; Texte3 (Résultat DoD) = Conforme seulement après satisfaction.
3. Déplacer vers Terminé : Project n’applique pas automatiquement cette liste.
4. Dans une copie d’exercice, simuler US03 Non conforme si le classement janvier est faux ; retirer le statut Done et noter le défaut. Revenir ensuite au scénario corrigé où le problème est résolu à J10.
5. Un élément de 5 points non Done vaut zéro point Done, pas un crédit proportionnel.

> [CAPTURE À INSÉRER : Notes de US01 avec critères et preuves, et la colonne Résultat DoD (Texte3) renseignée]

#### 4. 🟨 Avec l’IA

**Trace** : IA-12

##### Pourquoi utiliser l’IA ici ?

Faire auditer les critères et les preuves de qualité, sans laisser l’IA certifier un Increment.

##### Entrées à fournir

DoD du cas, critères de US01/US03/US06 et preuves disponibles au point simulé. Pour le test difficile, fournir explicitement US06 en échec sur référence zéro.

##### Prompt prêt à copier

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

##### Sortie attendue

Une matrice de preuves et une liste de contrôles ; US06 non conforme ; qualité commune distincte de critères spécifiques.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Chaque statut doit renvoyer à un fait fourni.
- [ ] Ne pas marquer US01 conforme avant J6.
- [ ] Vérifier que US11/US10 ne sont pas utilisées comme prétexte pour différer les exigences minimales.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Saisir le statut validé dans Texte3 (Résultat DoD) et les références de preuves dans Notes. Ne déplacer vers Terminé qu’après la vérification du jeu de rôle ; le diagnostic IA seul ne suffit pas.

#### 7. Données à saisir

Alias des champs techniques utilisés dans cette étape :

| Champ technique (alias) | Usage selon le TP |
|---|---|
| Texte3 (Résultat DoD) | Résultat DoD : À vérifier / Conforme / Non conforme |

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

#### 8. ✅ Vérifier le résultat

- [ ] Une qualité commune et une décision claire pour chaque élément.

- [ ] Trace IA à conserver — IA-12 : matrice, anomalies corrigées, décisions qualité et limites de la simulation.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

US11 est un dictionnaire enrichi, pas une dispense de documentation minimale avant S3. US10 ajoute la visibilité de fraîcheur, pas le droit de livrer sans contrôle. Le PO ne peut pas abaisser unilatéralement la qualité.

> ⚠️ Proposition défectueuse à rejeter : « Aucun défaut signalé, donc tous les tests sont passés » : absence d’information confondue avec preuve positive.

#### 10. Si ça ne marche pas

- **L’IA déclare « tests passés » sans preuve.** Rejetez : une preuve absente signifie non démontré.
- **Une carte déplacée vers Terminé semble validée.** Project n’applique pas la DoD automatiquement : vérifiez Texte3 (Résultat DoD) et les preuves dans les Notes.
- **US03 doit être simulée Non conforme.** Faites-le dans une copie d’exercice, puis revenez au scénario corrigé.

#### 11. Pour réfléchir et lien PSPO I

- US06 échoue sur la référence zéro : peut-elle être Done ?
- L’accord du sponsor supprime-t-il la nécessité du test ?

> 🟩 **Lien PSPO I (optionnel)** — DoD, engagement de l’Increment, standards organisationnels minimaux et travail non terminé. [S3]

---

### Étape 13 — Gérer plusieurs sprints et inspecter les résultats

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Journée |
|---|---|---|
| 35 min | 50 min | 2 |

**Ordre de travail** : Alternez : première passe IA en fin de S2, saisie dans Project, puis seconde passe IA en fin de S3.

#### 1. Ce que vous allez obtenir

**Objectif.** Conserver l’historique et adapter les prévisions après inspection.

**Résultat attendu.** Trois historiques cohérents ; valeur obtenue, fonctionnalités livrées et tâches exécutées distinguées. Le produit S2 comprend marge et comparaison de magasins, mais pas la comparaison de périodes non conforme.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Une absence imprévue et un défaut en S2 obligent à revoir S3.

🟩 **Notion Scrum.** Un élément non Done revient au backlog pour examen, sans report automatique. Une vélocité locale ne mesure pas la productivité individuelle et ne devient pas un objectif à maximiser. [S3]

#### 3. 🟦 À faire dans Project

Repères de menus (chemin documenté et équivalent anglais) :

| Fonction | Chemin documenté / équivalent anglais |
|---|---|
| Gestion des sprints | Projet > Gérer les sprints ; Sprints > Gérer ; Manage Sprints |
| Planification | Sprints > Affichages > Planification > Tableau de planification sprint ; Sprint Planning Board |

1. Archiver la fin S1 avant de poursuivre : enregistrer `NOVALIS_BI_Scrum_01b_Fin_S1.mpp` (nom proposé, absent du TP source).
2. Planning S2 : sélectionner US04/05/06 ; prévisions 24/12/24 h = 60 h. US13 reste sans Sprint : cibles non finalisées.
3. J2 S2 : noter absence et plafond révisé de 72 à 48 h. Adapter le plan sans allonger le Sprint ni abaisser la DoD.
4. Fin S2 : US04/05 Terminé/Conforme ; US06 À vérifier/Non conforme, reste 10 h. Défaut : référence zéro non gérée. Le but complet n’est pas atteint.
5. Enregistrer « NOVALIS_BI_Scrum_02_Fin_S2.mpp » et l’historique avant de modifier le Sprint de US06.
6. Remettre US06 dans Aucun sprint pour réexamen ; même ID, même estimation relative de référence 5 points dans ce scénario. Ne pas dupliquer le PBI.
7. Planning S3 : cibles confirmées ; sélectionner US06/13/10/11. Reste 10 + 12 + 12 + 8 = 42 h pour plafond 48 h ; total 13 points.
8. Fin S3 : quatre PBI Terminé/Conforme ; les autres restent Aucun sprint ; enregistrer une copie finale `NOVALIS_BI_Scrum_03_Fin_S3.mpp` (nom proposé, absent du TP source).

> [CAPTURE À INSÉRER : feuille de fin de S2 avec US04 et US05 Conforme, US06 Non conforme, puis fin de S3 avec les quatre PBI Conforme]

#### 4. 🟨 Avec l’IA

**Trace** : IA-13

##### Pourquoi utiliser l’IA ici ?

Utiliser l’assistant pour analyser l’historique, replanifier après apprentissage et rédiger une synthèse de pilotage traçable.

##### Entrées à fournir

Pour la première passe : fin S2, US04/05 Done, US06 non conforme avec reste 10 h, capacité S3 48 h, US13 cibles confirmées et efforts 12 h, US10 12 h, US11 8 h. Pour la seconde passe seulement : résultats fin S3 et observations d’usage.

##### Prompt prêt à copier

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

##### Sortie attendue

Première passe : S3 13 points, 42 h pour capacité 48 h, écart prévisionnel 6 h, sans garantie. Seconde passe : 50 = 34 Done uniques + 16 restants ; moyenne 14 min mais seuil strict non démontré pour tous.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Vérifier les IDs uniques ;
- [ ] US06 n’est pas comptée deux fois.
- [ ] Ne pas donner les résultats fin S3 à la première passe.
- [ ] Contrôler que l’écart de 6 h ne devient pas une promesse de capacité additionnelle.

#### 6. Passage de la réponse IA à Project

Reportez dans Project uniquement la version validée. La sortie brute et les échanges restent dans le registre IA, hors de Project.

Archiver S2 avant report, réexaminer US06 dans Aucun sprint puis l’affecter à S3 après Planning. Mettre à jour les quatre PBI, conserver les autres hors Sprint ; archiver S3 et joindre la synthèse corrigée.

#### 7. Données à saisir

| Sprint | Sélection réelle | Done / non Done | Retours et décisions |
|---|---|---|---|
| S1 | US01/02/03 = 13 pts | 13 Done ; aucun non Done | Marge et comparaisons demandées |
| S2 | US04/05/06 = 13 pts | US04/05 = 8 Done ; US06 non Done | Objectif partiellement atteint ; US06 réexaminée ; cibles US13 confirmées fin S2 |
| S3 | US06/13/10/11 = 13 pts | 13 Done ; aucun non Done | Préparer le comité avec écarts explicables et confiance visible ; inspecter l’usage |

S3 initial envisagé à l’étape 6 est remplacé : les apprentissages priment sur la liste initiale.

Temps fictifs : S1 moyenne 30 min ; S2 moyenne 24 min, comparaison encore non conforme ; S3 observations 12/14/15/13/16 min, moyenne 14, aucune ressaisie sur les essais. Le seuil strict « moins de 15 min » n’est pas établi pour chaque utilisateur : 15 et 16 ne le satisfont pas.

Bilan : 47 + US13 3 = 50 points ; Done uniques 13 + 8 + 13 = 34 ; restants US07 3 + US08 5 + US09 3 + US12 5 = 16. US06 n’est créditée Done qu’une fois.

#### 8. ✅ Vérifier le résultat

- [ ] Trois historiques cohérents ; valeur obtenue, fonctionnalités livrées et tâches exécutées distinguées.
- [ ] Le produit S2 comprend marge et comparaison de magasins, mais pas la comparaison de périodes non conforme.

- [ ] Trace IA à conserver — IA-13 : prévision initiale, proposition révisée, décision, observation fin S3 et synthèse finale. Relever une recommandation confirmée et une limite de l’assistant.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et proposition défectueuse à rejeter

Ne pas effacer l’échec partiel S2 en déplaçant seulement une carte. Ne pas additionner les points sélectionnés pour annoncer le produit livré. Ne pas déclarer automatiquement le Product Goal atteint sur une moyenne.

> ⚠️ Proposition défectueuse à rejeter : « S1 13 + S2 13 + S3 13 = 39 points livrés » : additionner les sélections inclut le travail non Done et le report de US06.

#### 10. Si ça ne marche pas

- **US06 apparaît en double.** Gardez le même ID, ne dupliquez pas le PBI et ne créditez aucun point partiel.
- **L’IA a déjà reçu les résultats de fin S3 à la première passe.** Ouvrez une nouvelle conversation avec le prompt de cadrage et les seules données de fin S2.
- **L’historique S2 disparaît.** Enregistrez `NOVALIS_BI_Scrum_02_Fin_S2.mpp` et l’historique avant de modifier le Sprint de US06.

#### 11. Pour réfléchir et lien PSPO I

- Quelle valeur reste obtenue en S2 ?
- Comment vérifier le gain d’usage sans se limiter aux points ?

> 🟩 **Lien PSPO I (optionnel)** — Prévision, livraison, valeur observée et adaptation du Product Backlog. [S3, S4]

## Annexe A — Prompts : index, cadrage et relances

Cette annexe contient un index des 13 prompts, puis le prompt de cadrage et les deux relances en texte complet. Le texte complet de chaque prompt d’étape reste dans la rubrique 4 de son étape : il n’existe qu’un seul texte de référence par prompt.

### Index des 13 prompts

| Référence | Étape | Emplacement |
|---|---|---|
| IA-01 | 1. Du prédictif à Scrum | Rubrique 4 de [Étape 1 — Comprendre le passage du prédictif à Scrum](#étape-1--comprendre-le-passage-du-prédictif-à-scrum) |
| IA-02 | 2. Créer le projet | Rubrique 4 de [Étape 2 — Créer le projet Scrum dans Microsoft Project](#étape-2--créer-le-projet-scrum-dans-microsoft-project) |
| IA-03 | 3. Définir le produit | Rubrique 4 de [Étape 3 — Définir le produit et son objectif](#étape-3--définir-le-produit-et-son-objectif) |
| IA-04 | 4. Construire le backlog | Rubrique 4 de [Étape 4 — Construire le Product Backlog](#étape-4--construire-le-product-backlog) |
| IA-05 | 5. Organiser le backlog dans Project | Rubrique 4 de [Étape 5 — Organiser le Product Backlog dans Microsoft Project](#étape-5--organiser-le-product-backlog-dans-microsoft-project) |
| IA-06 | 6. Configurer les sprints | Rubrique 4 de [Étape 6 — Planifier les sprints](#étape-6--planifier-les-sprints) |
| IA-07 | 7. Sprint Planning | Rubrique 4 de [Étape 7 — Réaliser la Sprint Planning](#étape-7--réaliser-la-sprint-planning) |
| IA-08 | 8. Travail quotidien | Rubrique 4 de [Étape 8 — Gérer le Sprint Backlog et le travail quotidien](#étape-8--gérer-le-sprint-backlog-et-le-travail-quotidien) |
| IA-09 | 9. Visualisation | Rubrique 4 de [Étape 9 — Suivre et visualiser l’avancement](#étape-9--suivre-et-visualiser-lavancement) |
| IA-10 | 10. Changement de priorité | Rubrique 4 de [Étape 10 — Simuler un changement de priorité en cours de sprint](#étape-10--simuler-un-changement-de-priorité-en-cours-de-sprint) |
| IA-11 | 11. Review et Retrospective | Rubrique 4 de [Étape 11 — Organiser la Sprint Review et la Sprint Retrospective](#étape-11--organiser-la-sprint-review-et-la-sprint-retrospective) |
| IA-12 | 12. Increment et DoD | Rubrique 4 de [Étape 12 — Comprendre l’Increment et la Definition of Done](#étape-12--comprendre-lincrement-et-la-definition-of-done) |
| IA-13 | 13. Inspection sur trois sprints | Rubrique 4 de [Étape 13 — Gérer plusieurs sprints et inspecter les résultats](#étape-13--gérer-plusieurs-sprints-et-inspecter-les-résultats) |

### Prompt de cadrage de la conversation — à exécuter une fois

Exécutez ce prompt une seule fois, au début de la conversation avec l’IA, avant l’étape 1.

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

### Relance de contrôle

Utilisez cette relance après une réponse de l’IA, avant toute saisie.

```text
RELANCE DE CONTRÔLE
Relis ta réponse en cherchant activement les incohérences avec les seules
données fournies. Pour chaque valeur, indique sa source ou classe-la comme
hypothèse. Vérifie les unités, totaux, doublons, dépendances et responsabilités.
Corrige ce qui est faux sans modifier silencieusement le périmètre.
```

### Relance après saisie

Utilisez cette relance après avoir saisi les données dans Project, en remplaçant les parties entre crochets.

```text
RELANCE APRÈS SAISIE
Voici les données réellement observées dans Project : [coller le tableau].
Voici la décision validée : [coller].
Compare attendu et observé ; distingue erreur de saisie, paramétrage à vérifier,
limite de l’outil et hypothèse de travail. N’invente pas de valeur manquante.
Propose une vérification à la fois, sans affirmer que le MPP a été corrigé.
```

## Annexe B — Registre IA

> **Sigles de cette partie** : IA = intelligence artificielle ; PBI = Product Backlog Item (élément du Product Backlog) ; DoD = Definition of Done.

### Règles du registre

Créer un registre dans Excel avec les colonnes : référence, étape, date, outil/modèle si connu, entrées transmises, prompt utilisé, lien ou emplacement de la sortie brute, proposition, contrôle effectué, décision, justification, éléments reportés dans Project, résultat observé et question ouverte.

Références : IA-01 à IA-13. Conserver une entrée par étape ; plusieurs lignes sont autorisées pour une même référence si plusieurs propositions sont examinées. Ne pas inventer une erreur si la réponse IA est correcte : préciser le contrôle qui l’a confirmé. Les exemples défectueux du support permettent de s’entraîner à détecter des pièges sans prétendre qu’un assistant les a réellement produits.

Dans Project, ajouter deux champs de tâche si libres : Texte4 renommé « Référence IA » et Texte5 renommé « Décision IA ». Si ces champs sont déjà utilisés, choisir des champs libres et noter la correspondance. Ne pas remplacer ID PBI, Points, Ordre backlog, Reste ou Résultat DoD.

Pour un PBI, Texte4 (Référence IA) peut contenir « IA-04 ; IA-07 », Texte5 (Décision IA) « Corrigé puis retenu ». Les échanges complets restent dans le registre ; ils ne sont pas tous collés sur les cartes. Ajouter dans Notes un bref résumé de la décision et des contrôles. Ces champs ne créent ni synchronisation avec l’IA ni automatisation du planning.

### Les 14 colonnes du registre

La colonne « TP source » reprend l’énumération du support d’origine. La colonne « Fichier Excel joint » reprend l’en-tête réel du fichier `Registre_IA_NOVALIS_Planning_Scrum.xlsx`. Aucun choix n’a été fait à votre place : les deux intitulés sont affichés.

| N° | TP source | Fichier Excel joint | Écart |
|---:|---|---|---|
| 1 | Référence | Référence | Identique |
| 2 | Étape | Étape | Identique |
| 3 | Date | Date séance | Intitulé différent |
| 4 | Outil / modèle si connu | Outil / modèle si connu | Identique |
| 5 | Entrées transmises | Entrées transmises | Identique |
| 6 | Prompt utilisé | Prompt / version | Intitulé différent |
| 7 | Lien ou emplacement de la sortie brute | Sortie brute : emplacement | Intitulé différent |
| 8 | Proposition | Proposition examinée | Intitulé différent |
| 9 | Contrôle effectué | Contrôle humain effectué | Intitulé différent |
| 10 | Décision | Décision | Identique |
| 11 | Justification | Justification | Identique |
| 12 | Éléments reportés dans Project | Éléments reportés dans Project | Identique |
| 13 | Résultat observé | Résultat observé après saisie | Intitulé différent |
| 14 | Question ouverte | Question ouverte | Identique |

Écarts relevés entre le TP source et le fichier Excel :

- 6 intitulés d’Excel diffèrent légèrement de ceux du TP source (voir le tableau). Le sens est le même ; décidez quel libellé vous conservez.
- Excel préremplit pour chaque référence IA-01 à IA-13 : le nom de l’étape, « IA-xx / v1 » dans la colonne Prompt / version et « À clarifier » dans la colonne Décision. Le TP source ne précise pas ces valeurs.
- Excel contient quatre feuilles absentes du TP source : Mode_emploi, Prompts (13 prompts), Transfert_Project et Controles_reference.
- Les 13 prompts de la feuille Prompts sont identiques à ceux du TP source, sauf pour le prompt IA-02 : dans les deux documents, il cite `NOVALIS_BI_Scrum_TP2.mpp`. Ce support harmonise ce nom en `NOVALIS_BI_Scrum_IA_TP2.mpp` (seule modification d’un prompt).
- La feuille Mode_emploi liste les décisions possibles : Retenu / Corrigé puis retenu / Rejeté / À clarifier.

### Feuille Transfert_Project du fichier Excel (absente du TP source)

Colonnes : Référence IA ; ID PBI / registre ; Proposition retenue ; Champ ciblé / alias ; Valeur avant ; Valeur après ; Contrôle après saisie ; Commentaire.

Usage indiqué par Excel : faire correspondre chaque proposition retenue à une ligne PBI ou à un registre externe ; aucune carte artificielle pour chaque échange IA.

### Registres participant à conserver

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

## Annexe C — Données de référence

> **Sigles de cette partie** : BI = Business Intelligence (informatique décisionnelle) ; DoD = Definition of Done ; US = User Story ; TND = dinar tunisien ; HT = hors taxes ; CA = chiffre d’affaires.

Cette annexe regroupe les données de référence du TP. Les valeurs sont identiques à celles du TP source.

### C.1 Données BI de référence

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

### C.2 Repères d’interface

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

### C.3 Alias des huit champs personnalisés

| Champ technique (alias) | Usage selon le TP |
|---|---|
| Texte1 (ID PBI) | ID PBI, stable même si l’ID de ligne change |
| Texte2 (Obstacle) | Obstacle et date |
| Texte3 (Résultat DoD) | Résultat DoD : À vérifier / Conforme / Non conforme |
| Texte4 (Référence IA) | Référence IA (ex. « IA-04 ; IA-07 ») |
| Texte5 (Décision IA) | Décision IA (ex. « Corrigé puis retenu ») |
| Nombre1 (Points) | Points, total initial 47 |
| Nombre2 (Ordre backlog) | Ordre backlog, 1 = premier |
| Nombre3 (Reste estimé h) | Reste estimé h, saisi manuellement, vide avant Planning |

### C.4 Récapitulatif du Product Backlog

| ID | Titre | Ordre initial | Taille relative illustrative (points) | Horizon initial |
|---|---|---:|---:|---|
| US01 | Consulter le CA mensuel | 1 | 5 | Sprint 1 |
| US02 | Analyser les ventes par région | 2 | 3 | Sprint 1 |
| US03 | Identifier les meilleurs produits | 3 | 5 | Sprint 1 |
| US04 | Lire la marge commerciale | 4 | 5 | Sprint 2, hypothèse |
| US05 | Comparer les magasins | 5 | 3 | Sprint 2, hypothèse |
| US06 | Comparer deux périodes | 6 | 5 | Sprint 2, hypothèse |
| US07 | Comparer les catégories | 7 | 3 | Aucun sprint |
| US08 | Identifier les principaux clients | 8 | 5 | Aucun sprint |
| US09 | Exporter une sélection | 9 | 3 | Aucun sprint |
| US10 | Vérifier la fraîcheur des données | 10 | 3 | Aucun sprint |
| US11 | Consulter le dictionnaire des indicateurs | 11 | 2 | Aucun sprint |
| US12 | Préparer la réunion de direction | 12 | 5 | Aucun sprint |
| **Total** | **12 PBI** | | **47** | |
| US13 | Mesurer l’atteinte des objectifs commerciaux (ajoutée à l’étape 10) | 7 (US07 à US12 décalées à 8–13) | 3 | Aucun sprint |
| **Total après US13** | **13 PBI** | | **50** | |

### C.5 Suivi quotidien du Sprint 1 (J0 à J10)

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

### C.6 DoD pédagogique (copie de référence)

Le contenu complet de la DoD figure à l’[étape 12](#étape-12--comprendre-lincrement-et-la-definition-of-done) ; voici sa copie de référence, à lire avant l’étape 7.

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

### C.7 Contrôles de référence (fichier Excel joint, absents du TP source)

| Point de contrôle | Valeur de référence |
|---|---|
| Backlog initial | 12 PBI / 47 points |
| Après US13 | 13 PBI / 50 points |
| Capacité initiale PBI | 180 − 36 − 72 = 72 h |
| Planning S1 scénario A | 13 pts / 52 h |
| Planning alternatif B | 13 pts / 56 h |
| J3 S1 | 48 h restantes ; +3 h vs J2 |
| J5 S1 | 31 h ; 0 point Done |
| Fin S1 | 13 points Done |
| Fin S2 | 13 sélectionnés ; 8 Done ; US06 non conforme |
| Planning S3 | 13 pts / 42 h ; plafond 48 h |
| Bilan fin S3 | 50 = 34 Done uniques + 16 restants |
| Mesure usage S3 | 12/14/15/13/16 min ; moyenne 14 ; seuil strict non atteint pour tous |

### C.8 Où retrouver les autres tableaux

| Donnée | Emplacement |
|---|---|
| Sprints, dates, capacité 180 / 36 / 72 h | Étape 6, rubrique 7 |
| Plan du Sprint 1 (52 h) | Étape 7, rubrique 7 |
| Série idéale et points restants | Étape 9, rubrique 7 |
| US13 et taux d’atteinte | Étape 10, rubrique 7 |
| Retours Review et Retrospective | Étape 11, rubrique 7 |
| Bilan S1, S2, S3 | Étape 13, rubrique 7 |

## Annexe D — Dépannage

Cette annexe regroupe les rubriques « Si ça ne marche pas » de chaque étape. Elles sont déduites du texte source uniquement.

### Étape 0

- **Un menu n’existe pas ou porte un autre nom.** Comparez avec le tableau des repères d’interface. Notez le constat et poursuivez avec le chemin le plus proche.
- **La colonne souhaitée n’apparaît pas.** Cliquez sur Ajouter une nouvelle colonne, à droite de la dernière colonne.
- **Les données ont disparu à la réouverture.** Enregistrez au type Projet (*.mpp) avant de fermer.

### Étape 1

- **L’IA convertit chaque tâche du TP1 en story.** Relancez avec la RELANCE DE CONTRÔLE (Annexe A) et rappelez la consigne « Ne convertis pas chaque tâche en story ». Comparez avec le tableau TP1/TP2 de la rubrique 2.
- **Le TP1 n’est pas accessible.** Le prérequis demande un TP1 disponible en lecture. Utilisez le résumé du TP1 et les trois activités du prompt, sans modifier ni importer ses tâches.
- **L’IA propose Sprint 1 : spécifications, Sprint 2 : développement, Sprint 3 : tests.** Rejetez cette proposition, expliquée en rubrique 9, et demandez une tranche fonctionnelle utilisable.

### Étape 2

- **Le modèle Projet Sprints est absent.** Vérifiez d’abord Gérer les sprints. S’il est disponible, un nouveau Projet vierge peut recevoir des sprints : consignez cette différence. Si les fonctions sont absentes, ne simulez pas leur présence et faites contrôler le déploiement par l’administrateur.
- **Le Tableau de planification sprint ne s’ouvre pas.** Cliquez sur Sprints > Affichages > Planification > Tableau de planification sprint (Sprint Planning Board).
- **Le chemin d’enregistrement diffère.** Le TP source précisait « selon l’interface » pour Enregistrer sous > Parcourir. Choisissez un dossier autorisé et le type Projet (*.mpp), puis rouvrez le fichier pour vérifier.

### Étape 3

- **Le chemin Propriétés avancées n’existe pas.** Ce chemin peut varier. Conservez le registre Produit et ajoutez sa référence dans les Notes de US01 à sa création. Aucun champ natif Product Goal n’est présumé.
- **L’IA propose un chiffre de hausse de CA.** Rejetez-le (voir rubrique 9) et rappelez que les 45 minutes sont une hypothèse à vérifier.
- **Le but proposé ressemble à « livrer 12 stories ».** Demandez un résultat utilisateur observable, pas une mesure de production.

### Étape 4

- **L’IA fournit moins de 12 fiches, ou des IDs en double.** Relancez avec la RELANCE DE CONTRÔLE et vérifiez 12 IDs uniques, de US01 à US12.
- **Un critère contredit les données de référence.** Contrôlez le calcul avec le tableau de l’Annexe C. Les critères non validés restent des questions, pas des exigences.
- **La carte US01 ne se crée pas.** Passez par Tableau de planification sprint > Aucun sprint > Nouvelle tâche, puis ouvrez l’onglet Notes depuis Informations de la tâche.

### Étape 5

- **Le collage place les valeurs dans les mauvaises colonnes.** Testez d’abord une ligne, puis une deuxième. Vérifiez les séparateurs et ne collez pas les en-têtes dans les données.
- **Un champ Texte ou Nombre est déjà utilisé.** Choisissez un numéro libre et notez la correspondance dans le registre.
- **Le tri sépare les champs d’une ligne.** Triez la feuille sur Nombre2 (Ordre backlog) via Affichage > Trier > Trier par et gardez les champs de chaque ligne ensemble. Vérifiez que « Afficher dans le tableau » est Oui pour les 12 PBI.

### Étape 6

- **Les dates des Sprints ne correspondent pas.** Ouvrez Sprints > Gérer (Manage Sprints). Si ce chemin manque, essayez Projet > Gérer les sprints. Contrôlez les frontières [02/11,16/11[, [16/11,30/11[, [30/11,14/12[.
- **L’unité de longueur diffère.** Vérifiez l’unité proposée par le champ : le TP demande deux semaines. Vérifiez aussi la sémantique des dates si le poste affiche le dernier jour ouvré.
- **Aucune commande de renommage du Sprint n’existe.** Gardez Sprint 1, 2, 3 et notez les noms métier dans le registre. Renommer une colonne d’état n’est pas renommer un Sprint.

### Étape 7

- **Vous voulez ajouter US04 « parce qu’il reste de la capacité ».** Rejetez ce raisonnement (rubrique 9). Une autre sélection cohérente demande son propre suivi.
- **Les heures des tâches détaillées s’ajoutent à celles du PBI.** Ne les additionnez pas : T-US01-1 à T-US01-3 décrivent les mêmes 20 h.
- **Vous n’avez pas lu la DoD.** Lisez-la en Annexe C avant de sélectionner les PBI.

### Étape 8

- **La date du poste ne correspond pas au cas.** Choisissez explicitement Sprint 1. Ne changez pas l’horloge Windows.
- **Les colonnes natives portent d’autres noms.** La traduction peut afficher Accès suivant / En cours / Terminé pour Next up / In progress / Done. Ne transformez pas cette traduction en règle Scrum.
- **Le Travail restant natif reste vide.** C’est normal : Nombre3 (Reste estimé h) n’alimente pas ce champ. Observez aussi l’effet du déplacement sur le pourcentage d’achèvement et consignez-le.

### Étape 9

- **Le rapport attendu n’existe pas dans votre édition.** Ouvrez Rapport > Afficher les rapports > Tableau des tâches et notez le titre réel. Le catalogue peut différer selon la version.
- **Travail ou Travail restant sont vides.** Expliquez-le : Nombre3 (Reste estimé h) n’alimente pas ces champs. Aucun burndown Story Points prêt à l’emploi n’est garanti.
- **Les tâches détaillées gonflent le total.** Vérifiez qu’elles ne sont pas comptées comme PBI supplémentaires.

### Étape 10

- **L’IA conclut qu’il faut annuler le Sprint.** Rappelez que seul le PO peut annuler un Sprint, si le but devient obsolète. Une urgence ne suffit pas.
- **US13 se retrouve dans Sprint 1.** Remettez-la dans Aucun sprint : le scénario de suivi reste inchangé.
- **Des données futures figurent déjà dans la conversation.** Ouvrez une nouvelle conversation avec le prompt de cadrage et le seul état J4.

### Étape 11

- **L’IA invente des citations d’utilisateurs.** Comparez toutes les citations à celles du tableau de l’étape et rejetez les autres.
- **Vous cherchez à faire la démonstration BI dans Project.** Project n’exécute pas ces interactions BI : simulez-la à partir des agrégats.
- **Les comptes rendus encombrent le Gantt.** Conservez-les dans les registres Review et Retrospective, hors du Gantt.

### Étape 12

- **L’IA déclare « tests passés » sans preuve.** Rejetez : une preuve absente signifie non démontré.
- **Une carte déplacée vers Terminé semble validée.** Project n’applique pas la DoD automatiquement : vérifiez Texte3 (Résultat DoD) et les preuves dans les Notes.
- **US03 doit être simulée Non conforme.** Faites-le dans une copie d’exercice, puis revenez au scénario corrigé.

### Étape 13

- **US06 apparaît en double.** Gardez le même ID, ne dupliquez pas le PBI et ne créditez aucun point partiel.
- **L’IA a déjà reçu les résultats de fin S3 à la première passe.** Ouvrez une nouvelle conversation avec le prompt de cadrage et les seules données de fin S2.
- **L’historique S2 disparaît.** Enregistrez `NOVALIS_BI_Scrum_02_Fin_S2.mpp` et l’historique avant de modifier le Sprint de US06.

### Commande manquante sur le poste

Si une commande manque, consignez le constat et faites contrôler le déploiement par l’administrateur. Pour poursuivre temporairement, une feuille avec champs personnalisés Sprint et État permet une simulation, mais ne remplace pas la validation des compétences sur le tableau natif. Le support privilégie le modèle Sprints.

## Annexe E — Checklist finale et livrables

### Dossier participant — livrables IA attendus

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

### Checklist finale

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

### Auto-évaluation de fin de la journée 2

- [ ] Je peux expliquer pourquoi l’IA propose et pourquoi les participants décident.
- [ ] Mon registre IA contient IA-01 à IA-13, chacune avec contrôle et décision.
- [ ] Je distingue heures restantes, points Done et pourcentage.
- [ ] Je peux justifier le bilan : 50 points = 34 Done uniques + 16 restants.

## Annexe F — Glossaire français / anglais

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

## Annexe G — Liens PSPO I

Ces liens sont optionnels. Ils relient chaque étape à une notion de la préparation PSPO I, qui reste un document indépendant. Les références [S3] et [S4] renvoient aux sources de l’[Annexe H](#annexe-h--sources-et-limites-du-support).

| Étape | Lien avec la préparation PSPO I |
|---|---|
| 0. Prise en main de Microsoft Project | Aucun outil particulier n’est prescrit par Scrum. [S3] |
| 1. Du prédictif à Scrum | Empirisme, valeur et distinction entre artefact et outil. [S3] |
| 2. Créer le projet | Aucun outil particulier n’est prescrit par Scrum. [S3] |
| 3. Définir le produit | Product Goal, valeur et collaboration avec les parties prenantes. [S3, S4] |
| 4. Construire le backlog | Redevabilité du PO sur le backlog, dimensionnement par les Developers et affinement collaboratif. [S3] |
| 5. Organiser le backlog dans Project | Transparence et compréhension priment sur le respect d’un formulaire. [S3] |
| 6. Configurer les sprints | Prévisions empiriques, capacité et sélection par les Developers en discussion avec le PO. [S3] |
| 7. Sprint Planning | Autogestion, responsabilités et engagement associé au Sprint Backlog. [S3] |
| 8. Travail quotidien | Daily Scrum, transparence des obstacles et adaptation par les Developers. [S3] |
| 9. Visualisation | Limites des métriques de production et prévision empirique. [S3, S4] |
| 10. Changement de priorité | Autorité du PO sur ordre et annulation ; limites sur le plan des Developers. [S3] |
| 11. Review et Retrospective | Finalité des événements et collaboration avec les parties prenantes. [S3] |
| 12. Increment et DoD | DoD, engagement de l’Increment, standards organisationnels minimaux et travail non terminé. [S3] |
| 13. Inspection sur trois sprints | Prévision, livraison, valeur observée et adaptation du Product Backlog. [S3, S4] |

Sources de référence pour ces liens :

- [S3] Scrum Guides — [Scrum Guide français, novembre 2020](https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-French.pdf) ; [versions et traductions](https://scrumguides.org/download.html) ; [ressource Scrum.org](https://www.scrum.org/resources/scrum-guide).
- [S4] Scrum.org — [Certification Professional Scrum Product Owner I](https://www.scrum.org/assessments/professional-scrum-product-owner-i-certification). Périmètre et modalités de certification, ressources et évaluations de préparation.

## Annexe H — Sources et limites du support

### Limites du support

L’assistant IA ne dispose d’aucun accès implicite au MPP et ne certifie ni qualité ni valeur. Aucun script ou développement n’est requis. Pas de test exécuté sur votre poste Project 2609 ; pas de capture inventée ; pas de renommage natif des sprints desktop garanti ; pas de burndown Story Points présumé ; pas d’historique déduit automatiquement du champ Nombre3 ; pas de synchronisation MPP/Planner promise. Les conventions de capacité et d’estimation ne sont pas des règles universelles Scrum.

### Sources officielles

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

## Annexe I — Traçabilité et contrôles

Cette annexe a été ajoutée pour prouver qu’aucun contenu source n’a disparu.

### I.1 Correspondance section d’origine → nouvel emplacement

| Section d’origine | Nouvel emplacement |
|---|---|
| Titre, sous-titre, public, durée, fichier, mention « fictif » | 0A › Objectif et résultat final |
| Objectifs pédagogiques (7) et compétences visées | 0A › Objectif et résultat final › Objectifs pédagogiques |
| Prérequis et consignes d’utilisation | 0A › Prérequis (cases à cocher) |
| Contrôle pratique du poste (6 points, tableau, constat) | Contrôle du poste (25 min) |
| Repères d’interface | Contrôle du poste › Repères d’interface ; Annexe C.2 |
| Fil conducteur et cycle en 6 points | 0A › Cycle IA en 6 temps |
| Configuration de l’IA et confidentialité | 0A › Confidentialité |
| Prompt de cadrage | Annexe A (texte complet) ; renvoi depuis 0B |
| Comment utiliser les données de référence | 0A › Comment lire ce TP › Utiliser les données de référence |
| Registre IA obligatoire (14 colonnes, Texte4/Texte5) | Annexe B |
| Deux demandes de relance | Annexe A |
| Programme | 0B › Programme et durées |
| Scénario métier et acteurs | 0B › Scénario métier et acteurs |
| Données BI de référence | Annexe C.1 |
| Étapes 1 à 5 | Partie 2 |
| Étapes 6 à 9 | Partie 3 |
| Étapes 10 à 13 | Partie 4 |
| Fiches US01 à US12 et principes d’ordonnancement | Étape 4, rubrique 7 ; récapitulatif en Annexe C.4 |
| US13 et critères de taux d’atteinte | Étape 10, rubrique 7 ; Annexe C.4 |
| Suivi J0–J10 | Étape 8, rubrique 7 ; Annexe C.5 |
| Tableau TP1/TP2 | Étape 1, rubrique 2 |
| DoD (10 points) | Étape 12, rubrique 7 ; Annexe C.6 |
| Dossier participant (9 livrables) et auto-contrôle IA | Annexe E |
| Registres participant (7) | Annexe B |
| Checklist finale | Annexe E › Checklist finale |
| Limites du support | Annexe H |
| Glossaire français / anglais | Annexe F |
| Sources S1 à S9 | Annexe H |
| Liens PSPO I (13 étapes) | Rubrique 11 de chaque étape ; Annexe G |
| Défauts à rejeter, erreurs fréquentes, questions de réflexion | Rubriques 9 et 11 de chaque étape |
| « Trace IA supplémentaire… » (13 occurrences) | Rubrique 8 de chaque étape |

### I.2 Contrôle des valeurs et éléments

| Élément du source | Présent | Emplacement |
|---|---|---|
| CA cumul 90 000 TND | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Coût d’achat cumul 63 000 TND | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Marge cumul 27 000 TND | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Taux de marque 30 % | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| 47 points (backlog initial) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| 50 points (après US13) | oui | Partie 4 — S’adapter et inspecter › Étape 10 — Simuler un changement de priorité en cours de sprint |
| Capacité PBI 72 h | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| 52 h (Sprint 1) | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| 48 h à J3 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| 42 h (J4) | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| 31 h à J5 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| 13 points Done en S1 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| S2 : 8 points Done, US06 non conforme | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| 34 Done uniques | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| 16 restants | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| Moyenne 14 min (S3) | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| Nord 85,71 % / Sud 80 % / global 83,33 % | oui | Partie 4 — S’adapter et inspecter › Étape 10 — Simuler un changement de priorité en cours de sprint |
| Dates Sprint 02/11, 16/11, 30/11 | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| Dernier jour ouvré S1 : 13/11 | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| Texte1 (ID PBI) | oui | Partie 1 — Découvrir Microsoft Project › Étape 0 — Prise en main de Microsoft Project |
| Texte2 (Obstacle) | oui | Partie 2 — Préparer le produit › Étape 5 — Organiser le Product Backlog dans Microsoft Project |
| Texte3 (Résultat DoD) | oui | 0B — Cadre du TP › Ce que je saisis, ce que Project calcule |
| Texte4 (Référence IA) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Texte5 (Décision IA) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Nombre1 (Points) | oui | 0B — Cadre du TP › Ce que je saisis, ce que Project calcule |
| Nombre2 (Ordre backlog) | oui | 0B — Cadre du TP › Ce que je saisis, ce que Project calcule |
| Nombre3 (Reste estimé h) | oui | 0A — Avant de commencer › Comment lire ce TP |
| RELANCE DE CONTRÔLE | oui | Partie 2 — Préparer le produit › Étape 1 — Comprendre le passage du prédictif à Scrum |
| RELANCE APRÈS SAISIE | oui | Annexe A — Prompts : index, cadrage et relances › Relance après saisie |
| PASSE 1 / PASSE 2 (IA-13) | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| Référence IA-01 | oui | Partie 2 — Préparer le produit › Étape 1 — Comprendre le passage du prédictif à Scrum |
| Référence IA-02 | oui | Partie 2 — Préparer le produit › Étape 2 — Créer le projet Scrum dans Microsoft Project |
| Référence IA-03 | oui | Partie 2 — Préparer le produit › Étape 3 — Définir le produit et son objectif |
| Référence IA-04 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Référence IA-05 | oui | Partie 2 — Préparer le produit › Étape 5 — Organiser le Product Backlog dans Microsoft Project |
| Référence IA-06 | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| Référence IA-07 | oui | Partie 3 — Vivre un Sprint › Étape 7 — Réaliser la Sprint Planning |
| Référence IA-08 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| Référence IA-09 | oui | Partie 3 — Vivre un Sprint › Étape 9 — Suivre et visualiser l’avancement |
| Référence IA-10 | oui | Partie 4 — S’adapter et inspecter › Étape 10 — Simuler un changement de priorité en cours de sprint |
| Référence IA-11 | oui | Partie 4 — S’adapter et inspecter › Étape 11 — Organiser la Sprint Review et la Sprint Retrospective |
| Référence IA-12 | oui | Partie 4 — S’adapter et inspecter › Étape 12 — Comprendre l’Increment et la Definition of Done |
| Référence IA-13 | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| US01 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US02 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US03 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US04 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US05 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US06 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US07 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US08 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US09 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US10 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US11 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US12 (fiche) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US13 (étape 10) | oui | Partie 4 — S’adapter et inspecter › Étape 10 — Simuler un changement de priorité en cours de sprint |

### I.3 Incohérences corrigées et modifications du source

- Nom de fichier du prompt IA-02 : `NOVALIS_BI_Scrum_TP2.mpp` remplacé par `NOVALIS_BI_Scrum_IA_TP2.mpp` (seule modification d’un prompt).
- Chemin « Gérer les sprints » : « Projet > Gérer les sprints ou Sprints > Gérer » remplacé par « Sprints > Gérer (Manage Sprints) » à l’étape 6. Le contrôle du poste conserve les deux chemins pour relever celui qui s’affiche.
- « selon l’interface » (étape 2, Enregistrer sous) et « Ce chemin peut varier » (étape 3) retirés du chemin principal et renvoyés dans « Si ça ne marche pas ».
- Archives manquantes nommées : `NOVALIS_BI_Scrum_01b_Fin_S1.mpp` et `NOVALIS_BI_Scrum_03_Fin_S3.mpp` (noms proposés, absents du TP source).
- Dates de Sprint : précision ajoutée à l’étape 6 (15/11, 29/11 et 13/12 tombent un dimanche ; dernier jour ouvré du Sprint 1 : 13/11).
- Étape 10 : sens du calcul explicité (réel ÷ objectif). Les valeurs du TP sont inchangées.
- « Trace IA supplémentaire… » : placée dans la rubrique 8 de chaque étape, au lieu d’être insérée dans « Résultat attendu ».
- DoD : l’étape 7 la citait avant l’étape 12 ; un renvoi « à lire avant de commencer » et une copie en Annexe C ont été ajoutés.
- Faute « Verifier » corrigée en « Vérifier » dans les contrôles humains.
- Durée « une journée » du source : complétée par un découpage conseillé en deux journées.
- Prefixe des archives (`NOVALIS_BI_Scrum_00_Backlog.mpp`, `_01_Planning_S1`, `_02_Fin_S2`) conservé tel que dans le source : il ne contient pas « IA_TP2 », contrairement au fichier principal.
- Fichier Excel joint : 6 intitulés de colonnes diffèrent du TP source (voir Annexe B) ; aucun n’a été tranché.