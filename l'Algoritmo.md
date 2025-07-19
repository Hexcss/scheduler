# Algoritmo de generación de horarios

> *El algoritmo implementa un proceso de optimización de 4 fases que distribuye los cursos en bloques de horario disponibles, asignando aulas de manera eficiente mediante minimización de espacio no utilizado y maximización de compatibilidad aula-profesor. El proceso incluye resolución de conflictos, optimización dual, materialización del horario y manejo de casos especiales.*

## Flujo completo del algoritmo

El algoritmo se ejecuta en este orden específico según `frmMenuP.frm:287-298`:

1. **PrepararH()** - "Analizando H" - Resolución de conflictos de horarios
2. **GeneraPreHorario()** - "Horario alfa" - Optimización de asignación aula-curso  
3. **GeneraHorario()** - "Horario beta" - Materialización del horario final
4. **IngresoHE()** - "Horario final" - Manejo de casos especiales (Horarios Especiales)

## Fase 0: PrepararH() - Resolución de conflictos de horarios

**Objetivo**: Resolver conflictos cuando múltiples cursos intentan usar el mismo bloque horario H.

### Proceso de resolución de conflictos
- Se analiza cada bloque H (1 a NumeroH) buscando cursos duplicados por combinación: H + Ciclo + Programa (PI/PS/PC/PE)
- **Criterio de prioridad**: Se ordena por longitud de programa (DESC), programa (DESC), créditos (DESC)
- **Primer curso**: Mantiene su H original
- **Cursos subsiguientes**: Se reubican según reglas específicas

### Reglas de reubicación de PrepararH()
```
Si H ≠ 4: NuevoH = H + 4
Si H = 4: 
  - Si Créditos > 4: NuevoH = H + 2 = 6
  - Si Créditos ≤ 4: NuevoH = H + 4 = 8
```

**Salida**: Tabla `S_CursosHModificado` con las nuevas asignaciones de H para cada curso.

**Objetivo**: Realizar la asignación óptima de cursos a aulas mediante un proceso de optimización dual.

### Inicialización por bloque H
- Se procesan los bloques H de 1 a 8 secuencialmente
- Se inicializa `T_AulaOcupada` (vacía para cada H)
- Se consultan cursos desde `S_CursosHModificado` (resultado de PrepararH)
- **Ordenamiento**: Cursos por vacantes descendente (cursos más grandes primero)

### Para cada curso en el bloque H

#### 1. Obtención de datos del profesor
- Se consulta la tabla `R_ProfesorCurso` y `M_Profesores`
- Se obtienen las preferencias R1, R2, R3, R4, R5 del profesor
- **Validación**: Si no hay profesor asignado → Error "El curso no tiene profesor!"

#### 2. Creación de conjunto de aulas candidatas
- Se construye la tabla temporal `T_AulaLibre` con aulas que cumplen:
  - `Capacidad > Vacantes` (cabe el curso)
  - `Bloqueada = 0` (aula disponible)
  - `ID NOT IN (T_AulaOcupada)` (no ocupada en este H)
- Se calcula **Z = Capacidad - Vacantes** para cada aula candidata

#### 3. Minimización Z (Optimización de espacio)
- Se obtiene `ZMinimo = Min(Z)` de todas las aulas candidatas
- Se filtran solo las aulas donde `Z = ZMinimo`
- **Objetivo**: Minimizar el espacio no utilizado del aula

#### 4. Maximización de compatibilidad aula-profesor
- Para cada aula con Z mínimo:
  - Se descompone `Propiedades` en 5 bits binarios
  - Se calcula la **puntuación binaria ponderada**:
    ```
    EnteroDelAula = Propiedad(1) * 2^R1 + Propiedad(2) * 2^R2 + 
                    Propiedad(3) * 2^R3 + Propiedad(4) * 2^R4 + 
                    Propiedad(5) * 2^R5
    ```
  - Se elige el aula con `EnteroDelAula` máximo

#### 5. Asignación o reubicación
- **Si hay aula elegida**: 
  - Se marca como ocupada en `T_AulaOcupada`
  - Se registra en `T_PreHorario (IDAula, IDCurso, H)`
- **Si no hay aula disponible**:
  - Se reubica el curso según reglas de GeneraPreHorario:
    ```
    Si H < 5: NuevoH = H + 4
    Si H < 7: NuevoH = H + 2  
    Si H > 6: NuevoH = H
    Sino: NuevoH = 99 (sin asignar)
    ```

**Salida**: Tabla `T_PreHorario` con asignaciones curso-aula-H optimizadas.

## Fase 2: GeneraHorario() - Materialización del horario final

**Objetivo**: Convertir las asignaciones del pre-horario en registros específicos de horario final.

### Inicialización
- Se limpia la tabla `M_Horario`
- Se procesa cada bloque H (1 a 8)

### Procesamiento por bloque H

#### 1. Construcción del arreglo DiaHora
- Se consulta `M_DatosGenerales` para obtener la definición del bloque H
- Se construye array `DiaHora[]` con pares "Día-Hora" del bloque
- **Formato**: "L-07", "L-09", "M-07", "M-09" (ejemplo para H=1)

#### 2. Obtención de cursos del pre-horario
- Se consultan cursos de `T_PreHorario` para el H actual
- Se incluyen: `IDAula`, `IDCurso`, `H`, `Creditos`
- **Ordenamiento**: Por créditos descendente

#### 3. Asignación de registros por créditos
- **Para cada curso en T_PreHorario**:
  - **Para cada crédito del curso (1 a Creditos)**:
    - Se crea un registro en `M_Horario`:
      - `Dia = Left(DiaHora(i), 1)` 
      - `Hora = Val(Right(DiaHora(i), 2))`
      - `IDAula = PreH!IDAula`
      - `IDCurso = PreH!IDCurso`

**Resultado**: Los cursos aparecen en el horario tantas veces como créditos tienen.

## Fase 3: IngresoHE() - Manejo de casos especiales

**Objetivo**: Gestionar Horarios Especiales (HE) que no siguen el patrón estándar de bloques H.

### Características de HE
- Cursos con horarios específicos no sujetos a los bloques H estándar
- Requieren asignación manual de días y horas específicos
- Utilizan el mismo algoritmo de optimización aula-profesor

### Proceso
- Similar a GeneraPreHorario pero para horarios específicos
- Se consultan cursos marcados como HE
- Se aplica la misma optimización dual (Z mínimo + compatibilidad máxima)
- Se insertan directamente en `M_Horario` con días/horas específicos

### Otras rutinas especiales
- **IngresoHV()**: Horarios Verticales (casos especiales de programación)
- **ComprimirSabados()**: Optimización de uso de aulas en sábados

## Algoritmos de optimización implementados

### 1. Minimización Z
```
Objetivo: Min(Capacidad_Aula - Vacantes_Curso)
Restricciones: Capacidad_Aula > Vacantes_Curso
```

### 2. Maximización de compatibilidad binaria ponderada
```
Objetivo: Max(Σ Propiedad(i) * 2^Preferencia(i))
Donde: i = 1 to 5, Propiedad ∈ {0,1}, Preferencia ∈ {0,1,2,3...}
```

### 3. Resolución de conflictos por prioridad
```
Prioridad = f(LongitudPrograma, Programa, Creditos)
Ordenamiento: DESC en cada criterio
```

Este algoritmo representa una implementación sofisticada de **programación con restricciones** y **optimización multiobjetivo** para el problema de scheduling académico, utilizando técnicas de **investigación de operaciones** aplicadas al contexto universitario de 1998.
