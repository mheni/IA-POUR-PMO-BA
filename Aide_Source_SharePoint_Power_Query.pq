// SourceClasseur: optional fallback if the UI cannot drill into a single binary.
// Replace the three parameter values with VERIFIED tenant values; do not use angle-bracket placeholders.
let
    Source = SharePoint.Files(pSiteUrl, [ApiVersion = 15]),
    Fichier = Table.SelectRows(Source, each [Name] = "Donnees_Reporting_PMO_PRJ_2026_017.xlsx" and [Folder Path] = pFolderPath),
    Binaire = if Table.RowCount(Fichier) = 1 then Fichier{0}[Content] else error "Le filtre doit trouver exactement un fichier",
    Classeur = Excel.Workbook(Binaire, null, true),
    Tables = Table.SelectRows(Classeur, each [Kind] = "Table")
in
    Tables

// Example: create a separate reference query from SourceClasseur for Taches.
// let Source = SourceClasseur, Donnees = Source{[Item="tblTaches",Kind="Table"]}[Data] in Donnees
// Do NOT paste both queries as one; use the guide's UI or separate editors.
