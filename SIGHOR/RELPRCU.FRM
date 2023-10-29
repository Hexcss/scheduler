VERSION 2.00
Begin Form frmProfesorCurso 
   BackColor       =   &H00808000&
   Caption         =   "Relacion Profesor Curso"
   ClientHeight    =   5190
   ClientLeft      =   1065
   ClientTop       =   1140
   ClientWidth     =   7485
   ForeColor       =   &H00808000&
   Height          =   5595
   Left            =   1005
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5190
   ScaleWidth      =   7485
   Top             =   795
   Width           =   7605
   Begin CommandButton btnNada 
      Caption         =   "Command2"
      Height          =   555
      Left            =   8370
      TabIndex        =   13
      Top             =   2070
      Width           =   1185
   End
   Begin CrystalReport rptProfesorCurso 
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
      Left            =   3150
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
      ReportFileName  =   "c:\sighor\reporte\profcur.rpt"
      ReportSource    =   0  'Report File
      ReportTitle     =   ""
      SelectionFormula=   ""
      SessionHandle   =   0
      SQLQuery        =   ""
      Top             =   2340
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
   Begin SSPanel BarraMenu 
      Align           =   1  'Align Top
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      Height          =   735
      Left            =   0
      TabIndex        =   6
      Top             =   0
      Width           =   7485
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   3
         Left            =   2610
         Outline         =   0   'False
         Picture         =   RELPRCU.FRX:0000
         RoundedCorners  =   0   'False
         TabIndex        =   12
         TabStop         =   0   'False
         Tag             =   "Imprimir"
         Top             =   180
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   2
         Left            =   2160
         Outline         =   0   'False
         Picture         =   RELPRCU.FRX:05CA
         RoundedCorners  =   0   'False
         TabIndex        =   11
         TabStop         =   0   'False
         Tag             =   "Eliminar"
         Top             =   180
         Visible         =   0   'False
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "Eliminar"
         ForeColor       =   &H00978055&
         Height          =   405
         Index           =   1
         Left            =   1170
         Outline         =   0   'False
         RoundedCorners  =   0   'False
         TabIndex        =   10
         TabStop         =   0   'False
         Tag             =   "Editar"
         Top             =   180
         Width           =   945
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "Agregar"
         ForeColor       =   &H00978055&
         Height          =   405
         Index           =   0
         Left            =   180
         Outline         =   0   'False
         RoundedCorners  =   0   'False
         TabIndex        =   9
         TabStop         =   0   'False
         Tag             =   "Nueva"
         Top             =   180
         Width           =   945
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "&Salir"
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   5
         Left            =   6480
         Outline         =   0   'False
         RoundedCorners  =   0   'False
         TabIndex        =   8
         TabStop         =   0   'False
         Top             =   180
         Width           =   825
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   4
         Left            =   3060
         Outline         =   0   'False
         Picture         =   RELPRCU.FRX:0B94
         RoundedCorners  =   0   'False
         TabIndex        =   7
         TabStop         =   0   'False
         Tag             =   "MiniConsulta"
         Top             =   180
         Width           =   400
      End
   End
   Begin Data dtaProfesorCurso 
      Caption         =   "dtaProfesorCurso"
      Connect         =   ""
      DatabaseName    =   "C:\SIGHOR\DATOS\HOR_UDEP.MDB"
      Exclusive       =   0   'False
      Height          =   285
      Left            =   3240
      Options         =   0
      ReadOnly        =   0   'False
      RecordSource    =   ""
      Top             =   1800
      Visible         =   0   'False
      Width           =   3075
   End
   Begin SSCommand btnEliminar 
      BevelWidth      =   1
      Caption         =   "Eliminarle curso"
      Height          =   375
      Left            =   810
      RoundedCorners  =   0   'False
      TabIndex        =   5
      Top             =   4680
      Width           =   1545
   End
   Begin SSCommand btnAgregar 
      BevelWidth      =   1
      Caption         =   "Agregarle"
      Height          =   375
      Left            =   810
      RoundedCorners  =   0   'False
      TabIndex        =   4
      Top             =   4230
      Width           =   1545
   End
   Begin SSDataGrid grdProfeCurso 
      Prop110         =   RELPRCU.FRX:115E
      AllowAdditions  =   0   'False
      AllowDeletions  =   0   'False
      AllowUpdates    =   0   'False
      BackColor       =   &H0080FFFF&
      Caption         =   "grdProfesores"
      CaptionType     =   3  'No Caption
      ColHeadingLines =   0
      DataSource      =   "dtaProfesorCurso"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   825
      Left            =   2700
      RowHeight       =   150
      RowLabels       =   0   'False
      ScrollBars      =   2  'Vertical
      SelectionTypeCol=   0  'None
      SelectionTypeRow=   1  'Single
      TabIndex        =   3
      Top             =   4230
      Width           =   4695
   End
   Begin Data dtaCursos 
      Caption         =   "dtaCursos"
      Connect         =   ""
      DatabaseName    =   "C:\SIGHOR\DATOS\HOR_UDEP.MDB"
      Exclusive       =   0   'False
      Height          =   285
      Left            =   3240
      Options         =   0
      ReadOnly        =   -1  'True
      RecordSource    =   "select ID, NOMBRE, SIGLA from M_CURSOS where ACTIVO order by NOMBRE"
      Top             =   2340
      Visible         =   0   'False
      Width           =   2445
   End
   Begin Data dtaProfesores 
      Caption         =   "dtaProfesores"
      Connect         =   ""
      DatabaseName    =   "C:\SIGHOR\DATOS\HOR_UDEP.MDB"
      Exclusive       =   0   'False
      Height          =   285
      Left            =   3240
      Options         =   0
      ReadOnly        =   -1  'True
      RecordSource    =   "select ID, NOMBRE from M_PROFESORES order by NOMBRE"
      Top             =   2070
      Visible         =   0   'False
      Width           =   2445
   End
   Begin SSDataGrid grdProfesores 
      Prop110         =   RELPRCU.FRX:11C6
      AllowAdditions  =   0   'False
      AllowDeletions  =   0   'False
      AllowUpdates    =   0   'False
      BackColor       =   &H0080FFFF&
      Caption         =   "grdProfesores"
      CaptionType     =   3  'No Caption
      ColHeadingLines =   0
      DataSource      =   "dtaProfesores"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   2715
      Left            =   90
      RowHeight       =   150
      RowLabels       =   0   'False
      ScrollBars      =   2  'Vertical
      SelectionTypeCol=   0  'None
      SelectionTypeRow=   1  'Single
      TabIndex        =   0
      Top             =   900
      Width           =   2445
   End
   Begin SSDataGrid grdCursos 
      Prop110         =   RELPRCU.FRX:1229
      AllowAdditions  =   0   'False
      AllowDeletions  =   0   'False
      AllowUpdates    =   0   'False
      BackColor       =   &H0080FFFF&
      Caption         =   "grdProfesores"
      CaptionType     =   3  'No Caption
      ColHeadingLines =   0
      DataSource      =   "dtaCursos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   2715
      Left            =   2700
      RowHeight       =   150
      RowLabels       =   0   'False
      ScrollBars      =   2  'Vertical
      SelectionTypeCol=   0  'None
      SelectionTypeRow=   1  'Single
      TabIndex        =   1
      Top             =   900
      Width           =   4695
   End
   Begin Line Line1 
      BorderColor     =   &H00C8B99D&
      Index           =   1
      X1              =   2520
      X2              =   2520
      Y1              =   5040
      Y2              =   4230
   End
   Begin Line Line1 
      BorderColor     =   &H00C8B99D&
      Index           =   0
      X1              =   90
      X2              =   7380
      Y1              =   3780
      Y2              =   3780
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      DataField       =   "NOMBRE"
      DataSource      =   "dtaProfesores"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   2700
      TabIndex        =   2
      Top             =   3960
      Width           =   720
   End
   Begin Menu mnuVerProfes 
      Caption         =   "mnuVerProfesores"
      Visible         =   0   'False
      Begin Menu mnuVerProfesores 
         Caption         =   "Ver sus profesores"
      End
   End
End
Option Explicit

Sub AgregarRelacion (Profesor As Integer, Curso As Integer)
On Error GoTo HayError
  'MsgBox "Agregarle " & dtaCursos.Recordset.Fields("NOMBRE") & " al Profesor " & dtaProfesores.Recordset.Fields("NOMBRE")
  
  Dim DB As database
  Dim Tabla As table

  Set DB = OpenDatabase("C:\SIGHOR\DATOS\HOR_UDEP.MDB", False, False)
  Set Tabla = DB.OpenTable("R_ProfesorCurso ")
    
  Tabla.AddNew
    Tabla.Fields("IDProfesor") = Profesor
    Tabla.Fields("IDCurso") = Curso
  Tabla.Update

  Tabla.Close
  DB.Close

On Error GoTo 0
Exit Sub

HayError:

If Err = 3022 Then
  MsgBox "Esa relacion ya existe!"
  Exit Sub
End If

End Sub

Sub BarraMenu_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D (-1)
End Sub

Sub btnAgregar_click ()
  
  AgregarRelacion Val(dtaProfesores.Recordset.Fields("ID")), Val(dtaCursos.Recordset.Fields("ID"))
  dtaProfesorCurso.Refresh

End Sub

Sub btnEliminar_click ()

If grdProfeCurso.SelCount < 1 Then
  MsgBox "Seleccione"
  Exit Sub
End If


  EliminaRelacion Val(dtaProfesorCurso.Recordset.Fields("ProfesorID")), Val(dtaProfesorCurso.Recordset.Fields("CursoID"))
  dtaProfesorCurso.Refresh

End Sub

Sub btnMenu_click (Index As Integer)
  
  Select Case Index
    Case 0
      btnAgregar_click
    Case 1
      btnEliminar_click
    Case 3
      rptProfesorCurso.Action = 1
      Exit Sub
    Case 5
      Unload Me
      Exit Sub
  End Select

btnNada.SetFocus
End Sub

Sub btnMenu_MouseMove (Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D (Index)


End Sub

Sub dtaCursos_reposition ()
  Dim texto As String
  texto = "Agregarle "
  texto = texto & dtaCursos.Recordset.Fields("SIGLA")
  btnAgregar.Caption = texto
End Sub

Sub dtaProfesores_Reposition ()

MiSQL = "SELECT DISTINCTROW M_Cursos.NOMBRE as CursoNombre,M_Profesores.NOMBRE as ProfesorNombre,  M_Cursos.SIGLA, R_ProfesorCurso.IDProfesor as ProfesorID, M_Cursos.ID as CursoID "
MiSQL = MiSQL & "FROM M_Profesores INNER JOIN (M_Cursos INNER JOIN R_ProfesorCurso ON M_Cursos.ID = R_ProfesorCurso.IDCurso) ON M_Profesores.ID = R_ProfesorCurso.IDProfesor "
MiSQL = MiSQL & "WHERE ((R_ProfesorCurso.IDProfesor = " & dtaProfesores.Recordset.Fields("ID") & "))"

dtaProfesorCurso.RecordSource = MiSQL
dtaProfesorCurso.Refresh

End Sub

Sub EliminaRelacion (Profesor As Integer, Curso As Integer)

  Dim DB As database
  Dim Tabla As table

  Set DB = OpenDatabase("C:\SIGHOR\DATOS\HOR_UDEP.MDB", False, False)
  Set Tabla = DB.OpenTable("R_ProfesorCurso ")
  
  'table.Seek comparison, key1, key2...
  Tabla.MoveFirst
  Tabla.Index = "ID"
  Tabla.Seek "=", Curso, Profesor
  Tabla.Delete


  Tabla.Close
  DB.Close

End Sub

Sub Form_Activate ()
  centra Me
End Sub

Sub Form_Load ()
  NumeroBotones = 6
End Sub

Sub Form_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
botones3D (-1)
End Sub

Sub grdCursos_KeyPress (KeyAscii As Integer)
  
  Dim Tecla As String
  Dim Marca
  Tecla = Chr(KeyAscii)

  Marca = dtaCursos.Recordset.Bookmark
  dtaCursos.Recordset.MoveLast
  dtaCursos.Recordset.FindFirst "NOMBRE like '" & Tecla & "*'"
  
  If dtaCursos.Recordset.NoMatch Then
    dtaCursos.Recordset.Bookmark = Marca
  End If

End Sub

Sub grdCursos_MouseDown (Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then Exit Sub
  PopupMenu mnuVerProfes
End Sub

Sub grdCursos_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
botones3D (-1)
End Sub

Sub grdProfesores_KeyPress (KeyAscii As Integer)
  
  Dim Tecla As String
  Dim Marca
  Tecla = Chr(KeyAscii)

  Marca = dtaProfesores.Recordset.Bookmark
  dtaProfesores.Recordset.FindFirst "NOMBRE like '" & Tecla & "*'"
  
  If dtaProfesores.Recordset.NoMatch Then
    dtaProfesores.Recordset.Bookmark = Marca
  End If

End Sub

Sub grdProfesores_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
botones3D (-1)
End Sub

Sub mnuVerProfesores_Click ()
  
Dim DB As database
Dim Profesores As snapshot
Dim texto As String

'Abrir la base de datos
Set DB = OpenDatabase(Ruta, False, False)
'Ver la lista de profesores
MiSQL = "SELECT M_Profesores.Nombre "
MiSQL = MiSQL & "FROM M_Profesores INNER JOIN R_ProfesorCurso ON M_Profesores.ID = R_ProfesorCurso.IDProfesor "
MiSQL = MiSQL & "WHERE ((R_ProfesorCurso.IDCurso=" & dtaCursos.Recordset.Fields("ID") & ")); "
Set Profesores = DB.CreateSnapshot(MiSQL)

  texto = ""
  Do Until Profesores.EOF
    texto = texto & Profesores!Nombre & Chr(10)
    Profesores.MoveNext
  Loop
  MsgBox texto, , "Profesores de " & dtaCursos.Recordset.Fields("NOMBRE")

Profesores.Close
DB.Close

End Sub

