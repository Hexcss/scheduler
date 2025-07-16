# pySiGHor - Sistema generador de horarios

En 1998, en la asignatura de TPD (Taller de procesamiento de datos) de Ing. Industrial y de Sistemas de la Universidad de Piura, impartida por el prof. Roberto Castro, aplicamos lo que habíamos aprendido en [Investigación de Operaciones](https://es.wikipedia.org/wiki/Programaci%C3%B3n_lineal) para desarrollar SIGHOR, sistema generador de horarios. ¡Una joyita en Visual Basic 3!

**Proyecto de modernización**: Aplicación completa de metodología RUP para reingeniería del sistema legacy, con énfasis en pureza metodológica y trazabilidad sistemática.


<div align=center>

|**Navegación**
|:-:
|[🔄 Metodología RUP](/RUP/README.md) / [📊 Estado actual](/RUP/99-seguimiento/) / [💡 Reflexiones metodológicas](/extraDocs/README.md) / [📋 Ingeniería inversa inicial](/extraDocs/000-ingenieria-inversa/README.md) 

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
