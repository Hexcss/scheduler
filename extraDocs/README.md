<div align=right>
 
|[![](https://img.shields.io/badge/-Inicio-FFF?style=flat&logo=Emlakjet&logoColor=black)](../README.md) [![](https://img.shields.io/badge/-RUP-FFF?style=flat&logo=Elsevier&logoColor=black)](../RUP/README.md) [![](https://img.shields.io/badge/-Modelo_del_dominio-FFF?style=flat&logo=freedesktop.org&logoColor=black)](../RUP/00-casos-uso/00-modelo-del-dominio/modelo-dominio.md) [![](https://img.shields.io/badge/-Actores_&_Casos_de_Uso-FFF?style=flat&logo=crewunited&logoColor=black)](../RUP/00-casos-uso/01-actores-casos-uso/actores-casos-uso.md) [![](https://img.shields.io/badge/-Diagrama_de_contexto-FFF?style=flat&logo=diagramsdotnet&logoColor=black)](../RUP/00-casos-uso/01-actores-casos-uso/diagrama-contexto-administrador.md) [![](https://img.shields.io/badge/-Detalle_&_Prototipo-FFF?style=flat&logo=typeorm&logoColor=black)](../RUP/00-casos-uso/02-detalle/README.md) [![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](../RUP/01-analisis/casos-uso/README.md)
|-:
|[![](https://img.shields.io/badge/-Estado-FFF?style=flat&logo=greensock&logoColor=black)](../RUP/README.md) [![](https://img.shields.io/badge/-Propuesta_de_dashboard-FFF?style=flat&logo=composer&logoColor=black)](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg) [![](https://img.shields.io/badge/-Reflexiones-FFF?style=flat&logo=hootsuite&logoColor=black)](README.md) [![](https://img.shields.io/badge/-Log_de_conversación-FFF?style=flat&logo=gnometerminal&logoColor=black)](../conversation-log.md)

</div>

# extraDocs - artículos metodológicos del proyecto pySigHor

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
| 003 | [La promesa de RUP: análisis independiente de tecnología - experimento metodológico en tiempo real](003-rup-independencia-tecnologica/articulo.md) | [Por determinar] | Experimentación metodológica |
| 004 | [Dashboard visual RUP: diagrama de contexto como herramienta de gestión de proyecto](004-dashboard-visual-rup-casos-uso/articulo.md) | [Por determinar] | Innovación metodológica |
| 005 | [Aplicación de etiquetado ético en colaboración humano-IA: caso de estudio pySigHor](005-etiquetado-etico-colaboracion-humano-ia/articulo.md) | [Por determinar] | Ética en colaboración humano-IA |
| 006 | [Reflexión metodológica: delimitación del alcance en diagramas de colaboración RUP](006-reflexion-alcance-casos-uso-colaboracion/articulo.md) | [`b8f36ca`](https://github.com/mmasias/pySigHor/tree/b8f36ca7fd409c16fb03be9e3f21058ee78df985) | Análisis RUP y alcance de casos de uso |
| 007 | [Diagramas de contexto múltiples por tecnología: pureza metodológica vs implementación práctica](007-diagramas-contexto-multiples-tecnologias/articulo.md) | [`7975ac6`](https://github.com/mmasias/pySigHor/tree/7975ac6) | Arquitectura multiplataforma y pureza RUP |
| 008 | [Filosofía C→U: Integración de Creación y Edición en Casos de Uso CRUD](008-filosofia-crud-creacion-edicion/README.md) | [`69c0f68`](https://github.com/mmasias/pySigHor/tree/69c0f681227d1a0aad86ea8fa21313db09d570d7) | Metodología CRUD y experiencia de usuario |
| 009 | [Valoración de un tercer LLM (ChatGPT) de la interacción](009-opinion-tercer-llm/articulo.md) | [`69c0f68`](https://github.com/mmasias/pySigHor/tree/69c0f681227d1a0aad86ea8fa21313db09d570d7) | Análisis externo de colaboración humano-IA |
| 010 | [Incidente de aplicación automática post-compactación: análisis de límites de autonomía en colaboración humano-IA](010-incidente-aplicacion-automatica-post-compactacion/README.md) | [`1d4b7f4`](https://github.com/mmasias/pySigHor/commit/1d4b7f4) → [`a8dc1c9`](https://github.com/mmasias/pySigHor/commit/a8dc1c9) → [`7269793`](https://github.com/mmasias/pySigHor/commit/7269793) → [`8bafd43`](https://github.com/mmasias/pySigHor/commit/8bafd43) → [`d1308ed`](https://github.com/mmasias/pySigHor/commit/d1308ed) → [`c717c8a`](https://github.com/mmasias/pySigHor/commit/c717c8a) | Caso de estudio de control de calidad y protocolos de colaboración |
| 011 | [Sobreoptimización de LLMs: El Problema de la Navegación Anticipada en RUP](011-sobreoptimizacion-llms-navegacion-rup/README.md) | [`c2b488f`](https://github.com/mmasias/pySigHor/commit/c2b488f) | Patrón de completismo automático en colaboración humano-IA |

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