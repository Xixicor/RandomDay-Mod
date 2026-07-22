<a id="compatibility"></a>
# Uyumluluk

> **Kanonik İngilizce kaynağı:** [COMPATIBILITY.md](../../COMPATIBILITY.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


<a id="supported-installations"></a>
## Desteklenen kurulumlar

RandomDay, UE4SS Lua modlarını yükleyebilen Abiyotik Faktör kurulumları için tasarlanmıştır.

| Ortam | Destek | Paket |
| --- | --- | --- |
| Windows özel sunucu | Desteklenir | Dedicated-server ZIP |
| Windows tek oyunculu veya LAN ana bilgisayar | Desteklenen manuel kopyalama iş akışı | Singleplayer/LAN ZIP |
| Wine veya Wine kullanan Linux sunucusu Proton | Sürüm testi yapılmamıştır | Windows'a özel paket deneyimli operatörler tarafından değerlendirilebilir, ancak uyumluluk sözü verilmemektedir. |
| Xbox ve PlayStation | Desteklenmiyor | Bu platformlar, bu sürümün gerektirdiği dosya erişimini ve UE4SS Lua yükleme yolunu sağlamaz. |

RandomDay iki paketi birleştirmez. Yalnızca ara sıra oynatmak için başlatılan özel bir sunucu, yine de özel sunucu ZIP kullanır ve yapılandırmada geçici davranışı seçer.

<a id="abiotic-factor-updates"></a>
## Abiyotik Faktör güncellemeleri

Bir oyun güncellemesinden sonra, sunucu durdurulmuş halde başlayın ve dünyanın, `SandboxSettings.ini` ve RandomDay durumu. UE4SS yüklemesini onaylayın, ardından bir RandomDay döngüsünü tamamlayın ve normal dönüşe devam etmeden önce hem etkin hem de hazırlanmış profili kontrol edin.

<a id="companion-mods"></a>
## Yardımcı modlar

RandomDay, ayrı olarak yüklenmiş bir modu yalnızca tüm ayarlar düzeni desteklenen bir adaptörle eşleştiğinde değiştirir. Tek başına sürüm numarası yeterli değildir.

| Entegrasyon | Mevcut sürüm incelendi | RandomDay destek sınırı |
| --- | --- | --- |
| Kaotik Doğma Motoru / DynamicSpawns | `0.8.5`; ana dosya `0.8.5-Hotfix1` | Desteklenen `SharedData.lua` düzeni, bağdaştırıcı referansında listelenen doğuş, bekleme süresi, nüfus, portal, ihlal, bölüm sonu canavarı ve RandomDay karşılaşma ayarlarını kapsar. |
| Ölümcül Lazerler | `1.0-UE4SS` | Desteklenen `Scripts/main.lua` düzeni, tanınan yayıcı, çevresel yayıcı, yansıtıcı ve prizma ayarlarını kapsar. |
| ANTE Yukarı | `1`, 19 Temmuz 2026'da güncellendi | Geçerli genel düzen bağdaştırıcı düzenlemesini tamamlamadı. RandomDay, düzen doğrulanana kadar eşleşmeyen bir dosyayı değiştirilmeden atlar. |

Yok olan, devre dışı bırakılan veya tanınmayan bir tamamlayıcı mod değiştirilmeden bırakılır. [Desteklenen isteğe bağlı modlara](DESTEKLENEN_BA%C4%9EDA%C5%9ETIRICILAR.md).

<a id="what-compatibility-validation-proves"></a>
## Uyumluluk doğrulaması neyi kanıtlar?

Depo doğrulaması, gönderilen paket düzenini, yapılandırma kapsamını, tanınan bağdaştırıcı alanlarını, yedekleme ve geri yükleme davranışını ve bilinmeyen bir düzenin güvenli bir şekilde reddedildiğini kanıtlayabilir. Gelecekteki her Abiyotik Faktörü kanıtlayamaz, UE4SS veya tamamlayıcı mod sürümü. Sürüm notları, başarılı bir yüklemenin uyumluluğunu varsaymak yerine, test edilen sürümleri adlandırır.
