# Gabarits et expressions du reporting

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

## Corps texte

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

Chaque [champ] doit être remplacé par un vrai jeton ou une expression. Pour KPI : variables('KPI')?['[NomAlias]']. Pour AvancementTxt/BudgetTxt : Outputs du Compose correspondant. URL_REPORT est l’URL réelle du rapport publié, pas une URL fournie par ce pack.
