<a id="operate-active-prepared-and-recovery-state"></a>
# Etkin, hazır ve kurtarma durumunu çalıştırma

> **Kanonik İngilizce kaynağı:** [OPERATIONS.md](../../OPERATIONS.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


RandomDay gelecekteki bir önyükleme için korumalı alan dosyasını değiştirir. Çalışan bir Abiyotik Faktör oturumuna önceden yüklenmiş olan kuralları değiştirmez.

Bu sayfada operatör kararları ve kurtarma prosedürleri yer alır. Kurallı terimler için [Sözlük](S%C3%96ZL%C3%9CK.md), yol sahipliği için [Çalışma zamanı dosyalarını](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md) ve kesin şemalar ve alan anlamları için [Çalışma zamanı çıktıları](%C3%87ALI%C5%9EMA_ZAMANI_%C3%87IKI%C5%9ELARI.md) kullanın.

<a id="distinguish-active-and-prepared-state"></a>
## Etkin ve hazırlanmış durumu birbirinden ayırın

Hazırlanan bir profil, daha sonraki bir başlatma onun işaretçisini okuyana kadar etkin değildir. Mevcut oturumu tanımlamak için hazırlanan family/day dosyasını kullanmayın. Okunabilir bir özet için

Geçici olarak `web_export/today.html` ve tam durum için `web_export/today.json` kullanın. Yeniden başlatmaya karar vermeden önce etkin işaretçiyi, hazırlanan kimliği, `prepared_ready`, `profile_status`, işlem sonucunu, geri alma sonucunu ve durum kesinleştirme sonucunu onaylayın.

<a id="follow-the-normal-dedicated-server-sequence"></a>
## Normal ayrılmış sunucu sırasını izleyin

| Önce | Aksiyon | Sonra |
|---|---|---|
| Hayır RandomDay işaretçisi | ile başlayın RandomDay etkin. | Geçerli oturum mevcut kurallarını korur; RandomDay bir günlük sipariş oluşturup sürdürür, ardından ilk siparişini hazırlar configured/random pozisyonunu hazırlar. |
| İlk konum hazırlandı | Yeniden başlat. | O gün aktif hale gelir; aynı ailedeki bir sonraki depolanan pozisyon hazırlanır. |
| Orta konum etkin | Hazırlanan profili inceledikten sonra yeniden başlatın. | Hazırlanan gün aktif hale gelir ve aşağıdaki kayıtlı pozisyon hazırlanır. |
| Son konum etkin | Sonraki aileyi inceledikten sonra yeniden başlatın. | Başka bir uygun aile düzeninin ilk konumu etkin hale gelir. |

`selected_run` yapılandırılan aileyi korur. `non_repeating_random_run`, rastgele seçilen bir aileyi 17 günlük pozisyonların tamamında tutar ve uygun liste bitene kadar bir aileyi yeniden kullanmaktan kaçınır. `rotation_run` yapılandırılmış aile sırasını takip eder. `cycle.day_progression_mode`, aile seçiminden bağımsız olarak gün sırasını kontrol eder.

Yeni bir kurulumun hazırlanması için her zaman bir işlemin ve daha sonraki bir işlemin etkinleştirilmesi gerekir. Bu, kalıcı sunucular, geçici sunucular ve manuel sunucular için geçerlidir singleplayer/LAN oluşturma.

<a id="read-the-right-evidence"></a>
## Doğru kanıtları okuyun

[çalışma zamanı dosya eşlemesini](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md) döndürme durumunu, geçerli durumu bulmak için kullanın, her alan grubu için bilinen son iyi dosyalar, işlem yedeklemeleri, dışa aktarmalar ve `UE4SS.log`'da geniş oyun stilini seçin. Tam oyun ve korumalı alan değerlerini istediğinizde [çalışma zamanı çıktı referansı](%C3%87ALI%C5%9EMA_ZAMANI_%C3%87IKI%C5%9ELARI.md), şema, boş durum, hata anlamı ve saklama kuralı. Kurallı altı durumlu sonuç tablosu ve sonraki eylem için HTML ve JSON dışa aktarmaları kaynak durumunu özetler; bir profilin canlı oyun istemcisi tarafından kullanıldığını kanıtlamazlar.

Eğer `prepared_ready` `false` veya `profile_status` `degraded_state_persistence`, korumalı alan ve döndürme durumu aynı fikirde olana kadar sunucuyu durdurun. Başarısız durum kalıcılığına sahip geçerli bir korumalı alan yazma işlemi, sağlıklı hazırlanmış bir geçiş değildir.

<a id="respond-to-writer-outcomes"></a>
## Yazar sonuçlarına yanıt verme

RandomDay yeni baytları bir kardeş dosyada hazırlar, bunları geri okur, sanal alanın tamamını doğrular, mevcut olduğunda orijinali korur, yeni dosyayı yükseltir ve tekrar okur. Yalnızca üretim geri okuması kabul edildikten sonra hazır olduğunu bildirir.

Promosyon veya üretim doğrulaması başarısız olursa, RandomDay o işlem tarafından tutulan dosyayı geri yüklemeye çalışır. Geri yükleme hatası, zor bir duraklamadır: Sunucuyu sürekli olarak yeniden başlatmak yerine, sunucuyu durdurun ve manuel olarak kurtarın.

<a id="respond-to-adapter-outcomes"></a>
## Bağdaştırıcı sonuçlarına yanıt verin

Geçici olarak [Desteklenen bağdaştırıcılar](DESTEKLENEN_BA%C4%9EDA%C5%9ETIRICILAR.md#read-an-adapter-result). Treat `rollback_failed`'i kesin durdurma olarak değerlendirin; ayrı olarak kaydedilen bağdaştırıcı yedeği kurtarma kaynağıdır.

Bağdaştırıcılar yalnızca ayrı olarak yüklenen modları etkiler. Hiçbir zaman hazırlanmış bir RandomDay korumalı alan profilini etkin hale getirmezler.

Normal bir önyüklemede, ayrı olarak yüklenen mod daha sonra aynı UE4SS başlangıçta yüklenebileceğinden bağdaştırıcı değerleri etkin profilden seçilir. İlk önyükleme sırasında etkin bir RandomDay işaretçisi bulunmadığında, hazırlanan başlangıç ​​günü profili mevcut tek eşlemedir. Bu zamanlama kuralı, bir sonraki yeniden başlatma korumalı alan sınırından ayrıdır ve yine de diğer modun kendi yükleme davranışına bağlıdır.

<a id="manual-recovery"></a>
## Manuel kurtarma

1. Oyunu veya sunucuyu durdurun. Açık olabilecek bir dosyayı kurtarmayın.
2. Geçerli `SandboxSettings.ini`, `runtime/` ve `web_export/` dosyasını ayrı bir teşhis yedeğine kopyalayın.
3. `runtime/last_good/manifest.lua` dosyasını ve `runtime/backups/` altındaki en yeni ilgili girişi inceleyin. family/day ve karması, geri yüklemeyi düşündüğünüz durumla eşleşen bir dosya seçin.
4. Seçilen doğrulanmış dosyayı yapılandırılmış birincil sanal alan yoluna kopyalayın.
5. Başlamadan önce tekrar okuyun ve tamamlandığını onaylayın.
6. Bir kez başlayın ve etkin işaretçiyi ve hazır durumu inceleyin. Yalnızca bir hata mesajının olmaması nedeniyle kurtarmanın başarılı olduğunu varsaymayın.

Doğrulanmış bir yedekleme yoksa, kurulumdan önce oluşturulan operatör yedeğini geri yükleyin. RandomDay hiçbir zaman okunamayan bir dosyayı yeniden oluşturamaz.

<a id="account-for-control-panel-writes"></a>
## Kontrol paneli yazma işlemleri için hesap

Bazı sunucu panelleri `SandboxSettings.ini` başlatma sırasında. RandomDay, yazma doğrulandıktan sonra başka bir aracın üzerine yazarsa hazırlanmış bir profili koruyamaz. Yetkili bir korumalı alan kaynağı yapılandırın ve tekrarlanan 1. Gün veya eksik geçişi teşhis ederken, yeniden başlatmadan hemen önce ve sonra dosya işaretçisini kontrol edin.
