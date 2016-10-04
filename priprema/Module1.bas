Attribute VB_Name = "Module1"
Sub Macro1()
Attribute Macro1.VB_Description = "sss"
Attribute Macro1.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Macro1 Macro
' sss
'

'
    ActiveSheet.ChartObjects("Chart 1").Activate
    ActiveChart.SeriesCollection(2).Select
    ActiveChart.SeriesCollection(2).Points(187).Select
    MsgBox TypeName(Selection)
    With Selection.Format.Line
        .Visible = msoTrue
        .ForeColor.ObjectThemeColor = msoThemeColorAccent1
        .ForeColor.TintAndShade = 0
        .ForeColor.Brightness = 0
    End With
    With Selection
        .MarkerStyle = 1
        .MarkerSize = 7
    End With
    Selection.MarkerStyle = 8
    Selection.MarkerSize = 6
    Selection.MarkerSize = 5
    Selection.MarkerSize = 4
    Selection.MarkerSize = 3
    Selection.MarkerSize = 2
End Sub
