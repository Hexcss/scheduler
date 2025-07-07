# SigHor - Diagrama de contexto del Administrador de Horarios

## Información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Fase RUP**: Inception (Inicio)
- **Versión**: 5.0
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

|![Diagrama de Contexto - Administrador de Horarios](/images/RUP/00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.svg)
|-
|Código fuente: [diagrama-contexto-administrador.puml](diagrama-contexto-administrador.puml)

</div>

## Estados del sistema

|Estado|Descripción|Función principal|
|-|-|-|
|**NO_AUTENTICADO**|Estado inicial del sistema|Punto de entrada, requiere autenticación|
|**AUTENTICANDO**|Estado de procesamiento|Validación de credenciales y autenticación|
|**MENU_PRINCIPAL**|Hub central de navegación|Punto de acceso a todas las funcionalidades|
|**LISTANDO_PROGRAMAS**|Lista de programas académicos|Visualización y selección de programas|
|**EDITANDO_PROGRAMA**|Edición de programa|Modificación de datos de programa (crear/editar)|
|**LISTANDO_CURSOS**|Lista de cursos|Visualización y selección de cursos|
|**EDITANDO_CURSO**|Edición de curso|Modificación de datos de curso (crear/editar)|
|**LISTANDO_PROFESORES**|Lista de profesores|Visualización y selección de profesores|
|**EDITANDO_PROFESOR**|Edición de profesor|Modificación de datos de profesor|
|**EDITANDO_PROFESOR_PREFERENCIAS**|Configuración de preferencias|Configuración específica de preferencias del profesor|
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

### Autenticación y navegación al menú
- `iniciarSesion()`: NO_AUTENTICADO → AUTENTICANDO (proceso de autenticación)
- `iniciarSesion(error)`: AUTENTICANDO → NO_AUTENTICADO (credenciales inválidas)
- `mostrarMenu()`: AUTENTICANDO → MENU_PRINCIPAL (tras autenticación exitosa)
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

### Patrón granular optimizado con transiciones separadas

**Para entidades estándar (Programas, Cursos, Edificios, Aulas, Recursos)**:
- **LISTANDO_X → crearX() → EDITANDO_X** (transición separada)
- **LISTANDO_X → editarX() → EDITANDO_X** (transición separada)
- **LISTANDO_X → eliminarX() → LISTANDO_X** (operación in situ)
- **EDITANDO_X → editarX() → EDITANDO_X** (edición continua)
- **EDITANDO_X → listarX() → LISTANDO_X** (retorno a lista)

**Para entidad Profesores (patrón extendido)**:
- **LISTANDO_PROFESORES → crearProfesor() → EDITANDO_PROFESOR** (transición separada)
- **LISTANDO_PROFESORES → editarProfesor() → EDITANDO_PROFESOR** (transición separada)
- **LISTANDO_PROFESORES → eliminarProfesor() → LISTANDO_PROFESORES** (operación in situ)
- **EDITANDO_PROFESOR → editarProfesor() → EDITANDO_PROFESOR** (edición continua)
- **EDITANDO_PROFESOR → configurarPreferenciasProfesor() → EDITANDO_PROFESOR_PREFERENCIAS** (funcionalidad específica)
- **EDITANDO_PROFESOR_PREFERENCIAS → editarProfesor() → EDITANDO_PROFESOR** (retorno a edición general)
- **EDITANDO_PROFESOR → listarProfesores() → LISTANDO_PROFESORES** (retorno a lista)

### Flujo natural crear-editar
- **Crear**: Datos mínimos → redirige inmediatamente a edición
- **Editar**: Estado común para modificación (crear/editar usan mismo estado)
- **Continuidad**: Usuario puede seguir editando sin cambiar contexto

## Precondiciones visuales

### Autenticación requerida
El diagrama hace explícito que para acceder a cualquier funcionalidad del sistema, el administrador debe:
1. Pasar por proceso de autenticación (NO_AUTENTICADO → AUTENTICANDO)
2. Completar autenticación exitosa (AUTENTICANDO → MENU_PRINCIPAL)
3. Manejo de errores: credenciales inválidas regresan a NO_AUTENTICADO

### Navegación centralizada desde menú
El acceso a estados de listado requiere pasar por MENU_PRINCIPAL.

### Navegación granular entre estados CRUD
Los estados LISTANDO y EDITANDO tienen navegación directa entre sí, optimizando el flujo de trabajo.

### Secuencialidad obligatoria
Para realizar cualquier operación CRUD:
`NO_AUTENTICADO` → `iniciarSesion()` → `AUTENTICANDO` → `mostrarMenu()` → `MENU_PRINCIPAL` → `listarX()` → `LISTANDO_X` → `crearX()` o `editarX()` → `EDITANDO_X`

## Validación de casos de uso

### Casos de uso incluidos
Todos los casos de uso identificados para el Administrador de Horarios aparecen en el diagrama:
- **32 casos de uso CRUD estándar**: 5 entidades × (crear + editar + eliminar + listar + editar continua + retorno) = 30 transiciones
- **8 casos de uso CRUD profesores**: Patrón extendido con estado adicional para preferencias
- **3 casos de uso especiales**: asignarProfesorACurso(), generarHorario(), consultarHorario()
- **6 casos de uso de navegación inicial**: listarX() desde MENU_PRINCIPAL  
- **4 casos de uso de autenticación/navegación**: iniciarSesion(), iniciarSesion(error), mostrarMenu(), cerrarSesion()
- **9 casos de uso de retorno al menú**: mostrarMenu() desde estados LISTANDO y especiales

### Casos de uso de navegación granular
El patrón granular y la optimización aplicada revelan:
- **Estados LISTANDO**: Casos de uso listarX() desde MENU_PRINCIPAL y desde EDITANDO_X
- **Navegación unificada**: mostrarMenu() como caso de uso único para retorno al menú
- **Separación de responsabilidades**: iniciarSesion() solo autentica, mostrarMenu() solo navega

### Optimización del flujo
- **Eliminación in situ**: eliminarX() permanece en LISTANDO_X (sin cambio de estado)
- **Edición continua**: editarX() autorreflexivo en EDITANDO_X
- **Estado especializado**: EDITANDO_PROFESOR_PREFERENCIAS para configuración específica
- **Navegación bidireccional**: Entre EDITANDO_PROFESOR y EDITANDO_PROFESOR_PREFERENCIAS
- **Caso de uso unificado**: mostrarMenu() reemplaza volverAlMenu() y complementa iniciarSesion()

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
- **Estado EDITANDO_PROFESOR_PREFERENCIAS**: Configuración específica de preferencias
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
- **Navegación unificada**: mostrarMenu() como punto único de acceso al menú principal

### Separación de responsabilidades optimizada
- **iniciarSesion()**: Solo proceso de autenticación
- **iniciarSesion(error)**: Manejo de credenciales inválidas
- **mostrarMenu()**: Solo navegación al menú principal
- **Estado intermedio**: AUTENTICANDO separa validación de navegación
- **Reutilización**: mostrarMenu() desde múltiples contextos

### Rigor metodológico aplicado
- **Transiciones separadas**: crear/editar como decisiones independientes del usuario (aplicado a todas las 6 entidades)
- **Sin ambigüedad semántica**: Cada transición representa una acción específica
- **UML estándar**: No implica secuencialidad entre casos de uso alternativos
- **Manejo de errores**: Flujos explícitos para casos de fallo en autenticación
- **Estados especializados**: EDITANDO_PROFESOR_PREFERENCIAS para funcionalidad específica
- **Consistencia base**: Patrón uniforme aplicado a 5 entidades estándar
- **Extensión controlada**: Profesores con patrón extendido para preferencias

## Referencias

- [Modelo del dominio](../modelo-dominio/modelo-dominio.md) - Entidades del sistema
- [Actores y casos de uso](../actores-casos-uso/actores-casos-uso.md) - Casos de uso del administrador
- Sistema SigHor Original (1998) - Flujo de navegación del sistema legacy
- [conversation-log.md](../../conversation-log.md) - Proceso de diseño del diagrama de contexto