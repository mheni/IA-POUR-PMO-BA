# Modèles et expressions — parcours Power Automate V3

Utiliser au point d’usage du cahier. Les crochets du modèle sont à effacer puis remplacer par les vrais jetons ; les formules se collent dans fx sans=Excel ni guillemets extérieurs.

## Modèle court

```text
PROJET — [Title de GET_PROJET]
Référence : [ProjectRef de GET_PROJET]
Statut : [Status de GET_PROJET]
Avancement : [Progress de GET_PROJET] %
Budget consommé : [BudgetUsed de GET_PROJET] %
Données fictives — test de lecture, aucune diffusion.
```

## Modèle complet

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

## CR_Echappe

```text
replace(replace(replace(outputs('CR_Texte'),'&','&amp;'),'<','&lt;'),'>','&gt;')
```

## CR_HTML

```text
replace(outputs('CR_Echappe'),decodeUriComponent('%0A'),'<br>')
```

## CleRapport

```text
concat(outputs('Parcours'),'|',outputs('GET_PROJET')?['body/ProjectRef'],'|',outputs('DateRapport'),'|',outputs('Revision'))
```

## RunId dans journal

```text
workflow()?['run']?['name']
```

## Outcome fallback

```text
body('APPROBATION')?['outcome']
```

## NbReservations niveau2

```text
length(body('CHERCHE_JOURNAL')?['value'])
```

## Prompt Copilot essentiel

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

## Mappings journal

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
