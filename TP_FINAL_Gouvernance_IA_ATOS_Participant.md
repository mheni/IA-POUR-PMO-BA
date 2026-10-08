# TP FINAL — Construire une fiche de gouvernance IA pour un projet client ATOS

Dossier participant — Module « Gouvernance IA en environnement Microsoft » — Version octobre 2026

## 1. Présentation du TP

Vous êtes PMO/Business Analyst et devez préparer la revue de gouvernance d’un assistant IA. Le projet paraît proche de la production, mais le dossier contient des documents signés, des brouillons, des défauts et des preuves absentes. Votre mission n’est pas d’obtenir quinze cases vertes : elle est de produire une recommandation de passage défendable.

Principe : Cadrer → Gouverner → Contrôler → Auditer → Corriger → Valider → Décider.

Durée : 3 h 15 nettes, hors pauses. Sept ateliers successifs enrichissent la même fiche, puis quinze minutes sont réservées à sa finalisation. Travail en binômes PMO/BA ; échanger les rôles après la revue des données.

Livrable principal : « Fiche de gouvernance IA — Projet client ATOS », parties A à I, incluant exactement quinze contrôles et une décision recommandée pour Gate 6.

Le client ORION Services, les documents, budgets, configurations et incidents sont fictifs. Aucune politique, certification, procédure interne ni aucun contrat réel d’ATOS n’est supposé. Le dossier a fait l’objet de vérifications de cohérence pédagogique et de confrontation aux sources publiques citées ; il ne constitue ni avis juridique, ni audit de certification, ni validation d’un tenant Microsoft.

### Supports

Dossier Markdown participant ; guide formateur réservé ; fiche Markdown à remplir ; classeur Excel avec sources et zones d’analyse. Lire la section courante et les pièces utiles, pas l’intégralité du dossier avant de commencer. Aucune création de ressource Azure n’est nécessaire.

## 2. Public cible

PMO, BA, chefs de projet, coordinateurs, consultants transformation et responsables gouvernance. Les participants connaissent les bases de pilotage mais ne sont pas supposés juristes, DPO, RSSI ou administrateurs Azure.

## 3. Prérequis

Savoir lire un dossier projet, distinguer responsabilité et action, remplir un tableau et utiliser une IA autorisée. Disposer de copies de travail du classeur et de la fiche, avec accès à M365 Copilot ou un LLM autorisé testé avant la session. Si l’IA ne peut pas lire le fichier, copier uniquement les extraits fictifs pertinents.

Ne pas téléverser de données client réelles. Pas de PowerShell, de déploiement cloud, de tests offensifs ni de lecture obligatoire du texte intégral d’ISO/IEC 42001 dans le temps du TP.

## 4. Objectifs pédagogiques

Vous devez savoir relier étapes, livrables, Gates et autorités ; identifier les flux et classes de données ; vérifier l’existence de contrôles d’accès, de protection des données et de sécurité ; qualifier les preuves de validation IA ; préparer une revue de management inspirée d’ISO/IEC 42001 ; détecter les écarts ; proposer des actions ; distinguer avis PMO et décisions habilitées ; recommander GO, GO WITH CONDITIONS ou NO-GO avec justification.

L’IA aide à extraire, organiser et challenger ; elle ne confirme ni conformité juridique, ni configuration réelle, ni signature, ni certification.

## 5. Contexte du projet IA

ATOS accompagne ORION Services, groupe fictif B2B, pour un assistant de consultation de procédures, contrats et dossiers de service. Il recherche des sources, résume et prépare une réponse citée. Les réponses sensibles doivent être vérifiées par une personne ; aucun octroi de droit, diagnostic, recrutement ou autre décision autonome n’est dans le périmètre.

Budget de référence : 600 000 €. Trente utilisateurs pilotes autorisés pour l’expérimentation synthétique ; quatre cents utilisateurs cibles après autorisation. Date d’état : 19 novembre 2026. Gate 6 : 20 novembre. Production cible : 30 novembre, non autorisée à date.

Architecture proposée : application métier authentifiée via Entra ID ; corpus GED/SharePoint préparé pour Azure AI Search ; génération via Azure OpenAI ; journalisation/supervision Azure Monitor ; classification et gouvernance via Purview lorsque disponibles et configurées ; contrôle sécurité via les services Defender retenus. Fabric et Power Platform sont des variantes possibles, pas des composants obligatoires du cas. M365 Copilot est l’outil de préparation du dossier, pas un contrôle de sécurité de la solution.

Aucun modèle de fondation n’est entraîné dans ce pilote. Il s’agit de configuration LLM/RAG et de tests. Les noms de produits et capacités exactes doivent être vérifiés sur l’architecture choisie, les versions, licences et fonctions disponibles.

### Dossier documentaire fourni — extraits fictifs faisant foi dans l’exercice

| ID | Pièce | Contenu disponible | Domaine |
| --- | --- | --- | --- |
| E01 | Charte projet v1.2 signée le 02/09/2026 | Sponsor et PM client ont approuvé 600000 EUR, assistance documentaire et gain cible 20 % temps de recherche, baseline à mesurer. Aucun bénéfice mesuré encore. | Charte / G1 |
| E02 | Use Case et BRD v1.1 signés le 16/09/2026 | 400 utilisateurs cibles, 30 pilotes synthétiques ; pas de décision autonome. Critères : >=95 % cas corrects dans jeu représentatif de 100 cas, zéro erreur grave, zéro accès interdit. OCR externe et décisions autonomes exclus. | Besoins / G2 |
| E03 | RACI v0.9 | Sponsor autorise G6 sur avis obligatoire métier/sécurité et revue protection données. PM coordonne ; PMO suit ; BA clarifie. Owner exploitation indiqué TBC ; suppléant incident absent. Client responsable du traitement proposé, ATOS sous-traitant proposé, contrat à confirmer par juridique. | Rôles |
| E04 | Fiche classification IA v0.4 | Assistant LLM/RAG de consultation, validation humaine, criticité interne élevée. La case obligations réglementaires indique « faible risque car Microsoft » sans analyse approuvée. Aucun certificat ISO/IEC 42001 fourni. | Classification |
| E05 | Inventaire données v0.6 | Six sources listées. D3/D4 owners à confirmer ; toutes étiquetées Interne dans index ; conservation embeddings non définie ; qualité versions incomplète ; schéma de flux non mis à jour pour OCR. | Données |
| E06 | Export habilitations du 18/11/2026 | Application ouverte au groupe All-Employees de 1200 comptes au lieu des 30 pilotes autorisés ; index partagé sans liste de groupes autorisés documentée ; documents restreints présents. Aucun test négatif signé. | Accès |
| E07 | Architecture v0.8 et extrait configuration | Entra ID pour login, Azure AI Search pour RAG, Azure OpenAI pour génération, Purview envisagé, Defender envisagé, Azure Monitor partiel. Ressource en France ; type de déploiement génération Global. Annexe fictive client : prompts/documents traités en France sauf avenant approuvé ; aucun avenant. Connecteur OCR SaaS externe ajouté sans revue ni autorisation. Endpoint public sans revue réseau signée ; pas une preuve automatique de non-conformité technique. | Architecture |
| E08 | Note DPO du 10/11 et dossier RGPD v0.3 | Le DPO a conclu dans CE CAS que l’AIPD est requise avant le traitement cible ; travail non achevé. Finalités/base juridique, exercice des droits, conservation et chaîne sous-traitance/transferts en cours. Contrat sous-traitance et fournisseur OCR non approuvés. Aucun avis favorable final. | RGPD |
| E09 | Campagne de tests du 17/11/2026 | 100 cas : 80 répondables dont 76 corrects ; 20 nécessitant abstention dont 12 abstentions correctes ; 8 réponses non étayées, dont 3 graves. Résultat total correct 88. Pas de PV recette métier signé ; tests d’accès/injection incomplets. | Validation |
| E10 | Registre risques v0.5 | Risque fuite P4/I5 et hallucination P4/I5, owner vide. Risque données P4/I5 owner Data Lead. Colonne résiduel P1/I1 sur toutes les lignes sans preuve ni validation. Plan de réponse indique « utiliser Copilot pour vérifier ». | Risques |
| E11 | Dossier management IA v0.2 | Politique IA brouillon, inventaire d’obligations en cours, formation partielle, pas de périmètre management approuvé, revue de direction et audit interne non planifiés. Alertes qualité non testées. Pas de périmètre de certificat organisationnel fourni. | Gouvernance / audit |
| E12 | Readiness et runbook v0.3 | Notice utilisateur affirme 99 % fiabilité sans preuve, validation humaine décrite mais recours incomplet. Logs prompts/réponses complets retenus 365 j par défaut sans validation. Support owner TBC, incident IA et rollback non testés, aucune signature readiness. | Exploitation |


Chaque ID est une pièce d’exercice incluse ci-dessus et dans Pieces du classeur. Une phrase de l’IA n’est pas une nouvelle pièce. Les statuts « signé », « brouillon » et « absent » doivent rester distincts.

## 6. Rôle du participant

Le PMO garantit la cohérence du dossier, le suivi des écarts, les responsables, dates et preuves, et prépare la décision. Le BA vérifie le besoin, les cas, les limites, les utilisateurs, la recette et les impacts. Ils ne signent pas seuls un avis DPO, une acceptation RSSI ou un engagement contractuel.

À chaque contrôle, répondre : « Ai-je identifié la bonne exigence du cas, le bon responsable et une preuve suffisante, actuelle et approuvée ? »

Une conclusion « Non conforme » signifie ici que le contrôle de gouvernance n’est pas satisfait ou démontré. Elle ne constitue pas une décision d’autorité constatant une infraction légale ni une non-conformité de certification officielle.

## 7. Architecture de gouvernance

| Instance / rôle | Mission | Validation ou preuve |
| --- | --- | --- |
| Sponsor et COPIL | Arbitrer budget, périmètre, dates et passage G6 | Décision signée, avec réserves et périmètre |
| Project Manager | Coordonner cycle, dépendances et correction | Plan, RACI, escalades et readiness |
| PMO | Consolider contrôles, preuves, écarts et décisions | Checklist versionnée et journal de gate |
| BA / Business Owner | Exigences, limites, KPI, acceptation et responsabilité d’usage | BRD, critères et PV recette |
| Data Owner / Data Steward | Sources, classification, qualité et usages autorisés | Inventaire, décisions d’usage et qualité |
| Architecte / AI Lead | Flux, choix IA, versions et contrôles | Architecture, modèle/prompt/RAG et tests |
| Security Officer | Accès, sécurité, incident et avis de passage | Tests, revue et mandat suspension/reprise |
| Responsable du traitement / DPO / juridique | Décisions traitement, conseil protection données, contrats et obligations | Dossier RGPD, AIPD si requise, validations et contrats |
| Gouvernance IA / audit interne | Système de management, revues et amélioration | Politique, périmètre, revue, audit et actions |
| Exploitation / support / Change Manager | Monitoring, incidents, formation, changement et transfert | Runbook, support accepté et exercices |

COPROJ hebdomadaire : suivre actions et dépendances. Revue sécurité/données : qualifier les réserves. COPIL : arbitrer les engagements ; il ne peut pas déclarer une obligation légale non applicable sans les fonctions compétentes. Revue exploitation : accepter le transfert et les moyens.

RACI : un accountable par décision ; plusieurs responsables exécutants sont possibles. Pour G6, le sponsor signe la décision du scénario seulement après les avis obligatoires métier/sécurité et validation protection des données par le responsable du traitement sur conseil DPO/juridique. Aucun outil Microsoft ne devient accountable.

## 8. Cycle de vie du projet IA

| Étape | Libellé | Activités | Livrables | Jalon | Autorité | État du dossier |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Initialisation | Cadrer besoin, sponsor, périmètre, gouvernance et risques | Charter ; stakeholders ; risques ; classification IA | G1 Go projet | Sponsor | 02/09 : approuvé E01 |
| 2 | Cadrage métier | Définir cas, utilisateurs, KPI, limites et acceptance | BRD ; Use Case ; KPI ; critères | G2 Use Case validé | Business Owner | 16/09 : approuvé E02 |
| 3 | Données | Inventorier, classifier, qualifier accès/qualité/conservation/provenance | Inventory ; classification ; access matrix ; plan ; dossier RGPD | G3 Données autorisées | Data Owner et responsable traitement sur revues sécurité/DPO | Autorisation limitée corpus synthétique ; données réelles non validées |
| 4 | Conception IA/Microsoft | Concevoir flux, modèles, RAG, identité, réseau, logs, coûts | Architecture ; design IA ; sécurité ; risks | G4 Architecture validée | Architecte + Security Officer | Revue ouverte ; pas d’accord sur périmètre réel/Global/OCR |
| 5 | Développement / expérimentation | Configurer et documenter versions/prompts, réaliser tests | Prototype ; docs ; jeux et rapports tests | G5 Prêt validation | PM + QA Lead | Prototype synthétique disponible ; conditions réelles non autorisées |
| 6 | Validation / audit | Tester métier, IA, données, sécurité et conformité ; collecter preuves | Test Report ; Risk Review ; assessment ; dossier audit | G6 Go production / No-Go | Sponsor avec avis obligatoires des fonctions habilitées | Gate du 20/11 soumis à l’exercice |
| 7 | Production | Déployer accès, monitorer, former, support et repli | Readiness ; runbook ; support ; monitoring | G7 Production effective | PM + Exploitation sur autorisation G6 | Cible 30/11 non autorisée à date |
| 8 | Exploitation / amélioration | Suivre qualité/drift/incidents/changements et revoir risques/audit | Monitoring ; Risk Review ; Audit Review ; Improvement Plan | Revues périodiques et gate de changement | Exploitation + gouvernance IA | À préparer avant G6 |


Étape 8 : pas de huitième Gate obligatoire demandé ; prévoir revues périodiques et un nouveau gate pour changement majeur. Modifier modèle, prompts, données, droits ou finalité peut exiger une nouvelle évaluation, recette et revue conformité.

Les Gates ne sont pas tous acquis parce que le développement avance. Un accord G3 limité aux données synthétiques ne permet pas d’indexer automatiquement les données réelles. Un prototype G5 ne répare pas un G3/G4 incomplet.

## 9. Livrables et jalons

Pour chaque étape, compléter : livrable, version, owner, valideur, preuve de sortie, Gate, date et décision. Vérifier les prérequis antérieurs à G6, pas seulement la dernière campagne de tests.

| Passage | Critères de sortie minimum du cas |
| --- | --- |
| G1 | Charte, sponsor, périmètre, gouvernance et premiers risques approuvés |
| G2 | Use Case, limites, utilisateurs, KPI et critères mesurables signés |
| G3 | Corpus éligible, owners, classification, droits, qualité et revue données/RGPD autorisant ce périmètre |
| G4 | Flux et sécurité approuvés, lieux de traitement qualifiés, fournisseurs évalués |
| G5 | Versions documentées, tests exécutés et écarts attribués, solution soumise à validation |
| G6 | Critères IA/métier/sécurité satisfaits, réserves bloquantes levées, readiness et avis requis obtenus |
| G7 | Déploiement autorisé, accès validés, vérifications post-déploiement et support acceptés |
| Revues exploitation | Mesures, incidents, changements, risques, audit et amélioration suivis |

Une présence de fichier ne remplace pas l’approbation. Une décision de passage précise ce qui est autorisé : stage, corpus, utilisateurs, environnement et conditions.

## 10. Gouvernance des données

### Six sources à analyser

| ID | Source | Classe proposée | Données personnelles | Owner | Finalité | Conservation | Origine | Vigilance |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| D1 | Notices publiques produit | Public | Pas de données personnelles dans l’échantillon | Documentation produit | Consultation de référence | Durée validité version à définir | Site public | Vérifier droits d’usage malgré accès public |
| D2 | Procédures internes | Interne | Auteurs/signataires professionnels possibles | Direction opérations | RAG procédures | Validité + archivage à approuver | SharePoint interne | Contrôle version et retrait documents périmés |
| D3 | Contrats clients | Confidentiel | Noms, signatures et contacts | Juridique client, à confirmer | Clauses nécessaires uniquement | Règle contrat et copies indexées à valider | GED restreinte | Minimiser, habilitations par dossier |
| D4 | 100000 tickets/dossiers de service | Confidentiel | Identifiants, courriels, téléphones et commentaires libres | Service clients, à confirmer | Assistance sur dossiers autorisés | Durée tickets et dérivés à approuver | GED service | Réutilisation, minimisation, droits et RAG à qualifier |
| D5 | Pièces RH/médicales trouvées dans export | Restreint proposé | Santé : catégorie particulière, hors finalité prévue | RH client | Aucun usage autorisé pour cet assistant | Quarantaine/exclusion selon décision habilitée | Répertoire joint export | Ne pas indexer ; isoler et saisir DPO/Data Owner |
| D6 | Documents fournisseur sous licence / OCR SaaS | Confidentiel/externe à qualifier | Potentielles données personnelles contenues dans les fichiers envoyés | Achats + propriétaire des documents | OCR additionnel non approuvé | Contrat licence et conservation tiers à examiner | Source externe | Droits PI, sous-traitance, sécurité et transferts à revoir |


La classe de confidentialité et la présence de données personnelles sont deux axes différents. « Public » ne garantit pas l’absence de données personnelles ou de droits de propriété intellectuelle. « Confidentiel » n’est pas synonyme de catégorie particulière au sens du RGPD. Les données de santé constituent une catégorie particulière ; des coordonnées professionnelles restent des données personnelles. [CNIL : donnée sensible](https://www.cnil.fr/fr/definition/donnee-sensible).

La pseudonymisation n’est pas une anonymisation : les données pseudonymisées restent personnelles. Supprimer un nom ne prouve pas que la réidentification est impossible. [CNIL : anonymisation](https://www.cnil.fr/fr/technologies/lanonymisation-de-donnees-personnelles).

### Analyse attendue

Pour D1–D6 : owner, classification proposée puis validée, finalité, pertinence, droits, conservation, qualité, origine/provenance, usage IA, protections, tiers et transferts. Décider « utilisable sous preuve », « à qualifier » ou « exclure/quarantainer » selon le contexte ; ce n’est pas une autorisation juridique du participant.

Inventorier aussi chunks, embeddings, index, caches, historiques de conversation et logs. Leur conservation/suppression et leurs accès ne se déduisent pas automatiquement de ceux de la GED. Traçabilité attendue : document source/version → préparation/chunk → index → retrieval → version modèle/prompt → réponse et mesure, en minimisant les données journalisées.

D5 est hors finalité du pilote. Il faut empêcher son utilisation, saisir Data Owner/DPO et contrôler les copies dérivées ; ne pas proposer d’élargir la finalité pour « profiter de toutes les données ».

## 11. RGPD — contrôles PMO

| Vérification | Responsable compétent | Preuve attendue / question PMO |
| --- | --- | --- |
| Finalité et réutilisation | Responsable du traitement + juridique/DPO | Finalités documentées, compatibilité et périmètre |
| Base légale | Responsable du traitement sur conseil juridique/DPO | Choix justifié ; pas « consentement » par défaut |
| Catégories particulières | DPO/juridique + Data Owner | Identification et conditions de traitement ; exclusion D5 du pilote |
| Minimisation | Business Owner + Data Owner | Données nécessaires et exclusions effectivement appliquées |
| Conservation | Responsable traitement + exploitation | Durées source/index/cache/logs et procédure de suppression |
| Information et droits | Responsable traitement + DPO | Notices, procédure d’accès/rectification/effacement selon exigences applicables |
| Sous-traitants | Juridique/achats + responsable traitement | Qualification rôles, contrats, sous-traitants ultérieurs et instructions |
| Transferts et localisation | Juridique/DPO + architecte | Flux, lieux de traitement et garanties applicables |
| Sécurité | Security Officer + responsable traitement | Mesures et tests proportionnés |
| Traçabilité | Exploitation + Data Owner + DPO | Journaux nécessaires, accès, durées et provenance |
| AIPD si requise | Responsable du traitement, conseil DPO | Décision de nécessité ; analyse, mesures, risque résiduel et validations |
| Responsabilités | Juridique + gouvernance | Rôles réels confirmés ; les titres commerciaux ne suffisent pas |

Une AIPD est requise pour un traitement susceptible d’engendrer un risque élevé pour les droits/libertés ; toute IA n’est pas automatiquement soumise à la même conclusion. Dans ce TP, E08 contient une note DPO concluant qu’elle est requise pour le traitement cible : cette preuve de nécessité ne vaut pas AIPD achevée. Elle doit intervenir avant la mise en œuvre du traitement concerné, pas seulement avant production. [CNIL : AIPD si nécessaire](https://www.cnil.fr/fr/realiser-une-analyse-dimpact-si-necessaire).

Demander une décision habilitée pour l’expérimentation avec données réelles aussi. L’environnement non-production ne constitue pas une exception automatique au RGPD.

## 12. Sécurité et contrôle des accès

Vérifier qui peut se connecter, lire une source, interroger un index, administrer l’application et consulter les logs. Entra ID pour l’authentification ne prouve pas le respect des habilitations documentaires au retrieval. Les mécanismes de filtrage/permissions doivent être configurés et testés selon la solution choisie ; les possibilités natives et leur disponibilité varient. [Microsoft : droits documentaires et configuration](https://learn.microsoft.com/en-us/azure/foundry-classic/openai/how-to/on-your-data-configuration).

Demander comptes/groupe pilotes, moindre privilège, identités applicatives, révocation, accès administrateur, secrets, réseau/chiffrement, tests négatifs et preuve d’une réponse qui ne révèle pas un document non autorisé. Ne pas conclure « conforme » parce qu’un service Defender ou Purview est simplement cité.

### Résidence, traitement et contrats

La documentation Microsoft distingue les types de déploiement : un déploiement Global peut traiter les prompts/réponses dans plusieurs géographies, tandis que la localisation au repos et les options régionales/DataZone répondent à d’autres règles. Une ressource située en France ne prouve donc pas à elle seule que tout traitement reste en France. Le type réellement configuré et les fonctionnalités utilisées doivent être examinés. [Microsoft : confidentialité et localisation](https://learn.microsoft.com/en-us/azure/foundry/responsible-ai/openai/data-privacy).

E07 contient une contrainte contractuelle fictive « traitement en France sauf avenant approuvé » et un type Global. Il faut corriger/qualifier ou obtenir une décision habilitée, pas déclarer automatiquement une violation du RGPD à partir du mot Global. La conformité du service ne remplace pas celle de la configuration et du traitement client.

Endpoint public : déclencher une revue d’exposition et des mesures ; il ne constitue pas, seul, une preuve universelle de non-conformité. Des endpoints privés peuvent être une mesure adaptée à valider avec l’architecte et le Security Officer.

## 13. Gouvernance IA

Documenter usage, limites, version/déploiement modèle, paramètres, prompts, retriever, corpus et changements. Distinguer criticité interne, qualification réglementaire du système et classification des données. « Azure = faible risque » n’est une justification pour aucun de ces trois axes.

Contrôles : réponses étayées, qualité par segment, erreurs graves, abstention, biais de couverture, robustesse/injection, droits, latence/coût, validation humaine et signalement. Citations et explication des limites facilitent la compréhension ; elles ne prouvent pas l’explication complète du fonctionnement interne du LLM ni sa justesse.

Risque initial → traitement → preuve → risque résiduel observé → acceptation habilitée. Une cible de risque réduite sans tests n’est pas une amélioration acquise. Pour l’exploitation, fixer cadence, owners et déclencheurs : erreurs graves, accès interdit, changement de modèle/corpus, qualité dégradée et coût/quota.

## 14. Audit ISO/IEC 42001

ISO/IEC 42001 porte sur un système de management de l’IA : politiques, objectifs, rôles, processus, risques, information documentée, suivi et amélioration. Ce n’est pas une liste de paramètres Azure. L’ISO décrit notamment une démarche de type Plan–Do–Check–Act et un périmètre organisationnel. [ISO : ISO/IEC 42001:2023](https://www.iso.org/standard/42001).

| Thème de revue pédagogique | Ce que le PMO demande |
| --- | --- |
| Contexte et périmètre | Activités/systèmes et acteurs couverts ; obligations et attentes |
| Politique et leadership | Politique approuvée, ressources et responsabilités |
| Risques et impacts | Méthode, critères, effets sur organisation/personnes et traitement |
| Objectifs | Mesures, responsables, fréquence et revue |
| Compétences | Formation et habilitations des personnes concernées |
| Documentation | Versions, approvals, disponibilité et conservation des preuves |
| Cycle de vie | Contrôles de conception, tests, données, fournisseurs et changements |
| Suivi et revue | Indicateurs, audit, revue de direction et non-conformités |
| Amélioration | Actions, preuves de clôture et vérification d’efficacité |

Cette revue est inspirée de thèmes publics du standard. Elle ne reproduit pas toutes ses exigences ni une déclaration d’applicabilité complète. Une vérification de conformité normative exhaustive nécessite le texte applicable et des auditeurs compétents.

Le cas ne demande pas un certificat ISO pour autoriser tout projet. Si une certification est revendiquée, vérifier organisme, validité et périmètre couvert ; ne pas supposer qu’un service cloud certifié certifie le projet client ou son système de management.

## 15. Utilisation de l’IA

Utiliser les cinq prompts des ateliers. Fournir les pièces et le scope, demander une source E01–E12 pour chaque constat, conserver le journal et décider humainement. L’IA ne voit pas une signature ou un tenant qui ne lui a pas été fourni.

### L’IA propose, le PMO vérifie

À la remise, présenter :

- Deux informations que l’IA ne peut pas confirmer seule : configuration effective du tenant et approbation des parties prenantes, par exemple.
- Deux éléments exigeant une preuve documentaire : AIPD et tests d’habilitations/recette, par exemple.
- Deux décisions nécessitant des humains habilités : autorisation du traitement et décision G6, par exemple.
- Une réponse juridiquement/techniquement trompeuse possible : « Azure en France implique tout traitement en France » ou « checklist remplie = certification ISO ».

IA générative ≠ preuve de conformité.

### Chronologie 195 minutes

| Temps | Atelier | Fiche enrichie |
| --- | --- | --- |
| 00–25 | 1 Structurer le projet | A/B/C et Gates |
| 25–55 | 2 Données | D et contrôles data |
| 55–80 | 3 RGPD | D/F et validations requises |
| 80–110 | 4 Audit IA | E/F et sécurité/IA/management |
| 110–140 | 5 Checklist | G, quinze contrôles |
| 140–160 | 6 Écarts | I et priorités |
| 160–180 | 7 Décision | H, recommandation et réserves |
| 180–195 | Finalisation | A–I, journal et remise |

## 16. Atelier 1 — Structurer le projet

### Objectif pédagogique

Associer objectifs, étapes, livrables et responsabilités aux Gates.

### Durée

25 minutes, 00–25.

### Contexte

Le comité voit un prototype mais ne sait pas quels prérequis antérieurs sont autorisés.

### Compétence mobilisée

Structuration projet, analyse des parties prenantes et décision par jalon.

### Données fournies

E01–E04, E07, cycle des huit étapes et rôles du cas.

### Consigne participant

Compléter A/B/C ; écrire pour chaque étape un owner, un livrable, un valideur et un critère de passage. Préciser le Gate évalué et les autorisations limitées déjà obtenues. Ne pas transformer un rôle proposé en responsabilité juridique confirmée.

### Prompt IA — 1 Analyse initiale

```text
Analyse ce contexte fictif ORION IA réalisé avec ATOS [coller contexte et E01–E12].
Identifie enjeux de gouvernance, données, sécurité, conformité et risques.
Structure huit étapes, livrables, Gates, owners et validations.
Pour chaque constat, cite l’ID de pièce ; distingue signé, brouillon et absent.
N’invente ni politique ATOS, ni responsabilité contractuelle acquise,
ni classification réglementaire. Liste les informations à faire confirmer.
```

### Manipulations / Analyse

Lire Pieces ; compléter Fiche_A_I et Cycle dans la fiche Markdown ou sa copie de travail. Utiliser la proposition IA comme brouillon, puis contrôler E01–E04. Identifier les prérequis G3/G4 non validés sur périmètre réel.

### Livrable attendu

A/B/C renseignées et tableau des Gates.

### Critères de réussite

Huit étapes, sept Gates et revues exploitation ; décisions rattachées à des autorités ; scope de chaque accord indiqué.

### Points de vigilance

PMO ≠ sponsor/DPO/RSSI ; prototype ≠ GO ; données synthétiques ≠ autorisation de données réelles.

### Débriefing

Pourquoi la gouvernance commence-t-elle avant la configuration du LLM ? Quel Gate antérieur doit être réexaminé ?

## 17. Atelier 2 — Gouvernance des données

### Objectif pédagogique

Analyser les sources et dérivés, la classification et l’usage autorisé.

### Durée

30 minutes, 25–55.

### Contexte

Le corpus est étiqueté Interne alors qu’il mêle contrats, contacts et pièces hors finalité.

### Compétence mobilisée

Inventaire, classification multi-axes, qualité, accès, conservation et provenance.

### Données fournies

D1–D6 et E05/E06/E07/E12.

### Consigne participant

Pour les six sources, compléter Donnees_Analyse ; proposer classification, owner, usage, accès, conservation et preuve. Préciser le sort des dérivés. Définir au moins trois écarts potentiels liés aux données.

### Prompt IA

```text
Analyse ces six sources [coller D1–D6] avec E05/E06/E12.
Sépare confidentialité, données personnelles et catégories particulières.
Pour chaque source, propose owner, finalité, accès, conservation des dérivés,
qualité, provenance et décision d’usage conditionnelle.
Ne choisis pas une durée légale sans source. Ne confonds pas pseudonymisation
et anonymisation. Signale les données à exclure et les validations nécessaires.
```

### Manipulations / Analyse

Remplir Donnees_Analyse et D ; comparer classification proposée et index réel du dossier. Relier chaque observation à C05/C06/C07/C13. Indiquer que D5 doit être isolée/exclue sous supervision compétente.

### Livrable attendu

Inventaire évalué, usages conditionnels et écarts data tracés.

### Critères de réussite

Six sources traitées ; distinction public/personnel/sensible ; owners et règles de dérivés ; pas de conservation arbitraire.

### Points de vigilance

Purview cité n’est pas preuve de classification active ; embeddings/index/logs restent à examiner ; donnée externe publique peut avoir des droits d’usage.

### Débriefing

Qui valide la classification ? Pourquoi la suppression d’un fichier source ne prouve-t-elle pas la suppression de ses copies indexées ?

## 18. Atelier 3 — RGPD

### Objectif pédagogique

Vérifier contrôle, expert et preuve sans émettre un avis juridique.

### Durée

25 minutes, 55–80.

### Contexte

Le PM annonce « données dans Azure, donc RGPD couvert » ; le dossier DPO n’est pas terminé.

### Compétence mobilisée

Repérage des exigences de protection des données et coordination des validations.

### Données fournies

E03/E05/E07/E08/E12 et tableau contrôles RGPD.

### Consigne participant

Compléter RGPD_PMO. Identifier finalité/base/roles/minimisation/conservation/droits/fournisseurs/transferts/AIPD. Distinguer contrôle requis dans le cas et obligation à qualifier. Reporter les preuves manquantes dans F et C08.

### Prompt IA — 4 RGPD

```text
Analyse ces traitements fictifs [coller sources et E03/E05/E07/E08/E12].
Identifie les points que PMO doit faire vérifier par DPO, juridique,
responsable du traitement et sécurité. Donne contrôle, responsable, preuve,
question ouverte et impact sur Gate 6. Dans E08, une note DPO conclut
à une AIPD requise mais non terminée : ne la présente pas comme validée.
Ne donne pas un avis juridique définitif et ne choisis pas le consentement par défaut.
Ne déduis ni licéité ni absence de transfert de la marque Microsoft.
```

### Manipulations / Analyse

Renseigner les douze thèmes ; écrire les questions à transmettre aux experts ; vérifier que les sous-traitants et l’OCR externe sont inclus. Expliquer pourquoi l’autorisation d’expérimentation réelle aussi doit être revue.

### Livrable attendu

D/F enrichies, contrôle C08 préqualifié et plan de validation.

### Critères de réussite

AIPD du cas traitée ; bon responsable ; pas d’absence de preuve déclarée conforme ; contrat/résidence et RGPD distingués.

### Points de vigilance

DPO conseille, responsable du traitement décide ; AIPD requise ne signifie pas réalisée ; expérience hors production n’exempte pas le traitement.

### Débriefing

Quelles questions ne pouvez-vous pas trancher seul ? Quelle pièce prouverait la levée d’une réserve ?

## 19. Atelier 4 — Audit IA

### Objectif pédagogique

Préparer une revue de gouvernance du management et des contrôles IA/Microsoft.

### Durée

30 minutes, 80–110.

### Contexte

La fiche promet conformité ISO et 99 % de fiabilité alors que tests, politique et runbook sont incomplets.

### Compétence mobilisée

Revue de preuves, gestion des risques et compréhension du système de management IA.

### Données fournies

E04/E07/E09/E10/E11/E12 et thèmes de revue ISO.

### Consigne participant

Examiner politique/périmètre/rôles/objectifs/risques/compétences/documentation/suivi/audit/amélioration. Relever cinq écarts d’audit potentiels ; compléter cinq risques de gouvernance ; qualifier sécurité, tests, transparence et exploitation.

### Prompt IA — 3 Audit

```text
Agis comme un préparateur de revue de gouvernance IA, pas un certificateur.
Analyse ces pièces [coller E04/E07/E09/E10/E11/E12] au regard des thèmes
publics d’un système de management IA inspiré d’ISO/IEC 42001.
Produis thème, constat, preuve disponible/manquante, owner et action.
Ne prétends pas vérifier toutes les exigences de la norme ni fournir certification.
Ne cite pas un numéro de clause non vérifié. Distingue système de management,
contrôles techniques et conformité juridique. Contrôle également les tests,
versions, risques résiduels et l’exploitation du projet.
```

### Manipulations / Analyse

Compléter Audit_IA, Risques et F. Recalculer 88/100 tests corrects et vérifier zéro erreur grave non satisfait. Contrôler région/type de déploiement, accès, versions/prompts, fournisseurs et logs. Relier les actions aux risques.

### Livrable attendu

E/F renseignées, dossier de revue et réserves documentées.

### Critères de réussite

ISO traité comme management ; risques avec owners ; erreurs tests détectées ; pas de promesse de certification ni de configuration conforme sans preuve.

### Points de vigilance

Ressource France ≠ traitement Global France ; service certifié ≠ client certifié ; règle de génération et source citée ≠ réponse toujours exacte.

### Débriefing

Une application techniquement disponible peut-elle être non prête au go-live ? Quelle preuve manque pour parler d’amélioration du risque ?

## 20. Atelier 5 — Checklist 15 points

### Objectif pédagogique

Consolider quinze contrôles précis, reliés aux preuves et aux actions.

### Durée

30 minutes, 110–140.

### Contexte

Le sponsor veut un document court, sans perdre la traçabilité vers le dossier détaillé.

### Compétence mobilisée

Consolidation PMO, qualification de statut et challenge des conclusions.

### Données fournies

Analyses des ateliers 1–4, E01–E12 et quinze contrôles ci-dessous.

### Consigne participant

Compléter exactement quinze lignes : ID, contrôle, question, responsable, preuve, statut, écart, action et date. Référencer version/ID et approbation attendue. Ne pas créer un seizième contrôle pour chaque détail : placer les sous-vérifications dans la preuve/action.

### Prompt IA — 2 Challenge gouvernance

```text
Challenge notre fiche et ces quinze contrôles [coller fiche/checklist],
avec le dossier de preuve [coller E01–E12]. Repère contrôles oubliés,
responsables mal attribués, risques mal couverts et preuves insuffisantes.
Conserve exactement quinze contrôles mais propose des sous-vérifications.
Pour chaque critique, cite la pièce ou explique l’absence d’information.
Ne transforme pas un brouillon ou un texte généré en preuve validée.
Propose un statut et une action sans décider à la place des experts.
```

### Manipulations / Analyse

Compléter Checklist_15 puis G. Utiliser les quatre statuts définis ci-dessous. Faire une revue croisée : chaque binôme justifie trois statuts et corrige une conclusion IA ou valide explicitement une proposition.

### Livrable attendu

Checklist 15 points renseignée et journal IA.

### Critères de réussite

Quinze lignes, mêmes critères de statut, sources et dates, aucune NA sans justification.

### Points de vigilance

Un ratio de cases conformes n’est pas une autorisation. Un écart de forme mineur et un défaut de sécurité n’ont pas le même pouvoir bloquant.

### Débriefing

Qu’est-ce qui fait la suffisance d’une preuve ? Pourquoi ne pas déclarer NA un contrôle dont le dossier manque ?

### Les quinze contrôles à renseigner

| ID | Contrôle | Question PMO | Responsable proposé | Preuve attendue |
| --- | --- | --- | --- | --- |
| C01 | Business Case / objectifs IA | Les bénéfices, mesures et limites sont-ils approuvés ? | Sponsor client | E01 charte signée avec objectifs et budget |
| C02 | Périmètre et cas d’usage | Les utilisateurs, exclusions et critères de succès sont-ils validés ? | Client Business Owner | E02 Use Case et critères signés |
| C03 | Parties prenantes et responsabilités | Owners, pouvoirs de gate et responsabilités de traitement sont-ils attribués ? | Project Manager | E03 RACI et mandats de décision |
| C04 | Classification du système IA | L’usage, le rôle des acteurs et les obligations applicables sont-ils qualifiés ? | Responsable conformité client | E04 fiche classification et revue juridique |
| C05 | Gouvernance des données | Les sources, owners, finalités, qualité, conservation et provenance sont-ils documentés ? | Data Owner client | E05 inventaire et plan de gouvernance |
| C06 | Classification des données | Toutes les catégories et pièces exclues sont-elles identifiées et protégées ? | Data Owner client | E05/E06 classification et corpus éligible |
| C07 | Accès et sécurité | Les habilitations sont-elles minimales, propagées et prouvées de bout en bout ? | Security Officer | E06/E07 matrice droits et tests négatifs |
| C08 | RGPD / protection des données | Le responsable du traitement a-t-il validé les contrôles et levé les réserves DPO ? | Responsable du traitement client | E08 dossier RGPD, AIPD et décisions |
| C09 | Risques IA | Les risques ont-ils owners, réponses, déclencheurs et acceptation résiduelle ? | Project Manager / AI Lead | E10 registre et revue de risques |
| C10 | Architecture et sécurité Microsoft | Le périmètre, flux, régions/types de déploiement et protections sont-ils approuvés ? | Architecte + Security Officer | E07 architecture et preuves de configuration |
| C11 | Tests et validation | Les critères métier, données, sécurité et IA sont-ils satisfaits et signés ? | Client Business Owner + QA Lead | E09 résultats, écarts et PV de recette |
| C12 | Transparence / explicabilité pertinente | Les limites, citations, abstention, recours et validation humaine sont-ils explicites ? | Business Analyst / Business Owner | E02/E12 parcours et notice validés |
| C13 | Monitoring et traçabilité | Des mesures, alertes, versions et logs proportionnés sont-ils testés ? | Responsable exploitation | E11/E12 monitoring, lineage et preuves de tests |
| C14 | Gouvernance / audit ISO/IEC 42001 | Le dossier relie-t-il politique, périmètre, responsabilités, risques, contrôles et amélioration ? | Responsable gouvernance IA | E11 dossier management et preuves de revue |
| C15 | Go-Live et gouvernance post-production | Support, incidents, rollback, formation et revalidation sont-ils opérationnels ? | Project Manager + Exploitation | E12 readiness/runbook et simulation incident |


### Statuts de la checklist

| Statut | Règle |
| --- | --- |
| Conforme | Contrôle applicable satisfait, preuve suffisante/actuelle/approuvée pour le périmètre de gate |
| Partiellement conforme | Contrôle engagé et preuves partielles, mais éléments ou validation nécessaires manquent |
| Non conforme | Exigence de contrôle non satisfaite, défaut démontré ou preuve requise absente |
| Non applicable | Hors périmètre justifié et validé par l’owner/autorité compétente ; jamais absence de travail |

Si l’information est inconnue, écrire « preuve à obtenir » dans l’écart et attribuer une action. Ne pas faire disparaître le contrôle sous NA. Ces statuts sont pédagogiques et portent sur la maîtrise du contrôle, pas sur une sanction juridique.

## 21. Atelier 6 — Analyse des écarts

### Objectif pédagogique

Hiérarchiser les défauts et définir un plan correctif clôturable.

### Durée

20 minutes, 140–160.

### Contexte

La date cible est proche ; les équipes proposent de documenter les sujets après production.

### Compétence mobilisée

Analyse d’écart, criticité de gouvernance, traçabilité et dépendances des corrections.

### Données fournies

Checklist, pièces et règles de gate.

### Consigne participant

Identifier au moins huit écarts matériels. Pour chacun, ID, contrôle lié, source, conséquence, owner, action, date, preuve de clôture et caractère bloquant G6. Consolider les actions qui corrigent plusieurs contrôles.

### Prompt IA

```text
À partir de cette checklist [coller] et du dossier [coller], propose un plan
de correction priorisé : écart, contrôles concernés, responsable, date cible,
preuve de clôture et bloquant G6 oui/non, avec justification.
Distingue urgence, dépendances et revue juridique requise.
Ne propose pas un délai garanti ni un budget inventé ; ressources à confirmer.
Ne clôture pas un écart parce que son action est seulement prévue.
```

### Manipulations / Analyse

Compléter Ecarts et Actions ; numéroter EC/A ; relier C08 à l’AIPD, C07 à accès/tests et C10 à flux/contrat/fournisseur. Fixer une cible de remédiation entre 21 et 27/11, en la marquant proposition à confirmer, pas garantie de tenir le 30/11.

### Livrable attendu

Plan I avec priorités, dépendances et preuves attendues.

### Critères de réussite

Au moins huit écarts sourcés ; actions attribuables ; distinction prévu/exécuté/vérifié ; contrôles bloquants visibles.

### Points de vigilance

Ne pas planifier AIPD après un traitement non autorisé ; aucune communication de données réelle à l’OCR sans autorisation ; pas de correction purement documentaire d’un défaut effectif d’accès.

### Débriefing

Quelle correction doit précéder les retests ? Quel owner a réellement le pouvoir de lever la réserve ?

## 22. Atelier 7 — Go / Go with Conditions / No-Go

### Objectif pédagogique

Émettre une recommandation défendable et reconnaître le pouvoir du comité.

### Durée

20 minutes, 160–180.

### Contexte

Le sponsor demande si le projet peut franchir G6 malgré le délai proche.

### Compétence mobilisée

Décision sur preuves, gestion des réserves et arbitrage de scope.

### Données fournies

Checklist, écarts et règles ci-dessous ; une carte « dossier remédié » peut être distribuée par le formateur après votre première décision.

### Consigne participant

Choisir une recommandation pour G6 et le périmètre réel. Citer les blockers, les autorisations manquantes, les actions et la nouvelle revue. Puis comparer une situation où seuls des écarts mineurs non bloquants restent ouverts. Définir ce qui est autorisé et interdit.

### Prompt IA — 5 Go / No-Go

```text
À partir des quinze contrôles [coller], écarts [coller] et règles de gate [coller],
propose GO, GO WITH CONDITIONS ou NO-GO pour Gate 6, périmètre réel et production.
Cite chaque contrôle bloquant et la preuve nécessaire pour le lever.
Ne fais pas de moyenne des statuts ; une condition ne peut contourner un blocker.
Distingue recommandation PMO, validation expert et décision du sponsor.
Ne traite pas les dates cibles ni les actions prévues comme des preuves acquises.
Si un périmètre réduit synthétique est proposé, précise qu’il ne vaut pas GO production réel.
```

### Manipulations / Analyse

Renseigner Decision/H. Valider/rejeter le conseil IA avec pièces. Conserver les avis et signatures attendus ; vous n’êtes pas autorisé à inscrire « signé » sans preuve. Comparer la carte remédiée si elle est disponible.

### Livrable attendu

Recommandation motivée, conditions, interdictions, autorités et date de nouvelle revue.

### Critères de réussite

Gate et scope précis, blockers explicites, distinction entre conseil/approbation/décision, pas de GO motivé seulement par le délai.

### Points de vigilance

GO WITH CONDITIONS n’est pas un mécanisme pour différer un contrôle obligatoire. Un report est préférable à une fausse attestation.

### Débriefing

Quelle modification du dossier ferait évoluer votre recommandation ? Qui signe réellement le gate ?

### Règles de passage du cas

GO : tous les contrôles applicables nécessaires au gate sont satisfaits, NA validés, avis/signatures disponibles et aucun écart bloquant.

GO WITH CONDITIONS : uniquement des réserves mineures non bloquantes, avec owner/date/preuve, portée de l’autorisation et date de contrôle. Aucun traitement ou accès non autorisé, obligation non satisfaite, réserve sécurité grave, recette obligatoire absente ou readiness critique manquante ne peut être différé sous cette étiquette.

NO-GO : au moins un blocage obligatoire, risque critique non accepté par autorité compétente, ou preuve indispensable absente. Les écarts sur accès, données personnelles/AIPD requise, lieux de traitement et fournisseur non approuvés, tests graves, incident/support et critères métier sont bloquants dans ce dossier. Les points management requis par le gate du cas doivent aussi être démontrés ; aucune certification externe n’est demandée.

Bloquant n’est pas déterminé uniquement par le statut : un écart de mise en forme peut être mineur ; un PC « validation requise absente » peut bloquer. La liste des blockers est justifiée dans Ecarts/Decision, pas déduite d’un pourcentage global.

## 23. Livrable final

Fiche A–I : A identification ; B gouvernance ; C cycle ; D données ; E risques ; F audit/conformité ; G checklist quinze points ; H décision ; I actions. Utiliser la fiche Markdown fournie comme livrable principal ; Excel apporte le détail et les pièces.

Finalisation, 180–195 : contrôler noms/versions/IDs, compléter champs manquants, vérifier les liens entre écarts/actions/contrôles, rédiger les limites et la note IA, puis remettre fiche et classeur. Ne pas remplacer un « à confirmer » légitime par un fait inventé.

La partie H distingue recommandation du groupe et espaces réservés aux validations/signatures : la remise n’est pas une décision de production réelle.

## 24. Critères d’évaluation

| Critère | Points | Éléments évalués |
| --- | --- | --- |
| Structuration du projet IA | 10 | Cycle cohérent, responsabilités et continuité jusqu’en exploitation |
| Livrables et jalons | 10 | Preuves de sortie, autorités et dépendances des Gates |
| Gouvernance des données | 15 | Six sources, classification, owners, qualité, conservation et dérivés |
| RGPD | 10 | Contrôles/experts/preuves ; AIPD du cas et absence d’avis juridique inventé |
| Sécurité et accès | 10 | Moindre privilège, filtrage documentaire, tests, flux/résidence et protections |
| Risques IA | 10 | Owners, réponses, preuves et distinction cible/observé |
| Audit / ISO/IEC 42001 | 15 | Système de management, documentation, suivi, revue et amélioration ; pas de certification abusive |
| Checklist 15 points | 10 | Exactement quinze contrôles, statuts motivés et écarts/actions traçables |
| Décision Go/No-Go | 5 | Gate précis, blockers, conditions, pouvoirs et justification |
| Challenge de l’IA et validation humaine | 5 | Contrôles concrets, informations non confirmables et décisions humaines |
| Total | 100 |  |


Seuil indicatif : 70/100 ; un GO erroné contournant un blocker impose une reprise de l’exercice, quelle que soit la note. Cinq points sont explicitement réservés au challenge de l’IA : preuve contrôlée 2, limites/validations humaines 2, correction ou rejet motivé 1.

Une classification ou un owner alternatif raisonnablement justifié est accepté. Un statut différent est acceptable si le scope, la preuve et les effets sur le gate sont cohérents. Le critère n’est pas de copier les mots du corrigé.

## 25. Corrigé formateur

Le guide séparé contient l’architecture attendue, les huit étapes, les livrables/Gates, les contrôles données/RGPD/sécurité/IA/management, la checklist complétée, les anomalies, les actions, la décision et la carte remédiée. Réserver ce guide au formateur jusqu’à la restitution.

## 26. Débriefing

1. Pourquoi commencer la gouvernance avant le développement ?
2. Gouvernance du projet et gouvernance de l’IA : quelle différence ?
3. Quelle valeur spécifique ajoute le PMO ?
4. Quelle contribution apporte le BA ?
5. Qui valide la classification des données ?
6. Que vérifie le PMO concernant le RGPD ?
7. Quand faut-il solliciter le DPO ?
8. Qu’est-ce qui rend une preuve suffisante ?
9. Pourquoi techniquement terminé ne signifie-t-il pas prêt au Go-Live ?
10. Quel est l’intérêt des Gates et de leur scope ?
11. Quelle différence entre gouvernance et conformité ?
12. Pourquoi une réponse IA n’est-elle pas une preuve d’audit ?
13. Quels défauts imposent NO-GO dans ce dossier ?
14. Comment arbitrer délai respecté et risque critique ?
15. Pourquoi la région d’une ressource ne suffit-elle pas à prouver le lieu de traitement ?
16. Quand réévaluer après changement de modèle, corpus ou finalité ?

## 27. Points de vigilance

L’évaluation porte sur le scénario fourni, pas sur un tenant réel. Vérifier les sources publiques pour un usage ultérieur et faire réviser les dispositions contractuelles et RGPD par les experts compétents. Les seuils, dates et pouvoirs du TP ne sont pas des normes universelles.

Ne pas assimiler classification interne au classement réglementaire, service Microsoft au traitement conforme, checklist à certification, citation à exactitude, note DPO à approbation du responsable du traitement, action planifiée à réserve levée ou cible de risque à résultat observé.

Si l’IA émet un conseil trompeur, le garder dans Journal_IA avec correction mais ne pas le laisser comme fait dans la fiche finale. Le principe reste : l’IA propose, le PMO vérifie, les fonctions compétentes valident et le comité décide.
