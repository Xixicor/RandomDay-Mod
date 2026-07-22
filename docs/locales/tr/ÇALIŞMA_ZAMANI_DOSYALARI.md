<a id="locate-runtime-files-and-status"></a>
# Çalışma zamanı dosyalarını ve durumunu bulun

> **Kanonik İngilizce kaynağı:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Bu, operatörler tarafından kullanılan kanonik yol envanteri ve kaynak izlenebilirliğidir. Bir dosyanın nerede olduğunu, onu kimin yazdığını, ne zaman değiştiğini, ne kadar süre kalacağını ve hangi kurtarma rolünü üstlendiğini yanıtlar. [çalışma zamanı çıktı referansı](%C3%87ALI%C5%9EMA_ZAMANI_%C3%87IKI%C5%9ELARI.md) şemalara, alan anlamlarına, boş durumlara ve makine değeri yorumuna sahiptir.

Bu kılavuzdaki tüm yollar, aksi belirtilmedikçe, yüklü `RandomDay/` klasörüne göredir. Çalışma zamanı çıktıları kurulumdan sonra oluşturulur; sürüm ZIP'lerinden hariç tutulur.

<a id="operator-file-map"></a>
## Operatör dosya haritası

| Yol | Üretici ve tetikleyici | Güncelleme ve saklama | Anlam ve kurtarma |
|---|---|---|---|
| Yapılandırılan birincil `SandboxSettings.ini` | `ax_sandbox/writer.lua` profil serileştirmesinden ve özel modda doğrulamadan sonra. | İşlemsel olarak değiştirildi; hedef, operatör tarafından yapılandırılır veya kurulumdan türetilir. | Bir sonraki başlangıç ​​için profili tamamlayın. Çalışan oturum, önceden yüklenmiş olan kurallarını korur. |
| Yapılandırılan yansıtma `SandboxSettings.ini` | Açık bir yansıtma uygun olduğunda başarılı bir birincil sonuçtan sonra korumalı alan yazıcısı. | En iyi çabayla işlem değiştirme. | Yalnızca ikincil kopya; bir ayna, doğru birincil yol yapılandırmasının yerini almaz. |
| Tanınan bağdaştırıcı hedefi | `ax_external/bridge.lua` düzen-imza eşleşmesi tamamlandıktan sonra. | Mevcut atamalar, benzersiz yedeklemelerle işlemsel olarak değiştirilir. | Ayrı olarak yüklenen mod yapılandırması; altı durumlu bağdaştırıcının sonucunu birincil sanal alandan bağımsız olarak inceleyin. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` başarılı bir sanal alan işleminden sonra. | Kabul edilen her hazırlıktan sonra işlemsel olarak değiştirilir. | Sıra defteri tutma. Okunamıyorsa, RandomDay son iyi durumu dener. |
| `runtime/rotation_state.last_good.txt` | Takvim işlemi yedeklemesi. | Geçerli durum güncellendiğinde değiştirilir. | Önceki okunabilir durum; teşhis ve güncellemeler sırasında korur. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` başarıdan, kalıcılığın azalmasından veya yazma hatasından sonra. | Her durum geçişinde işlemsel olarak değiştirilir. | Kanonik yapılandırılmış active/prepared, işlem, çeviri ve bağdaştırıcı özeti. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` durumun yanında. | İşlemsel olarak değiştirildi. | Şema `randomday_runtime_dictionary_v2`: terimler, çevirilerin ayarlanması, alanlar, paket modları ve seçim durumları. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` durumun yanında. | İşlemsel olarak değiştirildi. | Operatörün incelemesi için tam sınırlı mesaj önizlemesi; istemcinin oluşturduğunu kanıtlamaz. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` doğrulanmış bir birincil korumalı alan sonucundan sonra. | İşlemsel olarak değiştirildi. | İyi olduğu bilinen son korumalı alan kabul edildi. Yalnızca manifestiyle birlikte kullanın. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua` korumalı alan anlık görüntüsü başarılı olduktan sonra. | Korumalı alan anlık görüntüsüyle bir çift olarak işlemsel olarak değiştirildi. | Son iyi dosya için sürüm, profil kimliği, ad, gün, içerik karması ve yazma zamanı. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Mutasyondan önce birincil veya ayna yazıcı. | Benzersiz işlem dizini; RandomDay onu budamaz. | Yazma öncesi baytları doğrulandı. Operatörler incelemeden sonra saklama hakkına sahiptir. |
| `runtime/backups/external_<operation>/...` | Herhangi bir adaptör değişiminden önce adaptör köprüsü. | Benzersiz işlem dizini; otomatik budama yok. | Planlanan her bağdaştırıcı hedefinin doğrulanmış bir kopyası. |
| `runtime/pending/` | Çalışma zamanı dizini kurulumu tarafından oluşturulur. | Ayrılmıştır; mevcut birincil işlemler bunun yerine kardeş sepetleri kullanır. | Boş bir dizini hazırlık kanıtı olarak değerlendirmeyin. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Korumalı alan yazıcısı `singleplayer_manual` modunda. | Manuel paket çalıştırıldığında işlemsel olarak değiştirilir. | Operatörün incelemesi ve incelemesi için tam dosya durdurulan bir dünyaya manuel olarak kopyalayın. |
| `web_export/today.json` | `ax_web/export.lua` her hazırlık sonucundan sonra. | İşlemsel olarak değiştirildi. | Makine tarafından okunabilir kompakt active/prepared ve writer/adapter sonuç. |
| `web_export/today.html` | `ax_web/export.lua` başarılı bir dışa aktarma geçişinden sonra. | İşlemsel olarak değiştirildi. | Aynı geçişten elde edilen insan görünümü; bağımsız kanıt değildir. |
| `UE4SS.log` | UE4SS ve `ax_core/log.lua`. | Yöneten UE4SS, değil RandomDay. | Başlangıç, seçilen profil, yazma, bağdaştırıcı, mesaj, durum ve hata satırları `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Boş ve başarısız dosya durumlarını tanı

- Eksik bir birincil veya yansıtma hedefi oluşturulabilir. Geçersiz bir profil, bekleyen yazma, yükseltme veya üretim okuma hatası hazır değil. Bir yansıtma hatası, kabul edilen birincil sonucu değiştirmez.
- `runtime/singleplayer_manual/SandboxSettings.ini`, ilk manuel çalıştırmada oluşturulabilir. Bir oluşturma hatası, durum ve günlük çıktısında görünür durumda kalır.
- Okunamayan bir `rotation_state.txt`, son iyi duruma veya işaretçi tabanlı bir önyüklemeye geri dönebilir. Başarısız bir durum taahhüdü, ilk doğrulanan hedeften önce `degraded_state_persistence`.
- `runtime/last_good/` ilk doğrulanan hedeften önce mevcut olmayabilir. Eşleştirilmiş bildirim güncellemesi başarısız olursa, RandomDay önceki kabul edilen çifti geri yükler.
- `runtime/backups/mirror_<operation>/` aynaya özgü yedekleme konumudur. İşlemden önce söz konusu hedef mevcut olmadığında birincil veya ayna yedekleme dosyası mevcut değildir.
- Yedek oluşturma veya geri okuma başarısız olduğunda bağdaştırıcı mutasyonu başlamaz.
- Çalışma zamanı durum çıktısı mevcut olmadığında veya eksik olduğunda mevcut durum, sözlük veya önizleme dosyaları mevcut olmayabilir.
- Bir `export_failed` sonucu daha eski bir sonuç bırakabilir `today.json` yerinde. Korumalı alan hatası güncellemeleri JSON ancak yeni bir hata yaratmaz HTML sayfa; zaman damgalarını `UE4SS.log`.
- Yeni bir denemeden önce, beklemede olan eski bir sepet kaldırılır; temizleme hatası işlemi durdurur. Hem üretim hedefi hem de geri alma sepeti mevcutsa, RandomDay kurtarma baytlarını incelenmek üzere korur.
- Hayır `[RandomDay]` başlangıç satırı `UE4SS.log`, mod yüklemenin kanıtlanmadığı anlamına gelir.

<a id="transaction-sidecars"></a>
## İşlem yardımcıları

İşlemsel yazar kardeş oluşturabilir bir hedefin yanındaki dosyalar:

| Desen | Durum | Operatör eylemi |
|---|---|---|
| `<target>.randomday.pending` | Tanıtımdan önceki aday bayt sayısı. | Normalde tanıtım nedeniyle kaldırılır. Bir hata, beklemede olan temizleme veya tekrar okuma sorununu bildiriyorsa bunu koruyun. |
| `<target>.randomday.rollback` | Değiştirme sırasında tutulan orijinal baytlar. | Normalde arıza durumunda geri yüklenir veya başarı doğrulandıktan sonra kaldırılır. Hedef de mevcut olduğunda onu silmeyin; bu kombinasyonun incelenmesi gerekir. |
| `<target>.randomday.restore.pending` | Bağdaştırıcı geri yüklemesi sırasında aday baytlar. | Geri yükleme başarısız olursa bağdaştırıcı yedeğiyle koruyun. |
| `<target>.randomday.restore.rollback` | Bağdaştırıcı geri yüklemesi sırasında tutulan kurtarma baytları. | Temizleme veya geri yükleme doğrulanmamışsa etkilenen hizmeti koruyun ve durdurun. |

Bu dosyalar şunları yapabilir: ayrılmış sanal alanın veya ayrı olarak yüklenmiş bir bağdaştırıcı hedefinin yanında bulunur. Bunların varlığı bir işlem durumudur, yeni profilin etkin hale geldiğinin kanıtı değildir.

<a id="interpret-file-contents"></a>
## Dosya içeriklerini yorumlayın

Geçici olarak [Çalışma zamanı durumu ve çıkış referansı](%C3%87ALI%C5%9EMA_ZAMANI_%C3%87IKI%C5%9ELARI.md) tamamı için `rotation_state.txt`, `randomday_status.json` ve `today.json` şemaları. Bu referans aynı zamanda boş durumlara, hata anlamlarına, sözlük çıktısına ve hazırlanan durumun aktif durum olmadığı kuralına da sahiptir. [durum ve hata referansı](DURUM_VE_HATA_REFERANSI.md) tam bir makine değeri operatör eylemi gerektirdiğinde.

<a id="rotation-state-fields"></a>
### Döndürme durumu alanları

Kurallara bakın [döndürme durumu şeması](%C3%87ALI%C5%9EMA_ZAMANI_%C3%87IKI%C5%9ELARI.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Geçerli durum şeması

Kurallara bakın [çalışma zamanı durumu JSON şeması](%C3%87ALI%C5%9EMA_ZAMANI_%C3%87IKI%C5%9ELARI.md#runtime-status-json).

<a id="web-export-schema"></a>
### Web dışa aktarma şeması

Kurallara bakın [genel durum JSON şeması](%C3%87ALI%C5%9EMA_ZAMANI_%C3%87IKI%C5%9ELARI.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Kurtarma kanıtlarını saklayın

RandomDay mevcut durumun, mevcut durumun, son iyi durumun ve web görünümlerinin üzerine yazar. Benzersiz işlem-yedekleme dizinleri oluşturur ve eskilerini silmez. Çalışan sürecin dışında bir saklama politikası seçin ancak bir yazma, geri okuma, durum veya geri alma sorunu çözülmeden en yeni kurtarma kanıtlarını asla silmeyin.
