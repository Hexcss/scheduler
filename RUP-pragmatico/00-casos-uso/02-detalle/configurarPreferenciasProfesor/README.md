# configurarPreferenciasProfesor - RUP Pragmático

## Información básica

- **Actor**: Administrador
- **Precondición**: Sistema en estado PROFESOR_ABIERTO
- **Postcondición**: Preferencias de recursos del profesor configuradas

## Descripción

El administrador configura el orden de prioridad de recursos para un profesor específico. El sistema presenta los recursos disponibles con la prioridad actual y permite modificar el orden según las preferencias del profesor.

## Flujo principal

1. Administrador solicita configurar preferencias del profesor
2. Sistema presenta lista de recursos con orden de prioridad actual
3. Administrador modifica orden de prioridad
4. Sistema guarda configuración
5. Sistema regresa a edición del profesor

## Reglas de negocio

- Todos los recursos disponibles deben tener una prioridad asignada
- No pueden existir prioridades duplicadas
- El orden debe ser secuencial (1, 2, 3, ..., N)
- Las preferencias son específicas por profesor

## Navegación

- **Entrada**: desde editarProfesor() en estado PROFESOR_ABIERTO
- **Salida**: regresa a editarProfesor() del mismo profesor