# README — Atelier Copilot Studio : agents, tests, évaluations et workflow PMO

Formation : Utilisation de l’IA par un PMO / PMP / Business Analyst pour accélérer ses travaux.

Scénario fictif : PORTAL-2026-042 — Modernisation d’un portail de services publics.

## 1. Objectif de l’atelier

Créer quatre agents spécialisés, tester leurs réponses dans Aperçu, les évaluer avec les CSV fournis, améliorer leurs consignes puis les appeler dans un workflow natif Copilot Studio.

Les productions restent des brouillons : aucune priorité définitive, hausse de budget, date engagée, communication externe ou décision de GO n’est approuvée automatiquement.

Ce README explique l’ordre d’utilisation des supports. Le cahier participant contient les manipulations détaillées, les instructions copiables et les résultats attendus.

## 2. Expérience et prérequis

Utiliser la nouvelle expérience Copilot Studio, propulsée par le GitHub Copilot harness :

- Créer (Build) ;
- Aperçu (Preview) ;
- Évaluer (Evaluate) ;
- Flux de travail (Workflows).

Ne pas remplacer silencieusement ce parcours par l’expérience standard avec Rubriques/Topics, Agent Builder ou un flux cloud Power Automate.

Avant de commencer, vérifier :

- Compte professionnel et environnement de formation autorisés.
- Droits de création, sauvegarde, publication et exécution des workflows.
- Capacité Copilot Credits disponible, plafond de consommation et autorisation des essais.
- Politique d’ajout des connaissances compatible avec les documents fictifs fournis.
- Disponibilité des fonctions utilisées dans votre tenant.

Créer avec l’IA, tester dans Aperçu, exécuter une évaluation ou un workflow peut consommer des crédits. Importer un CSV ne contourne pas ces exigences. Ne pas acheter de crédits, activer une facturation, élargir des droits ou désactiver une politique de sécurité pour terminer le TP.

Si un prérequis manque, consigner la limitation et demander sa résolution au responsable de l’environnement. Une simulation ou une préparation de fichiers n’équivaut pas à une exécution Copilot Studio validée.

## 3. Supports à ouvrir

| Fichier | Utilisation |
| --- | --- |
| `TP_CopilotStudio_NouvelleExperience_Agents_Evaluation_Workflow.md` | Cahier participant principal : procédures et contrôles. |
| `Instructions_Agents_Workflow_CopilotStudio_NouvelleExperience.md` | Consignes des agents et gabarits des messages du workflow. |
| `Dossier_Projet_Portail_NOVA_Fictif.docx` | Source documentaire fictive regroupant D01, D02 et D03. |
| `D01_Contexte_Projet_Portail.txt` | Charte, budget, cible, acteurs et périmètre du cas. |
| `D02_Regles_MoSCoW.txt` | Critères de priorisation et règles d’arbitrage. |
| `D03_Gouvernance_Echelles_Risques.txt` | Contrôles et échelles Probabilité/Impact. |
| `Contexte_Complet_Workflow.txt` | D01–D03 regroupés pour l’entrée du workflow. |
| `Demande_Nominale_DM101.txt` | Demande métier du premier test complet. |
| `Elements_Risques_ER101.txt` | Informations de risque du premier test complet. |
| `Evaluation_A1_CopilotStudio_NouvelleExperience.csv` | Huit conversations de test de l’analyste des besoins. |
| `Evaluation_A2_CopilotStudio_NouvelleExperience.csv` | Huit conversations de test de la priorisation MoSCoW. |
| `Evaluation_A3_CopilotStudio_NouvelleExperience.csv` | Huit conversations de test de l’analyste des risques. |
| `Evaluation_A4_CopilotStudio_NouvelleExperience.csv` | Huit conversations de test de la synthèse PMO. |
| `Schema_QC_Dossier_PMO.json` | Schéma du contrôleur qualité inline, et non des quatre agents publiés. |
| `Classeur_Validation_CopilotStudio_Agents_Workflow.xlsx` | Observations, comparaisons, mappings, tests, revue et crédits. |
| `Exemple_Resultat_Nominal_A_CLARIFIER.txt` | Exemple acceptable à consulter après votre première production. |
| `Guide_Formateur_CopilotStudio_NouvelleExperience_MultiAgents.md` | Corrigé réservé au formateur ou à la correction finale. |

Ces supports ne sont pas une solution importable : les agents et le workflow doivent être créés dans votre environnement. Ce README ne les déploie pas.

## 4. Ordre de réalisation

### Phase 0 — Préparer

1. Ouvrir le cahier participant et lire les sections 1 à 5.
2. Réaliser P1–P3 : identifier l’expérience, choisir l’environnement, vérifier les crédits et préparer les pièces.
3. Lire D01–D03 avant de créer les agents.
4. Ouvrir le classeur de validation ; conserver les champs Observé et Statut vides jusqu’aux essais.
5. Noter votre code de groupe, le modèle utilisé, les versions des consignes et des connaissances.

### Phase 1 — Créer les quatre agents

Suivre C1/C2 et les fiches personnalisées du cahier.

| Repère | Agent | Mission |
| --- | --- | --- |
| A1 | PMO - Analyste des besoins | Structurer le besoin, les exigences proposées et les manques. |
| A2 | PMO - Priorisation MoSCoW | Proposer et justifier les priorités sans les approuver définitivement. |
| A3 | PMO - Analyste des risques | Qualifier les risques et les réponses avec des scores justifiés. |
| A4 | PMO - Synthese COPIL | Consolider en séparant faits, propositions et validations requises. |

Pour chaque agent :

1. Créer l’objet dans le bon environnement.
2. Donner son nom et sa description selon les champs effectivement proposés.
3. Copier les consignes complètes de sa fiche.
4. Ajouter le dossier fictif comme connaissance si autorisé et vérifier son traitement.
5. Ne pas ajouter d’outil d’envoi ni de recherche web générale non prévue.
6. Sauvegarder et contrôler que les consignes persistent.

Un nom cité dans une instruction ne crée pas un autre agent ni une liaison.

### Phase 2 — Tester dans Aperçu

Suivre l’atelier 1, étapes 1.1 à 1.3.

1. Ouvrir l’agent puis Aperçu.
2. Commencer une nouvelle conversation avant chaque cas indépendant.
3. Copier l’entrée exacte de sa grille : huit cas par agent, soit 32 cas préparés.
4. Comparer la réponse aux comportements attendus et aux dix critères communs.
5. Consigner réponse, défaut, statut et preuve dans `Tests_Agents` et `Avant_Apres`.
6. Examiner les informations d’activité effectivement disponibles : sources, outils, erreurs et consommation affichée.
7. Corriger une règle précise, sauvegarder, recommencer une nouvelle conversation et rejouer le même cas ainsi qu’un nominal.

Les fautes des cas Robustesse sont intentionnelles. Ne pas les corriger avant de tester.

Une réponse fluide n’est pas conforme si elle invente une approbation, un propriétaire confirmé, un budget ou une échéance.

### Phase 3 — Évaluer et comparer avant/après

Suivre l’atelier 2, étapes 2.1 à 2.3.

1. Dans chaque agent, ouvrir Évaluer.
2. Importer son CSV correspondant ; vérifier huit conversations indépendantes.
3. Nommer le jeu, par exemple `EVAL_A1_V1_G01`.
4. Vérifier méthode, profil, version testée et estimation de crédits.
5. Exécuter uniquement après autorisation de consommation.
6. Relever les réponses et le score automatique dans l’échelle réellement affichée.
7. Appliquer en plus les critères métier du classeur.
8. Corriger les consignes ou connaissances et rejouer les mêmes cas pour V2.
9. Conserver des versions, profils, modèles et jeux comparables.
10. Publier la version vérifiée de chacun des quatre agents pour l’intégrer au workflow.

**Limite importante :** General quality évalue pertinence et complétude ; elle ne compare pas automatiquement les réponses à la colonne `response` du CSV. Cette colonne est donc vide dans les fichiers fournis. Les attendus métier sont dans le cahier et le classeur.

Si l’évaluation utilise la version publiée, publier V2 avant de la sélectionner et relancer. Si la version testée n’est pas identifiable, signaler la limite au lieu d’affirmer une comparaison démontrée.

### Phase 4 — Construire le workflow

Suivre l’atelier 3, étapes 3.1 à 3.9.

```text
Demande + contexte + éléments de risques
→ A1 besoins publié
→ A2 MoSCoW publié
→ A3 risques publié
→ A4 synthèse publié
→ Contrôleur qualité inline
→ Diagnostic bloquant ou brouillon à revue humaine
```

1. Créer le workflow natif dans le même environnement.
2. Configurer le point d’entrée manuel avec trois paramètres texte :
   - `demande_metier` ;
   - `contexte_projet` ;
   - `elements_risques`.
3. Ajouter quatre nœuds Agent utilisant **An existing agent / Un agent existant**, puis sélectionner les agents publiés de la première partie.
4. Copier le gabarit de message propre à chaque nœud.
5. Effacer chaque emplacement `[JETON ...]` et insérer le vrai contenu dynamique du déclencheur ou du bon nœud précédent.
6. Ajouter le contrôleur qualité comme **New agent for this workflow / Nouvel agent pour ce workflow**.
7. Copier ses instructions et utiliser la sortie structurée personnalisée avec le JSON fourni, si disponible.
8. Configurer le contrôle et les sorties comme dans le cahier.
9. Sauvegarder/publier selon le concepteur, puis tester dans le périmètre autorisé.

Les sorties A1–A4 sont des rapports textuels : leurs rubriques ne deviennent pas automatiquement des propriétés JSON. Les champs typés de `Schema_QC_Dossier_PMO.json` concernent uniquement le contrôleur inline :

- `etat_dossier` ;
- `rapport_final` ;
- `motif` ;
- `validation_humaine_requise`.

Aucune flèche n’est à dessiner par glisser-déposer. La configuration des jetons fait circuler les valeurs.

### Phase 5 — Tester et déboguer le workflow

Suivre l’atelier 4 et les scénarios WF01 à WF11.

Premier test WF01 :

| Paramètre | Valeur à copier |
| --- | --- |
| `demande_metier` | Contenu de `Demande_Nominale_DM101.txt` |
| `contexte_projet` | Contenu de `Contexte_Complet_Workflow.txt` |
| `elements_risques` | Contenu de `Elements_Risques_ER101.txt` |

1. Lancer le test global ; le formulaire peut exiger une nouvelle saisie à chaque run.
2. Dans Activity / Activité, ouvrir le run puis chaque nœud.
3. Vérifier l’agent appelé, ses entrées réelles et sa sortie.
4. Vérifier que le nœud suivant reçoit la sortie du bon producteur.
5. Consigner Run ID, réponses, verdict et correction dans `Tests_Workflow` et `Mappages`.
6. Pour un défaut, tester le nœud concerné puis rejouer le scénario complet.
7. Après correction d’un agent existant, sauvegarder et republier avant de retester le workflow.
8. Utiliser une copie isolée pour les mocks WF07/WF11 et le préflight WF08.

Distinguer :

- Aperçu : test interactif de l’agent ;
- Test du nœud : exécution de ce seul composant ;
- Test global : exécution live du workflow ;
- Évaluer de l’agent : campagne General quality ;
- Evaluate du QC inline : évaluation du dernier test du nœud, selon fonctions disponibles.

Ne pas provoquer une panne Microsoft ni épuiser des crédits pour WF08. Une erreur de configuration détectée avant exécution ne prouve pas un test d’indisponibilité réelle. Un cas runtime non observé reste non exécuté.

## 5. Comment utiliser le classeur de validation

| Onglet | À renseigner |
| --- | --- |
| `Tests_Agents` | Réponses observées, verdicts et corrections des 32 cas. |
| `Avant_Apres` | Versions, profils/modèles/KB, réponses V1/V2 et scores automatiques/humains. |
| `Critères` | Référence des dix contrôles communs. |
| `Tests_Workflow` | Entrées, observations, verdict, Run ID et noms réels des cartes. |
| `Synthese` | Nombre exécuté, réussites/échecs, défauts corrigés et ID des évaluations. |
| `Mappages` | Agent/nœud réel, provenance des entrées et forme des sorties. |
| `Revue_humaine` | Vérifications finales, réserves, décisions à demander et statut du brouillon. |
| `Credits` | Estimations, consommation observée, plafond et autorisation. |

Ne pas préremplir un succès ni déduire une exécution d’un texte enregistré.

## 6. Conditions de réussite

Pour les agents : seuil pédagogique d’au moins 8 critères conformes sur 10 par réponse et au moins 80 % de conformité sur l’ensemble testé, avec zéro invention critique et réussite des cas de sécurité/validation humaine. Ce n’est pas une garantie officielle Microsoft.

Pour le workflow : quatre agents réellement appelés, mappings prouvés, sorties contrôlées et dossier soumis à revue. `PRET_REVUE` ne signifie pas GO ; `A_CLARIFIER` conserve les manques ; `BLOQUE` interdit de présenter le dossier comme définitif.

Un run Succeeded peut contenir une erreur métier. WF11 doit faire détecter une synthèse injectée erronée ; si le QC la laisse passer, le verdict humain est Échoué même si le run est vert.

La revue humaine finale du TP est documentée dans la grille. Elle ne constitue pas une signature réelle du sponsor ni une approbation automatisée de budget. Le mécanisme Request human assistance when unsure n’est pas une approbation obligatoire : le garder désactivé dans les tests sans communication.

## 7. Dépannage rapide

| Problème | Vérification / réponse |
| --- | --- |
| Créer/Aperçu/Évaluer introuvables | Vérifier le harness et l’agent ; ne pas utiliser les menus standard au hasard. |
| Aperçu ou Évaluer demande des crédits | Vérifier allocation avec le responsable ; CSV ne contourne pas le blocage. |
| Agent absent du workflow | Vérifier environnement, publication et droits d’appel. |
| Agent semble ignorer V2 | Vérifier version publiée, sélection du nœud et nouveau test. |
| Le nœud reçoit un nom plutôt qu’une donnée | Remplacer le texte `[JETON...]` par une vraie valeur dynamique. |
| Aucun échantillon dans le picker | Faire un premier run autorisé ; inspecter les sorties, sans inventer de mapping. |
| Anciennes valeurs après chargement d’un run | Reset du test puis Load values ; contrôler toutes les entrées. |
| Sortie QC non typée | Vérifier agent inline, Custom structured output et schéma ; variante texte explicitement limitée. |
| Score automatique élevé mais décision inventée | Contrôle humain bloquant ; corriger et retester. |
| Authentification/autorisation/service refusés | Identifier la cause et demander résolution autorisée ; pas suppression de sécurité. |

## 8. Livrables à remettre

- Quatre agents enregistrés, versions et publication documentées.
- Consignes et connaissances réellement configurées.
- Cas et observations Aperçu, quatre jeux d’évaluation et comparaison V1/V2.
- Workflow réel avec documentation des entrées/sorties et des limitations.
- Tests WF01–WF11 exécutés ou clairement marqués non exécutés.
- Rapport final, défauts corrigés et revue humaine.
- Note sur crédits, confidentialité, manques et décisions restant à valider.

## 9. Documentation Microsoft utile

Les liens sont à utiliser au moment des opérations :

- [Nouvelle expérience](https://learn.microsoft.com/fr-fr/microsoft-copilot-studio/agents-experience/overview).
- [Créer un agent](https://learn.microsoft.com/en-us/microsoft-copilot-studio/agents-experience/build-new-agent).
- [Aperçu et tests](https://learn.microsoft.com/en-us/microsoft-copilot-studio/agents-experience/preview-overview).
- [Évaluation](https://learn.microsoft.com/en-us/microsoft-copilot-studio/agents-experience/analytics-agent-evaluation-intro).
- [Création du jeu d’évaluation](https://learn.microsoft.com/en-us/microsoft-copilot-studio/agents-experience/analytics-agent-evaluation-create).
- [Nœuds d’agents](https://learn.microsoft.com/en-us/microsoft-copilot-studio/workflows-experience/agent-node-workflow).
- [Concepteur et tests du workflow](https://learn.microsoft.com/en-us/microsoft-copilot-studio/workflows-experience/flow-designer).
- [Crédits et facturation](https://learn.microsoft.com/en-us/microsoft-copilot-studio/agents-experience/billing-credit-overview).

## 10. Limites et fin de l’atelier

Utiliser uniquement les données fictives fournies. Ne configurer aucun outil d’envoi/publication externe non demandé. Conserver les traces nécessaires selon les règles de l’environnement et limiter les partages.

Les fichiers sont des supports pédagogiques, pas des agents/workflows préinstallés ni des preuves d’exécution. Ce README n’a réalisé aucune opération dans votre tenant. La validation réelle dépend des tests effectués dans votre environnement autorisé.
