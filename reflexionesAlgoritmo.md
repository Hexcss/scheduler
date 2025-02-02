# Algoritmo SigHor - Generador de horarios académicos (1998)

> ***SigHor*** representa un ejemplo de cómo un algoritmo técnicamente excelente puede producir resultados problemáticos. Su diseño e implementación son notables para la época (1998), y las lecciones aprendidas sobre el balance entre optimización matemática y factores humanos siguen siendo relevantes hoy.

## Estructuras de datos principales

### Entrada

```
Aula {
    id: Integer
    capacidad: Integer
    propiedades: BitSet[5]  // Características como retroproyector, etc.
    especial: Boolean
    bloqueada: Boolean
}

Profesor {
    id: Integer
    R1..R5: Integer  // Prioridades para cada característica
}

Curso {
    id: Integer
    vacantes: Integer
    creditos: Integer
    H: Enum{1-8,E,V}  // Bloque horario asignado
    ciclo: Integer
    PI,PS,PC,PE: Boolean  // Programas donde se dicta
}

BloqueH {
    H1: "LXV 07-08"
    H2: "MJS 07-08"
    H3: "LXV 09-10"
    H4: "MJS 09-10"
    H5: "LXV 11-12"
    H6: "MJS 11-12"
    H7: "LXV 05-06"
    H8: "MJS 05-06"
}
```

## Algoritmo principal

```
GenerarHorario():
    1. PrepararH()         // Resuelve conflictos iniciales
    2. GeneraPreHorario()  // Asigna aulas optimizando espacio y recursos
    3. GeneraHorario()     // Materializa el horario final
    4. IngresoHE()         // Maneja casos especiales
```

### 1. PrepararH

```
PrepararH():
    Para H = 1 hasta 4:
        Para ciclo = 1 hasta 12:
            Para programa en [I,S,C,E]:
                cursos = obtenerCursos(H, ciclo, programa)
                Si hay_conflicto(cursos):
                    Si H = 4 y curso.creditos > 4:
                        mover_curso_a(H + 2)
                    Sino:
                        mover_curso_a(H + 4)
```

### 2. GeneraPreHorario

```
GeneraPreHorario():
    Para H = 1 hasta 8:
        cursos = obtenerCursos(H).ordenarPorVacantes(DESC)
        
        Para cada curso en cursos:
            // Fase 1: Minimizar desperdicio de espacio
            aulas_candidatas = []
            Z_minimo = INFINITO
            
            Para cada aula en aulas_disponibles:
                Si aula.capacidad > curso.vacantes:
                    Z = aula.capacidad - curso.vacantes
                    Si Z < Z_minimo:
                        Z_minimo = Z
                        aulas_candidatas = [aula]
                    Sino Si Z = Z_minimo:
                        aulas_candidatas.agregar(aula)
            
            // Fase 2: Maximizar coincidencia de recursos
            mejor_score = -1
            mejor_aula = null
            
            Para cada aula en aulas_candidatas:
                EnteroDelAula = 0
                Para i = 1 hasta 5:
                    Si aula.propiedades[i]:
                        EnteroDelAula += 2^profesor.R[i]
                
                Si EnteroDelAula > mejor_score:
                    mejor_score = EnteroDelAula
                    mejor_aula = aula
            
            Si mejor_aula:
                asignar_curso_a_aula(curso, mejor_aula, H)
            Sino:
                mover_curso_a_HE(curso)
```

### 3. GeneraHorario

```
GeneraHorario():
    Para cada H:
        patron = obtenerPatronHorario(H)  // días y horas del bloque
        cursos = obtenerCursosPreHorario(H)
        
        Para cada curso en cursos:
            Para i = 1 hasta curso.creditos:
                dia = patron.dias[i]
                hora = patron.horas[i]
                asignar_horario_final(curso, dia, hora)
```

### 4. IngresoHE

```
IngresoHE():
    cursos = obtenerCursosHE().ordenarPorCiclo()
    
    Para cada curso en cursos:
        // Buscar H donde no haya conflicto de ciclo
        Para H = 8 hasta 1:
            Si no_hay_conflicto_ciclo(curso, H):
                aplicar_optimizacion_normal(curso, H)
                break
```

## Aspectos notables del algoritmo

### 1. Optimización dual

El algoritmo utiliza dos niveles de optimización:

1. Minimización de espacio desperdiciado
   - Prioriza usar aulas con capacidad más cercana a los requerimientos
   - Evita asignar aulas grandes a grupos pequeños
1. Maximización de recursos
   - Usa un sistema binario ingenioso para matching de recursos
   - Las prioridades del profesor (R1-R5) actúan como pesos exponenciales
   - Permite ponderar múltiples características simultáneamente

### 2. Sistema de overflow

- Los bloques H5-H8 actúan como "plan B" para los H1-H4
- Mantiene el mismo patrón de días pero en diferente horario
- HE funciona como válvula de escape final

### 3. Eficiencia computacional

- Uso de bits para características (operaciones rápidas)
- Ordenamiento previo por tamaño reduce complejidad
- Cálculos enteros vs punto flotante
- Sin necesidad de backtracking

### 4. Resultados y limitaciones

#### Resultados técnicos

- Optimización perfecta de espacio
- Alta coincidencia de recursos con preferencias
- Sin conflictos de horarios
- Solución computacionalmente eficiente

#### Limitaciones prácticas

1. Concentración excesiva
   - Forma un "triángulo" de ocupación
   - Alta densidad en primeros días/horas
   - Subutilización de slots tardíos
1. Factores humanos no considerados
   - Fatiga de estudiantes/profesores
   - Tiempos de traslado
   - Preferencia por distribución uniforme

## Lecciones aprendidas

1. Optimización vs usabilidad
   - La optimización matemática perfecta puede ser subóptima en la práctica
   - Necesidad de balancear eficiencia con factores humanos
1. Restricciones blandas
   - Importancia de incluir preferencias cualitativas
   - Valor de la distribución uniforme vs eficiencia pura
1. Diseño de sistemas
   - Los sistemas socio-técnicos requieren consideraciones más allá de la optimización pura
   - La "mejor" solución matemática no siempre es la mejor solución práctica
