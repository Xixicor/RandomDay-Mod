<a id="architecture-and-data-flow"></a>
# Arquitectura y flujo de datos

> **Fuente canónica en inglés:** [ARCHITECTURE.md](../../ARCHITECTURE.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


RandomDay posee un trabajo limitado: preparar un perfil de espacio aislado completo para un inicio futuro sin describir ese perfil como activo durante el proceso actual. El perfil activo proviene del marcador en el archivo sandbox que Abiotic Factor cargó antes UE4SS iniciado RandomDay. El perfil preparado es un estado de archivo independiente y validado para el próximo reinicio.

<a id="package-modes"></a>
## Modos de paquete

El creador de versiones produce dos archivos ZIP de la misma lista de fuentes permitidas y establece `RandomDay/.randomday_mode` de manera diferente en cada uno.

| Modo | Salida principal | Escrituras externas automáticas |
|---|---|---|
| `dedicated_server` | Servidor dedicado resuelto `SandboxSettings.ini` | Sandbox principal, espejos configurados deliberadamente y adaptadores opcionales reconocidos. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Ninguno fuera de RandomDay; Los espejos y adaptadores están deshabilitados. |

`RandomDay/.randomday_version` y `RandomDay/.randomday_mode` se generan marcadores de paquetes. `RandomDay/Scripts/ax_core/version.lua` los lee; los operadores no deben editarlos después de la instalación.

<a id="session-modes"></a>
## Modos de sesión

El modo de paquete controla dónde RandomDay puede escribir. `experience.mode` describe por separado el ciclo de vida previsto:

| Modo de sesión | Paquete | Contrato de ciclo de vida |
|---|---|---|
| `persistent_dedicated` | Dedicado | Reanuda la familia persistente y el orden diario de 17 posiciones a largo plazo se reinicia. |
| `temporary_dedicated` | Dedicado | Trate cada lanzamiento como una sesión de juego limitada mientras conserva el orden en cola entre lanzamientos. |
| `singleplayer_lan` | Manual para un jugador | Genere un archivo mod-local para un mundo seleccionado por el operador; no se guarda descubrimiento ni se copia automáticamente. |

`auto` se resuelve en `persistent_dedicated` en el paquete dedicado y `singleplayer_lan` en el paquete del manual. El modo de sesión no altera los límites del motor: el proceso actual ya cargó su sandbox antes RandomDay se ejecuta.

<a id="startup-path"></a>
## Ruta de inicio

1. UE4SS cargas `RandomDay/Scripts/main.lua`.
2. El punto de entrada resuelve una `RandomDay/` raíz y carga `Scripts/ax_core/init.lua`.
3. `init.lua` carga configuración, perfiles, calendario, escritor, adaptadores, estado, exportación web y módulos de mensajes del reproductor. Rechaza un modo de paquete no válido o un bloqueo de seguridad de transacción deshabilitado. También valida el modo de sesión compatible con el paquete, el modo de día de inicio, el día de inicio configurado y el modo de progresión del día.
4. Cada compilación familiar valida `sandbox.profile_overrides` desde `Scripts/ax_config/server.lua`. Las cuatro opciones para todo el perfil se aplican después de family/day valores y antes de las reglas invariantes restantes, por lo que cada perfil preparado utiliza las mismas opciones configuradas.
5. Las raíces de tiempo de ejecución y salida web están ancladas a la carpeta mod resuelta. El modo para un jugador se reduce a su única salida mod-local antes de la selección.
6. `ax_cycle/calendar.lua` lee el marcador de la zona de pruebas y el estado de rotación recuperable, luego crea una active/prepared decisión para este proceso de juego.
7. `ax_sandbox/writer.lua` serializa y valida el perfil preparado, luego usa un reemplazo transaccional para el objetivo seleccionado.
8. El estado de rotación está confirmado solo después de que la transacción de la zona de pruebas sea exitosa. Una falla de confirmación de estado se degrada: los adaptadores y los mensajes del reproductor preparado se omiten porque el estado de la zona de pruebas y la cola no coinciden.
9. En el modo dedicado, `ax_external/bridge.lua` evalúa los adaptadores opcionales con respecto al perfil activo. Durante el primer arranque, no existe ningún marcador activo, por lo que el configured/random perfil del día de inicio preparado es la única asignación de adaptador disponible.
10. El estado del tiempo de ejecución JSON/text y la HTML/JSON vista web se reescriben a partir de la misma decisión. Los avisos del reproductor se instalan al final.

La opción predeterminada `cycle.check_interval_ms=0` ejecuta esta secuencia una vez al inicio. Si un operador proporciona un intervalo positivo y UE4SS expone `LoopAsync`, las devoluciones de llamada posteriores reutilizan la selección propiedad del proceso. Podrán reparar o reexportar esa selección, pero no elegir otro día durante el mismo proceso.

<a id="rotation-state-machine"></a>
## Máquina de estado de rotación

| Estado de selección | Condición de entrada | Resultado preparado | Recuperación segura |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Sin marcador activo y sin estado preparado recuperable. | Primera posición configurada o seleccionada aleatoriamente en un orden diario recientemente persistente. | Mantenga la sesión existente en ejecución; reinicie solo después de `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | El día activo no es la última posición en el pedido almacenado. | Siguiente posición almacenada en la misma familia. | Si falla la persistencia, mantenga el servidor detenido y concilie el sandbox y el estado de rotación. |
| `active_marker_found_completed_run_prepare_next_unused_family` | El día activo es la última posición en el pedido almacenado. | Primera posición de un nuevo pedido en la siguiente carrera familiar elegible. | Confirme el nuevo family/day/order antes de reiniciar. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | No hay marcador activo, pero el estado de rotación nombra un perfil preparado. | Se reconstruye el mismo perfil en cola. | Conservar los archivos de estado; no los elimine para forzar una repetición. |
| `supervision_reconfirm_prepared_profile_no_advance` | Se ejecuta una devolución de llamada posterior en el mismo proceso. | El mismo perfil preparado. | Diagnosticar la primera etapa fallida; las devoluciones de llamada repetidas no son selecciones nuevas. |

`selected_run` siempre usa `selected_family`. `rotation_run` consume el pedido elegible configurado. `non_repeating_random_run` elige entre las familias elegibles restantes y comienza un nuevo grupo una vez que se hayan completado todas. Cada modo mantiene una familia hasta que se hayan completado los 17 ID de día únicos en `day_order`. El modo secuencial finaliza después del día 17 cuando el inicio configurado no es el día 1; El modo aleatorio sin repetición almacena una permutación y nunca la vuelve a ejecutar durante la recuperación.

<a id="sandbox-transaction"></a>
## Transacción Sandbox

El escritor representa todas las claves en orden canónico y valida tipos, rangos, reglas fijas, valores de marcador e identidad del perfil antes de escribir. Luego, el reemplazo sigue este orden:

1. eliminar un archivo pendiente obsoleto solo cuando sea seguro hacerlo;
2. preservar o detener los sidecars de recuperación preexistentes;
3. escribir los bytes pendientes;
4. leer el archivo pendiente nuevamente y validarlo;
5. crear un copia de seguridad de la operación verificada cuando existe un objetivo;
6. conservar el original como archivo de reversión de la transacción;
7. promocionar el archivo pendiente;
8. leer y validar el archivo de producción;
9. restaurar el original retenido si la promoción o la validación de producción falla;
10. retener los datos de recuperación e informar el error si la limpieza no se puede verificar.

La primera escritura utiliza la misma pending/readback/validation ruta. Sin un objetivo original, no hay nada que restaurar, por lo que una primera escritura fallida no debe informarse como una recuperación del archivo original.

<a id="adapter-boundary"></a>
## Límite del adaptador

Los adaptadores son RandomDay-owned definiciones de parches para modificaciones instaladas por separado. El puente primero requiere una ruta de destino reconocida y una firma de clave completa. Solo parchea las asignaciones existentes, crea copias de seguridad de las operaciones, aplica cada archivo planificado como una sola transacción y revierte todos los objetivos afectados si falla algún paso. Los objetivos faltantes o incompatibles son resultados opcionales normales.

RandomDay no carga código de terceros en su paquete. Un diseño respaldado por dispositivos demuestra RandomDay's analizador y comportamiento de transacciones, no es que una versión de terceros haya cargado o usado los valores en un proceso de juego.

<a id="output-boundary"></a>
## Límite de salida

Los archivos de tiempo de ejecución se generan a continuación `RandomDay/runtime/` y `RandomDay/web_export/`; ninguno es un lanzamiento ZIP entrada. El escritor de estado elimina las rutas del adaptador local de la máquina del público JSON diagnóstico. La ruta completa, el esquema, la cadencia y el mapa de retención se encuentran en [Archivos y estado de tiempo de ejecución](ARCHIVOS_DE_EJECUCI%C3%93N.md).

<a id="failure-ownership"></a>
## Propiedad fallida

| Etapa fallida | Consecuencia visible para el propietario |
|---|---|
| Perfil o INI validación | No se intenta escribir en producción. |
| Pendiente write/readback | Los bytes de producción existentes permanecen en su lugar. |
| Copia de seguridad de operación | El reemplazo se detiene antes de mover el original. |
| Validación de promoción o producción | Se intenta la restauración automática y se informa su resultado. |
| Persistencia del estado de rotación | Pueden existir bytes de zona de pruebas preparados, pero la transición está degradada y adapters/messages se omiten. |
| Compatibilidad del adaptador | El objetivo no se modifica con `not_installed` o `skipped_incompatible`. |
| Adaptador write/readback | Todos los destinos de adaptador modificados se restauran cuando es posible. |
| Estado o exportación web | El resultado de la zona de pruebas sigue teniendo autoridad; El error de salida se registra y no debe tratarse como un informe exitoso. |

Siga [Operaciones](OPERACIONES.md) para recuperación y [Solución de problemas](SOLUCI%C3%93N_DE_PROBLEMAS.md) para comprobaciones de primeros síntomas.

<a id="evidence-limit"></a>
## Límite de evidencia

El conjunto de dispositivos Lua local puede probar el comportamiento de la fuente, las invariantes de perfil generadas, las ramas de transacciones, las formas de salida y los límites del paquete. No prueba una acumulación actual de Factor Abiótico, una UE4SS versión, un panel de servidor particular, cada tamaño de pantalla o una versión mod de terceros no probada. Esas afirmaciones siguen vigentes. `not tested` hasta que se registra una ejecución de compatibilidad con nombre.
