# README — TP Power Automate V3, parcours guidé débutant

Formation : Utilisation de l’IA par un PMO / PMP / Business Analyst pour accélérer ses travaux.

## 1. Document à suivre

Ouvrir TP_Power_Automate_V3_Parcours_Guide_Debutant.md. Il remplace le cahier participant V2.

Ordre :
1. Audit et carte de progression.
2. Phase0 : compte, environnement, source, journal unique, approbateur et destinations autorisées.
3. Phase1 : relever les données et ITEM_ID réels.
4. Phase2 : comprendre le CR attendu et la portée de sa validation.
5. Phase3 : premier flow en lecture seule, sans diffusion.
6. Phase4 : ajouter format, approbation, réservation unique, Teams puis Outlook.
7. Phase5 : nouveau flow B avec Copilot, si disponible, mêmes critères que A.
8. Phase6 : tests et mesures réelles.
9. Phase7 : extensions facultatives après réussite du niveau1.

## 2. Fichiers participants

| Fichier | Utilité |
| --- | --- |
| TP_Power_Automate_V3_Parcours_Guide_Debutant.md | Cahier principal ; transitions et dépannage local. |
| Preparation_Ressources_Power_Automate_V3.md | Création autonome si les ressources ne sont pas préconfigurées et si les droits le permettent. |
| Modeles_Expressions_Power_Automate_V3.md | Textes, expressions et prompt Copilot à copier au point d’usage. |
| Fiche_Donnees_PRJ_2026_017_V3.csv | Valeurs de préparation, pas un import automatique de flow. |
| Suivi_Progression_Tests_Power_Automate_V3.xlsx | Carte de progression, carnet de reprise, tests et mesure simple. |

## 3. Fichiers réservés au formateur

- Guide_Formateur_Power_Automate_V3.md : correction, sécurité et animation.
- Audit_TP_Power_Automate_V2_Recommandations.md : justification de la refonte.

Ne pas distribuer comme consigne principale le corrigé V2, dont la construction et les mécanismes sont différents.

## 4. Documents du projet à conserver

La charte, le cahier des charges et le planning Excel du projet restent des pièces fictives utiles pour SharePoint et les extensions. Ils ne sont pas nécessaires pour la première réussite du flow en lecture seule. Un .mpp doit être produit réellement dans Microsoft Project ; ne pas renommer un Excel.

## 5. Éditions et précautions

Date pédagogique commune : 2026-10-13. Respecter les codes du cahier : R00 lecture, J00/J01/J02/J03 relecture et clé, K00/K01/K02 réservation, T01 Teams seul, E01 scénario complet.

Une nouvelle édition de test est intentionnelle. Ne pas changer la révision pour reprendre aveuglément un envoi incertain. La réservation unique reste avant toute diffusion ; les demandes de relecture peuvent envoyer des notifications au relecteur autorisé.

Avant pause : Save, noter checkpoint, flow, édition, RunId et état des demandes. Reprendre le run existant s’il attend une réponse ; ne pas cliquer Tester par réflexe. Aucune étape bloquée n’est laissée « à corriger plus tard » avant diffusion.

## 6. Comparaison

A et B utilisent même socle, données, destinataires, approbateur et qualité. B est un nouveau flow, pas A renommé. Mesurer construction, correction et test séparément, compter les défauts. Copilot absent = non exécuté, pas temps zéro ni gain inventé.

## 7. Statut et limites

Ces fichiers sont des supports, pas une solution Power Automate déjà déployée. Les adresses de test et URLs sont relevées localement. Pas de secret, destinataire client réel, achat ou policy contournée.

La réservation ne donne pas une transaction exactement une fois entre SharePoint, Teams et Outlook. Inspecter effets réels après timeout. Aucun tenant n’a été exécuté pour produire ce README ; les tests locaux restent nécessaires.
