# configurarPreferenciasProfesor - Análisis MVC

## Clases identificadas

### Vista (Boundary)
- **ConfigurarPreferenciasProfesorView**: Presenta lista de recursos ordenable, captura modificaciones de prioridad

### Control
- **PreferenciasProfesorController**: Coordina carga de datos, validación de orden y guardado de configuración

### Entidad (Entity)
- **ProfesorRepository**: Gestiona datos del profesor y sus preferencias
- **RecursoRepository**: Gestiona datos de recursos disponibles
- **Profesor**: Entidad profesor con relación a preferencias
- **PreferenciasRecurso**: Relación profesor-recurso con orden de prioridad
- **Recurso**: Entidad recurso configurable

## Colaboraciones principales

1. **Vista** solicita datos al **Controlador**
2. **Controlador** obtiene profesor y recursos de **Repositorios**
3. **Vista** presenta configuración y captura cambios
4. **Controlador** valida nuevo orden y actualiza **ProfesorRepository**
5. **Vista** navega de regreso a edición del profesor

## Responsabilidades clave

- **Validación de orden**: Secuencia completa y sin duplicados
- **Configuración continua**: Múltiples modificaciones en sesión activa
- **Navegación específica**: Regreso al contexto de edición del profesor