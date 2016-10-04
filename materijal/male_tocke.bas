Attribute VB_Name = "Module1"
Sub male_tocke()
Attribute male_tocke.VB_Description = "male tocke"
Attribute male_tocke.VB_ProcData.VB_Invoke_Func = " \n14"
'
' male_tocke Macro
' male tocke
'

'

    ActiveChart.Legend.Select
    ActiveChart.Legend.LegendEntries(2).Select
    ActiveChart.SeriesCollection(2).Select
    With Selection
        .MarkerStyle = 1
        .MarkerSize = 7
    End With
    Selection.MarkerSize = 6
    Selection.MarkerSize = 5
    Selection.MarkerSize = 4
    Selection.MarkerSize = 3
    Selection.MarkerSize = 2
    ActiveWorkbook.Save
End Sub
