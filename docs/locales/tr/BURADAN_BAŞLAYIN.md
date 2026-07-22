<a id="start-here-complete-the-first-randomday-cycle"></a>
# Buradan başlayın: tamamlayın ilk RandomDay döngü

> **Kanonik İngilizce kaynağı:** [START_HERE.md](../../START_HERE.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Bu kılavuz RandomDay yüklendikten sonra başlar. Modun neyi değiştirdiğini, neyi kendi başına bıraktığını ve başarılı bir döngünün nasıl tanınacağını gösterir.

<a id="know-the-two-states"></a>
## İki durumu öğrenin

Abiyotik Faktör, RandomDay başlamadan önce dünyanın sanal alan ayarlarını okur. RandomDay bu nedenle açıkça adlandırılmış iki durumu korur:

- **Etkin profil:** geçerli oturumun zaten kullandığı kurallar.
- **Hazırlanan profil:** sonraki başlangıç ​​için kaydedilen kurallar.

Hazırlanan profil, halihazırda devam eden bir oturumu değiştirmez.

<a id="dedicated-server-prepare-the-next-profile"></a>
## Ayrılmış sunucu: sonraki profili hazırlayın

1. Sunucuyu normal şekilde başlatın.
2. RandomDay'in başlangıç işini bitirmesini bekleyin.
3. Yüklü mod klasöründe `RandomDay/web_export/today.html` dosyasını açın.
4. Bul **Etkin profil** ve **Hazırlanan profil**.

İlk başarılı başlangıçta, sayfada zaten etkin olan ve bekleyen farklı bir profil bulunmalıdır. bir sonraki başlangıç için. Sayfada ayrıca seçilen aile, konum ve hazırlanan dosyanın güvenlik kontrolünden geçip geçmediği de açıklanır.

Sadece durum değişikliği yapmak için yeniden başlatmayın. Planlanan bir sonraki sunucu başlangıcına kadar etkin kurallarla oynamaya devam edin.

<a id="dedicated-server-activate-it-later"></a>
## Ayrılmış sunucu: daha sonra etkinleştirin

1. Bir sonraki planlı yeniden başlatmada sunucuyu durdurun ve başlatın.
2. Okunabilir durum sayfasını tekrar açın.
3. Önceden hazırlanan profilin artık etkin olarak listelendiğini doğrulayın.
4. RandomDay'in aşağıdaki profili hazırladığını doğrulayın.

Hazırlama-sonra-etkinleştirme geçişinin tamamlandığını doğrulayın. RandomDay döngü.

<a id="temporary-dedicated-servers"></a>
## Geçici tahsis edilmiş sunucular

Geçici davranış aynı ayrılmış sunucu paketini kullanır. [Yapılandırma](YAPILANDIRMA.md), yeni bir çalıştırmanın belirli bir profilde mi başlayacağını yoksa rastgele bir başlangıç ​​noktası mı seçeceğini seçin. Durum sayfası hâlâ etkin profili bir sonraki başlangıç ​​için hazırlanan profilden ayırıyor.

<a id="singleplayer-or-lan"></a>
## Tek Oyunculu veya LAN

1. Oyunu singleplayer/LAN paketi kurulu olarak bir kez başlatın.
2. RandomDay tamamlandıktan sonra oyunu tamamen kapatın.
3. Oluşturulan özeti okuyun.
4. Oluşturulanı kopyalayın `SandboxSettings.ini` oyun kapalıyken seçtiğiniz dünyaya girin.
5. O dünyayı başlatın ve beklenen kuralları onaylayın.

Yerel paket hiçbir zaman bir dünya seçmez veya dosyayı tek başına bir kaydetme alanına kopyalamaz. [Tek Oyunculu ve LAN](TEK_OYUNCULU_LAN.md) prosedürün tamamı için.

<a id="if-the-expected-result-is-missing"></a>
## Beklenen sonuç eksikse

Yeniden başlatmaya devam etmeyin. Mevcut dosyaları koruyun ve [Sorun Giderme](SORUN_GIDERME.md). Normal sonuç her zaman etkin bir profili ve hazırlanmış bir profili ya da net bir hazırlık hatasını belirtir.

<a id="continue"></a>
## Devam

- [Bir oynatma stili seçin](PROFIL_SE%C3%87IN.md)
- [Başlangıç ​​ve ilerleme davranışını seçin](YAPILANDIRMA.md)
- [İşlet ve kurtar RandomDay](%C4%B0%C5%9ELEMLER.md)
- [Rotasyonu anlama](AILE_ROTASYONU.md)
