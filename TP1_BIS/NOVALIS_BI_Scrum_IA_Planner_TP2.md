# TP 2 — NOVALIS Distribution BI — Scrum + IA dans Microsoft Planner + Copilot (version débutant)

Version « Planner + Copilot » du TP source « NOVALIS Distribution BI — Scrum + IA ». Le Scrum reste identique. Seuls l’outil, les chemins, le stockage des données et le rôle de l’IA changent.

## Sommaire
- [0A — Avant de commencer](#0a--avant-de-commencer)
- [Partie 1 — Découvrir Microsoft Planner](#partie-1--découvrir-microsoft-planner)
  - [Étape 0 — Prise en main de Planner et test de l’agent](#étape-0--prise-en-main-de-planner-et-test-de-lagent)
- [Contrôle du poste (25 min)](#contrôle-du-poste-25-min)
- [0B — Cadre du TP](#0b--cadre-du-tp)
- [Partie 2 — Préparer le produit](#partie-2--préparer-le-produit)
  - [Étape 1 — Créer le plan Scrum dans Microsoft Planner](#étape-1--créer-le-plan-scrum-dans-microsoft-planner)
  - [Étape 2 — Définir le produit et son objectif](#étape-2--définir-le-produit-et-son-objectif)
  - [Étape 3 — Construire le Product Backlog](#étape-3--construire-le-product-backlog)
  - [Étape 4 — Organiser le Product Backlog dans Planner](#étape-4--organiser-le-product-backlog-dans-planner)
- [Partie 3 — Vivre un Sprint](#partie-3--vivre-un-sprint)
  - [Étape 5 — Planifier les sprints](#étape-5--planifier-les-sprints)
  - [Étape 6 — Réaliser la Sprint Planning](#étape-6--réaliser-la-sprint-planning)
  - [Étape 7 — Gérer le Sprint Backlog et le travail quotidien](#étape-7--gérer-le-sprint-backlog-et-le-travail-quotidien)
  - [Étape 8 — Suivre et visualiser l’avancement](#étape-8--suivre-et-visualiser-lavancement)
- [Partie 4 — S’adapter et inspecter](#partie-4--sadapter-et-inspecter)
  - [Étape 9 — Simuler un changement de priorité en cours de sprint](#étape-9--simuler-un-changement-de-priorité-en-cours-de-sprint)
  - [Étape 10 — Organiser la Sprint Review et la Sprint Retrospective](#étape-10--organiser-la-sprint-review-et-la-sprint-retrospective)
  - [Étape 11 — Comprendre l’Increment et la Definition of Done](#étape-11--comprendre-lincrement-et-la-definition-of-done)
  - [Étape 12 — Gérer plusieurs sprints et inspecter les résultats](#étape-12--gérer-plusieurs-sprints-et-inspecter-les-résultats)
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
- [Annexe E — Checklist finale et livrables](#annexe-e--checklist-finale-et-livrables)
- [Annexe F — Glossaire français / anglais](#annexe-f--glossaire-français--anglais)
- [Annexe G — Liens PSPO I](#annexe-g--liens-pspo-i)
- [Annexe H — Sources et limites du support](#annexe-h--sources-et-limites-du-support)
- [Annexe I — Traçabilité et contrôles](#annexe-i--traçabilité-et-contrôles)

## 0A — Avant de commencer

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PMO = bureau de gestion de projets ; PMP = certification de gestion de projet ; AMOA = assistance à maîtrise d’ouvrage ; PSPO I = Professional Scrum Product Owner I ; J0 = jour 0 du Sprint (J1 à J10 : jours ouvrés suivants).

### Objectif et résultat final

Ce TP vous apprend à construire, contrôler et adapter un planning Scrum dans Microsoft Planner, avec l’aide de Copilot. Le Scrum reste identique au TP d’origine. Seuls l’outil, les chemins de menu, le stockage des données et le rôle de l’IA changent.

À la fin, vous disposez d’un plan de base partagé organisé en compartiments (Backlog et trois Sprints), de douze traces IA (IA-01 à IA-12) et d’un registre Excel. Le détail des livrables figure en [Annexe E](#annexe-e--checklist-finale-et-livrables).

Support participant — Planner + Copilot — adaptation du TP source « Version enrichie IA du 22 octobre 2026 ».

Public : consultants, Product Owners, chefs de projet, PMO, PMP et AMOA.

Durée : voir le programme en [0B](#0b--cadre-du-tp). Le TP source durait 7 heures hors pauses (contrôle initial de 25 minutes + 13 étapes à 6 h 35). Cette version retient 12 étapes et est découpée en quatre demi-journées (environ 14 h 30, indicatif, hors pauses).

Nom du plan : `NOVALIS_BI_Scrum_IA_Planner_TP2`.

Toutes les personnes, transactions, capacités, estimations et observations sont fictives et pédagogiques. Ce TP ne développe pas réellement un produit BI : il simule son pilotage et l’inspection de ses résultats. Un plan Planner représente le travail ; il n’est pas l’Increment BI.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint. L’IA propose ; les participants contrôlent et décident.

> ⚠️ Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done. Il exécute seulement ce que vous avez décidé, un ordre à la fois.

> **Pourquoi un plan de base ?** Le Planner Agent prend en charge les plans de base partagés récemment ouverts, mais pas les plans Premium (à vérifier sur votre poste) [S14]. Les sprints natifs, les sous-tâches et les objectifs sont des fonctions Premium [S11]. Ce TP les remplace par des compartiments, des éléments de liste de contrôle et la description du plan.

#### Objectifs pédagogiques

L’objectif principal est de construire et de faire évoluer le planning avec l’aide de l’IA, tout en démontrant les contrôles humains et le résultat dans Planner. Vous devrez savoir :

1. Préparer un contexte et un prompt exploitables pour la planification.
2. Faire produire vision, backlog, critères, scénarios de Sprint et plans de travail.
3. Distinguer faits, hypothèses, recommandations et informations manquantes.
4. Détecter calculs faux, dépendances artificielles, dates inventées et confusions Scrum.
5. Transformer une sortie IA validée en titres, descriptions, listes de contrôle, étiquettes et compartiments dans Planner.
6. Faire analyser un état d’avancement réellement exporté ou recopié du plan.
7. Comparer des adaptations et conserver la décision humaine dans un registre IA.

À l’issue du TP, vous saurez créer un plan organisé en Sprints (compartiments), définir produit et objectif, identifier utilisateurs et besoins, rédiger et ordonner des stories, préparer un Sprint selon sa capacité, suivre le travail et les obstacles, traiter un changement, préparer Review et Retrospective, appliquer une Definition of Done et inspecter les résultats sur plusieurs sprints.

Les liens conceptuels avec PSPO I restent signalés dans les étapes ; l’entraînement aux questions de certification est séparé.

### Prérequis

Cochez chaque ligne avant de commencer. Elles adaptent les prérequis du TP source à Planner.

- [ ] Compte professionnel avec la licence Microsoft 365 Copilot (à vérifier sur votre poste). Le TP s’appuie sur un plan de base : voir l’encadré « Pourquoi un plan de base ? ».
- [ ] Droit de créer un plan de base partagé et de l’ouvrir dans Planner (à vérifier sur votre poste) ; Excel recommandé pour les registres et graphiques, ou tableaux papier.
- [ ] Accès à Copilot (chat général) et au Planner Agent (à vérifier sur votre poste). Aucun accès de l’IA à votre plan n’est présumé en dehors du Planner Agent, qui ne voit que les plans de base partagés récemment ouverts. Préparer un dossier de traces et vérifier que les données fictives peuvent être utilisées.
- [ ] Aucun développement, aucune programmation, aucun accès à une base BI réelle requis.
- [ ] Connaître les actions de base : l’Étape 0 vous les fait pratiquer (créer un plan, une tâche, une étiquette, rouvrir un plan).
- [ ] Les données du présent support suffisent pour réaliser les manipulations ; un classeur peut être construit à partir des tableaux fournis.

> ⚠️ Attention — Le support s’appuie sur la documentation officielle ; aucune exécution sur votre poste n’est revendiquée. Les capacités du Planner Agent sont à vérifier sur votre poste. Les traductions et l’emplacement des commandes peuvent varier. Les sprints natifs ne sont pas présumés. [S11, S14, S15]

### Les deux entrées d’IA

Ce TP utilise deux entrées d’IA, toutes deux à vérifier sur votre poste.

| Entrée | Rôle | Limites à connaître |
|---|---|---|
| Copilot (chat général) | Analyser et rédiger : propositions, comparaisons, supports | Il ne voit pas votre plan. Il ne crée rien dans Planner |
| Planner Agent (dans Copilot) | Agir dans Planner : créer des plans et des tâches par cartes à approuver, modifier nom, progression, dates, priorité, nom du plan, notes d’une nouvelle tâche et compartiments | Il ne modifie pas les étiquettes, les listes de contrôle, les affectations, les pièces jointes ni les notes de tâches existantes. Il ne supprime ni n’annule |

Ces limites viennent de la documentation Microsoft [S14, S15]. Les deux pages ne coïncident pas sur la liste des champs modifiables : l’Étape 0 vous fait relever ce que l’agent propose réellement. Si l’agent échoue, vous saisissez à la main (repli unique).

### Comment lire ce TP

Le TP contient une Étape 0 de prise en main, puis 12 étapes. Chaque étape suit le même plan en 11 rubriques :

1. Ce que vous allez obtenir.
2. Pourquoi cette étape.
3. À faire dans Planner (actions numérotées).
4. Avec l’IA (entrée utilisée : Copilot (chat général) ou Planner Agent ; bloc « Ce que l’agent fait / ce que je fais à la main »).
5. Contrôles avant saisie (dont « Attendu à cette étape » quand du contenu est créé).
6. Passage de la réponse IA à Planner.
7. Données à saisir.
8. Vérifier le résultat et trace IA à conserver.
9. Erreurs fréquentes et propositions défectueuses à rejeter.
10. Si ça ne marche pas.
11. Pour réfléchir et lien PSPO I (optionnel).

Chaque chemin de menu et chaque capacité de Planner ou de Copilot est marqué « à vérifier sur votre poste ». Les emplacements `[CAPTURE À INSÉRER : …]` indiquent où ajouter une copie d’écran.

Les champs du TP source gardent leur alias, par exemple « Nombre3 (Reste estimé h) ». Ils n’existent pas tous dans Planner : la correspondance figure en [Annexe C](#annexe-c--données-de-référence). Les heures restantes, le burndown, la Référence IA et la Décision IA restent dans Excel.

Qualité maximale en anglais : testez d’abord vos prompts en français ; si la qualité est insuffisante, adaptez-les (voir l’Étape 0).

Règle de données : l’agent lit le plan. N’y laissez que l’état du moment ; la table J0–J10 reste dans Excel.

#### Contrôle après création par l’agent

Cette liste complète s’applique chaque fois que l’agent crée ou modifie du contenu dans Planner. Chaque étape ne rappelle que la ligne « Attendu à cette étape », et seulement si du contenu est créé.

- [ ] Le nombre de tâches correspond à l’attendu de l’étape.
- [ ] Aucun doublon de tâche ni d’élément de liste de contrôle.
- [ ] Aucune date inventée : seules les dates du cas figurent (dans le nom des compartiments), aucune date d’échéance sur les PBI.
- [ ] Aucun point converti en jours, en heures ou en dates.
- [ ] Aucune tâche marquée terminée sans preuve.

#### Utiliser les données de référence

Pour chaque étape : produire d’abord une proposition IA à partir des entrées indiquées, puis seulement la confronter aux tableaux de référence. Ces tableaux servent à la normalisation et à la simulation suivante, pas de preuve que l’IA a trouvé la bonne réponse.

À l’étape 3, l’IA propose les formulations et critères ; les participants normalisent ensuite les 12 PBI avec les fiches du support. Les points restent illustratifs et sont validés dans le jeu de rôle Developers. À l’étape 6, comparer les scénarios, puis retenir US01/02/03 pour utiliser le suivi fourni. Si une autre sélection est conservée, créer un autre jeu de suivi et ne pas réutiliser artificiellement les chiffres du scénario de référence.

Ne pas fournir prématurément les résultats des Sprints 2 et 3 à l’assistant : ce serait lui donner le résultat à expliquer au lieu de lui faire analyser la situation disponible. Pour les exercices d’analyse de J5, ne transmettre que J0 à J5. Si la conversation contient déjà des données futures, ouvrir une nouvelle conversation avec le prompt de cadrage et le seul état du moment : c’est notamment nécessaire pour rejouer l’urgence J4 après avoir étudié la fin du Sprint.

### Code couleur

| Pastille | Signification | Où la trouver |
|---|---|---|
| 🟦 | Planner : actions et saisies | Rubriques 3, 6 et 7 de chaque étape |
| 🟩 | Scrum : concept à comprendre | Rubriques 2 et 11 de chaque étape |
| 🟨 | IA : prompt, contrôle et décision | Rubriques 4 et 5 de chaque étape |

### Cycle IA en 6 temps

L’objectif central de ce TP est d’utiliser une IA comme assistant de construction et de contrôle du planning Scrum dans Microsoft Planner (avec Copilot). Il ne s’agit ni de demander à l’IA de développer la BI, ni de saisir passivement un planning déjà fourni.

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

- Utiliser uniquement les entrées d’IA autorisées par l’organisation : Copilot (chat général) et Planner Agent.
- Ne pas supposer la présence du Planner Agent : vous le testez à l’étape 0. Copilot (chat général) ne voit pas votre plan.
- Transmettre des extraits textuels ou tableaux sélectionnés, pas de données réelles sensibles.
- Une même conversation peut conserver le contexte, mais chaque nouvelle étape doit fournir l’état à jour et les décisions validées.
- Ne pas demander de SQL, de code, de mesures BI ni de scripts d’automatisation : le travail porte sur la planification.
- Si aucun assistant n’est accessible, utiliser les données de référence et documenter une analyse critique manuelle ; l’usage effectif d’un assistant reste alors à pratiquer ultérieurement.

> ⚠️ Le prompt de cadrage se trouve en [Annexe A](#annexe-a--prompts--index-cadrage-et-relances). Exécutez-le une seule fois dans Copilot (chat général), avant l’étape 1 (création du plan).

## Partie 1 — Découvrir Microsoft Planner

> **Sigles de cette partie** : IA = intelligence artificielle ; PBI = Product Backlog Item (élément du Product Backlog) ; PSPO I = Professional Scrum Product Owner I ; TP = travaux pratiques.

> Cette partie est une addition de la version Planner : elle n’existe pas dans le TP source. Elle prépare les débutants aux gestes de base et teste l’agent.

### Étape 0 — Prise en main de Planner et test de l’agent

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Demi-journée |
|---|---|---|
| Absente du TP source | 90 min | 1 |

**Ordre de travail** : alternez Planner et l’agent (rubriques 3 et 4).

#### 1. Ce que vous allez obtenir

Vous apprenez le vocabulaire et les gestes de base de Planner dans un plan d’essai de base partagé. Vous testez ensuite l’agent. Résultat attendu : un plan d’essai avec compartiments, tâches, étiquette et liste de contrôle, et un tableau « résultat des tests » rempli.

#### 2. Pourquoi cette étape

🟩 Les étapes suivantes supposent que vous savez créer une tâche, une étiquette et une liste de contrôle. Cette étape vous les fait pratiquer sans risque, hors du plan du TP. Elle vérifie aussi ce que le Planner Agent fait réellement sur votre poste. Le résultat du test ne vaut que pour un plan de base partagé ouvert récemment.

| Terme | Définition simple | Où le retrouver dans le TP |
|---|---|---|
| Plan | Ensemble des tâches d’un projet dans Planner. Le TP utilise un plan de base partagé (à vérifier sur votre poste). | Étape 1 |
| Compartiment (bucket) | Colonne qui regroupe des tâches. Le TP en fait un « Backlog (aucun sprint) » et trois Sprints. | Étapes 3 à 5 |
| Tâche | Unité de travail. Un PBI (Product Backlog Item) devient une tâche. | Étapes 3 et 4 |
| Étiquette (label) | Marque colorée sur une tâche : Bloqué, Conforme, Non conforme, À vérifier. Elle se pose à la main. | Étapes 4, 7 et 11 |
| Liste de contrôle (checklist) | Cases à cocher dans une tâche. Une case par critère. Elle se saisit à la main. | Étapes 3 et 4 |
| Élément de liste de contrôle | Case détaillée, par exemple T-US01-1 (les sous-tâches ne sont pas disponibles dans un plan de base, à vérifier). | Étape 6 |
| Description | Zone de texte libre de la tâche : formulation, valeur, contraintes, preuves. | Étapes 3 et 4 |
| Progression | Avancement de la tâche. « À vérifier » n’est pas une progression : c’est une étiquette. | Étapes 7 et 11 |
| Vue Grille | Liste des tâches en lignes et colonnes. | Étapes 4 et 8 |
| Vue Tableau | Compartiments en colonnes, tâches en cartes. | Étapes 5 à 7 |
| Vue Planification | Vue par dates. Le TP n’impose aucune date d’échéance sur les PBI. | Étape 5 |
| Vue Graphiques | Indicateurs sur le plan. À vérifier ce qu’elle affiche réellement. | Étape 8 |
| Sprint | Événement de durée fixe, d’un mois au plus. Dans ce TP, un Sprint est représenté par un compartiment. | Étape 5 |
| Carte | Représentation d’une tâche dans la vue Tableau. | Étapes 4 et 7 |
| Copilot (chat général) | Assistant pour analyser et rédiger. Il ne voit pas votre plan. | Étapes 2, 3, 6, 9, 10, 11 |
| Planner Agent | Agent dans Copilot : crée plans et tâches par cartes à approuver ; modifie nom, progression, dates, priorité, nom du plan. Il ne modifie ni étiquettes ni listes de contrôle. | Étapes 1, 3 à 9, 11, 12 |

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action de cette étape est à vérifier sur votre poste. Les noms de menus peuvent varier selon la langue et la version.

1. Ouvrez Planner (application web ou Teams) (à vérifier sur votre poste).
2. Dans Copilot, activez le Planner Agent (à vérifier sur votre poste).
3. Demandez à l’agent de créer le plan d’essai « Essai prise en main » (prompt agent 1). Lisez la carte, puis approuvez-la (à vérifier sur votre poste).
4. Ouvrez le plan dans Planner : un plan de base partagé ouvert récemment est visible de l’agent. Vérifiez son type (à vérifier sur votre poste).
5. Demandez à l’agent de créer « Tâche A » (prompt agent 2), puis de changer sa progression (prompt agent 3) (à vérifier sur votre poste).
6. Demandez à l’agent d’ajouter un compartiment « Compartiment 2 » (prompt agent 4) (à vérifier sur votre poste).
7. Demandez à l’agent d’ajouter une étiquette (prompt agent 5), puis une liste de contrôle (prompt agent 6). Un refus est attendu : notez la réponse (à vérifier sur votre poste).
8. À la main, ajoutez l’étiquette « Test » à « Tâche A » et une liste de contrôle de deux cases, puis écrivez une phrase dans la description (à vérifier sur votre poste).
9. À la main, glissez « Tâche A » d’un compartiment à l’autre (à vérifier sur votre poste).
10. Ouvrez successivement les vues Grille, Tableau, Planification et Graphiques, et notez ce que chacune montre (à vérifier sur votre poste).
11. Fermez le plan, rouvrez-le, puis vérifiez que tout est conservé (à vérifier sur votre poste).
12. Facultatif : si vous avez accès à un plan Premium, demandez à l’agent d’y renommer une tâche (prompt agent 7). Un refus est attendu (à vérifier sur votre poste).

> [CAPTURE À INSÉRER : vue Tableau du plan d’essai avec deux compartiments, « Tâche A », l’étiquette « Test » et la liste de contrôle]

> [CAPTURE À INSÉRER : carte d’approbation proposée par le Planner Agent pour la création de « Tâche A »]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent (tests) et Copilot (chat général) (à vérifier sur votre poste).

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Crée le plan d’essai et une tâche, change la progression, ajoute un compartiment | Vérifie le type de plan, pose l’étiquette, saisit la liste de contrôle et la description, déplace la tâche |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Crée un plan nommé « Essai prise en main ».
```

Prompt agent 2 — un ordre à la fois :

```text
Dans le plan « Essai prise en main », crée la tâche « Tâche A ».
```

Prompt agent 3 — un ordre à la fois :

```text
Passe la progression de « Tâche A » à « en cours ».
```

Prompt agent 4 — un ordre à la fois :

```text
Dans le plan « Essai prise en main », ajoute un compartiment « Compartiment 2 ».
```

Prompt agent 5 — un ordre à la fois : refus attendu.

```text
Ajoute l’étiquette « Test » à « Tâche A ».
```

Prompt agent 6 — un ordre à la fois : refus attendu.

```text
Ajoute à « Tâche A » une liste de contrôle de deux cases.
```

Prompt agent 7 (facultatif, plan Premium, refus attendu) — un ordre à la fois :

```text
Dans le plan « [nom d’un plan Premium] », renomme la tâche « [nom de la tâche] » en « [nom de la tâche] bis ».
```

##### Test — Copilot (chat général)

Prompt de test (ajout de la version Planner, absent du TP source) :

```text
Explique en trois phrases ce qu’est un compartiment dans un plan Planner.
Si tu n’es pas certain d’une fonction, dis-le au lieu de l’affirmer.
```

##### Langue des prompts

Qualité maximale en anglais : testez d’abord un prompt en français ; si la qualité est insuffisante, adaptez-le.

##### Sortie attendue

Un tableau « résultat des tests » complété, avec des constats et non des suppositions. Relevez ce que l’agent propose réellement : la limite retenue (nom, progression, dates, priorité, nom du plan) est à vérifier sur votre poste.

#### 5. Contrôles avant saisie

- [ ] Vous travaillez dans le plan d’essai, pas dans le plan du TP.
- [ ] Aucune donnée NOVALIS réelle n’est saisie.
- [ ] Vous avez relu chaque carte proposée par l’agent avant de l’approuver.

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

- [ ] Attendu à cette étape : un plan d’essai, une tâche, un compartiment ajouté ; aucune date inventée, aucune tâche terminée.

#### 6. Passage de la réponse IA à Planner

Dans cette étape, rien n’est reporté dans le plan du TP. Notez les constats dans le tableau ci-dessous. Vous pouvez supprimer à la main le plan d’essai à la fin : l’agent ne supprime pas.

#### 7. Données à saisir

Complétez ce tableau « résultat des tests » :

| Entrée | Action testée | Résultat attendu | Résultat observé | Langue testée |
|---|---|---|---|---|
| Copilot (chat général) | Explication d’un compartiment | Réponse rédigée, sans création dans Planner | À compléter | À compléter |
| Planner Agent | Créer un plan | Carte à approuver | À compléter | À compléter |
| Planner Agent | Créer une tâche | Carte à approuver | À compléter | À compléter |
| Planner Agent | Changer la progression | Modification acceptée | À compléter | À compléter |
| Planner Agent | Ajouter un compartiment | Modification acceptée (à vérifier) | À compléter | À compléter |
| Planner Agent | Ajouter une étiquette | Refus | À compléter | À compléter |
| Planner Agent | Ajouter une liste de contrôle | Refus | À compléter | À compléter |
| Planner Agent | Plan Premium (facultatif) | Refus | À compléter | À compléter |

#### 8. ✅ Vérifier le résultat

- [ ] Le plan d’essai contient deux compartiments, une tâche, une étiquette et une liste de contrôle.
- [ ] Les quatre vues ont été ouvertes et décrites.
- [ ] Le tableau des résultats est complété, y compris les deux refus attendus.
- [ ] Le repli unique est noté : si l’agent échoue, saisie manuelle.
- [ ] Trace à conserver : constats du test dans le registre Excel, sur une ligne « Étape 0 — test » (hors des références IA-01 à IA-12).

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Faites vos tests dans le plan d’essai uniquement. Évitez d’approuver une carte sans l’avoir lue.

> ⚠️ Proposition défectueuse à rejeter : « J’ai créé le plan et tout marqué terminé » : une progression n’est pas une preuve, et ce test ne demande aucune tâche terminée.

#### 10. Si ça ne marche pas

- **L’agent ne voit pas le plan.** Il ne voit que les plans de base partagés récemment ouverts : ouvrez le plan dans Planner, puis réessayez.
- **L’agent échoue.** Notez la réponse dans le tableau et saisissez à la main : c’est le repli unique.
- **Un menu porte un autre nom.** Les traductions peuvent varier. Notez l’intitulé réellement observé et poursuivez avec le chemin le plus proche.

#### 11. Pour réfléchir et lien PSPO I

- Quelle différence faites-vous entre une progression et une étiquette « À vérifier » ?
- Pourquoi relever ce que l’agent propose réellement avant de lui confier des mises à jour ?

> 🟩 **Lien PSPO I (optionnel)** — Aucun outil particulier n’est prescrit par Scrum. [S3]

#### Auto-évaluation de l’Étape 0

- [ ] Je sais expliquer plan, compartiment, tâche, étiquette, liste de contrôle et progression.
- [ ] Je sais passer d’une vue à l’autre (Grille, Tableau, Planification, Graphiques).
- [ ] Je sais ce que l’agent a fait et refusé sur mon poste.

## Contrôle du poste (25 min)

| Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Demi-journée |
|---|---|---|
| 25 min | 40 min | 1 |

Cochez chaque contrôle, puis complétez le tableau. Ce bloc adapte le contrôle du TP source à Planner ; l’étape 1 reprendra seulement le résultat.

- [ ] 1. Ouvrir Planner et relever le type de compte (professionnel) et la licence Microsoft 365 Copilot (à vérifier sur votre poste).
- [ ] 2. Relever la langue de l’interface de Planner et de Copilot (à vérifier sur votre poste).
- [ ] 3. Ouvrir ou créer un plan de base partagé d’essai et relever son type (à vérifier sur votre poste).
- [ ] 4. Relever si des sprints natifs sont présents ou absents. Ne pas les utiliser dans ce TP : les Sprints sont des compartiments (à vérifier sur votre poste).
- [ ] 5. Repérer les vues Grille, Tableau, Planification, Graphiques, la fonction Objectifs et le Planner Agent (à vérifier sur votre poste).
- [ ] 6. Créer une tâche test, la glisser d’un compartiment à l’autre, fermer et rouvrir le plan (à vérifier sur votre poste).

| Contrôle | Valeur à relever |
|---|---|
| Compte et licence (Microsoft 365 Copilot) | À compléter |
| Langue de l’interface | À compléter |
| Type de plan (plan de base partagé) | À compléter |
| Sprints natifs présents / absents | À compléter |
| Vues et fonctions (Grille, Tableau, Planification, Graphiques, Objectifs, Planner Agent) | Intitulés réellement observés |
| Glisser-déposer entre compartiments | Fonctionne / ne fonctionne pas |

Si une fonction manque, consignez le constat et faites contrôler le déploiement par l’administrateur. Ne pas annoncer une manipulation non effectuée. Pour poursuivre temporairement, vous pouvez simuler le suivi dans Excel, mais cela ne remplace pas la validation des compétences dans Planner.

> [CAPTURE À INSÉRER : écran du plan de base partagé d’essai montrant les vues disponibles dans la barre de vues]

### Repères d’interface Planner

Ces repères viennent des noms de vues et de fonctions cités dans la documentation Microsoft [S11, S14, S15]. Aucun chemin de menu n’est garanti : tout est à vérifier sur votre poste.

| Fonction | Repère | Statut |
|---|---|---|
| Plan de base partagé | Plan ouvert récemment dans Planner | À vérifier sur votre poste |
| Compartiments | Ajouter un compartiment dans le plan | À vérifier sur votre poste |
| Vues | Grille, Tableau, Planification, Graphiques | À vérifier sur votre poste |
| Objectifs | Fonction Objectifs (Goals) ; repli : description du plan | À vérifier sur votre poste |
| Planner Agent | Agent dans Copilot, cartes à approuver | À vérifier sur votre poste |
| Déplacement entre compartiments | Glisser-déposer ; ou demande à l’agent après décision humaine | À vérifier sur votre poste |

## 0B — Cadre du TP

> **Trois repères avant de commencer**
> - Un point n’est ni un jour ni une heure : c’est une taille relative. Ne le convertissez jamais en dates ou en heures.
> - Un Sprint Goal n’est pas un jalon : c’est un but à atteindre, pas une date de fin.
> - Tests et intégration se font dans chaque Sprint, jamais dans un dernier Sprint de recette.
> - Rien n’est Done sans la DoD (Annexe C.6) : une progression ou une étiquette ne la remplace pas.

### Scénario métier et acteurs

NOVALIS souhaite obtenir rapidement une première lecture fiable des ventes, puis enrichir la solution avec les utilisateurs. Produit : service BI interne permettant d’analyser ventes, régions, magasins, produits et rentabilité. Périmètre pilote : janvier et février 2026, deux régions, quatre magasins, trois produits, deux catégories et trois codes clients. Monnaie : Euro ; montants nets hors taxes. Hors périmètre : comptabilité légale, prévisions automatiques, données personnelles réelles et développement de connecteurs.

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

Les données chiffrées de référence (CA, coût, marge, répartitions) figurent en [Annexe C](#annexe-c--données-de-référence). Elles servent à simuler les vérifications ; ne les saisissez pas comme tâches dans Planner.

### Programme et durées

La colonne « Durée d’origine » reprend le TP source pour les étapes retenues. La colonne « Durée conseillée débutant » est indicative et hors pauses. Les lignes marquées « ajout » n’existent pas dans le TP source.

| Bloc | Durée d’origine | Durée conseillée débutant (indicatif, hors pauses) | Demi-journée |
|---|---:|---:|---:|
| Avant de commencer (0A et 0B) — ajout | – | 20 min | 1 |
| Contrôle du poste | 25 min | 40 min | 1 |
| Étape 0. Prise en main de Planner et test de l’agent — ajout | – | 90 min | 1 |
| 1. Créer le plan | 25 min | 40 min | 1 |
| Reprise demi-journée 2 — ajout | – | 5 min | 2 |
| 2. Définir le produit | 20 min | 30 min | 2 |
| 3. Construire le backlog | 45 min | 80 min | 2 |
| 4. Organiser le backlog dans Planner | 35 min | 100 min | 2 |
| 5. Configurer les sprints | 30 min | 60 min | 2 |
| Reprise demi-journée 3 — ajout | – | 5 min | 3 |
| 6. Sprint Planning | 40 min | 70 min | 3 |
| 7. Travail quotidien | 35 min | 65 min | 3 |
| 8. Visualisation | 30 min | 45 min | 3 |
| Reprise demi-journée 4 — ajout | – | 5 min | 4 |
| 9. Changement de priorité | 25 min | 45 min | 4 |
| 10. Review et Retrospective | 30 min | 40 min | 4 |
| 11. Increment et DoD | 25 min | 35 min | 4 |
| 12. Inspection sur trois sprints | 35 min | 65 min | 4 |
| Checklist finale (Annexe E) — ajout | – | 30 min | 4 |
| **Total** | **400 min (25 + 375)** | **870 min (14 h 30)** | |

Les étapes retenues totalisent 400 minutes (25 + 375), soit 6 h 40, contre 7 h pour le TP source complet, car l’ancienne étape « Comprendre le passage du prédictif à Scrum » (20 minutes) a été retirée volontairement de cette version Planner.

### Découpage en quatre demi-journées

| Demi-journée | Contenu | Durée conseillée (indicatif, hors pauses) | Point d’arrêt |
|---|---|---:|---|
| 1 | Avant de commencer, Contrôle du poste, Étape 0, Étape 1 | 190 min | Plan créé et test de l’agent relevé |
| 2 | Reprise, Étapes 2 à 5 | 275 min | Compartiments créés (après l’étape 5) |
| 3 | Reprise, Étapes 6 à 8 | 185 min | Sprint 1 suivi |
| 4 | Reprise, Étapes 9 à 12, Checklist finale | 220 min | Bilan fin S3 |

Aucune activité n’est retirée : le découpage répartit seulement le même travail. Chaque point d’arrêt comporte une auto-évaluation à cocher.

### Prompt de cadrage

Le prompt de cadrage s’exécute une seule fois, dans Copilot (chat général), avant l’étape 1 (création du plan). Son texte complet figure en [Annexe A](#annexe-a--prompts--index-cadrage-et-relances). Copiez-le depuis l’annexe.

- [ ] Le prompt de cadrage a été exécuté une fois.
- [ ] Vous redonnez l’état à jour et les décisions validées à chaque nouvelle étape.

### Entrée d’IA par étape

Deux entrées d’IA existent. Copilot (chat général) sert à analyser et rédiger. Le Planner Agent sert à agir dans Planner : il exécute ce que vous avez décidé, un ordre à la fois, et ne choisit jamais. Si l’agent échoue, saisie manuelle (repli unique).

| Étape | Analyse et rédaction | Planner Agent (à vérifier sur votre poste) |
|---|---|---|
| 0 | Copilot (chat général) : test | Planner Agent : créer plan et tâche, progression, compartiment ; refus attendu pour étiquette et liste de contrôle |
| 1 | Copilot (chat général), IA-01 | Planner Agent crée le plan |
| 2 | Copilot (chat général) | Rien d’obligatoire ; saisie manuelle (objectifs à vérifier) |
| 3 | Copilot (chat général) génère le backlog | Planner Agent crée US01 (un test, une carte) |
| 4 | Copilot (chat général) | Planner Agent crée US02 à US12 par petits lots (3 à 4 tâches par demande) |
| 5 | Copilot (chat général) | Planner Agent crée les compartiments |
| 6 | Copilot (chat général) | Planner Agent exécute le déplacement après décision humaine (à tester, repli manuel) |
| 7 | Copilot (chat général) | Planner Agent change la progression après décision humaine |
| 8 | Copilot (chat général) ; Excel | Planner Agent : questions de lecture seulement |
| 9 | Copilot (chat général) | Planner Agent crée US13 |
| 10 | Copilot (chat général) | Aucune (registres dans Excel) |
| 11 | Copilot (chat général) | Planner Agent change la progression après décision humaine |
| 12 | Copilot (chat général) | Planner Agent exécute les déplacements après décision humaine (à tester, repli manuel) |

### Schéma du flux Scrum du TP

```text
Backlog (aucun sprint)   Étapes 2 à 4
        |
        v
Planning                 Étapes 5 et 6  (déplacement vers « Sprint 1 (02/11–15/11) » après décision humaine)
        |
        v
Sprint                   Étapes 7 et 8  (suivi ; heures restantes dans Excel) ; étape 9 : changement
        |
        v
Review + Retrospective   Étapes 10 et 11 (Increment, DoD)
        |
        v
Backlog (aucun sprint)   Étape 12 (éléments non Done, puis nouvelle Planning)
```

### Ce que je saisis dans Planner, ce que je garde dans Excel

| Élément | Dans Planner | Dans Excel | Remarque |
|---|---|---|---|
| Titre | « USxx — nom [N pts] » | Colonnes ID PBI et Points | Les points ne sont ni des jours ni des heures |
| Ordre du backlog | Ordre dans le compartiment | Colonne Ordre backlog | 1 = premier |
| Critères | Description + liste de contrôle (une case par critère), saisies à la main | – | Un critère non validé reste une question |
| Sprint | Compartiment « Sprint n (dates) » | Registre Sprints | Déplacement exécuté par l’agent après décision humaine, repli manuel |
| Reste estimé | Aucun champ | Colonne Reste estimé h (Nombre3) | Burndown et courbes dans Excel |
| Avancement | Progression (l’agent peut la modifier) | Historique quotidien | « À vérifier » = étiquette, jamais Done |
| Obstacle | Étiquette « Bloqué » + ligne datée dans la description, à la main | Colonne Obstacle | – |
| Résultat DoD | Étiquettes « Conforme » / « Non conforme », à la main | Colonne Résultat DoD | La progression n’applique pas la DoD |
| Référence IA / Décision IA | Aucun champ | Registre IA (Texte4, Texte5) | Aucun lien automatique avec l’IA |
| Product Goal, Sprint Goals | Description du plan ; objectifs Planner si la fonction existe (à vérifier) | Registre Produit / Sprints | – |

> ⚠️ Planner représente le planning. Il ne vérifie ni la qualité, ni la valeur, ni la DoD. Les dates du TP figurent dans les noms des compartiments ; aucune date d’échéance n’est saisie sur les PBI.

## Partie 2 — Préparer le produit

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PO = Product Owner ; DoD = Definition of Done ; US = User Story ; PSPO I = Professional Scrum Product Owner I ; TP = travaux pratiques ; HT = hors taxes ; CA = chiffre d’affaires.

### Étape 1 — Créer le plan Scrum dans Microsoft Planner

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 25 min | 40 min | 1 |

**Ordre de travail** : IA d’abord (rubrique 4), puis contrôles (5), puis actions dans Planner (3).

#### 1. Ce que vous allez obtenir

**Objectif.** Créer un plan de base partagé autonome, vérifié sur votre poste.

**Résultat attendu.** Un plan distinct créé et rouvert, avec les fonctions disponibles identifiées.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** Ce plan n’est ni une baseline ni la copie d’un planning prédictif.

🟩 **Notion Scrum.** L’outil rend le travail visible ; il ne définit pas à lui seul Scrum et ne remplace pas les interactions.

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Dans Copilot, ouvrez le Planner Agent. (à vérifier sur votre poste)
2. Demandez à l’agent de créer le plan avec le prompt de la rubrique 4 (un ordre à la fois). Lisez la carte, puis approuvez-la. (à vérifier sur votre poste)
3. Ouvrez le plan dans Planner : l’agent ne voit que les plans de base partagés récemment ouverts. (à vérifier sur votre poste)
4. Vérifiez qu’il s’agit d’un plan de base partagé et relevez ce constat dans le tableau « observé sur mon poste ». Si ce n’est pas le cas, créez le plan à la main. (à vérifier sur votre poste)
5. Supprimez à la main les éventuels exemples ou tâches d’essai créés automatiquement. (à vérifier sur votre poste)
6. Dans la description du plan, si elle existe, saisissez à la main « NOVALIS BI — simulation pédagogique Scrum ». (à vérifier sur votre poste)
7. Relevez dans le tableau « observé sur mon poste » les vues visibles, la présence de la fonction Objectifs, les sprints natifs présents ou absents, et le résultat des tests de l’agent de l’étape 0. (à vérifier sur votre poste)
8. Fermez le plan, rouvrez-le, puis vérifiez que le nom et la description sont conservés. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : plan de base partagé créé, avec ses vues visibles et l’indication de la licence]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent (création du plan) ; Copilot (chat général) pour le prompt IA-01 (à vérifier sur votre poste).

**Trace** : IA-01

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Crée le plan NOVALIS_BI_Scrum_IA_Planner_TP2 (carte à approuver) | Ouvre le plan dans Planner, relève le type de plan, saisit la description du plan, remplit le tableau « observé sur mon poste » |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Crée un plan nommé « NOVALIS_BI_Scrum_IA_Planner_TP2 ». Ne crée aucune tâche.
```

##### Pourquoi utiliser l’IA ici ?

Utiliser l’assistant pour préparer une vérification de configuration, pas lui déléguer des clics ni lui faire inventer une interface.

##### Entrées à fournir

Nom exact du produit, licence si connue, langue de l’interface et fonctions observées pendant le contrôle du poste (tableau « observé sur mon poste »). Joindre un extrait de [S11] ou de [S12], sans supposer que l’IA ouvre une URL.

##### Prompt prêt à copier

> Prompt adapté à Planner (modifications signalées en Annexe I).

```text
Je prépare le plan de base partagé NOVALIS_BI_Scrum_IA_Planner_TP2.
Informations réellement relevées sur mon poste : [coller la fiche].
Procédure de référence disponible : [coller les repères du support].
Prépare une checklist : action, fonction native vérifiée,
point à contrôler, preuve de réussite.
Prévois des compartiments par défaut ; ne présume aucun sprint natif.
N’invente pas une commande à partir du seul mot Copilot ou Agent.
Ne propose ni conversion d’un planning prédictif ni fonction Copilot ou Planner Agent supposée.
Si l’information manque, indique le contrôle nécessaire au lieu de donner
un chemin garanti. Aucun script et aucune date de fin à saisir.
```

##### Sortie attendue

Une checklist compatible avec les observations, avec incertitudes explicitement signalées.

#### 5. Contrôles avant saisie

##### Contrôles humains

- [ ] Comparer chaque chemin à l’écran de votre poste.
- [ ] Rejeter toute affirmation d’ouverture ou de modification automatique du plan.
- [ ] Ne pas transmettre une capture contenant des données sensibles.

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

- [ ] Attendu à cette étape : le plan existe, sans tâche ni compartiment (plan vide).

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Appliquez vous-même les actions vérifiées de l’étape 1. Fermez puis rouvrez le plan ; complétez le registre avec le constat. Le nom du plan et le début des Sprints (02/11/2026, dans le nom du compartiment de l’étape 5) restent ceux du cas.

#### 7. Données à saisir

Nom du plan : `NOVALIS_BI_Scrum_IA_Planner_TP2` ; début des Sprints au 02/11/2026 (dans le nom du compartiment « Sprint 1 (02/11–15/11) ») ; description du plan « NOVALIS BI — simulation pédagogique Scrum ».

Calendrier du cas : lundi-vendredi sans jour férié spécifique. Il sert à compter les dix jours ouvrés de chaque Sprint ; ce n’est pas un paramètre de Planner.

Tableau « observé sur mon poste » (à compléter) :

| Élément observé | Valeur observée sur mon poste |
|---|---|
| Compte et licence (Microsoft 365 Copilot) | À compléter (reprise du Contrôle du poste) |
| Plan de base partagé créé et ouvert récemment | Oui / non |
| Vues visibles (Grille, Tableau, Planification, Graphiques, autres) | À compléter |
| Fonction Objectifs | Présente / absente |
| Sprints natifs | Présents / absents (attendus absents dans un plan de base) |
| Planner Agent crée et modifie dans ce plan | Oui / non (résultat du test de l’étape 0) |
| Langue testée et qualité du résultat | À compléter |
| Repli unique | Saisie manuelle si l’agent échoue |

#### 8. ✅ Vérifier le résultat

- [ ] Un plan distinct créé et rouvert, avec les fonctions disponibles identifiées.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-01 : fiche environnement, un contrôle de commande et preuve de réouverture ; aucun faux journal d’exécution IA.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas confondre date de début du projet et début automatique de tous les PBI. L’affectation à un Sprint n’est pas une preuve de capacité. Le calendrier d’un outil de planification ne définit pas à lui seul une timebox Scrum.

> ⚠️ Proposition défectueuse à rejeter : « J’ai créé votre plan Planner et activé Copilot » : à rejeter si l’assistant n’a aucun outil démontrant ces actions.

> ⚠️ Proposition défectueuse propre à Planner : « Votre plan est créé, les sprints natifs sont activés et Copilot est prêt » : à rejeter si vous ne l’avez pas observé. Les Sprints du TP sont des compartiments.

#### 10. Si ça ne marche pas

- **Le Planner Agent n’apparaît pas ou ne crée pas le plan.** Créez le plan à la main dans Planner, puis notez le constat.
- **L’agent ne voit pas le plan.** Il ne voit que les plans de base partagés récemment ouverts : ouvrez le plan dans Planner, puis réessayez.
- **Une vue ou une fonction manque (Graphiques, Objectifs).** Notez les intitulés réellement observés dans le tableau « observé sur mon poste ». Ne présumez aucune fonction.

#### 11. Pour réfléchir et lien PSPO I

- Que prouve la documentation Microsoft sur l’existence d’une fonction ?
- Pourquoi vérifier aussi licence, type de plan et fonctions ?

> 🟩 **Lien PSPO I (optionnel)** — Aucun outil particulier n’est prescrit par Scrum. [S3]

#### Point d’arrêt — fin de la demi-journée 1

Vérifiez que le plan est créé et rouvert, puis cochez votre auto-évaluation.

- [ ] Le tableau « observé sur mon poste » est complété.
- [ ] Je sais ce que fait chaque entrée d’IA sur mon poste (étape 0).
- [ ] Mon registre IA contient IA-01.

---

### Étape 2 — Définir le produit et son objectif

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 20 min | 30 min | 2 |

**Ordre de travail** : IA d’abord. Séquence : l’IA propose, l’équipe discute, puis on retient la référence du support.

#### Reprise de la demi-journée 2

- [ ] J’ai rouvert le plan et retrouvé mon tableau « observé sur mon poste ».
- [ ] Mon registre IA contient IA-01.

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
2. Saisissez à la main le Product Goal retenu dans la description du plan : l’agent ne modifie pas cette zone. (à vérifier sur votre poste)
3. Cherchez la fonction Objectifs du plan. Si elle est présente, créez un objectif dont le titre est le Product Goal. Sinon, repli : Product Goal et Sprint Goals dans la description du plan et dans le registre Excel.
4. Gardez la vision, la valeur et les mesures dans le registre Produit (Excel). (à vérifier sur votre poste)
5. Ne créez aucune tâche « Product Goal » estimée en points. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : objectif Planner (ou description du plan) contenant le Product Goal]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) ; saisie manuelle dans Planner (à vérifier sur votre poste).

**Trace** : IA-02

L’IA propose, l’équipe discute, puis on retient la référence du support.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Rien d’obligatoire à cette étape | Saisit le Product Goal dans la description du plan, vérifie la fonction Objectifs, tient le registre Produit (Excel) |

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

- [ ] Trace IA à conserver — IA-02 : deux formulations, choix du PO simulé, justification et statut des mesures.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

« Livrer 12 stories » est une mesure de production, pas un résultat utilisateur. Un indicateur moyen ne prouve pas un bénéfice pour tous.

> ⚠️ Proposition défectueuse à rejeter : « Le produit augmentera les ventes de 20 % en trois Sprints » : chiffre inventé et attribution causale non établie.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai créé l’objectif Planner avec une échéance au 30/11 » : date inventée, aucune échéance n’est donnée pour le Product Goal.

#### 10. Si ça ne marche pas

- **La fonction Objectifs est absente.** Saisissez le Product Goal et les Sprint Goals dans la description du plan et dans le registre Excel.
- **L’IA propose une hausse de CA chiffrée.** Rejetez-la (rubrique 9) : les 45 minutes sont une hypothèse à vérifier.
- **Le but proposé ressemble à « livrer 12 stories ».** Demandez un résultat utilisateur observable, pas une mesure de production.

#### 11. Pour réfléchir et lien PSPO I

- Si les cartes sont toutes terminées mais que personne n’utilise le produit, quel objectif est réellement atteint ?

> 🟩 **Lien PSPO I (optionnel)** — Product Goal, valeur et collaboration avec les parties prenantes. [S3, S4]

---

### Étape 3 — Construire le Product Backlog

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
3. Demandez à l’agent de créer le compartiment « Backlog (aucun sprint) » avec le premier prompt de la rubrique 4. Approuvez la carte après lecture. (à vérifier sur votre poste)
4. Demandez à l’agent de créer la tâche US01 avec le second prompt : un test, une carte. (à vérifier sur votre poste)
5. Contrôlez la carte créée : titre « US01 — Consulter le CA mensuel [5 pts] », aucune date, aucune progression terminée. (à vérifier sur votre poste)
6. Ajoutez à la main, dans la description, la formulation, la valeur et les contraintes si elles manquent. (à vérifier sur votre poste)
7. Ajoutez à la main la liste de contrôle de US01, une case par critère (l’agent ne modifie pas les listes de contrôle). (à vérifier sur votre poste)
8. Ne créez pas encore les autres stories : elles sont créées à l’étape 4, par petits lots. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : tâche « US01 — Consulter le CA mensuel [5 pts] » avec description et liste de contrôle de trois cases]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) génère le backlog ; Planner Agent crée US01 (un test) (à vérifier sur votre poste).

**Trace** : IA-03

L’IA génère le backlog, l’équipe discute, puis on retient la référence du support.

> ⚠️ Dans cette étape, l’IA passe avant Planner, car les fiches du backlog doivent exister avant d’être saisies dans Planner.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Crée le compartiment « Backlog (aucun sprint) », puis la tâche US01 (un test, une carte) | Contrôle la carte avant approbation, ajoute à la main la liste de contrôle (une case par critère) |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Dans le plan « NOVALIS_BI_Scrum_IA_Planner_TP2 », crée un compartiment « Backlog (aucun sprint) ».
```

Prompt agent 2 — un ordre à la fois :

```text
Dans le compartiment « Backlog (aucun sprint) », crée la tâche « US01 — Consulter le CA mensuel [5 pts] ». Aucune date. Aucune tâche terminée.
```

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

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

- [ ] Attendu à cette étape : 1 tâche (US01) créée par l’agent en test, une carte ; les 12 tâches sont attendues à l’étape 4.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Créez US01 comme indiqué, puis préparez les douze tâches à l’étape 4. Dans la description et la liste de contrôle, saisissez les critères corrigés. Dans Excel : Texte4 (Référence IA) = IA-03 et Texte5 (Décision IA) = Retenu ou Corrigé puis retenu. Les critères non validés restent des questions, pas des exigences approuvées.

#### 7. Données à saisir

Où va chaque champ du TP source (alias) :

| Champ du TP source (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Texte4 (Référence IA) | Aucun champ équivalent | Colonne Référence IA (ex. « IA-03 ; IA-06 ») |
| Texte5 (Décision IA) | Aucun champ équivalent | Colonne Décision IA (ex. « Corrigé puis retenu ») |

Backlog initial : 12 PBI, 47 points. Les horizons S2 sont des hypothèses, pas des engagements.

##### US01 — Consulter le CA mensuel

- Formulation : « En tant que direction commerciale, je veux consulter le CA par mois, afin de repérer les variations de ventes. »
- Valeur : Première lecture commune du CA.
- Critères testables : Janvier 40 000 Euro ; février 50 000 ; cumul 90 000. Le filtre janvier conserve seulement janvier. Une période vide affiche « Aucune vente », sans erreur.
- Ordre initial : 1 ; taille relative illustrative : 5 points.
- Contraintes : Source contrôlée ; aucun PBI préalable requis.
- Horizon initial : Sprint 1.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Janvier 40 000 Euro ; février 50 000 ; cumul 90 000.
- [ ] Le filtre janvier conserve seulement janvier.
- [ ] Une période vide affiche « Aucune vente », sans erreur.

##### US02 — Analyser les ventes par région

- Formulation : « En tant que responsable régional, je veux filtrer les ventes par région, afin de cibler les zones nécessitant une action. »
- Valeur : Cibler les actions régionales.
- Critères testables : Nord 54 000 Euro, Sud 36 000 sur les deux mois ; Nord + janvier = 24 000 ; effacer le filtre rétablit 90 000.
- Ordre initial : 2 ; taille relative illustrative : 3 points.
- Contraintes : Socle US01 réutilisable ; réalisation conjointe possible.
- Horizon initial : Sprint 1.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Nord 54 000 Euro, Sud 36 000 sur les deux mois
- [ ] Nord + janvier = 24 000
- [ ] effacer le filtre rétablit 90 000.

##### US03 — Identifier les meilleurs produits

- Formulation : « En tant que analyste métier, je veux classer les produits par CA, afin de préparer une recommandation d’assortiment. »
- Valeur : Identifier les contributeurs principaux.
- Critères testables : P01 45 000, P02 28 000, P03 17 000 Euro, tri décroissant. Janvier : 20 000, 12 000, 8 000. Le classement suit les filtres.
- Ordre initial : 3 ; taille relative illustrative : 5 points.
- Contraintes : Source de ventes commune ; codes produits à clarifier.
- Horizon initial : Sprint 1.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] P01 45 000, P02 28 000, P03 17 000 Euro, tri décroissant.
- [ ] Janvier : 20 000, 12 000, 8 000.
- [ ] Le classement suit les filtres.

##### US04 — Lire la marge commerciale

- Formulation : « En tant que contrôle de gestion, je veux consulter marge et taux de marque, afin de apprécier la rentabilité. »
- Valeur : Éviter la confusion entre volume et rentabilité.
- Critères testables : Cumul : CA 90 000, coût 63 000, marge 27 000 Euro, taux de marque 30 %. Janvier : marge 10 800 et 27 %. CA nul : taux non calculable.
- Ordre initial : 4 ; taille relative illustrative : 5 points.
- Contraintes : Coûts et formules validés ; taux calculé sur les agrégats.
- Horizon initial : Sprint 2, hypothèse.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Cumul : CA 90 000, coût 63 000, marge 27 000 Euro, taux de marque 30 %.
- [ ] Janvier : marge 10 800 et 27 %.
- [ ] CA nul : taux non calculable.

##### US05 — Comparer les magasins

- Formulation : « En tant que responsable régional, je veux comparer les magasins, afin de repérer les écarts de performance. »
- Valeur : Préparer leur accompagnement.
- Critères testables : N1 32 000, N2 22 000, S1 20 000, S2 16 000 Euro ; filtre Nord : N1/N2 seulement, total 54 000.
- Ordre initial : 5 ; taille relative illustrative : 3 points.
- Contraintes : US02 utile ; comparaison descriptive, sans causalité supposée.
- Horizon initial : Sprint 2, hypothèse.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] N1 32 000, N2 22 000, S1 20 000, S2 16 000 Euro
- [ ] filtre Nord : N1/N2 seulement, total 54 000.

##### US06 — Comparer deux périodes

- Formulation : « En tant que direction commerciale, je veux comparer février à janvier, afin de détecter la croissance ou le recul. »
- Valeur : Lire une évolution explicite.
- Critères testables : 50 000 contre 40 000 Euro : +10 000 et +25 %. Les périodes sont affichées. Référence zéro : pourcentage non calculable, sans erreur.
- Ordre initial : 6 ; taille relative illustrative : 5 points.
- Contraintes : US01 ; convention de comparaison explicite.
- Horizon initial : Sprint 2, hypothèse.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] 50 000 contre 40 000 Euro : +10 000 et +25 %.
- [ ] Les périodes sont affichées.
- [ ] Référence zéro : pourcentage non calculable, sans erreur.

##### US07 — Comparer les catégories

- Formulation : « En tant que analyste métier, je veux analyser les ventes par catégorie, afin de adapter les actions commerciales. »
- Valeur : Relier résultats et portefeuille.
- Critères testables : Équipement P01+P02 : 73 000 Euro ; Accessoires P03 : 17 000. Janvier : 32 000 et 8 000. Le filtre catégorie actualise le total.
- Ordre initial : 7 ; taille relative illustrative : 3 points.
- Contraintes : Référentiel produits fiable.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Équipement P01+P02 : 73 000 Euro ; Accessoires P03 : 17 000.
- [ ] Janvier : 32 000 et 8 000.
- [ ] Le filtre catégorie actualise le total.

##### US08 — Identifier les principaux clients

- Formulation : « En tant que direction commerciale, je veux voir les principaux clients contributeurs, afin de préparer les revues de comptes. »
- Valeur : Cibler les revues commerciales.
- Critères testables : C01 45 000, C02 28 000, C03 17 000 Euro ; seuls les codes autorisés apparaissent ; filtre période appliqué.
- Ordre initial : 8 ; taille relative illustrative : 5 points.
- Contraintes : Codes pseudonymisés, accès autorisé.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] C01 45 000, C02 28 000, C03 17 000 Euro
- [ ] seuls les codes autorisés apparaissent
- [ ] filtre période appliqué.

##### US09 — Exporter une sélection

- Formulation : « En tant que analyste métier, je veux exporter les résultats filtrés, afin de éviter une ressaisie. »
- Valeur : Réutiliser les résultats.
- Critères testables : Export Nord : N1/N2 uniquement, cumul 54 000 Euro ; période et filtres indiqués ; montants numériques ; format CSV ou XLSX convenu.
- Ordre initial : 9 ; taille relative illustrative : 3 points.
- Contraintes : Une vue filtrée exploitable existe.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Export Nord : N1/N2 uniquement, cumul 54 000 Euro
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
- Critères testables : Dictionnaire : CA net HT en Euro, coût, marge = CA − coût, taux de marque = marge / CA ; périodes explicites ; chaque indicateur renvoie à sa définition.
- Ordre initial : 11 ; taille relative illustrative : 2 points.
- Contraintes : Dictionnaire utilisateur enrichi ; documentation minimale de DoD dès S1.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] Dictionnaire : CA net HT en Euro, coût, marge = CA − coût, taux de marque = marge / CA
- [ ] périodes explicites
- [ ] chaque indicateur renvoie à sa définition.

##### US12 — Préparer la réunion de direction

- Formulation : « En tant que direction commerciale, je veux ouvrir une synthèse dédiée, afin de préparer rapidement le comité. »
- Valeur : Réduire le temps de préparation.
- Critères testables : CA, marge et variation affichés sans ressaisie ; cumul 90 000 Euro, marge 27 000, variation février/janvier +25 % ; filtres et fraîcheur visibles.
- Ordre initial : 12 ; taille relative illustrative : 5 points.
- Contraintes : US04/US06 terminées ; dépendances à inspecter.
- Horizon initial : Aucun sprint.

Liste de contrôle Planner (une case par critère, découpage du critère du TP source) :

- [ ] CA, marge et variation affichés sans ressaisie
- [ ] cumul 90 000 Euro, marge 27 000, variation février/janvier +25 %
- [ ] filtres et fraîcheur visibles.

##### Principes d’ordonnancement

US01/02 servent les utilisateurs principaux ; US03 rend la première restitution immédiatement utile ; US04 permet d’inspecter des règles économiques risquées. US05/06 enrichissent les décisions. Les autres besoins restent visibles. Une remontée de US10 peut être défendue si le risque de fraîcheur est majeur, sans supprimer la qualité minimale requise dès S1.

Il n’existe pas de formule universelle de priorité Scrum. Valeur, risques, apprentissages, dépendances et coût éclairent l’ordre ; une note ne décide pas à la place du PO.

#### 8. ✅ Vérifier le résultat

- [ ] 12 stories comprises, un ordre argumenté, deux critères examinés en profondeur par binôme.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-03 : sortie brute, deux fiches annotées, ordre retenu, estimations normalisées et validations encore requises.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas utiliser systématiquement « En tant que système » pour transformer chaque tâche technique en story. Le format story est optionnel ; le backlog peut contenir d’autres PBI.

> ⚠️ Proposition défectueuse à rejeter : « Taux de marque = marge / coût », « client sans droit d’accès », ou « US11 dispense de documentation en S1 » : à détecter et corriger.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai généré 12 tâches de 5 jours chacune avec une échéance » : points convertis en jours et dates inventées.

#### 10. Si ça ne marche pas

- **L’IA fournit moins de 12 fiches ou des IDs en double.** Relancez avec la RELANCE DE CONTRÔLE et vérifiez 12 IDs uniques, de US01 à US12.
- **Un critère contredit les données de référence.** Recalculez avec l’Annexe C. Les critères non validés restent des questions.
- **L’agent échoue ou crée plus d’une tâche.** Supprimez à la main les tâches en trop (l’agent ne supprime pas) et créez US01 à la main.

#### 11. Pour réfléchir et lien PSPO I

- Quel élément réduit le plus une incertitude ?
- Quelle story gagnerait à être découpée ?
- Une dépendance implique-t-elle toujours un lien de dépendance dans le planning ?

> 🟩 **Lien PSPO I (optionnel)** — Redevabilité du PO sur le backlog, dimensionnement par les Developers et affinement collaboratif. [S3]

---

### Étape 4 — Organiser le Product Backlog dans Planner

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 35 min | 100 min | 2 |

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

1. Demandez à l’agent de créer les tâches US02 à US05 avec le premier prompt de la rubrique 4. Lisez la carte, puis approuvez-la. Contrôlez le lot. (à vérifier sur votre poste)
2. Faites de même pour US06 à US09 (deuxième prompt), puis pour US10 à US12 (troisième prompt). (à vérifier sur votre poste)
3. Contrôlez le total : exactement 12 tâches (US01 à US12), 47 points dans les titres, aucune date, aucune tâche terminée. Ne dupliquez pas US01. (à vérifier sur votre poste)
4. Pour chaque tâche, saisissez à la main dans la description la formulation, la valeur, les contraintes et l’horizon initial. Ne collez pas les critères dans le titre. (à vérifier sur votre poste)
5. Pour chaque tâche, ajoutez à la main dans la liste de contrôle une case par critère testable. (à vérifier sur votre poste)
6. Créez à la main les quatre étiquettes : « Bloqué », « Conforme », « Non conforme », « À vérifier ». (à vérifier sur votre poste)
7. Rangez les tâches dans l’ordre 1 à 12 par glisser-déposer dans le compartiment. (à vérifier sur votre poste)
8. N’ajoutez aucune date d’échéance et aucun Sprint. (à vérifier sur votre poste)
9. Si le tableau permet de choisir les informations affichées sur les cartes, affichez les étiquettes (aucun équivalent garanti de « Personnaliser les cartes »). (à vérifier sur votre poste)
10. Créez dans Excel le registre de suivi avec les colonnes ID PBI, Points, Ordre backlog, Reste estimé h, Obstacle, Résultat DoD, Référence IA, Décision IA. (à vérifier sur votre poste)
11. Archivez le backlog : capture de la vue Grille et export Excel du plan si disponible, nommé « NOVALIS_BI_Scrum_00_Backlog » (nom du TP source, adapté à Planner). (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : vue Grille du compartiment Backlog avec les 12 tâches ordonnées et les 4 étiquettes créées]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent crée US02 à US12 par petits lots ; saisie manuelle des descriptions, listes de contrôle et étiquettes (à vérifier sur votre poste).

**Trace** : IA-04

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Crée US02 à US12 par petits lots (3 à 4 tâches par demande, un ordre à la fois) | Contrôle chaque lot (12 tâches, 47 points en tout), saisit description, listes de contrôle et quatre étiquettes, range l’ordre 1 à 12 |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Dans le compartiment « Backlog (aucun sprint) », crée ces 4 tâches, sans date et sans les marquer terminées : « US02 — Analyser les ventes par région [3 pts] » ; « US03 — Identifier les meilleurs produits [5 pts] » ; « US04 — Lire la marge commerciale [5 pts] » ; « US05 — Comparer les magasins [3 pts] ».
```

Prompt agent 2 — un ordre à la fois :

```text
Dans le compartiment « Backlog (aucun sprint) », crée ces 4 tâches, sans date et sans les marquer terminées : « US06 — Comparer deux périodes [5 pts] » ; « US07 — Comparer les catégories [3 pts] » ; « US08 — Identifier les principaux clients [5 pts] » ; « US09 — Exporter une sélection [3 pts] ».
```

Prompt agent 3 — un ordre à la fois :

```text
Dans le compartiment « Backlog (aucun sprint) », crée ces 3 tâches, sans date et sans les marquer terminées : « US10 — Vérifier la fraîcheur des données [3 pts] » ; « US11 — Consulter le dictionnaire des indicateurs [2 pts] » ; « US12 — Préparer la réunion de direction [5 pts] ».
```

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

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

- [ ] Attendu à cette étape : 12 tâches (US01 à US12), 47 points au total dans les titres, 4 étiquettes, aucune tâche dans un compartiment Sprint, aucune date, aucune tâche terminée.

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
| Afficher dans le tableau | Oui pour les PBI ; Non pour les tâches détaillées | Aucun équivalent garanti ; les éléments de liste de contrôle ne sont pas des cartes séparées (à vérifier sur votre poste) |

Les tâches détaillées auront l’identifiant T-USxx-n et seront saisis comme éléments de liste de contrôle, sans points, pour éviter le double comptage. La priorité de Planner n’est pas l’ordre Scrum : l’ordre est celui du compartiment. Ne saisissez ni points dans des dates ou des jours, ni heures dans un champ de Planner en prétendant qu’il s’agit du même champ : les heures restantes restent dans Excel.

#### 8. ✅ Vérifier le résultat

- [ ] 12 identifiants uniques, 12 cartes visibles, 47 points et critères dans la description et la liste de contrôle ; pas de liens artificiels entre toutes les stories.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-04 : table de transfert, correspondance champs/alias et contrôle après saisie : 12 IDs, 47 points, aucun Sprint sélectionné.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Un diagramme de planning (Gantt ou chronologie) représente mal la valeur, la conversation et les preuves. Nombre3 (Reste estimé h), tenu dans Excel, n’est pas une donnée de progression de Planner. Les cartes n’assurent pas un historique quotidien : un registre complémentaire reste utile.

> ⚠️ Proposition défectueuse à rejeter : « 5 points = 5 jours d’échéance » ou « Priorité Planner = ordre commercial » : confusion entre estimation, ordonnancement et nivellement.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai créé 14 tâches ; les deux en plus sont des doublons utiles » : le backlog compte exactement 12 PBI et 47 points.

#### 10. Si ça ne marche pas

- **L’agent crée des doublons ou un titre irrégulier.** Supprimez à la main les doublons et corrigez le format « USxx — nom [N pts] » avant le lot suivant.
- **La liste de contrôle n’accepte pas tous les critères.** La limite est à vérifier sur votre poste. Conservez les critères complets dans la description.
- **L’ordre est perdu après un glisser-déposer.** Recontrôlez l’ordre 1 à 12 avec le tableau de l’Annexe C.4.

#### 11. Pour réfléchir et lien PSPO I

- Comment retrouver US03 après un tri ?
- Pourquoi garder un registre de suivi hors du simple état courant ?

> 🟩 **Lien PSPO I (optionnel)** — Transparence et compréhension priment sur le respect d’un formulaire. [S3]

## Partie 3 — Vivre un Sprint

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PO = Product Owner ; DoD = Definition of Done ; US = User Story ; PSPO I = Professional Scrum Product Owner I ; TP = travaux pratiques ; J0 = jour 0 du Sprint (J1 à J10 : jours ouvrés suivants).

### Étape 5 — Planifier les sprints

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

> ⚠️ Précision ajoutée : les trois dates de fin incluse (15/11, 29/11, 13/12) tombent un dimanche, et le dernier jour ouvré du Sprint 1 est le 13/11. Les « prochains débuts » (16/11, 30/11) restent distincts des fins incluses.

1. Demandez à l’agent de créer les trois compartiments, un par ordre, avec les trois prompts de la rubrique 4. Approuvez chaque carte après lecture. (à vérifier sur votre poste)
2. Vérifiez que les noms sont exacts : « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) », « Sprint 3 (30/11–13/12) ». Corrigez à la main si besoin. (à vérifier sur votre poste)
3. Gardez le compartiment « Backlog (aucun sprint) ». (à vérifier sur votre poste)
4. Contrôlez vous-même les frontières [02/11,16/11[, [16/11,30/11[, [30/11,14/12[ et les dix jours ouvrés de chaque Sprint. (à vérifier sur votre poste)
5. Notez le Sprint Goal candidat, la capacité et les hypothèses dans le registre Sprints (Excel). (à vérifier sur votre poste)
6. N’affectez aucune tâche à un Sprint : S1 se remplit après la Planning (étape 6), S2 et S3 restent prévisionnels. (à vérifier sur votre poste)
7. Si des sprints natifs sont présents, ne les utilisez pas dans ce TP. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : vue Tableau avec les compartiments « Backlog (aucun sprint) », « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) », « Sprint 3 (30/11–13/12) »]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent crée les compartiments ; Copilot (chat général) pour le prompt IA-05 (à vérifier sur votre poste).

**Trace** : IA-05

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Crée les trois compartiments « Sprint n (dates) » (carte à approuver, un compartiment par ordre) | Vérifie les noms et les frontières, tient le registre Sprints, n’affecte aucune tâche |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Dans le plan « NOVALIS_BI_Scrum_IA_Planner_TP2 », crée un compartiment « Sprint 1 (02/11–15/11) ».
```

Prompt agent 2 — un ordre à la fois :

```text
Dans le plan « NOVALIS_BI_Scrum_IA_Planner_TP2 », crée un compartiment « Sprint 2 (16/11–29/11) ».
```

Prompt agent 3 — un ordre à la fois :

```text
Dans le plan « NOVALIS_BI_Scrum_IA_Planner_TP2 », crée un compartiment « Sprint 3 (30/11–13/12) ».
```

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

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

- [ ] Attendu à cette étape : 4 compartiments : « Backlog (aucun sprint) » et les trois Sprints, avec les dates dans le nom.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Faites créer les compartiments par l’agent (ou créez-les vous-même), puis vérifiez leurs noms. Gardez les noms métier et les hypothèses dans le registre. N’affectez les tâches S1 qu’après la Planning ; S2 et S3 sont prévisionnels. Le déplacement d’une tâche d’un compartiment à l’autre est une action manuelle (glisser-déposer).

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

- [ ] Trace IA à conserver — IA-05 : calcul de capacité, trois timeboxes contrôlées et liste des hypothèses.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas remplir mécaniquement tous les Sprints pour vider « Backlog (aucun sprint) ». Deux semaines calendaires ne signifient pas dix jours calendaires. Les horaires d’un outil de planification ne garantissent pas la capacité effective.

> ⚠️ Proposition défectueuse à rejeter : « Deux semaines = 14 jours × 6 h par personne » : compter les jours calendaires comme des jours ouvrés surestime la capacité.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai créé les compartiments et réparti les 12 tâches dans les trois Sprints pour vider le backlog » : la sélection a été faite par l’IA, alors que seuls US01, US02 et US03 iront en S1 après la Planning.

#### 10. Si ça ne marche pas

- **Un compartiment est mal nommé.** Renommez-le exactement : « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) », « Sprint 3 (30/11–13/12) ».
- **L’agent ne crée pas les compartiments.** Créez-les à la main : c’est le repli unique.
- **Des sprints natifs sont présents.** Ne les utilisez pas : le TP utilise des compartiments par défaut.

#### 11. Pour réfléchir et lien PSPO I

- Pourquoi laisser du travail sans Sprint ?
- Une capacité de 72 h garantit-elle de finir 13 points ?

> 🟩 **Lien PSPO I (optionnel)** — Prévisions empiriques, capacité et sélection par les Developers en discussion avec le PO. [S3]

#### Point d’arrêt — fin de la demi-journée 2

Vérifiez que les quatre compartiments existent, puis cochez votre auto-évaluation.

- [ ] Je peux citer le Product Goal et un indicateur de mesure (étape 2).
- [ ] Mes 12 tâches ont des IDs uniques et totalisent 47 points (étapes 3 et 4).
- [ ] Mes quatre étiquettes existent (étape 4).
- [ ] Mes compartiments portent les bons noms et les bonnes dates (étape 5).
- [ ] Mon registre IA contient IA-01 à IA-05.

---

### Étape 6 — Réaliser la Sprint Planning

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 40 min | 70 min | 3 |

**Ordre de travail** : IA d’abord (comparaison des scénarios), puis glisser-déposer et saisie.

#### Reprise de la demi-journée 3

> ⚠️ À lire avant de commencer : lisez la Definition of Done (DoD) complète dans l’[Annexe C](#annexe-c--données-de-référence) (rubrique « DoD pédagogique »). Vous devez la connaître avant toute sélection de PBI. Son étude détaillée a lieu à l’étape 11.

- [ ] J’ai rouvert le plan `NOVALIS_BI_Scrum_IA_Planner_TP2` et vérifié les quatre compartiments.
- [ ] Mon registre IA contient IA-01 à IA-05.
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
3. Consignez le Sprint Goal dans le registre Sprints (Excel) et dans la description du plan (ou comme objectif si la fonction existe). Ne le demandez pas à l’agent. (à vérifier sur votre poste)
4. Après la décision de l’équipe, demandez à l’agent d’exécuter le déplacement avec le prompt de la rubrique 4 (à tester ; repli : glisser-déposer manuel). Il ne sélectionne jamais. (à vérifier sur votre poste)
5. Contrôlez que seules US01, US02 et US03 sont dans « Sprint 1 (02/11–15/11) ». (à vérifier sur votre poste)
6. Dans Excel, saisissez Nombre3 (Reste estimé h) = 20 / 12 / 20 ; les points restent dans les titres (5 / 3 / 5).
7. Ajoutez à la main le plan détaillé dans la description des trois tâches, sans effacer les critères : l’agent ne modifie pas les notes de tâches existantes. (à vérifier sur votre poste)
8. Pour pratiquer, ajoutez à la main dans la liste de contrôle de US01 les éléments T-US01-1, T-US01-2 et T-US01-3 (les sous-tâches ne sont pas disponibles dans un plan de base, à vérifier). Ils décrivent les mêmes 20 h : ne les additionnez pas aux 20 h du PBI. (à vérifier sur votre poste)
9. Les Developers conviennent de la répartition. Cheikh AS contribue aux contrôles avec un collègue ; la restitution et la vérification croisée sont prises en charge ensemble. (à vérifier sur votre poste)
10. Archivez la Planning : capture de la vue Tableau, nommée « NOVALIS_BI_Scrum_01_Planning_S1 ». (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : vue Tableau avec US01, US02, US03 dans « Sprint 1 (02/11–15/11) » et les éléments T-US01-1 à 3 dans la liste de contrôle]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) compare les scénarios ; Planner Agent exécute le déplacement après la décision humaine (à vérifier sur votre poste).

**Trace** : IA-06

> ⚠️ L’agent lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Exécute le déplacement après la décision humaine (à tester ; il ne sélectionne jamais) | Décide la sélection avec l’équipe, fixe le Sprint Goal, ajoute à la main les éléments T-US01-n dans la liste de contrôle et le plan dans la description, tient Excel (Nombre3) |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Déplace US01, US02 et US03 vers « Sprint 1 (02/11–15/11) ». Ne déplace aucune autre tâche.
```

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

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

- [ ] Attendu à cette étape : US01, US02, US03 (13 points) dans « Sprint 1 (02/11–15/11) » après exécution du déplacement ; aucune autre tâche déplacée.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Après la décision de l’équipe, faites déplacer US01, US02 et US03 vers « Sprint 1 (02/11–15/11) » par l’agent, ou glissez-les à la main. Dans Excel, Nombre3 (Reste estimé h) = 20 / 12 / 20. Enregistrez le Sprint Goal au registre, le plan dans la description et les éléments de liste de contrôle demandés. Texte4 (Référence IA) peut devenir IA-03 ; IA-06, dans Excel. Archivez la Planning.

#### 7. Données à saisir

Où va chaque champ du TP source (alias) :

| Champ du TP source (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Nombre3 (Reste estimé h) | Aucun champ équivalent (ne pas confondre avec la progression) | Colonne Reste estimé h, saisie manuellement, vide avant Planning |
| Texte4 (Référence IA) | Aucun champ équivalent | Colonne Référence IA (ex. « IA-03 ; IA-06 ») |

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

- [ ] Trace IA à conserver — IA-06 : comparaison A/B, scénario retenu, raisons du rejet ou report de l’autre et plan validé.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Le PO ne distribue pas unilatéralement les tâches et n’impose pas US04. Une autre sélection cohérente est recevable, mais nécessite son propre suivi : ne pas réutiliser les chiffres du scénario sans adaptation.

> ⚠️ Proposition défectueuse à rejeter : « La capacité restante permet forcément d’ajouter US04 » : une marge en heures ne prouve ni faisabilité ni cohérence avec le but.

> ⚠️ Proposition défectueuse propre à Planner : « L’agent a déplacé US04 dans Sprint 1 car il reste de la capacité » : la sélection du Sprint appartient aux Developers.

#### 10. Si ça ne marche pas

- **L’agent n’exécute pas le déplacement.** Glissez-déposez les trois tâches à la main : c’est le repli unique.
- **Vous voulez ajouter US04 « parce qu’il reste de la capacité ».** Rejetez ce raisonnement (rubrique 9). Une autre sélection cohérente demande son propre suivi.
- **Les heures des éléments de liste de contrôle s’ajoutent à celles du PBI.** Ne les additionnez pas : T-US01-1 à T-US01-3 décrivent les mêmes 20 h.

#### 11. Pour réfléchir et lien PSPO I

- Qui décide comment réaliser le travail ?
- Peut-on supprimer une fonction secondaire sans perdre le but ?

> 🟩 **Lien PSPO I (optionnel)** — Autogestion, responsabilités et engagement associé au Sprint Backlog. [S3]

---

### Étape 7 — Gérer le Sprint Backlog et le travail quotidien

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
2. J1 (02/11) : demandez à l’agent de passer US01 et US03 en cours (premier prompt de la rubrique 4). US02 reste à son niveau initial. (à vérifier sur votre poste)
3. Chaque jour, mettez à jour dans Excel la colonne Nombre3 (Reste estimé h) avec le tableau du jour. (à vérifier sur votre poste)
4. J3 : sur US03, ajoutez à la main l’étiquette « Bloqué » et la ligne datée « J3 — correspondance P03 à confirmer avec Haida B » dans la description (l’agent ne modifie ni les étiquettes ni les notes existantes). Action : Cheikh AS et Haida B vérifient avant J4. (à vérifier sur votre poste)
5. J4 : après résolution, retirez à la main l’étiquette « Bloqué », gardez la trace datée dans la description et faites démarrer US02 par l’agent (progression). (à vérifier sur votre poste)
6. J5 (06/11) : ajoutez à la main l’étiquette « À vérifier » sur US01. Elle n’est pas Done. (à vérifier sur votre poste)
7. J6 (09/11) : après preuves de la DoD, remplacez « À vérifier » par « Conforme » à la main, puis demandez à l’agent de passer US01 en terminé (second prompt, décision humaine). Même procédure à J8 pour US02 et à J10 (13/11) pour US03. (à vérifier sur votre poste)
8. Copiez chaque jour l’état et les restes dans le registre Excel : Planner ne conserve pas cet historique pour vous. (à vérifier sur votre poste)
9. Observez tout effet d’un changement de progression sur les vues du plan et consignez-le : ni la progression ni l’étiquette ne vérifient la DoD. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : vue Tableau du Sprint 1 à J3 avec l’étiquette « Bloqué » sur US03 et la description datée]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent change la progression après décision humaine ; Copilot (chat général) analyse les données (à vérifier sur votre poste).

**Trace** : IA-07

> ⚠️ L’agent lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Change la progression d’une tâche après chaque décision humaine | Pose les étiquettes (Bloqué, À vérifier, Conforme), écrit les lignes datées dans la description, copie l’état et les restes dans Excel |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Passe la progression de US01 et de US03 à « en cours ». Ne modifie rien d’autre.
```

Prompt agent 2 — un ordre à la fois :

```text
Passe la progression de US01 à « terminée ». (À utiliser seulement après la décision humaine sur les preuves de la DoD.)
```

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

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

- [ ] Attendu à cette étape : progression et étiquettes conformes au tableau du jour ; aucune tâche Terminé avant J6.

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

- [ ] Trace IA à conserver — IA-07 : première analyse J3, décision d’adaptation, seconde analyse J5 et différence après saisie.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas réduire mécaniquement le reste d’un nombre d’heures fixe chaque jour. Ne pas réestimer les points pour maquiller le suivi. Une story « à 90 % » n’est pas un Increment Done.

> ⚠️ Proposition défectueuse à rejeter : « 40 % d’heures consommées implique 40 % de valeur livrée » : le reste n’est pas une consommation, et la valeur n’est pas déduite d’un pourcentage.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai mis US01 à Terminé parce qu’il reste 6 h » : statut Done sans preuve ; « À vérifier » est une étiquette, jamais Done.

#### 10. Si ça ne marche pas

- **L’agent ne change pas la progression.** Saisissez-la à la main : c’est le repli unique.
- **L’agent ne propose pas la modification demandée (étiquette, description).** Faites-la à la main : il ne modifie ni les étiquettes ni les notes existantes.
- **Vous cherchez les heures restantes dans Planner.** Elles restent dans Excel : Nombre3 (Reste estimé h) n’a aucun champ Planner.

#### 11. Pour réfléchir et lien PSPO I

- Pourquoi le reste monte-t-il à J3 ?
- Quelle adaptation aide le but plutôt qu’un indicateur artificiel ?

> 🟩 **Lien PSPO I (optionnel)** — Daily Scrum, transparence des obstacles et adaptation par les Developers. [S3]

---

### Étape 8 — Suivre et visualiser l’avancement

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
2. Posez à l’agent une question de lecture avec le prompt de la rubrique 4 : il ne modifie rien. (à vérifier sur votre poste)
3. Ouvrez la vue Grille filtrée sur « Sprint 1 (02/11–15/11) » avec les colonnes titre, progression et étiquettes. (à vérifier sur votre poste)
4. Vérifiez que les éléments de liste de contrôle ne sont pas comptés comme des PBI supplémentaires. (à vérifier sur votre poste)
5. Ouvrez la vue Graphiques : notez le titre, l’unité et le filtre de chaque graphique présent. (à vérifier sur votre poste)
6. Constatez que Reste estimé h n’existe pas dans Planner : il n’alimente aucun graphique. (à vérifier sur votre poste)
7. Dans Excel, saisir Jour, Reste total h, Idéal h, Points restants ; Insertion > Graphiques > Courbes. Sélectionner les deux séries d’heures, pas les points sur la même échelle.
8. Titre : « Sprint 1 — reste estimé, données pédagogiques » ; axe vertical heures, horizontal jours ouvrés.
9. Facultatif : courbe distincte de points. Si un burndown natif existe dans Planner, inspecter ses données avant d’annoncer sa pertinence ; aucun burndown Story Points prêt à l’emploi n’est garanti ici.

> [CAPTURE À INSÉRER : vue Graphiques du plan avec titres et unités visibles]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent (questions de lecture) et Excel (à vérifier sur votre poste).

**Trace** : IA-08

> ⚠️ L’agent lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Répond à des questions de lecture sur le plan (aucune modification) | Ouvre la vue Graphiques, prépare tableau et courbes dans Excel, rédige le commentaire |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Dans le plan « NOVALIS_BI_Scrum_IA_Planner_TP2 », liste les tâches du compartiment « Sprint 1 (02/11–15/11) » avec leur progression. Ne modifie rien.
```

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

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Ouvrez les vues et graphiques présents dans Planner et consignez leurs titres et les champs utilisés. Produisez dans Excel les courbes pédagogiques garanties par le jeu de données. Collez le commentaire corrigé dans le registre, non comme preuve de valeur.

#### 7. Données à saisir

> ⚠️ Rappel : les heures restantes et le burndown restent dans Excel.

Reprendre les totaux J0–J10 de l’étape 7 : 52, 49, 45, 48, 42, 31, 20, 15, 8, 3, 0 h.

Ligne idéale illustrative : 52 ; 46,8 ; 41,6 ; 36,4 ; 31,2 ; 26 ; 20,8 ; 15,6 ; 10,4 ; 5,2 ; 0 h. Formule : 52 × (10 − jour) / 10.

Points restants : 13, 13, 13, 13, 13, 13, 8, 8, 5, 5, 0. Ces données sont fournies et simulées, non calculées automatiquement par Planner.

#### 8. ✅ Vérifier le résultat

- [ ] Un tableau lisible et une courbe avec source, unités et commentaire : hausse du reste J3, premiers PBI Done J6.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-08 : tableau de calcul, unités, source, commentaire retenu et limites des vues et graphiques Planner.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

À J5, 31 h restantes et 13 points restants sont compatibles. Ne pas fractionner les points au pourcentage. Ne pas attribuer une variation de courbe à un individu sans preuve.

> ⚠️ Proposition défectueuse à rejeter : « La courbe descend, donc les utilisateurs gagnent du temps » : une observation de travail n’établit pas un résultat d’usage.

> ⚠️ Proposition défectueuse propre à Planner : « La vue Graphiques de Planner affiche le burndown des heures restantes » : Reste estimé h n’existe pas dans Planner ; le burndown se trace dans Excel.

#### 10. Si ça ne marche pas

- **La vue Graphiques est absente ou différente.** Notez les titres réellement observés ; le catalogue peut varier selon la version.
- **Les graphiques ne montrent pas les heures restantes.** C’est normal : elles sont dans Excel. Aucun burndown Story Points prêt à l’emploi n’est garanti.
- **Les éléments de liste de contrôle gonflent le total.** Vérifiez qu’ils ne sont pas comptés comme des PBI supplémentaires.

#### 11. Pour réfléchir et lien PSPO I

- Une courbe idéale prouve-t-elle un usage utile ?
- Que faut-il observer en plus ?

> 🟩 **Lien PSPO I (optionnel)** — Limites des métriques de production et prévision empirique. [S3, S4]

#### Point d’arrêt — fin de la demi-journée 3

- [ ] US01, US02 et US03 sont dans « Sprint 1 (02/11–15/11) » (étape 6).
- [ ] Le suivi J0–J10 est dans Excel et le plan reflète l’état du jour (étapes 7 et 8).
- [ ] J’ai tracé la courbe dans Excel et noté les limites des graphiques Planner.
- [ ] Mon registre IA contient IA-01 à IA-08.

## Partie 4 — S’adapter et inspecter

> **Sigles de cette partie** : IA = intelligence artificielle ; BI = Business Intelligence (informatique décisionnelle) ; PBI = Product Backlog Item (élément du Product Backlog) ; PO = Product Owner ; DoD = Definition of Done ; US = User Story ; PSPO I = Professional Scrum Product Owner I ; TP = travaux pratiques ; CA = chiffre d’affaires ; J0 = jour 0 du Sprint (J1 à J10 : jours ouvrés suivants).

### Étape 9 — Simuler un changement de priorité en cours de sprint

| Durée d’origine | Durée conseillée débutant (indicatif) | Demi-journée |
|---|---|---|
| 25 min | 45 min | 4 |

**Ordre de travail** : IA d’abord (comparaison des options), puis création de US13.

#### Reprise de la demi-journée 4

- [ ] J’ai rouvert le plan et vérifié l’état de fin du Sprint 1.
- [ ] Mon registre IA contient IA-01 à IA-08.

#### 1. Ce que vous allez obtenir

**Objectif.** Analyser une urgence sans perdre le Sprint Goal ni réduire la qualité.

**Résultat attendu.** 13 PBI, 50 points historiques ; S1 reste à 13 points. Besoin urgent visible et ordonné, sans injection forcée.

#### 2. Pourquoi cette étape

🟩 **Contexte métier.** À J4 S1, Dhirar A demande un taux d’atteinte des objectifs régionaux. Le but S1 reste utile.

🟩 **Notion Scrum.** Le PO ordonne le backlog. Le périmètre peut être clarifié/renégocié avec les Developers sans mettre en danger le but et sans réduire la qualité. Seul le PO peut annuler un Sprint si son objectif devient obsolète. [S3]

#### 3. 🟦 À faire dans Planner

> ⚠️ Chaque action est à vérifier sur votre poste. Les noms de menus peuvent varier.

Lisez d’abord la rubrique 4 (IA), puis les contrôles (rubrique 5). Revenez ensuite à ces actions.

1. Demandez à l’agent de créer la tâche US13 dans « Backlog (aucun sprint) » avec le prompt de la rubrique 4. Approuvez la carte après lecture. (à vérifier sur votre poste)
2. Saisissez à la main la formulation, la ligne « J4 : valeur reconnue ; objectif S1 maintenu ; cibles à clarifier pour un prochain Sprint » et la liste de contrôle des critères. (à vérifier sur votre poste)
3. Placez US13 juste après US06 (rang 7) par glisser-déposer ; décalez US07 à US12 aux rangs 8 à 13. (à vérifier sur votre poste)
4. Ne déplacez pas US13 dans « Sprint 1 (02/11–15/11) » : le scénario de suivi reste inchangé. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : tâche US13 dans le Backlog, au rang 7, avec sa liste de contrôle]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) compare les options ; Planner Agent crée US13 (à vérifier sur votre poste).

**Trace** : IA-09

> ⚠️ L’agent lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Crée US13 dans le Backlog (carte à approuver) | Place US13 au rang 7, ajoute la liste de contrôle, décide de l’urgence (ni annulation ni ajout au Sprint 1 par l’agent) |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Dans le compartiment « Backlog (aucun sprint) », crée la tâche « US13 — Mesurer l’atteinte des objectifs commerciaux [3 pts] ». Aucune date. Ne la place dans aucun Sprint.
```

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

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

- [ ] Attendu à cette étape : 13 tâches, 50 points ; US13 hors Sprint 1.

#### 6. Passage de la réponse IA à Planner

Reportez dans Planner uniquement la version validée. La sortie brute et les échanges restent dans le registre IA (Excel), hors de Planner.

Créez US13 hors Sprint, dans « Backlog (aucun sprint) », points illustratifs 3 après clarification (dans le titre), ordre 7. Conservez la décision datée dans la description, et IA-09 dans Texte4 (Référence IA), dans Excel. Ne modifiez ni la sélection ni les données S1.

#### 7. Données à saisir

Où va chaque champ du TP source (alias) :

| Champ du TP source (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Texte4 (Référence IA) | Aucun champ équivalent | Colonne Référence IA (ex. « IA-03 ; IA-06 ») |

US13 — Mesurer l’atteinte des objectifs commerciaux.

« En tant que direction commerciale, je veux comparer le CA régional à l’objectif commercial de février, afin de cibler les actions de rattrapage. »

Taille illustrative après clarification par les Developers : 3 points ; prévision de travail S3 : 12 h, sans conversion automatique.

Critères : Nord, objectif 35 000 / réel 30 000 Euro → 85,71 %, écart −5 000 ; Sud, objectif 25 000 / réel 20 000 → 80 %, écart −5 000. Global : 50 000 / 60 000 = 83,33 %, pas la moyenne simple des taux ; écart −10 000. Cible zéro : Non calculable. Mois, source et version des cibles visibles. Cibles définitives fournies fin S2.

Liste de contrôle Planner de US13 (une case par critère) :

- [ ] Nord, objectif 35 000 / réel 30 000 Euro → 85,71 %, écart −5 000 ; Sud, objectif 25 000 / réel 20 000 → 80 %, écart −5 000.
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

- [ ] Trace IA à conserver — IA-09 : options comparées, décision du PO simulé et discussion de faisabilité avec les Developers.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Une substitution peut être discutée si elle préserve le but et la qualité, mais nécessiterait un suivi adapté. Ne pas annuler pour masquer un écart. Une urgence n’implique pas une obsolescence du Sprint Goal.

> ⚠️ Proposition défectueuse à rejeter : « Le sponsor est urgent, donc annuler immédiatement et recommencer » : autorité et condition d’annulation confondues.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai ajouté US13 dans Sprint 1 et annulé le Sprint pour repartir » : ajout forcé et annulation décidés par l’IA.

#### 10. Si ça ne marche pas

- **L’IA conclut qu’il faut annuler le Sprint.** Rappelez que seul le PO peut l’annuler, si le but devient obsolète. Une urgence ne suffit pas.
- **US13 se retrouve dans « Sprint 1 ».** Remettez-la à la main dans le Backlog : le scénario de suivi reste inchangé.
- **Des données futures figurent dans la conversation ou dans le plan.** Ouvrez une nouvelle conversation avec le prompt de cadrage et le seul état J4.

#### 11. Pour réfléchir et lien PSPO I

- Quelles informations manquent ?
- Quel changement rendrait vraiment le but obsolète ?

> 🟩 **Lien PSPO I (optionnel)** — Autorité du PO sur ordre et annulation ; limites sur le plan des Developers. [S3]

---

### Étape 10 — Organiser la Sprint Review et la Sprint Retrospective

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

**Entrée utilisée** : Copilot (chat général) (à vérifier sur votre poste).

**Trace** : IA-10

> ⚠️ L’agent lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Rien à cette étape | Tient les registres Review et Retrospective (Excel) et met à jour l’ordre et les descriptions validés |

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

- [ ] Trace IA à conserver — IA-10 : deux supports, corrections, décisions produit et action d’amélioration retenue.

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

### Étape 11 — Comprendre l’Increment et la Definition of Done

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
2. Vérifiez la DoD ci-dessous : l’étiquette « Conforme » est posée à la main, et seulement après satisfaction de tous les points. (à vérifier sur votre poste)
3. Après la décision humaine, demandez à l’agent de passer la progression de US01 en terminé (prompt de la rubrique 4) : Planner n’applique pas la DoD automatiquement. (à vérifier sur votre poste)
4. Dans une copie d’exercice du plan (ou dans Excel si la copie est impossible), simulez US03 « Non conforme » si le classement janvier est faux : retirez Terminé, posez à la main l’étiquette « Non conforme » et notez le défaut. Revenez ensuite au scénario corrigé où le problème est résolu à J10. (à vérifier sur votre poste)
5. Un élément de 5 points non Done vaut zéro point Done, pas un crédit proportionnel. (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : description de US01 avec critères, preuves et étiquette Conforme]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Copilot (chat général) audite les preuves ; Planner Agent change la progression après décision humaine (à vérifier sur votre poste).

**Trace** : IA-11

> ⚠️ L’agent lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Change la progression d’une tâche seulement après la décision humaine | Pose les étiquettes Conforme / Non conforme, saisit les preuves dans la description, vérifie la DoD |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Passe la progression de US01 à « terminée ». (À utiliser seulement après vérification humaine des dix points de la DoD.)
```

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

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

- [ ] Attendu à cette étape : chaque Terminé a une étiquette « Conforme » et une preuve ; les cas simulés « Non conformes » ne sont pas Terminé.

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

Exemple : US01 = janvier 40 000 Euro ; DoD = tests, réconciliation, documentation, intégration et accès ; retour métier = demande ultérieure de comparaison.

Les preuves sont simulées : US01 conforme J6, US02 J8, US03 J10. Elles ne certifient pas une solution BI réellement développée.

#### 8. ✅ Vérifier le résultat

- [ ] Une qualité commune et une décision claire pour chaque élément.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-11 : matrice, anomalies corrigées, décisions qualité et limites de la simulation.

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

### Étape 12 — Gérer plusieurs sprints et inspecter les résultats

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
2. Planning S2 : après la décision de l’équipe, demandez à l’agent de déplacer US04, US05 et US06 vers « Sprint 2 (16/11–29/11) » (premier prompt ; repli : glisser-déposer manuel). Prévisions 24 / 12 / 24 h = 60 h dans Excel. US13 reste dans le Backlog : cibles non finalisées. (à vérifier sur votre poste)
3. J2 S2 : notez l’absence et le plafond révisé de 72 à 48 h dans le registre Sprints (Excel). Adaptez le plan sans allonger le Sprint ni abaisser la DoD. (à vérifier sur votre poste)
4. Fin S2 : US04 et US05 en Terminé avec l’étiquette « Conforme » (posée à la main). US06 porte les étiquettes « À vérifier » puis « Non conforme », reste 10 h, et n’est pas Terminé. Défaut : référence zéro non gérée, à noter dans la description. Le but complet n’est pas atteint. (à vérifier sur votre poste)
5. Archivez la fin S2 (« NOVALIS_BI_Scrum_02_Fin_S2 ») et l’historique avant de déplacer US06. (à vérifier sur votre poste)
6. Demandez à l’agent de remettre US06 dans « Backlog (aucun sprint) » (deuxième prompt) pour réexamen : même tâche, même estimation de 5 points, ne dupliquez pas le PBI. (à vérifier sur votre poste)
7. Planning S3 : cibles confirmées ; après la décision de l’équipe, demandez à l’agent de déplacer US06, US13, US10 et US11 vers « Sprint 3 (30/11–13/12) » (troisième prompt). Reste 10 + 12 + 12 + 8 = 42 h pour un plafond de 48 h (Excel) ; total 13 points. (à vérifier sur votre poste)
8. Fin S3 : les quatre PBI sont Terminé et « Conforme » ; les autres restent dans le Backlog. Archivez une copie finale « NOVALIS_BI_Scrum_03_Fin_S3 » (nom proposé, absent du TP source). (à vérifier sur votre poste)

> [CAPTURE À INSÉRER : vue Tableau de fin S2 (US06 « Non conforme ») puis de fin S3 (quatre PBI Conforme)]

#### 4. 🟨 Avec l’IA

**Entrée utilisée** : Planner Agent exécute les déplacements après décision humaine ; Copilot (chat général) pour les deux passes d’analyse (à vérifier sur votre poste).

**Trace** : IA-12

> ⚠️ L’agent lit le plan : n’y laissez que l’état du moment. La table J0–J10 reste dans Excel.

> ⚠️ Règle d’or : l’IA ne choisit ni le Sprint Goal, ni la sélection du Sprint, ni le statut Done, ni l’annulation d’un Sprint.

##### Ce que l’agent fait / ce que je fais à la main

| L’agent fait | Je fais à la main |
|---|---|
| Exécute les déplacements et changements de progression après décision humaine (à tester ; il ne sélectionne jamais) | Décide les sélections S2 et S3, pose les étiquettes, archive chaque fin de Sprint, tient Excel |

Prompts pour l’agent : courts, un par action, **un ordre à la fois**. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done : ces décisions restent humaines. Si l’agent échoue, saisissez à la main (repli unique).

Prompt agent 1 — un ordre à la fois :

```text
Déplace US04, US05 et US06 vers « Sprint 2 (16/11–29/11) ». Ne déplace aucune autre tâche.
```

Prompt agent 2 — un ordre à la fois :

```text
Déplace US06 vers « Backlog (aucun sprint) ». Ne la duplique pas.
```

Prompt agent 3 — un ordre à la fois :

```text
Déplace US06, US13, US10 et US11 vers « Sprint 3 (30/11–13/12) ». Ne déplace aucune autre tâche.
```

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

##### Attendu à cette étape

Contrôle complet : voir [0A](#0a--avant-de-commencer).

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

S3 initial envisagé à l’étape 5 est remplacé : les apprentissages priment sur la liste initiale.

Temps fictifs : S1 moyenne 30 min ; S2 moyenne 24 min, comparaison encore non conforme ; S3 observations 12/14/15/13/16 min, moyenne 14, aucune ressaisie sur les essais. Le seuil strict « moins de 15 min » n’est pas établi pour chaque utilisateur : 15 et 16 ne le satisfont pas.

Bilan : 47 + US13 3 = 50 points ; Done uniques 13 + 8 + 13 = 34 ; restants US07 3 + US08 5 + US09 3 + US12 5 = 16. US06 n’est créditée Done qu’une fois.

#### 8. ✅ Vérifier le résultat

- [ ] Trois historiques cohérents ; valeur obtenue, fonctionnalités livrées et tâches exécutées distinguées.
- [ ] Le produit S2 comprend marge et comparaison de magasins, mais pas la comparaison de périodes non conforme.

- [ ] Contrôle après création par Copilot ou l’agent effectué (rubrique 5).

- [ ] Trace IA à conserver — IA-12 : prévision initiale, proposition révisée, décision, observation fin S3 et synthèse finale. Relever une recommandation confirmée et une limite de l’assistant.

- [ ] Trace IA supplémentaire : conserver la sortie brute, la décision et le contrôle après report.

#### 9. ⚠️ Erreurs fréquentes et propositions défectueuses à rejeter

Ne pas effacer l’échec partiel S2 en déplaçant seulement une carte. Ne pas additionner les points sélectionnés pour annoncer le produit livré. Ne pas déclarer automatiquement le Product Goal atteint sur une moyenne.

> ⚠️ Proposition défectueuse à rejeter : « S1 13 + S2 13 + S3 13 = 39 points livrés » : additionner les sélections inclut le travail non Done et le report de US06.

> ⚠️ Proposition défectueuse propre à Planner : « J’ai dupliqué US06 dans Sprint 3 et gardé l’originale Terminée dans Sprint 2 » : duplication et double crédit.

#### 10. Si ça ne marche pas

- **L’agent n’exécute pas un déplacement.** Glissez-déposez à la main : c’est le repli unique.
- **US06 apparaît en double.** Gardez la même tâche, ne la dupliquez pas et ne créditez aucun point partiel.
- **L’historique S2 disparaît.** Archivez la fin S2 et l’historique avant de déplacer US06.

#### 11. Pour réfléchir et lien PSPO I

- Quelle valeur reste obtenue en S2 ?
- Comment vérifier le gain d’usage sans se limiter aux points ?

> 🟩 **Lien PSPO I (optionnel)** — Prévision, livraison, valeur observée et adaptation du Product Backlog. [S3, S4]

## Annexe A — Prompts : index, cadrage et relances

Cette annexe contient un index des 12 prompts d’étape, puis le prompt de cadrage, les deux relances et le principe des prompts de l’agent. Le texte complet de chaque prompt d’étape reste dans la rubrique 4 de son étape : il n’existe qu’un seul texte de référence par prompt.

### Index des 12 prompts

| Référence | Étape | Emplacement | Prompt |
|---|---|---|---|
| IA-01 | 1. Créer le plan | Rubrique 4 de [Étape 1 — Créer le plan Scrum dans Microsoft Planner](#étape-1--créer-le-plan-scrum-dans-microsoft-planner) | Adapté à Planner |
| IA-02 | 2. Définir le produit | Rubrique 4 de [Étape 2 — Définir le produit et son objectif](#étape-2--définir-le-produit-et-son-objectif) | Mot pour mot |
| IA-03 | 3. Construire le backlog | Rubrique 4 de [Étape 3 — Construire le Product Backlog](#étape-3--construire-le-product-backlog) | Mot pour mot |
| IA-04 | 4. Organiser le backlog dans Planner | Rubrique 4 de [Étape 4 — Organiser le Product Backlog dans Planner](#étape-4--organiser-le-product-backlog-dans-planner) | Adapté à Planner |
| IA-05 | 5. Configurer les sprints | Rubrique 4 de [Étape 5 — Planifier les sprints](#étape-5--planifier-les-sprints) | Adapté à Planner |
| IA-06 | 6. Sprint Planning | Rubrique 4 de [Étape 6 — Réaliser la Sprint Planning](#étape-6--réaliser-la-sprint-planning) | Mot pour mot |
| IA-07 | 7. Travail quotidien | Rubrique 4 de [Étape 7 — Gérer le Sprint Backlog et le travail quotidien](#étape-7--gérer-le-sprint-backlog-et-le-travail-quotidien) | Adapté à Planner |
| IA-08 | 8. Visualisation | Rubrique 4 de [Étape 8 — Suivre et visualiser l’avancement](#étape-8--suivre-et-visualiser-lavancement) | Adapté à Planner |
| IA-09 | 9. Changement de priorité | Rubrique 4 de [Étape 9 — Simuler un changement de priorité en cours de sprint](#étape-9--simuler-un-changement-de-priorité-en-cours-de-sprint) | Mot pour mot |
| IA-10 | 10. Review et Retrospective | Rubrique 4 de [Étape 10 — Organiser la Sprint Review et la Sprint Retrospective](#étape-10--organiser-la-sprint-review-et-la-sprint-retrospective) | Mot pour mot |
| IA-11 | 11. Increment et DoD | Rubrique 4 de [Étape 11 — Comprendre l’Increment et la Definition of Done](#étape-11--comprendre-lincrement-et-la-definition-of-done) | Mot pour mot |
| IA-12 | 12. Inspection sur trois sprints | Rubrique 4 de [Étape 12 — Gérer plusieurs sprints et inspecter les résultats](#étape-12--gérer-plusieurs-sprints-et-inspecter-les-résultats) | Mot pour mot |

> ⚠️ Les prompts adaptés à Planner sont : le prompt de cadrage, la relance après saisie, IA-01, IA-04, IA-05, IA-07 et IA-08. Tous les autres, IA-06 et IA-12 inclus, sont repris mot pour mot du TP source. La relance après saisie citait l’ancien outil et son format de fichier ; elle est adaptée à Planner. Le prompt IA-01 perd aussi une mention d’un planning prédictif devenue sans objet.

### Prompts de l’agent

Les prompts destinés au Planner Agent sont courts, un par action, marqués « un ordre à la fois », et figurent dans la rubrique 4 de chaque étape concernée. Ne donnez jamais à l’agent le Sprint Goal, la sélection du Sprint ou le statut Done.

### Prompt de cadrage de la conversation — à exécuter une fois

Exécutez ce prompt une seule fois, dans Copilot (chat général), avant l’étape 1 (création du plan). Prompt adapté à Planner.

```text
Tu m’assistes pour construire et adapter un planning de travail Scrum
pour NOVALIS Distribution BI dans Microsoft Planner (avec Microsoft 365 Copilot).
Le poste dispose de Microsoft 365 Copilot et du Planner Agent ; la licence et les fonctions
réellement disponibles seront fournies après vérification.

Ce TP concerne le pilotage du travail, pas le développement BI.
Tu ne vois pas mon plan Planner et tu ne peux pas le modifier ; je te colle les extraits utiles.
N’affirme jamais avoir lu, modifié ou recalculé mon plan sans preuve.

Distingue systématiquement :
1. faits fournis et leur provenance ;
2. hypothèses proposées à valider ;
3. informations manquantes ;
4. recommandations et contrôles à faire dans Planner.

Ne transforme pas les Story Points en jours ou en heures.
Ne fabrique pas de durées, capacités, dates de fin, preuves de tests
ou résultats utilisateurs en les présentant comme des faits.
N’invente aucun menu ; signale les fonctions à vérifier sur le poste.
Ne confonds pas le chat général de Copilot et le Planner Agent.
Le Planner Agent exécute seulement ce que je décide, un ordre à la fois.
Ne présume aucun sprint natif : les Sprints sont des compartiments.

Le PO gère la valeur et le backlog ; les Developers sélectionnent et
planifient en discussion avec le PO ; le Scrum Master accompagne Scrum.
La qualité ne doit pas être abaissée pour finir le périmètre.
Utilise la DoD fournie ; ne déclare pas un élément Done sans preuve.

À chaque réponse, termine par :
- éléments à valider humainement ;
- éléments à reporter dans Planner ;
- éléments à conserver hors de Planner (dans Excel) ;
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

Créer un registre dans Excel avec les colonnes : référence, étape, date, outil/modèle si connu, entrées transmises, prompt utilisé, lien ou emplacement de la sortie brute, proposition, contrôle effectué, décision, justification, éléments reportés dans Planner, résultat observé et question ouverte.

Références : IA-01 à IA-12. Conserver une entrée par étape ; plusieurs lignes sont autorisées pour une même référence si plusieurs propositions sont examinées. Ne pas inventer une erreur si la réponse IA est correcte : préciser le contrôle qui l’a confirmé. Les exemples défectueux du support permettent de s’entraîner à détecter des pièges sans prétendre qu’un assistant les a réellement produits.

Dans le registre Excel, ajouter deux colonnes : Texte4 (Référence IA) et Texte5 (Décision IA). Planner n’offre aucun champ équivalent garanti. Si ces colonnes existent déjà, choisir des colonnes libres et noter la correspondance. Ne pas remplacer ID PBI, Points, Ordre backlog, Reste ou Résultat DoD.

Pour un PBI, Texte4 (Référence IA) peut contenir « IA-03 ; IA-06 », Texte5 (Décision IA) « Corrigé puis retenu ». Les échanges complets restent dans le registre ; ils ne sont pas tous collés sur les cartes Planner. Ajouter dans la description de la tâche un bref résumé de la décision et des contrôles. Ces champs ne créent ni synchronisation avec l’IA ni automatisation du planning.

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
| 12 | Éléments reportés dans Planner | Éléments reportés dans … (intitulé Excel d’origine, qui nomme l’ancien outil) | Intitulé différent |
| 13 | Résultat observé | Résultat observé après saisie | Intitulé différent |
| 14 | Question ouverte | Question ouverte | Identique |

Écarts relevés entre le TP source et le fichier Excel :

- 7 intitulés d’Excel diffèrent légèrement de ceux du TP source (voir le tableau). Le sens est le même ; décidez quel libellé vous conservez.
- Excel préremplit 13 lignes de références (une de plus que cette version) : le nom de l’étape, « IA-xx / v1 » dans la colonne Prompt / version et « À clarifier » dans la colonne Décision. Le TP source ne précise pas ces valeurs.
- Excel contient quatre feuilles absentes du TP source : Mode_emploi, Prompts (13 prompts), la feuille de transfert et Controles_reference.
- Les prompts de la feuille Prompts sont ceux du TP source. Dans cette version Planner, les prompts IA-01, IA-04, IA-05, IA-07 et IA-08 (nouvelle numérotation) sont adaptés : mettez-les à jour dans Excel avant usage.
- La feuille Mode_emploi liste les décisions possibles : Retenu / Corrigé puis retenu / Rejeté / À clarifier.

### Feuille de transfert du fichier Excel (absente du TP source)

Colonnes : Référence IA ; ID PBI / registre ; Proposition retenue ; Champ ciblé / alias ; Valeur avant ; Valeur après ; Contrôle après saisie ; Commentaire. Usage indiqué par Excel : faire correspondre chaque proposition retenue à une ligne PBI ou à un registre externe ; aucune carte artificielle pour chaque échange IA.

### Mise à jour du fichier Excel joint

Cette version retire l’ancienne étape 1 (« Comprendre le passage du prédictif à Scrum »). Appliquez ces corrections au fichier Excel avant usage :

- [ ] Supprimez la ligne IA-01 de la feuille du registre (étape retirée), ainsi que celle des feuilles Prompts et de transfert.
- [ ] Décalez les références restantes : IA-02 devient IA-01, IA-03 devient IA-02, et ainsi de suite jusqu’à la dernière ligne.
- [ ] Mettez à jour la colonne « Étape » avec la nouvelle numérotation (étapes 1 à 12).
- [ ] Mettez à jour dans Controles_reference les valeurs qui citent des numéros d’étape, le cas échéant.

### Registres participant à conserver

| Registre | Informations |
|---|---|
| IA | Entrées, prompts, sorties brutes, contrôles, décisions, report Planner et observation |
| Produit | Vision, objectif, utilisateurs, hypothèses de valeur et mesures |
| Backlog | ID, formulation, critères, valeur, ordre, taille, contraintes |
| Sprints | Dates, objectif, sélection, capacité, résultat et décisions |
| Suivi quotidien | Jour, reste, état, obstacle et adaptation |
| Review | Auteur, observation, interprétation, décision produit |
| Retrospective | Conserver/Arrêter/Essayer, action, porteur volontaire, inspection |

Une archive du plan (capture ou export) n’est ni une clôture Scrum avec validation du PMO ni une baseline obligatoire.

## Annexe C — Données de référence

> **Sigles de cette partie** : BI = Business Intelligence (informatique décisionnelle) ; DoD = Definition of Done ; US = User Story ; Euro = Euro ; HT = hors taxes ; CA = chiffre d’affaires.

Cette annexe regroupe les données de référence du TP. Les valeurs sont identiques à celles du TP source.

### C.1 Données BI de référence

| Indicateur | Janvier | Février | Cumul |
|---|---:|---:|---:|
| CA net HT Euro | 40 000 | 50 000 | 90 000 |
| Coût d’achat Euro | 29 200 | 33 800 | 63 000 |
| Marge commerciale Euro | 10 800 | 16 200 | 27 000 |
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

P01 et P02 appartiennent à Équipement ; P03 à Accessoires. Les codes C01/C02/C03 sont pseudonymisés. Variation février/janvier : +10 000 Euro, soit +25 %. Ces agrégats servent à simuler les vérifications sans construire un tableau de bord réel. Ils ne doivent pas être saisis comme tâches dans Planner.

Pourquoi ? Une marge doit avoir une formule, un périmètre et une unité. Le taux de marque rapporté au CA ne se confond pas avec un taux rapporté au coût.

### C.2 Table de correspondance TP source → Planner

Tout est à vérifier sur votre poste.

| Élément du TP source (outil d’origine) | Planner (plan de base partagé) |
|---|---|
| Sprint 1 / 2 / 3 | Compartiments « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) », « Sprint 3 (30/11–13/12) » |
| Aucun sprint | Compartiment « Backlog (aucun sprint) » |
| Affecter une carte à un Sprint | Glisser-déposer manuel entre compartiments |
| PBI | Tâche « USxx — nom [N pts] » |
| Texte1 (ID PBI) / Nombre1 (Points) | Préfixe / suffixe du titre |
| Nombre2 (Ordre backlog) | Ordre dans le compartiment |
| Notes et critères | Description + liste de contrôle (une case par critère) |
| Tâches T-USxx-n | Éléments de liste de contrôle, saisis à la main (sous-tâches indisponibles dans un plan de base, à vérifier) |
| État du tableau | Progression ; « À vérifier » = étiquette (≠ Done) |
| Texte2 (Obstacle) | Étiquette « Bloqué » + ligne datée dans la description |
| Texte3 (Résultat DoD) | Étiquettes « Conforme » / « Non conforme » |
| Afficher dans le tableau | Aucun équivalent garanti ; les éléments de liste de contrôle ne sont pas des cartes séparées (à vérifier) |
| Personnaliser les cartes | Aucun équivalent garanti ; le titre porte l’ID et les points, les étiquettes portent l’état. Vérifier si le tableau permet de choisir les informations affichées |
| Nombre3 (Reste estimé h), Texte4 (Référence IA), Texte5 (Décision IA), burndown, registres | Excel |
| Product Goal, Sprint Goals | Objectifs Planner si la fonction existe (à vérifier) ; repli : description du plan et registre Excel |
| Gantt, mode manuel, Durée | Aucun équivalent requis ; vues Grille / Tableau / Planification / Graphiques à vérifier |
| Archives du TP source | Captures ou exports du plan (à vérifier) |
| Rapports natifs | Vue Graphiques (à vérifier) |

### C.3 Alias des huit champs

| Champ technique (alias) | Dans Planner | Dans Excel |
|---|---|---|
| Texte1 (ID PBI) | Préfixe du titre de la tâche (« USxx — … ») | Colonne ID PBI |
| Texte2 (Obstacle) | Étiquette « Bloqué » + ligne datée dans la description | Colonne Obstacle (avec date) |
| Texte3 (Résultat DoD) | Étiquettes « Conforme » / « Non conforme » (« À vérifier » = étiquette, jamais Done) | Colonne Résultat DoD |
| Texte4 (Référence IA) | Aucun champ équivalent | Colonne Référence IA (ex. « IA-03 ; IA-06 ») |
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
| US13 | Mesurer l’atteinte des objectifs commerciaux (ajoutée à l’étape 9) | 7 (US07 à US12 décalées à 8–13) | 3 | Aucun sprint |
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

Le contenu complet de la DoD figure à l’[étape 11](#étape-11--comprendre-lincrement-et-la-definition-of-done) ; voici sa copie de référence, à lire avant l’étape 6.

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

Exemple : US01 = janvier 40 000 Euro ; DoD = tests, réconciliation, documentation, intégration et accès ; retour métier = demande ultérieure de comparaison.

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
| Sprints, dates, capacité 180 / 36 / 72 h | Étape 5, rubrique 7 |
| Plan du Sprint 1 (52 h) | Étape 6, rubrique 7 |
| Série idéale et points restants | Étape 8, rubrique 7 |
| US13 et taux d’atteinte | Étape 9, rubrique 7 |
| Retours Review et Retrospective | Étape 10, rubrique 7 |
| Bilan S1, S2, S3 | Étape 12, rubrique 7 |

## Annexe D — Dépannage

Cette annexe regroupe les rubriques « Si ça ne marche pas » de chaque étape.

### Étape 0

- **L’agent ne voit pas le plan.** Il ne voit que les plans de base partagés récemment ouverts : ouvrez le plan dans Planner, puis réessayez.
- **L’agent échoue.** Notez la réponse dans le tableau et saisissez à la main : c’est le repli unique.
- **Un menu porte un autre nom.** Notez l’intitulé réellement observé.

### Étape 1

- **Le Planner Agent n’apparaît pas ou ne crée pas le plan.** Créez le plan à la main dans Planner, puis notez le constat.
- **L’agent ne voit pas le plan.** Il ne voit que les plans de base partagés récemment ouverts : ouvrez le plan dans Planner, puis réessayez.
- **Une vue ou une fonction manque (Graphiques, Objectifs).** Notez les intitulés réellement observés dans le tableau « observé sur mon poste ». Ne présumez aucune fonction.

### Étape 2

- **La fonction Objectifs est absente.** Saisissez le Product Goal et les Sprint Goals dans la description du plan et dans le registre Excel.
- **L’IA propose une hausse de CA chiffrée.** Rejetez-la (rubrique 9) : les 45 minutes sont une hypothèse à vérifier.
- **Le but proposé ressemble à « livrer 12 stories ».** Demandez un résultat utilisateur observable, pas une mesure de production.

### Étape 3

- **L’IA fournit moins de 12 fiches ou des IDs en double.** Relancez avec la RELANCE DE CONTRÔLE et vérifiez 12 IDs uniques, de US01 à US12.
- **Un critère contredit les données de référence.** Recalculez avec l’Annexe C. Les critères non validés restent des questions.
- **L’agent échoue ou crée plus d’une tâche.** Supprimez à la main les tâches en trop (l’agent ne supprime pas) et créez US01 à la main.

### Étape 4

- **L’agent crée des doublons ou un titre irrégulier.** Supprimez à la main les doublons et corrigez le format « USxx — nom [N pts] » avant le lot suivant.
- **La liste de contrôle n’accepte pas tous les critères.** La limite est à vérifier sur votre poste. Conservez les critères complets dans la description.
- **L’ordre est perdu après un glisser-déposer.** Recontrôlez l’ordre 1 à 12 avec le tableau de l’Annexe C.4.

### Étape 5

- **Un compartiment est mal nommé.** Renommez-le exactement : « Sprint 1 (02/11–15/11) », « Sprint 2 (16/11–29/11) », « Sprint 3 (30/11–13/12) ».
- **L’agent ne crée pas les compartiments.** Créez-les à la main : c’est le repli unique.
- **Des sprints natifs sont présents.** Ne les utilisez pas : le TP utilise des compartiments par défaut.

### Étape 6

- **L’agent n’exécute pas le déplacement.** Glissez-déposez les trois tâches à la main : c’est le repli unique.
- **Vous voulez ajouter US04 « parce qu’il reste de la capacité ».** Rejetez ce raisonnement (rubrique 9). Une autre sélection cohérente demande son propre suivi.
- **Les heures des éléments de liste de contrôle s’ajoutent à celles du PBI.** Ne les additionnez pas : T-US01-1 à T-US01-3 décrivent les mêmes 20 h.

### Étape 7

- **L’agent ne change pas la progression.** Saisissez-la à la main : c’est le repli unique.
- **L’agent ne propose pas la modification demandée (étiquette, description).** Faites-la à la main : il ne modifie ni les étiquettes ni les notes existantes.
- **Vous cherchez les heures restantes dans Planner.** Elles restent dans Excel : Nombre3 (Reste estimé h) n’a aucun champ Planner.

### Étape 8

- **La vue Graphiques est absente ou différente.** Notez les titres réellement observés ; le catalogue peut varier selon la version.
- **Les graphiques ne montrent pas les heures restantes.** C’est normal : elles sont dans Excel. Aucun burndown Story Points prêt à l’emploi n’est garanti.
- **Les éléments de liste de contrôle gonflent le total.** Vérifiez qu’ils ne sont pas comptés comme des PBI supplémentaires.

### Étape 9

- **L’IA conclut qu’il faut annuler le Sprint.** Rappelez que seul le PO peut l’annuler, si le but devient obsolète. Une urgence ne suffit pas.
- **US13 se retrouve dans « Sprint 1 ».** Remettez-la à la main dans le Backlog : le scénario de suivi reste inchangé.
- **Des données futures figurent dans la conversation ou dans le plan.** Ouvrez une nouvelle conversation avec le prompt de cadrage et le seul état J4.

### Étape 10

- **L’IA invente des citations d’utilisateurs.** Comparez toutes les citations à celles du tableau de l’étape et rejetez les autres.
- **Vous cherchez à faire la démonstration BI dans Planner.** Planner n’exécute pas ces interactions BI : simulez-la à partir des agrégats.
- **Les comptes rendus encombrent le plan.** Conservez-les dans les registres Review et Retrospective (Excel).

### Étape 11

- **L’IA déclare « tests passés » sans preuve.** Rejetez : une preuve absente signifie non démontré.
- **Une tâche à Terminé semble validée.** Planner n’applique pas la DoD : vérifiez l’étiquette « Conforme » et les preuves dans la description.
- **US03 doit être simulée « Non conforme ».** Faites-le dans une copie d’exercice, puis revenez au scénario corrigé.

### Étape 12

- **L’agent n’exécute pas un déplacement.** Glissez-déposez à la main : c’est le repli unique.
- **US06 apparaît en double.** Gardez la même tâche, ne la dupliquez pas et ne créditez aucun point partiel.
- **L’historique S2 disparaît.** Archivez la fin S2 et l’historique avant de déplacer US06.

### Fonction manquante sur le poste

Si une fonction manque, consignez le constat et faites contrôler le déploiement par l’administrateur. Pour poursuivre temporairement, vous pouvez simuler le suivi dans Excel, mais cela ne remplace pas la validation des compétences dans Planner.

## Annexe E — Checklist finale et livrables

### Dossier participant — livrables IA attendus

1. Un plan Planner de travail avec étiquettes, et un registre Excel enrichi des colonnes de traçabilité IA, avec archives (captures ou exports) Backlog, Planning S1, Fin S1, Fin S2 et Fin S3.
2. Douze entrées IA-01 à IA-12, avec prompts, sorties et décisions ; les étapes de création de fichier ou de registre ne nécessitent pas de carte artificielle dans le backlog.
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
- [ ] Prompt de cadrage exécuté ; données fictives seulement ; aucun accès de l’IA à votre plan supposé en dehors du Planner Agent.
- [ ] Douze traces IA conservées avec décision et contrôle, sans inventer des erreurs.
- [ ] Colonnes Référence IA / Décision IA créées dans Excel sans écraser les colonnes existantes.
- [ ] Les données futures ne sont pas révélées dans les analyses d’un point de suivi antérieur.
- [ ] Aucun calcul, durée, date, droit d’accès ou test réalisé n’est accepté sans contrôle.
- [ ] L’IA ne sélectionne pas les PBI à la place des Developers, ne déclare pas Done sans preuve et n’annule pas un Sprint à la place du PO.
- [ ] Proposition, saisie effective et résultat observé sont distingués.
- [ ] Licence, type de plan (plan de base partagé), langue et fonctions réellement observées notées (tableau « observé sur mon poste »).
- [ ] Nouveau plan distinct, compartiments par défaut utilisés (sprints natifs non présumés), réouverture vérifiée.
- [ ] Aucune fonction absente annoncée comme native ; chat général de Copilot, Planner Agent et plan de base partagé distingués.
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
- [ ] CA 90 000, coût 63 000, marge 27 000 Euro ; taux de marque 30 %.
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
- [ ] Mon registre IA contient IA-01 à IA-12, chacune avec contrôle et décision.
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
| Remaining Work / Travail restant | Champ natif de l’outil d’origine, distinct de Nombre3 (Reste estimé h) tenu dans Excel |
| Burndown | Représentation du travail restant dans le temps ; pratique optionnelle |
| Velocity / Vélocité | Mesure locale de quantité finie par Sprint, si utilisée ; pas productivité individuelle |
| Outcome / Résultat | Effet observé pour les utilisateurs ou l’organisation |
| Output / Production | Fonction ou élément produit ; ne prouve pas la valeur obtenue |
| Board / Tableau | Représentation visuelle du travail, non substitut aux interactions |
| Baseline / Référence de planification | Repère de l’outil d’origine ; pas un artefact obligatoire Scrum |

Les définitions Scrum s’appuient sur [S3]. Les techniques et termes d’outil ne constituent pas des éléments supplémentaires du cadre.

### Termes Planner ajoutés

| Terme | Définition |
|---|---|
| Plan / Plan | Ensemble des tâches d’un projet dans Planner |
| Compartiment / Bucket | Colonne qui regroupe des tâches ; représente un Sprint ou le Backlog dans ce TP |
| Étiquette / Label | Marque colorée sur une tâche |
| Liste de contrôle / Checklist | Cases à cocher dans une tâche ; une case par critère |
| Élément de liste de contrôle / Checklist item | Case détaillée d’une liste de contrôle (les sous-tâches ne sont pas disponibles dans un plan de base, à vérifier) |
| Progression / Progress | Avancement de la tâche ; ne vaut pas Done |
| Planner Agent | Agent de Copilot qui crée ou modifie des tâches par cartes à approuver |
| Objectif / Goal | Objectif d’un plan (à vérifier sur votre poste) |

## Annexe G — Liens PSPO I

Ces liens sont optionnels. Ils relient chaque étape à une notion de la préparation PSPO I, qui reste un document indépendant. Les références [S3] et [S4] renvoient aux sources de l’[Annexe H](#annexe-h--sources-et-limites-du-support).

| Étape | Lien avec la préparation PSPO I |
|---|---|
| 0. Prise en main de Planner | Aucun outil particulier n’est prescrit par Scrum. [S3] |
| 1. Créer le plan | Aucun outil particulier n’est prescrit par Scrum. [S3] |
| 2. Définir le produit | Product Goal, valeur et collaboration avec les parties prenantes. [S3, S4] |
| 3. Construire le backlog | Redevabilité du PO sur le backlog, dimensionnement par les Developers et affinement collaboratif. [S3] |
| 4. Organiser le backlog dans Planner | Transparence et compréhension priment sur le respect d’un formulaire. [S3] |
| 5. Configurer les sprints | Prévisions empiriques, capacité et sélection par les Developers en discussion avec le PO. [S3] |
| 6. Sprint Planning | Autogestion, responsabilités et engagement associé au Sprint Backlog. [S3] |
| 7. Travail quotidien | Daily Scrum, transparence des obstacles et adaptation par les Developers. [S3] |
| 8. Visualisation | Limites des métriques de production et prévision empirique. [S3, S4] |
| 9. Changement de priorité | Autorité du PO sur ordre et annulation ; limites sur le plan des Developers. [S3] |
| 10. Review et Retrospective | Finalité des événements et collaboration avec les parties prenantes. [S3] |
| 11. Increment et DoD | DoD, engagement de l’Increment, standards organisationnels minimaux et travail non terminé. [S3] |
| 12. Inspection sur trois sprints | Prévision, livraison, valeur observée et adaptation du Product Backlog. [S3, S4] |

Sources de référence pour ces liens :

- [S3] Scrum Guides — [Scrum Guide français, novembre 2020](https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-French.pdf) ; [versions et traductions](https://scrumguides.org/download.html) ; [ressource Scrum.org](https://www.scrum.org/resources/scrum-guide).
- [S4] Scrum.org — [Certification Professional Scrum Product Owner I](https://www.scrum.org/assessments/professional-scrum-product-owner-i-certification). Périmètre et modalités de certification, ressources et évaluations de préparation.

## Annexe H — Sources et limites du support

### Limites du support source

L’assistant IA ne dispose d’aucun accès implicite à votre plan Planner (hors Planner Agent) et ne certifie ni qualité ni valeur. Aucun script ou développement n’est requis. Pas de test exécuté sur votre poste ; pas de capture inventée ; pas de sprint natif présumé ; pas de burndown Story Points présumé ; pas d’historique déduit automatiquement du champ Nombre3 ; pas de synchronisation entre Excel et Planner promise. Les conventions de capacité et d’estimation ne sont pas des règles universelles Scrum.

### Limites de la version Planner

- Aucune exécution sur votre poste n’est revendiquée : chaque chemin de menu et chaque capacité est à vérifier.
- Les capacités du Planner Agent viennent de la documentation Microsoft [S14, S15] ; les deux pages ne coïncident pas sur la liste des champs modifiables.
- Selon [S11], les sprints natifs, les sous-tâches et les objectifs ne sont pas disponibles dans un plan de base (à vérifier) ; ce TP utilise des compartiments et des éléments de liste de contrôle.
- Aucun historique quotidien, burndown ni champ d’heures restantes n’est supposé dans Planner : ils sont dans Excel.
- La qualité maximale des prompts est attendue en anglais ; le TP les fournit en français (tester d’abord en français).

### Sources officielles

Sources S1 à S9 : reprises du TP source (consultées le 22 octobre 2026 par son auteur) ; non rouvertes lors de cette adaptation. Elles concernent surtout l’outil d’origine et ne servent plus que de références.

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

Pages Microsoft ouvertes le 26 octobre 2026 pour cette adaptation (S11 à S15). Leur contenu reste à vérifier sur votre poste.

- [S11] Microsoft Support — [Fonctionnalités avancées des plans Premium dans Planner](https://support.microsoft.com/en-us/planner/teams/advanced-capabilities-with-premium-plans-in-planner).
- [S12] Microsoft Support — [Créer un plan avec Copilot dans Planner (aperçu)](https://support.microsoft.com/en-us/planner/copilot/create-a-new-plan-with-copilot-in-planner-preview).
- [S13] Microsoft Support — [Créer des tâches avec Copilot dans Planner (aperçu)](https://support.microsoft.com/en-us/planner/copilot/create-new-tasks-with-copilot-in-planner-preview).
- [S14] Microsoft Support — [Questions fréquentes et limites du Planner Agent](https://support.microsoft.com/en-US/Planner/planner-agent-limitation).
- [S15] Microsoft Support — [Que pouvez-vous faire avec le Planner Agent dans Copilot ?](https://support.microsoft.com/en-us/planner/what-can-you-do-with-planner-agent-in-copilot).

## Annexe I — Traçabilité et contrôles

Cette annexe prouve qu’aucun contenu conservé du TP source n’a disparu et consigne les décisions de cette version.

### I.1 Correspondance section du source → nouvel emplacement

| Section du source | Nouvel emplacement |
|---|---|
| Titre, public, durée, mention « fictif » | 0A › Objectif et résultat final |
| Objectifs pédagogiques (7) | 0A › Objectifs pédagogiques (objectifs 5 et 6 adaptés) |
| Prérequis et consignes | 0A › Prérequis (adaptés à Planner) |
| Contrôle pratique du poste | Contrôle du poste (25 min) |
| Repères d’interface (outil d’origine) | Annexe C.8 (pour mémoire) ; repères Planner dans Contrôle du poste |
| Fil conducteur, cycle en 6 points | 0A › Cycle IA en 6 temps |
| Configuration de l’IA et confidentialité | 0A › Confidentialité |
| Prompt de cadrage | Annexe A (adapté à Planner) |
| Comment utiliser les données de référence | 0A › Comment lire ce TP › Utiliser les données de référence |
| Registre IA obligatoire | Annexe B |
| Deux demandes de relance | Annexe A |
| Programme | 0B › Programme et durées (quatre demi-journées) |
| Scénario métier et acteurs | 0B |
| Données BI de référence | Annexe C.1 |
| Étapes 2 à 13 du TP source (IA-02 à IA-13) | Étapes 1 à 12 (IA-01 à IA-12), Parties 2 à 4 |
| Étape 1 du TP source (IA-01) | Supprimée volontairement (voir I.4) |
| Fiches US01 à US12, principes d’ordonnancement | Étape 3, rubrique 7 ; Annexe C.4 |
| US13 | Étape 9, rubrique 7 ; Annexe C.4 |
| Suivi J0–J10 | Étape 7, rubrique 7 ; Annexe C.5 (à tenir dans Excel) |
| DoD (10 points) | Étape 11, rubrique 7 ; Annexe C.6 |
| Dossier participant, auto-contrôle IA | Annexe E |
| Registres participant (7) | Annexe B |
| Checklist finale | Annexe E |
| Limites du support | Annexe H |
| Glossaire | Annexe F |
| Sources S1 à S9 | Annexe H (reprises du TP source) ; S11 à S15 ajoutées |
| Liens PSPO I (12 étapes) | Rubrique 11 de chaque étape ; Annexe G |
| Défauts à rejeter, erreurs fréquentes, questions | Rubriques 9 et 11 de chaque étape |
| « Trace IA supplémentaire… » | Rubrique 8 de chaque étape |

### I.2 Contrôle des valeurs de référence

| Élément du source | Présent | Emplacement |
|---|---|---|
| CA cumul 90 000 Euro | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Coût d’achat cumul 63 000 Euro | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Marge cumul 27 000 Euro | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Taux de marque 30 % | oui | Annexe C — Données de référence › C.1 Données BI de référence |
| 47 points (backlog initial) | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| 50 points (après US13) | oui | Partie 4 — S’adapter et inspecter › Étape 9 — Simuler un changement de priorité en cours de sprint |
| Capacité PBI 72 h | oui | Partie 3 — Vivre un Sprint › Étape 5 — Planifier les sprints |
| 52 h (Sprint 1) | oui | Partie 3 — Vivre un Sprint › Étape 5 — Planifier les sprints |
| 48 h à J3 | oui | Partie 3 — Vivre un Sprint › Étape 7 — Gérer le Sprint Backlog et le travail quotidien |
| 42 h à J4 | oui | Partie 3 — Vivre un Sprint › Étape 7 — Gérer le Sprint Backlog et le travail quotidien |
| 31 h à J5 | oui | Partie 3 — Vivre un Sprint › Étape 7 — Gérer le Sprint Backlog et le travail quotidien |
| 13 points Done en S1 | oui | Partie 3 — Vivre un Sprint › Étape 7 — Gérer le Sprint Backlog et le travail quotidien |
| S2 : 8 Done, US06 non conforme | oui | Partie 4 — S’adapter et inspecter › Étape 12 — Gérer plusieurs sprints et inspecter les résultats |
| 34 Done uniques | oui | Partie 4 — S’adapter et inspecter › Étape 12 — Gérer plusieurs sprints et inspecter les résultats |
| 16 restants | oui | Partie 4 — S’adapter et inspecter › Étape 12 — Gérer plusieurs sprints et inspecter les résultats |
| Moyenne 14 min (S3) | oui | Partie 4 — S’adapter et inspecter › Étape 12 — Gérer plusieurs sprints et inspecter les résultats |
| Taux 83,33 % (global) | oui | Partie 4 — S’adapter et inspecter › Étape 9 — Simuler un changement de priorité en cours de sprint |
| Sprint 3 au 30/11 | oui | Partie 3 — Vivre un Sprint › Étape 5 — Planifier les sprints |
| Dernier jour ouvré S1 : 13/11 | oui | Partie 3 — Vivre un Sprint › Étape 5 — Planifier les sprints |
| J1 = 02/11, J5 = 06/11, J6 = 09/11, J10 = 13/11 | oui | Partie 3 — Vivre un Sprint › Étape 7 — Gérer le Sprint Backlog et le travail quotidien |
| Prompt RELANCE DE CONTRÔLE | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Prompt RELANCE APRÈS SAISIE | oui | Annexe A — Prompts : index, cadrage et relances › Relance après saisie |
| IA-12 PASSE 2 | oui | Partie 4 — S’adapter et inspecter › Étape 12 — Gérer plusieurs sprints et inspecter les résultats |
| Règle d’or | oui | 0A — Avant de commencer › Objectif et résultat final |
| DoD point 10 | oui | Partie 4 — S’adapter et inspecter › Étape 11 — Comprendre l’Increment et la Definition of Done |
| US13 (fiche) | oui | Partie 4 — S’adapter et inspecter › Étape 9 — Simuler un changement de priorité en cours de sprint |
| Texte1 (ID PBI) | oui | Partie 2 — Préparer le produit › Étape 4 — Organiser le Product Backlog dans Planner |
| Texte2 (Obstacle) | oui | Partie 2 — Préparer le produit › Étape 4 — Organiser le Product Backlog dans Planner |
| Texte3 (Résultat DoD) | oui | Partie 2 — Préparer le produit › Étape 4 — Organiser le Product Backlog dans Planner |
| Texte4 (Référence IA) | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Texte5 (Décision IA) | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Nombre1 (Points) | oui | Partie 2 — Préparer le produit › Étape 4 — Organiser le Product Backlog dans Planner |
| Nombre2 (Ordre backlog) | oui | Partie 2 — Préparer le produit › Étape 4 — Organiser le Product Backlog dans Planner |
| Nombre3 (Reste estimé h) | oui | 0A — Avant de commencer › Comment lire ce TP |
| Trace IA-01 | oui | Partie 2 — Préparer le produit › Étape 1 — Créer le plan Scrum dans Microsoft Planner |
| Trace IA-02 | oui | Partie 2 — Préparer le produit › Étape 2 — Définir le produit et son objectif |
| Trace IA-03 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Trace IA-04 | oui | Partie 2 — Préparer le produit › Étape 4 — Organiser le Product Backlog dans Planner |
| Trace IA-05 | oui | Partie 3 — Vivre un Sprint › Étape 5 — Planifier les sprints |
| Trace IA-06 | oui | Partie 3 — Vivre un Sprint › Étape 6 — Réaliser la Sprint Planning |
| Trace IA-07 | oui | Partie 3 — Vivre un Sprint › Étape 7 — Gérer le Sprint Backlog et le travail quotidien |
| Trace IA-08 | oui | Partie 3 — Vivre un Sprint › Étape 8 — Suivre et visualiser l’avancement |
| Trace IA-09 | oui | Partie 4 — S’adapter et inspecter › Étape 9 — Simuler un changement de priorité en cours de sprint |
| Trace IA-10 | oui | Partie 4 — S’adapter et inspecter › Étape 10 — Organiser la Sprint Review et la Sprint Retrospective |
| Trace IA-11 | oui | Partie 4 — S’adapter et inspecter › Étape 11 — Comprendre l’Increment et la Definition of Done |
| Trace IA-12 | oui | Partie 4 — S’adapter et inspecter › Étape 12 — Gérer plusieurs sprints et inspecter les résultats |
| Fiche US01 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US02 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US03 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US04 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US05 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US06 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US07 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US08 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US09 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US10 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US11 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |
| Fiche US12 | oui | Partie 2 — Préparer le produit › Étape 3 — Construire le Product Backlog |

### I.3 Modifications et décisions

- **Devise :** devise Euro au lieu de TND du TP source (choix de l’auteur de la version Planner). Montants inchangés : 90 000 Euro, 63 000 Euro, 27 000 Euro.
- **Étape supprimée :** l’ancienne étape 1 « Comprendre le passage du prédictif à Scrum » (IA-01), avec son tableau TP1/TP2, sa proposition défectueuse, ses questions, son lien PSPO I et son dépannage, est retirée volontairement. Elle existe dans le TP Project d’origine. Les étapes et les traces IA sont renumérotées (I.4). L’objectif « distinguer approche prédictive et empirique » est retiré de la phrase d’ouverture de 0A.
- **Décision structurante :** le Planner Agent est l’entrée d’IA pour toutes les actions dans Planner, et Copilot (chat général) sert à analyser et rédiger. L’entrée « Copilot dans le plan » est supprimée.
- **Plan Premium écarté :** l’agent ne prend pas en charge les plans Premium et ne voit que les plans de base partagés récemment ouverts [S14]. Planner Premium n’est plus un prérequis ; la licence requise est Microsoft 365 Copilot. Les sprints natifs, sous-tâches et objectifs sont des fonctions Premium [S11] : remplacés par des compartiments, des éléments de liste de contrôle et la description du plan.
- **Limites de l’agent :** il ne modifie pas les étiquettes, listes de contrôle, affectations, pièces jointes ni notes de tâches existantes, et ne supprime ni n’annule : ces actions restent manuelles. Les pages S14 et S15 divergent sur la liste des champs modifiables : à vérifier à l’étape 0.
- **Rubrique agent :** chaque étape contient, dans la rubrique 4, le bloc « Ce que l’agent fait / ce que je fais à la main » et des prompts courts, un par action, « un ordre à la fois ». Étapes 3 et 4 : US01 seule en test, puis US02 à US12 par lots de 3 à 4 tâches. Étapes 6 et 12 : l’agent exécute les déplacements après décision humaine (à tester, repli manuel). L’agent ne reçoit jamais le Sprint Goal, la sélection du Sprint ni le statut Done.
- **Repli unique :** si l’agent échoue, saisie manuelle. Les replis « Copilot dans le plan » des anciennes étapes 8 et 13 sont supprimés.
- **Sous-tâches :** T-US01-n deviennent des éléments de liste de contrôle, saisis à la main (sous-tâches non disponibles dans un plan de base, à vérifier). Mises à jour : table de correspondance (C.2) et alias (C.3).
- **Objectifs :** fonction à vérifier ; repli = Product Goal et Sprint Goals dans la description du plan et le registre Excel.
- **Durées :** valeurs de la consigne C appliquées (étape 0 = 90 min, total 870 min, 14 h 30) ; la consigne +10 min / −10 min est ignorée. Total d’origine des étapes retenues : 400 min (25 + 375), soit 6 h 40, contre 7 h.
- **Bloc « Après création » :** liste complète conservée une seule fois en 0A ; chaque étape garde seulement « Attendu à cette étape » si du contenu est créé. L’attendu de l’étape 3 est 1 tâche (US01) ; les 12 tâches sont attendues à l’étape 4.
- **Prompts adaptés à Planner (nouvelle numérotation) :** prompt de cadrage, relance après saisie, IA-01 (mention d’un planning prédictif retirée), IA-04, IA-05, IA-07, IA-08. Les autres sont mot pour mot, dont IA-06 et IA-12.
- **Étape 0 :** le plan d’essai est un plan de base partagé ouvert récemment ; test de l’agent (créer un plan, une tâche, modifier la progression, ajouter un compartiment, puis refus attendu pour étiquette et liste de contrôle) ; test facultatif sur un plan Premium (refus attendu).
- **Sources :** S11 à S15 ouvertes le 26 octobre 2026 ; S1 à S9 reprises du TP source, non rouvertes. Le contenu de toutes reste à vérifier sur votre poste.
- **Excel joint :** supprimer la ligne IA-01 et décaler les références (Annexe B).
- **Autres :** archives `_01b_Fin_S1` et `_03_Fin_S3` proposées (absentes du TP source) ; précision ajoutée sur les dates de Sprint (15/11, 29/11, 13/12 tombent un dimanche ; dernier jour ouvré du Sprint 1 : 13/11) ; faute « Verifier » corrigée.

### I.4 Table ancien → nouveau numéro

| Ancien numéro (TP source) | Nouveau numéro (version Planner) | Trace IA |
|---|---|---|
| Étape 0 (ajout Planner) | Étape 0 | – |
| Étape 1 — Comprendre le passage du prédictif à Scrum | **Supprimée** | IA-01 retirée |
| Étape 2 — Créer le plan | Étape 1 | IA-01 (ancienne IA-02) |
| Étape 3 — Définir le produit | Étape 2 | IA-02 (ancienne IA-03) |
| Étape 4 — Construire le backlog | Étape 3 | IA-03 (ancienne IA-04) |
| Étape 5 — Organiser le backlog dans Planner | Étape 4 | IA-04 (ancienne IA-05) |
| Étape 6 — Configurer les sprints | Étape 5 | IA-05 (ancienne IA-06) |
| Étape 7 — Sprint Planning | Étape 6 | IA-06 (ancienne IA-07) |
| Étape 8 — Travail quotidien | Étape 7 | IA-07 (ancienne IA-08) |
| Étape 9 — Visualisation | Étape 8 | IA-08 (ancienne IA-09) |
| Étape 10 — Changement de priorité | Étape 9 | IA-09 (ancienne IA-10) |
| Étape 11 — Review et Retrospective | Étape 10 | IA-10 (ancienne IA-11) |
| Étape 12 — Increment et DoD | Étape 11 | IA-11 (ancienne IA-12) |
| Étape 13 — Inspection sur trois sprints | Étape 12 | IA-12 (ancienne IA-13) |

L’étape retirée existe dans le TP Project d’origine.
