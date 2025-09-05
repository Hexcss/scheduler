# Evidencia y Referencias - Artículo 013

<div align=right>

|||||
|-|-|-|-|
|[🏠️](../README.md)|[Artículo](README.md)|[Contexto](contexto.md) | **Evidencia**

</div>

## Conversación Específica de la Innovación

**Conversación**: Claude Sonnet 4 - 2025-08-14  
**Contexto**: Desarrollo de prompts para consolidación arquitectónica  
**Momento**: Transición de análisis individual a vista sistémica

## Evolución de los Prompts Desarrollados

### Prompt 1 - Versión inicial (problemática)
**Problema identificado**: Criterio 1 incorrecto sobre "naming inconsistencies"

**Texto problemático original**:
```markdown
1. **Consolidar naming inconsistencies**: Si encuentras `CursoController` y `CursosController`, decide cuál usar consistentemente
```

**Error metodológico**: Asumir que `CursoController` vs `CursosController` son inconsistencias cuando son **patrones arquitectónicos deliberados**.

### Corrección crítica aplicada
**Insight del usuario**: 
> "La 4, ok. LA 1, no: Mira, una cosas es Cursos (que es una entidad que agrupa todos) y otra Curso (que es la entidad individual). Para eso te puede ayudar el diagrama de contexto y el modelo del dominio"

**Evidencia proporcionada**:
- Diagrama de contexto: Estados `CURSOS_ABIERTO` vs `CURSO_ABIERTO`
- Modelo del dominio: Entidades individuales vs colecciones

### Prompt 1 - Versión corregida (final)
**Criterio 1 refinado**:
```markdown
1. **Reconocer patrón de naming**: Distinguir entre controladores de colección (`CursosController`) vs entidad individual (`CursoController`) según el patrón arquitectónico establecido
```

**Validación agregada**:
- Referencia explícita al diagrama de contexto
- Validación contra modelo del dominio
- Preservación de patrones arquitectónicos deliberados

## Prompt 2 - Desarrollo del enfoque comportamental

### Conceptualización inicial
**Pregunta estratégica del usuario**:
> "y de este se podría extraer un segundo diagrama que indique los métodos?"

**Respuesta estratégica**:
- Segundo prompt derivado para extracción de métodos
- Basado en responsabilidades documentadas y mensajes de colaboración
- Independiente del primer análisis para triangulación

### Estructura final desarrollada
**Prompt 2 características**:
```markdown
### Criterios de extracción:
1. **Mensajes de colaboración** → Métodos públicos con parámetros documentados
2. **Responsabilidades listadas** → Métodos internos si están explícitos  
3. **Flujos de secuencia** → Signatures completas con tipos de retorno
4. **Patrón de visibilidad**: 
   - `+` (público): Métodos invocados desde otras clases
   - `-` (privado): Métodos mencionados en responsabilidades internas
```

## Metodología de Equipos Independientes

### Decisión estratégica clave
**Pregunta del usuario**:
> "lo relacionamos con el diagrama anterior? O que lo haga independiente y luego los cruzamos?"

**Análisis de opciones**:
- **Opción dependiente**: Más eficiente pero introduce sesgos
- **Opción independiente**: Más trabajo pero validación cruzada robusta

**Decisión tomada**: **Independiente + cruce posterior**

### Justificación metodológica desarrollada
**Razones para independencia**:

#### Validación metodológica
```markdown
- Si ambos ejercicios llegan a las **mismas clases** → Confirmamos solidez del análisis
- Si hay **diferencias** → Detectamos inconsistencias que necesitan revisión
- Es más **robusto** ante posibles errores en el primer diagrama
```

#### Detección de problemas
```markdown
- **Clases "fantasma"**: Aparecen en colaboraciones pero sin métodos claros
- **Métodos huérfanos**: Métodos documentados pero sin clase clara
- **Inconsistencias de naming**: Entre estructura y comportamiento
```

### Innovación: Estrategia de equipos múltiples
**Propuesta estratégica del usuario**:
> "Es estupendo. Lo pediré a dos equipos de trabajo separados"

**Valor agregado identificado**:
- **Detección de sesgos interpretativos**: Diferentes lecturas de los mismos documentos
- **Identificación de ambigüedades**: En el análisis original
- **Triangulación de calidad**: Convergencia vs divergencias reveladoras

## Artefactos de Referencia Utilizados

### Modelo del dominio
**Archivo**: `RUP/00-casos-uso/00-modelo-del-dominio/modelo-dominio.puml`

**Relaciones clave validadas**:
```plantuml
Profesor -d- Curso : imparte
Curso -r-* Programa
Edificio *-u- Aula
Horario o-- Aula
Horario o-d- Curso
Horario o-- Profesor
```

### Diagrama de contexto
**Archivo**: `RUP/99-seguimiento/diagrama-contexto-administrador.puml`

**Estados diferenciados claramente**:
- `PROGRAMAS_ABIERTO` vs `PROGRAMA_ABIERTO`
- `CURSOS_ABIERTO` vs `CURSO_ABIERTO`  
- `PROFESORES_ABIERTO` vs `PROFESOR_ABIERTO`
- etc.

**Evidencia del patrón**: Cada entidad tiene estados separados para colección vs individual.

## Framework de Validación Cruzada Desarrollado

### Criterios de cruce definidos
**Preguntas de validación recomendadas**:
```markdown
1. ¿Qué clases identificó solo un equipo?
2. ¿Qué métodos/relaciones aparecen solo en un análisis?
3. ¿Hay patterns arquitectónicos que uno vio y el otro no?
4. ¿Las inconsistencias detectadas coinciden?
```

### Adiciones para coordinación
**Elementos agregados a ambos prompts**:
```markdown
### Para coordinación posterior:
- **Timestamp del análisis**: [fecha/hora]
- **Equipo responsable**: [identificador]
- **Dudas encontradas**: Lista explícita de ambigüedades
- **Decisiones interpretativas**: Criterios aplicados ante incertidumbres
```

## Trazabilidad de Decisiones Metodológicas

### Decisión 1: Patrón arquitectónico vs inconsistencia
**Momento**: Corrección del Criterio 1 en Prompt 1
**Evidencia**: Diagrama de contexto + modelo del dominio
**Decisión**: Preservar `CursosController` vs `CursoController` como patrón deliberado
**Impacto**: Evita "correcciones" erróneas de arquitectura válida

### Decisión 2: Análisis independiente vs. dependiente
**Momento**: Diseño de Prompt 2
**Evidencia**: Principios de validación científica
**Decisión**: Análisis completamente independiente para triangulación
**Impacto**: Mayor robustez metodológica vs. eficiencia

### Decisión 3: Equipos múltiples vs. análisis único
**Momento**: Estrategia de ejecución
**Evidencia**: Experiencia previa con sesgos de LLMs (Artículos 010, 011)
**Decisión**: Equipos independientes + cruce posterior
**Impacto**: Detección de sesgos interpretativos y validación cruzada

## Referencias a Artefactos del Proyecto

### Estado de completitud verificado
**Dashboard visual**: [Diagrama de contexto administrador](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg)

**Métricas confirmadas**:
- 32 casos de uso con análisis MVC completo
- 100% de casos marcados como "analizados" en dashboard
- Todos los hilos funcionales completados

### Artículos metodológicos relacionados
**Artículo 010**: Incidente de aplicación automática post-compactación
- Relevancia: Demostración de límites de autonomía en colaboración humano-IA
- Lección: Necesidad de validación cruzada en decisiones críticas

**Artículo 011**: Sobreoptimización de LLMs en navegación RUP  
- Relevancia: Patrón de completismo automático sin validación
- Lección: LLMs pueden introducir sesgos sistemáticos incluso con comprensión profunda

**Artículo 012**: Reflexión de fase de análisis completada
- Relevancia: Evaluación completa de métricas y calidad alcanzada
- Contexto: Momento de transición crítica hacia diseño

## Herramientas de Validación Propuestas

### Para detección de convergencias/divergencias
```bash
# Script conceptual para comparar resultados de equipos
compare_analysis_results.sh equipo_A.puml equipo_B.puml
# Outputaría:
# - Clases en común: X%
# - Relaciones en común: Y%  
# - Métodos en común: Z%
# - Divergencias críticas: [lista]
```

### Para validación contra artefactos base
```bash
# Validación contra modelo del dominio
validate_against_domain_model.sh consolidated_classes.puml modelo-dominio.puml

# Validación contra diagrama de contexto  
validate_against_context.sh controller_names.txt diagrama-contexto-administrador.puml
```

---

**Esta evidencia proporciona trazabilidad completa del desarrollo de la metodología de triangulación, desde la identificación del problema hasta la solución innovadora, con enlaces específicos a decisiones y refinamientos aplicados durante la conversación.**