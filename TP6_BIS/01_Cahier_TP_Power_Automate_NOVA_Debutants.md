# Cahier de TP — Power Automate pas à pas : une charte NOVA, trois fichiers OneDrive

Version pédagogique du 15 octobre 2026 — Support formateur et participant

## Présentation du cas pratique

Vous accompagnez le PMO de la Collectivité fictive NOVA. Amine Benali, chef de projet fictif, transmet par email la charte du projet PORTAL-2026-042 : modernisation d’un portail de services publics. Vous allez l’archiver, séparer ses trois sections documentaires, puis enregistrer ces sections dans trois fichiers texte. Vous construirez chaque fonctionnalité manuellement avant de la demander à Copilot intégré à Power Automate.

Le dossier source fait autorité : pilote cible au 15/12/2026, budget approuvé de 320 000 EUR, 50 usagers pilotes, 25 agents internes et cible de 20 000 dossiers/mois non encore testée en charge. L’accès de test à l’API fournisseur reste à confirmer. Les trois sections sont conservées intégralement : D01 — Charte et contexte ; D02 — Règles MoSCoW ; D03 — Contrôles et échelles. [file:1]

Ce TP remplace le scénario PRJ-2026-017 de l’ancien support par le dossier NOVA demandé. Il retire l’agent Copilot Studio, l’analyse métier générative, l’approbation et la diffusion automatique de l’ancien TP. Il ne produit pas de compte rendu et ne classe pas des exigences MoSCoW : il transporte et découpe le texte fourni, sans le réécrire. [file:1][file:2]

Les réserves métier restent dans les textes : aucune nouvelle dépense, conformité, décision ou ouverture du pilote n’est approuvée par cette automatisation. Le contrôle humain de qualité du TP n’est pas une action d’approbation Power Automate.

## Contrat de simplicité

- Une seule boîte Outlook professionnelle de formation ; aucun nom fictif n’est une adresse réelle.
- Deux flux indépendants : `NOVA_Charte_Manuel` et `NOVA_Charte_Copilot`.
- Un seul flux actif à la fois pour éviter les doubles écritures pendant les essais.
- Une seule boucle, justifiée par la liste des pièces jointes ; aucune variable.
- Des filtres simples dans le déclencheur, puis une seule condition sur le nom de la pièce jointe.
- Le décodage du texte et les petites expressions n’arrivent qu’après l’archivage testé.
- Aucun agent, service HTTP, SharePoint, approbation, envoi de compte rendu ou connecteur d’extraction payant dans le parcours principal.
- Les trois fichiers finaux ne sont créés qu’après validation des trois blocs de texte.

## Difficulté et progression

| Niveau | Notion | Moment d’introduction | Preuve avant de continuer |
|---|---|---|---|
| 1 | Déclencheur et archivage d’une pièce jointe | 1_A, premier mini-exercice | Le fichier s’ouvre dans OneDrive |
| 2 | Objet de l’email et nom du fichier | 1_A, après la première réussite | Bons messages acceptés, autres ignorés |
| 3 | Lecture et décodage du texte | 2_A | Texte lisible, accents corrects |
| 4 | Identification de D01, D02 et D03 | 2_A | Trois blocs distincts vérifiés |
| 5 | Création de trois fichiers | 3_A | Trois contenus correctement associés |
| 6 | Génération, contrôle et correction par Copilot | Chaque partie B, après la partie A correspondante | Même résultat observable que le manuel |

Le niveau 6 décrit un travail de vérification, non une étape technique dont les autres dépendent. La partie 2_A dépend seulement de 1_A validé ; 3_A dépend seulement de 2_A validé. Les parties B suivent leur propre chaîne 1_B → 2_B → 3_B. Un échec de Copilot ne bloque jamais la progression manuelle.

## Durées réalistes

| Séquence | Durée | Tests inclus |
|---|---:|---|
| Préparation participant et démonstration des gestes communs | 25 min | Connexions et dossier |
| 1_A — Archivage manuel | 60 min | Premier succès, puis filtres |
| 1_B — Même flux avec Copilot | 35 min | Comparaison et corrections |
| Pause | 15 min | |
| 2_A — Lire et identifier les sections | 70 min | Décodage, découpage, cas invalide |
| 2_B — Compléter avec Copilot | 40 min | Vérification des sorties |
| Pause | 15 min | |
| 3_A — Créer les trois fichiers | 35 min | Essai progressif 1 puis 3 fichiers |
| 3_B — Créer avec Copilot | 30 min | Comparaison des fichiers |
| Validation finale et synthèse | 20 min | Grille finale |
| Réserve de dépannage | 30 min | Répartie selon les difficultés |
| Total | 6 h 15 | 5 h 45 hors pauses |

Prévoir une journée de 6 h 15, hors déjeuner, ou deux séances de 3 h environ avec une petite marge de transition. Cette estimation comprend 30 minutes de dépannage ; si les connexions ou Copilot sont instables, étaler la session plutôt que supprimer les tests. Le formateur prépare les comptes et valide le tenant en amont, en plus de cette durée.

## Prérequis techniques et préparatifs du formateur

1. Chaque participant dispose d’un compte professionnel ou scolaire, d’une boîte Exchange Online accessible dans Outlook et d’un OneDrive for Business initialisé. Le connecteur du TP est `Office 365 Outlook`, pas `Outlook.com`.
2. Vérifier l’accès à Power Automate et le droit de créer/enregistrer/exécuter des flux cloud dans l’environnement autorisé. Vérifier les droits de licence applicables et les politiques de données avec l’administrateur. Outlook et OneDrive for Business sont classés Standard ; cela ne constitue pas, seul, une preuve de droits d’usage complets. [web:10][web:9]
3. Tester les connexions Outlook et OneDrive avec le compte qui exécutera le TP. Utiliser les fichiers appartenant à ce compte, pas un raccourci vers le OneDrive d’un tiers. [web:9]
4. Vérifier réellement l’accès à Copilot dans le nouveau concepteur. La disponibilité dépend de l’environnement, de la région et de la configuration du tenant. La présence d’un autre Copilot Microsoft ne garantit pas celle de ce volet. Le concepteur classique ne fournit pas ce Copilot. [web:8]
5. Préparer une démonstration de secours : captures d’une génération réellement effectuée et copie de ses actions, avec ses erreurs éventuelles. Si Copilot est absent, les participants réalisent les parties A, rédigent et contrôlent les prompts B sur la démonstration. Noter les B « non exécutés localement », jamais « validés ».
6. Vérifier avant la session que le prompt français est accepté. Microsoft signale une optimisation en anglais et un support limité des autres langues : les trois prompts de ce cahier restent en français, mais des noms d’actions peuvent apparaître en anglais. [web:8]
7. Distribuer le fichier UTF-8 `Charte_Projet_NOVA.txt` fourni et les variantes de test. C’est une transcription du dossier joint : ajout de trois marqueurs techniques, sans résumé ni analyse du contenu. Ouvrir ce fichier pour vérifier les caractères accentués. [file:1]
8. Dans le tenant de formation, jouer tous les cas de l’annexe et vérifier les sorties avant d’animer. Ce cahier est vérifié sur documentation ; aucun flux n’a été exécuté dans votre tenant lors de sa rédaction.
9. Réserver une boîte de test sans règle qui déplace immédiatement les emails. Envoyer des messages ordinaires non chiffrés, sans signature incorporant des images et avec de petites pièces jointes. Les messages protégés/signés et certains mécanismes de remise des pièces jointes peuvent affecter le connecteur. [web:10]
10. Préparer une copie de référence des flux validés dans le tenant pour le dépannage, si les droits de partage le permettent. Aucun package importable de flux n’est supposé fourni dans ce support.

### Fichiers et dossiers de travail

Les chemins suivants sont relatifs à la racine du OneDrive du compte connecté. Ce ne sont ni des chemins Windows, ni des URL.

| Usage | Chemin pédagogique |
|---|---|
| Réception du flux manuel | `/TP_NOVA/Manuel/Reception` |
| Sorties du flux manuel | `/TP_NOVA/Manuel/Sections` |
| Réception du flux Copilot | `/TP_NOVA/Copilot/Reception` |
| Sorties du flux Copilot | `/TP_NOVA/Copilot/Sections` |

Utiliser le sélecteur du connecteur pour choisir le dossier réel correspondant. Les dossiers sont créés dans l’interface web OneDrive, pas par une action de création de dossier supposée disponible.

### Noms déjà présents : règle de laboratoire

Les noms finaux sont fixes pour faciliter les vérifications. Avant chaque nouvel essai, attendre la fin de l’exécution précédente puis supprimer manuellement, uniquement dans les dossiers de ce TP, l’ancienne charte archivée et les anciens fichiers de sortie. Conserver les preuves utiles avant nettoyage. Ne pas toucher aux données professionnelles.

Ne pas supposer l’existence d’une option « Écraser » dans `Créer un fichier` : la documentation décrit trois paramètres, dossier, nom et contenu. Le nettoyage manuel évite de dépendre d’un comportement de collision. Ce TP ne réalise ni gestion de versions, ni déduplication, ni traitement simultané de plusieurs chartes. [web:9]

## Schéma général du processus

```text
Nouvel email — Office 365 Outlook (V3)
  Filtres du déclencheur : objet contenant « charte de projet », pièces jointes présentes
  ↓
Pour chaque pièce jointe                         [seule boucle]
  Nom = Charte_Projet_NOVA.txt ?
    Non → aucune action
    Oui → Obtenir la pièce jointe (V2) → Créer le fichier source dans OneDrive  [partie 1]
          ↓
          Décoder le texte UTF-8 reçu → Séparer sur [[SECTION]]              [partie 2]
          Nombre de morceaux = 4 ?
            Non → diagnostic visible, aucun fichier de section
            Oui → D01_TEXTE → D02_TEXTE → D03_TEXTE
                  Contrôler titres et contenu non vide
                    Non → diagnostic, aucun fichier de section
                    Oui → créer D01 → créer D02 → créer D03                 [partie 3]
```

Il existe une petite imbrication de contrôles en partie 2, introduite seulement après les tests d’archivage : elle évite d’accéder à une section absente. Pas de conditions imbriquées dans le premier archivage.

## Gestes communs : à montrer une fois

- Accès : ouvrir Power Automate, sélectionner l’environnement de formation dans la barre supérieure.
- Ajouter : dans le concepteur, cliquer sur `+` à l’endroit voulu, puis `Ajouter une action` / `Add an action`. Rechercher le connecteur et l’opération, pas seulement un mot ressemblant.
- Paramètres supplémentaires : le nouveau concepteur propose généralement `Ajouter un paramètre` / `Add new parameter`. D’autres présentations utilisent des options avancées. Sélectionner le paramètre nommé ; ne pas chercher un bouton imposé si le libellé diffère.
- Données dynamiques : cliquer dans le champ, ouvrir le sélecteur de contenu dynamique proposé, puis sélectionner le jeton sous l’action qui le produit. Le nom d’un jeton tapé au clavier n’est pas sa valeur.
- Expressions : ouvrir `fx` / `Expression`, saisir l’expression sans `=` et sans ajouter `@`. Utiliser des apostrophes droites. Les expressions de ce cahier supposent les noms d’actions indiqués.
- Renommer : utiliser le menu de l’action `…` puis `Renommer` s’il est proposé, ou l’édition du titre. Renommer avant de saisir les expressions qui référencent l’action.
- `Compose` appartient à `Opérations sur les données` / `Data Operation`. Dans une interface française, cette action peut s’appeler `Message`, et non « Composer ». Rechercher `Compose`, ou ouvrir `Opérations sur les données` et sélectionner `Message`. Il s’agit d’une action à un champ d’entrée, pas d’un envoi Outlook. [web:23][web:31]
- Tester : `Enregistrer` → `Tester` → essai manuel si proposé → envoyer un nouvel email. Un ancien email présent dans la boîte ne constitue pas un nouveau déclenchement.
- Inspecter : `Mes flux` → le flux → historique des exécutions → une exécution → ouvrir l’action et ses entrées/sorties. « Ignoré/Skipped » est normal sur une branche non retenue.

---

# PARTIE 1 — Recevoir et archiver une charte de projet

## 1_A — Créer manuellement un premier flux — 60 min

### Objectif pédagogique

Comprendre un déclencheur, une pièce jointe et une action d’archivage. Obtenir d’abord un premier fichier, puis ajouter les filtres sans expressions.

### Prérequis

Compte et connexions validés. Fichier `Charte_Projet_NOVA.txt` disponible localement. Aucun autre flux NOVA actif.

### Scénario métier

Amine Benali transmet la charte de PORTAL-2026-042. Utiliser une adresse réelle de formation pour simuler cet envoi. Le corps du mail sert seulement d’accompagnement : la source est la pièce jointe.

### Étapes détaillées numérotées

1. Dans OneDrive web, à la racine, choisir `Ajouter nouveau` / `Nouveau` puis `Dossier`, selon l’interface. Créer `TP_NOVA`, puis `Manuel`, puis `Reception` dans `Manuel`. Le dossier de sortie `Sections` sera créé en partie 3.
2. Dans Power Automate, cliquer `Créer` → `Flux cloud automatisé`. Nommer le flux `NOVA_Charte_Manuel`. Rechercher `Office 365 Outlook`, puis sélectionner `Lorsqu’un nouvel e-mail arrive (V3)` / `When a new email arrives (V3)`. Cliquer `Créer`.
3. Comprendre le déclencheur : il surveille les nouveaux messages du dossier choisi. Dans ses paramètres, sélectionner la `Boîte de réception` avec le sélecteur. Ajouter `Uniquement avec pièces jointes` et choisir `Oui`. Régler `Inclure les pièces jointes` sur `Non`. Laisser le filtre d’objet vide pour ce premier mini-exercice.
4. Comprendre la boucle : un mail contient une liste de pièces jointes, même s’il n’en a qu’une. Ajouter `Contrôle` → `Appliquer à chacun` / `Apply to each`, nommer `POUR_CHAQUE_PJ`. Comme entrée, sélectionner `Pièces jointes` / `Attachments` du déclencheur.
5. Comprendre la récupération : le déclencheur transmet les noms et identifiants ; l’action suivante télécharge les octets du fichier. Dans la boucle, ajouter Outlook `Obtenir une pièce jointe (V2)` / `Get Attachment (V2)`, nommer `PJ_CONTENU`. Dans `ID de message`, sélectionner le jeton du déclencheur. Dans `ID de pièce jointe`, sélectionner l’ID de la pièce jointe courante de la boucle.
6. Comprendre l’archivage : OneDrive doit recevoir un nom et le véritable contenu. Après `PJ_CONTENU`, toujours dans la boucle, ajouter OneDrive for Business `Créer un fichier` / `Create file`, nommer `ARCHIVER_CHARTE`. Choisir le dossier `Reception`, le nom dynamique de la pièce jointe courante et `Content Bytes` / `Octets du contenu` de `PJ_CONTENU` comme contenu.
7. Mini-test 1 : enregistrer, tester, envoyer un nouvel email avec une seule pièce jointe `Charte_Projet_NOVA.txt`, objet `essai initial`. Ouvrir le fichier archivé. Il doit être lisible et identique à la source. En cas d’erreur ou de fichier vide, corriger avant l’étape 8. À ce stade, tout mail avec pièce jointe peut être archivé : ce n’est pas encore la version finale.
8. Ajouter maintenant la règle sur l’objet : rouvrir le déclencheur, ajouter le paramètre `Filtre d’objet` / `Subject Filter`, saisir `charte de projet` sans guillemets. Ce filtre teste la présence du texte dans l’objet : il réalise ici la condition sur l’objet, sans ajouter une condition visuelle imbriquée. Conserver `Uniquement avec pièces jointes = Oui`.
9. Ajouter la règle sur le nom : dans `POUR_CHAQUE_PJ`, avant `PJ_CONTENU`, ajouter `Contrôle` → `Condition`, nommer `NOM_CHARTE_OK`. À gauche, sélectionner le `Nom` / `Name` de la pièce jointe courante ; opérateur `est égal à` ; à droite, saisir exactement `Charte_Projet_NOVA.txt`.
10. Placer `PJ_CONTENU`, puis `ARCHIVER_CHARTE`, dans la branche `Vrai` / `Oui` de cette condition. Si l’interface ne permet pas de déplacer facilement les cartes, recréer ces deux actions dans cette branche avec les mêmes noms après suppression des anciennes. Laisser la branche `Faux` / `Non` vide. Vérifier qu’il ne reste aucune création de fichier hors de la branche Vrai.
11. Mini-test 2 : nettoyer l’ancien fichier du dossier de TP, enregistrer puis exécuter les essais valides et invalides ci-dessous. Ne pas traiter le contenu textuel en partie 1.
12. Attendre la fin des exécutions, noter la preuve de succès, puis désactiver ce flux depuis sa page de détails avant de travailler sur 1_B.

### Actions Power Automate à utiliser

- Office 365 Outlook : `When a new email arrives (V3)` et `Get Attachment (V2)`.
- Contrôle : `Apply to each`, puis `Condition`.
- OneDrive for Business : `Create file`.

Le choix `Include Attachments = No` n’enlève pas les métadonnées des pièces jointes ; il reporte le téléchargement à `Get Attachment (V2)`. Microsoft recommande cette approche pour éviter les délais de téléchargement dans le déclencheur. [web:10]

### Configuration exacte de chaque action

| Action / champ | Valeur finale |
|---|---|
| Déclencheur : Dossier / Folder | Boîte de réception choisie dans le sélecteur |
| Déclencheur : Subject Filter | `charte de projet` |
| Déclencheur : Only with Attachments | Oui / true |
| Déclencheur : Include Attachments | Non / false |
| Autres filtres du déclencheur | Vides |
| POUR_CHAQUE_PJ : entrée | Jeton `Attachments` du déclencheur |
| NOM_CHARTE_OK : gauche | `Name` de la pièce jointe courante |
| NOM_CHARTE_OK : opérateur / droite | Égal à / `Charte_Projet_NOVA.txt` |
| PJ_CONTENU : Message Id | `Message Id` du déclencheur, pas l’ID de la pièce jointe |
| PJ_CONTENU : Attachment Id | `Attachment Id` / `Id` de l’élément courant, pas l’ID du message |
| ARCHIVER_CHARTE : Folder Path | `/TP_NOVA/Manuel/Reception`, sélection réelle |
| ARCHIVER_CHARTE : File Name | `Name` de la pièce jointe courante |
| ARCHIVER_CHARTE : File Content | `Content Bytes` de PJ_CONTENU |

Si la sélection d’un jeton crée automatiquement une boucle, conserver une seule boucle : ne pas envelopper une seconde fois les mêmes pièces jointes. Ne pas chercher une action plurielle « Get attachments (V2) » : l’action utilisée ici est `Get Attachment (V2)` au singulier. [web:10]

### Résultat attendu

Une charte reçue dans un nouvel email contenant `charte de projet` dans l’objet est archivée automatiquement. Les autres pièces jointes ne sont pas enregistrées. Les pièces jointes sont uniquement transportées, pas interprétées.

### Procédure de test

1. T01 : objet `charte de projet NOVA T01`, pièce jointe exacte. Attendu : une archive lisible.
2. T02 : objet `réunion NOVA T02`, même pièce jointe. Attendu : aucun nouveau fichier ; normalement aucune exécution, puisque le filtre du déclencheur écarte le message.
3. T03 : bon objet, sans pièce jointe. Attendu : aucun nouveau fichier ; normalement aucune exécution.
4. T04 : bon objet, uniquement `Note_Reunion.txt`. Attendu : exécution possible, condition fausse, pas d’archive.
5. T05 : bon objet, `Charte_Projet_NOVA.txt` et `Note_Reunion.txt`. Attendu : seule la charte est archivée ; regarder les deux itérations de la boucle.
6. Nettoyer le fichier de réception avant chaque test positif. Attendre la fin d’un essai avant le suivant. Utiliser les minuscules indiquées dans les objets de test pour ne pas introduire une discussion sur la casse.

### Erreurs fréquentes et solutions

| Symptôme | Correction |
|---|---|
| Pas de déclenchement | Vérifier flux actif, bonne boîte, nouveau mail, dossier et objet. Consulter l’historique ; ne pas déplacer un ancien mail pour simuler une arrivée. |
| Fichier vide ou illisible | `File Content` doit venir de `Content Bytes` de PJ_CONTENU, pas du nom, de l’ID ou de l’ensemble de l’objet pièce jointe. |
| Pièce jointe introuvable | Inversion possible des ID ; vérifier message du déclencheur et ID de l’itération courante. |
| Tous les fichiers sont archivés | Les deux actions doivent être dans Vrai de NOM_CHARTE_OK. |
| Nom presque identique refusé | `Charte_Projet_NOVA (1).txt` n’est pas le nom attendu. Renommer localement avant l’envoi. |
| Conflit ou résultats d’un ancien essai | Nettoyer uniquement les dossiers du TP avant nouvel essai. |
| Deux boucles identiques | Retirer la boucle ajoutée automatiquement en trop, en conservant les actions dans la boucle voulue. |

Si la réception tarde, vérifier l’historique et les règles Outlook avant de renvoyer : le déclencheur peut connaître des retards. Le TP ne garantit pas un traitement exactement une fois. [web:10]

### Critères de validation

- [ ] Le premier archivage a été testé avant l’ajout des règles.
- [ ] Le filtre d’objet et le filtre de présence de pièces jointes sont configurés.
- [ ] Le nom est vérifié dans une seule boucle.
- [ ] Le fichier s’ouvre et contient bien le dossier NOVA.
- [ ] T02 à T05 donnent les résultats attendus.
- [ ] Aucune expression, analyse documentaire ou fonctionnalité non demandée n’a été ajoutée.


## 1_B — Générer le même flux avec Copilot — 35 min

### Objectif pédagogique

Décrire un flux déjà compris, puis vérifier une proposition générée. Distinguer génération du flux et preuve de bon fonctionnement.

### Prérequis

1_A validé. Copilot disponible dans Power Automate, ou démonstration formateur de secours. Flux manuel désactivé. Créer dans OneDrive `TP_NOVA/Copilot/Reception`.

### Scénario métier

Le même PMO souhaite accélérer la construction, sans déléguer le contrôle de la pièce jointe ou de sa destination.

### Étapes détaillées numérotées

1. Avant d’ouvrir Copilot, dessiner sur papier : arrivée d’email → filtres → boucle → nom exact → récupérer → archiver. Expliquer à un binôme ce que doit faire chaque étape.
2. Sur l’accueil Power Automate, utiliser `Créer avec Copilot` / `Create with Copilot` si cette entrée est proposée. La zone peut aussi être présentée comme une description du flux. Coller le prompt ci-dessous puis envoyer la demande.
3. Examiner la proposition avant de la conserver. Dans l’interface documentée, `Keep it and continue` permet de conserver la structure, puis les connexions sont vérifiées et `Create flow` ouvre le concepteur. Les traductions et l’ordre des écrans peuvent varier. Ne conserver que les opérations utiles. [web:8]
4. Si la création depuis l’accueil n’est pas proposée mais le volet du nouveau concepteur est disponible, créer un nouveau flux automatisé `NOVA_Charte_Copilot` avec le déclencheur V3 puis coller le même prompt dans ce volet. Lui demander de réutiliser le déclencheur existant ; vérifier qu’il n’en crée pas un second.
5. Nommer le flux `NOVA_Charte_Copilot`, vérifier les connexions et sélectionner le vrai dossier `/TP_NOVA/Copilot/Reception`.
6. Contrôler les actions avec le tableau de configuration. Ouvrir chaque champ : un texte comme « Content Bytes » écrit en toutes lettres ne vaut pas un jeton dynamique.
7. Si Copilot a seulement expliqué la solution, constater qu’aucune action n’a été ajoutée. Compléter avec la procédure 1_A. Si une action manque, l’ajouter au bon endroit ; si un contrôle inutile existe, le supprimer après comparaison. Ne pas relancer une génération complète sur la version manuelle.
8. Enregistrer, effectuer les tests, puis comparer le résultat au flux manuel. Attendre la fin des exécutions et désactiver le flux Copilot. Réactiver le manuel uniquement au début de 2_A.

### Actions Power Automate à utiliser

Les mêmes opérations que 1_A : déclencheur Outlook V3, une boucle, une condition, Get Attachment (V2), Create file. Copilot est utilisé pendant la conception ; il n’y a pas d’appel à un modèle pendant l’exécution de ce flux.

### Configuration exacte de chaque action

| Élément à vérifier | Configuration exigée |
|---|---|
| Déclencheur | Office 365 Outlook, When a new email arrives (V3), Boîte de réception |
| Règles email | Subject Filter = `charte de projet` ; Only with Attachments = Oui ; Include Attachments = Non |
| Boucle POUR_CHAQUE_PJ | `Attachments` du déclencheur, une seule boucle |
| NOM_CHARTE_OK | `Name` courant = `Charte_Projet_NOVA.txt` |
| PJ_CONTENU | Message Id du déclencheur ; Attachment Id courant |
| ARCHIVER_CHARTE | Dossier `/TP_NOVA/Copilot/Reception` ; Name courant ; Content Bytes de PJ_CONTENU |
| Branches négatives | Aucune création de fichier |

Copilot peut proposer une structure incomplète ou une affectation incorrecte. Ses capacités de création/modification sont documentées, mais la génération exacte de chaque paramètre et expression n’est pas garantie. [web:8]

### Prompt Copilot

```text
OBJECTIF
Créer un second flux cloud automatisé nommé NOVA_Charte_Copilot, équivalent à mon flux manuel. Cas fictif : charte du projet PORTAL-2026-042 de la Collectivité NOVA. Utiliser uniquement Office 365 Outlook, OneDrive for Business et les contrôles intégrés.

DÉCLENCHEUR
Office 365 Outlook — When a new email arrives (V3), dans la Boîte de réception du compte connecté.
Configurer Subject Filter = charte de projet ; Only with Attachments = true ; Include Attachments = false. L’objet doit contenir ce texte et le message doit avoir une pièce jointe.

ACTIONS
1. Une seule boucle Apply to each, nommée POUR_CHAQUE_PJ, sur Attachments du déclencheur.
2. Dans cette boucle, une Condition nommée NOM_CHARTE_OK : Name de la pièce jointe courante égal à Charte_Projet_NOVA.txt.
3. Uniquement dans Vrai : Get Attachment (V2), nommé PJ_CONTENU. Message Id vient du déclencheur ; Attachment Id vient de la pièce jointe courante.
4. Puis OneDrive for Business Create file, nommé ARCHIVER_CHARTE : Folder Path = /TP_NOVA/Copilot/Reception ; File Name = Name de la pièce jointe courante ; File Content = Content Bytes de PJ_CONTENU.
Les dossiers sont déjà créés dans mon OneDrive. Je sélectionnerai le dossier réel et vérifierai les connexions.

CONDITIONS
Objet non conforme ou aucune pièce jointe : ne rien créer.
Nom différent de Charte_Projet_NOVA.txt : ne rien faire dans la branche Faux. S’il y a plusieurs pièces jointes, enregistrer uniquement celle dont le nom est exactement celui demandé.
Ne pas lire ni analyser le document, ne pas extraire de texte, ne pas créer les fichiers D01/D02/D03 à ce stade.
Ne pas ajouter d’agent, d’approbation, de variable, de connecteur premium, de notification, d’email sortant ou de boucle supplémentaire.

RÉSULTAT ATTENDU
Un fichier Charte_Projet_NOVA.txt dans /TP_NOVA/Copilot/Reception pour un nouvel email valide. Aucun fichier pour les cas invalides.
Construire le flux le plus simple possible. Si une configuration ne peut pas être générée ici, ne pas inventer d’action : indiquer précisément ce qu’il faut compléter manuellement. Ne pas prétendre avoir testé le flux.
```

### Résultat attendu

Un second flux indépendant archive la même charte dans son propre dossier. Les parties métier du texte sont inchangées.

### Procédure de test

1. Nettoyer `Copilot/Reception`, vérifier que seul le flux Copilot est actif.
2. Rejouer T01, T02, T03 et T05 de 1_A avec de nouveaux emails.
3. Ouvrir l’archive et vérifier son contenu, pas seulement une coche verte dans le concepteur.
4. Comparer l’action de téléchargement, le nom et le contenu du fichier aux actions du manuel.
5. Noter une erreur détectée et sa correction ; si aucune erreur n’est trouvée, noter les contrôles effectivement réalisés.

### Erreurs fréquentes et solutions

- Copilot absent : appliquer la modalité de démonstration de secours, sans acheter un abonnement pendant le TP.
- Connecteur Outlook.com ou OneDrive personnel : remplacer par les connecteurs professionnels prévus, puis vérifier les connexions.
- Action « Obtenir le contenu du fichier » OneDrive utilisée avant l’archivage à la place du téléchargement Outlook : remplacer par Get Attachment (V2), comme en 1_A.
- Fichier créé pour toutes les pièces jointes : replacer les actions dans la branche du nom exact.
- Les deux flux écrivent : désactiver celui qui n’est pas testé et attendre la fin des runs existants.

### Critères de validation

- [ ] Déclencheur, conditions, contenu réel et destination sont vérifiés.
- [ ] Un test positif et les tests négatifs sont prouvés.
- [ ] Une pièce jointe sans rapport est ignorée.
- [ ] Les différences avec 1_A et les corrections sont consignées.
- [ ] Si Copilot était indisponible : statut explicitement « non exécuté localement ».


# PARTIE 2 — Lire et décomposer le contenu de la charte

## 2_A — Compléter manuellement le flux initial — 70 min

### Objectif pédagogique

Différencier nom, octets et texte ; décoder un TXT contrôlé ; identifier les trois sections sans encore créer les fichiers finaux.

### Prérequis

1_A testé. Copilot désactivé. Réactiver `NOVA_Charte_Manuel`. Utiliser la charte UTF-8 fournie, pas le DOCX original ni un PDF. Savoir ouvrir les sorties d’une action dans l’historique.

### Scénario métier

Le PMO veut préparer trois dossiers documentaires. Le flux doit conserver les paragraphes du dossier NOVA sans les résumer, les reformuler ou arbitrer leurs règles.

### Étapes détaillées numérotées

1. Ouvrir localement `Charte_Projet_NOVA.txt`. Repérer le nom du fichier, puis son texte. Le nom identifie un objet ; le contenu binaire correspond à ses octets ; le texte est le résultat d’un décodage approprié. `Content Bytes` est transporté sous une représentation base64 dans la réponse Outlook. Obtenir des octets ne signifie pas extraire les paragraphes d’un DOCX ou d’un PDF. [web:10][web:22]
2. Observer le contrat du TXT : un préambule, puis exactement trois lignes `[[SECTION]]`. Chaque marqueur précède un titre complet. Le premier bloc commence par `D01 — Charte et contexte`, le deuxième par `D02 — Règles MoSCoW`, le troisième par `D03 — Contrôles et échelles`. D03 s’arrête à la fin du fichier. Ne pas utiliser ce marqueur dans le corps d’une section.
3. Dans `NOVA_Charte_Manuel`, repérer la branche Vrai de `NOM_CHARTE_OK`. Ajouter immédiatement après `ARCHIVER_CHARTE` une action `Opérations sur les données` → `Message` / `Compose`, nommée `TEXTE_CHARTE`. Cette action sert à voir un résultat intermédiaire, sans variable.
4. Expliquer avant de saisir : `base64ToString` transforme une chaîne base64 en texte, ce n’est ni un OCR ni un lecteur Word. Dans `fx`, saisir `base64ToString(`, insérer le jeton `Content Bytes` de `PJ_CONTENU`, puis fermer `)`. Valider. La formule complète équivalente figure dans le tableau pour dépannage ; utiliser de préférence le jeton. [web:22]
5. Mini-test 1 : nettoyer l’archive précédente, enregistrer, envoyer T01. Dans l’historique, ouvrir la sortie de `TEXTE_CHARTE`. Vérifier un paragraphe D01, les accents de « Règles » et les trois marqueurs. Ne pas continuer si l’on voit une chaîne base64, un objet JSON ou des caractères corrompus.
6. Comprendre le découpage : `split` coupe un texte sur un séparateur exact et retourne un tableau, pas trois fichiers. Ajouter `Compose`, nommer `SECTIONS_TABLEAU`, expression `split(outputs('TEXTE_CHARTE'),'[[SECTION]]')`. Le morceau 0 contient le préambule ; les morceaux 1, 2, 3 contiennent D01, D02, D03. Le premier index d’un tableau est 0. [web:22]
7. Mini-test 2 : nettoyer l’archive, enregistrer, envoyer un nouvel email valide. Ouvrir `SECTIONS_TABLEAU`. Attendu : exactement quatre éléments, le premier étant le préambule. Ne pas encore sélectionner les index si cette structure n’est pas confirmée.
8. Ajouter après `SECTIONS_TABLEAU` une `Condition`, nommée `FORMAT_4_BLOCS`. À gauche, expression `length(outputs('SECTIONS_TABLEAU'))` ; opérateur `est égal à` ; à droite, nombre `4`, non texte. Si nécessaire, saisir `4` dans fx pour imposer un nombre. Cette garde vérifie la structure avant d’accéder aux index. Dans Faux, ajouter `Compose`, nommer `DIAG_FORMAT`, entrée littérale `Format refusé : trois marqueurs [[SECTION]] sont requis. Aucun fichier de section créé.`
9. Dans Vrai de `FORMAT_4_BLOCS`, ajouter trois `Compose` successifs : `D01_TEXTE`, `D02_TEXTE`, `D03_TEXTE`. `trim` retire seulement les espaces et sauts de ligne des bords ; il ne réécrit pas les paragraphes internes. Saisir les trois expressions courtes du tableau. Ne pas demander à Copilot de deviner les limites en lisant le sens des paragraphes.
10. Ajouter après les trois Compose, toujours dans Vrai de `FORMAT_4_BLOCS`, une `Condition` nommée `SECTIONS_OK`. Choisir le groupe `ET` / `AND`. Ajouter les six lignes du tableau : chaque bloc doit commencer par son titre et ne pas être limité à ce seul titre. Les valeurs de gauche proviennent des sorties dynamiques des trois Compose. Laisser Vrai vide pour le moment. Dans Faux, ajouter un Compose `DIAG_SECTIONS`, entrée `Sections refusées : vérifier les titres, leur ordre et les paragraphes.`
11. Mini-test 3 : rejouer la charte correcte. Ouvrir les sorties D01, D02, D03 et comparer avec les fichiers de référence fournis. Les trois sections doivent être distinctes et non vides ; `SECTIONS_OK` doit être vraie. Aucun fichier D01/D02/D03 ne doit encore être créé dans OneDrive.
12. Mini-test 4 : utiliser les variantes invalides de l’annexe, en renommant leur copie locale `Charte_Projet_NOVA.txt` avant de joindre. La version sans marqueur doit aller dans Faux de FORMAT_4_BLOCS, sans erreur d’index ; la version D02 vide doit aller dans Faux de SECTIONS_OK. Nettoyer l’archive entre les essais.
13. Conserver une preuve des trois sorties valides puis désactiver le manuel avant 2_B. Ne passer à 3_A que lorsque le test valide est réussi et les deux cas invalides sont expliqués.

### Actions Power Automate à utiliser

- Réutiliser `PJ_CONTENU` et `ARCHIVER_CHARTE` ; aucun nouveau connecteur.
- Opérations sur les données : `Message` / `Compose`, pour TEXTE_CHARTE, SECTIONS_TABLEAU, D01_TEXTE, D02_TEXTE, D03_TEXTE et les diagnostics.
- Contrôle : `Condition` pour FORMAT_4_BLOCS et SECTIONS_OK.
- Fonctions intégrées : `base64ToString`, `split`, `length`, `trim`. Ce sont des expressions, pas des actions autonomes à rechercher dans les connecteurs. [web:22][web:23]

### Configuration exacte de chaque action

La provenance du texte est la pièce jointe déjà téléchargée par `PJ_CONTENU` et archivée par `ARCHIVER_CHARTE`. On réutilise ses octets après l’archivage réussi plutôt que de télécharger une seconde fois le même fichier depuis OneDrive.

| Action | Entrée exacte / réglage |
|---|---|
| TEXTE_CHARTE | `base64ToString(` + jeton Content Bytes de PJ_CONTENU + `)` |
| Formule de dépannage équivalente | `base64ToString(body('PJ_CONTENU')?['contentBytes'])` ; utiliser seulement si ce nom interne et cette propriété sont confirmés dans l’action réelle |
| SECTIONS_TABLEAU | `split(outputs('TEXTE_CHARTE'),'[[SECTION]]')` |
| FORMAT_4_BLOCS | `length(outputs('SECTIONS_TABLEAU'))` égal au nombre `4` |
| D01_TEXTE | `trim(outputs('SECTIONS_TABLEAU')[1])` |
| D02_TEXTE | `trim(outputs('SECTIONS_TABLEAU')[2])` |
| D03_TEXTE | `trim(outputs('SECTIONS_TABLEAU')[3])` |
| DIAG_FORMAT et DIAG_SECTIONS | Messages littéraux indiqués dans les étapes |

Pour `SECTIONS_OK`, toutes les lignes sont dans le même groupe ET :

| Sortie dynamique à gauche | Opérateur | Valeur littérale à droite |
|---|---|---|
| D01_TEXTE | commence par / starts with | `D01 — Charte et contexte` |
| D01_TEXTE | n’est pas égal à / is not equal to | `D01 — Charte et contexte` |
| D02_TEXTE | commence par / starts with | `D02 — Règles MoSCoW` |
| D02_TEXTE | n’est pas égal à / is not equal to | `D02 — Règles MoSCoW` |
| D03_TEXTE | commence par / starts with | `D03 — Contrôles et échelles` |
| D03_TEXTE | n’est pas égal à / is not equal to | `D03 — Contrôles et échelles` |

Le titre seul ne compte pas comme un contenu de section. Ces contrôles vérifient le contrat de format, pas l’exactitude métier de tous les paragraphes. La comparaison humaine aux références reste obligatoire : un texte supplémentaire mal placé ne peut pas être détecté par ces seules six lignes.

Ne pas mettre FORMAT_4_BLOCS et l’accès aux index dans une unique expression logique : on ne veut pas dépendre d’un court-circuit d’évaluation. Les trois accès sont réellement placés dans sa branche Vrai.

### Résultat attendu

Trois blocs visibles dans l’historique, avec leur titre et leurs seuls paragraphes. Le fichier source reste l’unique fichier archivé à ce stade. Les données D01/D02/D03 ne sont pas transformées en décisions.

### Procédure de test

1. Contrôler les points d’arrêt dans l’ordre : TEXTE_CHARTE lisible → tableau de quatre éléments → trois Compose corrects → SECTIONS_OK vraie.
2. D01 : vérifier PORTAL-2026-042, 320 000 EUR et le pilote ; aucun paragraphe des règles MoSCoW ou échelles D03.
3. D02 : vérifier Must, Should, Could et Won’t, ainsi que « À arbitrer » ; aucune charte D01 ni matrice de risques D03.
4. D03 : vérifier P × I, contrôles d’habilitations, échelles et réserves ; aucune règle MoSCoW D02.
5. Version sans marqueur : FORMAT_4_BLOCS fausse, DIAG_FORMAT exécuté, D01/D02/D03 ignorés ; l’archive source peut exister, mais aucune section ne doit être créée.
6. Version D02 vide : FORMAT_4_BLOCS vraie, SECTIONS_OK fausse, DIAG_SECTIONS exécuté. Revenir au fichier correct et refaire un dernier essai positif.

### Erreurs fréquentes et solutions

| Difficulté | Solution |
|---|---|
| La sortie ressemble à `UEsDB...` | C’est probablement le contenu encodé d’un ZIP/DOCX, pas un TXT. Reprendre le TXT fourni ; changer l’extension ne convertit pas le fichier. |
| Résultat base64 ou objet JSON | Vérifier la sélection de Content Bytes, pas du corps de réponse complet, et une seule application de base64ToString. |
| Accents incorrects | Repartir du fichier UTF-8 fourni ; ne pas réenregistrer en ANSI. |
| Split ne trouve qu’un élément | Marqueur absent, différent ou formule saisie en texte littéral au lieu de fx. |
| Index hors limites | Les Compose ont été placés hors de Vrai de FORMAT_4_BLOCS. |
| Même texte trois fois | Corriger les index : 1, 2, 3, pas 1 trois fois. |
| Condition fausse sur un bon titre apparent | Vérifier tiret long « — », accents, espaces, absence de puces avant le titre. |
| Formule référence une action inconnue | Vérifier le nom interne ; renommer avant de saisir ou réinsérer la sortie via le concepteur. |

Si une formule bloque, le formateur fait d’abord inspecter la sortie précédente. Ne pas ajouter des expressions imbriquées pour contourner un problème de format.

### Critères de validation

- [ ] La différence nom / octets / texte est expliquée.
- [ ] Les quatre éléments du tableau sont identifiés, préambule compris.
- [ ] Chaque index est protégé par FORMAT_4_BLOCS.
- [ ] Les trois blocs correspondent aux références ; aucun n’est vide ou mélangé.
- [ ] Les deux tests invalides sont correctement refusés.
- [ ] Aucun fichier de section n’est encore créé.


## 2_B — Reproduire le traitement avec Copilot — 40 min

### Objectif pédagogique

Demander une modification ciblée et vérifier les entrées, le décodage et les limites des trois sorties proposées.

### Prérequis

2_A réussi pour comprendre le traitement ; 1_B réellement testé pour modifier le flux Copilot. Si 1_B est bloqué, continuer le parcours manuel ou utiliser la copie de référence fournie par le formateur, en déclarant cette aide. Ne pas considérer un flux non testé comme une base valide.

### Scénario métier

Le PMO veut la même préparation documentaire, mais construite avec l’aide du concepteur Copilot. Aucun arbitrage métier n’est demandé à l’IA.

### Étapes détaillées numérotées

1. Désactiver le manuel ; ouvrir `Mes flux` → `NOVA_Charte_Copilot` → `Modifier`. Vérifier que le nouveau concepteur et le volet Copilot sont accessibles. Enregistrer une copie ou des captures de l’état validé avant modification, selon les possibilités autorisées.
2. Dans le volet du flux existant, coller le prompt ci-dessous. Ne pas le coller dans Copilot Studio ni dans un chat Outlook.
3. Examiner le résultat : Copilot a-t-il réellement ajouté des cartes, ou seulement fourni une explication ? Vérifier qu’il conserve le déclencheur, la boucle et l’archivage du flux existant.
4. Comparer les nouvelles actions à la liste de configuration. Pour les expressions, ouvrir les champs et contrôler les références ; ne pas juger sur les seuls noms visibles.
5. Si le concepteur ne modifie pas tout : ajouter manuellement les opérations manquantes avec les étapes 3 à 10 de 2_A, dans le flux Copilot. Consigner la part réalisée manuellement. Ne pas ajouter un agent ou un connecteur d’extraction pour contourner cette limite.
6. Nettoyer `Copilot/Reception`, activer seulement ce flux, enregistrer et envoyer une charte valide.
7. Examiner chaque sortie, puis les trois blocs ensemble. Comparer aux références et à 2_A. Corriger avant un nouvel essai.
8. Tester les deux variantes invalides, puis refaire un essai valide. Conserver les preuves, attendre la fin des runs et désactiver le flux avant de reprendre 3_A.

### Actions Power Automate à utiliser

Réutilisation des actions de 1_B. Ajout de Compose pour le texte, le tableau, les trois blocs et les diagnostics ; deux Conditions de contrôle. Pas de nouvelle boucle et pas d’action de création de fichiers de section.

### Configuration exacte de chaque action

| Action | Contrôle à réaliser |
|---|---|
| TEXTE_CHARTE | Décoder Content Bytes de PJ_CONTENU une seule fois ; sortie texte |
| SECTIONS_TABLEAU | Split sur le marqueur exact `[[SECTION]]` |
| FORMAT_4_BLOCS | Longueur du tableau égale au nombre 4 |
| D01_TEXTE | Trim de l’élément 1, dans Vrai de FORMAT_4_BLOCS |
| D02_TEXTE | Trim de l’élément 2, au même niveau que D01 |
| D03_TEXTE | Trim de l’élément 3, au même niveau que D01 |
| SECTIONS_OK | Les six règles ET de 2_A, titres exacts et contenu au-delà du titre |
| Branches Faux | Diagnostics sans création de sections |
| ARCHIVER_CHARTE conservé | `/TP_NOVA/Copilot/Reception`, contenu réel de la pièce jointe |

Les noms et expressions attendus sont ceux de 2_A. Si Copilot a renommé une action référencée, réparer les références au lieu de coller aveuglément la formule.

### Prompt Copilot

```text
OBJECTIF
Compléter uniquement le flux existant NOVA_Charte_Copilot pour lire un fichier TXT UTF-8 puis identifier ses trois sections. Ne pas recréer le flux. Ne pas encore créer de fichiers de section.

DÉCLENCHEUR EXISTANT À CONSERVER
Office 365 Outlook When a new email arrives (V3), Boîte de réception, Subject Filter = charte de projet, Only with Attachments = true, Include Attachments = false.
Il existe une boucle POUR_CHAQUE_PJ sur les pièces jointes, une condition NOM_CHARTE_OK sur Name = Charte_Projet_NOVA.txt, puis, dans Vrai, PJ_CONTENU (Get Attachment V2) et ARCHIVER_CHARTE (OneDrive for Business Create file) qui archive dans /TP_NOVA/Copilot/Reception.

PROVENANCE ET FORMAT
Réutiliser Content Bytes de PJ_CONTENU après le succès de ARCHIVER_CHARTE ; ces octets correspondent au fichier reçu et archivé. Ne pas télécharger à nouveau le document et ne pas reconstruire l’archivage.
Le fichier est du texte brut UTF-8, pas un Word ni un PDF. Il contient un préambule, puis exactement trois marqueurs identiques [[SECTION]], un avant chaque titre :
D01 — Charte et contexte
D02 — Règles MoSCoW
D03 — Contrôles et échelles
Les marqueurs sont réservés à ces limites et n’apparaissent pas dans les paragraphes. Les titres font partie des blocs de sortie. Le bloc D01 se termine juste avant le marqueur précédant D02 ; D02 se termine juste avant le marqueur précédant D03 ; D03 se termine à la fin du fichier. Le préambule n’est pas une section.

ACTIONS À AJOUTER APRÈS ARCHIVER_CHARTE, DANS LA MÊME BRANCHE
1. Data Operation Compose nommé TEXTE_CHARTE : base64ToString appliqué à Content Bytes de PJ_CONTENU, via la référence dynamique appropriée. Ce décodage ne doit être effectué qu’une fois.
2. Compose SECTIONS_TABLEAU : split(outputs('TEXTE_CHARTE'),'[[SECTION]]').
3. Condition FORMAT_4_BLOCS : length(outputs('SECTIONS_TABLEAU')) égal au nombre 4.
Dans Faux : Compose DIAG_FORMAT avec le message Format refusé : trois marqueurs [[SECTION]] sont requis. Aucun fichier de section créé.
Dans Vrai seulement, trois Compose successifs :
D01_TEXTE = trim(outputs('SECTIONS_TABLEAU')[1])
D02_TEXTE = trim(outputs('SECTIONS_TABLEAU')[2])
D03_TEXTE = trim(outputs('SECTIONS_TABLEAU')[3])
4. Après ces trois Compose, toujours dans Vrai de FORMAT_4_BLOCS, Condition SECTIONS_OK, groupe ET de six règles : chaque bloc commence par son titre exact indiqué ci-dessus ET n’est pas égal à ce seul titre.
Dans Faux : Compose DIAG_SECTIONS, message Sections refusées : vérifier les titres, leur ordre et les paragraphes.
Laisser Vrai de SECTIONS_OK vide pour la partie suivante.

CONDITIONS ET LIMITES
Ne jamais accéder aux index 1, 2 ou 3 avant la branche Vrai du contrôle de longueur. Garder les réserves et tous les paragraphes inchangés ; ne pas analyser ni réécrire leur sens.
Pas de variable, boucle supplémentaire, agent, extraction PDF/Word, approbation, notification ou connecteur externe.
Le dossier de sortie prévu pour la partie suivante est /TP_NOVA/Copilot/Sections, mais ne pas encore créer D01_Charte_Contexte.txt, D02_Regles_MoSCoW.txt ou D03_Controles_Echelles.txt.

RÉSULTAT ATTENDU
Trois sorties textuelles distinctes et contrôlables dans l’historique. Une charte mal structurée mène à un diagnostic et ne produit pas de section finale. Réutiliser les actions existantes. Si l’édition ou une expression n’est pas prise en charge dans ce concepteur, expliquer l’ajout manuel précis au lieu de reconstruire le flux ou de prétendre l’avoir exécuté.
```

### Résultat attendu

Le flux Copilot identifie les mêmes trois blocs que le manuel. Les titres et les réserves du dossier NOVA sont conservés.

### Procédure de test

1. Charte correcte : TEXTE_CHARTE lisible, quatre morceaux, D01/D02/D03 corrects, SECTIONS_OK vraie.
2. Comparer les sorties texte aux trois fichiers de référence : mêmes paragraphes, pas de section déplacée.
3. Charte sans marqueur : diagnostic, pas d’index hors limites.
4. D02 vide : diagnostic de section, pas de création finale.
5. Vérifier qu’aucun fichier de sortie D01/D02/D03 n’existe encore.
6. Noter ce que Copilot a créé, omis ou mal paramétré et les corrections manuelles nécessaires.

### Erreurs fréquentes et solutions

- Le flux entier est reconstruit : ne pas remplacer le flux validé. Revenir à la copie de référence ; effectuer uniquement les ajouts demandés.
- Copilot utilise trois fois le même index : corriger 1, 2 et 3.
- Il propose « extraire le texte » sans action réelle : refuser cette formulation ; le TXT utilise le décodage explicite de Content Bytes.
- Il crée déjà les trois fichiers : retirer ces cartes pour conserver le point d’arrêt pédagogique de la partie 2.
- Il place les index avant la garde : les déplacer dans Vrai de FORMAT_4_BLOCS avant tout test invalide.
- Aucune capacité d’édition ici : mise en œuvre manuelle des ajouts et statut « assisté partiellement » ou « non exécuté avec Copilot », selon le cas.

### Critères de validation

- [ ] Le flux initial n’a pas été inutilement reconstruit.
- [ ] Les trois blocs sont comparés au besoin et aux références.
- [ ] Les entrées et sorties de chaque nouvelle action sont contrôlées.
- [ ] Le cas valide et les deux refus sont testés.
- [ ] Toute erreur est corrigée avant 3_B.
- [ ] La contribution réelle de Copilot est documentée.


# PARTIE 3 — Créer trois fichiers et les archiver dans OneDrive

## 3_A — Créer manuellement les trois fichiers — 35 min

### Objectif pédagogique

Associer une sortie dynamique à un fichier précis et vérifier les contenus, pas seulement les noms.

### Prérequis

2_A validé avec la charte correcte et les variantes invalides. Flux Copilot désactivé. Les trois Compose et SECTIONS_OK existent dans le flux manuel.

### Scénario métier

Le PMO souhaite consulter séparément la charte, les règles de priorisation et les contrôles du pilote. Chaque fichier reproduit uniquement sa section source.

### Étapes détaillées numérotées

1. Dans OneDrive web, ouvrir `TP_NOVA/Manuel` et créer `Sections`. Vérifier que ce dossier est vide.
2. Ouvrir `NOVA_Charte_Manuel`. Dans la branche Vrai de `SECTIONS_OK`, ajouter OneDrive for Business `Créer un fichier` / `Create file`. La création n’est autorisée que si la structure et les titres sont corrects.
3. Nommer cette action `CREER_D01`. Dans `Chemin du dossier`, choisir `/TP_NOVA/Manuel/Sections` avec le sélecteur. Dans `Nom du fichier`, saisir `D01_Charte_Contexte.txt`. Dans `Contenu du fichier`, sélectionner la sortie dynamique `Outputs` de `D01_TEXTE`.
4. Mini-test 1 : nettoyer l’archive de réception, enregistrer, activer le manuel et envoyer une charte valide. Ouvrir le seul fichier D01 créé. Vérifier qu’il contient D01, pas les trois sections. Corriger avant d’ajouter les deux autres actions.
5. Après `CREER_D01`, dans la même branche Vrai, ajouter une seconde action `Create file`, nommée `CREER_D02`. Choisir le même dossier, saisir `D02_Regles_MoSCoW.txt`, sélectionner uniquement la sortie de `D02_TEXTE`.
6. Ajouter ensuite `CREER_D03` : même dossier, nom `D03_Controles_Echelles.txt`, sortie de `D03_TEXTE`.
7. Avant d’enregistrer, faire une lecture croisée : nom D01 → source D01, nom D02 → source D02, nom D03 → source D03. Si une carte a été dupliquée, vérifier particulièrement le contenu, qui peut être resté celui de D01.
8. Nettoyer les fichiers créés par l’essai précédent dans Reception et Sections. Enregistrer et envoyer un nouvel email valide. Attendre la fin de l’exécution puis ouvrir chacun des trois fichiers.
9. Tester aussi un fichier mal structuré : l’archive de réception peut être créée, mais aucun fichier de section ne doit apparaître. Conserver les preuves, attendre la fin du run puis désactiver le manuel avant 3_B.

### Actions Power Automate à utiliser

Trois actions `OneDrive for Business — Créer un fichier / Create file`, en séquence, dans Vrai de SECTIONS_OK. Chaque action reçoit du texte comme contenu ; aucune conversion Word/PDF n’est demandée. [web:9]

### Configuration exacte de chaque action

| Action | Dossier | Nom exact du fichier | Source dynamique | Contenu attendu |
|---|---|---|---|---|
| CREER_D01 | `/TP_NOVA/Manuel/Sections` | `D01_Charte_Contexte.txt` | Outputs de D01_TEXTE | Titre D01 et charte/contexte uniquement |
| CREER_D02 | `/TP_NOVA/Manuel/Sections` | `D02_Regles_MoSCoW.txt` | Outputs de D02_TEXTE | Titre D02 et règles MoSCoW uniquement |
| CREER_D03 | `/TP_NOVA/Manuel/Sections` | `D03_Controles_Echelles.txt` | Outputs de D03_TEXTE | Titre D03 et contrôles/échelles uniquement |

Ne pas utiliser TEXTE_CHARTE dans ces trois actions : cette sortie contient tout le dossier. Ne pas utiliser `SECTIONS_TABLEAU` : c’est un tableau, pas une section. Ne pas taper `D02_TEXTE` dans File Content : sélectionner son jeton de sortie.

Gestion des collisions : nettoyage manuel du dossier de TP entre deux essais, sans ajouter d’expression de date, de branche de mise à jour ou de suppression automatique. Aucun paramètre « remplacer » n’est supposé présent dans Create file. [web:9]

### Résultat attendu

Exactement trois fichiers dans `Manuel/Sections`, avec les noms imposés, les titres et leurs paragraphes respectifs. Les marqueurs techniques et le préambule ne sont pas exportés.

### Procédure de test

1. Essai progressif : une seule action D01, fichier vérifié et lisible.
2. Essai complet : nettoyer Reception et Sections puis envoyer T01 ; les trois actions de création réussissent.
3. Ouvrir les trois fichiers, contrôler noms, titre initial et contenu avec les références fournies.
4. Vérifier D01 : budget et contexte ; D02 : catégories MoSCoW ; D03 : contrôles et criticité. Aucune confusion de section.
5. Supprimer les trois sorties de test puis envoyer une charte sans marqueur. Attendu : aucun fichier dans Sections, diagnostic dans l’historique.
6. Revenir à la charte correcte et effectuer le dernier test de référence.

### Erreurs fréquentes et solutions

- Trois noms différents mais même contenu : vérifier File Content, pas uniquement File Name. Sélectionner les sorties D01, D02 et D03 distinctes.
- Fichier contenant le mot « Outputs » : un texte a été tapé au lieu d’un jeton. Effacer et insérer la donnée dynamique.
- Dossier incorrect : choisir le dossier du compte OneDrive de la connexion, pas un dossier local synchronisé d’un autre utilisateur.
- Nom existant ou résultat ambigu après plusieurs essais : appliquer le nettoyage manuel avant nouvel essai ; ne pas modifier les noms imposés.
- Un ou deux fichiers seulement : ouvrir la première action en échec ; ne pas relancer sans nettoyer les créations partielles. La suite n’est pas transactionnelle et ne supprime pas automatiquement les fichiers déjà créés.
- Fichiers créés malgré un format invalide : les cartes ne sont pas dans Vrai de SECTIONS_OK.

### Critères de validation

- [ ] Le test D01 seul a réussi avant l’ajout de D02 et D03.
- [ ] Trois actions distinctes existent, dans la branche validée.
- [ ] Trois noms exacts, bon dossier, trois sources distinctes.
- [ ] Les trois fichiers s’ouvrent et correspondent aux références.
- [ ] Le test invalide ne produit aucune section.
- [ ] La procédure de nettoyage et les limites de relance sont comprises.


## 3_B — Construire avec Copilot et vérifier son travail — 30 min

### Objectif pédagogique

Faire réaliser une modification limitée par Copilot, contrôler les trois associations puis comparer les deux démarches sur des preuves.

### Prérequis

3_A validé pour connaître le résultat ; 2_B validé pour disposer des sorties du flux Copilot. Flux manuel désactivé. Créer `TP_NOVA/Copilot/Sections` dans OneDrive web, puis vérifier qu’il est vide.

### Scénario métier

Le PMO veut obtenir le même archivage en utilisant Copilot pour la construction, tout en conservant la maîtrise du résultat.

### Étapes détaillées numérotées

1. Ouvrir `NOVA_Charte_Copilot` en modification dans le nouveau concepteur. Vérifier la présence des trois blocs validés et de SECTIONS_OK.
2. Dans le volet Copilot, coller le prompt ci-dessous. Ne pas demander une nouvelle solution complète.
3. Vérifier qu’exactement trois nouvelles cartes de création ont été ajoutées. L’action d’archivage de la charte existe déjà : il y aura donc quatre actions Create file dans le flux complet, dont trois pour les sections.
4. Ouvrir CREER_D01, CREER_D02 et CREER_D03. Contrôler dossier, nom et source dynamique. Les noms des cartes ne prouvent pas que les contenus sont différents.
5. Compléter manuellement une carte manquante avec la procédure 3_A, ou réparer un jeton incorrect. Si Copilot a uniquement fourni du texte, le noter et ajouter les trois cartes manuellement, sans prétendre qu’elles ont été générées.
6. Vérifier l’emplacement dans Vrai de SECTIONS_OK, enregistrer, nettoyer les anciens fichiers du dossier de réception et du dossier Sections, puis activer uniquement le flux Copilot.
7. Envoyer un email valide, examiner l’historique, ouvrir les trois fichiers puis les comparer aux fichiers manuels et aux références.
8. Après nettoyage, tester un mauvais nom de pièce jointe et un document sans marqueur. Aucun fichier de section ne doit être créé. Rejouer un dernier cas valide.
9. Remplir le tableau comparatif final : temps, lisibilité, actions inutiles, erreurs et corrections. Attendre la fin des exécutions et désactiver le flux selon les règles de fin de formation.

### Actions Power Automate à utiliser

Exactement trois ajouts `OneDrive for Business — Create file`. Aucun autre connecteur ni autre traitement.

### Configuration exacte de chaque action

| Action | Folder Path | File Name | File Content |
|---|---|---|---|
| CREER_D01 | `/TP_NOVA/Copilot/Sections` | `D01_Charte_Contexte.txt` | Sortie dynamique D01_TEXTE |
| CREER_D02 | `/TP_NOVA/Copilot/Sections` | `D02_Regles_MoSCoW.txt` | Sortie dynamique D02_TEXTE |
| CREER_D03 | `/TP_NOVA/Copilot/Sections` | `D03_Controles_Echelles.txt` | Sortie dynamique D03_TEXTE |

Conserver ARCHIVER_CHARTE dans `/TP_NOVA/Copilot/Reception`. Ne pas placer la charte entière dans le dossier Sections.

### Prompt Copilot

```text
OBJECTIF
Compléter le flux cloud existant NOVA_Charte_Copilot pour enregistrer séparément les trois blocs de texte déjà extraits. Réutiliser les sorties existantes ; ne pas refaire le déclencheur, l’archivage ou le découpage.

DÉCLENCHEUR ET CONTEXTE À CONSERVER
Office 365 Outlook When a new email arrives (V3), Boîte de réception, filtre d’objet charte de projet, messages avec pièces jointes seulement. La pièce jointe Charte_Projet_NOVA.txt est téléchargée par PJ_CONTENU puis archivée par ARCHIVER_CHARTE dans /TP_NOVA/Copilot/Reception.
Le flux contient déjà TEXTE_CHARTE, SECTIONS_TABLEAU, FORMAT_4_BLOCS, puis dans Vrai les trois Compose D01_TEXTE, D02_TEXTE et D03_TEXTE et la Condition SECTIONS_OK. Celle-ci vérifie le titre et un contenu au-delà du titre pour chaque bloc.

ACTIONS
Ajouter exactement trois actions OneDrive for Business Create file, en séquence, uniquement dans la branche Vrai de SECTIONS_OK :
1. CREER_D01 : Folder Path = /TP_NOVA/Copilot/Sections ; File Name = D01_Charte_Contexte.txt ; File Content = sortie de D01_TEXTE.
2. CREER_D02 : Folder Path = /TP_NOVA/Copilot/Sections ; File Name = D02_Regles_MoSCoW.txt ; File Content = sortie de D02_TEXTE.
3. CREER_D03 : Folder Path = /TP_NOVA/Copilot/Sections ; File Name = D03_Controles_Echelles.txt ; File Content = sortie de D03_TEXTE.
Le dossier a déjà été créé dans mon OneDrive. Je sélectionnerai le dossier réel et vérifierai la connexion.

CONDITIONS
Réutiliser les contrôles déjà validés. Si l’une des validations est fausse, conserver le diagnostic existant sans créer de fichier de section.
Ne pas utiliser TEXTE_CHARTE dans ces trois contenus, car il contient le document entier. Ne pas donner la sortie de D01_TEXTE aux trois fichiers. Utiliser les trois jetons de sortie correspondants, pas des noms tapés en texte littéral.
Ne pas modifier les noms imposés, ajouter de date, réécrire les paragraphes, exporter le préambule ou les marqueurs techniques.
Pour les noms déjà présents, le participant nettoie manuellement les dossiers du TP avant chaque essai. Ne pas inventer une option d’écrasement dans Create file et ne pas ajouter de gestion de doublons.
Aucune variable, boucle supplémentaire, approbation, agent, notification ou autre service.

RÉSULTAT ATTENDU
Trois fichiers TXT dans /TP_NOVA/Copilot/Sections : le premier contient uniquement D01 — Charte et contexte, le deuxième D02 — Règles MoSCoW, le troisième D03 — Contrôles et échelles, avec leurs titres et paragraphes.
Si tu ne peux pas modifier ces cartes ou affecter une sortie dans ce concepteur, indiquer précisément la configuration à compléter manuellement, sans reconstruire le flux ni prétendre l’avoir testé.
```

### Résultat attendu

La solution construite avec Copilot, puis vérifiée et corrigée, produit les mêmes trois fichiers que la version manuelle dans son dossier séparé. La contribution manuelle résiduelle est explicitement documentée.

### Procédure de test

1. Charte correcte : les trois actions de section réussissent ; les fichiers portent les noms exacts et s’ouvrent.
2. Comparer chaque fichier à sa référence et à la sortie manuelle : pas de manque, de doublon de section ou de mélange.
3. Mauvais nom : aucun téléchargement ni création de section pour cette pièce jointe.
4. Sans marqueur : la charte peut être archivée, mais les trois cartes de section sont ignorées.
5. Vérifier les chemins réels dans les entrées des cartes et dans OneDrive, pas seulement les chemins annoncés par Copilot.
6. Consigner les corrections et le statut réel : généré et testé, généré puis complété manuellement, ou non exécuté avec Copilot.

### Erreurs fréquentes et solutions

- Quatre cartes de création « au lieu de trois » : distinguer l’archive source déjà présente des trois nouvelles cartes de section ; ne pas supprimer l’archive.
- Les fichiers pointent vers Manuel : corriger les trois sélecteurs vers Copilot/Sections.
- Trois fois D01 : remplacer les contenus de D02 et D03 par leurs sorties respectives.
- Fichiers nommés automatiquement avec date : restaurer les noms exacts ; le TP utilise un nettoyage manuel.
- Action créée hors de la condition : déplacer dans Vrai de SECTIONS_OK.
- Coche verte mais mauvais contenu : le succès technique n’est pas le succès documentaire ; ouvrir et comparer les fichiers.

### Critères de validation

- [ ] Trois nouvelles actions de création sont présentes ; quatre au total en comptant l’archive source.
- [ ] Noms exacts et sorties de texte correspondantes.
- [ ] Dossier Copilot/Sections réel et correct.
- [ ] Exécution valide sans erreur et contenus vérifiés.
- [ ] Cas négatifs sans section créée.
- [ ] Comparaison simplicité/lisibilité/erreurs/corrections terminée.


---

# Données de test et corrigé observable

## Contrat des données de test

Le fichier TXT de référence contient l’intégralité des paragraphes extraits du dossier NOVA joint, dans leur ordre. Seuls les marqueurs techniques `[[SECTION]]` et les séparations de paragraphes sont ajoutés ; la mise en page Word n’est pas conservée. Les titres et le fond métier restent inchangés. Les blocs exportés incluent leur titre de section, mais excluent les marqueurs et le préambule. [file:1]

Structure contrôlée :

```text
Dossier pédagogique — Portail public NOVA
Mentions de données fictives et de version

[[SECTION]]
D01 — Charte et contexte
[paragraphes D01]

[[SECTION]]
D02 — Règles MoSCoW
[paragraphes D02]

[[SECTION]]
D03 — Contrôles et échelles
[paragraphes D03, jusqu’à la fin du fichier]
```

Ce schéma n’est pas le fichier à envoyer : utiliser le TXT complet fourni dans le pack, ou le contenu intégral ci-dessous.

## Charte de test complète, prête à enregistrer en UTF-8

Nom imposé : `Charte_Projet_NOVA.txt`. Le fichier fourni évite d’avoir à recopier ce bloc.

```text
Dossier pédagogique — Portail public NOVA

Données fictives — VersionV1, état13octobre2026. Pas une politique réelle, contrat ou avis juridique.

[[SECTION]]
D01 — Charte et contexte

D01 — Charte fictive du projet PORTAL-2026-042 — Version V1 — État 13/10/2026

Client fictif : Collectivité NOVA. Projet : Modernisation d’un portail de services publics.

Sponsor : Directrice de la transformation. PM : Amine Benali. BA : Claire Roux. Tous les rôles/personnes sont fictifs.

Pilote cible : 15/12/2026, date à préserver comme cible, pas GO automatique.

Budget projet approuvé dans le scénario : 320000 EUR. Une demande nouvelle n’a aucun budget additionnel approuvé sans décision explicite.

Pilote : rendez-vous, demande d’attestation et suivi d’état de dossier ; 50 usagers pilotes, 25 agents internes ; volume cible 20000 dossiers/mois non encore testé en charge.

Deux développeurs, un référent technique et deux experts métier à disponibilité partielle ; capacité exacte par exigence à confirmer.

Une API fournisseur est requise ; accès de test non encore confirmé. Les exigences et critères doivent être validés par le métier ; sécurité/données par les fonctions habilitées.

Hors pilote sans changement approuvé : WhatsApp, décision administrative autonome, collecte de données de santé, hausse budgétaire ou promesse de date non arbitrée.

Toute communication externe, budget, périmètre et engagement de date restent soumis à validation humaine.

Règle de traçabilité documentaire : conserver l’ID de demande, version de règles utilisée et statut de validation dans chaque livrable. Le terme de contrôle interne du cas est « Registre des réserves du pilote ».

[[SECTION]]
D02 — Règles MoSCoW

D02 — Règles MoSCoW pédagogiques — V1

Must have : indispensable au but approuvé ou à une condition de passage documentée, sans alternative acceptable pour le pilote.

Should have : valeur importante, avec contournement acceptable à court terme.

Could have : confort/valeur complémentaire, sans blocage du pilote.

Won’t have for now : explicitement exclu ou reporté du pilote, sans supprimer définitivement le besoin.

Le classement de l’IA est une proposition, pas une priorité définitivement approuvée.

Avant de trancher : but, périmètre, conséquence de non-réalisation, alternative, capacité, dépendances et source de validation.

Urgent n’est pas synonyme de Must ; ne pas tout classer Must si moyens inconnus. Une obligation alléguée est à qualifier avec les experts.

Si critères insuffisants, écrire « À arbitrer », proposer une catégorie conditionnelle ou demander les critères manquants.

Les noms des catégories doivent rester ceux ci-dessus ; pas de nouvelle méthode WSJF inventée dans cet exercice.

[[SECTION]]
D03 — Contrôles et échelles

D03 — Contrôles du pilote et échelles de risques fictives — V1

Le client du cas impose : chaque usager ne consulte que ses propres dossiers ; absence de preuve d’habilitations bloque l’ouverture concernée. Les besoins d’accessibilité et de protection des données doivent être validés par les fonctions compétentes. Aucune conformité RGPD ni sanction n’est déduite automatiquement par un agent.

Notification proposée : annoncer un changement d’état puis renvoyer au portail authentifié ; ne pas joindre de données sensibles au message.

Échelle probabilité avant la cible 15/12 : 1 très faible,2 faible,3 possible,4 probable,5 presque certaine. Il s’agit d’estimations expertes à justifier, pas de fréquences statistiques.

Impact : 1 mineur (≤1% coût/≤2jours ouvrés),2 limité (>1–3%/3–5j),3 significatif (>3–7%/6–10j),4 majeur (>7–15%/11–20j),5 sévère (>15%/>20j ou divulgation de données sensibles/condition de passage impérative violée). Retenir la dimension crédible la plus grave.

Criticité=P×I : 1–4 faible,5–9 modérée,10–14 élevée,15–19 très élevée,20–25 critique. Score ne remplace pas urgence ni gate.

Risque=futur incertain ; problème=réalisé ; hypothèse=condition à confirmer.

Formulation : en raison de Cause, Événement pourrait survenir, entraînant Conséquence.

Owner proposé n’est pas une personne engagée : confirmer mandat et disponibilité.

Prévention avant événement ; correction sur défaut ; contingence activée sur déclencheur. Une cible résiduelle n’est pas une maîtrise prouvée.
```

## Matrice de tests

Pour chaque essai : un seul flux actif ; attendre la fin du run précédent ; nettoyer les sorties concernées ; envoyer un nouvel email. Enregistrer dans la grille le nom du flux, la date, l’objet, le résultat observé et l’identifiant d’exécution lorsqu’il existe.

| Test | Objet | Pièces jointes | Attendu partie 1 | Attendu parties 2 et 3 |
|---|---|---|---|---|
| T01 | `charte de projet NOVA T01` | Charte exacte, correcte | Une archive | Trois blocs corrects puis trois fichiers en partie 3 |
| T02 | `réunion NOVA T02` | Charte exacte | Rien, normalement pas de run | Aucun traitement |
| T03 | `charte de projet NOVA T03` | Aucune | Rien, normalement pas de run | Aucun traitement |
| T04 | `charte de projet NOVA T04` | `Note_Reunion.txt` uniquement | Condition de nom fausse | Aucun traitement |
| T05 | `charte de projet NOVA T05` | Charte exacte + Note_Reunion.txt | Charte seulement | Une seule série de trois sections |
| T06 | `charte de projet NOVA T06` | Charte sans marqueur, renommée au nom imposé | Archive source présente | FORMAT_4_BLOCS fausse, pas de fichiers de section |
| T07 | `charte de projet NOVA T07` | D02 vide, renommée au nom imposé | Archive source présente | FORMAT_4_BLOCS vraie ; SECTIONS_OK fausse ; pas de fichiers de section |
| T08 | `charte de projet NOVA T08` | D02 et D03 inversés, renommée au nom imposé | Archive source présente | Format à quatre éléments mais SECTIONS_OK fausse |

Les variantes invalides sont stockées dans des sous-dossiers du pack avec le même nom de base `Charte_Projet_NOVA.txt`. Ne pas joindre le ZIP : extraire le fichier du bon sous-dossier et joindre le TXT. Ne pas modifier le filtre du flux pour accepter une variante.

Les trois fichiers du dossier de référence du pack contiennent exactement les sorties attendues après `trim`. Une différence de fin de ligne LF/CRLF ne constitue pas à elle seule une erreur de contenu ; les paragraphes, l’ordre, les titres et les réserves doivent être identiques.

## Résultats métier à préserver

| Bloc | Repères de contrôle, sans remplacer la comparaison intégrale |
|---|---|
| D01 | PORTAL-2026-042, V1, 13/10/2026, 15/12/2026 cible et non GO ; budget 320000 EUR ; 50 usagers, 25 agents ; capacité et accès de test API à confirmer ; traçabilité et validation humaine |
| D02 | Must have, Should have, Could have, Won’t have for now ; classement IA proposé, pas approuvé ; « À arbitrer » ; ne pas inventer une méthode WSJF |
| D03 | Habilitations, données, notification sans données sensibles ; probabilités 1 à 5 ; impacts 1 à 5 ; criticité P×I et seuils ; risque/problème/hypothèse ; owner à confirmer ; maîtrise résiduelle non prouvée |

Ces repères proviennent du dossier fourni. Le TP ne les valide pas juridiquement ou opérationnellement. [file:1]

# Reprise après blocage : ne pas perdre la progression

## Blocage avant l’archivage

Le formateur vérifie la connexion, le dossier Outlook, les ID et les octets. Une charte déjà prête évite les problèmes de rédaction, mais ne remplace pas la validation du connecteur. Si les connecteurs sont indisponibles, marquer 1_A et 1_B non validés localement ; ne pas prétendre que le flux de bout en bout fonctionne.

## Blocage de messagerie, mais poursuite possible sur le traitement de texte

Le formateur peut faire créer un flux temporaire `NOVA_Secours_Texte`, distinct des deux flux évalués :

1. `Créer` → `Flux cloud instantané` → `Déclencher manuellement un flux` / `Manually trigger a flow`.
2. Ajouter Compose nommé `TEXTE_CHARTE` ; coller en entrée le contenu intégral du TXT de référence, comme texte littéral. Ne pas appliquer base64ToString à ce texte déjà lisible.
3. Ajouter SECTIONS_TABLEAU et les contrôles de 2_A, puis tester. Ici, il n’y a pas de boucle de pièces jointes : les actions de texte se placent après TEXTE_CHARTE au niveau principal.
4. Si les droits OneDrive sont opérationnels, ajouter les trois créations de 3_A dans un dossier distinct créé manuellement `/TP_NOVA/Secours/Sections`.
5. Noter « extraction/création testées sur source injectée manuellement ; réception Outlook non validée ». Ne pas présenter ce flux comme équivalent à l’ensemble du parcours.

Cette reprise permet d’étudier les notions suivantes sur une donnée contrôlée. Pour valider le parcours final, revenir au flux principal, réparer le point bloquant et refaire tous les tests de bout en bout.

## Blocage de Copilot uniquement

Poursuivre A, puis analyser une proposition réelle préparée par le formateur. Compléter B manuellement si cela permet l’apprentissage, mais distinguer la construction manuelle de la génération effectivement réalisée. Les trois prompts restent directement utilisables dès que le volet est accessible.

# Formats de documents : ce qui fonctionne, ce qui exige une étape supplémentaire

| Source / méthode | Ce qui fonctionne directement | Étape supplémentaire / prérequis | Place dans le TP |
|---|---|---|---|
| TXT UTF-8 reçu par Outlook | Get Attachment (V2) donne Content Bytes ; base64ToString fournit le texte | Fichier réellement texte, encodage UTF-8, décodage une seule fois | Parcours principal |
| TXT relu depuis OneDrive | Get file content récupère le contenu du fichier archivé via son ID | Contrôler la représentation réelle avant conversion ; ne pas décoder deux fois | Variante formateur |
| DOCX / Word | L’archivage binaire est possible | Pour ce TP : ouvrir le document dans Word et exporter/copier le texte en UTF-8, contrôler les paragraphes puis ajouter les marqueurs | Préparation manuelle recommandée |
| PDF texte ou scanné | L’archivage binaire est possible | Pour ce TP : extraction/copie manuelle puis vérification ; un scan nécessite un OCR | Préparation manuelle recommandée |
| PDF avec AI Builder | Action documentée Recognize text in an image or a PDF document | Licences Premium appropriées, capacité/crédits AI Builder ou Copilot selon les droits du tenant, action disponible, gouvernance et contrôle qualité de l’OCR | Hors parcours débutant |
| Word via Power Automate Desktop | Une action Read from Word document existe dans les flux de bureau | Environnement Windows et application Word, configuration desktop et droits/licences d’exécution adaptés ; intégration cloud à concevoir séparément | Hors périmètre |

OneDrive `Get file content` est une action de récupération binaire ; la documentation ne promet pas une extraction sémantique du DOCX ou du PDF. Changer l’extension en .txt ne convertit pas ces formats. [web:9]

AI Builder fournit une reconnaissance de texte pour les images et PDF ; le traitement exige des droits et de la capacité réellement disponibles et transforme le besoin de licence du flux. Ne pas activer cette extension en cours de TP sans préparation. [web:40][web:38]

Le connecteur cloud Word Online (Business) documente notamment le remplissage d’un modèle et la conversion Word vers PDF, pas un lecteur générique de tous les paragraphes d’un DOCX. Ne pas inventer « Extraire le texte Word » dans ce connecteur. L’action `Read from Word document` citée plus haut appartient aux flux de bureau, pas au connecteur Word cloud. [web:39][web:41]

## Variante formateur : relire réellement l’archive OneDrive

Cette variante n’est pas nécessaire à la réussite : elle remplace la provenance de TEXTE_CHARTE, sans changer le découpage.

1. Après ARCHIVER_CHARTE, ajouter OneDrive for Business `Obtenir le contenu du fichier` / `Get file content`, nommer `LIRE_CHARTE_OD`.
2. Dans `Fichier`, sélectionner le jeton `Id` de ARCHIVER_CHARTE, pas le nom ni un chemin local. L’action récupère le fichier réellement créé. [web:9]
3. Tester cette seule lecture avec le TXT puis inspecter sa sortie réelle. Si le concepteur fournit déjà le texte, l’utiliser directement dans TEXTE_CHARTE. S’il représente le binaire par un objet avec `$content`, le formateur peut utiliser `base64ToString(body('LIRE_CHARTE_OD')?['$content'])`, seulement après avoir confirmé cette propriété dans la sortie. Une chaîne déjà lisible ne doit pas être décodée à nouveau. [web:22]
4. Vérifier que TEXTE_CHARTE contient bien tout le texte et ses accents, puis seulement reconnecter le découpage.

Ne pas imposer cette variante aux débutants : elle ajoute un appel OneDrive et une vérification de représentation sans améliorer l’objectif d’apprentissage principal.

# Grille de validation finale

Un critère est « validé » seulement sur preuve observée. Les statuts autorisés sont : validé ; à corriger ; non exécuté ; réalisé sur secours. Un succès sur secours ne vaut pas succès de bout en bout.

| Réf. | Critère | Preuve attendue | Manuel | Copilot |
|---|---|---|---|---|
| V01 | Bon compte et bon dossier source | Connexions et paramètres du déclencheur | | |
| V02 | Objet et pièces jointes filtrés | T01, T02, T03 | | |
| V03 | Nom exact contrôlé | T04, T05 | | |
| V04 | Archive réelle et lisible | Fichier source ouvert dans OneDrive | | |
| V05 | Texte correctement décodé | Sortie TEXTE_CHARTE, accents lisibles | | |
| V06 | Tableau et garde avant les index | Quatre éléments puis Vrai FORMAT_4_BLOCS | | |
| V07 | D01 isolé | Comparaison à la référence | | |
| V08 | D02 isolé | Comparaison à la référence | | |
| V09 | D03 isolé | Comparaison à la référence | | |
| V10 | Absence/ordre/contenu insuffisant refusés | T06, T07, T08, sans section finale | | |
| V11 | Noms et dossier de sortie corrects | Entrées des trois Create file | | |
| V12 | Trois sources de texte différentes | Jetons D01, D02, D03 | | |
| V13 | Trois fichiers corrects | Ouverture et comparaison intégrale | | |
| V14 | Flux inutilisé désactivé | Un seul flux actif pendant les essais | | |
| V15 | Aucune fonctionnalité superflue | Schéma final et liste des connecteurs | | |
| V16 | Contribution Copilot qualifiée | Actions générées, corrigées et ajoutées à la main | Sans objet | |
| V17 | Explication par le participant | Démonstration de la provenance d’un fichier | | |

Conclusion du formateur :

- Réception/archivage : …
- Décodage et identification : …
- Création des fichiers : …
- Construction Copilot réellement exécutée : …
- Incidents restant à résoudre et limites : …

# Tableau comparatif — Manuel et Copilot

Remplir avec les résultats de la session, sans supposer que Copilot est systématiquement plus rapide.

| Dimension | Construction manuelle | Construction avec Copilot | Observation réelle à noter |
|---|---|---|---|
| Compréhension | Chaque action est expliquée avant configuration | Le prompt décrit un traitement déjà compris | Le participant peut-il expliquer les deux ? |
| Simplicité | Une boucle et les contrôles prévus | Peut proposer des cartes supplémentaires | Cartes inutiles retirées : … |
| Lisibilité | Noms d’actions choisis avant les expressions | Noms parfois différents ou génériques | Renommages/corrections : … |
| Objet et nom du fichier | Filtres configurés explicitement | Paramètres parfois incomplets | Écarts trouvés : … |
| Provenance du contenu | Content Bytes puis blocs identifiés | Risque de mauvais jeton ou de même sortie réutilisée | Affectations corrigées : … |
| Expressions | Courtes et expliquées une par une | Peuvent contenir de mauvais noms ou index | Formules corrigées : … |
| Temps | Temps de construction + test | Temps de prompt + génération + contrôle + correction + test | Manuel … min ; Copilot … min |
| Qualité finale | Prouvée par les tests | Prouvée par les mêmes tests, pas par la réponse de Copilot | Tests réussis : … |
| Limites de disponibilité | Dépend des connecteurs et droits | Ajoute la disponibilité du volet et des capacités d’édition | Ce qui n’a pas pu être exécuté : … |

Fiche de correction à reproduire si nécessaire :

| Exercice | Erreur observée | Cause identifiée | Correction | Nouveau test | Résultat |
|---|---|---|---|---|---|
| | | | | | |

# Vérification de cohérence technique avant animation

- Les filtres d’objet et de présence de pièces jointes sont portés par le déclencheur ; le nom est filtré dans la seule boucle.
- Le déclencheur retourne les métadonnées même avec Include Attachments = Non ; Get Attachment (V2) récupère le contenu réel. [web:10]
- L’action OneDrive reçoit un contenu, jamais un identifiant comme contenu. [web:9]
- Le parcours texte exploite un véritable TXT UTF-8. Le décodage base64 n’est jamais présenté comme une extraction Word/PDF. [web:22]
- Trois marqueurs donnent quatre morceaux : le préambule en index 0 puis les trois sections en index 1, 2 et 3.
- Le contrôle de longueur est exécuté avant les trois accès par index ; le contrôle des titres est exécuté après la séparation.
- Les trois nouvelles créations se trouvent exclusivement dans Vrai de SECTIONS_OK.
- Chaque fichier reçoit sa propre sortie, titre inclus ; aucun marqueur technique ne doit apparaître dans les sorties finales.
- Les flux manuel et Copilot utilisent des dossiers distincts et ne sont pas actifs simultanément pendant les essais.
- La politique de collision est une règle de laboratoire explicite, pas une option de connecteur inventée.
- Copilot assiste la conception, pas l’exécution. L’absence d’une carte générée doit être constatée et complétée manuellement, non masquée.
- Les contrôles de format n’attestent pas la vérité métier du dossier. Les contenus sources et les réserves restent inchangés.
- Les trois créations sont séquentielles mais non transactionnelles : un échec intermédiaire peut laisser une sortie partielle.
- Aucun test de tenant n’est revendiqué ; les statuts de validation sont remplis par le formateur après exécution réelle.

# Synthèse pédagogique

À la fin du parcours, le participant sait expliquer d’où provient chaque valeur utilisée par le flux : l’objet vient du mail, le nom et l’ID viennent de la pièce jointe courante, les octets viennent de Get Attachment (V2), le texte vient du décodage du TXT, les blocs viennent du découpage contrôlé, et les fichiers finaux reçoivent chacun une sortie précise.

La méthode à retenir : comprendre → construire manuellement → tester une petite étape → décrire à Copilot → inspecter la proposition → corriger → rejouer les mêmes tests.

L’automatisation ne produit aucune nouvelle décision de projet. Copilot accélère éventuellement la construction ; seul un test observé permet d’affirmer que le résultat est correct.
