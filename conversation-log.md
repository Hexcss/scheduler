
---

## Conversación 30: Creación y Refinamiento de Artefactos Pragmáticos
**Fecha**: 2025-07-26  
**Participantes**: Manuel (Usuario) + becario Gemini

### Contexto
Se ha solicitado la creación de una versión "pragmática" de los artefactos de especificación y análisis, con el objetivo de demostrar una aplicación no dogmática de RUP, más cercana a la realidad de un proyecto ágil.

### Desarrollo Principal

#### 1. **Creación de Artefactos Pragmáticos - Casos de Uso Detallados**
- **Objetivo**: Generar versiones simplificadas de los `README.md` para los casos de uso detallados (`RUP/00-casos-uso/02-detalle/`).
- **Implementación**:
    - Se creó la estructura de directorios `RUP-pragmatico/00-casos-uso/02-detalle/`.
    - Para cada caso de uso, se generó un `README.md` "lite" que incluye:
        - Título del caso de uso.
        - Tabla de navegación adaptada.
        - Imagen del diagrama de especificación (apuntando a la original).
        - Imagen(es) del prototipo de interfaz (apuntando a la original).
        - Referencias a la versión formal.
    - Se aseguró que las rutas de las imágenes fueran absolutas desde la raíz del proyecto.
    - Se centró visualmente cada imagen dentro de su `README.md`.

#### 2. **Creación de Artefactos Pragmáticos - Análisis de Casos de Uso**
- **Objetivo**: Generar versiones simplificadas de los `README.md` para los artefactos de análisis (`RUP/01-analisis/casos-uso/`).
- **Implementación**:
    - Se creó la estructura de directorios `RUP-pragmatico/01-analisis/casos-uso/`.
    - Para cada caso de uso, se generó un `README.md` "lite" que incluye:
        - Título del caso de uso.
        - Tabla de navegación adaptada.
        - Imagen del diagrama de colaboración (apuntando a la original).
        - Enlace al código fuente `.puml` original.
        - Referencias a la versión formal.
    - Se aseguró que las rutas de las imágenes fueran absolutas desde la raíz del proyecto.
    - Se centró visualmente cada imagen dentro de su `README.md`.

#### 3. **Creación de Índice General Pragmático**
- **Objetivo**: Proporcionar un punto de entrada único a toda la documentación pragmática.
- **Implementación**: Se creó el archivo `RUP-pragmatico/README.md` con enlaces a las secciones de casos de uso detallados y análisis pragmáticos.

### Correcciones y Refinamientos
- Se realizaron múltiples iteraciones para asegurar que las rutas relativas fueran correctas y que las imágenes estuvieran centradas en todos los `README.md` pragmáticos.
- Se corrigió la alineación de la tabla de navegación en todos los `README.md` pragmáticos.

### Lecciones Aprendidas (becario Gemini)
- La importancia de la precisión en las rutas relativas y absolutas en Markdown.
- La necesidad de una verificación exhaustiva de los cambios visuales.
- La flexibilidad de RUP para adaptarse a diferentes niveles de detalle y enfoques (formal vs. pragmático).

### Estado Final Alcanzado
- ✅ **Documentación pragmática creada**: Versiones simplificadas de los `README.md` de casos de uso detallados y análisis.
- ✅ **Coherencia y trazabilidad**: Los artefactos pragmáticos mantienen enlaces a sus contrapartes formales y al resto del proyecto.
- ✅ **Preparación para demostración didáctica**: El proyecto ahora cuenta con dos enfoques (formal y pragmático) para enseñar la adaptabilidad de RUP.

### Commit Final
`63d03bc` - fix(pragmatic): Centrar imágenes y corregir rutas en READMEs pragmáticos
`f1d6af9` - feat(pragmatic): Añadir README.md principal para la documentación pragmática

---
