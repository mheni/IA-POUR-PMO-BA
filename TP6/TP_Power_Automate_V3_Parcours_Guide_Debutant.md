# Création d’un flux Power Automate complet — Données projet → Génération du compte rendu → Envoi dans Microsoft Teams et par e-mail

## Page de garde

Formation : Utilisation de l’IA par un PMO ou PMP BA pour accélérer ses travaux.

Version V3 — Parcours débutant progressif — Audit du document fourni et vérification documentaire : 13 octobre 2026.

Niveau1 : lecture, CR, relecture, réservation unique, Teams, email et preuves. Niveau2 facultatif : archive, lecture du journal, diagnostics d’erreur et reprise. Ce document remplace l’organisation pédagogique de la V2, pas les règles de sécurité.

Prévoir une séance de cinq à six heures avec ressources déjà préparées, ajustée après essai pilote ; ajouter création autonome des ressources ou perfectionnement dans une autre séance. Aucune durée ou accélération garantie. Les droits/licences/services sont vérifiés avant construction.

## Audit préalable — contenu réel de la V2

Le document TP_Power_Automate_SharePoint_Documents_V2_Participant-1.md a été lu intégralement : 122222caractères,18788mots,16sections numérotées,40 étapes.40fois la rubrique Drag-and-drop et40foisAjoutd’action,10phrasesSave génériques identiques. Les constats suivants renvoient aux étapes réelles, pas à un tenant exécuté.

| Partie actuelle | Difficulté | Cause | Amélioration | Priorité |
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


## Scénario et premier repère

Vous êtes PMO du projet fictif PRJ-2026-017 Modernisation du système d’information. SourceV1 : Orange,65% d’avancement,72% de budget consommé,prototype23/10/2026,risque dépendance fournisseur. Une escalade est proposée ; un renfort doit être arbitré. Le flow met en forme, il ne prendaucunedécision et ne produit pas une synthèse IA runtime.

Objectifs simples : lire une ligne, montrer un CR,faire relire,publier après accord, vérifier deux réceptions et tracer. Copilot aide à construire le second flow ; aucune IA Builder ou appel agent nécessaire.

## Carte de progression et reprise

| Phase | Objectif | Statut | Étapes |
| --- | --- | --- | --- |
| 0 | Accès et destinations | À faire | 0.1–0.2 |
| 1 | Données communes | À faire | 1.1 |
| 2 | Résultat métier attendu | À faire | 2.1 |
| 3 | Première lecture sans diffusion | À faire | 3.1–3.4 |
| 4 | CR, validation, réservation, Teams/email | À faire | 4.1–4.12 |
| 5 | Nouveau flux Copilot équivalent | À faire | 5.1–5.3 |
| 6 | Tests et comparaison | À faire | 6.1 |
| 7 | Extensions facultatives | À faire | 7.1–7.4 |


Statuts : Àfaire,En cours,Validé,Bloqué. Le classeur fourni reprend cette carte et un carnet de reprise. Cocherleschecklistsaprèschaquephase, pas avant tests.

Avant d’interrompre : Save, noter derniercheckpoint,flow/environnement,version,RunID et édition réservée ; fermeroufairetraiterlesapprovals. Reprendre avec Mes flux→nom→Modifier pour configuration ou ouvrir le RunID existant pour une attente. Ne pascliquerTesterparréflexe : cela créeun nouveau run et une éventuellenouvelleactiond’envoi.

Ne modifierpasunflowdontune demande en attente peut encore diffuser. Faire terminer/rejeter les demandes de test ou annuler unrun si commande/droits disponibles, sans supposer que celasupprime automatiquementl’approbation. Les runs utilisent leur version au lancement ; Turn off ne garantit pas arrêt des run déjà actifs.

## Fiche de paramètres unique — à compléter avant phase0

| Paramètre | Sens | Valeur à noter |
| --- | --- | --- |
| ENV_TP | Environnement Power Platform autorisé | À fournir |
| SITE_TP | Racine réelle du site, pas URL de liste | À fournir |
| ITEM_ID | ID numérique de la ligne PRJ-2026-017 | À relever |
| TEAM_TP | Équipe de formation autorisée | À fournir |
| CHANNEL_TP | Canal standard de test | À fournir |
| EMAIL_TEST | Boîte Exchange Online contrôlée du participant | À fournir localement |
| APPROVER_TEST | Compte professionnel autorisé à relire (vous-même pourTP) | À fournir localement |
| DateRapport | Date pédagogique ISO commune A/B | 2026-10-13 |
| Revision | Édition suivant étape, pas relance d’erreur | R00,J01,J02,K01,K02,T01,E01 selon tableau |
| LIBRARY_TP/CR_FOLDER_PATH | Seulement extension archivage | À relever si niveau2 |


Les coordonnées réel les detest restentlocales. Ne pas utiliser unexample.invalid comme adresse qui doit recevoir. Les noms du cas Alexandra Rey/Sponsor ne sont pas des comptes de connexion ou des adresses Outlook.

## Quatre gestes d’interface — référence commune

Le nouveauconcepteurPower Automate est la référence ; pas Copilot Studio. Cliquer une carte ouvre Parameters/Paramètres,souvent panneau gauche,selon version ;anglaisentreparenthèses pour recherche.

1. Ajouter : cliquer+ sous une carte ou entre deux cartes→Ajouter une action→rechercher connecteur/opération. Le+ dans Vrai/Faux ajoute uniquement dans cette branche.
2. Renommer : sélectionner titre éditable de la carte, ou nom via Renommer si ce menu est affiché. Les noms du cahier sont nécessaires aux expressions.
3. Valeur dynamique : cliquer dans champ→éclair/contenu dynamique→choisir champ sous PRODUCTEUR indiqué. Tapernomduchampn’estpas un jeton. Voirplus si panneau masque lesfields.
4. Expression : cliquer dans champ→fx/Expression→coller formule seule,sans=Excel/@/guillemets externes→Ajouter/Mettre à jour/Valider selon bouton. Vérifier référence d’action.

Pas glisser-déposer de flèche ou carte imposé. Les opérations Compose et jetons sont documentées avec nouveau designer. [Microsoft : opérations données](https://learn.microsoft.com/fr-fr/power-automate/data-operations).

Tester :Save→Tester→Manuellement→valeurs→Exécuter. Pour revenir Modifier:Mes flux→nom→Modifier. Historique : détails flow→Historiqueexécutions→run→carte→Inputs/Outputs. Running/Skipped/Failed/Succeeded sont des statuts techniques ;Rejete n’estpas nécessairement une erreur technique.

## Phase 0 — Vérifier que l’environnement est prêt

Services : Power Automate cloud,SharePoint,Standard approvals,Teams/Workflows autorisé,boîte Exchange Online. Connexions nominatives etpoliciesapplicables ; Standardn’estpas droit universel aux ressources. Certains comptes Microsoft365/Education incluentdroitslimités ; vérifier Paramètres→Afficher mes licences. Aucun achat/PAYG imposé. [Microsoft : licences](https://learn.microsoft.com/fr-fr/power-platform/admin/power-automate-licensing/types).

Copilot B dépenddu tenant/région etdu nouveau designer. Ne pasassocier automatiquement ce TP auxcréditsd’Aperçu GitHub harness. Pasd’AI runtime,intégrationPowerBI ou fonction premium ajoutéeparsilence.

### Étape 0.1 — Ouvrir et identifier le bon environnement

#### Objectif
Vérifier le compte et le service avant toute configuration.

#### Point de départ
Navigateur.

#### Avant de commencer
Compte professionnel et fiche de paramètres autorisée.

#### Manipulations à effectuer
1. Ouvrir https://make.powerautomate.com.
2. Se connecter avec le compte de formation.
3. Ouvrir le sélecteur d’environnement en haut.
4. Choisir ENV_TP indiqué sur la fiche.
5. Vérifier le tenant/compte affiché.
6. Ouvrir Paramètres → Afficher mes licences si vous devez contrôler les droits attribués.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Service | Power Automate cloud, pas Copilot Studio |
| Environnement | ENV_TP réel fourni |


#### Résultat attendu
Accueil Power Automate accessible.

#### Point de contrôle
Compte et environnement correspondent au périmètre de formation.

#### Si le résultat est différent
Compte incorrect : se déconnecter/reconnecter ; environnement absent : responsable provisionne ; licence/permission manquante : rester Bloqué, aucun achat ou changement DLP.

#### Sauvegarde
Noter compte/environnement et état de phase dans le carnet ; aucune ressource à enregistrer encore.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Compte et environnement correspondent au périmètre de formation.
> - Éléments à conserver : fiche de paramètres, dernier checkpoint et preuve du contrôle ; aucun flux n’existe encore.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 0.2 — contrôler les ressources et les destinations

### Étape 0.2 — Contrôler les ressources et les cibles

#### Objectif
Éviter de découvrir un blocage lors du premier envoi.

#### Point de départ
Accueil Power Automate et fiche paramètres.

#### Avant de commencer
URLs/site, deux listes et cibles test fournis ou créables par votre compte.

#### Manipulations à effectuer
1. Ouvrir SITE_TP dans un autre onglet.
2. Ouvrir PMO_Projets_TP ; vérifier lecture de la ligne projet.
3. Ouvrir PMO_CR_Journal ; faire confirmer droit Create/Update et Title unique.
4. Ouvrir Teams et le canal standard CHANNEL_TP de TEAM_TP.
5. Ouvrir Outlook dans votre propre boîte EMAIL_TEST.
6. Confirmer avec le responsable le compte APPROVER_TEST et l’usage Standard approvals.
7. Si site/listes non prêts et création autorisée, suivre la fiche autonome de préparation séparée AVANT continuer.
8. Ne pas commencer la diffusion tant qu’un service indispensable est bloqué.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| EMAIL_TEST | Boîte professionnelle contrôlée, jamais une adresse exemple.invalid |
| APPROVER_TEST | Compte réel autorisé, vous-même pour le TP |
| TEAM_TP / CHANNEL_TP | Équipe et canal standard de test, pas canal privé/production |


#### Résultat attendu
Checklist d’accès complétée.

#### Point de contrôle
Lecture/écriture requises, canal, boîte et approbateur sont autorisés ; Title unique est confirmé.

#### Si le résultat est différent
SharePoint403 : compte/permission ; canal invisible : membre/Workflows autorisée à vérifier ; Outlook/Approvals absent : responsable vérifie licence/service ; ne pas contourner parNoAuth.

#### Sauvegarde
Sauvegarder la fiche locale ; inscrire Phase0 Validé uniquement si les contrôles essentiels sont passés.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Lecture/écriture requises, canal, boîte et approbateur sont autorisés ; Title unique est confirmé.
> - Éléments à conserver : fiche de paramètres, dernier checkpoint et preuve du contrôle ; aucun flux n’existe encore.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 1.1 — relever le projet et son ID



ChecklistPhase0 : [ ]Compte/environnement [ ]Sourceready [ ]Journal unique/create/update [ ]Teams canal standard/Workflows [ ]Outlook boîte test [ ]Approver autorisé. Si manque : Bloqué, corriger0.2 ou préparation autonome avant continuer.

## Phase 1 — Préparer les données communes

Deux modes : recommandé,source/listes/sites/canal prêts par responsable ; autonome,fiche Préparation Ressources détaillée fournie. Les objectifs création des ressources ne sont pas validés dansmodepréconfiguré, mais consommation/contrôle le sont.

La listePMO_Projets_TP garde20champscompatibles ;niveau1n’utilise pasles3URLdocs ni DataOwner pour envois.Source CSV est fiche valeurs,pas package import flow. LejournalPMO_CR_Journal possède Title unique et ProjectRef/Path/Stage/RunId/Details. Ne pas supprimer uneclé pourdébloquerunrunambigu.

| Colonne technique | Type | Valeur |
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
| CharterUrl | Plusieurs lignes texte brut | Facultatif niveau1 ; URLréelle si extension |
| RequirementsUrl | Plusieurs lignes texte brut | Facultatif niveau1 ; URLréelle si extension |
| PlanUrl | Plusieurs lignes texte brut | Facultatif niveau1 ; URLréelle si extension |

Journal :

| Colonne | Type |
| --- | --- |
| Title | Texte natif, valeurs uniques Oui |
| ProjectRef | Une ligne de texte |
| Path | Une ligne de texte |
| Stage | Une ligne de texte |
| RunId | Une ligne de texte |
| Details | Plusieurs lignes texte brut |


### Étape 1.1 — Relever les données utiles et l’ID du projet

#### Objectif
Préparer un socle commun sans reconstruire les ressources pour A/B.

#### Point de départ
Liste PMO_Projets_TP.

#### Avant de commencer
Phase0 validée ; valeurs fictives présentes.

#### Manipulations à effectuer
1. Ouvrir la ligne PRJ-2026-017.
2. Vérifier Title,Status,Progress,BudgetUsed,Deadline et DataVersion.
3. Afficher la colonne ID dans la vue (options de colonnes), ou lire ID dans l’URL du formulaire.
4. Noter cet ID numérique comme ITEM_ID ; ne pas supposer1.
5. Comparer les champs nécessaires au tableau de données.
6. Conserver le même étatV1 pour A etB ; les trois liens documentaires ne sont pas requis au niveau1.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| ProjectRef | PRJ-2026-017 |
| Status / Progress / BudgetUsed | Orange /65 /72 |
| Deadline / DataVersion | 2026-10-23 (texte ISO) /V1 |
| ITEM_ID | ID réel de la ligne, distinct de référence métier |


#### Résultat attendu
Fiche de préparation avec ITEM_ID vérifié.

#### Point de contrôle
Les chiffres sont65/72, pas0,65 ni6500 ; date ISO valide et projet correct.

#### Si le résultat est différent
Valeurs absentes : owner corrige avant continuer ; colonnewrongtype : corriger schéma, pas formulecompensatoire ; lienmanquant du niveau2 n’empêche pas le niveau1.

#### Sauvegarde
Enregistrer les corrections de données si vous êtes autorisé ; sinon demander au propriétaire. Noter V1.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Les chiffres sont65/72, pas0,65 ni6500 ; date ISO valide et projet correct.
> - Éléments à conserver : fiche de paramètres, dernier checkpoint et preuve du contrôle ; aucun flux n’existe encore.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 2.1 — lire le compte rendu attendu



ChecklistPhase1 : [ ]Bonne ligne [ ]ITEM_ID numérique [ ]65/72 [ ]Date ISO23oct [ ]V1maintenue. Continuer2.1seulementsiobservationscorrectes.

## Phase 2 — Comprendre ce que l’on veut obtenir

```text
Lire → Compte rendu → Relecteur autorisé → Si accord : Teams → Email → Trace
Si rejet : aucun CRdiffusé
Si mêmeéditiondéjàréservée : arrêt avantreview/sends
```

Exemple de contenu : statutOrange65%,budget72%,confirmation fournisseur attendue,risquéretard,action escalade PROPOSÉE,décision renfort ATTENDUE,prototype23/10 etdatepréciseprochainCOPILàconfirmer. Budget72 n’estpas unCPI, ni un dépassementfinalcertain.

Lademandereview peut envoyer une mail avec brouillon au relecteur autorisé ;c’estledispositifdevalidation,pasdiffusionfinale. L’accord ne donne pas GO/budget renfort. [Microsoft : approval](https://learn.microsoft.com/fr-fr/power-automate/modern-approvals).

### Étape 2.1 — Reconnaître le résultat métier

#### Objectif
Savoir quoi vérifier avant de voir toute l’architecture.

#### Point de départ
Cahier, fiche des données ouverte.

#### Avant de commencer
Phase1 validée.

#### Manipulations à effectuer
1. Lire l’exemple de CR fourni.
2. Repérer neuf rubriques et les chiffres65/72/23 octobre.
3. Repérer action proposée et décision attendue : elles ne sont pas approuvées.
4. Lire le schéma simple : lecture→CR→relecture→Teams→email→trace.
5. Noter que le premier essai ne fera que lire/afficher, sans diffusion.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Résultat | CR de pilotage structuré, même corps métier dans les deux destinations |
| Validation | Autorisation de diffusion, pas GO ou renfort budgétaire |


#### Résultat attendu
Critères compris et cahier prêt pour premier flow.

#### Point de contrôle
Vous savez distinguer CR final, notification de revue et véritable arbitrage.

#### Si le résultat est différent
Confusion CPI :72% consommé ne suffit pas à calculer CPI ; confusiongénérationIA : le flow assemblera des champs, Copilot aide àla construction.

#### Sauvegarde
Cocher Phase2 Validé ; aucune action d’envoi n’est réalisée.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Vous savez distinguer CR final, notification de revue et véritable arbitrage.
> - Éléments à conserver : fiche de paramètres, dernier checkpoint et preuve du contrôle ; aucun flux n’existe encore.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 3.1 — créer le flux A en lecture seule



ChecklistPhase2 : [ ]Rubriquesconnues [ ]Fait/proposition/accord distincts [ ]Relecture≠arbitrage [ ]Premieressaireadonly. Prochainephase3.

## Phase 3 — Première réussite : lecture sans diffusion

### Étape 3.1 — Créer le déclencheur manuel

#### Objectif
Maîtriser le moment des essais.

#### Point de départ
Power Automate Accueil.

#### Avant de commencer
Phases0–2 validées ; chronomètreA démarré pour construction uniquement.

#### Manipulations à effectuer
1. Cliquer Créer (Create).
2. Choisir Flux cloud instantané (Instant cloud flow).
3. Saisir PMO_CR_A_Manuel.
4. Choisir Déclencher manuellement un flux (Manually trigger a flow).
5. Cliquer Créer.
6. Sélectionner la carte déclencheur.
7. Ajouter une entrée Nombre nommée ItemId.
8. Ajouter une entrée Text e nommée Date Rapport.
9. Ajouter une entrée Text e nommée Revision.
10. Vérifier nouveau concepteur actif ; ne pas ouvrir Copilot pour A.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Nom | PMO_CR_A_Manuel |
| ItemId | Nombre |
| Date Rapport | Text e, valeur de test2026-10-13 |
| Revision | Text e, premier test R00 |


#### Résultat attendu
Déclencheur manuel et trois entrées visibles.

#### Point de contrôle
Pas trigger automatique/récurrence ; aucun send.

#### Si le résultat est différent
Create absent : droit maker ; entréesnommées Text : modifier leur libellé ; paramdateType Date non demandé : conserver Text e ISO pour ceTP.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Pas trigger automatique/récurrence ; aucun send.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 3.2 — ajouter la lecture SharePoint

### Étape 3.2 — Lire la ligne SharePoint

#### Objectif
Obtenir un objet unique, pas une collection.

#### Point de départ
Concepteur, sous déclencheur.

#### Avant de commencer
ITEM_ID et SITE_TP relevés.

#### Manipulations à effectuer
1. Cliquer + sous la carte du déclencheur.
2. Cliquer Ajouter une action (Add an action).
3. Rechercher SharePoint Get item.
4. Choisir Obtenir un élément (Get item), au singulier.
5. Si connexion demandée, Se connecter avec le compte autorisé.
6. Renommer la carte GET_PROJET via son titre éditable ou commande Renommer visible.
7. Remplir site/liste.
8. Cliquer le champ Id puis l’éclair ; sous déclencheur sélectionner ItemId.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Action | SharePoint Get item |
| Site Address | SITE_TP racine réelle |
| List Name | PMO_Projets_TP |
| Id | Jeton ItemId du déclencheur, pas texte PRJ-2026-017 |


#### Résultat attendu
Carte de lecture configurée.

#### Point de contrôle
Le champ Id contient un jeton, pas un nom tapé ; pas d’Apply to each.

#### Si le résultat est différent
Site absent : connexion/site exact ; champs non proposés : sélectionner liste puis Save/reouvrir ; Get items choisi : remplacer par Get item avant continuer.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur. Enregistrer puis Tester R00 (même ID/date) : seulement GET_PROJET existe ; inspecter ses Sorties, aucun envoi.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Le champ Id contient un jeton, pas un nom tapé ; pas d’Apply to each.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 3.3 — afficher un premier résumé sans envoyer

### Étape 3.3 — Composer un résumé lisible

#### Objectif
Découvrir le contenu dynamique sur un résultat court.

#### Point de départ
Concepteur, après GET_PROJET.

#### Avant de commencer
Carte source configurée.

#### Manipulations à effectuer
1. + sous GET_PROJET → Ajouter une action.
2. Rechercher Compose ; choisir Opérations de données — Composer.
3. Renommer CR_Text e.
4. Dans Entrées, coller le modèle court.
5. Pour chaque emplacement entre crochets, l’effacer.
6. Au même endroit, cliquer éclair/contenu dynamique et choisir le champ de GET_PROJET.
7. Laisser les% comme texte après les jetons.
8. Ne pas ajouter Teams ou Outlook.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Nom carte | CR_Text e |
| Entrées | Modèle court et vrais jetons de GET_PROJET |


#### Résultat attendu
Un texte assemblé avec des jetons source.

#### Point de contrôle
Les mots[Title] etcne restent pas littéralement dans Entrées.

#### Si le résultat est différent
Champ absent : vérifier Get Projet liste/source ; boîte HTML non requise ; mauvaischampcollé : supprimer jeton et choisir son bon producteur.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur. Enregistrer puis Tester R00 : vérifier les Sorties CR_Text e, aucun envoi.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Les mots[Title] etcne restent pas littéralement dans Entrées.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 3.4 — tester cette première réussite

### Étape 3.4 — Tester uniquement la lecture et le résumé

#### Objectif
Obtenir la première preuve avant complexité.

#### Point de départ
FlowA enregistré, cartes Trigger→GET_PROJET→CR_Text e.

#### Avant de commencer
Pas de destinations ; actionsterminées de config.

#### Manipulations à effectuer
1. Enregistrer.
2. Cliquer Tester (Test) puis Manuellement.
3. Saisir ITEM_ID,Date Rapport2026-10-13,Revision R00.
4. Exécuter le flux.
5. Dans la page d’exécution, ouvrir GET_PROJET puis CR_Text e et leurs Sorties.
6. Vérifier référence et65/72/Orange.
7. Copier RunID/statut dans carnet.
8. Revenir à Mes flux→PMO_CR_A_Manuel→Modifier pour continuer.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Revision | R00, sans réservation |
| Attendu | Modernisation SI,PRJ-2026-017,Orange,65%,72% |


#### Résultat attendu
Un run réussi en lecture, aucun CR envoyé.

#### Point de contrôle
GET et Compose corrects ; zéro send caraucundestinataireconfiguré.

#### Si le résultat est différent
404 : ItemId ; auth : compte/droits ; valeurslittérales : jetonsmalinsérés. Corriger et retester R00 (aucunecléconsommée).

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : GET et Compose corrects ; zéro send caraucundestinataireconfiguré.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.1 — ajouter le contrôle de référence et le CR complet



### Modèle court à copier dans CR_Text e

```text
PROJET — [Title de GET_PROJET]
Référence : [ProjectRef de GET_PROJET]
Statut : [Status de GET_PROJET]
Avancement : [Progress de GET_PROJET] %
Budget consommé : [BudgetUsed de GET_PROJET] %
Données fictives — test de lecture, aucune diffusion.
```

Les emplacements sontdesinstructionsderemplissage ;effacer,puis insérer jeton vrai. Aucun SharePoint write,approval ou destinataire tantquepasphase4.

ChecklistPhase3 : [ ]Trigger3entrées [ ]GETuniquerow [ ]CR jetons [ ]Runreadonlycorrect [ ]RunID noté. Premièrecompétence acquise, pas workflow diffusion encore.

## Phase 4 — Ajouter les fonctions une par une

### Règle des éditions de test — ne rien deviner

| Moment / édition | Réponse à effectuer | Effet attendu |
| --- | --- | --- |
| Phase3/lecture,R00 | Source et CRseulement | Pas de réservation/envoi |
| Format,R00 | Test rendu sans approval | Pas de réservation/envoi |
| Approval,J00 | Approuver, carteapprovallast | Notificationrevue seulement,pascondition/send encore |
| Approval,J01 | Approuver, sortie simulation | Notification au relecteur seulement |
| Approval,J02 | Rejeter, sortie simulation | Aucun CRdiffusé |
| Clé,J03 | Rejeter aprèslectureclé | Sansréservation niCRfinal |
| Réservation,K00 | Rejeter, simulation | CléK00StageReserve conservée, aucunCRdiffusé |
| Réservation,K01 | Rejeter | Clé K01 conservéeStageRejete |
| Réservation,K02 | Approuver sans destination | Clé K02 StageValide, pas Teams/mailCR |
| Teams,T01 | Approuver, canal seulement | Un message T01, journalTeamsPublie |
| Email/full,E01 | Approuver | Un messageE01 +un emailCR E01, journalDiffuse |
| Doublon,E01 identique | Relancer volontairement une fois | Refus réservation avant approval/sends, attendu |
| Tests complément,P02/etc | Seulement nouvelle édition de test explicitement prévue | Ne pas changer révision pour reprendre une panne ambiguë |


Une nouvelle édition est ici un nouveau TEST identifié àl’avance. Ce n’est pas un mécanisme de reprise après panne partiel le. Si envoiincertain, ne pas changer Revision pour reprendre tout. Lesnotificationsreview sont attendues,lesCR d’édition T01 et E01 sontintentionsdistinctes.

### Étape 4.1 — Bloquer la mauvaise référence projet

#### Objectif
Ne pas construire un CR pour une autre ligne.

#### Point de départ
ConcepteurA, entre GET_PROJET et CR_Text e.

#### Avant de commencer
Premier test3.4 validé.

#### Manipulations à effectuer
1. Cliquer le + sur la liaison entre GET_PROJET et CR_Text e.
2. Rechercher Condition, connecteur Contrôle.
3. Renommer BON_PROJET.
4. Choisir ProjectRef de GET_PROJET à gauche, est égal à, valeur PRJ-2026-017 à droite.
5. Dans Faux/False, + → Terminer (Terminate), statut Échec/Failed.
6. Laisser Vrai/True vide ; CR_Text e reste après la condition au niveau principal.
7. Vérifier que Terminer arrête le flow entier si la référence est incorrecte.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Gauche | ProjectRef dynamique de GET_PROJET |
| Comparaison | est égal à PRJ-2026-017 |
| Faux | Terminate Failed ; message SOURCE_INCORRECTE si champ disponible |


#### Résultat attendu
Le CR ne peut suivre une référence différente.

#### Point de contrôle
Condition correcte et arrêt placé dans Faux ; CR_Text e reste à la suite.

#### Si le résultat est différent
CR_Text e accidentellement dans Faux : remettre l’action au niveau suite (recréer si besoin) ; référence vide : mauvaise colonne/source ; n’ajouterpasunApplytoeach.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur. Enregistrer puis Tester R00 : BON_PROJET=Vrai et résumé correct, aucun envoi.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Condition correcte et arrêt placé dans Faux ; CR_Text e reste à la suite.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.2 — remplacer le texte court par le modèle complet

### Étape 4.2 — Compléter le CR avec les données source

#### Objectif
Produire les neuf rubriques sans inventer une décision.

#### Point de départ
Carte CR_Text e dans le concepteur.

#### Avant de commencer
BON_PROJET configurée ; sourceV1 disponible.

#### Manipulations à effectuer
1. Ouvrir la carte CR_Text e.
2. Remplacer ses Entrées par le modèle complet fourni.
3. Remplacer chaque emplacement par un jeton de GET_PROJET.
4. Date Rapport et Revision du modèle viennent directement du déclencheur, pas d’un nom tapé.
5. Conserver les mots proposé/attendu/à confirmer et% après chiffres.
6. Garder les trois liens documentaires pour l’extension, pas requis ici.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Modèle | BlocCRcomplet ci-dessous |
| Deadline | Jeton brut2026-10-23 ; pas de nouvelle formule date |
| Date Rapport / Revision | Contenu dynamique du déclencheur |


#### Résultat attendu
Un CR complet fidèle aux données.

#### Point de contrôle
65/72/Orange/23 octobre, aucune approbation budgétaire ou date COPIL inventée.

#### Si le résultat est différent
Placeholders restants :effacer/jeton ; champs manquants :liste puis Save ; doublons de lignes :Get item doit être unique.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur. Enregistrer puis Tester R00 : neuf rubriques exactes, aucun envoi.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : 65/72/Orange/23 octobre, aucune approbation budgétaire ou date COPIL inventée.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.3 — échapper les caractères du texte

### Étape 4.3 — Protéger le texte avant HTML

#### Objectif
Éviter qu’un symbole de la source soit interprété comme balise.

#### Point de départ
Après CR_Text e.

#### Avant de commencer
Modèle complet sauvegardé.

#### Manipulations à effectuer
1. + après CR_Text e ; rechercher Compose et choisir Composer.
2. Renommer CR_Echappe.
3. Dans Entrées, ouvrir fx/Expression.
4. Coller uniquement la formule du tableau, sans =Excel ni guillemets externes.
5. Ajouter/Valider l’expression selon bouton visible.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Carte | CR_Echappe |
| Entrées via Expression | replace(replace(replace(outputs('CR_Text e'),'&','&amp;'),'<','&lt;'),'>','&gt;') |


#### Résultat attendu
Le texte échappe&,<,>.

#### Point de contrôle
La formule référence exactement CR_Text e ; elle est une expression, pas texte littéral.

#### Si le résultat est différent
Nom d’actionerroné :renommer/source formule ; caractères mal copiés :reprendrebloc ; aucune utilisationbase64 ou Parse JSON nécessaire.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur. Enregistrer puis Tester R00 : comparer CR_Text e et CR_Echappe, aucun envoi.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : La formule référence exactement CR_Text e ; elle est une expression, pas texte littéral.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.4 — ajouter les retours à la ligne HTML

### Étape 4.4 — Créer le rendu commun Teams/Outlook

#### Objectif
Mettre en forme, sans génération rédactionnelle IA.

#### Point de départ
Après CR_Echappe.

#### Avant de commencer
Expression précédente valide.

#### Manipulations à effectuer
1. + → Composer ; renommer CR_HTML.
2. Entrées → fx/Expression.
3. Coller formule du tableau puis Valider.
4. Ne pas ajouter une action d’envoi.
5. Enregistrer et tester R00 en lecture seule.
6. Comparer sortie CR_Text e et CR_HTML : l’unea des retours, l’autre des<br> après échappement.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Carte | CR_HTML |
| Expression | replace(outputs('CR_Echappe'),decodeUriComponent('%0A'),'<br>') |
| Test | R00, aucune réservation encore |


#### Résultat attendu
Rendu HTML minimal préparé ; aucune diffusion.

#### Point de contrôle
Le HTML contient<br>, source&lt;...&gt; si caractères spéciaux ; les faits restent identiques.

#### Si le résultat est différent
Baliseséchappéesdeuxfois : utiliser bonne sortie CR_Echappe ; retour absent :décode%0A ; une sortie HTML brute dans historique n’estpas un message reçu.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Le HTML contient<br>, source&lt;...&gt; si caractères spéciaux ; les faits restent identiques.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.5 — installer la relecture avant toute diffusion

### Étape 4.5 — Ajouter la demande de relecture

#### Objectif
Créer le gatehumain avant Teams/email.

#### Point de départ
Concepteur après CR_HTML.

#### Avant de commencer
APPROVER_TEST contrôlé et Approvals disponible.

#### Manipulations à effectuer
1. + → rechercher approbation.
2. Sous Approbations standard, choisir Démarrer et attendre une approbation.
3. Renommer APPROBATION.
4. Type : Approuver/Rejeter — Premier à répondre.
5. Titre : [TP A] Relecture CR suivi de ProjectRef et Revision dynamiques.
6. Affecté à : APPROVER_TEST réel.
7. Détails : Sorties de CR_Text e, puis phrase portée de validation.
8. Ne pas ajouter profileOffice 365 inutile ni destinataire fictif Alexandra.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Type | Approve/Reject - First to respond |
| Affecté à | APPROVER_TEST autorisé |
| Détails | CR_Text e + Valider la diffusion de ce contenu, pas le renfort ni le GO du projet. |


#### Résultat attendu
Carte de relecture, sans destinationfinale.

#### Point de contrôle
La notification peut transmettre brouillon au relecteur autorisé ; ce n’estpas le mail CR final.

#### Si le résultat est différent
Approvals absent :préconfigurationresponsable ; Assigned to source Chef Projet=nom fictif à corriger ; nepas remplacer par send email with options sans redéfinir leTP.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur. Tester J00 après sauvegarde, ouvrir la demande puis Approuver pour terminer le run : la dernière carte est APPROBATION, il n’y a encore ni condition ni diffusion finale. Consigner la réception de la demande et clôturer avant4.6.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : La notification peut transmettre brouillon au relecteur autorisé ; ce n’estpas le mail CR final.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.6 — séparer accord et rejet

### Étape 4.6 — Créer deux sorties de simulation

#### Objectif
Prouver le rejetavantajoutercanaux.

#### Point de départ
Sous APPROBATION.

#### Avant de commencer
Carte prête, pas de run pendant en attente.

#### Manipulations à effectuer
1. + → Contrôle→Condition ; renommer AUTORISE.
2. Gauche=Résultat/Outcome global de APPROBATION, opérateur égal, droite Approve.
3. Si jeton absent, fx avec formule Outcome du tableau ; ne pas choisir Responses array.
4. Dans Vrai, +→Composer ; nom SIMULATION_ACCORD ; texte Accord de diffusion reçu ; aucune destination encore configurée.
5. Dans Faux, +→Composer ; nom SIMULATION_REFUS ; texte CR rejeté ; aucune diffusion.
6. Neplaceraucuneactiond’envoi après condition au niveau principal.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Résultat global | Outcome de APPROBATION |
| Valeur technique | Approve |
| Expression de secours | body('APPROBATION')?['outcome'] |


#### Résultat attendu
Accord/rejet sans message externe de compte rendu.

#### Point de contrôle
Deux branches ; aucune boucle de réponses ni send.

#### Si le résultat est différent
Condition faux après accord :lire Outcome brut dans historique ; vérifier expression/jeton global ; chaîneApprouverlocalisée n’estpas à deviner.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur. Tester J01 et Approuver : branche Vrai/SIMULATION_ACCORD attendue ;clôtureravant4.7. L’étape4.7 vérifieaussi le rejet sur J02.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Deux branches ; aucune boucle de réponses ni send.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.7 — tester l’accord et le rejet sans envoi

### Étape 4.7 — Valider les deux branches

#### Objectif
Une réussite porte sur le comportement, pas juste un run vert.

#### Point de départ
FlowAenregistré et Approvals dans autre onglet.

#### Avant de commencer
Cibles de revue autorisées.

#### Manipulations à effectuer
1. Reprendre la preuve du test J01 de4.6 (ou l’exécuter si pas encore fait).
2. Vérifier Vrai/SIMULATION_ACCORD etFaux Skipped.
3. Vérifier que la demande J01 estterminée.
4. Revenir Modifier ; aucun changement requis.
5. Tester J02 puis Rejeter dans demande correspondante.
6. Vérifier Faux/SIMULATION_REFUS ; aucun CR canal/email.
7. Terminer les deux demandes avant modifier flow.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Tests | J01 Approve ;J02 Reject |
| Date Rapport | 2026-10-13 |


#### Résultat attendu
Deux testsdefonctions de relecture réussis.

#### Point de contrôle
Notifications d’approbation possibles, mais aucun CR Teams/email final. Toutes les demandes sont traitées.

#### Si le résultat est différent
Flowattend :c’est normal,toujours même run ; mauvais approbateur :corriger après clôture ; nepas lancer un second run pour remplacer uneapprobationpending.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Notifications d’approbation possibles, mais aucun CR Teams/email final. Toutes les demandes sont traitées.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.8 — préparer l’identifiant de diffusion

### Étape 4.8 — Construire une clé stable

#### Objectif
Identifier une édition sans horodatagechangeant.

#### Point de départ
Entre CR_HTML et APPROBATION, au niveau principal.

#### Avant de commencer
Tests J01/J02 clos ;pas destinations.

#### Manipulations à effectuer
1. + entre CR_HTML et APPROBATION ; Composer, nom Parcours, valeurA.
2. + après Parcours ; Composer Date Rapport, Entrées=jeton Date Rapport déclencheur.
3. + après Date Rapport ; Composer Revision, Entrées=jeton Revision déclencheur.
4. + après Revision ; Composer CleRapport.
5. Entrées de CleRapport=expression du tableau.
6. Save ; nepas utiliser utcNow dans la clé.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Parcours | A pourA, Bdanssecondflux |
| Date Rapport / Revision | Vrais jetons |
| CleRapport | concat(outputs('Parcours'),'/',outputs('GET_PROJET')?['body/ProjectRef'],'/',outputs('Date Rapport'),'/',outputs('Revision')) |


#### Résultat attendu
Cléprévisible :A|PRJ-2026-017|2026-10-13|K01 au prochain test.

#### Point de contrôle
Noms desComposeexactsetcléstable ; pas jetons littéraux.

#### Si le résultat est différent
Expression invalide :noms outputs ; entrée Text evides :remplir test ; caractères de la révision :utiliser codesfournissansapostrophes.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur. Tester J03 avant toute réservation, vérifier CleRapport dans le run et rejeter la demande de revue pour terminer ce test sans diffusion.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Noms desComposeexactsetcléstable ; pas jetons littéraux.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.9 — réserver cette clé avant la relecture

### Étape 4.9 — Ajouter la réservation unique

#### Objectif
Bloquer relance volontaire etcourseconcurrente avant approval/sends.

#### Point de départ
Après CleRapport et avant APPROBATION.

#### Avant de commencer
Title unique journal confirmée, droit Create autorisé.

#### Manipulations à effectuer
1. + → SharePoint Créer un élément/Create item.
2. Renommer RESERVE_JOURNAL.
3. Site SITE_TP,listePMO_CR_Journal.
4. Remplir les sixchamps d’après tableau de réservation.
5. Pour RunId, ouvrirfxetcollerfonctionworkflow fournie.
6. Save :si une clé existe,Create échoueraetstopperalescartesensuite par défaut.
7. Ne pas faire Get items/OData àce stade.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Title | Sorties CleRapport |
| ProjectRef | Jeton GET_PROJET.ProjectRef |
| Path | Sorties Parcours |
| Stage | Reserve |
| RunId | workflow()?['run']?['name'] |
| Details | Réservé avant relecture ; aucune diffusion. |


#### Résultat attendu
Une réservation unique avant APPROBATION.

#### Point de contrôle
Create utilisejournalpaslistedesprojets ; Title unique empêche la seconde création. Pasd’envoi avant elle.

#### Si le résultat est différent
Title unique nonactivée :bloquer la diffusion jusqu à correction ; forbidden :permission ; doublon K01 réutilisé :c’est un blocage attendu, nepas supprimer ligne pour continuer.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur. Tester K00 et rejeter la demande : la réservation K00 existe au Stage Reserve (mise à jour ajoutée4.10), aucun compte rendu diffusé ; cette clé ne sera pas réutilisée.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Create utilisejournalpaslistedesprojets ; Title unique empêche la seconde création. Pasd’envoi avant elle.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.10 — remplacer les simulations par les statuts journal

### Étape 4.10 — Tracer accord et rejet

#### Objectif
Conserver le lien entre run,approval et édition.

#### Point de départ
Branches AUTORISE, sorties simulationexistantes.

#### Avant de commencer
Réservation configurée et table mapping disponible.

#### Manipulations à effectuer
1. Dans Vrai, supprimer seulement SIMULATION_ACCORD (aucun destinataire).
2. Ajouter SharePoint Mettre à jour un élément ; nom JOURNAL_VALIDE.
3. Dans Faux,supprimer SIMULATION_REFUS.
4. Ajouter Update item JOURNAL_REJETE.
5. Renseigner les deux avec même ID de RESERVE_JOURNAL et les champs du tableau commun,Stage Valide ou Rejete.
6. Dans Faux, après JOURNAL_REJETE, ajouter Terminer avec Succeeded/Réussi.
7. Tester K01 en Reject ; puis K02 en Approve sans destination.
8. Vérifier journal Rejete/Valide et aucun sends.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| ID update | ID de RESERVE_JOURNAL, pas ItemId projet |
| Stage Vrai | Valide |
| Stage Faux | Rejete |
| Tests | K01 rejet ;K02 accord |


#### Résultat attendu
Réservations K01/K02 conservées,révisionsnonréutilisables.

#### Point de contrôle
Seuleslesnotificationsreviewexistent ; pas CR diffusé. Mapping commun complet et correct.

#### Si le résultat est différent
Update404 :mauvais ID ; champsperdus :recopier mapping explicite ; clé bloquée après K02 :nepastenter T01 avec K02 mais édition de TEST T01 prévue.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Seuleslesnotificationsreviewexistent ; pas CR diffusé. Mapping commun complet et correct.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.11 — ajouter et tester Teams seul

### Étape 4.11 — Ajouter Teams dans la branche approuvée

#### Objectif
Vérifier une première destination sans email CR.

#### Point de départ
Vrai de AUTORISE, après JOURNAL_VALIDE.

#### Avant de commencer
Lesrévisions K01/K02 sontconsommées ;TEAM_TP/CHANNEL_TP validés.

#### Manipulations à effectuer
1. + dans Vrai après JOURNAL_VALIDE.
2. Rechercher Teams ; choisir Publier un message dans une conversation ou un canal (Post message in a chat or channel), pas action deprecated.
3. Renommer POST_TEAMS.
4. Connexion : compte autorisé ; Postas=Flow bot si tenant commercial, si non User selon politique.
5. Postin=Channel ; sélectionner équipe/canal standard de test.
6. Message=Sorties CR_HTML, même contenu métier.
7. Dans Settings si Retry policy offert, choisir None/Aucune ; noter s’il absent.
8. Sous POST_TEAMS ajouter Update item JOURNAL_TEAMS, mapping commun, Stage TeamsPublie.
9. Save,tester T01,approuver,puis vérifier un message T01 et Stage TeamsPublie.
10. Ne pas ajouter mail tant que T01 est bloqué.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Carte | POST_TEAMS |
| Postas/Postin | Flow bot autorisé /Channel |
| Équipe/canal | TEAM_TP/CHANNEL_TP |
| Message | Sorties CR_HTML |
| Journal | JOURNAL_TEAMS Stage TeamsPublie |
| Test | Revision T01 |


#### Résultat attendu
Un message Teams intentionnelpour T01, sans email CR.

#### Point de contrôle
Même projet,chiffresformatés, bon canal et trace deRun ; pas de contenu mal formaté.

#### Si le résultat est différent
Teams403 :permissions/Workflows ; Flow botgovernment :User autorisé ; balises visibles : vérifier Message HTML/rendu ; après timeout inspecter canal avant relance.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Même projet,chiffresformatés, bon canal et trace deRun ; pas de contenu mal formaté.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 4.12 — ajouter email et statut final

### Étape 4.12 — Envoyer l’email et final is er la trace

#### Objectif
Obtenir le scénario complet après preuve Teams.

#### Point de départ
Vrai de AUTORISE, après JOURNAL_TEAMS.

#### Avant de commencer
T01 correct ; EMAIL_TEST contrôlé ; aucuneapprovalpending.

#### Manipulations à effectuer
1. + après JOURNAL_TEAMS → Office 365Outlook→Envoyer un email(V2), pas Outlook.com.
2. Renommer SEND_MAIL etauthentifiersiboncompte demandé.
3. À=EMAIL_TEST ;Objet=[TP A] CR +ProjectRef +Date Rapport +Revision du déclencheur.
4. Corps=Sorties CR_HTML ; code view </> si disponible pour éviter double échappement ; pas champ Is HTML inventé.
5. CC/BCC/pièces jointes vides. Settings Retry None si offert.
6. Après SEND_MAIL, Update item JOURNAL_DIFFUSE, mapping commun, Stage Diffuse et Details succès connecteurs/réception à contrôler.
7. Save,tester E01,approuver.
8. Vérifier message Teams E01 et mail CR E01 reçu, puis journal et historique.

#### Valeurs à saisir
| Champ | Valeur |
| --- | --- |
| To | EMAIL_TEST réel contrôlé |
| Subject | [TP A] CR +ProjectRef +Date Rapport +Revision |
| Body | Sorties CR_HTML |
| JOURNAL_DIFFUSE | Stage Diffuse |
| Test | E01, datecommune2026-10-13 |

#### Résultat attendu
UnCRdansdeuxdestinationspour E01 ; Stage Diffuse.

#### Point de contrôle
Le mail d’approbation n’estpas le mail CR ; succès action≠réceptionprouvée. Qu and on envoi échoue,pas relance automatique aveugle.

#### Si le résultat est différent
Connexion expirée :réauth ;invalid To :corriger boîte ; Teams déjà publié mais email failed :réservation E01 demeure, inspecter puis reprise ciblée.NereprenezpasavecE02sansautorisation.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Le mail d’approbation n’estpas le mail CR ; succès action≠réceptionprouvée. Qu and on envoi échoue,pas relance automatique aveugle.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 5.1 — vérifier Copilot puisconstruireB



### Modèle complet, disponible au point d’usage4.2

```text
COMPTE RENDU DE PILOTAGE — [Title]
Référence : [ProjectRef] — Date du rapport : [DateRapport du déclencheur]
Révision : [Revision du déclencheur] — Version données : [DataVersion]

1. Projet
Chef de projet : [ProjectManager]
Sponsor : [Sponsor]

2. Statut et avancement
Statut déclaré : [Status]
Avancement déclaré : [Progress] %

3. Situation budgétaire
Budget consommé déclaré : [BudgetUsed] %
Ce pourcentage n’est pas un CPI ni une preuve de dépassement final.

4. Faits marquants
[Highlights]

5. Risques
[MainRisk] — impact déclaré : [Impact]

6. Décision attendue
[ExpectedDecision]
Cette décision n’est pas approuvée par ce compte rendu.

7. Action proposée
[ProposedAction]
Responsable opérationnel et date : à confirmer si non fournis.

8. Échéance
[NextDeliverable] — [Deadline] (date source ISO)

9. Prochain comité
[NextMeeting]

Données fictives. Contenu mis en forme automatiquement, pas synthèse IA.
Valider la diffusion ne signifie pas approuver un renfort ou un GO projet.
```

### Mappings communs des journaux (4.10–4.12)

| Champ de Update item | Valeur à sélectionner |
| --- | --- |
| Site Address | SITE_TP |
| List Name | PMO_CR_Journal |
| Id | ID retourné par RESERVE_JOURNAL |
| Title | Sorties CleRapport |
| ProjectRef | ProjectRef de GET_PROJET |
| Path | Sorties Parcours |
| Stage | Texte exact Rejete / Valide / TeamsPublie / Diffuse selon carte |
| RunId | Expression workflow().run.name fournie |
| Details | Texte de dernière étape prouvée, pas de réception encore inconnue |


Lesupdates doivent recopier explicitementles6 champs pour conserver données. L’ID de création journal diffère de ItemId source. Le RunId estl’expression workflow().run.name du tableau ; aucune action Compose RunId n’est requise au niveau1. Conserver les noms exacts,ou adapter toutes références.

### Arborescence finale essentielle

```text
Manually trigger a flow : ItemId, DateRapport, Revision
GET_PROJET
BON_PROJET : ProjectRef attendu ?
  Faux -> Terminate Failed
  Vrai -> aucune action (la suite reste au niveau principal)
CR_Texte -> CR_Echappe -> CR_HTML
Parcours -> DateRapport -> Revision -> CleRapport
RESERVE_JOURNAL : Create item Title unique
APPROBATION : Start and wait for an approval
AUTORISE : outcome = Approve ?
  Faux -> JOURNAL_REJETE -> Terminate Succeeded
  Vrai -> JOURNAL_VALIDE -> POST_TEAMS -> JOURNAL_TEAMS
          -> SEND_MAIL -> JOURNAL_DIFFUSE
```

Level1 gardeuneprotectionminimumunique. Sans Get itemsprécheck, la2eréservationrefusée est une erreur technique normale qui protège l’envoi. Lefluxs’arrête par défaut si Create failed ;un message d’erreur toujours lisible/humanisé sera une extension.

Cesprotectionsne garantissentpasexactly-once interservices. Un504Outlook peut être une mail envoyé avec réponseperdue ;retrydefaultpeutlerenvoyer. Retry None si offert limite,maisn’éliminepastout risque. Inspecter boîte/canal avant retry. SendemailV2 neretournepasmessageId. [Microsoft : limites Outlook](https://learn.microsoft.com/fr-fr/connectors/office365/).

Teams : canalstandardetWorkflowsappautorisée,Flow bottenantcommercialsinonUser selon policy,~28Ko maxtexte+HTML. Ne pas sélectionner deprecated PostmessageV2/V3. [Microsoft : Teams](https://learn.microsoft.com/fr-fr/connectors/teams/).

ChecklistPhase4 : [ ]Guard projet [ ]CR format lisible [ ]Accord/rejet [ ]Clé unique avant diffusion [ ]Teams T01 [ ]Email+Teams E01 [ ]Receipts [ ]Journal+RunId [ ]Aucunrunpending. N’avancerpas si une erreur critiqueestnoncorrigée.

## Phase 5 — Reconstruire avec Copilot

L’infrastructurecommune n’estpas recréée. LechronoB commence àl’ouverture du champ Copilot ; pascopieA renommée. Copilot peutpréremplir des connexions/paramètres ;lesGreen/Red doiventêtrevérifiésavant Create flow. Le nouveau designer est requis pour édition Copilot. [Microsoft : création Copilot](https://learn.microsoft.com/fr-fr/power-automate/create-cloud-flow-using-copilot).

### Étape 5.1 — Ouvrir l’assistance Copilot dans Power Automate

#### Objectif
Tester disponibilité avant comparer.

#### Point de départ
Power Automate Accueil, même environnement.

#### Avant de commencer
Avalidé E01,socle commun prêtetmesuresAconsignées.

#### Manipulations à effectuer
1. Sur Accueil repérer Créer votre automatisation avec Copilot.
2. Si absent, vérifier nouveau concepteur etdisponibilitérégionale/tenant avec responsable.
3. Ne pas utiliser Créer/Aperçu de Copilot Studio comme substitut.
4. Démarrer chronomètreconstructionB seulement si la fonction est accessible.
5. Si non,inscrireBnonexécuté ; répétitionmanuellepeutentraînermais ne valide pas comparaison avec IA.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Périmètre | Copilot Power Automate auteurcloudflow |
| NomB | PMO_CR_B_Copilot |


#### Résultat attendu
Fonction Copilot identifiée ou limite consignée.

#### Point de contrôle
Pas achatlicence/credits/policychangé par participant ; Bnonexécuté ne vaut temps zéro.

#### Si le résultat est différent
Featuregrisée :région/tenant/settings ; demander responsable. A resteacquis etn’estpas une preuve d’exécutionB.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Pas achatlicence/credits/policychangé par participant ; Bnonexécuté ne vaut temps zéro.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 5.2 — décrire le même niveau essentiel

### Étape 5.2 — Générer un nouveau brouillon B

#### Objectif
Comparer création réel le, pas copieA renommée.

#### Point de départ
Accueil, champ Copilot.

#### Avant de commencer
Fiche SITE_TP/cibles,modèle CR et expressions prêts.

#### Manipulations à effectuer
1. Remplacer les paramètres entre crochets du prompt fourni.
2. Coller dans Créer votre automatisation avec Copilot.
3. Cliquer Générer (Generate), ouflèched’envoi si cette version l’utilise.
4. Lire trigger et cartes proposés ; demander correction si trigger automatique avant créer.
5. Conserver et continuer ; vérifierconnexionsvertes/rouges et sign in autorisé.
6. Créer un flux ; donnernomB exact.
7. Save sans Tester avantl’audit. Ne dupliquerpasA terminé.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Prompt | BlocessentielB |
| Nom | PMO_CR_B_Copilot |
| Socle | Même site,listes,données,canal,boîte et approbateur |


#### Résultat attendu
Nouveau flowB initial proposé par IA.

#### Point de contrôle
Seulsniveau1 demandé,pascomplexitéavancée ; aucun envoi en proposition.

#### Si le résultat est différent
Partiel :noter cartesmanquantes ; autre trigger :régénérer/refaire manuel ; connexionsnonconfigurées :compte/droits, pas inventer destinataire.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Seulsniveau1 demandé,pascomplexitéavancée ; aucun envoi en proposition.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 5.3 — corriger et valider la proposition

### Étape 5.3 — Auditer et compléter B

#### Objectif
Conserverfiabilitéetéquivalence.

#### Point de départ
ConcepteurB, propositionenregistrée.

#### Avant de commencer
Prompt généré,aucun run envoyé.

#### Manipulations à effectuer
1. Comparer les cartes àarborescenceessentielle fournie.
2. Vérifier Get item,source Id,code projet,types et jetons.
3. Vérifier réservation avant approbation,envois Vrai seulement,Outcome global et journal Id.
4. Parcours=B,sujet[TP B],mêmes formules/textes,mêmes cibles.
5. Pour correction ciblée, dire Copilot «Modifie [nom carte] pour [paramètre]» puis vérifier la carte.
6. Pour action manquante,+ au bon emplacement,recherche/connecteur et mapping des étapesniveau1.
7. Noterchaquecorrectionmanuelleouassistée ; aucune logique inexistante n’estacceptée.
8. Save test E01 dansB ;approuver,vérifier deux réceptions et journal.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Namespace | Parcours B ; même édition E01 autorisée une fois dansB |
| CR | Même contenu,différencesmétadonnéesA/B uniquement |
| Test | E01 dansB |


#### Résultat attendu
Béquivalentetpreuve deréception.

#### Point de contrôle
Pas moins de contrôles ni exécutionvertesansréception. Copilot peut configurer/préremplirconnexions, maisl’utilisateur contrôle le résultat.

#### Si le résultat est différent
Nom de carte in attendu :renommer ou adapter expressions, toutesoccurrences ; test failed après envoi :inspection,reprisecontrôléepasnouvelleéditionautomatique.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Pas moins de contrôles ni exécutionvertesansréception. Copilot peut configurer/préremplirconnexions, maisl’utilisateur contrôle le résultat.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 6.1 — exécuter les tests communs et mesurer



### Prompt essentiel à copier après remplacement des paramètres

```text
Crée un nouveau flux cloud instantané Power Automate nommé PMO_CR_B_Copilot.
Ce n’est pas un agent flow Copilot Studio. Ne lance pas le flux.
Déclencheur manuel, entrées ItemId Nombre, Date Rapport Text e ISO, Revision Text e.
Source SharePoint [SITE_TP], liste PMO_Projets_TP, Get item par ItemId dynamique.
Condition BON_PROJET : ProjectRef=PRJ-2026-017 ; sinon Terminate Failed.
Composer CR_Text e avec le modèle fourni ; données65/72/Orange etprototype23/10, action proposée et décision attendue restent non approuvées.
CR_Echappe puis CR_HTML, mêmes expressions que le cahier.
Composes Parcours=B, Date Rapport et Revision dynamiques, CleRapport=B|ProjectRef|Date Rapport|Revision.
Avant approval/sends : Create item RESERVE_JOURNAL dans PMO_CR_Journal, Title=clé unique,
ProjectRef,Path,Stage Reserve,RunId=workflow().run.name,Details. Toute clé existante échoue et stoppe la diffusion ; aucune relance aveugle.
Standard approvals Start and wait, First to respond, Assigned to [APPROVER_TEST],Details=CR_Text e ; confirmation de diffusion seulement.
Condition AUTORISE : Outcome global=Approve ; faux Update journal Rejete et Terminate Succeeded.
Vrai : Update journal Valide ; Teams Post message in a chat or channel dans [TEAM_TP]/[CHANNEL_TP],
Message=CR_HTML ; Update journal TeamsPublie ; Office 365Outlook Send an emailV2 à [EMAIL_TEST],
sujet[TP B] CR+référence/date/révision,Body=CR_HTML ; Update journal Diffuse.
Aucun out il IA runtime/AI Builder/HTTP/webhook/trigger automatique ; CC/BCC vides.
Retry None sur les actions d’envoi si configurable ; pasgarantieexactly-once.
N’ajoute pasScopetry/catch,Get items/OData,archive ou pièces jointes au parcours essentiel.
Les connexions et paramètres sontvérifiés humainement. Indique ce que tu n’as pas créé/configuré pourcomplément manuel.
```

Copilot partiel : compléterparlesmêmesétapesA4 et compter corrections. Unnomd’actioninventé dans un texte n’est pas un connecteur réel. La sourceB,toneCR,approval et destinations ne doiventpasêtresimplifiés. Pas Scopes/archive/JSON parserautomatiquementacceptésjustepourparaîtrecomplets.

ChecklistPhase5 : [ ]Copilot disponible ou limite [ ]NouveauB [ ]Même contenu/contrôles [ ]Parcours B [ ]Correctionsnotées [ ]B_E01 vérifié. None xécuté restera telquel.

## Phase 6 — Tester et mesurer

### Étape 6.1 — Contrôler les deux versions et comparer

#### Objectif
Mesurerl’expérience au lieu d’imposer ungain.

#### Point de départ
FlowsA/B finalisés,fiche de réception et classeur.

#### Avant de commencer
Lesrévisionsconsommées sontnotées et les runs actifs traités.

#### Manipulations à effectuer
1. Vérifier les deux E01: chiffres,format,approval,journal,cibles.
2. Relancer E01 volontairement dansA puisB ; réservation doit échouer avant nouveau send.
3. Tester une nouvelle édition REJ1 puis Rejeter :0CRfinal.
4. Faire les autres tests table sur copies/autorisés.
5. Remplir construction/correction/test et nombres réels.
6. ContrôlequalitéidentiquepourA/B etdistinctiontestnonexécuté.
7. Inscrirederniercheckpoint ; désactiver flow à fin selon règles sans suppression traces.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Comparaison | Mêmes niveau1,données,destinataires,CR et critères |
| Gain | TA−TB ; ne pas inclure le commun seulementdansA |


#### Résultat attendu
Grille tests/mesures complèteetlimitesconsignées.

#### Point de contrôle
None xécuté ≠zéro ;run vert≠CR validé ;simulations/notifications ne sont pas réceptions CR.

#### Si le résultat est différent
Temps non comparable :clarifierpérimètre et attente,signalerbiaisapprentissage ; erreurs bloquéesne sontpascompenséesparvitesse ; pausedflowpendingdemanderrelecturepourclôturer.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : None xécuté ≠zéro ;run vert≠CR validé ;simulations/notifications ne sont pas réceptions CR.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 7.1 — passer à l’extension facultative ou remettre le niveau1



| ID | Cas/édition | Action | Attendu |
| --- | --- | --- | --- |
| C01 | LectureR00 | Lire sans diffusion | GET/CR corrects,0send et0réservation |
| C02 | Guard projet | IDd’uneautreréférence en copie autorisée ou donnée incorrecte contrôlée | ArrêtSOURCE_INCORRECTEavantCRdiffusion |
| C03 | ApprovalJ01/J02 | Accord et rejet sans destinations | Bonnes branches,0CRdiffusé |
| C04 | RéservationsK01/K02 | Rejet puis accord sans destinations | JournalRejete/Valide,clésconservées |
| C05 | TeamsT01 | Accord etcanalseul | 1messageT01,StageTeamsPublie,sansemailCR |
| C06 | FullE01 | Approuver | 1messageE01+1emailCRE01+StageDiffuse,réceptionvérifiée |
| C07 | DoublonE01 | Relancermêmepath/date/révision unefois | Createjournalrefuseduplicate,aucunapproval/sendnouveau |
| C08 | REJ1 | Nouvelleéditionprévue,rejet | StageRejete,0diffusionfinale,notificationreviewpossible |
| C09 | Sourceintrouvable | IDconfirméabsent | Getitemfailed,0approval/send,tracehistorique |
| C10 | Rendu | Danscopieautorisée,Highlights avec AT&T <prototype>,éditionFMT1 | Texteaffichésansbaliseactive ;sourceV1 restauréeavantB |
| C11 | Permission/connexion | Erreur observée en sandbox sansretirerdroitpartagé | Diagnosticauth/403/policy ;aucunsuccèsprétendu |
| C12 | Échecpartiel | Observerunvraifailedouanalyserscénariofictif | Destinations/journal/runinspectés,aucunerelanceaveugle |


Taux de tests réussis=attendusobservés/exécutés ;Rejet correct est test réussi, run vert sans CR reçu ne l’estpas. Les erreurs de permissions se font uniquement en sandbox/copies ; pasretraitdroitpartagé ni adresse externe pourforcerbounce.

### Fiche de comparaison simple

| Indicateur | Sans Copilot A | Avec Copilot B |
| --- | --- | --- |
| Temps construction | À mesurer | À mesurer |
| Temps correction | À mesurer | À mesurer |
| Temps test | À mesurer | À mesurer |
| Nombre corrections | À compter / évaluer | À compter / évaluer |
| Tests réussis/exécutés | À compter / évaluer | À compter / évaluer |
| Qualité finale | À compter / évaluer | À compter / évaluer |


Gain=(construction+correction+tests)A−mêmetotalB ;réduction=Gain/TotalA×100 ;facteur=TotalA/TotalB. Pasratioquandtempsnonmesuréou0 ;nonsuccèsnonassimiléàtempsnul. Pasd’exemple3h/30imposantrésultat.

Travail actif et attente approval/sources distingués dans preuve ;la préparation commune est partagée etcoûtcompletimputé identiquement. AensuiteB favoriseBparapprentissageetconnexionsdéjàprêtes :noter biais.Niveau2 ne secomparepascontre niveau1.

ChecklistPhase6 : [ ]Mêmes tests [ ]Rejet/doublon preuve [ ]Mesures réel les [ ]Correctionsetattentesnotées [ ]Limites/historique [ ]Qualité identique. Remettreniveau1ouchoisirphase7.

## Phase 7 — Perfectionnement facultatif

Aucun decesateliersn’est requis pour la première lecture ou diffusion. Compétencessupplémentaires : archivage documentaire,Get items/filter/OData,Try/Catchsûrreadonly,diagnosticpartial et gouvernance retries/reprise.

### Étape 7.1 — Archiver un CR approuvé dans une copie

#### Objectif
Ajouter une sortie documentaire sans bloquer la première réussite.

#### Point de départ
FlowAvalidé, page Mes flux.

#### Avant de commencer
Niveau1 acquis ;dossier04_COPIL et droits documents préparés.

#### Manipulations à effectuer
1. Sur le flow validé, utiliser Enregistrer sous/Save as si disponible et nommer PMO_CR_A_Avance ; sinon reconstruire unecopieàpartirdesétapescore sansmodifieroriginal.
2. Dans copie, Vrai AUTORISE, entre JOURNAL_VALIDE et POST_TEAMS, +SharePoint Créer un fichier ;nom ARCHIVE_CR.
3. Site SITE_TP ;Folder Path naviguerlibrairiéréelle vers04_COPIL, pas chemin local.
4. Nom de fichier=expression du tableau ;File Content=Sorties CR_HTML, pasbase64.
5. Save,test ADV01 approuvé ; vérifier archive+deux destinations.
6. Tester ADV02 rejeté :aucun fichier CR final.

#### Valeurs à saisir
| Champ | Valeur |
| --- | --- |
| Flow | PMO_CR_A_Avance |
| Folder Path | CR_FOLDER_PATH réel via sélecteur |
| File Name | concat('CR_',outputs('Parcours'),'_PRJ-2026-017_',outputs('Date Rapport'),'_',outputs('Revision'),'.html') |
| File Content | Sorties CR_HTML |
| Tests | ADV01 accord /ADV02 rejet |

#### Résultat attendu
Fichier HTML approuvé, pasconversionWord/PDF automatique.

#### Point de contrôle
Archivage placé dans branche Vrai avant diffusion ;réservationpréservée. Fichier peut exister même si envoiplustardéchoue.

#### Si le résultat est différent
Folder introuvable :picker et permissions ; nom collision :inspecter, pasclé supprimée ; HTML previewbloqué :télécharger si lecteur autorisé.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Archivage placé dans branche Vrai avant diffusion ;réservationpréservée. Fichier peut exister même si envoiplustardéchoue.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 7.2 — explorer la prédétection de doublons sans envoi

### Étape 7.2 — Lire une réservation dans un mini-flux de diagnostic

#### Objectif
Comprendre OData/collection sans restructurer tous les envois.

#### Point de départ
Nouveau flow diagnostic, pas copie avec Sends actifs.

#### Avant de commencer
Journal unique prêt ;essentiel A_E01 diffusé.

#### Manipulations à effectuer
1. Créer PMO_CR_Diagnostic_Doublon, trigger manuel mêmes3entrées.
2. Refaire lecture GET_PROJET etComposes Parcours=A,Date Rapport,Revision,CleRapport commeNiveau1.
3. +SharePoint Get items/Obtenir les éléments ;nom CHERCHE_JOURNAL.
4. Site SITE_TP,ListePMO_CR_Journal ;Advanced Parameters activer Filter Query et Top Count.
5. Filter Query taper Title eq puis apostrophe,insérer Sorties CleRapport,fermerapostrophe ;pas espace dans valeur.
6. TopCount1.
7. Composer NbReservations avec expression du tableau ; Save/Test E01 puiséditionabsenteTESTABSENT.
8. Aucun Approval/Teams/Outlook danscemini-flux.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Filtre exécuté | Title eq 'A/PRJ-2026-017/2026-10-13/E01' |
| NbReservations | length(body('CHERCHE_JOURNAL')?['value']) |
| Top Count | 1 |


#### Résultat attendu
Unecollectionvalue comptée ;1si déjà réservée,0si absente.

#### Point de contrôle
Ce tester lecture n’estpasunverrou. La réservationuniqueduniveau1 resteprotection contre concurrence.

#### Si le résultat est différent
Filter400 : apostrophes/nom interne Title ; array Token n’estpas source Projet ;pasLoopquienvoieautantdemailsquerows.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Ce tester lecture n’estpasunverrou. La réservationuniqueduniveau1 resteprotection contre concurrence.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 7.3 — ajouter une trace d’erreur dans la copie

### Étape 7.3 — Apprendre Try/Catch sur un diagnostic sans envoi

#### Objectif
Tester un vrai échec de lecture sans risquer des messages en double.

#### Point de départ
Power Automate, création d’un nouveau flux indépendant.

#### Avant de commencer
Niveau1 validé ; droit lecture projet/écriture journal ; ID absent identifié.

#### Manipulations à effectuer
1. Créer flux instantané PMO_CR_Diagnostic_Erreur, déclencheur manuel ItemId Nombre.
2. Ajouter un Scope Contrôle nommé TRAITEMENT.
3. À l’intérieur de TRAITEMENT, SharePoint Get item nommé GET_PROJET : SITE_TP,PMO_Projets_TP,Id=jeton ItemId.
4. Sous cette lecture, dans Scope, ajouter Composer EXTRAIT avec Title dynamique ; aucun send.
5. Au niveau principal, après TRAITEMENT, ajouter Scope ERREUR_TECHNIQUE,sœur et nonenfant.
6. Dans ses Paramètres/Run after choisir TRAITEMENT Failed et Timedout seulement, pas Success.
7. Dedans,Créer item ERREUR_JOURNAL dansPMO_CR_Journal selon tableau, puis Terminer Failed.
8. Save.Test bon ITEM_ID : EXTRAIT correctetCatch Skipped.
9. Tester ID réellement absent :GET échoue,Catchvisible,ERROR ligne si SharePoint accessible,pas rapport diffusé.
10. Ne pasgreffer les deuxgraphes entiers surA : l’intégration d’unTry autourdeprod nécessite une revue dédiée.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Title ERROR | concat('ERROR/A/',workflow()?['run']?['name']) |
| ProjectRef / Path | PRJ-2026-017 (cible du job) /A |
| Stage / RunId | ErreurTechnique /expression workflow().run.name fournie |
| Details | Erreur de lecture : consulter historique, aucune diffusion effectuée. |


#### Résultat attendu
Deux scopes etun diagnostic de succès/échec réel, sans Teams/mail.

#### Point de contrôle
ScopeCatch n’existe pasdansTRY ; actionsreadonly ne peuvent pas dupliquer unsend. Pas de garantie ERROR externe si SharePoint panne.

#### Si le résultat est différent
Catchsuccessrun :is Successful àdécocher ;Catchabsent :mauvaishierarchie/Run after ;si ERROR create échoue, l’historique reste preuve. Terminate peut configurer Run after tous résultats de ERREUR_JOURNAL pour arrêt explicite.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : ScopeCatch n’existe pasdansTRY ; actionsreadonly ne peuvent pas dupliquer unsend. Pas de garantie ERROR externe si SharePoint panne.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : 7.4 — analyser une reprise partielle

### Étape 7.4 — Analyser une reprise après résultat partiel

#### Objectif
Ne pas dupliquer Teams pour réparer email ou journal.

#### Point de départ
Historique d’une copie test et destinations.

#### Avant de commencer
Échec réel observé ou lecture du scénario fictif explicite ;paspermissionspartagéesretirées.

#### Manipulations à effectuer
1. Lire statut de chaque carte et Inputs/Outputs.
2. Vérifier directement canal et boîte ;un504peutsignifieractionacceptéemaisréponseperdue.
3. Lire journal :Valide/TeamsPublie/Diffuse peutêtreplusancienqueleffetréel si Update échoué.
4. Noter clés/éditions envoyées et demander accord de reprise.
5. Réparer uniquement étape non réalisée,dans procédure ciblée autorisée ;pas changer Revision pourtoutréexécuter.
6. Comparer retry None au comportementpardéfaut ; politiquesexponentielles sur lecturespeuventêtrepertinentes,pas paramètre retry illimité aux Sends.

#### Valeurs à saisir
| Paramètre / champ | Valeur exacte ou source |
| --- | --- |
| Décision reprise | Humaine et documentée, jamais automatique |
| Preuves | RunId,canal/boîte,journal et statut connexion |


#### Résultat attendu
Analyseclaire etlimitesassumées, pasfaussegarantie exactly-once.

#### Point de contrôle
Toutesdestinationsréellesinspectéesavantreprise ;clérétendue àjour sans effacerhistoriques.

#### Si le résultat est différent
Pas de service réel failed :exercice analyse de scénario, non exécution ; pasadresseextrené utilisée pourforcerunbounce.

#### Sauvegarde
Cliquer Enregistrer (Save) et attendre la confirmation, puis résoudre tout message du vérificateur.

#### Passage à l’étape suivante
> Avant de continuer
> - Condition : Toutesdestinationsréellesinspectéesavantreprise ;clérétendue àjour sans effacerhistoriques.
> - Éléments à conserver : fiche de paramètres, nom du flux, dernière étape validée et preuve de ce contrôle.
> - Vérification : si le résultat attendu manque, corriger ci-dessus ; ne pas avancer avec une étape bloquée.
> - Action suivante : Fin — remettre carnet,tests,mesures et limites



La conversiondeprod entière en Scopes n’estpas une simple opération de dessin,etneréparepas un mauvais mapping. Lesminiflows avancésapprennentla technique sans risquerd’envoisdupliqués. Si vousévoluezlegroupage,en faire une copie contrôlée ; nepasgarderdeuxfoislesSends.

Les documents.mpp peuventêtrestockés/référencés mais pas automatiquement analysés par Get file content ;les connexions/IDs de fichiers sont autreatelier. La vidéo citée dansV2n’estpas prérequis de modèle,cette versionrepose sur procédure autonomeetdocs Microsoft.

ChecklistPhase7 : [ ]Copie/miniflowdistinct [ ]ÉditionsADVnotées [ ]Archive autorisé [ ]Erreursobservéesoucasfictif déclaré [ ]Reprise jamais aveugle [ ]Limites Doc/transaction expliquées. Lesextensionsnonexécutéesn’affectentpasvalidationniveau1.

## Dépannage local et arbre de décision

Chaqueétapepossède ses corrections. Pourunblocagepersistant :arrêter phase,noter Symptôme/Action/RunId/Expected/Observed,ouvrir Inputs/Outputs,qualifiercause puis répareretretest avant continuer. Ne pas demander au formateur «ça ne marchepas»sans repère.

Source403→compte/site/droits ;Get404→Id/liste ;dynamique absent→carte productrice/liste/save ;waiting→approval à traiter ;send failed→cibles/connexion et effets réels ;dupejournal→clé existante et trace ;Copilot absent→tenant/region et non exécuté.

Sans Teams canal, variante to myself/chat personnel autorisée peut servir,mais ne valide pas canal ;mêmevariantA/B. Sans Approvals :préparationreadonly, pas diffusion automatique sensible. Sans Outlook :Compose n’est pas une mail. Aucune policy contournée.

## Checklist de remise et notation

[ ]Carteprogression [ ]Checkpoint+version [ ]Ficheparams locale [ ]CR données fidèles [ ]ApprovalbeforeDiffusion [ ]Réservation unique [ ]Destinations autorisées [ ]Réceptions [ ]Journal/history [ ]MêmemétierA/B [ ]Mesures [ ]Cas non exécutés [ ]Absence se cr et [ ]Flowdésactivéàfin si requis.

| Critère | Points | Preuve |
| --- | --- | --- |
| Source et paramètres | 10 | Bon projet/types/Id ;modepréconfiguré/autonome déclaré |
| Déclencheur/jetons/actions | 15 | Progression lecturepuisguard,aucunloop inutile,étapescorrectes |
| CR fidèle | 20 | Neufrubriques,65/72/23oct,décisionnonapprouvée,HTMLlisible |
| Teams | 10 | Canalstandard autorisé etréceptionT01/E01 |
| Email | 10 | Boîtecontrôlée,mailCR reçu,notificationreviewdistinguée |
| Tests et fiabilité | 15 | Rejet/doublon prouvés,historique,limites/reprise |
| Comparaison | 10 | NouveauB,même socle,mesuresréelles etnonexécuté déclaré |
| Sécurité et validation | 10 | ApprovalavantSends,réservationunique,moindreprivilege,aucunsecret |
| Total | 100 |  |


Seuilindicatif70/100 ;approval/rejet/doublon etréceptionessentiels. Préconfigurationdesressourcesn’est pas création par participant etvariantechatn’est pas canal. Un flow généré rapidement mais failed ne reçoitpaspleinevalidation. SourceFieldguard date/rôleshumains et permissions restent obligatoires.

## Guide formateur et limites de livraison

Guide séparé,pas nécessaire à la manipulation ;contient audit,concepts/architecture,mappings,testattendus,gestiondespausesetméthodecomparative. Lesfichiersassets/données sont fictifs,leZIPest une archive pédagogique pas package Power Automate importable.

Lesfonctions ontété confrontées aux sources officielles Microsoft indiquées.Dossieranalyséentier etcohérencevérifiée localement ; aucun tenant réel n’aété exécuté ni aucun site/flow/email/message créé par le générateur. La validation locale reste nécessaire avant formation.
