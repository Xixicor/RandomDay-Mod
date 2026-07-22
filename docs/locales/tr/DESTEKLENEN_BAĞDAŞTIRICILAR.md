<a id="supported-optional-mods"></a>
# Desteklenen İsteğe Bağlı Modlar

> **Kanonik İngilizce kaynağı:** [SUPPORTED_ADAPTERS.md](../../SUPPORTED_ADAPTERS.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


RandomDay ayrı olarak yüklenmiş bir modun etkin RandomDay profilini izlemesini sağlayabilir. Bu özellik yalnızca özel sunucu paketinde mevcuttur. singleplayer/LAN paketi hiçbir zaman başka bir modu düzenlemez.

RandomDay burada listelenen modların hiçbirini içermez veya yeniden dağıtmaz. Her isteğe bağlı modu kendi Nexus sayfasından yükleyip etkinleştirin ve önce yazarının talimatlarını izleyin. RandomDay yalnızca yüklü dosyada zaten mevcut olan tanınan ayarları değiştirir. Başka bir moda özellik eklemez ve bir adaptör, o modu kaldırmadan devre dışı bırakılabilir. Özel sunucu paketi, `external_mods.enabled = true`.

<a id="what-randomday-changes"></a>
## Ne RandomDay değişiklikleri

| İsteğe bağlı entegrasyon | Etkin profilden seçilen ayarlar |
| --- | --- |
| Kaotik Doğma Motoru / DynamicSpawns | Zor mod, player/area bekleme süresi davranışı, fırtına ve sıcak bölge etkinliği, boss ve patlama ortaya çıkışları, ortaya çıkma döngüsü zamanlaması, küçük ve büyük bekleme süresi aralıkları, ortaya çıkma mesafesi, global/local/mod sınırları, portal fırtınası, Sıra ihlali ve boss şansı ve alan başına minimum ortaya çıkma. |
| İsteğe bağlı Kaotik Doğuş Motoru uzantı alanları | Yüklü `SharedData.lua` ile başlar ve zaten RandomDay uzantı alanlarını içerir; bağdaştırıcı, karşılaşma profili, katman, tema, grup sınırları, özel etkinlik ve karma karşılaşma değerleri, bütçe, bekleme süresi ve dünya kapsamı kontrolleri sağlayabilir. Bu indirilecek başka bir mod değil. |
| Ölümcül Lazerler | Mod aktivasyonuna ek olarak konuşlandırılabilir yayıcılar, çevresel yayıcılar, reflektörler ve prizmalar için hasar ve etkinleştirme kontrolleri. |
| ANTE Yukarı | Yeniden doğma frekans çarpanı, Antevariant frekansı ve mevcut development/debug anahtarlar. RandomDay tanınan tüm geliştirme ve hata ayıklama düğmelerini kapalı tutar. |

Profil kitaplığı, desteklenen her gün için hazırlanmış bir değer kümesi sağlar. Sakin bir gün baskıyı azaltabilir, riskli bir gün baskıyı artırabilir ve toparlanma günü onu keskin bir şekilde azaltabilir. RandomDay önyükleme sırasında rastgele değerleri hesaplamaz; etkin profil tarafından adlandırılan gözden geçirilmiş değer kümesini uygular.

<a id="current-version-evidence"></a>
## Geçerli sürüm kanıtı

Bu tablo 20 Temmuz 2026'da gözden geçirilmiştir. "Tanınan", piyasaya sürülen bağdaştırıcının, adı geçen ayarlar için eksiksiz bir yerel düzen düzenine sahip olduğu anlamına gelir. Bu, gelecekteki her sürümün aynı dosya şekline sahip olacağı anlamına gelmez.

| İsteğe bağlı mod | Mevcut yukarı akış sürümü incelendi | RandomDay sürüm durumu |
| --- | --- | --- |
| [Kaotik Ortaya Çıkma Motoru](https://www.nexusmods.com/abioticfactor/mods/156) | Nexus sayfası `0.8.5`; mevcut ana dosya `0.8.5-Hotfix1` | Tanınan `DynamicSpawns/Scripts/SharedData.lua` ortaya çıkma, bekleme süresi, sınır, portal, ihlal ve boss ayar seti için düzen. |
| İsteğe bağlı Kaotik Doğuş Motoru uzantı alanları | Ayrı indirme yok; aynı içinde isteğe bağlı alanlar `SharedData.lua` | Yalnızca her uzantı alanı zaten mevcut olduğunda uygulanır. Bu alanlar olmadığında Spawn Engine kurulumları değişmeden kalır. Dahili bağdaştırıcı kimliği `encounter_director`; ayrı bir genel modun adını vermez. |
| [Ölümcül Lazerler](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Tanınan `LethalLasers/Scripts/main.lua` yukarıda listelenen tüm verici, ortam verici, reflektör ve prizma ayarları için düzen. |
| [ANTE Yukarı](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, 19 Temmuz 2026'da güncellendi | Serbest bırakılan bağdaştırıcı önceki bağdaştırıcıyı tanır `Settings.lua` alan kümesi. Geçerli dosyası fikstüre eklenene ve bağdaştırıcı işlem testlerini geçene kadar Sürüm 1'in uyumlu olduğu iddia edilmez. Düzeni farklıysa, RandomDay rapor eder `skipped_incompatible` ve değiştirmeden bırakır. |

<a id="how-recognition-protects-another-mod"></a>
## Tanıma başka bir modu nasıl korur?

Tanıdık bir dosya adı bulmak yeterli değildir. RandomDay, söz konusu bağdaştırıcı için gerekli tüm ayarların hedef dosyada mevcut olup olmadığını kontrol eder. Yalnızca mevcut atamaları yamalar; hiçbir zaman eksik bir ayar oluşturmaz.

Tanınan bir düzen için, RandomDay tek bir sınırlı işlem gerçekleştirir:

1. etkin profil için amaçlanan her değeri hesaplar;
2. her hedef dosyanın yedeğini oluşturun ve bayt kontrolü yapın;
3. kardeş bekleyen bir dosya aracılığıyla yazma;
4. bekleyen dosyayı tanıtın ve kaydedilen baytları geri okuyun;
5. amaçlanan her değeri onaylayın;
6. herhangi bir adım başarısız olursa, doğrulanmış yedeklerden otomatik geri yüklemeyi kullanın.

DynamicSpawns, ayarlarını ve tanınan oynatıcı mesaj dosyalarını tek bir işleme dahil edebilir. RandomDay işlemin tamamı tamamlanmadıkça çoklu dosya güncellemesinin başarılı olduğunu bildirmez.

<a id="read-an-adapter-result"></a>
## Bağdaştırıcı sonucunu okuyun

| Sonuç | Anlamı |
| --- | --- |
| `applied` | Tanınan ayarlar değiştirildi ve yeniden okumaya geçildi. |
| `already_current` | Tanınan ayarlar zaten etkin profille eşleşiyor. |
| `not_installed` | İsteğe bağlı mod bulunamadı. RandomDay bu olmadan devam etti. |
| `skipped_incompatible` | Bir dosya bulundu, ancak dosyanın tüm ayar düzeni tanınmadı. Hiçbir şey değişmedi. |
| `partial` | Birincil DynamicSpawns ayarları uygulandı, ancak isteğe bağlı çevrilmiş mesaj dosyası tamamlanmadı. Kaydedilen bağdaştırıcı sonucunu inceleyin. |
| `failed_rolled_back` | Bir işlem başarısız oldu ve önceki baytlar bozulmadan kaldı veya geri yüklenip doğrulandı. |
| `rollback_failed` | RandomDay değişikliği veya geri yüklemeyi doğrulayamadı. Etkilenen modu durdurun ve kaydedilen yedeklemeyi manuel olarak geri yükleyin. |

Eksik ve uyumsuz isteğe bağlı modlar, gönderilen yapılandırma altında RandomDay's gönderilen yapılandırma altında korumalı alan rotasyonu.

<a id="enable-or-disable-integrations"></a>
## Entegrasyonları etkinleştirin veya devre dışı bırakın

Kontroller şuradadır:

```text
RandomDay/Scripts/ax_config/server.lua
```

Ayrılmış sunucu paketi şununla birlikte gelir:

```lua
external_mods = {
    enabled = true,
    optional_by_default = true,
    patch_only_existing_keys = true,
    backup_before_write = true,
    adapters = {
        "lethal_lasers",
        "dynamic_spawns",
        "encounter_director",
        "ante_up"
    }
}
```

- Ayarla `enabled = false`, RandomDay'nin her isteğe bağlı modu incelemesini veya değiştirmesini durdurur.
- Diğer entegrasyonları etkin tutarken o modu yalnız bırakmak için bir bağdaştırıcı kimliğini kaldırın.
- `patch_only_existing_keys` ve `backup_before_write` ayarını `true` olarak tutun. Bunlar yazma güvenliği sınırıdır.
- `optional_by_default = true` listelenen her isteğe bağlı mod, sunucunun gerekli bir parçası olmadığı sürece. Bunu `false` olarak ayarlamak, eksik, uyumsuz veya güvenli bir şekilde geri alınan bağdaştırıcının toplu sonucu etkilemesine neden olur.

Kaldırmanıza veya devre dışı bırakmanıza gerek yoktur. RandomDay adaptörünü.

<a id="thanks-and-ownership"></a>
## Teşekkürler ve sahiplik

Yazarları ve bakımcıları sayesinde [Kaotik Ortaya Çıkma Motoru](https://www.nexusmods.com/abioticfactor/mods/156), [Ölümcül Lazerler](https://www.nexusmods.com/abioticfactor/mods/141) ve [ANTE Yukarı](https://www.nexusmods.com/abioticfactor/mods/201). Modları, kendi sayfaları, izinleri ve destek talimatları tarafından yönetilen ayrı indirmeler olarak kalır. RandomDay's bağdaştırıcılar yalnızca yüklü, tanınan düzende bulunan yapılandırma alanlarını kullanır; bu modları yeniden dağıtmaz veya değiştirmezler.

<a id="backups-and-manual-recovery"></a>
## Yedeklemeler ve manuel kurtarma

Doğrulanmış ön yazma kopyaları şu konumda tutulur:

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

Eğer `rollback_failed` görüntülenir:

1. oyunu veya sunucuyu durdurun;
2. ayarlayın `external_mods.enabled = false` veya etkilenen bağdaştırıcı kimliğini kaldırın;
3. geçerli hedef dosyayı ve onun kardeşini koruyun pending/rollback dosyalar;
4. numaralandırılmış yedekleme dosyalarını bağdaştırıcı sonucunda kaydedilen hedef yollarla eşleştirin;
5. hizmet durdurulduğunda doğrulanan baytları geri yükleyin;
6. isteğe bağlı modu yeniden etkinleştirmeden önce kendi kendine başlatın RandomDay adaptörünü.

Ayarları yeniden adlandırarak veya eksik anahtarları ekleyerek uyumluluğu zorlamayın. Destek talebini genişletmeden önce tanınmış bir düzen kullanın, bağdaştırıcıyı devre dışı bırakın veya yeni bir sürüm fikstürü ve işlem testi ekleyin.
