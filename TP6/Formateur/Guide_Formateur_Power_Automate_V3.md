# Guide formateur — Power Automate V3, parcours guidé

Ce guide remplace le corrigé V2 pour l’animation de la refonte. Données fictives PRJ-2026-017.

## 1. Préparer la séance

Ressources recommandées préconfigurées : site privé, PMO_Projets_TP et ligne V1, PMO_CR_Journal avec Title unique, droits Create/Update, canal Teams standard et Workflows autorisée, boîte Exchange Online contrôlée, approbateur habilité et policies compatibles.

Vérifier disponibilité Copilot séparément. Ne pas acheter/activer une capacité pour finir le TP ; un service indisponible reste non exécuté. Création des ressources préconfigurées ne doit pas être attribuée au participant.

## 2. Principes d’animation

Première réussite : Trigger → GET_PROJET → CR_Texte, sans diffusion. Introduire ensuite le contrôle projet, format, approval, réservation, Teams puis email. Chaque étape possède Save/Test/contrôle et transition. Ne pas montrer tout le graphe avancé avant le résumé readonly.

Respecter les éditions du cahier ; toute clé réservée est conservée, même rejet/échec. Ne pas lancer un nouveau run pour remplacer une attente d’approbation.

## 3. Architecture essentielle

```
Déclencheur manuel ItemId/DateRapport/Revision
GET_PROJET → BON_PROJET
  Faux : Terminate Failed
  Vrai : poursuite au niveau principal
CR_Texte → CR_Echappe → CR_HTML
Parcours → DateRapport → Revision → CleRapport
RESERVE_JOURNAL (Title unique)
APPROBATION → AUTORISE (Outcome=Approve)
  Faux : JOURNAL_REJETE → Terminate Succeeded
  Vrai : JOURNAL_VALIDE → POST_TEAMS → JOURNAL_TEAMS
         → SEND_MAIL → JOURNAL_DIFFUSE
```

Pas Get items/OData ni Scope/Catch obligatoire avant première diffusion. La réservation minimum protège les relances volontaires et concurrence ; les Scopes, archivage et diagnostic approfondi sont des extensions.

## 4. Valeurs et mappings attendus

Projet Modernisation du système d’information, ProjectRef PRJ-2026-017, chef fictif Alexandra Rey, statut Orange, avancement65, budget consommé72, Deadline texte2026-10-23, DataVersionV1. Action fournisseur proposée, renfort attendu, date exacte du prochainCOPIL inconnue.

GET_PROJET : Site Address=SITE_TP, List Name=PMO_Projets_TP, Id=ItemId numérique du déclencheur, pas la référence métier.

JournalCreate : Title=CleRapport, ProjectRef source, Path=Parcours A/B, StageReserve, RunId fonctionworkflow, Details. UpdateId=ID de RESERVE_JOURNAL ; recopier sixchamps et stageRejete/Valide/TeamsPublie/Diffuse selon étape.

Approval : First to respond, Assigned to compte réel test ; Details CR_Texte. Outcome global, pas tableauResponses. Valider le CR ne valide pas le renfort ou GO. Notifications de relecture et emailCR final sont différents.

Teams : action nondeprecated Post message in a chat or channel, canalstandard autorisé, contenuCR_HTML. Outlook : Office365 Send an emailV2, To contrôlé, BodyCR_HTML, sujet identifiable A/B/révision.

## 5. Corrections et tests essentiels

- R00 : lecture correcte et zéro diffusion.
- J01/J02 : accord/rejet sans destinations ; branches correctes.
- K01/K02 : journaux Rejete/Valide, zéro CR final à ce stade.
- T01 : Teams seul, un message identifié, journalTeamsPublie.
- E01 : un message et un emailCR, mêmes chiffres, journalDiffuse et réception prouvée.
- E01 répété : réservation unique refuse avant toute nouvelle approbation/diffusion.
- REJ1 : rejet d’une édition prévue, zéro CR final ; notificationreview possible.
- Source absente : écheclecture, aucune destination.

Un run vert avec réponse fausse ou mauvaises cibles n’est pas réussi. Un rejet correctement traité ou une duplication correctement bloquée est un test réussi.

## 6. Pauses et pannes

Noter nomflow, environnement, checkpoint, édition, RunId, branche/stage et demandes encore enattente. Faire traiter les demandes avant modifier ; Turnoff ne garantit pas l’arrêt d’un run actif.

Après Teams réussi mais email échoué, inspecter canal/boîte/journal avant reprise ciblée autorisée. Ne pas effacer la clé ni changer révision pour tout rejouer. Un timeout peut suivre un envoi accepté ; RetryNone limite mais ne garantit pas exactly-once.

## 7. Comparaison Copilot

Nouveau B, même niveau1 et mêmes cibles. Infra préparée une fois, mêmes coûts communs si comparaison complète. Mesurer construction/correction/test sans doublecompter la relecture/attente. Effet d’apprentissage A puis B à signaler. B non exécuté ne devient jamais temps0.

## 8. Notation

| Critère | Points |
| --- | ---: |
| Source et paramètres | 10 |
| Déclencheur/actions/jetons | 15 |
| CR fidèle | 20 |
| Teams reçu | 10 |
| EmailCR reçu | 10 |
| Tests/fiabilité | 15 |
| Comparaison mesurée | 10 |
| Sécurité/validation humaine | 10 |
| Total | 100 |

Seuil indicatif70/100, protections/rejet/doublon et réception indispensables. Préconfiguration n’est pas création, chat personnel n’est pas canal et simulation n’est pas exécution. Toute diffusion avant accord/cible nonautorisé/invention engageante impose correction.

## 9. Limites

Ce guide est dérivé de la refonte et des documents officiels vérifiés dans le cahier, pas d’un tenant testé. Les scripts/modèles sont des aides, pas un package importable. Les tests en sandbox sont nécessaires. Les pièces charte/cahier/planning restent consultables pour extensions ; la V2 ne doit pas être utilisée comme procédure de niveau1.
