# Evidencia - El problema de saltarse pasos

## Commit específico

**Hash**: `b5711c76a9b96432252c596b0d0c53815550fdf8`
**Enlace**: [Ver estado del repositorio en este commit](https://github.com/mmasias/pySigHor/tree/b5711c76a9b96432252c596b0d0c53815550fdf8)
**Fecha**: 2025-01-08
**Mensaje**: [Por determinar - commit donde se planteó saltar a análisis]

## Contexto del repositorio en el momento

### Estado de requisitos por caso de uso

#### ✅ `iniciarSesion()` - COMPLETAMENTE ESPECIFICADO
```
/RUP/00-casos-uso/02-detalle/iniciarSesion/
├── README.md           # Documentación completa
├── especificacion.puml # Diagrama de estados UML
└── prototipo.puml      # Wireframes SALT
```

#### ❌ `crearPrograma()` - SIN ESPECIFICAR
```
/RUP/00-casos-uso/02-detalle/
└── iniciarSesion/      # Solo este caso existe
    └── [archivos...]
# crearPrograma/ NO EXISTE
```

### Evidencia en código del error metodológico

**Búsqueda de referencias a `crearPrograma`**:
```bash
$ grep -r "crearPrograma" /RUP/
/RUP/00-casos-uso/01-actores-casos-uso/actores-casos-uso.md
/RUP/00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.puml
/RUP/00-casos-uso/01-actores-casos-uso/actores-casos-uso-001.puml
```

**Resultado**: Solo aparece en:
- Lista general de casos de uso (identificación)
- Diagrama de contexto (flujo general)
- **NO existe especificación detallada**

### Estado de análisis

```
/RUP/01-analisis/casos-uso/
└── iniciarSesion/      # Solo análisis MVC de iniciarSesion
    ├── README.md
    └── colaboracion.puml
# NO HAY análisis de crearPrograma
```

## Conversación específica

### Propuesta errónea (Claude)

> "Considerando el estado consolidado del proyecto, propongo retomar el **análisis de casos de uso** aplicando la metodología MVC validada."
> 
> "### Caso de Uso Propuesto: `crearPrograma()`"
> 
> "**Enfoque de Análisis MVC**"
> 
> "Siguiendo la metodología consolidada:
> 
> **Clases Model (naranja #F2AC4E):**
> - `Programa` (entidad del dominio)
> - `ProgramaRepository` (concepto puro de persistencia)
> 
> **Clases View (azul #629EF9):**
> - `CrearProgramaView` (interfaz derivada de wireframe futuro)"

### Corrección metodológica (Manuel)

> "Cuando dices "analisis", a qué actividades exactamente te refieres?"

Seguido de la pregunta clave:

> "Uhm... hemos realizado las actividades de requisitos de este caso de uso? (al menos detallar & prototipar)... Yo diría que no: confírmalo"

### Confirmación del error

**Verificación en el repositorio**:
```bash
$ ls /RUP/00-casos-uso/02-detalle/
iniciarSesion/
# crearPrograma/ NO EXISTE
```

**Respuesta de Claude**:
> "**Tienes razón. Confirmado: NO hemos realizado las actividades de Requisitos para `crearPrograma()`.**"

## Análisis de la evidencia

### 1. Estado asimétrico del proyecto

**Caso completamente desarrollado**: `iniciarSesion()`
- Especificación detallada ✅
- Prototipado ✅  
- Análisis MVC ✅

**Caso propuesto para análisis**: `crearPrograma()`
- Especificación detallada ❌
- Prototipado ❌
- Análisis MVC ❌ (propuesto incorrectamente)

### 2. Tentación metodológica documentada

**El error está explícitamente capturado**:
- Propuesta concreta de saltar requisitos
- Justificación aparentemente lógica ("metodología consolidada")
- Detección y corrección inmediata

### 3. Proceso de corrección documentado

**Secuencia de corrección**:
1. **Detección**: Pregunta directa sobre completitud de requisitos
2. **Verificación**: Búsqueda en repositorio confirma falta de artefactos
3. **Reconocimiento**: Admisión explícita del error metodológico
4. **Corrección**: Vuelta a secuencia correcta RUP

## Valor de la evidencia

### Para educación

**Autenticidad**: Error real capturado en momento exacto
**Contexto completo**: Estado del repositorio demuestra la situación
**Proceso de corrección**: Metodología aplicada para detectar y corregir

### Para metodología

**Validación de RUP**: La disciplina metodológica previno error costoso
**Patrón reconocible**: Situación típica en equipos de desarrollo real
**Herramientas de detección**: Preguntas y verificaciones que funcionan

### Para el proyecto

**Calidad preservada**: Error detectado antes de crear artefactos incorrectos
**Aprendizaje documentado**: Experiencia valiosa para casos futuros
**Disciplina reforzada**: Importancia de seguir secuencia metodológica

## Enlaces de verificación

### Comandos para reproducir el estado

```bash
# Verificar casos con especificación completa
find /RUP/00-casos-uso/02-detalle/ -name "*.puml" -o -name "README.md"

# Buscar referencias a crearPrograma
grep -r "crearPrograma" /RUP/

# Verificar estado de análisis
ls -la /RUP/01-analisis/casos-uso/
```

### Archivos de evidencia

- **Conversation-log.md**: Líneas [aproximadas] donde se documenta la conversación
- **Todo list**: Estado de tareas donde se proponía análisis prematuro
- **Estructura de directorios**: Ausencia física de `/crearPrograma/` en especificaciones

---

*Esta evidencia permite reproducir exactamente el contexto donde se presentó el dilema metodológico y verificar la corrección aplicada.*