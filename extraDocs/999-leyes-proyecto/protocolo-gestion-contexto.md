# LEY DEL PROYECTO: Protocolo de Gestión de Contexto

## Identificación de la Ley
- **Número**: 003
- **Nombre**: Protocolo de Gestión de Contexto
- **Fecha de establecimiento**: 2025-07-20
- **Estado**: ACTIVA

## Definición de la Ley

### Regla Fundamental
**La última conversación numerada en `conversation-log.md` marca SIEMPRE el estado actual del proyecto.**

## Obligaciones Bidireccionales

### Obligaciones de Claude
1. **Inicio de sesión obligatorio**:
   - Leer `conversation-log.md` completo
   - Identificar la última conversación numerada
   - Usar esa conversación como estado actual del proyecto

2. **Exigencia de protocolo**:
   - Si el Usuario no declara fin de sesión, EXIGIR su cumplimiento
   - No permitir trabajo sin actualización previa del estado
   - Recordar al Usuario sus obligaciones cuando sea necesario

3. **Actualización de estado**:
   - Al declarar fin de sesión, actualizar `conversation-log.md`
   - Crear nueva conversación numerada con estado completo
   - Preservar contexto exacto para próxima sesión

### Obligaciones del Usuario
1. **Declaración de fin de sesión**:
   - SIEMPRE avisar explícitamente cuando termine la sesión
   - Usar frases como "Terminamos por hoy", "Fin de sesión", "Descansemos"
   - NO cerrar sesión sin aviso previo

2. **Permitir actualización**:
   - Autorizar a Claude a actualizar `conversation-log.md`
   - No interferir durante la creación del resumen de estado
   - Confirmar que la actualización es correcta

3. **Responsabilidad de continuidad**:
   - Mantener la disciplina del protocolo establecido
   - Aceptar las exigencias de Claude sobre cumplimiento
   - Reconocer incumplimientos cuando ocurran

## Protocolo de Ejecución

### Secuencia de Cierre
1. **Usuario declara fin**: "Terminamos por hoy" / equivalente
2. **Claude confirma**: "Voy a actualizar el conversation-log"
3. **Claude ejecuta**: Crea conversación numerada con estado actual
4. **Estado preservado**: Próxima sesión inicia con contexto exacto

### Secuencia de Inicio
1. **Claude lee archivos**: `conversation-log.md` + `extraDocs/999-leyes-proyecto/`
2. **Claude identifica estado**: Última conversación numerada
3. **Claude continúa**: Desde el punto exacto donde se quedó

## Casos de Incumplimiento

### Si el Usuario no declara fin de sesión
**Claude DEBE**:
- Detectar intención de cierre (frases como "descansemos", "por hoy")
- Exigir declaración explícita: "Necesito que declares formalmente el fin de sesión"
- No permitir cierre sin actualización del estado

### Si Claude no actualiza el estado
**Usuario DEBE**:
- Exigir la actualización antes de terminar
- No permitir que la sesión termine sin resumen
- Recordar a Claude sus obligaciones

## Rationale de la Ley

### Problema que Resuelve
- **Pérdida de contexto** entre sesiones
- **Trabajo duplicado** por desconocimiento del estado actual
- **Inconsistencias** en la continuidad del proyecto

### Beneficios Esperados
- **Continuidad perfecta** entre sesiones
- **Estado siempre actualizado** en conversation-log.md
- **Responsabilidad compartida** en la gestión del proyecto
- **Trazabilidad completa** del avance del trabajo

### Valor Didáctico
- **Disciplina metodológica** aplicada a colaboración humano-IA
- **Protocolos explícitos** en proyectos de largo plazo
- **Gestión de responsabilidades** bidireccionales

## Cumplimiento y Evolución

### Verificación de Cumplimiento
- Cada sesión debe comenzar con referencia al conversation-log
- Cada sesión debe terminar con actualización del estado
- Las conversaciones numeradas deben estar secuenciales y completas

### Modificación de la Ley
Esta ley solo puede modificarse por acuerdo explícito entre Usuario y Claude, documentando los cambios en una nueva entrada del conversation-log.

## Referencias

- **Archivo principal**: `/CLAUDE.md` - Sección "PROTOCOLO DE GESTIÓN DE CONTEXTO"
- **Implementación**: `/conversation-log.md` - Conversaciones numeradas
- **Establecimiento**: Conversación 38 (2025-07-20)

---

**Esta ley establece la disciplina necesaria para mantener continuidad perfecta en el proyecto pySigHor, con responsabilidades claras para ambas partes de la colaboración humano-IA.**