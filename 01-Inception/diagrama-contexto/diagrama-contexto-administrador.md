# SigHor - Diagrama de contexto del Administrador de Horarios

## Información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Fase RUP**: Inception (Inicio)
- **Versión**: 2.0
- **Fecha**: 2025-01-05
- **Autor**: Equipo de desarrollo

## Introducción

Este documento presenta el diagrama de contexto para el actor "Administrador de Horarios", mostrando su perspectiva completa del sistema como una máquina de estados. El diagrama especifica la secuencialidad de navegación y hace explícitas las precondiciones que de otro modo requerirían especificación textual.

## Propósito

- Mostrar la perspectiva completa del sistema desde el punto de vista del Administrador de Horarios
- Especificar la secuencialidad de navegación mediante estados y transiciones
- Hacer explícitas las precondiciones de navegación de forma visual
- Validar que todos los casos de uso del administrador tienen lugar en el flujo del sistema
- Identificar posibles casos de uso omitidos o innecesarios para este actor
- Aplicar patrón granular optimizado para flujos naturales de interacción

## Diagrama

<div align=center>

|![Diagrama de Contexto - Administrador de Horarios](/images/01-Inception/diagrama-contexto/diagrama-contexto-administrador.svg)
|-
|Código fuente: [diagrama-contexto-administrador.puml](diagrama-contexto-administrador.puml)

</div>

## Estados del sistema

|Estado|Descripción|Función principal|
|-|-|-|
|**NO_AUTENTICADO**|Estado inicial del sistema|Punto de entrada, requiere autenticación|
|**MENU_PRINCIPAL**|Hub central de navegación|Punto de acceso a todas las funcionalidades|
|**LISTANDO_PROGRAMAS**|Lista de programas académicos|Visualización y selección de programas|
|**EDITANDO_PROGRAMA**|Edición de programa|Modificación de datos de programa (crear/editar)|
|**LISTANDO_CURSOS**|Lista de cursos|Visualización y selección de cursos|
|**EDITANDO_CURSO**|Edición de curso|Modificación de datos de curso (crear/editar)|
|**LISTANDO_PROFESORES**|Lista de profesores|Visualización y selección de profesores|
|**EDITANDO_PROFESOR**|Edición de profesor|Modificación de datos de profesor y preferencias|
|**LISTANDO_EDIFICIOS**|Lista de edificios|Visualización y selección de edificios|
|**EDITANDO_EDIFICIO**|Edición de edificio|Modificación de datos de edificio|
|**LISTANDO_AULAS**|Lista de aulas|Visualización y selección de aulas|
|**EDITANDO_AULA**|Edición de aula|Modificación de datos de aula|
|**LISTANDO_RECURSOS**|Lista de recursos|Visualización y selección de recursos|
|**EDITANDO_RECURSO**|Edición de recurso|Modificación de datos de recurso|
|**CONFIGURANDO_ASIGNACIONES**|Configuración de asignaciones|Asignación de profesores a cursos|
|**GENERANDO_HORARIO**|Proceso de generación|Ejecución del algoritmo de optimización|
|**CONSULTANDO_HORARIOS**|Consulta de resultados|Visualización de horarios generados|

## Transiciones principales

### Autenticación
- `iniciarSesion()`: NO_AUTENTICADO → MENU_PRINCIPAL
- `cerrarSesion()`: MENU_PRINCIPAL → NO_AUTENTICADO

### Navegación a estados de listado
- `listarProgramas()`: MENU_PRINCIPAL → LISTANDO_PROGRAMAS
- `listarCursos()`: MENU_PRINCIPAL → LISTANDO_CURSOS
- `listarProfesores()`: MENU_PRINCIPAL → LISTANDO_PROFESORES
- `listarEdificios()`: MENU_PRINCIPAL → LISTANDO_EDIFICIOS
- `listarAulas()`: MENU_PRINCIPAL → LISTANDO_AULAS
- `listarRecursos()`: MENU_PRINCIPAL → LISTANDO_RECURSOS
- `asignarProfesorACurso()`: MENU_PRINCIPAL → CONFIGURANDO_ASIGNACIONES
- `generarHorario()`: MENU_PRINCIPAL → GENERANDO_HORARIO
- `consultarHorario()`: MENU_PRINCIPAL → CONSULTANDO_HORARIOS

### Patrón granular optimizado
- **Desde estados LISTANDO**: `crearX()` y `editarX()` → EDITANDO_X
- **Eliminación**: `eliminarX()` permanece en LISTANDO_X
- **Estados EDITANDO**: Autorreflexivos con `editarX()` para continuar editando
- **Retorno**: `listarX()` desde EDITANDO_X → LISTANDO_X

### Flujo natural crear-editar
- **Crear**: Datos mínimos → redirige inmediatamente a edición
- **Editar**: Estado común para modificación (crear/editar usan mismo estado)
- **Continuidad**: Usuario puede seguir editando sin cambiar contexto

## Precondiciones visuales

### Autenticación requerida
El diagrama hace explícito que para acceder a cualquier funcionalidad del sistema, el administrador debe:
1. Estar autenticado (pasar por iniciarSesion())
2. Estar en el MENU_PRINCIPAL

### Navegación centralizada desde menú
El acceso a estados de listado requiere pasar por MENU_PRINCIPAL.

### Navegación granular entre estados CRUD
Los estados LISTANDO y EDITANDO tienen navegación directa entre sí, optimizando el flujo de trabajo.

### Secuencialidad obligatoria
Para realizar cualquier operación CRUD:
`NO_AUTENTICADO` → `iniciarSesion()` → `MENU_PRINCIPAL` → `listarX()` → `LISTANDO_X` → `crearX()/editarX()` → `EDITANDO_X`

## Validación de casos de uso

### Casos de uso incluidos
Todos los casos de uso identificados para el Administrador de Horarios aparecen en el diagrama:
- **24 casos de uso CRUD**: Distribuidos entre transiciones LISTANDO → EDITANDO y autorreflexivas
- **4 casos de uso especiales**: configurarPreferenciasProfesor(), asignarProfesorACurso(), generarHorario(), consultarHorario()
- **12 casos de uso de listado**: listarX() para navegación a estados de listado
- **2 casos de uso de autenticación**: iniciarSesion(), cerrarSesion()

### Casos de uso de navegación granular
El patrón granular revela casos de uso adicionales necesarios:
- **Estados LISTANDO**: Casos de uso listarX() desde MENU_PRINCIPAL y desde EDITANDO_X
- **Retorno al menú**: volverAlMenu() desde estados LISTANDO
- **Finalización de procesos**: finalizarAsignacion(), finalizarGeneracion()

### Optimización del flujo
- **Eliminación in situ**: eliminarX() permanece en LISTANDO_X (sin cambio de estado)
- **Edición continua**: editarX() autorreflexivo en EDITANDO_X
- **Configuración integrada**: configurarPreferenciasProfesor() dentro de EDITANDO_PROFESOR

## Características del diseño

### Patrón hub central
El MENU_PRINCIPAL actúa como punto central de navegación para acceso inicial a funcionalidades.

### Granularidad optimizada
Estados separados para LISTANDO y EDITANDO proporcionan flujos naturales de trabajo.

### Estados autorreflexivos
Los estados EDITANDO permiten edición continua sin cambios de contexto.

### Separación de responsabilidades
- **Estados LISTANDO**: Visualización y selección
- **Estados EDITANDO**: Modificación de datos (crear/editar)
- **Estados especiales**: Procesos únicos (generación, asignaciones, consulta)

### Extensibilidad
El diseño permite agregar nuevas entidades siguiendo el patrón LISTANDO/EDITANDO establecido.

## Consideraciones de análisis

### Nivel conceptual
- **Enfoque**: Conceptos de negocio y casos de uso únicamente
- **Independencia tecnológica**: Sin asumir interfaz específica
- **Abstracción apropiada**: Nivel RUP Inception

### Validación de flujos
- **Completitud**: Todos los casos de uso tienen lugar en el diagrama
- **Coherencia**: Transiciones reflejan interacciones naturales
- **Optimización**: Flujos minimizan cambios de contexto innecesarios

### Patrón granular aplicado
- **Crear mínimo → editar**: Flujo natural de creación
- **Edición continua**: Optimización de experiencia de trabajo
- **Eliminación in situ**: Operación sin cambio de contexto

## Referencias

- [Modelo del dominio](../modelo-dominio/modelo-dominio.md) - Entidades del sistema
- [Actores y casos de uso](../actores-casos-uso/actores-casos-uso.md) - Casos de uso del administrador
- Sistema SigHor Original (1998) - Flujo de navegación del sistema legacy
- [conversation-log.md](../../conversation-log.md) - Proceso de diseño del diagrama de contexto