<div align=right>
 
|[![](https://img.shields.io/badge/-Inicio-FFF?style=flat&logo=Emlakjet&logoColor=black)](../../../../README.md) [![](https://img.shields.io/badge/-RUP-FFF?style=flat&logo=Elsevier&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Modelo_del_dominio-FFF?style=flat&logo=freedesktop.org&logoColor=black)](../../00-modelo-del-dominio/modelo-dominio.md) [![](https://img.shields.io/badge/-Actores_&_Casos_de_Uso-FFF?style=flat&logo=crewunited&logoColor=black)](../../01-actores-casos-uso/actores-casos-uso.md) [![](https://img.shields.io/badge/-Diagrama_de_contexto-FFF?style=flat&logo=diagramsdotnet&logoColor=black)](../../01-actores-casos-uso/diagrama-contexto-administrador.md) [![](https://img.shields.io/badge/-Detalle_&_Prototipo-FFF?style=flat&logo=typeorm&logoColor=black)](../README.md) [![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](../../../01-analisis/casos-uso/README.md)
|-:
|[![](https://img.shields.io/badge/-Estado-FFF?style=flat&logo=greensock&logoColor=black)](../../../README.md) [![](https://img.shields.io/badge/-Propuesta_de_dashboard-FFF?style=flat&logo=composer&logoColor=black)](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg) [![](https://img.shields.io/badge/-Reflexiones-FFF?style=flat&logo=hootsuite&logoColor=black)](../../../../extraDocs/README.md) [![](https://img.shields.io/badge/-Log_de_conversación-FFF?style=flat&logo=gnometerminal&logoColor=black)](../../../../conversation-log.md)

</div>

# pySigHor > editarProfesor > Detalle

## Información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Caso de uso**: editarProfesor
- **Actor**: Administrador de Horarios  
- **Fase RUP**: Elaboration
- **Versión**: 1.0
- **Fecha**: 2025-07-19
- **Autor**: Equipo de desarrollo

## Propósito

Definir el comportamiento del sistema cuando el Administrador de Horarios solicita editar un profesor existente siguiendo la filosofía "El gordo" (edición completa) donde se permiten modificaciones de todos los campos del profesor con edición continua.

## Diagrama de especificación

<div align=center>

|![Especificación editarProfesor](/images/RUP/00-casos-uso/02-detalle/editarProfesor/especificacion.svg)
|:-:
|Código fuente: [especificacion.puml](./especificacion.puml)

</div>

## Wireframes

<div align=center>

|![Wireframes editarProfesor](/images/RUP/00-casos-uso/02-detalle/editarProfesor/wireframes.svg)
|:-:
|Código fuente: [wireframes.puml](./wireframes.puml)

</div>

## Especificación detallada

### Flujo principal

1. Actor solicita editar profesor (desde lista o redirigido desde crearProfesor)
2. Sistema presenta datos de edición del profesor:
   - Código del profesor (solo lectura)
   - Nombres del profesor
   - Apellidos del profesor
   - Correo electrónico
   - Teléfono
   - Observaciones
3. Sistema permite solicitar:
   - Modificar campos
   - Guardar profesor
   - Configurar preferencias
   - Cancelar edición
4. Actor modifica campos del profesor
5. Actor solicita guardar profesor
6. Sistema valida datos completos
7. Sistema actualiza profesor en base de datos
8. Sistema presenta confirmación de guardado
9. Sistema mantiene estado PROFESOR_ABIERTO para edición continua

### Flujos alternativos

**FA1**: Actor configura preferencias
- En cualquier momento después del paso 2, Actor puede solicitar configurar preferencias
- Sistema redirige a configurarPreferenciasProfesor()
- Al regresar, continúa en paso 2 con datos preservados

**FA2**: Actor cancela edición
- En cualquier momento antes del paso 5, Actor puede solicitar cancelar
- Sistema descarta cambios no guardados
- Sistema retorna a estado PROFESORES_ABIERTO

**FA3**: Datos de edición inválidos
- En paso 6, si datos no cumplen validaciones:
- Sistema presenta mensaje de error específico
- Sistema mantiene datos modificados
- Sistema permite corregir datos
- Continúa en paso 3

**FA4**: Error de actualización
- En paso 7, si falla actualización:
- Sistema presenta mensaje de error del sistema
- Sistema mantiene datos modificados
- Actor puede reintentar o cancelar

### Precondiciones

- Actor autenticado como Administrador de Horarios
- Profesor existe en el sistema
- Sistema en estado PROFESOR_ABIERTO o redirección desde crearProfesor
- Sistema de base de datos disponible

### Postcondiciones

**Éxito**:
- Profesor actualizado con nuevos datos
- Sistema mantiene estado PROFESOR_ABIERTO para edición continua
- Actor puede continuar editando o navegar a preferencias

**Cancelación**:
- Sin cambios en base de datos
- Sistema retorna a estado PROFESORES_ABIERTO

### Reglas de negocio

- **RN01**: Nombres son obligatorios y no pueden estar vacíos
- **RN02**: Apellidos son obligatorios y no pueden estar vacíos
- **RN03**: La combinación nombres+apellidos debe ser única en el sistema
- **RN04**: Correo electrónico debe ser válido si se proporciona
- **RN05**: Código del profesor es inmutable una vez asignado
- **RN06**: Teléfono debe cumplir formato válido si se proporciona

### Validaciones

- **VAL01**: Nombres contienen solo caracteres alfabéticos y espacios
- **VAL02**: Apellidos contienen solo caracteres alfabéticos y espacios
- **VAL03**: Correo electrónico sigue formato estándar (si proporcionado)
- **VAL04**: Teléfono contiene solo dígitos y caracteres permitidos (si proporcionado)
- **VAL05**: Longitud máxima de nombres: 50 caracteres
- **VAL06**: Longitud máxima de apellidos: 50 caracteres
- **VAL07**: Longitud máxima de correo: 100 caracteres
- **VAL08**: Longitud máxima de teléfono: 20 caracteres
- **VAL09**: Longitud máxima de observaciones: 500 caracteres

### Casos de uso incluidos

- **<<include>> configurarPreferenciasProfesor()**: Navegación a configuración especializada

## Trazabilidad

### Relación con casos de uso

- **crearProfesor()**: Caso de uso origen que redirige automáticamente
- **configurarPreferenciasProfesor()**: Caso de uso especializado accesible desde edición
- **eliminarProfesor()**: Caso de uso relacionado para gestión de profesores
- **abrirProfesores()**: Caso de uso origen alternativo desde lista

### Relación con entidades del dominio

- **Profesor**: Entidad principal editada
- **Recurso**: Relacionada a través de preferencias (accesible vía configurarPreferenciasProfesor)
- **Curso**: Relación de enseñanza (pueden existir cursos asignados)

### Notas de implementación

- La edición continua mantiene el estado PROFESOR_ABIERTO después de guardar
- Los campos opcionales pueden quedar vacíos sin afectar funcionalidad
- La navegación a preferencias preserva el contexto de edición
- El patrón "El gordo" permite edición completa y continua

### Consideraciones de diseño

- **Interfaz completa**: Todos los campos del profesor disponibles
- **Validación progresiva**: Feedback inmediato sobre errores
- **Edición continua**: Permite múltiples ciclos de modificación
- **Navegación contextual**: Acceso directo a preferencias sin perder estado
- **Recuperación de errores**: Mantiene datos del usuario ante fallos

## Referencias

- [Modelo del dominio](../../00-modelo-del-dominio/modelo-dominio.md) - Definición de entidad Profesor
- [Actores y casos de uso](../../01-actores-casos-uso/actores-casos-uso.md) - Contexto del actor
- [crearProfesor](../crearProfesor/README.md) - Caso de uso origen
- [eliminarProfesor](../eliminarProfesor/README.md) - Caso de uso relacionado
