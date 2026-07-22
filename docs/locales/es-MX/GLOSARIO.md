<a id="glossary"></a>
# Glosario

> **Fuente canónica en inglés:** [GLOSSARY.md](../../GLOSSARY.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Este es el vocabulario canónico para RandomDay documentación. Los procedimientos se vinculan a estas definiciones en lugar de redefinir el mismo estado en varias guías. Las reglas de campo específicas del esquema permanecen en [Salidas del tiempo de ejecución](SALIDAS_DE_EJECUCI%C3%93N.md).

| Término | Significado simple | Significado técnico exacto |
|---|---|---|
| Perfil activo | Las reglas que utiliza la sesión actual. | El family/day perfil identificado por el RandomDay marcador leído desde el sandbox al inicio del proceso. |
| Perfil preparado | Reglas listas para una sesión posterior. | El perfil completo family/day cuyos bytes de destino pasaron la validación y la lectura y cuyo estado de rotación se confirmó. No está activo antes de reiniciar la lectura. |
| Restaurado | La preparación falló y los bytes verificados anteriormente se devolvieron. | La transacción fallida informa una reversión y lectura exitosas de la copia de recuperación original o verificada retenida. |
| Cola de siguiente reinicio | Una opción preparada retenida para el siguiente inicio. | `next_reboot_queue` selecciona una vez por proceso y reutiliza esa elección de arranque durante la supervisión. |
| Bootstrap | La primera preparación cuando no existe ningún marcador activo. | La selección del primer día configurado o aleatorio de una familia elegible `cycle.bootstrap_day` es solo una alternativa de compatibilidad. |
| Familia | Una progresión de estilo de juego de 17 días. | Una entrada de registro y un módulo familiar que produce exactamente 17 perfiles completos. |
| Rotación | Un recorrido por familias elegibles. | Estado identificado por `rotation_id`, con disponibles, restantes y completados listas de familias. |
| Ejecutar | Una familia en los ID de 17 días. | Una secuencia vinculada a la familia identificada por `run_id`; la familia permanece bloqueada hasta que se completa cada posición de orden diaria persistente. |
| Modo de sesión | Cómo usa el operador este paquete. | `persistent_dedicated`, `temporary_dedicated`, o `singleplayer_lan`; el modo paquete aún controla los límites del sistema de archivos. |
| Orden diario | El orden exacto utilizado por una familia. | Una permutación persistente de 17 números. El modo secuencial finaliza desde el día de inicio; el modo aleatorio se mezcla una vez sin repetición. |
| Marcador | Identidad almacenada en el archivo sandbox. | `RANDOMDAY_*` campos representados con el perfil completo y leídos en el siguiente inicio del proceso. |
| Preparado listo | La escritura y la confirmación de estado tuvo éxito. | `prepared_ready=true` requiere un resultado exitoso de la zona de pruebas y ningún error de confirmación de estado. No prueba la activación. |
| Ya actual | El objetivo ya tiene los bytes deseados. | El hash del perfil renderizado coincide con el objetivo, por lo que RandomDay verifica last-good/mirror funciona sin reescribir el primario. |
| Persistencia del estado degradado | Los bytes del sandbox tuvieron éxito pero la contabilidad de rotación no. | `profile_status=degraded_state_persistence`; los adaptadores y los mensajes de perfil preparado se omiten. |
| Archivo pendiente | Bytes candidatos aún no promocionados. | `<target>.randomday.pending`, escritos, leídos y validados antes del reemplazo. |
| Archivo de reversión | El original retenido durante el reemplazo. | `<target>.randomday.rollback`, utilizado para restaurar la producción en caso de falla de promoción o validación. |
| Copia de seguridad de operación | Una copia duradera hecha antes de la mutación. | Un archivo verificado en `runtime/backups/` para la transacción principal, reflejada o adaptadora. |
| Último estado bueno conocido | El último sandbox aceptado para recuperación. | `runtime/last_good/SandboxSettings.ini` más `manifest.lua`; el par registra la identidad del perfil y el hash. |
| Espejo | Segundo destino de zona de pruebas opcional. | Un destino explícitamente configurado o derivado de un nombre mundial escrito después del principal a través de su propia transacción. |
| Modo de paquete | Límite de instalación seleccionado por la versión activo. | `dedicated_server` o `singleplayer_manual` desde `.randomday_mode`. |
| Modo de copia manual | Singleplayer/LAN generación sin descubrimiento de guardado. | `singleplayer_manual` escribe solo dentro `runtime/singleplayer_manual/` y deshabilita adaptadores y espejos. |
| Adaptador | RandomDay-owned asignación para otro mod instalado. | Un plan de transacciones controlado por firma que actualiza las asignaciones existentes solo después de realizar comprobaciones de compatibilidad y copia de seguridad. |
| Diseño reconocido | Forma exacta del archivo de adaptador aceptada para una escritura. | Todas las claves de firma y archivos de destino requeridos están presentes; un nombre de archivo por sí solo es insuficiente. |
| `not_installed` | No se encontró el objetivo opcional. | Resultado del adaptador seguro sin mutación. |
| `skipped_incompatible` | Existe un objetivo pero su forma no es compatible. | Resultado del adaptador seguro sin mutación porque la firma completa no coincidía. |
| `failed_rolled_back` | Un cambio falló y los bytes anteriores están intactos. | La transacción del adaptador falló antes de que se restaurara y verificara la mutación o todos los archivos afectados. |
| `rollback_failed` | No se pudo verificar la recuperación automática. | Estado del adaptador de parada completa que requiere recuperación manual a partir de la copia de seguridad registrada. |
| Diccionario | Mapeo de valores brutos a explicaciones públicas. | `randomday_dictionary_v2`, generado a partir de `dictionary.lua` e incluido en la salida del estado del tiempo de ejecución. |
| Traducción | Vista humana derivada de valores de perfil sin procesar. | Puntuaciones de dominio delimitadas, hechos, resúmenes y mensajes generados por `translation.lua`; los valores brutos siguen siendo autoritativos. |
| Estado público | Resumen del operador desinfectado y legible por máquina. | `web_export/today.json` usando `randomday_public_status_v2`. |
| Estado de tiempo de ejecución | Instantánea local detallada legible por máquina. | `runtime/current/randomday_status.json` usando `randomday_runtime_status_v2`. |
