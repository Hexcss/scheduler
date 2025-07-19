<div align=right>
 
|[![](https://img.shields.io/badge/-Inicio-FFF?style=flat&logo=Emlakjet&logoColor=black)](../../../../README.md) [![](https://img.shields.io/badge/-RUP-FFF?style=flat&logo=Elsevier&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Modelo_del_dominio-FFF?style=flat&logo=freedesktop.org&logoColor=black)](../../00-modelo-del-dominio/modelo-dominio.md) [![](https://img.shields.io/badge/-Actores_&_Casos_de_Uso-FFF?style=flat&logo=crewunited&logoColor=black)](../../01-actores-casos-uso/actores-casos-uso.md) [![](https://img.shields.io/badge/-Diagrama_de_contexto-FFF?style=flat&logo=diagramsdotnet&logoColor=black)](../../01-actores-casos-uso/diagrama-contexto-administrador.md) [![](https://img.shields.io/badge/-Detalle_&_Prototipo-FFF?style=flat&logo=typeorm&logoColor=black)](../README.md) [![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](../../../01-analisis/casos-uso/README.md)
|-:
|[![](https://img.shields.io/badge/-Estado-FFF?style=flat&logo=greensock&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Propuesta_de_dashboard-FFF?style=flat&logo=composer&logoColor=black)](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg) [![](https://img.shields.io/badge/-Reflexiones-FFF?style=flat&logo=hootsuite&logoColor=black)](../../../../extraDocs/README.md) [![](https://img.shields.io/badge/-Log_de_conversación-FFF?style=flat&logo=gnometerminal&logoColor=black)](../../../../conversation-log.md)

</div>

# pySigHor > eliminarProfesor > Detalle

## Información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Caso de uso**: eliminarProfesor
- **Actor**: Administrador de Horarios  
- **Fase RUP**: Elaboration
- **Versión**: 1.0
- **Fecha**: 2025-07-19
- **Autor**: Equipo de desarrollo

## Propósito

Definir el comportamiento del sistema cuando el Administrador de Horarios solicita eliminar un profesor existente, implementando eliminación segura con confirmación y verificación de dependencias antes de proceder.

## Diagrama de especificación

<div align=center>

|![Especificación eliminarProfesor](/images/RUP/00-casos-uso/02-detalle/eliminarProfesor/especificacion.svg)
|:-:
|Código fuente: [especificacion.puml](./especificacion.puml)

</div>

## Wireframes

<div align=center>

|![Wireframes eliminarProfesor](/images/RUP/00-casos-uso/02-detalle/eliminarProfesor/wireframes.svg)
|:-:
|Código fuente: [wireframes.puml](./wireframes.puml)

</div>

## Especificación detallada

### Flujo principal

1. Actor solicita eliminar profesor desde lista
2. Sistema verifica dependencias del profesor:
   - Cursos asignados al profesor
   - Horarios generados que incluyen al profesor
   - Preferencias configuradas del profesor
3. Sistema presenta confirmación de eliminación:
   - Datos del profesor a eliminar
   - Advertencia sobre dependencias encontradas
   - Opciones de confirmación
4. Sistema permite solicitar:
   - Confirmar eliminación
   - Cancelar eliminación
5. Actor confirma eliminación
6. Sistema elimina dependencias relacionadas
7. Sistema elimina profesor de la base de datos
8. Sistema presenta confirmación de eliminación exitosa
9. Sistema actualiza lista de profesores
10. Sistema mantiene estado PROFESORES_ABIERTO

### Flujos alternativos

**FA1**: Actor cancela eliminación
- En paso 5, Actor puede solicitar cancelar
- Sistema descarta operación de eliminación
- Sistema mantiene estado PROFESORES_ABIERTO sin cambios
- Profesor permanece en el sistema

**FA2**: Profesor con dependencias críticas
- En paso 2, si profesor tiene cursos activos asignados:
- Sistema presenta advertencia de dependencias críticas
- Sistema explica consecuencias de la eliminación
- Sistema requiere confirmación explícita adicional
- Actor debe confirmar eliminación de dependencias

**FA3**: Error durante eliminación
- En pasos 6-7, si falla eliminación:
- Sistema presenta mensaje de error del sistema
- Sistema conserva profesor y dependencias intactas
- Actor puede reintentar o cancelar operación

**FA4**: Profesor no encontrado
- En paso 2, si profesor ya no existe:
- Sistema presenta mensaje de profesor no encontrado
- Sistema actualiza lista de profesores
- Sistema mantiene estado PROFESORES_ABIERTO

### Precondiciones

- Actor autenticado como Administrador de Horarios
- Sistema en estado PROFESORES_ABIERTO
- Profesor existe en el sistema
- Sistema de base de datos disponible

### Postcondiciones

**Éxito**:
- Profesor eliminado permanentemente del sistema
- Dependencias relacionadas eliminadas o actualizadas
- Lista de profesores actualizada
- Sistema mantiene estado PROFESORES_ABIERTO

**Cancelación**:
- Sin cambios en base de datos
- Profesor permanece en el sistema
- Sistema mantiene estado PROFESORES_ABIERTO

### Reglas de negocio

- **RN01**: No se puede eliminar un profesor sin confirmación explícita
- **RN02**: Eliminación de profesor implica eliminación de sus preferencias
- **RN03**: Cursos asignados al profesor quedan sin asignar tras eliminación
- **RN04**: Horarios generados que incluyen al profesor se invalidan
- **RN05**: La eliminación es irreversible una vez confirmada
- **RN06**: Sistema debe verificar dependencias antes de proceder

### Validaciones

- **VAL01**: Verificar existencia del profesor antes de eliminar
- **VAL02**: Identificar todos los cursos asignados al profesor
- **VAL03**: Identificar horarios generados que incluyen al profesor
- **VAL04**: Verificar integridad referencial antes de eliminación
- **VAL05**: Confirmar eliminación exitosa antes de actualizar interfaz

### Dependencias gestionadas

- **Preferencias del profesor**: Eliminadas automáticamente
- **Asignaciones profesor-curso**: Removidas, cursos quedan sin asignar
- **Horarios generados**: Marcados como inválidos si incluyen al profesor
- **Referencias en auditoría**: Conservadas para trazabilidad histórica

## Trazabilidad

### Relación con casos de uso

- **abrirProfesores()**: Caso de uso origen para acceder a lista
- **crearProfesor()**: Caso de uso complementario para gestión
- **editarProfesor()**: Caso de uso complementario para gestión
- **configurarPreferenciasProfesor()**: Dependencia eliminada
- **asignarProfesorACurso()**: Asignaciones afectadas por eliminación
- **generarHorario()**: Horarios existentes pueden invalidarse

### Relación con entidades del dominio

- **Profesor**: Entidad principal eliminada
- **Curso**: Cursos quedan sin profesor asignado
- **Recurso**: Preferencias de recursos eliminadas
- **Horario**: Horarios existentes se invalidan si incluyen al profesor

### Notas de implementación

- La eliminación debe ser transaccional para garantizar consistencia
- Las verificaciones de dependencias deben ser exhaustivas
- La confirmación debe ser clara sobre las consecuencias
- El sistema debe manejar referencias hústoricas apropiadamente

### Consideraciones de diseño

- **Eliminación segura**: Múltiples verificaciones antes de proceder
- **Feedback claro**: Información completa sobre dependencias
- **Operación atómica**: Garantiza consistencia de datos
- **Recuperación de errores**: Manejo robusto de fallos durante eliminación
- **Auditoría**: Preservación de trazabilidad histórica

## Referencias

- [Modelo del dominio](../../00-modelo-del-dominio/modelo-dominio.md) - Definición de entidad Profesor
- [Actores y casos de uso](../../01-actores-casos-uso/actores-casos-uso.md) - Contexto del actor
- [crearProfesor](../crearProfesor/README.md) - Caso de uso complementario
- [editarProfesor](../editarProfesor/README.md) - Caso de uso complementario
