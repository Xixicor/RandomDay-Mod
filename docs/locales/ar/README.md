# دليل RandomDay بالعربية

**v0.3.16-alpha**

يُعد RandomDay ملف `SandboxSettings.ini` كاملاً لبدء Abiotic Factor التالي.
لا يغير القواعد التي حمّلتها الجلسة الحالية، وتبقى هوية الملف النشط منفصلة عن
هوية الملف المُعدّ.

## التثبيت والتحقق

اتبع [دليل التثبيت](../../../INSTALL.md). المسار الصحيح هو
`ue4ss/Mods/RandomDay` ويجب أن يحتوي `mods.txt` على `RandomDay : 1`. عادةً ما
يُعد البدء الأول الملف، ويقوم بدء لاحق بتفعيله.

تحقق من `runtime/current/randomday_status.json` و`runtime/rotation_state.txt`
و`web_export/today.json`. يجب أن تتطابق الهويتان النشطة والمُعدة في الملفات
الثلاثة.

## اختيار التجربة

اضبط النمط والعائلة واليوم الأول والتقدم في
`RandomDay/Scripts/ax_config/server.lua`. راجع [البدء](../../START_HERE.md) و
[اختيار الملف](../../CHOOSE_A_PROFILE.md) و[الإعداد](../../CONFIGURATION.md) و
[التشغيل](../../OPERATIONS.md).

`HardcoreMode=False` و`AllowIronMode=False` و`StructuralSupportLimit=0` و
`BridgeSupports=0` هي قيم افتراضية لهذا الإصدار وليست قواعد ثابتة للعبة.
[الإعداد المتقدم](../../CONFIGURATION.md#customize-the-shipped-profile-defaults)
يشرح كيفية تغييرها بشكل دائم.

تبقى الأوامر والمسارات والمفاتيح والحالات بالإنجليزية لتطابق الملفات الفعلية.

## إصدار ألفا وخيارات ثابتة عبر التدوير

هذا إصدار ألفا؛ تم اختبار مسارات التثبيت والتدوير والاستعادة الموثقة، مع استمرار تحسين التوافق وسهولة الاستخدام.

داخل `RandomDay/Scripts/ax_config/server.lua` يحتفظ `sandbox.profile_overrides` بالقيم الأربع لكل عائلة ويوم. أوقف الخادم، عدّلها مرة واحدة، ثم شغّله من جديد. تظل الدورات وعمليات التشغيل اللاحقة تستخدم القيم نفسها؛ أما تعديل `SandboxSettings.ini` وحده فهو مؤقت.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

التعديلات الاختيارية أدناه تنزيلات مستقلة من مؤلفيها. لا يعيد RandomDay توزيعها ولا يغيّر ميزاتها؛ المحوّل المفعّل يضبط فقط حقول الإعدادات الموجودة والمدعومة. شكرًا لمؤلفيها ومشرفيها.
