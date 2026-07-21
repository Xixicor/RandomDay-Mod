# اردو میں RandomDay رہنما

**v0.3.16-alpha**

RandomDay اگلے Abiotic Factor آغاز کے لیے مکمل `SandboxSettings.ini` تیار کرتا
ہے۔ یہ جاری سیشن کے اصول نہیں بدلتا؛ فعال پروفائل اور اگلا تیار پروفائل الگ
حالتوں میں دکھائے جاتے ہیں۔

## تنصیب اور تصدیق

[تنصیب کی رہنمائی](../../../INSTALL.md) پر عمل کریں۔ درست فولڈر
`ue4ss/Mods/RandomDay` ہے اور `mods.txt` میں `RandomDay : 1` ہونا چاہیے۔ عموماً
پہلا آغاز پروفائل تیار کرتا ہے اور اگلا آغاز اسے فعال کرتا ہے۔

`runtime/current/randomday_status.json`، `runtime/rotation_state.txt` اور
`web_export/today.json` دیکھیں۔ تینوں میں فعال اور تیار پروفائل کی شناخت ایک
جیسی ہونی چاہیے۔

## تجربہ منتخب کریں

`RandomDay/Scripts/ax_config/server.lua` میں موڈ، خاندان، پہلا دن اور پیش رفت
مقرر کریں۔ [آغاز](../../START_HERE.md)، [پروفائل منتخب کریں](../../CHOOSE_A_PROFILE.md)،
[ترتیب](../../CONFIGURATION.md) اور [مسئلہ حل](../../TROUBLESHOOTING.md) پڑھیں۔

`HardcoreMode=False`، `AllowIronMode=False`، `StructuralSupportLimit=0` اور
`BridgeSupports=0` فراہم کردہ پروفائل بلڈر کی ابتدائی قدریں ہیں، Abiotic Factor
کے لازمی اصول نہیں۔ انہیں بدلنے اور پروفائل دوبارہ بنانے کا طریقہ ترتیب کی
دستاویز میں موجود ہے۔

اصل فائلوں سے درست مطابقت کے لیے کمانڈ، راستے، INI کلیدیں اور حالتیں انگریزی
میں رہتی ہیں۔

## الفا ریلیز اور برقرار رہنے والے انتخاب

یہ الفا ریلیز ہے۔ دستاویزی تنصیب، گردش اور بحالی کے راستے آزمائے گئے ہیں؛ مطابقت اور استعمال میں آسانی مزید بہتر کی جا رہی ہے۔

`RandomDay/Scripts/ax_config/server.lua` میں `sandbox.profile_overrides` چاروں قدروں کو ہر خاندان اور دن کے لیے برقرار رکھتا ہے۔ سرور بند کریں، ایک بار ترمیم کریں اور پھر شروع کریں۔ بعد کی گردشیں اور آغاز وہی قدریں استعمال کرتے ہیں؛ صرف `SandboxSettings.ini` بدلنا عارضی ہے۔

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

نیچے دیے گئے اختیاری موڈ اپنے مصنفین کے الگ ڈاؤن لوڈ ہیں۔ RandomDay انہیں دوبارہ تقسیم نہیں کرتا اور نہ ان کی خصوصیات بدلتا ہے؛ فعال اڈاپٹر صرف موجود اور معاون ترتیبات بدلتا ہے۔ مصنفین اور نگہبانوں کا شکریہ۔
