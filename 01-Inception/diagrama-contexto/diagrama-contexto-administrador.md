# SigHor - Diagrama de contexto del Administrador de Horarios

## Información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Fase RUP**: Inception (Inicio)
- **Versión**: 1.0
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
- Proporcionar base para el diseño de la interfaz de usuario

## Diagrama

<div align=center>

|![Diagrama de Contexto - Administrador de Horarios](/images/01-Inception/diagrama-contexto/diagrama-contexto-administrador.svg)
|-
|Código fuente: [diagrama-contexto-administrador.puml](diagrama-contexto-administrador.puml)

</div>

## Estados del sistema

<div align=center>

|Estado|Descripción|Función principal|
|-|-|-|
|**NO_AUTENTICADO**|Estado inicial del sistema|Punto de entrada, requiere autenticación|
|**MENU_PRINCIPAL**|Hub central de navegación|Punto de acceso a todas las funcionalidades|
|**GESTIONANDO_PROGRAMAS**|Gestión de programas académicos|Operaciones CRUD sobre programas|
|**GESTIONANDO_CURSOS**|Gestión de cursos|Operaciones CRUD sobre cursos|
|**GESTIONANDO_PROFESORES**|Gestión de profesores|Operaciones CRUD sobre profesores + configuración de preferencias|
|**GESTIONANDO_EDIFICIOS**|Gestión de edificios|Operaciones CRUD sobre edificios del campus|
|**GESTIONANDO_AULAS**|Gestión de aulas|Operaciones CRUD sobre aulas|
|**GESTIONANDO_RECURSOS**|Gestión de recursos|Operaciones CRUD sobre recursos de equipamiento|
|**CONFIGURANDO_ASIGNACIONES**|Configuración de asignaciones|Asignación de profesores a cursos|
|**GENERANDO_HORARIO**|Proceso de generación|Ejecución del algoritmo de optimización|
|**CONSULTANDO_HORARIOS**|Consulta de resultados|Visualización de horarios generados|

</div>

## Transiciones principales

### Autenticación
- `iniciarSesion()`: NO_AUTENTICADO → MENU_PRINCIPAL
- `cerrarSesion()`: MENU_PRINCIPAL → NO_AUTENTICADO

### Navegación a estados funcionales
- `listarProgramas()`: MENU_PRINCIPAL → GESTIONANDO_PROGRAMAS
- `listarCursos()`: MENU_PRINCIPAL → GESTIONANDO_CURSOS
- `listarProfesores()`: MENU_PRINCIPAL → GESTIONANDO_PROFESORES
- `listarEdificios()`: MENU_PRINCIPAL → GESTIONANDO_EDIFICIOS
- `listarAulas()`: MENU_PRINCIPAL → GESTIONANDO_AULAS
- `listarRecursos()`: MENU_PRINCIPAL → GESTIONANDO_RECURSOS
- `asignarProfesorACurso()`: MENU_PRINCIPAL → CONFIGURANDO_ASIGNACIONES
- `generarHorario()`: MENU_PRINCIPAL → GENERANDO_HORARIO
- `consultarHorario()`: MENU_PRINCIPAL → CONSULTANDO_HORARIOS

### Operaciones dentro de estados
- **Estados CRUD**: Operaciones crear, editar, eliminar dentro del mismo estado
- **Estado profesores**: Incluye configurarPreferenciasProfesor()
- **Retorno al menú**: Todos los estados regresan al MENU_PRINCIPAL

## Precondiciones visuales

### Autenticación requerida
El diagrama hace explícito que para acceder a cualquier funcionalidad del sistema, el administrador debe:
1. Estar autenticado (pasar por iniciarSesion())
2. Estar en el MENU_PRINCIPAL

### Navegación centralizada
No existen transiciones directas entre estados funcionales, toda navegación pasa por el hub central (MENU_PRINCIPAL).

### Secuencialidad obligatoria
Para realizar cualquier operación, la secuencia es:
`NO_AUTENTICADO` → `iniciarSesion()` → `MENU_PRINCIPAL` → `caso_de_uso_especifico()` → `ESTADO_FUNCIONAL`

## Validación de casos de uso

### Casos de uso incluidos
Todos los casos de uso identificados para el Administrador de Horarios aparecen en el diagrama:
- **24 casos de uso CRUD**: Presentes en las transiciones autorreflexivas de cada estado
- **4 casos de uso especiales**: configurarPreferenciasProfesor(), asignarProfesorACurso(), generarHorario(), consultarHorario()
- **2 casos de uso de navegación**: iniciarSesion(), cerrarSesion()

### Casos de uso de navegación
Se identifican casos de uso adicionales necesarios para la navegación:
- `volverAlMenu()`: Retorno desde estados funcionales
- `finalizarAsignacion()`: Finalización del proceso de asignaciones
- `finalizarGeneracion()`: Finalización del proceso de generación

## Características del diseño

### Patrón hub central
El MENU_PRINCIPAL actúa como punto central de navegación, simplificando el diseño de interfaz y la lógica de navegación.

### Estados autorreflexivos
Los estados CRUD permiten múltiples operaciones sin cambiar de estado, optimizando la experiencia del usuario.

### Separación de responsabilidades
Cada estado tiene una responsabilidad específica y bien definida.

### Extensibilidad
El diseño permite agregar nuevos estados y transiciones sin afectar los existentes.

## Consideraciones de implementación

### Interfaz de usuario
- **Menú principal**: Dashboard con acceso a todas las funcionalidades
- **Navegación**: Breadcrumbs y botones de retorno al menú
- **Estados persistentes**: Mantener contexto dentro de cada estado funcional

### Validación de precondiciones
- **Autenticación**: Middleware para validar sesión activa
- **Navegación**: Controles de acceso basados en estado actual
- **Transiciones**: Validación de transiciones permitidas

### Manejo de errores
- **Estados inválidos**: Redirección automática al estado válido más cercano
- **Sesiones expiradas**: Retorno automático a NO_AUTENTICADO
- **Operaciones fallidas**: Permanencia en estado actual con notificación

## Referencias

- [Modelo del dominio](../modelo-dominio/modelo-dominio.md) - Entidades del sistema
- [Actores y casos de uso](../actores-casos-uso/actores-casos-uso.md) - Casos de uso del administrador
- Sistema SigHor Original (1998) - Flujo de navegación del sistema legacy
- [conversation-log.md](../../conversation-log.md) - Proceso de diseño del diagrama de contexto