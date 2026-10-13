# Préparation des ressources — TP Power Automate V3

Le parcours recommandé utilise des ressources prêtes pour que le débutant se concentre sur le flow. La création autonome ci-dessous est réalisée une fois, avant phase0 si les droits la permettent. Elle ne se compte pas seulement côtéA.

## Carte à remettre au participant

| Paramètre | Valeur réelle à fournir | Contrôle |
| --- | --- | --- |
| ENV_TP | Environnement Power Platform autorisé | À fournir |
| SITE_TP | Racine réelle du site, pas URL de liste | À fournir |
| ITEM_ID | ID numérique de la ligne PRJ-2026-017 | À relever |
| TEAM_TP | Équipe de formation autorisée | À fournir |
| CHANNEL_TP | Canal standard de test | À fournir |
| EMAIL_TEST | Boîte Exchange Online contrôlée du participant | À fournir localement |
| APPROVER_TEST | Compte professionnel autorisé à relire (vous-même pourTP) | À fournir localement |
| Date Rapport | Date pédagogique ISO commune A/B | 2026-10-13 |
| Revision | Édition suivant étape, pas relance d’erreur | R00,J01,J02,K01,K02,T01,E01 selon tableau |
| LIBRARY_TP/CR_FOLDER_PATH | Seulement extension archivage | À relever si niveau2 |

## R1 — Créer ou choisir le site privé

1. Ouvrir Microsoft365→SharePoint avec le compte autorisé.
2. Chercher Créer un site ; variante récente Créer→Site.
3. Site d’équipe, modèle Standard si demandé.
4. Nom TP-PMO-Automatisation (suffixe groupe si requis), description Données fictives pour TP PMO.
5. Privé ; classification autorisée par organisation ; créer/attendre/ouvrir.
6. Relever la racine SITE_TP sans /SitePages ni /Lists ni URL de fichier.
7. Ajouter seulement membres autorisés ; droits lecture au relecteur selon owner. Si création désactivée, administration prépare, pas contournement.

## R2 — Créer PMO_Projets_TP

1. Site→Contenu du site→Nouveau→Liste→Liste vierge.
2. Nom PMO_Projets_TP, description Données fictives communes A/B,Créer.
3. Garder Title native, ne pas la renommer.
4. Ajouter une colonne avec +Add column, type du tableau, nom technique exact ;Save.
5. Répéter pour les champs. Progress/BudgetUsed sont Nombre, zéro décimale,min0,max100 ; format% désactivé.
6. Les colonnes multiligne sont Text e brut. Deadline reste texte ISO.
7. LesURL peuvent rester vides au niveau1, sans obligation d’archivage/documents.

| Colonne | Type | Valeur |
| --- | --- | --- |
| Title | Une ligne de texte | Modernisation du système d’information |
| ProjectRef | Une ligne de texte | PRJ-2026-017 |
| ProjectManager | Une ligne de texte | Alexandra Rey |
| Sponsor | Une ligne de texte | Directeur des systèmes d’information |
| Status | Une ligne de texte | Orange |
| Progress | Nombre entier0–100 | 65 |
| BudgetUsed | Nombre entier0–100 | 72 |
| NextDeliverable | Une ligne de texte | Livraison du prototype |
| Deadline | Une ligne de texte ISO | 2026-10-23 |
| MainRisk | Plusieurs lignes texte brut | Retard de livraison lié à une dépendance fournisseur |
| Impact | Une ligne de texte | Élevé |
| ProposedAction | Plusieurs lignes texte brut | Réunion d’escalade avec le fournisseur |
| ExpectedDecision | Plusieurs lignes texte brut | Arbitrage sur le renforcement temporaire de l’équipe |
| NextMeeting | Une ligne de texte | Comité de pilotage de la semaine suivante — date précise à confirmer |
| Highlights | Plusieurs lignes texte brut | Cadrage validé ; développement du prototype en cours ; confirmation fournisseur attendue. |
| DataOwner | Une ligne de texte | PMO de formation |
| DataVersion | Une ligne de texte | V1 |
| CharterUrl | Plusieurs lignes texte brut | Facultatif niveau1 ; URL réel le si extension |
| RequirementsUrl | Plusieurs lignes texte brut | Facultatif niveau1 ; URL réel le si extension |
| PlanUrl | Plusieurs lignes texte brut | Facultatif niveau1 ; URL réel le si extension |

## R3 — Saisir et contrôler le projet

1. +Nouveau élément, remplir valeurs du tableau,Save.
2. Ouvrir l’item, afficher ID dans la vue via afficher/masquercolonnes ou lire ID dans URL formulaire.
3. Fournir ITEM_ID numérique au participant ; ce n’estpas ProjectRef.
4. Recontrôler65/72,Orange,Deadline2026-10-23,V1.
5. Si anciens documents du filrouge existent, leurs liens peuvent être conservés sanspermissionsélargies ;ils ne sont pas requis niveau1.

## R4 — Créer le journal et activer l’unicité

1. Site contents→New List→Blank ;nom PMO_CR_Journal.
2. Garder Title,ajouter les cinq colonnes ci-dessous.
3. Paramètres liste→Colonnes→Title→Appliquer valeurs uniques=Oui ;enregistrer/index er si demandé.
4. Deux items Title TEST_UNIQUE : deuxième doit être refusée. Supprimer seulement l’item test selon règle locale.
5. Vérifier permissions Create/Update du compte Power Automate ; pas lecture seule.

| Colonne | Type |
| --- | --- |
| Title | Text e natif, valeurs uniques Oui |
| ProjectRef | Une ligne de texte |
| Path | Une ligne de texte |
| Stage | Une ligne de texte |
| RunId | Une ligne de texte |
| Details | Plusieurs lignes texte brut |

## R5 — Préparer et vérifier les cibles de test

1. Choisir un canal STANDARD d’une équipe de formation, accessible au compte et applicWorkflows autorisée par administration.
2. Boîte Exchange Online personnel le contrôlée pour EMAIL_TEST ; nom fictif Chef Projet n’estpas un destinataire.
3. APPROVER_TEST réel autorisé à recevoir le brouillon ; soi-même pour apprentissage.
4. Fiche Locale contient ces valeurs maisn’estpas publiéeavec données personnel les.
5. Connexions seront créées/choisies aux actions ; aucune clé/mot de pas se dans CSV ou expressions.

## R6 — Préparer facultativement les documents et dossier d’archive

1. Bibliothèque Documents,créer PRJ-2026-017/04_COPIL selon autorisation.
2. Relever le dossier par picker dans Create file ; nom affiché Documents peut avoir URL Shared Documents, pas à deviner.
3. Pour charte/cahier/planning du pack précédent,charger fichiers fictifs et garder existing access pour liens.
4. Unmpp doitêtreunvraifichierProject,pasxlsxrenommé ; le flow deCR ne litpas automatiquement les tâches.
5. Cette extension ne doit pas bloquer lapréparationreadonly/niveau1.

## R7 — Valider la fiche de ressources

[ ]Site privé et racine [ ]20 colonnes oucompatibilitéétablies [ ]Item contrôlé [ ]Journal6 champs Title unique [ ]Droits lecture/create/update [ ]Canal standard/Workflows [ ]Boîte et approbateur autorisés [ ]Licences/policies compatibles.

Si une condition essentiellemanque, phase0Bloqué. Le participantconsomme unepréconfiguration sans prétendre l’avoircréée. Niveau1 standard ne signifie pas services/dispositionsuniversellementgratuits.

Les manipulations listes/upload et les droits du service sont documentés par Microsoft ; la préparation n’a pasété exécutée dans un tenant pendant génération.
