Attribute VB_Name = "Module1"
Sub marco_san()
Attribute marco_san.VB_Description = "marco_san dodano"
Attribute marco_san.VB_ProcData.VB_Invoke_Func = " \n14"
'
' marco_san Macro
' marco_san dodano
'

'
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.PlotArea.Select
    ActiveChart.SeriesCollection.NewSeries
    ActiveChart.SeriesCollection(3).Name = "=vrba!$B$1"
    ActiveChart.SeriesCollection(3).XValues = "=vrba!$A$2:$A$18"
    ActiveChart.SeriesCollection(3).Values = "=vrba!$B$2:$B$18"
    Sheets("vrba").Select
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "H2_vrba"
    Range("B2").Select
    Sheets("Visinska").Select
    ActiveWorkbook.Save
End Sub
