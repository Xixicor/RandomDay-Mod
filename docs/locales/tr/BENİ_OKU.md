# Türkçe RandomDay rehberi

> [!IMPORTANT]
> ## Proje durumu — RandomDay testleri tamamlandı
>
> RandomDay test çalışması tamamlandı ve herkese açık test sunucusu yakında kapatılacak.
>
> Bu çalışma sırasında RandomDay ve RandomDayGuard; tekrarlanan profil dönüşümleri, normal ve kesintiye uğramış sunucu yeniden başlatmaları, kurtarma ve geri alma kontrolleri, genişletilmiş mod entegrasyonu, sunucu kanıtlarının toplanması ve operatör raporlarının incelenmesi boyunca birlikte çalıştırıldı.
>
> Böylece hedeflediğimiz bilgiyi edindik: dönüşümlü sandbox profillerinin gerçek ayrılmış sunucu yaşam döngülerindeki davranışı; RandomDay’in desteklenen genişletilmiş modlarla etkileşimi; ve RandomDayGuard’ın boşlukları veya tahminleri gerçekmiş gibi sunmadan sunucunun yazdığı kanıtları ne ölçüde yararlı ve temkinli bir izlemeye dönüştürebildiği.
>
> **Test sunucusunda kullanılan bileşenler:**
>
> - RandomDay özel geliştirme yapısı `v0.41.76`
> - RandomDayGuard özel geliştirme yapısı `v0.46.130`
> - Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
> - Lethal Lasers `1.0 UE4SS`
> - ANTE Up `0.26`
> - Encounter Director integration — RandomDay’e ait bir DynamicSpawns uzantısıdır, ayrı dağıtılan bir mod değildir
> - UE4SS `v3.0.1 Beta #0` (Git `01e0a584`; Nexus `v3.0.1-940-g01e0a584`)
> - Abiotic Factor ayrılmış sunucusu `1.4.0.27939`
>
> Şu anda yayımlanan paketler RandomDay `v0.3.16-alpha` ve RandomDayGuard `v0.4.12-alpha` olarak kalmaktadır.
>
> Her iki projenin geliştirilmesi şimdilik duraklatıldı. Mevcut sürümler ve belgeler erişilebilir kalacak; çalışmayı yeniden sürdürme isteği duyduğumuzda geri dönebiliriz.
>
> Bu bileşen listesi çalışma sırasında kullanılanları belgeler; asgari sürüm şartı veya oyunun, loader’ın ya da modların sonraki sürümleriyle uyumluluk garantisi değildir. Resmî olarak kaydedilen son döngüde Abiotic Factor `1.4.0.27939` kullanıldı.

**v0.3.16-alpha**

RandomDay, Abiotic Factor’ın sonraki başlangıcı için eksiksiz bir
`SandboxSettings.ini` hazırlar. Çalışan oturumun yüklediği kuralları değiştirmez.
Etkin profil ile hazırlanmış profil ayrı tutulur.

## Kurulum ve doğrulama

[Kurulum kılavuzunu](Y%C3%9CKLEME.md) izleyin. Doğru klasör
`ue4ss/Mods/RandomDay` olmalı ve `mods.txt` içinde `RandomDay : 1` bulunmalıdır.
İlk başlangıç genellikle hazırlar, sonraki başlangıç profili etkinleştirir.

`runtime/current/randomday_status.json`, `runtime/rotation_state.txt` ve
`web_export/today.json` dosyalarını kontrol edin. Etkin ve hazırlanmış kimlikler
üç dosyada da tutarlı olmalıdır.

## Deneyimi seçme

Modu, aileyi, başlangıç gününü ve ilerlemeyi
`RandomDay/Scripts/ax_config/server.lua` içinde ayarlayın. [Başlangıç](BURADAN_BA%C5%9ELAYIN.md),
[Profil seçimi](PROFIL_SE%C3%87IN.md), [Yapılandırma](YAPILANDIRMA.md)
ve [İşletim](%C4%B0%C5%9ELEMLER.md) belgelerini kullanın.

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` ve
`BridgeSupports=0` bu sürümün varsayılanlarıdır; değişmez oyun kuralları
değildir. [Gelişmiş yapılandırma](YAPILANDIRMA.md#customize-the-shipped-profile-defaults)
kalıcı değişikliği açıklar.

Komutlar, yollar, anahtarlar ve durumlar gerçek dosyalarla eşleşmesi için İngilizcedir.

## Alfa sürüm ve kalıcı seçimler

Bu bir alfa sürümüdür. Belgelenen kurulum, döngü ve kurtarma yolları test edildi; uyumluluk ve kullanım kolaylığı geliştirilmeye devam ediyor.

`RandomDay/Scripts/ax_config/server.lua` içindeki `sandbox.profile_overrides`, dört değeri her aile ve gün için korur. Sunucuyu durdurun, bir kez değiştirin ve yeniden başlatın. Sonraki döngüler ve başlangıçlar aynı değerleri kullanır; yalnızca `SandboxSettings.ini` dosyasını değiştirmek geçicidir.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Aşağıdaki isteğe bağlı modlar kendi yazarlarının ayrı indirmeleridir. RandomDay bunları yeniden dağıtmaz veya özelliklerini değiştirmez; etkin bir bağdaştırıcı yalnızca mevcut ve desteklenen ayarları düzenler. Yazarlarına ve bakımcılarına teşekkür ederiz.

## Tam dokümantasyon kitaplığı

Her genel Markdown belgesi yerelleştirilmiş dosya adlarıyla bu dilde mevcuttur.

- [Yerelleştirilmiş dokümantasyon dizinini aç](BELGELER.md)
