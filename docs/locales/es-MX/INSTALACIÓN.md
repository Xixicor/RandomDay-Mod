<a id="install-update-or-remove-randomday"></a>
# Instalar, actualizar o eliminar RandomDay

> **Fuente canónica en inglés:** [INSTALL.md](../../../INSTALL.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


RandomDay tiene dos descargas completas. Elija uno para el mundo que está configurando:

- use el **servidor dedicado ZIP** para cualquier servidor dedicado, incluido un servidor que se abre solo para sesiones ocasionales;
- use el **singleplayer/LAN ZIP** para un mundo local cuya configuración copiará manualmente.

No combine los paquetes. Un servidor dedicado persistente o temporal es una opción en la configuración de RandomDay's configuración, no una descarga diferente.

<a id="before-you-begin"></a>
## Antes de comenzar

Haga una copia restaurable de:

- el mundo que estás cambiando;
- es actual `SandboxSettings.ini`;
- el existente `RandomDay` carpeta, si hay una instalada.

Instale UE4SS antes de RandomDay. En las instrucciones siguientes, la **carpeta Mods** significa la `ue4ss/Mods/` directorio dentro del juego o instalación del servidor dedicado.

<a id="dedicated-server"></a>
## Servidor dedicado

<a id="new-installation"></a>
### Nueva instalación

1. Detenga el servidor.
2. Abrir su UE4SS `Mods`.
3. Extraer el servidor dedicado ZIP. El resultado debería ser uno `ue4ss/Mods/RandomDay/` carpeta, no una carpeta dentro de otra `RandomDay`.
4. Abra esa carpeta y confirme que `RandomDay/Scripts/main.lua` presente. Si falta, ZIP se extrajo en el nivel incorrecto.
5. Abre UE4SS `mods.txt` y habilite esta línea:

   ```text
   RandomDay : 1
   ```

6. Inicie el servidor normalmente.
7. Abre RandomDay's página de estado legible y confirma que nombra tanto el perfil activo como el perfil preparado para el próximo inicio.

El primer inicio no reemplaza las reglas ya cargadas por esa sesión. Prepara el siguiente perfil. Inicie el servidor nuevamente solo cuando realmente desee que el perfil preparado se active.

[Comprueba el primer ciclo](COMIENCE_AQU%C3%8D.md)

<a id="choose-always-on-or-temporary-behavior"></a>
### Elija un comportamiento siempre activo o temporal

El paquete de servidor dedicado admite ambos estilos:

- **persistente dedicado** reanuda la rotación guardada durante los reinicios normales;
- **dedicado temporal** puede comenzar desde el punto de inicio configurado o aleatorio cuando comienza una nueva ejecución temporal.

Elija el comportamiento en [Configuración](CONFIGURACI%C3%93N.md). No instale un segundo paquete para cambiar esta configuración.

<a id="update-an-existing-installation"></a>
### Actualice una instalación existente

1. Detenga el servidor y realice las copias de seguridad enumeradas anteriormente.
2. Mueva la carpeta antigua `RandomDay` completa fuera de la carpeta UE4SS `Mods`. Consérvela hasta que la actualización haya completado un ciclo exitoso.
3. Extraiga el nuevo servidor dedicado ZIP en el `Mods`.
4. Vuelva a aplicar solo las configuraciones que cambió intencionalmente y que todavía existen en la nueva [guía de configuración](CONFIGURACI%C3%93N.md).
5. Conserve los archivos de estado de rotación documentados solo cuando las notas de la versión indiquen que su formato es compatible. No copie archivos de salida temporales antiguos ni archivos de escritura fallida en la nueva instalación.
6. Confirmar `RandomDay : 1` todavía está habilitado, luego inicie el servidor una vez y verifique los nombres de los perfiles activos y preparados.

<a id="updating-from-v0315-alpha"></a>
### Actualizando desde v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip` era el paquete base antiguo. `RandomDay_v0.3.15-alpha_singleplayer_patch.zip` era una superposición y no una descarga independiente.

Actual `v0.3.16-alpha` reemplaza la disposición histórica de base y superposición con dos paquetes completos. No coloque el parche antiguo en ninguno de los paquetes. Los marcadores actuales son `.randomday_mode=dedicated_server` y `.randomday_mode=singleplayer_manual`.

<a id="singleplayer-or-lan"></a>
## Un jugador o LAN

El singleplayer/LAN crea un archivo de configuración; no busca ni cambia un guardado personal por sí solo.

1. Cierra el juego.
2. Haga una copia de seguridad del mundo y su estado actual `SandboxSettings.ini`.
3. Extrae el singleplayer/LAN ZIP en el UE4SS `Mods` carpeta entonces uno `Mods/RandomDay/` existe.
4. Habilitar `RandomDay : 1` en UE4SS `mods.txt`.
5. Inicia el juego una vez, espera RandomDay para finalizar y cerrar el juego por completo.
6. Encontrar el generado `SandboxSettings.ini` en RandomDay's `runtime/singleplayer_manual/`.
7. Lea el resumen generado y luego copie el archivo en el mundo que elija.
8. Inicie ese mundo y verifique que el comportamiento esperado de la zona de pruebas esté activo.

LAN utiliza el mismo proceso manual porque el anfitrión es dueño del mundo local. El mod no elige un mundo ni lo sobrescribe automáticamente.

[Un jugador y LAN guía](LAN_PARA_UN_JUGADOR.md)

<a id="remove-or-disable-randomday"></a>
## Eliminar o deshabilitar RandomDay

1. Detener el juego o el servidor.
2. Haga una copia de seguridad del mundo, su configuración actual de zona de pruebas y RandomDay's estado.
3. Configurar `RandomDay : 0` en UE4SS `mods.txt` para deshabilitar el mod, o mueva la carpeta `RandomDay` completa fuera de la carpeta `Mods` para eliminarla.
4. Decida cuál `SandboxSettings.ini` debe cargarse en el próximo inicio. Restaure su copia preinstalada si no desea la preparada actualmente RandomDay perfil.
5. Inicie el mundo y confirme sus reglas antes. eliminar cualquier copia de seguridad.

Desactivar RandomDay detiene la preparación futura del perfil. No reescribe el archivo sandbox que ya está esperando en el disco.

<a id="recover-from-an-unsuccessful-update"></a>
## Recuperarse de una actualización fallida

Detenerlo después del primer error de eliminación. Los reinicios repetidos pueden hacer que sea más difícil ver qué perfil estaba activo y cuál estaba esperando.

1. Detener el juego o el servidor.
2. Mover. deje a un lado la instalación fallida sin eliminarla.
3. Restaurar el completo RandomDay copia de seguridad de la carpeta y del sandbox realizada antes de la actualización.
4. Comience una vez y confirme los nombres de perfil restaurados, activos y preparados.
5. Utilice [Solución de problemas](SOLUCI%C3%93N_DE_PROBLEMAS.md) para el primer paso faltante o fallido antes de intentar otra actualización.

<a id="more-help"></a>
## Más ayuda

- [Primer ciclo](COMIENCE_AQU%C3%8D.md)
- [Elige un perfil](ELIJA_UN_PERFIL.md)
- [Configuración](CONFIGURACI%C3%93N.md)
- [Operaciones y recuperación](OPERACIONES.md)
- [Solución de problemas](SOLUCI%C3%93N_DE_PROBLEMAS.md)
- [Compatibilidad](COMPATIBILIDAD.md)

Los mantenedores de versiones pueden encontrar comprobaciones de compilaciones y paquetes en [Validación de la versión](VALIDACI%C3%93N_DE_LANZAMIENTO.md). No son necesarios para una instalación normal.
