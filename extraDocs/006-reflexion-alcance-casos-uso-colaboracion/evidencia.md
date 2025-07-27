# Evidencia del descubrimiento: Evolución del diagrama de colaboración mostrarMenu()

<div align=right>

|||||
|-|-|-|-|
|[🏠️](../README.md)|[Artículo](README.md)|[Contexto](contexto.md) | **Evidencia**

</div>

## Artefactos de evidencia

### Versión original del diagrama

**Commit:** [b499616](https://github.com/usuario/pySigHor/blob/b499616/RUP/01-analisis/casos-uso/mostrarMenu/colaboracion.puml)  
**Fecha:** Durante corrección integral de nomenclatura y análisis  
**Estado:** Problemático - conexiones directas excesivamente "contractuales"

```plantuml
MenuView --> AbrirProgramas
note on link
    abrirProgramas()
end note

MenuView --> AbrirCursos  
note on link
    abrirCursos()
end note

MenuView --> AbrirProfesores
note on link
    abrirProfesores()
end note
```

**Problemas identificados:**
- Conexiones sólidas sugieren ejecución automática
- Responsabilidad excesiva del caso de uso
- Semántica incorrecta del flujo de control

### Versión refinada del diagrama

**Commit:** [b8f36ca](https://github.com/usuario/pySigHor/blob/b8f36ca/RUP/01-analisis/casos-uso/mostrarMenu/colaboracion.puml)  
**Fecha:** Refactor del diagrama de colaboración  
**Estado:** Refinado - representación conceptualmente correcta

```plantuml
MenuView ..> AbrirProgramas
note on link
    abrirProgramas()
end note

MenuView ..> AbrirCursos
note on link
    abrirCursos()
end note

MenuView ..> AbrirProfesores
note on link
    abrirProfesores()
end note
```

**Mejoras implementadas:**
- Líneas punteadas indican disponibilidad, no ejecución
- Delimitación clara de responsabilidades
- Semántica correcta de colaboraciones externas

## Documentación del proceso

### Comentarios en el código fuente

**Evidencia de evolución del pensamiento:**

```plantuml
'Administrador --> MenuView : abrirProgramas()
MenuView ..> AbrirProgramas
```

Los comentarios muestran la consideración inicial de conectar directamente el actor, opción que fue descartada por generar duplicación conceptual.

### Documentación conceptual agregada

**Comentario explicativo en el diagrama refinado:**

> Colaboraciones externas activables a partir de este caso de uso (no parte del caso de uso mostrarMenu()):
> 
> El caso de uso mostrarMenu() tiene como propósito principal presentar al usuario las opciones disponibles en función de sus permisos. Una vez mostrado el menú, el usuario puede seleccionar cualquiera de estas opciones, las cuales activan otros casos de uso del sistema.

## Comparación técnica detallada

### Análisis de conectores UML

| Aspecto | Versión Original | Versión Refinada | Mejora |
|---------|------------------|------------------|---------|
| **Tipo de línea** | Sólida (`-->`) | Punteada (`..>`) | ✅ Semántica correcta |
| **Implicación** | Ejecución automática | Disponibilidad | ✅ Alcance delimitado |
| **Responsabilidad** | Excesiva | Específica | ✅ Coherencia conceptual |
| **Flujo de control** | Ambiguo | Claro | ✅ Trazabilidad mejorada |

### Impacto en el modelo conceptual

**Antes (problemático):**
- `mostrarMenu()` parecía ejecutar automáticamente todas las navegaciones
- Responsabilidad confusa entre presentación y procesamiento
- Acoplamiento innecesario entre casos de uso

**Después (refinado):**
- `mostrarMenu()` se limita a presentar opciones
- Separación clara entre capacidades y ejecuciones
- Independencia conceptual preservada

## Evidencia de la calidad del refinamiento

### Coherencia con principios RUP

**Responsabilidad única:**
```plantuml
// El flujo interno se mantiene enfocado
Administrador -r-> MenuView : disponibilizarSistema()
MenuView -d-> MostrarMenuController : habilitarOpciones(administrador)
MostrarMenuController --> PermisosRepository : obtenerOpciones(usuario)
```

**Delimitación clara:**
```plantuml
// Las colaboraciones externas se marcan como disponibles, no ejecutadas
MenuView ..> AbrirProgramas : abrirProgramas()
MenuView ..> GenerarHorario : generarHorario()
MenuView ..> CerrarSesion : cerrarSesion()
```

### Trazabilidad con otros artefactos

**Consistencia con especificación detallada:**
- El alcance del diagrama coincide con los escenarios descritos
- Las precondiciones y postcondiciones se mantienen coherentes
- Los flujos alternativos no incluyen navegaciones externas

**Alineación con prototipos:**
- La interfaz muestra opciones sin ejecutarlas automáticamente
- El comportamiento del sistema refleja decisión del usuario
- La representación visual coincide con el modelo conceptual

## Métricas de calidad

### Reducción de ambigüedades

**Antes:**
- 10 conexiones directas ambiguas
- Responsabilidad del caso de uso poco clara
- Flujo de control confuso

**Después:**
- 10 conexiones de disponibilidad bien definidas
- Responsabilidad específica y delimitada
- Flujo de control claramente representado

### Mejora en la comunicación

**Stakeholder comprension:**
- ✅ Desarrolladores entienden el alcance real
- ✅ Analistas pueden trazar responsabilidades
- ✅ Arquitectos tienen separación clara de concerns

## Evidencia de aplicabilidad

### Precedente para otros casos de uso

**Casos candidatos para aplicar el mismo principio:**
- `iniciarSesion()` - revisar flujos posteriores al login
- `abrirProgramas()` - delimitar entre navegación y CRUD
- `consultarHorario()` - separar consulta de acciones posteriores

### Patrones identificados

**Criterios para casos de navegación:**
1. ¿El caso de uso presenta opciones o las ejecuta?
2. ¿Quién toma la decisión: sistema o usuario?
3. ¿Las acciones posteriores son automáticas o interactivas?
4. ¿La responsabilidad es única o múltiple?

## Documentación de lecciones aprendidas

### Principios metodológicos extraídos

**Para análisis futuros:**
- Cuestionar siempre las conexiones automáticas
- Distinguir entre capacidades y ejecuciones
- Preservar la autonomía conceptual de cada caso de uso
- Representar honestamente el flujo de control real

### Herramientas de verificación

**Lista de verificación para diagramas de colaboración:**
- [ ] ¿Cada conexión representa correctamente quién toma la decisión?
- [ ] ¿El alcance del caso de uso está claramente delimitado?
- [ ] ¿Las colaboraciones externas mantienen su independencia?
- [ ] ¿La semántica UML refleja el comportamiento real del sistema?

## Impacto en la calidad del proyecto

### Mejoras cuantificables

**Antes del refinamiento:**
- Ambigüedad en 10 puntos de colaboración
- Responsabilidades mezcladas en 1 caso de uso
- Potencial acoplamiento innecesario entre módulos

**Después del refinamiento:**
- 0 ambigüedades en colaboraciones externas
- Responsabilidad única claramente definida
- Independencia conceptual preservada en todos los casos de uso

### Preparación para fases posteriores

**Facilita el diseño:**
- Separación clara de responsabilidades para asignación a componentes
- Interfaces bien definidas entre módulos
- Flujos de control explícitos para implementación

**Mejora la implementación:**
- Cada caso de uso tiene alcance implementable
- Las colaboraciones pueden desarrollarse independientemente
- La arquitectura refleja la delimitación conceptual

Esta evidencia demuestra que el refinamiento metodológico no solo mejora la calidad técnica de los artefactos, sino que también facilita significativamente las fases posteriores del desarrollo RUP.