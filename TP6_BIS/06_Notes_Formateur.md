# Notes formateur — NOVA

## Avant l’animation

Lire les prérequis du cahier. Tester réellement Outlook, OneDrive et Copilot avec un compte participant. Contrôler les politiques de données, le droit d’utiliser les connecteurs, le nouveau concepteur et la prise en charge du prompt français. Préparer un exemple de génération réelle si Copilot manque dans certains comptes.

## Les points à ne pas escamoter

- Premier succès en 1_A : créer une archive avant d’ajouter les filtres d’objet et de nom.
- Outlook Include Attachments = Non conserve les métadonnées ; le contenu est récupéré par Get Attachment (V2).
- Content Bytes de PJ_CONTENU est la source binaire ; la même source est réutilisée en partie 2, après archivage. Il ne s’agit pas d’une relecture OneDrive.
- Le TXT UTF-8 évite un extracteur Word/PDF. Changer une extension ne convertit pas un document.
- Compose peut s’appeler Message en français, dans Opérations sur les données.
- Split donne quatre morceaux et non trois : 0 préambule, 1 D01, 2 D02, 3 D03.
- Les accès aux index sont dans Vrai de FORMAT_4_BLOCS. Les six contrôles de SECTIONS_OK précèdent la création.
- Vrai de SECTIONS_OK est vide en fin de partie 2 ; il reçoit trois Create file seulement en partie 3.
- Il y a quatre Create file au total à la fin : une archive et trois sections.
- Trois noms différents ne prouvent pas trois contenus différents : regarder les jetons.

## Corrigé de la structure

Déclencheur V3 : Subject Filter charte de projet, Only with Attachments Oui, Include Attachments Non.
POUR_CHAQUE_PJ sur Attachments.
NOM_CHARTE_OK sur Name courant égal au nom exact.
Dans Vrai : PJ_CONTENU, ARCHIVER_CHARTE, TEXTE_CHARTE, SECTIONS_TABLEAU, FORMAT_4_BLOCS.
Dans Vrai de FORMAT_4_BLOCS : D01_TEXTE, D02_TEXTE, D03_TEXTE, SECTIONS_OK.
Dans Vrai de SECTIONS_OK : CREER_D01, CREER_D02, CREER_D03.
Dans les contrôles Faux du format et des sections : diagnostics ; jamais de création de section.

## Références textuelles de cette version

Les trois fichiers de 03_Resultats_Attendus proviennent du dossier NOVA, sans reformulation, après suppression des marqueurs et trim des bords. Le contenu doit être comparé intégralement, pas uniquement à quelques nombres.

## Limites à dire explicitement

Le support a été contrôlé sur la documentation Microsoft ; pas d’exécution dans votre tenant lors de sa rédaction. Une génération Copilot peut échouer ou nécessiter des ajouts manuels. Un flux de secours à texte injecté ne valide pas la réception Outlook. Les contrôles vérifient la structure documentaire, pas la conformité juridique ou la vérité métier.

Les écritures ne sont pas transactionnelles. Une relance peut laisser des fichiers partiels ou entrer en collision avec des noms présents ; nettoyer seulement les dossiers de laboratoire, après inspection et fin du run précédent. Aucun mécanisme de déduplication n’est implémenté.
