<a id="packaged-source-reference"></a>
# Referencia de fuente empaquetada

> **Fuente canónica en inglés:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


La versión ZIP contiene exactamente las 51 rutas siguientes. El constructor rechaza una ruta faltante, una fuente adicional en forma de paquete, una colisión de casos, un enlace simbólico o un miembro fuera de su lista de permitidos literal. La salida en tiempo de ejecución, las pruebas, los documentos del repositorio y las modificaciones de terceros no son miembros del paquete.

El complemento verificable por máquina es [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Registra las mismas rutas con entradas, salidas, efectos secundarios, configuraciones públicas, estados visibles, modos de falla, editabilidad y documentación canónica.

Cada fila de Lua enviada tiene un `module-*` ancla estable. El vínculo idéntico en su encabezado de fuente canónico y registro de máquina hace que la propiedad, el contrato, los efectos secundarios, las fallas y la recuperación sean directamente rastreables.

<a id="package-markers"></a>
## Marcadores de paquete

| Ruta | Llamante y responsabilidad | Efectos secundarios y comportamiento de falla | Guía |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS marcador de habilitación incluido en ambos paquetes. | Sin escritura en tiempo de ejecución. El archivo faltante falla la validación del paquete y puede impedir la carga. | [Instalación](INSTALACI%C3%93N.md) |
| `RandomDay/.randomday_version` | Leído por `ax_core/version.lua`; generado por paquete. | Sin escritura en tiempo de ejecución. Missing/blank el marcador devuelve `unversioned`; La compilación final requiere una identidad de versión alineada. | [Validación de la versión](VALIDACI%C3%93N_DE_LANZAMIENTO.md) |
| `RandomDay/.randomday_mode` | Leído por `ax_core/version.lua`; generado como `dedicated_server` o `singleplayer_manual`. | Valor no válido que detiene el inicio antes de que funcione el sistema de archivos. | [Arquitectura](ARQUITECTURA.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Entrada, configuración y servicios principales

| Ruta | Llamante y responsabilidad | Entradas, salidas y comportamiento de falla | Guía |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS punto de entrada Resuelve una raíz de mod e invoca `ax_core/init.lua`. | Imprime una línea fatal y regresa si falla la resolución raíz o el inicio. | [Ruta de inicio](ARQUITECTURA.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Orquestador principal para inicio y supervisión opcional. | Ancla rutas de salida, aplica package/safety bloqueos, posee una selección y secuencia escritura, estado, adaptadores, estado, web y mensajes. | [Ruta de inicio](ARQUITECTURA.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Cargado por `init.lua`; objeto de configuración pública completo. | Lee la identidad del paquete; la configuración y los campos reservados se documentan individualmente. Los bloqueos de seguridad no válidos detienen el inicio. | [Configuración](CONFIGURACI%C3%93N.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Cargado por configuración y registro de perfil. | Lee marcadores de paquetes recortados; devuelve `unversioned` o `invalid` cuando no está disponible. | [Identidad de versión](VALIDACI%C3%93N_DE_LANZAMIENTO.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Contenedor de registro compartido. | Emite `[RandomDay]` líneas en niveles configurados; sin transporte de registros privado. | [archivos de tiempo de ejecución](ARCHIVOS_DE_EJECUCI%C3%93N.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | Archivos compartidos, ruta, codificación, hash, directorio y ayudantes de transacciones. | La creación de directorios solo acepta un comando Lua/Wine exitoso confirmado; Los resultados no disponibles, generados, señalados, ambiguos o distintos de cero no se cierran con mensajes limitados y referencias relativas al tiempo de ejecución. También posee pending/readback/promotion/rollback semántica y retiene datos de recuperación inciertos. | [Transacción Sandbox](ARQUITECTURA.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Selección, Sandbox, estado y mensajes

| Ruta | Llamante y responsabilidad | Entradas, salidas y comportamiento de falla | Guía |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; lee el marcador activo y el estado de rotación, elige un active/prepared par, persiste el modo de sesión y el orden del día exacto. | Construye un configured/wrapped o un orden de 17 posiciones barajado una sola vez, escribe `rotation_state.txt` de forma transaccional y vuelve al último estado bueno sin volver a realizar operaciones. La falla de persistencia produce una transición degradada. | [Máquina de estado de rotación](ARQUITECTURA.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Escritor de Sandbox; crea copias de seguridad de operaciones y de los últimos bienes y restaura bytes verificados. | Actualiza los últimos bienes sandbox/manifest como par; conserva el par anterior si falla el reemplazo del manifiesto. | [archivos de tiempo de ejecución](ARCHIVOS_DE_EJECUCI%C3%93N.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Creador de perfiles, serializador y validador. | Define el orden de las claves canónicas, los tipos, los rangos y las reglas fijas; no hay escrituras en el sistema de archivos. | [Sandbox claves](PERFILES/CLAVES_DE_CONFIGURACI%C3%93N_DE_SANDBOX.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Escritor de Sandbox. | Produce texto determinista completo INI con RandomDay marcadores de perfil no válidos que se rechazan mediante validación. | [Perfiles](PERFILES/DOCUMENTACI%C3%93N_DEL_PERFIL.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Pruebas y escritor del generador. | Valida los valores del perfil y serializa INI contra el esquema, los valores fijos y la identidad del perfil esperado. | [Sandbox claves](PERFILES/CLAVES_DE_CONFIGURACI%C3%93N_DE_SANDBOX.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; resuelve objetivos limitados por modo y realiza primary/mirror escrituras. | Produce resultados de transacciones, copias de seguridad, reversión, hash, duplicación y salida manual. | [Transacción Sandbox](ARQUITECTURA.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` después de cada resultado de preparación. | Escribe el estado actual, el diccionario y la vista previa del mensaje de forma transaccional con referencias de destino desinfectadas se registra y no cambia la autoridad del sandbox. | [Esquema de estado actual](ARCHIVOS_DE_EJECUCI%C3%93N.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` después del estado. | Escribe `today.json` y `today.html` a partir de la active/prepared decisión. El error se informa como error de exportación, no como éxito del sandbox. | [Esquema de exportación web](ARCHIVOS_DE_EJECUCI%C3%93N.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` después de una persistencia de estado exitosa. | Crea mensajes limitados join/daily a partir de datos de traducción y, opcionalmente, registra un comando de consola local. Falta player/transport omite un aviso sin cambiar el estado del perfil. | [Mensajes del reproductor](CONFIGURACI%C3%93N.md#player-messages) |

<a id="optional-adapter-modules"></a>
## Módulos adaptadores opcionales

| Ruta | Llamante y responsabilidad | Entradas, salidas y comportamiento de falla | Guía |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; descubre objetivos de adaptador reconocidos y aplica todos los archivos planificados transaccionalmente. | Produce seis resultados documentados, copias de seguridad verificadas, diagnósticos saneados y evidencia de reversión. | [Límite del adaptador](ARQUITECTURA.md#adapter-boundary) |
| <a id="module-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Definición de puente de adaptador para un DynamicSpawns diseño. | Suministra firmas reconocidas y mapas de valores preparados; se omiten. | [Adaptadores compatibles](ADAPTADORES_COMPATIBLES.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Definición de adaptador interno para RandomDay campos de extensión opcionales en un Chaotic Spawn Engine reconocido `DynamicSpawns`; el nombre del archivo no es un nombre de producto separado. | Asigna el encuentro del perfil y los valores de alcance configurados solo cuando existe el diseño completo de la extensión Chaotic Spawn Engine. | [Adaptadores compatibles](ADAPTADORES_COMPATIBLES.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Definición de puente adaptador para un diseño de configuración de Lethal Lasers reconocido. | Requiere todas las claves previstas antes de la mutación; de lo contrario, se informa que es incompatible. | [Adaptadores compatibles](ADAPTADORES_COMPATIBLES.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Definición de puente de adaptador para un ANTE diseño de configuración Up reconocido. | Requiere campos de reaparición, variante y puerta de depuración; de lo contrario, se informa que es incompatible. | [Adaptadores compatibles](ADAPTADORES_COMPATIBLES.md) |

<a id="shared-profile-and-translation-modules"></a>
## Módulos de traducción y perfil compartido

| Ruta | Llamante y responsabilidad | Entradas, salidas y comportamiento de falla | Guía |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; valores base canónicos y valores predeterminados de 17 días. | Proporciona todas las claves de sandbox, los cuatro valores predeterminados de perfil enviados y las reglas fijas restantes; ningún sistema de archivos escribe. La validación del esquema rechaza resultados incompletos. | [Sandbox claves](PERFILES/CLAVES_DE_CONFIGURACI%C3%93N_DE_SANDBOX.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Cada módulo familiar y vista familiar heredada. | Clona los días base, aplica limitaciones family/day anula, valida `sandbox.profile_overrides`, aplica esos valores persistentes más las reglas fijas restantes y devuelve un paquete familiar de 17 perfiles. | [Referencia de perfil](PERFILES/DOCUMENTACI%C3%93N_DEL_PERFIL.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; registro público ordenado de las 17 familias. | ID de suministros, nombres de archivos fuente, nombres, descripciones, géneros y metadatos de tono. La fuente familiar faltante no se carga. | [Rotación familiar](ROTACI%C3%93N_FAMILIAR.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Calendario, escritor, estado, pruebas y generadores. | Carga todos los paquetes familiares registrados y expone el conjunto de perfiles de 17 por 17, los valores predeterminados enviados, los valores efectivos para todo el perfil, el orden del esquema y las reglas fijas. | [Referencia de perfil](PERFILES/DOCUMENTACI%C3%93N_DEL_PERFIL.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Vista de compatibilidad del paquete de 17 días de acción original. | Devuelve un paquete familiar completo, pero no es la fuente familiar del registro actual. Se mantiene para la continuidad histórica de la ruta del paquete. | [Rotación familiar](ROTACI%C3%93N_FAMILIAR.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Vista de compatibilidad empaquetada del paquete de supervivencia Reaction original. | Devuelve un paquete familiar completo, pero es no seleccionado por el registro actual. Se mantiene para la continuidad histórica de la ruta del paquete. | [Rotación familiar](ROTACI%C3%93N_FAMILIAR.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Búsqueda de encuentros de índice diario heredado disponible para el código de perfil. | Devuelve un mapa de encuentros limitado por día; ningún sistema de archivos escribe. Los perfiles familiares actuales tienen sus propios valores de encuentro. | [Referencia de perfil](PERFILES/DOCUMENTACI%C3%93N_DEL_PERFIL.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | mensajes del jugador y contenedor de compatibilidad. | Crea mensajes limitados joke/note paquetes del perfil seleccionado; los datos de perfil no disponibles recurren a un mensaje neutral. | [Mensajes del reproductor](CONFIGURACI%C3%93N.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Contenedor compatible con versiones anteriores `messages_17.lua`. | Sin datos ni escrituras independientes; la falla de carga sigue el módulo de mensaje canónico. | [Mensajes del reproductor](CONFIGURACI%C3%93N.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Escritor de diccionario de traducción y tiempo de ejecución. | Define los 46 significados, tipos, rangos, dominios y lenguaje de valores de configuración de sandbox. Los valores desconocidos permanecen explícitos. | [Traducción y diccionario](ARCHIVOS_DE_EJECUCI%C3%93N.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Estado del tiempo de ejecución y mensajes del reproductor. | Convierte valores de perfil sin procesar en puntuaciones de dominio delimitadas, hechos, resúmenes, advertencias y resultados de diccionario mientras conservando los valores sin procesar. | [Esquema de estado actual](ARCHIVOS_DE_EJECUCI%C3%93N.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Módulos de familia registrados

Cada fila es cargada por `randomday_17.lua`, llama a `profile_builder.lua`, devuelve exactamente 17 perfiles y no tiene ningún efecto secundario directo en el sistema de archivos. Un perfil faltante, duplicado, incompleto, fuera de rango o que viola las reglas fijas falla. Conjunto de dispositivos de tiempo de ejecución y puerta de referencia generada.

| Ruta | Familia | Guía canónica generada |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Acción | [Acción](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_ACCI%C3%93N.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Supervivencia | [Supervivencia](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_SUPERVIVENCIA.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Sigilo | [Sigilo](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_SIGILO.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Horda | [Horda](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_HORDA.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Boss Hunt | [Boss Hunt](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_CAZA_DE_JEFES.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Carroñero | [Carroñero](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_CARRO%C3%91ERO.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Constructor | [Constructor](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_CONSTRUCTOR.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Expedición | [Expedición](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_EXPEDICI%C3%93N.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Bloqueo de seguridad | [Bloqueo de seguridad](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_BLOQUEO_DE_SEGURIDAD.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Biohazard | [Biohazard](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_RIESGO_BIOL%C3%93GICO.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Anteverse | [Anteverse](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_ANTEVERSO.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Pesadilla | [Pesadilla](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_PESADILLA.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Desgastado | [Desgastado](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DESGASTADOS.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Precisión | [Precisión](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_PRECISI%C3%93N.md) |
| <a id="module-ax-profiles-families-logistics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Logística | [Logística](PERFILES/FAMILIAS/PERFIL_DE_LOG%C3%8DSTICA_FAMILIA.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Experimental | [Experimental](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_EXPERIMENTALES.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Prueba de cumplimiento | [Prueba de cumplimiento](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_PRUEBA_DE_CUMPLIMIENTO.md) |

<a id="generated-references"></a>
## Referencias generadas

`docs/profiles/profiles.generated.json`, los archivos Markdown de la familia y `FULL_PROFILE_REFERENCE.md` son contributor/operator referencias generadas a partir del mismo conjunto de perfiles. No son miembros del paquete y no deben editarse como sustituto del cambio de fuente del perfil. La validación requiere 17 familias, 17 perfiles por familia, ID únicos, todas las claves de esquema, reglas fijas, cobertura de traducción y mensajes delimitados.
