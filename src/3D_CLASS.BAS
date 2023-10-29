'Simulador de los botones tipo Office97
'*********************************************************
'Creado por Manuel Mas’as
'Se autoriza su uso y libre modificaci—n, siempre y cuando
'No se modifique este encabezado y se notifique al autor
'de los cambios:
'               spidey2055@rocketmail.com
'3 de mayo de 1998 - 2:35 AM
'Para Visual BASIC 3.0
'*********************************************************

'Primera revisi—n: 5 de Mayo de 1998

'Instrucciones:
'-------------
'*  Cargar el modulo en el Proyecto
'*  Los botones que se quieren trabajar deben pertenecer
'   al array de controles llamado: btnMenu(n)
'*  Se debe especificar para cada formulario el numero
'   de botones en la variable NumeroBotones en
'   el evento Activate del mismo
'*  En el evento Mousemove se llama a la funcion
'   de la Sgte. manera:  Botones3D (Index)
'*  Agregue ademas un boton llamado btnNada, que este
'   Oculto, pero Visible y Enabled (esto es MUY importante)
'*  La barra de estado esta aun en construccion. Por el momento
'   muestra el indice del boton, pero esta funcion puede desactivarse

Option Explicit
  Global NumeroBotones As Integer

'Boton activo es el boton que no se baja (Adonde esta el raton)
'Si Boton activo es -1, se bajan todos los botones
'La Variable global NumeroBotones tiene el total de botones del form
Sub botones3D (BotonActivo As Integer)
Dim i As Integer
  
  For i = 0 To NumeroBotones - 1
    If i <> BotonActivo Then
      If Not (Screen.ActiveForm!btnMenu(i).BevelWidth = 0) Then
        Screen.ActiveForm!btnMenu(i).BevelWidth = 0
        'Screen.ActiveForm!Estado.Caption = ""
      End If
    End If
  Next i

If BotonActivo <> -1 Then
  If Not (Screen.ActiveForm!btnMenu(BotonActivo).BevelWidth = 1) Then
    Screen.ActiveForm!btnMenu(BotonActivo).BevelWidth = 1
    'Esta seccion falta trabajarla. Las captions de la barra de estado
    'podrian estar en un ini, o como variables al cargar el formulario
    'o de alguna otra manera.
    'Screen.ActiveForm!Estado.Caption = "Mouse encima del " & BotonActivo & "' boton."
  End If
End If
  
  'Este es un bug... No activarlo
  'Screen.ActiveForm.btnNada.SetFocus

End Sub

