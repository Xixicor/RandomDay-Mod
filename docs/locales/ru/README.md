# RandomDay на русском языке

**v0.3.16-alpha**

RandomDay подготавливает полный `SandboxSettings.ini` к следующему запуску
Abiotic Factor. Уже загруженные правила текущего сеанса не меняются. Активный и
подготовленный профили всегда различаются.

## Установка и проверка

Следуйте [инструкции по установке](../../../INSTALL.md). Правильный каталог —
`ue4ss/Mods/RandomDay`, а в `mods.txt` должна быть строка `RandomDay : 1`.
Первый запуск обычно подготавливает профиль, следующий — активирует его.

Проверьте `runtime/current/randomday_status.json`, `runtime/rotation_state.txt`
и `web_export/today.json`. Активная и подготовленная идентичности должны
совпадать во всех трёх файлах.

## Выбор режима

Режим, семейство, начальный день и порядок задаются в
`RandomDay/Scripts/ax_config/server.lua`. Используйте [Первый запуск](../../START_HERE.md),
[Выбор профиля](../../CHOOSE_A_PROFILE.md), [Настройку](../../CONFIGURATION.md)
и [Эксплуатацию](../../OPERATIONS.md).

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` и
`BridgeSupports=0` — значения этой версии, а не неизменяемые правила игры.
[Расширенная настройка](../../CONFIGURATION.md#customize-the-shipped-profile-defaults)
описывает постоянное изменение исходных значений.

Команды, пути, ключи и состояния сохранены на английском языке.

## Альфа-версия и постоянные параметры

Это альфа-версия. Описанные процедуры установки, ротации и восстановления проверены; совместимость и удобство использования продолжают улучшаться.

В `RandomDay/Scripts/ax_config/server.lua` блок `sandbox.profile_overrides` сохраняет четыре значения для всех семейств и дней. Остановите сервер, измените их один раз и запустите снова. Последующие ротации и запуски используют те же значения; изменение только `SandboxSettings.ini` временно.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Дополнительные моды ниже загружаются отдельно у их авторов. RandomDay не распространяет их и не меняет их функции; включённый адаптер регулирует только существующие поддерживаемые настройки. Спасибо авторам и сопровождающим.
