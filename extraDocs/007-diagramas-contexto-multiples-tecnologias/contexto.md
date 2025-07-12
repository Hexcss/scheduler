# Contexto: diagramas de contexto múltiples por tecnología

## Origen de la reflexión

### **Conversación disparadora**
Durante el análisis del caso de uso `mostrarMenu()` en el proyecto pySigHor-RUP, surgió una observación crítica sobre el acoplamiento tecnológico en la nomenclatura de casos de uso.

#### Observación inicial:
> "A ver... el nombre 'mostrarMenu' acopla a tecnología. Aunque sea lo que haga: por un lado, se vuelve acoplante."

### **Evolución del problema**
La discusión evolucionó desde un problema de nomenclatura hacia una reflexión más profunda sobre la tensión entre:
- **Pureza metodológica** en análisis RUP
- **Consideraciones prácticas** de implementación multiplataforma

### Enfoque de pureza metodológica
Se mencionó la posición del equipo de desarrollo sobre la necesidad de análisis "puro":
> "Se mencionaba que deberíamos analizar de un modo 'puro', porque el sistema luego puede implementarse para GUI, web, móvil y (sorpresa!) CLI..."

## Antecedentes del proyecto

### Estado del diagrama de contexto actual
El proyecto pySigHor-RUP cuenta actualmente con un diagrama de contexto del administrador que presenta estados como:
- `PROGRAMAS_ABIERTO`
- `CURSOS_ABIERTO`
- `PROFESORES_ABIERTO`

### Problemas identificados
1. **Sesgo tecnológico**: Estados implican paradigma de "ventanas abiertas" (GUI-centric)
2. **Condicionamiento del análisis**: El diagrama de contexto influencia las clases de análisis hacia patrones específicos
3. **Limitaciones multiplataforma**: Los estados actuales no se adaptan bien a web, CLI o móvil

## Stakeholders involucrados

### Equipo de desarrollo

- **Metodología**: Defensor de la pureza metodológica, análisis independiente de tecnología
- **Equipo técnico**: Necesidad de guías prácticas para implementación

### Requisitos del proyecto
- **Modernización**: Sistema legacy VB3.0 → tecnología moderna
- **Metodología**: Aplicación completa de RUP como herramienta didáctica
- **Multiplataforma**: Consideración de múltiples tecnologías objetivo

## Contexto metodológico

### Principios RUP relevantes
- **Architecture-centric**: La arquitectura debe dirigir las decisiones tecnológicas
- **Use-case driven**: Los casos de uso deben estar libres de consideraciones implementativas
- **Iterative and incremental**: Refinamiento progresivo desde análisis hacia implementación

### Tensión identificada
```
Análisis Puro (RUP) ←→ Implementación Práctica (Múltiples tecnologías)
     ↑                           ↑
Independiente de               Requiere consideraciones
tecnología                     tecnológicas específicas
```

## Disparador de la propuesta

### Pregunta clave
> "Así como hay un diagrama de contexto por actor... ¿Se podrían tener/plantear múltiples diagramas de contexto en función a la tecnología?"

### Insight central
La realización de que **múltiples diagramas de contexto** podrían resolver la tensión entre:
- **Análisis conceptual puro** (base para clases de análisis)
- **Consideraciones tecnológicas específicas** (guía para implementación)

## Alcance de la reflexión

### Tecnologías consideradas
1. **GUI/Desktop**: Ventanas múltiples, estados persistentes
2. **Web/SPA**: Navegación por páginas, estado único activo
3. **CLI**: Comandos secuenciales, sin persistencia visual
4. **Móvil**: Navegación por stack, gestos, limitaciones de pantalla

### Implicaciones arquitectónicas
- **Patrón de refinamiento**: Desde concepto puro hacia implementaciones específicas
- **Trazabilidad multiplataforma**: Cada tecnología debe cubrir los mismos casos de uso conceptuales
- **Validación cruzada**: Coherencia entre diagrama conceptual y implementaciones

## Contexto del artículo

### Objetivo
Proponer una metodología que reconcilie la pureza del análisis RUP con las necesidades prácticas de implementación multiplataforma.

### Audiencia
- **Arquitectos de software**: Responsables de decisiones tecnológicas
- **Analistas RUP**: Interesados en mantener pureza metodológica
- **Equipos de desarrollo**: Necesitan guías prácticas de implementación
- **Estudiantes de ingeniería de software**: Casos de estudio de aplicación de RUP

### Contribución
Una propuesta concreta de **arquitectura de diagramas múltiples** que preserve la integridad metodológica mientras facilita la implementación práctica en múltiples tecnologías.