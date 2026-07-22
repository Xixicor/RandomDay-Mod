<a id="randomday---sandboxsettings-dictionary"></a>
# RandomDay - SandboxSettings diccionario

> **Fuente canónica en inglés:** [SANDBOX_SETTINGS_KEYS.md](../../../profiles/SANDBOX_SETTINGS_KEYS.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Versión: `v0.3.16-alpha`

Este es el diccionario de tiempo de ejecución completo para las 46 SandboxSettings claves utilizadas por cada RandomDay perfil. El diccionario convierte valores brutos en puntuaciones de dominio y player/admin acotados; nunca reemplaza el valor bruto.

| Clave | Significado del jugador | Dominio | Tipo | Línea de base | Más difícil cuando |
|---|---|---|---|---:|---|
| AllowCharacterReset | restablecimiento de caracteres | recuperación | booleano | n/a | contexto |
| AllowIronMode | iron modo | recuperación | booleano | n/a | contexto |
| AllowPagers | buscapersonas | recursos | booleano | n/a | contexto |
| AllowRecipeSharing | compartir recetas | recursos | booleano | n/a | contexto |
| AllowTransmog | transmog | recursos | booleano | n/a | contexto |
| BaseInventorySize | tamaño del inventario base | recursos | número | 12 | bajo |
| BonusPerkPoints | puntos de bonificación | recursos | número | 0 | bajo |
| BridgeSupports | límite de soporte de puente | entorno | número | 0 | alta |
| ContinenceSpeedMultiplier | tasa de continencia | supervivencia | multiplicador | 1.0 | alta |
| DamageToAlliesMultiplier | fuego amigo daño | combate | multiplicador | 1.0 | alta |
| DayNightCycleSpeedMultiplier | velocidad del ciclo día-noche | entorno | multiplicador | 1.0 | alta |
| DayNightCycleState | estado día-noche | entorno | enum | n/a | contexto |
| DeathPenalties | penas de muerte | recuperación | enum | n/a | contexto |
| DetectionSpeedMultiplier | velocidad de detección de enemigos | combate | multiplicador | 1.0 | alta |
| DisableResearchMinigame | minijuego de investigación | recursos | booleano | n/a | contexto |
| DurabilityLossOnDeathMultiplier | pérdida de durabilidad al morir | recuperación | multiplicador | 1.0 | alta |
| EnemyAccuracy | precisión enemiga | combate | enum | n/a | contexto |
| EnemyDeployableDamageMultiplier | daño enemigo a las defensas | combate | multiplicador | 1.0 | alta |
| EnemyHealthMultiplier | resiliencia del enemigo | combate | multiplicador | 1.0 | alta |
| EnemyPlayerDamageMultiplier | enemigo daño a los jugadores | combate | multiplicador | 1.0 | alta |
| EnemySpawnRate | frecuencia enemiga | combate | multiplicador | 1.0 | alta |
| FatigueSpeedMultiplier | tasa de fatiga | supervivencia | multiplicador | 1.0 | alta |
| FirstTimeStartingWeapon | provisión inicial de armas | recursos | número | 0 | bajo |
| FoodSpoilSpeedMultiplier | descomposición de alimentos | recursos | multiplicador | 1.0 | alta |
| GameDifficulty | dificultad del juego | combate | enum | n/a | contexto |
| HardcoreMode | modo intenso | recuperación | booleano | n/a | contexto |
| HomeWorlds | mundos de origen | entorno | booleano | n/a | contexto |
| HostAccessPlayerCorpses | acceso al cadáver del anfitrión | recuperación | booleano | n/a | contexto |
| HungerSpeedMultiplier | tasa de hambre | supervivencia | multiplicador | 1.0 | alta |
| InvisibleRadiation | radiación invisible | entorno | booleano | n/a | contexto |
| ItemDurabilityMultiplier | durabilidad del artículo | recursos | multiplicador | 1.0 | bajo |
| ItemStackSizeMultiplier | capacidad de pila | recursos | multiplicador | 1.0 | bajo |
| ItemWeightMultiplier | peso del artículo | recursos | multiplicador | 1.0 | alta |
| LootRespawnEnabled | respawn del botín | recursos | booleano | n/a | contexto |
| PlayerFurnitureDestruction | destrucción de muebles del jugador | combate | booleano | n/a | contexto |
| PlayerXPGainMultiplier | ganancia de experiencia | recursos | multiplicador | 1.0 | bajo |
| PowerSocketsOffAtNight | energía nocturna | entorno | booleano | n/a | contexto |
| RadiationDealsDamage | daños por radiación | entorno | booleano | n/a | contexto |
| RefrigerationEffectivenessMultiplier | refrigeración | recursos | multiplicador | 1.0 | bajo |
| ShowDeathMessages | mensajes de muerte | recuperación | booleano | n/a | contexto |
| SinkRefillRate | tasa de recarga del fregadero | recursos | multiplicador | 1.0 | bajo |
| StorageByTag | almacenamiento por etiqueta | recursos | booleano | n/a | contexto |
| StructuralSupportLimit | límite de soporte estructural | entorno | número | 0 | alta |
| TaintedSinkWater | agua contaminada del fregadero | supervivencia | booleano | n/a | contexto |
| ThirstSpeedMultiplier | tasa de sed | supervivencia | multiplicador | 1.0 | alta |
| WeatherFrequency | frecuencia meteorológica | entorno | enum | n/a | contexto |

<a id="score-bands"></a>
## Bandas de puntuación

| Puntuación mediante | Calificación | Significado simple |
|---:|---|---|
| 0.8 | Condiciones de alivio | alivio |
| 1.7 | Condiciones favorables | favorable |
| 2.6 | Presión estándar | estándar |
| 3.4 | Condiciones exigentes | exigente |
| 4.2 | Condiciones severas | severas |
| 5.0 | Condiciones extremas | extremas |
