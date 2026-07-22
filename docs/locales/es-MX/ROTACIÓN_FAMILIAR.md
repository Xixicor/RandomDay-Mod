<a id="seventeen-families-seventeen-days"></a>
# Diecisiete familias, diecisiete días

> **Fuente canónica en inglés:** [FAMILY_ROTATION.md](../../FAMILY_ROTATION.md). Esta documentación localizada conserva comandos, rutas, claves, valores de estado, hashes y nombres de archivos exactos. Si la redacción técnica difiere, utilice la fuente en inglés.


RandomDay contiene 17 familias de estilos de juego con 17 perfiles diarios completos en cada familia. Eso produce 289 documentados family/day combinaciones.

La familia establece el estilo general de una carrera. Los días 1 al 17 proporcionan la progresión de esa familia en cuanto a presión, recuperación, ritmo y recursos. Una ejecución almacena un pedido que contiene el ID de cada día exactamente una vez. Un reinicio avanza a la siguiente posición almacenada; RandomDay no cambia de familia a mitad del pedido.

<a id="selection-modes"></a>
## Modos de selección

| Modo | Comportamiento de nueva ejecución | Durante la ejecución |
|---|---|---|
| `selected_run` | Utiliza `profile_family.selected_family`. | Mantiene esa familia en las 17 posiciones almacenadas. |
| `non_repeating_random_run` | Elige una familia elegible no utilizada. | Lo mantiene en las 17 posiciones y evita repeticiones familiares hasta que se agote la lista elegible. |
| `rotation_run` | Toma la siguiente familia en el orden configurado. | Lo mantiene en las 17 posiciones almacenadas. |

La configuración enviada utiliza `non_repeating_random_run`. La familia preparada después de la posición final almacenada todavía sólo está preparada; se activa después del reinicio. `cycle.start_day_mode` y `cycle.day_progression_mode` elige el primer día y el orden del día sin cambiar la selección de familia.

<a id="families"></a>
## Familias

- Acción
- Supervivencia
- Sigilo
- Horda
- Boss Hunt
- Carroñero
- Constructor
- Expedición
- Bloqueo de seguridad
- Biohazard
- Anteverse
- Pesadilla
- Desgastado
- Precisión
- Logística
- Experimental
- Prueba de cumplimiento

Utilice la [índice de perfil generado](PERFILES/DOCUMENTACI%C3%93N_DEL_PERFIL.md) para abrir una familia o el [referencia de perfil completo](PERFILES/REFERENCIA_COMPLETA_DEL_PERFIL.md) para revisar las 289 combinaciones. La [referencia de clave de sandbox](PERFILES/CLAVES_DE_CONFIGURACI%C3%93N_DE_SANDBOX.md) define cada valor admitido y el perfil predeterminado enviado.

<a id="custom-families-and-days"></a>
## Familias y días personalizados

La fuente de la familia se encuentra en:

```text
RandomDay/Scripts/ax_profiles/families/
```

El Markdown y JSON en `docs/profiles/` son referencias generadas. Cambie la fuente, la salida no generada, luego ejecute la validación profile/schema completa. Un conjunto personalizado no está listo cuando solo se analiza un día; los 17 días, los valores predeterminados del perfil configurado, los tipos, los rangos y la referencia generada deben coincidir.
