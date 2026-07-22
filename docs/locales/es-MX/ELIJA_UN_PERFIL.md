<a id="choose-the-kind-of-game-you-want"></a>
# Elige el tipo de juego que deseas

> **Fuente canónica en inglés:** [CHOOSE_A_PROFILE.md](../../CHOOSE_A_PROFILE.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


RandomDay incluye 289 conjuntos de reglas mundiales ya preparados. Están organizados en 17 **familias**, con 17 **perfiles** en cada familia:

- una familia es un estilo de juego amplio, como supervivencia, construcción, sigilo o exploración;
- un perfil es un conjunto completo de reglas dentro de ese estilo de juego; y
- el número de perfil se llama día porque RandomDay se mueve por esas 17 posiciones a medida que se reinicia el servidor. No es un día del calendario real.

Comience con la siguiente tabla. Elige la fila que se parezca más a la sesión que deseas y luego abre una o dos páginas familiares para comparar sus efectos exactos.

<a id="start-with-a-playstyle"></a>
## Comienza con un estilo de juego

| Quieres | Comienza con | Compara estos efectos |
|---|---|---|
| Combate directo frecuente o más nítido tiroteos | [Acción](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_ACCI%C3%93N.md), [Horda](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_HORDA.md), [Boss Hunt](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_CAZA_DE_JEFES.md), o [Precisión](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_PRECISI%C3%93N.md) | Recuento de enemigos, nivel de encuentro, precisión, daño y días de recuperación |
| Detección, oscuridad o presión de patrulla | [Sigilo](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_SIGILO.md), [Pesadilla](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_PESADILLA.md), o [Bloqueo de seguridad](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_BLOQUEO_DE_SEGURIDAD.md) | Visibilidad, velocidad de detección, sesgo nocturno, robots e intervalos seguros |
| Hambre, clima, contaminación o desgaste | [Supervivencia](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_SUPERVIVENCIA.md), [Desgastado](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DESGASTADOS.md), o [Biohazard](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_RIESGO_BIOL%C3%93GICO.md) | Recursos, agua, radiación, clima, durabilidad y penas de muerte |
| Planificación de crecimiento de base, transporte, inventario o suministro | [Constructor](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_CONSTRUCTOR.md) o [Logística](PERFILES/FAMILIAS/PERFIL_DE_LOG%C3%8DSTICA_FAMILIA.md) | Tamaño de pila, inventario, peso, durabilidad, energía y presión de construcción |
| Viajes, portales, rutas de botín o exploración | [Expedición](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_EXPEDICI%C3%93N.md), [Anteverse](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_ANTEVERSO.md), o [Carroñero](PERFILES/FAMILIAS/FAMILIA_DE_PERFIL_DE_CARRO%C3%91ERO.md) | Movimiento, presión del portal, recompensas, riesgo de ruta y tiempo fuera de la base |
| Combinaciones impredecibles o un desafío final amplio | [Experimental](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_EXPERIMENTALES.md) o [Prueba de cumplimiento](PERFILES/FAMILIAS/FAMILIA_DE_PERFILES_DE_PRUEBA_DE_CUMPLIMIENTO.md) | Todos los días en estas progresiones deliberadamente mezcladas |

Estas sugerencias son navegación, no sustitutos de valores exactos. Cada página familiar enumera los efectos principales, el dominio clasificaciones, contexto de encuentro, las 46 configuraciones de sandbox y selecciones de adaptadores opcionales para cada día.

<a id="confirm-the-exact-family-and-day"></a>
## Confirme la familia y el día exactos

1. Abra la página familiar y compare las posiciones de los 17 días.
2. Utilice la [referencia de perfil completo](PERFILES/REFERENCIA_COMPLETA_DEL_PERFIL.md) para comparar nombres de perfiles y reglas de interpretación en las 289 combinaciones.
3. Utilice [teclas de configuración de zona de pruebas](PERFILES/CLAVES_DE_CONFIGURACI%C3%93N_DE_SANDBOX.md) para interpretar cada valor sin procesar, rango admitido, banda de puntuación y perfil predeterminado enviado.
4. Utilice [`profiles.generated.json`](../../profiles/profiles.generated.json) cuando las herramientas necesitan el perfil exacto legible por máquina, el diccionario y la fuente de traducción.

<a id="configure-the-chosen-experience"></a>
## Configure la experiencia elegida

Siga [Elige una experiencia](CONFIGURACI%C3%93N.md#choose-an-experience) para configurar el modo de familia, la lista de familias elegibles, comportamiento del día de inicio y orden de días secuencial o aleatorio no repetitivo. RandomDay persiste el orden elegido; la recuperación no reinicia silenciosamente una ejecución familiar en progreso.
