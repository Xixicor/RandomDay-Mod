<a id="configuration"></a>
# Yapılandırma

> **Kanonik İngilizce kaynağı:** [CONFIGURATION.md](../../CONFIGURATION.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Ana operatör yapılandırması şu şekildedir:

```text
RandomDay/Scripts/ax_config/server.lua
```

Dosyayı yedekleyin ve her seferinde bir bölümü değiştirin. Lua boolean'ları küçük harftir `true` ve `false`; dizelerin tırnak işaretleri olması gerekir; liste girişlerinin virgüllere ihtiyacı vardır. Bir sonraki başlangıçtan sonra, başka bir değişiklik yapmadan önce durum sayfasını okuyun. Kaynaktan çalışan katkıda bulunanlar, değiştirilmiş bir yapıyı paketlemeden önce ayrı [sürüm doğrulama](S%C3%9CR%C3%9CM_DO%C4%9ERULAMASI.md) kontrollerini kullanabilir.

Elle düzenleme yapmayın `.randomday_mode`, `.randomday_version`, oluşturulan profil referansları, `runtime/` veya `web_export/`. Paket oluşturucu, paket modu ve sürüm işaretleyicilerinin sahibidir ve bunların sürüm meta verileriyle uyumlu olup olmadığını kontrol eder.

Aşağıdaki her ayar `RandomDay/Scripts/ax_config/server.lua`. Tablolar, düzenlenebilir ayarları yayına ait kimlik ve ayrılmış uyumluluk alanlarından ayırır. Lua'da bir alanın bulunması, onu değiştirmenin desteklenen bir davranış olduğu anlamına gelmez.

<a id="choose-an-experience"></a>
## Bir deneyim seçin

RandomDay iki pakete sahiptir: her özel sunucu için bir tane ve singleplayer/LAN manuel kopyalama. Özel paketin iki çalışma modu vardır; bu modlar ayrı indirmeler değil, ayarlardır.

| Sizin dünyanız | Yükle | Bu davranışı seçin |
| --- | --- | --- |
| Bir kampanyanın rutin yeniden başlatmalar sırasında ilerlemesini sağlayan özel bir sunucu | Ayrılmış sunucu paketi | `persistent_dedicated` kayıtlı aile ve profil sırasını sürdürür. |
| Yalnızca bireysel oyun oturumları için açılan özel bir sunucu | Aynı özel sunucu paketi | `temporary_dedicated` oturumlar arasında güvenli bir şekilde hazırlanmış sonraki profili korurken, yeni bir aile çalıştırması yapılandırılmış veya rastgele bir başlatma kullanabilir. |
| Tek oyunculu veya LAN dünya | Singleplayer/LAN paket | `auto` elle kopyalama davranışını seçer; Oluşturulan dosyayı kopyalamadan önce dünyayı durdurun. |

Emin değilseniz `auto`. Paket, kurulum türü için normal davranışı seçer. [Aile rotasyonu](AILE_ROTASYONU.md)'da geniş oyun stilini seçin. Tam oyun ve korumalı alan değerlerini istediğinizde [oluşturulmuş aile dizinini](PROFILLER/PROFIL_BELGELERI.md) kullanın. Ardından ilk günü ve ilerlemeyi seçin:

- `start_day_mode="configured"` `start_day`.
- `start_day_mode="random"` yeni bir aile çalışmasının başlangıcında geçerli bir ilk gün seçer ve bu seçimi sürdürür.
- `day_progression_mode="sequential"` 17 konumun tamamını sarar.
- `day_progression_mode="non_repeating_random"` her günü tam olarak bir kez içeren karıştırılmış bir siparişi saklar.

[Döndürme](#rotation) bölümündeki ön ayarların tamamını kullanın. Yeni bir kurulumda, seçilen ilk profili hazırlamak için yine de bir başlangıç ​​ve onu etkinleştirmek için daha sonra bir başlangıç ​​yapılması gerekir.

<a id="release-identity-and-logging"></a>
## Kimliği ve günlük kaydını yayınla

| Ayar | Tür ve gönderilen değer | Desteklenen kullanım | Arıza veya etkileşim |
|---|---|---|---|
| `version` | Dize okundu: `.randomday_version` | Salt okunur. | Eksik veya boş işaretçi `unversioned`; son paket doğrulaması kimlik sapmasını reddeder. |
| `package_mode` | Dize okundu: `.randomday_mode` | Salt okunur: `dedicated_server` veya `singleplayer_manual`. | Başka herhangi bir değer, hedef yazmadan önce başlatmayı durdurur. |
| `plan_basis` | Dize: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Yalnızca teşhis etiketi; bunu özellik geçişi olarak kullanmayın. | Geçerli çalışma zamanı bu alanda dallanmıyor. |
| `logging.level` | Dize: `info` | `debug`, `info`, `warn` veya `error`. | Bilinmeyen değerler günlük hedefleri eklemez; `info`, profil oluşturma davranışını teşhis etmedikçe. |

Örnek:

```lua
logging = { level = "debug" }
```

Geçici olarak `debug` kullanın, ilgili `UE4SS.log` öğesini koruyun, ardından `info` öğesine dönün. Günlükler, düşük düzeyli hatalardan gelen yerel yolları içerebilir; paylaşmadan önce bunları inceleyin.

<a id="experience-mode"></a>
## Deneyim modu

`experience.mode` bu kurulumun çalıştırılma şeklini belirtir. Bir sonraki başlangıç ​​güvenlik sınırını zayıflatmaz: Abiyotik Faktörü, korumalı alan ayarlarını UE4SS yüklenir RandomDay, dolayısıyla hiçbir mod halihazırda çalışmakta olan işlemin kurallarının yerini alamaz.

| Ayar | Gönderilen değer | Desteklenen değerler | Etki |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` paketten çözülür. Özel paketler, özel modlardan herhangi birini kullanabilir. Manuel kopyalama paketi, normal uzun süreli sunucu yeniden başlatmalarında yalnızca `auto` veya `singleplayer_lan`. |

- `persistent_dedicated` bir depolanmış family/day siparişi kabul eder.
- `temporary_dedicated`, sınırlı oynatma oturumları için başlatılan bir sunucuyu tanımlar. Hazırlanan sırayı hâlâ sürdürür, böylece ana bilgisayarı durdurmak bir sonraki oturumu sessizce yeniden kaydetmez.
- `singleplayer_lan` yalnızca sınırlı manuel kopya çıktısını oluşturur. Hiçbir zaman kişisel bir kaydetme klasörünü keşfetmez veya düzenlemez.

Uyumsuz bir package/experience kombinasyonu, korumalı alana yazmadan önce durur.

<a id="rotation"></a>
## Döndürme

| Ayar | Gönderilen değer | Desteklenen değerler | Etki |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Tüm korumalı alan değişikliklerini yeniden başlatma sınırında tutar. |
| `cycle.cycle_length_days` | `17` | `17` standart profil kümesi için | Her aile paketiyle ve oluşturulan referansla eşleşir. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Aile çalışmasının başlangıcında `cycle.start_day` kullanır veya geçerli bir başlangıç günü seçer. |
| `cycle.start_day` | `1` | Tam sayı `1` ile `17` |  arasındaki ilk gün `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Sarmalanmış bir sıralı sıra veya her günü tam olarak bir kez içeren bir karıştırılmış sıra oluşturur. |
| `cycle.bootstrap_day` | `1` | Tam sayı `1` ile `17` | Uyumluluk geri dönüşü yalnızca `cycle.start_day` bulunmadığında kullanılır. Yeni yapılandırma, başlangıçta bir kez hazırlanan `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` veya sınırlı bir pozitif aralık | `0` başlangıçta bir kez hazırlanır; pozitif bir değer şu durumlarda periyodik denetime olanak sağlar: UE4SS sağlar `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Yeni bir 17 günlük aile çalıştırmasının nasıl başlayacağını seçer. |
| `profile_family.selected_family` | `action` | Aile içinde `allowed_families` | tarafından yedek olarak kullanılan tek bir kimlik`selected_run`. |
| `profile_family.default_family` | `action` | Kayıtlı bir aile kimliği | Seçilen kimlik eksik veya geçersiz olduğunda geri dönüş. |
| `profile_family.allowed_families` | 17 genel aile kimliğinin tamamı | Kayıtlı kimliklerin boş olmayan herhangi bir alt kümesi | Yeni çalıştırmalar için uygun aileleri sınırlar. |
| `profile_family.preserve_family_until_day_17` | Boolean: `true` | Ayrılmış uyumluluk alanı; keep `true`. | Geçerli takvim, aileyi her zaman kalıcı 17 günlük sıralamadaki her konumda tutar ve bu alanı bir geçiş olarak okumaz. |
| `profile_family.reroll_only_after_day_17` | Boolean: `true` | Ayrılmış uyumluluk alanı; keep `true`. | Geçerli takvim, saklanan sırada hangi günün son olduğuna bakılmaksızın aileyi yalnızca her gün kimliği tamamlandıktan sonra değiştirir. |
| `profile_family.prevent_repeats_until_rotation_complete` | Boolean: `true` | Ayrılmış uyumluluk alanı; keep `true`. | Geçerli yinelenmeyen havuz mantığı sabittir ve bu değeri okumaz geçiş olarak kullanılır. |

Gün sırası yeni bir aile çalışması için bir kez oluşturulur ve `runtime/rotation_state.txt` adresine yazılır. Kurtarma ve daha sonra yeniden başlatmalar, tam olarak bu konumları yeniden kullanır. Bir konfigürasyon düzenlemesi, devam eden bir siparişi yeniden kaydetmez. Aile ancak 17 pozisyonun tamamı tamamlandıktan sonra değişir.

<a id="recommended-presets"></a>
### Önerilen ön ayarlar

Kalıcı özel sunucu:

```lua
experience = { mode = "persistent_dedicated" }
cycle = {
    application_mode = "next_reboot_queue",
    cycle_length_days = 17,
    start_day_mode = "configured",
    start_day = 1,
    day_progression_mode = "sequential",
    bootstrap_day = 1,
    check_interval_ms = 0,
}
```

Yeni aile çalıştırması başına farklı, yinelenmeyen sıralı geçici ayrılmış oturumlar:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN manuel kopyalama, tek oyunculu paketi kullanır ve normalde `experience.mode="auto"`'ten ayrılır. Bir sonraki dosyayı oluşturmadan önce aynı başlangıç ​​ve ilerleme kontrollerini seçebilirsiniz. Çalışma zamanı durumu ile dünyanın yüklü profilinin aynı hizada kalmasını istiyorsanız, oluşturulan dosyayı başka bir nesil çalıştırmadan önce seçilen durdurulmuş dünyaya kopyalayın.

Yeni bir kurulumda, ilk süreç yalnızca seçilen başlangıç ​​gününü hazırlayabilir. Daha sonraki bir süreç onu etkinleştirir. Rastgele veya yapılandırılmış başlatma, motor yükleme sırasını atlamaz.

Sabit Builder çalıştırması örneği:

```lua
profile_family = {
    mode = "selected_run",
    selected_family = "builder",
    default_family = "action",
    allowed_families = { "builder" },
    preserve_family_until_day_17 = true,
    reroll_only_after_day_17 = true,
    prevent_repeats_until_rotation_complete = true,
}
```

Boş veya bilinmeyen uygun bir küme, tamamlanmamış bir profil oluşturmak yerine kayıtlı bir aileye geri döner.

<a id="primary-sandbox-path"></a>
## Birincil korumalı alan yolu

| Ayar | Tür ve gönderilen değer | Desteklenen kullanım | Arıza veya etkileşim |
|---|---|---|---|
| `paths.runtime_dir` | Dize: `ue4ss/Mods/RandomDay/runtime` | Yalnızca kaynak yapılandırmasında okunur. | `init.lua` bunu çözümlenmiş mod-root `runtime/` yolu ile değiştirir. |
| `paths.web_export_dir` | Dize: `ue4ss/Mods/RandomDay/web_export` | Yalnızca kaynak yapılandırmasında okunur. | `init.lua` bunu çözümlenmiş mod-root `web_export/` yolu ile değiştirir. |
| `paths.sandbox_path_override` | Dize veya `nil`: `nil` | Standart olmayan özel bir düzen için bir değişmez değer `SandboxSettings.ini` yolu. | Güvenli olmayan veya kullanılamayan hedefler yazma işleminde başarısız olur; tek oyunculu mod geçersiz kılmayı temizler. |
| `paths.sandbox_candidates` | Dize listesi: yedi genel aday | Sıralı özel sunucu yedek adayları. | `init.lua` kurulumdan türetilmiş adayları başa ekler; var olan ilk yol kazanır. |
| `paths.write_sandbox_mirrors` | Boolean: `true` | Bilinçli olarak yapılandırılmış yansıtmalara izin verir. | Yansıma listesi boşken hiçbir yansıtma yazılmaz ve `world_name=nil`; tek oyunculu modu zorunlu kılar `false`. |
| `paths.sandbox_mirror_required` | Boolean: `false` | Ayrılmış uyumluluk alanı; keep `false`. | Mevcut yazar aynaları isteğe bağlı olarak ele alır ve bu alanı gerekli bir kapı olarak okumaz. |
| `paths.world_name` | Dize veya `nil`: `nil` | Genel ayna adaylarını türetmek için kullanılan güvenli bir dünya klasörü bileşeni. | Harfler, sayılar ve boşluklar dışında kalan her şey `_` veya `-` başlatmayı durdurur; tek oyunculu mod bunu yok sayar. |
| `paths.sandbox_mirror_candidates` | Dize listesi: boş | Tam isteğe bağlı yansıtma dosyaları. | Her uygun yansıtma kendi işlemini kullanır; bir yansıtma hatası birincil başarıyı değiştirmez. |

`paths.sandbox_path_override` varsayılan olarak `nil`. Geçersiz kılma olmadan, RandomDay ilk önce geneli kontrol eder WindowsServer adaylar tespit edilene sabitlendi RandomDay kurulumu, ardından yapılandırılmış adayları kontrol eder. Hiçbiri mevcut değilse, sunucu kurulumuna çözümlenen ilk kurulum bağlantılı genel adayı kullanır:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Bu geri dönüş, işlemin mevcut çalışma dizininden çözümlenmez. `sandbox_path_override` seçeneğini yalnızca kurulumunuz farklı bir değişmez dosya kullandığında ayarlayın. Onu bir dizine değil, bir `SandboxSettings.ini` üzerine yönlendirin. Kullanmadan önce sunucuyu durdurun ve dosyanın amaçlanan kurulumda olduğunu doğrulayın.

<a id="optional-mirrors"></a>
### İsteğe Bağlı Aynalar

`paths.write_sandbox_mirrors` `true` olarak gönderilir, ancak yansıtma yolu listesi boştur ve `paths.world_name` `nil` şeklindedir. Bu nedenle gönderilen varsayılanlarda ekstra bir ayna yazılmaz. Kurulumun her zaman yalnızca çözümlenen birincil hedefi yazması gerektiğinde bunu `false` olarak ayarlayın. Yapılandırılmış bir yansıtma adayı veya dünya adı olmadığında, her iki değer de yalnızca birincil sanal alan dosyasını yazmaya devam eder.

Bir yansıtma, yalnızca `paths.sandbox_mirror_candidates` öğesine kasıtlı olarak tam bir giriş eklediğinizde veya `paths.world_name` ayarını yaptığınızda uygun hale gelir. Aynalar, dünyaya özgü ikinci bir korumalı alan yolunu okuyan kurulumlar için en iyi çaba gerektiren kopyalardır. Bunlar, doğru birincil yolu yapılandırmanın yerine geçmez.

Yansımayı etkinleştirmeden önce:

1. sunucuyu durdurun;
2. sunucunun okuduğu dosyayı tam olarak tanımlayın;
3. hedefin amaçlanan kurulumun içinde olduğunu doğrulayın;
4. yedekleyin;
5. yalnızca bu yolu ekleyin;
6. hazırlık sonrasında yansıtma sonucunu doğrulayın.

Yansıma olmadan geçersiz kılma örneği:

```lua
paths = {
    runtime_dir = "ue4ss/Mods/RandomDay/runtime",
    web_export_dir = "ue4ss/Mods/RandomDay/web_export",
    sandbox_path_override = "<server-root>/AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    sandbox_candidates = {},
    write_sandbox_mirrors = false,
    sandbox_mirror_required = false,
    world_name = nil,
    sandbox_mirror_candidates = {},
}
```

`<server-root>` bir yer tutucudur. Yerel olarak değiştirin; makineye özgü bir yol yayınlamayın.

<a id="non-disableable-safety-locks"></a>
## Devre Dışı Bırakılamayan Güvenlik Kilitleri

| Ayar | Gerekli değer | Anlamı |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Mevcut bir birincil dosyayı değiştirmeden önce doğrulanmış bir kopyayı koruyun. |
| `sandbox.restore_last_good_on_failure` | `true` | Başarısız bir değiştirme veya okuma sonrasında otomatik kurtarmayı deneyin. |
| `external_mods.patch_only_existing_keys` | `true` | Başka bir modun dosyasında bilinmeyen bir ayar oluşturmayı reddedin. |
| `external_mods.backup_before_write` | `true` | Desteklenen bir işlemsel bağdaştırıcı düzenlemesinden önce hedef baytları koruyun. |

RandomDay bu dört değerden herhangi biri uygun değilse başlatmayı reddeder `true` değilse RandomDay başlatmayı reddeder. Bunlar güvenlik kilitleridir, operatör geçişlerini desteklemez. Geliştirme veya sorun giderme işlemleri de dahil olmak üzere bunları devre dışı bırakmayın çünkü bunu yapmak, yazar ve bağdaştırıcı testlerinin kanıtladığı arıza kapatma sınırını değiştirir.

`sandbox.force_rewrite_every_supervision_tick` normal bir ayar olarak kalır ve `false` olarak gönderilir, bu da zaten eşleşen sanal alan dosyasına dokunulmaz. Bir Boolean'ı kabul eder. Bunu `true` olarak ayarlamak, işleme ait hazırlanmış baytların aynısını yazar üzerinden tekrar zorlar; family/day değerini ilerletmez. Tekrarlanan yazma işlemleri daha fazla işlem yedeklemesi oluşturduğundan bunu yalnızca sınırlı bir kurtarma testi için kullanın.

<a id="optional-mod-adapters"></a>
## İsteğe Bağlı Mod Adaptörleri

| Ayar | Gönderilen değer | Anlamı |
|---|---:|---|
| `external_mods.enabled` | `true` | Yapılandırılan adaptörlerin ayrı olarak yüklenen hedefleri incelemesine izin verin. |
| `external_mods.optional_by_default` | `true` | Eksik veya uyumsuz isteğe bağlı modlar engellemez RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Gerekli güvenlik kilidi; değiştirildiğinde başlatma başarısız olur. |
| `external_mods.backup_before_write` | `true` | Gerekli güvenlik kilidi; değiştirildiğinde başlatma başarısız olur. |
| `external_mods.adapters` | Dört genel bağdaştırıcı kimliği | Hangisini sınırlar RandomDay-owned bağdaştırıcılar çalışabilir. |

Üçüncü taraf modunu devre dışı bırakmadan veya kaldırmadan bu entegrasyonu tek başına bırakmak için listeden bir bağdaştırıcı kimliğini kaldırın. singleplayer/LAN paketi, bu listeden bağımsız olarak tüm bağdaştırıcıları devre dışı bırakır.

`external_mods.optional_by_default=false`, `applied` veya `already_current` dışında yapılandırılmış bir bağdaştırıcı sonucunun toplu bağdaştırıcı sonucunda başarısız olmasına neden olur. Birincil sanal alan işleminin geri alınmasını sağlamaz. Operatörün entegrasyon gerektirmesi için test edilmiş bir nedeni olmadığı sürece, gönderilen `true`'i saklayın.

Bkz. [Tanınan düzenler ve altı olası sonuç için Desteklenen Mod Bağdaştırıcıları](DESTEKLENEN_BA%C4%9EDA%C5%9ETIRICILAR.md).

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### İsteğe Bağlı Kaotik Oluşturma Motoru kapsam alanları

`world_scope` isteğe bağlı olarak beş tane sağlar RandomDay uzantı ayarları yalnızca tanınan bir Kaotik Doğuş Motoru olduğunda `DynamicSpawns/SharedData.lua` düzeni zaten bu alanları içerdiğinde yapabilirsiniz. Bu ayrı bir mod veya indirme değildir:

| Ayar | Gönderilen değer | Bağdaştırıcı efekti |
|---|---:|---|
| `world_scope.enabled` | `true` | İsteğe bağlı olanı ister RandomDay tanınan bir dünya kapsamı kapısı DynamicSpawns düzeni. |
| `world_scope.affect_open_worlds` | `true` | Hedef mod, korunan dünya kuralını uygulamadığı sürece açık dünyaları içerir. |
| `world_scope.unknown_world_policy` | `allow` | İstekler `allow` veya `block` hedef mod bir dünyayı sınıflandıramadığında. |
| `world_scope.log_scope_decisions` | `true` | Kapsam kararı için hedef modun günlüğe kaydedilmesini ister. |
| `world_scope.protected_worlds` | Boş liste | Hedef düzene virgülle ayrılmış korunan dünya kalıpları sağlar. |

Bu değerler bağdaştırıcı girişidir, RandomDay's korumalı alan yazıcısı. Bunlar yalnızca ayrı olarak yüklenen Kaotik Oluşturma Motoru düzeni, türler, aralıklar, gönderilen profil varsayılanları ve kalan değişmez değerler için isteğe bağlı RandomDay alan kümesinin ve raporların `applied` veya `already_current`. Chaotic Spawn Engine, çalışma zamanında bu alanların kullanılmasından sorumlu olmaya devam eder. Uzantı alanları olmayan sıradan bir kurulum değişmeden kalır.

Beş değerin tümü adaptör girişleridir. `unknown_world_policy` yalnızca belgelenen hedef değerleri kabul eder `allow` veya `block`; tanınmayan bir hedef düzeni atlanır. Dokümantasyon örneklerinde `protected_worlds` alanını boş bırakın. Bir operatör yerel kalıpları kullanıyorsa, bunlar ekran görüntülerine, sorunlara veya yayın yapıtlarına dahil edilmemelidir.

<a id="player-messages"></a>
## Oyuncu Mesajları

Sevk edilen özel sunucu yapılandırması, kompakt birleştirme bildirimlerine ve kısa günlük hatlara olanak tanır. İlk geçişten önce 30 saniye bekler, her 15 saniyede bir yeni katılan oyuncuları kontrol eder ve günlük hattan önce katılma bildiriminden sonra 10 saniye bekler.

| Ayar | Gönderilen değer |
|---|---:|
| `player_message.enabled` | `true` |
| `player_message.log_on_startup` | `true` |
| `player_message.register_console_command` | `false` |
| `player_message.console_command` | `randomday` |
| `player_message.broadcast_enabled` | `true` |
| `player_message.startup_delay_ms` | `30000` |
| `player_message.join_check_interval_ms` | `15000` |
| `player_message.send_daily_joke_after_join` | `true` |
| `player_message.daily_joke_delay_seconds` | `10` |
| `player_message.criticality_join` | `2` |
| `player_message.criticality_joke` | `0` |
| `player_message.max_line_chars` | `42` |
| `player_message.max_join_lines` | `4` |
| `player_message.max_warning_lines` | `3` |
| `player_message.max_note_lines` | `3` |

Mesaj uzunluğu doğrulaması kaynak sınırlarını kontrol eder. Her istemci çözünürlüğünde görsel testin yerini almaz.

Zamanlama değerleri, `daily_joke_delay_seconds` tamamını zaten içerdiğinde etkili olurlar. Devre dışı bırakılan bir mesaj veya yayın ayarı, sanal alan hazırlığını değiştirmeden istemci bildirimlerini bastırır. Konsol komutu yalnızca hem ayar hem de UE4SS işleyicisi mevcut olduğunda kaydedilir. Türler, aralıklar, gönderilen profil varsayılanları ve kalan değişmez değerler için, adlandırılmış bir istemci testi başka bir değeri kanıtlamadıkça kritiklik değerlerini gönderilen aktarım düzeylerinde tutun.

`max_line_chars`, çevirmen tarafından 8 ila 64 karaktere sabitlenir. Üç satır sayısı ayarı sırasıyla birleştirmeyi, uyarıyı ve not çıktısını sınırlar; gönderilen değerler mevcut kaynak satırlarının sayısıyla eşleşir. İstemci düzeni testi daha dar bir ayarı kanıtlamadıkça bu dört sınırı varsayılan değerlerinde tutun.

İletilerin devre dışı bırakıldığı örnek:

```lua
player_message = {
    enabled = false,
    log_on_startup = true,
    register_console_command = false,
    console_command = "randomday",
    broadcast_enabled = false,
    startup_delay_ms = 30000,
    join_check_interval_ms = 15000,
    send_daily_joke_after_join = false,
    daily_joke_delay_seconds = 10,
    criticality_join = 2,
    criticality_joke = 0,
    max_line_chars = 42,
    max_join_lines = 4,
    max_warning_lines = 3,
    max_note_lines = 3,
}
```

<a id="profiles-and-sandbox-values"></a>
## Profiller ve Korumalı Alan Değerleri

`RandomDay/Scripts/ax_profiles/families/` altındaki aile kaynak dosyaları aile başına 17 tam günü tanımlar. `docs/profiles/` altında oluşturulan belgeler, özelleştirme kaynağı değil, bir referans çıktısıdır.

Geçici olarak [korumalı alan anahtar referansının](PROFILLER/KORUMALI_ALAN_AYARLARI_ANAHTARLARI.md) tamamını zaten içerdiğinde etkili olur. Bir profil kaynağını düzenledikten sonra 289 kombinasyonun tamamını yeniden oluşturun ve doğrulayın; Değiştirilemez Abiyotik Faktör kurallarına değil, oluşturulan Markdown veya JSON kayda elle yama yapmayın.

<a id="customize-the-shipped-profile-defaults"></a>
### Gönderilen profil varsayılanlarını özelleştirme

Aç:

```text
RandomDay/Scripts/ax_config/server.lua
```

Bu bloğu `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Bunlar RandomDay's başlangıç ​​seçeneklerine yama yapmayın. Bir aileyi açmak için modlardan birini `true` veya `false` olarak ayarlayın. Her destek değerini `0` ile `1000`'den bir tam sayıya ayarlayın. Dosyayı düzenlemeden önce oyunu veya özel sunucuyu durdurun, kaydedin ve Lua'nın yeni yapılandırmayı yüklemesi için yeniden başlayın.

RandomDay bir ailede 17 profil oluşturduğunda bu bloğu okuyacak şekilde ayarlayın. Bu nedenle seçilen değerler, bir rotasyon sonrasında hazırlanan profiller ve daha sonraki bir sunucu başlangıcından sonra yeniden oluşturulan profiller dahil olmak üzere her aileye ve güne uygulanır. 289 profil dosyasını düzenlemeniz veya profil referansını yeniden oluşturmanız gerekmez.

Yalnızca canlı bir `SandboxSettings.ini` dosyasını değiştirmek geçicidir çünkü bir sonraki hazırlanan profil `server.lua` öğesinden oluşturulur. Geçersiz türler, bilinmeyen anahtarlar veya `0..1000` dışında kalan değerler, sessizce varsayılanlara dönmek yerine, profil oluşturmayı adlandırılmış bir yapılandırma hatasıyla durdurur.

Oluşturulan profil referansı, gönderilen varsayılanları göstermeye devam eder. Bu, bir sunucunun özel yapılandırmasının bir kopyası değil, bir sürüm referansıdır.
