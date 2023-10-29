VERSION 2.00
Begin Form frmAdminClases 
   BackColor       =   &H00808000&
   BorderStyle     =   3  'Fixed Double
   Caption         =   "Administrador de Clases"
   ClientHeight    =   4845
   ClientLeft      =   735
   ClientTop       =   1530
   ClientWidth     =   8250
   ForeColor       =   &H00C8B99D&
   Height          =   5250
   Left            =   675
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4845
   ScaleWidth      =   8250
   Top             =   1185
   Width           =   8370
   Begin SSPanel Panel3D2 
      BevelInner      =   1  'Inset
      Caption         =   "Panel3D2"
      DataField       =   "Descripcion"
      DataSource      =   "dtaClases"
      ForeColor       =   &H00000000&
      Height          =   735
      Left            =   3510
      TabIndex        =   2
      Top             =   450
      Width           =   4605
   End
   Begin SSPanel Estado 
      Align           =   2  'Align Bottom
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      ForeColor       =   &H00000000&
      Height          =   435
      Left            =   0
      TabIndex        =   4
      Top             =   4410
      Width           =   8250
   End
   Begin MabryTips Tips1 
      BackColor       =   &H0000FFFF&
      Caption         =   "Tips1"
      ForeColor       =   &H000000FF&
      Height          =   240
      Interval        =   750
      Interval2       =   165
      Left            =   270
      TipAlignment    =   0  'Cursor
      Top             =   3600
      UseTag          =   -1  'True
      Width           =   555
      XOffset         =   4
      YOffset         =   16
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
      Left            =   5040
      TabIndex        =   3
      Top             =   4860
      Width           =   2985
   End
   Begin Data dtaElementos 
      BackColor       =   &H0080FFFF&
      Caption         =   "dtaElementos"
      Connect         =   ""
      DatabaseName    =   "C:\SIGHOR\DATOS\HOR_UDEP.MDB"
      Exclusive       =   0   'False
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   3510
      Options         =   0
      ReadOnly        =   0   'False
      RecordSource    =   ""
      Top             =   3870
      Visible         =   0   'False
      Width           =   4605
   End
   Begin Data dtaClases 
      BackColor       =   &H0080FFFF&
      Caption         =   "dtaClases"
      Connect         =   ""
      DatabaseName    =   "C:\SIGHOR\DATOS\HOR_UDEP.MDB"
      Exclusive       =   0   'False
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   180
      Options         =   0
      ReadOnly        =   0   'False
      RecordSource    =   "SELECT DISTINCTROW * FROM M_DatosGenerales WHERE ((M_DatosGenerales.IDClase=0))"
      Top             =   3870
      Visible         =   0   'False
      Width           =   2625
   End
   Begin SSDataGrid grdElementos 
      Prop110         =   ADMCLASE.FRX:0000
      AllowAdditions  =   0   'False
      AllowDeletions  =   0   'False
      AllowUpdates    =   0   'False
      Caption         =   "Elementos"
      DataSource      =   "dtaElementos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   2805
      Left            =   3510
      RowHeight       =   150
      ScrollBars      =   2  'Vertical
      SelectionTypeCol=   0  'None
      SelectionTypeRow=   1  'Single
      TabIndex        =   1
      Top             =   1350
      Width           =   4605
   End
   Begin SSDataGrid grdClases 
      Prop110         =   ADMCLASE.FRX:009A
      AllowAdditions  =   0   'False
      AllowDeletions  =   0   'False
      AllowUpdates    =   0   'False
      Caption         =   "Clases"
      ColHeadingLines =   0
      DataSource      =   "dtaClases"
      Height          =   3615
      Left            =   180
      RowHeight       =   150
      ScrollBars      =   2  'Vertical
      SelectionTypeCol=   0  'None
      SelectionTypeRow=   1  'Single
      TabIndex        =   0
      Top             =   540
      Width           =   2625
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   8100
      X2              =   180
      Y1              =   270
      Y2              =   270
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   3150
      X2              =   3150
      Y1              =   4230
      Y2              =   900
   End
   Begin Menu mnuClases 
      Caption         =   "mnuClases"
      Visible         =   0   'False
      Begin Menu mnuAgregarClases 
         Caption         =   "Agregar"
      End
   End
   Begin Menu mnuElementos 
      Caption         =   "mnuElementos"
      Visible         =   0   'False
      Begin Menu mnuAgregarElemento 
         Caption         =   "Agregar"
      End
      Begin Menu mnuSeparador 
         Caption         =   "-"
      End
      Begin Menu mnuEditar 
         Caption         =   "Editar elemento"
      End
      Begin Menu mnuEliminar 
         Caption         =   "Eliminar"
      End
   End
End
Option Explicit

Sub btnMenu_click (index As Integer)
  Select Case index
  End Select
  btnNada.SetFocus
End Sub

Sub btnMenu_MouseMove (index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D (index)
End Sub

Sub Form_Activate ()
centra Me
  
End Sub

Sub grdClases_MouseDown (Button As Integer, Shift As Integer, X As Single, Y As Single)
  
  Select Case Button
    
    Case LEFT_BUTTON
      Dim IDClase As Integer
      IDClase = dtaClases.Recordset.Fields("IDCorrelativo")
      
      miSQL = "SELECT DISTINCTROW * "
      miSQL = miSQL & "FROM M_DatosGenerales "
      miSQL = miSQL & "WHERE ((M_DatosGenerales.IDClase = " & IDClase & "))"
    
      dtaElementos.RecordSource = miSQL
      dtaElementos.Refresh
      Exit Sub
    
    Case RIGHT_BUTTON
      mnuAgregarClases.Caption = "Crear nuevo elemento [" & dtaClases.Recordset.Fields("Elemento") & "]"
      PopupMenu mnuClases
  
  End Select

End Sub

Sub grdElementos_MouseDown (Button As Integer, Shift As Integer, X As Single, Y As Single)

On Error GoTo UnError

  Select Case Button
    
    Case LEFT_BUTTON
      
      Exit Sub
    
    Case RIGHT_BUTTON
      
      If dtaElementos.Recordset.Fields("Elemento") = "" Then Exit Sub
      
      mnuAgregarElemento.Caption = "Crear nuevo elemento [" & dtaClases.Recordset.Fields("Elemento") & "]"
      mnuEditar.Caption = "Editar el elemento [" & dtaElementos.Recordset.Fields("Elemento") & "]"
      mnuEliminar.Caption = "Eliminar el elemento [" & dtaElementos.Recordset.Fields("Elemento") & "]"
      PopupMenu mnuElementos
  
  End Select

On Error GoTo 0

Exit Sub

UnError:
  Resume Next

End Sub

Sub Panel3D1_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D (-1)
End Sub

