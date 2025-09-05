VERSION 2.00
Begin Form frmMenu 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Double
   ClientHeight    =   4260
   ClientLeft      =   1710
   ClientTop       =   1500
   ClientWidth     =   6570
   ControlBox      =   0   'False
   ForeColor       =   &H00978055&
   Height          =   4665
   Left            =   1650
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4260
   ScaleWidth      =   6570
   Top             =   1155
   Width           =   6690
   Begin SSPanel Panel3D2 
      Align           =   1  'Align Top
      BevelInner      =   1  'Inset
      BevelOuter      =   0  'None
      Caption         =   "Módulos de Definición"
      Font3D          =   1  'Raised w/light shading
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "Arial"
      FontSize        =   12
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00978055&
      Height          =   465
      Left            =   0
      TabIndex        =   5
      Top             =   0
      Width           =   6570
   End
   Begin SSPanel Estado 
      Align           =   2  'Align Bottom
      BevelInner      =   1  'Inset
      BevelOuter      =   0  'None
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   345
      Left            =   0
      TabIndex        =   10
      Top             =   3915
      Width           =   6570
   End
   Begin MabryTips Tips1 
      BackColor       =   &H0080FFFF&
      Caption         =   "Tips1"
      ForeColor       =   &H000000FF&
      Height          =   240
      Interval        =   750
      Interval2       =   165
      Left            =   7110
      TipAlignment    =   0  'Cursor
      Top             =   3060
      UseTag          =   -1  'True
      Width           =   555
      XOffset         =   4
      YOffset         =   16
   End
   Begin CommandButton btnNada 
      Caption         =   "Command1"
      Height          =   195
      Left            =   6120
      TabIndex        =   0
      Top             =   4320
      Width           =   495
   End
   Begin SSCommand btnMenu 
      AutoSize        =   2  'Adjust Button Size To Picture
      BevelWidth      =   0
      Caption         =   "Editor de Elementos de SigHor"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00800000&
      Height          =   465
      Index           =   4
      Left            =   1710
      Outline         =   0   'False
      RoundedCorners  =   0   'False
      TabIndex        =   7
      TabStop         =   0   'False
      Top             =   2970
      Width           =   2355
   End
   Begin SSCommand btnMenu 
      BevelWidth      =   0
      Caption         =   "Relaciones"
      Font3D          =   1  'Raised w/light shading
      ForeColor       =   &H00000080&
      Height          =   600
      Index           =   3
      Left            =   4320
      Outline         =   0   'False
      Picture         =   FRMMENU.FRX:0000
      RoundedCorners  =   0   'False
      TabIndex        =   6
      TabStop         =   0   'False
      Tag             =   "Profesor Curso"
      Top             =   1350
      Width           =   1100
   End
   Begin SSCommand btnMenu 
      BevelWidth      =   0
      Caption         =   "&Salir"
      Font3D          =   1  'Raised w/light shading
      ForeColor       =   &H00000080&
      Height          =   1005
      Index           =   5
      Left            =   4860
      Outline         =   0   'False
      Picture         =   FRMMENU.FRX:016A
      RoundedCorners  =   0   'False
      TabIndex        =   1
      TabStop         =   0   'False
      Tag             =   "Sale"
      Top             =   2610
      Width           =   735
   End
   Begin SSCommand btnMenu 
      BevelWidth      =   0
      Caption         =   "Aulas"
      Font3D          =   1  'Raised w/light shading
      ForeColor       =   &H00000080&
      Height          =   600
      Index           =   0
      Left            =   810
      Outline         =   0   'False
      Picture         =   FRMMENU.FRX:046C
      RoundedCorners  =   0   'False
      TabIndex        =   2
      TabStop         =   0   'False
      Tag             =   "Muestra Aulas"
      Top             =   1350
      Width           =   1100
   End
   Begin SSCommand btnMenu 
      BevelWidth      =   0
      Caption         =   "Cursos"
      Font3D          =   1  'Raised w/light shading
      ForeColor       =   &H00000080&
      Height          =   600
      Index           =   1
      Left            =   1980
      Outline         =   0   'False
      Picture         =   FRMMENU.FRX:05D6
      RoundedCorners  =   0   'False
      TabIndex        =   3
      TabStop         =   0   'False
      Tag             =   "Muestra Cursos"
      Top             =   1350
      Width           =   1100
   End
   Begin SSCommand btnMenu 
      BevelWidth      =   0
      Caption         =   "Profesores"
      Font3D          =   1  'Raised w/light shading
      ForeColor       =   &H00000080&
      Height          =   600
      Index           =   2
      Left            =   3150
      Outline         =   0   'False
      Picture         =   FRMMENU.FRX:0740
      RoundedCorners  =   0   'False
      TabIndex        =   4
      TabStop         =   0   'False
      Tag             =   "Muestra Profesores"
      Top             =   1350
      Width           =   1100
   End
   Begin Line Line3 
      BorderColor     =   &H00808080&
      Index           =   0
      X1              =   -1080
      X2              =   6840
      Y1              =   2340
      Y2              =   2340
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "PRINCIPALES"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   12
      FontStrikethru  =   0   'False
      FontUnderline   =   -1  'True
      ForeColor       =   &H00000000&
      Height          =   300
      Index           =   1
      Left            =   90
      TabIndex        =   9
      Top             =   720
      Width           =   1770
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Secundarios"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   -1  'True
      ForeColor       =   &H00000000&
      Height          =   195
      Index           =   0
      Left            =   90
      TabIndex        =   8
      Top             =   2520
      Width           =   1065
   End
   Begin Line Line2 
      BorderColor     =   &H00808080&
      BorderWidth     =   3
      Index           =   0
      X1              =   6930
      X2              =   0
      Y1              =   2430
      Y2              =   2430
   End
   Begin Line Line1 
      BorderColor     =   &H00978055&
      BorderWidth     =   10
      Index           =   0
      X1              =   -450
      X2              =   5250
      Y1              =   5670
      Y2              =   5670
   End
End
Option Explicit

Sub btnMenu_click (index As Integer)
  Select Case index
    Case 0
      frmaulas.Show 1
    Case 1
      frmCursos.Show 1
    Case 2
      frmProfesores.Show 1
    Case 3
      frmProfesorCurso.Show 1
    Case 4
      frmAdminClases.Show 1
    Case 5
      Unload Me
      Exit Sub
  End Select
btnNada.SetFocus
End Sub

Sub btnMenu_MouseMove (index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D (index)
End Sub

Sub Form_Activate ()
  NumeroBotones = 6
  centra Me
  
End Sub

Sub Form_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  botones3D -1
End Sub

