# Evidencia y Enlaces - Artículo 011

## Commit Específico del Problema

**Commit analizado**: [`c2b488f`](https://github.com/mmasias/pySigHor/commit/c2b488fcadbbea17a8fbfc859d3fe74792bd00e8)
```
feat(pragmatic): Añadir versiones pragmáticas de casos de uso y análisis
```

**Autor**: becario Gemini  
**Fecha**: 2025-07-26 01:28:46  
**Archivos afectados**: 56 archivos README.md en estructura RUP-pragmatico/

## Archivo Problemático Específico

**Enlace permanente al problema**: 
[`RUP-pragmatico/01-analisis/casos-uso/editarAula/README.md` línea 3](https://github.com/mmasias/pySigHor/blob/c2b488fcadbbea17a8fbfc859d3fe74792bd00e8/RUP-pragmatico/01-analisis/casos-uso/editarAula/README.md#L3)

**Código problemático**:
```markdown
|[Diseño](../../../../RUP/02-diseno/casos-uso/editarAula/README.md)|
```

**Error**: Enlace apunta a `RUP/02-diseno/casos-uso/editarAula/README.md` que **no existe**.

## Evidencia del Estado Real del Proyecto

### Estructura RUP Existente
**Verificación en el momento del análisis**:
```bash
$ ls /home/manuel/misRepos/pySigHor/RUP/
00-casos-uso/  01-analisis/  99-seguimiento/  README.md
```

**Carpetas inexistentes referenciadas**:
- `RUP/02-diseno/` ❌
- `RUP/03-desarrollo/` ❌  
- `RUP/04-pruebas/` ❌

### Alcance del Problema

**Comando para verificar enlaces rotos**:
```bash
$ grep -r "02-diseno" RUP-pragmatico/01-analisis/casos-uso/
```

**Archivos afectados**: Todos los README.md de análisis pragmático (26 casos de uso)

**Patrón encontrado**: Mismo enlace roto replicado sistemáticamente:
```markdown
[Diseño](../../../../RUP/02-diseno/casos-uso/[CASO]/README.md)
```

## Comparación con Artefactos Formales

### Artefactos Formales (Correctos)
**Archivo**: [`RUP/01-analisis/casos-uso/editarAula/README.md`](https://github.com/mmasias/pySigHor/blob/c2b488f/RUP/01-analisis/casos-uso/editarAula/README.md)

**Navegación correcta**:
```markdown
|[![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](../README.md)|
```

**Sin enlaces**: Los artefactos formales no referencian fases no implementadas.

### Artefactos Pragmáticos (Problemáticos)
**Archivo**: [`RUP-pragmatico/01-analisis/casos-uso/editarAula/README.md`](https://github.com/mmasias/pySigHor/blob/c2b488f/RUP-pragmatico/01-analisis/casos-uso/editarAula/README.md)

**Navegación problemática**:
```markdown
|[Diseño](../../../../RUP/02-diseno/casos-uso/editarAula/README.md)|Desarrollo|Pruebas|
```

**Patrón**: Enlaces hacia recursos que no existen.

## Evidencia del Proceso de Revisión

### Conversación 42 - Detección del Problema
**Fecha**: 2025-07-26  
**Contexto**: Revisión rutinaria de trabajo de becario Gemini

**Comandos ejecutados para la detección**:
```bash
# Verificación de estructura de directorios
$ ls /home/manuel/misRepos/pySigHor/RUP-pragmatico

# Verificación de rutas de imágenes  
$ ls /home/manuel/misRepos/pySigHor/images/RUP/00-casos-uso/02-detalle/editarAula/

# Detección del problema
$ ls /home/manuel/misRepos/pySigHor/RUP/02-diseno/casos-uso/editarAula/
ls: no se puede acceder a '/home/manuel/misRepos/pySigHor/RUP/02-diseno/casos-uso/editarAula/': No existe el archivo o el directorio
```

### Todo List de la Revisión
**Tareas ejecutadas sistemáticamente**:
1. ✅ Revisar estructura de directorios RUP-pragmatico
2. ✅ Verificar rutas de imágenes en READMEs pragmáticos  
3. ✅ Comprobar coherencia con metodología establecida
4. ✅ Validar navegación y enlaces entre artefactos
5. ❌ **PROBLEMA DETECTADO**: Enlaces a carpetas de diseño inexistentes

## Referencias al Conversation Log

### Registro de la Colaboración de becario Gemini
**Conversation-log.md - Conversación 41**: Documentación completa del trabajo realizado por becario Gemini

**Extracto relevante**:
```markdown
#### 1. **Creación de Artefactos Pragmáticos - Casos de Uso Detallados**
- Se creó la estructura de directorios `RUP-pragmatico/00-casos-uso/02-detalle/`.
- Para cada caso de uso, se generó un `README.md` "lite" que incluye:
  - Tabla de navegación adaptada.
```

**Nota**: El registro muestra que becario Gemini siguió un proceso sistemático pero no documentó validación de enlaces.

### Estado de LEY 005 al Momento
**LEY 005 - Protocolo de Gestión de Dudas**: Recién creada en Conversación 40 para casos complejos.

**Relevancia**: Este tipo de error (suposiciones sobre estado del proyecto) podría haberse evitado aplicando LEY 005 para aclarar el alcance exacto del trabajo.

## Commits Relacionados

### Secuencia de Commits de becario Gemini
1. [`c2b488f`](https://github.com/mmasias/pySigHor/commit/c2b488f) - feat(pragmatic): Añadir versiones pragmáticas (**problema introducido**)
2. [`f1d6af9`](https://github.com/mmasias/pySigHor/commit/f1d6af9) - feat(pragmatic): Añadir README.md principal  
3. [`63d03bc`](https://github.com/mmasias/pySigHor/commit/63d03bc) - fix(pragmatic): Centrar imágenes y corregir rutas (**problema persistente**)

### Estado al Momento del Análisis
**Commit actual**: [`b3ca8c9`](https://github.com/mmasias/pySigHor/commit/b3ca8c9) - Update commit-instructions.md

**Último merge**: [`eeeea69`](https://github.com/mmasias/pySigHor/commit/eeeea69) - Merge pull request #5 from mmasias/xRevisar

**Observación**: El problema sobrevivió al proceso de merge, indicando que la revisión en rama xRevisar no detectó los enlaces rotos.

## Herramientas de Verificación

### Comando para Detectar Enlaces Rotos
```bash
# Buscar todas las referencias a 02-diseno en artefactos pragmáticos
find RUP-pragmatico/ -name "*.md" -exec grep -l "02-diseno" {} \;

# Verificar existencia de directorios referenciados  
find RUP-pragmatico/ -name "*.md" -exec grep -o "RUP/02-diseno[^)]*" {} \; | sort -u
```

### Script de Validación Propuesto
```bash
#!/bin/bash
# validate-links.sh - Detectar enlaces rotos en documentación pragmática

echo "Verificando enlaces en RUP-pragmatico..."
for file in $(find RUP-pragmatico/ -name "*.md"); do
    grep -o '\[.*\](.*\.md)' "$file" | while read link; do
        path=$(echo "$link" | sed 's/.*(\(.*\))/\1/')
        if [[ "$path" == /* ]]; then
            # Enlace absoluto
            target="$path"
        else
            # Enlace relativo
            target=$(dirname "$file")/"$path"
        fi
        
        if [[ ! -f "$target" ]]; then
            echo "ENLACE ROTO: $file -> $target"
        fi
    done
done
```

---

**Esta evidencia proporciona trazabilidad completa del problema, desde su introducción hasta su detección, con enlaces permanentes al estado exacto del código en el momento específico del análisis.**