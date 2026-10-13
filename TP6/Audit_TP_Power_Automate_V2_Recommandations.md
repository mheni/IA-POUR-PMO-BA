# Audit du TP Power Automate V2 fourni

Document analysé intégralement : TP_Power_Automate_SharePoint_Documents_V2_Participant-1.md.

Mesures de lecture : 122222caractères,18788mots,16sections numérotées,40étapes ;40rubriquesDrag-and-drop et40Ajoutd’action ;10occurrences de « Enregistrer ou terminer l’opération indiquée ».

Ces constats portent sur le texte réellement fourni, pas sur une hypothèse de déroulement. Les fonctions du tenant et les exécutions réelles ne sont pas auditées.

| Partie actuelle | Difficulté rencontrée | Cause | Amélioration proposée | Priorité |
| --- | --- | --- | --- | --- |
| Préparation SharePoint — §4,S1–S8 | Huit étapes de site/documents avant première lecture automatisée ; S6 exige Project. | Création de ressources et stockage .mpp mêlés à apprentissage du flow. | Parcours recommandé préconfiguré ; création autonome dans fiche distincte ; .mpp/documentation en extension. | Haute |
| Données — §6,A1.2–A1.5 | 20 colonnes et second journal à créer, puis contrainte unique. | Nombreuses saisies avant objectif métier ; certains champs servent seulement aux liens documentaires. | Garder schéma compatible, fournir valeurs ; préprovisionner ; lire seulement champs utiles au premier test. | Haute |
| Résultat final — §5 | Trois conditions imbriquées, Scope, réservation et nombreuxCompose présentés en arborescence complète. | Architecture technique avant observation d’un CR produit. | Montrer résultat métier court ; premier flow GET_PROJET→CR_Texte, sans diffusion. | Haute |
| Construction — A2.2/A2.3/A3.3/A3.4 | Métadonnées, Scope et OData/length avant premier CR. | Concepts avancés simultanés et plusieurs identifiants. | Introduire jetons après lecture ; deux expressions HTML séparées ; clé/réservation simple avant premiers sends, sans Getitems préalable. | Haute |
| Validation — A4.3/A4.4 | Approval et mappings journal ajoutés avec branches et Terminate. | Pas de test isolé du rejet/accord avant vrais canaux. | Test accord/rejet sans sends, puis ajout réservation ; vraie validation obligatoire conservée. | Haute |
| Documents — A4.5,D1/D2 | Archivage obligatoire avant envoi ; lecture binaire et IDs de fichier en extension. | Dossier/fileIdentifier/Id projet/Id journal introduits dans la même lecture. | Archivage et lecture propriétés/binaire dans atelier avancé, sans perte des traces essentielles. | Moyenne |
| Teams/Outlook — A5/A6 | Connaissances sûres, mais succès de plusieurs actions avant contrôle complet T1. | Pas de petite réussite propre à chaque nouvelle destination. | Tester Teams seul sur éditionT01 ; puis email+Teams sur E01 ; chaque test identifié et approuvé. | Haute |
| Répétitions — 40étapes | 40rubriquesDrag-and-drop,40Ajoutaction,10phrasesSauvegarde génériques. | Modèle de14rubriques appliqué à toute opération même hors concepteur. | Une fiche compacte et stable ; dépannage local ; vocabulaire et gestes communs expliqués une fois. | Moyenne |
| Navigation — §4,partie4→§7 | S8 renvoie vers A1.2–A1.5 ; modèles/expressions après toutes les actions. | Retours et dépendances dispersées ; tableau paramètres coupé par ligne vide après FILE_ITEM_ID. | Carte de progression, valeurs au point d’usage, transitions explicites et fiche paramètres unique. | Haute |
| Tests — T01–T12 | Nominal,doublon,rejet,IDs,permissions,format etdocuments tous présents. | Peu de repères d’éditions pour tester chaque ajout sans bloquer sur réservation. | Révisions de test imposées ; ne pas réutiliser une édition réservée ; distinguer nouvelle étape et reprise après échec. | Haute |
| Copilot — B1–B6 | Prompt complet demande core+archive+journal+Scopes dans un nouveau flow. | Trop de fonctions à auditer en une proposition pour novice. | Prompt essentiel puis audit ; même source/cibles/KPI ; avancé comparé séparément. | Haute |
| Comparaison — §12 | Sept phases de temps, commun/direct/comparable et nombreux biais expliqués. | Correct mais lourd pour premier exercice. | Six lignes à remplir +scope des mesures ; pas de temps zéro pour non exécuté. | Moyenne |
| Reprise — fin§8/annexes | Limites exactly-once,timeout/réservation explicitées, source8h30. | Reprendre après interruption n’a pas de carnet de phase/RunId central. | Fiche reprise obligatoire, clôture des approvals/runs avant modification ; limites conservées. | Haute |
| Référence vidéo — en-tête | LienYouTube ajouté sans étape de validation ni rôle dans le parcours. | Une vidéo de démonstration ne garantit pas même interface et brise autonomie si obligatoire. | Ne pas dépendre de cette vidéo ; source de complément non utilisée pour justifier les clics. | Basse |

## Décision de refonte

Conserver données et noms, approval avant diffusion, cibles contrôlées, contrôle de référence, réception, RunId/historique, et une réservation unique avant tout envoi. Simplifier le chemin : pas deScope ni Getitems/OData avant première réussite, aucune lecture de .mpp/binaire dans niveau1.

Déplacer archive, sourcesdocumentaires enrichies, prédétection conviviale des doublons, Scope/Catch, nouvelle tentative et reprise après envoi partiel dans niveau2. Le niveau1 n’est pas une transaction multi-services : sa clé bloque des relances volontaires/concurrentes mais n’assure pas exactement une fois après timeout.

Le parcours pédagogique est modifié, pas la politique d’autorisation. Une étape de création préconfigurée ne sera pas prétendue réalisée par le participant ; Copilot absent reste non exécuté.
