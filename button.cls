VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "�u�@��1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True

Private Sub CommandButton1_Click()

End Sub

Private Sub CommandButton2_Click()
    Dim endRow As Integer
    Range([B6], [R6].End(xlDown)).ClearContents
    '�W�����T�Ʀ�
    With ActiveSheet.QueryTables.Add(Connection:="URL;https://concords.moneydj.com/z/zg/zg_A_0_1.djhtm", Destination:=Range("AA1"))
        .PreserveFormatting = True
        .WebTables = "1"
        .RefreshStyle = xlInsertDeleteCells
        .AdjustColumnWidth = False
        .Refresh BackgroundQuery:=False
        '���e�B�z
        For i = 5 To 54
            endRow = [B1048576].End(xlUp).Row + 1
            If Cells(i, "AG") > 10000 And Cells(i, "AD") <= 200 Then
                Cells(endRow, "B").Resize(1, 5).Value = Cells(i, "AC").Resize(1, 5).Value
            End If
        Next
        .ResultRange.Clear
        .Delete
    End With
    '�W�d���T�Ʀ�
    With ActiveSheet.QueryTables.Add(Connection:="URL;https://concords.moneydj.com/z/zg/zg_A_1_1.djhtm", Destination:=Range("AA1"))
        .PreserveFormatting = True
        .WebTables = "1"
        .RefreshStyle = xlInsertDeleteCells
        .AdjustColumnWidth = False
        .Refresh BackgroundQuery:=False
        '���e�B�z
        For i = 5 To 54
            endRow = [B1048576].End(xlUp).Row + 1
            If Cells(i, "AG") > 10000 And Cells(i, "AD") <= 200 Then
                Cells(endRow, "B").Resize(1, 5).Value = Cells(i, "AC").Resize(1, 5).Value
            End If
        Next
        .ResultRange.Clear
        .Delete
    End With
    '�W���^�T�Ʀ�
    With ActiveSheet.QueryTables.Add(Connection:="URL;https://concords.moneydj.com/z/zg/zg_AA_0_1.djhtm", Destination:=Range("AA1"))
        .PreserveFormatting = True
        .WebTables = "1"
        .RefreshStyle = xlInsertDeleteCells
        .AdjustColumnWidth = False
        .Refresh BackgroundQuery:=False
        '���e�B�z
        For i = 5 To 54
            endRow = [I1048576].End(xlUp).Row + 1
            If Cells(i, "AG") > 10000 And Cells(i, "AD") <= 200 Then
                Cells(endRow, "I").Resize(1, 5).Value = Cells(i, "AC").Resize(1, 5).Value
            End If
        Next
        .ResultRange.Clear
        .Delete
    End With
    '�W�d�^�T�Ʀ�
    With ActiveSheet.QueryTables.Add(Connection:="URL;https://concords.moneydj.com/z/zg/zg_AA_1_1.djhtm", Destination:=Range("AA1"))
        .PreserveFormatting = True
        .WebTables = "1"
        .RefreshStyle = xlInsertDeleteCells
        .AdjustColumnWidth = False
        .Refresh BackgroundQuery:=False
        '���e�B�z
        For i = 5 To 54
            endRow = [I1048576].End(xlUp).Row + 1
            If Cells(i, "AG") > 10000 And Cells(i, "AD") <= 200 Then
                Cells(endRow, "I").Resize(1, 5).Value = Cells(i, "AC").Resize(1, 5).Value
            End If
        Next
        .ResultRange.Clear
        .Delete
    End With
    '�W���g��Ʀ�
    With ActiveSheet.QueryTables.Add(Connection:="URL;https://concords.moneydj.com/z/zg/zg_BD_0_0.djhtm", Destination:=Range("AA1"))
        .PreserveFormatting = True
        .WebTables = "1"
        .RefreshStyle = xlInsertDeleteCells
        .AdjustColumnWidth = False
        .Refresh BackgroundQuery:=False
        '���e�B�z
        For i = 5 To 54
            endRow = [P1048576].End(xlUp).Row + 1
            If Cells(i, "AG") > 10000 And Cells(i, "AD") <= 200 Then
                Cells(endRow, "P").Resize(1, 5).Value = Cells(i, "AC").Resize(1, 5).Value
            End If
        Next
        .ResultRange.Clear
        .Delete
    End With
    '�W�d�g��Ʀ�
    With ActiveSheet.QueryTables.Add(Connection:="URL;https://concords.moneydj.com/z/zg/zg_BD_1_0.djhtm", Destination:=Range("AA1"))
        .PreserveFormatting = True
        .WebTables = "1"
        .RefreshStyle = xlInsertDeleteCells
        .AdjustColumnWidth = False
        .Refresh BackgroundQuery:=False
        '���e�B�z
        For i = 5 To 54
            endRow = [P1048576].End(xlUp).Row + 1
            If Cells(i, "AG") > 10000 And Cells(i, "AD") <= 200 Then
                Cells(endRow, "P").Resize(1, 5).Value = Cells(i, "AC").Resize(1, 5).Value
            End If
        Next
        .ResultRange.Clear
        .Delete
    End With

End Sub