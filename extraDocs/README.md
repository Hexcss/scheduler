# extraDocs - Artículos metodológicos del proyecto pySigHor

Esta carpeta contiene artículos estructurados que documentan reflexiones metodológicas específicas surgidas durante el desarrollo del proyecto, con referencias exactas a commits y contexto del repositorio.

## Objetivo

Crear material didáctico de primera calidad que combine:
- **Experiencia real**: Dilemas y decisiones reales del proyecto
- **Trazabilidad temporal**: Enlaces a commits específicos donde ocurrieron las situaciones
- **Reflexión estructurada**: Análisis sistemático de lecciones aprendidas
- **Evidencia concreta**: El código y los artefactos como testimonio de las decisiones

## Estructura de artículos

Cada artículo sigue la estructura:
```
XXX-nombre-del-articulo/
├── articulo.md      # Contenido principal del artículo
├── evidencia.md     # Enlaces a commits específicos y evidencia
└── contexto.md      # Estado del proyecto en el momento específico
```

## Índice de artículos

| # | Título | Commit | Tema |
|---|--------|--------|------|
| 000 | [Ingeniería inversa del sistema SigHor (1998)](000-ingenieria-inversa/) | [Inicio del proyecto] | Análisis de sistema legacy |
| 001 | [El problema de saltarse pasos: de la ilusión de eficiencia al caos sistemático](001-saltarse-pasos-desarrollo/articulo.md) | [`b5711c76`](https://github.com/mmasias/pySigHor/tree/b5711c76a9b96432252c596b0d0c53815550fdf8) | Disciplina metodológica RUP |
| 002 | [Coherencia estructural: cuando los README.md están en el lugar equivocado](002-coherencia-estructural-readme/articulo.md) | [Por determinar] | Organización de proyectos |

## Uso didáctico

Estos artículos sirven como:
- **Casos de estudio** para enseñanza de metodologías de software
- **Ejemplos concretos** de aplicación práctica de RUP
- **Lecciones aprendidas** transferibles a otros proyectos
- **Evidencia** de que las metodologías previenen problemas reales

## Contribuciones

Los artículos se generan cuando surge una reflexión metodológica importante durante el desarrollo. Cada uno debe:
- Estar asociado a un commit específico
- Proporcionar contexto del estado del proyecto
- Incluir reflexión estructurada sobre la lección aprendida
- Mantener trazabilidad con evidencia concreta