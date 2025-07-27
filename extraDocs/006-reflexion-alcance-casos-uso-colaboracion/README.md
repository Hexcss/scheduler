# Reflexión metodológica: delimitación del alcance en diagramas de colaboración RUP

<div align=right>

|||||
|-|-|-|-|
|[🏠️](../README.md)|**Artículo**|[Contexto](contexto.md) | [Evidencia](evidencia.md)

</div>

## Contexto del descubrimiento

Durante el análisis del caso de uso `mostrarMenu()` en el proyecto de modernización SigHor, nos enfrentamos a una cuestión metodológica fundamental: **¿dónde termina la responsabilidad de un caso de uso y dónde comienzan las colaboraciones externas?**

Esta reflexión surgió al crear el diagrama de colaboración para `mostrarMenu()`, donde inicialmente representamos las posibles navegaciones del usuario como parte integral del flujo del caso de uso, pero pronto cuestionamos si esto era conceptualmente correcto.

## El problema metodológico

### Estado inicial del diagrama

En la primera versión del diagrama de colaboración, las conexiones entre `MenuView` y las colaboraciones externas eran representadas con flechas sólidas:

|![commit b499616](https://raw.githubusercontent.com/mmasias/pySigHor/b4996160b77a633d4a21453bcf5f8ea6597ed1e8/images/RUP/01-analisis/casos-uso/mostrarMenu/mostrarMenu-analisis.svg)
|-

```plantuml
MenuView --> AbrirProgramas
MenuView --> AbrirCursos
MenuView --> AbrirProfesores
...
```

### Tensión conceptual identificada

Esta representación generaba varias inconsistencias metodológicas:

1. **Exceso de responsabilidad**: Sugería que el caso de uso `mostrarMenu()` era responsable de ejecutar automáticamente las navegaciones
2. **Naturaleza "contractual" errónea**: Implicaba que el sistema activaba estas colaboraciones de forma determinística
3. **Confusión de alcances**: Mezclaba la responsabilidad de "mostrar opciones" con la de "procesar selecciones del usuario"
4. **Incorrecta representación del flujo**: En realidad, es el usuario quien decide qué opción activar, no el sistema quien las ejecuta todas

## Análisis del problema

### ¿Cuál es realmente el alcance de `mostrarMenu()`?

Al analizar profundamente la naturaleza del caso de uso, identificamos que su propósito es específico y limitado:

**Responsabilidades SÍ incluidas:**
- ✅ Obtener información del usuario autenticado
- ✅ Consultar permisos del usuario
- ✅ Construir el conjunto de opciones disponibles
- ✅ Presentar visualmente el menú al administrador
- ✅ Dejar el sistema en estado "menú disponible"

**Responsabilidades NO incluidas:**
- ❌ Procesar la selección específica del usuario
- ❌ Ejecutar las navegaciones hacia otros módulos
- ❌ Manejar los flujos posteriores a la presentación del menú

### Reflexión sobre la naturaleza de las colaboraciones

Las colaboraciones `AbrirProgramas`, `AbrirCursos`, etc., representan **puntos de continuación potenciales**, no **ejecuciones automáticas**. Su relación con `mostrarMenu()` es de **disponibilidad**, no de **invocación directa**.

## La solución implementada

### Cambio en la representación visual

En la versión refinada del diagrama, modificamos las conexiones:

|![](https://raw.githubusercontent.com/mmasias/pySigHor/b8f36ca7fd409c16fb03be9e3f21058ee78df985/images/RUP/01-analisis/casos-uso/mostrarMenu/mostrarMenu-analisis.svg)
|-



```
MenuView ..> AbrirProgramas : abrirProgramas()
MenuView ..> AbrirCursos : abrirCursos()
MenuView ..> AbrirProfesores : abrirProfesores()
```

**Cambios clave:**
- **Líneas punteadas (`..>`)**: Indican posibilidad de activación, no ejecución automática
- **Semántica de delegación**: El sistema expone capacidades sin asumir su ejecución
- **Preservación de la independencia**: Cada colaboración mantiene su autonomía conceptual

### Documentación conceptual agregada

Incluimos una explicación explícita en el modelo:

> **Colaboraciones externas activables a partir de este caso de uso (no parte del caso de uso mostrarMenu()):**
> 
> El caso de uso mostrarMenu() tiene como propósito principal presentar al usuario las opciones disponibles en función de sus permisos. Una vez mostrado el menú, el usuario puede seleccionar cualquiera de estas opciones, las cuales activan otros casos de uso del sistema.
>
> Estas colaboraciones representan puntos de continuación que no forman parte del flujo interno de mostrarMenu(), pero que pueden ser iniciadas inmediatamente después por decisión del actor. Su inclusión en este modelo tiene como objetivo representar la capacidad del sistema para delegar en otras funcionalidades, manteniendo la independencia conceptual entre casos de uso.

## Principios metodológicos extraídos

### 1. Principio de responsabilidad única en casos de uso

Cada caso de uso debe tener una responsabilidad claramente delimitada y específica. La tentación de incluir flujos posteriores o relacionados debe resistirse en favor de la coherencia conceptual.

### 2. Diferenciación entre capacidad y ejecución

Los diagramas de colaboración deben distinguir claramente entre:
- **Capacidades del sistema**: Lo que puede hacerse desde un estado dado
- **Ejecuciones automáticas**: Lo que el sistema hace sin intervención adicional

### 3. Preservación de la autonomía conceptual

Las colaboraciones externas deben mantener su independencia conceptual, evitando crear dependencias artificiales entre casos de uso que en realidad son autónomos.

### 4. Representación honesta del flujo de control

Los diagramas deben reflejar honestamente quién toma las decisiones en cada punto del flujo:
- **Sistema**: Decisiones automáticas basadas en lógica de negocio
- **Usuario**: Decisiones interactivas basadas en preferencias o necesidades

## Valor de la reflexión para el proyecto

### Impacto en la calidad del análisis

Esta reflexión ha mejorado significativamente la calidad de nuestro análisis RUP:

1. **Mayor precisión conceptual**: Los diagramas reflejan más fielmente la realidad del sistema
2. **Mejor trazabilidad**: La delimitación clara facilita el seguimiento entre fases
3. **Facilita el diseño posterior**: Las responsabilidades bien definidas simplifican la arquitectura
4. **Reduce ambigüedades**: Elimina interpretaciones erróneas sobre el alcance de cada caso de uso

### Aplicabilidad a otros casos de uso

Este principio es aplicable a otros casos de uso del proyecto, especialmente aquellos que:
- Presentan opciones al usuario
- Actúan como puntos de navegación
- Coordinan múltiples funcionalidades

### Precedente metodológico

Esta reflexión establece un precedente valioso para el equipo sobre cómo abordar la delimitación de responsabilidades en análisis RUP, proporcionando criterios claros para futuras decisiones similares.

## Comparación visual

### Versión original (problemática)
```
[Administrador] --> [MenuView] --> [AbrirProgramas]
                               --> [AbrirCursos]
                               --> [AbrirProfesores]
                               ...
```
*Implica ejecución automática de todas las navegaciones*

### Versión refinada (correcta)
```
[Administrador] --> [MenuView] ..> [AbrirProgramas]
                               ..> [AbrirCursos]  
                               ..> [AbrirProfesores]
                               ...
```
*Indica disponibilidad de navegaciones por decisión del usuario*

## Conclusiones

Esta reflexión metodológica demuestra la importancia de cuestionar constantemente nuestras representaciones durante el análisis RUP. La evolución del diagrama de colaboración de `mostrarMenu()` no solo mejoró la precisión técnica del modelo, sino que también estableció principios metodológicos valiosos para todo el proyecto.

**Lecciones clave:**
1. Los diagramas UML deben reflejar honestamente la semántica del dominio
2. La delimitación clara de responsabilidades mejora la calidad del análisis
3. Las representaciones visuales tienen implicaciones conceptuales profundas
4. La reflexión metodológica iterativa es esencial para la excelencia en RUP

Esta experiencia refuerza la validez del enfoque iterativo e incremental de RUP, donde el refinamiento constante de los artefactos conduce a un entendimiento más profundo y preciso del sistema en desarrollo.

---

*Documentado durante la fase de Elaboración del proyecto pySigHor-RUP*  
### Enlaces a diagramas

**Versión original (problemática):**
- Código fuente: [colaboracion.puml](https://github.com/mmasias/pySigHor/blob/b4996160b77a633d4a21453bcf5f8ea6597ed1e8/RUP/01-analisis/casos-uso/mostrarMenu/colaboracion.puml)
- Diagrama visual: [mostrarMenu-analisis.svg](https://github.com/mmasias/pySigHor/blob/b4996160b77a633d4a21453bcf5f8ea6597ed1e8/images/RUP/01-analisis/casos-uso/mostrarMenu/mostrarMenu-analisis.svg)

**Versión refinada (correcta):**
- Código fuente: [colaboracion.puml](https://github.com/mmasias/pySigHor/blob/b8f36ca7fd409c16fb03be9e3f21058ee78df985/RUP/01-analisis/casos-uso/mostrarMenu/colaboracion.puml)
- Diagrama visual: [mostrarMenu-analisis.svg](https://github.com/mmasias/pySigHor/blob/b8f36ca7fd409c16fb03be9e3f21058ee78df985/images/RUP/01-analisis/casos-uso/mostrarMenu/mostrarMenu-analisis.svg)

---

*Documentado durante la fase de Elaboración del proyecto pySigHor-RUP*