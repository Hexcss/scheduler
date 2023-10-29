Option Explicit
  
  Global Const Ruta = "c:\sighor\datos\hor_udep.mdb"
  Global NumeroH As Integer

Sub ComprimirSabados ()
'Definicion de Variables
'Variables de acceso a datos
Dim DB As database
Dim AulasSabados As snapshot
Dim CursosSabados As Dynaset
Dim Ocupada As String
Dim Hora As Integer

'Abrir la base de datos
Set DB = OpenDatabase(Ruta, False, False)

'Ver las aulas que ocupan la primera hora del sabado
  'CAMPOS : Capacidad, IDAula
  MiSQL = "SELECT DISTINCTROW M_Aulas.Capacidad, M_Horario.IDAula "
  MiSQL = MiSQL & "FROM M_Cursos INNER JOIN (M_Aulas INNER JOIN M_Horario ON M_Aulas.ID = M_Horario.IDAula) ON M_Cursos.ID = M_Horario.IDCurso "
  MiSQL = MiSQL & "WHERE ((M_Horario.Hora = 7) And (M_Horario.Dia = 'S')) "
  MiSQL = MiSQL & "ORDER BY M_Horario.IDAula; "
  Set AulasSabados = DB.CreateSnapshot(MiSQL)

'Para cada una de las horas restantes (8,9,10,11 y 12)
For Hora = 8 To 12
  Ocupada = ""
  'Ver que cursos se dictan en las mismas horas del sabado 7 AM
  'y marcar esas aulas como ocupadas
  'CAMPOS : Capacidad, Hora, IDAula, IDCurso
    MiSQL = "SELECT DISTINCTROW M_Aulas.Capacidad, M_Horario.Hora, M_Horario.IDAula, M_Horario.IDCurso "
    MiSQL = MiSQL & "FROM M_Cursos INNER JOIN (M_Aulas INNER JOIN M_Horario ON M_Aulas.ID = M_Horario.IDAula) ON M_Cursos.ID = M_Horario.IDCurso "
    MiSQL = MiSQL & "WHERE ((M_Horario.Hora =" & Hora & ") And (M_Horario.Dia = 'S')) "
    MiSQL = MiSQL & "ORDER BY M_Horario.IDAula, M_Horario.Hora, M_Aulas.Capacidad; "
    Set CursosSabados = DB.CreateDynaset(MiSQL)
      
      Do Until CursosSabados.EOF
	AulasSabados.FindFirst "IDAula =" & CursosSabados!IDAula
	  If Not (AulasSabados.NoMatch) Then
	    Ocupada = Ocupada & IIf(Ocupada = "", "", " AND ") & " CursosSabados!IDAula <> " & CursosSabados!IDAula
	  End If
	CursosSabados.MoveNext
      Loop

  'Ver los cursos que no se dictan en horas del sabado
  'reubicarlos si es posible
      If CursosSabados.RecordCount > 0 Then CursosSabados.MoveFirst
      Do Until CursosSabados.EOF
	AulasSabados.FindFirst "IDAula =" & CursosSabados!IDAula
	  'If AulasSabados.NoMatch And Not (Ocupada) Then
	    'CursosSabados!IDAula =
	    

	  'End If
	CursosSabados.MoveNext
      Loop




Next Hora


End Sub

Sub GeneraHorario ()

'Definicion de Variables
'Variables de acceso a datos
Dim DB As database
Dim Horario As Table
Dim PreH As snapshot
Dim TiposH As snapshot

Dim H As Integer, i As Integer, Dias As Integer
ReDim DiaHora(1 To 6) As String

'Abrir la base de datos
Set DB = OpenDatabase(Ruta, False, False)

'Limpiar la tabla de Horario
DB.Execute "DELETE FROM M_Horario"

'Abrir la tabla Horario
Set Horario = DB.OpenTable("M_Horario")

For H = 1 To 8
  
  'Cargar los Dias/Horas de los H
  MiSQL = "SELECT DISTINCTROW M_DatosGenerales.IDClase, M_DatosGenerales.IDCorrelativo, M_DatosGenerales.Descripcion "
  MiSQL = MiSQL & "FROM M_DatosGenerales "
  MiSQL = MiSQL & "WHERE ((M_DatosGenerales.IDClase=3) AND (M_DatosGenerales.IDCorrelativo=" & H & "));"
  Set TiposH = DB.CreateSnapshot(MiSQL)

  'Definir el Arreglo
  'su formato es: "D-hh"
    For Dias = 1 To InStr(TiposH!Descripcion, "/") - 1
      DiaHora((Dias * 2) - 1) = Mid$(TiposH!Descripcion, Dias, 1) & "-" & Mid$(TiposH!Descripcion, Len(TiposH!Descripcion) - 4, 2)
      DiaHora(Dias * 2) = Mid$(TiposH!Descripcion, Dias, 1) & "-" & Right$(TiposH!Descripcion, 2)
    Next Dias
  
  'Pedir los cursos del mismo H
  'Variable       :   PreH
  'Tipo de Objeto :   Snapshot
  'Campos         :   IDAula, IDCurso, H, Creditos
  MiSQL = "SELECT DISTINCTROW M_Aulas.ID AS IDAula, M_Cursos.ID AS IDCurso, T_PreHorario.H, M_Cursos.Creditos "
  MiSQL = MiSQL & "FROM M_Cursos INNER JOIN (M_Aulas INNER JOIN T_PreHorario ON M_Aulas.ID = T_PreHorario.IDAula) ON M_Cursos.ID = T_PreHorario.IDCurso "
  MiSQL = MiSQL & "WHERE ((T_PreHorario.H = " & H & ")) "
  MiSQL = MiSQL & "ORDER BY T_PreHorario.H, M_Cursos.Creditos DESC;"
  Set PreH = DB.CreateSnapshot(MiSQL)
  
  'Para cada curso en el SnapShot
  Do Until PreH.EOF

      For i = 1 To PreH!Creditos
	Horario.AddNew
	  Horario!Dia = Left$(DiaHora(i), 1)
	  Horario!Hora = Val(Right$(DiaHora(i), 2))
	  Horario!IDAula = PreH!IDAula
	  Horario!IDCurso = PreH!IDCurso
	Horario.Update
      Next i

    PreH.MoveNext
  Loop

Next H
'MsgBox "Horario generado, pero sin HE"

End Sub

Sub GeneraPreHorario ()

'Definicion de Variables
'Variables de acceso a datos
Dim DB As database
Dim aulas As Dynaset
Dim Cursos As snapshot, Profesor As snapshot, ZMin As snapshot

'Variables comunes
ReDim Propiedad(1 To 5) As Integer
Dim H As Integer, j As Integer, Registros As Integer
Dim ConstantePropiedad As Integer
Dim EnteroDelAula As Integer, EnteroMayor As Integer
Dim AulaElegida As Integer
Dim ZMinimo As Integer
Dim MiSQL As String, Texto As String

'Abrir la base de datos
Set DB = OpenDatabase(Ruta, False, False)

'Limpiar la tabla de PreHorario
DB.Execute "DELETE FROM T_PreHorario"

'Bucle Principal de H
For H = 1 To 8
  
  'Pedir los cursos del mismo H
  'Ordenados descendentemente por vacantes
  'Variable       :   Cursos
  'Tipo de Objeto :   Snapshot
  'Campos         :   ID, Nombre, Sigla y Vacantes
  MiSQL = "SELECT DISTINCTROW M_Cursos.ID, M_Cursos.Nombre, M_Cursos.Sigla, M_Cursos.Vacantes "
  MiSQL = MiSQL & "FROM M_Cursos INNER JOIN S_CursosHModificado ON M_Cursos.ID = S_CursosHModificado.IDCurso "
  MiSQL = MiSQL & "WHERE ((S_CursosHModificado.NuevoH='" & H & "')) "
  MiSQL = MiSQL & "ORDER BY M_Cursos.Vacantes DESC;"
  Set Cursos = DB.CreateSnapshot(MiSQL)
  
  'Inicialmente no hay aulas ocupadas en ese H
  'Inicializar las aulas ocupadas a Cero
  DB.Execute "DELETE FROM T_AulaOcupada"
  
  'PARA CADA CURSO
  Do Until Cursos.EOF

    'Ver datos del profesor que dicta el curso
    'Variable       :   Profesor
    'Tipo de Objeto :   Snapshot
    'Campos         :   IDCurso, IDProfesor, R1 .. R6
    MiSQL = "SELECT DISTINCTROW R_ProfesorCurso.IDCurso, R_ProfesorCurso.IDProfesor, M_Profesores.R1, M_Profesores.R2, M_Profesores.R3, M_Profesores.R4, M_Profesores.R5 "
    MiSQL = MiSQL & "FROM M_Cursos INNER JOIN (M_Profesores INNER JOIN R_ProfesorCurso ON M_Profesores.ID = R_ProfesorCurso.IDProfesor) ON M_Cursos.ID = R_ProfesorCurso.IDCurso "
    MiSQL = MiSQL & "WHERE ((R_ProfesorCurso.IDCurso=" & Cursos!ID & "))"
    Set Profesor = DB.CreateSnapshot(MiSQL)
      
      If Profesor.RecordCount < 1 Then
	MsgBox "El curso " & Cursos!ID & " no tiene profesor!", , "Chocolates!"
      End If

    'Crear Tabla con Aulas POSIBLES
    DB.Execute "DELETE FROM T_AulaLibre"
    DB.Execute "INSERT INTO T_AulaLibre SELECT M_Aulas.ID, M_Aulas.Propiedades, M_Aulas.Capacidad - " & Cursos!Vacantes & " AS Z FROM M_Aulas WHERE ((M_Aulas.Capacidad>" & Cursos!Vacantes & ") AND (M_Aulas.Bloqueada=0) AND M_Aulas.ID NOT IN (select ID from T_AulaOcupada))"

    'Ver el Z Minimo
    Set ZMin = DB.CreateSnapshot("SELECT DISTINCTROW Min(T_AulaLibre.Z) AS ZMinimo FROM T_AulaLibre")
    ZMinimo = Val("" & ZMin!ZMinimo)
    ZMin.Close

    'Consulta de Aulas que minimizan el Z
    'y que no estan ocupadas
    'Variable       :   Aulas
    'Tipo de Objeto :   Dynaset
    'Campos         :   ID, Nombre, Capacidad, Propiedades, Especial, Bloqueada, IDEdificio
    MiSQL = "SELECT * "
    MiSQL = MiSQL & "FROM T_AulaLibre "
    MiSQL = MiSQL & "WHERE T_AulaLibre.Z<=" & ZMinimo & ""
    Set aulas = DB.CreateDynaset(MiSQL)
    
    If aulas.RecordCount < 1 Then 'O sea, si no hay salon
      
      Debug.Print ">" & Cursos!Nombre & " - " & Cursos!Vacantes
      'Mover de H a los cursos que caigan aqui
	  MiSQL = "UPDATE S_CursosHModificado "
	  MiSQL = MiSQL & "Set NuevoH = '" & IIf(H < 5, H + 4, IIf(H < 7, H + 2, IIf(H > 6, H, 99))) & "' "
	  MiSQL = MiSQL & "WHERE IDCurso = " & Cursos!ID
	  DB.Execute MiSQL

    Else 'Sí hay salon (o salones)
      
      EnteroMayor = -1
      AulaElegida = 0 'Para Probar
      Do Until aulas.EOF
	'Calcular el "Entero" del aula
	ConstantePropiedad = aulas!Propiedades
	For j = 1 To 5
	  Propiedad(j) = ConstantePropiedad Mod 2
	  ConstantePropiedad = ConstantePropiedad \ 2
	Next j
	    
	EnteroDelAula = 0
	  EnteroDelAula = Propiedad(1) * 2 ^ Profesor!R1
	  EnteroDelAula = EnteroDelAula + Propiedad(2) * 2 ^ Profesor!R2
	  EnteroDelAula = EnteroDelAula + Propiedad(3) * 2 ^ Profesor!R3
	  EnteroDelAula = EnteroDelAula + Propiedad(4) * 2 ^ Profesor!R4
	  EnteroDelAula = EnteroDelAula + Propiedad(5) * 2 ^ Profesor!R5

	aulas.Edit
	  aulas!Entero = EnteroDelAula
	aulas.Update
	
	If EnteroDelAula > EnteroMayor Then
	  EnteroMayor = EnteroDelAula
	  AulaElegida = aulas!ID
	End If

	aulas.MoveNext
      Loop
      
      DB.Execute "INSERT INTO T_AulaOcupada (ID) VALUES (" & AulaElegida & ")"
      DB.Execute "INSERT INTO T_PreHorario (IDAula,IDCurso,H) VALUES (" & AulaElegida & "," & Cursos!ID & "," & H & ")"
    
    End If

    Cursos.MoveNext
  
  Loop
  
'Actualizar la barra de porcentaje
frmMenuPrincipal!Panel3D1.FloodPercent = (H / 8) * 100

Next H

'Cerrar las variables de acceso a datos
aulas.Close
Cursos.Close
Profesor.Close
DB.Close

'MsgBox "Pre-Horario generado", 64, "Atencion"

End Sub

Sub IngresoHE ()

'Definicion de Variables
'Variables de acceso a datos
Dim DB As database
Dim Horario As Table
Dim CursosHE As snapshot
Dim AulasLibres As Dynaset
Dim HOcupados As snapshot
Dim ZMin As snapshot
Dim Profesor As snapshot
Dim TiposH As snapshot

Dim H As Integer, Esta As Integer, ZMinimo As Integer, i As Integer
Dim Dias As Integer
Dim Texto$
Dim EnteroMayor As Integer, AulaElegida As Integer, j As Integer
Dim ConstantePropiedad As Integer, EnteroDelAula As Integer
ReDim Propiedad(1 To 6) As Integer
ReDim DiaHora(1 To 6) As String


'Abrir la base de datos
Set DB = OpenDatabase(Ruta, False, False)

'Abrir la tabla Horario
Set Horario = DB.OpenTable("M_Horario")

'Cursos de HE
  'Pedir los cursos de HE
  'Variable       :   CursosHE
  'Tipo de Objeto :   Snapshot
  'Campos         :   IDCurso, Creditos, Vacantes, Nombre, NuevoH, Ciclo
  MiSQL = "SELECT DISTINCTROW S_CursosHModificado.IDCurso, M_Cursos.Creditos,M_Cursos.Vacantes, M_Cursos.Nombre, S_CursosHModificado.NuevoH, M_Cursos.Ciclo "
  MiSQL = MiSQL & "FROM M_Cursos INNER JOIN S_CursosHModificado ON M_Cursos.ID = S_CursosHModificado.IDCurso "
  MiSQL = MiSQL & "WHERE ((S_CursosHModificado.NuevoH='E'))"
  MiSQL = MiSQL & "ORDER BY M_Cursos.Ciclo DESC;"
  Set CursosHE = DB.CreateSnapshot(MiSQL)
  
  Do Until CursosHE.EOF
    
    H = 8
    Do Until H = 1
      'Ver los ciclos que ocupan un H
	 MiSQL = "SELECT DISTINCT M_Cursos.Ciclo "
	 MiSQL = MiSQL & "FROM (M_Cursos INNER JOIN S_CursosHModificado ON M_Cursos.ID = S_CursosHModificado.IDCurso) INNER JOIN M_Horario ON S_CursosHModificado.IDCurso = M_Horario.IDCurso "
	 MiSQL = MiSQL & "WHERE ((S_CursosHModificado.NuevoH='" & H & "'));"
	 Set HOcupados = DB.CreateSnapshot(MiSQL)

	      Esta = False
	      Do Until HOcupados.EOF
		  If CursosHE!Ciclo = HOcupados!Ciclo Then
		    Esta = True
		    Exit Do
		  End If
		HOcupados.MoveNext
	      Loop

	If Not Esta Then Exit Do

      H = H - 1
    Loop
    
    If Esta Then MsgBox "Sonamos!"

    'Crear Tabla con Aulas POSIBLES
    DB.Execute "DELETE FROM T_AulaLibre"
    
    'Ver las aulas no asignadas para un H
    'Colocarlas en T_AulaLibre
      MiSQL = "SELECT DISTINCTROW M_Aulas.ID as ID, M_Aulas.Propiedades, "
      MiSQL = MiSQL & "M_Aulas.Capacidad - " & CursosHE!Vacantes & " as Z "
      MiSQL = MiSQL & "FROM M_Aulas, T_PreHorario "
      MiSQL = MiSQL & "WHERE ((M_Aulas.ID Not In  "
      MiSQL = MiSQL & "(SELECT DISTINCTROW T_PreHorario.IDAula "
      MiSQL = MiSQL & "FROM T_PreHorario "
      MiSQL = MiSQL & "WHERE ((T_PreHorario.H=" & H & ")))));"
      DB.Execute "INSERT INTO T_AulaLibre " & MiSQL
    
    'Ver el Z Minimo
    Set ZMin = DB.CreateSnapshot("SELECT DISTINCTROW Min(T_AulaLibre.Z) AS ZMinimo FROM T_AulaLibre")
    ZMinimo = Val("" & ZMin!ZMinimo)
    ZMin.Close
    
    'Pedir Aulas posibles
    'Campos : ID, Nombre, Capacidad, Propiedades "
    MiSQL = "SELECT * FROM T_AulaLibre WHERE Z=" & ZMinimo & ""
    Set AulasLibres = DB.CreateDynaset(MiSQL)
    
    'Ver datos del profesor que dicta el curso
    'Variable       :   Profesor
    'Tipo de Objeto :   Snapshot
    'Campos         :   IDCurso, IDProfesor, R1 .. R6
    MiSQL = "SELECT DISTINCTROW R_ProfesorCurso.IDCurso, R_ProfesorCurso.IDProfesor, M_Profesores.R1, M_Profesores.R2, M_Profesores.R3, M_Profesores.R4, M_Profesores.R5 "
    MiSQL = MiSQL & "FROM M_Cursos INNER JOIN (M_Profesores INNER JOIN R_ProfesorCurso ON M_Profesores.ID = R_ProfesorCurso.IDProfesor) ON M_Cursos.ID = R_ProfesorCurso.IDCurso "
    MiSQL = MiSQL & "WHERE ((R_ProfesorCurso.IDCurso=" & CursosHE!IDCurso & "))"
    Set Profesor = DB.CreateSnapshot(MiSQL)
      
      If Profesor.RecordCount < 1 Then
	MsgBox "El curso " & CursosHE!ID & " no tiene profesor!", , "Chocolates!"
      End If
    
    'Para cada aula en este grupo
    'ver si alguna puede almacenar el curso
      EnteroMayor = -1
      AulaElegida = 0 'Para Probar
      Do Until AulasLibres.EOF
	'Calcular el "Entero" del aula
	ConstantePropiedad = AulasLibres!Propiedades
	For j = 1 To 5
	  Propiedad(j) = ConstantePropiedad Mod 2
	  ConstantePropiedad = ConstantePropiedad \ 2
	Next j
	    
	EnteroDelAula = 0
	  EnteroDelAula = Propiedad(1) * 2 ^ Profesor!R1
	  EnteroDelAula = EnteroDelAula + Propiedad(2) * 2 ^ Profesor!R2
	  EnteroDelAula = EnteroDelAula + Propiedad(3) * 2 ^ Profesor!R3
	  EnteroDelAula = EnteroDelAula + Propiedad(4) * 2 ^ Profesor!R4
	  EnteroDelAula = EnteroDelAula + Propiedad(5) * 2 ^ Profesor!R5

	AulasLibres.Edit
	  AulasLibres!Entero = EnteroDelAula
	AulasLibres.Update
	
	If EnteroDelAula > EnteroMayor Then
	  EnteroMayor = EnteroDelAula
	  AulaElegida = AulasLibres!ID
	End If

	AulasLibres.MoveNext
    
      Loop

  'En este punto, Ya hay un aula elegida.
  'Ingresarla en el horario
  'MsgBox Str(AulaElegida), , CursosHE!Nombre & "-" & H
  
  'Cargar los Dias/Horas del H
  MiSQL = "SELECT DISTINCTROW M_DatosGenerales.IDClase, M_DatosGenerales.IDCorrelativo, M_DatosGenerales.Descripcion "
  MiSQL = MiSQL & "FROM M_DatosGenerales "
  MiSQL = MiSQL & "WHERE ((M_DatosGenerales.IDClase=3) AND (M_DatosGenerales.IDCorrelativo=" & H & "));"
  Set TiposH = DB.CreateSnapshot(MiSQL)

  'Definir el Arreglo
  'su formato es: "D-hh"
    For Dias = 1 To InStr(TiposH!Descripcion, "/") - 1
      DiaHora((Dias * 2) - 1) = Mid$(TiposH!Descripcion, Dias, 1) & "-" & Mid$(TiposH!Descripcion, Len(TiposH!Descripcion) - 4, 2)
      DiaHora(Dias * 2) = Mid$(TiposH!Descripcion, Dias, 1) & "-" & Right$(TiposH!Descripcion, 2)
    Next Dias
  TiposH.Close

   'Guardarlo en el PreHorario
   DB.Execute "INSERT INTO T_PreHorario (IDAula,IDCurso,H) VALUES (" & AulaElegida & "," & CursosHE!IDCurso & "," & H & ")"
   
   'Guardar el curso en el Horario
      For i = 1 To CursosHE!Creditos
	Horario.AddNew
	  Horario!Dia = Left$(DiaHora(i), 1)
	  Horario!Hora = Val(Right$(DiaHora(i), 2))
	  Horario!IDAula = AulaElegida
	  Horario!IDCurso = CursosHE!IDCurso
	Horario.Update
      Next i
  
  CursosHE.MoveNext
Loop

End Sub

Sub IngresoHV ()

'Definicion de Variables
'Variables de acceso a datos
Dim DB As database
Dim Horario As Table
Dim CursosHV As snapshot
Dim AulasLibres As snapshot

Dim Texto As String
Dim i As Integer

'Abrir la base de datos
Set DB = OpenDatabase(Ruta, False, False)

'Abrir la tabla Horario
Set Horario = DB.OpenTable("M_Horario")

'Cursos de HV
  'Pedir los cursos de HV
  'Variable       :   CursosHV
  'Tipo de Objeto :   Snapshot
  'Campos         :   IDCurso, Creditos, Vacantes, Nombre, NuevoH, Ciclo
  MiSQL = "SELECT DISTINCTROW S_CursosHModificado.IDCurso, M_Cursos.Creditos,M_Cursos.Vacantes, M_Cursos.Nombre, S_CursosHModificado.NuevoH, M_Cursos.Ciclo "
  MiSQL = MiSQL & "FROM M_Cursos INNER JOIN S_CursosHModificado ON M_Cursos.ID = S_CursosHModificado.IDCurso "
  MiSQL = MiSQL & "WHERE ((S_CursosHModificado.NuevoH='V'))"
  MiSQL = MiSQL & "ORDER BY M_Cursos.Ciclo DESC;"
  Set CursosHV = DB.CreateSnapshot(MiSQL)

'Aulas que no esta ocupadas el sabado
  MiSQL = "SELECT M_Aulas.ID as IDAula, M_Aulas.Capacidad "
  MiSQL = MiSQL & "FROM M_Aulas "
  MiSQL = MiSQL & "WHERE ((M_Aulas.ID Not In (SELECT DISTINCTROW M_Horario.IDAula "
  MiSQL = MiSQL & "FROM M_Horario "
  MiSQL = MiSQL & "WHERE ((M_Horario.Hora = 7) And (M_Horario.Dia = 'S')) "
  MiSQL = MiSQL & "ORDER BY M_Horario.IDAula))) "
  MiSQL = MiSQL & "ORDER BY M_Aulas.Capacidad;"
  Set AulasLibres = DB.CreateSnapshot(MiSQL)
  
  'Para Cada curso de HV
  Do Until CursosHV.EOF
    'Colocarlo en la respectiva aula libre
      For i = 7 To 12
	Horario.AddNew
	  Horario!Dia = "S"
	  Horario!Hora = i
	  Horario!IDAula = AulasLibres!IDAula
	  Horario!IDCurso = CursosHV!IDCurso
	Horario.Update
      Next i
    AulasLibres.MoveNext
    CursosHV.MoveNext
  Loop

MsgBox "THE END...", 48, "Arriba PERU!"
End Sub

Sub PrepararH ()
  
'Definicion de Variables
'Variables de acceso a datos
Dim DB As database
Dim TablaNuevosH As Table
Dim Cursos As Dynaset
Dim Consulta As QueryDef, TablaH As snapshot

Dim MiSQL As String, MoverH As Integer, tmp As Integer
Dim P As Integer, C As Integer, H As Integer, i As Integer, Texto As String
Dim Curso1 As Cursos, Curso2 As Cursos

'Abrir la base de datos
  Set DB = OpenDatabase(Ruta, False, False)

'Ver el H maximo PreDefinido
  Set Consulta = DB.OpenQueryDef("C_HMaximo")
    Set TablaH = Consulta.CreateSnapshot()
    NumeroH = TablaH.Fields("HMaximo")
  TablaH.Close
  Consulta.Close

'Revisar si hay algun H repetido y colocarlo en otro H
'ENTRADA  :   Mini-Consultas de M_Cursos
'SALIDA   :   S_CursosHModificado

Set TablaNuevosH = DB.OpenTable("S_CursosHModificado")

'Preparar la Tabla S_CursosHModificado
  DB.Execute "DELETE FROM S_CursosHModificado"
  DB.Execute "INSERT INTO S_CursosHModificado SELECT DISTINCT M_Cursos.ID as IDCurso, M_Cursos.H as NuevoH FROM M_Cursos WHERE Activo;"

For H = 1 To NumeroH
  For C = 1 To 12
    For P = 1 To 4
      
      MiSQL = ""
      MiSQL = MiSQL & "SELECT DISTINCTROW M_Cursos.ID, M_Cursos.Nombre, M_Cursos.Programa, M_Cursos.Creditos, M_Cursos.H, M_Cursos.Ciclo, M_Cursos.PI, M_Cursos.PS, M_Cursos.PC, M_Cursos.PE "
      MiSQL = MiSQL & "FROM M_Cursos "
      MiSQL = MiSQL & "WHERE ((M_Cursos.H='" & H & "') AND (M_Cursos.Ciclo=" & C & ") AND "
      Select Case P
	Case 1
	  MiSQL = MiSQL & "(M_Cursos.PI=-1)) "
	Case 2
	  MiSQL = MiSQL & "(M_Cursos.PS=-1)) "
	Case 3
	  MiSQL = MiSQL & "(M_Cursos.PE=-1)) "
	Case 4
	  MiSQL = MiSQL & "(M_Cursos.PC=-1)) "
      End Select
      MiSQL = MiSQL & "AND M_Cursos.Activo ORDER BY Len(M_Cursos.Programa) DESC , M_Cursos.Programa DESC , M_Cursos.Creditos DESC , M_Cursos.H, M_Cursos.Ciclo "
      
      Set TablaH = DB.CreateSnapshot(MiSQL)
      
      MoverH = False

      Do While Not TablaH.EOF
	
	If MoverH Then
	  'Cambiarle de H
	  'Escribir el dato en S_CursosHModificado
	  MiSQL = "UPDATE S_CursosHModificado "
	  
	  'Verificacion para los H=4 con mas de 5 creditos
	  If H <> 4 Then MiSQL = MiSQL & "Set NuevoH = '" & H + 4 & "' "
	  If H = 4 Then MiSQL = MiSQL & "Set NuevoH = '" & H + IIf(TablaH!Creditos > 4, 2, 4) & "' "
	  
	  MiSQL = MiSQL & "WHERE IDCurso = " & TablaH!ID
	  DB.Execute MiSQL
	End If

	MoverH = True
	TablaH.MoveNext
      Loop
    Next P
  frmMenuPrincipal!Panel3D1.FloodPercent = (H / (NumeroH + 1)) * 100 + (C / (12 * (NumeroH + 1))) * 100
  Next C
Next H

TablaH.Close
TablaNuevosH.Close
DB.Close

'MsgBox "Fin del Pre-H"

End Sub

