<a id="architecture-and-data-flow"></a>
# Mimari ve Veri Akışı

> **Kanonik İngilizce kaynağı:** [ARCHITECTURE.md](../../ARCHITECTURE.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


RandomDay sınırlı bir işe sahiptir: mevcut işlem sırasında bu profili etkin olarak tanımlamadan gelecekteki bir başlangıç ​​için eksiksiz bir korumalı alan profili hazırlayın. Etkin profil, Abiyotik Faktörünün daha önce yüklediği korumalı alan dosyasındaki işaretleyiciden gelir UE4SS başladı RandomDay. Hazırlanan profil, bir sonraki yeniden başlatma için ayrı, doğrulanmış bir dosya durumudur.

<a id="package-modes"></a>
## Paket Modları

Sürüm oluşturucu, aynı kaynak izin verilenler listesinden iki ZIP oluşturur ve her birinde `RandomDay/.randomday_mode` farklı ayarlar.

| Mod | Birincil çıkış | Otomatik harici yazmalar |
|---|---|---|
| `dedicated_server` | Çözülmüş özel sunucu `SandboxSettings.ini` | Birincil korumalı alan, kasıtlı olarak yapılandırılmış yansımalar ve tanınan isteğe bağlı bağdaştırıcılar. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Hiçbiri RandomDay klasör; aynalar ve adaptörler devre dışı bırakıldı. |

`RandomDay/.randomday_version` ve `RandomDay/.randomday_mode` oluşturulan paket işaretleyicileridir. `RandomDay/Scripts/ax_core/version.lua` bunları okur; operatörler kurulumdan sonra bunları düzenlememelidir.

<a id="session-modes"></a>
## Oturum Modları

Paket modu, nerede olduğunu kontrol eder RandomDay yazabilir. `experience.mode` amaçlanan yaşam döngüsünü ayrı olarak açıklar:

| Oturum modu | Paket | Yaşam döngüsü sözleşmesi |
|---|---|---|
| `persistent_dedicated` | Ayrılmış | Uzun vadede kalıcı aileyi ve 17 konumlu günlük düzeni sürdürme yeniden başlar. |
| `temporary_dedicated` | Ayrılmış | Başlatmalar arasındaki sırayı korurken her başlatmayı sınırlı bir oyun oturumu olarak değerlendirin. |
| `singleplayer_lan` | Tek Oyunculu Kılavuz | Operatör tarafından seçilen bir dünya için yerel mod dosyası oluşturun; kaydetme keşfi veya otomatik kopyalama yok. |

`auto`, özel pakette `persistent_dedicated` olarak çözümlenir ve `singleplayer_lan` kılavuz paketinde. Oturum modu motor sınırını değiştirmez: mevcut süreç, korumalı alanını RandomDay yürütülür.

<a id="startup-path"></a>
## Başlangıç Yolu

1. UE4SS yüklenir `RandomDay/Scripts/main.lua`.
2. Giriş noktası bir `RandomDay/` kökü çözer ve `Scripts/ax_core/init.lua`.
3. `init.lua` yapılandırmayı, profilleri, takvimi, yazıcıyı yükler, adaptörler, durum, web aktarımı ve oynatıcı mesajı modülleri. Geçersiz bir paket modunu veya devre dışı bırakılmış işlem güvenlik kilidini reddeder. Ayrıca paket uyumlu oturum modunu, başlangıç ​​günü modunu, yapılandırılmış başlangıç ​​gününü ve günlük ilerleme modunu da doğrular.
4. Her aile yapısı, `sandbox.profile_overrides`'yi doğrular. Profil genelindeki dört seçenek, `Scripts/ax_config/server.lua`'den family/day değerlerinden sonra ve kalan değişmez kurallardan önce uygulanır, böylece hazırlanan her profil aynı yapılandırılmış seçenekleri kullanır.
5. Çalışma zamanı ve web çıkışı kökleri, çözümlenen mod klasörüne bağlanır. Tek oyunculu mod, seçimden önceki tek mod-yerel çıkışına indirgenir.
6. `ax_cycle/calendar.lua` korumalı alan işaretleyicisini ve kurtarılabilir rotasyon durumunu okur, ardından bu oyun süreci için bir active/prepared karar oluşturur.
7. `ax_sandbox/writer.lua` hazırlanan profili serileştirir ve doğrular, ardından seçilen hedef için işlemsel bir değiştirme kullanır.
8. Rotasyon durumu kaydedilir yalnızca korumalı alan işlemi başarılı olduktan sonra. Durum kesinleştirme hatasının derecesi düşürülür: Korumalı alan ve kuyruk durumu uyuşmadığı için bağdaştırıcılar ve hazır oyuncu mesajları atlanır.
9. Ayrılmış modda, `ax_external/bridge.lua` isteğe bağlı bağdaştırıcıları etkin profile göre değerlendirir. İlk önyükleme sırasında etkin işaretçi mevcut değildir, dolayısıyla hazırlanan configured/random başlangıç ​​günü profili mevcut tek bağdaştırıcı eşlemesidir.
10. Çalışma zamanı JSON/text durumu ve HTML/JSON web görünümü aynı kararla yeniden yazılır. Oyuncu bildirimleri en son yüklenir.

Varsayılan `cycle.check_interval_ms=0` bu diziyi başlangıçta bir kez çalıştırır. Bir operatör pozitif bir aralık sağlarsa ve UE4SS ortaya çıkar `LoopAsync`, daha sonraki geri aramalar sürece ait seçimi yeniden kullanır. Bu seçimi onarabilir veya yeniden dışa aktarabilirler ancak aynı işlem sırasında başka bir gün seçmezler.

<a id="rotation-state-machine"></a>
## Dönme Durumu Makinesi

| Seçim durumu | Giriş koşulu | Hazırlanan sonuç | Güvenli kurtarma |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Etkin işaretçi yok ve yok kurtarılabilir hazırlanmış durum. | Yeni kalıcı günlük düzende yapılandırılmış veya rastgele seçilen ilk konum. | Mevcut oturumu çalışır durumda tutun; yalnızca şu tarihten sonra yeniden başlatın: `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | Etkin gün, saklanan sıradaki son konum değildir. | Aynı ailede depolanan sonraki konum. | Süreklilik başarısız olursa, sunucuyu durdurulmuş halde tutun ve korumalı alan ile rotasyon durumunu uzlaştırın. |
| `active_marker_found_completed_run_prepare_next_unused_family` | Etkin gün, saklanan sıradaki son konumdur. | Bir sonraki uygun aile çalıştırmasında yeni bir siparişin ilk konumu. | Yeniden başlatmadan önce yeni family/day/order onaylayın. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Etkin işaretçi yok, ancak döndürme durumu hazırlanmış bir profili adlandırıyor. | Aynı sıraya alınmış profil yeniden oluşturuldu. | Durum dosyalarını koruyun; yeniden kaydetmeyi zorlamak için bunları silmeyin. |
| `supervision_reconfirm_prepared_profile_no_advance` | Daha sonraki bir geri arama aynı süreçte çalışır. | Aynı hazırlanmış profil. | İlk başarısız aşamayı teşhis edin; tekrarlanan geri aramalar yeni seçimler değildir. |

`selected_run` her zaman kullanır `selected_family`. `rotation_run` yapılandırılmış uygun siparişi tüketir. `non_repeating_random_run` kalan uygun ailelerden seçim yapar ve hepsi tamamlandıktan sonra yeni bir havuz başlatır. `day_order` içindeki 17 benzersiz gün kimliğinin tümü tamamlanana kadar her modda bir aile tutulur. Sıralı mod, yapılandırılan başlangıç ​​1. Gün olmadığında 17. Günden sonra tamamlanır; yinelenmeyen rastgele mod, bir permütasyonu saklar ve kurtarma sırasında asla yeniden kaydetmez.

<a id="sandbox-transaction"></a>
## Korumalı Alan İşlemi

Yazıcı, tüm anahtarları kanonik sırayla işler ve yazmadan önce türleri, aralıkları, sabit kuralları, işaretçi değerlerini ve profil kimliğini doğrular. Değiştirme işlemi şu sırayı takip eder:

1. beklemede olan eski bir dosyayı yalnızca güvenli olduğunda kaldırın;
2. önceden var olan kurtarma yardımcı dosyalarını koruyun veya durdurun;
3. bekleyen baytları yazın;
4. bekleyen dosyayı geri okuyun ve doğrulayın;
5. bir hedef mevcut olduğunda doğrulanmış bir işlem yedeği oluşturun;
6. orijinali işlem geri alma dosyası olarak tutun;
7. bekleyen dosyayı yükseltin;
8. üretim dosyasını okuyun ve doğrulayın;
9. tanıtım veya üretim doğrulaması başarısız olursa, tutulan orijinali geri yükleyin;
10. kurtarma verilerini saklayın ve temizleme işlemi doğrulanamıyorsa hatayı bildirin.

İlk yazma aynı pending/readback/validation yolu kullanır. Orijinal hedef olmadığından, geri yüklenecek hiçbir şey yoktur, dolayısıyla başarısız bir ilk yazma işlemi, orijinal dosya kurtarma olarak rapor edilmemelidir.

<a id="adapter-boundary"></a>
## Adaptör Sınırı

Bağdaştırıcılar RandomDay-owned ayrı olarak yüklenen modlar için yama tanımları. Köprü öncelikle tanınan bir hedef yolunu ve tam anahtar imzasını gerektirir. Yalnızca mevcut atamaları yamalar, operasyon yedekleri oluşturur, planlanan her dosyayı tek bir işlem olarak uygular ve herhangi bir adım başarısız olursa etkilenen tüm hedefleri geri alır. Eksik ve uyumsuz hedefler normal isteğe bağlı sonuçlardır.

RandomDay üçüncü taraf kodunu paketine yüklemez. Fikstür destekli düzen bunu kanıtlıyor RandomDay's ayrıştırıcı ve işlem davranışı, bir üçüncü taraf sürümünün değerleri bir oyun sürecinde yüklemesi veya kullanması değildir.

<a id="output-boundary"></a>
## Çıktı Sınırı

Çalışma zamanı dosyaları aşağıda oluşturulmuştur `RandomDay/runtime/` ve `RandomDay/web_export/`; hiçbiri sürüm değil ZIP girişi. Durum yazıcısı, makine-yerel bağdaştırıcı yollarını genel erişimden kaldırır JSON teşhis. Yol, şema, tempo ve saklama haritasının tamamı [Çalışma Zamanı Dosyaları ve Durumu](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md).

<a id="failure-ownership"></a>
## Sahiplik Başarısızlığı

| Başarısız aşama | Sahibin görebileceği sonuç |
|---|---|
| Profil veya INI doğrulama | Üretimde yazma girişiminde bulunulmaz. |
| Beklemede write/readback | Mevcut üretim baytları yerinde kalır. |
| İşlem yedeklemesi | Orijinal taşınmadan önce değiştirme işlemi durdurulur. |
| Promosyon veya üretim doğrulaması | Otomatik geri yükleme deneniyor ve sonucu rapor ediliyor. |
| Döndürme durumu kalıcılığı | Hazırlanmış korumalı alan baytları mevcut olabilir, ancak geçiş bozulmuştur ve adapters/messages atlandı. |
| Adaptör uyumluluğu | Hedef `not_installed` veya `skipped_incompatible`. |
| Bağdaştırıcı write/readback | Mümkün olduğunda değiştirilen tüm bağdaştırıcı hedefleri geri yüklenir. |
| Durum veya web'den dışa aktarma | Korumalı alan sonucu yetkili kalır; çıktı hatası günlüğe kaydedilir ve başarılı bir rapor olarak değerlendirilmemelidir. |

Kurtarma için [İşlemler](%C4%B0%C5%9ELEMLER.md)'i ve semptom öncelikli kontroller için [Sorun Giderme](SORUN_GIDERME.md)'i takip edin.

<a id="evidence-limit"></a>
## Kanıt Sınırı

Yerel Lua fikstür paketi, kaynak davranışını, oluşturulan profil değişmezlerini, işlem dallarını, çıktı şekillerini ve paket sınırlarını kanıtlayabilir. Mevcut bir Abiyotik Faktör oluşumunu, mevcut bir UE4SS sürümü, belirli bir sunucu paneli, her ekran boyutu veya test edilmemiş bir üçüncü taraf mod sürümü. Bu iddialar halen devam ediyor `not tested` geçerliliğini korur.
