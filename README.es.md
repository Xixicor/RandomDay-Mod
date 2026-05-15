# RandomDay

<img width="1672" height="649" alt="RandomDayCover_3" src="https://github.com/user-attachments/assets/bade01d2-00ce-48ba-acbf-6a4b7f33df60" />

**RandomDay Mod**  
Rotación familiar de 17 días para servidores dedicados de Abiotic Factor

RandomDay es un mod Lua para UE4SS en servidores dedicados de Abiotic Factor. Prepara perfiles cambiantes de sandbox mediante un modelo seguro de cola para el siguiente reinicio, sin forzar cambios en vivo sobre un servidor ya cargado.

## Versión actual

- Versión: `v0.3.15-alpha`
- Nombre público: `RandomDay`
- Carpeta de instalación: `RandomDay/`
- Runtime: UE4SS Lua
- Modelo de aplicación: cola para el siguiente reinicio
- Rotación: familias de juego con 17 días cada una
- Archivo principal: `RandomDay_v0.3.15-alpha.zip`
- Parche opcional para singleplayer/LAN: `RandomDay_v0.3.15-alpha_singleplayer_patch.zip`

## Qué hace RandomDay

RandomDay prepara el siguiente perfil completo de `SandboxSettings.ini` después de que el servidor ya arrancó. El siguiente reinicio carga ese perfil preparado de forma limpia.

```text
Arranca el servidor
-> Abiotic Factor carga el SandboxSettings.ini actual
-> UE4SS carga RandomDay
-> RandomDay lee el marcador del perfil activo
-> RandomDay prepara el siguiente perfil
-> el siguiente reinicio carga ese perfil preparado
```

## Rotación familiar de 17 días

RandomDay usa un sistema de familias de juego de 17 días.

- 17 familias de estilo de juego
- 17 días por familia
- una familia se mantiene activa hasta el Día 17
- cada reinicio avanza un día
- después del Día 17 puede seleccionarse otra familia no usada para la siguiente vuelta

Familias incluidas:

- Action
- Survival
- Stealth
- Horde
- Boss Hunt
- Scavenger
- Builder
- Expedition
- Security Lockdown
- Biohazard
- Anteverse
- Nightmare
- Weathered
- Precision
- Logistics
- Experimental
- Compliance Test

## Qué modifica

RandomDay escribe perfiles completos de sandbox para servidores dedicados en:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Los perfiles pueden ajustar dificultad, presión de supervivencia, ritmo de loot, comportamiento del tiempo, clima, presión enemiga, utilidad, recuperación y balance de desafío.

Todos los perfiles generados mantienen estas reglas de seguridad:

```text
HardcoreMode=False
AllowIronMode=False
StructuralSupportLimit=0
BridgeSupports=0
```

## Mods opcionales compatibles

RandomDay no incluye, copia, redistribuye ni rehostea código de mods de terceros.

La compatibilidad opcional se maneja mediante adaptadores propios de RandomDay. Estos adaptadores solo modifican configuraciones expuestas si el administrador ya instaló el mod compatible por separado.

Adaptadores incluidos:

- Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
- Lethal Lasers `1.0 UE4SS`
- ANTE Up `0.26`

Los adaptadores están en:

```text
RandomDay/Scripts/ax_external/adapters/
```

La configuración de adaptadores se controla desde:

```text
RandomDay/Scripts/ax_config/server.lua
```

## Instalación para servidor dedicado

Coloca la carpeta del mod aquí:

```text
AbioticFactor/Binaries/Win64/ue4ss/Mods/RandomDay/
```

Confirma que existan:

```text
RandomDay/enabled.txt
RandomDay/Scripts/main.lua
```

Actívalo en `mods.txt`:

```text
RandomDay : 1
```

Reinicia una vez para preparar el primer perfil. Reinicia otra vez para cargar el perfil preparado.

## Parche opcional para singleplayer / LAN

RandomDay v0.3.15-alpha también tiene un parche separado para singleplayer:

```text
RandomDay_v0.3.15-alpha_singleplayer_patch.zip
```

Este parche es manual a propósito por seguridad. No escanea ni escribe automáticamente en AppData, Steam userdata, carpetas de guardado, carpetas de servidor dedicado ni carpetas de mods de terceros.

El parche solo genera el archivo dentro de la carpeta del mod:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Para usarlo:

1. Instala RandomDay v0.3.15-alpha.
2. Instala el parche singleplayer encima del mod.
3. Inicia el juego una vez con UE4SS/RandomDay activo.
4. RandomDay genera `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini`.
5. Haz una copia de seguridad del `SandboxSettings.ini` original del mundo que quieres usar.
6. Copia manualmente el archivo generado al mundo singleplayer o LAN que quieres jugar.
7. Inicia el mundo otra vez para cargar el perfil.

LAN debería funcionar de la misma forma porque el host LAN usa su configuración local del mundo.

Este límite existe por seguridad. Un escritor automático hacia AppData o carpetas de guardado sería un riesgo mayor si un archivo público de release o el repositorio fueran comprometidos.

## Enlaces

- Nexus Mods Page: https://www.nexusmods.com/abioticfactor/mods/212?published=1
- GitHub Repository: https://github.com/Xixicor/RandomDay-Mod
- Olmteka Studio: https://studio.speclang.pro/
- Featured Video: https://youtu.be/1HsnSpSSl80

## Aviso

RandomDay es un mod independiente de la comunidad. No está afiliado ni respaldado por Deep Field Games, Playstack, UE4SS, Nexus Mods ni ningún autor de mods de terceros salvo que se indique explícitamente.

Abiotic Factor, Deep Field Games, Playstack, UE4SS, Nexus Mods, mods de terceros, logos, marcas y recursos relacionados pertenecen a sus respectivos propietarios.
