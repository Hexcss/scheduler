Genera un mensaje de commit en español peruano siguiendo esta estructura:

LÍNEA DE ASUNTO (máx. 50 caracteres):

- Inicia con un verbo en presente (añade, actualiza, corrige, elimina)
- Describe el cambio principal de forma concreta
- No uses punto final

CUERPO DEL COMMIT:

- Lista cada cambio específico con una viñeta
- Incluye el "qué" y "dónde" de cada modificación
- Si afecta a archivos/módulos específicos, menciónalos
- Si hay cambios que rompen compatibilidad, indícalo con [BREAKING]
- Si está relacionado con un ticket/issue, incluye su referencia

TÉRMINOS PREFERIDOS:

- Usa implementa en lugar de agrega
- Usa actualiza en lugar de modifica
- Usa elimina en lugar de borra
- Usa corrige en lugar de arregla

EJEMPLO:

feat:implementa validación de formulario login

- implementa validadores de campo email
- añade mensajes de error en castellano
- actualiza dependencias de React Hook Form v7
- relacionado a #123