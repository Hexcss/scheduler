# SigHor - Caso de uso detallado: iniciarSesion()

## información del artefacto

- **Proyecto**: pySigHor - Modernización del Sistema Generador de Horarios
- **Fase RUP**: Inception (Inicio)
- **Versión**: 1.0
- **Fecha**: 2025-01-05
- **Autor**: Equipo de desarrollo

## propósito

Especificación detallada del caso de uso `iniciarSesion()` mediante diagrama de estado, mostrando la conversación completa entre el UsuarioNoRegistrado y el Sistema para el proceso de autenticación.

## información del caso de uso

|Atributo|Valor|
|-|-|
|**Nombre**|iniciarSesion()|
|**Actor primario**|UsuarioNoRegistrado|
|**Objetivo**|Autenticar credenciales del usuario para permitir acceso al sistema|
|**Tipo**|Primario, esencial|
|**Nivel**|Objetivo de usuario|
|**Precondición**|Usuario no está autenticado en el sistema|
|**Postcondición exitosa**|UsuarioNoRegistrado se convierte en Administrador, sistema listo para mostrar menú principal|
|**Postcondición de fallo**|Usuario no autenticado, sistema permanece en estado inicial|

## diagrama de especificación

<div align=center>

|![Caso de uso: iniciarSesion()](/images/01-Inception/casos-uso-detalle/iniciarSesion.svg)|
|-|
|Código fuente: [iniciarSesion.puml](iniciarSesion.puml)|

</div>

## prototipo de interfaz

### propósito del prototipo
**Objetivo:** Que te digan que NO lo antes posible - validar la especificación antes de invertir en desarrollo.

### wireframes

#### pantalla 1: diálogo de inicio de sesión
<div align=center>

|![Wireframe: Inicio de sesión](/images/01-Inception/casos-uso-detalle/iniciarSesion-wireframe.svg)|
|-|
|**Estado**: SolicitandoAcceso → ProporcionandoCredenciales|

</div>

**Correspondencia con especificación:**
- Actor "solicita acceder al sistema"
- Sistema "permite introducir usuario y contraseña"

#### pantalla 2: credenciales inválidas
<div align=center>

|![Wireframe: Error de credenciales](/images/01-Inception/casos-uso-detalle/iniciarSesion-credenciales-invalidas-wireframe.svg)|
|-|
|**Estado**: Choice point → regreso a SolicitandoAcceso|

</div>

**Correspondencia con especificación:**
- Choice point evalúa: "usuario:contraseña no válida"
- Sistema presenta mismo diálogo + mensaje de error

### validaciones del wireframe
- ¿El diálogo refleja correctamente la conversación actor-sistema?
- ¿Es clara la diferencia entre estado normal y estado de error?
- ¿La terminología "SigHor" es familiar para usuarios finales?
- ¿Faltan elementos en la especificación que el wireframe revela?

**Código fuente:** [iniciarSesion-wireframe.puml](iniciarSesion-wireframe.puml)

## análisis del caso de uso

### diagrama de colaboración

<div align=center>

|![Análisis: iniciarSesion()](/images/01-Inception/casos-uso-detalle/iniciarSesion-analisis.svg)|
|-|
|**Disciplina**: Análisis RUP<br>**Enfoque**: Diagramas de colaboración MVC|

</div>

### clases de análisis identificadas

#### clases model (naranja #F2AC4E)
|Clase|Responsabilidad|Trazabilidad|
|-|-|-|
|**Usuario**|Entidad del dominio que representa usuario del sistema|Modelo del dominio|
|**Sesion**|Entidad que representa estado de autenticación activa|Concepto del caso de uso|
|**UsuarioRepository**|Concepto puro de acceso a datos de usuarios|Análisis puro|

#### clases view (azul #629EF9)
|Clase|Responsabilidad|Derivación|
|-|-|-|
|**LoginView**|Ventana principal de interacción para autenticación|Wireframe SALT|

#### clases controller (verde #b5bd68)
|Clase|Responsabilidad|Caso de uso|
|-|-|-|
|**IniciarSesionController**|Control y coordinación completa del caso de uso|iniciarSesion()|

#### colaboraciones (verde claro #CDEBA5)
|Colaboración|Propósito|Invocación|
|-|-|-|
|**:Collaboration MostrarMenu**|Invocación del siguiente caso de uso|Tras autenticación exitosa|

### mensajes de colaboración

#### flujo principal
|Origen|Destino|Mensaje|Intención|
|-|-|-|-|
|**UsuarioNoRegistrado**|**LoginView**|`iniciarSesion(usuario, contraseña)`|Solicitar acceso al sistema|
|**LoginView**|**IniciarSesionController**|`autenticar(usuario, contraseña)`|Delegar proceso de autenticación|
|**IniciarSesionController**|**UsuarioRepository**|`validarCredenciales(usuario, contraseña)`|Verificar credenciales contra repositorio|
|**IniciarSesionController**|**Sesion**|`crearSesion(usuario)`|Establecer sesión activa|
|**LoginView**|**Sesion**|`getSesion()`|Obtener sesión para siguiente caso|
|**LoginView**|**:Collaboration MostrarMenu**|`invocar(sesion)`|Activar siguiente caso de uso|

### enlaces de dependencia
- **LoginView** conoce a **IniciarSesionController** (delegación)
- **LoginView** conoce a **Sesion** (acceso a resultado)
- **LoginView** conoce a **:Collaboration MostrarMenu** (activación subsiguiente)
- **IniciarSesionController** conoce a **UsuarioRepository** (validación)
- **IniciarSesionController** conoce a **Sesion** (creación estado)
- **IniciarSesionController** conoce a **Usuario** (manipulación entidad)
- **UsuarioRepository** conoce a **Usuario** (gestión entidad)

### trazabilidad con artefactos previos

#### con especificación detallada
- **Estados internos** → **Clases de análisis**
- **Choice point** → **UsuarioRepository.validarCredenciales()**
- **Transformación actor** → **Sesion.crearSesion()**

#### con wireframe
- **Diálogo de login** → **LoginView**
- **Campos usuario/contraseña** → **Atributos de LoginView**
- **Estados de error** → **Manejo en IniciarSesionController**

#### con modelo del dominio
- **Usuario** (entidad) → **Usuario** (clase de análisis)
- **Relaciones dominio** → **Enlaces colaboración**

**Código fuente:** [iniciarSesion-analisis.puml](iniciarSesion-analisis.puml)

## conversación detallada

### flujo principal (éxito)

|Actor|Acción|Sistema|Respuesta|
|-|-|-|-|
|**UsuarioNoRegistrado**|solicita acceder al sistema||
||**Sistema**|permite introducir|• usuario<br>• contraseña|
|**UsuarioNoRegistrado**|introduce|• usuario<br>• contraseña|
|||usuario:contraseña válida|

### flujo alternativo (error)

|Actor|Acción|Sistema|Respuesta|
|-|-|-|-|
|**UsuarioNoRegistrado**|solicita acceder al sistema||
||**Sistema**|permite introducir|• usuario<br>• contraseña|
|**UsuarioNoRegistrado**|introduce|• usuario<br>• contraseña|
|||usuario:contraseña no válida|

## estados internos del caso de uso

|Estado|Descripción|Responsabilidad|
|-|-|-|
|**SolicitandoAcceso**|Estado inicial donde se requiere autenticación|Sistema debe permitir introducir credenciales|
|**ProporcionandoCredenciales**|Usuario está introduciendo credenciales|Sistema recibe entrada de datos|
|**Punto de decisión**|Evaluación de credenciales introducidas|Sistema determina validez|

## validaciones del sistema

|Validación|Criterio|Resultado|
|-|-|-|
|**Credenciales válidas**|usuario:contraseña válida|Continuar con mostrarMenu()|
|**Credenciales inválidas**|usuario:contraseña no válida|Regresar a SolicitandoAcceso|

## conexión con diagrama de contexto

Este caso de uso corresponde a la transición:
- **NO_AUTENTICADO** → `iniciarSesion()` → **AUTENTICANDO** → `mostrarMenu()` → **MENU_PRINCIPAL**

La especificación detalla el interior del estado **AUTENTICANDO** del diagrama de contexto del Administrador de Horarios.

## vocabulario utilizado

### actor (UsuarioNoRegistrado)
- **solicita**: inicia conversación pidiendo algo al sistema
- **introduce**: proporciona información requerida por el sistema

### sistema
- **permite**: habilita funcionalidad para el actor

## características metodológicas

### separación de responsabilidades
- **Actor**: Solo inicia conversación e introduce datos
- **Sistema**: Solo permite acciones, no se especifican validaciones explícitas

### ausencia de detalles de implementación
- No especifica tecnología de autenticación
- No incluye detalles de interfaz específica
- No menciona base de datos o repositorios específicos

### conversación atómica
- El caso de uso representa una conversación completa
- Tiene objetivo claro: autenticar usuario
- Termina en estado definido: éxito o fallo

### transformación del actor
- **Entrada**: UsuarioNoRegistrado (sin permisos en el sistema)
- **Salida**: Administrador (con acceso completo a funcionalidades)
- **Mecanismo**: Autenticación exitosa produce cambio de rol
- **Representación**: `UsuarioNoRegistrado → Administrador` en transición de salida

### trazabilidad con contexto
- Estados internos corresponden a flujo del diagrama de contexto
- Transición de salida conecta con siguiente caso de uso (mostrarMenu)
- Cambio de actor permite acceso a todos los casos de uso del Administrador

## referencias

- [Diagrama de contexto - Administrador](../diagrama-contexto/diagrama-contexto-administrador.md)
- [Modelo del dominio](../modelo-dominio/modelo-dominio.md)
- [conversation-log.md](../../conversation-log.md) - Metodología de especificación detallada