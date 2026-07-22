<a id="interpret-runtime-state-and-output-schemas"></a>
# Interpretar el estado de ejecución y los esquemas de salida

> **Fuente canónica en inglés:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Esta es la guía canónica de esquema completo de campos. Responde lo que significa cada campo, estado, valor vacío y resultado de la máquina. Utilice [mapa de archivos de tiempo de ejecución](ARCHIVOS_DE_EJECUCI%C3%93N.md) para productores, rutas, tiempos de escritura, retención, sidecars de transacciones y ubicaciones de recuperación.

Todas las rutas de esta guía son relativas a la carpeta `RandomDay/` carpeta a menos que una fila nombre explícitamente el entorno limitado configurado o un destino de adaptador opcional. Los resultados del tiempo de ejecución se generan después de la instalación y no son miembros de ninguna de las versiones ZIP.

<a id="choose-the-authoritative-view"></a>
## Elija la vista autorizada

| Necesidad | Fuente autorizada |
|---|---|
| Reglas cargadas por el proceso actual | RandomDay marcador en el `SandboxSettings.ini` leído al inicio |
| Contabilidad de cola preparada | `runtime/rotation_state.txt`, esquema `1` |
| Estado local detallado | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Estado público legible por máquina | `web_export/today.json`, esquema `2` y `randomday_public_status_v2` |
| Estado legible por humanos | `web_export/today.html`, derivado de la misma transición de estado público |
| Vocabulario de traducción | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Aviso de reproductor delimitado exacto | `runtime/current/player_message_preview.txt` |

El HTML, la vista previa y los resúmenes traducidos son vistas derivadas. No anulan el marcador de la zona de pruebas, el resultado de la transacción ni los valores del perfil sin procesar. Localice los últimos archivos en buen estado, copias de seguridad de operaciones, sidecars, espejos, destinos de adaptadores y `UE4SS.log` en [archivos de tiempo de ejecución](ARCHIVOS_DE_EJECUCI%C3%93N.md).

<a id="rotation-state-schema"></a>
## esquema de estado de rotación

`runtime/rotation_state.txt` usa el esquema `1` y contiene un `key=value` par por línea:

| Campo | Significado |
|---|---|
| `schema_version` | Debe ser `1`. |
| `mod_version` | Identidad del paquete leída desde `.randomday_version`. |
| `rotation_id` | Identificador del pase actual a través del conjunto de familias elegibles. |
| `mode` | `selected_run`, `non_repeating_random_run`, o `rotation_run`. |
| `available_families` | ID de familia elegibles separados por comas después del filtrado de configuración. |
| `remaining_families` | Familias elegibles aún no seleccionadas en el pase no repetitivo actual. |
| `completed_families` | Familias cuyo orden completo persistente de 17 posiciones se ha completado en el pase actual. |
| `active_family`, `active_day` | Información del marcador activo registrada cuando se confirmó la selección. El marcador de espacio aislado tiene autoridad en el siguiente arranque. |
| `prepared_family`, `prepared_day` | Perfil retenido para el próximo reinicio. |
| `active_run_id` | Identificador de gestión familiar asociado con la selección preparada. |
| `last_status` | Estado de selección de calendario que produjo este archivo. |
| `session_mode` | Se resolvió dedicado persistente, dedicado temporal o singleplayer/LAN ciclo de vida. |
| `start_day_mode` | Elección de inicio configurada o aleatoria única para una nueva ejecución. |
| `day_progression_mode` | Progresión secuencial o aleatoria sin repetición. |
| `day_order` | ID de días persistentes separados por comas en el orden exacto en que se prepararán. |
| `day_position` | Posición del día preparado en `day_order`. |
| `updated_at` | Hora de escritura local para la comparación de operadores. |

La escritura de estado se acepta solo cuando el marcador de esquema, la familia preparada y el día preparado se leen correctamente. Un archivo actual ilegible puede recurrir a `rotation_state.last_good.txt`; el marcador de sandbox seleccionado aún determina lo que cargó el juego para el proceso actual.

<a id="runtime-status-json"></a>
## Estado de ejecución JSON

`runtime/current/randomday_status.json` usa `status_schema=randomday_runtime_status_v2`. Sus principales grupos de campos son:

| Grupo | Campos e interpretación |
|---|---|
| Identidad | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Selección | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Activo | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Preparado | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Resúmenes humanos | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Prueba de escritura | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Prueba de adaptador | `adapter_status`, `adapter_results`; cada registro de adaptador contiene evidencia de compatibilidad, transaction/rollback estado, recuento de archivos modificados y referencias de destino redactadas |
| Límites | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Diagnóstico | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Los valores activos desconocidos significan que el entorno limitado actual no contenía un marcador RandomDay legible. No deben sustituirse por valores preparados. Rutas de adaptador fuera del `runtime/` se reducen a una referencia de nombre base y las cadenas de diagnóstico censuran las rutas absolutas detectadas.

<a id="public-status-json"></a>
## Estado público JSON

`web_export/today.json` usa `schema_version=2` y `status_schema=randomday_public_status_v2`. Repite los datos de identidad, active/prepared, selección, transacción, adaptador y límite de reinicio que necesita un operador. También incluye:

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order` actual y el `prepared_day_position`;
- `family_selection_mode`, legado `family_locked_until_day_17` actual y el `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families` y su recuento;
- perfil de encuentro preparado, nivel, tema y probabilidad de encuentro mixto;
- habilitación de alcance mundial, configuración de mundo abierto, política de mundo desconocido y solo un recuento de patrones de mundo excluidos configurados;
- mensaje preparado y vistas previas de mensajes combinados;
- `selected_at`, `sandbox_target`, `manual_copy_required` y hash preparado.

`profile_status` es uno de `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence`, o `write_failed_or_rollback`. `prepared_ready=true` todavía no significa activo; se requiere el marcador de inicio posterior.

<a id="dictionary-and-translation-output"></a>
## Diccionario y salida de traducción

`runtime/current/randomday_dictionary.json` usa `schema=randomday_runtime_dictionary_v2` e identifica la versión del diccionario `randomday_dictionary_v2`. Describe modos de paquete, estados de selección, dominios de presión, etiquetas de configuración, valores sin procesar y significados en lenguaje sencillo. Los valores desconocidos permanecen explícitos en lugar de convertirse en una descripción segura.

`player_message_preview.txt`, `today.json`, `today.html` y los avisos dentro del juego son vistas derivadas del mismo módulo de traducción. El perfil subyacente y en bruto `SandboxSettings.ini` siguen siendo la fuente de la verdad.

<a id="failure-and-recovery-rules"></a>
## Reglas de fallo y recuperación

1. Una escritura o validación pendiente fallida nunca se convierte en un objetivo de producción.
2. Una promoción fallida o una lectura de producción desencadena la restauración del original retenido; una copia de seguridad de la operación es el recurso alternativo cuando falla la restauración.
3. Un archivo de reversión retenido o `rollback_failed` requiere revisión manual mientras el juego o el servidor está detenido.
4. Una escritura exitosa en la zona de pruebas más una confirmación fallida del estado de rotación se degradan, no están listas; se omiten los adaptadores y los mensajes de perfil preparado.
5. Un error de exportación no cambia el resultado de la zona de pruebas, pero elimina una fuente de prueba de conveniencia. Utilice registros de transacciones, estado y lectura de archivos.
6. Las salidas en tiempo de ejecución son datos operativos locales. No los agregue a una versión ZIP ni los publique como ejemplos sin una revisión de privacidad por separado.
