# Sistema Generador de Horarios (SigHor) - 1998

> by:Claude

## Propósito

Sistema desarrollado para generar automáticamente horarios académicos universitarios, considerando múltiples restricciones y optimizando el uso de recursos.

## Características Principales

<div align=center>

|![](/images/modelosUML/MDD.svg)
|:-:
|**Modelo del dominio**

</div>

### Estructura de Datos

- **Aulas**: Capacidad y características (representadas como bits)
- **Profesores**: Preferencias de recursos (ponderadas como R1-R5)
- **Cursos**: Agrupados en bloques horarios (H1-H8)
- **Horarios**: Asignación final de aula, curso, día y hora

### Sistema de Bloques Horarios

- **H1-H4**: Bloques horarios principales
- **H5-H8**: Bloques "overflow" (mismo patrón que H1-H4 pero en otro horario)
- **HE**: Horarios especiales
- **HV**: Horarios varios

### Sistema de Optimización

1. **Optimización de Espacio**
   - Minimiza Z = |Capacidad_Aula - Alumnos_Curso|
   - Evita desperdiciar aulas grandes en cursos pequeños

2. **Optimización de Recursos**
   ```
   EnteroDelAula = Propiedad(1) * 2^R1 + 
                   Propiedad(2) * 2^R2 + 
                   Propiedad(3) * 2^R3 + 
                   Propiedad(4) * 2^R4 + 
                   Propiedad(5) * 2^R5
   ```
   - Propiedades: bits que indican recursos del aula
   - R1-R5: peso/prioridad que el profesor da a cada recurso

## Proceso de Asignación

1. **PrepararH()**
   - Valida bloques H iniciales
   - Mueve cursos a H+4 si hay conflictos

2. **GeneraPreHorario()**
   - Procesa cada H (1 a 8)
   - Ordena cursos por tamaño descendente
   - Para cada curso:
     - Minimiza desperdicio de espacio (Z)
     - Maximiza coincidencia de recursos
     - Si no hay aula disponible, mueve a HE

3. **GeneraHorario()**
   - Materializa el pre-horario en asignaciones finales
   - Asigna días y horas específicas

4. **IngresoHE()**
   - Maneja los cursos que no pudieron asignarse en bloques normales

## Estructura de la Base de Datos

### Tablas Maestras (M_)

- **M_Aulas**: Recursos físicos y sus características
  - ID, Nombre, Capacidad
  - Propiedades (5 bits para características)
  - Especial, Bloqueada
  - IDEdificio (FK)

- **M_Cursos**: Información de asignaturas
  - ID, Nombre, Sigla
  - Programa
  - Créditos, Vacantes, Ciclo
  - H (1-8, E, V)
  - PI, PS, PC, PE (booleanos para programa)
  - Laboratorio, ProfesorVisitante
  - Activo

- **M_Profesores**: Docentes y sus preferencias
  - ID, Nombre, Oficina
  - R1-R5 (prioridades de recursos)

- **M_Horario**: Resultado final de asignaciones
  - Dia (L,M,X,J,V,S)
  - Hora (7-12)
  - IDAula (FK)
  - IDCurso (FK)

- **M_DatosGenerales**: Configuración del sistema
  - IDClase, IDCorrelativo
  - Descripcion, Elemento

### Tablas Secundarias (S_)

- **S_CursosHModificado**: Cambios de bloque H
  - IDCurso (FK)
  - NuevoH

- **S_Edificios**: 
  - ID, Nombre

- **S_Oficinas**: 
  - ID, Nombre

- **S_Recursos**: 
  - ID, Nombre, Descripcion

### Tablas Temporales (T_)

- **T_PreHorario**: Asignaciones preliminares
  - IDAula (FK)
  - IDCurso (FK)
  - H

- **T_AulaLibre**: Cálculos de optimización
  - ID (FK)
  - Z (Capacidad - Vacantes)
  - Entero (Score recursos)

- **T_AulaOcupada**: Control de disponibilidad
  - ID (FK: IDAula)

### Tablas de Relación (R_)

- **R_ProfesorCurso**:
  - IDProfesor (FK)
  - IDCurso (FK)

## Limitaciones Observadas

- La optimización perfecta generaba horarios poco prácticos (concentración excesiva en primeros días)
- No consideraba aspectos "humanos" en la distribución

## Notas Técnicas

- Desarrollado en Visual Basic 6
- Base de datos Access (.mdb)
- Uso innovador de operaciones de bits para optimización
- Interfaz gráfica completa para mantenimiento de datos