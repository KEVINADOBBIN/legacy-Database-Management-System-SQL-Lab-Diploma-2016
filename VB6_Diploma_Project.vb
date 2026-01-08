'========================================================
' VISUAL BASIC 6.0 DIPLOMA PROJECT
' Database Application using ADODC (Oracle)
'========================================================


'==========================
' PROJECT FORM (frmprj)
'==========================
Private Sub cmdadd_Click()
    Adodc1.Recordset.AddNew
End Sub

Private Sub cmdsave_Click()
    Adodc1.Recordset.Update
    MsgBox "RECORD SAVED", vbInformation
End Sub

Private Sub cmddelete_Click()
    Adodc1.Recordset.Delete
    MsgBox "RECORD DELETED", vbExclamation
End Sub



'==========================
' DEPARTMENT FORM (frmdept)
'==========================
Private Sub cmdadd_Click()
    Adodc1.Recordset.AddNew
End Sub

Private Sub cmdsave_Click()
    Adodc1.Recordset.Update
    MsgBox "RECORD SAVED", vbInformation
End Sub

Private Sub cmddelete_Click()
    Adodc1.Recordset.Delete
    MsgBox "RECORD DELETED", vbExclamation
End Sub



'==========================
' EMPLOYEE FORM (frmemp)
'==========================
Private Sub cmdadd_Click()
    Adodc1.Recordset.AddNew
End Sub

Private Sub cmdsave_Click()
    Adodc1.Recordset.Update
    MsgBox "RECORD SAVED", vbInformation
End Sub

Private Sub cmddelete_Click()
    Adodc1.Recordset.Delete
    MsgBox "RECORD DELETED", vbExclamation
End Sub



'==========================
' SEMESTER 1 FORM (frmsem1)
'==========================
Private Sub cmdadd_Click()
    Adodc1.Recordset.AddNew
End Sub

Private Sub cmdcompute_Click()
    txttotal.Text = Val(txtdbms.Text) + Val(txtcn.Text) + Val(txtco.Text)

    If Val(txtdbms.Text) >= 35 And Val(txtcn.Text) >= 35 And Val(txtco.Text) >= 35 Then
        txtresult.Text = "PASS"
    Else
        txtresult.Text = "FAIL"
    End If
End Sub

Private Sub cmdsave_Click()
    Adodc1.Recordset.Update
    MsgBox "RECORD SAVED", vbInformation
End Sub



'==========================
' SEMESTER 2 FORM (frmsem2)
'==========================
Private Sub cmdadd_Click()
    Adodc1.Recordset.AddNew
End Sub

Private Sub cmdcompute_Click()
    txttotal.Text = Val(txtdbms.Text) + Val(txtcn.Text) + Val(txtco.Text)

    If Val(txtdbms.Text) >= 35 And Val(txtcn.Text) >= 35 And Val(txtco.Text) >= 35 Then
        txtresult.Text = "PASS"
    Else
        txtresult.Text = "FAIL"
    End If
End Sub

Private Sub cmdsave_Click()
    Adodc1.Recordset.Update
    MsgBox "RECORD SAVED", vbInformation
End Sub



'==========================
' STUDENT RESULT FORM
'==========================
Private Sub cmdadd_Click()
    Adodc1.Recordset.AddNew
End Sub

Private Sub cmdcomput_Click()
    txttotal.Text = Val(txtdbms.Text) + Val(txtco.Text) + Val(txtcn.Text)

    If Val(txtdbms.Text) >= 35 And Val(txtco.Text) >= 35 And Val(txtcn.Text) >= 35 Then
        txtresult.Text = "PASS"
    Else
        txtresult.Text = "FAIL"
    End If
End Sub

Private Sub cmdsave_Click()
    Adodc1.Recordset.Update
    MsgBox "RECORD SAVED", vbInformation
End Sub

Private Sub cmdshw_Click()
    DataReport1.Show
End Sub



'==========================
' MAIN MENU FORM (frmmenu)
'==========================
Private Sub mnudepartment_Click()
    frmdept.Show
End Sub

Private Sub mnuemployee_Click()
    frmemp.Show
End Sub

Private Sub mnuproject_Click()
    frmprj.Show
End Sub

Private Sub mnusem1_Click()
    frmsem1.Show
End Sub

Private Sub mnusem2_Click()
    frmsem2.Show
End Sub



'==========================
' ADODC CONNECTION STRING
'==========================
' Provider=MSDAORA.1;
' User ID=sys;
' Password=tiger;
' CommandType=adCmdTable
' TableName=sem1 / sem2 / employee / department / project

'========================================================
' END OF PROJECT CODE
'========================================================
