VERSION 2.00
Begin Form frmEspere 
   BackColor       =   &H00808000&
   BorderStyle     =   3  'Fixed Double
   Caption         =   "Procesando..."
   ClientHeight    =   1275
   ClientLeft      =   2910
   ClientTop       =   3075
   ClientWidth     =   4230
   ControlBox      =   0   'False
   Height          =   1680
   Left            =   2850
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1275
   ScaleWidth      =   4230
   Top             =   2730
   Width           =   4350
   Begin TextBox txtConsulta 
      Height          =   285
      Left            =   180
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   1350
      Visible         =   0   'False
      Width           =   1095
   End
   Begin SSPanel panPorcentaje 
      Alignment       =   1  'Left Justify - MIDDLE
      BevelInner      =   1  'Inset
      FloodColor      =   &H00978055&
      FloodType       =   1  'Left To Right
      Height          =   465
      Left            =   180
      TabIndex        =   1
      Top             =   630
      Width           =   3885
   End
   Begin Label lblExplicacion 
      BackStyle       =   0  'Transparent
      Caption         =   "lblExplicacion"
      Height          =   465
      Left            =   90
      TabIndex        =   0
      Top             =   90
      Width           =   4065
   End
End
Option Explicit

Sub ConsultaDeAulas ()
  
  Dim DB As database
  Dim Foto As snapshot
  Dim miSQL As String, mensaje As String
  Dim NumeroDePasos As Integer, Paso As Integer, i As Integer

  panPorcentaje.FloodPercent = 0
  mensaje = ""
  NumeroDePasos = 2
  Set DB = OpenDatabase("c:\sighor\datos\HOR_UDEP.MDB")
  
  Paso = 1
  For i = panPorcentaje.FloodPercent To (Paso / NumeroDePasos * 100)
    panPorcentaje.FloodPercent = i
  Next i
    miSQL = "SELECT DISTINCT Count(M_Aulas.Nombre) AS NumeroAulas FROM M_Aulas"
    Set Foto = DB.CreateSnapshot(miSQL)
    mensaje = mensaje & "Numero de Aulas " & Foto.Fields("NumeroAulas") & Chr(13)

  

  Paso = 2
  For i = panPorcentaje.FloodPercent To (Paso / NumeroDePasos * 100)
    panPorcentaje.FloodPercent = i
  Next i
    miSQL = "SELECT DISTINCT Count(M_Aulas.Bloqueada) AS AulasBloqueadas FROM M_Aulas WHERE ((M_Aulas.Bloqueada<>False))"
    Set Foto = DB.CreateSnapshot(miSQL)
    mensaje = mensaje & "Aulas bloqueadas " & Foto.Fields("AulasBloqueadas") & Chr(13)

  MsgBox mensaje, , "Consulta de Aulas"
  
  Foto.Close
  DB.Close

End Sub

Sub Form_Activate ()
centra Me

  Select Case txtConsulta
    Case ""
      Unload Me
      Exit Sub
    Case "AULAS"
      ConsultaDeAulas
  End Select

Unload Me

End Sub

Sub Form_DblClick ()
  Unload Me
End Sub

