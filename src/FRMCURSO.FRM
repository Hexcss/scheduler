VERSION 2.00
Begin Form frmCursos 
   BackColor       =   &H00808000&
   Caption         =   "Administrador de Cursos"
   ClientHeight    =   4950
   ClientLeft      =   195
   ClientTop       =   1470
   ClientWidth     =   9030
   ControlBox      =   0   'False
   Height          =   5355
   Left            =   135
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4950
   ScaleWidth      =   9030
   Top             =   1125
   Width           =   9150
   Begin CheckBox chkPrograma 
      BackColor       =   &H00808000&
      Caption         =   " Sistemas"
      DataField       =   "PS"
      DataSource      =   "dtaCursos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   0
      Left            =   7290
      TabIndex        =   27
      TabStop         =   0   'False
      Top             =   3240
      Width           =   1185
   End
   Begin CommandButton btnNada 
      Caption         =   "Jajaja, soy un boton oculto!!!"
      Height          =   375
      Left            =   3330
      TabIndex        =   26
      Top             =   5310
      Width           =   6135
   End
   Begin SSPanel Panel3D1 
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      BorderWidth     =   1
      Height          =   1275
      Left            =   5760
      TabIndex        =   19
      Top             =   1260
      Width           =   3075
      Begin SSRibbon grpFiltraH 
         AutoSize        =   0  'None
         BevelWidth      =   1
         GroupNumber     =   3
         Height          =   315
         Left            =   2520
         Outline         =   0   'False
         PictureUp       =   FRMCURSO.FRX:0000
         RoundedCorners  =   0   'False
         Top             =   810
         Width           =   315
      End
      Begin SSRibbon grpFiltraCredito 
         AutoSize        =   0  'None
         BevelWidth      =   1
         GroupNumber     =   3
         Height          =   315
         Left            =   2520
         Outline         =   0   'False
         PictureUp       =   FRMCURSO.FRX:05CA
         RoundedCorners  =   0   'False
         Top             =   450
         Width           =   315
      End
      Begin SSRibbon grpFiltraCiclo 
         AutoSize        =   0  'None
         BevelWidth      =   1
         GroupNumber     =   3
         Height          =   315
         Left            =   2520
         Outline         =   0   'False
         PictureUp       =   FRMCURSO.FRX:0B94
         RoundedCorners  =   0   'False
         Top             =   90
         Width           =   315
      End
      Begin ComboBox cmbCiclo 
         Height          =   315
         Left            =   990
         Style           =   2  'Dropdown List
         TabIndex        =   22
         Top             =   90
         Width           =   915
      End
      Begin ComboBox cmbCreditos 
         Height          =   315
         Left            =   990
         Style           =   2  'Dropdown List
         TabIndex        =   21
         Top             =   450
         Width           =   915
      End
      Begin ComboBox cmbH 
         Height          =   315
         Left            =   990
         Style           =   2  'Dropdown List
         TabIndex        =   20
         Top             =   810
         Width           =   915
      End
      Begin SSRibbon grpOrdenaCiclo 
         AutoSize        =   0  'None
         BevelWidth      =   1
         Height          =   315
         Left            =   2070
         Outline         =   0   'False
         PictureUp       =   FRMCURSO.FRX:115E
         RoundedCorners  =   0   'False
         Top             =   90
         Width           =   315
      End
      Begin SSRibbon grpOrdenaCredito 
         AutoSize        =   0  'None
         BevelWidth      =   1
         Height          =   315
         Left            =   2070
         Outline         =   0   'False
         PictureUp       =   FRMCURSO.FRX:1728
         RoundedCorners  =   0   'False
         Top             =   450
         Width           =   315
      End
      Begin SSRibbon grpOrdenaH 
         AutoSize        =   0  'None
         BevelWidth      =   1
         Height          =   315
         Left            =   2070
         Outline         =   0   'False
         PictureUp       =   FRMCURSO.FRX:1CF2
         RoundedCorners  =   0   'False
         Top             =   810
         Width           =   315
      End
      Begin Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "H"
         Height          =   195
         Index           =   2
         Left            =   180
         TabIndex        =   25
         Top             =   900
         Width           =   150
      End
      Begin Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Créditos"
         Height          =   195
         Index           =   1
         Left            =   180
         TabIndex        =   24
         Top             =   540
         Width           =   705
      End
      Begin Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ciclo"
         Height          =   195
         Index           =   0
         Left            =   180
         TabIndex        =   23
         Top             =   180
         Width           =   435
      End
   End
   Begin Data dtaCursos 
      BackColor       =   &H00808000&
      Caption         =   "dtaCursos"
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
      Left            =   1170
      Options         =   0
      ReadOnly        =   0   'False
      RecordSource    =   "SELECT * FROM m_cursos WHERE ciclo>0 ORDER BY nombre"
      Top             =   1080
      Visible         =   0   'False
      Width           =   2985
   End
   Begin SSPanel BarraMenu 
      Align           =   1  'Align Top
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      Height          =   735
      Left            =   0
      TabIndex        =   14
      Top             =   0
      Width           =   9030
      Begin CrystalReport rptCursos 
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
         Left            =   6120
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
         ReportFileName  =   "c:\sighor\reporte\cursos.rpt"
         ReportSource    =   0  'Report File
         ReportTitle     =   ""
         SelectionFormula=   ""
         SessionHandle   =   0
         SQLQuery        =   ""
         Top             =   180
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
      Begin SSRibbon grpNoCiclo0 
         AutoSize        =   0  'None
         BevelWidth      =   1
         GroupNumber     =   2
         Height          =   400
         Left            =   3060
         PictureDn       =   FRMCURSO.FRX:22BC
         PictureUp       =   FRMCURSO.FRX:2886
         RoundedCorners  =   0   'False
         Top             =   180
         Value           =   -1  'True
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   3
         Left            =   1710
         Outline         =   0   'False
         Picture         =   FRMCURSO.FRX:2E50
         RoundedCorners  =   0   'False
         TabIndex        =   7
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
         Picture         =   FRMCURSO.FRX:341A
         RoundedCorners  =   0   'False
         TabIndex        =   8
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
         Picture         =   FRMCURSO.FRX:39E4
         RoundedCorners  =   0   'False
         TabIndex        =   18
         TabStop         =   0   'False
         Tag             =   "Editar (ALT + E)"
         Top             =   180
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00978055&
         Height          =   400
         Index           =   0
         Left            =   180
         Outline         =   0   'False
         Picture         =   FRMCURSO.FRX:3FAE
         RoundedCorners  =   0   'False
         TabIndex        =   17
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
         Left            =   8100
         Outline         =   0   'False
         RoundedCorners  =   0   'False
         TabIndex        =   16
         TabStop         =   0   'False
         Top             =   180
         Width           =   825
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   4
         Left            =   2250
         Outline         =   0   'False
         Picture         =   FRMCURSO.FRX:4578
         RoundedCorners  =   0   'False
         TabIndex        =   15
         TabStop         =   0   'False
         Top             =   180
         Width           =   400
      End
   End
   Begin CheckBox chkPrograma 
      BackColor       =   &H00808000&
      Caption         =   " Civil"
      DataField       =   "PC"
      DataSource      =   "dtaCursos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   3
      Left            =   5940
      TabIndex        =   13
      TabStop         =   0   'False
      Top             =   3780
      Width           =   2415
   End
   Begin CheckBox chkPrograma 
      BackColor       =   &H00808000&
      Caption         =   " Mecánico - Eléctrica"
      DataField       =   "PE"
      DataSource      =   "dtaCursos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   2
      Left            =   5940
      TabIndex        =   12
      TabStop         =   0   'False
      Top             =   3510
      Width           =   2535
   End
   Begin CheckBox chkPrograma 
      BackColor       =   &H00808000&
      Caption         =   " Industrial"
      DataField       =   "PI"
      DataSource      =   "dtaCursos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   1
      Left            =   5940
      TabIndex        =   11
      TabStop         =   0   'False
      Top             =   3240
      Width           =   1275
   End
   Begin CheckBox chkLaboratorio 
      BackColor       =   &H00808000&
      Caption         =   " Laboratorio"
      DataField       =   "Laboratorio"
      DataSource      =   "dtaCursos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   7380
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   2610
      Width           =   1365
   End
   Begin CheckBox chkActivo 
      BackColor       =   &H00808000&
      Caption         =   " Activo"
      DataField       =   "Activo"
      DataSource      =   "dtaCursos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   5940
      TabIndex        =   9
      TabStop         =   0   'False
      Top             =   2610
      Width           =   975
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
      TabIndex        =   5
      Top             =   4530
      Width           =   9030
   End
   Begin SSCommand btnActualizar 
      BevelWidth      =   1
      Caption         =   "Terminar Edición"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   6840
      Outline         =   0   'False
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   4140
      Visible         =   0   'False
      Width           =   1995
   End
   Begin SSDataGrid grdCursos 
      Prop110         =   FRMCURSO.FRX:4B42
      AllowAdditions  =   0   'False
      AllowUpdates    =   0   'False
      BackColor       =   &H0080FFFF&
      Caption         =   "CURSOS"
      DataSource      =   "dtaCursos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   3555
      Left            =   90
      RowHeight       =   285
      ScrollBars      =   2  'Vertical
      SelectionTypeCol=   0  'None
      SelectionTypeRow=   1  'Single
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   840
      Width           =   5415
   End
   Begin Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Vacantes :"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   7380
      TabIndex        =   29
      Top             =   900
      Width           =   930
   End
   Begin Label lblVacantes 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   "000"
      DataField       =   "Vacantes"
      DataSource      =   "dtaCursos"
      ForeColor       =   &H00FFFFFF&
      Height          =   225
      Left            =   8370
      TabIndex        =   28
      Top             =   900
      Width           =   450
   End
   Begin Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   5760
      X2              =   8880
      Y1              =   4050
      Y2              =   4050
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Programa"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   5
      Left            =   5760
      TabIndex        =   6
      Top             =   2970
      Width           =   855
   End
   Begin Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   2
      X1              =   5760
      X2              =   8880
      Y1              =   2880
      Y2              =   2880
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "nn"
      DataField       =   "SIGLA"
      DataSource      =   "dtaCursos"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   12
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   300
      Left            =   6600
      TabIndex        =   4
      Top             =   840
      Width           =   315
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   3
      X1              =   5640
      X2              =   5640
      Y1              =   990
      Y2              =   4410
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Curso"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   12
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   300
      Index           =   0
      Left            =   5760
      TabIndex        =   3
      Top             =   840
      Width           =   720
   End
   Begin Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   5760
      X2              =   8910
      Y1              =   1170
      Y2              =   1170
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
      Height          =   285
      Left            =   5760
      TabIndex        =   2
      Top             =   4140
      Visible         =   0   'False
      Width           =   1005
   End
   Begin Menu mnuOpciones 
      Caption         =   "MnuOpciones"
      Visible         =   0   'False
      Begin Menu mnuNuevo 
         Caption         =   "Nuevo"
      End
      Begin Menu mnuEditar 
         Caption         =   "Editar"
      End
      Begin Menu mnuEliminar 
         Caption         =   "Eliminar"
      End
      Begin Menu mnuReporte 
         Caption         =   "Reporte"
      End
   End
   Begin Menu MnuEdicion 
      Caption         =   "MnuEdicion"
      Visible         =   0   'False
      Begin Menu mnuEditarNombre 
         Caption         =   "Editar Nombre"
      End
      Begin Menu mnuEditarCiclo 
         Caption         =   "Editar Ciclo"
      End
      Begin Menu mnuEditarCreditos 
         Caption         =   "Editar Creditos"
      End
      Begin Menu mnuEditarH 
         Caption         =   "Editar H"
      End
   End
End
Dim Editando As Integer

Sub ActualizaRegistros ()

Dim miSQL As String
Dim Ordenado As Integer
Dim Filtrado As Integer

miSQL = "SELECT * FROM m_cursos "

'Ver si se muestran los de ciclo 0
  If grpNoCiclo0 Then
    miSQL = miSQL & "WHERE ciclo>0 "
  Else
    miSQL = miSQL & "WHERE ciclo>-1 "
  End If

'Ver si hay algun filtro de ciclo
  If grpFiltraCiclo Then
    miSQL = miSQL & "AND ciclo=" & cmbCiclo.Text & " "
  End If

'Ver si hay algun filtro de creditos
  If grpFiltraCredito Then
    miSQL = miSQL & "AND creditos=" & cmbCreditos.Text & " "
  End If

'Ver si hay algun filtro de H
  If grpFiltraH Then
    miSQL = miSQL & "AND H='" & Trim$(cmbH.Text) & "' "
  End If


'Ver si hay algun Orden de ciclo
  If grpOrdenaCiclo Then
    miSQL = miSQL & "ORDER BY ciclo "
    Ordenado = True
  End If

'Ver si hay algun orden de creditos
  If grpOrdenaCredito Then
    miSQL = miSQL & "ORDER BY creditos "
    Ordenado = True
  End If

'Ver si hay algun orden de H
  If grpOrdenaH Then
    miSQL = miSQL & "ORDER BY h "
    Ordenado = True
  End If

'Si no hay criterio, ordenarlo por el nombre
If Not Ordenado Then
  miSQL = miSQL & "ORDER BY nombre "
End If


dtaCursos.RecordSource = miSQL
dtaCursos.Refresh

End Sub

Sub AgregaCurso ()
  Dim NombreCurso As String, Sigla As String, ciclo As Integer
  Dim Creditos As Integer, H As String
  Dim I As Integer, S As Integer, C As Integer, E As Integer
  Dim Activo As Integer, Visitante As Integer, Laboratorio As Integer
  Dim Vacantes As Integer
  
  NombreCurso = PreguntaTexto("Ingrese Curso", "CURSO", 50)
    If NombreCurso = "" Then Exit Sub
  
  Sigla = PreguntaTexto("Ingrese Siglas de " & NombreCurso, "CURSO", 4)
    If Sigla = "" Then Exit Sub

  ciclo = Val(PreguntaTexto("Ingrese Ciclo de " & NombreCurso, "CURSO", 2))
    If ciclo < 0 Or ciclo > 12 Then
      MsgBox "Ciclo Invalido!"
      Exit Sub
    End If
    
  Creditos = Val(PreguntaTexto("Ingrese Créditos de " & NombreCurso, "CURSO", 2))
    If Creditos < 0 Or Creditos > 6 Then
      MsgBox "Créditos Invalidos!"
      Exit Sub
    End If
  
  Vacantes = Val(PreguntaTexto("Ingrese las vacantes proyectadas para " & NombreCurso, "CURSO", 2))
    If Vacantes < 0 Then
      MsgBox "Vacantes Invalidas!"
      Exit Sub
    End If
  
  H = PreguntaTexto("Ingrese H de " & NombreCurso, "CURSO", 1)
    If H = "" Then Exit Sub

  If (MsgBox("Pertenece al programa académico de Ing. Industrial?", 36, "CURSO")) = 6 Then I = True Else I = False
  If (MsgBox("Pertenece al programa académico de Ing. de Sistemas?", 36, "CURSO")) = 6 Then S = True Else S = False
  If (MsgBox("Pertenece al programa académico de Ing. Civil?", 36, "CURSO")) = 6 Then C = True Else C = False
  If (MsgBox("Pertenece al programa académico de Ing. Mecánico Eléctrica?", 36, "CURSO")) = 6 Then E = True Else E = False
  If (MsgBox("Se dicta el presente ciclo?", 36, "CURSO")) = 6 Then Activo = True Else Activo = False
  If (MsgBox("Lo dicta un profesor visitante?", 36, "CURSO")) = 6 Then Visitante = True Else Visitante = False
  If (MsgBox("Tiene laboratorio?", 36, "CURSO")) = 6 Then Laboratorio = True Else Laboratorio = False

  dtaCursos.Recordset.AddNew
    dtaCursos.Recordset.Fields("NOMBRE") = NombreCurso
    dtaCursos.Recordset.Fields("SIGLA") = UCase$(Sigla)
    dtaCursos.Recordset.Fields("CICLO") = ciclo
    dtaCursos.Recordset.Fields("CREDITOS") = Creditos
    dtaCursos.Recordset.Fields("PROGRAMA") = IIf(I, "I", "") & IIf(S, "S", "") & IIf(C, "C", "") & IIf(E, "E", "")
    dtaCursos.Recordset.Fields("H") = H
    dtaCursos.Recordset.Fields("VACANTES") = Vacantes
    dtaCursos.Recordset.Fields("ACTIVO") = Activo
    dtaCursos.Recordset.Fields("LABORATORIO") = Laboratorio
    dtaCursos.Recordset.Fields("PS") = S
    dtaCursos.Recordset.Fields("PI") = I
    dtaCursos.Recordset.Fields("PC") = C
    dtaCursos.Recordset.Fields("PE") = E
    dtaCursos.Recordset.Fields("ProfesorVisitante") = Visitante
  dtaCursos.Recordset.Update

End Sub

Sub BarraMenu_MouseMove (button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D -1
End Sub

Sub btnActualizar_Click ()
  
  Editando = False
  lblEditando.Visible = False
  btnActualizar.Visible = False

End Sub

Sub btnMenu_click (Index As Integer)

If lblEditando.Visible = True Then
  MsgBox "Termine la edicion primero"
  Exit Sub
End If

  Select Case Index
  Case 0
    AgregaCurso
  Case 1
    grpOrdenaCiclo.Value = False
    grpOrdenaCredito.Value = False
    grpOrdenaH.Value = False
    grpFiltraCiclo.Value = False
    grpFiltraCredito.Value = False
    grpFiltraH.Value = False

    Editando = True
    lblEditando.Visible = True
    btnActualizar.Visible = True
  Case 2
      If grdCursos.SelCount < 1 Then
        MsgBox "Seleccione algo primero", MB_ICONEXCLAMATION
      End If
    grdCursos.SetFocus
    SendKeys "{DEL}"
    Exit Sub
  Case 3
    rptCursos.Action = 1
    Exit Sub
  Case 4
    MsgBox "Reportes especiales"
  Case 5
    Unload Me
    Exit Sub
  End Select

btnNada.SetFocus

End Sub

Sub btnMenu_MouseMove (Index As Integer, button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D Index
End Sub

Sub chkActivo_Click ()
  click
End Sub

Sub chkLaboratorio_Click ()
  click
End Sub

Sub chkPrograma_Click (Index As Integer)
  click
End Sub

Sub click ()
  
  If lblEditando.Visible = True Then
    
    lblEditando.Visible = False
      dtaCursos.Recordset.Update
    lblEditando.Visible = True

  Else
    dtaCursos.UpdateControls
  End If

End Sub

Sub cmbCiclo_Click ()
  
  If grpFiltraCiclo Then
    ActualizaRegistros
  End If

End Sub

Sub cmbCreditos_Click ()
If lblEditando.Visible = True Then
  MsgBox "Termine la edicion primero"
  Exit Sub
End If
  
  If grpFiltraCredito Then
    ActualizaRegistros
  End If
  

End Sub

Sub cmbH_Click ()
If lblEditando.Visible = True Then
  MsgBox "Termine la edicion primero"
  Exit Sub
End If
  
  If grpFiltraH Then
    ActualizaRegistros
  End If

End Sub

Sub dtaCursos_reposition ()

On Error Resume Next

  'Actualizar Combo de Ciclo
    cmbCiclo.ListIndex = dtaCursos.Recordset.Fields("CICLO")
  'Actualizar combo de H
    Dim Htmp
    Htmp = IIf("" & dtaCursos.Recordset.Fields("H") = "E", "E", Val("" & dtaCursos.Recordset.Fields("H")) - 1)
    Htmp = IIf("" & dtaCursos.Recordset.Fields("H") = "V", "V", Val("" & dtaCursos.Recordset.Fields("H")) - 1)
    cmbH.ListIndex = IIf(Htmp = "E", 8, Htmp)
    cmbH.ListIndex = IIf(Htmp = "V", 9, Htmp)
  'Actualizar combo de Creditos
    cmbCreditos.ListIndex = dtaCursos.Recordset.Fields("Creditos") - 1

On Error GoTo 0

End Sub

Sub dtaCursos_Validate (Action As Integer, Save As Integer)
  
  If lblEditando.Visible = True Then
    MsgBox "Termine la edicion primero"
    Action = 0
  End If

End Sub

Sub Form_Activate ()
  centra Me
End Sub

Sub Form_Load ()
NumeroBotones = 6

Dim I As Integer

'Llenar combo de ciclo
  For I = 0 To 12
    cmbCiclo.AddItem Str(I)
  Next I

'Llenar combo de creditos
  For I = 1 To 6
    cmbCreditos.AddItem Str(I)
  Next I

'Llenar combo de H
  For I = 1 To 8
    cmbH.AddItem Str(I)
  Next I
    cmbH.AddItem "E"
    cmbH.AddItem "V"

End Sub

Sub grdCursos_DeleteBegin (RtnCancel As Integer, RtnDispPromptMsg As Integer)
    
    Dim Rc%
    Rc = MsgBox("Seguro que desea borrar el curso " & Chr(10) & dtaCursos.Recordset.Fields("NOMBRE") & " ?", MB_YESNO + MB_ICONQUESTION)
    
    If Rc = IDNO Then
        RtnCancel = True
    End If
    
    RtnDispPromptMsg = False

End Sub

Sub grdCursos_MouseDown (button As Integer, Shift As Integer, X As Single, Y As Single)
  If button = 1 Then Exit Sub
    
    If lblEditando.Visible = True Then
      PopupMenu mnuEdicion
    Else
      PopupMenu mnuOpciones
    End If

End Sub

Sub grdCursos_MouseMove (button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D -1
End Sub

Sub grpFiltraCiclo_Click (Value As Integer)

If lblEditando.Visible = True Then
  MsgBox "Termine la edicion primero"
  grpFiltraCiclo.Value = False
  Exit Sub
End If
  
  ActualizaRegistros

End Sub

Sub grpFiltraCredito_Click (Value As Integer)

If lblEditando.Visible = True Then
  MsgBox "Termine la edicion primero"
  grpFiltraCredito.Value = False
  Exit Sub
End If

  ActualizaRegistros

End Sub

Sub grpFiltraH_Click (Value As Integer)

If lblEditando.Visible = True Then
  MsgBox "Termine la edicion primero"
  grpFiltraH.Value = False
  Exit Sub
End If

  ActualizaRegistros

End Sub

Sub grpNoCiclo0_Click (Value As Integer)
  ActualizaRegistros
End Sub

Sub grpOrdenaCiclo_Click (Value As Integer)

If lblEditando.Visible = True Then
  MsgBox "Termine la edicion primero"
  grpOrdenaCiclo.Value = False
  Exit Sub
End If
   
  ActualizaRegistros

End Sub

Sub grpOrdenaCredito_Click (Value As Integer)

If lblEditando.Visible = True Then
  MsgBox "Termine la edicion primero"
  grpOrdenaCredito.Value = False
  Exit Sub
End If

  ActualizaRegistros

End Sub

Sub grpOrdenaH_Click (Value As Integer)

If lblEditando.Visible = True Then
  MsgBox "Termine la edicion primero"
  grpOrdenaH.Value = False
  Exit Sub
End If
  
  ActualizaRegistros

End Sub

Sub lblVacantes_Click ()
  
  If lblEditando.Visible = True Then
    
  Do Until Vacantes > 0
    Vacantes = Val(InputBox("Ingrese el número de Vacantes de " & dtaCursos.Recordset.Fields("Nombre"), "Actualizar Vacantes", lblVacantes.Caption))
    If Vacantes <= 0 Then
      MsgBox "SIgHor necesita que defina el numero de Vacantes"
    End If
  Loop
    
    lblVacantes.Caption = Vacantes
    dtaCursos.Recordset.Update
  End If

End Sub

Sub mnuEditar_Click ()
  btnMenu_click 1
End Sub

Sub mnuEditarCiclo_Click ()

Dim dato As String
  
  dato = InputBox("Ingrese nuevo Ciclo para " & dtaCursos.Recordset.Fields("Nombre"), , dtaCursos.Recordset.Fields("CICLO"))
  If dato = "" Then Exit Sub

lblEditando.Visible = False
  dtaCursos.Recordset.Edit
    dtaCursos.Recordset.Fields("CICLO") = dato
  dtaCursos.Recordset.Update
lblEditando.Visible = True

End Sub

Sub mnuEditarCreditos_Click ()

Dim dato As String
  
  dato = InputBox("Ingrese nuevo Nº de Créditos para " & dtaCursos.Recordset.Fields("Nombre"), , dtaCursos.Recordset.Fields("CREDITOS"))
  If dato = "" Then Exit Sub

lblEditando.Visible = False
  dtaCursos.Recordset.Edit
    dtaCursos.Recordset.Fields("CREDITOS") = dato
  dtaCursos.Recordset.Update
lblEditando.Visible = True

End Sub

Sub mnuEditarH_Click ()

Dim dato As String
  
  dato = InputBox("Ingrese nuevo Valor de H " & dtaCursos.Recordset.Fields("Nombre"), , dtaCursos.Recordset.Fields("H"))
  If dato = "" Then Exit Sub

lblEditando.Visible = False
  dtaCursos.Recordset.Edit
    dtaCursos.Recordset.Fields("H") = dato
  dtaCursos.Recordset.Update
lblEditando.Visible = True

End Sub

Sub mnuEditarNombre_Click ()

Dim dato As String
  
  dato = InputBox("Ingrese nuevo nombre para " & dtaCursos.Recordset.Fields("Nombre"), , dtaCursos.Recordset.Fields("Nombre"))
  If dato = "" Then Exit Sub

lblEditando.Visible = False
  dtaCursos.Recordset.Edit
    dtaCursos.Recordset.Fields("NOMBRE") = dato
  dtaCursos.Recordset.Update
lblEditando.Visible = True

End Sub

Sub mnuEliminar_Click ()
  btnMenu_click 2
End Sub

Sub mnuNuevo_Click ()
  btnMenu_click 0
End Sub

Sub mnuReporte_Click ()
  btnMenu_click 3
End Sub

