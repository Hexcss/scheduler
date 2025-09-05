VERSION 2.00
Begin Form frmHorario2 
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   1800
   ClientLeft      =   2505
   ClientTop       =   2295
   ClientWidth     =   3555
   Height          =   2205
   Left            =   2445
   LinkTopic       =   "Form1"
   ScaleHeight     =   1800
   ScaleWidth      =   3555
   Top             =   1950
   Width           =   3675
   Begin CommandButton Command2 
      Caption         =   "Command2"
      Height          =   555
      Left            =   2160
      TabIndex        =   1
      Top             =   1170
      Width           =   1185
   End
   Begin CommandButton Command1 
      Caption         =   "Command1"
      Height          =   555
      Left            =   180
      TabIndex        =   0
      Top             =   180
      Width           =   1185
   End
End
Option Explicit

Sub Command1_Click ()
  CreaLaTabla
End Sub

Sub Command2_Click ()
  frmfondo.Show
End Sub

Sub CreaLaTabla ()
'Definicion de Variables
'Variables de acceso a datos
Dim DB As database
Dim MiSQL As String, GranSQL As String, Texto As String
Dim Dia As Integer, Hora As Integer
ReDim Dias(1 To 7) As String, Horas(1 To 12) As Integer
Dim Aulas As snapshot
Dim Cursos As snapshot

Dias(1) = "L": Dias(2) = "M": Dias(3) = "X"
Dias(4) = "J": Dias(5) = "V": Dias(6) = "S"

For Hora = 1 To 6: Horas(Hora) = Hora + 6: Next Hora
For Hora = 1 To 6: Horas(Hora + 6) = Hora: Next Hora

GranSQL = "CREATE TABLE T_HorarioParaImprimir (DIA TEXT, HORA TEXT, "

'Abrir la base de datos
Set DB = OpenDatabase(Ruta, False, False)

'Borrar la tabla anterior
On Error Resume Next
  DB.Execute "DROP TABLE T_HorarioParaImprimir;"
On Error GoTo 0

'Los salones son los campos de la tabla
'CAMPOS : Nombre
  MiSQL = "SELECT DISTINCT M_Aulas.Nombre "
  MiSQL = MiSQL & "FROM M_Aulas "
  MiSQL = MiSQL & "ORDER BY M_Aulas.Nombre;"
  Set Aulas = DB.CreateSnapshot(MiSQL)
  
  Texto = ""
  Do Until Aulas.EOF
    Texto = Texto & Aulas!Nombre & " TEXT, "
    Aulas.MoveNext
  Loop
  GranSQL = GranSQL & Left$(Texto, Len(Texto) - 2) & ")"
  DB.Execute GranSQL


GranSQL = ""

For Dia = 1 To 7
  For Hora = 1 To 12
    
    'Campos : Sigla, Aula
    MiSQL = "SELECT DISTINCTROW M_Cursos.Sigla, M_Aulas.Nombre AS Aula "
    MiSQL = MiSQL & "FROM M_Cursos INNER JOIN (M_Aulas INNER JOIN M_Horario ON M_Aulas.ID = M_Horario.IDAula) ON M_Cursos.ID = M_Horario.IDCurso "
    MiSQL = MiSQL & "WHERE ((M_Horario.Dia='" & Dias(Dia) & "') AND (M_Horario.Hora=" & Horas(Hora) & ")) "
    MiSQL = MiSQL & "ORDER BY M_Aulas.Nombre;"
    Set Cursos = DB.CreateSnapshot(MiSQL)
  
    If Cursos.RecordCount > 0 Then
    
        GranSQL = "INSERT INTO T_HorarioParaImprimir "
        GranSQL = GranSQL & " (DIA, HORA, "
        
        Texto = ""
        Cursos.MoveFirst
        Do Until Cursos.EOF
          Texto = Texto & Cursos!Aula & ", "
          Cursos.MoveNext
        Loop
      
        GranSQL = GranSQL & Left$(Texto, Len(Texto) - 2)
        GranSQL = GranSQL & ") VALUES ('" & Dias(Dia) & "', '" & Horas(Hora) & "', "
    
        Texto = ""
        Cursos.MoveFirst
        Do Until Cursos.EOF
          Texto = Texto & "'" & Cursos!Sigla & "', "
          Cursos.MoveNext
        Loop
      
        GranSQL = GranSQL & Left$(Texto, Len(Texto) - 2)
        GranSQL = GranSQL & ")"

    End If

  'MsgBox GranSQL
  
  If Not (GranSQL = "") Then
    DB.Execute GranSQL
    GranSQL = ""
  End If


  Next Hora
Next Dia



End Sub

