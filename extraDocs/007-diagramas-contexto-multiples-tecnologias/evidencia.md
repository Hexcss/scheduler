# Evidencia: diagramas de contexto múltiples por tecnología

<div align=right>

|||||
|-|-|-|-|
|[🏠️](../README.md)|[Artículo](README.md)|[Contexto](contexto.md) | **Evidencia**

</div>

## Artefactos creados

### **1. Artículo Principal**
- **Archivo**: `articulo.md`
- **Contenido**: Análisis completo de la propuesta metodológica
- **Secciones**: Problema, propuesta, metodología, beneficios, implementación

### **2. Contexto de la Reflexión**
- **Archivo**: `contexto.md`
- **Contenido**: Origen y antecedentes de la propuesta
- **Elementos**: Conversación disparadora, stakeholders, contexto metodológico

### **3. Diagramas de Ejemplo**

#### **Diagrama Conceptual Puro**
- **Archivo**: `diagrama-conceptual-puro.puml`
- **Estados representativos**:
  - `GESTIONANDO_PROGRAMAS` (en lugar de `PROGRAMAS_ABIERTO`)
  - `PROCESANDO_HORARIOS` (en lugar de estados tecnológicos)
  - `CONSULTANDO_HORARIOS` (capacidad, no implementación)

#### **Diagrama GUI/Desktop**
- **Archivo**: `diagrama-gui-desktop.puml`
- **Características**:
  - Estados como `VENTANA_PROGRAMAS_ABIERTA`
  - Paradigma MDI (Multiple Document Interface)
  - Ventanas simultáneas y dialogs modales

#### **Diagrama Web/SPA**
- **Archivo**: `diagrama-web-spa.puml`
- **Características**:
  - Estados como `PAGINA_PROGRAMAS`
  - Navegación por rutas URL
  - Componentes montados/desmontados

#### **Diagrama CLI**
- **Archivo**: `diagrama-cli.puml`
- **Características**:
  - Estados como `CONTEXTO_PROGRAMAS`
  - Prompts diferenciados por contexto
  - Comandos secuenciales sin persistencia visual

## Demostración de la propuesta

### **Problema Resuelto**

#### Antes (Estado actual):
```
Diagrama único → Estados acoplados → Análisis condicionado
    ↓                    ↓                     ↓
PROGRAMAS_ABIERTO → GUI-centric → Clases con sesgo tecnológico
```

#### Después (Propuesta):
```
Diagrama Conceptual → Estados puros → Análisis independiente
    ↓                     ↓                ↓
GESTIONANDO_PROGRAMAS → Capacidad → Clases conceptuales
    ↓
Refinamiento tecnológico
    ↓
Múltiples implementaciones (GUI, Web, CLI, Móvil)
```

### **Trazabilidad Demostrada**

| Concepto Puro | GUI Desktop | Web SPA | CLI |
|---------------|-------------|---------|-----|
| `GESTIONANDO_PROGRAMAS` | `VENTANA_PROGRAMAS_ABIERTA` | `PAGINA_PROGRAMAS` | `CONTEXTO_PROGRAMAS` |
| `gestionarProgramas()` | `abrirVentanaProgramas()` | `navegarAProgramas()` | `comando_programas` |
| `completarGestion()` | `cerrarVentana()` | `navegarADashboard()` | `exit` |

### **Validación Cruzada**

**Cobertura completa:** Todos los diagramas tecnológicos cubren los mismos casos de uso conceptuales:
- ✅ Gestión de programas, cursos, profesores, edificios, aulas, recursos
- ✅ Asignación de profesores a cursos
- ✅ Generación de horarios
- ✅ Consulta de resultados

**Consistencia mantenida:** Cada tecnología adapta la implementación pero preserva la funcionalidad conceptual.

## Aplicabilidad práctica

### **Para el Proyecto pySigHor-RUP**

#### Acciones inmediatas derivadas:
1. **Renombrar caso de uso**: `mostrarMenu()` → `abrirSistema()`
2. **Crear diagrama conceptual puro** con estados de capacidades
3. **Rederivación del análisis** desde base conceptual pura
4. **Planificación de implementaciones** para múltiples tecnologías

#### Beneficios esperados:
- **Análisis RUP puro** independiente de consideraciones tecnológicas
- **Flexibilidad arquitectónica** para diferentes plataformas
- **Trazabilidad mantenida** desde concepto hasta código
- **Escalabilidad** para futuras tecnologías

### **Para Otros Proyectos**

#### Criterios de aplicabilidad:
- ✅ Proyectos que requieren múltiples interfaces tecnológicas
- ✅ Uso de metodología RUP con énfasis en pureza de análisis
- ✅ Necesidad de trazabilidad entre concepto e implementación
- ✅ Equipos con roles separados (analistas vs desarrolladores)

## Validación metodológica

### **Cumplimiento de Principios RUP**

#### ✅ Architecture-centric:
- La arquitectura conceptual dirige las decisiones tecnológicas
- Cada tecnología es un refinamiento arquitectónico específico

#### ✅ Use-case driven:
- Los casos de uso conceptuales permanecen libres de implementación
- Las variantes tecnológicas adaptan sin cambiar la esencia

#### ✅ Iterative and incremental:
- Refinamiento progresivo desde análisis puro hacia implementación
- Cada iteración puede explorar diferentes tecnologías

### **Preservación de la Pureza Metodológica**

#### Separación clara de responsabilidades:
- **Analistas**: Trabajan únicamente con diagrama conceptual puro
- **Arquitectos**: Deciden tecnologías y crean diagramas específicos
- **Desarrolladores**: Implementan siguiendo diagramas tecnológicos

#### Sin contaminación cruzada:
- El análisis no se ve influenciado por limitaciones tecnológicas
- Las implementaciones no distorsionan los conceptos de negocio

## Contribución al estado del arte

### **Problema Metodológico Identificado**
- **Tensión no resuelta** entre pureza de análisis e implementación práctica
- **Limitaciones de enfoques únicos** (muy abstracto vs muy específico)
- **Falta de puentes sistemáticos** entre concepto e implementación

### **Solución Propuesta**
- **Arquitectura de diagramas múltiples** que resuelve la tensión
- **Metodología sistemática** de refinamiento tecnológico
- **Preservación de trazabilidad** entre todos los niveles

### **Aplicabilidad General**
Esta metodología es aplicable más allá de RUP, extendiéndose a cualquier enfoque de desarrollo que busque equilibrar rigor metodológico con practicidad implementativa.

## Conclusión de la evidencia

Los artefactos creados demuestran la viabilidad y beneficios de la propuesta de **diagramas de contexto múltiples por tecnología**. La solución resuelve efectivamente la tensión entre pureza metodológica y consideraciones prácticas, proporcionando un marco sistemático para proyectos que requieren implementación multiplataforma sin sacrificar la integridad del análisis RUP.