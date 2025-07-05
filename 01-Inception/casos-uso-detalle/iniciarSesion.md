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
|**Postcondición exitosa**|Usuario autenticado, sistema listo para mostrar menú principal|
|**Postcondición de fallo**|Usuario no autenticado, sistema permanece en estado inicial|

## diagrama de especificación

<div align=center>

|![Caso de uso: iniciarSesion()](/images/01-Inception/casos-uso-detalle/iniciarSesion.svg)|
|-|
|Código fuente: [iniciarSesion.puml](iniciarSesion.puml)|

</div>

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

### trazabilidad con contexto
- Estados internos corresponden a flujo del diagrama de contexto
- Transición de salida conecta con siguiente caso de uso (mostrarMenu)

## referencias

- [Diagrama de contexto - Administrador](../diagrama-contexto/diagrama-contexto-administrador.md)
- [Modelo del dominio](../modelo-dominio/modelo-dominio.md)
- [conversation-log.md](../../conversation-log.md) - Metodología de especificación detallada