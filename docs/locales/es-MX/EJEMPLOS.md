<a id="worked-configuration-examples"></a>
# Ejemplos de configuración trabajados

> **Fuente canónica en inglés:** [EXAMPLES.md](../../EXAMPLES.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Estos ejemplos utilizan nombres y valores inventados para mostrar cómo RandomDay informa los resultados de preparación, activación, recuperación y compatibilidad normales.

<a id="first-bootstrap"></a>
## Primer arranque

Antes: la sesión en ejecución cargaba un sandbox sin RandomDay marcador.

Después de un RandomDay inicio exitoso:

```text
selection_status=bootstrap_prepare_first_family_start_day
session_mode=temporary_dedicated
start_day_mode=configured
day_progression_mode=sequential
day_order=8,9,10,11,12,13,14,15,16,17,1,2,3,4,5,6,7
active_profile_id=unknown_current_boot
prepared_next_profile_id=<action-day-8-profile-id>
prepared_ready=true
restart_required_for_prepared_profile=true
```

Significado: la sesión actual permanece desconocida para RandomDay. El día 8 configurado está listo para el próximo reinicio y se conserva el pedido completo. No describa el día 8 como activo todavía.

<a id="normal-next-day"></a>
## Día siguiente normal

Antes: el marcador actual del entorno de pruebas identifica el Día de acción 1.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Significado: el día 1 está activo para este proceso; El día 2 está preparado. El reinicio es una decisión del operador.

<a id="state-commit-failure"></a>
## Error de confirmación de estado

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Significado: es posible que haya bytes válidos de sandbox en el disco, pero RandomDay no se pudo conservar un registro de cola coincidente. Mantenga el servidor detenido, conserve la zona de pruebas y ambos archivos de estado de rotación, y siga la recuperación manual. Una escritura exitosa en la zona de pruebas por sí sola no es una transición saludable y preparada.

<a id="primary-write-restored"></a>
## Escritura principal restaurada

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Significado: la lectura de producción falló y se restauró el archivo anterior. Inspeccione la copia de seguridad de la operación y el primer error antes de comenzar de nuevo. No infiera que el perfil preparado es utilizable.

<a id="adapter-outcomes"></a>
## Resultados del adaptador

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Significado: el objetivo de Lethal Lasers se dejó sin cambios porque no se reconoció su diseño completo. El ANTE El objetivo superior ya coincide. Ninguno de los resultados cambia la transacción principal de la zona de pruebas.

Si un adaptador informa `rollback_failed`, detenga el servicio afectado y conserve el destino, los sidecars y `runtime/backups/external_<operation>/` directorio.

<a id="singleplayer-or-lan"></a>
## Un jugador o LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Significado: RandomDay solo escribió `runtime/singleplayer_manual/SandboxSettings.ini`. Cierra el juego, inspecciona el archivo, haz una copia de seguridad del mundo elegido y cópialo manualmente. El resultado no prueba que ningún mundo lo haya cargado.

<a id="incompatible-environment"></a>
## Entorno incompatible

Cuando no hay ningún factor abiótico nombrado o UE4SS la ejecución existe, la copia de la versión debe decir:

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

El análisis, los accesorios y la extracción de paquetes de Lua local siguen siendo pruebas útiles, pero no se convierten en una afirmación de compatibilidad más amplia.
