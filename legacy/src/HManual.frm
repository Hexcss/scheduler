VERSION 2.00
Begin Form frmHManual 
   BackColor       =   &H00808000&
   Caption         =   "Cambio manual de H"
   ClientHeight    =   3315
   ClientLeft      =   1710
   ClientTop       =   1785
   ClientWidth     =   6540
   Height          =   3720
   Left            =   1650
   LinkTopic       =   "Form1"
   ScaleHeight     =   3315
   ScaleWidth      =   6540
   Top             =   1440
   Width           =   6660
   Begin Grid grdCursos 
      Cols            =   1
      FixedCols       =   0
      FixedRows       =   0
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   1635
      Left            =   90
      Rows            =   1
      TabIndex        =   6
      Top             =   1260
      Width           =   3255
   End
   Begin CommandButton Command1 
      Caption         =   "&Aceptar"
      Height          =   375
      Left            =   5130
      TabIndex        =   3
      Top             =   2700
      Width           =   1275
   End
   Begin ComboBox cmbHNuevo 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   315
      Left            =   5580
      TabIndex        =   5
      Top             =   2160
      Visible         =   0   'False
      Width           =   750
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   90
      X2              =   6390
      Y1              =   810
      Y2              =   810
   End
   Begin Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Los siguientes cursos ocasionan un conflicto de H que no puede ser tratado de manera automática. Por favor, ajuste el (los) nuevo(s) valor(es) de H a ser considerados, y pulse &ACEPTAR"
      ForeColor       =   &H00FFFFFF&
      Height          =   645
      Left            =   90
      TabIndex        =   10
      Top             =   90
      Width           =   6405
   End
   Begin Label lblHNuevo 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   285
      Left            =   5580
      TabIndex        =   9
      Top             =   2160
      Width           =   480
   End
   Begin Label lblCiclo 
      BackStyle       =   0  'Transparent
      Caption         =   "Ciclo"
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   90
      TabIndex        =   8
      Top             =   990
      Width           =   3255
   End
   Begin Label lblNCursos 
      AutoSize        =   -1  'True
      BackColor       =   &H00808000&
      Caption         =   "lblNCursos"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H0000FFFF&
      Height          =   195
      Left            =   5580
      TabIndex        =   7
      Top             =   990
      Width           =   750
   End
   Begin Label lblNombreCurso 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Seleccione un curso"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   -1  'True
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   3600
      TabIndex        =   0
      Top             =   1440
      Width           =   2895
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   3
      X1              =   3600
      X2              =   6480
      Y1              =   2610
      Y2              =   2610
   End
   Begin Label lblHAnterior 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   9.75
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   285
      Left            =   4230
      TabIndex        =   4
      Top             =   2160
      Width           =   480
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "H nuevo:"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   2
      Left            =   5040
      TabIndex        =   2
      Top             =   1890
      Width           =   660
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "H anterior:"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Index           =   1
      Left            =   3600
      TabIndex        =   1
      Top             =   1890
      Width           =   735
   End
   Begin Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   3510
      X2              =   3510
      Y1              =   1440
      Y2              =   3060
   End
End
Option Explicit

Sub cmbHNuevo_Click ()
  CursosH(grdCursos.Row + 1).HNuevo = cmbHNuevo.ListIndex + 1
  lblHNuevo.Caption = CursosH(grdCursos.Row + 1).HNuevo
  cmbHNuevo.Visible = Not (cmbHNuevo.Visible)
End Sub

Sub Command1_Click ()
  Dim i As Integer
  
  'Verifica, luego
  'Graba y finalmente
  
  Dim DB As database
  Dim Tabla As Table

Set DB = OpenDatabase(Ruta, False, False)
Set Tabla = DB.OpenTable("S_CursosHModificado")

  For i = 1 To Val(lblNCursos)
    Tabla.AddNew
      Tabla.Fields("IDCurso") = CursosH(i).ID
      Tabla.Fields("NuevoH") = CursosH(i).HNuevo
    Tabla.Update
  Next i
  
  Tabla.Close
  DB.Close
  
  Unload Me
End Sub

Sub Form_Activate ()

Dim i As Integer
  
  For i = 1 To 7
    cmbHNuevo.AddItem Str(i)
  Next i
  
  'Cargar los cursos de la variable CursosH
  grdCursos.ColWidth(0) = grdCursos.Width
  
  For i = 1 To Val(lblNCursos)
    grdCursos.Rows = i
    grdCursos.Row = frmHManual.grdCursos.Rows - 1
    grdCursos.Col = 0
    grdCursos.Text = CursosH(i).Nombre
  Next i

  centra Me
End Sub

Sub grdCursos_click ()

  lblNombreCurso = grdCursos.Text
  lblHAnterior = CursosH(grdCursos.Row + 1).HAnterior
  lblHNuevo = CursosH(grdCursos.Row + 1).HNuevo
  If cmbHNuevo.Visible Then cmbHNuevo.Visible = False

End Sub

Sub lblHNuevo_Click ()
  
  cmbHNuevo.Visible = Not (cmbHNuevo.Visible)

End Sub

