<a id="configuration"></a>
# Configuración

> **Fuente canónica en inglés:** [CONFIGURATION.md](../../CONFIGURATION.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


La configuración principal del operador es:

```text
RandomDay/Scripts/ax_config/server.lua
```

Haga una copia de seguridad del archivo y cambie una sección a la vez. Los booleanos de Lua están en minúsculas `true` y `false`; las cadenas necesitan comillas; las entradas de la lista necesitan comas. Después del siguiente inicio, lea la página de estado antes de realizar otro cambio. Los contribuyentes que trabajan desde el código fuente pueden utilizar las [verificaciones de validación de versión](VALIDACI%C3%93N_DE_LANZAMIENTO.md) antes de empaquetar una compilación modificada.

No editar manualmente `.randomday_mode`, `.randomday_version`, referencias de perfil generadas, `runtime/`, o `web_export/`. El creador del paquete es propietario del modo del paquete y de los marcadores de versión y verifica que coincidan con los metadatos de la versión.

Cada configuración a continuación se define en `RandomDay/Scripts/ax_config/server.lua`. Las tablas distinguen las configuraciones editables de los campos de identidad de propiedad de la versión y de compatibilidad reservada. Que un campo esté presente en Lua no significa que cambiarlo sea un comportamiento admitido.

<a id="choose-an-experience"></a>
## Elige una experiencia

RandomDay tiene dos paquetes: uno para cada servidor dedicado y otro para singleplayer/LAN copia manual. El paquete dedicado tiene dos modos de funcionamiento; esos modos son configuraciones, no descargas separadas.

| Tu mundo | Instalar | Elige este comportamiento |
| --- | --- | --- |
| Un servidor dedicado que mantiene una campaña en movimiento a través de reinicios rutinarios | Paquete de servidor dedicado | `persistent_dedicated` reanuda el orden guardado de la familia y el perfil. |
| Un servidor dedicado abierto solo para sesiones de juego individuales | El mismo paquete de servidor dedicado | `temporary_dedicated` mantiene el siguiente perfil preparado de forma segura entre sesiones, mientras que una nueva gestión familiar puede utilizar un inicio configurado o aleatorio. |
| un jugador o LAN mundo | Singleplayer/LAN paquete | `auto` selecciona el comportamiento de copia manual; detén el mundo antes de copiar el archivo generado. |

Si no estás seguro, utiliza `auto`. El paquete selecciona el comportamiento normal para su tipo de instalación. Elige el estilo de juego amplio en [Rotación familiar](ROTACI%C3%93N_FAMILIAR.md). Utilice el [índice familiar generado](PERFILES/DOCUMENTACI%C3%93N_DEL_PERFIL.md) cuando desee valores exactos de juego y sandbox. Luego elige el primer día y la progresión:

- `start_day_mode="configured"` comienza en `start_day`.
- `start_day_mode="random"` elige un primer día válido al inicio de una nueva gestión familiar y mantiene esa elección.
- `day_progression_mode="sequential"` recorre las 17 posiciones.
- `day_progression_mode="non_repeating_random"` almacena un pedido aleatorio que contiene cada día exactamente una vez.

Usa los ajustes preestablecidos completos en [Rotación](#rotation). Una instalación nueva aún necesita un inicio para preparar el primer perfil elegido y un inicio posterior para activarlo.

<a id="release-identity-and-logging"></a>
## Liberar identidad y registro

| Configuración | Tipo y valor de envío | Uso admitido | Fallo o interacción |
|---|---|---|---|
| `version` | Cadena leída de `.randomday_version` | Solo lectura. | El marcador faltante o en blanco se convierte en `unversioned`; La validación final del paquete rechaza la deriva de identidad. |
| `package_mode` | Cadena leída de `.randomday_mode` | Solo lectura: `dedicated_server` o `singleplayer_manual`. | Cualquier otro valor detiene el inicio antes de que el destino escriba. |
| `plan_basis` | Cadena: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Solo etiqueta de diagnóstico; no lo utilices para alternar funciones. | El tiempo de ejecución actual no se ramifica en este campo. |
| `logging.level` | Cadena: `info` | `debug`, `info`, `warn`, o `error`. | Los valores desconocidos no agregan destinos de registro; mantener `info` a menos que diagnostique el comportamiento de generación de perfiles. |

Ejemplo:

```lua
logging = { level = "debug" }
```

Utilice `debug` temporalmente, conserve el `UE4SS.log` relevante y luego regrese a `info`. Los registros pueden contener rutas locales de fallas de bajo nivel; revíselos antes de compartirlos.

<a id="experience-mode"></a>
## Modo de experiencia

`experience.mode` indica la forma en que se opera esta instalación. No debilita el límite de seguridad del siguiente inicio: Abiotic Factor lee la configuración de la zona de pruebas antes de UE4SS cargas RandomDay, por lo que ningún modo puede reemplazar las reglas del proceso que ya se está ejecutando.

| Configuración | Valor enviado | Valores admitidos | Efecto |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` se resuelve desde el paquete. Los paquetes dedicados pueden utilizar cualquiera de los modos dedicados. El paquete de copia manual solo acepta `auto` o `singleplayer_lan`. |

- `persistent_dedicated` mantiene una orden family/day almacenada durante reinicios normales del servidor a largo plazo.
- `temporary_dedicated` describe un servidor que se inicia para sesiones de juego limitadas. Aún persiste el orden preparado, por lo que al detener el host no se reinicia silenciosamente la siguiente sesión.
- `singleplayer_lan` genera solo la salida de copia manual limitada. Nunca descubre ni edita una carpeta personal guardada.

Una combinación package/experience incompatible se detiene antes de una escritura en el sandbox.

<a id="rotation"></a>
## Rotación

| Configuración | Valor enviado | Valores admitidos | Efecto |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Mantiene todos los cambios del sandbox en el límite de reinicio. |
| `cycle.cycle_length_days` | `17` | `17` para el conjunto de perfiles estándar | Coincide con cada paquete familiar y referencia generada. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Utiliza `cycle.start_day` o elige un día de inicio válido una vez al comienzo de una carrera familiar. |
| `cycle.start_day` | `1` | Número entero `1` hasta `17` | Primer día en que `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Crea un pedido secuencial empaquetado o un pedido aleatorio que contiene cada día exactamente una vez. |
| `cycle.bootstrap_day` | `1` | Número entero `1` hasta `17` | Reserva de compatibilidad utilizada solo cuando `cycle.start_day` está ausente. La nueva configuración debe utilizar `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` o un intervalo positivo acotado | `0` se prepara una vez al inicio; un valor positivo habilita la supervisión periódica cuando UE4SS proporciona `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Elige cómo comienza una nueva carrera familiar de 17 días. |
| `profile_family.selected_family` | `action` | Un ID en `allowed_families` | Familia utilizada por `selected_run` y como alternativa. |
| `profile_family.default_family` | `action` | Un ID familiar registrado | Retroceso cuando el ID seleccionado falta o no es válido. |
| `profile_family.allowed_families` | Los 17 ID de familia públicos | Cualquier subconjunto no vacío de ID registrados | Limita las familias elegibles para nuevas ejecuciones. |
| `profile_family.preserve_family_until_day_17` | Booleano: `true` | Campo de compatibilidad reservado; keep `true`. | El calendario actual siempre mantiene a la familia en cada posición en el orden persistente de 17 días y no lee este campo como un interruptor. |
| `profile_family.reroll_only_after_day_17` | Booleano: `true` | Campo de compatibilidad reservado; keep `true`. | El calendario actual cambia de familia solo después de que se haya completado cada ID de día, independientemente de qué día sea el último en el orden almacenado. |
| `profile_family.prevent_repeats_until_rotation_complete` | Booleano: `true` | Campo de compatibilidad reservado; keep `true`. | La lógica actual del grupo no repetitivo es fija y no lee este valor como un interruptor. |

El orden del día se crea una vez para una nueva gestión familiar y se escribe en `runtime/rotation_state.txt`. La recuperación y los reinicios posteriores reutilizan esas posiciones exactas. Una edición de configuración no vuelve a ejecutar un pedido en curso. La familia cambia solo después de que se hayan completado las 17 posiciones.

<a id="recommended-presets"></a>
### Preajustes recomendados

Servidor dedicado persistente:

```lua
experience = { mode = "persistent_dedicated" }
cycle = {
    application_mode = "next_reboot_queue",
    cycle_length_days = 17,
    start_day_mode = "configured",
    start_day = 1,
    day_progression_mode = "sequential",
    bootstrap_day = 1,
    check_interval_ms = 0,
}
```

Sesiones dedicadas temporales con un orden diferente y no repetitivo para cada nueva familia:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN la copia manual utiliza el paquete para un jugador y normalmente sale de `experience.mode="auto"`. Puede elegir los mismos controles de inicio y progresión antes de generar el siguiente archivo. Copie el archivo generado en el mundo detenido elegido antes de ejecutar otra generación si desea que el estado de tiempo de ejecución y el perfil cargado del mundo permanezcan alineados.

En una instalación nueva, el primer proceso solo puede preparar el día de inicio seleccionado. Un proceso posterior lo activa. El inicio aleatorio o configurado no omite el orden de carga del motor.

Ejemplo de una ejecución fija del Builder:

```lua
profile_family = {
    mode = "selected_run",
    selected_family = "builder",
    default_family = "action",
    allowed_families = { "builder" },
    preserve_family_until_day_17 = true,
    reroll_only_after_day_17 = true,
    prevent_repeats_until_rotation_complete = true,
}
```

Un conjunto elegible vacío o desconocido recurre a una familia registrada en lugar de crear un perfil incompleto.

<a id="primary-sandbox-path"></a>
## Ruta principal de la zona de pruebas

| Configuración | Tipo y valor de envío | Uso admitido | Fallo o interacción |
|---|---|---|---|
| `paths.runtime_dir` | Cadena: `ue4ss/Mods/RandomDay/runtime` | Solo lectura en la configuración de origen. | `init.lua` la reemplaza con la ruta mod-root `runtime/` resuelta. |
| `paths.web_export_dir` | Cadena: `ue4ss/Mods/RandomDay/web_export` | Solo lectura en la configuración de origen. | `init.lua` la reemplaza con la ruta mod-root `web_export/` resuelta. |
| `paths.sandbox_path_override` | Cadena o `nil`: `nil` | Una ruta literal `SandboxSettings.ini` para un diseño dedicado no estándar. | Los objetivos inseguros o no disponibles fallan en la escritura; el modo para un jugador borra la anulación. |
| `paths.sandbox_candidates` | Lista de cadenas: siete candidatos genéricos | Candidatos de reserva de servidor dedicado ordenados. | `init.lua` antepone candidatos derivados de la instalación; la primera ruta existente gana. |
| `paths.write_sandbox_mirrors` | Booleano: `true` | Permite espejos configurados deliberadamente. | No se escribe ningún espejo mientras la lista de espejos está vacía y `world_name=nil`; El modo para un jugador fuerza `false`. |
| `paths.sandbox_mirror_required` | Booleano: `false` | Campo de compatibilidad reservado; keep `false`. | El escritor actual trata los espejos como opcionales y no lee este campo como una puerta obligatoria. |
| `paths.world_name` | Cadena o `nil`: `nil` | Un componente de carpeta mundial seguro que se utiliza para derivar candidatos de espejo genéricos. | Todo lo que esté fuera de letras, números y espacios, `_`, o `-` detiene el inicio; el modo para un jugador lo ignora. |
| `paths.sandbox_mirror_candidates` | Lista de cadenas: vacía | Archivos espejo opcionales exactos. | Cada espejo elegible usa su propia transacción; una falla en el espejo no cambia el éxito principal. |

`paths.sandbox_path_override` el valor predeterminado es `nil`. Sin anulación, RandomDay primero verifica los candidatos genéricos WindowsServer anclados a la instalación RandomDay detectada y luego verifica los candidatos configurados. Si no existe ninguno, utiliza el primer candidato genérico anclado a la instalación, que se resuelve en la instalación del servidor:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Este respaldo no se resuelve desde el directorio de trabajo actual del proceso. Establezca `sandbox_path_override` solo cuando su instalación utilice un archivo literal diferente. Apunte a un `SandboxSettings.ini`, no a un directorio. Detenga el servidor y confirme que el archivo esté dentro de la instalación prevista antes de usarlo.

<a id="optional-mirrors"></a>
### Espejos opcionales

`paths.write_sandbox_mirrors` se envía como `true`, pero la lista de rutas de espejo está vacía y `paths.world_name` es `nil`. Por lo tanto, los valores predeterminados enviados no incluyen ningún espejo adicional. Configúrelo en `false` cuando la instalación siempre deba escribir solo el destino principal resuelto. Sin un candidato espejo configurado o un nombre mundial, cualquiera de los valores todavía escribe solo el archivo de zona de pruebas principal.

Un espejo se vuelve elegible solo cuando agrega deliberadamente una entrada exacta a `paths.sandbox_mirror_candidates` o establece `paths.world_name`. Los espejos son copias de mejor esfuerzo para instalaciones que leen una segunda ruta de zona de pruebas específica del mundo. No sustituyen la configuración de la ruta principal correcta.

Antes de habilitar una duplicación:

1. detenga el servidor;
2. identifique el archivo exacto que lee el servidor;
3. confirme que el destino está dentro de la instalación prevista;
4. haga una copia de seguridad;
5. agregue solo esa ruta;
6. verifique el resultado del espejo después de la preparación.

Ejemplo de anulación sin un espejo:

```lua
paths = {
    runtime_dir = "ue4ss/Mods/RandomDay/runtime",
    web_export_dir = "ue4ss/Mods/RandomDay/web_export",
    sandbox_path_override = "<server-root>/AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    sandbox_candidates = {},
    write_sandbox_mirrors = false,
    sandbox_mirror_required = false,
    world_name = nil,
    sandbox_mirror_candidates = {},
}
```

`<server-root>` es un marcador de posición. Reemplácelo localmente; no publique una ruta específica de la máquina.

<a id="non-disableable-safety-locks"></a>
## Bloqueos de seguridad no deshabilitables

| Configuración | Valor requerido | Significado |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Conserve una copia verificada antes de reemplazar un archivo principal existente. |
| `sandbox.restore_last_good_on_failure` | `true` | Intente la recuperación automática después de un reemplazo o lectura fallidos. |
| `external_mods.patch_only_existing_keys` | `true` | Rechazar inventar una configuración desconocida en el archivo de otro mod. |
| `external_mods.backup_before_write` | `true` | Conservar los bytes de destino antes de editar un adaptador transaccional compatible. |

RandomDay rechaza el inicio si alguno de estos cuatro valores no es `true`. Son cerraduras de seguridad, no palancas de operador compatibles. No los deshabilite, ni siquiera durante el desarrollo o la resolución de problemas, porque al hacerlo se cambia el límite de cierre de fallas que prueban las pruebas del escritor y del adaptador.

`sandbox.force_rewrite_every_supervision_tick` sigue siendo una configuración normal y se envía como `false`, lo que deja intacto un archivo sandbox que ya coincide. Acepta un booleano. Establecerlo en `true` fuerza a que los mismos bytes preparados propiedad del proceso pasen nuevamente por el escritor; no avanza el family/day. Úselo solo para una prueba de recuperación limitada porque las escrituras repetidas crean más copias de seguridad de operaciones.

<a id="optional-mod-adapters"></a>
## Adaptadores de mod opcionales

| Configuración | Valor enviado | Significado |
|---|---:|---|
| `external_mods.enabled` | `true` | Permite que los adaptadores configurados inspeccionen objetivos instalados por separado. |
| `external_mods.optional_by_default` | `true` | Los mods opcionales faltantes o incompatibles no bloquean RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Bloqueo de seguridad requerido; el inicio falla si se modifica. |
| `external_mods.backup_before_write` | `true` | Bloqueo de seguridad requerido; el inicio falla si se modifica. |
| `external_mods.adapters` | Cuatro ID de adaptador públicos | Límites que RandomDay-owned se pueden ejecutar adaptadores. |

Elimine un ID de adaptador de la lista para dejar esa integración sin deshabilitar o desinstalar el mod de terceros. El singleplayer/LAN deshabilita todos los adaptadores independientemente de esta lista.

`external_mods.optional_by_default=false` hace que un resultado de adaptador configurado distinto de `applied` o `already_current` falle en el resultado del adaptador agregado. No hace que la transacción principal de la zona de pruebas se revierta. Conserve el `true` enviado a menos que el operador tenga un motivo probado para requerir una integración.

Ver [Adaptadores Mod compatibles](ADAPTADORES_COMPATIBLES.md) para diseños reconocidos y los seis resultados posibles.

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### Campos de alcance opcionales del Chaotic Spawn Engine

`world_scope` proporciona cinco RandomDay configuraciones de extensión opcionales solo cuando un Chaotic Spawn Engine reconocido `DynamicSpawns/SharedData.lua` ya contiene esos campos. Este no es un mod o descarga independiente:

| Configuración | Valor enviado | Efecto adaptador |
|---|---:|---|
| `world_scope.enabled` | `true` | Solicita la RandomDay puerta de alcance mundial opcional dentro de un DynamicSpawns diseño. |
| `world_scope.affect_open_worlds` | `true` | Incluye mundos abiertos a menos que el mod objetivo aplique una regla de mundo protegido. |
| `world_scope.unknown_world_policy` | `allow` | Solicitudes `allow` o `block` cuando el mod de destino no puede clasificar un mundo. |
| `world_scope.log_scope_decisions` | `true` | Solicita el registro del mod de destino para su decisión de alcance. |
| `world_scope.protected_worlds` | Lista vacía | Proporciona patrones de mundo protegido separados por comas al diseño de destino. |

Estos valores son entradas del adaptador, no un filtro mundial implementado por el escritor sandbox de RandomDay's escritor de zona de pruebas. Tienen efecto sólo cuando el diseño del Chaotic Spawn Engine instalado por separado ya contiene las opciones iniciales opcionales completas RandomDay y los informes `applied` o `already_current`. Chaotic Spawn Engine sigue siendo responsable del uso de esos campos en tiempo de ejecución. Una instalación normal sin los campos de extensión no se modifica.

Los cinco valores son entradas del adaptador. `unknown_world_policy` acepta sólo los valores objetivo documentados `allow` o `block`; se omite un diseño de destino no reconocido. Mantenga `protected_worlds` vacío en los ejemplos de documentación. Si un operador utiliza patrones locales, no deben incluirse en capturas de pantalla, problemas o artefactos de lanzamiento.

<a id="player-messages"></a>
## Mensajes del jugador

La configuración de servidor dedicado incluida permite recibir avisos de unión compactos y una breve línea diaria. Espera 30 segundos antes del primer pase, comprueba si hay jugadores recién incorporados cada 15 segundos y espera 10 segundos después de un aviso de incorporación antes de la línea diaria.

| Configuración | Valor enviado |
|---|---:|
| `player_message.enabled` | `true` |
| `player_message.log_on_startup` | `true` |
| `player_message.register_console_command` | `false` |
| `player_message.console_command` | `randomday` |
| `player_message.broadcast_enabled` | `true` |
| `player_message.startup_delay_ms` | `30000` |
| `player_message.join_check_interval_ms` | `15000` |
| `player_message.send_daily_joke_after_join` | `true` |
| `player_message.daily_joke_delay_seconds` | `10` |
| `player_message.criticality_join` | `2` |
| `player_message.criticality_joke` | `0` |
| `player_message.max_line_chars` | `42` |
| `player_message.max_join_lines` | `4` |
| `player_message.max_warning_lines` | `3` |
| `player_message.max_note_lines` | `3` |

La validación de la longitud del mensaje comprueba los límites de la fuente. No reemplaza una prueba visual en cada resolución del cliente.

Los valores de tiempo son números no negativos interpretados como milisegundos, excepto `daily_joke_delay_seconds` completos. Un mensaje deshabilitado o una configuración de transmisión suprime los avisos del cliente sin cambiar la preparación del entorno aislado. El comando de la consola se registra solo cuando tanto la configuración como el controlador UE4SS están disponibles. Mantenga los valores de criticidad en los niveles de transporte enviados a menos que una prueba de cliente designado demuestre otro valor.

`max_line_chars` el traductor limita entre 8 y 64 caracteres. Las tres configuraciones de recuento de líneas limitan la unión, la advertencia y la salida de notas respectivamente; los valores enviados coinciden con el número de líneas fuente disponibles. Mantenga estos cuatro límites en sus valores predeterminados a menos que una prueba de diseño del cliente demuestre una configuración más limitada.

Ejemplo con mensajes deshabilitados:

```lua
player_message = {
    enabled = false,
    log_on_startup = true,
    register_console_command = false,
    console_command = "randomday",
    broadcast_enabled = false,
    startup_delay_ms = 30000,
    join_check_interval_ms = 15000,
    send_daily_joke_after_join = false,
    daily_joke_delay_seconds = 10,
    criticality_join = 2,
    criticality_joke = 0,
    max_line_chars = 42,
    max_join_lines = 4,
    max_warning_lines = 3,
    max_note_lines = 3,
}
```

<a id="profiles-and-sandbox-values"></a>
## Perfiles y valores de Sandbox

Los archivos de origen familiar en `RandomDay/Scripts/ax_profiles/families/` definen 17 días completos por familia. La documentación generada en `docs/profiles/` es una salida de referencia, no la fuente de personalización.

Utilice [la referencia clave de sandbox](PERFILES/CLAVES_DE_CONFIGURACI%C3%93N_DE_SANDBOX.md) para tipos, rangos, valores predeterminados de perfil enviados y valores invariantes restantes. Después de editar una fuente de perfil, regenere y valide las 289 combinaciones; no parchee un Markdown generado o el JSON registro a mano.

<a id="customize-the-shipped-profile-defaults"></a>
### Personalice los valores predeterminados del perfil enviado

Abrir:

```text
RandomDay/Scripts/ax_config/server.lua
```

Busque este bloque en `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Estas son las opciones iniciales de RandomDay's, no las reglas inmutables del Factor Abiótico. Establezca cualquiera de los modos en `true` o `false`. Establezca cada valor de soporte en un número entero de `0` hasta `1000`. Detén el juego o el servidor dedicado antes de editar el archivo, guárdalo y luego comienza de nuevo para que Lua cargue la nueva configuración.

RandomDay lee este bloque cada vez que crea los 17 perfiles en una familia. Por lo tanto, los valores elegidos se aplican a cada familia y día, incluidos los perfiles preparados después de una rotación y los perfiles reconstruidos después de un inicio posterior del servidor. No es necesario editar 289 archivos de perfil ni volver a generar la referencia del perfil.

Cambiar solo un `SandboxSettings.ini` activo es temporal porque el siguiente perfil preparado se genera a partir de `server.lua`. Los tipos no válidos, las claves desconocidas o los valores admitidos fuera de `0..1000` detienen la construcción del perfil con un error de configuración con nombre en lugar de revertir silenciosamente a los valores predeterminados.

La referencia del perfil generado continúa mostrando los valores predeterminados enviados. Es una referencia de lanzamiento, no una copia de la configuración privada de un servidor.
