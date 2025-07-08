# Contexto del proyecto - El problema de saltarse pasos

## Estado del proyecto en el momento del dilema

### Fase del proyecto: transición Requisitos → Análisis

**Metodología establecida**: RUP con terminología MVC pedagógica
**Progreso general**: Primera iteración de casos de uso críticos
**Momento específico**: Después de completar `iniciarSesion()` exitosamente

### Artefactos completados

#### Disciplina de Requisitos - estado consolidado

**Modelo del dominio (v2.0)**:
- Entidades conceptuales refinadas
- Correcciones semánticas aplicadas (agregación vs composición)
- Base sólida para casos de uso

**Actores y casos de uso**:
- 2 actores identificados (Administrador, Consultor)
- 24+ casos de uso CRUD organizados
- Herencia de actores correctamente modelada

**Diagrama de contexto del administrador (v5.0)**:
- Estados granulares optimizados (LISTANDO/EDITANDO)
- Patrón crear→editar establecido
- Correcciones metodológicas aplicadas (5 iteraciones)

**Especificación detallada completa**: `iniciarSesion()`
- Diagrama de estados UML con vocabulario purificado
- Wireframes SALT con filosofía "que te digan NO"
- Documentación exhaustiva siguiendo metodología establecida

#### Disciplina de análisis - estado inicial

**Análisis MVC completo**: `iniciarSesion()`
- Clases Model, View, Controller identificadas
- Diagrama de colaboración con codificación por colores
- Responsabilidades claramente definidas

### Reorganización estructural reciente

#### Cambio de estructura fases → disciplinas

**Antes**:
```
/01-Inception/
├── casos-uso/
├── casos-uso-detalle/
└── analisis/
```

**Después**:
```
/RUP/
├── 00-casos-uso/          # Disciplina de Requisitos
└── 01-analisis/           # Disciplina de Análisis
```

**Impacto**: Enlaces de imágenes corregidos, navegación mejorada, estructura alineada con RUP auténtico

### Metodología consolidada en el momento

#### Protocolo de trabajo establecido

1. **Debate antes de generar**: Discusión metodológica previa obligatoria
2. **Iteración controlada**: Correcciones documentadas en conversation-log
3. **Vocabulario purificado**: Actor/Sistema con términos específicos
4. **Trazabilidad completa**: Cada decisión registrada y justificada

#### Lecciones metodológicas aprendidas

**Correcciones aplicadas previamente**:
- ❌ Estados "GESTIONANDO_*" → ✅ Estados granulares LISTANDO/EDITANDO
- ❌ Vocabulario contaminado → ✅ Términos específicos Actor/Sistema
- ❌ Referencias UI prematuras → ✅ Nivel conceptual apropiado
- ❌ Casos de uso "gestionar" → ✅ Casos CRUD atómicos

#### Herramientas y formatos estándar

- **PlantUML**: Diagramas UML versionables
- **SALT**: Wireframes rápidos y efectivos
- **Markdown**: Documentación estructurada
- **Codificación por colores**: Model (naranja), View (azul), Controller (verde)

### Momento crítico: la tentación metodológica

#### Contexto de la decisión

**Situación favorable para el error**:
- Metodología MVC bien establecida y validada
- Éxito completo en caso anterior (`iniciarSesion()`)
- Patrón claro para análisis de casos de uso
- Confianza en el proceso metodológico

**Caso objetivo**: `crearPrograma()`
- Identificado en casos de uso generales
- Presente en diagrama de contexto
- Patrón crear→editar bien definido
- **Pero SIN especificación detallada ni prototipado**

#### La propuesta errónea

**Justificación aparentemente lógica**:
- "Metodología MVC consolidada"
- "Patrón establecido para casos CRUD"
- "Eficiencia aparente de aplicar conocimiento adquirido"

**Realidad oculta**:
- Falta claridad sobre flujo específico del caso
- Sin validación de interfaz de usuario
- Análisis basado en suposiciones, no en requisitos

### Factores que facilitaron la detección

#### Disciplina metodológica internalizada

**Protocolo de trabajo funcionando**:
- Debate obligatorio antes de generar artefactos
- Reflexión sistemática sobre metodología
- Registro exhaustivo de decisiones

**Experiencia acumulada**:
- Errores metodológicos previos documentados
- Valor comprobado de seguir secuencia RUP
- Conciencia sobre costos de saltarse pasos

#### Pregunta clave que detectó el error

> "Uhm... hemos realizado las actividades de requisitos de este caso de uso? (al menos detallar & prototipar)... Yo diría que no: confírmalo"

**Efectividad de la pregunta**:
- Directa y específica sobre completitud
- Fuerza verificación en repositorio
- No permite justificaciones vagas

### Consecuencias de la corrección

#### Inmediatas

**Prevención de retrabajo**:
- Análisis MVC habría estado basado en suposiciones
- Necesidad de rehacer trabajo cuando emergieran requisitos reales
- Pérdida de disciplina metodológica para casos futuros

#### Para el proyecto

**Calidad metodológica preservada**:
- Secuencia RUP mantenida íntegramente
- Precedente establecido para casos subsiguientes
- Disciplina del equipo reforzada

#### Para material didáctico

**Ejemplo auténtico de valor**:
- Situación real donde metodología previno problema
- Evidencia concreta de por qué RUP funciona
- Caso transferible a otros proyectos y equipos

### Próximos pasos definidos

#### Secuencia correcta establecida

**Para `crearPrograma()`**:
1. **Especificación detallada**: Diagrama de estados con vocabulario purificado
2. **Prototipado**: Wireframes SALT siguiendo filosofía "que te digan NO"
3. **Documentación**: README.md completo con metodología establecida
4. **Análisis**: Solo después de completar requisitos adecuadamente

#### Metodología fortalecida

**Lección integrada**:
- Vigilancia constante sobre tentaciones de eficiencia aparente
- Valor de completitud antes de avanzar
- Documentación de errores como herramienta educativa

---

*Este contexto permite entender exactamente las circunstancias que llevaron al dilema metodológico y cómo la disciplina RUP proporcionó las herramientas para detectarlo y corregirlo.*