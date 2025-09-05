# Contexto: estado del proyecto al decidir el experimento RUP

<div align=right>

|||||
|-|-|-|-|
|[🏠️](../README.md)|[Artículo](README.md)|**Contexto** | [Evidencia](evidencia.md)

</div>

## Momento de la decisión

### Estado de madurez metodológica

**Proyecto en punto de inflexión**: 
- Metodología RUP consolidada y validada en la práctica
- Calidad de artefactos establecida y consistente
- Proceso de refinamiento iterativo funcionando correctamente
- Material didáctico (extraDocs) generando valor educativo auténtico

### Disciplinas RUP desarrolladas

**Requisitos (Casos de uso): ~40% completo**
- ✅ **Modelo del dominio**: Refinado con semántica correcta (agregación vs composición)
- ✅ **Actores identificados**: Administrador (especialización de Consultor) con casos de uso atómicos CRUD
- ✅ **Contexto del administrador**: Diagrama granular con 17 estados y flujos optimizados
- ✅ **`iniciarSesion()` especificado**: Diagrama de estado + wireframes + documentación completa
- 🎯 **Pendiente**: `crearPrograma()`, resto CRUD, `generarHorario()`, `consultarHorario()`

**Análisis: ~15% completo**
- ✅ **`iniciarSesion()` analizado**: MVC exquisitamente modelado tras 4 iteraciones de refinamiento
- ✅ **Metodología MVC establecida**: Patrón validado para separación estricta de responsabilidades
- 🎯 **Pendiente**: Análisis completo de todos los casos de uso identificados

**Diseño e Implementación: 0% - Deliberadamente pospuesto**

## Calidad metodológica conseguida

### Rigor en especificación de casos de uso

**Metodología refinada y validada**:
- **Vocabulario purificado**: Actor solo `solicita/introduce/proporciona`, Sistema solo `permite/presenta/muestra`
- **Diagramas de estado**: Con `skinparam linetype polyline` para legibilidad óptima
- **Choice points**: Contienen la lógica, sin validaciones explícitas redundantes
- **Transformación de actores**: Explícita (UsuarioNoRegistrado → Administrador)
- **Wireframes conceptuales**: SALT para validación temprana sin sobre-especificación

### Excelencia en análisis MVC

**Proceso iterativo de refinamiento**:
- **Iteración 1**: Ajustes conceptuales iniciales de Manuel
- **Iteración 2**: Detección de violación MVC por Claude  
- **Iteración 3**: Consenso en flujo MVC puro
- **Iteración 4**: Eliminación de redundancias para minimalismo conceptual

**Principios conseguidos**:
- ✅ **Separación estricta**: View ↔ Controller ↔ Model sin atajos
- ✅ **Minimalismo**: Solo relaciones esenciales, sin redundancias
- ✅ **Tipos explícitos**: Parámetros y retornos claramente especificados
- ✅ **Responsabilidades nítidas**: Controller como orquestador, no almacén de conocimiento

## Infraestructura del proyecto consolidada

### Organización estructural coherente

**Reorganización completa aplicada**:
```
/pySigHor/
├── README.md                    # ✅ Proyecto general
├── RUP/
│   ├── README.md               # ✅ Índice disciplinas (movido de raíz)
│   ├── 00-casos-uso/           # ✅ Disciplina de requisitos
│   └── 01-analisis/            # ✅ Disciplina de análisis
├── extraDocs/
│   ├── README.md               # ✅ Índice de artículos metodológicos
│   ├── 001-saltarse-pasos/     # ✅ Disciplina metodológica
│   ├── 002-coherencia-estructural/ # ✅ Organización de proyectos
│   └── 003-rup-independencia/  # 🎯 Este momento
└── conversation-log.md         # ✅ 24 conversaciones documentadas
```

**Beneficios conseguidos**:
- **Coherencia**: Cada carpeta tiene README.md apropiado
- **Navegación intuitiva**: Expectativas estándar satisfechas
- **Escalabilidad**: Patrón replicable para futuras disciplinas RUP

### Material didáctico de calidad excepcional

**extraDocs establecido como innovación**:
- **Artículo 001**: Disciplina metodológica - no saltar pasos RUP
- **Artículo 002**: Organización de proyectos - coherencia estructural  
- **Artículo 003**: Experimento RUP - independencia tecnológica

**Metodología consolidada**:
- **Estructura**: articulo.md + evidencia.md + contexto.md
- **Trazabilidad**: Commits específicos como evidencia verificable
- **Autenticidad**: Reflexiones reales, no ejemplos artificiales
- **Valor educativo**: Proceso tan importante como resultados

## Lecciones metodológicas acumuladas

### Detección y corrección de desvíos metodológicos

**Caso documentado**: Intento de saltar a análisis sin completar requisitos
- **Problema**: Asimetría entre `iniciarSesion()` (completo) vs `crearPrograma()` (sin especificar)
- **Detección**: Vigilancia metodológica sistemática
- **Corrección**: Retorno a disciplina de requisitos antes de continuar análisis
- **Lección**: RUP como prevención de caos sistemático

### Importancia de coherencia estructural

**Caso documentado**: `RUP.md` en lugar conceptualmente incorrecto
- **Reflexión espontánea**: "el archivo RUP.md que está en la raiz, realmente es el README.md de /RUP, no te parece?"
- **Principio**: Responsabilidad única en documentación
- **Solución**: Reorganización siguiendo convenciones estándar
- **Beneficio**: Navegación intuitiva y mantenimiento simplificado

### Refinamiento iterativo como herramienta de calidad

**Caso documentado**: Diagrama de colaboración MVC exquisito
- **Proceso**: 4 iteraciones de mejora conceptual
- **Principios aplicados**: Separación MVC + minimalismo + eliminación de redundancias
- **Resultado**: Cada relación justificada y conceptualmente correcta
- **Transferibilidad**: Metodología aplicable a todos los casos de uso futuros

## Factores que facilitaron la decisión estratégica

### Confianza en la metodología

**Evidencia de funcionamiento**:
- RUP ha demostrado prevenir problemas reales (saltar pasos)
- El refinamiento iterativo produce mejoras verificables
- La separación de disciplinas facilita organización y calidad
- Los principios metodológicos se validan en la práctica

### Calidad conseguida como fundamento

**Base sólida establecida**:
- Proceso maduro de especificación de casos de uso
- Metodología MVC refinada y validada
- Infraestructura de proyecto coherente y escalable
- Material didáctico que captura lecciones reales

### Entusiasmo metodológico auténtico

**Pasión por validación rigurosa**:
- Emoción de poner principios a prueba experimental
- Compromiso con evidencia verificable, no solo teoría
- Valor didáctico del proceso de experimentación
- Honestidad intelectual sobre posibles limitaciones de RUP

## Estado de herramientas y convenciones

### Tecnologías establecidas

**Stack de desarrollo de artefactos**:
- **PlantUML**: Diagramas versionables y modificables
- **Markdown**: Documentación consistente y navegable
- **Git**: Trazabilidad temporal con commits específicos
- **Estructura de carpetas**: Convenciones coherentes establecidas

### Convenciones de calidad

**Estilo editorial**:
- Capitalización correcta en títulos español
- Formato de tablas denso y funcional (no decorativo)
- Enlaces relativos para navegación interna
- Código PlantUML limpio sin elementos superfluos

**Metodología de documentación**:
- conversation-log.md para trazabilidad completa
- extraDocs para lecciones metodológicas específicas
- README.md por carpeta principal para navegación
- Evidencia temporal con commits como anchor points

## Próximos casos de uso identificados

### CRUD completo por entidad

**Programas académicos**: `crearPrograma()`, `editarPrograma()`, `eliminarPrograma()`, `abrirProgramas()`
**Cursos**: `crearCurso()`, `editarCurso()`, `eliminarCurso()`, `abrirCursos()`
**Profesores**: `crearProfesor()`, `editarProfesor()`, `eliminarProfesor()`, `listarProfesores()`, `configurarPreferenciasProfesor()`
**Edificios**: `crearEdificio()`, `editarEdificio()`, `eliminarEdificio()`, `listarEdificios()`
**Aulas**: `crearAula()`, `editarAula()`, `eliminarAula()`, `listarAulas()`
**Recursos**: `crearRecurso()`, `editarRecurso()`, `eliminarRecurso()`, `listarRecursos()`

### Casos de uso especiales

**Asignaciones**: `asignarProfesorACurso()`
**Generación**: `generarHorario()` (algoritmo de optimización complejo)
**Consulta**: `consultarHorario()`

## Justificación de la decisión experimental

### Momento óptimo para experimentar

**Factores convergen**:
- Metodología madura y validada
- Calidad de artefactos establecida
- Proceso de refinamiento funcionando
- Material didáctico generando valor
- Entusiasmo metodológico auténtico

### Valor único del experimento

**Características excepcionales**:
- **Autenticidad**: Experimento real, no simulación académica
- **Rigor**: Hipótesis clara, variables medibles, criterios de éxito definidos  
- **Evidencia**: Commits como testigos inmutables del proceso
- **Transferibilidad**: Metodología aplicable a otros contextos
- **Valor educativo**: Proceso tan valioso como resultados

### Compromiso con la honestidad intelectual

**Apertura a resultados**:
- Si RUP funciona → demostración práctica de valor metodológico
- Si RUP tiene limitaciones → identificación precisa de contextos y causas
- En cualquier caso → evidencia valiosa sobre metodologías de desarrollo

## Preparación para la siguiente fase

### Casos de uso listos para especificación

**`crearPrograma()` como próximo objetivo**:
- Aplicar metodología completa refinada
- Mantener calidad conseguida
- Documentar nuevas lecciones si emergen
- Establecer patrón replicable para resto de CRUD

### Base experimental sólida

**Fundamento para experimento**:
- Metodología probada en casos no triviales
- Calidad demostrada en artefactos complejos
- Proceso de mejora continua funcionando
- Entusiasmo metodológico como motivador auténtico

**¡El escenario está preparado para demostrar que las metodologías sí importan!**