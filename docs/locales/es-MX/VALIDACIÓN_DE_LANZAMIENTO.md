<a id="release-validation"></a>
# Validación de la versión

> **Fuente canónica en inglés:** [RELEASE_VALIDATION.md](../../RELEASE_VALIDATION.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Esta página es para contribuyentes y mantenedores de la versión. Los jugadores que instalen el mod no necesitan ejecutar estos comandos.

<a id="ordinary-user-proof"></a>
## Prueba de usuario normal

Una versión es comprensible cuando un nuevo lector puede elegir uno de los dos paquetes, instalarlo, identificar el perfil activo y el perfil preparado, y recuperarse de un resultado faltante siguiendo la guía vinculada. Esas tareas de lectura no deben requerir Git, PowerShell, Python o conocimientos de suma de comprobación.

<a id="contributor-checks"></a>
## Verificaciones del colaborador

Ejecutar desde la raíz del repositorio:

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

Cuando `luac` esté disponible, verifique la sintaxis de cada archivo Lua enviado:

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

El tiempo de ejecución de Lua las pruebas requieren `lupa`. La falta de un intérprete de Lua o `lupa` instalación es una capacidad de prueba no disponible, no un resultado aprobado.

<a id="release-checks"></a>
## Comprobaciones de versión

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

La verificación de versión verifica estas condiciones:

- `VERSION` y `RandomDay/.randomday_version` coincide.
- Solo existe la versión actual en `releases/`.
- Los ZIP dedicados y singleplayer/LAN son alternativas completas.
- Ambos archivos contienen la ruta canónica `RandomDay/Scripts/main.lua` y ningún cargador que colisiona entre casos.
- Los marcadores de modo de paquete son `dedicated_server` y `singleplayer_manual`.
- ZIP bytes son deterministas y coinciden `CHECKSUMS.sha256`.
- No se empaquetan datos de tiempo de ejecución, configuración privada, credenciales, cachés ni resultados de prueba.
- Todos los enlaces de documentación local y 27 páginas de entrada de configuración regional se validan.

<a id="avoid-validation-environment-pitfalls"></a>
## Evite los problemas del entorno de validación

- Ejecute comprobaciones de escritura del repositorio en serie para que dos procesos no reemplacen el mismo archivo temporal a la vez.
- En Windows, marque ZIP nombres de miembros en lugar de utilizar una búsqueda de archivos que no distingue entre mayúsculas y minúsculas para decidir si existe un cargador de minúsculas.
- Confirmar `mods.txt` y `enabled.txt` solo en una prueba de servidor instalado; no son prueba de que se hayan ejecutado las pruebas de origen.
- Registre el tiempo de espera de un comando como incompleto. No lo convierta para que pase o falle sin la salida limitada del comando.
- Mantenga los archivos temporales dentro de los `.tmp/` directorio.

<a id="known-limits"></a>
## límites conocidos

La validación local demuestra los contratos de fuente, paquete, documentación y accesorios. No prueba el orden de inicio de un panel de servidor en particular, el diseño de mensajes de un cliente en vivo o una ruta de sistema de archivos específica del host. Regístrelos como resultados de integración separados cuando se prueben.
