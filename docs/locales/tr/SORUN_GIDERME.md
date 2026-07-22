<a id="troubleshooting"></a>
# Sorun Giderme

> **Kanonik İngilizce kaynağı:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


İlk başarısız kontrolde dur. Mevcut sanal alanı koru, `runtime/`, `web_export/` ve alakalı `UE4SS.log` kurtarmayı denemeden önce.

<a id="try-these-common-fixes-first"></a>
## Önce bu yaygın düzeltmeleri deneyin

1. **RandomDay hiçbir zaman görünmez:** onaylayın `RandomDay` klasörü doğrudan içindedir `ue4ss/Mods`, etkinleştir `RandomDay : 1` `mods.txt` ve bir kez başlayın.
2. **Geçerli oturum eski kurallarını korudu:** bu normaldir. RandomDay sonraki profili hazırlar; oyun daha sonraki bir başlangıçta onu yüklüyor.
3. **Aynı profil sürekli olarak geri dönüyor:** bir sunucu paneli değiştiriliyor olabilir `SandboxSettings.ini`. Yetkili bir sanal alan dosyası kullanın ve `web_export/today.html`.
4. **İsteğe bağlı bir mod profili takip etmedi:** aç [Desteklenen isteğe bağlı modlara](DESTEKLENEN_BA%C4%9EDA%C5%9ETIRICILAR.md). Eksik, devre dışı bırakılmış veya tanınmayan isteğe bağlı mod değiştirilmeden bırakılır.
5. **RandomDay bir yazma veya geri yükleme hatası bildiriyor:** başka bir yeniden başlatmadan önce durun, koruyun `runtime/backups/` ve aşağıdaki adlı kurtarma bölümünü izleyin.

Bu beş kontrol sorunu tanımlamıyorsa ayrıntılı karar ağacıyla devam edin.

<a id="choose-the-first-failed-stage"></a>
## Başarısız olan ilk aşamayı seçin

Gerçekte kanıtlayabildiğiniz şeyle eşleşen ilk satırı kullanın. En ciddi açıklamayla başlamayın ve alakasız çıktı arızalarını tek bir teşhiste birleştirmeyin.

| Gözlemleyebilecekleriniz | Önce kontrol edin | Devam et | Beklenen sonuç |
|---|---|---|---|
| Hayır `[RandomDay]` başlangıç ​​satırı şurada mevcut `UE4SS.log`. | Kökü, paket işaretleyicilerini yükleyin, `mods.txt` ve UE4SS Lua başlangıcını koruyun. | [Eksik bir RandomDay dosyasını geri yükleyin start](#restore-a-missing-randomday-start) | Bir başlangıç ​​satırı yayın ve paket modunu adlandırır veya hata yüklemeyle sınırlıdır. |
| RandomDay yüklendi, ancak hiçbir profil hazır olmadı. | İlk başlatma, yapılandırma, hedef, işlem veya durum hatası. | [Başarısız hazırlıktan kurtarma](#recover-from-failed-preparation), ardından [durum ve hata referansı](DURUM_VE_HATA_REFERANSI.md) | Tam bir kod, bir sonraki güvenli eylemi tanımlar. |
| Hazırlanmış bir profil mevcut ancak çalıştırma kuralları değişmedi. | Etkin ve hazırlanmış kimlikler `today.json` veya `today.html`. | [Yeniden başlatma sınırını onaylayın](#confirm-the-restart-boundary) | Geçerli oturum etkin kalır; hazırlanan profil daha sonraki bir başlatmayı bekler. |
| 1. gün veya başka bir gün, yeniden başlatmanın ardından tekrarlanıyor. | Panel başlamadan önce, panel başladıktan sonra ve hazırlıktan sonra korumalı alan işaretçileri. | [Yinelenen hazırlığı durdur](#stop-repeated-preparation) | Yetkili yazar veya üzerine yazma noktası tanımlanır. |
| Korumalı alan sağlıklı ancak isteğe bağlı bir mod atlandı veya başarısız oldu. | Bireysel bağdaştırıcının sonucu ve uyumluluk kanıtı. | [Atlanan bir bağdaştırıcıyı teşhis edin](#diagnose-a-skipped-adapter) veya [Bağdaştırıcı geri alma hatasını kurtarma](#recover-an-adapter-rollback-failure) | Bağdaştırıcının durumuna, korumalı alandan bağımsız olarak karar verilir sağlık. |
| Manuel singleplayer/LAN dosyası yok. | Paket modu ve sınırlanmış çıktı klasörü. | [Eksik bir tane oluştur singleplayer/LAN dosyası](#generate-a-missing-singleplayerlan-file) | Dosya, kişisel bir kayıt bulunmadan RandomDay içinde oluşturuldu. |
| Yalnızca oynatıcıya yönelik mesaj eksik veya kötü bir şekilde sarılmış. | Mesaj geçiş günlüğü, kaynak önizleme ve belgelenmiş sınırlar. | [Bir mesaj sorununu teşhis edin](#diagnose-a-message-problem) | Sunum, profil kanıtı olarak değerlendirilmeden test edilir. |

<a id="follow-the-safe-diagnostic-order"></a>
### Güvenli tanılama sırasını izleyin

1. Dosyaları değiştirmeden önce mevcut kanıtları koruyun.
2. RandomDay'nin yüklenip yüklenmediğini kanıtlayın.
3. Belgelenen sonuca ulaşmayan ilk aşamayı bulun.
4. Çalışma zamanından tam durumu veya hata değerini kopyalayın. çıktı.
5. Güvenli bir yanıt için aşağıdaki eşleşen tablo satırını kullanın.
6. Başka bir başlatmadan önce hedef ve dönüş durumunu tekrar okuyun.

Hiçbir satır eşleşmezse [Çalışma Zamanı Durumu ve Çıkış Referansı](%C3%87ALI%C5%9EMA_ZAMANI_%C3%87IKI%C5%9ELARI.md) yapılandırmayı değiştirmeden önce üreticiyi ve alan anlamını tanımlamak için.

<a id="restore-a-missing-randomday-start"></a>
## Eksik bir RandomDay dosyasını geri yükleyin start

**Büyük olasılıkla sınırlı neden:** yanlış çıkartma düzeni, devre dışı bırakılmış mod, yanlış paket modu veya UE4SS Lua giriş noktasını yüklemedi.

**Tam kontrol:** onayla `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version` ve `RandomDay/Scripts/main.lua`; onayla `RandomDay : 1` `mods.txt`; `UE4SS.log` için `[RandomDay]`.

**Beklenen sonuç:** bir başlangıç satırı sürüm kimliğini ve paket modunu adlandırır.

**Güvenli sonraki eylem:** durdurulduğunda düzeni veya etkinleştirmeyi düzeltin, ardından bir kez başlayın.

**Çıkarıda bulunma:** hayır RandomDay satırı bir oyun veya profil hatasını kanıtlamıyor.

<a id="confirm-the-restart-boundary"></a>
## Yeniden başlatma sınırını onaylayın

**Büyük olasılıkla sınırlı neden:** normal bir sonraki yeniden başlatma davranışı.

**Tam kontrol:** etkin ve hazır olanı karşılaştırın family/day `web_export/today.json` veya `today.html`.

**Beklenen sonuç:** hazırlanan profil, etkin profilden farklıdır veya açıkça ondan farklıdır.

**Güvenli sonraki eylem:** yalnızca onu etkinleştirmeye hazır olduğunuzda yeniden başlatın, ardından etkin işaretçiyi doğrulayın.

**Çıkarıda bulunma:** hazırlanmış bir profil, yeniden başlatma sonrası okumadan önce etkin değildir.

<a id="stop-repeated-preparation"></a>
## Yinelenen hazırlığı durdur

**Büyük olasılıkla sınırlı neden:** etkin RandomDay işaretçisi eksik çünkü bir sunucu paneli veya başka bir araç yeniden yazıldı `SandboxSettings.ini` yeniden yazdı.

**Tam kontrol:** korumalı alan dosyasını ve onun RandomDay işaretçisini başlatmadan hemen önce, panel başlatıldıktan sonra ve RandomDay dosyayı hazırladıktan sonra karşılaştırın.

**Beklenen sonuç:** dosyasını karşılaştırır, bir sonraki önyüklemede mevcut olan dosya, hazırlanan işaretçiyi korur.

**Güvenli sonraki eylem:** bir yetkili sanal alan kaynağı yapılandırın ve çakışan panelin yeniden yazılmasını devre dışı bırakın.

**Çıkarıda bulunma:** 1. Günün tekrarlanması, aile seçicinin yanlış rastgele seçim yaptığını kanıtlamaz.

<a id="recover-from-failed-preparation"></a>
## Başarısız hazırlıktan kurtarma

**Büyük olasılıkla sınırlı neden:** yazma, yedekleme, yükseltme, üretim geri okuması, doğrulama veya geri alma başarısız oldu.

**Tam kontrol:** ilkini okuyun `[RandomDay] [ERROR]` satırına gidin ve adlandırılmış işlem yedeğini koruyun. İncele `runtime/last_good/manifest.lua` korumalı alan dosyasını kullanmadan önce.

**Beklenen sonuç:** ya önceki dosyanın geri yüklendiği doğrulandı ya da sonuç açıkça bir geri yükleme başarısızlığını bildirdi.

**Güvenli sonraki eylem:** sunucuyu durdurun ve [manuel kurtarma](%C4%B0%C5%9ELEMLER.md#manual-recovery).

**Çıkarıda bulunma:** izleyin. Bir yedekleme dosyasının varlığı, tek başına, bunun amaçlanan aktif dünya durumuyla eşleştiğini kanıtlamaz.

<a id="diagnose-a-skipped-adapter"></a>
## Atlanan bir bağdaştırıcıyı teşhis edin

**Büyük olasılıkla sınırlı neden:** mod yok veya dosya, desteklenen bir imzayla eşleşmiyor.

**Tam kontrol:** bağdaştırıcının sonucunu okuyun ve yüklü sürümü ve düzeni şununla karşılaştırın [Tanınan düzenler ve altı olası sonuç için Desteklenen Mod Bağdaştırıcıları](DESTEKLENEN_BA%C4%9EDA%C5%9ETIRICILAR.md).

**Beklenen sonuç:** `not_installed` veya `skipped_incompatible`.

**Güvenli sonraki eylem:** dosyayı değiştirmeden bırakın, bağdaştırıcıyı devre dışı bırakın veya orijinal yazarından tam olarak desteklenen bir sürümü yükleyin.

**Çıkarıda bulunma:** benzer bir dosya adı veya daha yeni bir sürüm uyumluluğun kanıtı değildir.

<a id="recover-an-adapter-rollback-failure"></a>
## Bağdaştırıcı geri alma hatasını kurtarma

**Büyük olasılıkla sınırlı neden:** hem yazma girişimi hem de otomatik geri yükleme doğrulanamadı.

**Tam kontrol:** hedefi koruyun, kardeş pending/rollback dosyaları, bağdaştırıcı durumu ve `runtime/backups/`.

**Beklenen sonuç:** sonuç `rollback_failed`, değil `applied`.

**Güvenli sonraki eylem:** etkileneni durdurun mod/server ve başka bir başlatmadan önce doğrulanan yedeği manuel olarak geri yükleyin.

**Çıkarıda bulunma:** RandomDay's birincil sanal alan sonucu ayrı bir bağdaştırıcı hedefinin sağlıklı olduğunu kanıtlamaz.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Eksik bir tane oluştur singleplayer/LAN dosyası

**Büyük olasılıkla sınırlı neden:** özel paket yüklendi, mod işaretçisi geçersiz veya RandomDay yüklenmemiş.

**Tam kontrol:** `.randomday_mode` içermelidir `singleplayer_manual`; daha sonra RandomDay başlangıç ​​satırını onaylayın ve `runtime/singleplayer_manual/SandboxSettings.ini`.

**Beklenen sonuç:** dosya RandomDay klasöründe bulunduğunu inceleyin.

**Güvenli sonraki eylem:** doğru paketi temiz bir şekilde yükleyin ve bir kez başlayın.

**Çıkarıda bulunma:** RandomDay hedef dünyayı sizin adınıza aramayacak veya yazmayacaktır.

<a id="diagnose-a-message-problem"></a>
## Bir mesaj sorununu teşhis edin

**Büyük olasılıkla sınırlı neden:** planlanan geçişte geçerli bir oynatıcı karakteri yoktu, uyarı aktarımı mevcut değildi veya istemci ekranı metni farklı şekilde sardı.

**Tam kontrol:** çalışma zamanının `[RandomDay]` mesaj günlüğünü inceleyin ve kaynak mesajı belgelenen uzunlukla karşılaştırın limit.

**Beklenen sonuç:** bir mesaj geçişinin çalışıp çalışmadığını rapor ettiğini inceleyin; kaynak doğrulaması maksimum uzunluğu bildirir.

**Güvenli sonraki eylem:** amaçlanan istemci çözünürlüğünü doğrulayın. Oynanışı ve profil doğrulamayı mesaj sonucundan ayrı tutun.

**Çıkarıda bulunma:** görünür bir mesaj, uygulanan korumalı alan profilini kanıtlamaz ve eksik bir mesaj, hazırlığın başarısız olduğunu kanıtlamaz.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Profil çapında dört seçenek, gönderilen değerlere geri döndü

**Büyük olasılıkla sınırlı neden:** yalnızca oluşturulan `SandboxSettings.ini` düzenlendi veya `server.lua` aynı Lua işlemi hâlâ çalışırken değiştirildi.

**Tam kontrol:** oyunu veya özel sunucuyu durdurun, bir sonraki başlangıçtan sonra `RandomDay/Scripts/ax_config/server.lua`'yi açın ve kaydedilen `sandbox.profile_overrides` bloğunun amaçlanan dört değeri içerdiğini doğrulayın.

**Beklenen sonuç:** açın, her yeni hazırlanan family/day profili seçilen değerleri içerir. Daha sonraki profil rotasyonları ve sunucu başlangıçları aynı bloğu kullanmaya devam eder.

**Güvenli sonraki eylem:** bloğu düzeltin, bir kez başlayın ve hazırlanan profili inceleyin. Yalnızca oluşturulan sanal alan dosyasına yama uygulamayın çünkü daha sonraki bir hazırlık bu dosyanın yerini alacaktır.

<a id="look-up-an-exact-status"></a>
## Tam durumu arayın

Karar ağacı başarısız olan aşamayı tanımladıktan sonra, çalışma zamanı dışa aktarımından tam `status`, `transaction_status`, `rollback_status` veya `error` çalışma zamanı dışa aktarımındaki değer. Anlamı ve tek bir güvenli operatör yanıtı için [durum ve hata referansı](DURUM_VE_HATA_REFERANSI.md) kullanın. Bir panel veya konsoldaki benzer ifadeler, dışa aktarılan değerin yerine geçmez.

Yalnızca katkıda bulunanların test ortamı hataları, operatör kurtarma yoluna değil, [sürüm doğrulama](S%C3%9CR%C3%9CM_DO%C4%9ERULAMASI.md#avoid-validation-environment-pitfalls)'ye aittir.
