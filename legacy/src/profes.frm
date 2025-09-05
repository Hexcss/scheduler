VERSION 2.00
Begin Form frmProfesores 
   BackColor       =   &H00808000&
   BorderStyle     =   3  'Fixed Double
   Caption         =   "Administrador de Profesores"
   ClientHeight    =   5085
   ClientLeft      =   375
   ClientTop       =   960
   ClientWidth     =   7350
   ControlBox      =   0   'False
   Height          =   5490
   Left            =   315
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5085
   ScaleWidth      =   7350
   Top             =   615
   Width           =   7470
   Begin CrystalReport rptProfesores 
      BoundReportFooter=   0   'False
      BoundReportHeading=   ""
      Connect         =   ""
      CopiesToPrinter =   1
      Destination     =   0  'Window
      DetailCopies    =   1
      DiscardSavedData=   0   'False
      EMailCCList     =   ""
      EMailMessage    =   ""
      EMailSubject    =   ""
      EMailToList     =   ""
      EMailVIMBCCList =   ""
      GroupSelectionFormula=   ""
      Left            =   6660
      MarginBottom    =   0
      MarginLeft      =   0
      MarginRight     =   0
      MarginTop       =   0
      PrinterCollation=   2  'default
      PrinterCopies   =   1
      PrinterDriver   =   ""
      PrinterName     =   ""
      PrinterPort     =   ""
      PrinterStartPage=   0
      PrinterStopPage =   0
      PrintFileCharSepQuote=   ""
      PrintFileCharSepSeparator=   ""
      PrintFileName   =   ""
      PrintFileType   =   2  'Text
      PrintFileUseRptDateFmt=   0   'False
      PrintFileUseRptNumberFmt=   0   'False
      ReportFileName  =   "c:\sighor\reporte\profesor.rpt"
      ReportSource    =   0  'Report File
      ReportTitle     =   ""
      SelectionFormula=   ""
      SessionHandle   =   0
      SQLQuery        =   ""
      Top             =   810
      UserName        =   ""
      WindowBorderStyle=   2  'Sizable
      WindowControlBox=   -1  'True
      WindowControls  =   -1  'True
      WindowHeight    =   300
      WindowLeft      =   100
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      WindowParentHandle=   0
      WindowState     =   2  'maximized
      WindowTitle     =   ""
      WindowTop       =   100
      WindowWidth     =   480
   End
   Begin SSPanel Panel3D2 
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      BorderWidth     =   1
      Height          =   555
      Left            =   5490
      TabIndex        =   20
      Top             =   1350
      Visible         =   0   'False
      Width           =   1635
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   315
         Index           =   8
         Left            =   90
         Outline         =   0   'False
         Picture         =   PROFES.FRX:0000
         RoundedCorners  =   0   'False
         TabIndex        =   22
         TabStop         =   0   'False
         Tag             =   "Editar (ALT + E)"
         Top             =   90
         Width           =   315
      End
      Begin ComboBox cmbDisponibilidad 
         FontBold        =   0   'False
         FontItalic      =   0   'False
         FontName        =   "MS Sans Serif"
         FontSize        =   8.25
         FontStrikethru  =   0   'False
         FontUnderline   =   0   'False
         Height          =   315
         Left            =   450
         Style           =   2  'Dropdown List
         TabIndex        =   21
         Top             =   90
         Width           =   1095
      End
   End
   Begin CommandButton btnCancelar 
      Caption         =   "Terminar Edicion"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   375
      Left            =   5580
      TabIndex        =   18
      Top             =   4140
      Visible         =   0   'False
      Width           =   1545
   End
   Begin CommandButton btnNada 
      Caption         =   "Este boton ponerlo por alli, escondido"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "Arial"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   465
      Left            =   2430
      TabIndex        =   16
      Top             =   5490
      Width           =   2985
   End
   Begin MabryTips Tips1 
      BackColor       =   &H0000FFFF&
      Caption         =   "Tips1"
      ForeColor       =   &H000000FF&
      Height          =   240
      Interval        =   750
      Interval2       =   165
      Left            =   5940
      TipAlignment    =   0  'Cursor
      Top             =   5670
      UseTag          =   -1  'True
      Width           =   555
      XOffset         =   4
      YOffset         =   16
   End
   Begin Data dtaRecursos 
      BackColor       =   &H00808000&
      Caption         =   "dtaRecursos"
      Connect         =   ""
      DatabaseName    =   "C:\SIGHOR\DATOS\HOR_UDEP.MDB"
      Exclusive       =   0   'False
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Left            =   540
      Options         =   0
      ReadOnly        =   0   'False
      RecordSource    =   "SELECT DISTINCTROW M_DatosGenerales.IDCorrelativo, M_DatosGenerales.Elemento, M_DatosGenerales.Descripcion FROM M_DatosGenerales WHERE ((M_DatosGenerales.IDClase=2))"
      Top             =   4050
      Visible         =   0   'False
      Width           =   2895
   End
   Begin SSPanel Panel3D1 
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      BorderWidth     =   1
      Height          =   1905
      Left            =   5490
      TabIndex        =   13
      Top             =   2070
      Width           =   1635
      Begin ListBox lstRequerimientos 
         BackColor       =   &H00FFFFFF&
         FontBold        =   0   'False
         FontItalic      =   0   'False
         FontName        =   "MS Sans Serif"
         FontSize        =   9.75
         FontStrikethru  =   0   'False
         FontUnderline   =   0   'False
         Height          =   1230
         Left            =   90
         TabIndex        =   19
         Top             =   540
         Width           =   1455
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00978055&
         Height          =   400
         Index           =   7
         Left            =   990
         Outline         =   0   'False
         Picture         =   PROFES.FRX:05CA
         RoundedCorners  =   0   'False
         TabIndex        =   15
         TabStop         =   0   'False
         Tag             =   "Nueva (ALT + N)"
         Top             =   90
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00978055&
         Height          =   400
         Index           =   6
         Left            =   270
         Outline         =   0   'False
         Picture         =   PROFES.FRX:0B94
         RoundedCorners  =   0   'False
         TabIndex        =   14
         TabStop         =   0   'False
         Tag             =   "Nueva (ALT + N)"
         Top             =   90
         Width           =   400
      End
   End
   Begin Data dtaProfesores 
      BackColor       =   &H00808000&
      Caption         =   "dtaProfesores"
      Connect         =   ""
      DatabaseName    =   "C:\SIGHOR\DATOS\HOR_UDEP.MDB"
      Exclusive       =   0   'False
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   270
      Left            =   540
      Options         =   0
      ReadOnly        =   0   'False
      RecordSource    =   "select * from M_Profesores order by NOMBRE"
      Top             =   1710
      Visible         =   0   'False
      Width           =   2895
   End
   Begin SSPanel Estado 
      Align           =   2  'Align Bottom
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   420
      Left            =   0
      TabIndex        =   7
      Top             =   4665
      Width           =   7350
   End
   Begin SSPanel BarraMenu 
      Align           =   1  'Align Top
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      Height          =   735
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7350
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   3
         Left            =   1710
         Outline         =   0   'False
         Picture         =   PROFES.FRX:115E
         RoundedCorners  =   0   'False
         TabIndex        =   6
         TabStop         =   0   'False
         Top             =   180
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   2
         Left            =   1170
         Outline         =   0   'False
         Picture         =   PROFES.FRX:1728
         RoundedCorners  =   0   'False
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   180
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   1
         Left            =   720
         Outline         =   0   'False
         Picture         =   PROFES.FRX:1CF2
         RoundedCorners  =   0   'False
         TabIndex        =   4
         TabStop         =   0   'False
         Tag             =   "Editar (ALT + E)"
         Top             =   180
         Visible         =   0   'False
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00978055&
         Height          =   400
         Index           =   0
         Left            =   180
         Outline         =   0   'False
         Picture         =   PROFES.FRX:22BC
         RoundedCorners  =   0   'False
         TabIndex        =   3
         TabStop         =   0   'False
         Tag             =   "Nueva (ALT + N)"
         Top             =   180
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "&Salir"
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   5
         Left            =   6390
         Outline         =   0   'False
         RoundedCorners  =   0   'False
         TabIndex        =   2
         TabStop         =   0   'False
         Top             =   180
         Width           =   825
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   4
         Left            =   2160
         Outline         =   0   'False
         Picture         =   PROFES.FRX:2886
         RoundedCorners  =   0   'False
         TabIndex        =   1
         TabStop         =   0   'False
         Top             =   180
         Width           =   400
      End
   End
   Begin SSDataGrid grdProfesores 
      Prop110         =   PROFES.FRX:2E50
      AllowAdditions  =   0   'False
      AllowUpdates    =   0   'False
      BackColor       =   &H0080FFFF&
      Caption         =   "PROFESORES"
      DataSource      =   "dtaProfesores"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   3435
      Left            =   180
      RowHeight       =   285
      ScrollBars      =   2  'Vertical
      SelectionTypeCol=   0  'None
      SelectionTypeRow=   1  'Single
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   990
      Width           =   3525
   End
   Begin Label lblEditando 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      Caption         =   "Editando"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   4050
      TabIndex        =   17
      Top             =   4140
      Visible         =   0   'False
      Width           =   1005
   End
   Begin Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   2
      X1              =   4050
      X2              =   7200
      Y1              =   4050
      Y2              =   4050
   End
   Begin Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Ordene los elementos de la lista de acuerdo al orden que considere Ud. conveniente"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   1365
      Index           =   2
      Left            =   4050
      TabIndex        =   12
      Top             =   2520
      Width           =   1095
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Requerimientos"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   -1  'True
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   1
      Left            =   4050
      TabIndex        =   11
      Top             =   2160
      Width           =   1320
   End
   Begin Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   4050
      X2              =   7110
      Y1              =   1980
      Y2              =   1980
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Disponibilidad"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   0
      Left            =   4050
      TabIndex        =   10
      Top             =   1440
      Visible         =   0   'False
      Width           =   1200
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   3870
      X2              =   3870
      Y1              =   960
      Y2              =   4380
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Profesor"
      DataField       =   "Nombre"
      DataSource      =   "dtaProfesores"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   12
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   300
      Index           =   0
      Left            =   3990
      TabIndex        =   9
      Top             =   900
      Width           =   1035
   End
   Begin Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   3990
      X2              =   7140
      Y1              =   1260
      Y2              =   1260
   End
End
Dim MatrizRecursos(6) As String
Dim NumeroRecursos As Integer
Dim Editando As Integer

Sub ActualizaRequerimientos ()

Dim i As Integer

'Limpiar la lista
lstRequerimientos.Clear

'Agregar elementos definidos
If dtaProfesores.Recordset.Fields("R1") = 0 Then
  'No hay requerimientos definidos
  For i = 1 To NumeroRecursos
    lstRequerimientos.AddItem MatrizRecursos(i)
  Next i
Else
  'Ordenar segun requerimientos
  
  For i = 1 To NumeroRecursos
    lstRequerimientos.AddItem MatrizRecursos(dtaProfesores.Recordset.Fields("R" & i))
  Next i
  
End If


End Sub

Sub BarraMenu_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D -1
End Sub

Sub btnCancelar_click ()
  Editando = False
  lblEditando.Visible = False
  btnCancelar.Visible = False
End Sub

Sub btnMenu_click (Index As Integer)
  
  Select Case Index
  Case 0
    Dim Nombre As String, Oficina As String
    Nombre = Trim$(InputBox$("Ingrese el nombre del Profesor"))
    
    If Nombre = "" Then
      MsgBox "Debe especificar el nombre"
      Exit Sub
    End If

    Oficina = Trim$(InputBox$("Ingrese la oficina de " & Nombre))
    dtaProfesores.Recordset.AddNew
      dtaProfesores.Recordset.Fields("NOMBRE") = Nombre
      dtaProfesores.Recordset.Fields("OFICINA") = Oficina
    dtaProfesores.Recordset.Update

  Case 1
    Editando = True
    lblEditando.Visible = True
    btnCancelar.Visible = True
  Case 2
      If grdProfesores.SelCount < 1 Then
        MsgBox "Seleccione algo primero", MB_ICONEXCLAMATION
      End If
    grdProfesores.SetFocus
    SendKeys "{DEL}"
    Exit Sub
    
  Case 3
    rptProfesores.Action = 1
    Exit Sub
  Case 5
    Unload Me
    Exit Sub
  Case 6
      MueveRequerimiento -1
  Case 7
      MueveRequerimiento 1


  End Select
btnNada.SetFocus
End Sub

Sub btnMenu_MouseMove (Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D (Index)
End Sub

Sub cmbDisponibilidad_Click ()

If Editando Then
  btnCancelar_click
  If (MsgBox("Confirme " & cmbDisponibilidad.Text, 36)) = 6 Then
    dtaProfesores.Recordset.Edit
      dtaProfesores.Recordset.Fields("DISPONIBILIDAD") = cmbDisponibilidad.ListIndex
    dtaProfesores.Recordset.Update
  Else
    Editando = True
    lblEditando.Visible = True
    btnCancelar.Visible = True
  End If
End If

dtaProfesores_Reposition

End Sub

Sub dtaProfesores_Reposition ()


On Error Resume Next

  'Actualizar los requerimientos de los Profesores
    ActualizaRequerimientos

  'Actualizar Combo de Disponibilidad
    cmbDisponibilidad.ListIndex = dtaProfesores.Recordset.Fields("Disponibilidad")
On Error GoTo 0
End Sub

Sub dtaProfesores_Validate (Action As Integer, Save As Integer)

If Editando Then
  MsgBox "Termine la edicion primero"
  Action = 0
End If

End Sub

Sub Form_Activate ()
  centra Me
  'Cargar en memoria la matriz de Recursos
  NumeroRecursos = 0
  Do
    MatrizRecursos(dtarecursos.Recordset.Fields("IDCorrelativo")) = dtarecursos.Recordset.Fields("Elemento")
    NumeroRecursos = NumeroRecursos + 1
    dtarecursos.Recordset.MoveNext
    If dtarecursos.Recordset.EOF = True Then Exit Do
  Loop

  'Cargar el combo de Disponibilidades
    cmbDisponibilidad.AddItem "Completa"
    cmbDisponibilidad.AddItem "Mañana"
    cmbDisponibilidad.AddItem "Tarde"
    cmbDisponibilidad.AddItem "Visitante"

ActualizaRequerimientos
'cmbDisponibilidad.ListIndex = dtaProfesores.Recordset.Fields("Disponibilidad")

End Sub

Sub Form_Load ()
  NumeroBotones = 9
End Sub

Sub Form_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D -1
End Sub

Sub grdProfesores_DeleteBegin (RtnCancel As Integer, RtnDispPromptMsg As Integer)
    
    Dim Rc%
    Rc = MsgBox("Seguro que desea borrar al Profesor " & dtaProfesores.Recordset.Fields("NOMBRE") & " ?", MB_YESNO + MB_ICONQUESTION)
    
    If Rc = IDNO Then
        RtnCancel = True
    End If
    
    RtnDispPromptMsg = False

End Sub

Sub grdProfesores_KeyPress (KeyAscii As Integer)
  
  Me.MousePointer = 11
  Dim letra As String
  Dim ultimo

  letra = UCase$(Chr(KeyAscii))

  ultimo = dtaProfesores.Recordset.Bookmark
  dtaProfesores.Recordset.FindFirst "NOMBRE like '" & letra & "*'"
  If dtaProfesores.Recordset.NoMatch Then dtaProfesores.Recordset.Bookmark = ultimo
  Me.MousePointer = 0

End Sub

Sub grdProfesores_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D -1
End Sub

Sub lstRequerimientos_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D -1
End Sub

Sub MueveRequerimiento (Valor As Integer)

Dim Seleccionado As Integer
Dim Antiguo As Integer
Dim Nuevo As Integer

  If lstRequerimientos.ListIndex = -1 Then
    MsgBox "Seleccione"
    Exit Sub
  End If

  Seleccionado = lstRequerimientos.ListIndex + 1

'Si es un extremo, no es completamente libre
  If Seleccionado + Valor <= 0 Or Seleccionado + Valor > NumeroRecursos Then
    MsgBox "Ese cambio no es posible"
    Exit Sub
  End If

  
'Actualizar la lista

  dtaProfesores.Recordset.Edit
    Antiguo = dtaProfesores.Recordset.Fields("R" & Seleccionado)
    Nuevo = dtaProfesores.Recordset.Fields("R" & Seleccionado + Valor)
    
    dtaProfesores.Recordset.Fields("R" & Seleccionado) = Nuevo
    dtaProfesores.Recordset.Fields("R" & Seleccionado + Valor) = Antiguo
  dtaProfesores.Recordset.Update
  dtaProfesores_Reposition
  
'Mantener seleccionado el ITEM
lstRequerimientos.ListIndex = Seleccionado + Valor - 1

End Sub

Sub Panel3D1_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D -1
End Sub

