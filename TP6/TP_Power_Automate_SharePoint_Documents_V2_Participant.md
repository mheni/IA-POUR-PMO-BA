# Création d’un flux Power Automate complet — Données projet → Génération du compte rendu → Envoi dans Microsoft Teams et par e-mail

Comparaison d’une réalisation sans IA et d’une réalisation accélérée par Copilot, au service du PMO, du PMP et du Business Analyst.

## 1. Page de garde

Formation : Utilisation de l’IA par un PMO ou PMP BA pour accélérer ses travaux.

Cahier participant autonome — Version 2.0 — préparation SharePoint et dossier documentaire intégrés — Vérification documentaire : 11 octobre 2026.

Durée indicative de la version étendue : 8 h 30 nettes, réparties de préférence sur deux séances. Prévoir environnement 45 min, site et documents 90 min, données communes 45 min, parcours A 165 min, parcours B 90 min, tests/comparaison 75 min. S6 (création .mpp) et D1/D2 (lecture binaire) sont facultatifs, hors de cette estimation. Ces allocations organisent une formation ; elles ne sont pas une mesure de performance ni une promesse de gain.

Ce cahier donne les manipulations, les données, les contrôles et le modèle. Le corrigé formateur est séparé. Le participant peut suivre sans démonstration si les comptes, droits, services et destinations de test sont préparés. Aucun guide ne peut attribuer une licence, un consentement ou une autorisation manquante.

Le TP s’exécute sur https://make.powerautomate.com. Il ne s’exécute pas dans l’onglet Aperçu d’un agent du nouveau Copilot Studio. Il ne nécessite aucun appel IA générative pendant l’exécution du compte rendu. L’assistance Copilot du parcours B concerne la construction/édition du flow ; sa disponibilité reste à vérifier.

## 2. Contexte professionnel

Une organisation fictive suit plusieurs projets. Pour le projet Modernisation du système d’information, le PMO prépare chaque semaine un compte rendu de pilotage et le diffuse aux destinataires autorisés. Les données sont répétitives, mais les décisions restent humaines.

Le compte rendu est construit à partir d’un état projet structuré : il n’est pas une transcription fidèle de toutes les paroles d’un COPIL. Une action proposée reste proposée, une décision attendue reste à arbitrer. Le document automate ne prétend pas que ces décisions sont déjà prises.

Défi : réduire le temps de préparation technique tout en maîtrisant la qualité, les accès, la validation et les doublons. Les deux parcours utilisent même source/valeurs, approbateur, canal et destinataire. A est construit sans assistance IA ; B part d’un nouveau brouillon Copilot, pas d’une copie de A.

## 3. Objectifs pédagogiques

Expliquer Power Automate ; préparer les données ; créer un flow cloud instantané ; sélectionner trigger et connecteurs ; lire une ligne source ; composer un CR ; insérer les jetons ; formater HTML minimal ; faire approuver avant diffusion ; publier Teams et envoyer Outlook ; journaliser étapes ; inspecter historique ; détecter un doublon et une panne partielle ; utiliser Copilot pour construire et corriger ; mesurer les temps, corrections et qualité sans gain garanti.

Public : PMO, chefs de projet dont PMP, BA, consultants, responsables portefeuille/programme. PMP est une certification, pas un rôle technique Microsoft. Aucune programmation approfondie ; quelques expressions simples sont expliquées et fournies prêtes à copier dans fx.

## 4. Prérequis techniques et accès nécessaires

### Services et droits

- Compte professionnel organisationnel, environnement Power Platform autorisé avec droits maker/exécution.
- SharePoint Online : droit de création d’un site d’équipe privé et contribution à sa bibliothèque, plus création/configuration des deux listes ; si la création de sites est désactivée, site préprovisionné par responsable habilité.
- Teams : membre d’une équipe/canal standard de test ; application Workflows autorisée dans le tenant pour les actions de publication.
- Office 365 Outlook : boîte Exchange Online autorisée ; pas Outlook.com/pas mot de passe partagé.
- Standard approvals : capacité de créer/répondre aux approbations ; environnement prêt à héberger ces demandes.
- Policies DLP et accès conditionnel compatibles ; connexions réalisées sur identité de formation.
- Copilot Power Automate : organisation/région/droits compatibles et nouveau designer pour B.

Teams et Office365 Outlook sont des connecteurs Standard selon leurs références. Le scénario utilise aussi SharePoint et Standard approvals ; aucune action AI Builder, HTTP premium ou appel d’agent n’est nécessaire. Vérifier les droits cloud flows effectivement inclus dans votre souscription : Standard ne signifie pas que tous services/permissions sont automatiquement attribués. [Microsoft : Teams](https://learn.microsoft.com/en-us/connectors/teams/) ; [Microsoft : Outlook](https://learn.microsoft.com/en-us/connectors/office365/) ; [Microsoft : licences](https://learn.microsoft.com/en-us/power-platform/admin/power-automate-licensing/types).

Ne pas acheter une licence ni activer pay-as-you-go/crédits à partir du TP. Les blocages Copilot Studio rencontrés sur les assistants ne doivent pas être transposés automatiquement à l’assistance Copilot de Power Automate. Ici, aucune consommation d’agent IA n’est ajoutée au runtime ; cela ne promet ni gratuité des services ni accès universel à Copilot.

L’activation/consentement à déplacement de données pour IA est une décision administrative, jamais un clic requis du participant pour contourner une absence de Copilot. Les prérequis région/licence/tenant sont décrits par la FAQ officielle. [Microsoft : FAQ Copilot cloud flows](https://learn.microsoft.com/en-us/power-automate/faq-copilot-cloud-flows).

### Fiche locale des paramètres

| Paramètre de formation | Valeur à noter localement | Vérification |
| --- | --- | --- |
| SITE_TP | URL réelle du site de formation | Droit listes lecture/écriture |
| ITEM_ID | ID numérique de la ligne projet | Correspond à ProjectRef |
| LIBRARY_TP | Libellé réel de la bibliothèque Documents | Vérifier lecture et contribution |
| CR_FOLDER_PATH | Chemin réel choisi au picker vers PRJ-2026-017/04_COPIL | Pas URL Copy link ni chemin local |
| CharterUrl / RequirementsUrl / PlanUrl | Trois liens copiés en S7 | Accès du destinataire sans grant large |
| FILE_ITEM_ID (facultatif) | ID de la charte dans bibliothèque | Distinct de ITEM_ID projet |

| TEAM_TP / CHANNEL_TP | Équipe et canal standard autorisés | Connexion membre, Workflows autorisée |
| EMAIL_TEST | Votre boîte professionnelle contrôlée | Ne pas utiliser exemple.invalid pour un envoi réel |
| APPROVER_TEST | Vous-même ou approbateur interne autorisé | Peut lire et approuver le CR fictif |
| Environnement | Nom Power Platform de formation | Droit création/exécution, policies |
| DateRapport / Revision | 2026-10-11 / R01 | Format pédagogique stable A/B |


Ne pas publier cette fiche avec de véritables identifiants/coordonnées. Le cahier ne fournit aucune adresse réelle. Une adresse test contrôlée est nécessaire à une réception réelle : une adresse fictive en exemple.invalid ne reçoit pas les messages.

### Interface et documentation

Nouveau designer : sélectionner une carte ouvre Parameters/Settings ; l’éclair ouvre contenu dynamique ; fx ouvre Expression ; + insère au point choisi. Ancien designer : les paramètres sont souvent directement dans la carte et New step ajoute dessous. Le parcours B impose le nouveau designer, car Copilot n’édite pas le classique. [Microsoft : créer/éditer avec Copilot](https://learn.microsoft.com/en-us/power-automate/create-cloud-flow-using-copilot).

Aucune capture non vérifiée n’est inventée. Les schémas sont des architectures, pas des copies d’écran. Les labels français sont donnés avec les noms anglais pour rechercher. Les sources Microsoft liées donnent les écrans officiels et leurs variantes.

### Préparation commune — créer le site et le dossier documentaire AVANT le parcours A

Cette préparation est réalisée une seule fois et réutilisée dans A et B. Elle devient une partie explicite du TP : aucun site SharePoint n’est supposé déjà fourni. Si la création self-service est désactivée, le site doit être préparé par un propriétaire/administrateur autorisé ; les participants peuvent poursuivre bibliothèque/listes selon leurs droits, mais ne déclarent pas la création de site exécutée.

Microsoft documente deux parcours de création : + Créer un site et l’expérience récente Créer → carte Site → Site d’équipe → modèle. Le site d’équipe comprend déjà une bibliothèque Documents. [Microsoft : création site d’équipe](https://support.microsoft.com/fr-fr/office/cr%C3%A9er-un-site-d-%C3%A9quipe-dans-sharepoint-ef10c1e7-15f3-42a3-98aa-b5972711777d).

### Étape S1 — Accéder à SharePoint et vérifier la création

Objectif : Identifier le service et les droits réellement disponibles.

Point de départ : Navigateur et compte professionnel de formation.

Action exacte :
1. Ouvrir Microsoft 365 avec le compte autorisé.
2. Dans le lanceur d’applications, sélectionner SharePoint ; si absent, Plus d’applications ou recherche SharePoint.
3. Sur l’accueil, rechercher + Créer un site.
4. Dans l’expérience récente, rechercher Créer dans la barre gauche puis la carte Site de Démarrer la création.
5. Ne pas créer un site en production ni changer les règles de création du tenant.

Navigation : Microsoft 365 → lanceur → SharePoint → création.

Saisie : Compte tenant de formation ; vérifier les consignes de nommage.

Ajout d’une action : Aucune action de flux dans cette étape.

Connexion entre les étapes : Le résultat prépare les étapes suivantes.

Interface visuelle : Commandes de page ou panneau latéral selon interface.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Commande de création disponible ou limitation identifiée.

Point de contrôle : SharePoint Online organisationnel ; pas OneDrive personnel.

Dépannage : Si SharePoint ou création est absent/grisé, demander une ressource à l’administrateur ; aucune licence/crédit acheté depuis le TP.

### Étape S2 — Créer le site d’équipe privé de test

Objectif : Préparer le conteneur des documents et listes.

Point de départ : Commande de création du site ouverte.

Action exacte :
1. Choisir Site d’équipe / Team site, pas site de communication pour ce cas collaboratif.
2. Si modèle demandé, choisir Équipe Standard puis Utiliser le modèle.
3. Saisir nom et description ci-dessous ; vérifier disponibilité du nom/alias.
4. Choisir Privé si l’option existe.
5. Sélectionner l’étiquette/classification autorisée par la politique de formation ; ne pas inventer un label disponible partout.
6. Choisir français si langue demandée ; valider Créer un site/Créer/Terminer selon écran.
7. Attendre la fin du provisionnement et Accéder au site si proposé.

Navigation : Créer site → Site d’équipe → modèle Standard → paramètres → créer.

Saisie : Nom TP-PMO-Automatisation ; alias proposé tp-pmo-automatisation si accepté ; description Site de test pédagogique pour documents et automatisation PMO — données fictives uniquement. Ajouter suffixe de groupe si nom déjà pris.

Ajout d’une action : Aucune action de flux dans cette étape.

Connexion entre les étapes : Le résultat prépare les étapes suivantes.

Interface visuelle : Commandes de page ou panneau latéral selon interface.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Accueil du site prêt, bibliothèque et Site contents disponibles.

Point de contrôle : Site privé, nom/tenant corrects, uniquement usage pédagogique.

Dépannage : La création peut générer un groupe Microsoft 365 associé ; cela ne signifie pas qu’une équipe Teams/canal a été automatiquement préparé pour ce TP. Ne pas choisir Public pour contourner les droits.

### Étape S3 — Relever l’URL et vérifier les accès utiles

Objectif : Utiliser la même racine de site dans tous les connecteurs.

Point de départ : Accueil du site créé.

Action exacte :
1. Copier l’adresse du site, en conservant la racine réelle indiquée par le tenant.
2. Retirer seulement la partie page /SitePages/... ou liste /Lists/... pour noter SITE_TP.
3. Exemple de forme, non une adresse utilisable fournie : https://votre-tenant.sharepoint.com/sites/TP-PMO-Automatisation.
4. Vérifier que le compte de connexion Power Automate peut consulter et modifier le site/listes/bibliothèque.
5. Ajouter seulement les membres autorisés via l’étape d’ajout de membres du site/groupe si nécessaire ; pour une lecture seule, demander au propriétaire le rôle lecteur approprié.
6. Le destinataire et l’approbateur des tests doivent pouvoir consulter les liens ; le canal Teams peut être distinct mais ses membres ne gagnent pas automatiquement l’accès.

Navigation : Accueil site → URL ; membres/autorisations selon droits.

Saisie : SITE_TP réel ; compte de connexion ; APPROVER_TEST et EMAIL_TEST déjà autorisés.

Ajout d’une action : Aucune action de flux dans cette étape.

Connexion entre les étapes : Le résultat prépare les étapes suivantes.

Interface visuelle : Commandes de page ou panneau latéral selon interface.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Racine notée et droits contrôlés.

Point de contrôle : Ne pas mettre une URL de fichier comme Site Address ; pas lien Anyone/Tout le monde.

Dépannage : Créateur généralement propriétaire dans parcours standard ; autres participants n’héritent pas de ce rôle. Ne pas demander contrôle total quand lecture suffit.

### Étape S4 — Créer l’arborescence documentaire dans Documents

Objectif : Distinguer stockage de fichiers et listes de données.

Point de départ : Site → Documents ou contenu du site → bibliothèque documentaire par défaut.

Action exacte :
1. Ouvrir la bibliothèque Documents ; relever son libellé exact LIBRARY_TP.
2. Cliquer Nouveau / New → Dossier / Folder ; créer PRJ-2026-017.
3. Ouvrir ce dossier.
4. Créer successivement 01_Cadrage, 02_Exigences, 03_Planning et 04_COPIL avec Nouveau → Dossier.
5. Vérifier que chaque dossier est au bon niveau.
6. Relever le dossier 04_COPIL pour le futur sélecteur de Folder Path ; ne pas deviner Documents/Shared Documents d’après la langue.

Navigation : Documents → New → Folder.

Saisie : PRJ-2026-017 / 01_Cadrage / 02_Exigences / 03_Planning / 04_COPIL.

Ajout d’une action : Aucune action de flux dans cette étape.

Connexion entre les étapes : Le résultat prépare les étapes suivantes.

Interface visuelle : Commandes de page ou panneau latéral selon interface.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Dossier projet avec quatre sous-dossiers.

Point de contrôle : Documents contient des fichiers ; PMO_Projets_TP sera une liste de lignes métier ; PMO_CR_Journal une liste de traces.

Dépannage : Si création de dossier interdite, demander l’arborescence au propriétaire. Ne pas casser l’héritage des permissions à chaque dossier par défaut.

### Étape S5 — Charger la charte, le cahier des charges et le planning

Objectif : Obtenir un dossier projet concret sans données client réelles.

Point de départ : Bibliothèque ouverte, fichiers du pack extraits sur votre ordinateur.

Action exacte :
1. Ouvrir 01_Cadrage ; sélectionner Charger / Upload → Fichiers / Files.
2. Choisir Charte_Projet_PRJ_2026_017.docx ; attendre fin de chargement.
3. Dans 02_Exigences, charger Cahier_Charges_PRJ_2026_017.docx.
4. Dans 03_Planning, charger Plan_Projet_PRJ_2026_017.xlsx comme repli autonome.
5. Si vous disposez d’un vrai .mpp du même cas, charger ce fichier dans 03_Planning ; sinon suivre S6 avec Microsoft Project ou rester au .xlsx.
6. Variante confirmée : faire glisser le fichier depuis l’explorateur vers la zone de la bibliothèque ouverte ; déposer lorsque +Copy/zone de copie apparaît.
7. Ouvrir les .docx et .xlsx pour vérifier le contenu ; un .mpp peut nécessiter téléchargement/ouverture dans Project.

Navigation : Dossier cible → Upload → Files ; ou dépôt réel de fichiers dans bibliothèque.

Saisie : Noms exacts fournis ; aucun faux fichier .mpp obtenu par renommage.

Ajout d’une action : Aucune action de flux dans cette étape.

Connexion entre les étapes : Le résultat prépare les étapes suivantes.

Interface visuelle : Commandes de page ou panneau latéral selon interface.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Charte, exigences et planning dans leurs dossiers.

Point de contrôle : Au moins trois fichiers fictifs ouverts ou téléchargés ; zéro document client réel.

Dépannage : Permissions de contribution requises ; si upload bloqué, vérifier droit et taille/type. Ne pas renommer un .xlsx en .mpp. Pas de promesse d’édition Project dans le navigateur.

Microsoft décrit le chargement par Upload et le glisser-déposer dans la bibliothèque. Les options dépendent des permissions. [Microsoft : charger fichiers](https://support.microsoft.com/en-us/sharepoint/documents-and-library/upload-files-and-folders-to-a-library).

### Étape S6 — Créer un véritable planning .mpp si Project est disponible

Objectif : Fournir le format demandé sans fabriquer un fichier propriétaire invalide.

Point de départ : Microsoft Project desktop autorisé ; planning Excel du pack ouvert.

Action exacte :
1. Dans Project : Fichier → Nouveau → Projet vierge.
2. Projet → Informations sur le projet : début pédagogique 21/09/2026 ; confirmer calendrier du TP.
3. Copier les quinze libellés de tâches depuis l’Excel dans Nom de la tâche.
4. Saisir chaque Durée et Prédécesseurs à partir des colonnes Excel ; les IDs correspondent à l’ordre 1–15.
5. Configurer tâches en planification automatique ; les deux jalons ont 0 j.
6. Vérifier le Gantt et l’absence de cycle ; ne pas déclarer les ressources disponibles avant validation.
7. Fichier → Enregistrer sous → fichier Project .mpp ; nom Plan_Projet_PRJ_2026_017.mpp.
8. Charger ce vrai fichier dans 03_Planning comme S5.

Navigation : Project desktop → Nouveau → projet vierge ; Informations projet ; Enregistrer sous.

Saisie : Début 21/09/2026 ; quinze lignes de l’Excel ; .mpp réel.

Ajout d’une action : Aucune action de flux dans cette étape.

Connexion entre les étapes : Le résultat prépare les étapes suivantes.

Interface visuelle : Commandes de page ou panneau latéral selon interface.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Un .mpp produit par Microsoft Project et stocké, ou repli .xlsx explicitement retenu.

Point de contrôle : Rouvrir le .mpp dans Project ; aucune transformation magique du classeur.

Dépannage : Sans Project/licence, S6 n’est pas exécuté : conserver le planning .xlsx. Le TP Power Automate principal reste possible car il ne lit pas les tâches internes du .mpp.

### Étape S7 — Copier les liens sans élargir les droits

Objectif : Préparer les références que le CR diffusera.

Point de départ : Bibliothèque, fichiers présents.

Action exacte :
1. Sélectionner Charte_Projet...docx dans 01_Cadrage.
2. Utiliser Copier le lien / Copy link.
3. Dans paramètres du lien (roue dentée si affichée), choisir Personnes disposant déjà d’un accès / People with existing access quand disponible.
4. Copier le lien ; noter CharterUrl localement.
5. Refaire pour le cahier RequirementsUrl et le planning PlanUrl (mpp réel ou xlsx de repli).
6. Tester ouverture avec le compte destiné à recevoir le CR ou vérifier ses droits ; ne pas créer un lien Anyone ou toute organisation pour simplifier.

Navigation : Fichier sélectionné → Copy link → paramètres.

Saisie : Trois liens réels ; ne pas copier les exemples de domaine du cahier.

Ajout d’une action : Aucune action de flux dans cette étape.

Connexion entre les étapes : Le résultat prépare les étapes suivantes.

Interface visuelle : Commandes de page ou panneau latéral selon interface.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Liens accessibles uniquement aux destinataires autorisés.

Point de contrôle : Le lien n’est pas une nouvelle autorisation ; les membres Teams hors site peuvent avoir accès refusé.

Dépannage : Si option existing access absent, utiliser le lien du fichier accessible sans changer la portée, ou demander au propriétaire une solution conforme. Ne pas élargir les droits automatiquement.

### Étape S8 — Préparer le raccordement aux listes et aux flows

Objectif : Conserver les paramètres nécessaires avant la création des listes.

Point de départ : Site prêt, fichiers chargés et liens copiés.

Action exacte :
1. Créer une fiche locale avec SITE_TP, LIBRARY_TP, CharterUrl, RequirementsUrl et PlanUrl.
2. Vérifier que Contenu du site permet de créer des listes ; ne pas créer les listes une seconde fois ici.
3. Poursuivre les étapes A1.2–A1.5 : elles créent PMO_Projets_TP et PMO_CR_Journal sur ce site.
4. A1.3 prévoit les trois colonnes de liens ; A1.4 recevra vos trois URL réelles.
5. À la fin d’A1.4, noter ITEM_ID réel ; celui-ci n’est pas l’ID du fichier de charte.
6. Conserver les mêmes données et mêmes liens dans A et B.

Navigation : Fiche de paramètres puis Contenu du site ; suites A1.2–A1.5.

Saisie : SITE_TP et bibliothèque réels ; trois URL autorisées, chacune sur une seule ligne.

Ajout d’une action : Aucune action de flux dans cette étape.

Connexion entre les étapes : GET_PROJET récupérera CharterUrl, RequirementsUrl et PlanUrl comme colonnes scalaires.

Interface visuelle : Commandes de page ou panneau latéral selon interface.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Paramètres de raccordement prêts ; création des listes guidée dans la suite.

Point de contrôle : Données65/72/Orange/V1 inchangées ; pas de lien public ni de droit élargi.

Dépannage : Les fichiers ne remplacent pas la liste structurée ; aucune extraction automatique du .mpp n’est supposée.

### Structure finale du site

```text
TP-PMO-Automatisation (privé)
├── Documents (libellé/URL réelle à relever)
│   └── PRJ-2026-017
│       ├── 01_Cadrage / Charte_Projet_PRJ_2026_017.docx
│       ├── 02_Exigences / Cahier_Charges_PRJ_2026_017.docx
│       ├── 03_Planning / Plan_Projet_PRJ_2026_017.xlsx ou .mpp réel
│       └── 04_COPIL / comptes rendus .html générés par les flows
├── PMO_Projets_TP (lignes structurées + liens)
└── PMO_CR_Journal (réservations, étapes et erreurs)
```

Le site d’équipe/groupe SharePoint ne configure pas automatiquement TEAM_TP et CHANNEL_TP : vérifier une équipe/canal de test existants, puis leurs accès aux documents. La création du site est un coût commun, pas un gain attribuable à Copilot dans B.


## 5. Architecture du flux

Le site SharePoint regroupe bibliothèque de documents et listes structurées. Le workflow lit les indicateurs depuis la liste, référence les documents et archive son CR approuvé dans la bibliothèque. Il n’interprète pas automatiquement le contenu des documents.

Source : liste SharePoint. Avantages : une ligne identifiable par ID, champs typés, accès M365, journal modifiable et unicité des clés. Limites : droits requis, lecture/écriture non transactionnelles, pas une base relationnelle complexe ni service d’envoi garanti. Excel est une option possible mais ses tables/verrous/récupération multiple introduiraient un autre TP ; nous gardons SharePoint pour reproductibilité.

Le trigger manuel évite qu’un changement de données de test déclenche une diffusion non souhaitée ; ni récurrence ni trigger item modified ne sont ajoutés.

```text
Données SharePoint → lancement manuel → lecture de la ligne et contrôle projet
→ réservation unique → modèle texte/HTML → approbation humaine
→ archive HTML dans Documents/PRJ-2026-017/04_COPIL → Teams → journal étape → Outlook → journal Diffuse
                         échec → log/arrêt, pas reprise aveugle
```

### Arborescence cible exacte

```text
Manually trigger a flow (ItemId, DateRapport, Revision)
  Compose Parcours=A ou B
  Compose DateRapport
  Compose Revision
  Compose RunId
  Scope TRAITEMENT
    GET_PROJET (SharePoint Get item)
    Condition BON_PROJET
      False -> Terminate Failed
      True -> DateGeneration -> CleRapport -> CHERCHE_JOURNAL
        Condition DOUBLON (length(value)>0)
          True -> Compose Doublon -> Terminate Succeeded
          False -> RESERVE_JOURNAL (Create item)
            DateEcheance -> CR_Texte -> CR_Echappe -> CR_HTML
            APPROBATION (Start and wait for an approval)
            Condition AUTORISE (outcome=Approve)
              False -> JOURNAL_REJETE -> Terminate Succeeded
              True -> JOURNAL_VALIDE
                ARCHIVE_CR (SharePoint Create file)
                POST_TEAMS -> JOURNAL_TEAMS
                SEND_MAIL -> JOURNAL_DIFFUSE
  Scope ERREUR_TECHNIQUE (après TRAITEMENT Failed/Timed out)
    ERREUR_JOURNAL -> Terminate Failed
```

Une Scope regroupe des actions ; une Condition choisit une branche. Compose/Composer stocke une valeur ou assemble un texte. Un contenu dynamique est une valeur reçue d’une étape précédente, pas le nom d’un champ tapé comme texte.

La demande d’approbation transmet le brouillon uniquement à un relecteur autorisé et peut l’inclure dans sa notification. Ce circuit de revue est distinct de la diffusion finale au canal/destinataire. L’approbation autorise la diffusion de ce CR, pas la décision métier de renfort ni un GO projet. Le workflow ne devient pas décideur PMI/PMBOK.

## 6. Description des données du projet

### Liste PMO_Projets_TP

| Nom technique | Champ métier | Type | Valeur | Contrôle |
| --- | --- | --- | --- | --- |
| Title | Titre (colonne native) | Une ligne de texte | Modernisation du système d’information | Ne pas renommer la colonne native |
| ProjectRef | Référence | Une ligne de texte | PRJ-2026-017 | Obligatoire |
| ProjectManager | Chef de projet | Une ligne de texte | Alexandra Rey | Personne fictive, pas colonne Personne |
| Sponsor | Sponsor | Une ligne de texte | Directeur des systèmes d’information | Rôle fictif |
| Status | Statut | Une ligne de texte | Orange | Valeur source, pas résultat IA |
| Progress | Avancement | Nombre | 65 | 0–100, zéro décimale ; ne pas sélectionner format pourcentage |
| BudgetUsed | Budget consommé | Nombre | 72 | 0–100, zéro décimale ; ne pas sélectionner format pourcentage |
| NextDeliverable | Prochaine échéance | Une ligne de texte | Livraison du prototype | Obligatoire |
| Deadline | Date échéance | Une ligne de texte | 2026-10-23 | Texte ISO AAAA-MM-JJ ; pas de conversion de fuseau du site |
| MainRisk | Risque principal | Plusieurs lignes de texte | Retard de livraison lié à une dépendance fournisseur | Texte brut, sans mise en forme enrichie |
| Impact | Impact | Une ligne de texte | Élevé | Donnée source, pas score calculé |
| ProposedAction | Action proposée | Plusieurs lignes de texte | Réunion d’escalade avec le fournisseur | Proposition, pas action déjà réalisée |
| ExpectedDecision | Décision attendue | Plusieurs lignes de texte | Arbitrage sur le renforcement temporaire de l’équipe | Pas décision déjà approuvée |
| NextMeeting | Prochaine réunion | Une ligne de texte | Comité de pilotage de la semaine suivante — date précise à confirmer | Ne pas inventer date/heure |
| Highlights | Faits marquants | Plusieurs lignes de texte | Cadrage validé ; développement du prototype en cours ; confirmation fournisseur attendue. | Faits fictifs du cas |
| DataOwner | Propriétaire des données | Une ligne de texte | PMO de formation | Responsabilité fictive |
| DataVersion | Version données | Une ligne de texte | V1 | Conserver identique entre A et B |
| CharterUrl | Lien charte | Plusieurs lignes de texte | URL réelle de la charte, copiée en S7 | Texte brut, une URL sans retour à la ligne, pas de lien public |
| RequirementsUrl | Lien cahier des charges | Plusieurs lignes de texte | URL réelle du cahier des charges, copiée en S7 | Texte brut, une URL sans retour à la ligne |
| PlanUrl | Lien planning | Plusieurs lignes de texte | URL réelle du .mpp ou .xlsx de repli, copiée en S7 | Pas de promesse de lecture des tâches du .mpp |



Noms techniques exacts sans espaces/accents pour éviter des références ambiguës. Les valeurs 65 et 72 sont des nombres, les % seront ajoutés au texte. Le budget total/PV/EV ne sont pas fournis ; ne pas déduire CPI, SPI, dépassement final ou retard en jours de la seule comparaison 65/72.

### Liste PMO_CR_Journal

| Colonne | Type | Rôle |
| --- | --- | --- |
| Title | Une ligne de texte | Native ; valeurs uniques = Oui ; clé de réservation |
| ProjectRef | Une ligne de texte | Référence projet |
| Path | Une ligne de texte | A ou B |
| Stage | Une ligne de texte | Reserve / Rejete / Valide / TeamsPublie / Diffuse / ErreurTechnique |
| RunId | Une ligne de texte | Identifiant exécution |
| Details | Plusieurs lignes de texte | Texte brut : état et renvoi historique |


Deadline est une chaîne ISO pour rendre le cas indépendant du fuseau du site ; formatDateTime la rend lisible. Un projet réel utilisant une colonne Date doit documenter son fuseau et tester la conversion.

Les trois URLs appartiennent au dossier du même projet et sont identiques dans A/B. Elles ne sont pas des adresses de destinataires et ne donnent aucun droit d’accès supplémentaire.

La clé est Parcours|ProjectRef|DateRapport|Revision. A et B ont des namespaces différents pour autoriser une diffusion comparative chacun ; répéter le même parcours/date/révision doit bloquer. Le mode protège contre relance volontaire et concurrence de réservation, pas contre toute incertitude d’un service externe.

Le CSV livré est une fiche de valeurs. Ne pas supposer qu’un import CSV crée les colonnes exactes/Title comme la création de liste vierge ; suivre la préparation manuelle.

Les commandes SharePoint New/List/Blank list/Add column et la propriété unique sont documentées. [Microsoft : créer une liste](https://support.microsoft.com/en-us/sharepoint/lists/data-and-lists/create-a-list) ; [Microsoft : unicité](https://support.microsoft.com/en-us/sharepoint/lists/data-and-lists/create-list-relationships-by-using-lookup-columns).

## 7. Parcours A — réalisation sans Copilot

Démarrer la mesure A ; ne pas consulter le panneau d’aide IA pendant cette construction. Les champs/formules/modèles du cahier sont fournis à l’identique pour B.

### Étape A1.1 — Ouvrir les services et vérifier les droits

Objectif : Éviter un blocage découvert après construction.

Point de départ : Navigateur, compte professionnel de formation.

Action exacte :
1. Ouvrir https://make.powerautomate.com ; choisir l’environnement de formation dans le sélecteur en haut.
2. Ouvrir le site SharePoint créé à S2 (ou fourni par administration si création interdite), puis Teams et Outlook dans des onglets distincts.
3. Vérifier droit de création de listes, accès à une équipe/canal standard de test, boîte Exchange Online et usage Approvals.
4. Dans Power Automate, utiliser More / Plus > Connections / Connexions si la rubrique n’est pas épinglée.
5. Ne pas changer de politique DLP, rôle admin ou licence pour contourner une restriction.

Navigation : Power Automate Home / Accueil ; SharePoint site fourni ; Teams canal test ; Outlook boîte de test.

Saisie : SITE_TP, TEAM_TP, CHANNEL_TP, EMAIL_TEST et APPROVER_TEST sont à relever dans la fiche environnement ; EMAIL_TEST peut être votre propre boîte professionnelle.

Ajout d’une action : Aucune action de flux encore ; les connexions peuvent aussi être créées à l’ajout de chaque action.

Connexion entre les étapes : Les identités de connexion sont autorisées pour le même périmètre de formation.

Interface visuelle : Sélecteur environnement dans l’en-tête ; menus pouvant être masqués sous Plus.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Utiliser seulement les commandes + Nouveau / + Ajouter une colonne indiquées pour la liste ; aucun raccordement de flèches.

Enregistrement : Consigner environnement et cibles ; ne pas publier cette fiche contenant des coordonnées réelles.

Résultat attendu : Accès source/destinations testés.

Point de contrôle : Pas de compte personnel Outlook.com ni de canal de production ; environnement de formation correct.

Dépannage : Si un droit manque, demander une ressource préprovisionnée. Ne pas déclarer réussi l’envoi Teams si vous n’avez que le mode chat de repli.

### Étape A1.2 — Créer la liste des projets

Objectif : Préparer une source stable partagée par A et B.

Point de départ : Page du site SharePoint de formation.

Action exacte :
1. Sélectionner Contenu du site / Site contents, puis + Nouveau / New > Liste / List.
2. Choisir Liste vierge / Blank list.
3. Donner le nom PMO_Projets_TP ; saisir la description proposée.
4. Sélectionner Créer / Create.
5. Vérifier la colonne native Titre / Title ; ne pas la supprimer ni la renommer.

Navigation : SharePoint → Site contents → New → List → Blank list.

Saisie : Nom PMO_Projets_TP ; description Données fictives pour comparaison Power Automate A/B.

Ajout d’une action : Créer des colonnes à l’étape suivante, pas un flux depuis le menu Automatiser de la liste.

Connexion entre les étapes : Cette liste sera sélectionnée par GET_PROJET dans les deux flows.

Interface visuelle : La liste comporte Title et une commande + Ajouter une colonne.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Utiliser seulement les commandes + Nouveau / + Ajouter une colonne indiquées pour la liste ; aucun raccordement de flèches.

Enregistrement : Create crée la liste ; attendre la fin.

Résultat attendu : Liste vierge accessible.

Point de contrôle : Liste sur SITE_TP, pas Mes listes personnelles.

Dépannage : Si List manque, vérifier les droits ; utiliser une liste du même schéma fournie par le responsable. Le CSV livré est une aide de saisie, pas un package d’import de flow.

### Étape A1.3 — Créer les colonnes sans ambiguïté de types

Objectif : Permettre des jetons scalaires et des formules reproductibles.

Point de départ : PMO_Projets_TP ouverte.

Action exacte :
1. Cliquer + Ajouter une colonne / Add column.
2. Choisir le type du tableau de section 6.
3. Saisir le nom technique exact, sans espaces ni accents.
4. Pour Progress/BudgetUsed, choisir Nombre, zéro décimale, minimum 0, maximum 100 ; ne pas utiliser la présentation pourcentage.
5. Pour Deadline, choisir Une ligne de texte ; nous stockons une date ISO stable plutôt qu’un horodatage SharePoint.
6. Pour textes multilignes, sélectionner texte brut.
7. Rendre les données métier du cas obligatoires si le panneau le permet ; conserver les noms du tableau.
8. Enregistrer chaque colonne et recommencer pour les dix-neuf colonnes supplémentaires.

Navigation : En-tête de liste → Add column → type → nom/options → Save.

Saisie : Noms et types exactement section 6 ; Title est déjà présent.

Ajout d’une action : Pas d’action de flow ; ajouter les colonnes une à une.

Connexion entre les étapes : Les noms techniques deviennent les champs source du compte rendu.

Interface visuelle : Panneau de création de colonne ; options supplémentaires parfois repliées.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Utiliser seulement les commandes + Nouveau / + Ajouter une colonne indiquées pour la liste ; aucun raccordement de flèches.

Enregistrement : Save chaque colonne ; vérifier en-têtes au retour.

Résultat attendu : Vingt colonnes métier, native Title comprise.

Point de contrôle : Progress stocke 65, pas 0,65 ni 6500 %. ProjectManager est texte, pas Personne.

Dépannage : Si un type a été mal choisi, corriger avant de saisir ; une colonne renommée garde parfois son ancien nom interne. Pour ce TP, recréer la colonne neuve avec le bon nom plutôt que deviner son nom interne.

### Étape A1.4 — Saisir le projet et relever son ID SharePoint

Objectif : Lire ensuite une ligne unique sans boucle.

Point de départ : Liste des projets, schéma complet.

Action exacte :
1. Cliquer + Nouveau / New ou + Add new item.
2. Saisir chaque valeur de section 6.
3. Pour Deadline, saisir exactement 2026-10-23 (AAAA-MM-JJ) ; ne pas saisir 23/10/2026 dans cette colonne source.
4. Coller les trois URL réelles de S7 dans CharterUrl, RequirementsUrl et PlanUrl ; enregistrer.
5. Ouvrir la ligne ; relever son ID numérique, via colonne ID affichée dans la vue ou paramètre ID de l’URL du formulaire.
6. Vérifier la référence et les nombres après sauvegarde.

Navigation : PMO_Projets_TP → New → formulaire → Save ; options de vue pour afficher ID si nécessaire.

Saisie : Données fictives section 6. Relever ITEM_ID réel, souvent 1 mais jamais le supposer.

Ajout d’une action : Aucune création de flow automatique depuis la liste.

Connexion entre les étapes : ITEM_ID alimente le déclencheur manuel, ProjectRef reste l’identifiant métier.

Interface visuelle : Formulaire puis ligne de liste ; ID peut être masqué dans la vue par défaut.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Utiliser seulement les commandes + Nouveau / + Ajouter une colonne indiquées pour la liste ; aucun raccordement de flèches.

Enregistrement : Save l’item ; ouvrir de nouveau pour contrôle.

Résultat attendu : Projet visible avec 65, 72, Orange et Deadline 23/10/2026.

Point de contrôle : ITEM_ID numérique ≠ PRJ-2026-017.

Dépannage : Si ID non visible, consulter URL du formulaire ou activer ID dans Show/hide columns. Si impossible, demander cet ID au propriétaire de liste sans changer les droits.

### Étape A1.5 — Créer le journal et sa clé unique

Objectif : Réserver un rapport avant toute diffusion afin de bloquer les répétitions.

Point de départ : Site SharePoint de formation.

Action exacte :
1. Refaire New > List > Blank list ; nommer PMO_CR_Journal.
2. Garder Title ; ajouter ProjectRef, Path, Stage, RunId et Details selon section 6.
3. Ouvrir Settings / roue dentée > List settings ; si Settings ouvre un volet, sélectionner les paramètres de liste complets.
4. Dans Columns, ouvrir Title ; activer Enforce unique values / Appliquer des valeurs uniques = Yes/Oui.
5. Enregistrer et accepter la création d’index si demandée.
6. Tester à la main deux entrées Title TEST_UNIQUE ; la deuxième doit être refusée. Conserver/supprimer l’entrée de test selon règle du site.

Navigation : SharePoint → List settings → Columns → Title.

Saisie : PMO_CR_Journal ; Title unique = Oui ; cinq colonnes supplémentaires du tableau.

Ajout d’une action : Le journal utilise Create item et Update item dans le flow, sans connecteur custom.

Connexion entre les étapes : La réservation précède approbation et envois.

Interface visuelle : Paramétrage classique de colonne peut être utilisé depuis une liste moderne.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Utiliser seulement les commandes + Nouveau / + Ajouter une colonne indiquées pour la liste ; aucun raccordement de flèches.

Enregistrement : OK/Save des paramètres ; enregistrer chaque colonne.

Résultat attendu : La contrainte empêche deux lignes avec la même clé, même en lancements simultanés.

Point de contrôle : Test de doublon Title rejeté ; la liste est vide de vraie réservation.

Dépannage : Si vous ne pouvez pas activer unicité, arrêter la validation anti-doublon complète : le simple contrôle Get items ne protège pas les courses concurrentes. Demander la configuration autorisée.

### Étape A2.1 — Créer le flow manuel A

Objectif : Construire une référence sans assistance IA.

Point de départ : Power Automate → environnement formation.

Action exacte :
1. Ouvrir Créer / Create.
2. Choisir Flux cloud instantané / Instant cloud flow.
3. Saisir PMO_CR_A_Manuel.
4. Choisir Manually trigger a flow / Déclencher manuellement un flux ; sélectionner Create.
5. N’ouvrir ni Create with Copilot ni son panneau de génération.
6. Dans le déclencheur, Add an input : Number nommé ItemId ; Text nommé DateRapport ; Text nommé Revision.

Navigation : Create → Instant cloud flow → Manually trigger a flow.

Saisie : ItemId = type Nombre ; DateRapport = Texte au format AAAA-MM-JJ ; Revision = Texte, R01 pour premier essai.

Ajout d’une action : Le déclencheur est créé par l’assistant de création ; les autres cartes sont ajoutées avec +.

Connexion entre les étapes : Le flux est linéaire jusqu’aux conditions ; aucune flèche à dessiner.

Interface visuelle : Sélectionner une carte ouvre Parameters/Paramètres dans le nouveau designer.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : aucun ajout nécessaire pendant ce contrôle/test ; dans le concepteur, + sous une carte ajoute une action à cet emplacement. Ne pas ajouter des colonnes SharePoint depuis cet écran.

Enregistrement : Save ; vérifier les trois entrées dans le contenu dynamique.

Résultat attendu : Un déclencheur manuel à trois entrées.

Point de contrôle : Pas de déclencheur modification de liste, pas de récurrence ; un test démarre seulement sur action volontaire.

Dépannage : Si Instant cloud flow absent, utiliser My flows > New flow si offert. Si pas de droits maker, prérequis non satisfait ; aucune simulation ne vaut exécution réelle.

### Étape A2.2 — Ajouter les repères de parcours et de run

Objectif : Créer des constantes nécessaires au journal.

Point de départ : Concepteur du flow A, sous déclencheur.

Action exacte :
1. Cliquer + sous le déclencheur, Add an action ; chercher Compose / Composer dans Data Operation / Opérations de données.
2. Renommer la carte Parcours et entrer A.
3. Ajouter un Compose DateRapport sous Parcours ; Inputs = jeton DateRapport du déclencheur.
4. Ajouter Compose Revision ; Inputs = jeton Revision du déclencheur.
5. Ajouter Compose RunId ; dans fx / Expression saisir la formule ci-dessous.
6. Donner ces noms exacts via titre éditable ou menu de renommage affiché.

Navigation : + → Add an action → Data Operation → Compose.

Saisie : Parcours=A ; DateRapport et Revision = vraies valeurs dynamiques ; RunId : `workflow()?['run']?['name']`.

Ajout d’une action : Chaque + doit être placé sous la carte précédente.

Connexion entre les étapes : Les Outputs de ces Compose seront sélectionnées ensuite ; taper DateRapport ne crée pas un jeton.

Interface visuelle : Texte statique A ; jetons graphiques ; onglet Expression pour une formule, sans @ ni guillemets externes.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save après les quatre cartes.

Résultat attendu : Quatre repères, pas de connecteur supplémentaire.

Point de contrôle : Chaque carte a un nom unique ; RunId n’est pas une chaîne littérale.

Dépannage : Si le nom est différent, le corriger avant de copier les expressions suivantes. Une erreur de nom peut casser la référence outputs().

### Étape A2.3 — Créer le périmètre de traitement

Objectif : Préparer l’arrêt et la gestion d’erreur.

Point de départ : Concepteur, après RunId.

Action exacte :
1. Cliquer + sous RunId ; chercher Scope / Étendue dans Control / Contrôle.
2. Renommer TRAITEMENT.
3. Toutes les cartes GET_PROJET jusqu’au journal final seront à l’intérieur de cette Scope.
4. Vérifier sa bordure/conteneur avant chaque insertion.

Navigation : Control → Scope.

Saisie : Nom TRAITEMENT.

Ajout d’une action : Ajouter la première action avec le + situé dans la Scope, pas le + extérieur.

Connexion entre les étapes : La Scope est un conteneur, pas une boucle.

Interface visuelle : Cadre contenant les actions ; une condition peut avoir ses branches à l’intérieur.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Scope vide prête à recevoir les actions.

Point de contrôle : Ni Apply to each ni For each ajouté.

Dépannage : Si une action est au mauvais niveau, supprimer/recréer avant de configurer ; ne pas déplacer une flèche. Une commande de copie/déplacement peut exister mais n’est pas requise.

### Étape A3.1 — Récupérer une seule ligne projet

Objectif : Éviter Get items et une boucle inutile pour la source métier.

Point de départ : Concepteur, dans TRAITEMENT.

Action exacte :
1. Cliquer + dans TRAITEMENT ; chercher SharePoint Get item / Obtenir un élément.
2. Choisir l’action singulière Get item ; renommer GET_PROJET.
3. Si une connexion est demandée, Sign in avec le compte autorisé ; ne saisir aucun secret dans le flow.
4. Site Address = SITE_TP ; List Name = PMO_Projets_TP.
5. Id = jeton ItemId du déclencheur.
6. Déployer la liste de contenu dynamique pour vérifier les champs métier.

Navigation : SharePoint → Get item.

Saisie : Site exact, PMO_Projets_TP, ItemId dynamique.

Ajout d’une action : + → rechercher Get item sous SharePoint ; vérifier le singulier.

Connexion entre les étapes : GET_PROJET retourne un objet unique ; chaque champ est scalaire.

Interface visuelle : Paramètres obligatoires site/liste/Id ; les champs apparaissent après sélection de liste.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Carte sans paramètres obligatoires manquants.

Point de contrôle : Id ne contient pas le texte PRJ-2026-017 ; pas d’Apply to each automatique.

Dépannage : Si liste absente, contrôler site et connexion ; rafraîchir la sélection. Une adresse de liste entière n’est pas l’adresse du site.

### Étape A3.2 — Vérifier le projet ciblé

Objectif : Empêcher un CR basé sur une autre ligne.

Point de départ : Concepteur, après GET_PROJET dans TRAITEMENT.

Action exacte :
1. Ajouter Control > Condition ; nommer BON_PROJET.
2. Gauche = jeton ProjectRef de GET_PROJET ; opérateur is equal to ; droite PRJ-2026-017.
3. Dans False/Non, ajouter Control > Terminate / Terminer, statut Failed, code SOURCE_INCORRECTE si proposé.
4. Dans True/Oui, ajouter Compose DateGeneration avec la formule ci-dessous ; les actions suivantes resteront dans cette branche.

Navigation : Control → Condition ; branches True/False.

Saisie : ProjectRef = PRJ-2026-017 ; DateGeneration : `formatDateTime(utcNow(),'dd/MM/yyyy HH:mm')`.

Ajout d’une action : + dans True pour continuer ; + dans False pour arrêter.

Connexion entre les étapes : La branche True contient tout le compte rendu et diffusion.

Interface visuelle : Condition avec deux chemins ; choisir le jeton sous GET_PROJET.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Arrêt si ID mène à un autre projet.

Point de contrôle : La date générée est horodatage UTC, distincte de DateRapport pédagogique.

Dépannage : Si Case False s’exécute sur la bonne ligne, inspecter GET_PROJET Outputs : référence erronée, espace ou mauvaise colonne.

### Étape A3.3 — Créer la clé et chercher une réservation

Objectif : Bloquer la réexécution du même rapport dans le même parcours.

Point de départ : Concepteur, True de BON_PROJET, après DateGeneration.

Action exacte :
1. Ajouter Compose CleRapport avec la formule section 7 (expressions).
2. Ajouter SharePoint Get items / Obtenir les éléments ; renommer CHERCHE_JOURNAL.
3. Site=SITE_TP ; Liste=PMO_CR_Journal.
4. Dans Advanced parameters / paramètres avancés, activer Filter Query et Top Count si masqués.
5. Filter Query : taper `Title eq ` puis une apostrophe, insérer Outputs CleRapport, finir par une apostrophe ; aucun espace ajouté dans la valeur entre apostrophes.
6. Top Count = 1.

Navigation : Data Operation Compose puis SharePoint Get items.

Saisie : CleRapport = A|PRJ-2026-017|2026-10-11|R01 au test ; filtre final `Title eq 'A|PRJ-2026-017|2026-10-11|R01'` une fois les jetons résolus.

Ajout d’une action : + après DateGeneration puis + après CleRapport.

Connexion entre les étapes : Get items est ici réservé au journal ; le tableau value sera compté, pas parcouru.

Interface visuelle : Paramètres avancés parfois à cocher avant de s’afficher.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Recherche au maximum une ligne par clé unique.

Point de contrôle : Filter Query contient un vrai jeton et des apostrophes simples ; Top Count 1.

Dépannage : Ne pas utiliser filtres avec noms de colonne traduits ; la colonne interne est Title. DateRapport/Revision doivent être ISO et R01/R02 sans apostrophe ni caractères libres.

### Étape A3.4 — Bloquer le doublon et réserver le premier run

Objectif : Garantir une réservation avant approbation/envoi.

Point de départ : Concepteur, après CHERCHE_JOURNAL.

Action exacte :
1. Ajouter Condition DOUBLON.
2. Dans gauche, fx/Expression : `length(body('CHERCHE_JOURNAL')?['value'])` ; opérateur is greater than ; droite 0.
3. True : Compose texte Doublon bloqué ; aucune nouvelle diffusion ; puis Terminate statut Succeeded.
4. False : ajouter SharePoint Create item ; renommer RESERVE_JOURNAL ; remplir le tableau section 7.
5. Conserver Title unique : si deux runs passent le contrôle simultanément, le second Create doit échouer et n’enverra rien.

Navigation : Control Condition ; SharePoint Create item.

Saisie : Title=Outputs CleRapport ; ProjectRef=GET_PROJET.ProjectRef ; Path=Outputs Parcours ; Stage=Reserve ; RunId=Outputs RunId ; Details=Réservation avant validation et diffusion.

Ajout d’une action : + dans False après test de doublon pour les futures cartes ; aucune action d’envoi dans True.

Connexion entre les étapes : RESERVE_JOURNAL retourne l’ID numérique de la ligne de journal.

Interface visuelle : Condition compte le tableau via expression ; Create item exige Title.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Ligne réservée, ou run arrêté comme doublon.

Point de contrôle : L’ID de RESERVE_JOURNAL, et non ItemId projet, servira aux Update item.

Dépannage : Toute ligne de clé existante, y compris rejet/échec, bloque. Ne pas supprimer la réservation ni changer de révision pour relancer à l’aveugle après un envoi partiel.

### Étape A4.1 — Préparer la date d’échéance et le compte rendu texte

Objectif : Assembler fidèlement les données, sans génération IA.

Point de départ : Concepteur, False de DOUBLON, après RESERVE_JOURNAL.

Action exacte :
1. Ajouter Compose DateEcheance ; saisir la formule ci-dessous dans Expression.
2. Ajouter Compose CR_Texte.
3. Coller le modèle section 7.
4. Pour chaque emplacement [JETON ...], le supprimer et insérer le vrai jeton : clic dans Inputs, icône éclair/contenu dynamique, section de l’action productrice.
5. Choisir les champs sous GET_PROJET, sauf DateRapport/DateGeneration/DateEcheance qui viennent des Compose.
6. Les pourcentages source sont 65 et 72 ; le symbole % est du texte ajouté après le jeton.

Navigation : Data Operation → Compose.

Saisie : DateEcheance : `formatDateTime(outputs('GET_PROJET')?['body/Deadline'],'dd/MM/yyyy')` ; CR_Texte = modèle section 7.

Ajout d’une action : + sous RESERVE_JOURNAL, puis + sous DateEcheance.

Connexion entre les étapes : Seules les valeurs réellement insérées circulent ; écrire le nom d’un champ ne récupère pas son contenu.

Interface visuelle : Inputs accepte texte et jetons mêlés ; fx sert aux expressions prêtes à copier.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save ; vérifier aucun [JETON...] resté littéral.

Résultat attendu : Rapport neuf rubriques avec faits, risque, proposition et décision attendue.

Point de contrôle : Aucune décision prise ni date de réunion inventées ; BudgetUsed72 n’est pas CPI.

Dépannage : Si un Apply to each apparaît, vous avez choisi un jeton array de CHERCHE_JOURNAL plutôt que GET_PROJET. Revenir à l’action de source singulière.

### Étape A4.2 — Produire une version HTML minimale commune

Objectif : Rendre le même texte lisible dans Teams et Outlook.

Point de départ : Concepteur, après CR_Texte.

Action exacte :
1. Ajouter Compose CR_Echappe ; saisir l’expression section 7 qui échappe &, < et >.
2. Ajouter Compose CR_HTML ; saisir la formule remplaçant les retours à la ligne par <br>.
3. Ne pas ajouter de Markdown riche, de table complexe ou de script.
4. Conserver CR_Texte pour l’approbation ; CR_HTML sera identique pour les deux destinations.

Navigation : Data Operation → Compose → Expression.

Saisie : CR_Echappe et CR_HTML : expressions intégrales section 7.

Ajout d’une action : Chaque carte est ajoutée sous la précédente.

Connexion entre les étapes : Le HTML est une transformation de format, pas un résumé intelligent ; aucune IA à l’exécution.

Interface visuelle : Deux chaînes de texte ; balises simples <br> générées après échappement des données.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Texte sûr pour le petit corpus fictif et HTML de mise en forme minimale.

Point de contrôle : Les symboles < saisis dans un champ source ne deviennent pas une instruction HTML.

Dépannage : Si les balises sont affichées littéralement, vérifier le mode du champ destination puis le test rendu. L’échappement simple n’est pas une politique complète de sécurité pour tous documents.

### Étape A4.3 — Demander l’approbation du contenu avant diffusion

Objectif : Intégrer une validation humaine effective.

Point de départ : Concepteur, après CR_HTML.

Action exacte :
1. Cliquer + ; rechercher approval/approbation.
2. Dans Standard approvals / Approbations standard, choisir Start and wait for an approval / Démarrer et attendre une approbation.
3. Renommer APPROBATION.
4. Type : Approve/Reject - First to respond / Approuver-Rejeter, premier à répondre.
5. Title : [TP] Validation CR + jeton CleRapport.
6. Assigned to : adresse professionnelle contrôlée APPROVER_TEST.
7. Details : Outputs de CR_Texte ; ajouter Règle : approuver la diffusion du compte rendu, pas le renfort ni le GO du projet.
8. Garder un seul approbateur pour le TP.

Navigation : Standard approvals → Start and wait for an approval.

Saisie : APPROVER_TEST choisi avec autorisation ; titre/Details ci-dessus.

Ajout d’une action : + après CR_HTML ; aucune action d’envoi du CR avant cette carte.

Connexion entre les étapes : Le flow reste en attente ; l’approbation peut elle-même envoyer une notification, différente de l’email CR.

Interface visuelle : Type, Title, Assigned to et Details visibles ; la validation se fait ensuite via Approvals ou notification.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Demande de validation puis pause jusqu’à réponse.

Point de contrôle : L’approbateur peut lire toutes les rubriques ; la diffusion est conditionnée à sa réponse.

Dépannage : Si Approvals manque, demander l’environnement/configuration nécessaires. Ne pas activer automatiquement Dataverse ni acheter une licence. La variante manuelle sécurisée de section 8 donne des résultats plus limités.

### Étape A4.4 — Brancher l’acceptation et le rejet

Objectif : Éviter tout envoi de CR rejeté.

Point de départ : Concepteur, après APPROBATION.

Action exacte :
1. Ajouter Control > Condition, renommer AUTORISE.
2. Gauche : Outcome / Résultat global de APPROBATION ; opérateur equals ; droite Approve.
3. Si le jeton global manque, utiliser l’expression `body('APPROBATION')?['outcome']`.
4. Ne pas choisir le tableau Responses qui créerait une boucle.
5. Dans False, ajouter SharePoint Update item JOURNAL_REJETE ; configurer le schéma commun de mise à jour puis Stage=Rejete.
6. Sous lui, Terminate statut Succeeded, message CR rejeté, non diffusé.
7. Dans True, ajouter Update item JOURNAL_VALIDE ; Stage=Valide.

Navigation : Control Condition ; SharePoint Update item.

Saisie : Comparaison à Approve, même si le bouton de l’approbateur est traduit. Stage Rejete ou Valide ; schéma commun section 7.

Ajout d’une action : Les destinations sont uniquement dans True après JOURNAL_VALIDE.

Connexion entre les étapes : Update item utilise ID de RESERVE_JOURNAL et Title de CleRapport ; jamais ID de GET_PROJET.

Interface visuelle : Branches True/False ; un rejet est un résultat métier normal, pas forcément run technique Failed.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Deux chemins correctement séparés.

Point de contrôle : Aucun Teams/Outlook dans False ; approbation du CR ne valide pas ExpectedDecision.

Dépannage : Si la condition rejette un accord, lire Outputs APPROBATION et comparer sa valeur globale ; ne pas inventer la traduction dans le résultat technique.

### Étape A4.5 — Archiver le compte rendu approuvé dans la bibliothèque

Objectif : Produire un document utile dans SharePoint avant la diffusion.

Point de départ : Concepteur A ou B, branche True de AUTORISE, après JOURNAL_VALIDE et avant POST_TEAMS.

Action exacte :
1. Cliquer + entre JOURNAL_VALIDE et POST_TEAMS ; rechercher SharePoint Create file / Créer un fichier.
2. Renommer ARCHIVE_CR.
3. Site Address=SITE_TP.
4. Pour Folder Path, utiliser le sélecteur pour naviguer bibliothèque réelle → PRJ-2026-017 → 04_COPIL.
5. Ne pas taper /Documents si le sélecteur indique /Shared Documents ou une autre URL réelle.
6. File Name : insérer l’expression fournie ci-dessous dans fx.
7. File Content : Outputs de CR_HTML, sans base64 manuel.
8. Save ; vérifier POST_TEAMS est situé après ARCHIVE_CR dans la même branche.
9. Répéter la même opération dans B ou faire compléter la proposition Copilot.

Navigation : SharePoint → Create file.

Saisie : Nom via fx : `concat('CR_',outputs('Parcours'),'_PRJ-2026-017_',outputs('DateRapport'),'_',outputs('Revision'),'.html')` ; contenu CR_HTML.

Ajout d’une action : Action Create file supplémentaire, connecteur SharePoint Standard.

Connexion entre les étapes : JOURNAL_VALIDE → ARCHIVE_CR → POST_TEAMS → suite du flux.

Interface visuelle : Quatre paramètres Site Address, Folder Path, File Name et File Content ; navigateur de dossiers.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Save après mapping. Tester sur révision contrôlée.

Résultat attendu : Fichier CR_A_PRJ-2026-017_2026-10-11_R01.html ou CR_B... dans 04_COPIL.

Point de contrôle : Aucun fichier final archivé sur rejet ; mêmes données et liens que CR envoyé ; le format est HTML, pas DOCX/PDF.

Dépannage : Une réservation protège la répétition mais ne garantit pas toute collision après modification/suppression manuelle du journal. Ne pas supprimer des clés pour réécrire le même nom. Si création échoue, le chemin erreur stoppe la diffusion ; contrôler historique et bibliothèque.


### Étape A5.1 — Publier le CR dans le canal Teams de test

Objectif : Automatiser la diffusion du contenu approuvé.

Point de départ : Concepteur, True de AUTORISE, après ARCHIVE_CR.

Action exacte :
1. Cliquer + ; rechercher Teams post message.
2. Choisir Microsoft Teams - Post message in a chat or channel / Publier un message dans une conversation ou un canal, non dépréciée.
3. Renommer POST_TEAMS.
4. Créer/vérifier la connexion Teams autorisée.
5. Post as : Flow bot si disponible dans tenant commercial ; sinon User dans les environnements autorisés.
6. Post in : Channel / Canal.
7. Sélectionner TEAM_TP puis CHANNEL_TP, canal standard de test.
8. Message : Outputs de CR_HTML ; pas de titre séparé supposé, le titre est déjà dans le texte.
9. Settings de POST_TEAMS : si Retry policy apparaît, choisir None/Aucune pour ce TP et noter le changement.

Navigation : Microsoft Teams → Post message in a chat or channel.

Saisie : Équipe/canal autorisés ; Message=CR_HTML ; policy retry None si configurable.

Ajout d’une action : + après ARCHIVE_CR dans True.

Connexion entre les étapes : Aucun webhook ou HTTP supplémentaire ; portée d’accès de la connexion à vérifier.

Interface visuelle : Post as/Post in déterminent les champs équipe/canal ; les commandes peuvent être traduites.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Message prêt à publier seulement après approbation.

Point de contrôle : Bon canal standard ; pas canal privé ; pas All-Employees/production ; le CR fait moins de 28 Ko.

Dépannage : Si canal inaccessible, demander un canal autorisé ou appliquer le repli Post a message to myself section 8. La variante ne valide pas publication en canal. En Teams, Workflows doit être autorisée par la politique admin.

### Étape A5.2 — Journaliser le succès Teams

Objectif : Conserver la dernière étape connue en cas d’échec d’email.

Point de départ : Concepteur, après POST_TEAMS dans True.

Action exacte :
1. Ajouter SharePoint Update item ; renommer JOURNAL_TEAMS.
2. Reprendre le schéma commun de mise à jour.
3. Stage=TeamsPublie ; Details=Teams a répondu succès ; email encore non envoyé.
4. Garder l’exécution après succès de POST_TEAMS seulement.

Navigation : SharePoint → Update item.

Saisie : ID RESERVE_JOURNAL ; Title CleRapport ; Stage TeamsPublie.

Ajout d’une action : + après POST_TEAMS ; ne pas créer une deuxième ligne de réservation.

Connexion entre les étapes : Si cette mise à jour échoue après publication, traiter le run comme ambigu ; consulter Teams avant reprise.

Interface visuelle : Même liste de journal ; pas liste projet.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Journal avancé à TeamsPublie.

Point de contrôle : Statut ne prétend pas encore email envoyé.

Dépannage : Si erreur source ID, vérifier ID de création du journal. Ne pas relancer automatiquement POST_TEAMS pour réparer seulement le journal.

### Étape A6.1 — Envoyer le même CR par e-mail

Objectif : Diffuser par Outlook sans changement métier du contenu.

Point de départ : Concepteur, après JOURNAL_TEAMS dans True.

Action exacte :
1. Cliquer + ; rechercher Send an email (V2).
2. Sélectionner Office 365 Outlook, pas Outlook.com ; renommer SEND_MAIL.
3. Sign in ou vérifier la connexion à la boîte professionnelle de test.
4. To=EMAIL_TEST, adresse réelle contrôlée par le participant.
5. Subject : [TP A] CR + jetons ProjectRef, DateRapport et Revision.
6. Body : Outputs de CR_HTML ; si le champ propose code view </>, utiliser ce mode pour insérer le HTML sans l’échapper une seconde fois.
7. CC/BCC/pièces jointes vides ; aucun sponsor réel destinataire.
8. Settings : retry None/Aucune si disponible pour limiter les doublons après timeout.

Navigation : Office 365 Outlook → Send an email (V2).

Saisie : EMAIL_TEST ; [TP A] CR PRJ-2026-017 — DateRapport — Revision ; Body=CR_HTML.

Ajout d’une action : + après JOURNAL_TEAMS ; même branche approuvée.

Connexion entre les étapes : To est fixe contrôlé, pas une adresse externe lue d’un champ utilisateur.

Interface visuelle : Corps HTML ; ne pas chercher un champ Is HTML de l’ancienne action lorsqu’il n’existe pas.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save ; relire To avant tout test.

Résultat attendu : Email CR envoyé après succès Teams.

Point de contrôle : Aucune adresse .invalid utilisée réellement ; aucune adresse inconnue ; contenu identique au message hors rendu.

Dépannage : Une adresse fictive est un exemple, pas une boîte qui reçoit. Sans Exchange Online/permission, ce volet est non exécutable. Ne pas utiliser une boîte partagée sans droits explicites.

### Étape A6.2 — Clôturer le journal de diffusion

Objectif : Attester le succès technique des deux destinations.

Point de départ : Concepteur, après SEND_MAIL dans True.

Action exacte :
1. Ajouter SharePoint Update item JOURNAL_DIFFUSE.
2. Schéma commun ; Stage=Diffuse ; Details=Connecteurs Teams et Outlook ont répondu succès ; réception à confirmer dans le test.
3. Vérifier run ID et clé.
4. Ajouter au besoin un Compose RESULTAT : CR diffusé — validation humaine et réception à vérifier.

Navigation : SharePoint → Update item ; option Compose de sortie.

Saisie : Stage Diffuse ; ID journal et données fixes du schéma commun.

Ajout d’une action : + après SEND_MAIL ; pas de création d’événement calendrier.

Connexion entre les étapes : Une réponse connecteur succès n’exclut pas rebond mail ultérieur : le test vérifiera réception.

Interface visuelle : Ne pas chercher messageId dans Send an email (V2) : cette action ne le retourne pas.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Dernière étape journalisée.

Point de contrôle : Aucune valeur de succès n’est écrite avant l’envoi.

Dépannage : Si mail a été envoyé mais Update échoue, regarder boîte/Teams et historique ; ne pas considérer le run comme jamais envoyé.

### Étape A6.3 — Créer le chemin d’erreur technique

Objectif : Conserver une trace sans relancer aveuglément la diffusion.

Point de départ : Concepteur, au niveau racine après Scope TRAITEMENT, en dehors de ses conditions.

Action exacte :
1. Ajouter Control > Scope, nom ERREUR_TECHNIQUE.
2. Dans Settings / Run after, sélectionner TRAITEMENT : has failed et has timed out, pas is successful.
3. Dans cette Scope, ajouter SharePoint Create item ERREUR_JOURNAL.
4. Title : expression `concat('ERROR|',outputs('Parcours'),'|',outputs('RunId'))`.
5. Liste journal ; ProjectRef=PRJ-2026-017 ; Path=Outputs Parcours ; Stage=ErreurTechnique ; RunId=Outputs RunId ; Details=Consulter run ; vérifier Teams/boîte avant toute reprise ; ne pas effacer la réservation.
6. Sous cette action, ajouter Terminate statut Failed.
7. Ne pas envoyer d’email d’erreur en plus : le journal/historique suffit au TP.

Navigation : Scope Settings → Run after ; SharePoint Create item ; Terminate.

Saisie : ERREUR_TECHNIQUE sur Failed/Timed out seulement ; clé ERROR|A|RunId unique.

Ajout d’une action : Scope sœur après TRAITEMENT, pas imbriquée dans celle-ci.

Connexion entre les étapes : La ligne d’erreur ne remplace pas la réservation : son Stage précédent reste consultable.

Interface visuelle : Deux Scopes racines ; les détails exceptionnels sont lus dans l’historique.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save.

Résultat attendu : Erreur journalisée si SharePoint est accessible, puis run Failed.

Point de contrôle : Si SharePoint est lui-même indisponible, l’historique natif reste la trace ; ne pas promettre journal externe en toute panne.

Dépannage : Configurer Terminate pour s’exécuter après tous résultats de ERREUR_JOURNAL si nécessaire (success/failed/timed out/skipped), afin de conserver un arrêt explicite. Ne pas activer retry illimité.



### Expressions prêtes à copier — règle de saisie

Dans une carte, ouvrir fx/Expression, coller la formule seule, confirmer Add/Update si proposé. Ne pas ajouter le caractère = d’Excel, @ ou guillemets autour de la formule entière. Les noms d’action doivent correspondre à ceux définis ; sinon renommer la carte ou adapter la référence explicitement.

### Expression — RunId

```text
workflow()?['run']?['name']
```

### Expression — DateGeneration

```text
formatDateTime(utcNow(),'dd/MM/yyyy HH:mm')
```

### Expression — CleRapport

```text
concat(outputs('Parcours'),'|',outputs('GET_PROJET')?['body/ProjectRef'],'|',outputs('DateRapport'),'|',outputs('Revision'))
```

### Expression — DOUBLON gauche

```text
length(body('CHERCHE_JOURNAL')?['value'])
```

### Expression — DateEcheance

```text
formatDateTime(outputs('GET_PROJET')?['body/Deadline'],'dd/MM/yyyy')
```

### Expression — CR_Echappe

```text
replace(replace(replace(outputs('CR_Texte'),'&','&amp;'),'<','&lt;'),'>','&gt;')
```

### Expression — CR_HTML

```text
replace(outputs('CR_Echappe'),decodeUriComponent('%0A'),'<br>')
```

### Expression — AUTORISE gauche alternatif

```text
body('APPROBATION')?['outcome']
```

### Expression — ERREUR_JOURNAL Title

```text
concat('ERROR|',outputs('Parcours'),'|',outputs('RunId'))
```



### Modèle CR_Texte — insérer les vrais jetons

```text
COMPTE RENDU DE PILOTAGE — [JETON Title]
Référence : [JETON ProjectRef] — Date du rapport : [JETON DateRapport] — Révision : [JETON Revision]
Génération (UTC) : [JETON DateGeneration] — Version données : [JETON DataVersion]

1. Projet et responsabilités
Chef de projet : [JETON ProjectManager]
Sponsor : [JETON Sponsor]

2. Statut et avancement
Statut déclaré : [JETON Status]
Avancement déclaré : [JETON Progress] %

3. Situation budgétaire
Budget consommé déclaré : [JETON BudgetUsed] %
Ce pourcentage n’est pas un CPI ; aucune conclusion de dépassement final n’est calculée.

4. Faits marquants
[JETON Highlights]

5. Risques et points de vigilance
Risque principal : [JETON MainRisk]
Impact déclaré : [JETON Impact]

6. Décision attendue
[JETON ExpectedDecision]
Décision non présentée comme approuvée par ce compte rendu.

7. Action proposée
[JETON ProposedAction]
Responsable opérationnel et échéance de l’action : à confirmer si non fournis.

8. Prochaine échéance
[JETON NextDeliverable] — [JETON DateEcheance]

9. Prochain comité
[JETON NextMeeting]

Documents de référence du projet
Charte : [JETON CharterUrl]
Cahier des charges : [JETON RequirementsUrl]
Plan du projet : [JETON PlanUrl]
Ces liens ne modifient pas les droits d’accès ; les documents sont à consulter dans leur version disponible.

Données fictives — contenu mis en forme automatiquement, pas synthèse rédigée par une IA.
Validation de diffusion distincte de toute décision de pilotage.
```

[JETON Title] et tous les champs métier viennent de GET_PROJET ; dates/Revision viennent des Compose. Les emplacements sont des repères de rédaction, pas une syntaxe exécutable : effacer chaque emplacement et sélectionner son jeton. Les nombres sont texte rendu à l’exécution. CR_Echappe traite les caractères spéciaux, CR_HTML ajoute les retours <br>.

Texte, HTML et Markdown ne sont pas interchangeables. Approvals Details accepte notamment Markdown et texte, Outlook V2 envoie un corps HTML, Teams rend un sous-ensemble de HTML via son action. Utiliser le rendu minimal commun et vérifier réellement ; ne pas promettre une mise en page identique pixel par pixel. Le CR est une mise en forme déterministe, pas une synthèse IA.

### Schéma commun de RESERVE_JOURNAL

Create item : site/liste du journal ; Title=CleRapport ; ProjectRef=GET_PROJET.ProjectRef ; Path=Parcours ; Stage=Reserve ; RunId=RunId ; Details=Réservation avant validation/diffusion.

### Schéma commun des mises à jour

| Champ Update item | Valeur à sélectionner | Important |
| --- | --- | --- |
| Site Address | SITE_TP | Même site que réservation |
| List Name | PMO_CR_Journal | Pas PMO_Projets_TP |
| Id | ID de RESERVE_JOURNAL | Pas ItemId ni ID de GET_PROJET |
| Title | Outputs CleRapport | Obligatoire |
| ProjectRef | ProjectRef de GET_PROJET | Recopier valeur |
| Path | Outputs Parcours | A ou B |
| RunId | Outputs RunId | Même exécution |
| Stage | Rejete / Valide / TeamsPublie / Diffuse | Selon carte |
| Details | Texte explicite de l’étape | Aucun succès anticipé |


Renseigner les champs du journal explicitement. Si le panneau cache des colonnes, Advanced parameters/Show all ; ne pas omettre Title requis. La variable ID du projet et l’ID du journal sont deux objets distincts.

SharePoint Get item/Get items/Create item/Update item sont documentés ; le singulier source et le tableau journal ne doivent pas être confondus. [Microsoft : actions SharePoint](https://learn.microsoft.com/en-us/sharepoint/dev/business-apps/power-automate/sharepoint-connector-actions-triggers).

### Livrables A

Site privé, trois documents, deux listes, flow PMO_CR_A_Manuel, CR texte/HTML et fichier archivé, approbation, message Teams, email CR, journal/RunId et mesures. Des services manquants sont inscrits non exécutés, pas compensés par une capture de Compose.

## 8. Tests et dépannage du parcours A

### Étape T0 — Contrôler et enregistrer avant tout envoi

Objectif : S’assurer que le test n’adresse que les destinations prévues.

Point de départ : Concepteur A puis B, flow complet.

Action exacte :
1. Vérifier source, ItemId, To, Assigned to et canal une dernière fois.
2. Vérifier uniquement branch True contient Teams/mail.
3. Save ; lire les erreurs Flow checker / vérificateur.
4. Ne pas lancer si une connexion ou une réservation manque.
5. Mettre les deux destinataires de test et l’approbateur dans la fiche locale.

Navigation : Save → Flow checker ; cartes Approval/Teams/Outlook.

Saisie : ITEM_ID réel, date 2026-10-11, Revision R01.

Ajout d’une action : Aucune action ajoutée ; contrôle de configuration.

Connexion entre les étapes : Une carte renvoie à sa configuration ; le seul flux B doit avoir Parcours B.

Interface visuelle : La présence d’un run réussi précédent ne prouve pas une version modifiée correcte.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save avant test.

Résultat attendu : Flow prêt ou erreurs affichées et corrigées.

Point de contrôle : Aucun .invalid destinataire réel ; aucun groupe production.

Dépannage : Une erreur de paramètre peut être liée à un champ avancé masqué ; ouvrir Parameters puis Show all/Advanced parameters.

### Étape T1 — Lancer, approuver et vérifier les deux réceptions

Objectif : Obtenir une preuve de bout en bout, pas seulement un run vert.

Point de départ : Page du flow enregistré.

Action exacte :
1. Sélectionner Test / Tester, Manually/Manuellement puis Test si demandé.
2. Renseigner ItemId, DateRapport et Revision ; sélectionner Run flow / Exécuter le flux.
3. Ouvrir un second onglet Power Automate > Approvals / Approbations ; si absent menu More/Plus.
4. Dans demandes reçues, ouvrir la demande correspondant à CleRapport ; relire le CR.
5. Choisir Approve / Approuver avec commentaire CR fictif relu ; propositions et décisions attendues conservées.
6. Revenir à l’historique ; attendre fin.
7. Ouvrir POST_TEAMS et SEND_MAIL Inputs/Outputs ; consulter canal et boîte destinataire.
8. Ouvrir le journal et vérifier Stage Diffuse.
9. Ouvrir Documents/PRJ-2026-017/04_COPIL ; vérifier le fichier CR_A... ou CR_B... ; télécharger le .html pour le lire si le navigateur SharePoint ne le prévisualise pas.
10. Tester les trois liens avec l’approbateur/destinataire autorisé.

Navigation : Test ; My flows → nom → Run history / historique ; Approvals ; Teams ; Outlook.

Saisie : A puis B : ITEM_ID réel, 2026-10-11, R01 ; adresse/équipe/canal identiques.

Ajout d’une action : Aucune action supplémentaire ; le demandeur approuve comme rôle de formation, pas comme sponsor réel.

Connexion entre les étapes : La pause APPROBATION est normale ; aucune diffusion CR avant accord.

Interface visuelle : Succeeded/Failed/Skipped et cartes ouvertes ; deux branches non suivies sont normalement Skipped.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : aucun ajout nécessaire pendant ce contrôle/test ; dans le concepteur, + sous une carte ajoute une action à cet emplacement. Ne pas ajouter des colonnes SharePoint depuis cet écran.

Enregistrement : Capturer run ID, CR Teams, email reçu et journal.

Résultat attendu : Un CR Teams et un email CR pour le premier run de chaque parcours.

Point de contrôle : Différencier notification d’approbation et email de compte rendu ; données65/72/date 23 exactes ; corps identique hors rendu/date UTC.

Dépannage : Si approbation n’arrive pas, vérifier Assigned to, environnement et centre Approvals ; ouvrir demande reçue plutôt qu’attendre seulement le mail. Ne pas déclencher un second run pour accélérer.



### Tests reproductibles

| Test | Données | Manipulation | Attendu | Preuve | Correction |
| --- | --- | --- | --- | --- | --- |
| T01 | R01, source V1, approuver | Lancer protocole T1 | Un CR Teams + un email CR ; Stage Diffuse ; champs exacts | Journal/run/2 destinations | Rétablir bon contenu dynamique, format ou connexion |
| T02 | Même ID/date/R01 et même parcours que T01 | Relancer une fois | Doublon bloqué, aucune nouvelle approbation ni diffusion CR | Condition DOUBLON=True ; nombre CR inchangé | Vérifier clé, filtre et unicité ; ne pas effacer journal |
| T03 | Révision R02, source V1 | Lancer puis Reject/Rejeter | Stage Rejete ; aucun CR Teams/mail ; notification approval possible | Branche False, sends skipped | Corriger branche/Outcome et créer un nouveau test contrôlé |
| T04 | ID numérique absent de la liste (vérifier son absence) | Lancer | Get item échoue ; aucun CR ; ERROR journal si site disponible | Historique Failed, Scope erreur et ligne erreur | Corriger ID ; avant retest vérifier qu’aucun envoi n’a eu lieu |
| T05 | Révision R03 ; temporairement Highlights=Test format AT&T <prototype> | Générer, approuver seulement après relecture ; restaurer ensuite V1 | Texte AT&T <prototype> visible ; pas code/balise active ; lignes lisibles | Teams/mail/détails HTML ; mêmes mutations dans A/B | Corriger CR_Echappe/CR_HTML et mode Body ; ne pas injecter script |
| T06 | Copie du flow ; carte Teams avec canal de test inexistant si custom ID permis | Sauvegarder et lancer une nouvelle révision seulement dans cette copie | Blocage paramètre ou échec Teams ; pas mail CR ; journal/trace partielle | Aucune publication à un autre canal de repli silencieux | Restaurer vrai canal ; ne pas relancer copie partiellement diffusée sans inspection |
| T07 | Copie du flow ; To=adresse-invalide-sans-arobase | Vérifier Save, puis run uniquement si le designer accepte | Blocage de configuration ou rejet envoi ; si Teams déjà envoyé, état partiel visible | Journal et canal inspectés ; aucune reprise automatique de Teams | Corriger To ; reprise contrôlée ; un domaine accepté puis rebond n’est pas un échec synchro garanti |
| T08 | Copie contrôlée ; connexion invalide/permission manquante disponible pour test | Lire erreurs sans retirer une connexion partagée | Arrêt et diagnostic ; pas de succès artificiel | Erreur auth/policy/permission visible | Réauthentifier avec rôle autorisé ; sinon déclarer cas non exécuté plutôt que contourner |


Les négatifs se font sur copie du flow et sources de formation uniquement ; ne pas supprimer une connexion partagée ou tester un vrai canal auquel vous n’êtes pas autorisé. R03 implique une publication volontaire de test après accord, pas doublon : sa révision et sujet doivent l’identifier. Restaurer les valeurs V1 avant comparaison finale et rejouer les mêmes mutations dans B.

### Tests documentaires supplémentaires — identiques dans A/B

| Test | Manipulation | Attendu |
| --- | --- | --- |
| T09 | Lire les trois liens du CR avec compte destinataire autorisé | Les documents correspondent au projet et s’ouvrent/téléchargent ; .mpp ouvert dans Project si disponible |
| T10 | Premier run approuvé puis même clé relancée | Un fichier CR_A ou CR_B par clé ; aucun deuxième archivage/send volontaire sur même clé |
| T11 | Nouvelle révision rejetée | Aucun nouveau .html final ni message/email de compte rendu ; notification approval possible |
| T12 | Dans copie contrôlée, retirer accès au dossier ou choisir un dossier de test inexistant | Blocage ou erreur ARCHIVE_CR avant envois ; historique/journal erreur, pas contournement automatique |

T12 ne nécessite pas de casser de vraies permissions partagées ; si aucun cas d’erreur documentaire sûr n’est possible, marquer non exécuté. Un lien ne donne aucun droit au destinataire par sa seule présence.

### Diagnostic

| Problème | Symptôme | Cause possible | Vérification | Correction sûre |
| --- | --- | --- | --- | --- |
| Connexion expirée | Unauthorized/401/token expired | Session/consentement | Connections, compte et action fautive | Réauthentifier avec compte autorisé ; pas mot de passe dans flow |
| Source incorrecte | 404 ou référence d’un autre projet | Mauvais site/liste/Id | GET_PROJET Inputs/Outputs | Site de formation, bon ItemId ; Guard BON_PROJET |
| Champ incorrect | 65 absent ou contenu de journal | Jeton du mauvais producteur | Ouvrir CR_Texte Inputs | Choisir GET_PROJET Progress, pas array/nom littéral |
| Boucle inattendue | Multiples sends / Apply to each | Get items source ou Responses array | Arborescence et jets | Get item source ; Outcome global ; length journal |
| Équipe/canal invisible | Dropdown vide / Forbidden | Membre absent, canal privé, Workflows bloquée | Accès Teams et politique | Canal standard autorisé ; chat personnel de repli déclaré |
| Adresse invalide | Paramètre To ou erreur backend | Syntaxe/boîte non Office365 | Destinataire et connexion | Boîte de test contrôlée ; pas adresse fictive non routable |
| Contenu mal formaté | Balises visibles / tout sur une ligne | Double échappement HTML/retours | CR_HTML brut, destination code view si proposé | Échapper avant <br>, bon jeton Body/Message ; retester rendu |
| Flow non lancé | Aucun run | Save/type trigger/environnement | My flows, Test manuel, environnement | Save, Run flow et bon environnement ; pas d’attente événement automatique |
| Attente prolongée | APPROBATION Running | Réponse pas encore donnée | Approvals demandes reçues et Assigned to | Approuver/rejeter après relecture ; pas second run |
| Résultat toujours rejeté | Condition False après accord | Valeur/langue/tableau mauvais | Outcome brut | Comparer global outcome à Approve ; pas tableau Responses |
| Doublon non bloqué | Plusieurs CR même clé | CleRapport différente/Title non unique | Filtre/révision/date/uniqueness | Clé stable et Title unique ; journal avant sends |
| Clé bloquée après échec | Aucune rediffusion possible | Réservation conservatrice | Stage et historique/channels | Ne pas effacer ; inspecter et faire reprise ciblée autorisée |
| Email parfois double | Deux mails malgré un run | Timeout/retry | SEND_MAIL history retry | None si configurable ; inspecter émission incertaine, pas relance aveugle |
| Erreur et pas de log SharePoint | ERROR_JOURNAL échoue aussi | Panne/permission source journal | Historique natif | Historique preuve de secours ; corriger droit puis documenter incident |
| Copilot absent | Aucune commande Home/panneau | Region/license/IA/policy/designer | FAQ/admin/new designer | A seul et B non exécuté ; pas achat/credit contournement |
| Copilot invente une action | Carte/fonction introuvable | Proposition plausible non réalisable | Chercher action sous vrai connecteur | Remplacer action documentée et noter correction |


### Variantes autorisées et limites

Sans droit de canal : si l’action Microsoft Teams « Post a message to myself » est disponible, la rechercher sous Microsoft Teams et fournir CR_HTML/CR_Texte au champ de message. Elle envoie au propre espace Notes du compte connecté. Sinon utiliser « Post message in a chat or channel », Post as Flow bot, Post in Chat with Flow bot, Recipient=propre compte autorisé si ces options sont visibles. Ne pas inventer un canal accessible. Employer la même variante dans A et B, journaliser TeamsChat au lieu d’affirmer publication en canal ; le critère canal ne peut pas être validé pleinement.

Sans approbation disponible : aucune diffusion automatique sensible n’est autorisée. Dans une copie pédagogique, arrêter après CR_Texte/CR_HTML, consulter les Outputs puis relire et transmettre manuellement selon règles autorisées. Cela valide préparation, pas l’intégration d’un gate ni l’envoi automatique complet. Le parcours principal nécessite le connecteur supplémentaire Standard approvals et une autorisation effective de l’environnement.

Sans SharePoint en écriture : obtenir deux listes préprovisionnées du même schéma et droits appropriés. Une simple saisie de données dans le déclencheur peut servir à découvrir Compose, mais elle ne valide ni la récupération SharePoint ni le journal anti-doublons du TP complet. Ne pas présenter un autre stockage sans les manipulations correspondant à ses connecteurs.

Sans Outlook ou Teams : conserver les Outputs/report et déclarer le volet non exécuté. Un brouillon écrit n’est pas un email envoyé et un Compose n’est pas une publication Teams.

### Reprise après échec partiel

Si Teams est publié puis Outlook échoue, la réservation est conservée. Relancer même clé s’arrête ; changer arbitrairement Revision pour renvoyer les deux peut dupliquer Teams. Lire historique et destinations, obtenir accord de reprise et réparer seulement l’étape manquante dans une procédure contrôlée. Dans ce TP, cette reprise est une opération humaine documentée, pas une fonctionnalité automatique cachée.

Les appels ne sont pas une transaction atomique entre SharePoint, Teams et Outlook. Même avec une clé unique et retry None, un timeout peut cacher un envoi effectivement accepté. Ne pas promettre « exactement une fois » dans toutes les pannes. La garantie pédagogique est réservation unique, blocage de relance volontaire et inspection des cas ambigus.


Les notifications d’approbation sont des effets propres au connecteur ; distinguer le compte des emails CR. Le connecteur Outlook indique que V2 ne retourne pas un ID message et que des timeouts/réessais peuvent produire des doubles ; le journal ne permet pas d’affirmer une livraison exactement une fois partout. [Microsoft : Outlook limitations](https://learn.microsoft.com/en-us/connectors/office365/).

## 9. Parcours B — réalisation avec Copilot

Les commandes Create with Copilot, send arrow, Keep it and continue, contrôle des connexions et Create flow sont issues de la documentation officielle. Copilot est optimisé pour anglais avec support plus limité des autres langues ; le participant peut utiliser la version anglaise de secours du pack si la génération française est insuffisante. [Microsoft : Copilot création](https://learn.microsoft.com/en-us/power-automate/create-cloud-flow-using-copilot).

### Étape B1 — Vérifier Copilot Power Automate, pas Copilot Studio

Objectif : Identifier l’assistance à la construction effectivement disponible.

Point de départ : Power Automate Home dans le même environnement que A.

Action exacte :
1. Vérifier environnement puis chercher Create with Copilot / Créer avec Copilot ou Start building your flow with Copilot.
2. Dans un concepteur, vérifier New designer actif et panneau Copilot si disponible.
3. Si absent, consulter paramètres de licence/tenant avec responsable, disponibilité régionale et politiques IA.
4. Ne pas activer déplacements de données, licence ou facturation soi-même.

Navigation : Home → Create with Copilot ; édition → nouveau designer.

Saisie : Aucune valeur métier encore. Documenter disponible/non disponible et raison connue.

Ajout d’une action : Pas d’action runtime IA ajoutée.

Connexion entre les étapes : Ce Copilot aide à construire un cloud flow ; il n’est pas l’Aperçu d’un assistant GitHub Copilot harness.

Interface visuelle : Commande Home et panneau latéral ; l’expérience peut apparaître partiellement en anglais.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : aucun ajout nécessaire pendant ce contrôle/test ; dans le concepteur, + sous une carte ajoute une action à cet emplacement. Ne pas ajouter des colonnes SharePoint depuis cet écran.

Enregistrement : Noter disponibilité avant chronométrage B.

Résultat attendu : B peut démarrer, ou est clairement non exécutable.

Point de contrôle : Les limites de crédits Aperçu Copilot Studio ne sont pas automatiquement les conditions de ce produit ; droits distincts à vérifier.

Dépannage : Si absent/bloqué, exécuter A, préparer prompt et audit théorique ; inscrire B non exécuté, pas temps zéro ni gain mesuré.

### Étape B2 — Décrire le besoin et créer un nouveau brouillon

Objectif : Utiliser vraiment la proposition IA au lieu de dupliquer A.

Point de départ : Home → Create with Copilot → What will your flow do?

Action exacte :
1. Démarrer chronomètre construction B.
2. Remplacer les paramètres entre crochets dans le prompt section 9 par les valeurs du périmètre de test.
3. Coller le prompt et cliquer flèche d’envoi.
4. Examiner la proposition de déclencheur/actions.
5. Si Copilot propose un trigger automatique qui pourrait envoyer à une création/modification, demander correction AVANT création.
6. Quand acceptable, Keep it and continue / Conserver et continuer.
7. Vérifier connexions : indicateurs verts/rouges ; Sign in sur compte autorisé seulement.
8. Create flow / Créer le flux.

Navigation : Home → Create with Copilot → proposition → Keep it and continue → connexions → Create flow.

Saisie : Prompt complet section 9 ; nom PMO_CR_B_Copilot.

Ajout d’une action : Copilot crée une proposition ; pas copie/enregistrement sous de A.

Connexion entre les étapes : Les cartes apparaissent dans le nouveau concepteur, panneau Copilot à droite.

Interface visuelle : Connecteurs choisis explicites, trigger manuel.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : aucun ajout nécessaire pendant ce contrôle/test ; dans le concepteur, + sous une carte ajoute une action à cet emplacement. Ne pas ajouter des colonnes SharePoint depuis cet écran.

Enregistrement : Save après revue initiale, sans Test tant qu’envois ne sont pas contrôlés.

Résultat attendu : Second flux distinct avec structure proposée.

Point de contrôle : Pas de flow déjà enregistré A réutilisé ; pas d’AI Builder inséré.

Dépannage : Si prompt trop long ou refus partiel, utiliser les trois prompts progressifs ; l’absence de journal/Scope n’est pas une faute du participant. Noter compléments manuels.

### Étape B3 — Auditer la proposition avant toute exécution

Objectif : Ne pas accepter des actions générées dangereuses ou incomplètes.

Point de départ : Concepteur de PMO_CR_B_Copilot.

Action exacte :
1. Comparer chaque carte au tableau attendu de section 9.
2. Vérifier ItemId/Get item, source et colonne ProjectRef.
3. Vérifier clé Path=B et contrôle duplication AVANT envoi.
4. Contrôler approbation et branche Outcome=Approve ; aucun POST_TEAMS/SEND_MAIL hors True.
5. Inspecter To, équipe/canal, HTML, expressions et tableaux qui auraient ajouté une boucle.
6. Relever au journal chaque proposition correcte, absente, erronée et correction.

Navigation : Designer cartes/Parameters/Settings ; pas fenêtre Aperçu d’un agent.

Saisie : Table de contrôle section 9 ; paramètres réels contrôlés.

Ajout d’une action : Aucune nouvelle action sans identifier le besoin.

Connexion entre les étapes : Respecter arborescence référence ; chaîne linéaire n’est pas équivalente si elle contourne l’approbation.

Interface visuelle : L’icône de contenu dynamique doit montrer le producteur, pas un texte de champ tapé.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save après corrections de sécurité prioritaires ; pas de run avant audit.

Résultat attendu : Audit structuré, liste de corrections.

Point de contrôle : Outcome global, aucun Apply to each générateur de multiples mails, journal unique et rejet correct.

Dépannage : Si Copilot ne montre pas une action connue, la créer manuellement via le + et le nom anglais. Ne pas prétendre qu’une action fictive Validate report existe.

### Étape B4 — Corriger les paramètres et compléter le flow

Objectif : Obtenir l’équivalence fonctionnelle avec A.

Point de départ : Concepteur B, audit établi.

Action exacte :
1. Dans le panneau Copilot, demander une correction ciblée en nommant l’action.
2. Vérifier son effet immédiatement, pas seulement l’explication textuelle.
3. Pour une carte absente, + au bon endroit > rechercher connecteur/action comme A3–A6 ; nommer selon tableau.
4. Dans Parameters, sélectionner source, liste, ID et jetons exacts.
5. Refaire le même CR_Texte et les expressions CR_HTML que A, sans nouvelle synthèse ni altération des faits.
6. Parcours=B ; sujet [TP B].
7. Configurer manuellement clés/approbation/Scope si Copilot ne sait pas les générer.
8. Relire la totalité des branches après chaque changement.

Navigation : Copilot pane pour propositions ; Parameters/Settings pour configuration explicite.

Saisie : Noms et expressions de A, sauf Parcours=B et nom/sujet B.

Ajout d’une action : Exemple demande : Ajoute Standard approvals Start and wait for an approval après CR_HTML, puis ne poste que si Outcome=Approve.

Connexion entre les étapes : Chaque ajout placé sous la carte et dans la branche correctes ; utiliser +, pas une flèche déplacée.

Interface visuelle : Action manquante : recherche English sous connecteur ; nom traduit alternatif.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : Dans le concepteur, + sous une carte ajoute une action à cet endroit ; + dans True/False ajoute dans cette branche uniquement.

Enregistrement : Save régulièrement ; noter le temps de correction séparément.

Résultat attendu : Flow B complet et contrôlé.

Point de contrôle : CR métier identique ; same source/destination ; pas de révision de données V1.

Dépannage : Les actions/variables suggérées doivent exister réellement : les mentionner dans une phrase ne crée pas leur liaison. Si B reste incomplet, déclarer les blocs non exécutables, pas réussite.

### Étape B5 — Exécuter exactement les tests de A

Objectif : Comparer des résultats réels avec les mêmes exigences.

Point de départ : Flow B enregistré et audit sécurité terminé.

Action exacte :
1. Lancer le même protocole T01–T12 de section 8.
2. ITEM_ID, DateRapport, Revision, source, destinataire, approbateur et canal identiques à A.
3. Path B distingue le rapport comparatif de A ; R01 peut donc être envoyé une fois dans B sans effacer A.
4. Vérifier réception, historique et journal.
5. Rejouer même clé B pour le doublon ; aucun nouveau CR.
6. Mettre les résultats B et temps dans le classeur.

Navigation : Test → Manually → Run flow ; historique ; Approvals/Teams/Outlook.

Saisie : ITEM_ID réel ; DateRapport 2026-10-11 ; Revision R01.

Ajout d’une action : Ne pas rajouter de destinataire ; même mécanisme d’approbation.

Connexion entre les étapes : B appelle seulement connecteurs standard configurés, pas Copilot pour chaque rapport.

Interface visuelle : Run vert n’est pas suffisant ; réception et absence doublons à contrôler.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : aucun ajout nécessaire pendant ce contrôle/test ; dans le concepteur, + sous une carte ajoute une action à cet emplacement. Ne pas ajouter des colonnes SharePoint depuis cet écran.

Enregistrement : Save avant test ; captures après.

Résultat attendu : Rapport équivalent et preuves mesurables, ou échec déclaré.

Point de contrôle : Même verdict sur tous les tests ; comparaison ignore seulement horodatage UTC et repères A/B.

Dépannage : Si erreur, corriger et retester en respectant journal/réservation ; pas de relance à l’aveugle après succès partiel.

### Étape B6 — Clôturer la comparaison et conserver les preuves

Objectif : Éviter un gain de temps artificiel.

Point de départ : Flows testés ou limites documentées.

Action exacte :
1. Enregistrer IDs/versions des deux flows, résultats et corrections.
2. Additionner les temps sans double comptage ; séparer attente et travail actif.
3. Ajouter le temps de préparation commun aux deux périmètres comparables si vous choisissez un coût complet.
4. Si B non exécuté, inscrire Non exécuté et ne calculer aucun ratio.
5. Désactiver les deux flows après formation selon règle locale, sans supprimer les traces nécessaires.

Navigation : Classeur mesures et journal ; My flows → Turn off si autorisé.

Saisie : Mesures réelles et périmètre de calcul explicite.

Ajout d’une action : Pas de nouvelle action ; arrêt de l’exercice.

Connexion entre les étapes : Les rapports/échecs sont des preuves, pas uniquement la vitesse de création.

Interface visuelle : Keep/Get flow IDs via pages de détails ; exports si droits permettent.

Drag-and-drop : aucun glisser-déposer requis. Utiliser les commandes d’ajout et les branches décrites.

Symbole plus (+) : aucun ajout nécessaire pendant ce contrôle/test ; dans le concepteur, + sous une carte ajoute une action à cet emplacement. Ne pas ajouter des colonnes SharePoint depuis cet écran.

Enregistrement : Enregistrer le classeur et livrables.

Résultat attendu : Comparaison documentée, sans promesse 3h→30min appliquée arbitrairement.

Point de contrôle : Nombre corrections et tests réussis comptés, y compris échecs initiaux.

Dépannage : Réutilisation des connexions/apprentissage de A favorisent B : noter ces biais et préférer ordre alterné entre groupes si l’on veut une mesure plus robuste.



### Prompt complet à copier après remplacement des paramètres

```text
Je veux créer un flux cloud instantané Power Automate, pas un agent flow Copilot Studio.
Nom : PMO_CR_B_Copilot. Déclencheur : Manually trigger a flow.
Entrées : ItemId (nombre), DateRapport (texte AAAA-MM-JJ), Revision (texte R01).
Source SharePoint : site [SITE_TP], liste PMO_Projets_TP ; lire un élément par ItemId avec Get item.
Champs : Title, ProjectRef, ProjectManager, Sponsor, Status, Progress, BudgetUsed,
NextDeliverable, Deadline, MainRisk, Impact, ProposedAction, ExpectedDecision,
NextMeeting, Highlights, DataOwner, DataVersion, CharterUrl, RequirementsUrl, PlanUrl. Progress/BudgetUsed sont nombres 0–100.
Projet attendu PRJ-2026-017. Arrêter si référence différente.
Composer un compte rendu fidèle en neuf rubriques : projet, statut/avancement,
budget, faits, risques, décision attendue, action proposée, échéance, prochain comité.
Il s’agit d’assemblage et formatage, pas de génération IA pendant l’exécution.
Ne pas ajouter AI Builder, agent Copilot Studio, HTTP, webhook ni connecteur premium.
Faire une version texte pour relecture et une version HTML simple commune à Teams/Outlook.
Inclure les trois liens documentaires sans élargir les droits. Ils ne constituent pas une analyse des fichiers.
Approbation Standard approvals Start and wait for an approval, First to respond,
Assigned to [APPROVER_TEST]. Aucun compte rendu ne doit être diffusé avant résultat Approve.
Après accord seulement : SharePoint Create file dans [CR_FOLDER_PATH] du site [SITE_TP],
nom CR_B_PRJ-2026-017_DateRapport_Revision.html, File Content=CR_HTML ; puis Microsoft Teams Post message in a chat or channel,
Post in Channel, équipe [TEAM_TP], canal standard [CHANNEL_TP] ; puis
Office 365 Outlook Send an email (V2), To [EMAIL_TEST], sujet [TP B] CR + référence/date/révision.
CC/BCC vides. Même corps métier dans les deux destinations.
Journal SharePoint PMO_CR_Journal : Title unique, ProjectRef, Path, Stage, RunId, Details.
Path B ; clé B|ProjectRef|DateRapport|Revision. Get items filtré sur Title ; si déjà présent,
arrêter sans rediffuser. Créer réservation avant approbation, faire évoluer Stage
Reserve/Rejete/Valide/TeamsPublie/Diffuse. Rejet : journaliser et arrêter sans CR envoyé.
Toute clé existante bloque les reprises, même après échec ; pas de relance automatique.
Prévoir Scope traitement et Scope erreur Run after Failed/Timed out, ligne erreur
ERROR|B|RunId si SharePoint disponible, arrêt ; l’historique est la trace de secours.
Réduire les répétitions après timeouts avec retry None sur envois si réglage possible.
Ne lance pas le flux et ne prétends pas disposer des connexions ou droits.
Si tu ne peux pas générer certains éléments, indique lesquels pour configuration manuelle.
Je vérifierai chaque connexion, paramètre, expression, destinataire et branche avant test.
```

### Prompts progressifs si la génération complète est limitée

1. Socle :

```text
Crée PMO_CR_B_Copilot avec Manually trigger a flow, entrées ItemId Number,
DateRapport Text et Revision Text. Ajoute SharePoint Get item sur [SITE_TP],
PMO_Projets_TP, Id dynamique ItemId, puis Compose d’un compte rendu texte.
N’ajoute encore aucune action d’envoi. Aucun déclencheur automatique.
```

2. Validation, archivage et diffusion :

```text
Après le compte rendu, ajoute Standard approvals Start and wait for an approval,
First to respond, Assigned to [APPROVER_TEST]. Seulement si outcome=Approve, crée le fichier .html dans [CR_FOLDER_PATH] puis
poste le CR HTML dans [TEAM_TP]/[CHANNEL_TP] avec Microsoft Teams, puis
Send an email (V2) Office 365 Outlook à [EMAIL_TEST]. Sinon pas de diffusion.
Ne lance pas le flow et ne crée pas de destinataire ou connexion inexistante.
```

3. Gouvernance :

```text
Ajoute une réservation SharePoint PMO_CR_Journal avant approbation/envois,
clé unique B|ProjectRef|DateRapport|Revision ; si déjà présente, arrête.
Journalise les étapes puis gère l’échec dans une Scope avec Run after.
Ne relance pas automatiquement les messages après un échec partiel.
Si tu ne peux pas configurer un paramètre, nomme-le pour completion manuelle.
```

Ces prompts sont séquentiels dans le même brouillon B ; vérifier l’effet de chaque proposition et compléter via les étapes manuelles si nécessaire. Les paramètres en crochets sont à remplacer par les valeurs autorisées.


### Audit de la proposition Copilot

| Élément | Contrôle obligatoire |
| --- | --- |
| Déclencheur | Manually trigger ; 3 entrées correctes |
| Source | Site privé créé, bibliothèque documentaire et Get item, site/liste/ItemId ; guard projet |
| Constantes | Parcours B, DateRapport, Revision et RunId |
| Journal | Clé B unique ; lecture longueur ; réservation avant validation/envoi |
| CR | Même modèle texte et HTML, 65/72/date 23 sans interprétation inventée |
| Validation | Start and wait ; Outcome global ; rejet sans sends |
| Documents et archive | Trois liens source fidèles ; Create file avant Teams, uniquement sur approval |
| Teams | Bon connecteur/action non deprecated ; bon canal/connexion |
| Mail | Office365 Send an email V2 ; destinataire test ; corpsCR_HTML |
| Journalisation | Reserve/Rejete/Valide/TeamsPublie/Diffuse et erreurs |
| Sécurité | Pas HTTP/publicwebhook/AI Builder/agent/runtimeGenAI ; pas send avant validation |


Toute carte incomplète est configurée manuellement avec les mêmes étapes A. Évaluer le nombre de cartes correctement créées ET les paramètres réellement renseignés, pas seulement la présence d’un nom d’action. Ne pas prétendre que Copilot a créé les connexions/permissions parce qu’il a annoncé un flow complet.

### Livrables B

Flow B distinct, même résultat métier, preuves et mesure par phase, liste corrections du brouillon IA. Pas copie de A renommée. Différences permises : nom flow, repère A/B des tests, namespace journal et timestamp UTC. Données/critères/destinataires identiques.

## 10. Tests et dépannage du parcours B

Reprendre protocole et tests T01–T12 section8. Copier le tableau dans le journal B ; laisser résultat observé vide avant exécution. Les mêmes tests empêchent de favoriser B avec un contrôle moins strict.

Copilot peut être demandé pour diagnostic après un échec : « Analyse l’erreur de cette action et explique les paramètres à vérifier sans proposer un renvoi automatique du CR ». Confronter la réponse à Inputs/Outputs et permissions. Une explication plausible n’est pas une réparation.

Si Copilot indisponible : prompt préparé, architecture comprise et A réalisé ; B non exécuté, gain non mesuré. Une reconstitution manuelle d’un deuxième flow est une répétition sans IA, pas le parcours B expérimental. Les droits/régions/politiques du tenant sont à vérifier avant toute attribution de licence ou consommation. [Microsoft : FAQ disponibilité](https://learn.microsoft.com/en-us/power-automate/faq-copilot-cloud-flows).

## 11. Comparaison des résultats

Comparer contenus sur neuf rubriques, valeurs 65/72, référence/date 23, statut Orange, risque/proposition/décision attendue, approbation avant sends, rejet/doublon, journal et réceptions. Différences purement techniques A/B et datesUTC n’affectent pas équivalence.

Mesurer qualité sur 20 (rubriques8, faits8, statut/format4) pour chaque parcours ; comparer même grille. Taux de réussite = tests conformes à leur attendu / tests effectivement exécutés ×100. Un rejet correctement bloqué est un test réussi ; un run vert qui diffuse un CR refusé est un test échoué. Non exécutés séparés, pas considérés réussis.

Copilot peut accélérer le squelette, certaines cartes, paramètres, documentation ou diagnostic ; les permissions, destinataires, gates et tests restent nécessaires. S’il ajoute une mauvaise branche, la correction peut annuler le gain. Aucune vitesse ne suffit à déclarer réussite.

## 12. Tableau de mesure des gains de temps

| Indicateur | Sans Copilot | Avec Copilot |
| --- | --- | --- |
| Création site, documents et données (même commun si coût complet) | À mesurer | À mesurer |
| Construction du flow | À mesurer | À mesurer |
| Configuration connexions | À mesurer | À mesurer |
| Corrections | À mesurer | À mesurer |
| Tests actifs | À mesurer | À mesurer |
| Validation humaine active (sans double comptage) | À mesurer | À mesurer |
| Attente externe (à distinguer) | À mesurer | À mesurer |
| Temps total | À mesurer | À mesurer |
| Nombre corrections | À compter/évaluer | À compter/évaluer |
| Tests conformes / exécutés | À compter/évaluer | À compter/évaluer |
| Qualité CR /20 | À compter/évaluer | À compter/évaluer |


Formules, minutes homogènes :

- Gain = TempsA − TempsB.
- Réduction (%) = (Gain / TempsA) ×100.
- Facteur = TempsA / TempsB.

Si TempsA=0 ou B=0/non mesuré, ne calculer pas de ratio ; inscrire non applicable. Un gain négatif est possible et doit rester visible. Ne pas remplacer un parcours non exécuté par zéro.

Exemple illustratif uniquement : A180min, B30min, gain150min, réduction83,3 %, facteur6. Ces nombres sont une hypothèse à vérifier, ni résultat observé ni engagement de performance.

### Périmètre et biais

Le site, les documents, données et ressources sont préparés une fois puis réutilisés. Choisir soit coût construction seul, soit coût complet avec le même temps commun ajouté aux deux. Ne pas compter la création SharePoint seulement dans A pour annoncer que Copilot l’a évitée. Même logique pour connexions déjà réutilisées et disponibilité des services.

Le classeur distingue commun/direct/comparable. Chronométrer phases exclusives pour éviter double comptage ; distinguer travail actif de l’attente Approvals/réseau. Si la relecture est comptée en tests, ne pas la recompter en validation. L’expérience acquise dans A et les connexions déjà créées favorisent B : noter le biais, alterner l’ordre entre binômes ou comparer des participants de niveau comparable.

## 13. Grille d’évaluation

| Critère | Points | Attribution |
| --- | --- | --- |
| Source de données | 10 | Schéma/nombres/dates 5 ; bon item et journal unique 5 |
| Déclencheur et actions | 15 | Trigger/ordre 5 ; paramètres/jetons 5 ; garde-fous et équivalence A/B 5 |
| Qualité/exactitude du CR | 20 | Neuf rubriques 8 ; chiffres/dates/statuts 8 ; propositions/décisions et format 4 |
| Publication Teams | 10 | Canal standard autorisé 5 ; résultat reçu/lisible 5 |
| Envoi email | 10 | Destinataire/objet/corps 5 ; réception du CR 5 |
| Tests/erreurs | 15 | T01–T03 6 ; négatifs/diagnostic 4 ; blocagedoublon et erreur partielle 5 |
| Comparaison mesurée | 10 | Chronométrage phases 4 ; formules et périmètre 3 ; biais/limites 3 |
| Sécurité/validation humaine | 10 | Approval/refus testés 5 ; moindre privilège, test destinations, historique 5 |
| Total | 100 |  |


Seuil pédagogique recommandé 70/100, avec réussite des contrôles d’approbation/doublon et au moins une réception CR complète. Si B non exécuté, l’évaluation de comparaison reste limitée, aucun gain IA n’est validé. Si variante chat, le critère canal ne peut pas être noté comme canal réalisé ; adapter explicitement la grille plutôt qu’inventer une réussite.

Un flow généré rapidement mais incorrect obtient seulement les points démontrés. Le bon usage IA se voit dans l’audit, les corrections, les preuves et la mesure honnête, pas dans une formule de gain attendue.

### Extension facultative — vérifier un document avec Power Automate, sans en analyser le contenu métier

Ne pas confondre ID numérique d’une ligne de bibliothèque, Identifier de fichier, chemin de fichier et URL de partage. Les paramètres du connecteur ne sont pas interchangeables. Get file properties lit les métadonnées ; Get file content lit le binaire ; aucun n’extrait seul les tâches d’un .mpp ou les clauses d’un .docx. [Microsoft : actions et paramètres SharePoint](https://learn.microsoft.com/en-us/connectors/sharepointonline/).

### Étape D1 — Créer un flux de contrôle documentaire sans diffusion

Objectif : Démontrer lecture de métadonnées sur le même site.

Point de départ : Bibliothèque, charte présente ; Power Automate.

Action exacte :
1. Dans la bibliothèque, afficher la colonne ID via Show/hide columns si nécessaire ; relever FILE_ITEM_ID de la charte (pas ITEM_ID projet).
2. Dans Power Automate, Create → Instant cloud flow → Manually trigger a flow ; nom PMO_Controle_Document_TP.
3. Ajouter une entrée Number FileItemId.
4. Sous trigger, + → SharePoint Get file properties / Obtenir les propriétés du fichier ; nom GET_DOC_PROPS.
5. Site Address=SITE_TP ; Library Name=LIBRARY_TP ; Id=jeton FileItemId.
6. Save, Test manuel et saisir FILE_ITEM_ID.
7. Inspecter Outputs : nom, métadonnées, Identifier et Link to item quand ces champs sont renvoyés.

Navigation : Power Automate → SharePoint → Get file properties.

Saisie : FileItemId numérique de charte ; LIBRARY_TP réelle.

Ajout d’une action : Get file properties sous le déclencheur.

Connexion entre les étapes : Trigger Number → Get file properties.

Interface visuelle : Paramètres Site/Library/Id ; sorties dynamiques selon la bibliothèque.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Propriétés du document retrouvées sans publication.

Point de contrôle : Nom de charte correct ; ne pas sélectionner PMO_Projets_TP dans Library Name.

Dépannage : Si résultat introuvable, vérifier site, bibliothèque et ID de la ligne documentaire. Une URL Copy link n’est pas cet ID.

### Étape D2 — Récupérer le fichier binaire en option

Objectif : Comprendre la différence fichier/metadonnées/texte métier.

Point de départ : Flow de contrôle documentaire, après GET_DOC_PROPS.

Action exacte :
1. Cliquer + ; SharePoint Get file content / Obtenir le contenu du fichier.
2. Nommer GET_DOC_CONTENT.
3. Site Address=SITE_TP ; File Identifier=jeton Identifier de GET_DOC_PROPS.
4. Ne pas choisir ID numérique ni Link to item.
5. Save et retester avec charte ; vérifier succès et contenu binaire renvoyé, sans copier ce binaire dans le CR.
6. Une éventuelle pièce jointe dans un email exige Name=nom fichier et ContentBytes/File Content=binaire, après validation des droits et de la diffusion ; ce volet n’est pas ajouté automatiquement au flux principal.

Navigation : SharePoint → Get file content.

Saisie : Identifier dynamique GET_DOC_PROPS, pas chemin saisi ni lien de partage.

Ajout d’une action : Get file content après Get file properties.

Connexion entre les étapes : GET_DOC_PROPS.Identifier → GET_DOC_CONTENT.File Identifier.

Interface visuelle : Sortie binaire ; ne pas promettre un texte lisible dans Outputs.

Drag-and-drop : aucune flèche à déplacer ; le dépôt de fichiers est seulement une variante à l’étape S5.

Symbole plus (+) : utiliser uniquement les commandes Nouveau ou Ajouter indiquées ; dans Power Automate, + sous une carte ajoute une action à cet emplacement.

Enregistrement : Enregistrer ou terminer l’opération indiquée.

Résultat attendu : Contenu fichier accessible par la connexion autorisée, pas une analyse du document.

Point de contrôle : La lecture peut être faite sur .mpp réel, mais elle n’en restitue pas les dépendances/ressources/tâches.

Dépannage : Sans droit de lecture, ne pas rendre le lien public ; corriger avec owner. Pour interpréter .mpp, prévoir Project/export ou intégration appropriée ; pour DOCX/PDF, une extraction explicite adaptée est nécessaire.


## 14. Corrigé technique complet

Le guide formateur séparé contient architecture/action par action, valeurs de mapping, compte rendu attendu, résultats des tests, interprétation des métriques et alternatives. Il doit être conservé hors du dossier participant jusqu’à la remise, pour éviter la copie de verdicts.

Les expressions et le modèle du cahier sont des aides opératoires communes, pas un verdict de tests prérempli. Le corrigé ne prétend pas détenir de traces réelles d’exécution du tenant.

## 15. Checklist finale de validation

| Contrôle | A | B | Preuve |
| --- | --- | --- | --- |
| Site d’équipe privé créé ou préprovisionnement déclaré | À vérifier | À vérifier | À renseigner |
| Bibliothèque et trois documents fictifs accessibles | À vérifier | À vérifier | À renseigner |
| Trois URL source contrôlées sans droits élargis | À vérifier | À vérifier | À renseigner |
| Archivage HTML après accord et avant Teams | À vérifier | À vérifier | À renseigner |
| Source et types exacts ; valeur65 et 72 numériques | À vérifier | À vérifier | À renseigner |
| ITEM_ID correct et référence guard | À vérifier | À vérifier | À renseigner |
| Title journal unique vérifié | À vérifier | À vérifier | À renseigner |
| Clé stable A/B/DateRapport/Revision | À vérifier | À vérifier | À renseigner |
| Même source V1 dans les deux parcours | À vérifier | À vérifier | À renseigner |
| Modèle neuf rubriques et statut des décisions préservés | À vérifier | À vérifier | À renseigner |
| HTML/texte rendu contrôlé | À vérifier | À vérifier | À renseigner |
| Approver et destinataires de test autorisés | À vérifier | À vérifier | À renseigner |
| Approval avant toutes diffusions CR | À vérifier | À vérifier | À renseigner |
| Rejet testé sans CR envoyé | À vérifier | À vérifier | À renseigner |
| Teams canal standard ou variante explicitée | À vérifier | À vérifier | À renseigner |
| OutlookV2 reçu, pas seulement actionSucceeded | À vérifier | À vérifier | À renseigner |
| Doublon même clé bloqué | À vérifier | À vérifier | À renseigner |
| Historique/RunIds et succès partiel inspectables | À vérifier | À vérifier | À renseigner |
| Copilot disponible ou B non exécuté | À vérifier | À vérifier | À renseigner |
| Mesures réelles et biais documentés | À vérifier | À vérifier | À renseigner |
| Aucun appel IA générative ajouté au runtime | À vérifier | À vérifier | À renseigner |
| Aucune reprise aveugle/secret/politique contournée | À vérifier | À vérifier | À renseigner |


Sécurité : moindre privilège, data fictive, test destinations, aucun secret, connections nominatives, policies respectées, validation de diffusion distincte du GO, risque d’envoi partiel/double connu, RunIds conservés et reprise contrôlée. Pour données réelles, appliquer finalité/minimisation/rétention/accès et règles internes avec les responsables compétents ; ce cahier n’est pas une attestation RGPD.

L’approbation est un effet réel avec notifications possibles : Assigned to est un acteur autorisé, pas un nom fictif saisi dans un champ d’adresse. Le champ ProjectManager Alexandra Rey reste fictif et n’est pas l’identité du compte connecté.

## 16. Conclusion pédagogique et retour d’expérience

Répondre en dix lignes : ce que l’automatisation a rendu reproductible ; ce que Copilot a accéléré ; ce qu’il a laissé incomplet ; ce que vous avez corrigé ; vos résultats/times ; les limites et conditions d’industrialisation.

Questions : Pourquoi Get item plutôt que Get items pour le projet ? Pourquoi l’approval ne valide pas le renfort ? Quel jeton a été mal sélectionné ? Pourquoi un timeout mail peut créer un doublon ? Comment le journal protège-t-il une reprise ? Quelles validations humaines demeurent ? Comment distinguer construction assistée et génération IA à l’exécution ? Quel biais limite votre mesure 3 h / 30 min ?

Le résultat attendu est une maîtrise : construire → contrôler → tester → approuver → diffuser → tracer. Copilot peut aider à construire ; il ne remplace ni responsabilité PMO/BA ni autorisations de diffusion.

Contrôle documentaire : création/édition Copilot, actions SharePoint/Teams/Outlook/Approvals et licences ont été confrontées aux pages officielles liées au fil du cahier. Les manipulations de site/upload et Create file/Get file properties/Get file content ont également été confrontées aux documents Microsoft. Aucune capture fictive ni aucun package Power Automate prétendument importable n’est fourni. Aucun tenant Microsoft n’a été exécuté lors de la rédaction ; les tests T01–T12 sont la validation locale indispensable avant formation ou production.
