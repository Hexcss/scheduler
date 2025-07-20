<div align=right>
 
|[![](https://img.shields.io/badge/-Inicio-FFF?style=flat&logo=Emlakjet&logoColor=black)](../../README.md) [![](https://img.shields.io/badge/-RUP-FFF?style=flat&logo=Elsevier&logoColor=black)](../README.md) [![](https://img.shields.io/badge/-Modelo_del_dominio-FFF?style=flat&logo=freedesktop.org&logoColor=black)](../00-casos-uso/00-modelo-del-dominio/modelo-dominio.md) [![](https://img.shields.io/badge/-Actores_&_Casos_de_Uso-FFF?style=flat&logo=crewunited&logoColor=black)](../00-casos-uso/01-actores-casos-uso/actores-casos-uso.md) [![](https://img.shields.io/badge/-Diagrama_de_contexto-FFF?style=flat&logo=diagramsdotnet&logoColor=black)](../00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.md) [![](https://img.shields.io/badge/-Detalle_&_Prototipo-FFF?style=flat&logo=typeorm&logoColor=black)](../00-casos-uso/02-detalle/README.md) [![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](../01-analisis/casos-uso/README.md)
|-:
|[![](https://img.shields.io/badge/-Estado-FFF?style=flat&logo=greensock&logoColor=black)](../README.md) [![](https://img.shields.io/badge/-Propuesta_de_dashboard-FFF?style=flat&logo=composer&logoColor=black)](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg) [![](https://img.shields.io/badge/-Reflexiones-FFF?style=flat&logo=hootsuite&logoColor=black)](../../extraDocs/README.md) [![](https://img.shields.io/badge/-Log_de_conversación-FFF?style=flat&logo=gnometerminal&logoColor=black)](../../conversation-log.md)

</div>

# Dashboard de seguimiento RUP

Este dashboard visual muestra el progreso del proyecto de modernización de SigHor utilizando la metodología RUP (Rational Unified Process).

## Diagrama de contexto con seguimiento

<div align=center>

|![Dashboard RUP - Diagrama de Contexto](/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg)|
|:-:|
|**Dashboard de seguimiento del proyecto pySigHor**|
|Código fuente: [diagrama-contexto-administrador.puml](diagrama-contexto-administrador.puml)|

</div>

## Leyenda de estados RUP

|Color|Fase|Descripción|
|-|-|-|
|🔘 **Gris**|Identificado|Caso de uso identificado pero no iniciado|
|🔴 **Rojo**|Detalle/prototipado|Especificación detallada y prototipado|
|🟫 **Amarillo oscuro**|Análisis|Análisis MVC y colaboraciones|
|🟢 **Verde**|Diseño|Diseño arquitectónico y detallado|
|🔵 **Celeste**|Desarrollo|Implementación del código|
|🔵 **Azul**|Pruebas|Testing y validación|
|⚫ **Negro**|Completado|Caso de uso completamente terminado|

## Navegación del diagrama

Los casos de uso analizados incluyen **2 enlaces** de navegación:
- **[nombreCasoUso]** - Especificación detallada
- **[A]** - Análisis MVC

## Progreso actual

### Casos de uso en fase de análisis (🟫 Amarillo oscuro)

- **iniciarSesion()** - Autenticación de usuarios (especificación + prototipo + análisis)
- **completarGestion()** - Hub de convergencia del sistema (especificación + prototipo + análisis)
- **abrirProgramas()** - Apertura de gestión de programas académicos (especificación + prototipo + análisis)
- **abrirCursos()** - Apertura de gestión de cursos (especificación + prototipo + análisis)
- **abrirProfesores()** - Apertura de gestión de profesores (especificación + prototipo + análisis)
- **abrirEdificios()** - Apertura de gestión de edificios (especificación + prototipo + análisis)
- **abrirAulas()** - Apertura de gestión de aulas (especificación + prototipo + análisis)
- **abrirRecursos()** - Apertura de gestión de recursos (especificación + prototipo + análisis)
- **crearPrograma()** - Creación de programas académicos como "el delgado" C→U (especificación + prototipo + análisis)
- **editarPrograma()** - Edición de programas académicos aplicando filosofía C→U (especificación + prototipo + análisis)
- **eliminarPrograma()** - Eliminación segura de programas con confirmación (especificación + prototipo + análisis)
- **crearCurso()** - Creación de cursos como "el delgado" C→U (especificación + prototipo + análisis + secuencia)
- **editarCurso()** - Edición de cursos como "el gordo" con edición continua (especificación + prototipo + análisis + secuencia)
- **eliminarCurso()** - Eliminación segura de cursos con confirmación (especificación + prototipo + análisis)
- **eliminarProfesor()** - Eliminación segura de profesores con confirmación (especificación + prototipo + análisis) - CORREGIDO
- **cerrarSesion()** - Cierre de sesión (especificación + prototipo + análisis)

### Casos de uso identificados únicamente (🔘 Gris)

#### Gestión de datos maestros
(Todos los casos de uso de datos maestros están en análisis o superior)

#### Operaciones CRUD

- **❌ crearProfesor()** / **❌ editarProfesor()** / **eliminarProfesor()** - ❌ ERROR: Aplicación automática no solicitada (eliminarProfesor CORREGIDO)
- **crearEdificio()** / **editarEdificio()** / **eliminarEdificio()**
- **crearAula()** / **editarAula()** / **eliminarAula()**
- **crearRecurso()** / **editarRecurso()** / **eliminarRecurso()**

#### Funcionalidades especiales

- **configurarPreferenciasProfesor()** - Configuración de preferencias docentes
- **asignarProfesorACurso()** - Asignación de profesores a cursos
- **generarHorario()** - Generación automática de horarios
- **consultarHorario()** - Consulta de horarios generados

#### Sistema

(Todos los casos de uso del sistema están en análisis o superior)

## Estadísticas del proyecto

- **Total de casos de uso**: 32
- **Casos de uso en análisis**: 18 (56.25%)
  - 16 casos correctos + 2 casos erróneos (❌ crearProfesor, editarProfesor) + 1 corregido (eliminarProfesor)
- **Casos de uso identificados**: 14 (43.75%)
- **Progreso general**: 56.25% (incluyendo errores pendientes de corrección)

## Próximos pasos

### Corrección prioritaria
1. **❌ Corregir errores en casos de uso de Profesor** - Los casos crearProfesor, editarProfesor y eliminarProfesor contienen errores técnicos identificados y deben corregirse antes de usar como template

### Próxima iteración (después de corrección)
2. **crearAula()** / **editarAula()** / **eliminarAula()** - Aplicar patrón CRUD validado a aulas
3. **crearEdificio()** / **editarEdificio()** / **eliminarEdificio()** - Aplicar patrón CRUD validado a edificios
4. **crearRecurso()** / **editarRecurso()** / **eliminarRecurso()** - Aplicar patrón CRUD validado a recursos

## Metodología

Este dashboard se actualiza automáticamente conforme se completan las fases RUP para cada caso de uso:

1. **Identificado** → **Detalle/prototipado** → **Análisis** → **Diseño** → **Desarrollo** → **Pruebas** → **Completado**

El diagrama utiliza colores y estilos de línea específicos para mostrar visualmente el estado de cada transición entre estados del sistema.

## Referencias

- [Diagrama de contexto RUP puro](../00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.md)
- [Documentación de casos de uso](../00-casos-uso/02-detalle/README.md)
- [Análisis de casos de uso](../01-analisis/casos-uso/README.md)
- [Conversation log](../../conversation-log.md)
