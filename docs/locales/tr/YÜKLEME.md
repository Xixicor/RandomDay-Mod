<a id="install-update-or-remove-randomday"></a>
# Yükleme, güncelleme veya kaldırma RandomDay

> **Kanonik İngilizce kaynağı:** [INSTALL.md](../../../INSTALL.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


RandomDay iki tam indirmeye sahiptir. Kurduğunuz dünya için birini seçin:

- Sadece arada sırada açılan bir sunucu da dahil olmak üzere herhangi bir özel sunucu için **dedicated-server'ı ZIP** kullanın;
- Sadece arada sırada açılan bir sunucu da dahil olmak üzere herhangi bir özel sunucu için **singleplayer/LAN ZIP** ayarlarını manuel olarak kopyalayacağınız yerel bir dünya için.

Paketleri birleştirmeyin. Kalıcı veya geçici özel sunucu, RandomDay's ayarları, farklı bir indirme değil.

<a id="before-you-begin"></a>
## Başlamadan önce

Şunların geri yüklenebilir bir kopyasını oluşturun:

- değiştirdiğiniz dünyanın;
- mevcut `SandboxSettings.ini`;
- mevcut `RandomDay` klasörü (eğer yüklüyse).

UE4SS yükleyin. Aşağıdaki talimatlarda **Mods klasörü**, RandomDay. Aşağıdaki talimatlarda, **Mods klasörü**, `ue4ss/Mods/` dizini anlamına gelir.

<a id="dedicated-server"></a>
## Ayrılmış sunucu

<a id="new-installation"></a>
### Yeni kurulum

1. Sunucuyu durdurun.
2. Onu açma UE4SS `Mods` klasörünü seçin.
3. Ayrılmış sunucuyu çıkarma ZIP anlamına gelir. Sonuç bir `ue4ss/Mods/RandomDay/` klasörü, başka bir klasör içindeki bir klasör değil `RandomDay` klasörünü seçin.
4. Bu klasörü açın ve `RandomDay/Scripts/main.lua` mevcut olmalıdır. Eksikse, ZIP yanlış düzeye çıkarılmıştır.
5. Yüklü mod klasöründe UE4SS `mods.txt` ve şu satırı etkinleştirin:

   ```text
   RandomDay : 1
   ```

6. Sunucuyu normal şekilde başlatın.
7. Yüklü mod klasöründe RandomDay's okunabilir durum sayfası anlamına gelir ve hem etkin profili hem de bir sonraki başlangıç için hazırlanan profili adlandırdığını doğrular.

İlk başlatma, o oturum tarafından önceden yüklenmiş olan kuralların yerine geçmez. Bir sonraki profili hazırlar. Sunucuyu yalnızca hazırlanan profilin gerçekten etkin olmasını istediğinizde yeniden başlatın.

[İlk döngüyü kontrol edin](BURADAN_BA%C5%9ELAYIN.md)

<a id="choose-always-on-or-temporary-behavior"></a>
### Her zaman açık veya geçici davranışı seçin

Dedicated-server paketi her iki stili de destekler:

- **kalıcı adanmış** normal yeniden başlatmalarda kaydedilen rotasyonu sürdürür;
- **geçici olarak ayrılmış** yeni bir geçici çalıştırma başladığında yapılandırılmış veya rastgele başlangıç noktasından başlayabilir.

[Yapılandırma](YAPILANDIRMA.md) içindeki davranışı seçin. Bu ayarı değiştirmek için ikinci bir paket yüklemeyin.

<a id="update-an-existing-installation"></a>
### Mevcut bir kurulumu güncelleyin

1. Sunucuyu durdurun ve yukarıda listelenen yedeklemeleri kullanın.
2. Eski `RandomDay` klasörü UE4SS `Mods` klasörünün dışına taşıyın. Güncelleme başarılı bir döngüyü tamamlayana kadar saklayın.
3. Yeni ayrılmış sunucuyu çıkarın ZIP içine `Mods` klasörünü seçin.
4. Başka bir güncellemeyi denemeden önce, ilk eksik veya başarısız adım için, yalnızca kasıtlı olarak değiştirdiğiniz ve yeni [yapılandırma kılavuzu](YAPILANDIRMA.md).
5. Belgelenen rotasyon durumu dosyalarını yalnızca sürüm notlarında formatlarının uyumlu olduğu belirtildiğinde saklayın. Eski geçici çıktıyı veya başarısız yazma dosyalarını yeni kuruluma kopyalamayın.
6. Onayla `RandomDay : 1` hâlâ etkin, ardından sunucuyu bir kez başlatın ve etkin ve hazırlanmış profil adlarını kontrol edin.

<a id="updating-from-v0315-alpha"></a>
### Güncelleme v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip` eski temel paketti. `RandomDay_v0.3.15-alpha_singleplayer_patch.zip` bir yer paylaşımıydı ve bağımsız bir indirme değildi.

Mevcut `v0.3.16-alpha`, geçmiş temel ve yer paylaşımı düzenlemesini iki tam paketle değiştiriyor. Eski yamayı her iki pakete de yerleştirmeyin. Mevcut işaretleyiciler `.randomday_mode=dedicated_server` ve `.randomday_mode=singleplayer_manual`.

<a id="singleplayer-or-lan"></a>
## Tek Oyunculu veya LAN

singleplayer/LAN paketi bir ayarlar dosyası oluşturur; kişisel kaydetmeyi kendi başına aramaz veya değiştirmez.

1. Oyunu kapatın.
2. Dünyayı ve mevcut durumunu yedekleyin `SandboxSettings.ini`.
3. singleplayer/LAN ZIP oyunun içine UE4SS `Mods` klasörüne çıkarın `Mods/RandomDay/` klasörü mevcut.
4. UE4SS'de `RandomDay : 1` UE4SS `mods.txt`.
5. Oyunu bir kez başlatın, bekleyin RandomDay bitirip oyunu tamamen kapatın.
6. Oluşturulan `SandboxSettings.ini` RandomDay's `runtime/singleplayer_manual/` klasörünü seçin.
7. Oluşturulan özeti okuyun, ardından dosyayı seçtiğiniz dünyaya kopyalayın.
8. O dünyayı başlatın ve beklenen korumalı alan davranışının etkin olup olmadığını kontrol edin.

LAN, ana bilgisayar yerel dünyanın sahibi olduğundan aynı manuel işlemi kullanır. Mod, otomatik olarak bir dünya seçmez veya üzerine yazmaz.

[Tek Oyunculu ve LAN kılavuzunda](TEK_OYUNCULU_LAN.md)

<a id="remove-or-disable-randomday"></a>
## Kaldırın veya devre dışı bırakın RandomDay

1. Oyunu veya sunucuyu durdurun.
2. Dünyayı, mevcut korumalı alan ayarlarını yedekleyin ve RandomDay's durumunda hala mevcut olan ayarları yeniden uygulayın.
3. Ayarla `RandomDay : 0` UE4SS `mods.txt` modu devre dışı bırakmak veya tamamını taşımak için `RandomDay` klasörü `Mods` klasörünü kaldırabilirsiniz.
4. Hangisine karar verin `SandboxSettings.ini` yüklenmelidir. Halihazırda hazırlanmış olanı istemiyorsanız ön yükleme kopyanızı geri yükleyin RandomDay profili.
5. Herhangi bir yedeklemeyi silmeden önce dünyayı başlatın ve kurallarını onaylayın.

Devre dışı bırakılıyor RandomDay gelecekteki profil hazırlığını durdurur. Zaten diskte bekleyen sanal alan dosyasını yeniden yazmaz.

<a id="recover-from-an-unsuccessful-update"></a>
## Başarısız bir güncellemeden kurtarma

İlk temizleme hatasından sonra dur. Tekrarlanan yeniden başlatmalar, hangi profilin etkin olduğunu, hangisinin beklediğini görmeyi zorlaştırabilir.

1. Oyunu veya sunucuyu durdurun.
2. Başarısız kurulumu silmeden bir kenara taşıyın.
3. Tamamını geri yükle RandomDay güncellemeden önce klasör ve korumalı alan yedeklemesi yapıldı.
4. Bir kez başlayın ve geri yüklenen etkin ve hazırlanmış profil adlarını onaylayın.
5. Geçici olarak [Sorun Giderme](SORUN_GIDERME.md).

<a id="more-help"></a>
## Daha fazla yardım

- [İlk döngü](BURADAN_BA%C5%9ELAYIN.md)
- [Bir profil seçin](PROFIL_SE%C3%87IN.md)
- [Yapılandırma](YAPILANDIRMA.md)
- [İşlemler ve kurtarma](%C4%B0%C5%9ELEMLER.md)
- [Sorun Giderme](SORUN_GIDERME.md)
- [Uyumluluk](UYUMLULUK.md)

Sürüm bakımcıları derleme ve paket kontrollerini [Yayın doğrulama](S%C3%9CR%C3%9CM_DO%C4%9ERULAMASI.md) içinde bulabilirler. Normal bir kurulum için bunlara gerek yoktur.
