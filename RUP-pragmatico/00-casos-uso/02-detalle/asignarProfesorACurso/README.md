# asignarProfesorACurso - RUP Pragmático

## Información básica

- **Actor**: Administrador
- **Precondición**: Sistema en estado PROFESOR_ABIERTO
- **Postcondición**: Asignaciones de cursos del profesor actualizadas

## Descripción

El administrador gestiona las asignaciones de cursos específicos a un profesor determinado. El sistema presenta listas separadas de cursos disponibles y ya asignados, permitiendo asignar y desasignar cursos según necesidades académicas.

## Flujo principal

1. Administrador solicita gestionar asignaciones del profesor
2. Sistema presenta cursos disponibles y ya asignados al profesor
3. Administrador asigna o desasigna cursos específicos
4. Sistema guarda cambios en asignaciones
5. Sistema regresa a edición del profesor

## Reglas de negocio

- Un profesor no puede estar asignado dos veces al mismo curso
- Solo cursos activos pueden ser asignados
- Las asignaciones son necesarias para la generación de horarios
- Los cambios en asignaciones pueden requerir regeneración de horarios

## Navegación

- **Entrada**: desde editarProfesor() en estado PROFESOR_ABIERTO
- **Salida**: regresa a editarProfesor() del mismo profesor