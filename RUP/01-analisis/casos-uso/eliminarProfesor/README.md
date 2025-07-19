<div align=right>
 
|[![](https://img.shields.io/badge/-Inicio-FFF?style=flat&logo=Emlakjet&logoColor=black)](../../../../README.md) [![](https://img.shields.io/badge/-RUP-FFF?style=flat&logo=Elsevier&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Modelo_del_dominio-FFF?style=flat&logo=freedesktop.org&logoColor=black)](../../../00-casos-uso/00-modelo-del-dominio/modelo-dominio.md) [![](https://img.shields.io/badge/-Actores_&_Casos_de_Uso-FFF?style=flat&logo=crewunited&logoColor=black)](../../../00-casos-uso/01-actores-casos-uso/actores-casos-uso.md) [![](https://img.shields.io/badge/-Diagrama_de_contexto-FFF?style=flat&logo=diagramsdotnet&logoColor=black)](../../../00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.md) [![](https://img.shields.io/badge/-Detalle_&_Prototipo-FFF?style=flat&logo=typeorm&logoColor=black)](../../../00-casos-uso/02-detalle/README.md) [![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](../README.md)
|-:
|[![](https://img.shields.io/badge/-Estado-FFF?style=flat&logo=greensock&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Propuesta_de_dashboard-FFF?style=flat&logo=composer&logoColor=black)](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg) [![](https://img.shields.io/badge/-Reflexiones-FFF?style=flat&logo=hootsuite&logoColor=black)](../../../../extraDocs/README.md) [![](https://img.shields.io/badge/-Log_de_conversación-FFF?style=flat&logo=gnometerminal&logoColor=black)](../../../../conversation-log.md)

</div>

# pySigHor > eliminarProfesor > Análisis

## Información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Caso de uso**: eliminarProfesor
- **Actor**: Administrador de Horarios  
- **Fase RUP**: Elaboration
- **Disciplina**: Análisis y Diseño
- **Versión**: 1.0
- **Fecha**: 2025-07-19
- **Autor**: Equipo de desarrollo

## Propósito

Analizar la interacción entre los objetos del sistema durante la ejecución del caso de uso eliminarProfesor(), identificando responsabilidades y colaboraciones siguiendo el patrón arquitectónico MVC con eliminación segura.

## Diagrama de colaboración

<div align=center>

|![Colaboración eliminarProfesor](/images/RUP/01-analisis/casos-uso/eliminarProfesor/colaboracion.svg)
|:-:
|Código fuente: [colaboracion.puml](./colaboracion.puml)

</div>

## Diagrama de secuencia

<div align=center>

|![Secuencia eliminarProfesor](/images/RUP/01-analisis/casos-uso/eliminarProfesor/secuencia.svg)
|:-:
|Código fuente: [secuencia.puml](./secuencia.puml)

</div>

## Análisis de responsabilidades

### Patrón MVC aplicado

#### **View (Vista)**
- **ProfesorListaView**: Interfaz para selección y eliminación
  - Presenta lista de profesores con opciones de eliminación
  - Captura solicitud de eliminación del Actor
  - Presenta confirmación de eliminación con advertencias
  - Muestra resultados de verificación de dependencias
  - Comunica decisiones de confirmación al controlador

#### **Controller (Controlador)**
- **ProfesorController**: Coordina el flujo de eliminación segura
  - Procesa solicitud de eliminación desde la vista
  - Coordina verificación de dependencias
  - Gestiona confirmación de eliminación
  - Coordina eliminación transaccional
  - Maneja errores y excepciones durante eliminación
  - Actualiza vista después de eliminación exitosa

#### **Model (Modelo)**
- **Profesor**: Entidad de dominio principal
  - Encapsula datos del profesor a eliminar
  - Proporciona identificación para verificaciones
- **ProfesorRepository**: Persistencia y verificación
  - Verifica existencia del profesor
  - Identifica dependencias relacionadas
  - Ejecuta eliminación transaccional
  - Actualiza referencias y dependencias
- **DependencyVerifier**: Servicio de verificación
  - Identifica cursos asignados al profesor
  - Verifica horarios generados que incluyen al profesor
  - Identifica preferencias configuradas
  - Evalua impacto de eliminación

### Flujo de colaboración

1. **Solicitud**: Actor solicita eliminar profesor desde lista
2. **Verificación**: ProfesorController coordina verificación de dependencias
3. **Evaluación**: DependencyVerifier identifica impacto de eliminación
4. **Confirmación**: ProfesorListaView presenta confirmación con advertencias
5. **Decisión**: Actor confirma o cancela eliminación
6. **Eliminación**: ProfesorRepository ejecuta eliminación transaccional
7. **Actualización**: Sistema actualiza lista y mantiene estado

### Responsabilidades detalladas

#### ProfesorListaView
- Presentar lista de profesores con opciones de acción
- Capturar solicitudes de eliminación del usuario
- Mostrar confirmación con información de dependencias
- Presentar advertencias sobre consecuencias
- Comunicar decisiones de confirmación al controlador
- Actualizar lista después de eliminación exitosa
- Mostrar mensajes de error y confirmación

#### ProfesorController
- Coordinar flujo completo de eliminación segura
- Procesar solicitudes de eliminación
- Coordinar verificación de dependencias
- Gestionar proceso de confirmación
- Coordinar eliminación transaccional
- Manejar errores durante el proceso
- Actualizar estado del sistema después de eliminación

#### Profesor (Entidad)
- Encapsular datos del profesor
- Proporcionar identificación única
- Mantener integridad de datos durante consultas

#### ProfesorRepository
- Verificar existencia del profesor antes de eliminar
- Ejecutar eliminación transaccional segura
- Eliminar dependencias relacionadas
- Actualizar referencias en otras entidades
- Manejar excepciones de persistencia
- Mantener consistencia de base de datos

#### DependencyVerifier
- Identificar cursos asignados al profesor
- Verificar horarios generados que incluyen al profesor
- Identificar preferencias configuradas del profesor
- Evaluar impacto crítico de la eliminación
- Proporcionar información detallada de dependencias

## Consideraciones de diseño

### Separación de responsabilidades
- **Vista**: Presentación y confirmación de eliminación
- **Controlador**: Lógica de coordinación y flujo seguro
- **Modelo**: Lógica de negocio y persistencia transaccional
- **Servicio**: Verificación especializada de dependencias

### Eliminación segura
- Verificación exhaustiva de dependencias antes de proceder
- Confirmación explícita con información completa
- Eliminación transaccional para garantizar consistencia
- Manejo robusto de errores durante el proceso

### Manejo de dependencias
- Identificación completa de entidades relacionadas
- Eliminación en cascada controlada
- Actualización de referencias para mantener integridad
- Preservación de datos históricos cuando sea necesario

### Manejo de errores
- Validaciones en múltiples capas
- Propagación controlada de excepciones
- Rollback automático en caso de fallo
- Mensajes de error específicos para el usuario

### Extensibilidad
- Patrón MVC facilita modificaciones futuras
- Servicio de verificación reutilizable
- Separación clara permite testing independiente
- Estructura replicable para otras entidades

## Patrones aplicados

### Repository Pattern
- ProfesorRepository encapsula lógica de persistencia
- Abstrae detalles de eliminación transaccional
- Facilita testing con implementaciones mock

### MVC Pattern
- Separación clara de responsabilidades
- Vista independiente de lógica de negocio
- Controlador como coordinador central

### Service Pattern
- DependencyVerifier como servicio especializado
- Encapsula lógica compleja de verificación
- Reutilizable across diferentes entidades

### Transaction Pattern
- Eliminación transaccional garantiza consistencia
- Rollback automático en caso de error
- Operaciones atómicas para integridad de datos

## Trazabilidad

### Relación con especificación
- Implementa flujo principal definido en especificación
- Maneja flujos alternativos de error y cancelación
- Cumple precondiciones y postcondiciones
- Implementa eliminación segura especificada

### Relación con casos de uso
- **crearProfesor()**: Comparte modelo Profesor
- **editarProfesor()**: Comparte modelo Profesor
- **configurarPreferenciasProfesor()**: Dependencia eliminada
- **asignarProfesorACurso()**: Asignaciones afectadas
- **generarHorario()**: Horarios pueden invalidarse

### Relación con arquitectura
- Implementa patrón arquitectónico MVC establecido
- Reutiliza componentes para consistencia across entidades
- Establece patrón de eliminación segura replicable

## Referencias

- [Especificación detallada](../../../00-casos-uso/02-detalle/eliminarProfesor/README.md) - Comportamiento requerido
- [Modelo del dominio](../../../00-casos-uso/00-modelo-del-dominio/modelo-dominio.md) - Definición de entidad Profesor
- [crearProfesor - Análisis](../crearProfesor/README.md) - Caso de uso relacionado
- [editarProfesor - Análisis](../editarProfesor/README.md) - Caso de uso relacionado
