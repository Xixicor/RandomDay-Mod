<a id="randomday---builder-family"></a>
# RandomDay - Familia Builder

> **Fuente canónica en inglés:** [builder.md](../../../../profiles/families/builder.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Versión: `v0.3.16-alpha`

Expansión de la base y logística con objeciones estructurales ocasionales.

**Estilo de juego:** expansión de base con incursiones controladas **Tono de mensaje:**comedia de construcción del portapapeles

<a id="17-day-index"></a>
## Índice de 17 días

| Día | Perfil | Condiciones | Presión principal |
|---:|---|---|---|
| 1 | Orientación de zonificación | Presión estándar (1.71/5) | Presión ambiental |
| 2 | Autorización de piso abierto | Condiciones favorables (1.22/5) | Presión ambiental |
| 3 | Problema de humedad de los cimientos | Presión estándar (1.95/5) | Presión de supervivencia |
| 4 | Solicitud de material | Condiciones favorables (1.39/5) | Presión ambiental |
| 5 | Permiso de inspección | Presión estándar (1.87/5) | Presión ambiental |
| 6 | Aviso de retraso climático | Presión estándar (1.84/5) | Presión ambiental |
| 7 | Variación de construcción nocturna | Presión estándar (1.86/5) | Presión ambiental |
| 8 | Ruta al hardware | Condiciones favorables (1.66/5) | Presión ambiental |
| 9 | Concreto racionado | Presión estándar (1.93/5) | Presión de supervivencia |
| 10 | Ventana de construcción de recuperación | Condiciones favorables (0.99/5) | Presión ambiental |
| 11 | Barandilla de seguridad Seminario | Condiciones favorables (1.39/5) | Presión ambiental |
| 12 | Código de construcción de Black Lab | Presión estándar (2.29/5) | Presión de combate |
| 13 | Estructura de turno extendido | Presión estándar (1.99/5) | Presión de supervivencia |
| 14 | Aprobado para armario de suministros | Condiciones favorables (0.95/5) | Presión ambiental |
| 15 | Precisión de las mediciones | Presión estándar (1.82/5) | Presión ambiental |
| 16 | Plano de planta experimental | Presión estándar (2.0/5) | Presión ambiental |
| 17 | Revisión final de ocupación | Presión estándar (2.52/5) | Presión de combate |

<a id="day-1---zoning-orientation"></a>
## Día 1 - Orientación de zonificación

**ID de perfil:** `builder_zoning_orientation` **Condiciones generales:**Presión estándar (1.71/5) **Significado simple:**Presión estándar. Presión ambiental: La presión estándar es la presión principal. Presión de supervivencia: la presión estándar es el siguiente factor más importante. **Consejo para el jugador:** Verifique la electricidad, el agua, el refugio y la protección contra peligros antes de abandonar la base.

<a id="main-effects"></a>
### Efectos principales

- La capacidad de pila es extrema (8x).
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0,25x).
- Los enchufes se apagan por la noche.
- El botín puede regresar después de la recolección.

<a id="domain-ratings"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | favorable (1.61/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (1.9/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.46/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (2.22/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.5/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **orientación de la construcción de la base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.07**
- Oportunidad de evento especial: **2**

<a id="exact-sandbox-settings"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 0.8 | La velocidad de detección de enemigos está por debajo de lo normal con 0,8x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0,25x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 1.0 | El daño a las defensas del enemigo es casi normal, 1x. |
| EnemyHealthMultiplier | 0.9 | La resistencia del enemigo es casi normal con 0,9x. |
| EnemyPlayerDamageMultiplier | 0.9 | El daño enemigo a los jugadores es casi normal con 0,9x. |
| EnemySpawnRate | 0.6 | La frecuencia del enemigo está por debajo de lo normal con 0,6x. |
| FatigueSpeedMultiplier | 1.0 | La tasa de fatiga es casi normal en 1x. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 1.0 | El deterioro de los alimentos es casi normal a 1x. |
| GameDifficulty | 1 | La dificultad del juego es estándar. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.0 | La tasa de hambre es casi normal en 1x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.5 | La durabilidad del artículo es superior a lo normal en 1,5x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.6 | El peso del artículo está por debajo de lo normal con 0,6x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 1.3 | La ganancia de experiencia es superior a lo normal con 1,3x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 1.0 | La refrigeración es casi normal con 1x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 1.0 | La tasa de llenado del fregadero es casi normal, 1x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 1.0 | La tasa de sed es casi normal, 1x. |
| WeatherFrequency | 3 | La frecuencia del clima es normal. |

<a id="optional-adapter-selection"></a>
### Selección de adaptador opcional

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `builder_zoning_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-authorization"></a>
## Día 2 - Autorización de piso abierto

**ID de perfil:** `builder_open_floor_authorization` **Condiciones generales:**Condiciones favorables (1.22/5) **Significado simple:**Condiciones favorables. Presión ambiental: La presión estándar es la presión principal. Presión de supervivencia: las condiciones favorables son el siguiente factor más importante. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-1"></a>
### Efectos principales

- El daño por fuego amigo está muy por debajo de lo normal (0x).
- La durabilidad del artículo es extrema (4x).
- La capacidad de pila es extrema (8x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0.05x).
- El daño enemigo a las defensas está muy por debajo de lo normal(0.1x).

<a id="domain-ratings-1"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | favorable (0.97/5) | La presión hostil es más ligera de lo normal. |
| Presión de supervivencia | favorable (1.34/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | favorable (1.1/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (1.91/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.2/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-1"></a>
### Contexto del encuentro

- Nivel: **encuentros ligeros**
- Tema: **preparación de la construcción de la base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.028**
- Oportunidad de evento especial: **0**

<a id="exact-sandbox-settings-1"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 26 | El tamaño del inventario base son las condiciones de socorro en 26. |
| BonusPerkPoints | 7 | Los puntos de beneficio adicionales son las condiciones de socorro en 7. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.65 | La tasa de continencia está por debajo de lo normal en 0,65x. |
| DamageToAlliesMultiplier | 0.0 | El daño del fuego amigo está muy por debajo de lo normal en 0x. |
| DayNightCycleSpeedMultiplier | 0.9 | La velocidad del ciclo día-noche es casi normal en 0,9x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 0 | Las penas de muerte son mínimas. |
| DetectionSpeedMultiplier | 0.5 | La velocidad de detección del enemigo está muy por debajo de lo normal con 0,5x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,05x. |
| EnemyAccuracy | 0 | La precisión del enemigo es pobre. |
| EnemyDeployableDamageMultiplier | 0.1 | El daño a las defensas del enemigo está muy por debajo de lo normal con 0,1x. |
| EnemyHealthMultiplier | 0.8 | La resistencia del enemigo está por debajo de lo normal con 0,8x. |
| EnemyPlayerDamageMultiplier | 0.6 | El daño enemigo a los jugadores está por debajo de lo normal con 0,6x. |
| EnemySpawnRate | 0.3 | La frecuencia del enemigo está muy por debajo de lo normal, 0,3x. |
| FatigueSpeedMultiplier | 0.65 | La tasa de fatiga está por debajo de lo normal con 0,65x. |
| FirstTimeStartingWeapon | 2 | La provisión inicial de armas es una presión estándar de 2. |
| FoodSpoilSpeedMultiplier | 0.75 | El deterioro de los alimentos está por debajo normal a 0,75x. |
| GameDifficulty | 1 | La dificultad del juego es estándar. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.65 | La tasa de hambre está por debajo de lo normal a 0,65x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 4.0 | La durabilidad del artículo es extrema a 4x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.3 | El peso del artículo está muy por debajo de lo normal con 0,3x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 1.8 | La ganancia de experiencia está muy por encima normal a 1,8x. |
| PowerSocketsOffAtNight | falso | Los enchufes permanecen disponibles por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 1.5 | La refrigeración está por encima de lo normal con 1,5x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 2.0 | La tasa de recarga del fregadero está muy por encima de lo normal con 2x. |
| StorageByTag | falso | La organización de almacenamiento etiquetada está deshabilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 0.65 | La tasa de sed está por debajo de lo normal, 0,65x. |
| WeatherFrequency | 2 | La frecuencia climática es ocasional. |

<a id="optional-adapter-selection-1"></a>
### Selección de adaptador opcional

- `ante_up`: `quiet`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `builder_open_floor_authorization`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-3---foundation-moisture-issue"></a>
## Día 3: Problema de humedad de la base

**ID de perfil:** `builder_foundation_moisture_issue` **Condiciones generales:**Presión estándar (1.95/5) **Significado simple:**Presión estándar. Presión de supervivencia: la presión estándar es la presión principal. Presión ambiental: La presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva comida y agua, descansa antes de viajes largos y planifica paradas seguras.

<a id="main-effects-2"></a>
### Efectos principales

- La capacidad de pila es extrema (8x).
- El agua del fregadero puede no ser segura.
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0,25x).
- Dificultad del juego: difícil.

<a id="domain-ratings-2"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (1.78/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (2.59/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.62/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.22/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.5/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-2"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **recurso biológico de construcción de base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.091**
- Oportunidad de evento especial: **8**

<a id="exact-sandbox-settings-2"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.45 | La tasa de continencia está por encima de lo normal en 1,45x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 0.8 | La velocidad de detección de enemigos está por debajo de lo normal con 0,8x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0,25x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 0.9 | El daño del enemigo a las defensas es casi normal en 0,9x. |
| EnemyHealthMultiplier | 1.0 | La resistencia del enemigo es casi normal en 1x. |
| EnemyPlayerDamageMultiplier | 1.0 | El daño enemigo a los jugadores es casi normal en 1x. |
| EnemySpawnRate | 0.6 | La frecuencia del enemigo está por debajo de lo normal con 0,6x. |
| FatigueSpeedMultiplier | 1.1 | La tasa de fatiga es casi normal con 1,1x. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 1.25 | El deterioro de los alimentos es superior a lo normal con 1,25x. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.9 | La tasa de hambre es casi normal, 0,9x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.25 | La durabilidad del artículo está por encima de lo normal con 1,25x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.6 | El peso del artículo está por debajo de lo normal con 0,6x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 1.5 | La ganancia de experiencia es superior a lo normal con 1,5x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 0.75 | La refrigeración está por debajo de lo normal con 0,75x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.25 | La tasa de recarga del fregadero está muy por debajo de lo normal con 0,25x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | verdadero | El agua del fregadero puede no ser segura. |
| ThirstSpeedMultiplier | 1.2 | La tasa de sed está por encima de lo normal con 1,2x. |
| WeatherFrequency | 3 | La frecuencia del clima es normal. |

<a id="optional-adapter-selection-2"></a>
### Selección de adaptador opcional

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `builder_foundation_moisture_issue`
- `lethal_lasers`: `standard_safety`

<a id="day-4---material-requisition"></a>
## Día 4: Solicitud de material

**ID de perfil:** `builder_material_requisition` **Condiciones generales:**Condiciones favorables (1.39/5) **Significado simple:**Condiciones favorables. Presión ambiental: La presión estándar es la presión principal. Presión de supervivencia: las condiciones favorables son el siguiente factor más importante. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-3"></a>
### Efectos principales

- La durabilidad del artículo es extrema (2,5x).
- La capacidad de pila es extrema (8x).
- La tasa de recarga del fregadero es extrema (2,5x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0.05x).
- El peso del artículo está muy por debajo de lo normal (0,2x).

<a id="domain-ratings-3"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | favorable (1.27/5) | La presión hostil es más ligera de lo normal. |
| Presión de supervivencia | favorable (1.5/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | favorable (1.08/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (1.93/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.44/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-3"></a>
### Contexto del encuentro

- Nivel: **encuentros ligeros**
- Tema: **movilidad del botín de construcción de base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.056**
- Oportunidad de evento especial: **2**

<a id="exact-sandbox-settings-3"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.75 | La tasa de continencia está por debajo de lo normal en 0,75x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 0.6 | La velocidad de detección de enemigos está por debajo de lo normal en 0,6x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,05x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 0.5 | El daño a las defensas del enemigo está muy por debajo de lo normal con 0,5x. |
| EnemyHealthMultiplier | 0.8 | La resistencia del enemigo está por debajo de lo normal con 0,8x. |
| EnemyPlayerDamageMultiplier | 0.7 | El daño enemigo a los jugadores está por debajo de lo normal con 0,7x. |
| EnemySpawnRate | 0.5 | La frecuencia del enemigo está muy por debajo de lo normal en 0,5x. |
| FatigueSpeedMultiplier | 0.75 | La tasa de fatiga está por debajo de lo normal con 0,75x. |
| FirstTimeStartingWeapon | 6 | El suministro inicial de armas es condiciones favorables con 6. |
| FoodSpoilSpeedMultiplier | 0.6 | El deterioro de los alimentos está por debajo de lo normal con 0,6x. |
| GameDifficulty | 1 | La dificultad del juego es estándar. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.75 | La tasa de hambre está por debajo de lo normal con 0,75x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 2.5 | La durabilidad del artículo es extrema con 2,5x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.2 | El peso del artículo está muy por debajo de lo normal con 0,2x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 1.9 | La ganancia de experiencia está muy por encima de lo normal con 1,9x. |
| PowerSocketsOffAtNight | falso | Los enchufes permanecen disponibles por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 1.5 | La refrigeración está por encima de lo normal con 1,5x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 2.5 | La tasa de recarga del fregadero es extrema a 2,5x. |
| StorageByTag | falso | La organización de almacenamiento etiquetada está deshabilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 0.75 | La tasa de sed está por debajo de lo normal a 0,75x. |
| WeatherFrequency | 2 | La frecuencia climática es ocasional. |

<a id="optional-adapter-selection-3"></a>
### Selección de adaptador opcional

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `builder_material_requisition`
- `lethal_lasers`: `low_hazard`

<a id="day-5---permit-inspection"></a>
## Día 5 - Inspección de permisos

**ID de perfil:** `builder_permit_inspection` **Condiciones generales:**Presión estándar (1.87/5) **Significado simple:**Presión estándar. Presión ambiental: La presión estándar es la presión principal. Presión de combate: la presión estándar es el siguiente factor más fuerte. **Consejo para el jugador:** Verifique la electricidad, el agua, el refugio y la protección contra peligros antes de abandonar la base.

<a id="main-effects-4"></a>
### Efectos principales

- La capacidad de pila es extrema (8x).
- El daño por fuego amigo está muy por debajo de lo normal (0.1x).
- Dificultad del juego: difícil.
- Los enchufes se apagan por la noche.
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0,3x).

<a id="domain-ratings-4"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (2.09/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (1.94/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.4/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (2.17/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.51/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-4"></a>
### Contexto del encuentro

- Nivel: **encuentros intensos**
- Tema: **seguridad de construcción de base**
- Grupos activos máximos: **2**
- Probabilidad de encuentro mixto: **0.119**
- Oportunidad de evento especial: **14**

<a id="exact-sandbox-settings-4"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.1 | El daño del fuego amigo está muy por debajo de lo normal con 0,1x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.5 | La velocidad de detección del enemigo está por encima de lo normal con 1,5x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,3x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 1.0 | El daño a las defensas del enemigo es casi normal, 1x. |
| EnemyHealthMultiplier | 1.1 | La resistencia del enemigo es casi normal con 1,1x. |
| EnemyPlayerDamageMultiplier | 1.1 | El daño del enemigo a los jugadores es casi normal en 1,1x. |
| EnemySpawnRate | 0.9 | La frecuencia del enemigo es casi normal con 0,9x. |
| FatigueSpeedMultiplier | 1.15 | La tasa de fatiga es casi normal con 1,15x. |
| FirstTimeStartingWeapon | 4 | El suministro inicial de armas es favorable en 4. |
| FoodSpoilSpeedMultiplier | 1.0 | El deterioro de los alimentos es casi normal a 1x. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.0 | La tasa de hambre es casi normal en 1x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.25 | La durabilidad del artículo está por encima de lo normal con 1,25x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.6 | El peso del artículo está por debajo de lo normal con 0,6x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 1.8 | La ganancia de experiencia está muy por encima normal a 1,8x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 1.0 | La refrigeración es casi normal con 1x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 1.0 | La tasa de llenado del fregadero es casi normal, 1x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 1.0 | La tasa de sed es casi normal, 1x. |
| WeatherFrequency | 2 | La frecuencia climática es ocasional. |

<a id="optional-adapter-selection-4"></a>
### Selección de adaptador opcional

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `builder_permit_inspection`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weather-delay-notice"></a>
## Día 6 - Aviso de retraso climático

**ID de perfil:** `builder_weather_delay_notice` **Condiciones generales:**Presión estándar (1.84/5) **Significado simple:**Presión estándar. Presión ambiental: La presión estándar es la presión principal. Presión de supervivencia: la presión estándar es el siguiente factor más importante. **Consejo para el jugador:** Verifique la electricidad, el agua, el refugio y la protección contra peligros antes de abandonar la base.

<a id="main-effects-5"></a>
### Efectos principales

- Frecuencia climática: muy frecuente.
- La capacidad de pila es extrema (8x).
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0,25x).
- Dificultad del juego: difícil.

<a id="domain-ratings-5"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (1.8/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (1.96/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.57/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.52/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.5/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-5"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **clima de construcción de base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.091**
- Oportunidad de evento especial: **10**

<a id="exact-sandbox-settings-5"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.25 | La velocidad del ciclo día-noche es superior a lo normal en 1,25x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 0.8 | La velocidad de detección de enemigos está por debajo de lo normal con 0,8x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0,25x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 1.0 | El daño a las defensas del enemigo es casi normal, 1x. |
| EnemyHealthMultiplier | 1.0 | La resistencia del enemigo es casi normal en 1x. |
| EnemyPlayerDamageMultiplier | 0.9 | El daño enemigo a los jugadores es casi normal con 0,9x. |
| EnemySpawnRate | 0.7 | La frecuencia del enemigo está por debajo de lo normal con 0,7x. |
| FatigueSpeedMultiplier | 0.8 | La tasa de fatiga está por debajo de lo normal con 0,8x. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 1.25 | El deterioro de los alimentos es superior a lo normal con 1,25x. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.1 | La tasa de hambre es casi normal con 1,1x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.1 | La durabilidad del artículo es casi normal con 1,1x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.6 | El peso del artículo está por debajo de lo normal con 0,6x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 1.4 | La ganancia de experiencia está por encima de lo normal con 1,4x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 0.8 | La refrigeración está por debajo de lo normal con 0,8x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.75 | La tasa de recarga del fregadero está por debajo de lo normal, 0,75x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 1.35 | La tasa de sed está por encima de lo normal, 1,35x. |
| WeatherFrequency | 5 | La frecuencia del clima es muy frecuente. |

<a id="optional-adapter-selection-5"></a>
### Selección de adaptador opcional

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `builder_weather_delay_notice`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-construction-variance"></a>
## Día 7 - Construcción nocturna Variación

**ID de perfil:** `builder_night_construction_variance` **Condiciones generales:**Presión estándar (1.86/5) **Significado simple:**Presión estándar. Presión ambiental: La presión estándar es la presión principal. Presión de combate: la presión estándar es el siguiente factor más fuerte. **Consejo para el jugador:** Verifique la electricidad, el agua, el refugio y la protección contra peligros antes de abandonar la base.

<a id="main-effects-6"></a>
### Efectos principales

- La capacidad de pila es extrema (8x).
- Estado día-noche: sesgado por la noche.
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0,2x).
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- Dificultad del juego: difícil.

<a id="domain-ratings-6"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (2.11/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (1.84/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.34/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (2.33/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.49/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-6"></a>
### Contexto del encuentro

- Nivel: **encuentros intensos**
- Tema: **noche de construcción de base**
- Grupos activos máximos: **2**
- Probabilidad de encuentro mixto: **0.119**
- Oportunidad de evento especial: **16**

<a id="exact-sandbox-settings-6"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.95 | La tasa de continencia es casi normal en 0,95x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 2 | El estado día-noche tiene un sesgo nocturno. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.3 | La velocidad de detección del enemigo está por encima de lo normal con 1,3x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.2 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,2x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 1.0 | El daño a las defensas del enemigo es casi normal, 1x. |
| EnemyHealthMultiplier | 1.1 | La resistencia del enemigo es casi normal con 1,1x. |
| EnemyPlayerDamageMultiplier | 1.1 | El daño del enemigo a los jugadores es casi normal en 1,1x. |
| EnemySpawnRate | 1.0 | La frecuencia del enemigo es casi normal en 1x. |
| FatigueSpeedMultiplier | 1.0 | La tasa de fatiga es casi normal en 1x. |
| FirstTimeStartingWeapon | 5 | El suministro inicial de armas son condiciones favorables en 5. |
| FoodSpoilSpeedMultiplier | 1.0 | El deterioro de los alimentos es casi normal a 1x. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.95 | La tasa de hambre es casi normal con 0,95x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.5 | La durabilidad del artículo es superior a lo normal en 1,5x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.5 | El peso del artículo está muy por debajo de lo normal a 0,5x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.0 | Ganancia de experiencia está muy por encima de lo normal, 2x. |
| PowerSocketsOffAtNight | falso | Los enchufes permanecen disponibles por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 1.0 | La refrigeración es casi normal con 1x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 1.0 | La tasa de llenado del fregadero es casi normal, 1x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 0.95 | La tasa de sed es casi normal con 0,95x. |
| WeatherFrequency | 4 | La frecuencia del clima es frecuente. |

<a id="optional-adapter-selection-6"></a>
### Selección de adaptador opcional

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `builder_night_construction_variance`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-to-hardware"></a>
## Día 8 - Ruta al hardware

**ID de perfil:** `builder_route_to_hardware` **Condiciones generales:**Condiciones favorables (1.66/5) **Significado simple:**Condiciones favorables. Presión ambiental: La presión estándar es la presión principal. Presión de combate: la presión estándar es el siguiente factor más fuerte. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-7"></a>
### Efectos principales

- La velocidad del ciclo día-noche es extrema (3x).
- La capacidad de pila es extrema (8x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0.15x).
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- Dificultad del juego: difícil.

<a id="domain-ratings-7"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (1.8/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | favorable (1.42/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | favorable (1.21/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (2.56/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.47/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-7"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **ruta de construcción de base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.105**
- Oportunidad de evento especial: **14**

<a id="exact-sandbox-settings-7"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.7 | La tasa de continencia está por debajo de lo normal a 0,7x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 3.0 | La velocidad del ciclo día-noche es extrema a 3x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.1 | La velocidad de detección de enemigos es casi normal, 1,1x. |
| DisableResearchMinigame | verdadero | La omisión de investigación está habilitada. |
| DurabilityLossOnDeathMultiplier | 0.15 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,15x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 0.8 | El daño del enemigo a las defensas está por debajo de lo normal con 0,8x. |
| EnemyHealthMultiplier | 0.8 | La resistencia del enemigo está por debajo de lo normal con 0,8x. |
| EnemyPlayerDamageMultiplier | 0.9 | El daño enemigo a los jugadores es casi normal con 0,9x. |
| EnemySpawnRate | 0.8 | La frecuencia del enemigo está por debajo de lo normal con 0,8x. |
| FatigueSpeedMultiplier | 0.7 | La tasa de fatiga está por debajo de lo normal con 0,7x. |
| FirstTimeStartingWeapon | 6 | El suministro inicial de armas es condiciones favorables con 6. |
| FoodSpoilSpeedMultiplier | 0.9 | El deterioro de los alimentos es casi normal con 0,9x. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.7 | La tasa de hambre está por debajo de lo normal con 0,7x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.25 | La durabilidad del artículo está por encima de lo normal con 1,25x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.4 | El peso del artículo está muy por debajo de lo normal con 0,4x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.0 | Ganancia de experiencia está muy por encima de lo normal, 2x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 1.1 | La refrigeración es casi normal con 1,1x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 1.5 | La tasa de recarga del fregadero está por encima de lo normal con 1,5x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 0.7 | El índice de sed está por debajo de lo normal, 0,7x. |
| WeatherFrequency | 3 | La frecuencia del clima es normal. |

<a id="optional-adapter-selection-7"></a>
### Selección de adaptador opcional

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `builder_route_to_hardware`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---rationed-concrete"></a>
## Día 9 - Concreto racionado

**ID de perfil:** `builder_rationed_concrete` **Condiciones generales:**Presión estándar (1.93/5) **Significado simple:**Presión estándar. Presión de supervivencia: la presión estándar es la presión principal. Presión ambiental: La presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva comida y agua, descansa antes de viajes largos y planifica paradas seguras.

<a id="main-effects-8"></a>
### Efectos principales

- La capacidad de pila es extrema (8x).
- El agua del fregadero puede no ser segura.
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- El deterioro de los alimentos está muy por encima de lo normal (2x).
- Los enchufes se apagan por la noche.

<a id="domain-ratings-8"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | favorable (1.66/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (2.6/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | estándar (1.77/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.17/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.53/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-8"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **escasez de construcción de base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.084**
- Oportunidad de evento especial: **8**

<a id="exact-sandbox-settings-8"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.25 | La tasa de continencia está por encima de lo normal con 1,25x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 0.8 | La velocidad de detección de enemigos está por debajo de lo normal con 0,8x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | La pérdida de durabilidad por muerte está muy por debajo de lo normal con 0,35x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 1.0 | El daño a las defensas del enemigo es casi normal, 1x. |
| EnemyHealthMultiplier | 1.1 | La resistencia del enemigo es casi normal con 1,1x. |
| EnemyPlayerDamageMultiplier | 1.0 | El daño enemigo a los jugadores es casi normal en 1x. |
| EnemySpawnRate | 0.6 | La frecuencia del enemigo está por debajo de lo normal con 0,6x. |
| FatigueSpeedMultiplier | 1.3 | La tasa de fatiga está por encima de lo normal con 1,3x. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 2.0 | El deterioro de los alimentos está muy por encima de lo normal con 2x. |
| GameDifficulty | 1 | La dificultad del juego es estándar. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.1 | La tasa de hambre es casi normal con 1,1x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 0.75 | La durabilidad del artículo está por debajo de lo normal con 0,75x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.8 | El peso del artículo está por debajo de lo normal con 0,8x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 1.5 | La ganancia de experiencia es superior a lo normal con 1,5x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 0.5 | La refrigeración está muy por debajo de lo normal en 0,5x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.5 | La tasa de recarga del fregadero está muy por debajo de lo normal con 0,5x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | verdadero | El agua del fregadero puede no ser segura. |
| ThirstSpeedMultiplier | 1.0 | La tasa de sed es casi normal, 1x. |
| WeatherFrequency | 2 | La frecuencia climática es ocasional. |

<a id="optional-adapter-selection-8"></a>
### Selección de adaptador opcional

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `builder_rationed_concrete`
- `lethal_lasers`: `standard_safety`

<a id="day-10---recovery-build-window"></a>
## Día 10 - Ventana de compilación de recuperación

**ID de perfil:** `builder_recovery_build_window` **Condiciones generales:**Condiciones favorables (0.99/5) **Significado simple:** Condiciones favorables. Presión ambiental: Las condiciones favorables son la principal presión. Presión de recuperación: las condiciones favorables son el siguiente factor más importante. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-9"></a>
### Efectos principales

- Puntos de bonificación son condiciones de alivio (10).
- El daño por fuego amigo está muy por debajo de lo normal (0x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0x).
- La durabilidad del artículo es extrema (3x).
- La capacidad de pila es extrema (8x).

<a id="domain-ratings-9"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | alivio (0.77/5) | La presión hostil es más ligera de lo normal. |
| Presión de supervivencia | favorable (1.02/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | favorable (0.88/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | favorable (1.54/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.19/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-9"></a>
### Contexto del encuentro

- Nivel: **encuentros mínimos**
- Tema: **recuperación de construcción de base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0**
- Oportunidad de evento especial: **0**

<a id="exact-sandbox-settings-9"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 30 | El tamaño del inventario base son las condiciones de socorro en 30. |
| BonusPerkPoints | 10 | Los puntos de beneficio adicionales son las condiciones de alivio en 10. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.45 | La tasa de continencia está muy por debajo normal a 0,45x. |
| DamageToAlliesMultiplier | 0.0 | El daño del fuego amigo está muy por debajo de lo normal en 0x. |
| DayNightCycleSpeedMultiplier | 0.85 | La velocidad del ciclo día-noche es casi normal a 0,85x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 0 | Las penas de muerte son mínimas. |
| DetectionSpeedMultiplier | 0.3 | La velocidad de detección del enemigo está muy por debajo de lo normal con 0,3x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0x. |
| EnemyAccuracy | 0 | La precisión del enemigo es pobre. |
| EnemyDeployableDamageMultiplier | 0.1 | El daño a las defensas del enemigo está muy por debajo de lo normal con 0,1x. |
| EnemyHealthMultiplier | 0.7 | La resistencia del enemigo está por debajo de lo normal en 0,7x. |
| EnemyPlayerDamageMultiplier | 0.3 | El daño del enemigo a los jugadores está muy por debajo de lo normal en 0,3x. |
| EnemySpawnRate | 0.3 | La frecuencia del enemigo está muy por debajo de lo normal, 0,3x. |
| FatigueSpeedMultiplier | 0.45 | La tasa de fatiga está muy por debajo de lo normal con 0,45x. |
| FirstTimeStartingWeapon | 2 | La provisión inicial de armas es una presión estándar de 2. |
| FoodSpoilSpeedMultiplier | 0.4 | El deterioro de los alimentos está muy por debajo de lo normal con 0,4x. |
| GameDifficulty | 1 | La dificultad del juego es estándar. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.45 | La tasa de hambre está muy por debajo de lo normal con 0,45x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 3.0 | La durabilidad del artículo es extrema con 3x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.2 | El peso del artículo está muy por debajo de lo normal con 0,2x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.6 | La ganancia de experiencia es extrema con 2,6x. |
| PowerSocketsOffAtNight | falso | Los enchufes permanecen disponibles por la noche. |
| RadiationDealsDamage | falso | El daño por radiación está desactivado. |
| RefrigerationEffectivenessMultiplier | 1.8 | La refrigeración está muy por encima de lo normal con 1,8x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 3.0 | La tasa de recarga del fregadero es extrema, 3x. |
| StorageByTag | falso | La organización de almacenamiento etiquetada está deshabilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 0.45 | La tasa de sed está muy por debajo de lo normal, 0,45x. |
| WeatherFrequency | 1 | La frecuencia climática es poco común. |

<a id="optional-adapter-selection-9"></a>
### Selección de adaptador opcional

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `builder_recovery_build_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---safety-rail-seminar"></a>
## Día 11 - Safety Rail Seminario

**ID de perfil:** `builder_safety_rail_seminar` **Condiciones generales:**Condiciones favorables (1.39/5) **Significado simple:**Condiciones favorables. Presión ambiental: La presión estándar es la presión principal. Presión de supervivencia: las condiciones favorables son el siguiente factor más importante. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-10"></a>
### Efectos principales

- La pérdida de durabilidad al morir está muy por debajo de lo normal (0x).
- La capacidad de pila es extrema (8x).
- La ganancia de experiencia es extrema (3.4x).
- La durabilidad del artículo está muy por encima de lo normal (2,25x).
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).

<a id="domain-ratings-10"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | favorable (1.27/5) | La presión hostil es más ligera de lo normal. |
| Presión de supervivencia | favorable (1.58/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.0/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (1.96/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.43/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-10"></a>
### Contexto del encuentro

- Nivel: **encuentros ligeros**
- Tema: **entrenamiento de construcción de base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.049**
- Oportunidad de evento especial: **3**

<a id="exact-sandbox-settings-10"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.8 | La tasa de continencia está por debajo de lo normal con 0,8x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.15 | La velocidad del ciclo día-noche es casi normal con 1,15x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 0.7 | La velocidad de detección del enemigo está por debajo de lo normal con 0,7x. |
| DisableResearchMinigame | verdadero | La omisión de investigación está habilitada. |
| DurabilityLossOnDeathMultiplier | 0.0 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 0.4 | El daño enemigo a las defensas está muy por debajo de lo normal con 0,4x. |
| EnemyHealthMultiplier | 0.8 | La resistencia del enemigo está por debajo de lo normal con 0,8x. |
| EnemyPlayerDamageMultiplier | 0.6 | El daño enemigo a los jugadores está por debajo de lo normal con 0,6x. |
| EnemySpawnRate | 0.6 | La frecuencia del enemigo está por debajo de lo normal con 0,6x. |
| FatigueSpeedMultiplier | 0.8 | La tasa de fatiga está por debajo de lo normal con 0,8x. |
| FirstTimeStartingWeapon | 6 | El suministro inicial de armas es condiciones favorables con 6. |
| FoodSpoilSpeedMultiplier | 0.8 | El deterioro de los alimentos está por debajo de lo normal con 0,8x. |
| GameDifficulty | 1 | La dificultad del juego es estándar. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.8 | La tasa de hambre está por debajo de lo normal con 0,8x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 2.25 | Durabilidad del artículo está muy por encima de lo normal con 2,25x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.4 | El peso del artículo está muy por debajo de lo normal con 0,4x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 3.4 | La ganancia de experiencia es extrema, 3,4 veces. |
| PowerSocketsOffAtNight | falso | Los enchufes permanecen disponibles por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 1.3 | La refrigeración está por encima de lo normal con 1,3x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 2.0 | La tasa de recarga del fregadero está muy por encima de lo normal con 2x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 0.8 | La tasa de sed está por debajo de lo normal, 0,8x. |
| WeatherFrequency | 2 | La frecuencia climática es ocasional. |

<a id="optional-adapter-selection-10"></a>
### Selección de adaptador opcional

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `builder_safety_rail_seminar`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-building-code"></a>
## Día 12: Código de construcción de Black Lab

**ID de perfil:** `builder_black_lab_building_code` **Condiciones generales:**Presión estándar (2.29/5) **Significado simple:**Presión estándar. Presión de combate: Las condiciones exigentes son la presión principal. Presión de supervivencia: la presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva municiones, mantén una ruta de retirada y evita luchar sin apoyo.

<a id="main-effects-11"></a>
### Efectos principales

- Dificultad del juego: muy difícil.
- La capacidad de pila es extrema (8x).
- La ganancia de experiencia es extrema (2,7x).
- El agua del fregadero puede no ser segura.
- El daño por fuego amigo está muy por debajo de lo normal (0.15x).

<a id="domain-ratings-11"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | exigente (2.74/5) | La presión hostil es elevada; prepárese antes de participar. |
| Presión de supervivencia | estándar (2.53/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.46/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (2.22/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | estándar (1.79/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-11"></a>
### Contexto del encuentro

- Nivel: **encuentros extremos**
- Tema: **prueba pesada de construcción de base**
- Grupos activos máximos: **2**
- Probabilidad de encuentro mixto: **0.161**
- Oportunidad de evento especial: **22**

<a id="exact-sandbox-settings-11"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.15 | El daño por fuego amigo está muy por debajo de lo normal con 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 2 | Las penas de muerte son fuertes. |
| DetectionSpeedMultiplier | 1.5 | La velocidad de detección del enemigo está por encima de lo normal con 1,5x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.4 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,4x. |
| EnemyAccuracy | 2 | La precisión del enemigo es estándar. |
| EnemyDeployableDamageMultiplier | 1.4 | El daño enemigo a las defensas está por encima de lo normal con 1,4x. |
| EnemyHealthMultiplier | 1.7 | La resistencia del enemigo está muy por encima de lo normal con 1,7x. |
| EnemyPlayerDamageMultiplier | 1.7 | El daño enemigo a los jugadores está muy por encima de lo normal en 1,7x. |
| EnemySpawnRate | 1.3 | La frecuencia del enemigo está por encima de lo normal con 1,3x. |
| FatigueSpeedMultiplier | 1.15 | La tasa de fatiga es casi normal con 1,15x. |
| FirstTimeStartingWeapon | 1 | El suministro inicial de armas tiene una presión estándar de 1. |
| FoodSpoilSpeedMultiplier | 1.15 | El deterioro de los alimentos es casi normal con 1,15x. |
| GameDifficulty | 3 | La dificultad del juego es muy difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.15 | La tasa de hambre es casi normal con 1,15x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.1 | La durabilidad del artículo es casi normal con 1,1x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.6 | El peso del artículo está por debajo de lo normal con 0,6x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.7 | La ganancia de experiencia es extrema: 2,7x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 0.85 | La refrigeración es casi normal con 0,85x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.75 | La tasa de recarga del fregadero está por debajo de lo normal, 0,75x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | verdadero | El agua del fregadero puede no ser segura. |
| ThirstSpeedMultiplier | 1.15 | La tasa de sed es casi normal con 1,15x. |
| WeatherFrequency | 3 | La frecuencia del clima es normal. |

<a id="optional-adapter-selection-11"></a>
### Selección de adaptador opcional

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `builder_black_lab_building_code`
- `lethal_lasers`: `high_hazard`

<a id="day-13---extended-shift-framing"></a>
## Día 13: Encuadre de turno extendido

**ID de perfil:** `builder_extended_shift_framing` **Condiciones generales:**Presión estándar (1.99/5) **Significado simple:**Presión estándar. Presión de supervivencia: Las condiciones exigentes son la presión principal. Presión ambiental: La presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva comida y agua, descansa antes de viajes largos y planifica paradas seguras.

<a id="main-effects-12"></a>
### Efectos principales

- La capacidad de pila es extrema (8x).
- El agua del fregadero puede no ser segura.
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- Dificultad del juego: difícil.
- Los enchufes se apagan por la noche.

<a id="domain-ratings-12"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (1.81/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | exigente (2.75/5) | El hambre, la sed, la fatiga o el saneamiento necesitan más atención. |
| Presión de recursos | estándar (1.72/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.01/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.53/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-12"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **resistencia de construcción de base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.098**
- Oportunidad de evento especial: **7**

<a id="exact-sandbox-settings-12"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.35 | La tasa de continencia está por encima de lo normal con 1,35x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 0.3 | La velocidad del ciclo día-noche está muy por debajo de lo normal con 0,3x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 0.8 | La velocidad de detección de enemigos está por debajo de lo normal con 0,8x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | La pérdida de durabilidad por muerte está muy por debajo de lo normal con 0,35x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 0.9 | El daño del enemigo a las defensas es casi normal en 0,9x. |
| EnemyHealthMultiplier | 1.2 | La resistencia del enemigo está por encima de lo normal en 1,2x. |
| EnemyPlayerDamageMultiplier | 1.1 | El daño del enemigo a los jugadores es casi normal en 1,1x. |
| EnemySpawnRate | 0.5 | La frecuencia del enemigo está muy por debajo de lo normal en 0,5x. |
| FatigueSpeedMultiplier | 1.2 | La tasa de fatiga está por encima de lo normal, 1,2 veces. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 1.8 | El deterioro de los alimentos está muy por encima de lo normal con 1,8 veces. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.3 | La tasa de hambre está por encima de lo normal con 1,3x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 0.9 | La durabilidad del artículo es casi normal con 0,9 veces. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.9 | El peso del artículo es casi normal en 0,9x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 1.7 | La ganancia de experiencia está muy por encima de lo normal con 1,7x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 0.65 | La refrigeración está por debajo de lo normal a 0,65x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.35 | La tasa de recarga del fregadero está muy por debajo de lo normal a 0,35x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | verdadero | El agua del fregadero puede no ser segura. |
| ThirstSpeedMultiplier | 1.3 | La tasa de sed está por encima de lo normal, 1,3 veces. |
| WeatherFrequency | 2 | La frecuencia climática es ocasional. |

<a id="optional-adapter-selection-12"></a>
### Selección de adaptador opcional

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `builder_extended_shift_framing`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-approved"></a>
## Día 14: Armario de suministros aprobado

**ID de perfil:** `builder_supply_closet_approved` **Condiciones generales:**Condiciones favorables (0.95/5) **Significado simple:** Condiciones favorables. Presión ambiental: Las condiciones favorables son la principal presión. Presión de recuperación: las condiciones favorables son el siguiente factor más importante. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-13"></a>
### Efectos principales

- El tamaño del inventario base son las condiciones de socorro (40).
- Puntos de bonificación son condiciones de alivio (12).
- El daño por fuego amigo está muy por debajo de lo normal (0x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0x).
- La durabilidad del artículo es extrema (6x).

<a id="domain-ratings-13"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | favorable (0.81/5) | La presión hostil es más ligera de lo normal. |
| Presión de supervivencia | favorable (0.86/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | alivio (0.77/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | favorable (1.58/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.19/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-13"></a>
### Contexto del encuentro

- Nivel: **encuentros mínimos**
- Tema: **alivio de construcción de base**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0**
- Oportunidad de evento especial: **0**

<a id="exact-sandbox-settings-13"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 40 | El tamaño del inventario base son las condiciones de socorro en 40. |
| BonusPerkPoints | 12 | Los puntos de bonificación son las condiciones de alivio en 12. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.35 | La tasa de continencia es muy por debajo de lo normal con 0,35x. |
| DamageToAlliesMultiplier | 0.0 | El daño del fuego amigo está muy por debajo de lo normal en 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 0 | Las penas de muerte son mínimas. |
| DetectionSpeedMultiplier | 0.4 | La velocidad de detección de enemigos está muy por debajo de lo normal a 0,4x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0x. |
| EnemyAccuracy | 0 | La precisión del enemigo es pobre. |
| EnemyDeployableDamageMultiplier | 0.1 | El daño a las defensas del enemigo está muy por debajo de lo normal con 0,1x. |
| EnemyHealthMultiplier | 0.7 | La resistencia del enemigo está por debajo de lo normal en 0,7x. |
| EnemyPlayerDamageMultiplier | 0.4 | El daño enemigo a los jugadores está muy por debajo de lo normal con 0,4x. |
| EnemySpawnRate | 0.3 | La frecuencia del enemigo está muy por debajo de lo normal, 0,3x. |
| FatigueSpeedMultiplier | 0.35 | La tasa de fatiga está muy por debajo de lo normal con 0,35x. |
| FirstTimeStartingWeapon | 6 | El suministro inicial de armas es condiciones favorables con 6. |
| FoodSpoilSpeedMultiplier | 0.25 | El deterioro de los alimentos está muy por debajo de lo normal por debajo de lo normal con 0,25x. |
| GameDifficulty | 1 | La dificultad del juego es estándar. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.35 | La tasa de hambre está muy por debajo de lo normal con 0,35x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 6.0 | La durabilidad del artículo es extrema con 6x. |
| ItemStackSizeMultiplier | 14 | La capacidad de la pila es extrema con 14x. |
| ItemWeightMultiplier | 0.1 | El peso del artículo está muy por debajo de lo normal en 0,1x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 3.8 | La ganancia de experiencia es extrema con 3,8x. |
| PowerSocketsOffAtNight | falso | Los enchufes permanecen disponibles por la noche. |
| RadiationDealsDamage | falso | El daño por radiación está desactivado. |
| RefrigerationEffectivenessMultiplier | 2.0 | La refrigeración está muy por encima de lo normal con 2x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 5.0 | La tasa de recarga del fregadero es extrema con 5x. |
| StorageByTag | falso | La organización de almacenamiento etiquetada está deshabilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 0.35 | La tasa de sed está muy por debajo de lo normal con 0,35x. |
| WeatherFrequency | 1 | La frecuencia climática es poco común. |

<a id="optional-adapter-selection-13"></a>
### Selección de adaptador opcional

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `builder_supply_closet_approved`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-of-measurements"></a>
## Día 15 - Precisión de las mediciones

**ID de perfil:** `builder_accuracy_of_measurements` **Condiciones generales:**Presión estándar (1.82/5) **Significado simple:**Presión estándar. Presión ambiental: La presión estándar es la presión principal. Presión de supervivencia: la presión estándar es el siguiente factor más importante. **Consejo para el jugador:** Verifique la electricidad, el agua, el refugio y la protección contra peligros antes de abandonar la base.

<a id="main-effects-14"></a>
### Efectos principales

- El daño por fuego amigo está muy por debajo de lo normal (0x).
- La capacidad de pila es extrema (8x).
- La ganancia de experiencia está muy por encima de lo normal (2,2x).
- Dificultad del juego: difícil.
- Los enchufes se apagan por la noche.

<a id="domain-ratings-14"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (1.92/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (1.98/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.39/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (2.17/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.51/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-14"></a>
### Contexto del encuentro

- Nivel: **encuentros intensos**
- Tema: **precisión de construcción de base**
- Grupos activos máximos: **2**
- Probabilidad de encuentro mixto: **0.119**
- Oportunidad de evento especial: **14**

<a id="exact-sandbox-settings-14"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.0 | El daño del fuego amigo está muy por debajo de lo normal en 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.1 | La velocidad de detección de enemigos es casi normal, 1,1x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,3x. |
| EnemyAccuracy | 1 | La precisión del enemigo se reduce. |
| EnemyDeployableDamageMultiplier | 0.8 | El daño del enemigo a las defensas está por debajo de lo normal con 0,8x. |
| EnemyHealthMultiplier | 0.9 | La resistencia del enemigo es casi normal con 0,9x. |
| EnemyPlayerDamageMultiplier | 1.3 | El daño del enemigo a los jugadores está por encima de lo normal con 1,3x. |
| EnemySpawnRate | 0.7 | La frecuencia del enemigo está por debajo de lo normal con 0,7x. |
| FatigueSpeedMultiplier | 1.25 | La tasa de fatiga es superior a lo normal con 1,25x. |
| FirstTimeStartingWeapon | 4 | El suministro inicial de armas es favorable en 4. |
| FoodSpoilSpeedMultiplier | 1.0 | El deterioro de los alimentos es casi normal a 1x. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.0 | La tasa de hambre es casi normal en 1x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.0 | La durabilidad del objeto es casi normal con 1x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.6 | El peso del artículo está por debajo de lo normal con 0,6x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.2 | La ganancia de experiencia está muy por encima de lo normal con 2,2x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 1.0 | La refrigeración es casi normal con 1x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 1.0 | La tasa de llenado del fregadero es casi normal, 1x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | falso | Esta regla no contamina el agua del fregadero. |
| ThirstSpeedMultiplier | 1.0 | La tasa de sed es casi normal, 1x. |
| WeatherFrequency | 2 | La frecuencia climática es ocasional. |

<a id="optional-adapter-selection-14"></a>
### Selección de adaptador opcional

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `builder_accuracy_of_measurements`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-floor-plan"></a>
## Día 16 - Plano de planta experimental

**ID de perfil:** `builder_experimental_floor_plan` **Condiciones generales:**Presión estándar (2.0/5) **Significado simple:**Presión estándar. Presión ambiental: La presión estándar es la presión principal. Presión de supervivencia: la presión estándar es el siguiente factor más importante. **Consejo para el jugador:** Verifique la electricidad, el agua, el refugio y la protección contra peligros antes de abandonar la base.

<a id="main-effects-15"></a>
### Efectos principales

- Dificultad del juego: muy difícil.
- Algunas radiaciones pueden carecer de una advertencia visible.
- Frecuencia climática: muy frecuente.
- El daño por fuego amigo está muy por debajo de lo normal (0x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0x).

<a id="domain-ratings-15"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (2.13/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (2.36/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.14/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (2.59/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.67/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-15"></a>
### Contexto del encuentro

- Nivel: **encuentros extremos**
- Tema: **construcción de base experimental**
- Grupos activos máximos: **2**
- Probabilidad de encuentro mixto: **0.154**
- Oportunidad de evento especial: **20**

<a id="exact-sandbox-settings-15"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.2 | La tasa de continencia está por encima de lo normal en 1,2x. |
| DamageToAlliesMultiplier | 0.0 | El daño del fuego amigo está muy por debajo de lo normal en 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | La velocidad del ciclo día-noche está por encima de lo normal con 1,5x. |
| DayNightCycleState | 1 | El estado día-noche está sesgado hacia el día. |
| DeathPenalties | 2 | Las penas de muerte son fuertes. |
| DetectionSpeedMultiplier | 0.4 | La velocidad de detección de enemigos está muy por debajo de lo normal a 0,4x. |
| DisableResearchMinigame | verdadero | La omisión de investigación está habilitada. |
| DurabilityLossOnDeathMultiplier | 0.0 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0x. |
| EnemyAccuracy | 2 | La precisión del enemigo es estándar. |
| EnemyDeployableDamageMultiplier | 0.7 | El daño a las defensas del enemigo está por debajo de lo normal con 0,7x. |
| EnemyHealthMultiplier | 1.3 | La resistencia del enemigo está por encima de lo normal con 1,3x. |
| EnemyPlayerDamageMultiplier | 0.8 | El daño enemigo a los jugadores está por debajo de lo normal con 0,8x. |
| EnemySpawnRate | 0.9 | La frecuencia del enemigo es casi normal con 0,9x. |
| FatigueSpeedMultiplier | 0.8 | La tasa de fatiga está por debajo de lo normal con 0,8x. |
| FirstTimeStartingWeapon | 6 | El suministro inicial de armas es condiciones favorables con 6. |
| FoodSpoilSpeedMultiplier | 0.4 | El deterioro de los alimentos está muy por debajo de lo normal con 0,4x. |
| GameDifficulty | 3 | La dificultad del juego es muy difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.8 | La tasa de hambre está por debajo de lo normal con 0,8x. |
| InvisibleRadiation | verdadero | Algunas radiaciones pueden carecer de una advertencia visible. |
| ItemDurabilityMultiplier | 5.0 | La durabilidad del artículo es extrema con 5x. |
| ItemStackSizeMultiplier | 8 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.1 | El peso del artículo está muy por debajo de lo normal en 0,1x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 4.3 | La ganancia de experiencia es extrema, 4,3 veces. |
| PowerSocketsOffAtNight | falso | Los enchufes permanecen disponibles por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 2.0 | La refrigeración está muy por encima de lo normal con 2x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.0 | La tasa de recarga del fregadero está muy por debajo de lo normal con 0x. |
| StorageByTag | falso | La organización de almacenamiento etiquetada está deshabilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | verdadero | El agua del fregadero puede no ser segura. |
| ThirstSpeedMultiplier | 1.2 | La tasa de sed está por encima de lo normal con 1,2x. |
| WeatherFrequency | 5 | La frecuencia del clima es muy frecuente. |

<a id="optional-adapter-selection-15"></a>
### Selección de adaptador opcional

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `builder_experimental_floor_plan`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-occupancy-review"></a>
## Día 17 - Revisión final de ocupación

**ID de perfil:** `builder_final_occupancy_review` **Condiciones generales:**Presión estándar (2.52/5) **Significado simple:** Presión estándar. Presión de combate: Las condiciones exigentes son la presión principal. Presión de supervivencia: las condiciones exigentes son el siguiente factor más fuerte. **Consejo para el jugador:**Lleva municiones, mantén una ruta de retirada y evita luchar sin apoyo.

<a id="main-effects-16"></a>
### Efectos principales

- Dificultad del juego: muy difícil.
- Frecuencia climática: muy frecuente.
- La capacidad de pila es extrema (14x).
- La ganancia de experiencia es extrema (3,9x).
- El agua del fregadero puede no ser segura.

<a id="domain-ratings-16"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | exigente (3.08/5) | La presión hostil es elevada; prepárese antes de participar. |
| Presión de supervivencia | exigente (2.72/5) | El hambre, la sed, la fatiga o el saneamiento necesitan más atención. |
| Presión de recursos | favorable (1.59/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.55/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | estándar (1.81/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-16"></a>
### Contexto del encuentro

- Nivel: **encuentros finales**
- Tema: **culminación de la base de construcción**
- Grupos activos máximos: **2**
- Probabilidad de encuentro mixto: **0.196**
- Oportunidad de evento especial: **30**

<a id="exact-sandbox-settings-16"></a>
### Configuración exacta de la zona de pruebas

| Configuración | Valor bruto | Significado traducido |
|---|---:|---|
| AllowCharacterReset | verdadero | El restablecimiento de caracteres permanece disponible. |
| AllowIronMode | falso | El modo Hierro está deshabilitado. |
| AllowPagers | verdadero | Buscapersonas disponibles. |
| AllowRecipeSharing | verdadero | Se puede compartir recetas. |
| AllowTransmog | verdadero | Personalización de apariencia disponible. |
| BaseInventorySize | 18 | El tamaño del inventario base es condiciones favorables a 18. |
| BonusPerkPoints | 4 | Puntos de bonificación son condiciones favorables en 4. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.1 | La tasa de continencia es casi normal con 1,1x. |
| DamageToAlliesMultiplier | 0.1 | El daño del fuego amigo está muy por debajo de lo normal con 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | La velocidad del ciclo día-noche está por encima de lo normal con 1,45x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 2 | Las penas de muerte son fuertes. |
| DetectionSpeedMultiplier | 1.8 | La velocidad de detección del enemigo está muy por encima de lo normal con 1,8x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.5 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,5x. |
| EnemyAccuracy | 2 | La precisión del enemigo es estándar. |
| EnemyDeployableDamageMultiplier | 2.0 | El daño a las defensas del enemigo está muy por encima de lo normal con 2x. |
| EnemyHealthMultiplier | 2.1 | La resistencia del enemigo está muy por encima de lo normal con 2,1x. |
| EnemyPlayerDamageMultiplier | 2.0 | El daño enemigo a los jugadores es muy superior a lo normal, 2x. |
| EnemySpawnRate | 1.7 | La frecuencia del enemigo está muy por encima de lo normal con 1,7x. |
| FatigueSpeedMultiplier | 1.25 | La tasa de fatiga es superior a lo normal con 1,25x. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 1.6 | El deterioro de los alimentos está por encima de lo normal en 1,6x. |
| GameDifficulty | 3 | La dificultad del juego es muy difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.35 | La tasa de hambre está por encima de lo normal en 1,35x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.0 | La durabilidad del objeto es casi normal con 1x. |
| ItemStackSizeMultiplier | 14 | La capacidad de la pila es extrema con 14x. |
| ItemWeightMultiplier | 0.7 | El peso del artículo está por debajo de lo normal con 0,7x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 3.9 | La ganancia de experiencia es extrema con 3,9x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 0.6 | La refrigeración está por debajo de lo normal con 0,6x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.5 | La tasa de recarga del fregadero está muy por debajo de lo normal con 0,5x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | verdadero | El agua del fregadero puede no ser segura. |
| ThirstSpeedMultiplier | 1.35 | La tasa de sed está por encima de lo normal, 1,35x. |
| WeatherFrequency | 5 | La frecuencia del clima es muy frecuente. |

<a id="optional-adapter-selection-16"></a>
### Selección de adaptador opcional

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `builder_final_occupancy_review`
- `lethal_lasers`: `overcharged_high_hazard`
