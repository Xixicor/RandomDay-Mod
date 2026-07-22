# RandomDay - Mexican (MX)

**v0.3.16-alpha**

RandomDay prepara un `SandboxSettings.ini` completo para el siguiente arranque
de Abiotic Factor. No cambia las reglas que ya cargó la sesión actual; el perfil
activo y el perfil preparado siempre se muestran por separado.

## Instalar y comprobar

Sigue la [guía de instalación](INSTALACI%C3%93N.md). La carpeta correcta es
`ue4ss/Mods/RandomDay` y `mods.txt` debe contener `RandomDay : 1`. Por lo general,
el primer arranque prepara un perfil y el siguiente lo activa.

Revisa `runtime/current/randomday_status.json`, `runtime/rotation_state.txt` y
`web_export/today.json`. Los tres archivos deben coincidir en la identidad del
perfil activo y del perfil preparado.

## Elegir la experiencia

Configura el modo, la familia, el primer día y el avance en
`RandomDay/Scripts/ax_config/server.lua`. Consulta [Primeros pasos](COMIENCE_AQU%C3%8D.md),
[Elegir un perfil](ELIJA_UN_PERFIL.md), [Configuración](CONFIGURACI%C3%93N.md)
y [Solución de problemas](SOLUCI%C3%93N_DE_PROBLEMAS.md).

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` y
`BridgeSupports=0` son valores iniciales del generador incluido, no reglas
obligatorias de Abiotic Factor. La documentación de configuración explica cómo cambiarlos una sola vez para
que todas las familias y días conserven esos valores.

Los comandos, rutas, claves INI y estados se mantienen en inglés para coincidir
exactamente con los archivos reales.

## Versión alfa y elecciones que sí permanecen

Ésta es una versión alfa. Ya probamos las rutas documentadas de instalación, rotación y recuperación; seguimos mejorando la compatibilidad y la facilidad de uso.

En `RandomDay/Scripts/ax_config/server.lua`, `sandbox.profile_overrides` conserva los cuatro valores para todas las familias y días. Detén el servidor, cámbialos una sola vez y vuelve a iniciarlo. Las rotaciones y arranques posteriores usan los mismos valores; cambiar sólo `SandboxSettings.ini` es temporal.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Los mods opcionales de abajo son descargas separadas de sus respectivos autores. RandomDay no los redistribuye ni cambia sus funciones; un adaptador activado sólo ajusta opciones existentes y compatibles. Gracias a sus autores y a quienes los mantienen.

## Biblioteca de documentación completa

Todos los documentos públicos de Markdown están disponibles en este idioma con nombres de archivos localizados.

- [Abrir el índice de documentación localizada](DOCUMENTACI%C3%93N.md)
