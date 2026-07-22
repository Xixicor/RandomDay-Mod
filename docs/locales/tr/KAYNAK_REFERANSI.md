<a id="packaged-source-reference"></a>
# Paketlenmiş Kaynak Referansı

> **Kanonik İngilizce kaynağı:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Sürüm ZIP tam olarak aşağıdaki 51 yolu içerir. Oluşturucu eksik bir yolu, paket şeklinde ek bir kaynağı, vaka çarpışmasını, sembolik bağlantıyı veya gerçek izin verilenler listesinin dışındaki bir üyeyi reddeder. Çalışma zamanı çıktısı, testler, veri havuzu belgeleri ve üçüncü taraf modları paket üyesi değildir.

Makine tarafından kontrol edilebilen tamamlayıcı: [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Girişler, çıkışlar, yan etkiler, genel ayarlar, görünür durumlar, hata modları, düzenlenebilirlik ve standart belgelerle aynı yolları kaydeder.

Sevk edilen her Lua satırının bir kararlı `module-*` bağlantısı vardır. Kurallı kaynak başlığındaki ve makine kaydındaki aynı bağlantı, sahiplik, sözleşme, yan etkiler, arızalar ve kurtarmayı doğrudan izlenebilir hale getirir.

<a id="package-markers"></a>
## Paket İşaretleyicileri

| Yol | Arayan ve sorumluluk | Yan etkiler ve arıza davranışı | Kılavuz |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS etkinleştirme işaretçisi her iki pakette de mevcuttur. | Çalışma zamanında yazma yok. Eksik dosya, paket doğrulamasında başarısız olur ve yüklemeyi engelleyebilir. | [Yükleme](Y%C3%9CKLEME.md) |
| `RandomDay/.randomday_version` | Okuyan `ax_core/version.lua`; paket başına oluşturulur. | Çalışma zamanında yazma yok. Missing/blank işaretleyici döndürür `unversioned`; son yapı, uyumlu sürüm kimliği gerektirir. | [Yayın doğrulama](S%C3%9CR%C3%9CM_DO%C4%9ERULAMASI.md) |
| `RandomDay/.randomday_mode` | Okuyan `ax_core/version.lua`; `dedicated_server` veya `singleplayer_manual`. | Geçersiz değer, dosya sistemi çalışmadan önce başlatmayı durdurur. | [Mimari](MIMARI.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Giriş, Yapılandırma ve Çekirdek Hizmetler

| Yol | Arayan ve sorumluluk | Girişler, çıkışlar ve arıza davranışı | Kılavuz |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS giriş noktası. Bir mod kökünü çözer ve `ax_core/init.lua`. | Kök çözümlemesi veya başlatma başarısız olursa önemli bir satır yazdırır ve geri döner. | [Başlangıç yolu](MIMARI.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Başlangıç ve isteğe bağlı denetim için ana orkestratör. | Çıktı yollarını sabitler, package/safety kilitlerini uygular, bir seçimin sahibidir ve yazma, durum, bağdaştırıcılar, durum, web ve mesajları sıralar. | [Başlangıç yolu](MIMARI.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Yükleyen: `init.lua`; genel yapılandırma nesnesini tamamlayın. | Paket kimliğini okur; ayarlar ve ayrılmış alanlar ayrı ayrı belgelenir. Geçersiz güvenlik kilitleri başlatmayı durdurur. | [Yapılandırma](YAPILANDIRMA.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Yapılandırma ve profil kaydı tarafından yüklendi. | Kırpılmış paket işaretleyicilerini okur; kullanılamadığında `unversioned` veya `invalid` değerini döndürür. | [Yayın kimliği](S%C3%9CR%C3%9CM_DO%C4%9ERULAMASI.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Paylaşılan günlük sarmalayıcı. | Yapılandırılan düzeylerde `[RandomDay]` satırları yayar; özel günlük aktarımı yok. | [Çalışma zamanı dosyalarını](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | Paylaşılan dosya, yol, kodlama, karma, dizin ve işlem yardımcıları. | Dizin oluşturma yalnızca onaylanmış bir Lua/Wine komut başarısını kabul eder; kullanılamayan, yükseltilmiş, sinyalli, belirsiz veya sıfırdan farklı sonuçlar, sınırlı iletilerle ve çalışma zamanına bağlı başvurularla başarısız şekilde kapatılır. Aynı zamanda pending/readback/promotion/rollback semantiğine de sahiptir ve belirsiz kurtarma verilerini korur. | [Korumalı alan işlemi](MIMARI.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Seçim, Sandbox, Durum ve Mesajlar

| Yol | Arayan ve sorumluluk | Girişler, çıkışlar ve arıza davranışı | Kılavuz |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; etkin işaretleyici ve dönüş durumunu okur, bir active/prepared çifti seçer, oturum modunu ve tam gün sırasını sürdürür. | Bir configured/wrapped veya bir kerelik karıştırılmış 17 konumlu sıra oluşturur, işlemsel olarak `rotation_state.txt` yazar ve yeniden işleme gerek kalmadan son iyi duruma geri döner. Kalıcılık hatası, bozulmuş bir geçişe neden olur. | [Döndürme durumu makinesi](MIMARI.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Korumalı alan yazıcısı; işlem ve son iyi yedeklemeleri oluşturur ve doğrulanmış baytları geri yükler. | Son iyiyi günceller sandbox/manifest bir çift olarak; manifest değiştirme işlemi başarısız olursa önceki çifti korur. | [Çalışma zamanı dosyalarını](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Profil oluşturucu, seri hale getirici ve doğrulayıcı. | Kanonik anahtar sırasını, türleri, aralıkları ve sabit kuralları tanımlar; dosya sistemi yazmaz. | [Korumalı alan anahtarları](PROFILLER/KORUMALI_ALAN_AYARLARI_ANAHTARLARI.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Korumalı alan yazıcısı. | Tam deterministik üretir INI ile metin RandomDay işaretçiler; geçersiz profil verileri doğrulama tarafından reddedildi. | [Profiller](PROFILLER/PROFIL_BELGELERI.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Oluşturucu testleri ve yazıcı. | Profil değerlerini doğrular ve seri hale getirir INI şemaya, sabit değerlere ve beklenen profil kimliğine karşı. | [Korumalı alan anahtarları](PROFILLER/KORUMALI_ALAN_AYARLARI_ANAHTARLARI.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; modla sınırlı hedefleri çözer ve primary/mirror yazma işlemleri gerçekleştirir. | İşlem, yedekleme, geri alma, karma, yansıtma ve manuel çıktı sonuçları üretir. Güvenli olmayan hedefler ve doğrulanmamış yazma işlemleri başarısız olur. kapatıldı. | [Korumalı alan işlemi](MIMARI.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` her hazırlık sonucundan sonra. | Geçerli durumu, sözlüğü ve mesaj önizlemesini temizlenmiş hedef referanslarla işlemsel olarak yazar. Çıktı hatası günlüğe kaydedilir ve korumalı alan yetkisini değiştirmez. | [Geçerli durum şeması](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` durumdan sonra. |  `today.json` ve `today.html` yazar. Başarısızlık, korumalı alan başarısı olarak değil, dışarı aktarma hatası olarak rapor edilir.active/prepared kararından  | [Web dışa aktarma şeması](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua`. | Çeviri verilerinden sınırlı join/daily iletiler oluşturur ve isteğe bağlı olarak bir yerel konsol komutunu kaydeder. Eksik player/transport, profil durumunu değiştirmeden bir bildirimi atlar. | [Oyuncu mesajları](YAPILANDIRMA.md#player-messages) |

<a id="optional-adapter-modules"></a>
## İsteğe Bağlı Bağdaştırıcı Modülleri

| Yol | Arayan ve sorumluluk | Girişler, çıkışlar ve arıza davranışı | Kılavuz |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; tanınan bağdaştırıcı hedeflerini keşfeder ve planlanan tüm dosyaları uygular işlemsel olarak. | Altı belgelenmiş sonuç, doğrulanmış yedeklemeler, arındırılmış teşhisler ve geri alma kanıtları üretir. | [Bağdaştırıcı sınırı](MIMARI.md#adapter-boundary) |
| <a id="module-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Ayrı olarak yüklenmiş bir DynamicSpawns düzeni. | Tanınan imzaları ve hazırlanmış değer haritalarını sağlar; bilinmeyen düzenler atlanır. | [Desteklenen bağdaştırıcılar](DESTEKLENEN_BA%C4%9EDA%C5%9ETIRICILAR.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Tanınmış bir Kaotik Doğuş Motorundaki isteğe bağlı RandomDay uzantı alanları için adaptör köprüsü tanımı `DynamicSpawns` düzeninde isteğe bağlı RandomDay uzantı alanları; dosya adı ayrı bir ürün adı değildir. | Profil karşılaşmasını ve yapılandırılmış kapsam değerlerini yalnızca tam uzantı düzeni mevcut olduğunda eşler; Chaotic Spawn Engine çalışma zamanı kullanımından sorumlu olmaya devam eder. | [Desteklenen bağdaştırıcılar](DESTEKLENEN_BA%C4%9EDA%C5%9ETIRICILAR.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Tanınmış bir Ölümcül Lazerler ayarları düzeni için adaptör köprü tanımı. | Değişmeden önce amaçlanan her anahtarı gerektirir; aksi takdirde uyumsuzluk bildirir. | [Desteklenen bağdaştırıcılar](DESTEKLENEN_BA%C4%9EDA%C5%9ETIRICILAR.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Tanınmış bir ANTE Yukarı ayarlar düzeni için adaptör köprüsü tanımı. | Yeniden doğma, varyant ve hata ayıklama kapısı alanları gerektirir; aksi takdirde uyumsuzluk raporları verilir. | [Desteklenen bağdaştırıcılar](DESTEKLENEN_BA%C4%9EDA%C5%9ETIRICILAR.md) |

<a id="shared-profile-and-translation-modules"></a>
## Paylaşılan Profil ve Çeviri Modülleri

| Yol | Arayan ve sorumluluk | Girişler, çıkışlar ve arıza davranışı | Kılavuz |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; standart temel değerler ve 17 günlük varsayılanlar. | Tüm korumalı alan anahtarlarını, gönderilen dört profil varsayılanını ve kalan sabit kuralları sağlar; hiçbir dosya sistemi yazmaz. Şema doğrulaması, eksik çıktıyı reddeder. | [Korumalı alan anahtarları](PROFILLER/KORUMALI_ALAN_AYARLARI_ANAHTARLARI.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Her aile modülü ve eski aile görünümü. | Temel günleri klonlar, sınırlı uygular family/day geçersiz kılar, doğrular `sandbox.profile_overrides`, bu kalıcı değerleri artı kalan sabit kuralları uygular ve 17 profilli bir aile paketi döndürür. | [Profil referansı](PROFILLER/PROFIL_BELGELERI.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; 17 profilin tamamının genel kayıt altına alınmasını emretti familys. | Sarf malzemeleri kimlikleri, kaynak dosya adları, adlar, açıklamalar, türler ve ton meta verileri eksik. Aile kaynağı yüklenemiyor. | [Aile rotasyonu](AILE_ROTASYONU.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Takvim, yazıcı, durum, testler ve oluşturucular. | Tüm kayıtlı aile paketlerini yükler ve 17x17 profil kümesini, gönderilen varsayılanları, profil çapında etkili değerleri, şema sırasını ve sabit kuralları ortaya çıkarır. | [Profil referansı](PROFILLER/PROFIL_BELGELERI.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Orijinal 17 günlük Action paketinin paketlenmiş uyumluluk görünümü. | Tam bir aile paketi döndürür ancak mevcut kayıt defterinin aile kaynağı değildir. Geçmiş paket yolu sürekliliği için tutulur. | [Aile rotasyonu](AILE_ROTASYONU.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Paketlenmiş orijinal Reaction hayatta kalma paketinin uyumluluk görünümü. | Tam bir aile paketi döndürür ancak mevcut kayıt defteri tarafından seçilmez, geçmiş paket yolu sürekliliği için tutulur. | [Aile rotasyonu](AILE_ROTASYONU.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Profil kodunda eski gün dizini karşılaşma araması mevcut. | Güne göre sınırlı bir karşılaşma haritası döndürür; hiçbir dosya sistemi yazmaz. Mevcut aile profilleri kendi karşılaşma değerlerini taşır. | [Profil referansı](PROFILLER/PROFIL_BELGELERI.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Oyuncu mesajlaşma ve uyumluluk sarmalayıcı. | Çeviri verilerinden sınırlı joke/note seçilen profilden paketler; kullanılamayan profil verileri nötr bir mesaja dönüşür. | [Oyuncu mesajları](YAPILANDIRMA.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Geriye dönük uyumlu sarmalayıcı `messages_17.lua`. | Bağımsız veri veya yazma yok; yükleme hatası standart mesaj modülünü takip eder. | [Oyuncu mesajları](YAPILANDIRMA.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Çeviri ve çalışma zamanı sözlüğü yazıcısı. | 46 sanal alan ayarının anlamını, türlerini, aralıklarını, etki alanlarını ve değer dilini tanımlar. Bilinmeyen değerler açık olarak kalır. | [Çeviri ve sözlük](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Çalışma zamanı durumu ve oynatıcı mesajları. | Ham profil değerlerini sınırlı alan puanlarına, gerçeklere, özetlere, uyarılara ve sözlük çıktısına dönüştürür. ham değerleri korurken. | [Geçerli durum şeması](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Kayıtlı Aile Modülleri

Her satır `randomday_17.lua` tarafından yüklenir, `profile_builder.lua` çağrılır, tam olarak 17 profil döndürülür ve dosya sistemi üzerinde doğrudan bir yan etkisi yoktur. Eksik, yinelenen, eksik, aralık dışı veya sabit kuralları ihlal eden bir profil başarısız olur. çalışma zamanı fikstür paketi ve oluşturulan referans kapısı.

| Yol | Aile | Kanonik olarak oluşturulmuş kılavuz |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Aksiyon | [Aksiyon](PROFILLER/AILELER/EYLEM_PROFILI_AILESI.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Hayatta kalma | [Hayatta kalma](PROFILLER/AILELER/HAYATTA_KALMA_PROFILI_AILESI.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Gizlilik | [Gizlilik](PROFILLER/AILELER/GIZLI_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Horde | [Horde](PROFILLER/AILELER/HORDE_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Boss Avı | [Boss Avı](PROFILLER/AILELER/PATRON_AVI_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Çöpçü | [Çöpçü](PROFILLER/AILELER/%C3%87%C3%96P%C3%87%C3%9C_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Oluşturucu | [Oluşturucu](PROFILLER/AILELER/OLU%C5%9ETURUCU_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Keşif | [Keşif](PROFILLER/AILELER/KE%C5%9EIF_PROFILI_AILESI.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Güvenlik Kilidi | [Güvenlik Kilidi](PROFILLER/AILELER/G%C3%9CVENLIK_KILITLEME_PROFILI_AILESI.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Biohazard | [Biohazard](PROFILLER/AILELER/BIYOLOJIK_TEHLIKE_PROFILI_AILE.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Anteverse | [Anteverse](PROFILLER/AILELER/ANTEVER_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Kabus | [Kabus](PROFILLER/AILELER/KABUS_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Aşınmaya dayanıklı | [Aşınmaya dayanıklı](PROFILLER/AILELER/YIPRANMI%C5%9E_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Hassas | [Hassas](PROFILLER/AILELER/HASSAS_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-lojistik-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Lojistik | [Lojistik](PROFILLER/AILELER/LOJISTIK_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Deneysel | [Deneysel](PROFILLER/AILELER/DENEYSEL_PROFIL_AILESI.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Uyumluluk Testi | [Uyumluluk Testi](PROFILLER/AILELER/UYUMLULUK_TESTI_PROFIL_AILESI.md) |

<a id="generated-references"></a>
## Oluşturulan Referanslar

`docs/profiles/profiles.generated.json`, Markdown ailesi dosyaları ve `FULL_PROFILE_REFERENCE.md`, aynı profil kümesinden oluşturulan contributor/operator referanslardır. Bunlar paket üyesi değildir ve profil kaynağının değiştirilmesi yerine düzenlenmemelidir. Doğrulama için 17 aile, aile başına 17 profil, benzersiz kimlikler, tüm şema anahtarları, sabit kurallar, çeviri kapsamı ve sınırlı mesajlar gerekir.
