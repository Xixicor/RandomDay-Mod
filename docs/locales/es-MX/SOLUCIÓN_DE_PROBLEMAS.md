<a id="troubleshooting"></a>
# Solución de problemas

> **Fuente canónica en inglés:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Deténgase en la primera verificación fallida. Conserve el entorno de pruebas actual, `runtime/`, `web_export/` y el `UE4SS.log` relevante antes de intentar la recuperación.

<a id="try-these-common-fixes-first"></a>
## Pruebe estas soluciones comunes primero

1. **RandomDay nunca aparece:** confirma el `RandomDay` esté directamente dentro de `ue4ss/Mods`, habilite `RandomDay : 1` en `mods.txt` y comience una vez.
2. **La sesión actual mantuvo sus reglas anteriores:** esto es normal. RandomDay prepara el siguiente perfil; el juego lo carga en un inicio posterior.
3. **El mismo perfil sigue apareciendo:** es posible que un panel del servidor esté reemplazando `SandboxSettings.ini`. Utilice un archivo sandbox autorizado y compare los nombres activos y preparados en `web_export/today.html`.
4. **Un mod opcional no seguía el perfil:** abrir [Modificaciones opcionales compatibles](ADAPTADORES_COMPATIBLES.md). Un mod opcional faltante, deshabilitado o no reconocido no se modifica.
5. **RandomDay informa un error de escritura o restauración:** deténgase antes de otro reinicio, conserve `runtime/backups/` y siga la sección de recuperación denominada a continuación.

Si esas cinco comprobaciones no identifican el problema, continúe con el árbol de decisión detallado.

<a id="choose-the-first-failed-stage"></a>
## Elija la primera etapa fallida

Utilice la primera fila que coincida con lo que realmente puede probar. No comience con la explicación más severa y no combine fallas de salida no relacionadas en un solo diagnóstico.

| Lo que puede observar | Verifique primero | Continúe con | Resultado esperado |
|---|---|---|---|
| No `[RandomDay]` la línea de inicio existe en `UE4SS.log`. | Instalar raíz, marcadores de paquete, `mods.txt` actual y el UE4SS inicio de Lua. | [Restaurar un RandomDay inicio](#restore-a-missing-randomday-start) | Una línea de inicio nombra el modo de lanzamiento y paquete, o el error está limitado a la carga. |
| RandomDay cargado, pero ningún perfil quedó listo. | El primer error de inicio, configuración, destino, transacción o estado. | [Recuperación de una preparación fallida](#recover-from-failed-preparation), luego [referencia de estado y error](REFERENCIA_DE_ESTADO_Y_ERROR.md) | Un código exacto identifica la siguiente acción segura. |
| Existe un perfil preparado, pero las reglas en ejecución no. cambiar. | ID activas y preparadas en `today.json` o `today.html`. | [Confirme el límite de reinicio](#confirm-the-restart-boundary) | La sesión actual permanece activa; el perfil preparado espera un inicio posterior. |
| El día 1 u otro día se repite después de los reinicios. | Marcadores de zona de pruebas antes del panel inicio, después del inicio del panel y después de la preparación. | [Detenga la preparación repetida](#stop-repeated-preparation) | Se identifica el escritor autorizado o el punto de sobrescritura. |
| El entorno sandbox está en buen estado, pero se omitió o falló una modificación opcional. | El resultado del adaptador individual y la evidencia de compatibilidad. | [Diagnosticar un adaptador omitido](#diagnose-a-skipped-adapter) o [Recuperar un error de reversión del adaptador](#recover-an-adapter-rollback-failure) | El estado del adaptador se decide independientemente del entorno sandbox salud. |
| El archivo manual singleplayer/LAN está ausente. | Modo de paquete y carpeta de salida limitada. | [Generar un singleplayer/LAN archivo](#generate-a-missing-singleplayerlan-file) | El archivo se genera dentro RandomDay sin descubrir un guardado personal. |
| Solo falta el mensaje orientado al reproductor o no se ajusta correctamente. | Registro de paso de mensajes, vista previa del origen y límites documentados. | [Diagnosticar un problema de mensaje](#diagnose-a-message-problem) | La presentación se prueba sin ser tratada como prueba de perfil. |

<a id="follow-the-safe-diagnostic-order"></a>
### Siga el orden de diagnóstico seguro

1. Conserve la evidencia actual antes de cambiar los archivos.
2. Demuestre si RandomDay cargado.
3. Encuentre la primera etapa que no alcanzó su resultado documentado.
4. Copie el estado exacto o el valor de error de la salida del tiempo de ejecución.
5. Utilice la fila coincidente de la tabla a continuación para obtener una respuesta segura.
6. Vuelva a leer el objetivo y el estado de rotación antes de otro inicio.

Si ninguna fila coincide, use [Referencia de salida y estado de tiempo de ejecución](SALIDAS_DE_EJECUCI%C3%93N.md) para identificar el productor y el significado del campo antes de cambiar la configuración.

<a id="restore-a-missing-randomday-start"></a>
## Restaurar un RandomDay inicio

**Causa limitada más probable:** diseño de extracción incorrecto, mod deshabilitado, modo de paquete incorrecto o UE4SS no cargó el punto de entrada de Lua.

**Verificación exacta:** confirmar `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version` actual y el `RandomDay/Scripts/main.lua`; confirmar `RandomDay : 1` en `mods.txt`; busque `UE4SS.log` para `[RandomDay]`.

**Esperado resultado:** una línea de inicio nombra la identidad de lanzamiento y el modo del paquete.

**Siguiente acción segura:** corrija el diseño o la habilitación mientras está detenido, luego comience una vez.

**No infiera:** no RandomDay no prueba un error en el juego o en el perfil.

<a id="confirm-the-restart-boundary"></a>
## Confirme el límite de reinicio

**Causa limitada más probable:** normal comportamiento del siguiente reinicio.

**Verificación exacta:** compare el perfil activo y preparado family/day en `web_export/today.json` o `today.html`.

**Esperado resultado:** el perfil preparado difiere del perfil activo o está explícitamente separado de él.

**Siguiente acción segura:** reinicie solo cuando esté listo para activarlo, luego verifique el marcador activo.

**No infiera:** un perfil preparado no está activo antes de la lectura posterior al reinicio.

<a id="stop-repeated-preparation"></a>
## Detenga la preparación repetida

**Causa limitada más probable:** el activo RandomDay falta el marcador porque se reescribió un panel del servidor u otra herramienta `SandboxSettings.ini` durante el inicio.

**Verificación exacta:** compara el archivo sandbox y su RandomDay inmediatamente antes del inicio, después de que se inicie el panel y después RandomDay prepara el archivo.

**Esperado resultado:** el archivo presente en el siguiente arranque conserva el marcador preparado.

**Siguiente acción segura:** configure una fuente autorizada de sandbox y deshabilite la reescritura del panel en conflicto.

**No infiera:** repetido El día 1 no prueba que el selector de familia sea aleatorio incorrectamente.

<a id="recover-from-failed-preparation"></a>
## Recuperación de una preparación fallida

**Causa limitada más probable:** error pendiente de escritura, copia de seguridad, promoción, lectura de producción, validación o reversión.

**Verificación exacta:** lea el primero `[RandomDay] [ERROR]` línea y conserve la copia de seguridad de la operación nombrada. Inspeccione `runtime/last_good/manifest.lua` antes de usar su archivo sandbox.

**Esperado resultado:** se verifica que el archivo anterior está restaurado o el resultado informa claramente un error de restauración.

**Siguiente acción segura:** mantenga el servidor detenido y siga [recuperación manual](OPERACIONES.md#manual-recovery).

**No infiera:** la existencia de un archivo de respaldo por sí sola no demuestra que coincida con el estado del mundo activo previsto.

<a id="diagnose-a-skipped-adapter"></a>
## Diagnosticar un adaptador omitido

**Causa limitada más probable:** el mod está ausente o el archivo no coincide con una firma admitida.

**Verificación exacta:** lea el resultado del adaptador y compare la versión y el diseño instalados con [Adaptadores Mod compatibles](ADAPTADORES_COMPATIBLES.md).

**Esperado resultado:** `not_installed` para un objetivo ausente o `skipped_incompatible` para un objetivo no reconocido.

**Siguiente acción segura:** deje el archivo sin cambios, desactive ese adaptador o instale una versión compatible exacta de su original autor.

**No infiera:** un nombre de archivo similar o una versión más reciente no es prueba de compatibilidad.

<a id="recover-an-adapter-rollback-failure"></a>
## Recuperar un error de reversión del adaptador

**Causa limitada más probable:** no se pudo verificar ni el intento de escritura ni la restauración automática.

**Verificación exacta:** preservar el objetivo, hermano pending/rollback, el estado del adaptador y lo más nuevo copia de seguridad del adaptador en `runtime/backups/`.

**Esperado resultado:** el resultado es `rollback_failed`, no `applied`.

**Siguiente acción segura:** detener al afectado mod/server afectado y restaure la copia de seguridad verificada manualmente antes de otro lanzamiento.

**No infiera:** RandomDay's el resultado de la zona de pruebas principal no prueba que un objetivo de adaptador separado esté en buen estado.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Generar un singleplayer/LAN archivo

**Causa limitada más probable:** se instaló el paquete dedicado, el marcador de modo no es válido o RandomDay no se cargó.

**Verificación exacta:** `.randomday_mode` debe contener `singleplayer_manual`; luego confirme el RandomDay línea de inicio e inspección `runtime/singleplayer_manual/SandboxSettings.ini`.

**Esperado resultado:** el archivo existe dentro del RandomDay carpeta únicamente.

**Siguiente acción segura:** instale el paquete correcto limpiamente y comience una vez.

**No infiera:** RandomDay no buscará ni escribirá el mundo objetivo en su nombre.

<a id="diagnose-a-message-problem"></a>
## Diagnosticar un problema de mensaje

**Causa limitada más probable:** no había ningún personaje de jugador válido disponible en el pase programado, el transporte de advertencia no estaba disponible o la pantalla del cliente envolvió el texto de manera diferente.

**Verificación exacta:** inspeccionar el `[RandomDay]` registro de mensajes y compare el mensaje de origen con el límite de longitud documentado.

**Esperado resultado:** el tiempo de ejecución informa si se ejecutó un pase de mensaje; la validación de la fuente informa la longitud máxima.

**Siguiente acción segura:** verifique la resolución prevista del cliente. Mantenga la verificación del perfil y del juego separada del resultado del mensaje.

**No infiera:** un mensaje visible no demuestra que se aplicó el perfil de zona de pruebas y un mensaje faltante no demuestra que la preparación haya fallado.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Cuatro opciones de todo el perfil regresaron a los valores enviados

**Causa limitada más probable:** solo el `SandboxSettings.ini` editado o `server.lua` se modificó mientras el mismo proceso Lua aún se estaba ejecutando.

**Verificación exacta:** generado detenga el juego o el servidor dedicado, abra `RandomDay/Scripts/ax_config/server.lua` y confirme que el bloque `sandbox.profile_overrides` guardado contiene los cuatro valores deseados.

**Esperado resultado:** después del siguiente inicio, cada family/day recién preparado contiene los valores elegidos. Las rotaciones de perfiles posteriores y los inicios de servidores siguen utilizando el mismo bloque.

**Siguiente acción segura:** recién preparado corrija el bloquee, comience una vez e inspeccione el perfil preparado. No parchee solo el archivo sandbox generado porque una preparación posterior lo reemplazará.

<a id="look-up-an-exact-status"></a>
## Busque un estado exacto

Después de que el árbol de decisión identifique la etapa fallida, copie el valor exacto `status`, `transaction_status`, `rollback_status`, o `error` valor de la exportación en tiempo de ejecución. Utilice [referencia de estado y error](REFERENCIA_DE_ESTADO_Y_ERROR.md) para conocer su significado y una respuesta segura del operador. Una redacción similar en un panel o consola no sustituye el valor exportado.

Las fallas del entorno de prueba exclusivas del colaborador pertenecen a [verificaciones de validación de versión](VALIDACI%C3%93N_DE_LANZAMIENTO.md#avoid-validation-environment-pitfalls), no a la ruta de recuperación del operador.
