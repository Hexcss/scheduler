<div align=right>
 
|[![](https://img.shields.io/badge/-Inicio-FFF?style=flat&logo=Emlakjet&logoColor=black)](../../../../README.md) [![](https://img.shields.io/badge/-RUP-FFF?style=flat&logo=Elsevier&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Modelo_del_dominio-FFF?style=flat&logo=freedesktop.org&logoColor=black)](../../../00-casos-uso/00-modelo-del-dominio/modelo-dominio.md) [![](https://img.shields.io/badge/-Actores_&_Casos_de_Uso-FFF?style=flat&logo=crewunited&logoColor=black)](../../../00-casos-uso/01-actores-casos-uso/actores-casos-uso.md) [![](https://img.shields.io/badge/-Diagrama_de_contexto-FFF?style=flat&logo=diagramsdotnet&logoColor=black)](../../../00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.md) [![](https://img.shields.io/badge/-Detalle_&_Prototipo-FFF?style=flat&logo=typeorm&logoColor=black)](../../../00-casos-uso/02-detalle/README.md) [![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](../README.md)
|-:
|[![](https://img.shields.io/badge/-Estado-FFF?style=flat&logo=greensock&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Propuesta_de_dashboard-FFF?style=flat&logo=composer&logoColor=black)](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg) [![](https://img.shields.io/badge/-Reflexiones-FFF?style=flat&logo=hootsuite&logoColor=black)](../../../../extraDocs/README.md) [![](https://img.shields.io/badge/-Log_de_conversación-FFF?style=flat&logo=gnometerminal&logoColor=black)](../../../../conversation-log.md)

</div>

# pySigHor > crearProfesor > Análisis

## Información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Caso de uso**: crearProfesor
- **Actor**: Administrador de Horarios  
- **Fase RUP**: Elaboration
- **Disciplina**: Análisis y Diseño
- **Versión**: 1.0
- **Fecha**: 2025-07-19
- **Autor**: Equipo de desarrollo

## Propósito

Analizar la interacción entre los objetos del sistema durante la ejecución del caso de uso crearProfesor(), identificando responsabilidades y colaboraciones siguiendo el patrón arquitectónico MVC.

## Diagrama de colaboración

<div align=center>

|![Colaboración crearProfesor](/images/RUP/01-analisis/casos-uso/crearProfesor/colaboracion.svg)
|:-:
|Código fuente: [colaboracion.puml](./colaboracion.puml)

</div>

## Diagrama de secuencia

<div align=center>

|![Secuencia crearProfesor](/images/RUP/01-analisis/casos-uso/crearProfesor/secuencia.svg)
|:-:
|Código fuente: [secuencia.puml](./secuencia.puml)

</div>

## Análisis de responsabilidades

### Patrón MVC aplicado

#### **View (Vista)**
- **ProfesorCreacionView**: Interfaz para captura de datos mínimos del profesor
  - Presenta campos de nombres y apellidos
  - Captura datos introducidos por el Actor
  - Comunica eventos de acción al controlador
  - Presenta mensajes de validación y errores

#### **Controller (Controlador)**
- **ProfesorController**: Coordina el flujo de creación de profesor
  - Procesa solicitud de creación desde la vista
  - Valida datos mínimos introducidos
  - Coordina almacenamiento a través del modelo
  - Maneja errores y excepciones
  - Redirige a editarProfesor() tras éxito

#### **Model (Modelo)**
- **Profesor**: Entidad de dominio principal
  - Encapsula datos del profesor
  - Aplica reglas de negocio de validación
  - Genera identificador único
- **ProfesorRepository**: Persistencia de datos
  - Almacena profesor en base de datos
  - Verifica unicidad de nombres+apellidos
  - Maneja errores de almacenamiento

### Flujo de colaboración

1. **Iniciación**: Actor solicita crear profesor
2. **Presentación**: ProfesorCreacionView presenta solicitud de datos mínimos
3. **Captura**: ProfesorCreacionView captura nombres y apellidos
4. **Coordinación**: ProfesorController procesa datos introducidos
5. **Validación**: ProfesorController valida con entidad Profesor
6. **Persistencia**: ProfesorRepository almacena profesor
7. **Redirección**: ProfesorController redirige a editarProfesor()

### Responsabilidades detalladas

#### ProfesorCreacionView
- Presentar interfaz mínima para creación
- Capturar nombres y apellidos del profesor
- Validar formato básico de campos
- Comunicar acciones del usuario al controlador
- Mostrar mensajes de error de validación

#### ProfesorController
- Coordinar flujo completo de creación
- Aplicar validaciones de negocio
- Manejar errores durante el proceso
- Coordinar redirección a edición
- Mantener estado de la operación

#### Profesor (Entidad)
- Encapsular datos del profesor
- Aplicar reglas de formato y validación
- Generar identificador único
- Mantener integridad de datos

#### ProfesorRepository
- Persistir profesor en base de datos
- Verificar restricciones de unicidad
- Manejar excepciones de persistencia
- Generar códigos únicos si requerido

## Consideraciones de diseño

### Separación de responsabilidades
- **Vista**: Solo presentación e interacción
- **Controlador**: Lógica de coordinación y flujo
- **Modelo**: Lógica de negocio y persistencia

### Manejo de errores
- Validaciones en múltiples capas
- Propagación controlada de excepciones
- Mensajes de error específicos para el usuario

### Flujo de redirección
- Creación exitosa redirige automáticamente
- Implementa filosofía "El delgado" (Creation→Update)
- Mantiene contexto para edición inmediata

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

## Trazabilidad

### Relación con especificación
- Implementa flujo principal definido en especificación
- Maneja flujos alternativos de error y cancelación
- Cumple precondiciones y postcondiciones

### Relación con casos de uso
- **editarProfesor()**: Destino de redirección automática
- **abrirProfesores()**: Origen del flujo de creación
- **eliminarProfesor()**: Comparte modelo Profesor

### Relación con arquitectura
- Implementa patrón arquitectónico MVC establecido
- Reutiliza componentes para consistency across entidades
- Establece estructura para replicación a otras entidades

## Referencias

- [Especificación detallada](../../../00-casos-uso/02-detalle/crearProfesor/README.md) - Comportamiento requerido
- [Modelo del dominio](../../../00-casos-uso/00-modelo-del-dominio/modelo-dominio.md) - Definición de entidad Profesor
- [editarProfesor - Análisis](../editarProfesor/README.md) - Caso de uso destino
- [eliminarProfesor - Análisis](../eliminarProfesor/README.md) - Caso de uso relacionado
