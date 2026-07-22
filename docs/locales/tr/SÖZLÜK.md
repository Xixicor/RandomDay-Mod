<a id="glossary"></a>
# Sözlük

> **Kanonik İngilizce kaynağı:** [GLOSSARY.md](../../GLOSSARY.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Bu, RandomDay belgeleri. Prosedürler aynı durumu birden fazla kılavuzda yeniden tanımlamak yerine bu tanımlara bağlantı verir. Şemaya özgü alan kuralları [Çalışma zamanı çıktıları](%C3%87ALI%C5%9EMA_ZAMANI_%C3%87IKI%C5%9ELARI.md).

| Terim | Açık anlam | Tam teknik anlam |
|---|---|---|
| Etkin profil | Geçerli oturumun kullandığı kurallar. | family/day profili RandomDay işlem başlangıcında korumalı alandan okunan işaretçi. |
| Hazırlanan profil | Kurallar daha sonraki bir oturum için hazır. | Hedef baytları doğrulama ve geri okumayı geçen ve döndürme durumu kaydedilen tam family/day profili. Okumayı yeniden başlatmadan önce etkin değil. |
| Geri yüklendi | Hazırlık başarısız oldu ve önceki doğrulanmış baytlar geri yerleştirildi. | Başarısız işlem, tutulan orijinalin veya doğrulanmış kurtarma kopyasının başarılı bir şekilde geri alındığını ve geri okunduğunu bildirir. |
| Sonraki yeniden başlatma kuyruğu | Bir sonraki önyükleme için hazırlanmış hazırlanmış bir seçim. | `next_reboot_queue` işlem başına bir kez seçim yapar ve denetim sırasında önyüklemenin sahip olduğu seçeneği yeniden kullanır. |
| Bootstrap | Etkin işaretçi bulunmadığında ilk hazırlık. | Uygun bir aileden yapılandırılmış veya rastgele ilk günün seçilmesi `cycle.bootstrap_day` yalnızca bir uyumluluktur; geri dönüş. |
| Aile | 17 günlük bir oyun tarzı ilerlemesi. | Tam olarak 17 tam profil oluşturan bir kayıt defteri girişi ve aile modülü. |
| Döndürme | Uygun aileler arasında geçiş. | Durum `rotation_id` ile tanımlanır, mevcut, kalan ve kalanlar ile birlikte tamamlanmış aile listeleri. |
| Çalıştır | 17 günlük kimliklerin tamamında tek bir aile. | Şununla tanımlanan aileye bağlı bir dizi `run_id`; aile, her kalıcı günlük sipariş pozisyonu tamamlanana kadar kilitli kalır. |
| Oturum modu | Operatör bu paketi nasıl kullanır? | `persistent_dedicated`, `temporary_dedicated` veya `singleplayer_lan`; paket modu hâlâ dosya sistemi sınırını kontrol ediyor. |
| Gün sırası | Bir aile çalıştırması tarafından kullanılan tam sıra. | Kalıcı 17 rakamlı permütasyon. Sıralı mod, başlangıç ​​gününden itibaren tamamlanır; rastgele mod, tekrarlanmadan bir kez karıştırılır. |
| İşaretçi | Korumalı alan dosyasında depolanan kimlik. | `RANDOMDAY_*` alanlar, profilin tamamıyla işlenir ve bir sonraki işlem başlangıcında okunur. |
| Hazırlandı | Yazma ve durum işlemi başarılı oldu. | `prepared_ready=true` başarılı bir sanal alan sonucu gerektirir ve durum kesinleştirme hatası gerektirmez. Etkinleştirmeyi kanıtlamaz. |
| Zaten güncel | Hedef zaten amaçlanan baytlara sahip. | Oluşturulan profil karması hedefle eşleştiğinden RandomDay doğruluyor last-good/mirror birincil veriyi yeniden yazmadan çalışır. |
| Düşük durum kalıcılığı | Korumalı alan baytları başarılı oldu ancak rotasyon defter tutma başarısız oldu. | `profile_status=degraded_state_persistence`; bağdaştırıcılar ve hazırlanmış profil mesajları atlanır. |
| Bekleyen dosya | Aday baytlar henüz yükseltilmedi. | `<target>.randomday.pending`, değiştirilmeden önce yazıldı, tekrar okundu ve doğrulandı. |
| Geri alma dosyası | Değiştirme sırasında orijinal dosya tutuldu. | `<target>.randomday.rollback`, tanıtım veya doğrulama hatası durumunda üretimi geri yüklemek için kullanılır. |
| İşlem yedeklemesi | Mutasyondan önce oluşturulmuş dayanıklı bir kopya. | Birincil, yansıtma veya bağdaştırıcı işlemi için `runtime/backups/` altında doğrulanmış bir dosya. |
| Bilinen son iyi | Kabul edilen en son sanal alan kurtarma. | `runtime/last_good/SandboxSettings.ini` artı `manifest.lua`; çift, profil kimliğini ve karmasını kaydeder. |
| Ayna | İsteğe bağlı ikinci sanal alan hedefi. | Kendi işlemi aracılığıyla birincilden sonra yazılan, açıkça yapılandırılmış veya dünya adından türetilmiş bir hedef. |
| Paket modu | Sürüm tarafından seçilen yükleme sınırı varlık. | `dedicated_server` veya `singleplayer_manual`'yi doğrular. Profil genelindeki dört seçenek, `.randomday_mode`. |
| Manuel kopyalama modu | Singleplayer/LAN kaydetme keşfi olmadan oluşturma. | `singleplayer_manual` yalnızca içeriye yazar `runtime/singleplayer_manual/` ve bağdaştırıcıları ve yansıtmaları devre dışı bırakır. |
| Bağdaştırıcı | RandomDay-owned yüklü başka bir mod için eşleme. | Mevcut atamaları yalnızca yedekleme ve uyumluluk kontrollerinden sonra güncelleyen imza geçişli bir işlem planı. |
| Tanınan düzen | Yazma için tam bağdaştırıcı dosyası şekli kabul edildi. | Gerekli tüm imza anahtarları ve hedef dosyalar mevcut; dosya adı tek başına yeterli değildir. |
| `not_installed` | İsteğe bağlı hedef bulunamadı. | Mutasyon gerektirmeyen güvenli adaptör sonucu. |
| `skipped_incompatible` | Bir hedef var ancak şekli desteklenmiyor. | İmzanın tamamı eşleşmediğinden mutasyon içermeyen güvenli bağdaştırıcı sonucu. |
| `failed_rolled_back` | Bir değişiklik başarısız oldu ve önceki baytlar sağlam. | Değişim yapılmadan veya etkilenen tüm dosyalar geri yüklenip doğrulanmadan önce adaptör işlemi başarısız oldu. |
| `rollback_failed` | Otomatik kurtarma doğrulanamadı. | Kayıtlı yedeklemeden manuel kurtarmayı gerektiren donanımsal durdurma adaptör durumu. |
| Sözlük | Ham değerlerden genel açıklamalara eşleme. | `randomday_dictionary_v2`, `dictionary.lua` ve çalışma zamanı durum çıktısına dahil edilir. |
| Çeviri | Ham profil değerlerinden elde edilen insan görünümü. | Sınırlı alan puanları, gerçekler, özetler ve `translation.lua`; ham değerler geçerli olmaya devam ediyor. |
| Genel durum | Makine tarafından okunabilen, arındırılmış operatör özeti. | `web_export/today.json` `randomday_public_status_v2`. |
| Çalışma zamanı durumu | Makine tarafından okunabilen ayrıntılı yerel anlık görüntü. | `runtime/current/randomday_status.json` `randomday_runtime_status_v2`. |
