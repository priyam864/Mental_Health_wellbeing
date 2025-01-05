
Sub RenameColumns()
    Dim ws As Worksheet
    Set ws = ThisWorkbook.Sheets("Sheet1")
    ws.Range("A1").Value = "ID"
    ws.Range("B1").Value = "Age"
    ws.Range("C1").Value = "Gender"
    ws.Range("D1").Value = "Field_of_Study"
    ws.Range("E1").Value = "Mental_Health_Rating"
    ' Add remaining columns as shown in the document...
    ws.Range("AE1").Value = "Challenges_In_Job_Placements"
End Sub
