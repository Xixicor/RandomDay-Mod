<a id="singleplayer-and-lan-manual-workflow"></a>
# Tek Oyunculu ve LAN manuel iş akışı

> **Kanonik İngilizce kaynağı:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


RandomDay's singleplayer/LAN paketi tam bir `SandboxSettings.ini` mod klasörünün içinde. Oyun kapalıyken dünyayı seçip dosyayı manuel olarak kopyalıyorsunuz.

Paket bu çıktıya kilitlendi:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Ayrılmış sunucu sanal alan yazmalarını, korumalı alan aynalarını ve tüm isteğe bağlı bağdaştırıcı yazmalarını devre dışı bırakır. Arama yapmaz AppData, Steam kullanıcı verileri, Belgeler, kaydetme klasörleri, sunucu klasörleri veya üçüncü taraf mod klasörleri.

<a id="understand-the-manual-boundary"></a>
## Manuel sınırı anlayın

Başlamadan önce deneyimi şurada yapılandırın: `RandomDay/Scripts/ax_config/server.lua`. Manuel paket kabul edilir `experience.mode="auto"` veya `"singleplayer_lan"`. Sabit veya rastgele bir ilk gün ve sıralı veya tekrarlanmayan rastgele 17 günlük bir sipariş seçebilirsiniz. Aile seçimi, özel bir sunucuyla aynı seçili, dönüşümlü veya yinelenmeyen rastgele aile ayarlarını kullanır.

Oluşturulan çıktı işaretçiyi içerir RandomDay sonraki işlemi okur. Durumu hizalı tutmak için, başka bir oluşturma işlemine başlamadan önce oluşturulan dosyayı seçilen durdurulmuş dünyaya kopyalayın. Kopyalamadan tekrar tekrar başlamak, dünya önceki çıktıyı hiç yüklememiş olsa bile mod-yerel sırayı ilerletebilir.

Kuralları takip edin [tek oyunculu veya LAN kurulum prosedürü](Y%C3%9CKLEME.md#singleplayer-or-lan). Bu sayfada manuel sınır açıklanmaktadır; başka bir yükleme yöntemi tanımlamaz.

İlk nesil bir profil hazırlar; o oyun süreci tarafından önceden yüklenmiş olan kuralları değiştiremez. Kapatın, kopyalayın ve kullanmaya yeniden başlayın. Döngüyü yalnızca bilinçli olarak bir sonraki günün devam etmesini istediğinizde tekrarlayın.

Kaldırılıyor RandomDay manuel olarak kopyaladığınız bir dünya dosyasını geri yüklemez; Bu geri alma işlemi için kendi yedeğinizi kullanın. Takip et [Herhangi bir yüklemeyi kaldırın veya geri alın](Y%C3%9CKLEME.md#remove-or-disable-randomday).
