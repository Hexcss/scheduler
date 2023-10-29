VERSION 2.00
Begin Form frmESTANDAR 
   BackColor       =   &H00000080&
   Caption         =   "Pantalla de Pantallas"
   ClientHeight    =   4740
   ClientLeft      =   960
   ClientTop       =   1350
   ClientWidth     =   5130
   Height          =   5145
   Left            =   900
   LinkTopic       =   "Form1"
   ScaleHeight     =   4740
   ScaleWidth      =   5130
   Top             =   1005
   Width           =   5250
   Begin MabryTips Tips1 
      BackColor       =   &H0080FFFF&
      Caption         =   "Tips1"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00000080&
      Height          =   240
      Interval        =   750
      Interval2       =   165
      Left            =   6210
      TipAlignment    =   0  'Cursor
      Top             =   1710
      UseTag          =   -1  'True
      Width           =   465
      XOffset         =   4
      YOffset         =   16
   End
   Begin Timer Timer1 
      Interval        =   5000
      Left            =   6210
      Top             =   1260
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
      Left            =   6210
      TabIndex        =   0
      Top             =   720
      Width           =   2985
   End
   Begin SSPanel estado 
      Align           =   2  'Align Bottom
      BackColor       =   &H00C0C0C0&
      BevelInner      =   1  'Inset
      Font3D          =   0  'None
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   420
      Left            =   0
      TabIndex        =   4
      Top             =   4320
      Width           =   5130
   End
   Begin PictureBox Picture1 
      Align           =   1  'Align Top
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      Height          =   555
      Left            =   0
      ScaleHeight     =   555
      ScaleWidth      =   5130
      TabIndex        =   2
      Top             =   0
      Width           =   5130
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "&Salir"
         Font3D          =   0  'None
         ForeColor       =   &H00000080&
         Height          =   375
         Index           =   4
         Left            =   4140
         Outline         =   0   'False
         TabIndex        =   1
         Top             =   90
         Width           =   825
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "&Reporte"
         Font3D          =   0  'None
         ForeColor       =   &H00000080&
         Height          =   375
         Index           =   3
         Left            =   2790
         Outline         =   0   'False
         TabIndex        =   7
         Top             =   90
         Width           =   825
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "&Borrar"
         Font3D          =   0  'None
         ForeColor       =   &H00000080&
         Height          =   375
         Index           =   2
         Left            =   1890
         Outline         =   0   'False
         TabIndex        =   6
         Top             =   90
         Width           =   825
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "&Editar"
         Font3D          =   0  'None
         ForeColor       =   &H00000080&
         Height          =   375
         Index           =   1
         Left            =   990
         Outline         =   0   'False
         TabIndex        =   5
         Tag             =   "Editar (ALT + E)"
         Top             =   90
         Width           =   825
      End
      Begin SSCommand btnMenu 
         BevelWidth      =   0
         Caption         =   "&Nueva"
         Font3D          =   0  'None
         ForeColor       =   &H00000080&
         Height          =   375
         Index           =   0
         Left            =   90
         Outline         =   0   'False
         TabIndex        =   3
         Tag             =   "Nueva (ALT + N)"
         Top             =   90
         Width           =   825
      End
   End
End
Option Explicit
Dim abajo As Integer


Dim Descripcion$(4)

Sub BajaBotones ()
  
  If abajo Then Exit Sub

  Dim i As Integer

  For i = 0 To 4
    If Not (btnMenu(i).BevelWidth = 0) Then
      btnMenu(i).BevelWidth = 0
      Estado.Caption = ""
      abajo = True
    End If
  Next i

End Sub

Sub btnMenu_Click (index As Integer)
  btnNada.SetFocus


Select Case index
  Case 0
  Case 1
  Case 2
  Case 3
  Case 4
    Unload Me
End Select
End Sub

Sub btnMenu_MouseMove (index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
  
  Dim i As Integer

  For i = 0 To 4
    If Not (btnMenu(i).BevelWidth = 0) And (i <> index) Then
      btnMenu(i).BevelWidth = 0
    End If
  Next i

    If Not (btnMenu(index).BevelWidth = 1) Then
      Estado.Caption = Descripcion(index)
      btnMenu(index).BevelWidth = 1
      abajo = False
    End If

End Sub

Sub btnNada_GotFocus ()
  BajaBotones
End Sub

Sub Form_Load ()
  Descripcion(0) = "Descripcion del boton Nuevo"
  Descripcion(1) = "Descripcion del boton Editar"
  Descripcion(2) = "Descripcion del boton Eliminar"
  Descripcion(3) = "Descripcion del boton Reporte"
  Descripcion(4) = "Descripcion del boton Salir"
End Sub

Sub Form_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  BajaBotones
End Sub

Sub Picture1_MouseMove (Button As Integer, Shift As Integer, X As Single, Y As Single)
  BajaBotones
End Sub

Sub Timer1_Timer ()
'Este timer cada 5 segundos desactiva automaticamente los botones
'Es un porsiacaso :o)
If abajo Then Exit Sub
  BajaBotones
End Sub

