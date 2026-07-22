<a id="randomday---boss-hunt-family"></a>
# RandomDay - Familia Boss Hunt

> **Fuente canónica en inglés:** [boss_hunt.md](../../../../profiles/families/boss_hunt.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Versión: `v0.3.16-alpha`

Encuentros severos raros con recompensas a nivel de trofeo y errores a nivel de trofeo.

**Estilo de juego:** cacerías de objetivos de élite **Tono de mensaje:** avisos de desafíos en el tablero de trofeos

<a id="17-day-index"></a>
## Índice de 17 días

| Día | Perfil | Condiciones | Presión principal |
|---:|---|---|---|
| 1 | Orientación de trofeos | Presión estándar (1.98/5) | Presión de combate |
| 2 | Construcción de cebo | Condiciones favorables (1.45/5) | Presión ambiental |
| 3 | Pequeño Advertencia del juego | Presión estándar (2.28/5) | Presión de supervivencia |
| 4 | Sendero de recompensa | Condiciones favorables (1.62/5) | Presión de combate |
| 5 | Problema de Apex autorizado | Presión estándar (2.16/5) | Presión de combate |
| 6 | Cantera desgastada | Presión estándar (2.13/5) | Presión ambiental |
| 7 | Movimiento nocturno de trofeos | Presión estándar (2.16/5) | Presión de combate |
| 8 | Ruta de objetivo rápida | Presión estándar (1.93/5) | Presión ambiental |
| 9 | Caja de trofeos hambrienta | Presión estándar (2.29/5) | Presión de supervivencia |
| 10 | Descanso de taxidermia | Condiciones favorables (1.2/5) | Presión ambiental |
| 11 | Caza de práctica | Condiciones favorables (1.61/5) | Presión ambiental |
| 12 | Espécimen de laboratorio negro | Condiciones exigentes (2.62/5) | Presión de combate |
| 13 | Turno de caza largo | Presión estándar (2.39/5) | Presión de supervivencia |
| 14 | Día de cebo tranquilo | Condiciones favorables (1.19/5) | Presión ambiental |
| 15 | Auditoría de trofeos de precisión | Presión estándar (2.12/5) | Presión de combate |
| 16 | Ápice experimental | Presión estándar (2.24/5) | Presión de combate |
| 17 | Tablero de trofeos final | Condiciones exigentes (2.79/5) | Presión de combate |

<a id="day-1---trophy-orientation"></a>
## Día 1 - Orientación del trofeo

**ID de perfil:** `boss_hunt_trophy_orientation` **Condiciones generales:**Presión estándar (1.98/5) **Significado simple:** Presión estándar. Presión de combate: La presión estándar es la presión principal. Presión ambiental: La presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva municiones, mantén una ruta de retirada y evita luchar sin apoyo.

<a id="main-effects"></a>
### Efectos principales

- Precisión del enemigo: precisa.
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0,25x).
- La capacidad de la pila está muy por encima de lo normal (2x).
- Los enchufes se apagan por la noche.

<a id="domain-ratings"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (2.23/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (1.9/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | estándar (1.71/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.22/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.5/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **orientación de caza de élite**
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
| BaseInventorySize | 12 | El tamaño del inventario base es una presión estándar de 12. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.1 | La velocidad de detección de enemigos es casi normal, 1,1x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0,25x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 1.8 | La resistencia del enemigo está muy por encima de lo normal con 1,8x. |
| EnemyPlayerDamageMultiplier | 1.5 | El daño del enemigo a los jugadores está por encima de lo normal, 1,5x. |
| EnemySpawnRate | 0.8 | La frecuencia del enemigo está por debajo de lo normal con 0,8x. |
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
| ItemStackSizeMultiplier | 2.0 | La capacidad de la pila está muy por encima de lo normal en 2x. |
| ItemWeightMultiplier | 0.9 | El peso del artículo es casi normal en 0,9x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 1.9 | La ganancia de experiencia está muy por encima de lo normal con 1,9x. |
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
- `encounter_director`: `boss_hunt_trophy_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---bait-construction"></a>
## Día 2: construcción de cebo

**ID de perfil:** `boss_hunt_bait_construction` **Condiciones generales:**Condiciones favorables (1.45/5) **Significado simple:**Condiciones favorables. Presión ambiental: La presión estándar es la presión principal. Presión de combate: las condiciones favorables son el siguiente factor más importante. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-1"></a>
### Efectos principales

- El daño por fuego amigo está muy por debajo de lo normal (0x).
- La durabilidad del artículo es extrema (4x).
- La capacidad de pila es extrema (8x).
- La ganancia de experiencia es extrema (2,7x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0.05x).

<a id="domain-ratings-1"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | favorable (1.63/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | favorable (1.34/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | favorable (1.08/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (1.91/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.2/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-1"></a>
### Contexto del encuentro

- Nivel: **encuentros ligeros**
- Tema: **preparación de caza de élite**
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
| DetectionSpeedMultiplier | 0.7 | La velocidad de detección del enemigo está por debajo de lo normal con 0,7x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,05x. |
| EnemyAccuracy | 2 | La precisión del enemigo es estándar. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 1.5 | La resistencia del enemigo está por encima de lo normal, 1,5x. |
| EnemyPlayerDamageMultiplier | 1.0 | El daño enemigo a los jugadores es casi normal en 1x. |
| EnemySpawnRate | 0.4 | La frecuencia del enemigo está muy por debajo de lo normal con 0,4x. |
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
| ItemStackSizeMultiplier | 8.0 | La capacidad de apilamiento es extrema a 8x. |
| ItemWeightMultiplier | 0.5 | El peso del artículo está muy por debajo de lo normal a 0,5x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.7 | La ganancia de experiencia es extrema: 2,7x. |
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
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `boss_hunt_bait_construction`
- `lethal_lasers`: `low_hazard`

<a id="day-3---small-game-warning"></a>
## Día 3: Advertencia de caza menor

**ID de perfil:** `boss_hunt_small_game_warning` **Condiciones generales:**Presión estándar (2.28/5) **Significado simple:**Presión estándar. Presión de supervivencia: Las condiciones exigentes son la presión principal. Presión de combate: la presión estándar es el siguiente factor más fuerte. **Consejo para el jugador:**Lleva comida y agua, descansa antes de viajes largos y planifica paradas seguras.

<a id="main-effects-2"></a>
### Efectos principales

- El agua del fregadero puede no ser segura.
- La ganancia de experiencia está muy por encima de lo normal (2,2x).
- Precisión del enemigo: precisa.
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0,25x).

<a id="domain-ratings-2"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (2.42/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | exigente (2.84/5) | El hambre, la sed, la fatiga o el saneamiento necesitan más atención. |
| Presión de recursos | estándar (1.86/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.22/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.5/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-2"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **biografía de caza de élite recurso**
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
| BaseInventorySize | 12 | El tamaño del inventario base es una presión estándar de 12. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.45 | La tasa de continencia está por encima de lo normal en 1,45x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.1 | La velocidad de detección de enemigos es casi normal, 1,1x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0,25x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 2.0 | Resiliencia del enemigo está muy por encima de lo normal con 2x. |
| EnemyPlayerDamageMultiplier | 1.6 | El daño enemigo a los jugadores es superior a lo normal con 1,6x. |
| EnemySpawnRate | 0.8 | La frecuencia del enemigo está por debajo de lo normal con 0,8x. |
| FatigueSpeedMultiplier | 1.1 | La tasa de fatiga es casi normal con 1,1x. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 1.25 | El deterioro de los alimentos es superior a lo normal con 1,25x. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.2 | La tasa de hambre está por encima normal a 1,2x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.25 | La durabilidad del artículo está por encima de lo normal con 1,25x. |
| ItemStackSizeMultiplier | 2.0 | La capacidad de la pila está muy por encima de lo normal en 2x. |
| ItemWeightMultiplier | 0.9 | El peso del artículo es casi normal en 0,9x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.2 | La ganancia de experiencia está muy por encima de lo normal con 2,2x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 0.75 | La refrigeración está por debajo de lo normal con 0,75x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.25 | La tasa de recarga del fregadero está muy por debajo de lo normal con 0,25x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | verdadero | El agua del fregadero puede no ser segura. |
| ThirstSpeedMultiplier | 1.7 | La tasa de sed está muy por encima de lo normal, 1,7 veces. |
| WeatherFrequency | 3 | La frecuencia del clima es normal. |

<a id="optional-adapter-selection-2"></a>
### Selección de adaptador opcional

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `boss_hunt_small_game_warning`
- `lethal_lasers`: `standard_safety`

<a id="day-4---reward-trail"></a>
## Día 4 - Ruta de recompensas

**ID de perfil:** `boss_hunt_reward_trail` **Condiciones generales:**Condiciones favorables (1.62/5) **Significado simple:**Condiciones favorables. Presión de combate: La presión estándar es la presión principal. Presión ambiental: La presión estándar es el siguiente factor más importante. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-3"></a>
### Efectos principales

- La durabilidad del artículo es extrema (2,5x).
- La capacidad de pila es extrema (14x).
- La ganancia de experiencia es extrema (2.9x).
- La tasa de recarga del fregadero es extrema (2,5x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0.05x).

<a id="domain-ratings-3"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (1.96/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | favorable (1.5/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | favorable (0.99/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (1.93/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.44/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-3"></a>
### Contexto del encuentro

- Nivel: **encuentros ligeros**
- Tema: **movilidad del botín de caza de élite**
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
| BaseInventorySize | 30 | El tamaño del inventario base son las condiciones de socorro en 30. |
| BonusPerkPoints | 3 | Los puntos de beneficio de bonificación son las condiciones favorables en 3. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.75 | La tasa de continencia está por debajo de lo normal en 0,75x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 0.9 | La velocidad de detección del enemigo es casi normal, 0,9x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,05x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 1.6 | La resistencia del enemigo está por encima de lo normal con 1,6x. |
| EnemyPlayerDamageMultiplier | 1.2 | El daño enemigo a los jugadores está por encima de lo normal con 1,2x. |
| EnemySpawnRate | 0.6 | La frecuencia del enemigo está por debajo de lo normal con 0,6x. |
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
| ItemStackSizeMultiplier | 14.0 | La capacidad de la pila es extrema con 14x. |
| ItemWeightMultiplier | 0.3 | El peso del artículo está muy por debajo de lo normal con 0,3x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.9 | La ganancia de experiencia es extrema, 2,9x. |
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
- `encounter_director`: `boss_hunt_reward_trail`
- `lethal_lasers`: `low_hazard`

<a id="day-5---authorized-apex-problem"></a>
## Día 5 - Autorizado Problema de Apex

**ID de perfil:** `boss_hunt_authorized_apex_problem` **Condiciones generales:**Presión estándar (2.16/5) **Significado simple:**Presión estándar. Presión de combate: Las condiciones exigentes son la presión principal. Presión ambiental: La presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva municiones, mantén una ruta de retirada y evita luchar sin apoyo.

<a id="main-effects-4"></a>
### Efectos principales

- La ganancia de experiencia es extrema (2,7x).
- El daño por fuego amigo está muy por debajo de lo normal (0.1x).
- Precisión del enemigo: precisa.
- La velocidad de detección del enemigo está muy por encima de lo normal (2.1x).
- La resistencia del enemigo está muy por encima de lo normal (2.1x).

<a id="domain-ratings-4"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | exigente (2.77/5) | La presión hostil es elevada; prepárese antes de participar. |
| Presión de supervivencia | estándar (1.94/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.66/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.17/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.51/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-4"></a>
### Contexto del encuentro

- Nivel: **encuentros intensos**
- Tema: **seguridad de caza de élite**
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
| BaseInventorySize | 12 | El tamaño del inventario base es una presión estándar de 12. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.1 | El daño del fuego amigo está muy por debajo de lo normal con 0,1x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 2.1 | La velocidad de detección de enemigos está muy por encima de lo normal en 2,1x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,3x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 2.1 | La resistencia del enemigo está muy por encima de lo normal con 2,1x. |
| EnemyPlayerDamageMultiplier | 1.9 | El daño enemigo a los jugadores está muy por encima de lo normal con 1,9x. |
| EnemySpawnRate | 1.1 | La frecuencia del enemigo es casi normal en 1.1x. |
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
| ItemStackSizeMultiplier | 2.0 | La capacidad de la pila está muy por encima de lo normal en 2x. |
| ItemWeightMultiplier | 0.9 | El peso del artículo es casi normal en 0,9x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.7 | La ganancia de experiencia es extrema: 2,7x. |
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
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `boss_hunt_authorized_apex_problem`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weathered-quarry"></a>
## Día 6: Cantera desgastada

**ID de perfil:** `boss_hunt_weathered_quarry` **Condiciones generales:**Presión estándar (2.13/5) **Significado simple:**Presión estándar. Presión ambiental: La presión estándar es la presión principal. Presión de combate: la presión estándar es el siguiente factor más fuerte. **Consejo para el jugador:** Verifique la electricidad, el agua, el refugio y la protección contra peligros antes de abandonar la base.

<a id="main-effects-5"></a>
### Efectos principales

- Frecuencia climática: muy frecuente.
- Precisión del enemigo: precisa.
- La ganancia de experiencia está muy por encima de lo normal (2.1x).
- El daño por fuego amigo está muy por debajo de lo normal (0,25x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0,25x).

<a id="domain-ratings-5"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (2.42/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | estándar (2.07/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | estándar (1.81/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.52/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.5/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-5"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **clima de caza de élite**
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
| BaseInventorySize | 12 | El tamaño del inventario base es una presión estándar de 12. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.25 | La velocidad del ciclo día-noche es superior a lo normal en 1,25x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.2 | La velocidad de detección del enemigo es superior a lo normal con 1,2x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0,25x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 1.9 | La resistencia del enemigo está muy por encima de lo normal con 1,9x. |
| EnemyPlayerDamageMultiplier | 1.6 | El daño enemigo a los jugadores es superior a lo normal con 1,6x. |
| EnemySpawnRate | 0.8 | La frecuencia del enemigo está por debajo de lo normal con 0,8x. |
| FatigueSpeedMultiplier | 1.1 | La tasa de fatiga es casi normal con 1,1x. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 1.25 | El deterioro de los alimentos es superior a lo normal con 1,25x. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.1 | La tasa de hambre es casi normal con 1,1x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.1 | La durabilidad del artículo es casi normal con 1,1x. |
| ItemStackSizeMultiplier | 2.0 | La capacidad de la pila está muy por encima de lo normal en 2x. |
| ItemWeightMultiplier | 0.9 | El peso del artículo es casi normal en 0,9x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.1 | La ganancia de experiencia está muy por encima de lo normal con 2,1x. |
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
- `encounter_director`: `boss_hunt_weathered_quarry`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-trophy-movement"></a>
## Día 7 - Movimiento nocturno de trofeos

**ID de perfil:** `boss_hunt_night_trophy_movement` **Condiciones generales:**Presión estándar (2.16/5) **Significado simple:**Presión estándar. Presión de combate: Las condiciones exigentes son la presión principal. Presión ambiental: La presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva municiones, mantén una ruta de retirada y evita luchar sin apoyo.

<a id="main-effects-6"></a>
### Efectos principales

- La capacidad de pila es extrema (3x).
- La ganancia de experiencia es extrema (2.9x).
- Estado día-noche: sesgado por la noche.
- Precisión del enemigo: precisa.
- La resistencia del enemigo está muy por encima de lo normal (2.1x).

<a id="domain-ratings-6"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | exigente (2.75/5) | La presión hostil es elevada; prepárese antes de participar. |
| Presión de supervivencia | estándar (1.96/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.54/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.33/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.49/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-6"></a>
### Contexto del encuentro

- Nivel: **encuentros intensos**
- Tema: **noche de caza de élite**
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
| BaseInventorySize | 16 | El tamaño del inventario base es condiciones favorables en 16. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.95 | La tasa de continencia es casi normal en 0,95x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 2 | El estado día-noche tiene un sesgo nocturno. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.8 | La velocidad de detección del enemigo está muy por encima de lo normal con 1,8x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.2 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,2x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 2.1 | La resistencia del enemigo está muy por encima de lo normal con 2,1x. |
| EnemyPlayerDamageMultiplier | 1.8 | El daño enemigo a los jugadores está muy por encima de lo normal con 1,8x. |
| EnemySpawnRate | 1.2 | La frecuencia del enemigo está por encima de lo normal en 1,2x. |
| FatigueSpeedMultiplier | 1.4 | La tasa de fatiga está por encima de lo normal, 1,4 veces. |
| FirstTimeStartingWeapon | 5 | El suministro inicial de armas son condiciones favorables en 5. |
| FoodSpoilSpeedMultiplier | 1.0 | El deterioro de los alimentos es casi normal a 1x. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 0.95 | La tasa de hambre es casi normal con 0,95x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 1.5 | La durabilidad del artículo es superior a lo normal en 1,5x. |
| ItemStackSizeMultiplier | 3.0 | La capacidad de acumulación es extrema con 3x. |
| ItemWeightMultiplier | 0.7 | El peso del artículo está por debajo de lo normal con 0,7x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.9 | La ganancia de experiencia es extrema, 2,9x. |
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
- `encounter_director`: `boss_hunt_night_trophy_movement`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---fast-target-route"></a>
## Día 8 - Ruta de objetivo rápido

**ID de perfil:** `boss_hunt_fast_target_route` **Condiciones generales:**Presión estándar (1.93/5) **Significado simple:**Presión estándar. Presión ambiental: La presión estándar es la presión principal. Presión de combate: la presión estándar es el siguiente factor más fuerte. **Consejo para el jugador:** Verifique la electricidad, el agua, el refugio y la protección contra peligros antes de abandonar la base.

<a id="main-effects-7"></a>
### Efectos principales

- La velocidad del ciclo día-noche es extrema (3x).
- La capacidad de pila es extrema (4x).
- La ganancia de experiencia es extrema (3x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0.15x).
- Precisión del enemigo: precisa.

<a id="domain-ratings-7"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (2.45/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | favorable (1.42/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | favorable (1.41/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (2.56/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.47/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-7"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **ruta de caza de élite**
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
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.7 | La tasa de continencia está por debajo de lo normal a 0,7x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 3.0 | La velocidad del ciclo día-noche es extrema a 3x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.5 | La velocidad de detección del enemigo está por encima de lo normal con 1,5x. |
| DisableResearchMinigame | verdadero | La omisión de investigación está habilitada. |
| DurabilityLossOnDeathMultiplier | 0.15 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,15x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 1.5 | La resistencia del enemigo está por encima de lo normal, 1,5x. |
| EnemyPlayerDamageMultiplier | 1.6 | El daño enemigo a los jugadores es superior a lo normal con 1,6x. |
| EnemySpawnRate | 1.0 | La frecuencia del enemigo es casi normal en 1x. |
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
| ItemStackSizeMultiplier | 4.0 | Pila la capacidad es extrema con 4x. |
| ItemWeightMultiplier | 0.7 | El peso del artículo está por debajo de lo normal con 0,7x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 3.0 | La ganancia de experiencia es extrema, 3x. |
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
- `encounter_director`: `boss_hunt_fast_target_route`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---hungry-trophy-case"></a>
## Día 9 - Caso de trofeos hambriento

**ID de perfil:** `boss_hunt_hungry_trophy_case` **Condiciones generales:**Presión estándar (2.29/5) **Significado simple:**Presión estándar. Presión de supervivencia: Las condiciones exigentes son la presión principal. Presión de combate: la presión estándar es el siguiente factor más fuerte. **Consejo para el jugador:**Lleva comida y agua, descansa antes de viajes largos y planifica paradas seguras.

<a id="main-effects-8"></a>
### Efectos principales

- El tamaño del inventario base es condiciones severas (10).
- El agua del fregadero puede no ser segura.
- La ganancia de experiencia está muy por encima de lo normal (2,2x).
- Precisión del enemigo: precisa.
- La resistencia del enemigo está muy por encima de lo normal (2.1x).

<a id="domain-ratings-8"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (2.28/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | exigente (2.84/5) | El hambre, la sed, la fatiga o el saneamiento necesitan más atención. |
| Presión de recursos | estándar (2.23/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.17/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.53/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-8"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **escasez de caza de élite**
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
| BaseInventorySize | 10 | El tamaño del inventario base es de condiciones graves, 10. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.25 | La tasa de continencia está por encima de lo normal con 1,25x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.1 | La velocidad de detección de enemigos es casi normal, 1,1x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | La pérdida de durabilidad por muerte está muy por debajo de lo normal con 0,35x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 2.1 | La resistencia del enemigo está muy por encima de lo normal con 2,1x. |
| EnemyPlayerDamageMultiplier | 1.7 | El daño enemigo a los jugadores está muy por encima de lo normal en 1,7x. |
| EnemySpawnRate | 0.7 | La frecuencia del enemigo está por debajo de lo normal con 0,7x. |
| FatigueSpeedMultiplier | 1.3 | La tasa de fatiga está por encima de lo normal con 1,3x. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 2.0 | El deterioro de los alimentos está muy por encima de lo normal con 2x. |
| GameDifficulty | 1 | La dificultad del juego es estándar. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.5 | La tasa de hambre está por encima de lo normal con 1,5x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 0.75 | La durabilidad del artículo está por debajo de lo normal con 0,75x. |
| ItemStackSizeMultiplier | 1.0 | La capacidad de la pila es casi normal con 1x. |
| ItemWeightMultiplier | 1.2 | El peso del artículo está por encima de lo normal en 1,2x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.2 | La ganancia de experiencia está muy por encima de lo normal con 2,2x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 0.5 | La refrigeración está muy por debajo de lo normal en 0,5x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.5 | La tasa de recarga del fregadero está muy por debajo de lo normal con 0,5x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | verdadero | El agua del fregadero puede no ser segura. |
| ThirstSpeedMultiplier | 1.4 | La tasa de sed está por encima de lo normal con 1,4x. |
| WeatherFrequency | 2 | La frecuencia climática es ocasional. |

<a id="optional-adapter-selection-8"></a>
### Selección de adaptador opcional

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `boss_hunt_hungry_trophy_case`
- `lethal_lasers`: `standard_safety`

<a id="day-10---taxidermy-break"></a>
## Día 10 - Descanso para taxidermia

**ID de perfil:** `boss_hunt_taxidermy_break` **Condiciones generales:**Condiciones favorables (1.2/5) **Significado simple:** Condiciones favorables. Presión ambiental: Las condiciones favorables son la principal presión. Presión de combate: las condiciones favorables son el siguiente factor más importante. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-9"></a>
### Efectos principales

- Puntos de bonificación son condiciones de alivio (10).
- El daño por fuego amigo está muy por debajo de lo normal (0x).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0x).
- La durabilidad del artículo es extrema (3x).
- La capacidad de pila es extrema (10x).

<a id="domain-ratings-9"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | favorable (1.36/5) | La presión hostil es más ligera de lo normal. |
| Presión de supervivencia | favorable (1.02/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | favorable (0.9/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | favorable (1.54/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.19/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-9"></a>
### Contexto del encuentro

- Nivel: **encuentros mínimos**
- Tema: **recuperación de caza de élite**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.02**
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
| DetectionSpeedMultiplier | 0.5 | La velocidad de detección del enemigo está muy por debajo de lo normal con 0,5x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0x. |
| EnemyAccuracy | 2 | La precisión del enemigo es estándar. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 1.3 | La resistencia del enemigo está por encima de lo normal con 1,3x. |
| EnemyPlayerDamageMultiplier | 0.5 | El daño enemigo a los jugadores está muy por debajo de lo normal con 0,5x. |
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
| ItemStackSizeMultiplier | 10.0 | La capacidad de apilamiento es extrema con 10x. |
| ItemWeightMultiplier | 0.4 | El peso del artículo está muy por debajo de lo normal con 0,4x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 3.9 | La ganancia de experiencia es extrema con 3,9x. |
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
- `encounter_director`: `boss_hunt_taxidermy_break`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---practice-hunt"></a>
## Día 11 - Caza de práctica

**ID de perfil:** `boss_hunt_practice_hunt` **Condiciones generales:**Condiciones favorables (1.61/5) **Significado simple:**Condiciones favorables. Presión ambiental: La presión estándar es la presión principal. Presión de combate: la presión estándar es el siguiente factor más fuerte. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

<a id="main-effects-10"></a>
### Efectos principales

- Puntos de bonificación son condiciones de alivio (12).
- La pérdida de durabilidad al morir está muy por debajo de lo normal (0x).
- La capacidad de pila es extrema (5x).
- La ganancia de experiencia es extrema (5x).
- La durabilidad del artículo está muy por encima de lo normal (2,25x).

<a id="domain-ratings-10"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (1.93/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | favorable (1.58/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (0.92/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (1.96/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.43/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-10"></a>
### Contexto del encuentro

- Nivel: **encuentros ligeros**
- Tema: **entrenamiento de caza de élite**
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
| BaseInventorySize | 24 | El tamaño base del inventario son las condiciones de alivio en 24. |
| BonusPerkPoints | 12 | Los puntos de bonificación son las condiciones de alivio en 12. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 0.8 | La tasa de continencia está por debajo de lo normal con 0,8x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 1.15 | La velocidad del ciclo día-noche es casi normal con 1,15x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 0.9 | La velocidad de detección del enemigo es casi normal, 0,9x. |
| DisableResearchMinigame | verdadero | La omisión de investigación está habilitada. |
| DurabilityLossOnDeathMultiplier | 0.0 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 1.5 | La resistencia del enemigo está por encima de lo normal, 1,5x. |
| EnemyPlayerDamageMultiplier | 1.0 | El daño enemigo a los jugadores es casi normal en 1x. |
| EnemySpawnRate | 0.7 | La frecuencia del enemigo está por debajo de lo normal con 0,7x. |
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
| ItemStackSizeMultiplier | 5.0 | La capacidad de la pila es extrema con 5x. |
| ItemWeightMultiplier | 0.6 | El peso del artículo está por debajo de lo normal con 0,6x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 5.0 | La ganancia de experiencia es extrema, 5x. |
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
- `encounter_director`: `boss_hunt_practice_hunt`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-specimen"></a>
## Día 12 - Laboratorio Negro Ejemplar

**ID de perfil:** `boss_hunt_black_lab_specimen` **Condiciones generales:** Condiciones exigentes (2.62/5) **Significado simple:**Condiciones exigentes. Presión de combate: Las condiciones severas son la presión principal. Presión de supervivencia: la presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva municiones, mantén una ruta de retirada y evita luchar sin apoyo.

<a id="main-effects-11"></a>
### Efectos principales

- Precisión del enemigo: muy precisa.
- La resiliencia del enemigo es extremo (3.2x).
- Dificultad del juego: muy difícil.
- El daño enemigo a los jugadores es extremo (2.9x).
- La ganancia de experiencia es extrema (4x).

<a id="domain-ratings-11"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | grave (3.52/5) | La presión hostil es elevada; prepárese antes de participar. |
| Presión de supervivencia | estándar (2.53/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | estándar (1.76/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.22/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | estándar (1.79/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-11"></a>
### Contexto del encuentro

- Nivel: **encuentros extremos**
- Tema: **prueba pesada de caza de élite**
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
| BaseInventorySize | 12 | El tamaño del inventario base es una presión estándar de 12. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.15 | El daño por fuego amigo está muy por debajo de lo normal con 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 2 | Las penas de muerte son fuertes. |
| DetectionSpeedMultiplier | 2.1 | La velocidad de detección de enemigos está muy por encima de lo normal en 2,1x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.4 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,4x. |
| EnemyAccuracy | 4 | La precisión del enemigo es muy precisa. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 3.2 | La resistencia del enemigo es extrema, 3,2x. |
| EnemyPlayerDamageMultiplier | 2.9 | El daño del enemigo a los jugadores es extremo, 2,9x. |
| EnemySpawnRate | 1.7 | La frecuencia del enemigo está muy por encima de lo normal con 1,7x. |
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
| ItemStackSizeMultiplier | 2.0 | La capacidad de la pila está muy por encima de lo normal en 2x. |
| ItemWeightMultiplier | 0.9 | El peso del artículo es casi normal en 0,9x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 4.0 | La ganancia de experiencia es extrema con 4x. |
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
- `encounter_director`: `boss_hunt_black_lab_specimen`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-hunt-shift"></a>
## Día 13 - Turno de caza largo

**ID de perfil:** `boss_hunt_long_hunt_shift` **Condiciones generales:**Presión estándar (2.39/5) **Significado simple:**Presión estándar. Presión de supervivencia: Las condiciones exigentes son la presión principal. Presión de combate: la presión estándar es el siguiente factor más fuerte. **Consejo para el jugador:**Lleva comida y agua, descansa antes de viajes largos y planifica paradas seguras.

<a id="main-effects-12"></a>
### Efectos principales

- El tamaño del inventario base es condiciones severas (10).
- La ganancia de experiencia es extrema (2,5x).
- El agua del fregadero puede no ser segura.
- La resistencia del enemigo está muy por encima de lo normal (2,3x).
- Precisión del enemigo: precisa.

<a id="domain-ratings-12"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | estándar (2.49/5) | La presión hostil es cercana a lo normal. |
| Presión de supervivencia | exigente (3.11/5) | El hambre, la sed, la fatiga o el saneamiento necesitan más atención. |
| Presión de recursos | estándar (2.11/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.01/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.53/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-12"></a>
### Contexto del encuentro

- Nivel: **encuentros moderados**
- Tema: **resistencia de caza de élite**
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
| BaseInventorySize | 10 | El tamaño del inventario base es de condiciones graves, 10. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.35 | La tasa de continencia está por encima de lo normal con 1,35x. |
| DamageToAlliesMultiplier | 0.25 | El daño del fuego amigo está muy por debajo de lo normal en 0,25x. |
| DayNightCycleSpeedMultiplier | 0.3 | La velocidad del ciclo día-noche está muy por debajo de lo normal con 0,3x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.1 | La velocidad de detección de enemigos es casi normal, 1,1x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | La pérdida de durabilidad por muerte está muy por debajo de lo normal con 0,35x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 2.3 | La resistencia del enemigo está muy por encima de lo normal con 2,3x. |
| EnemyPlayerDamageMultiplier | 1.9 | El daño enemigo a los jugadores está muy por encima de lo normal con 1,9x. |
| EnemySpawnRate | 0.7 | La frecuencia del enemigo está por debajo de lo normal con 0,7x. |
| FatigueSpeedMultiplier | 1.6 | La tasa de fatiga es superior a lo normal con 1,6x. |
| FirstTimeStartingWeapon | 0 | La provisión inicial de armas es presión estándar a 0. |
| FoodSpoilSpeedMultiplier | 1.8 | El deterioro de los alimentos está muy por encima de lo normal con 1,8 veces. |
| GameDifficulty | 2 | La dificultad del juego es difícil. |
| HardcoreMode | falso | El modo Hardcore está deshabilitado. |
| HomeWorlds | verdadero | El comportamiento del mundo de origen está habilitado. |
| HostAccessPlayerCorpses | verdadero | El anfitrión puede acceder a los cadáveres de los jugadores para obtener apoyo en la recuperación. |
| HungerSpeedMultiplier | 1.7 | La tasa de hambre está muy por encima de lo normal en 1,7x. |
| InvisibleRadiation | falso | Esta regla no hace invisible la radiación. |
| ItemDurabilityMultiplier | 0.9 | La durabilidad del artículo es casi normal con 0,9 veces. |
| ItemStackSizeMultiplier | 2.0 | La capacidad de la pila está muy por encima de lo normal en 2x. |
| ItemWeightMultiplier | 1.4 | El peso del artículo es superior normal a 1,4x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 2.5 | La ganancia de experiencia es extrema con 2,5x. |
| PowerSocketsOffAtNight | verdadero | Los enchufes se apagan por la noche. |
| RadiationDealsDamage | verdadero | La radiación causa daños. |
| RefrigerationEffectivenessMultiplier | 0.65 | La refrigeración está por debajo de lo normal a 0,65x. |
| ShowDeathMessages | verdadero | Avisos de muerte se muestran. |
| SinkRefillRate | 0.35 | La tasa de recarga del fregadero está muy por debajo de lo normal a 0,35x. |
| StorageByTag | verdadero | La organización de almacenamiento etiquetada está habilitada. |
| StructuralSupportLimit | 0 | El límite de soporte estructural es la presión estándar de 0. |
| TaintedSinkWater | verdadero | El agua del fregadero puede no ser segura. |
| ThirstSpeedMultiplier | 1.7 | La tasa de sed está muy por encima de lo normal, 1,7 veces. |
| WeatherFrequency | 2 | La frecuencia climática es ocasional. |

<a id="optional-adapter-selection-12"></a>
### Selección de adaptador opcional

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `boss_hunt_long_hunt_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---quiet-bait-day"></a>
## Día 14 - Día del cebo tranquilo

**ID de perfil:** `boss_hunt_quiet_bait_day` **Condiciones generales:**Condiciones favorables (1.19/5) **Significado simple:** Condiciones favorables. Presión ambiental: Las condiciones favorables son la principal presión. Presión de combate: las condiciones favorables son el siguiente factor más importante. **Consejo para el jugador:** Utilice las condiciones favorables para explorar, reabastecer, reparar y prepararse para el próximo reinicio.

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
| Presión de combate | favorable (1.46/5) | La presión hostil es más ligera de lo normal. |
| Presión de supervivencia | favorable (0.86/5) | Las necesidades de supervivencia diarias son indulgentes. |
| Presión de recursos | alivio (0.79/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | favorable (1.58/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.19/5) | Las reglas de muerte y recuperación son indulgentes. |

<a id="encounter-context-13"></a>
### Contexto del encuentro

- Nivel: **encuentros mínimos**
- Tema: **alivio de caza de élite**
- Grupos activos máximos: **1**
- Probabilidad de encuentro mixto: **0.02**
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
| DetectionSpeedMultiplier | 0.6 | La velocidad de detección de enemigos está por debajo de lo normal en 0,6x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0x. |
| EnemyAccuracy | 2 | La precisión del enemigo es estándar. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 1.4 | La resistencia del enemigo está por encima de lo normal con 1,4x. |
| EnemyPlayerDamageMultiplier | 0.7 | El daño enemigo a los jugadores está por debajo de lo normal con 0,7x. |
| EnemySpawnRate | 0.4 | La frecuencia del enemigo está muy por debajo de lo normal con 0,4x. |
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
| ItemStackSizeMultiplier | 20.0 | La capacidad de la pila es extrema con 20x. |
| ItemWeightMultiplier | 0.2 | El peso del artículo está muy por debajo de lo normal con 0,2x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 5.6 | La ganancia de experiencia es extrema a 5,6x. |
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
- `encounter_director`: `boss_hunt_quiet_bait_day`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---precision-trophy-audit"></a>
## Día 15 - Auditoría de trofeos de precisión

**ID de perfil:** `boss_hunt_precision_trophy_audit` **Condiciones generales:**Presión estándar (2.12/5) **Significado simple:**Presión estándar. Presión de combate: Las condiciones exigentes son la presión principal. Presión ambiental: La presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva municiones, mantén una ruta de retirada y evita luchar sin apoyo.

<a id="main-effects-14"></a>
### Efectos principales

- El daño por fuego amigo está muy por debajo de lo normal (0x).
- La ganancia de experiencia es extrema (3.2x).
- El daño enemigo a los jugadores está muy por encima de lo normal (2,2x).
- Precisión del enemigo: precisa.
- Dificultad del juego: difícil.

<a id="domain-ratings-14"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | exigente (2.62/5) | La presión hostil es elevada; prepárese antes de participar. |
| Presión de supervivencia | estándar (1.98/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (1.68/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.17/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.51/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-14"></a>
### Contexto del encuentro

- Nivel: **encuentros intensos**
- Tema: **precisión de caza de élite**
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
| BaseInventorySize | 12 | El tamaño del inventario base es una presión estándar de 12. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.0 | La tasa de continencia es casi normal en 1x. |
| DamageToAlliesMultiplier | 0.0 | El daño del fuego amigo está muy por debajo de lo normal en 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | La velocidad del ciclo día-noche es casi normal en 1x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 1 | La pena de muerte es estándar. |
| DetectionSpeedMultiplier | 1.5 | La velocidad de detección del enemigo está por encima de lo normal con 1,5x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,3x. |
| EnemyAccuracy | 3 | La precisión del enemigo es preciso. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 1.8 | La resistencia del enemigo está muy por encima de lo normal con 1,8x. |
| EnemyPlayerDamageMultiplier | 2.2 | El daño enemigo a los jugadores está muy por encima de lo normal normal en 2,2x. |
| EnemySpawnRate | 0.9 | La frecuencia del enemigo es casi normal con 0,9x. |
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
| ItemStackSizeMultiplier | 2.0 | La capacidad de la pila está muy por encima de lo normal en 2x. |
| ItemWeightMultiplier | 0.9 | El peso del artículo es casi normal en 0,9x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 3.2 | La ganancia de experiencia es extrema a 3,2x. |
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
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `boss_hunt_precision_trophy_audit`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-apex"></a>
## Día 16 - Ápice experimental

**ID de perfil:** `boss_hunt_experimental_apex` **Condiciones generales:**Presión estándar (2.24/5) **Significado simple:**Presión estándar. Presión de combate: Las condiciones exigentes son la presión principal. Presión ambiental: La presión estándar es el siguiente factor más importante. **Consejo para el jugador:**Lleva municiones, mantén una ruta de retirada y evita luchar sin apoyo.

<a id="main-effects-15"></a>
### Efectos principales

- Precisión del enemigo: muy precisa.
- Dificultad del juego: muy difícil.
- Algunas radiaciones pueden carecer de una advertencia visible.
- Frecuencia climática: muy frecuente.
- La resiliencia del enemigo es extremo (2.6x).

<a id="domain-ratings-15"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | exigente (2.87/5) | La presión hostil es elevada; prepárese antes de participar. |
| Presión de supervivencia | estándar (2.36/5) | Las necesidades diarias de supervivencia están cerca de lo normal. |
| Presión de recursos | favorable (0.99/5) | Los suministros y las condiciones de transporte son favorables. |
| Presión ambiental | estándar (2.59/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | favorable (1.67/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-15"></a>
### Contexto del encuentro

- Nivel: **encuentros extremos**
- Tema: **caza de élite experimental**
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
| BaseInventorySize | 42 | El tamaño del inventario base son las condiciones de socorro en 42. |
| BonusPerkPoints | 15 | Los puntos de beneficio adicionales son las condiciones de socorro en 15. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.2 | La tasa de continencia está por encima de lo normal en 1,2x. |
| DamageToAlliesMultiplier | 0.0 | El daño del fuego amigo está muy por debajo de lo normal en 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | La velocidad del ciclo día-noche está por encima de lo normal con 1,5x. |
| DayNightCycleState | 1 | El estado día-noche está sesgado hacia el día. |
| DeathPenalties | 2 | Las penas de muerte son fuertes. |
| DetectionSpeedMultiplier | 0.6 | La velocidad de detección de enemigos está por debajo de lo normal en 0,6x. |
| DisableResearchMinigame | verdadero | La omisión de investigación está habilitada. |
| DurabilityLossOnDeathMultiplier | 0.0 | La pérdida de durabilidad al morir está muy por debajo de lo normal en 0x. |
| EnemyAccuracy | 4 | La precisión del enemigo es muy precisa. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 2.6 | La resistencia del enemigo es extrema con 2,6x. |
| EnemyPlayerDamageMultiplier | 1.4 | El daño enemigo a los jugadores es superior a lo normal con 1,4x. |
| EnemySpawnRate | 1.1 | La frecuencia del enemigo es casi normal en 1.1x. |
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
| ItemStackSizeMultiplier | 15.0 | La capacidad de la pila es extrema con 15x. |
| ItemWeightMultiplier | 0.2 | El peso del artículo está muy por debajo de lo normal con 0,2x. |
| LootRespawnEnabled | verdadero | El botín puede regresar después de la recolección. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 6.1 | La ganancia de experiencia es extrema con 6,1x. |
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
- `encounter_director`: `boss_hunt_experimental_apex`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-trophy-board"></a>
## Día 17: Tablero de trofeos final

**ID de perfil:** `boss_hunt_final_trophy_board` **Condiciones generales:** Condiciones exigentes (2.79/5) **Significado simple:** Condiciones exigentes. Presión de combate: Las condiciones severas son la presión principal. Presión de supervivencia: las condiciones exigentes son el siguiente factor más fuerte. **Consejo para el jugador:**Lleva municiones, mantén una ruta de retirada y evita luchar sin apoyo.

<a id="main-effects-16"></a>
### Efectos principales

- Precisión del enemigo: muy precisa.
- La resiliencia del enemigo es extremo (4x).
- El daño enemigo a los jugadores es extremo (3.4x).
- Dificultad del juego: muy difícil.
- Frecuencia climática: muy frecuente.

<a id="domain-ratings-16"></a>
### Clasificaciones de dominio

| Área | Calificación | Significado |
|---|---|---|
| Presión de combate | grave (3.7/5) | La presión hostil es elevada; prepárese antes de participar. |
| Presión de supervivencia | exigente (2.72/5) | El hambre, la sed, la fatiga o el saneamiento necesitan más atención. |
| Presión de recursos | estándar (1.87/5) | Las condiciones de suministro y transporte están cerca de lo normal. |
| Presión ambiental | estándar (2.55/5) | Las condiciones ambientales están cerca de lo normal. |
| Presión de recuperación | estándar (1.81/5) | Las reglas de muerte y recuperación son casi normales. |

<a id="encounter-context-16"></a>
### Contexto del encuentro

- Nivel: **encuentros finales**
- Tema: **piedra angular de caza de élite**
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
| BaseInventorySize | 12 | El tamaño del inventario base es una presión estándar de 12. |
| BonusPerkPoints | 0 | Los puntos de bonificación son una presión estándar de 0. |
| BridgeSupports | 0 | El límite de soporte del puente es la presión estándar en 0. |
| ContinenceSpeedMultiplier | 1.1 | La tasa de continencia es casi normal con 1,1x. |
| DamageToAlliesMultiplier | 0.1 | El daño del fuego amigo está muy por debajo de lo normal con 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | La velocidad del ciclo día-noche está por encima de lo normal con 1,45x. |
| DayNightCycleState | 0 | El estado día-noche es un ciclo normal. |
| DeathPenalties | 2 | Las penas de muerte son fuertes. |
| DetectionSpeedMultiplier | 2.4 | La velocidad de detección del enemigo está muy por encima de lo normal en 2,4x. |
| DisableResearchMinigame | falso | La investigación utiliza su minijuego normal. |
| DurabilityLossOnDeathMultiplier | 0.5 | La pérdida de durabilidad al morir está muy por debajo de lo normal con 0,5x. |
| EnemyAccuracy | 4 | La precisión del enemigo es muy precisa. |
| EnemyDeployableDamageMultiplier | 1.25 | El daño del enemigo a las defensas es superior a lo normal en 1,25x. |
| EnemyHealthMultiplier | 4.0 | La resistencia del enemigo es extrema a 4x. |
| EnemyPlayerDamageMultiplier | 3.4 | El daño enemigo a los jugadores es extremo a 3,4x. |
| EnemySpawnRate | 2.2 | La frecuencia del enemigo está muy por encima de lo normal con 2,2x. |
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
| ItemStackSizeMultiplier | 3.0 | La capacidad de acumulación es extrema con 3x. |
| ItemWeightMultiplier | 1.0 | El peso del artículo es casi normal con 1x. |
| LootRespawnEnabled | falso | El botín recolectado no reaparece. |
| PlayerFurnitureDestruction | falso | Los muebles construidos por jugadores están protegidos de esta regla. |
| PlayerXPGainMultiplier | 4.8 | La ganancia de experiencia es extrema con 4,8x. |
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
- `encounter_director`: `boss_hunt_final_trophy_board`
- `lethal_lasers`: `overcharged_high_hazard`
