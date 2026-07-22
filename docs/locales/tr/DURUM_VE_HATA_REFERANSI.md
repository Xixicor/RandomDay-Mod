<a id="status-and-error-reference"></a>
# Durum ve hata referansı

> **Kanonik İngilizce kaynağı:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Çalışma zamanı dışa aktarımındaki tam `status`, `transaction_status`, `rollback_status` ve `error` değerlerini kullanın. Bir panel veya konsoldaki benzer ifadeler, bu alanların yerine geçmez.

Bu bölüm tam arama referansıdır. Yukarıdaki karar ağacı, ilgili kategori; bu tablolar tam makine değerlerini ve güvenli operatör yanıtlarını korur.

<a id="normal-or-informational-states"></a>
## Normal veya bilgilendirici durumlar

| Durum | Anlamı | Operatör yanıtı |
|---|---|---|
| `prepared_for_next_reboot` | Sonraki önyükleme için doğrulanmış bir profil yazıldı. | Eylem yok; mevcut oturum değişmedi. |
| `next_reboot_already_prepared` | Hedeflenen sonraki profil zaten hedefle eşleşiyor. | Eylem yok; başka bir döndürmeyi zorlamayın. |
| `already_current` / `unchanged` | Hedef zaten amaçlanan baytları içeriyor. | Eylem yok. |
| `applied` | Yazma ve üretim okuması başarılı oldu. | Bir sonraki önyüklemeden sonra active/prepared ayrımını doğrulayın. |
| `bootstrap_prepare_first_family_start_day` | Önceki döndürme durumu mevcut değil, böylece yapılandırılan ilk gün hazırlandı. | İlk kullanımda bekleniyor. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Depolanan durum kurtarıldı ve hazırlanan aynı profil yeniden yazıldı. | Kurtarılan günü doğrulayın; yeni bir rastgele seçim gerçekleşmedi. |
| `supervision_reconfirm_prepared_profile_no_advance` | Bir denetim geçişi mevcut hazırlığı doğruladı. | Beklenen; kuyruk iki kez ilerlemedi. |
| `external_mods_disabled` | İsteğe bağlı bağdaştırıcı işleme devre dışı bırakıldı. | Bağdaştırıcılar amaçlanmadıkça eylem yok. |
| `external_mods_processed` | Tüm etkin bağdaştırıcı planları bir terminal sonucuna ulaştı. | Her bağdaştırıcı satırını inceleyin. |

<a id="startup-configuration-errors"></a>
## Başlangıç yapılandırma hataları

Bu mesajlar, RandomDay bir profil yazmadan önce başlatmayı durdurur. Adlandırılmış ayarı veya paket işaretleyicisini düzeltin; doğrulama dalını atlamayın.

| Hata metni | Anlamı | Güvenli yanıt |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` eksik, hatalı biçimlendirilmiş veya yanlış paketten. | Tam bir paketi temiz bir hazırlama klasörüne yeniden yükleyin ve amaçlanan mod işaretleyicisini koruyun. |
| `invalid experience.mode` | `experience.mode` belgelenen değerlerden biri değil. | Geçici olarak `auto`, `persistent_dedicated`, `temporary_dedicated` veya `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | Manuel kopyalama paketi özel bir sunucu olarak yapılandırıldı. | Geri yükle `auto` veya `singleplayer_lan`; otomatik olarak dış dünyaya yönlendirmeyin. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Manuel kopyalama iş akışı için özel bir paket yapılandırıldı. | Geçici olarak `auto`, `persistent_dedicated` veya `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | İlk gün seçici geçersiz. | Tam olarak kullanın `configured` veya `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | Gün sırası seçici geçersiz. | Tam olarak kullanın `sequential` veya `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | Yapılandırılan başlangıç günü kesirli veya dışında döngü. | 1'den - 1'e kadar bir tam sayı kullanın `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | Yedekleme veya son iyi geri yükleme devre dışı bırakıldı. | Her iki güvenlik kilidini de geri yükleyin; RandomDay güvenli olmayan yazma işlemlerini kasıtlı olarak reddeder. |
| `external adapter transaction safety locks must remain true` | Bağdaştırıcı yaması veya yedekleme koruması devre dışı bırakıldı. | Her iki bağdaştırıcı güvenlik kilidini geri yükleyin veya bağdaştırıcıları grup olarak devre dışı bırakın. |
| `paths.world_name must be one folder name` | Yapılandırılan dünya adı bir ayırıcı veya güvenli olmayan karakter içeriyor. | Harfleri kullanarak yalnızca tam klasör adını girin, sayılar, boşluklar, alt çizgiler veya kısa çizgiler. |
| `required runtime directory unavailable` | Gerekli bir mod-local çıktı dizini oluşturulamadı veya onaylanamadı. | Yalnızca adlandırılmış RandomDay dizinini ve yazma iznini kontrol edin. |

<a id="profile-wide-configuration-errors"></a>
## Profil çapında yapılandırma hataları

Bu hatalar, korumalı alana yazmadan önce profil oluşturulmasını durdurur.

| Hata metni | Anlamı | Güvenli yanıt |
|---|---|---|
| `sandbox.profile_overrides must be a table` | Profil genelindeki dört seçenek başka bir Lua türüyle değiştirildi. | Belgelenen tabloyu şurada geri yükleyin: `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | Tablo, desteklenen dört anahtardan biri olmayan bir ayar içeriyor. | Adlandırılmış anahtarı kaldırın ve diğer korumalı alan ayarları için family/profile kaynaklarını kullanın. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` veya `AllowIronMode` değil `true` veya `false`. | Tırnaksız bir Lua boolean kullanın. |
| `sandbox.profile_overrides.<key> must be integer` | Destek değeri tam sayı değildir. | Tam sayı kullanın. |
| `sandbox.profile_overrides.<key> outside supported range` | Destek değeri dışında `0..1000`. | Arasından bir tam sayı seçin `0` ile `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Geri alma ve ara durumlar

| Değer | Anlamı | Güvenli yanıt |
|---|---|---|
| `not_started` / `pending` | İşlem veya bağdaştırıcı planı bir terminal sonucuna ulaşmadı. | Yalnızca geçerli sınırlı başlangıç geçişini bekleyin; kalıcı durum araştırma gerektirir. |
| `not_needed` | Geri alma gerekli değildi. | Eylem yok. |
| `original_held` | Orijinal hedef, yükseltmeden önce kurtarma konumuna taşındı. | İşlem tamamlanmamışken kurtarma dosyasını silmeyin. |
| `retained_after_success` | Yeni hedef doğrulandı, ancak temizleme kullanılamadığından veya kasıtlı olarak saklandığından kurtarma verileri kalıyor. | Adlandırılmış herhangi bir kurtarma dosyasını kaldırmadan önce üretim baytlarını doğrulayın. |
| `discarded_after_success` | Değiştirme doğrulandı ve geçici geri alma verileri temizlendi. | Eylem yok. |
| `rollback_failed` | Geri yükleme girişimi doğrulanamadı. | Sunucuyu durdurun ve son doğrulanan işlem yedeğini kullanın. |
| `skipped_state_persistence_failed` | Korumalı alan baytları hazırlandı, ancak döndürme durumu gerçekleşti kalıcı olmadığından bağdaştırıcılar ve hazırlıklı oyuncu mesajları atlandı. | Çalışma zamanı durumu depolamasını onarın; kuyruğu manuel olarak yeniden kaydetmeyin veya ilerletmeyin. |
| `failed` | Özet satırı, özel nedeni `error` veya işlem alanlarında olan bir terminal hatasını temsil eder. | İlk özel kodu izleyin; sorunu tek başına `failed` kullanarak gidermeyin. |

<a id="transaction-failures"></a>
## İşlem hataları

| Durum | Anlamı | Güvenli yanıt |
|---|---|---|
| `invalid_input` | Değiştirme isteğinde geçerli bir metin yoktu veya geçerli bir hedef yoktu. | Doğru yapılandırma; değiştirmeden yeniden denemeyin. |
| `stale_pending_cleanup_failed` | Beklemedeki eski bir dosya kaldırılamadı. | Manuel temizlemeden önce beklemedeki dosyayı durdurun ve koruyun. |
| `stale_rollback_requires_review` | Kurtarma verileri mevcut bir hedefin yanında bulunur ve güvenli bir şekilde atılamaz. | İkisini seçmeden önce hedef ve geri alma baytlarını karşılaştırın. |
| `interrupted_transaction_restore_failed` | Kesintiye uğrayan bir değiştirme sonrasındaki kurtarma, hedefi geri yükleyemedi. | Sunucuyu durdurun ve doğrulanmış bir yedeği geri yükleyin. |
| `interrupted_transaction_cleanup_failed` | Hedef kurtarıldı ancak eski işlem verileri temizlenemedi. | Hedef baytları doğrulayın, ardından yalnızca adı geçen eski sepeti kaldırın. |
| `pending_write_failed` |  aday yazılamadı. | Dar hedef dizini ve boş alanı kontrol edin. |
| `pending_readback_failed` / `pending_readback_mismatch` | Aday baytları okunamadı veya yazıldıktan sonra farklılaştı. | Bekleyen dosyayı yükseltmeyin. |
| `pending_validation_failed` | Aday, yükseltme öncesinde schema/profile doğrulamayı geçemedi. | Raporlanan anahtarı veya kuralı düzeltin; doğrulamayı atlamayın. |
| `operation_backup_failed` / `backup_failed` | Doğrulanmış bir yazma öncesi yedekleme oluşturulmadı. | Durdur; hiçbir hedef değişimine güvenilmemelidir. |
| `original_preserved_move_failed` | Orijinal hedef, kurtarma konumuna taşınamadı. | Tüm işlem dosyalarını koruyun ve manuel olarak kurtarın. |
| `promotion_failed` | Bekleyen aday, üretim hedefi haline gelemedi. | Yeniden denemeden önce orijinalin geri yüklenip yüklenmediğini kontrol edin. |
| `production_validation_failed` | Yükseltilen baytlar başarısız oldu üretim readback/validation. | Doğrulanmış yedeği geri yükleyin ve hedef yazıcıyı inceleyin. |
| `replacement_committed_recovery_cleanup_failed` | Değiştirme geçerli ancak geri alma verileri temizlenemedi. | Hedefi taahhüt edilmiş olarak değerlendirin; yalnızca doğrulanmış eski kurtarma verilerini kaldır. |
| `rollback_failed` | Otomatik geri yükleme doğrulamadı. | Sunucuyu durdurun ve manuel kurtarmayı kullanın. |

<a id="target-profile-adapter-and-export-failures"></a>
## Hedef, profil, bağdaştırıcı ve dışa aktarma hataları

| Durum | Anlamı | Güvenli yanıt |
|---|---|---|
| `target_refused` | Yapılandırılan yol, izin verilen mod sınırının dışında. | Yolu düzeltin; sınırı asla zayıflatmayın. |
| `target_directory_failed` | Hedef dizin oluşturulamadı veya onaylanamadı. | Yalnızca o dizinin varlığını ve izinlerini kontrol edin. |
| `profile_validation_failed` | Bir profilde bir anahtar eksik, yanlış type/range var veya kalan değişmez kuralı ihlal ediyor. | Profilde kaynağı onarmak için adlandırılmış anahtar, `sandbox.profile_overrides` ve profil referansı. |
| `skipped_incompatible` | İsteğe bağlı bir mod mevcut ancak desteklenen bağdaştırıcı imzasıyla eşleşmiyor. | Değiştirmeden bırakın veya bağdaştırıcıyı devre dışı bırakın. |
| `external_mods_partial` | Bazı isteğe bağlı bağdaştırıcılar tamamlandı ve diğerleri güvenli bir şekilde tamamlandı skipped/failed. | Bağdaştırıcı satırlarını bağımsız olarak inceleyin; korumalı alan sonucu ayrıdır. |
| `external_adapter_failed` | Gerekli bir bağdaştırıcı güvenli bir şekilde tamamlanmadı. | Yeniden denemeden önce doğrulanmış yedeğini geri yükleyin. |
| `degraded_state_persistence` | Korumalı alan hazırlığı tamamlandı ancak rotasyon durumu kalıcılığı tamamlanmadı. | Sonraki önyüklemenin doğru şekilde ilerleyebileceğini varsaymayın; onarım durumu depolama alanı. |
| `export_directory_failed` | `web_export/` oluşturulamadı veya yazılamadı. | Oyun hazırlığı hâlâ geçerli olabilir; raporlamayı ayrı ayrı onarın. |

<a id="translation-and-message-validation-errors"></a>
## Çeviri ve mesaj doğrulama hataları

Bunlar sözlük veya sunum sözleşmesi hatalarıdır. Yayınlanmadan önce doğrulanırlar ve sınırlı bir çalışma zamanı durumu uyarısı olarak da görünebilirler.

| Hata metni | Anlamı | Güvenli yanıt |
|---|---|---|
| `dictionary coverage mismatch` | Profil sözlüğü, belgelenen her ayarı açıklamaz. | Eksik sözlük girişini ekleyin ve profili yeniden çalıştırın generation/validation. |
| `missing profile setting` | Seçili bir profilde, dictionary/schema. | Profil ailesi kaynağının gerektirdiği bir ayar yok; bir çalışma zamanı varsayılanı icat etmeyin. |
| `empty explanation` | Bir ayar mevcut ancak operator/player açıklaması yok. | Yayınlanmadan önce sade dilli bir açıklama ekleyin. |
| `join line too wide` | Oluşturulan bir birleştirme satırı 42 karakterlik kaynak sınırını aşıyor. | Sözlüğü kısaltın ifade; istemci sarmalamaya güvenmeyin. |
| `join message too tall` | Oluşturulan birleştirme özeti dört satırı aşıyor. | Mesaj içeriğini azaltın veya yeniden önceliklendirin. |
