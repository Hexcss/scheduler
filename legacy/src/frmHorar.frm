VERSION 2.00
Begin Form frmHorario 
   Caption         =   "Horario"
   ClientHeight    =   6300
   ClientLeft      =   105
   ClientTop       =   360
   ClientWidth     =   9405
   ControlBox      =   0   'False
   Height          =   6705
   Left            =   45
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6300
   ScaleWidth      =   9405
   Top             =   15
   Width           =   9525
   Begin CommandButton btnOcultaVacias 
      Caption         =   "Oculta Columnas Vacias"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   285
      Left            =   2340
      TabIndex        =   3
      Top             =   90
      Width           =   2175
   End
   Begin CommandButton btnSalir 
      Caption         =   "Salir"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   285
      Left            =   7110
      TabIndex        =   2
      Top             =   90
      Width           =   2175
   End
   Begin CommandButton btnMostrarHorario 
      Caption         =   "Mostrar Horario"
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   285
      Left            =   90
      TabIndex        =   1
      Top             =   90
      Width           =   2175
   End
   Begin Grid grdHorario 
      FontBold        =   0   'False
      FontItalic      =   0   'False
      FontName        =   "MS Sans Serif"
      FontSize        =   8.25
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   5775
      Left            =   90
      TabIndex        =   0
      Top             =   450
      Width           =   9195
   End
End
Option Explicit

Sub btnMostrarHorario_Click ()
  LlenaGrid
End Sub

Sub btnOcultaVacias_Click ()
  
  Static Estado As Integer
  Dim i As Integer
  
  Select Case grdHorario.ColWidth(7)
    
    Case 1
        For i = 7 To 10
          grdHorario.ColWidth(i) = grdHorario.ColWidth(1)
        Next i
      btnOcultaVacias.Caption = "Muestra columnas vacias"
    
    Case Else
        For i = 7 To 10
          grdHorario.ColWidth(i) = 1
        Next i
      btnOcultaVacias.Caption = "Oculta columnas vacias"
  
  End Select

End Sub

Sub btnSalir_Click ()
  Unload Me
End Sub

Function CursosParaHorario (Dia As String, Hora As Integer) As String

'Definicion de Variables
'Variables de acceso a datos
Dim DB As database
Dim Cursos As snapshot

Dim MiSQL As String
Dim texto As String

'Abrir la base de datos
Set DB = OpenDatabase(Ruta, False, False)

'Pedir los Cursos
'Variable       :   Cursos
'Tipo de Objeto :   Snapshot
'Campos         :   Aula, Sigla
MiSQL = "SELECT DISTINCTROW M_Aulas.Nombre AS Aula, M_Cursos.Sigla "
MiSQL = MiSQL & "FROM M_Cursos INNER JOIN (M_Aulas INNER JOIN M_Horario ON M_Aulas.ID = M_Horario.IDAula) ON M_Cursos.ID = M_Horario.IDCurso "
MiSQL = MiSQL & "WHERE ((M_Horario.Dia = '" & Dia & "') And (M_Horario.Hora = " & Hora & ")) "
MiSQL = MiSQL & "ORDER BY M_Aulas.Nombre; "
Set Cursos = DB.CreateSnapshot(MiSQL)

  texto = ""
  Do Until Cursos.EOF
    texto = texto & Cursos!Sigla & "   " & Cursos!Aula & Chr(10)
    Cursos.MoveNext
  Loop


Cursos.Close
DB.Close

CursosParaHorario = texto

End Function

Sub EncabezadosDelGrid ()
  
Dim Horas As Integer

  grdHorario.ColWidth(0) = 200
  grdHorario.Col = 0
  grdHorario.Row = 1: grdHorario.Text = VERTICAL("LUNES")
  grdHorario.Row = 2: grdHorario.Text = VERTICAL("MARTES")
  grdHorario.Row = 3: grdHorario.Text = VERTICAL("MIERCOLES")
  grdHorario.Row = 4: grdHorario.Text = VERTICAL("JUEVES")
  grdHorario.Row = 5: grdHorario.Text = VERTICAL("VIERNES")
  grdHorario.Row = 6: grdHorario.Text = VERTICAL("SABADO")

  grdHorario.Row = 0
  
  For Horas = 7 To 12
      grdHorario.Col = Horas - 6
      grdHorario.Text = Horas & " a " & Horas + 1
  Next Horas

  For Horas = 1 To 6
      grdHorario.Col = Horas + 6
      grdHorario.Text = Horas & " a " & Horas + 1
  Next Horas


End Sub

Sub Form_Load ()
  centra Me
  Me.Top = 0
End Sub

Sub LlenaGrid ()

Dim i As Integer
  grdHorario.Cols = 13
  grdHorario.Rows = 7
    For i = 1 To 12
      grdHorario.ColWidth(i) = 950
    Next i
    For i = 1 To 6
      grdHorario.RowHeight(i) = 3100
    Next i

  EncabezadosDelGrid


ReDim D(1 To 6) As String
  D(1) = "L": D(2) = "M": D(3) = "X"
  D(4) = "J": D(5) = "V": D(6) = "S"

Dim Dias As Integer
Dim Horas As Integer

For Horas = 7 To 12
  For Dias = 1 To 6
    grdHorario.Row = Dias
    grdHorario.Col = Horas - 6
    grdHorario.Text = CursosParaHorario(D(Dias), Horas)
  Next Dias
Next Horas

For Horas = 1 To 6
  For Dias = 1 To 6
    grdHorario.Row = Dias
    grdHorario.Col = Horas + 6
    grdHorario.Text = CursosParaHorario(D(Dias), Horas)
  Next Dias
Next Horas

End Sub

Function VERTICAL (texto As String) As String

Dim NuevoTexto As String
Dim i As Integer
NuevoTexto = ""

For i = 1 To Len(texto)
  NuevoTexto = NuevoTexto & Mid$(texto, i, 1) & Chr(10)
Next i

VERTICAL = NuevoTexto

End Function

