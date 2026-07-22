<a id="compatibility"></a>
# Compatibilidad

> **Fuente canónica en inglés:** [COMPATIBILITY.md](../../COMPATIBILITY.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


<a id="supported-installations"></a>
## Instalaciones compatibles

RandomDay está diseñado para instalaciones de Abiotic Factor que pueden cargar UE4SS mods Lua.

| Entorno | Soporte | Paquete |
| --- | --- | --- |
| Windows dedicado servidor | Compatible | servidor dedicado ZIP |
| Windows para un solo jugador o LAN host | Flujo de trabajo de copia manual compatible | Singleplayer/LAN ZIP |
| Servidor Linux usando Wine o Proton | No probado en el lanzamiento | El paquete dedicado de Windows puede ser evaluado por operadores experimentados, pero no se hace ninguna promesa de compatibilidad. |
| Xbox y PlayStation | No compatible | Estas plataformas no proporcionan el acceso a archivos y UE4SS ruta de carga de Lua requerida por esta versión. |

RandomDay no combina los dos paquetes. Un servidor dedicado que solo se inicia para jugar ocasionalmente todavía usa el servidor dedicado ZIP y selecciona un comportamiento temporal en la configuración.

<a id="abiotic-factor-updates"></a>
## Actualizaciones del factor abiótico

Después de una actualización del juego, comienza con el servidor detenido y guarda una copia restaurable del mundo, `SandboxSettings.ini` actual y el RandomDay estado. Confirme las UE4SS cargas, luego complete un RandomDay ciclo y verifique tanto el perfil activo como el preparado antes de reanudar la rotación normal.

<a id="companion-mods"></a>
## Modificaciones complementarias

RandomDay cambia un mod instalado por separado solo cuando su diseño de configuración completo coincide con un adaptador compatible. Un número de versión por sí solo no es suficiente.

| Integración | Versión actual revisada | RandomDay límite de soporte |
| --- | --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | `0.8.5`; archivo principal`0.8.5-Hotfix1` | Los compatibles `SharedData.lua` el diseño cubre las configuraciones de generación, tiempo de reutilización, población, portal, brecha, jefe y RandomDay configuraciones de encuentro enumeradas en la referencia del adaptador. |
| Láseres letales | `1.0-UE4SS` | Los compatibles `Scripts/main.lua` cubre las configuraciones reconocidas de emisor, emisor ambiental, reflector y prisma. |
| ANTE Arriba | `1`, actualizado el 19 de julio de 2026 | El diseño público actual no ha completado el dispositivo del adaptador. RandomDay omite un archivo no coincidente sin cambios hasta que se verifica ese diseño. |

Un mod complementario ausente, deshabilitado o no reconocido no se modifica. Consulte [Modificaciones opcionales compatibles](ADAPTADORES_COMPATIBLES.md) para conocer los ajustes exactos, los controles de configuración, el comportamiento de la copia de seguridad y los pasos de recuperación.

<a id="what-compatibility-validation-proves"></a>
## Qué demuestra la validación de compatibilidad

La validación del repositorio puede probar el diseño del paquete enviado, la cobertura de configuración, los campos del adaptador reconocidos, el comportamiento de copia de seguridad y restauración y el rechazo seguro de un diseño desconocido. No puede probar todos los factores abióticos futuros, UE4SS o versiones complementarias. Las notas de la versión nombran las versiones probadas en lugar de asumir la compatibilidad de una carga exitosa.
