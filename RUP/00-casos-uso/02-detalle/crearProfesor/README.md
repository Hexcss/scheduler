<div align=right>
 
|[![](https://img.shields.io/badge/-Inicio-FFF?style=flat&logo=Emlakjet&logoColor=black)](../../../../README.md) [![](https://img.shields.io/badge/-RUP-FFF?style=flat&logo=Elsevier&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Modelo_del_dominio-FFF?style=flat&logo=freedesktop.org&logoColor=black)](../../00-modelo-del-dominio/modelo-dominio.md) [![](https://img.shields.io/badge/-Actores_&_Casos_de_Uso-FFF?style=flat&logo=crewunited&logoColor=black)](../../01-actores-casos-uso/actores-casos-uso.md) [![](https://img.shields.io/badge/-Diagrama_de_contexto-FFF?style=flat&logo=diagramsdotnet&logoColor=black)](../../01-actores-casos-uso/diagrama-contexto-administrador.md) [![](https://img.shields.io/badge/-Detalle_&_Prototipo-FFF?style=flat&logo=typeorm&logoColor=black)](../README.md) [![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](../../../01-analisis/casos-uso/README.md)
|-:
|[![](https://img.shields.io/badge/-Estado-FFF?style=flat&logo=greensock&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Propuesta_de_dashboard-FFF?style=flat&logo=composer&logoColor=black)](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg) [![](https://img.shields.io/badge/-Reflexiones-FFF?style=flat&logo=hootsuite&logoColor=black)](../../../../extraDocs/README.md) [![](https://img.shields.io/badge/-Log_de_conversación-FFF?style=flat&logo=gnometerminal&logoColor=black)](../../../../conversation-log.md)

</div>

# pySigHor > crearProfesor > Detalle

## Información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Caso de uso**: crearProfesor
- **Actor**: Administrador de Horarios  
- **Fase RUP**: Elaboration
- **Versión**: 1.0
- **Fecha**: 2025-07-19
- **Autor**: Equipo de desarrollo

## Propósito

Definir el comportamiento del sistema cuando el Administrador de Horarios solicita crear un nuevo profesor siguiendo la filosofía "El delgado" (Creation→Update) donde la creación requiere únicamente datos mínimos antes de redirigir a edición completa.

## Diagrama de especificación

<div align=center>

|![Especificación crearProfesor](/images/RUP/00-casos-uso/02-detalle/crearProfesor/especificacion.svg)
|:-:
|Código fuente: [especificacion.puml](./especificacion.puml)

</div>

## Wireframes

<div align=center>

|![Wireframes crearProfesor](/images/RUP/00-casos-uso/02-detalle/crearProfesor/wireframes.svg)
|:-:
|Código fuente: [wireframes.puml](./wireframes.puml)

</div>

## Especificación detallada

### Flujo principal

1. Actor solicita crear nuevo profesor
2. Sistema presenta solicitud de datos mínimos del profesor:
   - Nombres del profesor (obligatorio)
   - Apellidos del profesor (obligatorio)
3. Actor introduce datos mínimos del profesor
4. Sistema permite solicitar:
   - Guardar profesor
   - Cancelar creación
5. Actor solicita guardar profesor
6. Sistema valida datos mínimos
7. Sistema almacena profesor con datos mínimos
8. Sistema genera identificador único para el profesor
9. Sistema redirige automáticamente a editarProfesor() con el profesor recién creado

### Flujos alternativos

**FA1**: Actor cancela creación
- En cualquier momento antes del paso 5, Actor puede solicitar cancelar
- Sistema descarta datos introducidos
- Sistema retorna a estado PROFESORES_ABIERTO

**FA2**: Datos mínimos inválidos
- En paso 6, si datos no cumplen validaciones:
- Sistema presenta mensaje de error específico
- Sistema mantiene datos introducidos
- Sistema permite corregir datos
- Continúa en paso 3

**FA3**: Error de almacenamiento
- En paso 7, si falla almacenamiento:
- Sistema presenta mensaje de error del sistema
- Sistema mantiene datos introducidos
- Actor puede reintentar o cancelar

### Precondiciones

- Actor autenticado como Administrador de Horarios
- Sistema en estado PROFESORES_ABIERTO
- Sistema de base de datos disponible

### Postcondiciones

**Éxito**:
- Nuevo profesor almacenado con datos mínimos
- Sistema en estado PROFESOR_ABIERTO con profesor recién creado
- Actor puede continuar editando inmediatamente

**Cancelación**:
- Sin cambios en base de datos
- Sistema retorna a estado PROFESORES_ABIERTO

### Reglas de negocio

- **RN01**: Nombres son obligatorios y no pueden estar vacíos
- **RN02**: Apellidos son obligatorios y no pueden estar vacíos
- **RN03**: La combinación nombres+apellidos debe ser única en el sistema
- **RN04**: Nombres y apellidos deben tener al menos 2 caracteres
- **RN05**: Sistema genera automáticamente códigos únicos para profesores

### Validaciones

- **VAL01**: Nombres contienen solo caracteres alfabéticos y espacios
- **VAL02**: Apellidos contienen solo caracteres alfabéticos y espacios
- **VAL03**: No se permiten nombres o apellidos que contengan solo espacios
- **VAL04**: Longitud máxima de nombres: 50 caracteres
- **VAL05**: Longitud máxima de apellidos: 50 caracteres

### Casos de uso incluidos

- **<<include>> editarProfesor()**: Redirige automáticamente después de creación exitosa

## Trazabilidad

### Relación con casos de uso

- **editarProfesor()**: Caso de uso destino después de creación
- **abrirProfesores()**: Caso de uso origen para llegar a este punto
- **eliminarProfesor()**: Caso de uso relacionado para gestión de profesores

### Relación con entidades del dominio

- **Profesor**: Entidad principal creada
- **Sistema de autenticación**: Valida precondiciones de acceso

### Notas de implementación

- La redirección automática a editarProfesor() implementa la filosofía "El delgado"
- Los datos mínimos permiten crear rápidamente antes de especificar detalles
- El patrón Creation→Update optimiza la experiencia de usuario
- La validación de unicidad debe considerar profesores existentes

### Consideraciones de diseño

- **Interfaz mínima**: Solo campos esenciales para crear
- **Validación inmediata**: Feedback rápido sobre errores
- **Flujo continuo**: Transición natural a edición completa
- **Recuperación de errores**: Mantiene datos del usuario ante fallos

## Referencias

- [Modelo del dominio](../../00-modelo-del-dominio/modelo-dominio.md) - Definición de entidad Profesor
- [Actores y casos de uso](../../01-actores-casos-uso/actores-casos-uso.md) - Contexto del actor
- [editarProfesor](../editarProfesor/README.md) - Caso de uso destino
- [eliminarProfesor](../eliminarProfesor/README.md) - Caso de uso relacionado
