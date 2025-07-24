# LEY DEL PROYECTO: Rama de Revisión Obligatoria

## Identificación de la Ley
- **Número**: 004
- **Nombre**: Rama de Revisión Obligatoria
- **Fecha de establecimiento**: 2025-07-24
- **Estado**: ACTIVA

## Definición de la Ley

### Regla Fundamental
**Todo trabajo producto de la iteración Manuel-Claude DEBE ir primero a la rama `xRevisar` antes de incorporarse a `main`.**

## Protocolo de Desarrollo

### Flujo Obligatorio
1. **Desarrollo**: Trabajo colaborativo Manuel-Claude en rama local/temporal
2. **Claude propone**: Archivos .puml y documentación completa
3. **Manuel genera SVG**: Convierte archivos .puml a imágenes .svg
4. **Rama xRevisar**: SIEMPRE crear/cambiar a rama `xRevisar`
5. **Push completo**: Subir trabajo CON imágenes .svg a `origin/xRevisar`
6. **Validación bilateral**: Revisión completa en GitHub de Manuel Y Claude
7. **Pull Request**: Solo después de OK de ambos
8. **Merge a main**: Incorporación final al proyecto

### Comandos Estándar
```bash
# Crear/cambiar a rama de revisión
git checkout -b xRevisar  # Si no existe
git checkout xRevisar     # Si ya existe

# Commit y push obligatorio
git add [archivos-del-trabajo]
git commit -m "mensaje descriptivo"
git push -u origin xRevisar

# Pull Request solo después de OK bilateral
```

## Obligaciones Definidas

### Obligaciones de Claude
1. **Proponer artefactos**: Crear archivos .puml y documentación completa
2. **Rama obligatoria**: NUNCA hacer commit directo a `main`
3. **Push completo**: Subir trabajo CON imágenes .svg a rama `xRevisar`
4. **Comunicar ubicación**: Informar URL del trabajo para revisión
5. **Esperar aprobación**: NO proceder sin OK explícito de Manuel

### Obligaciones de Manuel
1. **Generar SVG**: Convertir archivos .puml a imágenes .svg ANTES del push
2. **Revisar trabajo**: Examinar el trabajo completo en rama `xRevisar`
3. **Validar GitHub**: Verificar que todo se ve correctamente en GitHub
4. **OK explícito**: Declarar aprobación antes del PR
5. **Pull Request**: Crear PR solo después de validación completa

## Casos de Aplicación

### Trabajo que REQUIERE xRevisar
- ✅ Nuevos casos de uso RUP
- ✅ Modificaciones a especificaciones existentes
- ✅ Documentación técnica nueva
- ✅ Cambios en estructura del proyecto
- ✅ Implementación de nuevas funcionalidades

### Trabajo que NO requiere xRevisar
- ❌ Correcciones menores de typos
- ❌ Ajustes de formato sin cambio de contenido
- ❌ Actualizaciones del conversation-log.md
- ❌ Cambios cosméticos en documentación

## Beneficios de la Ley

### Control de Calidad
- **Revisión obligatoria**: Todo trabajo es revisado antes de main
- **Doble validación**: Manuel y Claude aprueban el contenido
- **Prevención de errores**: Detección temprana de problemas

### Trazabilidad
- **Historial claro**: Cada trabajo tiene su rama de revisión
- **Commits organizados**: Separación clara entre desarrollo y producción
- **Pull Requests documentados**: Registro de todas las incorporaciones

### Colaboración Disciplinada
- **Responsabilidad compartida**: Ambos participan en control de calidad
- **Flujo predecible**: Proceso estándar para todo trabajo
- **Comunicación explícita**: Aprobaciones claras y documentadas

## Protocolo de Aprobación

### Secuencia de Aprobación
1. **Claude propone**: "Artefactos listos, necesito que generes los SVG"
2. **Manuel genera SVG**: Convierte archivos .puml a imágenes .svg
3. **Claude sube**: Commit y push completo a rama `xRevisar` con SVG incluidos
4. **Claude comunica**: "Trabajo completado en rama xRevisar, listo para revisión"
5. **Manuel valida**: Examina trabajo completo en GitHub
6. **Manuel aprueba**: "OK para PR" o solicita cambios
7. **Claude ejecuta**: Crea Pull Request solo después del OK
8. **Merge coordinado**: Incorporación a main tras PR aprobado

### Frases de Aprobación Estándar
- **Manuel**: "OK para PR", "Aprobado para merge", "Listo para main"
- **Claude**: "Creando PR tras aprobación", "Mergeando por OK recibido"

## Casos de Incumplimiento

### Si Claude hace commit directo a main
**Acción correctiva**:
- Revertir commit inmediatamente
- Recrear trabajo en rama xRevisar
- Aplicar protocolo completo de revisión

### Si Manuel no revisa trabajo en xRevisar
**Claude DEBE**:
- Recordar la obligación de revisión
- NO proceder con PR sin aprobación explícita
- Mantener trabajo en xRevisar hasta recibir OK

## Rationale de la Ley

### Problema que Resuelve
- **Commits no revisados** incorporados directamente a main
- **Trabajo colaborativo** sin validación de ambas partes
- **Falta de control de calidad** en el desarrollo

### Valor Didáctico
- **Disciplina de desarrollo**: Aplicación de buenas prácticas de Git
- **Trabajo en equipo**: Responsabilidad compartida en control de calidad
- **Proceso industrial**: Simulación de flujos de desarrollo profesional

## Evolución de la Ley

### Modificación
Esta ley puede modificarse por acuerdo explícito entre Manuel y Claude, documentando los cambios en nueva entrada del conversation-log.

### Revisión
La efectividad de esta ley se evaluará tras 5 iteraciones de aplicación.

## Referencias

- **Implementación**: Todas las ramas `xRevisar` del proyecto
- **Establecimiento**: Sesión de trabajo del 2025-07-24 (hilo Edificios)
- **Precedente**: Primer uso exitoso con casos de uso crearEdificio/editarEdificio/eliminarEdificio

---

**Esta ley establece la disciplina necesaria para mantener calidad y control en todo el trabajo colaborativo del proyecto pySigHor, con responsabilidades claras para ambas partes de la colaboración humano-IA.**