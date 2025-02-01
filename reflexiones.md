# Análisis del Horario Generado por SigHor

## Horario Resultante

|Hora|Lunes|Martes|Miércoles|Jueves|Viernes|Sábado|
|-|-|-|-|-|-|-|
|7-8|ED 11, UM 14, RT 15, QC 18a, AD 18b, A2 19, D1 24a, TC1 24b, DI 34, IP 39a, CM 33b|MD 11, RP 14, ET 15, EA 18a, EIA 18b, EK 19, BD 24a, D1 25, AI 34, DBH 35, MCD 38, MI 39a, TD 33b|ED 11, RT 15, QC 18a, AD 18b, A2 19, D1 24a, TC1 24b, CM 25, DI 34, IP 39a, CM 33b|MD 11, RP 14, ET 15, EA 18a, EIA 18b, EK 19, BD 24a, DI 25, AI 34, DBH 35, MCD 38, TD 33b|ED 11, AD 18b, A2 19, D1 24a, DI 34, CM 33b|MD 11, ET 15, EA 19a, EK 19, D1 25, AI 34, TD 33b|
|8-9|ED 11, RT 15, QC 18a, A2 19, D1 24a, TC1 24b, DI 34, IP 39a, CM 33b|MD 11, RP 14, ET 15, EA 18a, EIA 18b, EK 19, BD 24a, D1 25, AI 34, DBH 35, MCD 38, MI 39a, TD 33b|ED 11, AD 18b, A2 19, QM 25, DI 34, IP 39a, CM 33b|MD 11, RP 14, ET 15, EA 18a, EK 19, BD 24a, DI 25, AI 34, DBH 35, MCD 38, TD 33b|A2 19, CM 33b|EA 18a, TD 33b|
|9-10|EL 11, F3 14, F2 15, MH 18a, IEC 18b, AE2 19, CA2 24a, CF 24b, CE 34, FI 25, MO 38, ML 39a, GEA 33b|QB 11, QI 14, AL 15, MAR 18a, CD 18b, TL 24a, MF 25, IE 34, FL 38, PF 39b|EL 11, F3 14, MH 18a, AE2 19, CA2 24a, AE1 24b, FI 25, CE 34, EL2 35, MO 38, ML 39a, GEA 33b|QB 11, QI 14, AL 15, MAR 18a, CD 18b, TL 24a, MF 25, IE 34, FL 38, HID 39a, PF 39b|EL 11, F3 14, F2 15, MH 18a, PT 34, CE 34, MO 38, ML 39a|QB 11, AL 15, CD 18b, TL 24a|
|10-11|EL 11, F3 14, F2 15, MH 18a, AE2 19, CA2 24a, AE1 24b, CE 34, EL2 35, RI 25, MO 38, ML 39a, GEA 33b|QB 11, QI 14, AL 15, MAR 18a, CD 18b, AT 24b, IE 34, FL 38, HID 39a, PF 39b|EL 11, F3 14, MH 18a, CA2 24a, AE1 24b, CE 34, EL2 35, ML 39a, MO 38, GEA 33b|QB 11, QI 14, AL 15, CD 18b, TL 24a, MF 25, IE 34, FL 38, HID 39a|MH 18a, MO 38, ML 39a|IE 34|
|11-12|EI 11, PB 14, A3 15, ADC 18a, LG 24a, GP 24b, MS2 33b|RM 14, TU 19, PO 24a, D2 24b|EI 11, PB 14, A3 15, ADC 18a, GP 24b, MS2 33b|RM 14, TU 19, PO 24a, D2 24b|A3 15, A3 15|RM 14|
|12-13|EI 11, PB 14, A3 15, GP 24b, MS2 33b|RM 14, TU 19, PO 24a, D2 24b|EI 11, A3 15, MS2 33b|RM 14, TU 19, PO 24a, D2 24b|-|-|
|5-6|ALB 24b|NEU 11, IF 14, TI 18b, D2 33a|-|IF 14|-|-|
|6-7|ALB 24b|IF 14, TA 18a, TI 18b, TC 33b|-|-|-|-|

## Análisis del patrón de asignación

### Patrón observado

1. Alta concentración de clases en las primeras horas de la mañana
1. Disminución progresiva de la carga hacia la tarde
1. Menor uso de aulas conforme avanza la semana
1. Formación de un "triángulo" de ocupación

### Optimización matemática vs realidad práctica

#### Lo que el algoritmo optimizó correctamente

- Uso eficiente del espacio (aulas)
- Coincidencia de recursos con preferencias
- No solapamiento de profesores/grupos
- Cumplimiento de restricciones técnicas

#### Factores humanos no considerados

1. Distribución de carga
   - Concentración excesiva en primeras horas
   - Días iniciales sobrecargados
   - Últimas horas y días subutilizados
1. Aspectos prácticos
   - Fatiga de estudiantes y profesores
   - Tiempos de traslado entre clases
   - Necesidad de pausas y descansos
   - Preferencia por horarios más distribuidos

### Lecciones aprendidas

1. Optimización vs Usabilidad
   - La optimización puramente matemática puede llevar a soluciones técnicamente perfectas pero prácticamente problemáticas
   - Es necesario equilibrar la eficiencia matemática con la realidad humana
2. Restricciones "suaves"
   - Algunos factores aparentemente "subóptimos" son necesarios para la usabilidad
   - La distribución uniforme de carga, aunque matemáticamente menos eficiente, es socialmente preferible
3. Diseño de sistemas
   - Los sistemas que impactan en personas deben considerar factores humanos desde el diseño
   - Las métricas de optimización deben incluir aspectos cualitativos además de cuantitativos

### Conclusión

El caso de SigHor demuestra que en sistemas socio-técnicos, la "mejor" solución matemática no siempre es la mejor solución práctica. El éxito de un sistema no solo depende de su eficiencia técnica, sino también de su adaptación a las necesidades y preferencias humanas.