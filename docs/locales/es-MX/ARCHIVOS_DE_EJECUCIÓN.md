<a id="locate-runtime-files-and-status"></a>
# Localizar archivos de tiempo de ejecución y estado

> **Fuente canónica en inglés:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Este es el inventario de rutas canónicas utilizado por los operadores y la trazabilidad de la fuente. Responde dónde está un archivo, quién lo escribe, cuándo cambia, cuánto tiempo permanece y qué función de recuperación cumple. El [referencia de salida en tiempo de ejecución](SALIDAS_DE_EJECUCI%C3%93N.md) posee esquemas, significados de campos, estados vacíos e interpretación de valores de máquina.

Todas las rutas de esta guía son relativas a la carpeta `RandomDay/` instalada, a menos que se indique lo contrario. Las salidas en tiempo de ejecución se crean después de la instalación; están excluidos de los ZIP de lanzamiento.

<a id="operator-file-map"></a>
## Mapa de archivos del operador

| Ruta | Productor y activador | Actualización y retención | Significado y recuperación |
|---|---|---|---|
| Primario configurado `SandboxSettings.ini` | `ax_sandbox/writer.lua` después de la serialización y validación del perfil en modo dedicado. | Reemplazado transaccionalmente; el objetivo está configurado por el operador o derivado de la instalación. | Perfil completo para el próximo inicio. La sesión en ejecución mantiene sus reglas ya cargadas. |
| Espejo configurado `SandboxSettings.ini` | Escritor de espacio aislado después de un resultado primario exitoso cuando un espejo explícito es elegible. | Reemplazo transaccional de mejor esfuerzo. | Solo copia secundaria; un espejo no reemplaza la configuración correcta de la ruta principal. |
| Destino del adaptador reconocido | `ax_external/bridge.lua` después de completar la coincidencia de diseño y firma. | Las asignaciones existentes se cambian transaccionalmente con copias de seguridad únicas. | Configuración de mod instalada por separado; inspeccionar el resultado del adaptador de seis estados independientemente del sandbox primario. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` después de una transacción exitosa del sandbox. | Reemplazado transaccionalmente después de cada preparación aceptada. | Contabilidad de colas. Si es ilegible, RandomDay prueba el último estado bueno. |
| `runtime/rotation_state.last_good.txt` | Copia de seguridad de transacciones de calendario. | Se reemplaza cuando se actualiza el estado actual. | Estado legible anterior; conservarlo durante el diagnóstico y las actualizaciones. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` después del éxito, persistencia degradada o error de escritura. | Reemplazado transaccionalmente en cada paso de estado. | Estructura canónica active/prepared, transacción, traducción y resumen del adaptador. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` al lado del estado. | Reemplazado transaccionalmente. | Esquema `randomday_runtime_dictionary_v2`: términos, configuración de traducciones, dominios, modos de paquete y estados de selección. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` al lado del estado. | Reemplazado transaccionalmente. | Vista previa exacta del mensaje delimitado para revisión del operador; no prueba la representación del cliente. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` después de un resultado de sandbox primario verificado. | Reemplazado transaccionalmente. | Última zona de pruebas aceptada como buena conocida. Úselo solo con su manifiesto. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua` después de que la instantánea de la zona de pruebas se realice correctamente. | Se reemplaza transaccionalmente como un par con la instantánea de la zona de pruebas. | Versión, ID de perfil, nombre, día, hash de contenido y hora de escritura para el último archivo bueno. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Escritor principal o espejo antes de la mutación. | Directorio de operación único; RandomDay no lo poda. | Bytes de preescritura verificados. Los operadores poseen retención después de la revisión. |
| `runtime/backups/external_<operation>/...` | Puente de adaptador antes de cualquier mutación del adaptador. | Directorio de operación único; sin poda automática. | Una copia verificada de cada destino de adaptador planificado. |
| `runtime/pending/` | Creado mediante la configuración del directorio de tiempo de ejecución. | Reservado; Las transacciones primarias actuales utilizan sidecars hermanos. | No trate un directorio vacío como prueba de preparación. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Escritor de Sandbox en `singleplayer_manual` modo. | Se reemplaza transaccionalmente cuando se ejecuta el paquete manual. | Archivo completo para que el operador lo inspeccione y copie manualmente en un mundo detenido. |
| `web_export/today.json` | `ax_web/export.lua` después de cada resultado de preparación. | Reemplazado transaccionalmente. | Resultado compacto legible por máquina active/prepared y writer/adapter. |
| `web_export/today.html` | `ax_web/export.lua` después de un pase de exportación exitoso. | Reemplazado transaccionalmente. | Vista humana derivada de la misma transición; no prueba independiente. |
| `UE4SS.log` | UE4SS y `ax_core/log.lua`. | Administrado por UE4SS, no RandomDay. | Líneas de inicio, perfil seleccionado, escritura, adaptador, mensaje, estado y falla con el prefijo `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Reconocer estados de archivos vacíos y fallidos

- Es posible que falte un destino principal o espejo. Un perfil no válido, escritura pendiente, promoción o error de lectura de producción no está listo. Una falla en el espejo no cambia el resultado principal aceptado.
- `runtime/singleplayer_manual/SandboxSettings.ini` puede crearse en la primera ejecución manual. Un error de generación permanece visible en el estado y en la salida del registro.
- Un `rotation_state.txt` ilegible puede volver al último estado bueno o a un arranque basado en marcadores. Una confirmación de estado fallida produce `degraded_state_persistence`.
- `runtime/last_good/` puede estar ausente antes del primer objetivo verificado. Si falla la actualización del manifiesto emparejado, RandomDay restaura el par aceptado anteriormente.
- `runtime/backups/mirror_<operation>/` es la ubicación de copia de seguridad específica del espejo. No existe ningún archivo de copia de seguridad principal o espejo cuando ese destino no existía antes de la transacción.
- La mutación del adaptador no comienza cuando falla la creación o lectura de la copia de seguridad.
- Los archivos de estado actual, diccionario o vista previa pueden estar ausentes cuando la salida del estado del tiempo de ejecución no está disponible o está incompleta.
- Un resultado `export_failed` puede dejar un archivo anterior `today.json` en su lugar. Una falla en la zona de pruebas se actualiza JSON pero no crea un nuevo error HTML página; comparar marcas de tiempo con `UE4SS.log`.
- Un sidecar pendiente y obsoleto se elimina antes de un nuevo intento; El error de limpieza detiene la transacción. Si existen tanto el objetivo de producción como el sidecar de reversión, RandomDay conserva los bytes de recuperación para su revisión.
- No `[RandomDay]` línea de inicio en `UE4SS.log` significa que no se demostró la carga del mod.

<a id="transaction-sidecars"></a>
## Sidecars de transacciones

El escritor transaccional puede crear archivos hermanos junto a un objetivo:

| Patrón | Estado | Acción del operador |
|---|---|---|
| `<target>.randomday.pending` | Bytes candidatos antes de la promoción. | Normalmente eliminado por la promoción. Consérvelo si se informa una falla de limpieza pendiente o problemas de lectura. |
| `<target>.randomday.rollback` | Bytes originales retenidos durante el reemplazo. | Normalmente se restaura en caso de error o se elimina después de verificar el éxito. No lo elimines cuando el objetivo también esté presente; esa combinación requiere revisión. |
| `<target>.randomday.restore.pending` | Bytes candidatos durante la restauración del adaptador. | Conservar con la copia de seguridad del adaptador si falla la restauración. |
| `<target>.randomday.restore.rollback` | Bytes de recuperación retenidos durante la restauración del adaptador. | Conserve y detenga el servicio afectado si la limpieza o restauración no está verificada. |

Estos archivos pueden existir junto al entorno limitado dedicado o en un destino de adaptador instalado por separado. Su presencia es un estado de transacción, no una prueba de que el nuevo perfil se activó.

<a id="interpret-file-contents"></a>
## Interpretar el contenido del archivo

Utilice [Estado de ejecución y referencia de salida](SALIDAS_DE_EJECUCI%C3%93N.md) para los esquemas `rotation_state.txt`, `randomday_status.json` actual y el `today.json` completos. Esa referencia también posee estados vacíos, significados de fallas, resultados de diccionario y la regla de que el estado preparado no es un estado activo. Utilice la [referencia de estado y error](REFERENCIA_DE_ESTADO_Y_ERROR.md) cuando un valor exacto de la máquina requiera una acción del operador.

<a id="rotation-state-fields"></a>
### Campos de estado de rotación

Consulte el [esquema de estado de rotación canónico](SALIDAS_DE_EJECUCI%C3%93N.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Esquema de estado actual

Consulte el [estado de tiempo de ejecución JSON esquema](SALIDAS_DE_EJECUCI%C3%93N.md#runtime-status-json).

<a id="web-export-schema"></a>
### Esquema de exportación web

Consulte el [estado público JSON esquema](SALIDAS_DE_EJECUCI%C3%93N.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Conservar pruebas de recuperación

RandomDay sobrescribe el estado actual, el estado actual, el último estado correcto y las vistas web. Crea directorios de respaldo de operaciones únicos y no elimina los antiguos. Elija una política de retención fuera del proceso en ejecución, pero nunca elimine la evidencia de recuperación más reciente mientras no se haya resuelto un problema de escritura, lectura, estado o reversión.
