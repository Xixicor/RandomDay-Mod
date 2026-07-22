<a id="randomday---full-profile-reference"></a>
# RandomDay - Referencia completa del perfil

> **Fuente canónica en inglés:** [FULL_PROFILE_REFERENCE.md](../../../profiles/FULL_PROFILE_REFERENCE.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Versión: `v0.3.16-alpha`

Esta referencia generada cubre los 289 perfiles en 17 familias. Se genera a partir de las mismas tablas de perfil de Lua y el mismo diccionario de traducción que se utilizan en tiempo de ejecución; los valores sin procesar siguen teniendo autoridad.

<a id="read-the-reference"></a>
## Lea la referencia

- Las calificaciones generales y de dominio se calculan a partir de las 46 SandboxSettings claves más la presión de encuentro.
- El texto en lenguaje sencillo es de carácter informativo. Los valores exactos se conservan junto a cada explicación.
- La configuración activa se aplica al inicio actual. La configuración preparada se aplica solo después del siguiente reinicio.
- Las selecciones de adaptadores opcionales son solicitudes; El estado del tiempo de ejecución registra si un adaptador instalado realmente coincidió y se verificó.

<a id="families"></a>
## Familias

- [Acción](FAMILIAS/FAMILIA_DE_PERFILES_DE_ACCI%C3%93N.md): más disparos, combate más visible, menos sigilo.
- [Supervivencia](FAMILIAS/FAMILIA_DE_PERFIL_DE_SUPERVIVENCIA.md): menos enemigos, amenazas más fuertes, mayores recompensas, y menos perdón.
- [Sigilo](FAMILIAS/FAMILIA_DE_PERFIL_DE_SIGILO.md): Evite la detección. La instalación escucha con más atención de lo habitual.
- [Horda](FAMILIAS/FAMILIA_DE_PERFILES_DE_HORDA.md): Problema de cantidad. La instalación ha ordenado demasiados hostiles.
- [Boss Hunt](FAMILIAS/FAMILIA_DE_PERFILES_DE_CAZA_DE_JEFES.md): Encuentros severos raros con recompensas a nivel de trofeo y errores a nivel de trofeo.
- [Carroñero](FAMILIAS/FAMILIA_DE_PERFIL_DE_CARRO%C3%91ERO.md): Las rutas de botín son rentables, están abarrotadas y moralmente no están supervisadas.
- [Constructor](FAMILIAS/FAMILIA_DE_PERFILES_DE_CONSTRUCTOR.md): Expansión de la base y logística con objeciones estructurales ocasionales.
- [Expedición](FAMILIAS/FAMILIA_DE_PERFILES_DE_EXPEDICI%C3%93N.md): Centrado en viajes correr. Las rutas importan; se desaconseja demorarse.
- [Bloqueo de seguridad](FAMILIAS/FAMILIA_DE_PERFIL_DE_BLOQUEO_DE_SEGURIDAD.md): Orden, robots, patrullas, detección y demasiados procedimientos.
- [Biohazard](FAMILIAS/FAMILIA_DE_PERFILES_DE_RIESGO_BIOL%C3%93GICO.md): Plagas, contaminación, problemas de agua e higiene legalmente vaga.
- [Anteverse](FAMILIAS/FAMILIA_DE_PERFILES_ANTEVERSO.md): Presión del portal, variantes y efectos secundarios dimensionales.
- [Pesadilla](FAMILIAS/FAMILIA_DE_PERFIL_DE_PESADILLA.md): Oscuridad, pavor, raras amenazas graves y silencio. errores.
- [Desgastado](FAMILIAS/FAMILIA_DE_PERFILES_DESGASTADOS.md): Supervivencia ambiental: clima, radiación, energía, hambre, sed.
- [Precisión](FAMILIAS/FAMILIA_DE_PERFIL_DE_PRECISI%C3%93N.md): Menos enemigos, puntería más precisa, mayor castigo por exposición.
- [Logística](FAMILIAS/PERFIL_DE_LOG%C3%8DSTICA_FAMILIA.md): Transporte, inventario, durabilidad, peso, suministros, economía de preparación.
- [Experimental](FAMILIAS/FAMILIA_DE_PERFILES_EXPERIMENTALES.md): Combinaciones extrañas, tablas inestables, resistencias extrañas.
- [Prueba de cumplimiento](FAMILIAS/FAMILIA_DE_PERFILES_DE_PRUEBA_DE_CUMPLIMIENTO.md): Un examen final de 17 días sobre las peores ideas de la instalación.

<a id="profile-index"></a>
## Índice de perfil

| Familia | Día | Perfil | Condiciones |
|---|---:|---|---|
| Acción | 1 | Orientación del fuego real | Presión estándar (1.85/5) |
| Acción | 2 | Escaramuza en piso abierto | Condiciones favorables (1.29/5) |
| Acción | 3 | Simulacro de control de plagas | Presión estándar (2.14/5) |
| Acción | 4 | Tiroteo con suministros | Condiciones favorables (1.47/5) |
| Acción | 5 | Contacto de seguridad | Presión estándar (2.03/5) |
| Acción | 6 | Compromiso desgastado | Presión estándar (2.02/5) |
| Acción | 7 | Incursión nocturna | Presión estándar (2.03/5) |
| Acción | 8 | Ruta Corredor | Presión estándar (1.81/5) |
| Acción | 9 | Ration Riot | Presión estándar (2.17/5) |
| Acción | 10 | Escolta de recuperación | Condiciones favorables (1.05/5) |
| Acción | 11 | Objetivos de entrenamiento | Condiciones favorables (1.46/5) |
| Acción | 12 | Asalto al Laboratorio Negro | Presión estándar (2.49/5) |
| Acción | 13 | Línea de fuego extendida | Presión estándar (2.22/5) |
| Acción | 14 | Milagro del armario de suministros | Condiciones favorables (1.02/5) |
| Acción | 15 | Auditoría de precisión en vivo | Presión estándar (1.97/5) |
| Acción | 16 | Fuego cruzado experimental | Presión estándar (2.09/5) |
| Acción | 17 | Guerra de cumplimiento Juego | Condiciones exigentes (2.72/5) |
| Supervivencia | 1 | Ingesta silenciosa | Presión estándar (2.02/5) |
| Supervivencia | 2 | Protocolo de barricada | Condiciones favorables (1.41/5) |
| Supervivencia | 3 | Silencio contaminado | Presión estándar (2.35/5) |
| Supervivencia | 4 | Deuda del carroñero | Condiciones favorables (1.61/5) |
| Supervivencia | 5 | Bloqueo de seguridad | Presión estándar (2.26/5) |
| Supervivencia | 6 | Aviso de refugio | Presión estándar (2.2/5) |
| Supervivencia | 7 | Luces apagadas | Presión estándar (2.25/5) |
| Supervivencia | 8 | No te demores | Presión estándar (1.97/5) |
| Supervivencia | 9 | Prueba de despensa vacía | Presión estándar (2.4/5) |
| Supervivencia | 10 | Recuperación silenciosa | Condiciones favorables (1.14/5) |
| Supervivencia | 11 | Riesgo medido | Condiciones favorables (1.62/5) |
| Supervivencia | 12 | Revisión de depredadores | Condiciones exigentes (2.76/5) |
| Supervivencia | 13 | Turno largo Supervivencia | Presión estándar (2.57/5) |
| Supervivencia | 14 | Falsa calma | Condiciones favorables (1.29/5) |
| Supervivencia | 15 | Visto primero, muerto primero | Presión estándar (2.28/5) |
| Supervivencia | 16 | Condiciones no aprobadas | Presión estándar (2.33/5) |
| Supervivencia | 17 | Prueba de evasión final | Condiciones exigentes (3.01/5) |
| Sigilo | 1 | Orientación susurrada | Presión estándar (2.03/5) |
| Sigilo | 2 | Silencio autorizado | Condiciones favorables (1.43/5) |
| Sigilo | 3 | El piso te escuchó | Presión estándar (2.34/5) |
| Sigilo | 4 | Evidencia guardada | Condiciones favorables (1.63/5) |
| Sigilo | 5 | Barrido de seguridad silencioso | Presión estándar (2.21/5) |
| Sigilo | 6 | Pronóstico: perfil bajo | Presión estándar (2.2/5) |
| Sigilo | 7 | Oscuro Despeje de ruta | Presión estándar (2.22/5) |
| Sigilo | 8 | Tránsito invisible | Presión estándar (1.99/5) |
| Sigilo | 9 | Ración sin testigos | Presión estándar (2.38/5) |
| Sigilo | 10 | Ventana de reparación silenciosa | Condiciones favorables (1.19/5) |
| Sigilo | 11 | Simulacro de observación | Condiciones favorables (1.61/5) |
| Sigilo | 12 | Punto ciego de laboratorio negro | Condiciones exigentes (2.62/5) |
| Sigilo | 13 | Turno largo y silencioso | Presión estándar (2.55/5) |
| Sigilo | 14 | Falso pasillo vacío | Condiciones favorables (1.34/5) |
| Sigilo | 15 | Auditoría de detección | Presión estándar (2.26/5) |
| Sigilo | 16 | Silencio experimental | Presión estándar (2.21/5) |
| Sigilo | 17 | No aparición final | Condiciones exigentes (2.83/5) |
| Horda | 1 | Error de recuento | Presión estándar (1.82/5) |
| Horda | 2 | Desbordamiento de piso abierto | Condiciones favorables (1.32/5) |
| Horda | 3 | Peste Overbooking | Presión estándar (2.13/5) |
| Horda | 4 | Estampida en la línea de suministro | Condiciones favorables (1.46/5) |
| Horda | 5 | Control de multitudes mal archivado | Presión estándar (2.02/5) |
| Horda | 6 | Clima de los cuerpos | Presión estándar (1.99/5) |
| Horda | 7 | Asistencia al turno de noche | Presión estándar (2.02/5) |
| Horda | 8 | Congestión de rutas | Presión estándar (1.8/5) |
| Horda | 9 | Motines en colas de racionamiento | Presión estándar (2.14/5) |
| Horda | 10 | Brevemente menos concurrido | Condiciones favorables (1.08/5) |
| Horda | 11 | Pico de población en entrenamiento | Condiciones favorables (1.47/5) |
| Horda | 12 | Revisión de multitudes de Black Lab | Presión estándar (2.42/5) |
| Horda | 13 | Formación de filas extendidas | Presión estándar (2.23/5) |
| Horda | 14 | Cola de armario de suministros | Condiciones favorables (1.07/5) |
| Horda | 15 | Precisión por volumen | Presión estándar (1.98/5) |
| Horda | 16 | Densidad de público experimental | Presión estándar (2.1/5) |
| Horda | 17 | Problema de asistencia final | Presión estándar (2.58/5) |
| Boss Hunt | 1 | Orientación de trofeos | Presión estándar (1.98/5) |
| Boss Hunt | 2 | Construcción de cebo | Condiciones favorables (1.45/5) |
| Boss Hunt | 3 | Pequeño Advertencia del juego | Presión estándar (2.28/5) |
| Boss Hunt | 4 | Sendero de recompensa | Condiciones favorables (1.62/5) |
| Boss Hunt | 5 | Problema de Apex autorizado | Presión estándar (2.16/5) |
| Boss Hunt | 6 | Cantera desgastada | Presión estándar (2.13/5) |
| Boss Hunt | 7 | Movimiento nocturno de trofeos | Presión estándar (2.16/5) |
| Boss Hunt | 8 | Ruta de objetivo rápida | Presión estándar (1.93/5) |
| Boss Hunt | 9 | Caja de trofeos hambrienta | Presión estándar (2.29/5) |
| Boss Hunt | 10 | Descanso de taxidermia | Condiciones favorables (1.2/5) |
| Boss Hunt | 11 | Caza de práctica | Condiciones favorables (1.61/5) |
| Boss Hunt | 12 | Espécimen de laboratorio negro | Condiciones exigentes (2.62/5) |
| Boss Hunt | 13 | Turno de caza largo | Presión estándar (2.39/5) |
| Boss Hunt | 14 | Día de cebo tranquilo | Condiciones favorables (1.19/5) |
| Boss Hunt | 15 | Auditoría de trofeos de precisión | Presión estándar (2.12/5) |
| Boss Hunt | 16 | Ápice experimental | Presión estándar (2.24/5) |
| Boss Hunt | 17 | Tablero de trofeos final | Condiciones exigentes (2.79/5) |
| Carroñero | 1 | Ética del inventario flexible | Presión estándar (1.79/5) |
| Carroñero | 2 | Adquisición de piso abierto | Condiciones favorables (1.28/5) |
| Carroñero | 3 | Aperitivos cuestionables | Presión estándar (2.08/5) |
| Carroñero | 4 | Dividendo de ejecución de suministro | Condiciones favorables (1.47/5) |
| Carroñero | 5 | Cheque de recibo de seguridad | Presión estándar (1.98/5) |
| Carroñero | 6 | Venta de ruta desgastada | Presión estándar (1.95/5) |
| Carroñero | 7 | Permiso para mercado nocturno | Presión estándar (1.98/5) |
| Carroñero | 8 | Tarifa de autorización de ruta | Presión estándar (1.75/5) |
| Carroñero | 9 | Arbitraje de racionamiento | Presión estándar (2.07/5) |
| Carroñero | 10 | Ventana de ganancias silenciosa | Condiciones favorables (1.04/5) |
| Carroñero | 11 | Salvamiento de capacitación | Condiciones favorables (1.47/5) |
| Carroñero | 12 | Liquidación de Black Lab | Presión estándar (2.43/5) |
| Carroñero | 13 | Inventario de largo recorrido | Presión estándar (2.14/5) |
| Carroñero | 14 | Bote del armario de suministros | Condiciones favorables (1.02/5) |
| Carroñero | 15 | Impuesto de precisión | Presión estándar (1.92/5) |
| Carroñero | 16 | Marcado experimental | Presión estándar (2.12/5) |
| Carroñero | 17 | Auditoría final de bolsillos | Condiciones exigentes (2.68/5) |
| Constructor | 1 | Orientación de zonificación | Presión estándar (1.71/5) |
| Constructor | 2 | Autorización de piso abierto | Condiciones favorables (1.22/5) |
| Constructor | 3 | Problema de humedad de los cimientos | Presión estándar (1.95/5) |
| Constructor | 4 | Solicitud de material | Condiciones favorables (1.39/5) |
| Constructor | 5 | Permiso de inspección | Presión estándar (1.87/5) |
| Constructor | 6 | Aviso de retraso climático | Presión estándar (1.84/5) |
| Constructor | 7 | Variación de construcción nocturna | Presión estándar (1.86/5) |
| Constructor | 8 | Ruta al hardware | Condiciones favorables (1.66/5) |
| Constructor | 9 | Concreto racionado | Presión estándar (1.93/5) |
| Constructor | 10 | Ventana de construcción de recuperación | Condiciones favorables (0.99/5) |
| Constructor | 11 | Barandilla de seguridad Seminario | Condiciones favorables (1.39/5) |
| Constructor | 12 | Código de construcción de Black Lab | Presión estándar (2.29/5) |
| Constructor | 13 | Estructura de turno extendido | Presión estándar (1.99/5) |
| Constructor | 14 | Aprobado para armario de suministros | Condiciones favorables (0.95/5) |
| Constructor | 15 | Precisión de las mediciones | Presión estándar (1.82/5) |
| Constructor | 16 | Plano de planta experimental | Presión estándar (2.0/5) |
| Constructor | 17 | Revisión final de ocupación | Presión estándar (2.52/5) |
| Expedición | 1 | Informe de salida | Presión estándar (1.86/5) |
| Expedición | 2 | Error en la lista de equipaje | Condiciones favorables (1.29/5) |
| Expedición | 3 | Millas de hidratación | Presión estándar (2.19/5) |
| Expedición | 4 | Dividendo de ruta larga | Condiciones favorables (1.47/5) |
| Expedición | 5 | Contacto de punto de control | Presión estándar (2.06/5) |
| Expedición | 6 | Ruta de asesoramiento meteorológico | Presión estándar (2.03/5) |
| Expedición | 7 | Camino nocturno Protocolo | Presión estándar (2.05/5) |
| Expedición | 8 | Route Runner Plus | Presión estándar (1.82/5) |
| Expedición | 9 | Raciones por distancia | Presión estándar (2.22/5) |
| Expedición | 10 | Reinicio del campamento | Condiciones favorables (1.05/5) |
| Expedición | 11 | Desvío de entrenamiento | Condiciones favorables (1.47/5) |
| Expedición | 12 | Excursión al Laboratorio Negro | Presión estándar (2.52/5) |
| Expedición | 13 | Turno de tránsito extendido | Presión estándar (2.29/5) |
| Expedición | 14 | Descubrimiento de caché de suministros | Condiciones favorables (1.03/5) |
| Expedición | 15 | Punto de ruta de precisión | Presión estándar (1.99/5) |
| Expedición | 16 | Desvío experimental | Presión estándar (2.11/5) |
| Expedición | 17 | Examen final de la expedición | Condiciones exigentes (2.78/5) |
| Bloqueo de seguridad | 1 | Verificación de insignia Orientación | Presión estándar (2.02/5) |
| Bloqueo de seguridad | 2 | Limpieza de barricadas | Condiciones favorables (1.43/5) |
| Bloqueo de seguridad | 3 | Punto de control de hidratación | Presión estándar (2.33/5) |
| Bloqueo de seguridad | 4 | Ruta de suministro de contrabando | Condiciones favorables (1.63/5) |
| Bloqueo de seguridad | 5 | Barrido de seguridad total | Presión estándar (2.23/5) |
| Bloqueo de seguridad | 6 | Aviso de bloqueo climático | Presión estándar (2.19/5) |
| Bloqueo de seguridad | 7 | Expansión de la patrulla nocturna | Presión estándar (2.23/5) |
| Bloqueo de seguridad | 8 | Aceleración de puntos de control | Presión estándar (1.99/5) |
| Bloqueo de seguridad | 9 | Inspección de raciones | Presión estándar (2.36/5) |
| Bloqueo de seguridad | 10 | Brevemente sin vigilancia | Condiciones favorables (1.17/5) |
| Bloqueo de seguridad | 11 | Capacitación con testigos | Condiciones favorables (1.62/5) |
| Bloqueo de seguridad | 12 | Respuesta de seguridad del laboratorio negro | Condiciones exigentes (2.65/5) |
| Bloqueo de seguridad | 13 | Bloqueo de horas extras | Presión estándar (2.45/5) |
| Bloqueo de seguridad | 14 | Orden de armario de suministros | Condiciones favorables (1.16/5) |
| Bloqueo de seguridad | 15 | Auditoría formal de precisión | Presión estándar (2.16/5) |
| Bloqueo de seguridad | 16 | Protocolo de seguridad experimental | Presión estándar (2.2/5) |
| Bloqueo de seguridad | 17 | Examen de bloqueo final | Condiciones exigentes (2.89/5) |
| Biohazard | 1 | Contaminación aceptable | Presión estándar (2.03/5) |
| Biohazard | 2 | Descontaminación de piso abierto | Condiciones favorables (1.43/5) |
| Biohazard | 3 | Agua potable cuestionable Plus | Presión estándar (2.26/5) |
| Biohazard | 4 | Ejecución de suministro de muestras | Condiciones favorables (1.63/5) |
| Biohazard | 5 | La contención era opcional | Presión estándar (2.22/5) |
| Biohazard | 6 | Evento meteorológico de saneamiento | Presión estándar (2.25/5) |
| Biohazard | 7 | Falla de desinfección nocturna | Presión estándar (2.28/5) |
| Biohazard | 8 | Aviso de contaminación de ruta | Presión estándar (1.99/5) |
| Biohazard | 9 | Audiencia sobre deterioro de raciones | Presión estándar (2.29/5) |
| Biohazard | 10 | Rumor de sala limpia | Condiciones favorables (1.19/5) |
| Biohazard | 11 | Entrenamiento con guantes | Condiciones favorables (1.63/5) |
| Biohazard | 12 | Revisión biológica del laboratorio negro | Condiciones exigentes (2.61/5) |
| Biohazard | 13 | Turno de cuarentena extendido | Presión estándar (2.43/5) |
| Biohazard | 14 | Suministro Armario estéril | Condiciones favorables (1.16/5) |
| Biohazard | 15 | Precisión de los estornudos | Presión estándar (2.15/5) |
| Biohazard | 16 | Exposición experimental | Presión estándar (2.19/5) |
| Biohazard | 17 | Examen de contención final | Condiciones exigentes (2.88/5) |
| Anteverse | 1 | Toma dimensional | Presión estándar (1.88/5) |
| Anteverse | 2 | Geometría de piso abierto | Condiciones favorables (1.3/5) |
| Anteverse | 3 | Hidratación transversal Ángulos | Presión estándar (2.18/5) |
| Anteverse | 4 | Suministro desde otros lugares | Condiciones favorables (1.48/5) |
| Anteverse | 5 | Violación de seguridad desde otros lugares | Presión estándar (2.06/5) |
| Anteverse | 6 | Clima en las paredes | Presión estándar (2.04/5) |
| Anteverse | 7 | Cortesía del portal nocturno | Presión estándar (2.05/5) |
| Anteverse | 8 | Ruta a través del error | Presión estándar (1.82/5) |
| Anteverse | 9 | Deriva en la línea de tiempo de las raciones | Presión estándar (2.2/5) |
| Anteverse | 10 | Ventana de realidad estable | Condiciones favorables (1.07/5) |
| Anteverse | 11 | Entrenamiento con variables | Condiciones favorables (1.48/5) |
| Anteverse | 12 | Revisión dimensional del laboratorio negro | Presión estándar (2.52/5) |
| Anteverse | 13 | Cambio extendido en otros lugares | Presión estándar (2.29/5) |
| Anteverse | 14 | Paradoja del armario de suministros | Condiciones favorables (1.05/5) |
| Anteverse | 15 | Precisión en todos los ángulos | Presión estándar (2.0/5) |
| Anteverse | 16 | Antefase experimental | Presión estándar (2.11/5) |
| Anteverse | 17 | Cumplimiento anteverso final | Condiciones exigentes (2.77/5) |
| Pesadilla | 1 | Error de iluminación tenue | Presión estándar (2.03/5) |
| Pesadilla | 2 | Temor al piso abierto | Condiciones favorables (1.43/5) |
| Pesadilla | 3 | Agua en la oscuridad | Presión estándar (2.35/5) |
| Pesadilla | 4 | Respiración en el armario de suministros | Condiciones favorables (1.62/5) |
| Pesadilla | 5 | Seguridad debajo de la cama | Presión estándar (2.27/5) |
| Pesadilla | 6 | Clima con dientes | Presión estándar (2.21/5) |
| Pesadilla | 7 | Luces apagadas para siempre | Presión estándar (2.23/5) |
| Pesadilla | 8 | No corras ruidosamente | Presión estándar (1.99/5) |
| Pesadilla | 9 | Raciones para la cosa | Presión estándar (2.38/5) |
| Pesadilla | 10 | Recuperación detrás de una puerta | Condiciones favorables (1.15/5) |
| Pesadilla | 11 | Entrenamiento en la oscuridad | Condiciones favorables (1.63/5) |
| Pesadilla | 12 | Revisión de Black Lab Nightmare | Condiciones exigentes (2.75/5) |
| Pesadilla | 13 | Turno largo después de la medianoche | Presión estándar (2.56/5) |
| Pesadilla | 14 | Mañana falsa | Condiciones favorables (1.3/5) |
| Pesadilla | 15 | Precisión de las sombras | Presión estándar (2.29/5) |
| Pesadilla | 16 | Miedo experimental | Presión estándar (2.33/5) |
| Pesadilla | 17 | Práctica de la pesadilla final | Condiciones exigentes (2.99/5) |
| Desgastado | 1 | Orientación del pronóstico | Presión estándar (1.99/5) |
| Desgastado | 2 | Cizalladura del viento en piso abierto | Condiciones favorables (1.39/5) |
| Desgastado | 3 | Aviso de hidratación | Presión estándar (2.34/5) |
| Desgastado | 4 | Lavado de ruta de suministro | Condiciones favorables (1.59/5) |
| Desgastado | 5 | Seguridad en condiciones de poca visibilidad | Presión estándar (2.2/5) |
| Desgastado | 6 | Disculpa del Departamento Meteorológico | Presión estándar (2.15/5) |
| Desgastado | 7 | Vigilancia de tormenta nocturna | Presión estándar (2.19/5) |
| Desgastado | 8 | Advertencia de inundación en ruta | Presión estándar (1.93/5) |
| Desgastado | 9 | Prueba de humedad de ración | Presión estándar (2.4/5) |
| Desgastado | 10 | Ventana de refugio | Condiciones favorables (1.14/5) |
| Desgastado | 11 | Paraguas de seguridad Capacitación | Condiciones favorables (1.59/5) |
| Desgastado | 12 | Revisión climática del Black Lab | Condiciones exigentes (2.74/5) |
| Desgastado | 13 | Cambio de exposición extendido | Presión estándar (2.5/5) |
| Desgastado | 14 | Punto seco del armario de suministros | Condiciones favorables (1.11/5) |
| Desgastado | 15 | Precisión en viento cruzado | Presión estándar (2.16/5) |
| Desgastado | 16 | Célula meteorológica experimental | Presión estándar (2.25/5) |
| Desgastado | 17 | Auditoría climática final | Condiciones exigentes (3.0/5) |
| Precisión | 1 | Orientación de avistamiento | Presión estándar (2.02/5) |
| Precisión | 2 | Plano de línea de visión abierta | Condiciones favorables (1.43/5) |
| Precisión | 3 | Hidratación detrás de la cubierta | Presión estándar (2.32/5) |
| Precisión | 4 | Línea de tiro de suministro | Condiciones favorables (1.62/5) |
| Precisión | 5 | Puntería de seguridad | Presión estándar (2.21/5) |
| Precisión | 6 | Nota de balística meteorológica | Presión estándar (2.19/5) |
| Precisión | 7 | Auditoría de visión nocturna | Presión estándar (2.23/5) |
| Precisión | 8 | Índice de exposición en ruta | Presión estándar (1.99/5) |
| Precisión | 9 | Ración bajo fuego | Presión estándar (2.35/5) |
| Precisión | 10 | Recuperación detrás de la cobertura | Condiciones favorables (1.18/5) |
| Precisión | 11 | Entrenamiento con cobertura | Condiciones favorables (1.61/5) |
| Precisión | 12 | Laboratorio negro Revisión de precisión | Condiciones exigentes (2.64/5) |
| Precisión | 13 | Desplazamiento extendido de la línea de visión | Presión estándar (2.5/5) |
| Precisión | 14 | Punto ciego del armario de suministros | Condiciones favorables (1.34/5) |
| Precisión | 15 | Auditoría de precisión | Presión estándar (2.25/5) |
| Precisión | 16 | Balística experimental | Presión estándar (2.22/5) |
| Precisión | 17 | Examen de precisión final | Condiciones exigentes (2.85/5) |
| Logística | 1 | Orientación del inventario | Presión estándar (1.72/5) |
| Logística | 2 | Almacenamiento en piso abierto | Condiciones favorables (1.22/5) |
| Logística | 3 | Trámites de hidratación | Presión estándar (2.0/5) |
| Logística | 4 | Celebración de la cadena de suministro | Condiciones favorables (1.4/5) |
| Logística | 5 | Seguridad de los recibos | Presión estándar (1.89/5) |
| Logística | 6 | Transporte desgastado | Presión estándar (1.87/5) |
| Logística | 7 | Inventario nocturno | Presión estándar (1.9/5) |
| Logística | 8 | Memorando de optimización de ruta | Condiciones favorables (1.68/5) |
| Logística | 9 | Libro de raciones | Presión estándar (1.99/5) |
| Logística | 10 | Reempaque de recuperación | Condiciones favorables (0.99/5) |
| Logística | 11 | Capacitación sobre etiquetas de seguridad | Condiciones favorables (1.4/5) |
| Logística | 12 | Revisión de logística de Black Lab | Presión estándar (2.32/5) |
| Logística | 13 | Turno de transporte extendido | Presión estándar (2.05/5) |
| Logística | 14 | Auditoría milagrosa del armario de suministros | Condiciones favorables (0.97/5) |
| Logística | 15 | Precisión del conteo | Presión estándar (1.84/5) |
| Logística | 16 | Inventario experimental | Presión estándar (2.03/5) |
| Logística | 17 | Examen de logística final | Presión estándar (2.55/5) |
| Experimental | 1 | Orientación variable | Presión estándar (1.89/5) |
| Experimental | 2 | Hipótesis de piso abierto | Condiciones favorables (1.31/5) |
| Experimental | 3 | Control de agua cuestionable | Presión estándar (2.21/5) |
| Experimental | 4 | Sesgo de muestra de suministro | Condiciones favorables (1.5/5) |
| Experimental | 5 | Grupo de control de seguridad | Presión estándar (2.08/5) |
| Experimental | 6 | Anomalía climática | Presión estándar (2.07/5) |
| Experimental | 7 | Variable nocturna | Presión estándar (2.09/5) |
| Experimental | 8 | Ruta Deriva de la prueba | Presión estándar (1.84/5) |
| Experimental | 9 | Experimento de racionamiento | Presión estándar (2.24/5) |
| Experimental | 10 | Ventana de control de recuperación | Condiciones favorables (1.07/5) |
| Experimental | 11 | Error de datos de entrenamiento | Condiciones favorables (1.5/5) |
| Experimental | 12 | Revisión de la variable Black Lab | Presión estándar (2.56/5) |
| Experimental | 13 | Ejecución de prueba extendida | Presión estándar (2.35/5) |
| Experimental | 14 | Valor atípico del armario de suministros | Condiciones favorables (1.05/5) |
| Experimental | 15 | Variable de precisión | Presión estándar (2.02/5) |
| Experimental | 16 | Condiciones experimentales aprobadas | Presión estándar (2.13/5) |
| Experimental | 17 | Resultado experimental final | Condiciones exigentes (2.8/5) |
| Prueba de cumplimiento | 1 | Consumo de cumplimiento | Presión estándar (1.97/5) |
| Prueba de cumplimiento | 2 | Cumplimiento estructural | Condiciones favorables (1.38/5) |
| Prueba de cumplimiento | 3 | Cumplimiento de hidratación | Presión estándar (2.31/5) |
| Prueba de cumplimiento | 4 | Cumplimiento de suministro | Condiciones favorables (1.58/5) |
| Prueba de cumplimiento | 5 | Cumplimiento de seguridad | Presión estándar (2.19/5) |
| Prueba de cumplimiento | 6 | Cumplimiento climático | Presión estándar (2.14/5) |
| Prueba de cumplimiento | 7 | Cumplimiento nocturno | Presión estándar (2.2/5) |
| Prueba de cumplimiento | 8 | Cumplimiento de ruta | Presión estándar (1.93/5) |
| Prueba de cumplimiento | 9 | Ración Cumplimiento | Presión estándar (2.35/5) |
| Prueba de cumplimiento | 10 | Cumplimiento de recuperación | Condiciones favorables (1.13/5) |
| Prueba de cumplimiento | 11 | Cumplimiento de capacitación | Condiciones favorables (1.58/5) |
| Prueba de cumplimiento | 12 | Cumplimiento de Black Lab | Condiciones exigentes (2.67/5) |
| Prueba de cumplimiento | 13 | Cumplimiento de horas extras | Presión estándar (2.51/5) |
| Prueba de cumplimiento | 14 | Cumplimiento de Supply Miracle | Condiciones favorables (1.22/5) |
| Prueba de cumplimiento | 15 | Cumplimiento de precisión | Presión estándar (2.17/5) |
| Prueba de cumplimiento | 16 | Cumplimiento experimental | Presión estándar (2.22/5) |
| Prueba de cumplimiento | 17 | Prueba de cumplimiento final | Condiciones exigentes (2.9/5) |
