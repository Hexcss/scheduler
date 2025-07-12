# Dashboard de seguimiento RUP

Este dashboard visual muestra el progreso del proyecto de modernización de SigHor utilizando la metodología RUP (Rational Unified Process).

## Diagrama de contexto con seguimiento

<div align=center>

|![Dashboard RUP - Diagrama de Contexto](/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg)|
|-|
|**Dashboard de seguimiento del proyecto pySigHor**|
|Código fuente: [diagrama-contexto-administrador.puml](diagrama-contexto-administrador.puml)|

</div>

## Leyenda de estados RUP

|Color|Fase|Descripción|
|-|-|-|
|🔘 **Gris**|Identificado|Caso de uso identificado pero no iniciado|
|🟠 **Naranja**|Detalle/prototipado|Especificación detallada y prototipado|
|🔵 **Azul**|Análisis|Análisis MVC y colaboraciones|
|🟢 **Verde**|Diseño|Diseño arquitectónico y detallado|
|🟣 **Púrpura**|Desarrollo|Implementación del código|
|🟤 **Marrón**|Pruebas|Testing y validación|
|⚫ **Negro**|Completado|Caso de uso completamente terminado|

## Progreso actual

### Casos de uso completados

#### Fase de análisis (🔵 Azul)

- **iniciarSesion()** - Autenticación de usuarios
- **completarGestion()** - Presentación del menú principal

### Casos de uso identificados (🔘 Gris)

#### Gestión de datos maestros

- **abrirProgramas()** - Apertura de gestión de programas académicos
- **abrirCursos()** - Apertura de gestión de cursos
- **listarProfesores()** - Listado de profesores
- **listarEdificios()** - Listado de edificios
- **listarAulas()** - Listado de aulas
- **listarRecursos()** - Listado de recursos

#### Operaciones CRUD

- **crearPrograma()** / **editarPrograma()** / **eliminarPrograma()**
- **crearCurso()** / **editarCurso()** / **eliminarCurso()**
- **crearProfesor()** / **editarProfesor()** / **eliminarProfesor()**
- **crearEdificio()** / **editarEdificio()** / **eliminarEdificio()**
- **crearAula()** / **editarAula()** / **eliminarAula()**
- **crearRecurso()** / **editarRecurso()** / **eliminarRecurso()**

#### Funcionalidades especiales

- **configurarPreferenciasProfesor()** - Configuración de preferencias docentes
- **asignarProfesorACurso()** - Asignación de profesores a cursos
- **generarHorario()** - Generación automática de horarios
- **consultarHorario()** - Consulta de horarios generados

#### Sistema

- **cerrarSesion()** - Cierre de sesión

## Estadísticas del proyecto

- **Total de casos de uso**: 32
- **Casos de uso en análisis**: 2 (6.25%)
- **Casos de uso identificados**: 30 (93.75%)
- **Progreso general**: 6.25%

## Próximos pasos

Los siguientes casos de uso son candidatos para la próxima iteración:

1. **abrirProgramas()** - Como base para toda la gestión de datos maestros
2. **cerrarSesion()** - Para completar el flujo de autenticación
3. **abrirCursos()** - Continuación de la gestión de datos maestros

## Metodología

Este dashboard se actualiza automáticamente conforme se completan las fases RUP para cada caso de uso:

1. **Identificado** → **Detalle/prototipado** → **Análisis** → **Diseño** → **Desarrollo** → **Pruebas** → **Completado**

El diagrama utiliza colores y estilos de línea específicos para mostrar visualmente el estado de cada transición entre estados del sistema.

## Referencias

- [Diagrama de contexto RUP puro](../00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.md)
- [Documentación de casos de uso](../00-casos-uso/02-detalle/)
- [Análisis de casos de uso](../01-analisis/casos-uso/)
- [Conversation log](../../conversation-log.md)
