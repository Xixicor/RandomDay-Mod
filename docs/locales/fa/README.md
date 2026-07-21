# راهنمای فارسی RandomDay

**v0.3.16-alpha**

RandomDay یک `SandboxSettings.ini` کامل برای آغاز بعدی Abiotic Factor آماده
می‌کند. قوانین نشست جاری را تغییر نمی‌دهد؛ نمایه فعال و نمایه آماده‌شده برای
آغاز بعدی همیشه جداگانه گزارش می‌شوند.

## نصب و بررسی

[راهنمای نصب](../../../INSTALL.md) را دنبال کنید. پوشه درست
`ue4ss/Mods/RandomDay` است و `mods.txt` باید شامل `RandomDay : 1` باشد. معمولاً
آغاز نخست نمایه را آماده می‌کند و آغاز بعدی آن را فعال می‌کند.

`runtime/current/randomday_status.json`، `runtime/rotation_state.txt` و
`web_export/today.json` را بررسی کنید. هویت نمایه فعال و آماده‌شده باید در هر
سه فایل یکسان باشد.

## انتخاب تجربه

حالت، خانواده، روز شروع و پیشرفت را در
`RandomDay/Scripts/ax_config/server.lua` تنظیم کنید. [شروع](../../START_HERE.md)،
[انتخاب نمایه](../../CHOOSE_A_PROFILE.md)، [پیکربندی](../../CONFIGURATION.md) و
[رفع اشکال](../../TROUBLESHOOTING.md) را بخوانید.

`HardcoreMode=False`، `AllowIronMode=False`، `StructuralSupportLimit=0` و
`BridgeSupports=0` مقدارهای اولیه سازنده نمایه همراه بسته هستند، نه قوانین
اجباری Abiotic Factor. روش تغییر و ساخت دوباره نمایه‌ها در سند پیکربندی آمده است.

فرمان‌ها، مسیرها، کلیدهای INI و حالت‌ها به انگلیسی باقی می‌مانند تا دقیقاً با
فایل‌های واقعی مطابقت داشته باشند.

## نسخهٔ آلفا و انتخاب‌های پایدار

این یک نسخهٔ آلفا است. مسیرهای مستند نصب، چرخش و بازیابی آزمایش شده‌اند و سازگاری و سهولت استفاده همچنان بهتر می‌شود.

در `RandomDay/Scripts/ax_config/server.lua`، بخش `sandbox.profile_overrides` چهار مقدار را برای همهٔ خانواده‌ها و روزها نگه می‌دارد. سرور را متوقف کنید، یک‌بار ویرایش کنید و دوباره راه‌اندازی کنید. چرخش‌ها و شروع‌های بعدی همان مقادیر را به کار می‌برند؛ تغییر تنها `SandboxSettings.ini` موقت است.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

مودهای اختیاری زیر دانلودهای جداگانهٔ سازندگان خود هستند. RandomDay آن‌ها را بازتوزیع نمی‌کند و ویژگی‌هایشان را تغییر نمی‌دهد؛ آداپتور فعال فقط تنظیمات موجود و پشتیبانی‌شده را تغییر می‌دهد. از سازندگان و نگه‌دارندگان آن‌ها سپاسگزاریم.
