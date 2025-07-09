# SigHor - Análisis del caso de uso: mostrarMenu()

## información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Fase RUP**: Inception (Inicio)
- **Disciplina**: Análisis
- **Versión**: 1.0
- **Fecha**: 2025-01-09
- **Autor**: Equipo de desarrollo

## propósito

Análisis del caso de uso `mostrarMenu()` mediante diagrama de colaboración MVC, identificando clases de análisis y sus interacciones conceptuales para realizar el caso de uso.

## diagrama de colaboración

<div align=center>

|![Análisis mostrarMenu()](/images/RUP/01-analisis/casos-uso/mostrarMenu/mostrarMenu-analisis.svg)|
|-|
|**Disciplina**: Análisis RUP<br>**Enfoque**: Diagramas de colaboración MVC|

</div>

## clases de análisis identificadas

### clases model (naranja #F2AC4E)
|Clase|Responsabilidad|Trazabilidad|
|-|-|-|
|**Sesion**|Entidad que mantiene estado de autenticación activa|Concepto del caso de uso|
|**OpcionesMenu**|Entidad que representa opciones disponibles para el usuario|Análisis puro|
|**PermisosRepository**|Concepto puro de acceso a permisos y opciones de usuario|Análisis puro|

### clases view (azul #629EF9)
|Clase|Responsabilidad|Derivación|
|-|-|-|
|**MenuView**|Ventana principal de navegación del sistema|Wireframe SALT|

### clases controller (verde #b5bd68)
|Clase|Responsabilidad|Caso de uso|
|-|-|-|
|**MostrarMenuController**|Control y coordinación completa del caso de uso|mostrarMenu()|

### colaboraciones (verde claro #CDEBA5)
|Colaboración|Propósito|Invocación|
|-|-|-|
|**:Collaboration ListarProgramas**|Invocación del caso de uso de gestión de programas|Según selección|
|**:Collaboration ListarCursos**|Invocación del caso de uso de gestión de cursos|Según selección|
|**:Collaboration ListarProfesores**|Invocación del caso de uso de gestión de profesores|Según selección|
|**:Collaboration ListarEdificios**|Invocación del caso de uso de gestión de edificios|Según selección|
|**:Collaboration ListarAulas**|Invocación del caso de uso de gestión de aulas|Según selección|
|**:Collaboration ListarRecursos**|Invocación del caso de uso de gestión de recursos|Según selección|
|**:Collaboration AsignarProfesor**|Invocación del caso de uso de asignaciones|Según selección|
|**:Collaboration GenerarHorario**|Invocación del caso de uso de generación|Según selección|
|**:Collaboration ConsultarHorario**|Invocación del caso de uso de consulta|Según selección|
|**:Collaboration CerrarSesion**|Invocación del caso de uso de cierre de sesión|Según selección|

## mensajes de colaboración

### flujo principal
|Origen|Destino|Mensaje|Intención|
|-|-|-|-|
|**Administrador**|**MenuView**|`mostrarMenu()`|Solicitar presentación del menú|
|**MenuView**|**MostrarMenuController**|`prepararMenu(sesion)`|Delegar preparación del menú|
|**MostrarMenuController**|**Sesion**|`getUsuario()`|Obtener información del usuario autenticado|
|**MostrarMenuController**|**PermisosRepository**|`obtenerOpciones(usuario)`|Obtener opciones disponibles para el usuario|
|**MostrarMenuController**|**OpcionesMenu**|`crearOpciones(opciones)`|Crear estructura de opciones|
|**MenuView**|**OpcionesMenu**|`getOpciones()`|Obtener opciones para presentar|
|**MenuView**|**Administrador**|`presentarOpciones(opciones)`|Mostrar opciones disponibles|
|**Administrador**|**MenuView**|`seleccionarOpcion(opcion)`|Seleccionar opción específica|
|**MenuView**|**:Collaboration [OpcionSeleccionada]**|`invocar(sesion)`|Activar caso de uso seleccionado|

## enlaces de dependencia
- **MenuView** conoce a **MostrarMenuController** (delegación)
- **MenuView** conoce a **OpcionesMenu** (acceso a opciones)
- **MenuView** conoce a **Sesion** (acceso a estado)
- **MenuView** conoce a **todas las colaboraciones** (activación subsiguiente)
- **MostrarMenuController** conoce a **PermisosRepository** (obtención opciones)
- **MostrarMenuController** conoce a **OpcionesMenu** (creación estructura)
- **MostrarMenuController** conoce a **Sesion** (acceso a usuario)
- **PermisosRepository** conoce a **OpcionesMenu** (gestión opciones)

## trazabilidad con artefactos previos

### con especificación detallada
- **Estados internos** → **Clases de análisis**
- **PresentandoMenu** → **MenuView.presentarOpciones()**
- **EsperandoSeleccion** → **MenuView.seleccionarOpcion()**
- **Opciones del menú** → **OpcionesMenu**

### con wireframe
- **Menú principal** → **MenuView**
- **Categorías de opciones** → **OpcionesMenu.organizarPorCategoria()**
- **Botones de selección** → **MenuView.seleccionarOpcion()**

### con modelo del dominio
- **Usuario** (entidad) → **Sesion.getUsuario()**
- **Permisos** (concepto) → **PermisosRepository**

## principios de análisis aplicados

### patrón mvc
- **Un controlador por caso de uso**: MostrarMenuController
- **Vista derivada de prototipo**: MenuView desde wireframe SALT
- **Modelo del dominio**: OpcionesMenu con trazabilidad directa

### diagramas de colaboración
- **Foco en enlaces**: dependencias conceptuales, no secuencia temporal
- **Mensajes de intención**: qué se quiere lograr, no cómo implementar
- **Trazabilidad**: cada clase identificada participa en la colaboración

### análisis puro
- **Sin tecnología**: PermisosRepository es concepto, no implementación
- **Sin detalles de UI**: MenuView es interfaz conceptual
- **Sin implementación**: mensajes expresan intención de negocio

## características del análisis

### responsabilidades identificadas
- **MenuView**: Presentar opciones y capturar selección del usuario
- **MostrarMenuController**: Orquestar lógica completa del caso de uso
- **PermisosRepository**: Proveer acceso conceptual a opciones disponibles
- **OpcionesMenu**: Representar estructura de opciones disponibles
- **Sesion**: Mantener estado de autenticación y información del usuario

### relaciones conceptuales
- **Delegación**: Vista delega lógica de negocio al controlador
- **Acceso**: Controlador accede a repositorio para obtener opciones
- **Creación**: Controlador crea estructura de opciones
- **Coordinación**: Vista coordina activación del caso de uso seleccionado

## centralidad del caso de uso

### hub de navegación
- **Punto de convergencia**: Todos los casos de uso regresan al menú
- **Punto de divergencia**: Desde el menú se accede a todas las funcionalidades
- **Multiplicidad de colaboraciones**: Conecta con todos los casos de uso del sistema

### gestión de flujo
- **Control de navegación**: Determina qué opciones están disponibles
- **Coordinación de casos**: Activa el caso de uso seleccionado
- **Mantenimiento de estado**: Preserva la sesión entre navegaciones

## conexión con disciplinas rup

### desde requisitos
- **Especificación detallada**: Estados del caso de uso → responsabilidades de clases
- **Prototipo**: Wireframes → diseño conceptual de vistas
- **Casos de uso**: Flujo de conversación → mensajes de colaboración

### hacia diseño
- **Clases conceptuales**: Base para clases de diseño tecnológico
- **Colaboraciones**: Patrones para implementación en frameworks específicos
- **Responsabilidades**: Guía para distribución en arquitectura técnica

**Código fuente:** [colaboracion.puml](colaboracion.puml)

## referencias

- [Especificación detallada](../../00-casos-uso/02-detalle/mostrarMenu/README.md)
- [Modelo del dominio](../../00-casos-uso/00-modelo-del-dominio/modelo-dominio.md)
- [conversation-log.md](../../../../conversation-log.md) - Metodología de análisis RUP