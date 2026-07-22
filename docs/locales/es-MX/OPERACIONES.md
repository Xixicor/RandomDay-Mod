<a id="operate-active-prepared-and-recovery-state"></a>
# Operación en estado activo, preparado y de recuperación

> **Fuente canónica en inglés:** [OPERATIONS.md](../../OPERATIONS.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


RandomDay cambia el archivo sandbox para un inicio futuro. No cambia las reglas ya cargadas en una sesión de Abiotic Factor en ejecución.

Esta página posee las decisiones del operador y los procedimientos de recuperación. Utilice [Glosario](GLOSARIO.md) para términos canónicos, [archivos de tiempo de ejecución](ARCHIVOS_DE_EJECUCI%C3%93N.md) para propiedad de ruta y [Salidas del tiempo de ejecución](SALIDAS_DE_EJECUCI%C3%93N.md) para esquemas exactos y significados de campos.

<a id="distinguish-active-and-prepared-state"></a>
## Distinga entre estado activo y preparado

Un perfil preparado no está activo hasta que un inicio posterior lea su marcador. No utilice el family/day preparado para describir la sesión actual.

Utilice `web_export/today.html` para un resumen legible y `web_export/today.json` para el estado exacto. Confirme el marcador activo, la identidad preparada, `prepared_ready`, `profile_status`, el resultado de la transacción, el resultado de la reversión y el resultado de la confirmación de estado antes de decidir reiniciar.

<a id="follow-the-normal-dedicated-server-sequence"></a>
## Siga la secuencia normal del servidor dedicado

| Antes | Acción | Después |
|---|---|---|
| No RandomDay marcador | Empiece con RandomDay habilitado. | La sesión actual mantiene sus reglas existentes; RandomDay crea y mantiene un pedido diario y luego prepara el primero configured/random posición. |
| Primera posición preparada | Reiniciar. | Ese día se activa; se prepara la siguiente posición almacenada en la misma familia. |
| Posición media activa | Reinicie después de revisar el perfil preparado. | El día preparado se activa y se prepara la siguiente posición almacenada. |
| Posición final activa | Reinicie después de revisar la siguiente familia. | La primera posición de otro pedido familiar elegible se activa. |

`selected_run` mantiene la familia configurada. `non_repeating_random_run` mantiene una familia elegida al azar durante las posiciones de 17 días y evita reutilizar una familia hasta que se agote la lista elegible. `rotation_run` sigue el orden familiar configurado. `cycle.day_progression_mode` controla el orden de los días independientemente de la selección de familia.

Una instalación nueva siempre necesita un proceso para preparar y un proceso posterior para activar. Esto es cierto para servidores persistentes, servidores temporales y manuales.singleplayer/LAN generación.

<a id="read-the-right-evidence"></a>
## Lea la evidencia correcta

Utilice la [mapa de archivos de tiempo de ejecución](ARCHIVOS_DE_EJECUCI%C3%93N.md) para ubicar el estado de rotación actual estado, últimos archivos buenos conocidos, copias de seguridad de operaciones, exportaciones y `UE4SS.log`. Utilice el [referencia de salida en tiempo de ejecución](SALIDAS_DE_EJECUCI%C3%93N.md) para cada grupo de campos, esquema, estado vacío, significado de error y regla de retención. Los HTML y JSON resumen el estado de origen; no prueban que un cliente de juego en vivo haya utilizado un perfil.

Si `prepared_ready` es `false` o `profile_status` es `degraded_state_persistence`, mantenga el servidor detenido hasta que el entorno de pruebas y el estado de rotación coincidan. Una escritura válida en la zona de pruebas con persistencia de estado fallido no es una transición preparada y saludable.

<a id="respond-to-writer-outcomes"></a>
## Responder a los resultados del escritor

RandomDay prepara los nuevos bytes en un archivo hermano, los vuelve a leer, valida el sandbox completo, conserva el original cuando existe, promociona el nuevo archivo y lo vuelve a leer. Se informa listo solo después de que la lectura de producción coincide.

Si la validación de promoción o producción falla, RandomDay intenta restaurar el archivo retenido por esa operación. Un error de restauración es una parada brusca: mantenga el servidor detenido y recupérelo manualmente en lugar de reiniciarlo repetidamente.

<a id="respond-to-adapter-outcomes"></a>
## Responder a los resultados del adaptador

Utilice [Adaptadores compatibles](ADAPTADORES_COMPATIBLES.md#read-an-adapter-result) para la tabla de resultados canónica de seis estados y la siguiente acción. Tratar `rollback_failed` como una parada brusca; la copia de seguridad del adaptador registrada por separado es la fuente de recuperación.

Los adaptadores afectan solo a los mods instalados por separado. Nunca activan un perfil RandomDay sandbox preparado.

En un arranque normal, los valores del adaptador se seleccionan del perfil activo porque el mod instalado por separado puede cargarse más tarde en el mismo UE4SS inicio. Durante el primer arranque, cuando no existe ningún marcador RandomDay activo, el perfil del día de inicio preparado es la única asignación disponible. Esta regla de tiempo es independiente del límite de la zona de pruebas del próximo reinicio y aún depende del comportamiento de carga del otro mod.

<a id="manual-recovery"></a>
## Recuperación manual

1. Detén el juego o el servidor. No recupere un archivo mientras esté abierto.
2. Copie el `SandboxSettings.ini`, `runtime/` actual y el `web_export/` en una copia de seguridad de diagnóstico separada.
3. Inspeccione `runtime/last_good/manifest.lua` y la entrada relevante más reciente en `runtime/backups/`. Elija un archivo cuyo family/day y hash coincidan con el estado que desea restaurar.
4. Copie el archivo verificado seleccionado en la ruta principal configurada del entorno de pruebas.
5. Léalo nuevamente y confirme que esté completo antes de comenzar.
6. Comience una vez e inspeccione el marcador activo y el estado preparado. No asuma que la recuperación fue exitosa únicamente por la ausencia de un mensaje de error.

Si no existe una copia de seguridad verificada, restaure la copia de seguridad del operador creada antes de la instalación. RandomDay no puede reconstruir un archivo que nunca fue legible.

<a id="account-for-control-panel-writes"></a>
## Recuento de escrituras en el panel de control

Algunos paneles del servidor generan `SandboxSettings.ini` durante el inicio. RandomDay no puede conservar un perfil preparado si otra herramienta lo sobrescribe después de verificar la escritura. Configure una fuente autorizada de espacio aislado y verifique el marcador de archivo inmediatamente antes y después del reinicio cuando diagnostique una transición repetida del Día 1 o faltante.
