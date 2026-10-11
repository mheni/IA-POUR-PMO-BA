# Corrigé formateur V2 — Site SharePoint, documents projet et flows Power Automate A/B

Cas PRJ-2026-017 — 11 octobre 2026 — Données fictives

## 1. Ce qui change

La version V2 ajoute une préparation réelle du site et de sa bibliothèque. Le site n’est plus un prérequis implicite. Le flow lit les données structurées, inclut les références documentaires et archive le CR approuvé en HTML. Il n’interprète pas automatiquement le contenu des fichiers.

Durée indicative étendue : 8 h 30, sur deux séances ; étapes S6 Project et D1/D2 binaires facultatives en complément. Site/documents/données constituent un coût commun pour A et B ; ne pas les compter seulement côté sans Copilot pour amplifier le gain.

Aucune création de site/flow, publication ou transmission n’a été exécutée dans un tenant lors de la génération. Les pièces Word/Excel sont de vrais fichiers pédagogiques, sans signature réelle. Aucun faux .mpp ni package d’import Power Automate n’est fourni.

## 2. Site et permissions attendus

Site d’équipe privé TP-PMO-Automatisation ou nom autorisé avec suffixe ; bibliothèque Documents réellement créée par le tenant, nom et chemin internes relevés. Le compte Power Automate doit lire les documents, écrire l’archive et gérer les deux listes de test. L’approbateur et destinataire doivent avoir accès aux liens sans élargissement public.

La création peut produire un groupe Microsoft 365 ; TEAM_TP/CHANNEL_TP ne sont pas supposés automatiquement configurés. Utiliser un canal de formation existant et vérifier les droits des lecteurs sur le site. Les noms/labels/menus varient selon interface et politiques. [Microsoft : site d’équipe](https://support.microsoft.com/fr-fr/office/cr%C3%A9er-un-site-d-%C3%A9quipe-dans-sharepoint-ef10c1e7-15f3-42a3-98aa-b5972711777d).

Arborescence :

```text
SITE_TP privé
  Documents / PRJ-2026-017
    01_Cadrage / Charte_Projet_PRJ_2026_017.docx
    02_Exigences / Cahier_Charges_PRJ_2026_017.docx
    03_Planning / Plan_Projet_PRJ_2026_017.xlsx [ou .mpp véritable]
    04_COPIL / CR_A_...R01.html et CR_B_...R01.html
  PMO_Projets_TP
  PMO_CR_Journal
```

Les options de chargement exigent contribution. Copier un lien ne remplace pas l’autorisation ; choisir existing access lorsque disponible ou une solution conforme sans grant large. [Microsoft : upload](https://support.microsoft.com/en-us/sharepoint/documents-and-library/upload-files-and-folders-to-a-library).

## 3. Données et documents corrigés

### Liste métier — vingt champs

| Colonne | Type | Valeur attendue |
| --- | --- | --- |
| Title | Une ligne de texte | Modernisation du système d’information |
| ProjectRef | Une ligne de texte | PRJ-2026-017 |
| ProjectManager | Une ligne de texte | Alexandra Rey |
| Sponsor | Une ligne de texte | Directeur des systèmes d’information |
| Status | Une ligne de texte | Orange |
| Progress | Nombre (0–100, entier) | 65 |
| BudgetUsed | Nombre (0–100, entier) | 72 |
| NextDeliverable | Une ligne de texte | Livraison du prototype |
| Deadline | Une ligne de texte | 2026-10-23 |
| MainRisk | Plusieurs lignes de texte brut | Retard de livraison lié à une dépendance fournisseur |
| Impact | Une ligne de texte | Élevé |
| ProposedAction | Plusieurs lignes de texte brut | Réunion d’escalade avec le fournisseur |
| ExpectedDecision | Plusieurs lignes de texte brut | Arbitrage sur le renforcement temporaire de l’équipe |
| NextMeeting | Une ligne de texte | Comité de pilotage de la semaine suivante — date précise à confirmer |
| Highlights | Plusieurs lignes de texte brut | Cadrage validé ; développement du prototype en cours ; confirmation fournisseur attendue. |
| DataOwner | Une ligne de texte | PMO de formation |
| DataVersion | Une ligne de texte | V1 |
| CharterUrl | Plusieurs lignes de texte brut | À remplacer par URL réelle copiée S7 |
| RequirementsUrl | Plusieurs lignes de texte brut | À remplacer par URL réelle copiée S7 |
| PlanUrl | Plusieurs lignes de texte brut | À remplacer par URL réelle du .mpp ou .xlsx, S7 |


Deadline stocké en texte ISO pour neutraliser fuseau de site ; converti via formatDateTime. Nombres65/72 pas colonnes pourcentage, pas0,65/0,72. URL multiligne texte brut mais valeur sur une seule ligne, sans commentaire ni retour. L’exemple CSV contient des indications à remplacer, jamais des liens cliquables réellement provisionnés.

La charte reprend le besoin, périmètre, acteurs, statut, risque et arbitrage. Le cahier des charges décrit contrôles de diffusion et critères du TP. Le planning compte quinze lignes, treize activités et deux jalons, durées proposées sans confirmation ressources. Avec début21/09, semaine5jours sans fériés et sans nivellement, le prototype devient théoriquement validable22/10 avant cible23/10. Ce n’est pas une baseline approuvée.

Sans Project : charger .xlsx et utiliser son lien PlanUrl. Avec Project : créer le vrai .mpp selon S6 et le charger. Une bibliothèque stocke ce fichier ; elle ne garantit ni son édition navigateur ni l’accès/licence desktop à tous les lecteurs.

## 4. Architecture et mappings de référence

```text
Trigger manuel ItemId / DateRapport / Revision
  Compose Parcours(A/B), DateRapport, Revision, RunId
  Scope TRAITEMENT
    GET_PROJET (Get item, ID projet)
    BON_PROJET (ProjectRef attendu)
      faux : arrêt
      vrai : DateGeneration, CleRapport, CHERCHE_JOURNAL
        DOUBLON length(value)>0
          vrai : arrêt sans envoi
          faux : RESERVE_JOURNAL (Title unique)
            DateEcheance, CR_Texte avec 3 liens, CR_Echappe, CR_HTML
            APPROBATION, AUTORISE outcome=Approve
              faux : JOURNAL_REJETE puis arrêt
              vrai : JOURNAL_VALIDE
                ARCHIVE_CR (Create file, contenu CR_HTML)
                POST_TEAMS, JOURNAL_TEAMS
                SEND_MAIL, JOURNAL_DIFFUSE
  Scope erreur sur Failed/Timed out
    ERREUR_JOURNAL puis arrêt
```

| Action | Mapping | Contrôle |
| --- | --- | --- |
| GET_PROJET | Site=SITE_TP ; List=PMO_Projets_TP ; Id=ItemId | Source ligne unique |
| CHERCHE_JOURNAL | List=PMO_CR_Journal ; Title eq CleRapport ; TopCount1 | Tableau contrôlé |
| RESERVE_JOURNAL | Title=clé unique ; Stage=Reserve ; référence/path/runid | Avant validation |
| APPROBATION | First to respond ; AssignedTo autorisé ; Details=CR_Texte | Pas acteur fictif comme vraie adresse |
| AUTORISE | Outcome global=Approve | Pas Responses array |
| ARCHIVE_CR | Site=SITE_TP ; Folder=04_COPIL choisi au picker ; Name expression ; Content=CR_HTML | Jamais base64 ou binaire .mpp en CR |
| POST_TEAMS | Canal standard test ; Message=CR_HTML | Après archive et accord |
| SEND_MAIL | To=test autorisé ; Body=CR_HTML ; sujet A/B | Identique contenu métier |
| Journal Update | Id RESERVE_JOURNAL ; mêmesTitle/reference/path/runid ; Stage étape | Ne pas anticiper réception |
| Erreur | Scope sibling après Failed/Timed out ; ligneERROR distincte | Pas de reprise aveugle |


Get item source est singulier ; CHERCHE_JOURNAL retourne value que l’on compte. Aucune boucle d’envoi sur les réponses d’approbation. Les updates journal utilisent l’ID RESERVE_JOURNAL, jamais ItemId projet ou ID de fichier.

La clé Title unique est A|ProjectRef|DateRapport|Revision ou B. Une réservation bloque la réexécution même après rejet/échec. Les jeux A/B sont identiques sauf namespace, sujet de test et horodatage. Vérifier l’unicité réelle avant envois.

## 5. Expressions de contrôle

```text
RunId = workflow()?['run']?['name']
DateGeneration = formatDateTime(utcNow(),'dd/MM/yyyy HH:mm')
CleRapport = concat(outputs('Parcours'),'|',outputs('GET_PROJET')?['body/ProjectRef'],'|',outputs('DateRapport'),'|',outputs('Revision'))
DOUBLON gauche = length(body('CHERCHE_JOURNAL')?['value'])
DateEcheance = formatDateTime(outputs('GET_PROJET')?['body/Deadline'],'dd/MM/yyyy')
CR_Echappe = replace(replace(replace(outputs('CR_Texte'),'&','&amp;'),'<','&lt;'),'>','&gt;')
CR_HTML = replace(outputs('CR_Echappe'),decodeUriComponent('%0A'),'<br>')
AUTORISE gauche = body('APPROBATION')?['outcome']
ARCHIVE_CR File Name = concat('CR_',outputs('Parcours'),'_PRJ-2026-017_',outputs('DateRapport'),'_',outputs('Revision'),'.html')
```

Les libellés avant = dans ce bloc sont explicatifs ; dans fx copier la formule à droite seule, sans =Excel. Les noms d’action et colonnes doivent correspondre exactement au canvas. Le contenu dynamique est un jeton résolu, pas un emplacement [JETON...] tapé.

## 6. Compte rendu attendu et archive

```text
COMPTE RENDU DE PILOTAGE — Modernisation du système d’information
Référence : PRJ-2026-017 — Date : 2026-10-11 — Révision : R01
Génération UTC : horodatage réel — Version données V1

Chef de projet : Alexandra Rey ; sponsor Directeur des systèmes d’information.
Statut Orange ; avancement 65 % ; budget consommé 72 %.
Les valeurs sont déclarées ; aucun CPI/SPI ou dépassement final calculé.
Faits : cadrage validé ; prototype en cours ; confirmation fournisseur attendue.
Risque : retard dépendance fournisseur ; impact élevé.
Décision attendue : renforcement temporaire de l’équipe, non approuvé par le CR.
Action proposée : escalade fournisseur ; owner/date à confirmer si non fournis.
Échéance : livraison prototype 23/10/2026.
Prochain COPIL : semaine suivante, date précise à confirmer.

Documents : charte [URL réelle] ; cahier des charges [URL réelle] ; planning [URL réelle].
Liens ne donnant pas de nouveau droit ; données fictives ; validation de diffusion distincte des arbitrages.
```

Les neuf rubriques métier sont complétées d’une zone documentaire non interprétée par IA. Les URL sont échappées pour HTML avec le reste du texte ; elles peuvent être copiées au navigateur si le renderer ne les rend pas cliquables. Le lien doit rester fidèle à la source et être validé humainement.

Fichier archivé : CR_A_PRJ-2026-017_2026-10-11_R01.html ou B. Aucune génération de DOCX/PDF/MPP n’est supposée à cette étape. Le renderer SharePoint peut télécharger le .html plutôt que l’ouvrir : lire localement si autorisé. La validation humanise la diffusion, pas le GO ou le renfort.

## 7. Contrôle binaire facultatif

Get file properties : site réel, bibliothèque Documents réelle, Id numérique du fichier. Il retourne les métadonnées ; Identifier peut alimenter Get file content. ID/Identifier/Path/URL Copy link sont distincts. Get file content donne des octets : il peut servir à une pièce jointe après validation de sa diffusion, mais ne donne pas un tableau des tâches .mpp ni une analyse automatique des clauses Word. [Microsoft : propriétés/contenu/archivage](https://learn.microsoft.com/en-us/connectors/sharepointonline/).

Ne pas ajouter de connecteur premium ou agent pour lire le fichier « implicitement ». Toute extraction métier supplémentaire nécessite un scénario/intégration explicitement cadré.

## 8. Tests et erreurs corrigés

| Test | Données/acte | Résultatattendu |
| --- | --- | --- |
| T01 | Approve R01 | 1 archive HTML,1CR Teams,1 emailCR ; journalDiffuse et contrôle réception |
| T02 | Même clé relancée | Aucun nouvel archivage/approval/diffusion |
| T03 | Reject nouvelle révision | JournalRejete ; pas archive finale ni sends |
| T04 | ItemId inexistant | ErreurSource avant archive/sends ; ERROR si journalaccessible |
| T05 | Texte &/<prototype> | Échappement/ligneslisibles puis restaurationV1 |
| T06 | Canal inaccessible en copie sûre | Blocage paramétrage ou échec, pas mailCR ; archive peut déjàexister |
| T07 | Adresse invalide en copie | Blocage ou échec ; vérifier si Teams déjà publié |
| T08 | Connexion/policy problème | Diagnostic sans contournement |
| T09 | Liens avec destinataireautorisé | Charte/CDC/plan correspondants, accès réel |
| T10 | Approuvé puis même clé | Un fichier par clé et pas deuxième send |
| T11 | Révision rejetée | Aucun nouveau CRHTML final |
| T12 | Dossier archive introuvable/absence droits simulée sûre | Échec avant diffusion ou blocageconception ; traceerreur, pas fauxsuccès |


La notification d’approbation peut contenir le brouillon destiné au relecteur habilité. Elle n’est pas l’email CR final. Run green ne prouve pas qualité/réception ; rejet métier correctement traité peut être un run technique réussi.

Si ARCHIVE_CR échoue, les sends après lui ne s’exécutent pas par défaut. Si archive réussit puis Teams/mail échoue, le fichier peut exister malgré statut non Diffuse. Le journal garde Valide/TeamsPublie, parfois plus ancien en cas d’Update échoué : vérifier bibliothèque/destinations ET historique. Ne pas supprimer clé ou refaire toutes les étapes par nouvelle révision.

Le système n’est pas une transaction unique entre services. Réessai après timeout peut dupliquer un effet déjà accepté ; retryNone limite le problème lorsqu’il est configurable sans garantir exactement une fois. Une perte de journal externe reste tracée par l’historique si disponible.

## 9. Copilot et mesure

Le prompt B doit mentionner vingt champs dont les URL, le dossier d’archive réel, Create file avant Teams et la validation. Copilot peut proposer partiellement la structure ; les réglages sont complétés selon A, corrections comptées. Aucune action d’IA runtime ni achat de crédits ajouté.

Ne pas copier le flow A terminé puis attribuer le gain à Copilot. Utiliser source/site/documents préexistants de façon identique ; inscrire coût commun dans les deux scopes comparables. Les temps non exécutés restent vides. Le scénario180/30 donne150min83,3% facteur6, mais n’est pas un résultat mesuré. Une baisse de temps avec rapport incorrect n’est pas réussite.

Les douze tests incluent quatre vérifications documentaires. Dans le classeur V2, résultats observés et temps restent vides à remplir après exécution. Le planning Excel n’est pas le classeur de mesure.

## 10. Évaluation et limites

Grille100points du cahier conservée. Intégrer site/bibliothèque aux10points source, archivage/mappings aux15points actions et liens/exactitude aux20points qualité, sans créer de points supplémentaires. Tests12scénarios, non exécutés explicités.

NO site créé si admin préprovisionne ; pas .mpp réel si seulement xlsx ; pas extraction de fichiers si simple lien. Les alternatives raisonnables sont acceptables si déclarées et testées, pas si les participants prétendent avoir fait une manipulation non exécutée.

Ne pas casser permissions ou supprimer des documents hors périmètre pour produire un négatif. La capacité de création dépend des policies ; respect des autorisations demeure obligatoire. Le pack est une archive de documents, pas un export de flow ni une création à distance du site.
