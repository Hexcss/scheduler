VERSION 2.00
Begin Form frmAulas 
   BackColor       =   &H00808000&
   BorderStyle     =   0  'None
   Caption         =   "Administrador de Aulas"
   ClientHeight    =   4890
   ClientLeft      =   1275
   ClientTop       =   1470
   ClientWidth     =   7215
   ControlBox      =   0   'False
   ForeColor       =   &H00C0C0C0&
   Height          =   5295
   Left            =   1215
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4890
   ScaleWidth      =   7215
   Top             =   1125
   Width           =   7335
   Begin CrystalReport rptReporteAulas 
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
      Left            =   3960
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
      ReportFileName  =   "c:\sighor\reporte\aulas.rpt"
      ReportSource    =   0  'Report File
      ReportTitle     =   ""
      SelectionFormula=   ""
      SessionHandle   =   0
      SQLQuery        =   ""
      Top             =   3420
      UserName        =   ""
      WindowBorderStyle=   3  'Fixed Double
      WindowControlBox=   -1  'True
      WindowControls  =   -1  'True
      WindowHeight    =   400
      WindowLeft      =   10
      WindowMaxButton =   0   'False
      WindowMinButton =   0   'False
      WindowParentHandle=   0
      WindowState     =   2  'maximized
      WindowTitle     =   "SigHor - Reporte de Aulas"
      WindowTop       =   10
      WindowWidth     =   600
   End
   Begin SSPanel BarraMenu 
      Align           =   1  'Align Top
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      Height          =   735
      Left            =   0
      TabIndex        =   18
      Top             =   0
      Width           =   7215
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   4
         Left            =   2160
         Outline         =   0   'False
         Picture         =   AULAS.FRX:0000
         RoundedCorners  =   0   'False
         TabIndex        =   25
         TabStop         =   0   'False
         Tag             =   "MiniConsulta"
         Top             =   180
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "&Salir"
         ForeColor       =   &H00000000&
         Height          =   375
         Index           =   5
         Left            =   6210
         Outline         =   0   'False
         RoundedCorners  =   0   'False
         TabIndex        =   23
         TabStop         =   0   'False
         Top             =   180
         Width           =   825
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00978055&
         Height          =   400
         Index           =   0
         Left            =   180
         Outline         =   0   'False
         Picture         =   AULAS.FRX:05CA
         RoundedCorners  =   0   'False
         TabIndex        =   22
         TabStop         =   0   'False
         Tag             =   "Nueva"
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
         Picture         =   AULAS.FRX:0B94
         RoundedCorners  =   0   'False
         TabIndex        =   21
         TabStop         =   0   'False
         Tag             =   "Editar"
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
         Picture         =   AULAS.FRX:115E
         RoundedCorners  =   0   'False
         TabIndex        =   20
         TabStop         =   0   'False
         Tag             =   "Eliminar"
         Top             =   180
         Width           =   400
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         ForeColor       =   &H00000080&
         Height          =   400
         Index           =   3
         Left            =   1710
         Outline         =   0   'False
         Picture         =   AULAS.FRX:1728
         RoundedCorners  =   0   'False
         TabIndex        =   19
         TabStop         =   0   'False
         Tag             =   "Imprimir"
         Top             =   180
         Width           =   400
      End
   End
   Begin ComboBox cmbEstado 
      BackColor       =   &H00808000&
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   5760
      Style           =   2  'Dropdown List
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   1620
      Width           =   1185
   End
   Begin CheckBox chkPropiedad 
      BackColor       =   &H00808000&
      Caption         =   " Ecram"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   4
      Left            =   4050
      TabIndex        =   13
      TabStop         =   0   'False
      Top             =   2430
      Width           =   1455
   End
   Begin CheckBox chkEspecial 
      BackColor       =   &H00808000&
      Caption         =   " - Especial -"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   5580
      TabIndex        =   9
      TabStop         =   0   'False
      Top             =   3510
      Width           =   1455
   End
   Begin CheckBox chkPropiedad 
      BackColor       =   &H00808000&
      Caption         =   " Acrílica"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   2
      Left            =   4050
      TabIndex        =   17
      TabStop         =   0   'False
      Top             =   2700
      Width           =   1455
   End
   Begin CheckBox chkPropiedad 
      BackColor       =   &H00808000&
      Caption         =   " Internet"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   3
      Left            =   5580
      TabIndex        =   16
      TabStop         =   0   'False
      Top             =   2430
      Width           =   1455
   End
   Begin CheckBox chkPropiedad 
      BackColor       =   &H00808000&
      Caption         =   " Cortinas"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   0
      Left            =   4050
      TabIndex        =   15
      TabStop         =   0   'False
      Top             =   2970
      Width           =   1455
   End
   Begin CheckBox chkPropiedad 
      BackColor       =   &H00808000&
      Caption         =   " Amplificador"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Index           =   1
      Left            =   5580
      TabIndex        =   14
      TabStop         =   0   'False
      Top             =   2700
      Width           =   1455
   End
   Begin SSCommand btnEdicion 
      BevelWidth      =   1
      Caption         =   "&Cancelar"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   1
      Left            =   6120
      Outline         =   0   'False
      TabIndex        =   12
      TabStop         =   0   'False
      Top             =   4050
      Visible         =   0   'False
      Width           =   1005
   End
   Begin SSCommand btnEdicion 
      BevelWidth      =   1
      Caption         =   "&Actualizar"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   0
      Left            =   5040
      Outline         =   0   'False
      TabIndex        =   11
      TabStop         =   0   'False
      Top             =   4050
      Visible         =   0   'False
      Width           =   1005
   End
   Begin ComboBox cmbCapacidad 
      BackColor       =   &H00808000&
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   4050
      Style           =   2  'Dropdown List
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   1620
      Width           =   1185
   End
   Begin Data dtaAulas 
      BackColor       =   &H00808000&
      Caption         =   "dtaAulas"
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
      Left            =   450
      Options         =   0
      ReadOnly        =   0   'False
      RecordSource    =   "M_Aulas"
      Top             =   3960
      Visible         =   0   'False
      Width           =   2895
   End
   Begin SSDataGrid grdAulas 
      Prop110         =   AULAS.FRX:1CF2
      AllowAdditions  =   0   'False
      AllowUpdates    =   0   'False
      BackColor       =   &H0080FFFF&
      Caption         =   "AULAS"
      DataSource      =   "dtaAulas"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   3435
      Left            =   90
      RowHeight       =   285
      ScrollBars      =   2  'Vertical
      SelectionTypeCol=   0  'None
      SelectionTypeRow=   1  'Single
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   900
      Width           =   3525
   End
   Begin MabryTips Tips1 
      BackColor       =   &H0000FFFF&
      Caption         =   "Tips1"
      ForeColor       =   &H000000FF&
      Height          =   240
      Interval        =   750
      Interval2       =   165
      Left            =   3600
      TipAlignment    =   0  'Cursor
      Top             =   5130
      UseTag          =   -1  'True
      Width           =   555
      XOffset         =   4
      YOffset         =   16
   End
   Begin Timer Timer1 
      Interval        =   2000
      Left            =   3150
      Top             =   4950
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
      Left            =   90
      TabIndex        =   0
      Top             =   4950
      Width           =   2985
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
      TabIndex        =   1
      Top             =   4470
      Width           =   7215
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
      Left            =   3960
      TabIndex        =   24
      Top             =   4050
      Visible         =   0   'False
      Width           =   1005
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   2
      X1              =   3960
      X2              =   7110
      Y1              =   3330
      Y2              =   3330
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Caracteristicas"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   5
      Left            =   3960
      TabIndex        =   10
      Top             =   2160
      Width           =   1275
   End
   Begin Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   3960
      X2              =   7110
      Y1              =   2070
      Y2              =   2070
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Estado"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   2
      Left            =   5760
      TabIndex        =   7
      Top             =   1350
      Width           =   600
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Capacidad"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   1
      Left            =   4050
      TabIndex        =   6
      Top             =   1350
      Width           =   915
   End
   Begin Line Line2 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   3960
      X2              =   7110
      Y1              =   1260
      Y2              =   1260
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Aula"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   12
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   300
      Index           =   0
      Left            =   3960
      TabIndex        =   4
      Top             =   900
      Width           =   555
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   3840
      X2              =   3840
      Y1              =   960
      Y2              =   4380
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "nn"
      DataField       =   "Nombre"
      DataSource      =   "dtaAulas"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   12
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   300
      Left            =   4590
      TabIndex        =   3
      Top             =   900
      Width           =   315
   End
   Begin Menu mnuOpciones 
      Caption         =   "MnuOpciones"
      Visible         =   0   'False
      Begin Menu mnuNueva 
         Caption         =   "Nueva"
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
      Begin Menu mnuMiniConsulta 
         Caption         =   "MiniConsulta"
      End
   End
End
Option Explicit
  
  Dim abajo%, Editando%

  Dim Descripcion$(10)

  Const NumeroDeBotones = 5

Sub ActualizaCheck ()

chkPropiedad(0).Value = (dtaAulas.Recordset.Fields("PROPIEDADES") And 2 ^ 0) / 2 ^ 0
chkPropiedad(1).Value = (dtaAulas.Recordset.Fields("PROPIEDADES") And 2 ^ 1) / 2 ^ 1
chkPropiedad(2).Value = (dtaAulas.Recordset.Fields("PROPIEDADES") And 2 ^ 2) / 2 ^ 2
chkPropiedad(3).Value = (dtaAulas.Recordset.Fields("PROPIEDADES") And 2 ^ 3) / 2 ^ 3
chkPropiedad(4).Value = (dtaAulas.Recordset.Fields("PROPIEDADES") And 2 ^ 4) / 2 ^ 4

End Sub

Sub AgregaAula ()
  
On Error GoTo HayError

  Dim NombreAula$
  NombreAula$ = Trim$(InputBox("Ingrese el nombre del aula"))
    If NombreAula = "" Then
      MsgBox "ERROR"
      Exit Sub
    End If

    'Agregar el Aula a la lista
    dtaAulas.Recordset.AddNew
      dtaAulas.Recordset.Fields("NOMBRE") = NombreAula
    dtaAulas.Recordset.Update
    dtaAulas.Recordset.MoveLast
    
    'Iniciar el modo de edicion
    lblEditando.Visible = True
    btnEdicion(0).Visible = True
    btnEdicion(1).Visible = True
    Editando = True


On Error GoTo 0
Exit Sub

HayError:
If Err = 3022 Then
  MsgBox "Esa aula ya existe"
  Exit Sub
End If

End Sub

Sub BajaBotones ()
  
  If abajo Then Exit Sub

  Dim i As Integer

  For i = 0 To NumeroDeBotones
    If Not (btnMenu(i).BevelWidth = 0) Then
      btnMenu(i).BevelWidth = 0
      Estado.Caption = ""
      abajo = True
    End If
  Next i

End Sub

Sub BarraMenu_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D (-1)
End Sub

Sub btnEdicion_Click (Index As Integer)

Editando = False
lblEditando.Visible = False

Select Case Index
  Case 0
    
    
    dtaAulas.Recordset.Edit
      dtaAulas.Recordset.Fields("Capacidad") = cmbCapacidad.List(cmbCapacidad.ListIndex)
      dtaAulas.Recordset.Fields("Bloqueada") = IIf(cmbEstado.ListIndex = 0, True, False)
      dtaAulas.Recordset.Fields("Propiedades") = Evalua()
      dtaAulas.Recordset.Fields("Especial") = IIf(chkEspecial.Value = 0, False, True)
    dtaAulas.Recordset.Update
    
    
    
    
    btnEdicion_Click (1)
  
  
  
  
  Case 1
    btnEdicion(0).Visible = False
    btnEdicion(1).Visible = False
    
    dtaAulas_reposition
End Select

End Sub

Sub btnMenu_click (Index As Integer)
  
  If Editando Then
    MsgBox "Termine la edicion primero"
    Exit Sub
  End If


Select Case Index
  Case 0  'Nueva
    AgregaAula

  Case 1  'Editar
    lblEditando.Visible = True
    btnEdicion(0).Visible = True
    btnEdicion(1).Visible = True
    Editando = True

  Case 2  'Borrar
      If grdAulas.SelCount < 1 Then
        MsgBox "Seleccione algo primero", MB_ICONEXCLAMATION
      End If
    grdAulas.SetFocus
    SendKeys "{DEL}"
    Exit Sub
  Case 3  'Reporte
    rptReporteAulas.Action = 1
    Exit Sub
  Case 4  'Consulta
    frmEspere!lblExplicacion.Caption = "Procesando consulta de salones. Por favor espere..."
    frmEspere!txtConsulta = "AULAS"
    frmEspere.Show 1
  Case 5  'Salir
    Unload Me
    Exit Sub
End Select
  btnNada.SetFocus
End Sub

Sub btnMenu_MouseMove (Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D (Index)
End Sub

Sub btnNada_GotFocus ()
  BajaBotones
End Sub

Sub chkPropiedad_Click (Index As Integer)
  
  If Not Editando Then
    dtaAulas_reposition
    Exit Sub
  End If

End Sub

Sub cmbCapacidad_Click ()
  
  If Not Editando Then
    dtaAulas_reposition
    Exit Sub
  End If

End Sub

Sub cmbEstado_Click ()
  
  If Not Editando Then
    dtaAulas_reposition
    Exit Sub
  End If

End Sub

Sub dtaAulas_reposition ()
On Error Resume Next
'Actualizar Edificios


'Actualizar los Option de Capacidad
Select Case dtaAulas.Recordset.Fields("Capacidad")
  Case "48"
    cmbCapacidad.ListIndex = 0
  Case "102"
    cmbCapacidad.ListIndex = 1
  Case "132"
    cmbCapacidad.ListIndex = 2
  Case "145"
    cmbCapacidad.ListIndex = 3
End Select

'Actualizar el estado de bloqueo
cmbEstado.ListIndex = IIf(dtaAulas.Recordset.Fields("Bloqueada"), 0, 1)

'Actualizar los Check de Caracteristicas
ActualizaCheck

'Actualizar estado de -Especial-
chkEspecial.Value = IIf(dtaAulas.Recordset.Fields("Especial"), 1, 0)

'Actualizar el SubMenu
  mnuEditar.Caption = "Editar aula " & dtaAulas.Recordset.Fields("Nombre")
  mnuEliminar.Caption = "Eliminar aula " & dtaAulas.Recordset.Fields("Nombre")

On Error GoTo 0

End Sub

Sub dtaAulas_Validate (Action As Integer, Save As Integer)
  
  If Editando Then
    MsgBox "Esta editando!"
    Action = 0
    'dtaAulas_reposition
  End If

End Sub

Function Evalua () As Integer
  
Dim Prop_aula  As Integer

  'Cortinas
  Prop_aula = chkPropiedad(0).Value * 2 ^ 0
  
  'Amplificador
  Prop_aula = chkPropiedad(1).Value * 2 ^ 1 + Prop_aula
  
  'Acrilica
  Prop_aula = chkPropiedad(2).Value * 2 ^ 2 + Prop_aula

  'Internet
  Prop_aula = chkPropiedad(3).Value * 2 ^ 3 + Prop_aula

  'Ecram
  Prop_aula = chkPropiedad(4).Value * 2 ^ 4 + Prop_aula

  Evalua = Prop_aula

End Function

Sub Form_Load ()
  NumeroBotones = 6
'Centrar el texto
  centra Me
  
  'Llenar el combo de Capacidades
  cmbCapacidad.AddItem "48"
  cmbCapacidad.AddItem "102"
  cmbCapacidad.AddItem "132"
  cmbCapacidad.AddItem "145"
  
  'Llenar el combo de estado
  cmbEstado.AddItem "Bloqueada"
  cmbEstado.AddItem "Disponible"
  
  'Actualizar descripcion de los botones
  Descripcion(0) = "Agrega un nuevo salón a la lista."
  Descripcion(1) = "Permite editar los datos del salón seleccionado."
  Descripcion(2) = "Elimina el salón seleccionado de la lista."
  Descripcion(3) = "Presenta un reporte por pantalla o impresora."
  Descripcion(4) = "Permite efectuar una consulta personalizada."
  Descripcion(5) = "Cierra la presente ventana."
End Sub

Sub Form_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D (-1)
End Sub

Sub grdAulas_DeleteBegin (RtnCancel As Integer, RtnDispPromptMsg As Integer)
    Dim Rc%
    Rc = MsgBox("Seguro que desea borrar el aula " & dtaAulas.Recordset.Fields("NOMBRE") & " ?", MB_YESNO + MB_ICONQUESTION)
    
    If Rc = IDNO Then
        RtnCancel = True
    End If
    
    RtnDispPromptMsg = False

End Sub

Sub grdAulas_MouseDown (Button As Integer, Shift As Integer, X As Single, Y As Single)
  If Button = RIGHT_BUTTON Then
    PopupMenu MnuOpciones
  End If
End Sub

Sub mnuEditar_Click ()
  btnMenu_click 1
End Sub

Sub mnuEliminar_Click ()
  btnMenu_click 2
End Sub

Sub mnuMiniConsulta_Click ()
  btnMenu_click 4
End Sub

Sub mnuNueva_Click ()
  btnMenu_click 0
End Sub

Sub Timer1_Timer ()
'Este timer cada 5 segundos desactiva automaticamente los botones
'Es un porsiacaso :o)
If abajo Then Exit Sub
  BajaBotones
End Sub

