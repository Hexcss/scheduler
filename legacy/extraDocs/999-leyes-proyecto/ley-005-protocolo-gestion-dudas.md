# LEY 005: Protocolo de Gestión de Dudas

## Contexto

**Fecha de creación**: 2025-07-25  
**Conversación de origen**: 40  
**Problema identificado**: Al abordar casos complejos como `generarHorario()` y `consultarHorario()`, surgen múltiples dudas que requieren clarificación antes de implementar, consumiendo contexto innecesariamente en discusiones extensas.

## Principio Fundamental

**Cuando surjan múltiples dudas complejas durante la planificación, crear un documento Q&A estructurado para optimizar el uso del contexto y evitar discusiones extensas durante la implementación.**

## Proceso Establecido

### 1. Identificación de Situación Q&A
**Claude identifica** cuando se presentan:
- 3 o más dudas diferentes sobre un mismo tema
- Dudas que requieren explicaciones detalladas
- Clarificaciones que afectan decisiones de diseño fundamentales
- Preguntas cuyas respuestas impactan múltiples aspectos de la implementación

### 2. Creación del Documento Q&A
**Formato obligatorio**:
- **Archivo**: `QyA.log` en raíz del proyecto
- **Estructura**: Secciones `## Título de la Duda` por tema
- **Contenido por sección**:
  - **Pregunta**: Clara y específica
  - **Contexto**: Información relevante para la decisión
  - **Respuesta**: `[Pendiente de respuesta]` inicialmente

### 3. Proceso de Respuesta
**Usuario completa**:
- Revisa cada sección del documento
- Proporciona respuestas específicas y actionables
- Indica cuando todas las respuestas están completadas

### 4. Implementación Optimizada
**Claude procede** con:
- Información específica y clara
- Sin necesidad de re-clarificaciones
- Implementación directa siguiendo las respuestas proporcionadas

## Beneficios del Protocolo

### Optimización de Contexto
- **Evita**: Discusiones extensas durante implementación
- **Concentra**: Todas las dudas en un documento estructurado
- **Preserva**: Contexto para trabajo de implementación efectivo

### Calidad de Decisiones
- **Claridad**: Preguntas específicas y bien contextualizadas
- **Completitud**: Todas las dudas identificadas antes de implementar
- **Trazabilidad**: Registro de decisiones para referencia futura

### Eficiencia del Proceso
- **Separación clara**: Clarificación vs. Implementación
- **Paralelo**: Usuario puede responder offline sin presión de contexto
- **Directo**: Implementación sin interrupciones para dudas

## Criterios de Aplicación

### ✅ Usar LEY 005 cuando:
- Casos de uso complejos con múltiples aspectos inciertos
- Decisiones de diseño que afectan varios componentes
- Clarificaciones sobre comportamiento específico del sistema legacy
- Definición de patrones nuevos no cubiertos por metodología existente

### ❌ No usar LEY 005 para:
- Dudas simples de 1-2 preguntas directas
- Clarificaciones menores durante implementación
- Aspectos ya cubiertos por metodología "como comer pipas"
- Dudas que pueden resolverse consultando casos similares existentes

## Referencia de Implementación

### Primera Aplicación
**Conversación 40**: Casos `generarHorario()` y `consultarHorario()`
- **12 dudas identificadas** sobre comportamiento, validaciones, UI, etc.
- **Documento creado**: `QyA.log` con estructura formal
- **Estado**: Usuario completando respuestas para implementación posterior

### Template de Sección Q&A
```markdown
## Título Descriptivo de la Duda

**Pregunta**: [Pregunta específica y clara]

**Contexto**: [Información relevante para tomar la decisión]

**Respuesta**:
[Pendiente de respuesta]
```

## Integración con Otras Leyes

### Relación con LEY 003 (Gestión de Contexto)
- **Complementa**: El protocolo de contexto con herramienta específica para dudas
- **Preserva**: Estado del proyecto mediante documentación estructurada
- **Mantiene**: Trazabilidad de decisiones en conversation-log.md

### Relación con LEY 004 (Protocolo de Revisión)
- **Precede**: Clarificación antes de implementación en rama xRevisar
- **Facilita**: Revisión más efectiva con decisiones ya clarificadas
- **Reduce**: Ciclos de feedback al tener especificaciones más claras

## Estado de la Ley

**Creada**: ✅ 2025-07-25  
**Primera aplicación**: 🔄 En progreso (QyA.log para casos finales)  
**Validación**: ⏳ Pendiente de completar primer ciclo completo

---

**Esta ley será validada y refinada tras completar el primer ciclo completo con los casos generarHorario() y consultarHorario().**