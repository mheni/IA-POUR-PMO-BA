# Prompts Copilot Power BI Service — parcours débutant

Saisir dans le volet Copilot d’un RAPPORT ouvert en mode Modifier, pas dans le tableau de bord lui-même. Les capacités et les droits doivent avoir été validés avant formation.

## P1 — Synthèse du projet

```text
Crée une page « Synthèse du projet » dans ce rapport à partir du modèle Pilotage chargé.
Public : sponsor et PMO débutant. Il n’y a qu’une ligne de données, pour PRJ-2026-017.
Créer des cartes pour : Avancement projet (%), Budget consommé (%), Coût réel (EUR), Tâches en retard, Jalons menacés et Risques sans propriétaire.
Afficher Projet, Statut projet, Date état et Version sans les transformer en compteurs.
Les colonnes de pourcentage contiennent déjà des valeurs de 0 à100 : 65 signifie65%. Afficher65 avec le titre « Avancement (%) » ; ne multiplier/diviser pas ces chiffres et ne les reformater pas en6500%.
Les nombres sont précalculés et la ligne unique ne doit pas être répétée. Ne crée pas de calcul métier ni de mesure DAX explicite.
Ajouter une table courte avec Prochaine échéance, Date prochaine échéance et Décision à préparer.
Les données sont fictives. 72% de budget consommé ne prouve pas un dépassement final. Aucun GO ou arbitrage n’est approuvé par ce rapport.
```

## P2 — Suivi des tâches

```text
Crée une page « Suivi des tâches » à partir du modèle Taches.
Créer un graphique du nombre de Tâche ID par Statut, puis un graphique Budget tâche (EUR) / Coût tâche (EUR) par Phase.
Ajouter un tableau Tâche ID, Tâche, Responsable, Statut, Avancement tâche (%), Fin prévue et En retard.
Créer un tableau des tâches en retard avec filtre « En retard = Oui », et Retard (jours calendaires).
Chaque ligne représente une tâche unique. Le nombre total attendu dans S01 est12 ; les retards sont des données déjà calculées, pas à recalculer avec la date du jour.
Ne présente pas la moyenne des avancements des tâches comme l’avancement global du projet : il se trouve dans l’autre rapport Pilotage.
Afficher Date état et Version, en texte/date, pas un compteur de versions. Aucun DAX ni modélisation à demander au participant.
```

## P3 — Risques

```text
Crée une page « Risques à suivre » à partir du modèle Risques.
Ajouter un graphique Criticité par Risque ID, tri décroissant ; chaque ID est unique. Ne présente pas la somme des criticités comme une perte financière.
Ajouter un tableau Risque ID, Risque, Priorité, Propriétaire, Mesure proposée et Échéance mesure.
Conserver « Non précisé » et « À définir » pour RK04 ; ne lui attribue pas un propriétaire ou une date.
Afficher Date état et Version. Les réponses sont des propositions à valider ; aucune acceptation de risque ou décision sponsor n’est inventée.
Pas de DAX écrit ni de nouvelle relation de modèle.
```

## P4 — Jalons

```text
Crée une page « Jalons du projet » à partir du modèle Jalons.
Ajouter une table Jalon ID, Jalon, Date prévue, Date réelle, Statut jalon et Point de vigilance.
Créer un graphique du nombre de Jalon ID par Statut jalon, puis un tableau avec filtre Statut jalon=Menacé.
Ne remplis pas les dates réelles absentes. « Menacé » est le statut fourni, pas une prédiction automatique.
Afficher Date état et Version sans compter les versions.
Ne crée pas de calcul de chemin critique, de nouvelle mesure DAX ou de date de production approuvée.
```

## P5 — Correction ciblée

```text
Corrige uniquement le visuel sélectionné : il doit utiliser le champ [NOM EXACT DU CHAMP] du modèle actuel et afficher [VALEUR OU AGRÉGATION ATTENDUE].
Ne change pas les données source et ne crée pas de calcul DAX explicite.
Explique quel champ ou agrégation tu as changé. Ne prétends pas appliquer une mise en forme que ton interface ne sait pas modifier.
```

## P6 — Lecture exécutive

```text
Résume uniquement ce rapport en trois phrases compréhensibles pour un sponsor.
Distingue les chiffres observés, les risques et les décisions à préparer. Rappelle la date d’état et le caractère fictif.
N’invente pas des informations des autres modèles non présents dans ce rapport. Ne transforme pas une décision attendue en accord obtenu.
La réponse est un brouillon à vérifier, pas une preuve de conformité ni une autorisation de mise en production.
```

