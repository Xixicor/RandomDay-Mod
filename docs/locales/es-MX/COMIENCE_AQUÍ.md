<a id="start-here-complete-the-first-randomday-cycle"></a>
# Comience aquí: complete el primer RandomDay ciclo

> **Fuente canónica en inglés:** [START_HERE.md](../../START_HERE.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


Esta guía comienza después de que RandomDay esté instalado. Muestra qué cambia el mod, qué deja en paz y cómo reconocer un ciclo exitoso.

<a id="know-the-two-states"></a>
## Conozca los dos estados

Abiotic Factor lee la configuración de la zona de pruebas del mundo antes de RandomDay comenzar. RandomDay por lo tanto mantiene dos estados claramente nombrados:

- **Perfil activo:** las reglas que la sesión actual ya está usando.
- **Perfil preparado:** las reglas guardadas para el próximo inicio.

El perfil preparado no cambia una sesión que ya está en progreso.

<a id="dedicated-server-prepare-the-next-profile"></a>
## Servidor dedicado: prepara el siguiente perfil

1. Inicie el servidor normalmente.
2. Esperar a que RandomDay finalice su trabajo de inicio.
3. Abre `RandomDay/web_export/today.html` en la carpeta mod instalada.
4. Buscar **Perfil activo** y **Perfil preparado**.

En el primer inicio exitoso, la página debe nombrar las reglas que ya están activas y un perfil diferente esperando la próximo comienzo. La página también explica la familia elegida, la posición y si el archivo preparado pasó la verificación de seguridad.

No reinicie simplemente para realizar el cambio de estado. Continúe jugando con las reglas activas hasta que se inicie el próximo servidor planificado.

<a id="dedicated-server-activate-it-later"></a>
## Servidor dedicado: actívelo más tarde

1. Detenga e inicie el servidor en el próximo reinicio planificado.
2. Abra la página de estado legible nuevamente.
3. Confirme que el perfil previamente preparado ahora aparece como activo.
4. Confirma que RandomDay preparó el siguiente perfil.

Esa transición preparar-luego-activar es una completa el RandomDay ciclo.

<a id="temporary-dedicated-servers"></a>
## Servidores dedicados temporales

El comportamiento temporal utiliza el mismo paquete de servidor dedicado. En [Configuración](CONFIGURACI%C3%93N.md), elija si una nueva ejecución comienza en un perfil específico o elige un punto de inicio aleatorio. La página de estado aún separa el perfil activo del que está preparado para el próximo inicio.

<a id="singleplayer-or-lan"></a>
## Un jugador o LAN

1. Inicia el juego una vez con singleplayer/LAN instalado.
2. Cierra el juego por completo después de que RandomDay termine.
3. Lea el resumen generado.
4. Copiar lo generado `SandboxSettings.ini` al mundo que seleccionaste mientras el juego está cerrado.
5. Comience ese mundo y confirme las reglas esperadas.

El paquete local nunca elige un mundo ni copia el archivo en un archivo guardado por sí mismo. Consulte [Un jugador y LAN](LAN_PARA_UN_JUGADOR.md) para conocer el procedimiento completo.

<a id="if-the-expected-result-is-missing"></a>
## Si falta el resultado esperado

No siga reiniciando. Conserve los archivos actuales y elija el síntoma coincidente en [Solución de problemas](SOLUCI%C3%93N_DE_PROBLEMAS.md). El resultado normal siempre nombra un perfil activo y un perfil preparado o un error de preparación claro.

<a id="continue"></a>
## Continuar

- [Elige un estilo de juego](ELIJA_UN_PERFIL.md)
- [Elige el comportamiento inicial y de progresión](CONFIGURACI%C3%93N.md)
- [Operar y recuperar RandomDay](OPERACIONES.md)
- [Comprender la rotación](ROTACI%C3%93N_FAMILIAR.md)
