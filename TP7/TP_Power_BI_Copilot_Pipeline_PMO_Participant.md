# TP — Pipeline de reporting projet : données projet → Power BI → email hebdomadaire → notification Teams

Comparer une réalisation manuelle et une réalisation assistée par Copilot pour mesurer l’accélération des travaux du PMO.

Formation : Utilisation de l’IA par un PMO ou PMP BA pour accélérer ses travaux.

Version 1.0 — Vérification documentaire : 11 octobre 2026.

## Partie 1 — Présentation et préparation

### Contexte et objectifs

Le participant est PMO du projet fictif Modernisation du système d’information, PRJ-2026-017. Il transforme neuf tables de suivi en un rapport de pilotage, puis en reporting hebdomadaire diffusé après validation. Il réutilise le site SharePoint du fil rouge.

Le classeur simule la situation du 16 octobre 2026 : retards et obsolescence utilisent cette date d’état, pas TODAY ou la date réelle du poste. Les personnes et montants sont fictifs. Le budget détaillé est un enrichissement analytique de cet atelier, pas une approbation réelle déduite des pièces Word précédentes.

Objectifs : accès durable, import, Power Query, modèle, DAX, visuels, contrôle des filtres, Copilot disponible, publication, actualisation, interrogation des KPI et diffusion. Chaque étape produit un élément réutilisé ensuite ; aucune reconstitution manuelle du jeu n’est nécessaire.

### Durées et périmètre

Parcours A : environ trois heures, hypothèse à mesurer. Parcours B : trente minutes pour les sous-tâches réellement assistées, pas pour tout le rapport. Prévoir en plus préparation des accès et deux à trois heures de pipeline/refresh/tests, sur une ou deux séances. Il n’existe aucun gain garanti.

L’autonomie exige des services et droits préprovisionnés. Une fonction absente est déclarée non exécutée ; aucun achat ni réglage tenant n’est imposé au participant.

### Licences et capacités

- Power BI Desktop récent sur Windows : rapport local réalisable sans Copilot.
- SharePoint : classeur hébergé, compte organisationnel et lecteur autorisé.
- Publication partagée : licence Pro/PPU et rôle de workspace adaptés ; lecteurs également autorisés et licenciés. F2 ne dispense pas automatiquement de licence lecteur ; la lecture gratuite en capacité dépend notamment du seuil F64/P1 et du périmètre. [Microsoft : licences](https://learn.microsoft.com/en-us/power-bi/fundamentals/end-user-license).
- Copilot Desktop : rôle admin/member/contributor sur workspace compatible paid F2+ ou P1+, settings tenant/capacité et région éligibles ; une Fabric Copilot capacity peut offrir un autre scénario habilité. PPU seul et capacité Trial ne suffisent pas. [Microsoft : Desktop](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-power-bi-desktop) ; [Microsoft : prérequis](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-enable-power-bi).
- Pipeline : Power Automate et connecteurs Power BI, Excel Online Business, SharePoint, Standard approvals, Outlook et Teams autorisés.
- Query API : setting Dataset Execute Queries REST API et droits Read/Build sur le modèle. Le connecteur Standard ne donne pas ces droits. [Microsoft : permissions](https://learn.microsoft.com/en-us/rest/api/power-bi/datasets/execute-queries).

Microsoft 365 Copilot, Copilot Studio et Copilot Power BI ne sont pas interchangeables. Les blocages de crédits du premier TP agents ne prouvent pas une éligibilité ou une inéligibilité dans Power BI. Sans Copilot, faire A ; sans Service/API, ne pas prétendre valider le pipeline par un simple PBIX.

### Source durable et URL — aucune adresse inventée

Nous retenons le classeur livré, hébergé dans le site SharePoint de formation, pour garder un cas PMO cohérent. Aucun lien public de ce jeu n’est annoncé comme opérationnel ; aucun dépôt Git n’a été créé/modifié.

Le tenant et ses autorisations n’étant pas fournis, le registre livré indique initialement source distante non vérifiée. Le participant dépose le fichier, relève les adresses exactes et teste l’accès. C’est la solution de remplacement documentée : un cahier préconfiguré doit être distribué après cette préparation, ou chaque participant doit la réaliser avec les droits nécessaires.

| Adresse | Usage exact |
| --- | --- |
| SITE_TP racine réelle | Entrée du connecteur Dossier SharePoint |
| Folder Path réel | Filtre du dossier après connexion |
| URL du fichier / consultation | Ouverture du classeur, pas entrée Folder |
| Téléchargement direct | Non nécessaire ici ; aucun lien public prétendument vérifié |
| URL_REPORT du Service | Lien du rapport publié, distinct de la source |

Le registre doit contenir valeurs exactes, owner, autorisations et tests. Un lien de consultation temporaire n’est pas une référence d’import durable. Conserver nom, emplacement, tables et droits ; aucune adresse ne peut rester valide malgré toute suppression ou révocation.

### Architecture et préparation

```text
Excel SharePoint → Power Query Import → modèle/DAX → rapport A ou B
→ publication/refresh → query Power Automate et contrôle de version
→ relecture → email hebdomadaire → notification Teams → journal
```

Nous construisons un rapport de trois pages : le mot tableau de bord est employé au sens métier. L’objet Dashboard du Service, avec tuiles épinglées, est une extension distincte et facultative.

### Étape P1 — Choisir la modalité et vérifier les licences

Objectif : Savoir quels objectifs sont réellement exécutables.

Point de départ : Poste Windows, Power BI Desktop récent et compte professionnel.

Manipulations :
1. Ouvrir Power BI Desktop ; se connecter au compte organisationnel.
2. Vérifier que l’import Excel et les vues Rapport/Modèle sont accessibles.
3. Dans le Service, vérifier accès à un workspace de formation et droit de publication.
4. Vérifier la capacité compatible Copilot et les settings avec l’administrateur ; ne pas les acheter/activer vous-même.
5. Vérifier Power Automate, Teams/Outlook test et Excel Online Business accès au classeur SharePoint.
6. Noter A local seul / A cloud / A+B Copilot / pipeline selon permissions.

Valeurs / code : Aucune licence ou crédit acheté ; compte et environnement autorisés.

Résultat attendu : Prérequis et limites consignés.

Contrôle : Pro/PPU seuls ne suffisent pas à Copilot ; source distante et capacité exigées sont distinctes.

En cas de problème : Sans cloud, réaliser A avec fichier fourni mais publication/pipeline non validés. Sans Copilot, B non exécuté et pas de gain IA annoncé.

### Étape P2 — Déposer le classeur dans le site SharePoint du fil rouge

Objectif : Créer une source durable réellement accessible, pas une URL fictive.

Point de départ : Site privé de test créé au TP précédent, bibliothèque Documents.

Manipulations :
1. Extraire Donnees_Reporting_PMO_PRJ_2026_017.xlsx du pack.
2. Dans Documents/PRJ-2026-017, Nouveau → Dossier ; créer 05_Reporting.
3. Ouvrir le dossier ; Charger → Fichiers ; sélectionner le classeur.
4. Attendre upload, ouvrir et vérifier les neuf tables/onglets et versionS01.
5. Noter SITE_TP racine réelle dans le registre.
6. Copier le lien de consultation sans élargir les droits et relever le chemin canonique du fichier.
7. Ne pas supprimer/recréer ce fichier à chaque correction ; modifier puis enregistrer ou remplacer le même fichier.

Valeurs / code : Dossier 05_Reporting ; nom stable Donnees_Reporting_PMO_PRJ_2026_017.xlsx.

Résultat attendu : Classeur partagé sous identité organisationnelle.

Contrôle : Un compte participant autorisé l’ouvre ; ne pas tester seulement le compte propriétaire.

En cas de problème : Si aucun site/droit, création selon TP SharePoint ou préprovisionnement. Le fichier local est un repli, pas une source cloud déjà opérationnelle.

### Étape P3 — Vérifier et enregistrer les adresses utiles

Objectif : Distinguer site, fichier, consultation et rapport Power BI.

Point de départ : Classeur hébergé et navigateur.

Manipulations :
1. SITE_TP : retirer la partie /SitePages ou /Lists pour garder la racine réelle.
2. Lien du fichier : Copy link avec existing access ; conserver pour consultation, pas comme entrée du connecteur Folder.
3. Chemin Folder Path : sera relevé exactement en Power Query A1.
4. Le fichier binaire est téléchargé via le connecteur authentifié ; aucun URL public de téléchargement n’est nécessaire.
5. Plus tard, relever URL_REPORT de l’objet rapport publié dans app.powerbi.com ; elle ne remplace aucune source SharePoint.
6. Remplir les tests navigateur/PowerQuery du registre.

Valeurs / code : SITE_TP et URL canonique réellement relevés, jamais https://<tenant> utilisé tel quel.

Résultat attendu : Registre source avec test et owner.

Contrôle : Pas de session signée temporaire ni ?web=1 présenté comme chemin Folder ; aucune URL annoncée vérifiée avant test.

En cas de problème : Si lien403, ne rendre pas site public ; vérifier identité, permissions et policies avec propriétaire.



Checklist : compte, Desktop, fichier, site, accès lecteur, workspace/licence, capacité Copilot, API/Build, connexions, cibles et approbateur. Dater les preuves ; une information inconnue n’est pas déclarée conforme.

## Partie 2 — Parcours A : Power BI sans Copilot

### Schéma, anomalies et règles

Neuf tables structurées et une feuille d’information non importée. Anomalies : copie exacte de T12, statut T06 avec espaces/minuscule, budget T05 texte numérique, RK04 sans owner/mitigation. Conserver le risque incomplet et signaler le manque.

| Table | Nom Excel | Lignes brutes | Colonnes dates | Colonnes numériques |
| --- | --- | --- | --- | --- |
| Projets | tblProjets | 1 | DateEcheance | BudgetAutorise_EUR |
| Responsables | tblResponsables | 6 | — | — |
| Taches | tblTaches | 13 | DebutPrevu, FinPrevue, DebutReel, FinReelle, DerniereMAJ | AvancementPct, ChargePrevue_h, ChargeConsommee_h, BudgetPrevu_EUR, CoutReel_EUR |
| Jalons | tblJalons | 6 | DatePrevue, DateReelle | — |
| Risques | tblRisques | 5 | EcheanceMitigation | Probabilite, Impact |
| Incidents | tblIncidents | 2 | DateOuverture, DateCloture | — |
| Dependances | tblDependances | 13 | — | — |
| Actions | tblActions | 5 | Echeance | — |
| Etat | tblEtat | 1 | DateEtat | — |


IDs/libellés/statuts : texte. Dates : Date. Charges, coûts, budgets et AvancementPct : nombres. P/I : entiers. Dates réelles absentes : null. Colonne Avancement = AvancementPct/100 ; Criticite = P×I. La dimension Responsables contient six personnes fictives.

Règles : avancement pondéré par charge prévue ; coût/BudgetAutorisé ; retard actif si fin prévue avant DateEtat et avancement inférieur100% ; menaces selon statut source ; obsolescence tâche active au-delà7jours. Ni PV ni méthode EV approuvée : pas de SPI/CPI inventé. Les dépendances déclarées ne constituent pas un calcul CPM. Les décisions proposées restent à arbitrer.

### Étape A1 — Connecter la source SharePoint

Objectif : Lire le classeur livré depuis une source organisationnelle.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. Accueil → Obtenir des données → Plus ; chercher Dossier SharePoint / SharePoint folder.
2. Saisir SITE_TP racine puis OK ; Compte d’organisation → Se connecter → Connexion.
3. Dans la liste des fichiers, choisir Transformer les données. Ne pas combiner toute la bibliothèque.
4. Filtrer Name sur le nom exact du classeur, puis Folder Path sur le dossier 05_Reporting réel. Noter ce chemin.
5. Vérifier une seule ligne ; cliquer la cellule Binary/Binaire de Content.
6. Quand Excel.Workbook présente Name/Data/Item/Kind, renommer la requête SourceClasseur, filtrer Kind=Table et désactiver son chargement par clic droit.

Valeurs / code : Fichier Donnees_Reporting_PMO_PRJ_2026_017.xlsx ; SITE_TP réel.

Résultat attendu : Répertoire des neuf tables Excel.

Contrôle : Une seule copie du classeur ; aucune URL de consultation à la place du site.

En cas de problème : Si Binary ne s’ouvre pas comme Excel, utiliser le script SourceClasseur fourni avec les deux paramètres créés selon le dépannage. Repli local : Obtenir données → Classeur Excel → sélectionner les neuf tables → Transformer ; cloud non validé.

### Étape A2.1 — Extraire les neuf tables

Objectif : Créer les requêtes métier sans ressaisir les données.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. Clic droit SourceClasseur → Référence ; renommer Projets.
2. Filtrer Item=tblProjets et Kind=Table.
3. Cliquer la cellule Table de Data, ou clic droit → Explorer / Drill down.
4. Refaire pour chaque correspondance du tableau de schéma.
5. Ne pas promouvoir une seconde fois les en-têtes d’une table Excel.
6. Le chargement est activé pour neuf tables métier et désactivé pour SourceClasseur.

Valeurs / code : Projets/Responsables/Taches/Jalons/Risques/Incidents/Dependances/Actions/Etat.

Résultat attendu : Neuf requêtes ; Taches contient13 lignes avant nettoyage.

Contrôle : Etat1 ligne, Projets1, Risques5.

En cas de problème : Si un Navigateur apparaît directement après Binary, cocher les neuf tables et les nommer ; obtenir la même sortie. Ne pas charger les feuilles et tables en double.

### Étape A2.2 — Nettoyer Taches

Objectif : Corriger les anomalies sans inventer de faits.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. Sélectionner les colonnes texte ; Transformer → Format → Supprimer les espaces / Trim puis Nettoyer / Clean.
2. Sur Statut, Remplacer les valeurs : en cours devient En cours.
3. Sélectionner toutes les colonnes ; Accueil → Supprimer les lignes → Supprimer les doublons. Seule la copie strictement identique de T12 disparaît.
4. Affecter Date aux cinq colonnes de dates ; nombre décimal à AvancementPct, charges, budgets et coûts ; texte aux IDs et libellés.
5. Ajouter une colonne → Colonne personnalisée : nom Avancement, formule [AvancementPct]/100 ; type Pourcentage.
6. Vérifier 12 lignes et Avancement entre0 et1.

Valeurs / code : T05 BudgetPrevu_EUR texte30000 devient nombre ; dates réelles absentes restent null.

Résultat attendu : Table propre,12 IDs uniques.

Contrôle : Doublons divergents doivent être qualifiés, pas supprimés au hasard.

En cas de problème : Pour conversion locale : icône du type → Utiliser les paramètres régionaux → type souhaité/français. Si une valeur échoue, inspecter avant remplacement. Ne pas afficher100 sous format% sans division.

### Étape A2.3 — Nettoyer les autres tables

Objectif : Qualifier les données manquantes et les clés.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. Appliquer Trim/Clean aux textes ; typer dates en Date, P/I en entier et montants en nombre.
2. Dans Risques, Ajouter colonne personnalisée OwnerCorrige : if [Owner] = null then "Non precise" else [Owner].
3. Supprimer Owner puis renommer OwnerCorrige en Owner. Refaire MitigationCorrige avec la même formule sur Mitigation.
4. Ne pas créer une échéance pour RK04.
5. Ajouter Criticite=[Probabilite]*[Impact], type entier.
6. Vérifier dimensions uniques et Etat1ligne ; Fermer et appliquer.

Valeurs / code : Owner/Mitigation RK04=Non precise ; scores16,15,12,10,9.

Résultat attendu : Neuf tables chargées avec types et manques explicites.

Contrôle : Aucune date/attribution inventée ; toutes les FK projet existent.

En cas de problème : Un texte "null" n’est pas une valeur null. Utiliser la formule conditionnelle complète ci-dessus ; contrôler avant supprimer les colonnes originales.

### Étape A3 — Construire les relations

Objectif : Filtrer le reporting à partir du projet.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. Vue Modèle → Modélisation → Gérer les relations → Nouveau.
2. Créer les six relations Projets[ProjectRef]1 vers ProjectRef des six faits selon tableau ; cardinalité1:* et filtre croisé Simple.
3. Créer Responsables[ResponsibleID]1→Taches[ResponsibleID]*.
4. Vérifier actives et supprimer relations automatiques incompatibles.
5. Etat reste déconnectée ; aucune relation fait-à-fait ou double relation active prédécesseur/successeur.

Valeurs / code : Sept relations exactement, sauf extension justifiée.

Résultat attendu : Modèle lisible, filtres projet cohérents.

Contrôle : Pas Many-to-many pour contourner des doublons.

En cas de problème : Si cardinalité1 impossible, vérifier blancs/doublons de la dimension avant changer les règles.

### Étape A4 — Créer DAX

Objectif : Implémenter des règles métier explicites.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. Sélectionner Taches → Modélisation → Nouvelle colonne ; copier RetardActif puis JoursRetard et MAJObsolete.
2. Sélectionner Projets → Nouvelle mesure ; copier une définition à la fois du fichier DAX et valider.
3. Créer les24 mesures dans l’ordre ; ne pas coller toutes les définitions dans une barre unique.
4. Formater les pourcentages, EUR, dates et comptes.
5. Les fonctions/virgules sont internationales : utiliser séparateurs standard ou adapter les arguments si options localisées actives.

Valeurs / code : Fichier Mesures_PMO_Power_BI.dax ; Avancement colonne0–1.

Résultat attendu : Mesures réutilisables et colonnes de contrôle.

Contrôle : DateEtat paramètre, pas TODAY ; moyenne simple incorrecte.

En cas de problème : Si erreur de référence, vérifier noms/types/relations. DIVIDE ne doit pas masquer un dénominateur absent par un faux ratio.

### Étape A5 — Créer Synthese

Objectif : Rendre le rapport lisible pour un COPIL.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. Vue Rapport ; double-cliquer l’onglet et nommer Synthese.
2. Insérer une zone de texte titre et un segment Projets[Projet].
3. Visualisations → Carte ; ajouter une carte par mesure de la maquette ; formater titre/unité.
4. Ajouter barre groupée Phase/Avancement global ; histogramme groupé Phase/Budget prevu EUR/Cout reel EUR.
5. Ajouter table Jalons avec dates/statut/motif et carte date/version.
6. Ne pas placer le segment Responsable sur cette page : budget autorisé est global projet.

Valeurs / code : Maquette fournie, pas visuel Gantt externe obligatoire.

Résultat attendu : Page exécutive mesurée et datée.

Contrôle : Menacé est un statut source, pas une prédiction ;72% ne prouve pas dépassement final.

En cas de problème : Si édition sur l’objet remplace le volet traditionnel, Insérer le visuel puis Build/Champs ; retrouver nom via infobulle. Ne pas accepter une mauvaise agrégation.

### Étape A6 — Créer Taches et Risques

Objectif : Afficher les exceptions et les actions.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. + page Taches ; table ID/libellé/Responsable/Phase/Statut/Avancement/FinPrevue/FinReelle/JoursRetard/DerniereMAJ.
2. Champs numériques de ligne : Ne pas résumer si disponible. Segment Responsable/Phase uniquement ici.
3. Table retards avec filtre visuel RetardActif=1 ; table obsolètes avec MAJObsolete=1.
4. + page Risques ; table IDs/libellés/P/I/Criticite/Owner/Mitigation/échéance ; trier criticité décroissante.
5. Ajouter tables Actions, Incidents et Dependances ; conserver dates et manques.

Valeurs / code : Noms de page Taches et Risques ; dépendances déclarées non CPM.

Résultat attendu : T05/T06, T08, RK04 et A01 visibles.

Contrôle : Responsable filtre tâches, pas automatiquement les risques ; pas d’owner inventé.

En cas de problème : Si personne vide, vérifier dimension et relation. Si lignes en double, retourner Power Query avant masquer par filtre.

### Étape A7 — Tester A et enregistrer

Objectif : Valider avant publication.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. Réinitialiser filtres. Comparer cartes et tables au contrôle numérique.
2. Page Taches : sélectionner Lina Morel ; T03/T06, charge180h, avancement88,89%, un retard.
3. Réinitialiser ; Synthese doit revenir65%/72%.
4. Enregistrer PBI_PMO_A.pbix et chronométrer les phases.
5. Conserver captures et erreurs corrigées, pas seulement une belle page.

Valeurs / code : Nom A distinct de B.

Résultat attendu : Rapport local vérifié.

Contrôle : 12tâches ; charges1000/725h ; budget300000/coût216000.

En cas de problème : Si écarts, inspecter types, doublons, filtre et formule avant consulter Copilot.

### Étape A8 — Publier et configurer refresh

Objectif : Passer à un modèle cloud vérifiable.

Point de départ : Power BI Desktop, fichier A en cours.

Manipulations :
1. Accueil → Publier ; sélectionner workspace autorisé, connexion organisationnelle.
2. Service app.powerbi.com : vérifier rapport et modèle sémantique associés.
3. Modèle → Paramètres → connexions/identifiants : OAuth2 organisationnel SharePoint ; source cloud uniquement.
4. Actualiser maintenant ; attendre succès dans Historique d’actualisation.
5. Ouvrir le rapport, vérifier S01/KPI et copier son lien autorisé URL_REPORT.
6. Planifier vendredi07:00 fuseau formation, notifications d’échec ; respecter quota.
7. Ne pas utiliser Publier sur le web pour partager des données organisationnelles.

Valeurs / code : Workspace réel et accès lecteur corrects.

Résultat attendu : Cloud model rafraîchissable ; source et rapport URLs distinctes.

Contrôle : Import cloud n’exige pas gateway locale s’il n’y a aucune source on-premise mélangée.

En cas de problème : Sans droits/licence, marquer publication/pipeline non exécutés. Reconnecter le fichier local à SharePoint avant republier si un repli local a été utilisé.



### Relations

| Dimension | Fait | Cardinalité | Filtre | État |
| --- | --- | --- | --- | --- |
| Projets.ProjectRef | Taches.ProjectRef | 1:* | Simple | Active |
| Projets.ProjectRef | Jalons.ProjectRef | 1:* | Simple | Active |
| Projets.ProjectRef | Risques.ProjectRef | 1:* | Simple | Active |
| Projets.ProjectRef | Incidents.ProjectRef | 1:* | Simple | Active |
| Projets.ProjectRef | Dependances.ProjectRef | 1:* | Simple | Active |
| Projets.ProjectRef | Actions.ProjectRef | 1:* | Simple | Active |
| Responsables.ResponsibleID | Taches.ResponsibleID | 1:* | Simple | Active |


Etat reste déconnectée et unique. Le segment responsable est limité à Taches : budget autorisé global et owner de risque ne doivent pas être filtrés de façon ambiguë. Pas de relation automatique fait-à-fait.

### DAX — créer une définition à la fois

```dax
Date etat = MAX(Etat[DateEtat])
```

```dax
Version source = SELECTEDVALUE(Etat[VersionSource], "Non precise")
```

```dax
Nb taches = COALESCE(COUNTROWS(Taches), 0)
```

```dax
Nb taches terminees = COALESCE(CALCULATE(COUNTROWS(Taches), Taches[Avancement] = 1), 0)
```

```dax
Charge prevue h = SUM(Taches[ChargePrevue_h])
```

```dax
Charge consommee h = SUM(Taches[ChargeConsommee_h])
```

```dax
Budget prevu EUR = SUM(Taches[BudgetPrevu_EUR])
```

```dax
Budget autorise EUR = SUM(Projets[BudgetAutorise_EUR])
```

```dax
Cout reel EUR = SUM(Taches[CoutReel_EUR])
```

```dax
Budget consomme pct = DIVIDE([Cout reel EUR], [Budget autorise EUR])
```

```dax
Budget non consomme EUR = [Budget autorise EUR] - [Cout reel EUR]
```

```dax
Avancement global = DIVIDE(SUMX(Taches, Taches[ChargePrevue_h] * Taches[Avancement]), [Charge prevue h])
```

```dax
Nb taches en retard = COALESCE(SUM(Taches[RetardActif]), 0)
```

```dax
Nb jalons menaces = COALESCE(CALCULATE(COUNTROWS(Jalons), Jalons[Statut] = "Menacé"), 0)
```

```dax
Nb incidents ouverts = COALESCE(CALCULATE(COUNTROWS(Incidents), Incidents[Statut] = "Ouvert"), 0)
```

```dax
Nb risques ouverts = COALESCE(CALCULATE(COUNTROWS(Risques), Risques[Statut] = "Ouvert"), 0)
```

```dax
Nb risques tres eleves = COALESCE(CALCULATE(COUNTROWS(Risques), Risques[Statut] = "Ouvert", Risques[Criticite] >= 15), 0)
```

```dax
Nb risques sans owner = COALESCE(CALCULATE(COUNTROWS(Risques), Risques[Statut] = "Ouvert", Risques[Owner] = "Non precise"), 0)
```

```dax
Nb actions en retard = VAR D = [Date etat]
RETURN COALESCE(COUNTROWS(FILTER(Actions, Actions[Statut] <> "Clôturée" && Actions[Echeance] < D)), 0)
```

```dax
Nb taches a actualiser = COALESCE(SUM(Taches[MAJObsolete]), 0)
```

```dax
Derniere maj tache = MAX(Taches[DerniereMAJ])
```

```dax
Top risques texte = CONCATENATEX(TOPN(5, FILTER(Risques, Risques[Statut] = "Ouvert"), Risques[Criticite], DESC, Risques[RiskID], ASC), Risques[RiskID] & " : " & Risques[Risque] & " | C=" & FORMAT(Risques[Criticite], "0") & " | Owner=" & Risques[Owner] & " | Mesure=" & Risques[Mitigation], UNICHAR(10), Risques[Criticite], DESC)
```

```dax
Actions ouvertes texte = CONCATENATEX(FILTER(Actions, Actions[Statut] <> "Clôturée"), Actions[ActionID] & " : " & Actions[Action] & " | " & Actions[Owner] & " | " & FORMAT(Actions[Echeance], "dd/MM/yyyy") & " | Decision=" & Actions[DecisionSponsor], UNICHAR(10), Actions[Echeance], ASC)
```

```dax
Jalons menaces texte = CONCATENATEX(FILTER(Jalons, Jalons[Statut] = "Menacé"), Jalons[MilestoneID] & " : " & Jalons[Jalon] & " | Cible=" & FORMAT(Jalons[DatePrevue], "dd/MM/yyyy") & " | " & Jalons[Motif], UNICHAR(10), Jalons[DatePrevue], ASC)
```

### Colonnes calculées dans Taches

```dax
RetardActif = VAR D = MAX(Etat[DateEtat])
RETURN IF(Taches[Avancement] < 1 && NOT(ISBLANK(Taches[FinPrevue])) && Taches[FinPrevue] < D, 1, 0)
```

```dax
JoursRetard = IF(Taches[RetardActif] = 1, DATEDIFF(Taches[FinPrevue], MAX(Etat[DateEtat]), DAY), 0)
```

```dax
MAJObsolete = IF(Taches[Avancement] < 1 && DATEDIFF(Taches[DerniereMAJ], MAX(Etat[DateEtat]), DAY) > 7, 1, 0)
```



Le fichier .dax contient24 mesures et3 colonnes, pas un modèle importable. Dans la vue Requête DAX, DEFINE crée des mesures temporaires ; utiliser Update model with changes/CodeLens pour les ajouter au modèle. [Microsoft : DAX query view](https://learn.microsoft.com/en-us/power-bi/transform-model/dax-query-view).

### Maquette et visuels

```text
SYNTHÈSE : projet/date/version ; cartes avancement/budget/retards/menaces
            progression par phase, budgets/coûts et table jalons
TACHES : filtres responsable/phase, détails, retards, données obsolètes
RISQUES : Top5, incidents, actions et dépendances
```

| Page | Visuel | Champs | Contrôle |
| --- | --- | --- | --- |
| Synthese | Carte | [Avancement global] | 65,0 % |
| Synthese | Carte | [Budget consomme pct] | 72,0 % |
| Synthese | Carte | [Nb taches en retard] | 2 |
| Synthese | Carte | [Nb jalons menaces] | 2 |
| Synthese | Carte | [Nb risques tres eleves] | 2 |
| Synthese | Carte | [Date etat], [Version source] | 16/10/2026, S01 |
| Synthese | Barres groupées | Axe Phase ; valeur Avancement global | Pondération dans chaque phase |
| Synthese | Histogramme groupé | Axe Phase ; Budget prevu EUR et Cout reel EUR | Comparaison montants, pas EVM |
| Synthese | Table | Jalons dates/statut/motif | J05/J06 Menacé |
| Taches | Table filtrée | RetardActif=1, tâches/dates/JoursRetard | T05 4 j ; T06 1 j calendaires |
| Taches | Table filtrée | MAJObsolete=1 | T08, dernière mise à jour08/10 |
| Risques | Table triée | RiskID/Risque/P/I/C/Owner/Mitigation/date | RK01 à RK05 ; RK04 Non precise |
| Risques | Tables | Incidents, Actions, Dependances | I01 ouvert ; A01 en retard ; pas CPM |


Glisser les champs vers les compartiments du visuel, pas une flèche à dessiner. Rendu/layout peut varier ; vérifier le mapping et la portée des filtres avant le design.

## Partie 3 — Parcours B : Power BI avec Copilot

Même import, nettoyage, modèle et exigences. Ce TP ne suppose pas une transformation Power Query Desktop native par chat dans tous les tenants. Une suggestion de plan est distincte d’une opération effectivement appliquée. Dataflows Gen2/Fabric sont un autre scénario, pas un prérequis ajouté silencieusement.

### Étape B1 — Créer B et vérifier Copilot

Objectif : Comparer sans réutiliser le rapport A terminé.

Point de départ : Power BI Desktop nouveau fichier.

Manipulations :
1. Créer un nouveau fichier, pas une copie de A.
2. Refaire import/nettoyage/modèle avec les mêmes étapes A1–A3 et les mêmes données.
3. Enregistrer PBI_PMO_B.pbix.
4. Dans Accueil, sélectionner Copilot ; se connecter et choisir un workspace compatible proposé.
5. Si aucun workspace valide, noter B sans Copilot/non exécuté pour les usages IA ; ne pas activer une capacité payante.

Valeurs / code : Même classeur, neuf tables, sept relations ; capacité F2+/P1+ ou capacité Copilot admissible selon administration.

Résultat attendu : B prêt, mêmes anomalies corrigées et même scope.

Contrôle : Le bouton visible ne signifie pas droit utilisable ; PPU seul/trial ne valide pas Copilot.

En cas de problème : Le parcours manuel demeure faisable ; ne pas appeler un chat externe et le présenter comme Copilot Power BI natif.

### Étape B2 — Demander un plan de préparation et de modèle

Objectif : Utiliser les suggestions sans prétendre qu’elles ont modifié Power Query.

Point de départ : Rapport B, tables importées et métadonnées disponibles.

Manipulations :
1. Ouvrir Copilot dans le ruban de la vue Rapport.
2. Coller le prompt B2 ci-dessous.
3. Comparer la proposition aux types et relations définis.
4. Corriger manuellement via Transformer les données et Gérer les relations ; consigner les actions réelles.
5. Ne pas chercher un bouton Copilot Power Query Desktop non confirmé : ce parcours utilise une suggestion de méthode, pas une transformation native supposée.

Valeurs / code : Prompt B2 : périmètre, anomalies, règles et capacité à proposer seulement.

Résultat attendu : Recommandations annotées, pas promesse de modèle créé.

Contrôle : Même retrait du doublon strict, mêmes sources et clés ; relations simple1:* ; aucun owner inventé.

En cas de problème : Si Copilot refuse faute de modèle chargé, finir A1–A3 ; la phase d’import et nettoyage reste manuelle dans cette version du TP.

### Étape B3 — Générer et valider les mesures DAX

Objectif : Accélérer un vrai objet de modèle, pas seulement une réponse de chat.

Point de départ : B propre, vue Requête DAX et schéma disponible.

Manipulations :
1. Créer les trois colonnes calculées RetardActif/JoursRetard/MAJObsolete comme A4 si elles n’existent pas.
2. Ouvrir Vue Requête DAX / DAX query view dans la barre gauche ; nouvelle requête.
3. Sélectionner Copilot dans cette vue (pas seulement le chat de création de pages).
4. Coller prompt B3 ; inspecter DEFINE MEASURE et dépendances.
5. Accepter/conserver la proposition selon bouton offert ; Exécuter/Run.
6. Comparer les valeurs de ROW au corrigé, corriger le code avec fichier DAX si nécessaire.
7. Appliquer Update model with changes / Mettre à jour le modèle avec les modifications, ou les actions CodeLens pour les mesures.
8. Vérifier qu’elles apparaissent comme mesures dans Projets ; DEFINE seul n’ajoute pas une mesure au modèle.
9. Compléter les mesures restantes selon fichier de référence ; formater pareil que A.

Valeurs / code : Prompts B3, fichier des 24 mesures commun, formats A4.

Résultat attendu : Mesures du modèle vérifiées, pas mesures temporaires de requête seulement.

Contrôle : Avancement est pondéré par charge, pas moyenne ; DateEtat et pas TODAY ; comptes0 via COALESCE.

En cas de problème : Si DAX Copilot absent, créer les mesures manuellement ; noter cette sous-tâche non assistée. Si Apply manque en connexion Live, revenir au modèle Import local du TP.

### Étape B4 — Créer la synthèse visuelle avec Copilot

Objectif : Produire la même couverture de KPI.

Point de départ : Vue Rapport B, modèle prêt et mesures ajoutées.

Manipulations :
1. Ruban Copilot ; sélectionner Suggest content for this report si proposé ou saisir directement B4.
2. Demander la page Synthese avec les mesures exactes.
3. Vérifier chaque carte, axe, agrégation, filtre et titre.
4. Demander une correction ciblée en langage naturel pour un visuel erroné.
5. Si une carte/mesure manque, créer le visuel manuellement selon A5 ; noter correction.
6. Construire Taches/Risques avec même contenu que A6, assisté si disponible sinon manuellement.

Valeurs / code : Prompt B4 avec règles ; pas de visuel premium/coutumier Gantt imposé.

Résultat attendu : Rapport B équivalent en données/KPI/qualité.

Contrôle : Budget autorisé reste le dénominateur ; segment Responsable pas sur Synthese ; aucun filtre supprimant les risques manquants.

En cas de problème : Si Copilot choisit Somme AvancementPct, remplacer par mesure Avancementglobal. Ne pas accepter une page jolie aux résultats différents.

### Étape B5 — Générer une synthèse puis la challenger

Objectif : Relier chiffres et décisions sans inventer de causes.

Point de départ : B contient des visuels validés.

Manipulations :
1. Dans Copilot, coller B5 pour une réponse de synthèse.
2. Option facultative : Visualisations→Narrative/Récit, mode Copilot s’il est disponible ; choisir les pages/visuels à résumer puis Create.
3. Lire les chiffres et les références de visuels ; corriger via Adjust your summary.
4. Une réponse dans le panneau n’est pas un visuel enregistré : créer ce visuel ou copier le texte validé dans une zone de texte selon besoin.
5. Conserver alerte et recommandation comme propositions, pas décisions acquises.

Valeurs / code : Prompt B5 ; état fictif16/10/S01.

Résultat attendu : Trois messages clés contrôlés et deux décisions à préparer.

Contrôle : 72% consommation ≠ dépassement final ; statutMenacé source ≠ prédiction ; owner RK04 toujours Non precise.

En cas de problème : Si Narrative non disponible, écrire la même synthèse validée manuellement ; ne prétendre pas la génération IA dans B.

### Étape B6 — Tester et comparer A/B

Objectif : Mesurer les gains des sous-tâches réellement accélérées.

Point de départ : Rapports A/B propres et mêmes filtres.

Manipulations :
1. Refaire tous les contrôles A7 et campagne.
2. Mesurer import/nettoyage, modèle, DAX, visuels, synthèse, corrections et tests séparément.
3. L’hypothèse30minutes porte uniquement sur sous-tâches assistées à tester, pas tout le dashboard/pipeline.
4. Publier B selon A8 si autorisé ; vérifier même refresh/cloud credentials.
5. Reporter temps, corrections et score qualité ; non exécuté reste non mesuré.

Valeurs / code : Mêmes données et critères ; fichier B nouveau ; source commune non recréée.

Résultat attendu : Comparaison expérimentale honnête.

Contrôle : Copilot ne bénéficie pas de moins de visuels ou d’une table pré-nettoyée que A ; préparation manuelle partagée explicitée.

En cas de problème : B peut prendre plus de temps ; garder résultat négatif et noter effet d’apprentissage/connexions déjà ouvertes.



### Prompts prêts à copier

### Prompt B2

```text
PMO du projet fictif PRJ-2026-017, instantané au 16/10/2026. Propose un plan de nettoyage et de modèle pour neuf tables. Corriger le doublon strict T12, le statut avec espaces, le budget numérique texte. Ne pas inventer owner/date RK04. Projets1 vers faits*, Responsables1 vers Taches*, filtres simples ; Etat unique déconnectée. Distingue recommandations des changements réellement appliqués ; ne prétends pas éditer Power Query si la fonction est absente.
```

### Prompt B3

```text
Dans la vue Requête DAX, propose DEFINE MEASURE Projets[...] puis EVALUATE ROW pour tester ces mesures : Charge prevue h, Cout reel EUR, Budget autorise EUR, Budget consomme pct, Avancement global, Nb taches en retard, Nb jalons menaces. Avancement global doit être SUMX(Taches,ChargePrevue_h*Avancement)/SUM(ChargePrevue_h), pas une moyenne. Budget consomme pct = coûts / budget autorisé. RetardActif et Avancement sont déjà des colonnes du modèle. Utilise les noms exacts et les formules du fichier de référence communiqué. Ne crée pas SPI/CPI sans mesure de valeur acquise validée. Signale les étapes nécessaires pour ajouter les mesures au modèle.
```

### Prompt B4

```text
Crée une page Synthese pour un COPIL du projet fictif PRJ-2026-017. Utilise mes mesures validées, pas Somme AvancementPct. Cartes : Avancement global, Budget consomme pct, Nb taches en retard, Nb jalons menaces, Nb risques tres eleves et Date etat. Ajouter comparaison Budget prevu EUR/Cout reel EUR par Phase, progression pondérée par Phase et tableau de jalons. Segment Projets[Projet] uniquement. Titres exécutifs, unités explicites. Aucun pronostic certain, aucune décision approuvée inventée. Respecte le périmètre de filtre et les colonnes existantes.
```

### Prompt B5

```text
Résume le rapport fictif sélectionné en trois messages clés pour le sponsor. Cite les chiffres et les visuels disponibles ; distingue consommation budget, avancement, retard en cours et menaces déclarées. Ne transforme pas 72% consommé en dépassement final ; pas de CPI/SPI. Signale owner RK04 manquant, tâche T08 à actualiser et action A01 en retard. Propose deux arbitrages, sans les présenter comme approuvés. Indique les données manquantes et le caractère simulé de la date du 16/10/2026.
```



DAX : Copilot dans la vue Requête DAX ; pages : Copilot dans la vue Rapport ; narratif : visuels existants et périmètre explicite. Les valeurs et références doivent être relues. [Microsoft : DAX Copilot](https://learn.microsoft.com/en-us/dax/dax-copilot) ; [Microsoft : pages](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-create-reports) ; [Microsoft : narratif](https://learn.microsoft.com/en-us/power-bi/create-reports/copilot-create-narrative).

## Partie 4 — Actualisation et contrôle de la source

### Test S02

1. Conserver une copie locale témoin de S01.
2. Dans le fichier SharePoint existant, T07 AvancementPct50→60 ; DerniereMAJ reste16/10 pour correction du même instantané.
3. Etat VersionSourceS01→S02 ; DateEtat reste16/10.
4. Enregistrer/fermer, conserver nom, emplacement et schéma.
5. Desktop Accueil→Actualiser ; vérifier66,4% etS02.
6. Service modèle→Actualiser maintenant→Historique : attendre succès puis actualiser les visuels.

Un refresh visuel ne relit pas automatiquement Excel. Import cloud seul peut rafraîchir sans gateway si Service rejoint la source ; fichier local ou source on-premise mélangée peut nécessiter une gateway. Un changement de schéma exige Desktop et republication, pas seulement refresh Service. [Microsoft : actualisation](https://learn.microsoft.com/en-us/power-bi/connect-data/refresh-data).

Shared Pro : jusqu’à8 actualisations planifiées/jour ; PPU/capacité admissible jusqu’à48 selon configuration. Les demandes API shared entrent dans le quota ; chaque query de contrôle n’est pas une nouvelle demande refresh. [Microsoft : planification](https://learn.microsoft.com/en-us/power-bi/connect-data/refresh-scheduled-refresh).

La synchronisation OneDrive/PBIX d’environ une heure dans certains scénarios est différente de l’import Power Query utilisé ici. Ne promettre ni un délai garanti ni un accès au binaire par une URL de page de consultation.

## Partie 5 — Pipeline hebdomadaire Power Automate

Parcours commun : un modèle A ou B validé, même source et cibles de test. Le mail contient KPI, risques/actions/jalons et lien du rapport. Pas de PDF obligatoire : ExportToFile a des prérequis de capacité supplémentaires. [Microsoft : export](https://learn.microsoft.com/en-us/power-bi/collaborate-share/office-integration/service-automate-power-bi-report-export).

### Étape F1 — Préparer journal, permissions et cibles

Objectif : Savoir quels services peuvent être interrogés.

Point de départ : Power Automate cloud, flow de reporting en construction.

Manipulations :
1. Relever workspace, modèle validé A ou B, URL_REPORT et cibles de test.
2. Vérifier Read/Build du modèle et setting Dataset Execute Queries REST API avec administrateur.
3. Sur le site TP, créer liste PMO_BI_Journal : Title native unique=Oui, Stage/RunId textes courts, Details texte multiligne.
4. Vérifier connexions Power BI, Excel Online Business, SharePoint, Standard approvals, Outlook et Teams. Aucun réglage tenant contourné.

Valeurs / code : Comptes organisationnels autorisés ; aucune publication publique.

Résultat attendu : Journal et prérequis disponibles.

Contrôle : Standard connector ne donne pas automatiquement droits/licence au modèle.

En cas de problème : Si API interdite, notification de lien seul possible mais pipeline KPI non validé.

### Étape F2 — Créer la récurrence et les variables

Objectif : Préparer une exécution hebdomadaire testable.

Point de départ : Power Automate cloud, flow de reporting en construction.

Manipulations :
1. Créer → Flux cloud planifié ; nom PMO_BI_Reporting_Hebdo.
2. Récurrence Week/Semaine, intervalle1, vendredi08:00 et fuseau formation.
3. Après la carte, + Ajouter une action → Initialiser une variable : ExpectedVersion String vide ; VersionBI String vide ; KPI Object avec expression json('{}') ; ModeSimulation Boolean true. Chaque variable a sa carte, au niveau racine.
4. Ajouter Compose RunId avec expression fournie.
5. Ajouter Control → Scope nom TRAITEMENT. Garder cibles de test ; désactiver planification hors essais si nécessaire.

Valeurs / code : ModeSimulation=true pour instantané fictif du16/10, pas réglage production.

Résultat attendu : Variables racines et conteneur des actions.

Contrôle : Pas de variable initialisée dans une condition ; aucun paramètre secret.

En cas de problème : Si le scheduled flow démarre trop tôt, le désactiver et utiliser copie à déclencheur manuel pour tester sans diffusion inattendue.

### Étape F3 — Lire la version source puis demander refresh

Objectif : Comparer au snapshot réellement publié.

Point de départ : Power Automate cloud, flow de reporting en construction.

Manipulations :
1. Dans TRAITEMENT, + Excel Online (Business) → List rows present in a table ; renommer LIRE_ETAT.
2. Location/site, bibliothèque, fichier via picker et Table=tblEtat ; connexion autorisée.
3. Condition nombre de lignes égal1 avec expression fournie ; faux Terminate Failed.
4. Dans vrai, Set variable ExpectedVersion depuis la première ligne ; arrêter si chaîne vide.
5. Ajouter Power BI Refresh a dataset, workspace et modèle validés. Ne pas envoyer immédiatement après cette carte.

Valeurs / code : ExpectedVersion=S01 puis S02 en correction ; dates Excel non utilisées pour le contrôle.

Résultat attendu : Demande refresh et version attendue.

Contrôle : Cette action ne garantit pas la fin du traitement.

En cas de problème : Si fichier verrouillé, enregistrer/fermer puis retester ; si modèle absent, vérifier environnement et droits.

### Étape F4 — Attendre la version attendue dans une boucle bornée

Objectif : Ne pas utiliser une temporisation fixe comme preuve de fraîcheur.

Point de départ : Power Automate cloud, flow de reporting en construction.

Manipulations :
1. Après Refresh, Control → Do until : VersionBI égale ExpectedVersion ; limites Count10 et TimeoutPT15M.
2. Dans la boucle, ajouter Power BI Run a query against a dataset ; nom QUERY_KPI, mêmes workspace/modèle, texte DAX du pack ; Nulls included=true, pas impersonation.
3. Contrôler firstTableRows avec length égal1 ; sinon arrêt.
4. Set variable KPI=firstTableRows première ligne ; Set VersionBI depuis alias [VersionSource], expressions fournies.
5. Condition VersionBI différente de ExpectedVersion ; vrai Delay1minute, faux rien.
6. Après boucle, guard VersionBI=ExpectedVersion ET alias [ProjectRef]=PRJ-2026-017 ; sinon arrêt avant diffusion.

Valeurs / code : Une seule table ROW ; aliases renvoyés entre crochets ; pas Apply to each.

Résultat attendu : Objet KPI version attendue ou échec explicite.

Contrôle : Un tableau vide/limite de boucle ne doit pas produire un dossier validable.

En cas de problème : Inspecter outputs et alias exacts. Si version identique avant refresh, on prouve la cohérence snapshot, pas la fin de cette requête précise ; protocole de bump source indispensable.

### Étape F5 — Construire le reporting chiffré

Objectif : Utiliser uniquement les valeurs du modèle.

Point de départ : Power Automate cloud, flow de reporting en construction.

Manipulations :
1. Après guard, Compose DateAge avec formule du pack. Si ModeSimulation=false, bloquer âge négatif ou supérieur7jours. En true, afficher simulation, pas fraîcheur temporelle réelle.
2. Compose CleRapport, AvancementTxt et BudgetTxt avec expressions.
3. Compose CR_Texte avec gabarit ; chaque [alias] devient expression variables('KPI')?['[Alias]'] ; URL_REPORT reste lien réel contrôlé.
4. Compose CR_Echappe puis CR_HTML.
5. Risques/actions/jalons viennent des mesures texte ; aucune IA runtime ajoutée.

Valeurs / code : Gabarits_Reporting... fourni ; champs remplacés, pas noms tapés littéralement.

Résultat attendu : Rapport snapshot/version, détails et lien.

Contrôle : .65 devient65%, pas0,65% ; null numérique non masqué.

En cas de problème : Si valeur manque, qualifier/arrêter avant formatNumber. Ne pas interpréter consommation72% comme CPI ou dépassement final.

### Étape F6 — Réserver et faire approuver

Objectif : Éviter doubles et diffusion sans revue.

Point de départ : Power Automate cloud, flow de reporting en construction.

Manipulations :
1. SharePoint Get items : SITE_TP, PMO_BI_Journal, Filter Query Title eq suivi apostrophe + jeton CleRapport + apostrophe ; TopCount1.
2. Condition length(value)>0 : vrai stopSucceeded avec doublon ; faux Create item Title=clé unique, StageReserve, RunId, Details.
3. Dans faux après réserve : Standard approvals Start and wait, First to respond ; Assigned to approbateur test, Details=CR_Texte.
4. Condition outcome global=Approve ; faux Update journal Rejete + arrêt ; vrai Update Valide puis suite. Les Update utilisent ID de Create journal, pas ID projet ou fichier.

Valeurs / code : Journal Title unique réellement activée ; clé version/date stable.

Résultat attendu : Réservation puis validation humaine.

Contrôle : La notification de revue peut contenir le brouillon au relecteur habilité ; pas diffusion finale.

En cas de problème : Une clé existante après rejet/échec bloque ; inspecter avant reprise, ne supprimer pas pour refaire des sends partiels.

### Étape F7 — Envoyer email et notification Teams

Objectif : Diffuser le même état à deux destinations autorisées.

Point de départ : Power Automate cloud, flow de reporting en construction.

Manipulations :
1. Dans vrai Approve, + Office365 Outlook Send an email (V2) ; ToEMAIL_TEST, objet[TP SIMULATION]+référence/date/version, BodyCR_HTML ; CC/BCC vides.
2. Update journal StageEmailEnvoye.
3. + Teams Post message in a chat or channel ; Post inChannel, équipe/canal standard test ; MessageCR_HTML ou même résumé court et lien.
4. Update StageDiffuse ; retryNone sur sends si configurable.
5. Pas de PDF ni ExportToFile imposé.

Valeurs / code : Cibles réelles contrôlées localement ; URL_REPORT avec accès/licence lecteur.

Résultat attendu : Un email et un message pour un snapshot approuvé.

Contrôle : Recevoir lien ne donne pas accès ; tester le compte destinataire.

En cas de problème : Si Teams interdit, chat personnel déclaré comme variante ; pas validation du canal. Si email réussi puis Teams échoue, la réservation demeure.

### Étape F8 — Gérer erreurs et tester S02

Objectif : Conserver les traces sans relance aveugle.

Point de départ : Power Automate cloud, flow de reporting en construction.

Manipulations :
1. Ajouter Scope ERREUR_TECHNIQUE au niveau racine après TRAITEMENT ; Run after Failed/Timed out seulement.
2. Create journal ERROR|RunId, StageErreur si SharePoint accessible ; puis Terminate Failed. Si journal indisponible, historique reste trace.
3. Save → Test manuel ; cibles test et approbation.
4. Après S01 validée, modifier T07 AvancementPct50→60 et VersionSourceS01→S02 ; enregistrer/fermer. Relancer : résultat attendu66,4%, aucun envoi S01 si source attendS02.
5. Refaire mêmeS02 : doublon bloqué.
6. Consigner RunId, corrections, réception et mode ; finir approvals et désactiver planification selon règles.

Valeurs / code : Le producteur met toujours à jour VersionSource après changements cohérents.

Résultat attendu : Reporting version contrôlée ; tests positifs/négatifs documentés.

Contrôle : Aucune garantie exactly-once interservices ; pas de succès inventé avant run.

En cas de problème : Si erreur partielle, vérifier boîte/canal/journal ; une nouvelle clé créée pour réessayer tout peut dupliquer. Retester après diagnostic.



### Requête KPI exacte

```dax
EVALUATE
CALCULATETABLE(
    ROW(
        "ProjectRef", SELECTEDVALUE(Projets[ProjectRef]),
        "Projet", SELECTEDVALUE(Projets[Projet]),
        "DateEtat", FORMAT([Date etat], "yyyy-MM-dd"),
        "VersionSource", [Version source],
        "Avancement", [Avancement global],
        "BudgetConsomme", [Budget consomme pct],
        "BudgetAutorise", [Budget autorise EUR],
        "CoutReel", [Cout reel EUR],
        "Taches", [Nb taches],
        "Retards", [Nb taches en retard],
        "JalonsMenaces", [Nb jalons menaces],
        "RisquesSansOwner", [Nb risques sans owner],
        "RisquesTresEleves", [Nb risques tres eleves],
        "IncidentsOuverts", [Nb incidents ouverts],
        "ActionsRetard", [Nb actions en retard],
        "TachesAActualiser", [Nb taches a actualiser],
        "DerniereMAJ", FORMAT([Derniere maj tache], "yyyy-MM-dd"),
        "Risques", [Top risques texte],
        "Actions", [Actions ouvertes texte],
        "Jalons", [Jalons menaces texte]
    ),
    TREATAS({"PRJ-2026-017"}, Projets[ProjectRef])
)
```

Le connecteur retourne firstTableRows, tableau d’objets. Ici une table d’une ligne ; les alias créés ont des noms [Alias]. SetKPI stocke un objet réel. [Microsoft : connecteur](https://learn.microsoft.com/en-us/connectors/powerbi/) ; [Microsoft : API/aliases](https://learn.microsoft.com/en-us/rest/api/power-bi/datasets/execute-queries).

### Expressions et modèle du mail

### Expression RunId

```text
workflow()?['run']?['name']
```

### Expression Nombre lignes source

```text
length(body('LIRE_ETAT')?['value'])
```

### Expression ExpectedVersion

```text
first(body('LIRE_ETAT')?['value'])?['VersionSource']
```

### Expression Nombre lignes KPI

```text
length(body('QUERY_KPI')?['firstTableRows'])
```

### Expression KPI objet

```text
first(body('QUERY_KPI')?['firstTableRows'])
```

### Expression VersionBI

```text
coalesce(variables('KPI')?['[VersionSource]'],'')
```

### Expression ProjectRef contrôle

```text
variables('KPI')?['[ProjectRef]']
```

### Expression Age jours

```text
div(sub(ticks(utcNow()),ticks(concat(variables('KPI')?['[DateEtat]'],'T00:00:00Z'))),864000000000)
```

### Expression CleRapport

```text
concat('BI|',variables('KPI')?['[ProjectRef]'],'|',variables('KPI')?['[DateEtat]'],'|',variables('KPI')?['[VersionSource]'])
```

### Expression AvancementTxt

```text
concat(formatNumber(mul(float(variables('KPI')?['[Avancement]']),100),'0.0','fr-FR'),' %')
```

### Expression BudgetTxt

```text
concat(formatNumber(mul(float(variables('KPI')?['[BudgetConsomme]']),100),'0.0','fr-FR'),' %')
```

### Expression CR_Echappe

```text
replace(replace(replace(outputs('CR_Texte'),'&','&amp;'),'<','&lt;'),'>','&gt;')
```

### Expression CR_HTML

```text
replace(outputs('CR_Echappe'),decodeUriComponent('%0A'),'<br>')
```



```text
[TP SIMULATION] Reporting hebdomadaire — PRJ-2026-017
Données au [DateEtat], version [VersionSource] ; génération selon run réel.
Avancement pondéré : [AvancementTxt] ; budget consommé : [BudgetTxt].
Budget autorisé : [BudgetAutorise] EUR ; coût réel : [CoutReel] EUR.
Tâches en retard : [Retards] ; jalons menacés : [JalonsMenaces].
Risques très élevés : [RisquesTresEleves] ; risques sans owner : [RisquesSansOwner].
Incidents ouverts : [IncidentsOuverts] ; actions en retard : [ActionsRetard].
Tâches à actualiser : [TachesAActualiser].

JALONS MENACÉS
[Jalons]
RISQUES ET MESURES
[Risques]
ACTIONS / DÉCISIONS À PRÉPARER
[Actions]

Détails : [URL_REPORT]
Brouillon à valider ; pas de GO ni d’arbitrage automatiquement approuvé.
Les données sont fictives et la fraîcheur repose sur la version source contrôlée.
```

Chaque champ devient une expression variables('KPI')?['[Alias]'], un jeton de Compose ou URL_REPORT réelle. Les mises à jour du journal utilisent ID de sa réservation, pas ID du projet/fichier. La notification d’approbation au relecteur habilité est distincte de la diffusion finale. Un accord de diffusion n’est pas un GO.

### Limites du contrôle

VersionSource doit évoluer après chaque modification cohérente enregistrée. Si sourceS02/modèleS01, rien n’est envoyé. Si versions déjà identiques, le snapshot disponible est cohérent ; ce n’est pas nécessairement la preuve de fin de cette demande précise de refresh. Une exigence de fin technique stricte impose inspection historique/API dédiée. Limite15minutes : garde pédagogique, pas durée garantie.

ModeSimulation=true accepte la date fictive future dans la formation et l’annonce. Productionfalse bloque âge négatif ou supérieur7jours. Un producteur oubliant la version, ou une modification en cours de refresh, crée une fragilité à gouverner ; l’IA ne garantit pas la cohérence de ce protocole.

## Partie 6 — Tests, dépannage et sécurité

| ID | Thème | Attendu | Preuve |
| --- | --- | --- | --- |
| Q01 | Nettoyage | 13 tâches brutes →12 propres ; trois anomalies documentées | Nombre et clés |
| Q02 | Avancement | 65% pondéré charges ; moyenne simple61,25% incorrecte | Mesure et dénominateur |
| Q03 | Budget | 300000 prévu/autorisé ;216000 coût ;72% consommé | Pas CPI/dépassement final |
| Q04 | Retards | T05/T06 ;4/1 jours calendaires ; terminées exclues | DateEtat16/10, pas TODAY |
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


| Symptôme | Vérification | Correction |
| --- | --- | --- |
| Source403 ou HTML reçu | URL/account/permission | Folder prend SITE_TP racine ; auth Organisation ; pas page Copy link |
| Plusieurs fichiers sélectionnés | Name et Folder Path | Filtrer copie unique ; pas Combine all bibliothèque |
| 13 tâches /62,5% au lieu65% | DoublonT12 | Supprimer doublon strict, pas filtre masquant |
| 61,25% avancement | Moyenne non pondérée | SUMX charge*Avancement / SUMcharge |
| Pourcentage6500% | 100 source vs1 modèle | AvancementPct/100 puis format% |
| Dates/numériques en erreur | Type/région | Vérifier valeurs, locale et null ; pas remplacement aveugle |
| Copilot bouton grisé | Capacité/permissions/settings | Admin vérifie ; Pro/PPU/trial seuls ne suffisent pas |
| MesureCopilot absente du modèle | DEFINE seulement | Run puis Update model with changes/CodeLens |
| Refresh Service exige gateway | Chemin local ou mélange sources | Rebrancher SharePoint cloud et republier ; ne pas installer sans besoin |
| DAX API refusée | Read/Build/setting tenant | Fonctions habilitées confirment ; pas impersonation/roleadminforcé |
| Query retourne tableau/keys inconnues | firstTableRows et alias | first une ligne ; nom [Alias] exact ; pas Applytoeach sur1ROW |
| Envoi avant refresh fini | Version source/modèle | Boucle bornée et guard final ; pas simpleDelay arbitraire |
| Rapport destinataire inaccessible | Licences/droitsService | Partager seulement périmètre autorisé ; pas Publish toweb |
| Export PDF absent | Capacité et export API | Lien+KPI baseline ; PDF option non validée sans prérequis |
| Budget slicer responsable étrange | Dénominateur global | Segment responsable surpageTaches, pasSynthese |
| Doublon après erreur | Réservation et effets réels | Inspecter boîte/canal/journal, reprise ciblée ; pas nouvelleclé automatique |


Tests sur copies/sandbox, aucune suppression de droits partagés. Source locale valide préparation Desktop mais pas connexion durable cloud. Sans canal, chat personnel déclaré, pas critère canal réussi. Sans API/cloud, chiffres saisis à la main ne valident pas le pipeline.

Après email réussi puis échec Teams, inspecter effets réels et journal : pas de nouvelle clé pour renvoyer aveuglément. Pas de transaction exactement-une-fois garantie entre services. Pas de secret, policy désactivée ni publication publique.

## Partie 7 — Mesures et évaluation

Mesurer source/accès, import/nettoyage, modèle, DAX, visuels, synthèse, corrections, tests, publication et pipeline commun. Séparer temps actif et attente. Coût commun imputé identiquement si coût complet ; noter apprentissage et connexions réutilisées favorisant B.

Gain=TA−TB ; réduction=Gain/TA×100 ; facteur=TA/TB. Aucun ratio pour temps nul/non mesuré ; gain négatif admissible. Comparer les mêmes KPI et exigences, pas une page B simplifiée. Trois heures/trente minutes est une hypothèse pour un périmètre défini, pas résultat annoncé.

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


Seuil indicatif70/100 ; contrôles de pondération/date/version et diffusion indispensables. Services indisponibles déclarés ; pas de pleine validation Copilot sans exécution. Un graphique joli ne prouve pas le modèle.

## Partie 8 — Livrables, corrigé et retour d’expérience

Registre source avec adresses réelles/testées ; fichiers PBIXA/B enregistrés par Desktop ; sources/mesures ; preuves de nettoyage/relations/KPI/filtres ; corrections et temps ; publication/refresh/RunId si exécutés ; note de trois alertes et deux décisions à préparer.

Le corrigé formateur est séparé. Les fichiers .dax/.pq sont aides, pas preuve d’exécution ou PBIX fabriqué. Observations dans le classeur restent vides avant tests.

Débriefing : pondération et DateEtat ? Source vs rapport URL ? Report vs Dashboard ? Capacité vs licence lecteur ? DEFINE vs mesure modèle ? Version vs fin de refresh ? Gain réel vs biais ? Qui confirme les owners/décisions et données manquantes ?

Le dossier est vérifié sur sources Microsoft et calculs, pas exécuté dans votre tenant. Aucun lien distant déclaré validé avant dépôt/test, aucune création GitHub, achat, partage public ou envoi réel réalisé pendant sa génération.
