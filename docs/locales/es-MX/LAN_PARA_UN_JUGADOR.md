<a id="singleplayer-and-lan-manual-workflow"></a>
# Un jugador y LAN flujo de trabajo manual

> **Fuente canónica en inglés:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


RandomDay's singleplayer/LAN genera un `SandboxSettings.ini` dentro de la carpeta mod. Eliges el mundo y copias el archivo manualmente mientras el juego está cerrado.

El paquete está bloqueado en esta salida:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Deshabilita las escrituras en la zona de pruebas del servidor dedicado, las réplicas de la zona de pruebas y todas las escrituras de adaptadores opcionales. No busca AppData, datos de usuario de Steam, documentos, carpetas guardadas, carpetas de servidor o carpetas de modificaciones de terceros.

<a id="understand-the-manual-boundary"></a>
## Comprender los límites manuales

Antes de comenzar, configura la experiencia en `RandomDay/Scripts/ax_config/server.lua`. El paquete manual acepta `experience.mode="auto"` o `"singleplayer_lan"`. Puedes elegir un primer día fijo o aleatorio y un pedido de 17 días secuencial o no aleatorio. La selección de familia utiliza la misma configuración familiar seleccionada, rotativa o aleatoria no repetitiva que un servidor dedicado.

La salida generada contiene el marcador que RandomDay lee en el siguiente proceso. Para mantener el estado alineado, copie el archivo generado en el mundo detenido elegido antes de iniciar otro proceso de generación. Comenzar repetidamente sin copiar puede hacer avanzar la cola de modificación local aunque el mundo nunca haya cargado la salida anterior.

Siga el procedimiento de instalación canónico [para un jugador o LAN](INSTALACI%C3%93N.md#singleplayer-or-lan) para realizar copias de seguridad, colocación de paquetes, habilitación, generación, copia manual y verificación. Esta página explica los límites del manual; no define otro método de instalación.

La primera generación prepara un perfil; no puede cambiar las reglas ya cargadas por ese proceso de juego. Cierra, copia y comienza de nuevo para usarlo. Repita el ciclo sólo cuando desee deliberadamente que el siguiente día persista.

Eliminar RandomDay no restaura un archivo mundial que haya copiado manualmente; use su propia copia de seguridad para esa reversión. Siga [Eliminar o revertir cualquier instalación](INSTALACI%C3%93N.md#remove-or-disable-randomday) para conocer el procedimiento de eliminación exacto.
