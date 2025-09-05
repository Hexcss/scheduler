VERSION 2.00
Begin Form frmAcercaDe 
   BackColor       =   &H00808080&
   BorderStyle     =   3  'Fixed Double
   ClientHeight    =   4770
   ClientLeft      =   1140
   ClientTop       =   765
   ClientWidth     =   7410
   ControlBox      =   0   'False
   ForeColor       =   &H00000000&
   Height          =   5175
   Left            =   1080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4770
   ScaleWidth      =   7410
   Top             =   420
   Width           =   7530
   Begin SSCommand Command3D1 
      BevelWidth      =   0
      Height          =   195
      Left            =   2160
      Outline         =   0   'False
      TabIndex        =   9
      Top             =   0
      Width           =   195
   End
   Begin Timer Relojito 
      Left            =   0
      Top             =   0
   End
   Begin CommandButton btnAceptar 
      Height          =   465
      Left            =   2790
      TabIndex        =   0
      Top             =   4230
      Width           =   4515
   End
   Begin SSPanel Pantalla 
      BevelOuter      =   0  'None
      BorderWidth     =   1
      ForeColor       =   &H00978055&
      Height          =   2895
      Left            =   4140
      RoundedCorners  =   0   'False
      TabIndex        =   6
      Top             =   1080
      Width           =   2535
      Begin PictureBox Marquesina 
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   0  'None
         Height          =   2625
         Left            =   90
         ScaleHeight     =   2625
         ScaleWidth      =   2355
         TabIndex        =   7
         Top             =   2970
         Width           =   2355
         Begin CommandButton Command1 
            Caption         =   "Producido por ""Arácnido"""
            FontBold        =   0   'False
            FontItalic      =   0   'False
            FontName        =   "MS Sans Serif"
            FontSize        =   8.25
            FontStrikethru  =   0   'False
            FontUnderline   =   0   'False
            Height          =   375
            Left            =   90
            TabIndex        =   8
            Top             =   810
            Width           =   2175
         End
         Begin Label Label2 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackColor       =   &H00C8B99D&
            BackStyle       =   0  'Transparent
            Caption         =   "SigHor"
            FontBold        =   -1  'True
            FontItalic      =   0   'False
            FontName        =   "Arial"
            FontSize        =   24
            FontStrikethru  =   0   'False
            FontUnderline   =   0   'False
            ForeColor       =   &H00FFFFFF&
            Height          =   555
            Index           =   3
            Left            =   420
            TabIndex        =   3
            Top             =   1350
            Width           =   1560
         End
         Begin Label Label1 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Un trabajo del equipo Z@NGANUZ"
            FontBold        =   0   'False
            FontItalic      =   0   'False
            FontName        =   "MS Sans Serif"
            FontSize        =   8.25
            FontStrikethru  =   0   'False
            FontUnderline   =   0   'False
            Height          =   375
            Index           =   1
            Left            =   90
            TabIndex        =   4
            Top             =   360
            Width           =   2145
         End
         Begin Label Label1 
            BackStyle       =   0  'Transparent
            Caption         =   "TPD y TP2 Presentan"
            Height          =   195
            Index           =   0
            Left            =   0
            TabIndex        =   5
            Top             =   90
            Width           =   2175
         End
      End
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Sistema Generador de Horarios"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "Arial"
      FontSize        =   12
      FontStrikethru  =   0   'False
      FontUnderline   =   -1  'True
      ForeColor       =   &H00C0C0C0&
      Height          =   285
      Index           =   1
      Left            =   3690
      TabIndex        =   2
      Top             =   720
      Width           =   3585
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "SigHor"
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "Arial"
      FontSize        =   24
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      ForeColor       =   &H00C0C0C0&
      Height          =   555
      Index           =   0
      Left            =   2790
      TabIndex        =   1
      Top             =   90
      Width           =   1560
   End
   Begin Image Image1 
      Height          =   4770
      Left            =   0
      Picture         =   ACERCADE.FRX:0000
      Top             =   0
      Width           =   2685
   End
End
Option Explicit

Sub btnAceptar_Click ()
    
    Unload Me


End Sub

Sub Command1_Click ()
  MsgBox "Producido por Spidey"
End Sub

Sub Command3D1_Click ()
Dim texto$
texto = texto & "Quiero contarles una buena historia" & Chr(10)
texto = texto & "la de una chica que vivio la euforia" & Chr(10)
texto = texto & "de ser parte del rock" & Chr(10)
texto = texto & "tomando te de Peperina" & Chr(10)
texto = texto & "" & Chr(10)
texto = texto & "Tipicamente mente pueblerina" & Chr(10)
texto = texto & "no tenia h... para la oficina" & Chr(10)
texto = texto & "subterráneo lugar de rutinaria ideología" & Chr(10)
texto = texto & "" & Chr(10)
texto = texto & "Romantica entonaba sus poemas mas brillantes" & Chr(10)
texto = texto & "susurrando al oido de su representante:" & Chr(10)
texto = texto & "'Te amo, te odio, dame más!'" & Chr(10)
MsgBox texto
texto = ""
texto = texto & "Mirando al campo se olvido del hombre" & Chr(10)
texto = texto & "Mirando al rico, se vistió de pobre" & Chr(10)
texto = texto & "para poder saber" & Chr(10)
texto = texto & "lo que chusmeaban las vecinas" & Chr(10)
texto = texto & "" & Chr(10)
texto = texto & "En su cabeza lleva una bandera" & Chr(10)
texto = texto & "ella no quiere ser como cualquiera" & Chr(10)
texto = texto & "ella adora sacar" & Chr(10)
texto = texto & "la paja de la cara ajena" & Chr(10)
texto = texto & "" & Chr(10)
texto = texto & "Y dentro de su cuento ella era cenicienta" & Chr(10)
texto = texto & "su principe era un hippie de los años sesenta" & Chr(10)
texto = texto & "'Te amo, te odio, dame más!'" & Chr(10)
MsgBox texto
texto = ""

End Sub

Sub Form_Load ()
  centra Me
  relojito.Interval = 100
  
End Sub

Sub Relojito_Timer ()
  marquesina.Top = marquesina.Top - (Pantalla.Height) / 80
  
  If marquesina.Top <= -marquesina.Height Then
    marquesina.Top = Pantalla.Height
  End If

Static N%
Dim texto$, TextoActual$
  texto = "Producido por 'Aracnido'"
  
  N = N + 1
  
  If N > Len(texto) Then
    N = 0
    TextoActual = ""
  Else
    TextoActual = Left$(texto, N)
  End If

Command1.Caption = TextoActual

End Sub

