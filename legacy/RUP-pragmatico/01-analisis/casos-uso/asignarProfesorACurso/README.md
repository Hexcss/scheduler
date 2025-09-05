# asignarProfesorACurso - Análisis MVC

## Clases identificadas

### Vista (Boundary)
- **AsignarProfesorACursoView**: Presenta listas de cursos disponibles/asignados, captura asignaciones/desasignaciones

### Control
- **AsignacionProfesorCursoController**: Coordina carga de datos, validación de asignaciones y guardado de cambios

### Entidad (Entity)
- **ProfesorRepository**: Gestiona datos del profesor y sus asignaciones de cursos
- **CursoRepository**: Gestiona datos de cursos disponibles y asignados
- **Profesor**: Entidad profesor con relación a asignaciones
- **AsignacionProfesorCurso**: Relación profesor-curso con metadatos de asignación
- **Curso**: Entidad curso disponible para asignación

## Colaboraciones principales

1. **Vista** solicita datos al **Controlador**
2. **Controlador** obtiene profesor y cursos de **Repositorios**
3. **Vista** presenta listas separadas y captura cambios de asignación
4. **Controlador** valida asignaciones y actualiza **ProfesorRepository**
5. **Vista** navega de regreso a edición del profesor

## Responsabilidades clave

- **Validación de asignaciones**: Sin duplicados y cursos válidos
- **Gestión continua**: Múltiples asignaciones/desasignaciones en sesión activa
- **Navegación específica**: Regreso al contexto de edición del profesor