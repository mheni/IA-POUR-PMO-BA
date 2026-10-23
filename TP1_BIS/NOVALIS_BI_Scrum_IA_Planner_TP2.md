# TP 2 — NOVALIS Distribution BI — Scrum + IA dans Microsoft Planner Premium + Copilot (version débutant)

Version « Planner Premium + Copilot » du TP source « NOVALIS Distribution BI — Scrum + IA dans Microsoft Project 2609 ». Le Scrum reste identique. Seuls l’outil, les chemins, le stockage des données et le rôle de l’IA changent.

## Sommaire
- [0A — Avant de commencer](#0a--avant-de-commencer)
- [Partie 1 — Découvrir Microsoft Planner](#partie-1--découvrir-microsoft-planner)
  - [Étape 0 — Prise en main de Planner et test des entrées d’IA](#étape-0--prise-en-main-de-planner-et-test-des-entrées-dia)
- [Contrôle du poste (25 min)](#contrôle-du-poste-25-min)
- [0B — Cadre du TP](#0b--cadre-du-tp)
- [Partie 2 — Préparer le produit](#partie-2--préparer-le-produit)
  - [Étape 1 — Comprendre le passage du prédictif à Scrum](#étape-1--comprendre-le-passage-du-prédictif-à-scrum)
  - [Étape 2 — Créer le plan Scrum dans Microsoft Planner](#étape-2--créer-le-plan-scrum-dans-microsoft-planner)
  - [Étape 3 — Définir le produit et son objectif](#étape-3--définir-le-produit-et-son-objectif)
  - [Étape 4 — Construire le Product Backlog](#étape-4--construire-le-product-backlog)
  - [Étape 5 — Organiser le Product Backlog dans Planner](#étape-5--organiser-le-product-backlog-dans-planner)
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

### Objectif et résultat final

Ce TP vous apprend à construire, contrôler et adapter un planning Scrum dans Microsoft Planner Premium, avec l’aide de Copilot. Le Scrum reste identique au TP Project. Seuls l’outil, les chemins de menu, le stockage des données et le rôle de l’IA changent.

À la fin, vous disposez d’un plan Planner Premium organisé en compartiments (Backlog et trois Sprints), de treize traces IA (IA-01 à IA-13) et d’un registre Excel. Le détail des livrables figure en [Annexe E](#annexe-e--checklist-finale-et-livrables).

Support participant — Planner Premium + Copilot — adaptation du TP source « Version enrichie IA du 22 octobre 2026 ».

Public : consultants, Product Owners, chefs de projet, PMO, PMP et AMOA.

Durée : voir le programme en [0B](#0b--cadre-du-tp). Le TP source durait 7 heures hors pauses (contrôle initial de 25 minutes + 13 étapes à 6 h 35). La version débutant Planner est découpée en quatre demi-journées (environ 14 h 25, indicatif, hors pauses).

Nom du plan : `NOVALIS_BI_Scrum_IA_Planner_TP2`.

Toutes les personnes, transactions, capacités, estimations et observations sont fictives et pédagogiques. Ce TP ne développe pas réellement un produit BI : il simule son pilotage et l’inspection de ses résultats. Un plan Planner représente le travail ; il n’est pas l’Increment BI.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint. L’IA propose ; les participants contrôlent et décident.

#### Objectifs pédagogiques

L’objectif principal est de construire et de faire évoluer le planning avec l’aide de l’IA, tout en démontrant les contrôles humains et le résultat dans Project. Vous devrez savoir :

1. Préparer un contexte et un prompt exploitables pour la planification.
2. Faire produire vision, backlog, critères, scénarios de Sprint et plans de travail.
3. Distinguer faits, hypothèses, recommandations et informations manquantes.
4. Détecter calculs faux, dépendances artificielles, dates inventées et confusions Scrum.
5. Transformer une sortie IA validée en titres, descriptions, listes de contrôle, étiquettes et compartiments dans Planner.
6. Faire analyser un état d’avancement réellement exporté ou recopié du plan.
7. Comparer des adaptations et conserver la décision humaine dans un registre IA.

À l’issue du TP, vous saurez distinguer approche prédictive et empirique, créer un plan organisé en Sprints (compartiments), définir produit et objectif, identifier utilisateurs et besoins, rédiger et ordonner des stories, préparer un Sprint selon sa capacité, suivre le travail et les obstacles, traiter un changement, préparer Review et Retrospective, appliquer une Definition of Done et inspecter les résultats sur plusieurs sprints.

Les liens conceptuels avec PSPO I restent signalés dans les étapes ; l’entraînement aux questions de certification est séparé.

### Prérequis

Cochez chaque ligne avant de commencer. Elles adaptent les prérequis du TP source à Planner.

- [ ] Compte professionnel avec les licences Microsoft 365 Copilot et Planner Premium (à vérifier sur votre poste).
- [ ] Droit de créer un plan Premium (à vérifier sur votre poste) ; Excel recommandé pour les registres et graphiques, ou tableaux papier.
- [ ] Accès à Copilot (chat général), à Copilot dans le plan (aperçu / à vérifier) et au Planner Agent. Aucun accès de l’IA à votre plan n’est présumé en dehors de ces deux entrées. Préparer un dossier de traces et vérifier que les données fictives peuvent être utilisées.
- [ ] Le TP1 en Project n’est plus requis : le tableau TP1/TP2 du support suffit.
- [ ] Aucun développement, aucune programmation, aucun accès à une base BI réelle requis.
- [ ] Connaître les actions de base : l’Étape 0 vous les fait pratiquer (créer une tâche, ajouter une étiquette, enregistrer).
- [ ] Les données du présent support suffisent pour réaliser les manipulations ; un classeur peut être construit à partir des tableaux fournis.

> ⚠️ Attention — Le support s’appuie sur la documentation officielle ; aucune exécution sur votre poste n’est revendiquée. Copilot dans le plan est décrit comme un aperçu (preview) dans la documentation Microsoft : à vérifier sur votre poste. Les traductions et l’emplacement des commandes peuvent varier. Les sprints natifs de Planner Premium ne sont pas présumés. [S11, S12, S14]

### Comment lire ce TP

Le TP contient une Étape 0 de prise en main, puis 13 étapes. Chaque étape suit le même plan en 11 rubriques :

1. Ce que vous allez obtenir.
2. Pourquoi cette étape.
3. À faire dans Planner (actions numérotées).
4. Avec l’IA (entrée utilisée : Copilot, Copilot dans le plan ou Planner Agent).
5. Contrôles avant saisie (dont le contrôle après création par Copilot ou l’agent).
6. Passage de la réponse IA à Planner.
7. Données à saisir.
8. Vérifier le résultat et trace IA à conserver.
9. Erreurs fréquentes et propositions défectueuses à rejeter.
10. Si ça ne marche pas.
11. Pour réfléchir et lien PSPO I (optionnel).

Chaque chemin de menu et chaque capacité de Planner ou de Copilot est marqué « à vérifier sur votre poste ». Les emplacements `[CAPTURE À INSÉRER : …]` indiquent où ajouter une copie d’écran.

Les champs du TP source gardent leur alias, par exemple « Nombre3 (Reste estimé h) ». Ils n’existent pas tous dans Planner : la correspondance figure en [Annexe C](#annexe-c--données-de-référence). Les heures restantes, le burndown, la Référence IA et la Décision IA restent dans Excel.

Qualité maximale en anglais : testez d’abord vos prompts en français ; si la qualité est insuffisante, adaptez-les (voir l’Étape 0).

Règle de données : Copilot dans le plan lit le plan. N’entrez dans Planner que l’état du moment ; la table J0–J10 reste dans Excel.

#### Utiliser les données de référence

Pour chaque étape : produire d’abord une proposition IA à partir des entrées indiquées, puis seulement la confronter aux tableaux de référence. Ces tableaux servent à la normalisation et à la simulation suivante, pas de preuve que l’IA a trouvé la bonne réponse.

À l’étape 4, l’IA propose les formulations et critères ; les participants normalisent ensuite les 12 PBI avec les fiches du support. Les points restent illustratifs et sont validés dans le jeu de rôle Developers. À l’étape 7, comparer les scénarios, puis retenir US01/02/03 pour utiliser le suivi fourni. Si une autre sélection est conservée, créer un autre jeu de suivi et ne pas réutiliser artificiellement les chiffres du scénario de référence.

Ne pas fournir prématurément les résultats des Sprints 2 et 3 à l’assistant : ce serait lui donner le résultat à expliquer au lieu de lui faire analyser la situation disponible. Pour les exercices d’analyse de J5, ne transmettre que J0 à J5. Si la conversation contient déjà des données futures, ouvrir une nouvelle conversation avec le prompt de cadrage et le seul état du moment : c’est notamment nécessaire pour rejouer l’urgence J4 après avoir étudié la fin du Sprint.

### Code couleur

| Pastille | Signification | Où la trouver |
|---|---|---|
| 🟦 | Planner : actions et saisies | Rubriques 3, 6 et 7 de chaque étape |
| 🟩 | Scrum : concept à comprendre | Rubriques 2 et 11 de chaque étape |
| 🟨 | IA : prompt, contrôle et décision | Rubriques 4 et 5 de chaque étape |

### Cycle IA en 6 temps

L’objectif central de ce TP est d’utiliser une IA comme assistant de construction et de contrôle du planning Scrum dans Microsoft Planner Premium (avec Copilot). Il ne s’agit ni de demander à l’IA de développer la BI, ni de saisir passivement un planning déjà fourni.

À chaque étape, appliquer le même cycle :

1. Fournir le contexte et les seules données disponibles à ce moment.
2. Exécuter le prompt et conserver la sortie brute.
3. Vérifier les omissions, hypothèses, calculs et responsabilités.
4. Accepter, corriger ou rejeter les propositions en justifiant la décision.
5. Reporter uniquement la version validée dans Planner ou dans le registre Excel approprié.
6. Vérifier le résultat dans Planner et, si nécessaire, renvoyer les données observées à l’IA.

L’IA propose ; les participants contrôlent et décident ; Planner représente le planning ; les calculs d’heures restantes et le burndown restent dans Excel. Les estimations du scénario restent des hypothèses pédagogiques. Aucun indicateur ni statut d’outil ne remplace une preuve de qualité.

### Confidentialité

Respectez cette règle à chaque prompt : n’envoyez à l’IA que des données fictives et des extraits sélectionnés.

- Utiliser uniquement les entrées d’IA autorisées par l’organisation : Copilot (chat général), Copilot dans le plan et Planner Agent.
- Ne pas supposer la présence de Copilot dans le plan ni du Planner Agent : vous les testez à l’étape 0. Copilot (chat général) ne voit pas votre plan.
- Transmettre des extraits textuels ou tableaux sélectionnés, pas de données réelles sensibles.
- Une même conversation peut conserver le contexte, mais chaque nouvelle étape doit fournir l’état à jour et les décisions validées.
- Ne pas demander de SQL, de code, de mesures BI ni de scripts d’automatisation : le travail porte sur la planification.
- Si aucun assistant n’est accessible, utiliser les données de référence et documenter une analyse critique manuelle ; l’usage effectif d’un assistant reste alors à pratiquer ultérieurement.

> ⚠️ Le prompt de cadrage se trouve en [Annexe A](#annexe-a--prompts--index-cadrage-et-relances). Exécutez-le une seule fois dans Copilot (chat général), avant l’étape 1.

## Partie 1 — Découvrir Microsoft Planner

> **Sigles de cette partie** : IA = intelligence artificielle ; PBI = Product Backlog Item (élément du Product Backlog) ; US = User Story ; PSPO I = Professional Scrum Product Owner I ; TP = travaux pratiques.

> Cette partie est une addition de la version Planner : elle n’existe pas dans le TP source. Elle prépare les débutants aux gestes de base et teste les entrées d’IA.

### Étape 0 — Prise en main de Planner et test des entrées d’IA

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Demi-journée |
|---|---|---|
| Absente du TP source | 90 min | 1 |

**Ordre de travail** : Planner d’abord (rubrique 3), puis les tests IA (rubrique 4).

#### 1. Ce que vous allez obtenir

Vous apprenez le vocabulaire et les gestes de base de Planner dans un plan d’essai. Vous testez ensuite les trois entrées d’IA. Résultat attendu : un plan d’essai avec compartiments, tâches, étiquette, liste de contrôle, sous-tâche et progression, et un tableau « résultat des tests IA » rempli.

#### 2. Pourquoi cette étape

🟩 Les étapes suivantes supposent que vous savez créer une tâche, une étiquette et une liste de contrôle. Cette étape vous les fait pratiquer sans risque, hors du plan du TP. Elle vérifie aussi ce que Copilot et le Planner Agent font réellement sur votre poste.

| Terme | Définition simple | Où le retrouver dans le TP |
|---|---|---|
| Plan | Ensemble des tâches d’un projet dans Planner. Le TP utilise un plan Premium (à vérifier sur votre poste). | Étape 2 |
| Compartiment (bucket) | Colonne qui regroupe des tâches. Le TP en fait un « Backlog (aucun sprint) » et trois Sprints. | Étapes 4 à 6 |
| Tâche | Unité de travail. Un PBI (Product Backlog Item) devient une tâche. | Étapes 4 et 5 |
| Étiquette (label) | Marque colorée sur une tâche : Bloqué, Conforme, Non conforme, À vérifier. | Étapes 5, 8 et 12 |
| Liste de contrôle (checklist) | Cases à cocher dans une tâche. Une case par critère. | Étapes 4 et 5 |
| Sous-tâche | Tâche détaillée rattachée à une tâche, par exemple T-US01-1. | Étape 7 |
| Description | Zone de texte libre de la tâche : formulation, valeur, contraintes, preuves. | Étapes 4 et 5 |
| Progression | Avancement de la tâche. « À vérifier » n’est pas une progression : c’est une étiquette. | Étapes 8 et 12 |
| Vue Grille | Liste des tâches en lignes et colonnes. | Étapes 5 et 9 |
| Vue Tableau | Compartiments en colonnes, tâches en cartes. | Étapes 6 à 8 |
| Vue Planification | Vue par dates. Le TP n’impose aucune date d’échéance sur les PBI. | Étape 6 |
| Vue Graphiques | Indicateurs sur le plan. À vérifier ce qu’elle affiche réellement. | Étape 9 |
| Sprint | Événement de durée fixe, d’un mois au plus. Dans ce TP, un Sprint est représenté par un compartiment. | Étape 6 |
| Carte | Représentation d’une tâche dans la vue Tableau. | Étapes 5 et 8 |
| Copilot (chat général) | Assistant pour analyser et rédiger. Il ne voit pas votre plan. | Étapes 1, 3, 4, 7, 10, 11, 12 |
| Copilot dans le plan | Copilot ouvert dans un plan Premium (aperçu / à vérifier) : génère compartiments, tâches, sous-tâches, objectifs. | Étapes 3 à 7, 10 |
| Planner Agent | Agent dans Copilot : crée ou modifie des tâches par cartes à approuver. Limite retenue : nom, progression, dates, priorité, nom du plan. | Étapes 8, 9, 13 |

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action de cette étape est à vérifier sur votre poste. Les noms de menus peuvent varier selon la langue et la version.

1. Ouvrez Planner (application web ou Teams) (à vérifier sur votre poste).
2. Créez un plan d’essai nommé « Essai prise en main » (nom libre) (à vérifier sur votre poste).
3. Créez deux compartiments : « Compartiment 1 » et « Compartiment 2 » (à vérifier sur votre poste).
4. Créez trois tâches : « Tâche A », « Tâche B », « Tâche C » (à vérifier sur votre poste).
5. Ajoutez une étiquette nommée « Test » à « Tâche A » (à vérifier sur votre poste).
6. Ouvrez « Tâche B » : écrivez une phrase dans la description, ajoutez une liste de contrôle de deux cases et une sous-tâche (à vérifier sur votre poste).
7. Changez la progression de « Tâche C », puis remettez-la à sa valeur initiale (à vérifier sur votre poste).
8. Glissez « Tâche A » du Compartiment 1 vers le Compartiment 2 (à vérifier sur votre poste).
9. Ouvrez successivement les vues Grille, Tableau, Planification et Graphiques, et notez ce que chacune montre (à vérifier sur votre poste).
10. Fermez le plan, rouvrez-le, puis vérifiez que tout est conservé (à vérifier sur votre poste).

> [CAPTURE À INSÉRER : vue Tableau du plan d’essai avec deux compartiments, trois tâches, l’étiquette « Test » sur Tâche A]

> [CAPTURE À INSÉRER : fenêtre de détail de « Tâche B » montrant description, liste de contrôle de deux cases et sous-tâche]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : test des trois entrées d’IA — Copilot (chat général), Copilot dans le plan (aperçu / à vérifier) et Planner Agent.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Test 1 — Copilot (chat général)

Prompts de test (ajout de la version Planner, absents du TP source) :

```text
Explique en trois phrases ce qu’est un compartiment dans un plan Planner.
Si tu n’es pas certain d’une fonction, dis-le au lieu de l’affirmer.
```

##### Test 2 — Copilot dans le plan (aperçu / à vérifier)

```text
Propose trois tâches pour organiser une réunion d’équipe.
N’ajoute aucune date d’échéance et ne marque aucune tâche comme terminée.
```

##### Test 3 — Planner Agent

```text
Dans le plan « Essai prise en main », renomme « Tâche A » en « Tâche A bis ».
```

Dans un second temps, demandez à l’agent d’ajouter une étiquette ou une description. Relevez ce que l’agent propose réellement : la limite retenue (nom, progression, dates, priorité, nom du plan) est à vérifier sur votre poste.

##### Langue des prompts

Qualité maximale en anglais : testez d’abord un prompt en français ; si la qualité est insuffisante, adaptez-le.

##### Sortie attendue

Un tableau « résultat des tests IA » complété, avec des constats et non des suppositions.

#### 5. Contrôles humains à faire avant de saisir

- [ ] Vous travaillez dans le plan d’essai, pas dans le plan du TP.
- [ ] Aucune donnée NOVALIS réelle n’est saisie.
- [ ] Vous avez relu chaque carte proposée par l’agent avant de l’approuver.
- [ ] Après création par Copilot ou l’agent : nombre de tâches vérifié.
- [ ] Après création par Copilot ou l’agent : aucun doublon.
- [ ] Après création par Copilot ou l’agent : aucune date inventée.
- [ ] Après création par Copilot ou l’agent : aucun point converti en jours.
- [ ] Après création par Copilot ou l’agent : aucune tâche marquée terminée sans preuve.

#### 6. Passage de la réponse IA à Planner

Dans cette étape, rien n’est reporté dans le plan du TP. Notez les constats dans le tableau ci-dessous. Supprimez les tâches créées par l’IA dans le plan d’essai si elles vous gênent.

#### 7. Données à saisir

Complétez ce tableau « résultat des tests IA » (à compléter) :

| Entrée d’IA | Disponible (oui / non) | A créé ou modifié du contenu dans un plan Premium (oui / non) | Carte à approuver affichée (oui / non) | Langue testée | Remarque |
|---|---|---|---|---|---|
| Copilot (chat général) | À compléter | Non attendu | – | À compléter | À compléter |
| Copilot dans le plan (aperçu / à vérifier) | À compléter | À compléter | À compléter | À compléter | À compléter |
| Planner Agent | À compléter | À compléter | À compléter | À compléter | Ce que l’agent propose réellement : à compléter |

#### 8. ✅ Vérifier le résultat

- [ ] Le plan d’essai contient deux compartiments, trois tâches, une étiquette, une liste de contrôle, une sous-tâche.
- [ ] Les quatre vues ont été ouvertes et décrites.
- [ ] Les trois entrées d’IA sont testées et le tableau des résultats est complété.
- [ ] Le plan de repli est noté : si l’agent n’écrit pas dans un plan Premium, les étapes 8 et 13 utiliseront Copilot dans le plan ou la saisie manuelle.
- [ ] Trace à conserver : constats du test dans le registre Excel, sur une ligne « Étape 0 — test » (hors des références IA-01 à IA-13).

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Faites vos tests dans le plan d’essai uniquement. Évitez d’approuver une carte sans l’avoir lue.

> ⚠️ Proposition défectueuse à rejeter : « J’ai créé le plan et tout marqué terminé » : une progression n’est pas une preuve, et ce test ne demande aucune tâche terminée.

#### 10. Si ça ne marche pas

- **Copilot dans le plan est absent.** Vérifiez votre licence et le type de plan (Premium). Notez le constat et faites contrôler le déploiement par l’administrateur.
- **Le Planner Agent n’écrit pas dans un plan Premium.** Notez-le dans le tableau. Les étapes 8 et 13 utiliseront Copilot dans le plan ou la saisie manuelle.
- **Un menu porte un autre nom.** Les traductions peuvent varier. Notez l’intitulé réellement observé et poursuivez avec le chemin le plus proche.

#### 11. Pour réfléchir et lien PSPO I

- Quelle différence faites-vous entre une progression et une étiquette « À vérifier » ?
- Pourquoi relever ce que l’agent propose réellement avant de lui confier des mises à jour ?

> 🟩 **Lien PSPO I (optionnel)** — Aucun outil particulier n’est prescrit par Scrum. [S3]

#### Auto-évaluation de l’Étape 0

- [ ] Je sais expliquer plan, compartiment, tâche, étiquette, liste de contrôle, sous-tâche et progression.
- [ ] Je sais passer d’une vue à l’autre (Grille, Tableau, Planification, Graphiques).
- [ ] Je sais ce que chaque entrée d’IA a fait sur mon poste.

## Contrôle du poste (25 min)

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Demi-journée |
|---|---|---|
| 25 min | 40 min | 1 |

Cochez chaque contrôle, puis complétez le tableau. Ce bloc adapte le contrôle du TP source à Planner ; l’étape 2 reprendra seulement le résultat.

- [ ] 1. Ouvrir Planner et relever le type de compte (professionnel) et les licences Microsoft 365 Copilot et Planner Premium (à vérifier sur votre poste).
- [ ] 2. Relever la langue de l’interface de Planner et de Copilot (à vérifier sur votre poste).
- [ ] 3. Créer un plan Premium d’essai : repérer qu’il s’agit bien d’un plan Premium (à vérifier sur votre poste).
- [ ] 4. Relever si des sprints natifs sont présents ou absents. Ne pas les utiliser dans ce TP : les Sprints sont des compartiments (à vérifier sur votre poste).
- [ ] 5. Repérer les vues Grille, Tableau, Planification, Graphiques, et les fonctions Objectifs et Copilot dans le plan (à vérifier sur votre poste).
- [ ] 6. Créer une tâche test, la glisser d’un compartiment à l’autre, fermer et rouvrir le plan (à vérifier sur votre poste).

| Contrôle | Valeur à relever |
|---|---|
| Compte et licences (Copilot, Planner Premium) | À compléter |
| Langue de l’interface | À compléter |
| Type de plan (Premium) | À compléter |
| Sprints natifs présents / absents | À compléter |
| Vues et fonctions (Grille, Tableau, Planification, Graphiques, Objectifs, Copilot dans le plan) | Intitulés réellement observés |
| Glisser-déposer entre compartiments | Fonctionne / ne fonctionne pas |

Si une fonction manque, consignez le constat et faites contrôler le déploiement par l’administrateur. Ne pas annoncer une manipulation non effectuée. Pour poursuivre temporairement, vous pouvez simuler le suivi dans Excel, mais cela ne remplace pas la validation des compétences dans Planner.

> [CAPTURE À INSÉRER : écran du plan Premium d’essai montrant les vues disponibles dans la barre de vues]

### Repères d’interface Planner

Ces repères viennent des noms de vues et de fonctions cités dans la documentation Microsoft [S11, S12, S14]. Aucun chemin de menu n’est garanti : tout est à vérifier sur votre poste.

| Fonction | Repère | Statut |
|---|---|---|
| Plan Premium | Créer un nouveau plan | À vérifier sur votre poste |
| Compartiments | Ajouter un compartiment dans le plan | À vérifier sur votre poste |
| Vues | Grille, Tableau, Planification, Graphiques | À vérifier sur votre poste |
| Objectifs | Fonction Objectifs (Goals) d’un plan Premium | À vérifier sur votre poste |
| Copilot dans le plan | Copilot ouvert dans le plan (aperçu) | À vérifier sur votre poste |
| Planner Agent | Agent dans Copilot, cartes à approuver | À vérifier sur votre poste |
| Déplacement entre compartiments | Glisser-déposer | À vérifier sur votre poste |

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

Les données chiffrées de référence (CA, coût, marge, répartitions) figurent en [Annexe C](#annexe-c--données-de-référence). Elles servent à simuler les vérifications ; ne les saisissez pas comme tâches dans Planner.

### Programme et durées

La colonne « Durée d’origine » reprend le TP source. La colonne « Durée conseillée débutant (indicatif) » ajoute environ 30 % sur les étapes de saisie manuelle. Les lignes marquées « ajout » n’existent pas dans le TP source. Toutes les durées sont indicatives et hors pauses.

| Bloc | Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---:|---:|---:|
| Avant de commencer (0A et 0B) — ajout | – | 20 min | 1 |
| Contrôle du poste | 25 min | 40 min | 1 |
| Étape 0. Prise en main de Planner et test IA — ajout | – | 90 min | 1 |
| 1. Du prédictif à Scrum | 20 min | 30 min | 1 |
| 2. Créer le projet | 25 min | 40 min | 1 |
| Reprise demi-journée 2 — ajout | – | 5 min | 2 |
| 3. Définir le produit | 20 min | 30 min | 2 |
| 4. Construire le backlog | 45 min | 80 min | 2 |
| 5. Organiser le backlog dans Project | 35 min | 65 min | 2 |
| 6. Configurer les sprints | 30 min | 60 min | 2 |
| Reprise demi-journée 3 — ajout | – | 5 min | 3 |
| 7. Sprint Planning | 40 min | 70 min | 3 |
| 8. Travail quotidien | 35 min | 65 min | 3 |
| 9. Visualisation | 30 min | 45 min | 3 |
| Reprise demi-journée 4 — ajout | – | 5 min | 4 |
| 10. Changement de priorité | 25 min | 45 min | 4 |
| 11. Review et Retrospective | 30 min | 40 min | 4 |
| 12. Increment et DoD | 25 min | 35 min | 4 |
| 13. Inspection sur trois sprints | 35 min | 65 min | 4 |
| Checklist finale (Annexe E) — ajout | – | 30 min | 4 |
| **Total** | **420 min (25 + 395)** | **865 min (14 h 25)** | |

Les 13 étapes d’origine totalisent 395 minutes, soit 6 h 35. Avec le contrôle de 25 minutes, le total d’origine est de 420 minutes, soit 7 heures hors pauses.

### Découpage en quatre demi-journées

| Demi-journée | Contenu | Durée conseillée (indicatif, hors pauses) | Point d’arrêt |
|---|---|---:|---|
| 1 | Avant de commencer, Étape 0, Contrôle du poste, Étapes 1 et 2 | 220 min (3 h 40) | Plan créé et test IA relevé |
| 2 | Reprise, Étapes 3 à 6 | 240 min (4 h) | Compartiments créés |
| 3 | Reprise, Étapes 7 à 9 | 185 min (3 h 05) | Sprint 1 suivi |
| 4 | Reprise, Étapes 10 à 13, Checklist finale | 220 min (3 h 40) | Bilan fin S3 |

Aucune activité n’est retirée : le découpage répartit seulement le même travail. Chaque point d’arrêt comporte une auto-évaluation à cocher.

### Prompt de cadrage

Le prompt de cadrage s’exécute une seule fois, dans Copilot (chat général), avant l’étape 1. Son texte complet figure en [Annexe A](#annexe-a--prompts--index-cadrage-et-relances). Copiez-le depuis l’annexe.

- [ ] Le prompt de cadrage a été exécuté une fois.
- [ ] Vous redonnez l’état à jour et les décisions validées à chaque nouvelle étape.

### Entrée d’IA par étape

Trois entrées d’IA existent. Copilot (chat général) sert à analyser et rédiger. Copilot dans le plan et le Planner Agent servent à créer ou modifier du contenu dans Planner.

| Étape | Analyse et rédaction | Création ou modification dans Planner (à vérifier sur votre poste) |
|---|---|---|
| 0 | Test des trois entrées | Test de Copilot dans le plan et du Planner Agent |
| 1 | Copilot (chat général) | Aucune |
| 2 | Copilot (chat général), IA-02 | Création manuelle du plan ; résultat du test de l’étape 0 reporté |
| 3 | Copilot (chat général) | Objectif : manuel ou Copilot dans le plan |
| 4 | Copilot (chat général) | Tâches : manuel ou Copilot dans le plan |
| 5 | Copilot dans le plan | Saisie manuelle des étiquettes, descriptions, listes de contrôle |
| 6 | Copilot dans le plan | Compartiments ; création manuelle recommandée |
| 7 | Copilot (chat général) | Sous-tâches : manuel ou Copilot dans le plan ; glisser-déposer manuel |
| 8 | Planner Agent | Progression, nom, dates, priorité ; repli : Copilot dans le plan ou manuel |
| 9 | Planner Agent (questions) et Excel | Aucune ; courbes dans Excel |
| 10 | Copilot (chat général) | US13 : manuel ou Copilot dans le plan |
| 11 | Copilot (chat général) | Aucune (comptes rendus dans Excel) |
| 12 | Copilot (chat général) | Étiquettes et statut Done : à la main |
| 13 | Planner Agent | Mises à jour ; repli : Copilot dans le plan ou manuel ; glisser-déposer manuel |

> ⚠️ Plan de repli : si le test de l’étape 0 montre que le Planner Agent n’écrit pas dans un plan Premium, les étapes 8 et 13 utilisent Copilot dans le plan, ou la saisie manuelle.

### Schéma du flux Scrum du TP

```text
Backlog (aucun sprint)   Étapes 3 à 5
        |
        v
Planning                 Étapes 6 et 7  (glisser-déposer vers « Sprint 1 (02/11–15/11) »)
        |
        v
Sprint                   Étapes 8 et 9  (suivi ; heures restantes dans Excel) ; étape 10 : changement
        |
        v
Review + Retrospective   Étapes 11 et 12 (Increment, DoD)
        |
        v
Backlog (aucun sprint)   Étape 13 (éléments non Done, puis nouvelle Planning)
```

### Ce que je saisis dans Planner, ce que je garde dans Excel

| Élément | Dans Planner | Dans Excel | Remarque |
|---|---|---|---|
| Titre | « USxx — nom [N pts] » | Colonnes ID PBI et Points | Les points ne sont ni des jours ni des heures |
| Ordre du backlog | Ordre dans le compartiment | Colonne Ordre backlog | 1 = premier |
| Critères | Description + liste de contrôle (une case par critère) | – | Un critère non validé reste une question |
| Sprint | Compartiment « Sprint n (dates) » | Registre Sprints | Déplacement par glisser-déposer manuel |
| Reste estimé | Aucun champ | Colonne Reste estimé h (Nombre3) | Burndown et courbes dans Excel |
| Avancement | Progression | Historique quotidien | « À vérifier » = étiquette, jamais Done |
| Obstacle | Étiquette « Bloqué » + ligne datée dans la description | Colonne Obstacle | – |
| Résultat DoD | Étiquettes « Conforme » / « Non conforme » | Colonne Résultat DoD | La progression n’applique pas la DoD |
| Référence IA / Décision IA | Aucun champ | Registre IA (Texte4, Texte5) | Aucun lien automatique avec l’IA |
| Product Goal, Sprint Goals | Objectifs Planner si présents, sinon description du plan | Registre Produit / Sprints | – |

> ⚠️ Planner représente le planning. Il ne vérifie ni la qualité, ni la valeur, ni la DoD. Les dates du TP figurent dans les noms des compartiments ; aucune date d’échéance n’est saisie sur les PBI.

## Partie 2 — Préparer le produit

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PO = Product Owner ; DoD = Definition of Done ; US = User Story ; PMO = Project Management Office ; PSPO I = Professional Scrum Product Owner I ; TND = dinar tunisien ; HT = hors taxes ; CA = chiffre d’affaires ; KPI = indicateur clé de performance ; TP = travaux pratiques ; TP1 = premier TP (planning prédictif NOVALIS).

### Étape 1 — Comprendre le passage du prédictif à Scrum

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 20 min | 30 min | 1 |

**Ordre de travail** : Planner n’est pas utilisé ; rubrique 3 d’abord, puis IA (rubrique 4).

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

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

1. Lisez le tableau TP1/TP2 de la rubrique 2. (à vérifier sur votre poste)
2. Choisissez une activité technique parmi les trois exemples du prompt (importer les ventes, concevoir un modèle de données, vérifier les KPI) et expliquez le besoin utilisateur qu’elle pourrait servir. (à vérifier sur votre poste)
3. Facultatif : si vous disposez d’une capture du Gantt du TP1, repérez-y une phase, un jalon et un lien. (à vérifier sur votre poste)
4. N’ouvrez pas Planner pour créer des tâches à cette étape. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : tableau TP1/TP2 ou, facultatif, capture du Gantt du TP1 avec une phase, un jalon et un lien]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) (à vérifier sur votre poste).

**Trace** : IA-01

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

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

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Vérifier que tests et intégration ne sont pas repoussés après tous les Sprints ; repérer une vraie valeur utilisateur.
- [ ] Comparer ensuite au tableau TP1/TP2 du support.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : Aucune tâche n’est créée à cette étape.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

À ce stade, ne créez aucune tâche supplémentaire. Conservez le tableau dans le dossier ; lors de la création de US01, ajoutez dans la description une phrase justifiant son orientation utilisateur.

#### 7. Données à saisir

Réponse dans les notes de travail : « importer les ventes » = tâche ; « consulter les ventes mensuelles pour comprendre les variations » = besoin ; « disposer d’une première lecture fiable » = intention de Sprint Goal.

#### 8. ✅ Vérifier le résultat

- [ ] Un tableau comparatif compris et un exemple de tranche fonctionnelle utilisable.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-01 : décision sur la tranche fonctionnelle et une différence expliquée avec vos propres mots.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Erreur : Sprint 1 = spécification, Sprint 2 = construction, Sprint 3 = tests. Correction : intégrer analyse, réalisation et vérifications dans un premier résultat utilisable. Ne pas conclure que le prédictif est toujours inadapté.

> ⚠️ Proposition défectueuse à rejeter : « Sprint 1 : spécifications ; Sprint 2 : développement ; Sprint 3 : tests » : c’est un découpage technique successif, pas une proposition assurant un Increment utilisable par Sprint.

#### 10. Si ça ne marche pas

- **L’IA convertit chaque tâche du TP1 en story.** Relancez avec la RELANCE DE CONTRÔLE (Annexe A) et rappelez la consigne « Ne convertis pas chaque tâche en story ».
- **Vous ne disposez pas du TP1.** Le TP1 en Project n’est plus requis : utilisez le tableau TP1/TP2 et les trois activités du prompt.
- **L’IA propose Sprint 1 : spécifications, Sprint 2 : développement, Sprint 3 : tests.** Rejetez cette proposition (rubrique 9) et demandez une tranche fonctionnelle utilisable.

#### 11. Pour réfléchir et lien PSPO I

- Quelle valeur reçoit Dhirar A si seul un import est terminé ?
- Que peut-on déjà inspecter avec CA, région et classement produits ?

> 🟩 **Lien PSPO I (optionnel)** — Empirisme, valeur et distinction entre artefact et outil. [S3]

---

### Étape 2 — Créer le plan Scrum dans Microsoft Planner

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 25 min | 40 min | 1 |

**Ordre de travail** : IA d’abord (rubrique 4), puis contrôles (5), puis actions dans Planner (3).

#### 1. Ce que vous allez obtenir

**Objectif.** Créer un nouveau fichier autonome à partir de Projet Sprints.

**Résultat attendu.** Un fichier distinct enregistré et rouvert, avec les fonctions natives disponibles identifiées.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Le TP2 n’est ni une nouvelle baseline ni une copie du planning TP1.

🟩 **Notion Scrum.** L’outil rend le travail visible ; il ne définit pas à lui seul Scrum et ne remplace pas les interactions.

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Ouvrez Planner (application web ou Teams). (à vérifier sur votre poste)
2. Créez un nouveau plan Premium nommé « NOVALIS_BI_Scrum_IA_Planner_TP2 ». Choisissez un plan vide : Copilot a déjà été testé à l’étape 0. (à vérifier sur votre poste)
3. Vérifiez que le plan est bien un plan Premium et relevez ce constat dans le tableau « observé sur mon poste ». (à vérifier sur votre poste)
4. Supprimez les éventuels exemples ou tâches d’essai créés automatiquement. (à vérifier sur votre poste)
5. Dans la description du plan, si elle existe, saisissez « NOVALIS BI — simulation pédagogique Scrum ». (à vérifier sur votre poste)
6. Relevez dans le tableau « observé sur mon poste » les vues visibles, la présence de la fonction Objectifs, les sprints natifs présents ou absents, et le résultat des tests IA de l’étape 0. (à vérifier sur votre poste)
7. Fermez le plan, rouvrez-le, puis vérifiez que le nom et la description sont conservés. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : plan Premium créé, avec ses vues visibles et l’indication de la licence]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général), IA-02 ; création/modification : Création manuelle du plan ; résultat du test de l’étape 0 reporté (à vérifier sur votre poste).

**Trace** : IA-02

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Pourquoi utiliser l’IA ici ?

Utiliser l’assistant pour préparer une vérification de configuration, pas lui déléguer des clics ni lui faire inventer une interface.

##### Entrées à fournir

Nom exact du produit, licence si connue, langue de l’interface et fonctions observées pendant le contrôle du poste (tableau « observé sur mon poste »). Joindre un extrait de [S11] ou de [S12], sans supposer que l’IA ouvre une URL.

##### Prompt prêt à copier

> Prompt adapté à Planner (modifications signalées en Annexe I).

```text
Je prépare le plan Planner Premium NOVALIS_BI_Scrum_IA_Planner_TP2.
Informations réellement relevées sur mon poste : [coller la fiche].
Procédure de référence disponible : [coller les repères du support].
Prépare une checklist : action, fonction native vérifiée,
point à contrôler, preuve de réussite.
Prévois des compartiments par défaut ; ne présume aucun sprint natif.
N’invente pas une commande à partir du seul mot Premium ou Copilot.
Ne propose ni conversion du TP1 ni fonction Copilot ou Planner Agent supposée.
Si l’information manque, indique le contrôle nécessaire au lieu de donner
un chemin garanti. Aucun script et aucune date de fin à saisir.
```

##### Sortie attendue

Une checklist compatible avec les observations, avec incertitudes explicitement signalées.

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Comparer chaque chemin au ruban du poste.
- [ ] Rejeter toute affirmation d’ouverture ou de modification automatique du fichier.
- [ ] Ne pas transmettre une capture contenant des données sensibles.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : Le plan est vide : aucune tâche ni aucun compartiment créé par Copilot ou l’agent.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Appliquez vous-même les actions vérifiées de l’étape 2. Fermez puis rouvrez le plan ; complétez le registre avec le constat. Le nom du plan et le début des Sprints (02/11/2026, dans le nom du compartiment de l’étape 6) restent ceux du cas.

#### 7. Données à saisir

Nom du plan : `NOVALIS_BI_Scrum_IA_Planner_TP2` ; début des Sprints au 02/11/2026 (dans le nom du compartiment « Sprint 1 (02/11–15/11) ») ; description du plan « NOVALIS BI — simulation pédagogique Scrum ».

Calendrier du cas : lundi-vendredi sans jour férié spécifique. Il sert à compter les dix jours ouvrés de chaque Sprint ; ce n’est pas un paramètre de Planner.

Tableau « observé sur mon poste » (à compléter) :

| Élément observé | Valeur observée sur mon poste |
|---|---|
| Compte et licences (Copilot, Planner Premium) | À compléter (reprise du Contrôle du poste) |
| Plan Premium créé | Oui / non |
| Vues visibles (Grille, Tableau, Planification, Graphiques, autres) | À compléter |
| Fonction Objectifs | Présente / absente |
| Sprints natifs | Présents / absents |
| Copilot dans le plan (aperçu / à vérifier) | Résultat du test de l’étape 0 |
| Planner Agent écrit dans un plan Premium | Oui / non (résultat du test de l’étape 0) |
| Langue testée et qualité du résultat | À compléter |
| Plan de repli retenu pour les étapes 8 et 13 | Agent / Copilot dans le plan / saisie manuelle |

#### 8. ✅ Vérifier le résultat

- [ ] Un fichier distinct enregistré et rouvert, avec les fonctions natives disponibles identifiées.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-02 : fiche environnement, un contrôle de commande et preuve de réouverture ; aucun faux journal d’exécution IA.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas confondre date de début du projet et début automatique de tous les PBI. L’affectation à un Sprint n’est pas une preuve de capacité. Le calendrier d’un outil de planification ne définit pas à lui seul une timebox Scrum.

> ⚠️ Proposition défectueuse à rejeter : « J’ai créé votre plan Planner et activé Copilot » : à rejeter si l’assistant n’a aucun outil démontrant ces actions.

> ⚠️ Proposition défectueuse propre à Planner : « Votre plan est créé, les sprints natifs sont activés et Copilot est prêt » : à rejeter si vous ne l’avez pas observé. Les Sprints du TP sont des compartiments.

#### 10. Si ça ne marche pas

- **Le plan Premium est introuvable.** Notez le constat et faites contrôler la licence par l’administrateur. Une simulation dans Excel permet de poursuivre, mais ne remplace pas la validation des compétences dans Planner.
- **Une vue ou une fonction manque (Graphiques, Objectifs).** Notez les intitulés réellement observés dans le tableau « observé sur mon poste ». Ne présumez aucune fonction.
- **Le plan ne se retrouve pas après réouverture.** Rouvrez-le depuis Planner, vérifiez le nom et notez le constat.

#### 11. Pour réfléchir et lien PSPO I

- Que prouve le numéro 2609 ?
- Pourquoi vérifier aussi licence, modèle et commandes ?

> 🟩 **Lien PSPO I (optionnel)** — Aucun outil particulier n’est prescrit par Scrum. [S3]

#### Point d’arrêt — fin de la demi-journée 1

Vérifiez que le plan est créé et rouvert, puis cochez votre auto-évaluation.

- [ ] Le tableau « observé sur mon poste » est complété.
- [ ] Je sais ce que fait chaque entrée d’IA sur mon poste (étape 0).
- [ ] Mon registre IA contient IA-01 et IA-02.

---

### Étape 3 — Définir le produit et son objectif

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 20 min | 30 min | 2 |

**Ordre de travail** : IA d’abord. Séquence : l’IA propose, l’équipe discute, puis on retient la référence du support.

#### Reprise de la demi-journée 2

- [ ] J’ai rouvert le plan et retrouvé mon tableau « observé sur mon poste ».
- [ ] Mon registre IA contient IA-01 et IA-02.

#### 1. Ce que vous allez obtenir

**Objectif.** Relier les fonctionnalités à un état futur utile et observable.

**Résultat attendu.** Un registre produit avec limites, utilisateurs, objectif et hypothèses de valeur.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** La préparation actuelle de la première lecture commerciale prendrait 45 minutes : hypothèse fictive à vérifier.

🟩 **Notion Scrum.** La vision décrit une ambition. Le Product Goal décrit l’état futur ciblé et se trouve dans le Product Backlog. Samia L en est redevable pour sa formulation et sa communication. Un seul Product Goal est poursuivi à la fois. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Ouvrez le plan « NOVALIS_BI_Scrum_IA_Planner_TP2 ». (à vérifier sur votre poste)
2. Cherchez la fonction Objectifs du plan. Si elle est présente, créez un objectif dont le titre est le Product Goal retenu. (à vérifier sur votre poste)
3. Si la fonction Objectifs est absente, saisissez le Product Goal dans la description du plan. (à vérifier sur votre poste)
4. Gardez la vision, la valeur et les mesures dans le registre Produit (Excel). (à vérifier sur votre poste)
5. Ne créez aucune tâche « Product Goal » estimée en points. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : objectif Planner (ou description du plan) contenant le Product Goal]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) ; création/modification : Objectif : manuel ou Copilot dans le plan (à vérifier sur votre poste).

**Trace** : IA-03

L’IA propose, l’équipe discute, puis on retient la référence du support.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

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

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Vérifier que le but n’est pas « livrer 12 stories » ; ne pas transformer les 45 minutes en observation prouvée.
- [ ] Discuter le seuil « moins de 15 » avant de voir les résultats.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : Un seul objectif (ou une description de plan) ; aucune tâche Product Goal.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Après discussion, normalisez le registre Produit avec le Product Goal de référence pour la suite. Reportez seulement le résumé dans l’objectif Planner (si présent) ou dans la description du plan ; ne créez pas de tâche Product Goal estimée en points.

#### 7. Données à saisir

- Produit : service BI interne d’analyse des ventes nettes HT et de la rentabilité.
- Vision : « Des décisions commerciales plus rapides à partir de chiffres partagés et explicables ».
- Product Goal : « Permettre à la direction et aux responsables régionaux de préparer leur revue commerciale en moins de 15 minutes, avec un accès autonome aux ventes, à la marge et aux écarts entre périodes, sans ressaisie et sur des chiffres réconciliés du pilote ».
- Valeur : effort de préparation réduit, chiffres partagés, confiance accrue ; pas de promesse de hausse du CA attribuable au seul outil.
- Mesures : temps observé pour cinq pilotes, ressaisies et ambiguïtés ; préciser les conditions d’essai.
- Besoins : CA fiable, lecture régionale, contributeurs, puis rentabilité et comparaisons.

#### 8. ✅ Vérifier le résultat

- [ ] Un registre produit avec limites, utilisateurs, objectif et hypothèses de valeur.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-03 : deux formulations, choix du PO simulé, justification et statut des mesures.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

« Livrer 12 stories » est une mesure de production, pas un résultat utilisateur. Un indicateur moyen ne prouve pas un bénéfice pour tous.

> ⚠️ Proposition défectueuse à rejeter : « Le produit augmentera les ventes de 20 % en trois Sprints » : chiffre inventé et attribution causale non établie.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai créé l’objectif Planner avec une échéance au 30/11 » : date inventée, aucune échéance n’est donnée pour le Product Goal.

#### 10. Si ça ne marche pas

- **La fonction Objectifs est absente.** Saisissez le Product Goal dans la description du plan et gardez le registre Produit.
- **L’IA propose une hausse de CA chiffrée.** Rejetez-la (rubrique 9) : les 45 minutes sont une hypothèse à vérifier.
- **Le but proposé ressemble à « livrer 12 stories ».** Demandez un résultat utilisateur observable, pas une mesure de production.

#### 11. Pour réfléchir et lien PSPO I

- Si les cartes sont toutes terminées mais que personne n’utilise le produit, quel objectif est réellement atteint ?

> 🟩 **Lien PSPO I (optionnel)** — Product Goal, valeur et collaboration avec les parties prenantes. [S3, S4]

---

### Étape 4 — Construire le Product Backlog

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 45 min | 80 min | 2 |

**Ordre de travail** : IA d’abord, car les fiches doivent exister avant d’être saisies dans Planner. Séquence : l’IA génère le backlog, l’équipe discute, puis on retient la référence du support.

#### 1. Ce que vous allez obtenir

**Objectif.** Comprendre les 12 stories et leurs critères, puis discuter leur ordre.

**Résultat attendu.** 12 stories comprises, un ordre argumenté, deux critères examinés en profondeur par binôme.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Samia L privilégie d’abord une première lecture utilisable, puis la rentabilité et les comparaisons.

🟩 **Notion Scrum.** Le backlog est ordonné et émergent. L’affinement clarifie et décompose ; ce n’est pas un événement obligatoire distinct. Les Developers qui feront le travail sont responsables du dimensionnement. Les points sont une convention relative, pas une durée. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Lisez les fiches de la rubrique 7 et choisissez deux stories à examiner en binôme. (à vérifier sur votre poste)
2. Vérifiez que leurs critères sont testables à partir des données de référence. (à vérifier sur votre poste)
3. Dans le plan, créez le compartiment « Backlog (aucun sprint) » s’il n’existe pas. (à vérifier sur votre poste)
4. Dans ce compartiment, créez la tâche « US01 — Consulter le CA mensuel [5 pts] ». (à vérifier sur votre poste)
5. Ouvrez la tâche : saisissez la formulation, la valeur et les contraintes dans la description. (à vérifier sur votre poste)
6. Ajoutez les trois critères de US01 dans la liste de contrôle, une case par critère. (à vérifier sur votre poste)
7. Ne créez pas encore les autres stories : la saisie complète se fait à l’étape 5. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : tâche « US01 — Consulter le CA mensuel [5 pts] » avec description et liste de contrôle de trois cases]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) ; création/modification : Tâches : manuel ou Copilot dans le plan (à vérifier sur votre poste).

**Trace** : IA-04

L’IA génère le backlog, l’équipe discute, puis on retient la référence du support.

> ⚠️ Dans cette étape, l’IA passe avant Planner, car les fiches du backlog doivent exister avant d’être saisies dans Planner.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

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

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Comparer deux fiches en profondeur, puis contrôler les douze : doublons, rôle, bénéfice, calculs, cas vide/zéro, droits et dépendances.
- [ ] Consulter ensuite les fiches de référence et normaliser les tailles 5/3/5/5/3/5/3/5/3/3/2/5, total 47.
- [ ] Ne pas présenter ces tailles comme une expertise démontrée de l’IA.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : Exactement 12 tâches US01 à US12 dans « Backlog (aucun sprint) », avec une case de liste de contrôle par critère (3 pour la plupart, 2 pour US05, 4 pour US09).

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Créez US01 comme indiqué, puis préparez les douze tâches à l’étape 5. Dans la description et la liste de contrôle, saisissez les critères corrigés. Dans Excel : Texte4 (Référence IA) = IA-04 et Texte5 (Décision IA) = Retenu ou Corrigé puis retenu. Les critères non validés restent des questions, pas des exigences approuvées.

#### 7. Données à saisir

Où va chaque champ du TP source (alias) :

| Champ du TP source (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Texte4 (Référence IA) | Aucun champ équivalent | Colonne Référence IA (ex. « IA-04 ; IA-07 ») |
| Texte5 (Décision IA) | Aucun champ équivalent | Colonne Décision IA (ex. « Corrigé puis retenu ») |

Backlog initial : 12 PBI, 47 points. Les horizons S2 sont des hypothèses, pas des engagements.

##### US01 — Consulter le CA mensuel

- Formulation : « En tant que direction commerciale, je veux consulter le CA par mois, afin de repérer les variations de ventes. »
- Valeur : Première lecture commune du CA.
- Critères testables : Janvier 40 000 TND ; février 50 000 ; cumul 90 000. Le filtre janvier conserve seulement janvier. Une période vide affiche « Aucune vente », sans erreur.
- Ordre initial : 1 ; taille relative illustrative : 5 points.
- Contraintes : Source contrôlée ; aucun PBI préalable requis.
- Horizon initial : Sprint 1.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Janvier 40 000 TND ; février 50 000 ; cumul 90 000.
- [ ] Le filtre janvier conserve seulement janvier.
- [ ] Une période vide affiche « Aucune vente », sans erreur.

##### US02 — Analyser les ventes par région

- Formulation : « En tant que responsable régional, je veux filtrer les ventes par région, afin de cibler les zones nécessitant une action. »
- Valeur : Cibler les actions régionales.
- Critères testables : Nord 54 000 TND, Sud 36 000 sur les deux mois ; Nord + janvier = 24 000 ; effacer le filtre rétablit 90 000.
- Ordre initial : 2 ; taille relative illustrative : 3 points.
- Contraintes : Socle US01 réutilisable ; réalisation conjointe possible.
- Horizon initial : Sprint 1.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Nord 54 000 TND, Sud 36 000 sur les deux mois
- [ ] Nord + janvier = 24 000
- [ ] effacer le filtre rétablit 90 000.

##### US03 — Identifier les meilleurs produits

- Formulation : « En tant que analyste métier, je veux classer les produits par CA, afin de préparer une recommandation d’assortiment. »
- Valeur : Identifier les contributeurs principaux.
- Critères testables : P01 45 000, P02 28 000, P03 17 000 TND, tri décroissant. Janvier : 20 000, 12 000, 8 000. Le classement suit les filtres.
- Ordre initial : 3 ; taille relative illustrative : 5 points.
- Contraintes : Source de ventes commune ; codes produits à clarifier.
- Horizon initial : Sprint 1.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] P01 45 000, P02 28 000, P03 17 000 TND, tri décroissant.
- [ ] Janvier : 20 000, 12 000, 8 000.
- [ ] Le classement suit les filtres.

##### US04 — Lire la marge commerciale

- Formulation : « En tant que contrôle de gestion, je veux consulter marge et taux de marque, afin de apprécier la rentabilité. »
- Valeur : Éviter la confusion entre volume et rentabilité.
- Critères testables : Cumul : CA 90 000, coût 63 000, marge 27 000 TND, taux de marque 30 %. Janvier : marge 10 800 et 27 %. CA nul : taux non calculable.
- Ordre initial : 4 ; taille relative illustrative : 5 points.
- Contraintes : Coûts et formules validés ; taux calculé sur les agrégats.
- Horizon initial : Sprint 2, hypothèse.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Cumul : CA 90 000, coût 63 000, marge 27 000 TND, taux de marque 30 %.
- [ ] Janvier : marge 10 800 et 27 %.
- [ ] CA nul : taux non calculable.

##### US05 — Comparer les magasins

- Formulation : « En tant que responsable régional, je veux comparer les magasins, afin de repérer les écarts de performance. »
- Valeur : Préparer leur accompagnement.
- Critères testables : N1 32 000, N2 22 000, S1 20 000, S2 16 000 TND ; filtre Nord : N1/N2 seulement, total 54 000.
- Ordre initial : 5 ; taille relative illustrative : 3 points.
- Contraintes : US02 utile ; comparaison descriptive, sans causalité supposée.
- Horizon initial : Sprint 2, hypothèse.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] N1 32 000, N2 22 000, S1 20 000, S2 16 000 TND
- [ ] filtre Nord : N1/N2 seulement, total 54 000.

##### US06 — Comparer deux périodes

- Formulation : « En tant que direction commerciale, je veux comparer février à janvier, afin de détecter la croissance ou le recul. »
- Valeur : Lire une évolution explicite.
- Critères testables : 50 000 contre 40 000 TND : +10 000 et +25 %. Les périodes sont affichées. Référence zéro : pourcentage non calculable, sans erreur.
- Ordre initial : 6 ; taille relative illustrative : 5 points.
- Contraintes : US01 ; convention de comparaison explicite.
- Horizon initial : Sprint 2, hypothèse.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] 50 000 contre 40 000 TND : +10 000 et +25 %.
- [ ] Les périodes sont affichées.
- [ ] Référence zéro : pourcentage non calculable, sans erreur.

##### US07 — Comparer les catégories

- Formulation : « En tant que analyste métier, je veux analyser les ventes par catégorie, afin de adapter les actions commerciales. »
- Valeur : Relier résultats et portefeuille.
- Critères testables : Équipement P01+P02 : 73 000 TND ; Accessoires P03 : 17 000. Janvier : 32 000 et 8 000. Le filtre catégorie actualise le total.
- Ordre initial : 7 ; taille relative illustrative : 3 points.
- Contraintes : Référentiel produits fiable.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Équipement P01+P02 : 73 000 TND ; Accessoires P03 : 17 000.
- [ ] Janvier : 32 000 et 8 000.
- [ ] Le filtre catégorie actualise le total.

##### US08 — Identifier les principaux clients

- Formulation : « En tant que direction commerciale, je veux voir les principaux clients contributeurs, afin de préparer les revues de comptes. »
- Valeur : Cibler les revues commerciales.
- Critères testables : C01 45 000, C02 28 000, C03 17 000 TND ; seuls les codes autorisés apparaissent ; filtre période appliqué.
- Ordre initial : 8 ; taille relative illustrative : 5 points.
- Contraintes : Codes pseudonymisés, accès autorisé.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] C01 45 000, C02 28 000, C03 17 000 TND
- [ ] seuls les codes autorisés apparaissent
- [ ] filtre période appliqué.

##### US09 — Exporter une sélection

- Formulation : « En tant que analyste métier, je veux exporter les résultats filtrés, afin de éviter une ressaisie. »
- Valeur : Réutiliser les résultats.
- Critères testables : Export Nord : N1/N2 uniquement, cumul 54 000 TND ; période et filtres indiqués ; montants numériques ; format CSV ou XLSX convenu.
- Ordre initial : 9 ; taille relative illustrative : 3 points.
- Contraintes : Une vue filtrée exploitable existe.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Export Nord : N1/N2 uniquement, cumul 54 000 TND
- [ ] période et filtres indiqués
- [ ] montants numériques
- [ ] format CSV ou XLSX convenu.

##### US10 — Vérifier la fraîcheur des données

- Formulation : « En tant que responsable régional, je veux voir date et statut du chargement, afin de éviter une décision sur des données périmées. »
- Valeur : Rendre la confiance visible.
- Critères testables : Nominal : « Chargement réussi : 01/03/2026 08:00 ». Échec simulé : « Dernier chargement échoué ; données au 28/02/2026 ». Un échec ne remplace pas les données valides par des zéros.
- Ordre initial : 10 ; taille relative illustrative : 3 points.
- Contraintes : Journal fictif ; les contrôles qualité minimaux restent requis dès S1.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Nominal : « Chargement réussi : 01/03/2026 08:00 ».
- [ ] Échec simulé : « Dernier chargement échoué ; données au 28/02/2026 ».
- [ ] Un échec ne remplace pas les données valides par des zéros.

##### US11 — Consulter le dictionnaire des indicateurs

- Formulation : « En tant que contrôle de gestion, je veux accéder aux définitions des indicateurs, afin de interpréter les chiffres de façon homogène. »
- Valeur : Réduire les interprétations contradictoires.
- Critères testables : Dictionnaire : CA net HT en TND, coût, marge = CA − coût, taux de marque = marge / CA ; périodes explicites ; chaque indicateur renvoie à sa définition.
- Ordre initial : 11 ; taille relative illustrative : 2 points.
- Contraintes : Dictionnaire utilisateur enrichi ; documentation minimale de DoD dès S1.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Dictionnaire : CA net HT en TND, coût, marge = CA − coût, taux de marque = marge / CA
- [ ] périodes explicites
- [ ] chaque indicateur renvoie à sa définition.

##### US12 — Préparer la réunion de direction

- Formulation : « En tant que direction commerciale, je veux ouvrir une synthèse dédiée, afin de préparer rapidement le comité. »
- Valeur : Réduire le temps de préparation.
- Critères testables : CA, marge et variation affichés sans ressaisie ; cumul 90 000 TND, marge 27 000, variation février/janvier +25 % ; filtres et fraîcheur visibles.
- Ordre initial : 12 ; taille relative illustrative : 5 points.
- Contraintes : US04/US06 terminées ; dépendances à inspecter.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] CA, marge et variation affichés sans ressaisie
- [ ] cumul 90 000 TND, marge 27 000, variation février/janvier +25 %
- [ ] filtres et fraîcheur visibles.

##### Principes d’ordonnancement

US01/02 servent les utilisateurs principaux ; US03 rend la première restitution immédiatement utile ; US04 permet d’inspecter des règles économiques risquées. US05/06 enrichissent les décisions. Les autres besoins restent visibles. Une remontée de US10 peut être défendue si le risque de fraîcheur est majeur, sans supprimer la qualité minimale requise dès S1.

Il n’existe pas de formule universelle de priorité Scrum. Valeur, risques, apprentissages, dépendances et coût éclairent l’ordre ; une note ne décide pas à la place du PO.

#### 8. ✅ Vérifier le résultat

- [ ] 12 stories comprises, un ordre argumenté, deux critères examinés en profondeur par binôme.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-04 : sortie brute, deux fiches annotées, ordre retenu, estimations normalisées et validations encore requises.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas utiliser systématiquement « En tant que système » pour transformer chaque tâche technique en story. Le format story est optionnel ; le backlog peut contenir d’autres PBI.

> ⚠️ Proposition défectueuse à rejeter : « Taux de marque = marge / coût », « client sans droit d’accès », ou « US11 dispense de documentation en S1 » : à détecter et corriger.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai généré 12 tâches de 5 jours chacune avec une échéance » : points convertis en jours et dates inventées.

#### 10. Si ça ne marche pas

- **L’IA fournit moins de 12 fiches ou des IDs en double.** Relancez avec la RELANCE DE CONTRÔLE et vérifiez 12 IDs uniques, de US01 à US12.
- **Un critère contredit les données de référence.** Recalculez avec l’Annexe C. Les critères non validés restent des questions.
- **Copilot dans le plan crée plus de tâches que prévu.** Supprimez les doublons : le backlog compte exactement 12 PBI.

#### 11. Pour réfléchir et lien PSPO I

- Quel élément réduit le plus une incertitude ?
- Quelle story gagnerait à être découpée ?
- Une dépendance implique-t-elle toujours un lien de dépendance dans le planning ?

> 🟩 **Lien PSPO I (optionnel)** — Redevabilité du PO sur le backlog, dimensionnement par les Developers et affinement collaboratif. [S3]

---

### Étape 5 — Organiser le Product Backlog dans Planner

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 35 min | 65 min | 2 |

**Ordre de travail** : IA d’abord (table de transfert), puis contrôles, puis saisie dans Planner.

#### 1. Ce que vous allez obtenir

**Objectif.** Représenter valeur, ordre, taille et qualité sans inventer un module complet de backlog.

**Résultat attendu.** 12 identifiants uniques, 12 cartes visibles, 47 points et critères dans la description et la liste de contrôle ; pas de liens artificiels entre toutes les stories.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Le tableau doit rester simple et les informations détaillées accessibles.

🟩 **Notion Scrum.** La carte est une représentation ; elle ne remplace ni les informations ni la conversation. Un état logiciel n’atteste pas la qualité.

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Dans le compartiment « Backlog (aucun sprint) », créez les tâches US02 à US12, une par ligne, au format « USxx — nom [N pts] ». Ne dupliquez pas US01. (à vérifier sur votre poste)
2. Testez d’abord une seule tâche, puis une deuxième, avant de créer les autres. (à vérifier sur votre poste)
3. Pour chaque tâche, saisissez dans la description la formulation, la valeur, les contraintes et l’horizon initial. Ne collez pas les critères dans le titre. (à vérifier sur votre poste)
4. Pour chaque tâche, ajoutez dans la liste de contrôle une case par critère testable. (à vérifier sur votre poste)
5. Créez les quatre étiquettes : « Bloqué », « Conforme », « Non conforme », « À vérifier ». (à vérifier sur votre poste)
6. Rangez les tâches dans l’ordre 1 à 12 par glisser-déposer dans le compartiment. (à vérifier sur votre poste)
7. N’ajoutez aucune date d’échéance et aucun Sprint. (à vérifier sur votre poste)
8. Si le tableau permet de choisir les informations affichées sur les cartes, affichez les étiquettes (aucun équivalent garanti de « Personnaliser les cartes »). (à vérifier sur votre poste)
9. Créez dans Excel le registre de suivi avec les colonnes ID PBI, Points, Ordre backlog, Reste estimé h, Obstacle, Résultat DoD, Référence IA, Décision IA. (à vérifier sur votre poste)
10. Archivez le backlog : capture de la vue Grille et export Excel du plan si disponible, nommé « NOVALIS_BI_Scrum_00_Backlog » (nom du TP source, adapté à Planner). (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : vue Grille du compartiment Backlog avec les 12 tâches ordonnées et les 4 étiquettes créées]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot dans le plan ; création/modification : Saisie manuelle des étiquettes, descriptions, listes de contrôle (à vérifier sur votre poste).

**Trace** : IA-05

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Pourquoi utiliser l’IA ici ?

Transformer le backlog validé en données faciles à reporter dans Planner, en réduisant les erreurs de structure.

##### Entrées à fournir

Uniquement le backlog normalisé, le dictionnaire des champs de l’étape et les alias réellement créés sur le poste.

##### Prompt prêt à copier

> Prompt adapté à Planner (modifications signalées en Annexe I).

```text
Voici mon backlog validé et le dictionnaire des champs : [coller].
Prépare un tableau de transfert, une ligne par PBI, sans code ni macro :
ID PBI ; Nom ; Points ; Ordre backlog ; Reste estimé h ; Sprint ;
Obstacle ; Résultat DoD ; Référence IA ; Décision IA.
Titre de tâche attendu : « USxx — nom [N pts] ». Étiquettes : Bloqué,
Conforme, Non conforme, À vérifier. Excel : Reste estimé h, Référence IA, Décision IA.
Reste initial vide avant Planning ; compartiment = Backlog (aucun sprint).
Prépare séparément une fiche description + liste de contrôle par ID avec formulation, valeur,
critères, contraintes et questions restantes.
Vérifie exactement 12 PBI, IDs uniques et total de 47 points.
Ne convertis pas les points en jours ni en dates ; Nombre3 (Reste estimé h) reste dans Excel.
Ne crée pas de dépendances entre tous les PBI.
N’affirme pas qu’un tableau collé constitue un import automatique fiable.
```

##### Sortie attendue

Un tableau contrôlé et douze fiches séparées (description et liste de contrôle) ; aucune ligne de synthèse à coller comme tâche.

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Recalculer les points et vérifier l’ordre.
- [ ] Tester d’abord une seule ligne, puis une deuxième.
- [ ] Vérifier les champs réellement ciblés (titre, description, liste de contrôle, étiquettes) ; ne pas coller les en-têtes dans les données.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : 12 tâches, 47 points au total dans les titres, 4 étiquettes, aucune tâche dans un compartiment Sprint.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Créez les quatre étiquettes, puis saisissez titre, description et liste de contrôle ligne par ligne, en contrôlant deux tâches d’abord. Les champs sans équivalent Planner (Reste estimé h, Référence IA, Décision IA, obstacle daté) vont dans le registre Excel. Les descriptions sont saisies à la main ; elles ne sont pas un champ de formule.

#### 7. Données à saisir

Où va chaque champ du TP source (alias) :

| Champ du TP source (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Nombre1 (Points) | Suffixe du titre « [N pts] » | Colonne Points (total initial 47) |
| Nombre2 (Ordre backlog) | Ordre de la tâche dans le compartiment (1 = premier) | Colonne Ordre backlog |
| Nombre3 (Reste estimé h) | Aucun champ équivalent (ne pas confondre avec la progression) | Colonne Reste estimé h, saisie manuellement, vide avant Planning |
| Texte1 (ID PBI) | Préfixe du titre de la tâche (« USxx — … ») | Colonne ID PBI |
| Texte2 (Obstacle) | Étiquette « Bloqué » + ligne datée dans la description | Colonne Obstacle (avec date) |
| Texte3 (Résultat DoD) | Étiquettes « Conforme » / « Non conforme » (« À vérifier » = étiquette, jamais Done) | Colonne Résultat DoD |

| Champ du TP source | Usage (source) | Dans Planner |
|---|---|---|
| Nom de la tâche | USxx et titre | Titre « USxx — nom [N pts] » |
| Texte1 (ID PBI) | ID PBI, stable même si l’ID de ligne change | Préfixe du titre |
| Nombre1 (Points) | Points, total initial 47 | Suffixe du titre « [N pts] » |
| Nombre2 (Ordre backlog) | Ordre backlog, 1 = premier | Ordre dans le compartiment |
| Nombre3 (Reste estimé h) | Reste estimé h, saisi manuellement, vide avant Planning | Aucun champ : Excel |
| Texte2 (Obstacle) | Obstacle et date | Étiquette « Bloqué » + ligne datée dans la description |
| Texte3 (Résultat DoD) | Résultat DoD : À vérifier / Conforme / Non conforme | Étiquettes « Conforme » / « Non conforme » ; « À vérifier » = étiquette (≠ Done) |
| Notes | Formulation, valeur, critères, contraintes et preuves | Description + liste de contrôle (une case par critère) |
| Sprint | Affectation native | Compartiment « Sprint n (dates) » |
| État du tableau | État opérationnel natif | Progression |
| Afficher dans le tableau | Oui pour les PBI ; Non pour les tâches détaillées | Aucun équivalent garanti ; les sous-tâches ne sont pas des cartes séparées (à vérifier sur votre poste) |

Les tâches détaillées auront l’identifiant T-USxx-n et seront créées comme sous-tâches, sans points, pour éviter le double comptage. La priorité de Planner n’est pas l’ordre Scrum : l’ordre est celui du compartiment. Ne saisissez ni points dans des dates ou des jours, ni heures dans un champ de Planner en prétendant qu’il s’agit du même champ : les heures restantes restent dans Excel.

#### 8. ✅ Vérifier le résultat

- [ ] 12 identifiants uniques, 12 cartes visibles, 47 points et critères dans la description et la liste de contrôle ; pas de liens artificiels entre toutes les stories.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-05 : table de transfert, correspondance champs/alias et contrôle après saisie : 12 IDs, 47 points, aucun Sprint sélectionné.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Un diagramme de planning (Gantt ou chronologie) représente mal la valeur, la conversation et les preuves. Nombre3 (Reste estimé h), tenu dans Excel, n’est pas une donnée de progression de Planner. Les cartes n’assurent pas un historique quotidien : un registre complémentaire reste utile.

> ⚠️ Proposition défectueuse à rejeter : « 5 points = 5 jours d’échéance » ou « Priorité Planner = ordre commercial » : confusion entre estimation, ordonnancement et nivellement.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai créé 14 tâches ; les deux en plus sont des doublons utiles » : le backlog compte exactement 12 PBI et 47 points.

#### 10. Si ça ne marche pas

- **Les tâches sont créées en double ou avec un titre irrégulier.** Testez une tâche, puis une deuxième, et corrigez le format « USxx — nom [N pts] » avant de poursuivre.
- **La liste de contrôle n’accepte pas tous les critères.** La limite est à vérifier sur votre poste. Conservez les critères complets dans la description.
- **L’ordre est perdu après un glisser-déposer.** Recontrôlez l’ordre 1 à 12 avec le tableau de l’Annexe C.4.

#### 11. Pour réfléchir et lien PSPO I

- Comment retrouver US03 après un tri ?
- Pourquoi garder un registre de suivi hors du simple état courant ?

> 🟩 **Lien PSPO I (optionnel)** — Transparence et compréhension priment sur le respect d’un formulaire. [S3]

## Partie 3 — Vivre un Sprint

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PO = Product Owner ; DoD = Definition of Done ; US = User Story ; PSPO I = Professional Scrum Product Owner I ; TP = travaux pratiques ; J0 = jour 0 du Sprint (J1 à J10 : jours ouvrés suivants).

### Étape 6 — Planifier les sprints

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 30 min | 60 min | 2 |

**Ordre de travail** : IA d’abord (calcul des capacités), puis création des compartiments.

#### 1. Ce que vous allez obtenir

**Objectif.** Créer trois timeboxes et documenter des prévisions révisables.

**Résultat attendu.** Trois Sprints successifs et un registre d’objectifs/capacité. S2/S3 restent des prévisions ; seul S1 va être sélectionné.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** NOVALIS veut inspecter des résultats toutes les deux semaines.

🟩 **Notion Scrum.** Un Sprint dure au plus un mois ; le suivant commence immédiatement. Événements, affinement, tests et collaboration font partie du Sprint. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Dans le plan, créez trois compartiments nommés exactement « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) » et « Sprint 3 (30/11–13/12) ». (à vérifier sur votre poste)
2. Gardez le compartiment « Backlog (aucun sprint) ». (à vérifier sur votre poste)
3. Contrôlez vous-même les frontières [02/11,16/11[, [16/11,30/11[, [30/11,14/12[ et les dix jours ouvrés de chaque Sprint. (à vérifier sur votre poste)
4. Notez le Sprint Goal candidat, la capacité et les hypothèses dans le registre Sprints (Excel). (à vérifier sur votre poste)
5. N’affectez aucune tâche à un Sprint : S1 se remplit après la Planning (étape 7), S2 et S3 restent prévisionnels. (à vérifier sur votre poste)
6. Si des sprints natifs sont présents, ne les utilisez pas dans ce TP. (à vérifier sur votre poste)

> ⚠️ Précision ajoutée : les trois dates de fin incluse (15/11, 29/11, 13/12) tombent un dimanche, et le dernier jour ouvré du Sprint 1 est le 13/11. Les « prochains débuts » (16/11, 30/11) restent distincts des fins incluses.

> [CAPTURE À INSÉRER : vue Tableau avec les compartiments « Backlog (aucun sprint) », « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) », « Sprint 3 (30/11–13/12) »]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot dans le plan ; création/modification : Compartiments ; création manuelle recommandée (à vérifier sur votre poste).

**Trace** : IA-06

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Pourquoi utiliser l’IA ici ?

Faire vérifier les timeboxes et les hypothèses de capacité, puis préparer une prévision distincte d’un engagement de périmètre.

##### Entrées à fournir

Dates de début 02/11, 16/11, 30/11/2026, durées deux semaines, calendrier fictif lundi-vendredi sans exception ; 3 Developers × 10 jours × 6 h, réservations 36 h et 72 h ; backlog validé.

##### Prompt prêt à copier

> Prompt adapté à Planner (modifications signalées en Annexe I).

```text
Prépare trois Sprints successifs pour NOVALIS à partir de ces données : [coller].
Présente : début, prochain début, dernier jour calendaire inclus,
jours ouvrés du cas, objectif candidat, PBI pressentis et incertitudes.
Calcule la capacité en heures-personnes et explicite chaque réservation.
Distingue 180 h disponibles, 108 h réservées et 72 h pour les PBI.
Ne crée aucun taux de conversion points/heures. Ne sélectionne pas
les PBI à la place des Developers et ne garantis pas les Sprints futurs.
Indique les noms de compartiments à créer et les informations
qui doivent rester dans un registre, sans présumer de sprint natif.
```

##### Sortie attendue

Trois périodes sans chevauchement, plafond PBI 72 h et objectifs candidats liés au Product Goal.

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Vérifier les frontières et les dix jours ouvrés selon le calendrier du cas.
- [ ] Ne pas confondre fin incluse 15/11 et prochain début 16/11.
- [ ] Vérifier que le PO et le SM ne sont pas ajoutés artificiellement à la capacité des Developers.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : 4 compartiments : « Backlog (aucun sprint) » et les trois Sprints, avec les dates dans le nom.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Saisissez vous-même les noms de compartiments, puis vérifiez-les. Gardez les noms métier et les hypothèses dans le registre. N’affectez les tâches S1 qu’après la Planning ; S2 et S3 sont prévisionnels. Le déplacement d’une tâche d’un compartiment à l’autre est une action manuelle (glisser-déposer).

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

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-06 : calcul de capacité, trois timeboxes contrôlées et liste des hypothèses.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas remplir mécaniquement tous les Sprints pour vider « Backlog (aucun sprint) ». Deux semaines calendaires ne signifient pas dix jours calendaires. Les horaires d’un outil de planification ne garantissent pas la capacité effective.

> ⚠️ Proposition défectueuse à rejeter : « Deux semaines = 14 jours × 6 h par personne » : compter les jours calendaires comme des jours ouvrés surestime la capacité.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai créé les compartiments et réparti les 12 tâches dans les trois Sprints pour vider le backlog » : la sélection a été faite par l’IA, alors que seuls US01, US02 et US03 iront en S1 après la Planning.

#### 10. Si ça ne marche pas

- **Un compartiment est mal nommé.** Renommez-le exactement : « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) », « Sprint 3 (30/11–13/12) ».
- **Des sprints natifs sont présents.** Ne les utilisez pas : le TP utilise des compartiments par défaut.
- **Le glisser-déposer ne fonctionne pas.** Ouvrez la tâche et cherchez le champ de compartiment (à vérifier sur votre poste), ou notez le constat.

#### 11. Pour réfléchir et lien PSPO I

- Pourquoi laisser du travail sans Sprint ?
- Une capacité de 72 h garantit-elle de finir 13 points ?

> 🟩 **Lien PSPO I (optionnel)** — Prévisions empiriques, capacité et sélection par les Developers en discussion avec le PO. [S3]

#### Point d’arrêt — fin de la demi-journée 2

Vérifiez que les quatre compartiments existent, puis cochez votre auto-évaluation.

- [ ] Je peux citer le Product Goal et un indicateur de mesure (étape 3).
- [ ] Mes 12 tâches ont des IDs uniques et totalisent 47 points (étapes 4 et 5).
- [ ] Mes quatre étiquettes existent (étape 5).
- [ ] Mes compartiments portent les bons noms et les bonnes dates (étape 6).
- [ ] Mon registre IA contient IA-01 à IA-06.

---

### Étape 7 — Réaliser la Sprint Planning

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 40 min | 70 min | 3 |

**Ordre de travail** : IA d’abord (comparaison des scénarios), puis glisser-déposer et saisie.

#### Reprise de la demi-journée 3

> ⚠️ À lire avant de commencer : lisez la Definition of Done (DoD) complète dans l’[Annexe C](#annexe-c--données-de-référence) (rubrique « DoD pédagogique »). Vous devez la connaître avant toute sélection de PBI. Son étude détaillée a lieu à l’étape 12.

- [ ] J’ai rouvert le plan `NOVALIS_BI_Scrum_IA_Planner_TP2` et vérifié les quatre compartiments.
- [ ] Mon registre IA contient IA-01 à IA-06.
- [ ] J’ai relu la DoD en Annexe C.

#### 1. Ce que vous allez obtenir

**Objectif.** Construire pourquoi, quoi et comment pour le Sprint 1.

**Résultat attendu.** Trois PBI, 13 points, 52 h initiales, un but cohérent et un plan intégrant la DoD.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Dhirar A veut inspecter une analyse utilisable, pas uniquement des travaux techniques.

🟩 **Notion Scrum.** Toute la Scrum Team collabore. Samia L prépare la discussion de valeur ; les Developers sélectionnent et élaborent le plan. Le Sprint Goal est finalisé avant la fin de la Planning. Sprint Backlog = objectif + sélection + plan. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Relisez le Product Goal et la DoD (Annexe C) avant toute sélection. (à vérifier sur votre poste)
2. Examinez US01 à US04 : critères, risques et capacité. (à vérifier sur votre poste)
3. Consignez le Sprint Goal dans le registre Sprints (Excel) et, si la fonction existe, comme objectif du plan. (à vérifier sur votre poste)
4. Glissez US01, US02 et US03 du compartiment « Backlog (aucun sprint) » vers « Sprint 1 (02/11–15/11) ». (à vérifier sur votre poste)
5. Dans Excel, saisissez Nombre3 (Reste estimé h) = 20 / 12 / 20 ; les points restent dans les titres (5 / 3 / 5). (à vérifier sur votre poste)
6. Ajoutez le plan détaillé dans la description des trois tâches, sans effacer les critères. (à vérifier sur votre poste)
7. Pour pratiquer, créez les sous-tâches T-US01-1, T-US01-2 et T-US01-3 sur US01, sans points. Elles décrivent les mêmes 20 h : ne les additionnez pas aux 20 h du PBI. (à vérifier sur votre poste)
8. Les Developers conviennent de la répartition. Cheikh AS contribue aux contrôles avec un collègue ; la restitution et la vérification croisée sont prises en charge ensemble. (à vérifier sur votre poste)
9. Archivez la Planning : capture de la vue Tableau, nommée « NOVALIS_BI_Scrum_01_Planning_S1 ». (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : vue Tableau avec US01, US02, US03 dans « Sprint 1 (02/11–15/11) » et les sous-tâches T-US01-1 à 3]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) ; création/modification : Sous-tâches : manuel ou Copilot dans le plan ; glisser-déposer manuel (à vérifier sur votre poste).

**Trace** : IA-07

> ⚠️ Copilot dans le plan lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

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

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Les deux scénarios peuvent être recevables selon le besoin.
- [ ] Discuter puis retenir A pour suivre le jeu du TP.
- [ ] Les Developers valident la faisabilité ; ne pas additionner les tâches détaillées aux mêmes heures déjà portées par les PBI.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : US01, US02, US03 (13 points) dans « Sprint 1 (02/11–15/11) » ; sous-tâches sans points.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Glissez US01, US02 et US03 dans « Sprint 1 (02/11–15/11) ». Dans Excel, Nombre3 (Reste estimé h) = 20 / 12 / 20. Enregistrez le Sprint Goal au registre, le plan dans la description et les sous-tâches demandées. Texte4 (Référence IA) peut devenir IA-04 ; IA-07, dans Excel. Archivez la Planning.

#### 7. Données à saisir

Où va chaque champ du TP source (alias) :

| Champ du TP source (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Nombre3 (Reste estimé h) | Aucun champ équivalent (ne pas confondre avec la progression) | Colonne Reste estimé h, saisie manuellement, vide avant Planning |
| Texte4 (Référence IA) | Aucun champ équivalent | Colonne Référence IA (ex. « IA-04 ; IA-07 ») |

> ⚠️ Rappel : les heures restantes et le burndown restent dans Excel.

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

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-07 : comparaison A/B, scénario retenu, raisons du rejet ou report de l’autre et plan validé.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Le PO ne distribue pas unilatéralement les tâches et n’impose pas US04. Une autre sélection cohérente est recevable, mais nécessite son propre suivi : ne pas réutiliser les chiffres du scénario sans adaptation.

> ⚠️ Proposition défectueuse à rejeter : « La capacité restante permet forcément d’ajouter US04 » : une marge en heures ne prouve ni faisabilité ni cohérence avec le but.

> ⚠️ Proposition défectueuse propre à Planner : « L’agent a déplacé US04 dans Sprint 1 car il reste de la capacité » : la sélection du Sprint appartient aux Developers.

#### 10. Si ça ne marche pas

- **Vous voulez ajouter US04 « parce qu’il reste de la capacité ».** Rejetez ce raisonnement (rubrique 9). Une autre sélection cohérente demande son propre suivi.
- **Les heures des sous-tâches s’ajoutent à celles du PBI.** Ne les additionnez pas : T-US01-1 à T-US01-3 décrivent les mêmes 20 h.
- **Vous n’avez pas lu la DoD.** Lisez-la en Annexe C avant de sélectionner les PBI.

#### 11. Pour réfléchir et lien PSPO I

- Qui décide comment réaliser le travail ?
- Peut-on supprimer une fonction secondaire sans perdre le but ?

> 🟩 **Lien PSPO I (optionnel)** — Autogestion, responsabilités et engagement associé au Sprint Backlog. [S3]

---

### Étape 8 — Gérer le Sprint Backlog et le travail quotidien

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 35 min | 65 min | 3 |

**Ordre de travail** : Alternez : saisissez J0 à J3, consultez l’IA, puis saisissez J4 et J5.

#### 1. Ce que vous allez obtenir

**Objectif.** Adapter le plan et rendre visibles obstacles, états et reste.

**Résultat attendu.** J5 : 31 h, aucune story Done, US01 à vérifier. J10 : trois PBI conformes et 13 points Done.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** À J3, une correspondance de codes produits incertaine impose une réestimation.

🟩 **Notion Scrum.** Le Product Backlog porte les améliorations du produit ; le Sprint Backlog est le plan des Developers pour le Sprint. Le Daily Scrum, de 15 min, inspecte l’avancement vers le but et adapte le plan : pas de reporting hiérarchique au PO. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

1. Ouvrez la vue Tableau du plan et repérez le compartiment « Sprint 1 (02/11–15/11) ». (à vérifier sur votre poste)
2. J1 (02/11) : passez US01 et US03 en progression « en cours » ; US02 reste à son niveau initial. (à vérifier sur votre poste)
3. Chaque jour, mettez à jour dans Excel la colonne Nombre3 (Reste estimé h) avec le tableau du jour. (à vérifier sur votre poste)
4. J3 : sur US03, ajoutez l’étiquette « Bloqué » et la ligne datée « J3 — correspondance P03 à confirmer avec Haida B » dans la description. Action : Cheikh AS et Haida B vérifient avant J4. (à vérifier sur votre poste)
5. J4 : après résolution, retirez l’étiquette « Bloqué », gardez la trace datée dans la description et démarrez US02. (à vérifier sur votre poste)
6. J5 (06/11) : ajoutez l’étiquette « À vérifier » sur US01. Elle n’est pas Done. (à vérifier sur votre poste)
7. J6 (09/11) : après preuves de la DoD, remplacez « À vérifier » par « Conforme » sur US01 et passez-la en Terminé. Même procédure à J8 pour US02 et à J10 (13/11) pour US03. (à vérifier sur votre poste)
8. Copiez chaque jour l’état et les restes dans le registre Excel : Planner ne conserve pas cet historique pour vous. (à vérifier sur votre poste)
9. Observez tout effet d’un changement de progression sur les vues du plan et consignez-le : ni la progression ni l’étiquette ne vérifient la DoD. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : vue Tableau du Sprint 1 à J3 avec l’étiquette « Bloqué » sur US03 et la description datée]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent ; création/modification : Progression, nom, dates, priorité ; repli : Copilot dans le plan ou manuel (à vérifier sur votre poste).

**Trace** : IA-08

> ⚠️ Plan de repli : si le Planner Agent n’écrit pas dans un plan Premium (test de l’étape 0), utilisez Copilot dans le plan, ou la saisie manuelle. Les étiquettes et la description restent saisies à la main.

> ⚠️ Copilot dans le plan lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Pourquoi utiliser l’IA ici ?

Faire synthétiser les faits d’un suivi quotidien et préparer les discussions d’adaptation, sans déléguer le Daily ni la déclaration Done.

##### Entrées à fournir

Sprint Goal, sélection S1, état J0 puis J1–J3 uniquement pour la première analyse ; à la seconde analyse, ajouter J4–J5 et les obstacles réellement simulés. Ne pas transmettre J6–J10 en avance.

##### Prompt prêt à copier

> Prompt adapté à Planner (modifications signalées en Annexe I).

```text
Analyse ces données de suivi NOVALIS : [coller J0 à J3 puis, plus tard, J4 à J5].
Unité : heures estimées restantes tenues dans Excel (Nombre3) ; ce ne sont ni les heures
consommées ni la progression Planner. Points inchangés : 5/3/5.
Distingue faits observables, causes possibles et questions à poser.
Calcule les totaux et leurs variations. Explique pourquoi le reste peut augmenter.
Propose trois questions utiles aux Developers pour adapter le plan au Sprint Goal.
Prépare un tableau : PBI, état proposé, reste, obstacle, prochaine action,
preuve manquante avant Done. Ne déclare aucun élément terminé sans preuve.
Ne juge pas la performance individuelle et ne transforme pas le Daily en reporting au PO.
```

##### Sortie attendue

J2 45 h ; J3 48 h, hausse de 3 h ; J5 31 h et aucun PBI Done selon les faits. Causes présentées comme hypothèses sauf obstacle fourni.

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Comparer chaque total au tableau.
- [ ] Exiger une référence au jour et au PBI.
- [ ] À J5, US01 est À vérifier ; les autres restent En cours.
- [ ] Une baisse d’heures ne permet pas de créditer des points.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : Progression et étiquettes conformes au tableau du jour ; aucune tâche Terminé avant J6.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Appliquez seulement les mises à jour du scénario : progression, étiquettes, ligne datée d’obstacle dans la description. Les heures restantes se saisissent dans Excel. Inscrivez les actions discutées dans la description, puis relevez le nouvel état du plan pour vérifier la synthèse. Le registre quotidien conserve l’historique.

#### 7. Données à saisir

Où va chaque champ du TP source (alias) :

| Champ du TP source (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Nombre3 (Reste estimé h) | Aucun champ équivalent (ne pas confondre avec la progression) | Colonne Reste estimé h, saisie manuellement, vide avant Planning |

> ⚠️ Rappel : les heures restantes et le burndown restent dans Excel.

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

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-08 : première analyse J3, décision d’adaptation, seconde analyse J5 et différence après saisie.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas réduire mécaniquement le reste d’un nombre d’heures fixe chaque jour. Ne pas réestimer les points pour maquiller le suivi. Une story « à 90 % » n’est pas un Increment Done.

> ⚠️ Proposition défectueuse à rejeter : « 40 % d’heures consommées implique 40 % de valeur livrée » : le reste n’est pas une consommation, et la valeur n’est pas déduite d’un pourcentage.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai mis US01 à Terminé parce qu’il reste 6 h » : statut Done sans preuve ; « À vérifier » est une étiquette, jamais Done.

#### 10. Si ça ne marche pas

- **Le Planner Agent n’écrit pas dans un plan Premium.** Utilisez Copilot dans le plan, ou la saisie manuelle.
- **L’agent ne propose pas la modification demandée (étiquette, description).** Faites-la à la main : sa limite est le nom, la progression, les dates, la priorité et le nom du plan.
- **Vous cherchez les heures restantes dans Planner.** Elles restent dans Excel : Nombre3 (Reste estimé h) n’a aucun champ Planner.

#### 11. Pour réfléchir et lien PSPO I

- Pourquoi le reste monte-t-il à J3 ?
- Quelle adaptation aide le but plutôt qu’un indicateur artificiel ?

> 🟩 **Lien PSPO I (optionnel)** — Daily Scrum, transparence des obstacles et adaptation par les Developers. [S3]

---

### Étape 9 — Suivre et visualiser l’avancement

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 30 min | 45 min | 3 |

**Ordre de travail** : Alternez : ouvrez les vues dans Planner, faites préparer le tableau par l’IA, puis tracez la courbe dans Excel.

#### 1. Ce que vous allez obtenir

**Objectif.** Lire état, reste et risque sans confondre quantité produite et valeur.

**Résultat attendu.** Un tableau lisible et une courbe avec source, unités et commentaire : hausse du reste J3, premiers PBI Done J6.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** À J5, la direction voit du travail en cours mais encore aucun PBI conforme.

🟩 **Notion Scrum.** Burndown et vélocité peuvent aider ; ni leur utilisation ni une droite parfaite ne sont imposées. L’empirisme et l’inspection de l’Increment restent nécessaires. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

1. Faites une copie de sauvegarde de l’état du plan (capture ou export) avant de reconstituer l’état J5. (à vérifier sur votre poste)
2. Ouvrez la vue Grille filtrée sur « Sprint 1 (02/11–15/11) » avec les colonnes titre, progression et étiquettes. (à vérifier sur votre poste)
3. Vérifiez que les sous-tâches ne sont pas comptées comme des PBI supplémentaires. (à vérifier sur votre poste)
4. Ouvrez la vue Graphiques : notez le titre, l’unité et le filtre de chaque graphique présent. (à vérifier sur votre poste)
5. Constatez que Reste estimé h n’existe pas dans Planner : il n’alimente aucun graphique. (à vérifier sur votre poste)
6. Dans Excel, saisir Jour, Reste total h, Idéal h, Points restants ; Insertion > Graphiques > Courbes. Sélectionner les deux séries d’heures, pas les points sur la même échelle.
7. Titre : « Sprint 1 — reste estimé, données pédagogiques » ; axe vertical heures, horizontal jours ouvrés.
8. Facultatif : courbe distincte de points. Si un burndown natif existe dans Planner, inspecter ses données avant d’annoncer sa pertinence ; aucun burndown Story Points prêt à l’emploi n’est garanti ici.

> [CAPTURE À INSÉRER : vue Graphiques du plan avec titres et unités visibles]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent (questions) et Excel ; création/modification : Aucune ; courbes dans Excel (à vérifier sur votre poste).

**Trace** : IA-09

> ⚠️ Copilot dans le plan lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Pourquoi utiliser l’IA ici ?

Aider à choisir et interpréter les indicateurs, en séparant données fournies, calculs simples et vues ou graphiques réellement disponibles.

##### Entrées à fournir

Données complètes J0–J10 au moment de l’exercice de fin S1, points Done 0/0/0/0/0/0/5/5/8/8/13, champs saisis et titre exact des vues et graphiques observés sur le poste.

##### Prompt prêt à copier

> Prompt adapté à Planner (modifications signalées en Annexe I).

```text
Voici le suivi S1 et les champs réellement alimentés : [coller].
1. Prépare un tableau Jour, reste total h, repère idéal h,
points Done cumulés et points restants.
2. Idéal = 52 × (10 − jour) / 10 ; explique que ce n’est pas une obligation.
3. Propose un commentaire factuel de 120 mots distinguant heures et points.
4. Indique comment tracer les deux séries d’heures dans Excel et une courbe
séparée de points, sans mélanger les unités.
5. Voici les vues et graphiques effectivement présents dans Planner : [coller]. Explique ce qu’ils
permettent seulement si les champs requis sont renseignés.
Ne prétends pas que Nombre3 alimente un graphique Planner,
ni qu’un burndown Story Points existe automatiquement dans mon édition.
Aucune conclusion sur la productivité individuelle.
```

##### Sortie attendue

Un tableau identique aux valeurs de référence, des axes explicites et un commentaire nuancé sur J3, J5 et J6.

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Recalculer les points restants = 13 − Done cumulés.
- [ ] À J5, idéal 26 h contre reste 31 h, mais pas de diagnostic causal certain.
- [ ] Contrôler la provenance des séries, pas seulement l’aspect de la courbe.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : Aucune tâche créée ou modifiée pendant les questions de lecture.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Ouvrez les vues et graphiques présents dans Planner et consignez leurs titres et les champs utilisés. Produisez dans Excel les courbes pédagogiques garanties par le jeu de données. Collez le commentaire corrigé dans le registre, non comme preuve de valeur.

#### 7. Données à saisir

> ⚠️ Rappel : les heures restantes et le burndown restent dans Excel.

Reprendre les totaux J0–J10 de l’étape 8 : 52, 49, 45, 48, 42, 31, 20, 15, 8, 3, 0 h.

Ligne idéale illustrative : 52 ; 46,8 ; 41,6 ; 36,4 ; 31,2 ; 26 ; 20,8 ; 15,6 ; 10,4 ; 5,2 ; 0 h. Formule : 52 × (10 − jour) / 10.

Points restants : 13, 13, 13, 13, 13, 13, 8, 8, 5, 5, 0. Ces données sont fournies et simulées, non calculées automatiquement par Planner.

#### 8. ✅ Vérifier le résultat

- [ ] Un tableau lisible et une courbe avec source, unités et commentaire : hausse du reste J3, premiers PBI Done J6.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-09 : tableau de calcul, unités, source, commentaire retenu et limites des vues et graphiques Planner.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

À J5, 31 h restantes et 13 points restants sont compatibles. Ne pas fractionner les points au pourcentage. Ne pas attribuer une variation de courbe à un individu sans preuve.

> ⚠️ Proposition défectueuse à rejeter : « La courbe descend, donc les utilisateurs gagnent du temps » : une observation de travail n’établit pas un résultat d’usage.

> ⚠️ Proposition défectueuse propre à Planner : « La vue Graphiques de Planner affiche le burndown des heures restantes » : Reste estimé h n’existe pas dans Planner ; le burndown se trace dans Excel.

#### 10. Si ça ne marche pas

- **La vue Graphiques est absente ou différente.** Notez les titres réellement observés ; le catalogue peut varier selon la version.
- **Les graphiques ne montrent pas les heures restantes.** C’est normal : elles sont dans Excel. Aucun burndown Story Points prêt à l’emploi n’est garanti.
- **Les sous-tâches gonflent le total.** Vérifiez qu’elles ne sont pas comptées comme des PBI supplémentaires.

#### 11. Pour réfléchir et lien PSPO I

- Une courbe idéale prouve-t-elle un usage utile ?
- Que faut-il observer en plus ?

> 🟩 **Lien PSPO I (optionnel)** — Limites des métriques de production et prévision empirique. [S3, S4]

#### Point d’arrêt — fin de la demi-journée 3

- [ ] US01, US02 et US03 sont dans « Sprint 1 (02/11–15/11) » (étape 7).
- [ ] Le suivi J0–J10 est dans Excel et le plan reflète l’état du jour (étapes 8 et 9).
- [ ] J’ai tracé la courbe dans Excel et noté les limites des graphiques Planner.
- [ ] Mon registre IA contient IA-01 à IA-09.

## Partie 4 — S’adapter et inspecter

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PO = Product Owner ; DoD = Definition of Done ; US = User Story ; PSPO I = Professional Scrum Product Owner I ; TND = dinar tunisien ; CA = chiffre d’affaires ; TP = travaux pratiques ; J0 = jour 0 du Sprint (J1 à J10 : jours ouvrés suivants).

### Étape 10 — Simuler un changement de priorité en cours de sprint

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 25 min | 45 min | 4 |

**Ordre de travail** : IA d’abord (comparaison des options), puis création de US13.

#### Reprise de la demi-journée 4

- [ ] J’ai rouvert le plan et vérifié l’état de fin du Sprint 1.
- [ ] Mon registre IA contient IA-01 à IA-09.

#### 1. Ce que vous allez obtenir

**Objectif.** Analyser une urgence sans perdre le Sprint Goal ni réduire la qualité.

**Résultat attendu.** 13 PBI, 50 points historiques ; S1 reste à 13 points. Besoin urgent visible et ordonné, sans injection forcée.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** À J4 S1, Dhirar A demande un taux d’atteinte des objectifs régionaux. Le but S1 reste utile.

🟩 **Notion Scrum.** Le PO ordonne le backlog. Le périmètre peut être clarifié/renégocié avec les Developers sans mettre en danger le but et sans réduire la qualité. Seul le PO peut annuler un Sprint si son objectif devient obsolète. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Dans le compartiment « Backlog (aucun sprint) », créez la tâche « US13 — Mesurer l’atteinte des objectifs commerciaux [3 pts] ». (à vérifier sur votre poste)
2. Saisissez la formulation dans la description et les critères dans la liste de contrôle. (à vérifier sur votre poste)
3. Placez US13 juste après US06 (rang 7) par glisser-déposer ; décalez US07 à US12 aux rangs 8 à 13. (à vérifier sur votre poste)
4. Dans la description, ajoutez : « J4 : valeur reconnue ; objectif S1 maintenu ; cibles à clarifier pour un prochain Sprint ». (à vérifier sur votre poste)
5. Ne déplacez pas US13 dans « Sprint 1 (02/11–15/11) » : le scénario de suivi reste inchangé. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : tâche US13 dans le Backlog, au rang 7, avec sa liste de contrôle]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) ; création/modification : US13 : manuel ou Copilot dans le plan (à vérifier sur votre poste).

**Trace** : IA-10

> ⚠️ Copilot dans le plan lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

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

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Vérifier que seul le PO a le pouvoir d’annulation et que la condition discutée est l’obsolescence du but.
- [ ] Contrôler 85,71 %, 80 %, global 83,33 % ; aucune moyenne simple des taux.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : 13 tâches, 50 points ; US13 hors Sprint 1.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Créez US13 hors Sprint, dans « Backlog (aucun sprint) », points illustratifs 3 après clarification (dans le titre), ordre 7. Conservez la décision datée dans la description, et IA-10 dans Texte4 (Référence IA), dans Excel. Ne modifiez ni la sélection ni les données S1.

#### 7. Données à saisir

Où va chaque champ du TP source (alias) :

| Champ du TP source (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Texte4 (Référence IA) | Aucun champ équivalent | Colonne Référence IA (ex. « IA-04 ; IA-07 ») |

US13 — Mesurer l’atteinte des objectifs commerciaux.

« En tant que direction commerciale, je veux comparer le CA régional à l’objectif commercial de février, afin de cibler les actions de rattrapage. »

Taille illustrative après clarification par les Developers : 3 points ; prévision de travail S3 : 12 h, sans conversion automatique.

Critères : Nord, objectif 35 000 / réel 30 000 TND → 85,71 %, écart −5 000 ; Sud, objectif 25 000 / réel 20 000 → 80 %, écart −5 000. Global : 50 000 / 60 000 = 83,33 %, pas la moyenne simple des taux ; écart −10 000. Cible zéro : Non calculable. Mois, source et version des cibles visibles. Cibles définitives fournies fin S2.

Liste de contrôle Planner de US13 (une case par critère) :

- [ ] Nord, objectif 35 000 / réel 30 000 TND → 85,71 %, écart −5 000 ; Sud, objectif 25 000 / réel 20 000 → 80 %, écart −5 000.
- [ ] Global : 50 000 / 60 000 = 83,33 %, pas la moyenne simple des taux ; écart −10 000.
- [ ] Cible zéro : Non calculable.
- [ ] Mois, source et version des cibles visibles.
- [ ] Cibles définitives fournies fin S2.

> ⚠️ Précision ajoutée : le taux d’atteinte se calcule toujours réel ÷ objectif. Nord : 30 000 / 35 000 = 85,71 %. Sud : 20 000 / 25 000 = 80 %. Global : 50 000 / 60 000 = 83,33 %. Les valeurs du TP sont inchangées.

#### 8. ✅ Vérifier le résultat

- [ ] 13 PBI, 50 points historiques ;
- [ ] S1 reste à 13 points.
- [ ] Besoin urgent visible et ordonné, sans injection forcée.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-10 : options comparées, décision du PO simulé et discussion de faisabilité avec les Developers.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Une substitution peut être discutée si elle préserve le but et la qualité, mais nécessiterait un suivi adapté. Ne pas annuler pour masquer un écart. Une urgence n’implique pas une obsolescence du Sprint Goal.

> ⚠️ Proposition défectueuse à rejeter : « Le sponsor est urgent, donc annuler immédiatement et recommencer » : autorité et condition d’annulation confondues.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai ajouté US13 dans Sprint 1 et annulé le Sprint pour repartir » : ajout forcé et annulation décidés par l’IA.

#### 10. Si ça ne marche pas

- **L’IA conclut qu’il faut annuler le Sprint.** Rappelez que seul le PO peut l’annuler, si le but devient obsolète. Une urgence ne suffit pas.
- **US13 se retrouve dans « Sprint 1 ».** Glissez-la de nouveau vers le Backlog : le scénario de suivi reste inchangé.
- **Des données futures figurent dans la conversation.** Ouvrez une nouvelle conversation avec le prompt de cadrage et le seul état J4.

#### 11. Pour réfléchir et lien PSPO I

- Quelles informations manquent ?
- Quel changement rendrait vraiment le but obsolète ?

> 🟩 **Lien PSPO I (optionnel)** — Autorité du PO sur ordre et annulation ; limites sur le plan des Developers. [S3]

---

### Étape 11 — Organiser la Sprint Review et la Sprint Retrospective

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 30 min | 40 min | 4 |

**Ordre de travail** : IA d’abord (supports Review et Retrospective), puis mise à jour du plan.

#### 1. Ce que vous allez obtenir

**Objectif.** Séparer inspection du produit et amélioration de la façon de travailler.

**Résultat attendu.** Deux registres distincts : adaptations produit et amélioration du travail.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** À J10 S1, les trois PBI sont conformes selon les fiches pédagogiques.

🟩 **Notion Scrum.** La Review est une session de travail sur résultat et adaptations, pas une simple validation ni une porte obligatoire avant livraison. La Retrospective améliore qualité et efficacité de la Scrum Team. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Ouvrez le compartiment « Sprint 1 (02/11–15/11) » : vérifiez la progression Terminé, l’étiquette « Conforme » et les preuves dans les descriptions. (à vérifier sur votre poste)
2. Simulez la démonstration BI à partir des agrégats (janvier, Nord, effacement des filtres, classement produits). Planner n’exécute pas ces interactions BI. (à vérifier sur votre poste)
3. Consignez les retours dans un registre Review (Excel) : auteur, observation, décision, question à tester. (à vérifier sur votre poste)
4. Revenez au backlog : préparez US04, US05 et US06 ; gardez US13 visible avec sa contrainte de cibles dans la description. (à vérifier sur votre poste)
5. Ouvrez un registre Retrospective (Excel) : Conserver / Arrêter / Essayer. Choisissez une action concrète et notez sa mise en œuvre pour le Sprint 2, sans points de valeur fictifs. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : compartiment Sprint 1 avec trois tâches Terminé, étiquette Conforme]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) ; création/modification : Aucune (comptes rendus dans Excel) (à vérifier sur votre poste).

**Trace** : IA-11

> ⚠️ Copilot dans le plan lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

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

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Comparer toutes les citations à celles du cas.
- [ ] Distinguer faits, interprétations et recommandations.
- [ ] L’IA ne doit attribuer une action à personne sans discussion.
- [ ] Ne pas confondre nouvelle fonctionnalité et amélioration de collaboration.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : Aucune tâche modifiée sans validation ; US04, US05 et US06 encore dans le Backlog avant la Planning S2.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Mettez à jour uniquement l’ordre et les descriptions validés ; conservez les comptes rendus hors de Planner (Excel). Ajoutez au plan S2 une action de contrôle, sans doubler son temps déjà inclus dans les PBI.

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

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-11 : deux supports, corrections, décisions produit et action d’amélioration retenue.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas faire du PO le juge unique du Done. Le travail non Done est signalé en transparence mais pas présenté comme Increment terminé. Éviter la recherche de coupables dans la Retrospective.

> ⚠️ Proposition défectueuse à rejeter : « Les utilisateurs ont validé toutes les fonctions » alors que seuls des retours partiels sont fournis : une approbation a été inventée.

#### 10. Si ça ne marche pas

- **L’IA invente des citations d’utilisateurs.** Comparez toutes les citations à celles du tableau de l’étape et rejetez les autres.
- **Vous cherchez à faire la démonstration BI dans Planner.** Planner n’exécute pas ces interactions BI : simulez-la à partir des agrégats.
- **Les comptes rendus encombrent le plan.** Conservez-les dans les registres Review et Retrospective (Excel).

#### 11. Pour réfléchir et lien PSPO I

- Un retour positif suffit-il à mesurer la valeur ?
- Pourquoi US10 ne dispense-t-elle pas des contrôles dès S1 ?

> 🟩 **Lien PSPO I (optionnel)** — Finalité des événements et collaboration avec les parties prenantes. [S3]

---

### Étape 12 — Comprendre l’Increment et la Definition of Done

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 25 min | 35 min | 4 |

**Ordre de travail** : Planner d’abord (relire la description de US01), puis IA (audit des preuves), puis décision.

#### 1. Ce que vous allez obtenir

**Objectif.** Distinguer critères spécifiques, qualité commune et retour métier.

**Résultat attendu.** Une qualité commune et une décision claire pour chaque élément.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Un beau tableau avec des totaux faux ne doit pas être annoncé utilisable. Lire cette DoD avant la Planning, puis l’étudier ici.

🟩 **Notion Scrum.** Un Increment est intégré, utilisable et conforme à la DoD. Les critères portent sur un PBI ; la DoD définit son état de qualité ; la validation métier apporte un retour sans remplacer la DoD. Plusieurs Increments peuvent être créés et livrés avant la fin du Sprint. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

1. Ouvrez la description et la liste de contrôle de US01 et retrouvez critères et preuves. (à vérifier sur votre poste)
2. Vérifiez la DoD ci-dessous : l’étiquette « Conforme » n’est posée qu’après satisfaction de tous les points. (à vérifier sur votre poste)
3. Passez la progression à Terminé : Planner n’applique pas cette liste automatiquement. (à vérifier sur votre poste)
4. Dans une copie d’exercice du plan (ou dans Excel si la copie est impossible), simulez US03 « Non conforme » si le classement janvier est faux : retirez Terminé, posez l’étiquette « Non conforme » et notez le défaut. Revenez ensuite au scénario corrigé où le problème est résolu à J10. (à vérifier sur votre poste)
5. Un élément de 5 points non Done vaut zéro point Done, pas un crédit proportionnel. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : description de US01 avec critères, preuves et étiquette Conforme]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) ; création/modification : Étiquettes et statut Done : à la main (à vérifier sur votre poste).

**Trace** : IA-12

> ⚠️ Copilot dans le plan lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

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

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Chaque statut doit renvoyer à un fait fourni.
- [ ] Ne pas marquer US01 conforme avant J6.
- [ ] Vérifier que US11/US10 ne sont pas utilisées comme prétexte pour différer les exigences minimales.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : Chaque Terminé a une étiquette « Conforme » et une preuve ; les cas simulés « Non conformes » ne sont pas Terminé.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Posez l’étiquette validée (« Conforme » / « Non conforme ») et saisissez les références de preuves dans la description ; le registre Excel garde Texte3 (Résultat DoD). Ne passez en Terminé qu’après la vérification du jeu de rôle ; le diagnostic IA seul ne suffit pas.

#### 7. Données à saisir

Où va chaque champ du TP source (alias) :

| Champ du TP source (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Texte3 (Résultat DoD) | Étiquettes « Conforme » / « Non conforme » (« À vérifier » = étiquette, jamais Done) | Colonne Résultat DoD |

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

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-12 : matrice, anomalies corrigées, décisions qualité et limites de la simulation.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

US11 est un dictionnaire enrichi, pas une dispense de documentation minimale avant S3. US10 ajoute la visibilité de fraîcheur, pas le droit de livrer sans contrôle. Le PO ne peut pas abaisser unilatéralement la qualité.

> ⚠️ Proposition défectueuse à rejeter : « Aucun défaut signalé, donc tous les tests sont passés » : absence d’information confondue avec preuve positive.

> ⚠️ Proposition défectueuse propre à Planner : « Les trois tâches sont à 100 % de progression, donc Done » : la progression n’est pas la DoD.

#### 10. Si ça ne marche pas

- **L’IA déclare « tests passés » sans preuve.** Rejetez : une preuve absente signifie non démontré.
- **Une tâche à Terminé semble validée.** Planner n’applique pas la DoD : vérifiez l’étiquette « Conforme » et les preuves dans la description.
- **US03 doit être simulée « Non conforme ».** Faites-le dans une copie d’exercice, puis revenez au scénario corrigé.

#### 11. Pour réfléchir et lien PSPO I

- US06 échoue sur la référence zéro : peut-elle être Done ?
- L’accord du sponsor supprime-t-il la nécessité du test ?

> 🟩 **Lien PSPO I (optionnel)** — DoD, engagement de l’Increment, standards organisationnels minimaux et travail non terminé. [S3]

---

### Étape 13 — Gérer plusieurs sprints et inspecter les résultats

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 35 min | 65 min | 4 |

**Ordre de travail** : Alternez : première passe IA en fin de S2, mise à jour du plan, puis seconde passe en fin de S3.

#### 1. Ce que vous allez obtenir

**Objectif.** Conserver l’historique et adapter les prévisions après inspection.

**Résultat attendu.** Trois historiques cohérents ; valeur obtenue, fonctionnalités livrées et tâches exécutées distinguées. Le produit S2 comprend marge et comparaison de magasins, mais pas la comparaison de périodes non conforme.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Une absence imprévue et un défaut en S2 obligent à revoir S3.

🟩 **Notion Scrum.** Un élément non Done revient au backlog pour examen, sans report automatique. Une vélocité locale ne mesure pas la productivité individuelle et ne devient pas un objectif à maximiser. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

1. Archivez la fin S1 avant de poursuivre : « NOVALIS_BI_Scrum_01b_Fin_S1 » (nom proposé, absent du TP source). (à vérifier sur votre poste)
2. Planning S2 : glissez US04, US05 et US06 vers « Sprint 2 (16/11–29/11) ». Prévisions 24 / 12 / 24 h = 60 h dans Excel. US13 reste dans le Backlog : cibles non finalisées. (à vérifier sur votre poste)
3. J2 S2 : notez l’absence et le plafond révisé de 72 à 48 h dans le registre Sprints (Excel). Adaptez le plan sans allonger le Sprint ni abaisser la DoD. (à vérifier sur votre poste)
4. Fin S2 : US04 et US05 en Terminé avec l’étiquette « Conforme ». US06 porte les étiquettes « À vérifier » puis « Non conforme », reste 10 h, et n’est pas Terminé. Défaut : référence zéro non gérée dans la description. Le but complet n’est pas atteint. (à vérifier sur votre poste)
5. Archivez la fin S2 (« NOVALIS_BI_Scrum_02_Fin_S2 ») et l’historique avant de déplacer US06. (à vérifier sur votre poste)
6. Glissez US06 vers « Backlog (aucun sprint) » pour réexamen : même tâche, même estimation de 5 points, ne dupliquez pas le PBI. (à vérifier sur votre poste)
7. Planning S3 : cibles confirmées ; glissez US06, US13, US10 et US11 vers « Sprint 3 (30/11–13/12) ». Reste 10 + 12 + 12 + 8 = 42 h pour un plafond de 48 h (Excel) ; total 13 points. (à vérifier sur votre poste)
8. Fin S3 : les quatre PBI sont Terminé et « Conforme » ; les autres restent dans le Backlog. Archivez une copie finale « NOVALIS_BI_Scrum_03_Fin_S3 » (nom proposé, absent du TP source). (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : vue Tableau de fin S2 (US06 « Non conforme ») puis de fin S3 (quatre PBI Conforme)]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent ; création/modification : Mises à jour ; repli : Copilot dans le plan ou manuel ; glisser-déposer manuel (à vérifier sur votre poste).

**Trace** : IA-13

> ⚠️ Plan de repli : si le Planner Agent n’écrit pas dans un plan Premium (test de l’étape 0), utilisez Copilot dans le plan, ou la saisie manuelle. Les étiquettes et la description restent saisies à la main.

> ⚠️ Copilot dans le plan lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

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

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Vérifier les IDs uniques ;
- [ ] US06 n’est pas comptée deux fois.
- [ ] Ne pas donner les résultats fin S3 à la première passe.
- [ ] Contrôler que l’écart de 6 h ne devient pas une promesse de capacité additionnelle.

##### Après création par Copilot ou l’agent

- [ ] Le nombre de tâches correspond à l’attendu (voir ci-dessous).
- [ ] Aucun doublon de tâche ni de sous-tâche.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.
- [ ] Attendu à cette étape : « Sprint 3 » = US06, US13, US10, US11 uniquement ; US06 présente une seule fois ; 34 Done uniques.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Archivez S2 avant report, réexaminez US06 dans « Backlog (aucun sprint) » puis affectez-la à « Sprint 3 (30/11–13/12) » après la Planning. Mettez à jour les quatre PBI, conservez les autres hors Sprint ; archivez S3 et joignez la synthèse corrigée.

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

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-13 : prévision initiale, proposition révisée, décision, observation fin S3 et synthèse finale. Relever une recommandation confirmée et une limite de l’assistant.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas effacer l’échec partiel S2 en déplaçant seulement une carte. Ne pas additionner les points sélectionnés pour annoncer le produit livré. Ne pas déclarer automatiquement le Product Goal atteint sur une moyenne.

> ⚠️ Proposition défectueuse à rejeter : « S1 13 + S2 13 + S3 13 = 39 points livrés » : additionner les sélections inclut le travail non Done et le report de US06.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai dupliqué US06 dans Sprint 3 et gardé l’originale Terminée dans Sprint 2 » : duplication et double crédit.

#### 10. Si ça ne marche pas

- **US06 apparaît en double.** Gardez la même tâche, ne la dupliquez pas et ne créditez aucun point partiel.
- **L’IA a déjà reçu les résultats de fin S3 à la première passe.** Ouvrez une nouvelle conversation avec le prompt de cadrage et les seules données de fin S2.
- **L’historique S2 disparaît.** Archivez la fin S2 et l’historique avant de déplacer US06.

#### 11. Pour réfléchir et lien PSPO I

- Quelle valeur reste obtenue en S2 ?
- Comment vérifier le gain d’usage sans se limiter aux points ?

> 🟩 **Lien PSPO I (optionnel)** — Prévision, livraison, valeur observée et adaptation du Product Backlog. [S3, S4]

## Annexe A — Prompts : index, cadrage et relances

Cette annexe contient un index des 13 prompts, puis le prompt de cadrage et les deux relances en texte complet. Le texte complet de chaque prompt d’étape reste dans la rubrique 4 de son étape : il n’existe qu’un seul texte de référence par prompt.

| Référence | Étape | Emplacement | Prompt |
|---|---|---|---|
| IA-01 | 1. Du prédictif à Scrum | Rubrique 4 de [Étape 1 — Comprendre le passage du prédictif à Scrum](#étape-1--comprendre-le-passage-du-prédictif-à-scrum) | Mot pour mot |
| IA-02 | 2. Créer le projet | Rubrique 4 de [Étape 2 — Créer le plan Scrum dans Microsoft Planner](#étape-2--créer-le-plan-scrum-dans-microsoft-planner) | Adapté à Planner |
| IA-03 | 3. Définir le produit | Rubrique 4 de [Étape 3 — Définir le produit et son objectif](#étape-3--définir-le-produit-et-son-objectif) | Mot pour mot |
| IA-04 | 4. Construire le backlog | Rubrique 4 de [Étape 4 — Construire le Product Backlog](#étape-4--construire-le-product-backlog) | Mot pour mot |
| IA-05 | 5. Organiser le backlog dans Project | Rubrique 4 de [Étape 5 — Organiser le Product Backlog dans Planner](#étape-5--organiser-le-product-backlog-dans-planner) | Adapté à Planner |
| IA-06 | 6. Configurer les sprints | Rubrique 4 de [Étape 6 — Planifier les sprints](#étape-6--planifier-les-sprints) | Adapté à Planner |
| IA-07 | 7. Sprint Planning | Rubrique 4 de [Étape 7 — Réaliser la Sprint Planning](#étape-7--réaliser-la-sprint-planning) | Mot pour mot |
| IA-08 | 8. Travail quotidien | Rubrique 4 de [Étape 8 — Gérer le Sprint Backlog et le travail quotidien](#étape-8--gérer-le-sprint-backlog-et-le-travail-quotidien) | Adapté à Planner |
| IA-09 | 9. Visualisation | Rubrique 4 de [Étape 9 — Suivre et visualiser l’avancement](#étape-9--suivre-et-visualiser-lavancement) | Adapté à Planner |
| IA-10 | 10. Changement de priorité | Rubrique 4 de [Étape 10 — Simuler un changement de priorité en cours de sprint](#étape-10--simuler-un-changement-de-priorité-en-cours-de-sprint) | Mot pour mot |
| IA-11 | 11. Review et Retrospective | Rubrique 4 de [Étape 11 — Organiser la Sprint Review et la Sprint Retrospective](#étape-11--organiser-la-sprint-review-et-la-sprint-retrospective) | Mot pour mot |
| IA-12 | 12. Increment et DoD | Rubrique 4 de [Étape 12 — Comprendre l’Increment et la Definition of Done](#étape-12--comprendre-lincrement-et-la-definition-of-done) | Mot pour mot |
| IA-13 | 13. Inspection sur trois sprints | Rubrique 4 de [Étape 13 — Gérer plusieurs sprints et inspecter les résultats](#étape-13--gérer-plusieurs-sprints-et-inspecter-les-résultats) | Mot pour mot |

> ⚠️ Les prompts adaptés à Planner sont : le prompt de cadrage, la relance après saisie, IA-02, IA-05, IA-06, IA-08 et IA-09. Tous les autres, IA-07 et IA-13 inclus, sont repris mot pour mot du TP source. La relance après saisie ne figurait pas dans la liste initiale des prompts à adapter : elle cite « Project » et « le MPP », ce qui est incompatible avec Planner. Elle est adaptée par exception ; vous pouvez la rétablir telle quelle.

### Prompt de cadrage de la conversation — à exécuter une fois

Exécutez ce prompt une seule fois, dans Copilot (chat général), avant l’étape 1. Prompt adapté à Planner.

```text
Tu m’assistes pour construire et adapter un planning de travail Scrum
pour NOVALIS Distribution BI dans Microsoft Planner Premium (avec Microsoft 365 Copilot).
Le poste dispose de Microsoft 365 Copilot et de Planner Premium ; la licence et les fonctions
réellement disponibles seront fournies après vérification.

Ce TP concerne le pilotage du travail, pas le développement BI.
Tu ne vois pas mon plan Planner et tu ne peux pas le modifier ; je te colle les extraits utiles.
N’affirme jamais avoir lu, modifié ou recalculé mon plan sans preuve.

Distingue systématiquement :
1. faits fournis et leur provenance ;
2. hypothèses proposées à valider ;
3. informations manquantes ;
4. recommandations et contrôles à faire dans Project.

Ne transforme pas les Story Points en jours ou en heures.
Ne fabrique pas de durées, capacités, dates de fin, preuves de tests
ou résultats utilisateurs en les présentant comme des faits.
N’invente aucun menu ; signale les fonctions à vérifier sur le poste.
Ne confonds pas Planner Premium, Planner de base et Project.
Ne présume aucun sprint natif : les Sprints sont des compartiments.

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

Utilisez cette relance après une réponse de l’IA, avant toute saisie. Texte identique au TP source.

```text
RELANCE DE CONTRÔLE
Relis ta réponse en cherchant activement les incohérences avec les seules
données fournies. Pour chaque valeur, indique sa source ou classe-la comme
hypothèse. Vérifie les unités, totaux, doublons, dépendances et responsabilités.
Corrige ce qui est faux sans modifier silencieusement le périmètre.
```

### Relance après saisie

Utilisez cette relance après avoir saisi les données dans Planner, en remplaçant les parties entre crochets. Texte adapté à Planner.

```text
RELANCE APRÈS SAISIE
Voici les données réellement observées dans Planner : [coller le tableau].
Voici la décision validée : [coller].
Compare attendu et observé ; distingue erreur de saisie, paramétrage à vérifier,
limite de l’outil et hypothèse de travail. N’invente pas de valeur manquante.
Propose une vérification à la fois, sans affirmer que le plan Planner a été corrigé.
```

## Annexe B — Registre IA

> **Sigles de cette partie** : IA = intelligence artificielle ; PBI = Product Backlog Item (élément du Product Backlog) ; DoD = Definition of Done.

### Règles du registre

Créer un registre dans Excel avec les colonnes : référence, étape, date, outil/modèle si connu, entrées transmises, prompt utilisé, lien ou emplacement de la sortie brute, proposition, contrôle effectué, décision, justification, éléments reportés dans Project, résultat observé et question ouverte.

Références : IA-01 à IA-13. Conserver une entrée par étape ; plusieurs lignes sont autorisées pour une même référence si plusieurs propositions sont examinées. Ne pas inventer une erreur si la réponse IA est correcte : préciser le contrôle qui l’a confirmé. Les exemples défectueux du support permettent de s’entraîner à détecter des pièges sans prétendre qu’un assistant les a réellement produits.

Dans le registre Excel, ajouter deux colonnes : Texte4 (Référence IA) et Texte5 (Décision IA). Planner n’offre aucun champ équivalent garanti. Si ces colonnes existent déjà, choisir des colonnes libres et noter la correspondance. Ne pas remplacer ID PBI, Points, Ordre backlog, Reste ou Résultat DoD.

Pour un PBI, Texte4 (Référence IA) peut contenir « IA-04 ; IA-07 », Texte5 (Décision IA) « Corrigé puis retenu ». Les échanges complets restent dans le registre ; ils ne sont pas tous collés sur les cartes Planner. Ajouter dans la description de la tâche un bref résumé de la décision et des contrôles. Ces champs ne créent ni synchronisation avec l’IA ni automatisation du planning.

### Les 14 colonnes du registre

La colonne « TP source » reprend l’énumération du support d’origine (la colonne 12 devient « Éléments reportés dans Planner »). La colonne « Fichier Excel joint » reprend l’en-tête réel de `Registre_IA_NOVALIS_Planning_Scrum.xlsx`. Aucun choix n’a été fait à votre place : les deux intitulés sont affichés.

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
| 12 | Éléments reportés dans Planner | Éléments reportés dans Project | Intitulé différent |
| 13 | Résultat observé | Résultat observé après saisie | Intitulé différent |
| 14 | Question ouverte | Question ouverte | Identique |

Écarts relevés entre le TP source et le fichier Excel :

- 7 intitulés d’Excel diffèrent légèrement de ceux du TP source (voir le tableau). Le sens est le même ; décidez quel libellé vous conservez.
- Excel préremplit pour chaque référence IA-01 à IA-13 : le nom de l’étape, « IA-xx / v1 » dans la colonne Prompt / version et « À clarifier » dans la colonne Décision. Le TP source ne précise pas ces valeurs.
- Excel contient quatre feuilles absentes du TP source : Mode_emploi, Prompts (13 prompts), Transfert_Project et Controles_reference.
- Les prompts de la feuille Prompts sont ceux du TP Project. Dans cette version Planner, les prompts IA-02, IA-05, IA-06, IA-08 et IA-09 sont adaptés : mettez-les à jour dans Excel avant usage.
- La feuille Mode_emploi liste les décisions possibles : Retenu / Corrigé puis retenu / Rejeté / À clarifier.

### Feuille Transfert_Project du fichier Excel (absente du TP source)

Colonnes : Référence IA ; ID PBI / registre ; Proposition retenue ; Champ ciblé / alias ; Valeur avant ; Valeur après ; Contrôle après saisie ; Commentaire. Usage indiqué par Excel : faire correspondre chaque proposition retenue à une ligne PBI ou à un registre externe ; aucune carte artificielle pour chaque échange IA.

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

Une archive du plan (capture ou export) n’est ni une clôture Scrum avec validation du PMO ni une baseline obligatoire.

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

### C.2 Table de correspondance Project → Planner

Tout est à vérifier sur votre poste.

| Project (TP source) | Planner Premium |
|---|---|
| Sprint 1 / 2 / 3 | Compartiments « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) », « Sprint 3 (30/11–13/12) » |
| Aucun sprint | Compartiment « Backlog (aucun sprint) » |
| Affecter une carte à un Sprint | Glisser-déposer manuel entre compartiments |
| PBI | Tâche « USxx — nom [N pts] » |
| Texte1 (ID PBI) / Nombre1 (Points) | Préfixe / suffixe du titre |
| Nombre2 (Ordre backlog) | Ordre dans le compartiment |
| Notes et critères | Description + liste de contrôle (une case par critère) |
| Tâches T-USxx-n | Sous-tâches |
| État du tableau | Progression ; « À vérifier » = étiquette (≠ Done) |
| Texte2 (Obstacle) | Étiquette « Bloqué » + ligne datée dans la description |
| Texte3 (Résultat DoD) | Étiquettes « Conforme » / « Non conforme » |
| Afficher dans le tableau | Aucun équivalent garanti ; les sous-tâches ne sont pas des cartes séparées (à vérifier) |
| Personnaliser les cartes | Aucun équivalent garanti ; le titre porte l’ID et les points, les étiquettes portent l’état. Vérifier si le tableau permet de choisir les informations affichées |
| Nombre3 (Reste estimé h), Texte4 (Référence IA), Texte5 (Décision IA), burndown, registres | Excel |
| Product Goal, Sprint Goals | Objectifs Planner si présents, sinon description du plan |
| Gantt, mode manuel, Durée | Aucun équivalent requis ; vues Grille / Tableau / Planification / Graphiques à vérifier |
| Archives .mpp | Captures ou exports du plan (à vérifier) |
| Rapports natifs | Vue Graphiques (à vérifier) |

### C.3 Alias des huit champs

| Champ technique (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Texte1 (ID PBI) | Préfixe du titre de la tâche (« USxx — … ») | Colonne ID PBI |
| Texte2 (Obstacle) | Étiquette « Bloqué » + ligne datée dans la description | Colonne Obstacle (avec date) |
| Texte3 (Résultat DoD) | Étiquettes « Conforme » / « Non conforme » (« À vérifier » = étiquette, jamais Done) | Colonne Résultat DoD |
| Texte4 (Référence IA) | Aucun champ équivalent | Colonne Référence IA (ex. « IA-04 ; IA-07 ») |
| Texte5 (Décision IA) | Aucun champ équivalent | Colonne Décision IA (ex. « Corrigé puis retenu ») |
| Nombre1 (Points) | Suffixe du titre « [N pts] » | Colonne Points (total initial 47) |
| Nombre2 (Ordre backlog) | Ordre de la tâche dans le compartiment (1 = premier) | Colonne Ordre backlog |
| Nombre3 (Reste estimé h) | Aucun champ équivalent (ne pas confondre avec la progression) | Colonne Reste estimé h, saisie manuellement, vide avant Planning |

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

### C.5 Suivi quotidien du Sprint 1 (J0 à J10) — à tenir dans Excel

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

### C.8 Repères d’interface du TP source (Project, pour mémoire)

Ce tableau est conservé du TP source. Il concerne Project et ne s’applique pas à Planner.

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

### C.9 Où retrouver les autres tableaux

| Donnée | Emplacement |
|---|---|
| Sprints, dates, capacité 180 / 36 / 72 h | Étape 6, rubrique 7 |
| Plan du Sprint 1 (52 h) | Étape 7, rubrique 7 |
| Série idéale et points restants | Étape 9, rubrique 7 |
| US13 et taux d’atteinte | Étape 10, rubrique 7 |
| Retours Review et Retrospective | Étape 11, rubrique 7 |
| Bilan S1, S2, S3 | Étape 13, rubrique 7 |

## Annexe D — Dépannage

Cette annexe regroupe les rubriques « Si ça ne marche pas » de chaque étape.

### Étape 0

- **Copilot dans le plan est absent.** Vérifiez votre licence et le type de plan (Premium). Faites contrôler le déploiement par l’administrateur.
- **Le Planner Agent n’écrit pas dans un plan Premium.** Les étapes 8 et 13 utilisent Copilot dans le plan ou la saisie manuelle.
- **Un menu porte un autre nom.** Notez l’intitulé réellement observé.

### Étape 1

- **L’IA convertit chaque tâche du TP1 en story.** Relancez avec la RELANCE DE CONTRÔLE (Annexe A) et rappelez la consigne « Ne convertis pas chaque tâche en story ».
- **Vous ne disposez pas du TP1.** Le TP1 en Project n’est plus requis : utilisez le tableau TP1/TP2 et les trois activités du prompt.
- **L’IA propose Sprint 1 : spécifications, Sprint 2 : développement, Sprint 3 : tests.** Rejetez cette proposition (rubrique 9) et demandez une tranche fonctionnelle utilisable.

### Étape 2

- **Le plan Premium est introuvable.** Notez le constat et faites contrôler la licence par l’administrateur. Une simulation dans Excel permet de poursuivre, mais ne remplace pas la validation des compétences dans Planner.
- **Une vue ou une fonction manque (Graphiques, Objectifs).** Notez les intitulés réellement observés dans le tableau « observé sur mon poste ». Ne présumez aucune fonction.
- **Le plan ne se retrouve pas après réouverture.** Rouvrez-le depuis Planner, vérifiez le nom et notez le constat.

### Étape 3

- **La fonction Objectifs est absente.** Saisissez le Product Goal dans la description du plan et gardez le registre Produit.
- **L’IA propose une hausse de CA chiffrée.** Rejetez-la (rubrique 9) : les 45 minutes sont une hypothèse à vérifier.
- **Le but proposé ressemble à « livrer 12 stories ».** Demandez un résultat utilisateur observable, pas une mesure de production.

### Étape 4

- **L’IA fournit moins de 12 fiches ou des IDs en double.** Relancez avec la RELANCE DE CONTRÔLE et vérifiez 12 IDs uniques, de US01 à US12.
- **Un critère contredit les données de référence.** Recalculez avec l’Annexe C. Les critères non validés restent des questions.
- **Copilot dans le plan crée plus de tâches que prévu.** Supprimez les doublons : le backlog compte exactement 12 PBI.

### Étape 5

- **Les tâches sont créées en double ou avec un titre irrégulier.** Testez une tâche, puis une deuxième, et corrigez le format « USxx — nom [N pts] » avant de poursuivre.
- **La liste de contrôle n’accepte pas tous les critères.** La limite est à vérifier sur votre poste. Conservez les critères complets dans la description.
- **L’ordre est perdu après un glisser-déposer.** Recontrôlez l’ordre 1 à 12 avec le tableau de l’Annexe C.4.

### Étape 6

- **Un compartiment est mal nommé.** Renommez-le exactement : « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) », « Sprint 3 (30/11–13/12) ».
- **Des sprints natifs sont présents.** Ne les utilisez pas : le TP utilise des compartiments par défaut.
- **Le glisser-déposer ne fonctionne pas.** Ouvrez la tâche et cherchez le champ de compartiment (à vérifier sur votre poste), ou notez le constat.

### Étape 7

- **Vous voulez ajouter US04 « parce qu’il reste de la capacité ».** Rejetez ce raisonnement (rubrique 9). Une autre sélection cohérente demande son propre suivi.
- **Les heures des sous-tâches s’ajoutent à celles du PBI.** Ne les additionnez pas : T-US01-1 à T-US01-3 décrivent les mêmes 20 h.
- **Vous n’avez pas lu la DoD.** Lisez-la en Annexe C avant de sélectionner les PBI.

### Étape 8

- **Le Planner Agent n’écrit pas dans un plan Premium.** Utilisez Copilot dans le plan, ou la saisie manuelle.
- **L’agent ne propose pas la modification demandée (étiquette, description).** Faites-la à la main : sa limite est le nom, la progression, les dates, la priorité et le nom du plan.
- **Vous cherchez les heures restantes dans Planner.** Elles restent dans Excel : Nombre3 (Reste estimé h) n’a aucun champ Planner.

### Étape 9

- **La vue Graphiques est absente ou différente.** Notez les titres réellement observés ; le catalogue peut varier selon la version.
- **Les graphiques ne montrent pas les heures restantes.** C’est normal : elles sont dans Excel. Aucun burndown Story Points prêt à l’emploi n’est garanti.
- **Les sous-tâches gonflent le total.** Vérifiez qu’elles ne sont pas comptées comme des PBI supplémentaires.

### Étape 10

- **L’IA conclut qu’il faut annuler le Sprint.** Rappelez que seul le PO peut l’annuler, si le but devient obsolète. Une urgence ne suffit pas.
- **US13 se retrouve dans « Sprint 1 ».** Glissez-la de nouveau vers le Backlog : le scénario de suivi reste inchangé.
- **Des données futures figurent dans la conversation.** Ouvrez une nouvelle conversation avec le prompt de cadrage et le seul état J4.

### Étape 11

- **L’IA invente des citations d’utilisateurs.** Comparez toutes les citations à celles du tableau de l’étape et rejetez les autres.
- **Vous cherchez à faire la démonstration BI dans Planner.** Planner n’exécute pas ces interactions BI : simulez-la à partir des agrégats.
- **Les comptes rendus encombrent le plan.** Conservez-les dans les registres Review et Retrospective (Excel).

### Étape 12

- **L’IA déclare « tests passés » sans preuve.** Rejetez : une preuve absente signifie non démontré.
- **Une tâche à Terminé semble validée.** Planner n’applique pas la DoD : vérifiez l’étiquette « Conforme » et les preuves dans la description.
- **US03 doit être simulée « Non conforme ».** Faites-le dans une copie d’exercice, puis revenez au scénario corrigé.

### Étape 13

- **US06 apparaît en double.** Gardez la même tâche, ne la dupliquez pas et ne créditez aucun point partiel.
- **L’IA a déjà reçu les résultats de fin S3 à la première passe.** Ouvrez une nouvelle conversation avec le prompt de cadrage et les seules données de fin S2.
- **L’historique S2 disparaît.** Archivez la fin S2 et l’historique avant de déplacer US06.

### Fonction manquante sur le poste

Si une fonction manque, consignez le constat et faites contrôler le déploiement par l’administrateur. Pour poursuivre temporairement, vous pouvez simuler le suivi dans Excel, mais cela ne remplace pas la validation des compétences dans Planner.

## Annexe E — Checklist finale et livrables

### Dossier participant — livrables IA attendus

1. Un plan Planner de travail avec étiquettes, et un registre Excel enrichi des colonnes de traçabilité IA, avec archives (captures ou exports) Backlog, Planning S1, Fin S1, Fin S2 et Fin S3.
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
- [ ] Colonnes Référence IA / Décision IA créées dans Excel sans écraser les colonnes existantes.
- [ ] Les données futures ne sont pas révélées dans les analyses d’un point de suivi antérieur.
- [ ] Aucun calcul, durée, date, droit d’accès ou test réalisé n’est accepté sans contrôle.
- [ ] L’IA ne sélectionne pas les PBI à la place des Developers, ne déclare pas Done sans preuve et n’annule pas un Sprint à la place du PO.
- [ ] Proposition, saisie effective et résultat observé sont distingués.
- [ ] Licence, type de plan (Premium), langue et fonctions réellement observées notées (tableau « observé sur mon poste »).
- [ ] Nouveau plan distinct, compartiments par défaut utilisés (sprints natifs non présumés), réouverture vérifiée.
- [ ] Aucune fonction absente annoncée comme native ; Planner Premium, Planner de base et Project distingués.
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

### Contrôles ajoutés pour Planner

- [ ] L’IA n’a choisi ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.
- [ ] Le contrôle « après création par Copilot ou l’agent » a été fait à chaque étape.
- [ ] Les quatre étiquettes (Bloqué, Conforme, Non conforme, À vérifier) existent et « À vérifier » n’a jamais été traité comme Done.
- [ ] Les heures restantes, le burndown et le registre IA sont dans Excel.
- [ ] Aucune date d’échéance n’a été saisie sur les PBI ; les dates du cas figurent dans les noms de compartiments.
- [ ] Le tableau « observé sur mon poste » et le plan de repli (étapes 8 et 13) sont renseignés.

### Auto-évaluation de fin de la demi-journée 4

- [ ] Je peux expliquer pourquoi l’IA propose et pourquoi les participants décident.
- [ ] Mon registre IA contient IA-01 à IA-13, chacune avec contrôle et décision.
- [ ] Je distingue heures restantes, points Done et progression.
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

### Termes Planner ajoutés

| Terme | Définition |
|---|---|
| Plan / Plan | Ensemble des tâches d’un projet dans Planner |
| Compartiment / Bucket | Colonne qui regroupe des tâches ; représente un Sprint ou le Backlog dans ce TP |
| Étiquette / Label | Marque colorée sur une tâche |
| Liste de contrôle / Checklist | Cases à cocher dans une tâche ; une case par critère |
| Sous-tâche / Subtask | Tâche détaillée rattachée à une tâche |
| Progression / Progress | Avancement de la tâche ; ne vaut pas Done |
| Copilot dans le plan | Copilot ouvert dans un plan Premium (aperçu / à vérifier) |
| Planner Agent | Agent de Copilot qui crée ou modifie des tâches par cartes à approuver |
| Objectif / Goal | Objectif d’un plan Premium (à vérifier sur votre poste) |

## Annexe G — Liens PSPO I

Ces liens sont optionnels. Ils relient chaque étape à une notion de la préparation PSPO I, qui reste un document indépendant. Les références [S3] et [S4] renvoient aux sources de l’[Annexe H](#annexe-h--sources-et-limites-du-support).

| Étape | Lien avec la préparation PSPO I |
|---|---|
| 0. Prise en main de Planner | Aucun outil particulier n’est prescrit par Scrum. [S3] |
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

### Limites du support source (Project)

L’assistant IA ne dispose d’aucun accès implicite au MPP et ne certifie ni qualité ni valeur. Aucun script ou développement n’est requis. Pas de test exécuté sur votre poste Project 2609 ; pas de capture inventée ; pas de renommage natif des sprints desktop garanti ; pas de burndown Story Points présumé ; pas d’historique déduit automatiquement du champ Nombre3 ; pas de synchronisation MPP/Planner promise. Les conventions de capacité et d’estimation ne sont pas des règles universelles Scrum.

### Limites de la version Planner

- Aucune exécution sur votre poste n’est revendiquée : chaque chemin de menu et chaque capacité est à vérifier.
- Copilot dans le plan est décrit comme un aperçu (preview) par Microsoft : sa disponibilité est à vérifier.
- Les sprints natifs de Planner Premium ne sont pas présumés ; le TP utilise des compartiments.
- La limite du Planner Agent retenue (nom, progression, dates, priorité, nom du plan) est à vérifier sur votre poste ; la documentation Microsoft décrit d’autres capacités [S14, S15].
- Aucun historique quotidien, burndown ni champ d’heures restantes n’est supposé dans Planner : ils sont dans Excel.
- La qualité maximale des prompts est attendue en anglais ; le TP les fournit en français (tester d’abord en français).

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

### Sources ajoutées pour la version Planner

Sources consultées le 23 octobre 2026. Ajouts de la version Planner, absents du TP source. S1, S2 et S7 concernent Project ou Project pour le web ; elles sont conservées du TP source.

- [S11] Microsoft Support — [Fonctionnalités avancées des plans Premium dans Planner](https://support.microsoft.com/en-us/planner/teams/advanced-capabilities-with-premium-plans-in-planner).
- [S12] Microsoft Support — [Créer un plan avec Copilot dans Planner (aperçu)](https://support.microsoft.com/en-us/planner/copilot/create-a-new-plan-with-copilot-in-planner-preview).
- [S13] Microsoft Support — [Créer des tâches avec Copilot dans Planner (aperçu)](https://support.microsoft.com/en-us/planner/copilot/create-new-tasks-with-copilot-in-planner-preview).
- [S14] Microsoft Support — [Questions fréquentes et limites du Planner Agent](https://support.microsoft.com/en-US/Planner/planner-agent-limitation).
- [S15] Microsoft Support — [Que pouvez-vous faire avec le Planner Agent dans Copilot ?](https://support.microsoft.com/en-us/planner/what-can-you-do-with-planner-agent-in-copilot).

## Annexe I — Traçabilité et contrôles

Cette annexe prouve qu’aucun contenu du TP source n’a disparu.

### I.1 Correspondance section du source → nouvel emplacement

| Section du source | Nouvel emplacement |
|---|---|
| Titre, public, durée, fichier, mention « fictif » | 0A › Objectif et résultat final (fichier remplacé par le plan Planner) |
| Objectifs pédagogiques (7) | 0A › Objectifs pédagogiques (objectifs 5 et 6 adaptés) |
| Prérequis et consignes | 0A › Prérequis (adaptés à Planner) |
| Contrôle pratique du poste | Contrôle du poste (25 min), adapté à Planner |
| Repères d’interface (Project) | Annexe C.8 (pour mémoire) ; repères Planner dans Contrôle du poste |
| Fil conducteur et cycle en 6 points | 0A › Cycle IA en 6 temps |
| Configuration de l’IA et confidentialité | 0A › Confidentialité |
| Prompt de cadrage | Annexe A (adapté à Planner) |
| Comment utiliser les données de référence | 0A › Comment lire ce TP |
| Registre IA obligatoire | Annexe B (champs Texte4/Texte5 → colonnes Excel) |
| Deux demandes de relance | Annexe A (relance de contrôle identique ; relance après saisie adaptée) |
| Programme | 0B › Programme et durées (quatre demi-journées) |
| Scénario métier et acteurs | 0B |
| Données BI de référence | Annexe C.1 |
| Étapes 1 à 13 (IA-01 à IA-13) | Parties 2 à 4 (11 rubriques par étape) |
| Fiches US01 à US12, principes d’ordonnancement | Étape 4, rubrique 7 ; Annexe C.4 |
| US13 | Étape 10, rubrique 7 ; Annexe C.4 |
| Suivi J0–J10 | Étape 8, rubrique 7 ; Annexe C.5 (à tenir dans Excel) |
| Tableau TP1/TP2 | Étape 1, rubrique 2 |
| DoD (10 points) | Étape 12, rubrique 7 ; Annexe C.6 |
| Dossier participant, auto-contrôle IA | Annexe E |
| Registres participant (7) | Annexe B |
| Checklist finale | Annexe E (lignes Project adaptées, 6 contrôles Planner ajoutés) |
| Limites du support | Annexe H |
| Glossaire | Annexe F (+ termes Planner) |
| Sources S1 à S9 | Annexe H (+ S11 à S15) |
| Liens PSPO I | Rubrique 11 de chaque étape ; Annexe G |
| Défauts à rejeter, erreurs fréquentes, questions | Rubriques 9 et 11 de chaque étape (+ défauts propres à Planner) |
| « Trace IA supplémentaire… » | Rubrique 8 de chaque étape |

### I.2 Contrôle des valeurs et éléments

| Élément du source | Présent | Emplacement |
|---|---|---|
| CA cumul 90 000 TND | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Coût d’achat cumul 63 000 TND | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Marge cumul 27 000 TND | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Taux de marque 30 % | oui | 0B — Cadre du TP › Programme et durées |
| 47 points (backlog initial) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| 50 points (après US13) | oui | Partie 4 — S’adapter et inspecter › Étape 10 — Simuler un changement de priorité en cours de sprint |
| Capacité PBI 72 h | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| 52 h (Sprint 1) | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| 48 h à J3 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| 42 h (J4) | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| 31 h à J5 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| 13 points Done en S1 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| S2 : 8 Done, US06 non conforme | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| 34 Done uniques | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| 16 restants | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| Moyenne 14 min (S3) | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| Taux 85,71 % / 80 % / 83,33 % | oui | Partie 4 — S’adapter et inspecter › Étape 10 — Simuler un changement de priorité en cours de sprint |
| Sprint 3 : 30/11 | oui | Partie 2 — Préparer le produit › Étape 3 — Définir le produit et son objectif |
| Dernier jour ouvré S1 : 13/11 | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| J1 = 02/11, J5 = 06/11, J6 = 09/11, J10 = 13/11 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| Compartiment « Sprint 1 (02/11–15/11) » | oui | 0B — Cadre du TP › Schéma du flux Scrum du TP |
| Compartiment « Sprint 2 (16/11–29/11) » | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| Compartiment « Sprint 3 (30/11–13/12) » | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| Compartiment « Backlog (aucun sprint) » | oui | Partie 1 — Découvrir Microsoft Planner › Étape 0 — Prise en main de Planner et test des entrées d’IA |
| Texte1 (ID PBI) | oui | Partie 2 — Préparer le produit › Étape 5 — Organiser le Product Backlog dans Planner |
| Texte2 (Obstacle) | oui | Partie 2 — Préparer le produit › Étape 5 — Organiser le Product Backlog dans Planner |
| Texte3 (Résultat DoD) | oui | Partie 2 — Préparer le produit › Étape 5 — Organiser le Product Backlog dans Planner |
| Texte4 (Référence IA) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Texte5 (Décision IA) | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Nombre1 (Points) | oui | Partie 2 — Préparer le produit › Étape 5 — Organiser le Product Backlog dans Planner |
| Nombre2 (Ordre backlog) | oui | Partie 2 — Préparer le produit › Étape 5 — Organiser le Product Backlog dans Planner |
| Nombre3 (Reste estimé h) | oui | 0A — Avant de commencer › Comment lire ce TP |
| RELANCE DE CONTRÔLE | oui | Partie 2 — Préparer le produit › Étape 1 — Comprendre le passage du prédictif à Scrum |
| RELANCE APRÈS SAISIE | oui | Annexe A — Prompts : index, cadrage et relances › Relance après saisie |
| IA-13 PASSE 2 | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| Règle d’or | oui | 0A — Avant de commencer › Objectif et résultat final |
| Prompt / trace IA-01 | oui | Partie 2 — Préparer le produit › Étape 1 — Comprendre le passage du prédictif à Scrum |
| Prompt / trace IA-02 | oui | Partie 2 — Préparer le produit › Étape 2 — Créer le plan Scrum dans Microsoft Planner |
| Prompt / trace IA-03 | oui | Partie 2 — Préparer le produit › Étape 3 — Définir le produit et son objectif |
| Prompt / trace IA-04 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Prompt / trace IA-05 | oui | Partie 2 — Préparer le produit › Étape 5 — Organiser le Product Backlog dans Planner |
| Prompt / trace IA-06 | oui | Partie 3 — Vivre un Sprint › Étape 6 — Planifier les sprints |
| Prompt / trace IA-07 | oui | Partie 3 — Vivre un Sprint › Étape 7 — Réaliser la Sprint Planning |
| Prompt / trace IA-08 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Gérer le Sprint Backlog et le travail quotidien |
| Prompt / trace IA-09 | oui | Partie 3 — Vivre un Sprint › Étape 9 — Suivre et visualiser l’avancement |
| Prompt / trace IA-10 | oui | Partie 4 — S’adapter et inspecter › Étape 10 — Simuler un changement de priorité en cours de sprint |
| Prompt / trace IA-11 | oui | Partie 4 — S’adapter et inspecter › Étape 11 — Organiser la Sprint Review et la Sprint Retrospective |
| Prompt / trace IA-12 | oui | Partie 4 — S’adapter et inspecter › Étape 12 — Comprendre l’Increment et la Definition of Done |
| Prompt / trace IA-13 | oui | Partie 4 — S’adapter et inspecter › Étape 13 — Gérer plusieurs sprints et inspecter les résultats |
| Fiche US01 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US02 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US03 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US04 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US05 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US06 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US07 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US08 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US09 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US10 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US11 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| Fiche US12 | oui | Partie 2 — Préparer le produit › Étape 4 — Construire le Product Backlog |
| US13 (étape 10) | oui | Partie 4 — S’adapter et inspecter › Étape 10 — Simuler un changement de priorité en cours de sprint |
| DoD en 10 points (point 10) | oui | Partie 4 — S’adapter et inspecter › Étape 12 — Comprendre l’Increment et la Definition of Done |

### I.3 Modifications et incohérences

- Prompts adaptés à Planner, et seulement ceux-ci : prompt de cadrage, IA-02, IA-05, IA-06, IA-08, IA-09. Tous les autres sont mot pour mot, IA-07 et IA-13 inclus.
- Exception : la relance après saisie citait « Project » et « le MPP » ; elle est adaptée à Planner. À valider ou à rétablir.
- Modification : Relance après saisie adaptée (Project/MPP → Planner)
- Modification : Objectifs pédagogiques adaptés à Planner
- Modification : Cycle IA : phrase sur Project remplacée par Planner / Excel
- Modification : Confidentialité adaptée aux entrées d’IA Planner
- Modification : Phrase « Un fichier Project représente le travail » → « Un plan Planner… »
- Modification : Étape 2 : entrées de IA-02 adaptées à Planner
- Modification : Titres des étapes 2 et 5 : Microsoft Project → Planner ; étape 9 : « par Project » → « par Planner »
- Modification : Registre IA : champs Project Texte4/Texte5 → colonnes Excel ; Notes → description
- Modification : Checklist finale : lignes Project adaptées à Planner
- Modification : Dossier participant : fichier MPP → plan Planner + registre Excel
- Modification : Étape 2 : entrées de IA-02 adaptées à Planner
- Nom de fichier : le prompt IA-02 citait `NOVALIS_BI_Scrum_TP2.mpp` ; il cite maintenant le plan `NOVALIS_BI_Scrum_IA_Planner_TP2`.
- Dates : seules celles du source sont utilisées (dates des Sprints dans le nom des compartiments ; J1 = 02/11, J5 = 06/11, J6 = 09/11, J10 = 13/11). Précision ajoutée à l’étape 6 : 15/11, 29/11 et 13/12 tombent un dimanche, et le dernier jour ouvré du Sprint 1 est le 13/11.
- Archives : `NOVALIS_BI_Scrum_00_Backlog`, `_01_Planning_S1` et `_02_Fin_S2` gardent leur nom du source (sans extension .mpp, remplacées par des captures ou exports) ; `_01b_Fin_S1` et `_03_Fin_S3` sont des noms proposés, absents du TP source.
- Faute « Verifier » corrigée en « Vérifier ».
- Étape 1 : le TP1 en Project n’est plus requis ; il est remplacé par le tableau TP1/TP2 du source et une capture facultative.
- Étape 4 : listes de contrôle dérivées des critères testables des fiches (une case par critère ; 3 cases pour la plupart, 2 pour US05, 4 pour US09).
- Fichier Excel joint : les intitulés de colonnes diffèrent du TP source (Annexe B) ; aucun n’a été tranché.
- Les noms des étiquettes et des compartiments sont ceux de la table de correspondance validée.