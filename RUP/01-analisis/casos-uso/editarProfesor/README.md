<div align=right>
 
|[![](https://img.shields.io/badge/-Inicio-FFF?style=flat&logo=Emlakjet&logoColor=black)](../../../../README.md) [![](https://img.shields.io/badge/-RUP-FFF?style=flat&logo=Elsevier&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Modelo_del_dominio-FFF?style=flat&logo=freedesktop.org&logoColor=black)](../../../00-casos-uso/00-modelo-del-dominio/modelo-dominio.md) [![](https://img.shields.io/badge/-Actores_&_Casos_de_Uso-FFF?style=flat&logo=crewunited&logoColor=black)](../../../00-casos-uso/01-actores-casos-uso/actores-casos-uso.md) [![](https://img.shields.io/badge/-Diagrama_de_contexto-FFF?style=flat&logo=diagramsdotnet&logoColor=black)](../../../00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.md) [![](https://img.shields.io/badge/-Detalle_&_Prototipo-FFF?style=flat&logo=typeorm&logoColor=black)](../../../00-casos-uso/02-detalle/README.md) [![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](../README.md)
|-:
|[![](https://img.shields.io/badge/-Estado-FFF?style=flat&logo=greensock&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Propuesta_de_dashboard-FFF?style=flat&logo=composer&logoColor=black)](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg) [![](https://img.shields.io/badge/-Reflexiones-FFF?style=flat&logo=hootsuite&logoColor=black)](../../../../extraDocs/README.md) [![](https://img.shields.io/badge/-Log_de_conversación-FFF?style=flat&logo=gnometerminal&logoColor=black)](../../../../conversation-log.md)

</div>

# pySigHor > editarProfesor > Análisis

## Información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Caso de uso**: editarProfesor
- **Actor**: Administrador de Horarios  
- **Fase RUP**: Elaboration
- **Disciplina**: Análisis y Diseño
- **Versión**: 1.0
- **Fecha**: 2025-07-19
- **Autor**: Equipo de desarrollo

## Propósito

Analizar la interacción entre los objetos del sistema durante la ejecución del caso de uso editarProfesor(), identificando responsabilidades y colaboraciones siguiendo el patrón arquitectónico MVC con edición continua.

## Diagrama de colaboración

<div align=center>

|![Colaboración editarProfesor](/images/RUP/01-analisis/casos-uso/editarProfesor/editarProfesor-analisis.svg)
|:-:
|Código fuente: [colaboracion.puml](./colaboracion.puml)

</div>

## Diagrama de secuencia

<div align=center>

|![Secuencia editarProfesor](/images/RUP/01-analisis/casos-uso/editarProfesor/editarProfesor-analisis-secuencia.svg)
|:-:
|Código fuente: [secuencia.puml](./secuencia.puml)

</div>

## Análisis de responsabilidades

### Patrón MVC aplicado

#### **View (Vista)**
- **ProfesorEdicionView**: Interfaz para edición completa del profesor
  - Presenta todos los campos del profesor para edición
  - Captura modificaciones introducidas por el Actor
  - Comunica eventos de acción al controlador
  - Presenta mensajes de validación y confirmación
  - Permite navegación a configuración de preferencias

#### **Controller (Controlador)**
- **ProfesorController**: Coordina el flujo de edición de profesor
  - Carga datos existentes del profesor
  - Procesa modificaciones desde la vista
  - Valida cambios introducidos
  - Coordina actualización a través del modelo
  - Maneja errores y excepciones
  - Mantiene estado para edición continua
  - Coordina navegación a preferencias

#### **Model (Modelo)**
- **Profesor**: Entidad de dominio principal
  - Encapsula datos completos del profesor
  - Aplica reglas de negocio de validación
  - Mantiene integridad durante actualizaciones
- **ProfesorRepository**: Persistencia de datos
  - Carga profesor existente desde base de datos
  - Actualiza profesor con nuevos datos
  - Verifica unicidad de nombres+apellidos
  - Maneja errores de actualización

### Flujo de colaboración

1. **Carga**: ProfesorController carga datos existentes del profesor
2. **Presentación**: ProfesorEdicionView presenta datos completos para edición
3. **Modificación**: ProfesorEdicionView captura cambios del Actor
4. **Coordinación**: ProfesorController procesa modificaciones
5. **Validación**: ProfesorController valida con entidad Profesor
6. **Persistencia**: ProfesorRepository actualiza profesor
7. **Confirmación**: Sistema presenta confirmación y mantiene edición continua

### Responsabilidades detalladas

#### ProfesorEdicionView
- Presentar interfaz completa para edición
- Cargar y mostrar datos existentes del profesor
- Capturar todas las modificaciones del usuario
- Validar formato básico de campos
- Comunicar acciones del usuario al controlador
- Mostrar mensajes de error y confirmación
- Permitir navegación a configuración de preferencias

#### ProfesorController
- Coordinar carga inicial de datos del profesor
- Coordinar flujo completo de edición
- Aplicar validaciones de negocio
- Manejar errores durante el proceso
- Mantener estado para edición continua
- Coordinar navegación a casos de uso relacionados

#### Profesor (Entidad)
- Encapsular datos completos del profesor
- Aplicar reglas de formato y validación
- Mantener integridad de datos durante actualizaciones
- Proporcionar métodos de actualización controlada

#### ProfesorRepository
- Cargar profesor existente desde base de datos
- Actualizar profesor con nuevos datos
- Verificar restricciones de unicidad
- Manejar excepciones de persistencia
- Mantener consistencia transaccional

## Consideraciones de diseño

### Separación de responsabilidades
- **Vista**: Presentación e interacción completa
- **Controlador**: Lógica de coordinación y flujo
- **Modelo**: Lógica de negocio y persistencia

### Edición continua
- El sistema mantiene estado PROFESOR_ABIERTO después de guardar
- Permite múltiples ciclos de modificación sin cambio de contexto
- Optimiza la experiencia de trabajo del usuario

### Manejo de errores
- Validaciones en múltiples capas
- Propagación controlada de excepciones
- Mensajes de error específicos para el usuario
- Preservación de datos ante errores

### Navegación contextual
- Acceso directo a configuración de preferencias
- Preservación del contexto de edición
- Retorno controlado desde funcionalidades especializadas

### Extensibilidad
- Patrón MVC facilita modificaciones futuras
- Separación clara permite testing independiente
- Estructura reutilizable para otras entidades

## Patrones aplicados

### Repository Pattern
- ProfesorRepository encapsula lógica de persistencia
- Abstrae detalles de almacenamiento
- Facilita testing con implementaciones mock

### MVC Pattern
- Separación clara de responsabilidades
- Vista independiente de lógica de negocio
- Controlador como coordinador central

### Domain Model Pattern
- Entidad Profesor encapsula reglas de negocio
- Validaciones centralizadas en el modelo
- Comportamiento rico en entidades

### State Pattern (implícito)
- Edición continua mantiene estado consistente
- Transiciones controladas entre estados de edición

## Trazabilidad

### Relación con especificación
- Implementa flujo principal definido en especificación
- Maneja flujos alternativos de error y cancelación
- Cumple precondiciones y postcondiciones
- Implementa edición continua especificada

### Relación con casos de uso
- **crearProfesor()**: Origen de redirección automática
- **configurarPreferenciasProfesor()**: Navegación especializada
- **eliminarProfesor()**: Comparte modelo Profesor
- **abrirProfesores()**: Origen alternativo del flujo

### Relación con arquitectura
- Implementa patrón arquitectónico MVC establecido
- Reutiliza componentes para consistencia across entidades
- Establece estructura para replicación a otras entidades

## Referencias

- [Especificación detallada](../../../00-casos-uso/02-detalle/editarProfesor/README.md) - Comportamiento requerido
- [Modelo del dominio](../../../00-casos-uso/00-modelo-del-dominio/modelo-dominio.md) - Definición de entidad Profesor
- [crearProfesor - Análisis](../crearProfesor/README.md) - Caso de uso origen
- [eliminarProfesor - Análisis](../eliminarProfesor/README.md) - Caso de uso relacionado
