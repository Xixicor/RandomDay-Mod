<a id="status-and-error-reference"></a>
# Referencia de estado y error

> **Fuente canónica en inglés:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Utilice el `status`, `transaction_status`, `rollback_status` actual y el `error` valores de la exportación en tiempo de ejecución. Una redacción similar en un panel o consola no sustituye a esos campos.

Esta sección es la referencia de búsqueda completa. El árbol de decisiones anterior elige la categoría relevante; estas tablas preservan los valores exactos de la máquina y las respuestas seguras del operador.

<a id="normal-or-informational-states"></a>
## Estados normales o informativos

| Estado | Significado | Respuesta del operador |
|---|---|---|
| `prepared_for_next_reboot` | Se escribió un perfil validado para el siguiente inicio. | Sin acción; la sesión actual no ha cambiado. |
| `next_reboot_already_prepared` | El siguiente perfil previsto ya coincide con el objetivo. | Sin acción; no fuerce otra rotación. |
| `already_current` / `unchanged` | El destino ya contiene los bytes deseados. | Sin acción. |
| `applied` | La lectura de escritura y producción pasó. | Verifique la active/prepared distinción después del siguiente arranque. |
| `bootstrap_prepare_first_family_start_day` | No existía ningún estado de rotación anterior, por lo que se preparó el primer día configurado. | Esperado en el primer uso. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Se recuperó el estado almacenado y se reescribió el mismo perfil preparado. | Verifique el día recuperado; no se produjo ninguna nueva elección aleatoria. |
| `supervision_reconfirm_prepared_profile_no_advance` | Un pase de supervisión confirmó la preparación existente. | Esperado; la cola no avanzó dos veces. |
| `external_mods_disabled` | El procesamiento del adaptador opcional está deshabilitado. | No se realiza ninguna acción a menos que los adaptadores fueran los previstos. |
| `external_mods_processed` | Todos los planes de adaptadores habilitados alcanzaron un resultado terminal. | Revise cada fila de adaptador. |

<a id="startup-configuration-errors"></a>
## Errores de configuración de inicio

Estos mensajes detienen el inicio antes de que RandomDay escriba un perfil. Corrija la configuración nombrada o el marcador de paquete; no omita la rama de validación.

| Texto de error | Significado | Respuesta segura |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` falta, está mal formada o proviene del paquete incorrecto. | Vuelva a instalar un paquete completo en una carpeta de preparación limpia y conserve el marcador de modo deseado. |
| `invalid experience.mode` | `experience.mode` no es uno de los valores documentados. | Utilice `auto`, `persistent_dedicated`, `temporary_dedicated`, o `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | A El paquete de copia manual se configuró como un servidor dedicado. | Restaurar `auto` o `singleplayer_lan`; no lo apunte a un mundo externo automáticamente. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Se configuró un paquete dedicado para el flujo de trabajo de copia manual. | Utilice `auto`, `persistent_dedicated`, o `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | El selector de día inicial no es válido. | Utilice exactamente `configured` o `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | El selector de orden de día no es válido. | Utilice exactamente `sequential` o `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | El día de inicio configurado es fraccionario o está fuera del ciclo. | Utilice un número entero del 1 al `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | Se deshabilitó la copia de seguridad o la última restauración buena. | Restaurar ambos bloqueos de seguridad; RandomDay rechaza intencionalmente escrituras no seguras. |
| `external adapter transaction safety locks must remain true` | Se deshabilitaron los parches del adaptador o la protección de respaldo. | Restaura ambos bloqueos de seguridad del adaptador o deshabilita los adaptadores como grupo. |
| `paths.world_name must be one folder name` | El nombre mundial configurado contiene un separador o carácter inseguro. | Ingresa solo el nombre exacto de la carpeta, usando letras, números, espacios, guiones bajos o guiones. |
| `required runtime directory unavailable` | No se pudo crear ni confirmar un directorio de salida mod-local requerido. | Verifique solo el directorio RandomDay nombrado y su permiso de escritura. |

<a id="profile-wide-configuration-errors"></a>
## Errores de configuración en todo el perfil

Estos errores detienen la construcción del perfil antes de una escritura en el sandbox.

| Texto de error | Significado | Respuesta segura |
|---|---|---|
| `sandbox.profile_overrides must be a table` | Las cuatro opciones de todo el perfil fueron reemplazadas por otro tipo de Lua. | Restaurar la tabla documentada en `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | La tabla contiene una configuración que no es una de las cuatro claves admitidas. | Elimine la clave nombrada y use family/profile fuentes para otras configuraciones de sandbox. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` o `AllowIronMode` no es `true` o `false`. | Utilice un booleano Lua sin comillas. |
| `sandbox.profile_overrides.<key> must be integer` | Un valor de soporte no es un número entero. | Utilice un número entero. |
| `sandbox.profile_overrides.<key> outside supported range` | Un valor de soporte está fuera `0..1000`. | Elija un número entero de `0` hasta `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Reversión y estados intermedios

| Valor | Significado | Respuesta segura |
|---|---|---|
| `not_started` / `pending` | La transacción o el plan del adaptador no ha alcanzado un resultado terminal. | Espere solo el pase de inicio limitado actual; el estado persistente requiere investigación. |
| `not_needed` | No se requirió reversión. | Sin acción. |
| `original_held` | El objetivo original se movió a la posición de recuperación antes de la promoción. | No elimine el archivo de recuperación mientras la transacción esté incompleta. |
| `retained_after_success` | El nuevo objetivo se verificó, pero los datos de recuperación permanecen porque la limpieza no estaba disponible o se retuvo intencionalmente. | Verifique los bytes de producción antes de eliminar cualquier archivo de recuperación nombrado. |
| `discarded_after_success` | Se borraron los datos de reemplazo verificados y de reversión temporal. | Sin acción. |
| `rollback_failed` | No se pudo verificar el intento de restauración. | Mantenga el servidor detenido y use la última copia de seguridad de la operación verificada. |
| `skipped_state_persistence_failed` | Los bytes de la zona de pruebas estaban preparados, pero el estado de rotación no persistió, por lo que se omitieron los adaptadores y los mensajes del reproductor preparado. | Reparar el almacenamiento del estado del tiempo de ejecución; no vuelva a avanzar ni avance la cola manualmente. |
| `failed` | Una fila de resumen representa una falla del terminal cuya causa específica está en sus `error` o campos de transacción. | Siga el primer código específico; no solucione el problema `failed` solo. |

<a id="transaction-failures"></a>
## Errores de transacción

| Estado | Significado | Respuesta segura |
|---|---|---|
| `invalid_input` | La solicitud de reemplazo no era un texto válido o carecía de un destino válido. | Configuración correcta; no vuelva a intentarlo sin cambios. |
| `stale_pending_cleanup_failed` | No se pudo eliminar un archivo pendiente antiguo. | Detenga y conserve el archivo pendiente antes de la limpieza manual. |
| `stale_rollback_requires_review` | Los datos de recuperación existen junto a un destino actual y no se pueden descartar de forma segura. | Compare los bytes de destino y de reversión antes de elegir cualquiera de los dos. |
| `interrupted_transaction_restore_failed` | La recuperación después de un reemplazo interrumpido no pudo restaurar el destino. | Mantenga el servidor detenido y restaure una copia de seguridad verificada. |
| `interrupted_transaction_cleanup_failed` | El destino se recuperó pero los datos de transacciones obsoletas no se pudieron borrar. | Verifique los bytes del destino y luego elimine solo el sidecar obsoleto nombrado. |
| `pending_write_failed` | No se pudo escribir el candidato. | Compruebe el directorio de destino estrecho y el espacio libre. |
| `pending_readback_failed` / `pending_readback_mismatch` | Los bytes del candidato no se pudieron leer o difirieron después de la escritura. | No promocionar el archivo pendiente. |
| `pending_validation_failed` | El candidato falló schema/profile validación antes de la promoción. | Corregir la clave o regla reportada; no omita la validación. |
| `operation_backup_failed` / `backup_failed` | No se creó una copia de seguridad previa a la escritura verificada. | Detener; no se debe confiar en ningún reemplazo de destino. |
| `original_preserved_move_failed` | El destino original no se pudo mover a la posición de recuperación. | Conserve todos los archivos de transacciones y recupérelos manualmente. |
| `promotion_failed` | El candidato pendiente no pudo convertirse en el destino de producción. | Compruebe si el original se restauró antes de volver a intentarlo. |
| `production_validation_failed` | Los bytes promovidos fallaron en la producción readback/validation. | Restaurar la copia de seguridad verificada e inspeccionar el escritor de destino. |
| `replacement_committed_recovery_cleanup_failed` | El reemplazo es válido, pero los datos de reversión no se pudieron borrar. | Trate el destino como comprometido; elimine solo los datos de recuperación obsoletos verificados. |
| `rollback_failed` | La restauración automática no se verificó. | Mantenga el servidor detenido y utilice la recuperación manual. |

<a id="target-profile-adapter-and-export-failures"></a>
## Errores de destino, perfil, adaptador y exportación

| Estado | Significado | Respuesta segura |
|---|---|---|
| `target_refused` | La ruta configurada está fuera del límite del modo permitido. | Corrija el camino; nunca debilite el límite. |
| `target_directory_failed` | El directorio de destino no se pudo crear ni confirmar. | Compruebe solo la existencia y los permisos de ese directorio. |
| `profile_validation_failed` | A un perfil le falta una clave, tiene la type/range incorrecta o viola una regla invariante restante. | Utilice el nombre clave, `sandbox.profile_overrides` y referencia de perfil para reparar la fuente. |
| `skipped_incompatible` | Existe un mod opcional pero no coincide con una firma de adaptador compatible. | Déjelo sin cambios o deshabilite ese adaptador. |
| `external_mods_partial` | Algunos adaptadores opcionales se completaron y otros estaban seguros skipped/failed. | Revise las filas del adaptador de forma independiente; el resultado de la zona de pruebas es independiente. |
| `external_adapter_failed` | Un adaptador requerido no se completó de manera segura. | Restaurar su copia de seguridad verificada antes de volver a intentarlo. |
| `degraded_state_persistence` | La preparación del espacio aislado se completó, pero la persistencia del estado de rotación no. | No asuma que el siguiente arranque puede avanzar correctamente; reparar el almacenamiento del estado. |
| `export_directory_failed` | `web_export/` no se pudo crear ni escribir. | La preparación del juego aún puede ser válida; repare los informes por separado. |

<a id="translation-and-message-validation-errors"></a>
## Errores de traducción y validación de mensajes

Estos son errores de diccionario o contrato de presentación. Se validan antes del lanzamiento y también pueden aparecer como una advertencia de estado de tiempo de ejecución limitado.

| Texto de error | Significado | Respuesta segura |
|---|---|---|
| `dictionary coverage mismatch` | El diccionario de perfiles no explica todas las configuraciones documentadas. | Agregue la entrada del diccionario que falta y vuelva a ejecutar el perfil generation/validation. |
| `missing profile setting` | Un perfil seleccionado carece de una configuración requerida por dictionary/schema. | Reparar la fuente de la familia de perfiles; no invente un valor predeterminado de tiempo de ejecución. |
| `empty explanation` | Existe una configuración pero no tiene operator/player explicación. | Agregue una explicación en lenguaje sencillo antes del lanzamiento. |
| `join line too wide` | Una línea de unión generada excede el límite de fuente de 42 caracteres. | Acorte la frase del diccionario; no confíe en el ajuste del cliente. |
| `join message too tall` | El resumen de unión generado excede las cuatro líneas. | Reduzca o cambie las prioridades del contenido del mensaje. |
