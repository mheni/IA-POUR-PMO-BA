# TP — Construire une matrice des risques et un plan de mitigation d’un projet IA client ATOS avec l’aide de l’IA

Dossier participant — Version octobre 2026 — Cas pédagogique ORION Services

## 1. Présentation du TP

Vous devez préparer un registre de dix risques et les réponses qui permettront de décider si un pilote IA peut être ouvert. Votre rôle consiste à identifier les événements incertains, qualifier leur exposition, sélectionner les actions utiles et préparer les décisions de gouvernance.

La chaîne de travail est : Contexte → Identification → Qualification → Probabilité/Impact → Criticité → Priorisation → Réponse → Mitigation → Contingence → Risque résiduel → COPIL.

Dix ateliers enrichissent le même classeur. Travail en binômes PMO/BA : l’un produit, l’autre challenge ; échange des rôles à l’atelier 6. Durée : 3 heures nettes, hors pauses. Une synthèse finale de 30 minutes est incluse, pas ajoutée après les trois heures.

Le document est un dossier de référence : ne pas tenter de tout lire avant l’atelier 1. Lire d’abord le contexte et suivre l’atelier courant. Les échelles et prompts restent accessibles pendant le travail.

Le client ORION Services, les données, contrats, budgets, contraintes et incidents d’exercice sont fictifs. ATOS est le prestataire du scénario demandé ; aucune politique interne ni aucun engagement réel d’ATOS n’est supposé. Les règles du TP sont des conventions pédagogiques, pas une charte officielle.

### Supports fournis

- Dossier participant Markdown.
- Classeur Excel à compléter : sources, registre, qualification, matrice, priorisation, actions, contingence, résiduel, COPIL et journal IA.
- Guide formateur séparé avec corrigé, scénarios, scores proposés, alternatives et réponses de débriefing.

## 2. Public cible

PMO, BA, chefs de projet, responsables de programme, consultants et profils fonctionnels intervenant sur des projets IA. Le niveau en gestion des risques peut être hétérogène ; la méthode est introduite avant les outils.

Le BA clarifie les cas d’usage, les critères métier, les conséquences et les valideurs. Le PMO structure les scores, les suivis, les actions, les moyens et les décisions. Les experts sécurité, data et conformité apportent des preuves spécialisées que l’IA ne peut pas remplacer.

## 3. Prérequis

- Bases de gestion de projet et de lecture d’un tableau.
- Excel ou outil de tableur compatible ; classeur fourni, aucune programmation nécessaire.
- Accès à Microsoft 365 Copilot ou à une IA générative autorisée par l’environnement de formation.
- Compte et accès testés avant l’animation ; si l’écriture directe dans Excel n’est pas disponible, reporter les propositions validées manuellement.
- Données fictives uniquement. L’absence d’accès IA permet un mode dégradé avec sorties simulées, mais ne valide pas l’expérimentation réelle de Copilot.

Aucune compétence de développement LLM, de SQL ni de sécurité offensive n’est requise. Les tâches techniques sont décrites par leur résultat, leur responsable et leur preuve d’efficacité.

## 4. Objectifs pédagogiques

À la fin, vous devez savoir distinguer risque, problème et hypothèse ; formuler cause/événement/conséquence ; retenir dix risques pertinents ; justifier P/I ; positionner les risques ; attribuer un owner ; sélectionner une réponse ; définir actions, coûts, indicateurs et déclencheurs ; construire des contingences ; estimer une exposition résiduelle sans la déclarer maîtrisée prématurément ; présenter les gates et décisions au COPIL.

L’objectif n’est pas d’atteindre artificiellement un tableau vert. Une réserve bloquante ou un défaut de preuve doit rester visible.

## 5. Contexte du projet IA

ATOS accompagne ORION Services, groupe fictif de services B2B, pour construire un assistant documentaire à destination de 400 utilisateurs. Il aide à retrouver les procédures applicables, résumer des dossiers et préparer une réponse métier avec citations. Un pilote de 30 utilisateurs est prévu le 2 novembre ; l’ouverture plus large le 30 novembre 2026.

Le projet comprend cadrage, processus, préparation documentaire, architecture, configuration d’un LLM hébergé dans un environnement approuvé, RAG, intégration GED/SharePoint, tests, recette, revue sécurité/conformité, accompagnement et transfert. Aucun entraînement d’un modèle de fondation ni fine-tuning n’est engagé dans le périmètre initial. Les participants organisent les contrôles ; ils ne développent pas ces composants.

RAG signifie ici que l’assistant recherche des passages dans un corpus documentaire pour préparer sa réponse. La présence d’un mécanisme RAG ne prouve pas que chaque réponse est correcte, à jour ou autorisée. Les risques propres à la génération, aux données et à la sécurité sont traités conjointement ; le NIST propose un profil de gestion des risques dédié à l’IA générative. [NIST : profil Generative AI](https://www.nist.gov/publications/artificial-intelligence-risk-management-framework-generative-artificial-intelligence).

Le système ne décide pas seul d’une indemnisation, d’un recrutement ou d’un droit client. Une personne valide les réponses sensibles. Les demandes d’automatisation de décision, multilingue et OCR supplémentaire sont non approuvées et hors pilote.

## 6. Jeu de données / informations initiales

### 6.1 Date et jalons

Date d’état : lundi 12 octobre 2026. COPIL : mardi 13 octobre. Budget de projet fictif : 600 000 €. Gate sécurité/conformité : 20 novembre. Pilote : 2 novembre. Production : 30 novembre. Ces dates sont des cibles du cas, pas des garanties.

### 6.2 Faits disponibles

| Référence | Information source | Ce que l’information ne prouve pas |
| --- | --- | --- |
| F01 | Deux directions n’ont pas harmonisé tous les critères de réussite | Aucun refus de recette finale n’a déjà eu lieu |
| F02 | Corpus de 10 000 documents ; sur 200 documents échantillonnés, 20 % sans métadonnée de version | Pas une preuve que 20 % de toutes les réponses sont fausses |
| F03 | Corpus mêlant procédures, contrats et dossiers de service avec données personnelles | Pas une autorisation de tout indexer ni de tout transmettre |
| F04 | Prototype : 6 réponses sur 40 n’ont pas de preuve documentaire satisfaisante | Pas un taux représentatif de production ni une fuite avérée |
| F05 | Tests ACL bout en bout et tests d’injection indirecte non encore démontrés | Aucun incident de divulgation avéré dans le contexte initial |
| F06 | Connecteurs SSO/GED et charge de 40 sessions non encore validés | Pas une certitude d’échec technique |
| F07 | Dépendance à une API LLM ; coût et quotas complets non confirmés | Pas une panne fournisseur réalisée |
| F08 | Un spécialiste IA ; deux experts métier disponibles à 0,3 ETP, troisième non confirmé | Pas une garantie de disponibilité de recette |
| F09 | Revue données, finalités, droits d’usage et conservation en cours | Pas une conformité attestée ni un régime juridique déjà classé |
| F10 | Trois extensions demandées, non approuvées | Pas un périmètre modifié ni un coût engagé |

Pour la protection des données, le besoin de base légale, de minimisation, de sécurité et d’une éventuelle AIPD est à qualifier avec les responsables compétents. Ne pas annoncer automatiquement une AIPD obligatoire ou une catégorie AI Act déterminée sans analyse du cas. [CNIL : fiches pratiques IA](https://www.cnil.fr/fr/les-fiches-pratiques-ia).

### 6.3 Problèmes et hypothèses à séparer du registre

Problèmes constatés : métadonnées lacunaires sur l’échantillon et réponses du prototype sans preuve satisfaisante. Ils doivent être corrigés. Le risque associé décrit un événement futur, par exemple la sélection d’un document obsolète en usage réel ou une réponse trompeuse acceptée par un utilisateur.

Hypothèses : quatre cents utilisateurs pourront être autorisés après les gates ; le fournisseur pourra assurer les quotas ; les trois experts métier pourront participer. Chaque hypothèse a une personne chargée de la confirmer et une date, pas un score P/I par défaut.

### 6.4 Moyens limités pour le traitement ciblé

Entre le 13 et le 23 octobre, vous avez une enveloppe de prévention maximale de 30 000 € et vingt jours-personnes :

| Profil | Jours disponibles | Taux fictif €/jour |
| --- | ---: | ---: |
| Security Officer | 3 | 1 000 |
| Data Engineer | 5 | 900 |
| AI/ML Engineer | 5 | 950 |
| Business Analyst | 4 | 700 |
| QA / Test Engineer | 3 | 650 |

Ces plafonds sont à respecter séparément : 30 000 € disponibles ne créent pas davantage de jours ML ou Security. Un jour-personne n’est pas un jour de durée projet.

Le DPO et l’IT poursuivent leur revue de base dans leurs allocations existantes, hors des vingt jours de renfort ciblé. Cette exception de comptage ne dispense d’aucun gate obligatoire. Aucun risque sécurité/conformité ne devient acceptable parce qu’il n’entre pas dans le Top 3.

Aucune réserve de contingence n’est approuvée à date. Vous devez proposer son montant, sa justification, ses conditions d’emploi et son autorité d’activation. Ne pas considérer les 30 000 € de prévention comme une réserve utilisable une seconde fois.

### 6.5 Rôles et pouvoirs du scénario

| Rôle | Contribution / limite |
| --- | --- |
| Project Manager | Plan, budget, coordination et escalade ; pas d’approbation juridique autonome |
| PMO | Registre, challenge, reporting et traçabilité ; pas automatiquement owner de tous les risques |
| BA | Exigences, corpus métier, critères de recette, analyse des conséquences |
| Client Business Owner / Product Owner | Priorités métier, acceptation et disponibilité des utilisateurs |
| Data Architect | Gouvernance technique du corpus et architecture des flux |
| Data Engineer | Préparation, indexation et qualité opérationnelle |
| AI/ML Engineer | Évaluation des réponses, paramètres et suivi de performance |
| Security Officer | Contrôles sécurité et activation du processus d’incident du cas |
| DPO client | Conseil et coordination données personnelles ; décisions de traitement avec les responsables habilités |
| Change Manager | Formation, usages responsables et adoption |

Dans ce scénario, Security Officer peut ordonner la suspension conservatoire du pilote ; le Project Manager coordonne ; le sponsor autorise une réserve et les modifications de date/périmètre. La reprise exige validation sécurité et métier, avec avis conformité si concerné. Ce sont des pouvoirs pédagogiques à documenter, pas une politique ATOS réelle.

### 6.6 Onglets à compléter

Registre contient dix lignes et les colonnes obligatoires ; Criticité/Priorité ont des formules préinstallées. Qualification explique les scores. Matrice reçoit les IDs. Actions détaille les mesures. Contingence et Residuel sont prévus pour trois risques majeurs. Les IDs préremplis R02/R03/R04 dans ces deux onglets sont des emplacements éditables : les remplacer si vos risques prioritaires utilisent d’autres codes.

Ne pas modifier les faits sources pour justifier une recommandation de l’IA.

## 7. Méthodologie Risk Management

### Risque, problème, hypothèse

| Objet | Définition pratique | Exemple |
| --- | --- | --- |
| Risque | Événement futur incertain qui affecte les objectifs | Une procédure obsolète pourrait servir à une réponse sensible |
| Problème | Fait réalisé qui demande correction | La métadonnée de version manque dans un échantillon |
| Hypothèse | Condition supposée vraie pour planifier, à confirmer | Les experts pourront libérer des créneaux |

Un événement certain ou déjà réalisé n’est pas maintenu artificiellement avec une probabilité de 5 : créer un problème, conserver le lien au risque et suivre les éventuelles récurrences.

### Formuler le risque

« En raison de [cause], [événement] pourrait se produire, entraînant [conséquence]. »

Exemple hors corrigé : « En raison d’une documentation d’exploitation incomplète, l’équipe support pourrait ne pas savoir restaurer le service, entraînant une interruption prolongée. »

La colonne Risque décrit l’événement, Cause le facteur, Conséquence l’effet. La phrase complète peut être conservée dans Qualification. Ne pas écrire seulement « risque de données ».

### Réponses aux menaces

| Stratégie | Sens | Limite |
| --- | --- | --- |
| Éviter | Supprimer l’exposition par un changement de périmètre ou de mode opératoire | Peut réduire les bénéfices ou déplacer le travail |
| Réduire / mitiger | Diminuer la probabilité ou les conséquences | Nécessite une preuve d’efficacité |
| Transférer | Partager certaines conséquences contractuelles ou financières avec un tiers | Ne supprime pas la responsabilité, l’incident ni l’impact client |
| Accepter | Ne pas agir préventivement, avec décision explicite | Acceptation active : surveillance, déclencheur, moyens et contingence |

Une combinaison est possible, mais préciser laquelle agit sur P et laquelle sur I. Une clause fournisseur n’efface pas un risque de sécurité ou les obligations applicables. Les opportunités peuvent être exploitées, améliorées, partagées ou acceptées ; elles ne sont pas notées dans le présent registre de menaces.

### Prévention, correction et contingence

Prévention : action avant l’événement, par exemple test d’habilitations. Correction : action sur un défaut constaté, par exemple réparer un filtre. Contingence : réponse préparée et déclenchée si l’événement ou une condition critique survient, par exemple suspendre une collection et basculer vers une procédure humaine.

Un Risk Owner pilote le risque et décide/escalade selon son mandat. Les responsables d’action exécutent les mesures ; ils peuvent être différents. Le PMO assure le suivi mais ne doit pas récupérer automatiquement tous les owners.

Une réserve de contingence finance des événements identifiés ; elle doit être justifiée et gouvernée, pas obtenue en additionnant les scores P×I. [PMI : modèle de réserve de contingence](https://www.pmi.org/learning/library/model-risk-contingency-reserve-9310).

## 8. Échelle Probabilité / Impact

### Probabilité — horizon jusqu’au 30/11/2026

| P | Niveau | Plage estimée | Repère qualitatif |
| --- | --- | --- | --- |
| 1 | Très faible | <10 % estimé avant le 30/11 | Contrôles démontrés, pas de signal significatif |
| 2 | Faible | 10 à <30 % | Quelques fragilités, contrôles plutôt établis |
| 3 | Moyenne | 30 à <50 % | Cause plausible, maîtrise partielle |
| 4 | Élevée | 50 à <80 % | Plusieurs fragilités et exposition imminente |
| 5 | Très élevée | 80 à <100 % | Cause fortement active, peu de barrières fiables |


Ces plages sont des repères pédagogiques d’estimation experte, pas des probabilités statistiques démontrées. Justifier avec faits, exposition, contrôles et délai avant le gate. Si l’information manque, proposer une note provisoire et une action de qualification ; ne pas confondre ignorance et certitude.

### Impact — choisir la dimension la plus grave crédible

| I | Niveau | Coût potentiel | Délai potentiel | Conséquence qualitative |
| --- | --- | --- | --- | --- |
| 1 | Mineur | ≤1 % (6000 EUR) | ≤2 j ouvrés | Défaut local sans incidence sensible |
| 2 | Limité | >1–3 % (18000 EUR max) | 3–5 j | Reprise limitée, service principal préservé |
| 3 | Significatif | >3–7 % (42000 EUR max) | 6–10 j | Lot ou qualité affecté, validation partielle possible |
| 4 | Majeur | >7–15 % (90000 EUR max) | 11–20 j | Non-acceptation de fonctions majeures, client fortement touché |
| 5 | Sévère | >15 % | >20 j | Divulgation sensible, obligation bloquante ou service non acceptable |


Examiner coût, délai, qualité, périmètre, confidentialité, conformité, satisfaction et réputation. Retenir le maximum crédible, pas une moyenne qui dilue un incident grave. Inscrire la dimension dominante et le scénario de conséquence. Il n’est pas nécessaire de monétiser la réputation pour attribuer I=5.

Une divulgation de données sensibles ou une obligation bloquante peut justifier I=5 indépendamment des coûts de projet. Une alerte conformité n’est cependant pas une sanction certaine ; faire qualifier l’obligation et sa conséquence par le DPO/juridique.

## 9. Matrice de criticité

Criticité = P × I, entre 1 et 25. Il s’agit d’un outil ordinal de classement, pas d’une perte financière attendue. Des scores égaux ne décrivent pas des profils de conséquence équivalents.

| Score | Niveau |
| --- | --- |
| 1–4 | Faible |
| 5–9 | Modérée |
| 10–14 | Élevée |
| 15–19 | Très élevée |
| 20–25 | Critique |

| P ↓ / I → | 1 | 2 | 3 | 4 | 5 |
| --- | --- | --- | --- | --- | --- |
| 5 | 5 (Modérée) | 10 (Élevée) | 15 (Très élevée) | 20 (Critique) | 25 (Critique) |
| 4 | 4 (Faible) | 8 (Modérée) | 12 (Élevée) | 16 (Très élevée) | 20 (Critique) |
| 3 | 3 (Faible) | 6 (Modérée) | 9 (Modérée) | 12 (Élevée) | 15 (Très élevée) |
| 2 | 2 (Faible) | 4 (Faible) | 6 (Modérée) | 8 (Modérée) | 10 (Élevée) |
| 1 | 1 (Faible) | 2 (Faible) | 3 (Faible) | 4 (Faible) | 5 (Modérée) |


Les cinq niveaux doivent rester visibles, dont « très élevée ». Le nombre « priorité » du registre est une classe de score ; le rang opérationnel de traitement est décidé ensuite avec urgence, gates et moyens. Un risque I=5 peut imposer un gate même avec un score de 10.

### Registre obligatoire

| ID | Risque | Cause | Conséquence | Catégorie | Probabilité | Impact | Criticité | Priorité | Risk Owner | Réponse | Mitigation | Contingence | Indicateur | Déclencheur | Échéance | Statut |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| R01 | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter | À compléter |


Pour chaque risque : owner unique, stratégie, prévention, contingence, indicateur mesurable, seuil/déclencheur, échéance et statut. Compléter Qualification pour rendre les décisions auditables.

## 10. Atelier 1 — Analyse du contexte

### Objectif

Distinguer les objectifs et les faits des événements futurs à analyser.

### Durée

10 minutes, 00–10.

### Contexte

Vous héritez du prototype et devez sécuriser pilote et production. L’équipe demande « une matrice des risques » sans préciser encore les contrôles ou les pouvoirs de décision.

### Consigne

Lire le contexte ; lister trois objectifs, trois faits problématiques ou à qualifier, trois hypothèses et les gates de passage. Identifier deux informations manquantes qui pourraient changer votre notation.

### Prompt IA

```text
Agis comme un BA aidant un PMO. Analyse ce contexte fictif [coller sections 5 et 6].
Sépare objectifs, faits, problèmes déjà constatés, hypothèses et événements futurs.
Ne génère pas encore de scores. Signale les informations manquantes.
Ne prétends pas connaître une politique ATOS ou le contrat client réel.
```

### Travail du participant

Ouvrir le classeur et lire Contexte. Reporter les questions de qualification dans Qualification. Faire confirmer par le binôme ce qui est déjà réalisé.

### Résultat attendu

Horizon, périmètre et gates identifiés ; une différence claire entre défaut documentaire et risque d’une réponse inadaptée en usage réel.

### Livrable

Note de cadrage de dix lignes dans COPIL ou notes du groupe.

### Contrôle

Pas de fuite avérée inventée ; pas de conformité réputée acquise ; extensions non incluses implicitement.

### Débriefing

Qu’est-ce qui doit être corrigé aujourd’hui ? Qu’est-ce qui pourrait arriver demain ? Quelle hypothèse n’a pas encore de preuve ?

## 11. Atelier 2 — Identification des risques

### Objectif

Produire des risques contextualisés, non une liste générique de problèmes IA.

### Durée

20 minutes, 10–30.

### Contexte

Sept familles doivent être examinées : métier, données, IA/technique, sécurité, conformité, projet et humain.

### Consigne

Proposer d’abord cinq risques en binôme, puis utiliser l’IA pour élargir. Retenir dix risques pertinents après fusion des doublons ; couvrir toutes les familles. Ne pas ajouter un risque artificiel seulement pour remplir une catégorie.

### Prompt IA — Exercice IA 1

```text
Analyse ce contexte de projet IA fictif [coller sections 5 et 6].
Identifie 12 à 15 menaces métier, data, IA/technique, sécurité, conformité,
humaines et projet. Pour chacune : cause, événement futur, conséquence,
catégorie, source du contexte et question à confirmer.
Utilise « En raison de..., ... pourrait..., entraînant... ».
Ne transforme pas un défaut déjà observé en événement futur déjà certain.
N’affirme ni sanction, ni qualification juridique, ni incident avéré non fourni.
Signale les doublons et les risques à fusionner. Ne note pas P/I à ce stade.
```

### Travail du participant

Comparer les listes ; supprimer les risques hors périmètre ; fusionner ceux qui décrivent le même événement ; compléter au moins un point non proposé par l’IA. Saisir dix lignes dans Registre : ID, Risque, Cause, Conséquence et Catégorie.

### Résultat attendu

Dix menaces distinctes avec causes et conséquences. Une formulation peut couvrir un mécanisme principal et ses sous-causes si les owner/indicateurs restent exploitables.

### Livrable

Première version du registre et trace IA1.

### Contrôle

« Mauvaise IA », « problème de données » ou « risque de retard » ne sont pas des formulations suffisantes. Pas de risque d’entraînement d’un modèle fondation si aucun entraînement n’est dans le périmètre.

### Débriefing

Quel doublon avez-vous fusionné ? Quel risque dépend directement d’un fait F01–F10 ? Quelle omission aurait pu empêcher la production ?

## 12. Atelier 3 — Utilisation de l’IA

### Objectif

Challenger les formulations et la couverture, puis conserver une décision humaine argumentée.

### Durée

15 minutes, 30–45.

### Contexte

L’IA peut produire une matrice convaincante qui oublie les droits documentaires, les experts métier ou les limites du contrat.

### Consigne

Faire analyser vos dix risques. Accepter ou rejeter au moins trois recommandations en citant le contexte. Si les dix risques sont déjà robustes, expliquer pourquoi vous ne modifiez pas une proposition.

### Prompt IA — Exercice IA 2, première passe

```text
Challenge ce registre [coller les dix risques] contre ce contexte [coller].
Repère omissions, doublons, risques génériques, problèmes déguisés en risques
et responsabilités ambiguës. N’invente pas de score ou de contrôle réalisé.
Propose au maximum cinq améliorations avec preuve du contexte ou question.
Classe chaque recommandation : confirmée par la source / hypothèse / hors périmètre.
```

### Travail du participant

Réviser les colonnes de formulation ; inscrire trois arbitrages dans Journal_IA. Affecter un owner provisoire selon le pouvoir de maîtrise et d’escalade, pas uniquement la personne qui manipule Excel.

### Résultat attendu

Registre consolidé et traçabilité des décisions. L’owner peut être un rôle client si la disponibilité ou l’acceptation est sous contrôle client.

### Livrable

Registre version 2, owners provisoires et Journal_IA2.

### Contrôle

Tous les owners sont-ils le Project Manager ? L’IA promet-elle « 100 % de sécurité » ? Affirme-t-elle qu’une clause transfère toute responsabilité ? Corriger.

### Débriefing

Quelle recommandation avez-vous refusée ? Pourquoi un DPO ne valide-t-il pas seul l’ensemble du projet ?

## 13. Atelier 4 — Qualification et scoring

### Objectif

Justifier une analyse qualitative, calculer la criticité et distinguer score et obligation de traitement.

### Durée

20 minutes, 45–65.

### Contexte

Le sponsor veut des notes défendables. Une probabilité ne peut pas être obtenue simplement par le ton alarmant du LLM.

### Consigne

Noter P et I pour chaque risque, renseigner la dimension dominante, la source, le scénario d’impact et une justification courte. Le binôme doit contester au moins une note. Finaliser owners, échéances et statut initial « Ouvert ».

### Prompt IA — Exercice IA 2, deuxième passe

```text
Challenge mes notes P/I [coller registre et Qualification] avec les échelles [coller].
Horizon : de la date d’état au 30/11/2026. Repère sous-estimations,
surestimations, incohérences de score et hypothèses non démontrées.
Ne remplace pas automatiquement les notes : propose des plages et les faits
qui permettraient de trancher. Ne traite pas une obligation bloquante
comme un risque librement acceptable par score seul.
```

### Travail du participant

Dans Registre, saisir les entiers 1–5 en F/G. Vérifier H=F×G et la classe I. Les formules sont préparées, mais contrôler deux lignes à la main. Renseigner Qualification et actualiser les notes après discussion.

### Résultat attendu

Dix scores justifiés. Les risques majeurs doivent être explicites ; ne pas augmenter artificiellement trois notes pour obtenir trois risques critiques. Le corrigé contient un exemple de trois risques critiques, pas un quota obligatoire de notes.

### Livrable

Registre noté et Qualification renseigné.

### Contrôle

Échelle d’impact appliquée par maximum crédible ; pas de score 0 ; multiplication correcte ; pas de probability 100 % pour un événement déjà réalisé ; horizon commun.

### Débriefing

Quel fait permettrait de passer P4 à P2 ? Pourquoi I5 peut-il rester à 5 après une mesure de prévention ?

## 14. Atelier 5 — Matrice des risques

### Objectif

Visualiser les dix risques et vérifier leur cohérence avec le registre.

### Durée

10 minutes, 65–75.

### Contexte

Le COPIL doit voir rapidement les zones d’exposition, mais une case ne décrit pas le risque à elle seule.

### Consigne

Positionner les dix IDs dans la matrice 5×5. Plusieurs IDs peuvent partager une case. Expliquer un cas de score égal avec des conséquences ou urgences différentes.

### Prompt IA

```text
Vérifie les positions P/I de ces dix risques [coller ID,P,I] dans la matrice
[coller coordonnées]. Indique les IDs manquants, doublons ou mal positionnés.
Explique pourquoi P4/I3 et P3/I4, tous deux à 12, peuvent appeler des réponses différentes.
```

### Travail du participant

Dans Matrice, colonnes B:F représentent I1 à I5 ; lignes 3:7 représentent P5 à P1. Saisir les IDs dans les bonnes cellules, séparés par virgule. Ne pas saisir les IDs dans la grille de scores située en dessous. Vérifier que dix IDs uniques sont positionnés.

### Résultat attendu

Carte complète et explication d’un score égal : faible probabilité d’impact sévère n’est pas équivalente à un événement plus fréquent mais limité ; confidentialité et retard peuvent avoir des pouvoirs de décision différents.

### Livrable

Matrice 5×5 cohérente avec Registre.

### Contrôle

Axes inversés ? Deux risques fusionnés parce qu’ils sont dans la même case ? Niveau « très élevée » absent ? Un ID oublié ?

### Débriefing

Le score permet-il de monétiser un risque ? Faut-il toujours traiter la case la plus rouge avant un gate légal ?

## 15. Atelier 6 — Priorisation

### Objectif

Choisir trois risques à traiter avec une capacité limitée sans oublier les gates obligatoires.

### Durée

15 minutes, 75–90.

### Contexte

Vous disposez de vingt jours-personnes ciblés et de 30 000 €. Les équipes DPO/IT poursuivent leurs obligations de base ; cela ne crée pas un accord de conformité.

### Consigne

Classer un Top 5 ; sélectionner trois priorités de prévention ciblée. Justifier criticité, urgence, impact client, coût, dépendances et exposition restante. Nommer un risque hors Top 3 qui reste un gate impératif.

### Prompt IA

```text
À partir de ce registre et des ressources disponibles [coller], propose
un Top 5 et trois traitements ciblés. Justifie au-delà de P×I : urgence,
impact client, gate, coût et dépendances. Vérifie chaque capacité par profil.
N’abandonne aucune obligation sécurité/conformité parce que sa note est plus faible.
Distingue la sélection budgétaire des conditions impératives de passage.
```

### Travail du participant

Compléter Priorisation ; présenter au binôme le choix et une alternative. Préparer un brouillon de coûts sans dépasser les capacités disponibles. Enregistrer les critères d’arbitrage dans COPIL.

### Résultat attendu

Trois risques traités et un Top 5 justifié. Le Project Manager n’accepte pas seul une exposition juridique ou sécurité hors mandat.

### Livrable

Top 5, Top 3 ciblé et liste des gates à escalader.

### Contrôle

Tri par score uniquement ? Choix sans ressources ? Même expert affecté à deux jours simultanés ? Conformité oubliée parce que P3/I5 vaut seulement 15 ?

### Débriefing

Quel risque à score identique passe d’abord, et pourquoi ? Que faites-vous si le coût de prévention dépasse le plafond ?

## 16. Atelier 7 — Plan de mitigation

### Objectif

Transformer les intentions en actions mesurables et attribuables.

### Durée

25 minutes, 90–115.

### Contexte

« Sensibiliser » et « tester davantage » ne sont pas des plans d’action suffisants pour un pilote client.

### Consigne

Choisir une stratégie pour chaque risque. Renseigner une mesure et un indicateur pour les dix. Pour les trois priorités, détailler actions préventives, responsable, échéance, profils/jours, coût, preuve et résultat attendu. Les corrections des défauts observés doivent être identifiées comme telles.

### Prompt IA — Exercice IA 3

```text
Pour les trois risques prioritaires [coller] et les autres risques du registre,
propose des stratégies et des mesures réalistes dans le contexte [coller].
Pour les priorités : action, type préventif/correctif, responsable, date,
ressources par profil en jours, coût aux taux fournis, indicateur, seuil et preuve.
Respecte 20 jours et 30000 EUR, avec limites par profil.
Distingue correction d’un défaut constaté et prévention d’un événement futur.
N’invente ni disponibilité ni approbation. Une mesure prévue n’est pas effective.
```

### Travail du participant

Compléter Réponse/Mitigation/Indicateur/Déclencheur dans Registre et le détail dans Actions. Calculer coûts par profil, sommer jours et vérifier les plafonds. Documenter une séquence de réalisation sur les dix jours ouvrés de la fenêtre 13–23/10.

### Résultat attendu

Plan réalisable ; « indicateur » décrit une mesure, « déclencheur » le seuil/action qui l’active. La réduction de risque est conditionnée aux preuves, pas à la seule rédaction.

### Livrable

Registre complet côté réponse et plan d’action détaillé pour trois risques.

### Contrôle

Promesse zéro hallucination ? Coût omis ? « Tester les droits » sans cas ni preuve ? Seuil de qualité non défini ? Tous les coûts reportés au client sans accord ?

### Débriefing

Quelle mesure agit sur P ? Laquelle limite I ? Qui valide la preuve de réussite et quand ?

## 17. Atelier 8 — Plan de contingence

### Objectif

Préparer et tester une réponse activable lorsque les barrières ne suffisent pas.

### Durée

20 minutes, 115–135.

### Contexte

Le formateur annonce une simulation distincte de l’état de base : dans un test, un compte agence A obtient un extrait classé réservé à l’agence B après ingestion d’un document contenant une instruction malveillante. Aucun contenu réel n’est utilisé. La simulation ne devient pas un incident réel ATOS.

### Consigne

Préparer une contingence pour les trois risques majeurs. Sur le scénario, définir l’autorité, les actions immédiates, la communication, la reprise et les ressources. Relier le risque matérialisé à un problème d’exercice sans effacer l’évaluation initiale.

### Prompt IA — Exercice IA 4

```text
Simule la matérialisation du risque sécurité retenu [coller fiche] dans ce
scénario d’exercice : restitution d’un extrait agence B à un compte agence A.
Ne suppose pas une fuite à l’extérieur ni une attaque réelle non démontrée.
Analyse impacts possibles sur coût, délai, qualité, sécurité et acceptation.
Propose une contingence : déclencheur, autorité, 0–1 h, 1–4 h, J+1 à J+3,
preuves à conserver, communication, retour arrière, conditions de reprise,
coûts estimatifs et décisions. Sépare faits simulés et hypothèses d’étendue.
Ne prescris pas une notification réglementaire automatique sans qualification DPO/juridique.
```

### Travail du participant

Remplir Contingence. Comparer la proposition à la stratégie choisie. Nommer un problème d’exercice lié au risque, et distinguer son traitement d’une prévention. Définir un plafond de réserve demandé, non approuvé.

### Résultat attendu

Plan activable sans improvisation, avec suspension conservatoire si nécessaire, preuves et critères de reprise. Pour les autres risques, prévoir bascule humaine ou retrait du corpus, pas seulement un nouvel atelier.

### Livrable

Trois contingences et une simulation détaillée.

### Contrôle

Continuer malgré une restitution non autorisée ? Détruire les logs utiles ? Annoncer publiquement une cause non confirmée ? Mettre P5 sur un incident déjà réalisé au lieu d’ouvrir un problème ?

### Débriefing

Qui peut suspendre ? Qui peut reprendre ? Que faut-il connaître avant toute communication ou obligation de notification ?

## 18. Atelier 9 — Risque résiduel

### Objectif

Estimer ce qui reste après réponse et distinguer cible de maîtrise et observation.

### Durée

15 minutes, 135–150.

### Contexte

Le sponsor souhaite un tableau « vert après mitigation ». Les actions ne sont pourtant pas encore démontrées dans l’état initial.

### Consigne

Pour les trois priorités, noter P/I initiaux, mesures, efficacité attendue, preuve nécessaire, P/I cibles et criticité cible. Laisser les scores observés à confirmer tant que les preuves manquent. Identifier un risque secondaire créé par la réponse.

### Prompt IA

```text
À partir de ces risques et mesures [coller], propose une estimation résiduelle
conditionnelle P/I, avec les preuves nécessaires pour l’accepter.
Ne réduis pas automatiquement P et I. Distingue cible après mesures prévues
et score observé après vérification. Explique l’effet de chaque barrière.
N’interprète pas le pourcentage de baisse de P×I comme une baisse probabiliste réelle.
Repère un risque secondaire créé par la contingence ou la supervision humaine.
```

### Travail du participant

Compléter Residuel et comparer matrice initiale/cible, éventuellement sur une copie de Matrice. Les trois risques « critiques » du corrigé sont des exemples ; si vos notes alternatives justifiées changent leur classe, analyser néanmoins trois risques majeurs.

### Résultat attendu

P/I cibles argumentés et conditions d’acceptation. Une validation humaine peut réduire la conséquence métier sans empêcher une divulgation ; une barrière d’accès peut réduire P sans réduire I d’une fuite résiduelle.

### Livrable

Analyse résiduelle des trois risques, preuve attendue, autorité d’acceptation et risque secondaire.

### Contrôle

Score 0 ? Risque déclaré éliminé ? Cible présentée comme amélioration réalisée ? Risque secondaire absent ? Risque sécurité I5 classé acceptable par score seul ?

### Débriefing

Quand pouvez-vous déclarer la baisse effective ? Qui accepte l’exposition restante ? Pourquoi la somme des scores n’est-elle pas un montant financier ?

## 19. Atelier 10 — Synthèse COPIL

### Objectif

Transformer le registre en une demande de décision exécutive.

### Durée

30 minutes, 150–180.

### Contexte

« Le COPIL aura lieu demain. Le sponsor veut connaître les principaux risques et les conditions de sécurisation de la mise en production. Vous avez trente minutes pour préparer votre analyse. »

### Consigne

Produire une synthèse d’une page ou de trois slides maximum : Top 5, trois traitements ciblés, coûts/capacités, contingences, initial/cible, gates et décisions. Rappeler les risques de conformité hors Top 3 et leur pouvoir bloquant. La simulation d’incident est signalée comme exercice, pas comme fait réel du projet.

### Prompt IA

```text
Prépare une synthèse COPIL à partir de notre registre validé [coller],
des actions et ressources [coller] et du résiduel [coller].
Date d’état 12/10/2026 ; COPIL demain 13/10. Une page ou trois slides maximum.
Présente Top 5, traitements, moyens, owners, échéances, gates et décisions.
Distingue exposition initiale, cible conditionnelle et preuves manquantes.
La simulation d’incident est un exercice séparé, pas un incident réel.
Ne prétends pas que le go-live est autorisé ou que les risques ont déjà diminué.
Conclue par des demandes précises avec autorité, plafond et condition.
```

### Travail du participant

10 min : sélectionner les informations ; 10 min : générer et corriger ; 5 min : contrôler chiffres/statuts/gates ; 5 min : restitution orale courte et remise. Utiliser COPIL dans Excel ou un document court, sans imposer un nouvel outil ni une mise en page longue.

### Résultat attendu

Le sponsor comprend les expositions, ce qu’on propose d’engager et ce qui interdit encore la production.

### Livrable

Synthèse, registre final, matrice, actions, contingences, résiduel et Journal_IA.

### Contrôle

Cibles présentées en vert « acquis » ? Réserve annoncée approuvée ? Conditions de passage oubliées ? Scores sans causes ni décisions ?

### Débriefing

Quelle décision demandez-vous aujourd’hui ? Quel gate reste bloquant même si le budget est approuvé ? Quelle vérification humaine a changé votre recommandation ?

## 20. Livrables

1. Risk Register complet de dix risques, toutes les colonnes renseignées ou « à confirmer » avec action de qualification.
2. Matrice 5×5 positionnant dix IDs uniques et légende de cinq niveaux.
3. Plan détaillé des trois priorités avec coûts, profils/jours, dates et preuves.
4. Contingences pour trois risques majeurs et simulation liée à un problème d’exercice.
5. Risque résiduel initial/cible/observé pour ces trois risques, avec conditions d’acceptation.
6. Synthèse COPIL : Top 5, évolution conditionnelle, gates, actions et décisions.
7. Journal IA : quatre exercices, arbitrages et au moins trois contrôles humains.

## 21. Évaluation

| Critère | Points | Éléments observables |
| --- | --- | --- |
| Identification | 15 | Dix risques pertinents, couverture du cas et absence de doublons |
| Cause → événement → conséquence | 10 | Événements futurs distincts des faits et conséquences explicites |
| Classification | 5 | Catégories métier, data, IA, sécurité, conformité, projet et humain couvertes |
| Probabilité / Impact | 15 | Horizon, sources et dimensions justifiés ; score calculé |
| Matrice et priorisation | 10 | Positionnement exact ; urgence, gates et moyens au-delà du produit |
| Risk Owners | 5 | Responsable unique, autorité et coordination explicites |
| Stratégies de réponse | 10 | Choix cohérent, limites du transfert et acceptation encadrée |
| Mitigation | 15 | Actions, ressources, coûts, délais, mesures et preuves faisables |
| Contingence | 5 | Déclencheurs, autorité, séquence et retour au service |
| Usage critique de l’IA | 10 | Prompts contextualisés, challenge, vérifications et arbitrages argumentés |
| Total | 100 |  |


Repères : absent 0 ; partiel ou mal justifié environ 50 % ; correct, vérifié et défendable 100 %. Seuil pédagogique conseillé : 70/100.

Les dix points IA évaluent contexte/prompt 2 ; erreurs/doublons repérés 3 ; recommandations acceptées/refusées avec justification 3 ; cible versus preuve et limites reconnues 2. Il ne suffit pas de joindre une conversation.

Une note différente du corrigé est acceptable si elle cite les faits et explique les conséquences sur le traitement. En revanche, une fuite avérée inventée, un risque juridique déclaré transféré intégralement ou une cible résiduelle présentée comme résultat réel doivent être corrigés avant validation pédagogique.

## 22. Corrigé formateur

Le guide séparé contient les dix risques, toutes les colonnes du registre, les justifications P/I, la matrice corrigée, les plans de réponse, coûts, ressources, contingences, cibles résiduelles, exemple COPIL et alternatives acceptables. Ne pas le consulter avant la remise du registre final.

## 23. Questions de débriefing

- Quelle différence entre risque et problème, et où avez-vous appliqué cette distinction ?
- Pourquoi séparer cause, événement et conséquence ?
- L’IA peut-elle déterminer seule P et I ? Quelles preuves lui manquent ?
- Comment éviter une sous-estimation ou un score alarmiste ?
- Qui doit être owner et qui exécute l’action ?
- Quelle différence entre prévention, correction et contingence ?
- Peut-on accepter un risque critique, avec quel mandat et quelles limites ?
- Comment mesurer l’efficacité avant de diminuer le score ?
- Pourquoi suivre le risque résiduel et les risques secondaires ?
- Quels risques viennent des données, du RAG, du LLM et des usages ?
- Pourquoi les droits d’accès et la conformité sont-ils des gates ?
- Quelles informations doivent remonter au COPIL ?
- Qu’apporte le PMO quand l’IA remplit rapidement un registre ?

## 24. Points de vigilance

### L’IA identifie, le PMO décide

Une matrice générée ne devient pas valide parce qu’elle est complète visuellement. Contrôler pertinence, couverture, doublons, sources, P/I, owners, faisabilité, coût, disponibilité, contrat et gates. Ne jamais présenter une politique ATOS ou une qualification réglementaire supposée comme une donnée confirmée.

### Faiblesses à détecter

| Sortie IA problématique | Contrôle humain |
| --- | --- |
| « Risque : mauvaise data » | Reformuler cause/événement/conséquence et donner la source |
| Tous les owners = chef de projet | Affecter le détenteur de maîtrise/pouvoir et distinguer action owner |
| « Avec RAG, les hallucinations disparaissent » | Demander jeu d’évaluation, citations et abstention ; garder le résiduel |
| « P4×I5 = 25 » | Calculer : 20 ; vérifier toute la colonne |
| « Une clause transfère la conformité au fournisseur » | Faire qualifier obligations et limites contractuelles |
| « 50 % de baisse du score = 50 % de pertes en moins » | Score ordinal : aucune conversion financière automatique |
| « Former toute l’entreprise demain » | Vérifier participants, disponibilité, coût et calendrier |
| « La prévention est planifiée, donc P=1 aujourd’hui » | Séparer cible, preuve et observation |

Le contrôle sécurité ne consiste pas à apprendre à attaquer un client. Les essais sont décrits au niveau de résultats attendus, sur données fictives et environnement autorisé.

### Adaptation de durée

Version complète : 180 min. Version compacte 150 min : préparer le contexte et la trame de risques, réduire ateliers 2/3/7, préserver le scoring, la contingence, le résiduel et les trente minutes finales. Version approfondie 210 min : ajouter tests de sensibilité, variantes de priorisation et revue entre groupes. Toute préparation supplémentaire est annoncée, pas cachée hors temps.
