# Evidencia: la promesa de RUP - experimento metodológico

<div align=right>

|||||
|-|-|-|-|
|[🏠️](../README.md)|[Artículo](README.md)|[Contexto](contexto.md) | **Evidencia**

</div>

## Conversación específica

**Fecha**: 2025-07-08  
**Contexto**: Sesión de trabajo tras completar refinamiento del análisis MVC y reorganización estructural

### Reflexión inicial de Manuel

```
Estoy pensando que en este primer empujón lo dejaré todo con el análisis hecho 
y lo de tecnología lo abordaré(mos) luego, y en varias ramas. Si RUP es cierto, 
debería poder avanzar el análisis y, ante cambios de tecnología, todos los 
artefactos hasta ese punto no deberían verse afectados. ¿Lo confirmas? 
¿Lo desmientes? ¿Lo complementas?
```

### Respuesta de confirmación metodológica

**Confirmación rotunda**: Los artefactos de análisis deberían ser independientes de tecnología por diseño de RUP

**Complementos importantes**: Separación no es perfecta al 100%, factores que pueden causar iteraciones menores

**Validación como experimento**: Propuesta perfecta para probar RUP con evidencia verificable

### Decisión final

```
Agrega un documento en extraDocs con esta propuesta/pregunta/reflexión/decisión
```

## Estado del repositorio en este momento

### Commit de referencia

**Por determinar**: Este artículo se crea inmediatamente después de la decisión

### Estructura consolidada del proyecto

```
/pySigHor/
├── README.md                              # ✅ Proyecto general
├── RUP/
│   ├── README.md                          # ✅ Índice de disciplinas (reorganizado)
│   ├── 00-casos-uso/
│   │   ├── 00-modelo-del-dominio/         # ✅ Refinado (agregación vs composición)
│   │   ├── 01-actores-casos-uso/          # ✅ Completo con contexto administrador
│   │   └── 02-detalle/
│   │       └── iniciarSesion/             # ✅ Especificación + wireframes
│   └── 01-analisis/
│       └── casos-uso/
│           └── iniciarSesion/             # ✅ MVC exquisitamente modelado
├── extraDocs/
│   ├── README.md                          # ✅ Índice de artículos
│   ├── 001-saltarse-pasos-desarrollo/     # ✅ Disciplina metodológica
│   ├── 002-coherencia-estructural-readme/ # ✅ Organización de proyectos
│   └── 003-rup-independencia-tecnologica/ # 🎯 Este artículo
└── conversation-log.md                    # ✅ 24 conversaciones documentadas
```

### Artefactos que serán sometidos a prueba

**Disciplina de requisitos completa**:
- [x] Modelo del dominio (refinado con agregación/composición correcta)
- [x] Actores y casos de uso con patrón CRUD atómico
- [x] Diagrama de contexto granular del administrador
- [x] Especificación detallada `iniciarSesion()` con vocabulario purificado
- [x] Wireframes SALT conceptuales
- [ ] Especificación `crearPrograma()` (próximo)
- [ ] Resto de casos de uso CRUD
- [ ] Especificación `generarHorario()` (algoritmo complejo)
- [ ] Especificación `consultarHorario()`

**Disciplina de análisis que se completará**:
- [x] Análisis MVC `iniciarSesion()` exquisitamente modelado
- [ ] Análisis MVC para todos los casos de uso CRUD
- [ ] Análisis MVC `generarHorario()` 
- [ ] Análisis MVC `consultarHorario()`
- [ ] Paquetes de análisis organizados
- [ ] Jerarquías de clases identificadas

## Metodología establecida hasta este punto

### Calidad de procesos consolidada

**Especificación de casos de uso**:
- Diagramas de estado con `skinparam linetype polyline`
- Vocabulario purificado: Actor `solicita/introduce/proporciona`, Sistema `permite/presenta/muestra`
- Choice points con lógica implícita, sin validaciones redundantes
- Transformación de actores explícita (UsuarioNoRegistrado → Administrador)

**Análisis MVC refinado**:
- Diagramas de colaboración con `skinparam linetype polyline`
- Separación estricta: View ↔ Controller ↔ Model (sin atajos)
- Minimalismo conceptual: solo relaciones esenciales
- Tipos de retorno explícitos en colaboraciones
- Eliminación de redundancias sistemática

**Metodología de documentación**:
- PlantUML para diagramas (versionable)
- Markdown para documentación (consistente)
- extraDocs para lecciones metodológicas (innovador)
- conversation-log.md para trazabilidad completa

### Proceso de refinamiento iterativo

**Patrón establecido**:
1. Propuesta inicial basada en experiencia
2. Análisis crítico de principios metodológicos
3. Refinamiento colaborativo hasta consenso
4. Documentación de lecciones aprendidas

**Evidencia de calidad**:
- 4 iteraciones para diagrama de colaboración `iniciarSesion()`
- Corrección metodológica cuando se detectó intento de saltar pasos
- Reorganización estructural por coherencia conceptual
- Refinamiento del modelo del dominio por precisión semántica

## Comando para verificar el contexto

```bash
# Ver el estado exacto del proyecto en este momento
git log --oneline -10

# Ver la estructura de artefactos completados
find RUP/ -name "*.md" -o -name "*.puml" | sort

# Ver el índice de material didáctico
cat extraDocs/README.md

# Ver el estado de completitud de casos de uso
grep -r "✅\|🎯\|❌" RUP/ --include="*.md"
```

## Próximas actividades que validarán la hipótesis

### Inmediato: completar análisis

1. **`crearPrograma()`**: Aplicar metodología completa establecida
2. **Resto CRUD**: Replicar patrón con rigor metodológico
3. **`generarHorario()`**: Caso más complejo algorítmicamente
4. **`consultarHorario()`**: Completar conjunto de casos de uso

### Experimental: implementaciones tecnológicas

**Orden propuesto para validación**:
1. **API REST**: Mapeo directo desde análisis MVC
2. **Web SPA**: Verificación de separación frontend/backend  
3. **Desktop**: Reutilización de lógica en contexto diferente
4. **Mobile**: Adaptación a restricciones específicas

### Medición: evidencia de independencia

**Métricas a capturar**:
- Porcentaje de artefactos de análisis que permanecen inalterados
- Tiempo de desarrollo comparativo entre ramas tecnológicas
- Número de decisiones de diseño ya resueltas por el análisis
- Calidad y consistencia arquitectónica entre implementaciones

## Valor de este momento específico

### Decision point metodológico crítico

**Alternativas consideradas**:
- Completar análisis de un caso de uso → implementar → continuar
- Análisis parcial → diseño tecnológico → iteración
- **Elegida**: Análisis completo → múltiples implementaciones tecnológicas

**Rationale de la decisión**:
- Prueba auténtica de promesa fundamental de RUP
- Experimento metodológico con evidencia verificable
- Material didáctico de calidad excepcional

### Entusiasmo metodológico auténtico

La expresión "a mi también me emociona :)" captura el aspecto emocional de hacer metodología rigurosa. No es solo validación técnica, sino pasión por demostrar que los principios metodológicos sí importan.

## Compromiso con la evidencia

**Honestidad intelectual**: Documentar tanto éxitos como limitaciones de RUP
**Rigor experimental**: Medir cuantitativamente la independencia tecnológica  
**Valor didáctico**: Proceso tan importante como resultados para material educativo

Este artículo representa el momento donde el proyecto pySigHor trasciende la modernización técnica para convertirse en laboratorio de experimentación metodológica rigurosa.