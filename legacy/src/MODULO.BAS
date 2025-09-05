'Modulo de procedimientos generales
Option Explicit

Global miSQL As String
Global Const DB_Ruta = "C:\SISTEMAS\HORARIO\DATOS\HOR_UDEP.MDB"

Type Cursos
  ID As Integer
  Nombre As String
  Programa As String
  HAnterior As Integer
  HNuevo As Integer
End Type

Global CursosH(1 To 5) As Cursos

Sub centra (formulario As Form)
  formulario.Left = (screen.Width - formulario.Width) \ 2
  formulario.Top = (screen.Height - formulario.Height) \ 2
End Sub

Sub CompactarBaseDeDatos ()


CompactDatabase "C:\SIGHOR\DATOS\HOR_UDEP.MDB", "C:\SIGHOR\DATOS\HO2_UDEP.MDB"

On Error Resume Next
Kill "C:\PUBS.BAK"
On Error GoTo 0

Name "C:\SIGHOR\DATOS\HOR_UDEP.MDB" As "C:\SIGHOR\DATOS\HOR_UDEP.BAK"
Name "C:\SIGHOR\DATOS\HO2_UDEP.MDB" As "C:\SIGHOR\DATOS\HOR_UDEP.MDB"

End Sub

Sub main ()
  frmfondo.Show
  frmAcercaDe.Show 1
End Sub

'La funcion PreguntaTexto
'Muestra un inputbox con la Pregunta y el titulo indicado
'Limita la respuesta a los caracteres definidos por MaximaLongitud
'Y convierte en mayusculas la respuesta, anulando los espacios en blanco
Function PreguntaTexto (Pregunta$, Titulo$, MaximaLongitud%) As String

  Dim Respuesta$
  Respuesta = Trim$(InputBox(Pregunta, Titulo))

If Respuesta = "" Then
  MsgBox "No ha ingresado nada"
  PreguntaTexto = ""
  Exit Function
End If

If MaximaLongitud > 0 Then
  If Len(Respuesta) > MaximaLongitud Then
    Respuesta = Left$(Respuesta, MaximaLongitud)
  End If
End If

PreguntaTexto = UCase$(Respuesta)


End Function

