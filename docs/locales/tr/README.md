# Türkçe RandomDay rehberi

**v0.3.16-alpha**

RandomDay, Abiotic Factor’ın sonraki başlangıcı için eksiksiz bir
`SandboxSettings.ini` hazırlar. Çalışan oturumun yüklediği kuralları değiştirmez.
Etkin profil ile hazırlanmış profil ayrı tutulur.

## Kurulum ve doğrulama

[Kurulum kılavuzunu](../../../INSTALL.md) izleyin. Doğru klasör
`ue4ss/Mods/RandomDay` olmalı ve `mods.txt` içinde `RandomDay : 1` bulunmalıdır.
İlk başlangıç genellikle hazırlar, sonraki başlangıç profili etkinleştirir.

`runtime/current/randomday_status.json`, `runtime/rotation_state.txt` ve
`web_export/today.json` dosyalarını kontrol edin. Etkin ve hazırlanmış kimlikler
üç dosyada da tutarlı olmalıdır.

## Deneyimi seçme

Modu, aileyi, başlangıç gününü ve ilerlemeyi
`RandomDay/Scripts/ax_config/server.lua` içinde ayarlayın. [Başlangıç](../../START_HERE.md),
[Profil seçimi](../../CHOOSE_A_PROFILE.md), [Yapılandırma](../../CONFIGURATION.md)
ve [İşletim](../../OPERATIONS.md) belgelerini kullanın.

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` ve
`BridgeSupports=0` bu sürümün varsayılanlarıdır; değişmez oyun kuralları
değildir. [Gelişmiş yapılandırma](../../CONFIGURATION.md#customize-the-shipped-profile-defaults)
kalıcı değişikliği açıklar.

Komutlar, yollar, anahtarlar ve durumlar gerçek dosyalarla eşleşmesi için İngilizcedir.

## Alfa sürüm ve kalıcı seçimler

Bu bir alfa sürümüdür. Belgelenen kurulum, döngü ve kurtarma yolları test edildi; uyumluluk ve kullanım kolaylığı geliştirilmeye devam ediyor.

`RandomDay/Scripts/ax_config/server.lua` içindeki `sandbox.profile_overrides`, dört değeri her aile ve gün için korur. Sunucuyu durdurun, bir kez değiştirin ve yeniden başlatın. Sonraki döngüler ve başlangıçlar aynı değerleri kullanır; yalnızca `SandboxSettings.ini` dosyasını değiştirmek geçicidir.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Aşağıdaki isteğe bağlı modlar kendi yazarlarının ayrı indirmeleridir. RandomDay bunları yeniden dağıtmaz veya özelliklerini değiştirmez; etkin bir bağdaştırıcı yalnızca mevcut ve desteklenen ayarları düzenler. Yazarlarına ve bakımcılarına teşekkür ederiz.
