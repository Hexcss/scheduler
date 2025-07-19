<div align=right>
 
|[![](https://img.shields.io/badge/-Inicio-FFF?style=flat&logo=Emlakjet&logoColor=black)](/README.md) [![](https://img.shields.io/badge/-RUP-FFF?style=flat&logo=Elsevier&logoColor=black)](/RUP/README.md) [![](https://img.shields.io/badge/-Modelo_del_dominio-FFF?style=flat&logo=freedesktop.org&logoColor=black)](/RUP/00-casos-uso/00-modelo-del-dominio/modelo-dominio.md) [![](https://img.shields.io/badge/-Actores_&_Casos_de_Uso-FFF?style=flat&logo=crewunited&logoColor=black)](/RUP/00-casos-uso/01-actores-casos-uso/actores-casos-uso.md) [![](https://img.shields.io/badge/-Detalle_&_Prototipo-FFF?style=flat&logo=typeorm&logoColor=black)](/RUP/00-casos-uso/02-detalle/README.md) [![](https://img.shields.io/badge/-Análisis-FFF?style=flat&logo=multisim&logoColor=black)](/RUP/01-analisis/casos-uso/README.md)
|-:
|[![](https://img.shields.io/badge/-Estado-FFF?style=flat&logo=greensock&logoColor=black)](/RUP/README.md) [![](https://img.shields.io/badge/-Propuesta_de_dashboard-FFF?style=flat&logo=composer&logoColor=black)](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg) [![](https://img.shields.io/badge/-Reflexiones-FFF?style=flat&logo=hootsuite&logoColor=black)](/extraDocs/README.md) [![](https://img.shields.io/badge/-Log_de_conversación-FFF?style=flat&logo=gnometerminal&logoColor=black)](/conversation-log.md)

</div>

# pySigHor - Sistema generador de horarios

En 1998, en la asignatura de TPD (Taller de procesamiento de datos) de Ing. Industrial y de Sistemas de la Universidad de Piura, impartida por el prof. Roberto Castro, aplicamos lo que habíamos aprendido en [Investigación de Operaciones](https://es.wikipedia.org/wiki/Programaci%C3%B3n_lineal) para desarrollar SIGHOR, sistema generador de horarios. ¡Una joyita en Visual Basic 3!

<div align=center>

|El proyecto||
|-|-
|[Proceso(s)](/RUP/README.md)|Aplicación de la metodología RUP para la reingeniería del sistema, con énfasis en pureza metodológica y trazabilidad sistemática.
|[Estado actual](https://raw.githubusercontent.com/mmasias/pySigHor/main/images/RUP/99-seguimiento/diagrama-contexto-administrador.svg)|Propuesta de artefacto dinámico de seguimiento
|[Reflexiones...](/extraDocs/README.md)|Artículos de reflexión a partir de la dinámica de trabajo

</div>

## Estructura del repositorio

```text
pySigHor/
├── src/                             # Código fuente original de Visual Basic 3.0
│   ├── Horario.bas                  # Implementación del algoritmo principal de horarios
│   ├── MODULO.BAS                   # Utilidades globales y configuración
│   ├── *.FRM                        # Formularios de interfaz de usuario
│   ├── DATOS/                       # Archivos de base de datos Microsoft Access
│   └── Reporte/                     # Archivos de Crystal Reports
├── RUP/                             # Estructura del proyecto RUP
│   ├── 00-casos-uso/                # Casos de uso (requisitos)
│   │   ├── 00-modelo-del-dominio/
│   │   ├── 01-actores-casos-uso/
│   │   └── 02-detalle/
│   ├── 01-analisis/                 # Análisis
│   │   └── casos-uso/
│   ├── 02-diseño/                   # Diseño
│   └── 99-seguimiento/              # Dashboard y seguimiento
├── extraDocs/                       # Documentación adicional y análisis
│   ├── 000-ingenieria-inversa/
│   ├── 001-saltarse-pasos-desarrollo/
│   ├── 002-coherencia-estructural-readme/
│   ├── 003-rup-independencia-tecnologica/
│   ├── 004-dashboard-visual-rup-casos-uso/
│   ├── 005-etiquetado-etico-colaboracion-humano-ia/
│   ├── 006-reflexion-alcance-casos-uso-colaboracion/
│   ├── 007-diagramas-contexto-multiples-tecnologias/
│   └── 999-leyes-proyecto/
├── images/                          # Capturas de pantalla y assets de documentación
│   ├── RUP/                         # Imágenes generadas de diagramas RUP
│   └── extraDocs/                   # Imágenes de documentación adicional
├── extraFiles/                      # Archivos de licencias y configuración legacy
├── drafts-temp/                     # Borradores y archivos temporales
├── conversation-log.md              # Registro completo de conversaciones del proyecto
├── *.md                             # Archivos de documentación y análisis
└── README.md                        # Resumen del proyecto
```

## La aplicación

<div align=center>

![](/images/F8zDugwX0AArV7H.jpeg)

---

![](/images/F8zDzlZXQAAe-o8.jpeg)

---

![](/images/F8zDw0CWEAADw8U.jpeg)

---

![](/images/F8zD4afXAAIsnGn.jpeg)

---

![](/images/F8zD2blXAAArega.jpeg)

</div>

## Hitos metodológicos que guían el trabajo (y se esperan alcanzar)

### Pureza conceptual

- **Casos de uso atómicos** identificados y organizados
- **Nomenclatura tecnológicamente agnóstica** aplicada sistemáticamente  
- **Diagramas de contexto** libres de sesgo tecnológico
- **Trazabilidad completa** desde requisitos hasta análisis de colaboración

### Patrón metodológico

- **Conexión sistemática** entre casos de uso mediante colaboraciones
- **Marco escalable** para análisis futuro de casos de uso restantes

### Documentación metodológica

- **Artículos técnicos** documentando lecciones aprendidas y decisiones metodológicas
- **Trazabilidad completa** en conversation-log con todas las conversaciones registradas
- **Patrones reutilizables** establecidos para proyectos RUP similares
