# Filosofía C→U: Integración de Creación y Edición en Casos de Uso CRUD

> **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios  
> **Fecha**: 2025-07-17  
> **Tipo**: Artículo metodológico  
> **Versión**: 1.0  

## Resumen Ejecutivo

Este artículo documenta la filosofía metodológica **C→U** (Create→Update) adoptada para el diseño de casos de uso CRUD en el proyecto pySigHor, donde la operación de **Creación (C)** actúa como un caso de uso "delgado" que transfiere inmediatamente el control a la operación de **Edición (U)** como "el gordo" del proceso.

## Problema Metodológico

### Enfoques Tradicionales de CRUD

En metodologías tradicionales de casos de uso, las operaciones CRUD se diseñan como casos de uso independientes y autónomos:

```
crearEntidad() : Crear → Validar → Guardar → Regresar a lista
editarEntidad() : Seleccionar → Cargar → Editar → Validar → Guardar → Regresar a lista
```

### Limitaciones Identificadas

1. **Duplicación de funcionalidad**: Validación y guardado replicados
2. **Experiencia de usuario fragmentada**: Crear y volver vs crear y continuar editando
3. **Complejidad innecesaria**: Dos flujos separados para operaciones relacionadas
4. **Inconsistencia con UX moderna**: No refleja patrones como Google Docs, Notion, etc.

## Filosofía C→U Propuesta

### Principio Fundamental

> **"La creación es solo el primer paso de la edición"**

La operación de creación se concibe como un caso de uso "delgado" cuyo único objetivo es:
1. Crear una entidad con características mínimas
2. Transferir inmediatamente el control al caso de uso de edición

### Metáfora Operativa

**Analogía Google Docs:**
- Al crear un nuevo documento, no regresas al dashboard
- Se abre inmediatamente un documento vacío en modo edición
- La "creación" fue solo el primer paso hacia la "edición"

### Implementación Metodológica

#### **Caso de Uso C (Creación) - "El Delgado"**

```
Objetivo: Crear entidad con datos mínimos y transferir a edición
Flujo:
1. Actor solicita crear nueva entidad
2. Sistema solicita datos mínimos obligatorios
3. Actor proporciona datos mínimos
4. Sistema crea entidad y transfiere a modo edición
Postcondición: Entidad creada, usuario en estado ENTIDAD_ABIERTA editando
```

#### **Caso de Uso U (Edición) - "El Gordo"**

```
Objetivo: Edición completa de entidad (nueva o existente)
Flujo:
1. Actor llega desde creación O desde selección de existente
2. Sistema presenta formulario completo de edición
3. Actor realiza modificaciones
4. Sistema valida y guarda cambios
5. Actor decide continuar editando o regresar a lista
Postcondición: Entidad actualizada, usuario decide próxima acción
```

## Aplicación al Diagrama de Contexto

### Estados del Sistema Involucrados

```plantuml
ENTIDADES_ABIERTO → crearEntidad() → ENTIDAD_ABIERTA
ENTIDADES_ABIERTO → editarEntidad() → ENTIDAD_ABIERTA
ENTIDAD_ABIERTA → completarGestion() → ENTIDADES_ABIERTO
```

### Características Clave

1. **Convergencia**: Ambos casos de uso (C y U) terminan en el mismo estado `ENTIDAD_ABIERTA`
2. **Divergencia**: Solo hay una salida desde `ENTIDAD_ABIERTA` hacia el listado
3. **Coherencia**: El diagrama de contexto se mantiene simple y claro

## Beneficios Metodológicos

### 1. Simplicidad Conceptual

- **crearEntidad()**: Caso de uso simple con objetivo específico
- **editarEntidad()**: Caso de uso completo que maneja toda la complejidad
- **Separación clara** entre responsabilidades

### 2. Experiencia de Usuario Coherente

- **Flujo natural**: Crear → inmediatamente editar
- **Sin interrupciones**: No hay retorno forzado al listado
- **Consistencia**: Mismo entorno de edición para nuevos y existentes

### 3. Reutilización de Funcionalidad

- **Un solo formulario**: editarEntidad() maneja tanto nuevos como existentes
- **Una sola validación**: lógica de validación centralizada
- **Un solo guardado**: mecanismo de persistencia unificado

### 4. Mantenibilidad

- **Menos duplicación**: Funcionalidad común centralizada en editarEntidad()
- **Evolución simplificada**: Cambios en validación/guardado en un solo lugar
- **Testing reducido**: Menos casos de prueba duplicados

## Implementación en Especificaciones RUP

### Estructura de crearEntidad()

```markdown
## información del caso de uso

|Atributo|Valor|
|-|-|
|**Postcondición exitosa**|Entidad creada con datos mínimos, usuario en modo edición|

## conversación detallada

|Actor|Acción|Sistema|Respuesta|
|-|-|-|-|
|**Administrador**|solicita crear nueva entidad||
||**Sistema**|solicita datos mínimos|• Campo1 (obligatorio)<br>• Campo2 (obligatorio)|
|**Administrador**|proporciona datos mínimos||
||**Sistema**|crea entidad y abre edición|• Entidad creada con ID<br>• Formulario completo disponible|
```

### Estructura de editarEntidad()

```markdown
## información del caso de uso

|Atributo|Valor|
|-|-|
|**Precondición**|Entidad seleccionada O entidad recién creada|
|**Postcondición exitosa**|Entidad modificada, usuario decide próxima acción|

## conversación detallada

|Actor|Acción|Sistema|Respuesta|
|-|-|-|-|
|**Administrador**|llega a edición (desde lista o creación)||
||**Sistema**|presenta formulario completo|• Todos los campos editables<br>• Datos actuales cargados|
|**Administrador**|modifica datos||
||**Sistema**|valida y guarda cambios|• Confirmación de guardado<br>• Permite continuar o salir|
```

## Consideraciones de Diseño

### Estados Internos Diferenciados

#### crearEntidad()
- `SolicitandoDatosMinimos`
- `ValidandoDatosMinimos` 
- `CreandoEntidad`
- `TransfiriendoAEdicion`

#### editarEntidad()
- `CargandoFormulario`
- `EditandoDatos`
- `ValidandoCambios`
- `GuardandoCambios`
- `EsperandoDecision`

### Wireframes Diferenciados

#### crearEntidad()
- **Diálogo simple**: Solo campos mínimos obligatorios
- **Botones**: [Crear] [Cancelar]
- **Enfoque**: Velocidad de creación

#### editarEntidad()
- **Formulario completo**: Todos los campos disponibles
- **Botones**: [Guardar] [Guardar y salir] [Cancelar]
- **Enfoque**: Edición completa

## Casos de Aplicación

### Aplicabilidad

Esta filosofía C→U es **recomendada** para:
- ✅ Entidades con formularios complejos (programas, cursos, profesores)
- ✅ Casos donde la creación es frecuentemente seguida de edición
- ✅ Sistemas con UX moderna y fluida

### No Aplicabilidad

Esta filosofía **NO es recomendada** para:
- ❌ Entidades de configuración simple (estados, tipos, categorías)
- ❌ Operaciones de creación en lote
- ❌ Casos donde la creación es terminal (no requiere edición posterior)

## Impacto en el Proyecto pySigHor

### Casos de Uso Afectados

**Aplicación directa:**
- crearPrograma() → editarPrograma()
- crearCurso() → editarCurso()
- crearProfesor() → editarProfesor()
- crearAula() → editarAula()

**Evaluación caso por caso:**
- crearEdificio() → editarEdificio() (posible)
- crearRecurso() → editarRecurso() (posible)

### Beneficios Esperados

1. **Coherencia metodológica**: Casos de uso más simples y enfocados
2. **Experiencia unificada**: Flujo natural de creación → edición
3. **Mantenibilidad**: Menos duplicación de lógica de validación y guardado
4. **Modernidad**: UX alineada con estándares contemporáneos

## Referencias

- [Conversation log](../../conversation-log.md) - Discusión original de la filosofía C→U
- [Casos de uso "abrir"](../007-diagramas-contexto-multiples-tecnologias/README.md) - Patrones metodológicos previos
- [Diagrama de contexto administrador](../../RUP/99-seguimiento/diagrama-contexto-administrador.puml) - Estados del sistema

## Conclusiones

La filosofía C→U representa una evolución natural en el diseño de casos de uso CRUD que:

1. **Simplifica** la especificación de casos de uso
2. **Mejora** la experiencia del usuario final
3. **Reduce** la duplicación de funcionalidad
4. **Moderniza** los patrones de interacción

Su implementación en pySigHor establecerá un precedente metodológico que puede aplicarse a proyectos similares de modernización de sistemas legacy.

---

> **Próximo paso**: Aplicar esta filosofía en la especificación detallada de crearPrograma() y editarPrograma()