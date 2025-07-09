# SigHor - Caso de uso detallado: mostrarMenu()

## información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Fase RUP**: Inception (Inicio)
- **Disciplina**: Requisitos
- **Versión**: 1.0
- **Fecha**: 2025-01-09
- **Autor**: Equipo de desarrollo

## propósito

Especificación detallada del caso de uso `mostrarMenu()` mediante diagrama de estado, mostrando la conversación completa entre el Administrador y el Sistema para la presentación del menú principal.

## información del caso de uso

|Atributo|Valor|
|-|-|
|**Nombre**|mostrarMenu()|
|**Actor primario**|Administrador|
|**Objetivo**|Presentar menú principal con opciones de navegación a todas las funcionalidades del sistema|
|**Tipo**|Primario, esencial|
|**Nivel**|Objetivo de usuario|
|**Precondición**|Usuario autenticado como Administrador|
|**Postcondición exitosa**|Menú principal mostrado, usuario puede navegar a cualquier funcionalidad|
|**Postcondición de fallo**|N/A - caso de uso sin condiciones de fallo|

## diagrama de especificación

<div align=center>

|![Caso de uso: mostrarMenu()](/images/RUP/00-casos-uso/02-detalle/mostrarMenu/mostrarMenu.svg)|
|-|
|Código fuente: [especificacion.puml](especificacion.puml)|

</div>

## prototipo de interfaz

### propósito del prototipo
**Objetivo:** Que te digan que NO lo antes posible - validar la especificación antes de invertir en desarrollo.

### wireframes

#### pantalla 1: menú principal
<div align=center>

|![Wireframe: Menú principal](/images/RUP/00-casos-uso/02-detalle/mostrarMenu/mostrarMenu-wireframe.svg)|
|-|
|**Estado**: PresentandoMenu|

</div>

**Correspondencia con especificación:**
- Sistema "presenta menú principal"
- Actor "visualiza opciones disponibles"

### validaciones del wireframe
- ¿El menú refleja correctamente todas las opciones del diagrama de contexto?
- ¿Es clara la organización de las opciones por categorías?
- ¿La terminología es consistente con otros casos de uso?
- ¿Faltan elementos en la especificación que el wireframe revela?

**Código fuente:** [prototipo.puml](prototipo.puml)

## conversación detallada

### flujo principal (único)

|Actor|Acción|Sistema|Respuesta|
|-|-|-|-|
|**Administrador**|solicita mostrar menú||
||**Sistema**|presenta menú principal|• listarProgramas()<br>• listarCursos()<br>• listarProfesores()<br>• listarEdificios()<br>• listarAulas()<br>• listarRecursos()<br>• asignarProfesorACurso()<br>• generarHorario()<br>• consultarHorario()<br>• cerrarSesion()|
|**Administrador**|solicita una de las opciones||

## estados internos del caso de uso

|Estado|Descripción|Responsabilidad|
|-|-|-|
|**PresentandoMenu**|Estado donde se muestra el menú principal con todas las opciones|Sistema debe presentar todas las opciones de navegación|
|**EsperandoSeleccion**|Usuario está evaluando opciones disponibles|Sistema permanece disponible para recibir selección|

## opciones del menú

### gestión de datos maestros
- **Gestionar Programas**: Navegar a `listarProgramas()`
- **Gestionar Cursos**: Navegar a `listarCursos()`
- **Gestionar Profesores**: Navegar a `listarProfesores()`
- **Gestionar Edificios**: Navegar a `listarEdificios()`
- **Gestionar Aulas**: Navegar a `listarAulas()`
- **Gestionar Recursos**: Navegar a `listarRecursos()`

### funcionalidades especiales
- **Asignar Profesores**: Navegar a `asignarProfesorACurso()`
- **Generar Horario**: Navegar a `generarHorario()`
- **Consultar Horario**: Navegar a `consultarHorario()`

### funcionalidades del sistema
- **Cerrar Sesión**: Navegar a `cerrarSesion()`

## conexión con diagrama de contexto

Este caso de uso corresponde a la transición:
- **AUTENTICANDO** → `mostrarMenu()` → **MENU_PRINCIPAL**

Y también a todas las transiciones de retorno desde estados específicos:
- **LISTANDO_PROGRAMAS** → `mostrarMenu()` → **MENU_PRINCIPAL**
- **LISTANDO_CURSOS** → `mostrarMenu()` → **MENU_PRINCIPAL**
- **LISTANDO_PROFESORES** → `mostrarMenu()` → **MENU_PRINCIPAL**
- **LISTANDO_EDIFICIOS** → `mostrarMenu()` → **MENU_PRINCIPAL**
- **LISTANDO_AULAS** → `mostrarMenu()` → **MENU_PRINCIPAL**
- **LISTANDO_RECURSOS** → `mostrarMenu()` → **MENU_PRINCIPAL**
- **CONFIGURANDO_ASIGNACIONES** → `mostrarMenu()` → **MENU_PRINCIPAL**
- **GENERANDO_HORARIO** → `mostrarMenu()` → **MENU_PRINCIPAL**
- **CONSULTANDO_HORARIOS** → `mostrarMenu()` → **MENU_PRINCIPAL**

La especificación detalla el interior del estado **MENU_PRINCIPAL** del diagrama de contexto del Administrador de Horarios.

## vocabulario utilizado

### actor (Administrador)
- **necesita**: expresa la intención de realizar una acción
- **visualiza**: observa y comprende las opciones presentadas
- **selecciona**: elige una opción específica del menú

### sistema
- **presenta**: muestra de forma organizada las opciones disponibles

## características metodológicas

### separación de responsabilidades
- **Actor**: Solo navega y selecciona opciones
- **Sistema**: Solo presenta opciones, no procesa lógica de negocio

### ausencia de detalles de implementación
- No especifica tecnología de interfaz
- No incluye detalles de presentación específica
- No menciona estructura de datos o almacenamiento

### conversación atómica
- El caso de uso representa una conversación completa
- Tiene objetivo claro: presentar opciones de navegación
- Termina con selección de opción específica

### rol del actor
- **Entrada**: Administrador (recién autenticado o regresando de otra función)
- **Salida**: Administrador (con conocimiento de opciones disponibles)
- **Estado**: Permanece como Administrador durante toda la conversación

### centralidad del caso de uso
- **Hub central**: Conecta con todos los demás casos de uso del sistema
- **Punto de retorno**: Destino común desde todas las funcionalidades
- **Patrón de navegación**: Establece el flujo de navegación del sistema

## referencias

- [Diagrama de contexto - Administrador](../../01-actores-casos-uso/diagrama-contexto-administrador.md)
- [Modelo del dominio](../../00-modelo-del-dominio/modelo-dominio.md)
- [conversation-log.md](../../../../conversation-log.md) - Metodología de especificación detallada