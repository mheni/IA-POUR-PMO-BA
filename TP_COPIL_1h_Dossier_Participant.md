# TP — Construire un COPIL de projet avec M365 Copilot en 1 heure

Dossier participant — Cas NOVALIS BI — Version octobre 2026

## 1. Présentation du TP

Votre mission : préparer le COPIL mensuel d’un projet BI en cours, à partir d’un instantané de données arrêté au 30 septembre 2026. Vous produisez exactement dix slides, des calculs vérifiés et des recommandations permettant au sponsor de décider.

Chaîne de travail : Données projet → Analyse → KPI → Interprétation → Décisions → COPIL → Actions.

Le support n’est pas un rapport exhaustif. Chaque slide doit donner une information utile à une décision, sans masquer les incertitudes. Copilot accélère la préparation ; le PMO/BA reste responsable des données, des calculs, des messages et des propositions soumises au comité.

Durée impérative : 120 minutes, hors préparation technique et débriefing collectif. Travail individuel ou binôme ; dans un binôme, un participant produit et l’autre vérifie, puis ils inversent au moment de la présentation.

### Documents remis

- Ce dossier Markdown.
- Un classeur Excel participant avec les sources, des tables structurées et des zones KPI/Synthese/Journal_IA à compléter.
- Une trame PowerPoint de dix slides, à utiliser comme support ou comme secours si la génération ajoute des slides.
- Un guide formateur distinct contenant les résultats numériques et le contenu corrigé des slides ; il ne doit pas être distribué avant la remise.

Le scénario utilise la même entreprise fictive que le TP de planification, mais constitue un instantané pédagogique autonome. Ses dates, budgets et charges ne sont pas déduits du précédent planning.

## 2. Public cible

PMO, Business Analysts, chefs de projet, coordinateurs, consultants en transformation et professionnels du reporting. Connaissance élémentaire du pilotage de projet ; aucune expertise préalable en Earned Value Management nécessaire.

Rôle PMO : données cohérentes, écarts calculés, messages comparables, actions et décisions tracées. Rôle BA : critères métier, réalité des validations, risques sur les KPI, conséquences du changement de périmètre et disponibilité des utilisateurs.

## 3. Objectifs pédagogiques

À la fin de l’heure, vous devez pouvoir :

- Identifier les écarts de valeur réalisée, de coût, de calendrier et de qualité sans les confondre.
- Calculer PV, EV, AC, SV, CV, SPI et CPI sur une date d’état commune.
- rappel:<img width="526" height="535" alt="image" src="https://github.com/user-attachments/assets/c066c99c-efdd-4761-a15b-0d6693dbe575" />

- Interpréter les ratios et leurs limites, puis proposer des actions et des décisions.
- Utiliser Copilot Excel pour analyser et vérifier, puis Copilot PowerPoint pour créer et améliorer un support exécutif.
- Conserver les distinctions fait / prévision / recommandation / décision approuvée.
- Livrer exactement dix slides, avec des chiffres cohérents et trois messages prioritaires.
- Expliquer au moins deux vérifications humaines réalisées sur une production de l’IA.

## 4. Contexte du projet BI

NOVALIS Distribution veut consolider ses données commerciales et financières pour les managers de douze agences. Le pilote comprend trois dashboards : ventes, marge et objectifs. Les données proviennent d’un ERP, d’un CRM et des fichiers d’objectifs.

Le projet a débuté le 1er juin 2026. Sa clôture de référence est fixée au 31 décembre 2026. Le budget de référence approuvé est de 400 000 €, hors demande de changement et renforts non approuvés.

Le COPIL est organisé le 7 octobre 2026, sur les données cumulées au 30 septembre 2026. Le prochain COPIL est prévu le 4 novembre 2026. Le chef de projet est représenté par le rôle « Chef de projet BI » ; aucune identité réelle n’est utilisée.

Le sponsor attend une réponse à quatre questions : que reste-t-il réellement à faire, quels engagements sont menacés, quelles actions sont prioritaires et quelles décisions doit-il prendre aujourd’hui ?

Le budget initial ne peut pas être modifié dans le reporting par simple hypothèse. Les options de renfort et de changement restent des propositions tant qu’elles ne sont pas approuvées.

## 5. Jeu de données fourni

### 5.1 Règles de lecture

- Date d’état unique : 30/09/2026. La date du COPIL ne met pas les données à jour automatiquement.
- Montants cumulés en euros, même périmètre de coûts et même base de référence.
- L’avancement validé représente une réalisation physique acceptée, pas une auto-déclaration ni du budget dépensé.
- PV du lot = budget du lot × avancement planifié à la date d’état.
- EV du lot = budget du lot × avancement physique validé à la date d’état.
- AC correspond aux coûts constatés, y compris les charges à payer prises en compte au 30/09, et pas seulement aux factures réglées.
- Les proportions planifiées/validées fournies sont issues d’un système de mesure pondéré par livrables. Elles ne sont pas recalculées à partir du seul nombre de dashboards.
- Les données sont fictives. Les estimations de renfort et de changement ne constituent pas une prévision financière complète.

### 5.2 Lots et valeur projet

| Code | Lot | Budget de référence (€) | Planifié | Validé | AC (€) | PV (€) | EV (€) |
| --- | --- | --- | --- | --- | --- | --- | --- |
| L1 | Initialisation | 20000 | 100% | 100% | 22000 | 20000 | 20000 |
| L2 | Analyse et spécifications | 60000 | 100% | 100% | 62000 | 60000 | 60000 |
| L3 | Conception | 60000 | 100% | 75% | 51000 | 60000 | 45000 |
| L4 | Réalisation | 140000 | 70% | 50% | 100000 | 98000 | 70000 |
| L5 | Tests et recette | 60000 | 20% | 10% | 10000 | 12000 | 6000 |
| L6 | Déploiement et accompagnement | 40000 | 0% | 0% | 0 | 0 | 0 |
| L7 | Clôture et transfert final | 20000 | 0% | 0% | 0 | 0 | 0 |


Tâche : vérifier les PV/EV de deux lots, calculer les totaux, puis obtenir les KPI de l’onglet KPI. Ne pas utiliser la moyenne simple des pourcentages de lots.

### 5.3 Historique cumulé

| Date d’état | PV cumulée (€) | EV cumulée (€) | AC cumulé (€) |
| --- | ---: | ---: | ---: |
| 31/07/2026 | 100 000 | 95 000 | 105 000 |
| 31/08/2026 | 180 000 | 160 000 | 184 000 |
| 30/09/2026 | 250 000 | 201 000 | 245 000 |

Ces lignes sont trois instantanés cumulés. Ne pas les additionner pour obtenir un total. Pour comparer les tendances, calculer les ratios de chaque date ; ne pas annoncer une tendance sur un seul point.

### 5.4 Jalons

| Jalon | Référence | Réel au 30/09 | Prévision au 30/09 |
| --- | --- | --- | --- |
| Projet lancé | 2026-06-12 | 2026-06-12 | — |
| Spécifications validées | 2026-07-24 | 2026-07-31 | — |
| Conception validée | 2026-09-11 | Non réalisé | 2026-10-09 |
| Version prête pour tests | 2026-10-23 | Non réalisé | 2026-11-06 |
| Recette validée | 2026-11-27 | Non réalisé | 2026-12-11 |
| Mise en production | 2026-12-11 | Non réalisé | 2026-12-22 |
| Projet clôturé | 2026-12-31 | Non réalisé | 2027-01-15 |


La colonne Prévision est une estimation communiquée au 30/09, non un résultat réel ni une date contractualisée. À cette date, la conception n’est pas validée. Une date future au 30/09 ne peut pas figurer comme réalisation dans cet instantané.

Le réseau de dépendances à confirmer par l’équipe est : validation conception → finalisation flux et intégration → tests → recette → déploiement. Aucune conversion automatique du SPI en nombre de jours de retard n’est admise.

### 5.5 Qualité et périmètre

- Trois dashboards sont dans le périmètre ; un seul est validé métier et deux sont en construction.
- Vingt-huit anomalies ont été recensées ; dix sont corrigées et dix-huit restent ouvertes.
- Les anomalies ouvertes comprennent deux bloquantes, cinq majeures, huit moyennes et trois mineures.
- Quarante tests sont exécutés sur soixante prévus pour la campagne : vingt-huit réussis, douze échoués, vingt non exécutés.
- Sept cents clients sur dix mille n’ont pas de correspondance ERP/CRM dans l’échantillon analysé. Ne pas extrapoler une perte de chiffre d’affaires.
- CR01 propose d’ajouter un dashboard de stocks : estimation indicative +35 000 € et +3 semaines, non approuvée et hors référence.

Le pourcentage de tests réussis doit nommer son dénominateur : réussis parmi exécutés ou réussis parmi prévus. Un test et une anomalie ne sont pas la même unité.

### 5.6 Risques et problèmes

| Code | Risque | P | I | Impact | Réponse | Responsable | Échéance |
| --- | --- | --- | --- | --- | --- | --- | --- |
| R1 | Disponibilité métier insuffisante pour recette | 4 | 4 | Fenêtre de recette décalée | Bloquer des créneaux et suppléants | Responsable métier | 2026-10-09 |
| R2 | Rapprochement client ERP/CRM non stabilisé | 4 | 5 | Reprises de flux et KPI non fiables | Valider règles de mapping puis retester | Data Lead | 2026-10-09 |
| R3 | Fenêtre de déploiement de décembre contrainte | 3 | 5 | Décalage go-live ou exploitation fragile | Confirmer fenêtre et retour arrière | Responsable IT | 2026-10-09 |


Convention pédagogique : criticité = probabilité × impact sur une échelle 1–5 ; 1–4 faible, 5–9 modérée, 10–15 élevée, 16–25 critique. Ce produit sert à prioriser, pas à estimer un coût en euros. Ne pas donner une probabilité à un événement déjà constaté.

| Code | Problème avéré | Dimension | Cause / fait | Responsable | Échéance | Statut |
| --- | --- | --- | --- | --- | --- | --- |
| P1 | 700 clients sur 10000 sans correspondance ERP/CRM | Qualité des données | Règles de mapping non approuvées | BA + Data Lead | 2026-10-09 | Ouvert |
| P2 | Deux anomalies bloquantes de rapprochement KPI | Qualité | Tests métier concernés non acceptables | BI Lead | 2026-10-16 | Ouvert |
| P3 | Seulement 2 experts métier sur 4 confirmés pour recette | Disponibilité | Calendrier de validation non sécurisé | Responsable métier | 2026-10-09 | Ouvert |


### 5.7 Actions disponibles

| Code | Action | Responsable | Échéance | Priorité | Statut | Preuve |
| --- | --- | --- | --- | --- | --- | --- |
| A1 | Faire approuver les règles de rapprochement | BA | 2026-10-09 | P1 | En cours | Dictionnaire signé |
| A2 | Corriger les deux anomalies bloquantes et retester | BI Lead | 2026-10-16 | P1 | À faire | PV retests sans bloquant |
| A3 | Confirmer quatre experts et leurs créneaux | Responsable métier | 2026-10-09 | P1 | En cours | Créneaux acceptés |
| A4 | Recalculer planning et reste à faire par lot | PMO + Chef de projet | 2026-10-12 | P1 | À faire | Prévision argumentée |
| A5 | Confirmer la fenêtre et le retour arrière | Responsable IT | 2026-10-09 | P2 | À faire | Plan approuvé |


Les priorités P1/P2 ci-dessus sont des conventions du cas : P1 urgent pour préserver les gates, P2 important à sécuriser. Les échéances représentent les engagements proposés ; aucune action n’est annoncée terminée sans preuve.

### 5.8 Décisions à préparer

| Code | Demande | Options | Recommandation à challenger | Décideur | Date | Statut |
| --- | --- | --- | --- | --- | --- | --- |
| D1 | Renfort temporaire ciblé | Sans renfort / renfort borné à 28000 EUR | Conditionner le renfort à un plan de rattrapage et un RAF | Sponsor | 2026-10-07 | Proposé, non approuvé |
| D2 | Demande de changement CR01 : dashboard stocks | Inclure maintenant / reporter en lot 2 | Reporter hors du pilote commercial | Sponsor + métier | 2026-10-07 | Proposé, non approuvé |
| D3 | Disponibilité de recette et fenêtre go-live | Maintien sous conditions / nouveau jalon approuvé | Garantir les experts et demander replanification vérifiée | Sponsor + métier + IT | 2026-10-07 | Proposé, non approuvé |


Renfort envisagé pour D1 : 20 jours de Data Engineer à 850 €/jour, 10 jours de BA à 700 €/jour et 5 jours de QA à 800 €/jour. C’est une enveloppe temporaire de 28 000 €, non approuvée. Sa mobilisation doit être conditionnée à un plan détaillé de traitement des causes et à un reste à faire actualisé. Aucune durée de rattrapage n’est garantie.

D2 concerne le périmètre ; D3 concerne les conditions de recette et les dates. Ne pas présenter D1 comme un financement suffisant du projet jusqu’à sa fin, ni additionner automatiquement renfort et extrapolation CPI.

### 5.9 Zones de travail du classeur

| Onglet | Statut | Travail attendu |
| --- | --- | --- |
| Lisez_moi, Lots, Historique, Jalons | Sources | Lire, vérifier et ne pas écraser |
| Risques, Problemes, Actions, Decisions, Qualite | Sources | Sélectionner les éléments utiles au COPIL |
| KPI | À compléter | Résultats/formules et interprétations vérifiées |
| Synthese | À compléter | Trois messages, alertes, actions et décisions |
| Journal_IA | À compléter | Adaptation de prompt, contrôle et correction |

## 6. Notions SPI / CPI

### Définitions utiles

| Notion | Définition | Unité |
| --- | --- | --- |
| BAC | Budget approuvé du périmètre à terminaison | € |
| PV | Valeur budgétée du travail qui devait être réalisé à la date d’état | € |
| EV | Valeur budgétée du travail réellement réalisé et validé à la date d’état | € |
| AC | Coût réel de ce travail à la date d’état | € |
| SV | EV − PV : écart de réalisation exprimé en valeur | € |
| CV | EV − AC : écart de coût par rapport à la valeur acquise | € |
| SPI | EV / PV : performance de réalisation par rapport au plan | Sans unité |
| CPI | EV / AC : performance de coût par rapport à la valeur acquise | Sans unité |

Ces formules comparent la même date et le même périmètre. PV et EV sont des valeurs budgétées, pas des factures. Le SPI classique et le SV monétaire ne donnent pas directement une date de fin. [Microsoft et PMI sont cités au fil du dossier ; pour les définitions EVM, voir la ressource PMI](https://www.pmi.org/learning/library/practical-calculation-schedule-variance-7028).

### Interprétation générale — sans conclure sur votre cas

| Ratio | Supérieur à 1 | Égal à 1 | Inférieur à 1 |
| --- | --- | --- | --- |
| SPI | Plus de valeur réalisée que prévu à date | Réalisation conforme en valeur | Moins de valeur réalisée que prévu à date |
| CPI | Plus de valeur acquise que de coût engagé | Coût conforme à la valeur acquise | Moins de valeur acquise que de coût engagé |

Un SPI inférieur à 1 ne signifie pas automatiquement échec : il déclenche une investigation du chemin de réalisation, des jalons et des options. Un CPI inférieur à 1 ne justifie pas automatiquement une augmentation du budget : il faut analyser causes, reste à faire, périmètre et arbitrages.

Si PV ou AC est nul, ne pas calculer un ratio infini ou afficher artificiellement 1 : noter « non calculable » et expliquer.

### Formules Excel de contrôle

Saisir les formules dans KPI, en conservant les lignes de l’onglet fourni. Adapter les noms des fonctions à la langue d’Excel. Dans Excel français, utiliser SOMME ; dans une interface anglaise, SUM.

| Cellule | Indicateur | Formule à contrôler |
| --- | --- | --- |
| B2 | BAC | `=SOMME(Lots!C2:C8)` |
| B3 | PV | `=SOMME(Lots!G2:G8)` |
| B4 | EV | `=SOMME(Lots!H2:H8)` |
| B5 | AC | `=SOMME(Lots!F2:F8)` |
| B6 | SV | `=B4-B3` |
| B7 | CV | `=B4-B5` |
| B8 | SPI | `=B4/B3` si PV non nul |
| B9 | CPI | `=B4/B5` si AC non nul |
| B10 | Avancement planifié pondéré | `=B3/B2` |
| B11 | Avancement validé pondéré | `=B4/B2` |
| B12 | Part du budget consommée | `=B5/B2` |
| B13 | Écart en points de pourcentage | `=(B11-B10)*100` |

B10:B12 sont formatées en pourcentage ; B8:B9 en nombre avec trois décimales ; B13 en nombre, accompagné de « points ». Ne pas appliquer un format % à B13 puisque la formule multiplie déjà par 100.

Le budget non consommé BAC−AC n’est ni une marge disponible prouvée ni une garantie de financement du reste à faire. AC/BAC n’est pas un CPI.

## 7. Déroulement sur 60 minutes

| Minute | Activité | Résultat exigé |
| --- | --- | --- |
| 00–05 | Lecture du contexte et ouverture des fichiers | Date d’état, périmètre et destinataire identifiés |
| 05–15 | Atelier 1 : analyse des données | Faits, alertes candidates, questions |
| 15–25 | Atelier 2 : calcul et interprétation | KPI vérifiés, implications |
| 25–30 | Atelier 3 : synthèse exécutive | Brief validé et décisions formulées |
| 30–50 | Atelier 4 : génération des dix slides | Version PowerPoint complète |
| 50–55 | Contrôle croisé | Chiffres, dates, messages et compte des slides corrigés |
| 55–60 | Finalisation et remise | Quatre livrables enregistrés |

La phase de production Copilot couvre 25–50, soit 25 minutes. Le débriefing collectif est réalisé après la remise ; il n’est pas ajouté aux 60 minutes de production.

### Contrat de temps

Pas de recherche documentaire externe, pas de nouvelle réunion Teams, pas de flux Power Automate ni de design complexe. Un graphique comparatif PV/EV/AC peut suffire. Priorité aux chiffres et aux décisions plutôt qu’aux illustrations décoratives.

## 8. Atelier 1 — Analyse des données

### Objectif

Comprendre le jeu de données et repérer les informations pertinentes sans confondre faits et interprétations.

### Durée

10 minutes, de 05 à 15.

### Situation

Vous recevez un reporting détaillé destiné à l’équipe. Le sponsor n’en lira pas toutes les lignes.

### Consigne

Lire Lots, Jalons, Qualite, Risques et Problemes. Proposer trois alertes candidates, deux faits positifs et deux questions à confirmer. Donner une source et une date à chaque constat. Ne pas rédiger encore les slides.

### Prompt Copilot 1 — Analyse du projet

```text
Agis comme un PMO préparant un COPIL décisionnel du projet NOVALIS BI.
Analyse uniquement les données de ce classeur, date d’état 30/09/2026,
COPIL 07/10/2026. Utilise Lots, Historique, Jalons, Qualite, Risques,
Problemes, Actions et Decisions. N’ajoute pas de source externe.
Produis un tableau de sept lignes maximum : constat, donnée et source,
dimension (délai/coût/périmètre/qualité), impact potentiel, question ou action.
Distingue état général à confirmer, écarts, alertes, points positifs et critiques.
Sépare faits, prévisions, hypothèses et recommandations.
Ne confonds pas date réelle et prévision ; les lignes d’Historique sont cumulées.
Signale les informations manquantes avant d’affirmer une cause ou une date de fin.
```

### Action du participant

Ouvrir le classeur dans Excel avec le compte professionnel. Le placer dans l’espace OneDrive/SharePoint de formation et activer l’enregistrement automatique selon la configuration retenue par le formateur. Ouvrir Copilot et lancer le prompt. Les tables sont déjà structurées pour éviter la préparation des données pendant l’heure. Les capacités Excel disponibles doivent être testées avant la session. [Microsoft : démarrer avec Copilot Excel](https://support.microsoft.com/en-us/excel/copilot/get-started-with-copilot-in-excel).

Comparer chaque constat avec une cellule ou une ligne source. Saisir les alertes candidates dans Synthese. Inscrire une vérification dans Journal_IA.

### Résultat attendu

Un diagnostic provisoire étayé par les sources, pas une conclusion automatique de l’IA. Deux exemples de faits positifs possibles : cadrage terminé et spécifications validées. Toute conclusion de performance doit attendre les calculs.

### Contrôle

Copilot a-t-il considéré une date prévisionnelle comme réalisée ? A-t-il ajouté les trois mois cumulés ? A-t-il déclaré les trois dashboards terminés ? A-t-il imputé les coûts à une cause non documentée ?

### Livrable

Alertes candidates, faits positifs et questions à confirmer dans Synthese ; une trace dans Journal_IA.

## 9. Atelier 2 — Calcul et interprétation des KPI

### Objectif

Obtenir les indicateurs EVM et transformer leur signification en question ou action de pilotage.

### Durée

10 minutes, de 15 à 25.

### Situation

Le reporting budgétaire seul ne suffit pas : il faut rapprocher dépense, valeur réalisée et valeur attendue.

### Consigne

Complétez KPI avec BAC, PV, EV, AC, SV, CV, SPI, CPI et les trois proportions. Vérifiez deux PV/EV de lots à la main. Comparez les ratios de juillet, août et septembre. Pour SPI et CPI, écrire résultat, interprétation, conséquence potentielle et action recommandée.

### Prompt Copilot 2 — Analyse SPI/CPI

```text
À partir de Lots au 30/09/2026, vérifie PV_lot = BAC_lot × avancement_planifie
et EV_lot = BAC_lot × avancement_valide. Calcule les totaux BAC, PV, EV et AC.
Complète KPI avec des formules vérifiables : SV=EV-PV, CV=EV-AC,
SPI=EV/PV, CPI=EV/AC, proportions pondérées PV/BAC et EV/BAC, AC/BAC.
Vérifie les dénominateurs nuls et ne remplace pas les sources.
Interprète chaque ratio ; distingue conclusion démontrée et conséquence possible.
Ne traduis pas SV en jours, ne déduis pas la date finale de 1/SPI,
et ne confonds pas AC/BAC avec CPI.
Compare SPI/CPI aux trois dates d’Historique sans additionner les cumuls.
Propose trois actions correctives reliées aux causes documentées.
Si tu ne peux pas écrire dans les cellules, donne les formules et leurs cellules.
```

### Action du participant

Exécuter le prompt. Vérifier les formules proposées avant leur insertion. Si Copilot ne peut pas écrire dans cette configuration, les saisir directement à partir du tableau de contrôle. Formater ratios et montants ; conserver les calculs complets et arrondir seulement leur affichage.

Vérifier que `SPI × PV = EV` et `CPI × AC = EV`, avec les valeurs non arrondies. Valider que la somme des budgets atteint la référence annoncée. Utiliser les résultats pour confirmer ou réviser les alertes.

### Résultat attendu

Des calculs auditables et une interprétation différenciée : réalisation par rapport au plan, coût par rapport au réalisé et taux de consommation du budget sont trois lectures différentes.

### Contrôle

PV tirée de la dépense ? EV calculée à partir du budget consommé ? Moyenne simple des avancements ? Signe de CV inversé ? Ratio présenté comme un pourcentage de jours de retard ? Faire corriger avant PowerPoint.

### Livrable

KPI complété et commenté. Dans Synthese, une action pour le planning et une pour la performance de coût.

Question à préparer pour le débriefing : « Est-il pertinent de présenter uniquement SPI et CPI ? Quelles informations manquent pour décider ? »

## 10. Atelier 3 — Utilisation de M365 Copilot

### Objectif

Transformer les calculs et constats en brief exécutif orienté décision.

### Durée

5 minutes, de 25 à 30.

### Situation

Le sponsor a besoin de trois messages, pas de la totalité des feuilles Excel.

### Consigne

Produire une synthèse de 150 mots maximum, trois alertes, trois actions et trois décisions. Adapter le prompt à votre analyse en ajoutant au moins une précision de contrôle. Garder le détail chiffré dans Excel.

### Prompt Copilot 3 — Synthèse exécutive

```text
Transforme les données et KPI vérifiés ci-dessous en brief pour le Sponsor
et le COPIL du 07/10/2026, situation arrêtée au 30/09/2026.
[Coller les KPI validés, jalons, qualité et D1/D2/D3.]
Produis : synthèse de 150 mots maximum ; trois messages clés ;
trois alertes sourcées ; trois actions (rôle, date, preuve) ;
trois décisions demandées (options, recommandation, impact, condition).
Utilise un langage exécutif. Distingue proposition et accord obtenu.
Toute date future est une prévision. Ne garantis pas le rattrapage,
ne modifie pas BAC, n’invente pas une hausse de budget approuvée.
Si l’état global est coloré, précise la règle et les faits qui le justifient.
```

### Action du participant

Utiliser Copilot Excel pour la synthèse si l’interface permet cet échange. À défaut, copier uniquement les données validées dans le chat M365 Copilot autorisé. Reporter la synthèse et les listes dans Synthese ; aucune réunion ni outil supplémentaire n’est obligatoire.

Amélioration attendue du prompt : par exemple « Pour D1, préciser que 28 000 € est une enveloppe non approuvée et non une estimation du coût à terminaison ». Tracer cette adaptation.

### Résultat attendu

Un brief où chaque recommandation répond à un constat et chaque décision relève de l’autorité du comité.

### Contrôle

D1 formulée comme un accord déjà obtenu ? État vert simplement parce que le budget total n’est pas entièrement dépensé ? CR01 incluse dans BAC ? Actions sans propriétaire ?

### Livrable

Onglet Synthese validé et prompt enrichi dans Journal_IA.

## 11. Atelier 4 — Construction du COPIL

### Objectif

Générer puis adapter un PowerPoint de dix slides, cohérent avec les calculs et les décisions.

### Durée

20 minutes, de 30 à 50 ; contrôle 50–55 et remise 55–60 séparés.

### Situation

Une présentation générée automatiquement peut être convaincante visuellement tout en étant inexacte. Vous devez conserver la maîtrise du plan et du contenu.

### Consigne

Utilisez exclusivement le brief approuvé et les données vérifiées. Produisez exactement dix slides selon la section 12, avec des titres explicites, quelques chiffres clés et des décisions lisibles. Conserver les chiffres détaillés dans Excel ; pas d’annexe dans le deck remis.

### Prompt Copilot 4 — Génération PowerPoint

```text
Crée une présentation COPIL exécutive en français pour NOVALIS BI,
COPIL du 07/10/2026, données arrêtées au 30/09/2026.
Sources autorisées : le brief et les données validées ci-dessous / fichier joint.
[Coller le brief, les KPI, jalons sélectionnés, risques, qualité, actions et décisions.]
Génère exactement dix slides, sans slide supplémentaire ni annexe :
1 Page de garde ; 2 Executive Summary ; 3 Avancement du projet ;
4 Performance planning ; 5 Performance financière ; 6 Périmètre / Qualité ;
7 Risques et problèmes ; 8 Plan d’actions ; 9 Décisions attendues du COPIL ;
10 Conclusion / Next Steps.
Style professionnel, synthétique, orienté décision, adapté au Sponsor.
Utilise trois messages clés au maximum sur la slide 2.
Sur les slides 4/5, afficher les montants et SPI/CPI à trois décimales,
avec leur interprétation et une implication de management.
Les prévisions ne sont pas des réalisations. BAC reste la référence approuvée.
Les décisions D1/D2/D3 sont demandées, pas acquises.
Ne convertis pas SV en jours et ne garantis pas une date de rattrapage.
Plan d’actions : rôle, échéance, priorité et statut.
Conclusion : résultats attendus sous conditions et COPIL suivant au 04/11/2026.
N’invente aucun chiffre, fait, responsable, décision ou engagement.
Si une information manque, signale « À confirmer » au lieu de la créer.
```

### Action du participant

1. Ouvrir PowerPoint et Copilot avec le compte de formation. Selon l’interface, créer à partir d’un prompt, référencer un fichier autorisé ou travailler depuis la trame de dix slides. Les fonctions et commandes varient selon le déploiement. [Microsoft : créer une présentation avec Copilot](https://support.microsoft.com/en-us/powerpoint/copilot/create-a-new-presentation-with-copilot-in-powerpoint).
2. Fournir le contenu réellement accessible à Copilot. Écrire un nom de fichier sans le joindre ou le référencer ne prouve pas qu’il peut le consulter.
3. Demander l’outline, vérifier les dix rubriques et lancer la génération lorsqu’elles sont correctes.
4. Si la création à partir d’un brief Word est le mode testé par le formateur, utiliser le brief enregistré dans l’espace de formation ; ce chemin est optionnel et n’exige pas de rédaction Word pendant l’heure. [Microsoft : préparation et création à partir d’un fichier](https://support.microsoft.com/en-us/microsoft-365-copilot/prepare-your-presentation-with-microsoft-365-copilot).
5. Vérifier la vue Trieuse : exactement dix slides. Fusionner ou supprimer les slides supplémentaires ; une demande de dix slides n’est pas une garantie automatique.
6. Contrôler les KPI et les dates avant le design. Ajuster la formulation des titres et des recommandations.
7. Limiter les visuels à un comparatif PV/EV/AC et éventuellement un tableau de jalons ; éviter les illustrations sans valeur de décision.
8. À la minute 45, si la génération n’est pas utilisable, remplir la trame avec les formulations validées de Copilot. Ne pas passer les quinze dernières minutes à relancer une génération complète.

### Résultat attendu

Dix slides lisibles et cohérentes, avec une histoire : constat → cause documentée ou question → action → décision. Le comité doit comprendre ce qu’on lui demande d’autoriser.

### Contrôle

Même chiffre sur toutes les slides ? Même date d’état ? Référence et prévision identifiées ? Slide 9 formulée en décisions ? Ratio arrondi sans faux montant dérivé ? Douze slides générées ? Tableau illisible ? Corriger.

### Livrable

PowerPoint de dix slides et Journal_IA avec une correction apportée au résultat ou une vérification argumentée si aucun défaut n’a été trouvé.

## 12. Structure des 10 slides

| Slide | Titre | Contenu obligatoire | Point de contrôle |
| --- | --- | --- | --- |
| 1 | Page de garde | Nom du projet, COPIL, date, chef de projet et date d’état | Ne pas confondre période analysée et date de réunion |
| 2 | Executive Summary | État global, trois messages clés, alertes et tendance | Trois messages, pas un inventaire |
| 3 | Avancement du projet | Avancement planifié / validé pondéré, trois jalons significatifs | Séparer dates réelles et dates prévisionnelles |
| 4 | Performance planning | PV, EV, SV, SPI et implication de management | SV en euros, pas en jours |
| 5 | Performance financière | BAC, AC, EV, CV, CPI et conséquence financière | AC/BAC ne suffit pas pour conclure sur la performance |
| 6 | Périmètre / Qualité | Livrables validés, anomalies, couverture de tests, CR01 | Ne pas considérer les trois dashboards comme acceptés |
| 7 | Risques et problèmes | Deux risques majeurs et un problème avéré, impacts et réponses | Ne pas attribuer une probabilité à un problème déjà réalisé |
| 8 | Plan d’actions | Trois actions prioritaires, responsable, échéance, priorité, statut | Conserver des noms de rôles et preuves |
| 9 | Décisions attendues du COPIL | D1/D2/D3 : demande, options, recommandation, impact | Une recommandation n’est pas une décision approuvée |
| 10 | Conclusion / Next Steps | Résultat attendu sous conditions, engagements et prochain COPIL | Pas de garantie de rattrapage sans simulation |


Bonnes pratiques : trois à cinq éléments de contenu par slide, tableaux courts, unités explicites, dates sans ambiguïté, statuts accompagnés d’une justification. Ne pas mettre tout le registre de risques à l’écran.

Slide 7 : retenir au maximum deux risques et un problème avéré. Slide 8 : trois actions prioritaires suffisent si les autres restent dans le classeur. Slide 9 : présenter les trois demandes ; ne pas recopier seulement les intitulés des actions.

## 13. Livrables attendus

À la minute 60, remettre :

1. Le classeur avec KPI calculés, interprétations et sources intactes.
2. Un PowerPoint de dix slides exactement.
3. Une synthèse comprenant trois alertes, trois actions prioritaires et D1/D2/D3, dans l’onglet Synthese ; aucun fichier supplémentaire obligatoire.
4. Une note de quatre à six lignes expliquant l’usage de Copilot et les vérifications humaines, dans Synthese et Journal_IA.

Une personne du binôme peut contrôler les chiffres tandis que l’autre vérifie la lisibilité. Aucun calcul non vérifié ne doit être présenté comme validé.

## 14. Critères d’évaluation

| Critère | Points | Attendu |
| --- | --- | --- |
| Exactitude des KPI | 20 | PV/EV/AC, SV/CV et ratios exacts ; formules auditables |
| Qualité de l’analyse | 15 | Dimensions distinguées, faits et tendances sourcés |
| Interprétation SPI/CPI | 15 | Signification, limites et conséquences ; pas de conversion abusive en jours |
| Pertinence des alertes | 10 | Trois alertes hiérarchisées et reliées aux faits |
| Plan d’actions | 10 | Trois actions, rôle, date, priorité, statut et preuve |
| Décisions proposées | 10 | Options, recommandation, impact, autorité et conditions |
| Support PowerPoint | 10 | Dix slides, lisibilité, cohérence et messages exécutifs |
| Usage de Copilot | 5 | Deux outils, contexte précis, prompt amélioré et traçabilité |
| Contrôle critique | 5 | Deux vérifications concrètes et correction ou justification |
| Total | 100 |  |


Seuil pédagogique indicatif : 70/100. Les éléments absents valent zéro ; présents mais incomplets environ la moitié ; complets, corrects et argumentés la totalité.

Pénalité éventuelle : −5 points par information matérielle inventée ou fausse présentée comme validée, plafonnée à −15, sans note finale négative. Le formateur explique la pénalité et évite de sanctionner deux fois la même erreur numérique déjà retirée au titre de l’exactitude KPI. Une hypothèse clairement signalée n’est pas une invention présentée comme fait.

Le bon usage de Copilot n’est pas mesuré au nombre de prompts. Il est mesuré à la précision du contexte, aux validations et à la qualité de la décision humaine.

## 15. Corrigé formateur

Le corrigé complet est remis séparément dans le guide formateur : calculs, interprétations, tendances, état attendu, alertes, actions, décisions et contenu détaillé des dix slides. Ne pas l’ouvrir avant la remise des livrables.

## 16. Débriefing

Le débriefing collectif est conduit après l’heure de production. Chaque participant prépare une réponse courte à trois questions :

- Quelle tâche Copilot a-t-il accélérée ?
- Quelle proposition avez-vous corrigée, et avec quelle preuve ?
- Quelle décision du COPIL ne peut pas être obtenue à partir du seul SPI/CPI ?

Questions complémentaires : SPI inférieur à 1 signifie-t-il automatiquement échec ? CPI inférieur à 1 justifie-t-il automatiquement plus de budget ? Quelles informations doivent rester dans Excel ? Quelle différence entre plan d’action et décision ? Quelle valeur ajoute le PMO quand l’IA sait produire une présentation ?

## 17. Points de vigilance liés à l’IA

### Contrôler les résultats de Copilot

| Contrôle | Méthode rapide | Erreur à éviter |
| --- | --- | --- |
| Calculs | Refaire totaux et ratios dans Excel | AC/PV pris pour CPI |
| Données sources | Relier chaque chiffre à un onglet | Chiffre inventé ou issu d’un autre mois |
| Conclusions | Séparer fait et scénario | Budget restant assimilé à bonne santé |
| Dates | Vérifier référence/réel/prévision et date d’état | Jalon futur annoncé terminé |
| Pourcentages | Vérifier pondération et dénominateur | Tests réussis / exécutés confondus avec / prévus |
| Recommandations | Vérifier capacité, coût, autorité et condition | Renfort présenté comme rattrapage garanti |
| Cohérence slides | Comparer slides 2, 4, 5 et 9 | Même KPI avec deux valeurs ou décisions contradictoires |
| Confidentialité | Utiliser uniquement le dossier fictif | Transmettre un reporting client réel à un outil non autorisé |

### Pièges de calibration — pas des conclusions sur votre projet

1. « Le budget n’est pas entièrement dépensé, donc le projet est financièrement performant. » Vérifier la valeur produite au regard du coût, pas seulement le plafond budgétaire.
2. « Un SV monétaire négatif correspond au même nombre de jours de retard. » SV est exprimé en euros dans cet exercice ; les jalons et le planning donnent la lecture calendaire.
3. « La prévision de validation du 09/10 est une validation réalisée. » Le reporting est arrêté au 30/09.
4. « Renfort approuvé : 28 000 €. » Dans les sources, il est proposé et soumis au comité.

Ces phrases sont volontairement incorrectes. Il ne faut pas les reprendre dans les slides. Si Copilot ne commet aucune de ces erreurs, le formateur peut vous demander de les réfuter à partir du classeur.

L’IA ne prend ni la décision du sponsor ni la responsabilité du reporting. Une slide convaincante reste fausse si ses chiffres, ses dates ou son statut ne sont pas vérifiés.
