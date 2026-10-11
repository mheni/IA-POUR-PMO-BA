# Corrigé formateur — Power BI/Copilot et pipeline PMO

Document réservé — Cas fictif PRJ-2026-017 — Version11octobre2026

## 1. Préparer les ressources et ne pas surpromettre

Avant distribution, publier le classeur dans le site autorisé OU faire réaliser les étapes P2/P3 aux participants habilités. Remplir le registre des URL exactes et tester avec un lecteur, pas seulement owner. Aucun lien public n’a été publié ni vérifié pour le jeu sur mesure lors de la génération ; le fichier livré est la source de remplacement à héberger.

L’interface Power BI et les prérequis Copilot ont été vérifiés sur docs officielles, les chiffres par calcul, pas par une exécution dans votre tenant. Aucun faux PBIX ni run prérempli. Le pack contient fichiers sources, DAX et scripts de copie, pas un modèle déjà déployé.

A local peut être réalisé sans Copilot. Publication partagée, lecteurs, APIQuery et Copilot exigent des droits/licences/capacités différents. Pro/PPU seul ne valide pas Copilot ; F2 supportant Copilot ne dispense pas tous lecteurs du Pro. PaidF2/P1 ou configuration Copilotcapacity habilitée ; settings/régions ; pas Trial. [Microsoft : prérequis](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-enable-power-bi).

Trois heures A et trente minutes B sont hypothèses. B30 porte sur sous-tâches assistées, pas préparation complète ni cloud/pipeline. Mesurer effectif et biais d’apprentissage, service waiting et corrections.

## 2. Jeu et nettoyage

Neuf tables structurées, une feuille d’information hors modèle. Les lignes raw/propre : Projets1, Responsables6, Taches13→12, Jalons6, Risques5, Incidents2, Dependances13, Actions5, Etat1.

Retirer une copie exacteT12 en vérifiant toutes colonnes identiques ; Trim/CleanT06 ; convertirBudgetT05 de texte30000 à nombre ; AvancementPct/100 donneAvancement0–1. Owner / Mitigation RK04 passent de null àNon precise, pas à un nom imaginé ; date manquante reste null. Coûts et dates doivent garder leurs types et valeurs.

Ne pas interpréter la baisse62,5→65 après doublon comme gain réel projet : c’est une correction de données. Importer feuilles et tables en double, ou utiliser moyenne simple, fausse les cartes.

## 3. Modèle

Projets.ProjectRef1→Taches/Jalons/Risques/Incidents/Dependances/Actions.ProjectRef*. Responsables.ResponsibleID1→Taches.ResponsibleID*. Filtre simple, actives. Etat déconnectée/unique. Pas bidirectionnel ouMany-to-many pour cacher doublons.

SegmentProjet surSynthese. SegmentResponsable surTaches seulement : coût/Budget autoriséglobal ne représente pas nécessairement consommation d’un budget individuel et les risques ne sont pas reliés par cette dimension. Le scope doit être expliqué, pas masqué.

Les dépendances FD/DD fournies rendent le parallélisme explicite. Pas de calendrier/ressources/algorithmeCPM complet dans Power BI : ne pas affirmer un chemin critique ni une date prédite par une simple table.

## 4. Résultats de référence

| Contrôle | Résultat S01 | Justification |
| --- | --- | --- |
| Tâches | 12 | 13 lignes brutes dont une copie exacte de T12 |
| Avancement | 65,0 % | 650 heures équivalentes réalisées /1000h prévues |
| Moyenne simple | 61,25 % — incorrect pour cet objectif | Même poids donné à des tâches de charges différentes |
| Budget autorisé/prévu | 300000 EUR | Somme des allocations et budget dimension |
| Coût réel | 216000 EUR | Somme des coûts |
| Budget consommé | 72,0 % | 216000/300000 |
| Budget non consommé | 84000 EUR | Pas économie ni garantie du reste à faire |
| Charges | 1000h prévues,725h consommées | Effort et avancement distincts |
| Retards actifs | T05/T06,4 et1 jours calendaires | Fin12/15 octobre avant DateEtat 16 ; progress<100 |
| Terminé en retard | J02/J03/J04 | Historique, pas retards actifs de tâches |
| Menaces | J05/J06 | Statut source Menacé, pas CPM/IA prédictive |
| Risques | 5 ouverts,2score≥15,1owner manquant | RK04 owner/mitigation à qualifier |
| Incidents/actions | I01 ouvert,A01 en retard | Événement réalisé et échéance15/10 |
| Obsolescence | T08 | 08/10→16/10=8jours, tâche active |
| Filtre Lina | 2 tâches,180h,88,89%,1retard | T03/T06 ;160h équivalentes/180 |
| S02 | 66,4%, autres budgets inchangés | T07 de50→60 ajoute14h équivalentes |


DateEtat 16/10/2026, VersionSource S01. Le dataset est fictif ; TODAY au11/10 ferait disparaître les retards attendus. Un rapport doit afficher son as-of et sa version.

La charge pondérée est une convention pédagogique justifiée. Elle n’est pas une valeur acquise approuvée. Malgré budgets par tâche, PV/méthodeEV ne sont pas validées : pas de SPI/CPI calculés ni EAC inventé. Budgetconsommé72% reste consommation, pas preuve de dépassement final.

## 5. DAX et contrôles

Les24 mesures et3 colonnes du fichier DAX sont la solution proposée. Créer une définition à la fois. Les comptes vides utilisentCOALESCE0 ; ratios indéfinis ne sont pas remplacés par un succès artificiel. Les RetardActif/JoursRetard/MAJObsolete s’évaluent au refresh avec Etat, pas au clic d’utilisateur sur une nouvelle date.

Une requête DEFINE MEASURE peut être exécutée sans créer de mesure persistée ; il faut Update model with changes/CodeLens ou saisir Nouvellemesure. Le modèle doit exposer les noms exacts utilisés par requête reporting. [Microsoft : DAX query view](https://learn.microsoft.com/en-us/power-bi/transform-model/dax-query-view).

PromptsCopilot : contexte chargé, règles de pondération et de dates, noms exacts et exigences. Faire contrôler64/65 ouBudget0,72 type avant appliquer. Si Copilot proposeAverageAvancement, recadrerSUMX pondéré ; s’il inventeun owner, refuser.

## 6. Rapport et synthèse attendus

Trois pages, pas objetDashboardDesktop fictif. Synthese cartes65/72/2/2/2, date/version ; budgets/coûts et progression parPhase ; menaces. Taches exceptionsT05/T06 etT08. Risques five owners/mesures/actions/incident, conserverRK04.

Exemple exécutif :

« Au16/10, le projet déclare65% d’avancement pondéré et72% de consommation du budget autorisé. Deux tâches sont en retard et prototype/production sont déclarés menacés. La confirmationfournisseur et la qualitédesdonnées sont prioritaires. L’accès n’a pas de propriétaire/mesure et T08 manque d’actualisation. Le renfort temporaire, les créneaux métier et l’attribution du contrôle d’accès demandent des arbitrages ; aucune décision n’est automatiquement approuvée. »

Ne pas utiliser cette synthèse comme preuve que le retard final sera deXjours. Le statutOrange vient de la source ; la politique de feuvert n’est pas reconstruite après coup.

Copilotpages et narrative nécessitent visuels/modèle adéquats, permissions/capacité. Une réponse du panneau n’est pas unevisualisation enregistrée. Les recommandationsplannettoyage n’ont pas changéPower Query tant que l’action n’estpas réalisée.

## 7. Refresh et source

Le fichier cloud est stable, nom ettables conservés ; filtreName+FolderPath unique et authOrganisation. ModeLocal fonctionneDesktop mais n’estpascloudrefreshsansgateway/reconnexion. SharePointOnline seulesources accessible peutseconnecterdirectement ; vérifierconnexionsmodèleOAuthService séparées deDesktop.

TestS02 : T07Avancement50→60, LastMAJ16/10, versionS02 et mêmeDateEtat. Avancement66,4%, budgets216000/300000 etretards2 inchangés. L’upload conservelemêmefichier/emplacement ; pasrenamequi cassefilters. Enregistreretfermeravantrefresh.

Service refreshData et actualisationvisuelle distincts ; sourcefigéeImportnechangepas parcequenavigateurreload. Schema changed exigeDesktop/republication. Ne pas confondre OneDrive syncde fichier environuneheure etimportPower Query. [Microsoft : refresh](https://learn.microsoft.com/en-us/power-bi/connect-data/refresh-data).

## 8. Pipeline corrigé

```text
Récurrence vendredi08h
Variables ExpectedVersion/VersionBI/KPI objet/ModeSimulation etRunId
Scope TRAITEMENT
 ExcelOnlineBusiness tblEtat →1row etversionnonvide
 Power BI Refresh a dataset
 DoUntilVersionBI=ExpectedVersion,10itérations/15min
   QUERY_KPI (EVALUATE CALCULATETABLE ROW)
   firstTableRows1row →KPI objet →VersionBI alias
   Delay1min seulement si différent
 Guardfinal version/projet ; âge0–7j enModeProduction
 ComposeClé/CR ; journalréservationunique
 Approval ; Reject journal/arrêt ; Approve
 Mailtest → journalEmailEnvoye → Teams → journalDiffuse
Scope erreur Failed/Timed out →trace/errorjournal →arrêt
```

La query renvoie une table/ligne ; aliasAPI `[ProjectRef]`, `[Avancement]` etc. Les champs deJSON ne se nommentpas touscommevoletsvisuels. `firstTableRows` estunarray, `first(...)` unobjet. KPIvariabletypeObject, nontexteJSON ; Emailcontient valeursréelles ouexpression, paslittéraldu nom. Les expressions etgabarits sont livrés dans le fichier dédié.

DroitsRead/Build +settingDatasetExecuteQueries nécessaires. ConnecteurPower BIStandard ne rendpas tousmodèles accessibles ; aucunconsentementlargeautomatique n’estcréé. [Microsoft : API](https://learn.microsoft.com/en-us/rest/api/power-bi/datasets/execute-queries).

AttendreunDelayfixe ne prouvenifin deRefresh ni fraîcheur. VersionS02source/S01model bloque. Si versionsdéjàégales, onprouve cohérenceavecce protocole, pasfindechaquejobprécis. Producteurchangetoujoursversionaprèsmiseàjourcohérente ; siéditionconcurrentepartielle, instruirecycleclosed/staging.

ModeSimulationtrue carfictif16/10peutêtreaprèsdatedetest. Enproductionfalse, datesfuture/stale>7jinterdites. Unsnapshotapprouvé peutvieillirpendantl’approbation : conserverdate/version, recontrôlerlesourceavantunengagementcritiqueetrefairevalidation s’ilachangé. Lerapportinteractif peutêtreplusrécentquelemailefigé : expliquercette différence.

Le mailestunassemblagePower BIpasuneIAexécution ;24 mesuresdont3CONCATENATEX formentrisques/actions/jalons. Le lien Service permetdétailsseulementsi lecteur autorisé/licencié. PasPublish toweb. PDFexportn’estpasprérequissimplifié pourPro ; capacityexportàvérifier séparément.

## 9. Tests, erreurs et verdicts

| Test | Thème | Attendu | Preuve |
| --- | --- | --- | --- |
| Q01 | Nettoyage | 13 tâches brutes →12 propres ; trois anomalies documentées | Nombre et clés |
| Q02 | Avancement | 65% pondéré charges ; moyenne simple61,25% incorrecte | Mesure et dénominateur |
| Q03 | Budget | 300000 prévu/autorisé ;216000 coût ;72% consommé | Pas CPI/dépassement final |
| Q04 | Retards | T05/T06 ;4/1 jours calendaires ; terminées exclues | DateEtat 16/10, pas TODAY |
| Q05 | Menaces | Deux jalons J05/J06 déclarés Menacé | Pas prévision IA certaine |
| Q06 | Risques | 5ouverts ;2score≥15 ;1owner manquant | RK04 absent non remplacé par rôle inventé |
| Q07 | Incidents/actions | 1incident ouvert ;1action en retard A01 | Incident réalisé vs risque |
| Q08 | Filtres | LinaMorel : T03/T06,180h,88,89%,1retard | Simple relation et remise à zéro |
| Q09 | Obsolescence | T08 active >7jours sans mise à jour | 8jours calendaires, pas erreur propriétaire inventée |
| R01 | Refresh Desktop/Service | Modification S02 →66,4% ; vérifier version et historique | Source mêmeURL/table, pas copie locale |
| R02 | Freshness pipeline | ExcelS02 et modèleS01 →aucun envoi avant accord version | DoUntil bornée + guardfinal |
| R03 | Rejet/doublon | Rejet0distribution finale ; mêmeclé0nouveau send | Notificationsapproval séparées |
| R04 | Permissions/API | Accès refusé ou modèle manquant →arrêt/diagnostic | Pas Publish toweb/permissionadmincontournée |
| R05 | Copilot faux ratio | Moyenne, PV/EVinventées ou cause nonprouvée →corrigées | Vérification humaine |
| R06 | Mise à jour schéma | Ne pas renommer les colonnes du fichier ; nouveau champ nécessiteDesktop/republication | Refresh service seul ne corrige pas schéma |


Premieréchecpermisdansapprentissage ;preuve de correction/retestprime. Rejetetdoublon corrects sonttests réussis même s’ilsn’envoient rien. Lesnonexécutésdoiventêtrevisibles, pas0temps ni réussite.

Owner/manqueRT04 n’est pas rempli parPMOautomatiquement. APIblocagedonnearrêt ;échecTeams après email estpartiel,requiertinspection/pasnouvellecléaveugle. Le journaluniqueréservationne garantipas transactionexactly-once surconnecteurtimeouts ; claimsdegarantieuniverselle pénalisés.

## 10. Mesure, notation et limites

| Critère | Points | Preuves |
| --- | --- | --- |
| Source durable et accès | 10 | Registre réel, auth, test lecteur et URL non fabriquée |
| Power Query et qualité | 15 | 9tables,12tâches,types/manques/doublon justifiés |
| Modèle | 10 | 7relations simples et scope de filtres expliqué |
| Mesures DAX | 20 | Pondération,dates,ratios,comptes et zéro/BLANK maîtrisés |
| Rapport et analyse | 15 | 3pages lisibles,exceptions et interprétations fidèles |
| Copilot/mesure comparative | 10 | Prompts,corrigés,tempsréels ; limites déclarées |
| Refresh/pipeline | 15 | Cloud,version,requête,gates,réceptions et erreurs |
| Sécurité/traçabilité | 5 | Cibles contrôlées,pas public,preuves et reprise prudente |
| Total | 100 |  |


Même source/règles/visuels/review ;préparationcommune attribuée identiquement. B peutêtrepluslentsi corrections. Comparerdurée de sous-tâches assistées, total etqualité ; ne pas affichergain3h/30min tantquepasmesuré. EffetapprentissageA etinfraB déjàprêtesdoitêtreconsigné.

Qualité : nettoyage+types, pondérationetdates, filtres, sémantique, visualisationslisibles, preuvesetlicences. Pas depleinevalidationB sansCopilotni pipeline sansService/API. Modessimulationetlocal sont recevables si déclarés.

Le tenantn’a pasété exécuté lorsdelacréation. Sources publiquesconfrontées pour mécanique, calculsdatasetcontrôlés. AucuneURLsourcepubliquecréée, aucunrepoGitmodifié, aucunPBIXfabriqué etaucunenvoiexterne réalisé.
