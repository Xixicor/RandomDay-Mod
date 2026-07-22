<a id="supported-optional-mods"></a>
# Modificaciones opcionales admitidas

> **Fuente canónica en inglés:** [SUPPORTED_ADAPTERS.md](../../SUPPORTED_ADAPTERS.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


RandomDay puede hacer que un mod instalado por separado siga el perfil activo RandomDay. Esta característica sólo está disponible en el paquete de servidor dedicado. El singleplayer/LAN nunca edita otro mod.

RandomDay no incluye ni redistribuye ninguna de las modificaciones enumeradas aquí. Instale y habilite cada mod opcional desde su propia página Nexus y siga primero las instrucciones de su autor. RandomDay cambia solo las configuraciones reconocidas que ya existen en el archivo instalado. No agrega funciones a otro mod y un adaptador se puede desactivar sin desinstalar ese mod. El paquete de servidor dedicado comienza con `external_mods.enabled = true`.

<a id="what-randomday-changes"></a>
## Lo que RandomDay cambia

| Integración opcional | Configuraciones seleccionadas del perfil activo |
| --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | Modo difícil, player/area comportamiento de enfriamiento, actividad de tormenta y zona activa, generación de jefes y ráfagas, sincronización del ciclo de generación, rangos de enfriamiento pequeños y grandes, distancia de generación, global/local/mod límites, tormenta de portal, incumplimiento de órdenes y posibilidades de jefe, y apariciones mínimas por área. |
| Campos de extensión opcionales de Chaotic Spawn Engine | Cuando el `SharedData.lua` ya contiene RandomDay campos de extensión, el adaptador puede proporcionar perfil de encuentro, nivel, tema, límites de grupo, valores de eventos especiales y encuentros mixtos, presupuesto, tiempo de reutilización y controles de alcance mundial. Este no es otro mod para descargar. |
| Láseres letales | Activación del mod más daño y controles de habilitación para emisores desplegables, emisores ambientales, reflectores y prismas. |
| ANTE Arriba | Multiplicador de frecuencia de reaparición, frecuencia antevariante y los interruptores development/debug interruptores. RandomDay mantiene desactivados todos los interruptores de desarrollo y depuración reconocidos. |

La biblioteca de perfiles proporciona un conjunto de valores preparado para cada día admitido. Un día tranquilo puede reducir la presión, un día de peligro puede aumentarla y un día de recuperación puede reducirla drásticamente. RandomDay no calcula valores arbitrarios en el arranque; aplica el conjunto de valores revisado nombrado por el perfil activo.

<a id="current-version-evidence"></a>
## Evidencia de la versión actual

Esta tabla se revisó el 20 de julio de 2026. “Reconocido” significa que el adaptador lanzado tiene un dispositivo de diseño local completo para las configuraciones nombradas. No significa que todas las versiones futuras tendrán la misma forma de archivo.

| Mod opcional | Versión actual revisada | RandomDay estado de lanzamiento |
| --- | --- | --- |
| [Engendro caótico Motor](https://www.nexusmods.com/abioticfactor/mods/156) | Página Nexus `0.8.5`; archivo principal actual `0.8.5-Hotfix1` | Reconocido `DynamicSpawns/Scripts/SharedData.lua` diseño completo para el conjunto de configuración de generación, enfriamiento, límite, portal, violación y jefe. |
| Campos de extensión opcionales de Chaotic Spawn Engine | No hay campos opcionales dentro del mismo `SharedData.lua` | Se aplica solo cuando todos los campos de extensión ya existen. Las instalaciones de Spawn Engine no se modifican cuando esos campos están ausentes. El ID del adaptador interno es `encounter_director`; no nombra un mod público separado. |
| [Láseres letales](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Reconocido `LethalLasers/Scripts/main.lua` diseño para todas las configuraciones de emisor, emisor ambiental, reflector y prisma enumeradas anteriormente. |
| [ANTE Arriba](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, actualizado el 19 de julio de 2026 | El adaptador lanzado reconoce el anterior `Settings.lua` conjunto de campos. La versión 1 no se declara compatible hasta que su archivo actual se agrega al dispositivo y pasa las pruebas de transacción del adaptador. Si su diseño difiere, RandomDay informa `skipped_incompatible` y lo deja sin cambios. |

<a id="how-recognition-protects-another-mod"></a>
## Cómo el reconocimiento protege a otro mod

Encontrar un nombre de archivo familiar no es suficiente. Antes de escribir, RandomDay verifica que todas las configuraciones requeridas para ese adaptador existan en el archivo de destino. Solo parchea las asignaciones existentes; nunca inventa una configuración faltante.

Para un diseño reconocido, RandomDay realiza una transacción limitada:

1. calcular cada valor previsto para el perfil activo;
2. crear y verificar bytes una copia de seguridad de cada archivo de destino;
3. escribir a través de un archivo pendiente hermano;
4. promocionar el archivo pendiente y leer los bytes guardados;
5. confirmar cada valor previsto;
6. utilice la restauración automática a partir de las copias de seguridad verificadas si falla algún paso.

DynamicSpawns puede incluir su configuración y archivos de mensajes del reproductor reconocidos en una sola transacción. RandomDay no informa que la actualización de varios archivos fue exitosa a menos que finalice la transacción completa.

<a id="read-an-adapter-result"></a>
## Leer el resultado de un adaptador

| Resultado | Significado |
| --- | --- |
| `applied` | La configuración reconocida cambió y pasó la lectura. |
| `already_current` | La configuración reconocida ya coincide con el perfil activo. |
| `not_installed` | No se encontró el mod opcional. RandomDay continuó sin él. |
| `skipped_incompatible` | Se encontró un archivo, pero no se reconoció su diseño de configuración completo. No se cambió nada. |
| `partial` | Se aplicó la configuración principal DynamicSpawns, pero no se completó un archivo de mensaje traducido opcional. Revise el resultado del adaptador registrado. |
| `failed_rolled_back` | Una transacción falló y los bytes anteriores permanecieron intactos o fueron restaurados y verificados. |
| `rollback_failed` | RandomDay no pudo verificar el cambio o la restauración. Mantenga el mod afectado detenido y restaure su copia de seguridad registrada manualmente. |

Los mods opcionales faltantes e incompatibles no detienen la rotación del sandbox de RandomDay's rotación de espacio aislado según la configuración enviada.

<a id="enable-or-disable-integrations"></a>
## Habilitar o deshabilitar integraciones

Los controles están en:

```text
RandomDay/Scripts/ax_config/server.lua
```

El paquete de servidor dedicado se envía con:

```lua
external_mods = {
    enabled = true,
    optional_by_default = true,
    patch_only_existing_keys = true,
    backup_before_write = true,
    adapters = {
        "lethal_lasers",
        "dynamic_spawns",
        "encounter_director",
        "ante_up"
    }
}
```

- Configurar `enabled = false` para evitar que RandomDay inspeccione o cambie cada mod opcional.
- Elimine un ID de adaptador para dejar ese mod en paz mientras mantiene activas las demás integraciones.
- Mantenga `patch_only_existing_keys` y `backup_before_write` configurado en `true`. Son el límite de seguridad de escritura.
- Mantenga `optional_by_default = true` a menos que cada mod opcional enumerado sea una parte requerida del servidor. Establecerlo en `false` hace que un adaptador faltante, incompatible o revertido de forma segura afecte el resultado agregado.

No es necesario que desinstale o deshabilite un mod opcional cuando deshabilite su RandomDay adaptador.

<a id="thanks-and-ownership"></a>
## Gracias y propiedad

Gracias a los autores y mantenedores de [Engendro caótico Motor](https://www.nexusmods.com/abioticfactor/mods/156), [Láseres letales](https://www.nexusmods.com/abioticfactor/mods/141) actual y el [ANTE Arriba](https://www.nexusmods.com/abioticfactor/mods/201). Sus mods siguen siendo descargas independientes que se rigen por sus propias páginas, permisos e instrucciones de soporte. RandomDay's los adaptadores solo usan campos de configuración presentes en un diseño instalado y reconocido; no redistribuyen ni reemplazan esas modificaciones.

<a id="backups-and-manual-recovery"></a>
## Copias de seguridad y recuperación manual

Las copias verificadas previas a la escritura se conservan en:

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

Si `rollback_failed` aparece:

1. detiene el juego o el servidor;
2. establece `external_mods.enabled = false`, o eliminar el ID del adaptador afectado;
3. preservar el archivo de destino actual y sus pending/rollback archivos;
4. hacer coincidir los archivos de copia de seguridad numerados con las rutas de destino registradas en el resultado del adaptador;
5. restaurar los bytes verificados mientras el servicio está detenido;
6. inicia el mod opcional por sí solo antes de volver a habilitarlo RandomDay adaptador.

No fuerce la compatibilidad cambiando el nombre de la configuración o agregando claves faltantes. Utilice un diseño reconocido, deje el adaptador deshabilitado o agregue una nueva versión de dispositivo y prueba de transacción antes de expandir el reclamo de soporte.
