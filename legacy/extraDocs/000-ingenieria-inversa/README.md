# Ingeniería inversa del sistema SigHor (1998)

## Propósito

Esta carpeta contiene todo el material de análisis del sistema legacy SigHor desarrollado en Visual Basic 3.0 en 1998. La ingeniería inversa fue el punto de partida del proyecto pySigHor, proporcionando la comprensión necesaria del sistema original antes de proceder con su modernización mediante RUP.

## Contenido del análisis

### Documentación técnica principal

|Archivo|Descripción|Contenido|
|---------|-------------|-----------|
|[reverseEngineering.md](reverseEngineering.md)|Documentación técnica completa del sistema|Estructura de datos, algoritmo de horarios, sistema de optimización|
|[reflexiones.md](reflexiones.md)|Análisis de resultados del algoritmo y factores humanos|Evaluación crítica del comportamiento del sistema|
|[reflexionesAlgoritmo.md](reflexionesAlgoritmo.md)|Análisis detallado del algoritmo y lecciones aprendidas|Técnicas de optimización y limitaciones identificadas|
|[horario.md](horario.md)|Análisis específico del módulo de horarios|Lógica de generación y restricciones|

### Modelos UML del sistema legacy

|Archivo|Descripción|Nivel|
|---------|-------------|-------|
|[modelosUML/MDD.puml](modelosUML/MDD.puml)|Modelo de dominio del sistema legacy|Técnico/implementación|
|[modelosUML/DER.puml](modelosUML/DER.puml)|Diagrama entidad-relación de la base de datos|Físico/base de datos|

## Relación con el proyecto de modernización

### Diferencias con el modelo RUP

**⚠️ Importante**: Los modelos en esta carpeta son diferentes del modelo del dominio conceptual ubicado en `/RUP/00-casos-uso/00-modelo-del-dominio/`:

- **Modelos aquí (legacy)**: Representan el sistema técnico original de 1998
- **Modelo RUP**: Diseño conceptual para la modernización

### Valor para la modernización

**Base de comprensión**:
- Entendimiento completo del algoritmo original
- Identificación de lógica de negocio esencial
- Reconocimiento de limitaciones y oportunidades de mejora

**Referencia durante desarrollo**:
- Validación de fidelidad en la fase de réplica
- Comprensión de decisiones de diseño originales
- Base para mejoras en la fase de reingeniería

## Metodología de ingeniería inversa aplicada

### Enfoque sistemático

1. **Análisis de código fuente**: Revisión completa del Visual Basic 3.0 original
2. **Reconstrucción de modelo de datos**: Ingeniería inversa de la base de datos Access
3. **Documentación de algoritmos**: Comprensión de la lógica de optimización
4. **Evaluación crítica**: Identificación de fortalezas y limitaciones

### Herramientas utilizadas

- **Análisis manual**: Revisión directa del código VB3.0
- **PlantUML**: Reconstrucción de diagramas UML
- **Markdown**: Documentación estructurada de hallazgos

## Valor didáctico

### Para comprensión histórica

**Contexto tecnológico de 1998**:
- Limitaciones y capacidades de Visual Basic 3.0
- Soluciones innovadoras dentro de restricciones de la época
- Aplicación avanzada de investigación de operaciones

### Para ingeniería de software

**Casos de estudio reales**:
- Técnicas de ingeniería inversa aplicadas
- Análisis de sistemas legacy complejos
- Preparación para proyectos de modernización

### Para investigación de operaciones

**Algoritmos de optimización**:
- Técnicas de satisfacción de restricciones
- Optimización multiobjetivo en dominio real
- Limitaciones de optimización matemática vs factores humanos

## Estructura evolutiva del proyecto

```
000-ingenieria-inversa/    ← Punto de partida (comprensión del legacy)
    ↓
/RUP/                     ← Modernización sistemática
    ↓  
001-saltarse-pasos/       ← Lecciones metodológicas durante desarrollo
002-coherencia-estructural/ ← Lecciones de organización
```

Esta secuencia representa la evolución natural: **comprensión → modernización → aprendizaje**.

---

*Este material de ingeniería inversa constituye la base de conocimiento que hizo posible el proyecto de modernización pySigHor mediante metodología RUP.*