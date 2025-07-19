# Reingeniería usando RUP

Esto a modo de mapa inicial, luego lo refinamos. También hay una [propuesta de dashboard de seguimiento](99-seguimiento/README.md). y el [seguimiento de toda la interacción](../conversation-log.md).

## Disciplinas RUP

- [00 - Modelo del dominio](/RUP/00-casos-uso/00-modelo-del-dominio/modelo-dominio.md#diagrama)

- [01 - Actores y casos de uso](/RUP/00-casos-uso/01-actores-casos-uso/actores-casos-uso.md#diagrama)

  - [Diagrama de contexto (actor administrador)](/RUP/00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.md#diagrama)

### Casos de uso identificados & avance

<!-- 
Emojis para fases futuras:
- 🏗️ Diseño: Arquitectura/estructura
- 💻 Desarrollo: Programación/implementación  
- 🧪 Pruebas: Testing/validación
-->

<div align=center>

|Caso de uso|[Detalle](/RUP/00-casos-uso/02-detalle/)|Prototipo|[Análisis](/RUP/01-analisis/casos-uso/)|Diseño|Desarrollo|Pruebas|Comentario|
|-|:-:|:-:|:-:|:-:|:-:|:-:|-|
|**iniciarSesion()** |[📋](/RUP/00-casos-uso/02-detalle/iniciarSesion/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/iniciarSesion/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/iniciarSesion/README.md)|⚪|⚪|⚪|
|***completarGestion()***   |[📋](/RUP/00-casos-uso/02-detalle/completarGestion/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/completarGestion/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/completarGestion/README.md)|⚪|⚪|⚪|*Nomenclatura actualizada*
|**abrirProgramas()**|[📋](/RUP/00-casos-uso/02-detalle/abrirProgramas/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/abrirProgramas/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/abrirProgramas/README.md)|⚪|⚪|⚪|
|**abrirCursos()**|[📋](/RUP/00-casos-uso/02-detalle/abrirCursos/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/abrirCursos/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/abrirCursos/README.md)|⚪|⚪|⚪|
|**abrirProfesores()**|[📋](/RUP/00-casos-uso/02-detalle/abrirProfesores/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/abrirProfesores/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/abrirProfesores/README.md)|⚪|⚪|⚪|
|**abrirEdificios()**|[📋](/RUP/00-casos-uso/02-detalle/abrirEdificios/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/abrirEdificios/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/abrirEdificios/README.md)|⚪|⚪|⚪|
|**abrirAulas()**|[📋](/RUP/00-casos-uso/02-detalle/abrirAulas/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/abrirAulas/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/abrirAulas/README.md)|⚪|⚪|⚪|
|**abrirRecursos()**|[📋](/RUP/00-casos-uso/02-detalle/abrirRecursos/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/abrirRecursos/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/abrirRecursos/README.md)|⚪|⚪|⚪|
|**crearPrograma()**|[📋](/RUP/00-casos-uso/02-detalle/crearPrograma/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/crearPrograma/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/crearPrograma/README.md)|⚪|⚪|⚪|*"El delgado" filosofía C→U*
|**editarPrograma()**|[📋](/RUP/00-casos-uso/02-detalle/editarPrograma/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/editarPrograma/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/editarPrograma/README.md)|⚪|⚪|⚪|*Aplicando filosofía C→U*
|**eliminarPrograma()**|[📋](/RUP/00-casos-uso/02-detalle/eliminarPrograma/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/eliminarPrograma/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/eliminarPrograma/README.md)|⚪|⚪|⚪|*Eliminación segura con confirmación*
|**crearCurso()**|[📋](/RUP/00-casos-uso/02-detalle/crearCurso/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/crearCurso/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/crearCurso/README.md)|⚪|⚪|⚪|*"El delgado" filosofía C→U completa*
|**editarCurso()**|[📋](/RUP/00-casos-uso/02-detalle/editarCurso/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/editarCurso/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/editarCurso/README.md)|⚪|⚪|⚪|*"El gordo" con edición continua completa*
|**eliminarCurso()**|[📋](/RUP/00-casos-uso/02-detalle/eliminarCurso/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/eliminarCurso/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/eliminarCurso/README.md)|⚪|⚪|⚪|*Eliminación segura con confirmación completa*
|**crearProfesor()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**editarProfesor()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**eliminarProfesor()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**configurarPreferenciasProfesor()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**crearEdificio()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**editarEdificio()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**eliminarEdificio()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**crearAula()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**editarAula()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**eliminarAula()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**crearRecurso()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**editarRecurso()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**eliminarRecurso()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**asignarProfesorACurso()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**generarHorario()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**consultarHorario()**|⚪|⚪|⚪|⚪|⚪|⚪|
|**cerrarSesion()**|[📋](/RUP/00-casos-uso/02-detalle/cerrarSesion/README.md#diagrama-de-especificación)|[🎨](/RUP/00-casos-uso/02-detalle/cerrarSesion/README.md#wireframes)|[🔍](/RUP/01-analisis/casos-uso/cerrarSesion/README.md)|⚪|⚪|⚪|*Nomenclatura corregida*

</div>

