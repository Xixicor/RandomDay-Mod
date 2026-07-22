<a id="interpret-runtime-state-and-output-schemas"></a>
# Çalışma zamanı durumunu ve çıktı şemalarını yorumlayın

> **Kanonik İngilizce kaynağı:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Bu, standart alan-tamamlanmış şema kılavuzudur. Her alanın, durumun, boş değerin ve makine sonucunun ne anlama geldiğini yanıtlar. [çalışma zamanı dosya eşlemesini](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md).

Bu kılavuzdaki tüm yollar, aksi belirtilmedikçe, yüklü `RandomDay/` klasörü, bir satır yapılandırılmış sanal alanı veya isteğe bağlı bağdaştırıcı hedefini açıkça adlandırmadıkça. Çalışma zamanı çıktıları kurulumdan sonra oluşturulur ve her iki sürümün de üyesi değildir ZIP.

<a id="choose-the-authoritative-view"></a>
## Yetkili görünümü seçin

| Gerekir | Yetkili kaynak |
|---|---|
| Geçerli işlem tarafından yüklenen kurallar | RandomDayiçindeki işaretleyici`SandboxSettings.ini` başlangıçta okundu |
| Hazırlanan kuyruk muhasebesi | `runtime/rotation_state.txt`, şema `1` |
| Ayrıntılı yerel durum | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Genel makine tarafından okunabilirlik durumu | `web_export/today.json`, şema `2` ve `randomday_public_status_v2` |
| İnsanlar tarafından okunabilirlik durumu | `web_export/today.html`, aynı genel durum geçişinden türetilmiştir |
| Çeviri sözlüğü | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Tam sınırlı oyuncu bildirimi | `runtime/current/player_message_preview.txt` |

HTML görünüm, önizleme ve çevrilmiş özetler türetilmiş görünümlerdir. Korumalı alan işaretçisini, işlem sonucunu veya ham profil değerlerini geçersiz kılmazlar. Bilinen son iyi dosyaları, işlem yedeklerini, sepetleri, aynaları, bağdaştırıcı hedeflerini ve `UE4SS.log` [Çalışma zamanı dosyalarını](%C3%87ALI%C5%9EMA_ZAMANI_DOSYALARI.md).

<a id="rotation-state-schema"></a>
## Döndürme durumu şeması

`runtime/rotation_state.txt` şema kullanır `1` ve bir tane içeriyor `key=value` satır başına çift:

| Alan | Anlamı |
|---|---|
| `schema_version` | Olmalı `1`. |
| `mod_version` | Paket kimliği şu kaynaktan okundu: `.randomday_version`. |
| `rotation_id` | Uygun aile kümesindeki geçerli geçişin tanımlayıcısı. |
| `mode` | `selected_run`, `non_repeating_random_run` veya `rotation_run`. |
| `available_families` | Yapılandırma filtrelemesinden sonra virgülle ayrılmış uygun aile kimlikleri. |
| `remaining_families` | Mevcut yinelenmeyen geçişte henüz seçilmemiş uygun aileler. |
| `completed_families` | Geçerli geçişte kalıcı 17 konumlu sırasının tamamı tamamlanan aileler. |
| `active_family`, `active_day` | Seçim tamamlandığında kaydedilen aktif işaretleyici bilgisi. Korumalı alan işaretçisi bir sonraki önyüklemede yetkilidir. |
| `prepared_family`, `prepared_day` | Profil bir sonraki yeniden başlatma için tutuldu. |
| `active_run_id` | Hazırlanan seçimle ilişkili aile tarafından çalıştırılan tanımlayıcı. |
| `last_status` | Bu dosyayı oluşturan takvim seçim durumu. |
| `session_mode` | Çözülmüş kalıcı ayrılmış, geçici ayrılmış veya singleplayer/LAN yaşam döngüsü. |
| `start_day_mode` | Yeni bir çalıştırma için yapılandırılmış veya tek seferlik rastgele başlangıç seçeneği. |
| `day_progression_mode` | Sarmalanmış sıralı veya yinelenmeyen rastgele ilerleme. |
| `day_order` | Hazırlanacakları tam sıraya göre virgülle ayrılmış kalıcı gün kimlikleri. |
| `day_position` | Hazırlanan günün konumu `day_order`. |
| `updated_at` | Operatör karşılaştırması için yerel yazma süresi. |

Durum yazımı yalnızca şema işaretçisi, hazırlanan aile ve hazırlanan gün doğru şekilde okunduğunda kabul edilir. Okunamayan geçerli bir dosya `rotation_state.last_good.txt`; seçilen sanal alan işaretçisi oyunun geçerli işlem için ne yüklediğini belirlemeye devam eder.

<a id="runtime-status-json"></a>
## Çalışma zamanı durumu JSON

`runtime/current/randomday_status.json`, `status_schema=randomday_runtime_status_v2` kullanır. Ana alan grupları şunlardır:

| Grup | Alanlar ve yorumlama |
|---|---|
| Kimlik | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Seçim | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Etkin | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Hazırlanmış | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| İnsan özetleri | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Yazma kanıtı | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Adaptör kanıtı | `adapter_status`, `adapter_results`; her bağdaştırıcı kaydında uyumluluk kanıtı, transaction/rollback durumu, değiştirilen dosya sayısı ve düzeltilmiş hedef referansları |
| Sınırlar | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Teşhis | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Bilinmeyen etkin değerler, mevcut sanal alanın okunabilir bir veri içermediği anlamına gelir RandomDay işaretçisi. Hazırlanan değerlerle değiştirilmemelidir. Dışarıdaki adaptör yolları `runtime/` dışındaki bağdaştırıcı yolları bir temel ad referansına indirgenir ve teşhis dizeleri algılanan mutlak yolları çıkarır.

<a id="public-status-json"></a>
## Genel durum JSON

`web_export/today.json`, `schema_version=2` ve `status_schema=randomday_public_status_v2`. Bir operatörün ihtiyaç duyduğu kimlik, active/prepared, seçim, işlem, bağdaştırıcı ve yeniden başlatma sınırı gerçeklerini tekrarlar. Ayrıca şunları içerir:

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order` ve `prepared_day_position`;
- `family_selection_mode`, eski `family_locked_until_day_17` ve `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families` ve sayıları;
- hazır karşılaşma profili, katman, tema ve karma karşılaşma şansı;
- dünya kapsamı etkinleştirme, açık dünya ayarı, bilinmeyen dünya politikası ve yalnızca yapılandırılmış dışlanmış dünya kalıplarının sayısı;
- hazırlanmış mesaj ve birleştirilmiş mesaj önizlemeleri;
- `selected_at`, `sandbox_target`, `manual_copy_required` ve hazırlanmış hash.

`profile_status`, `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence` veya `write_failed_or_rollback`. `prepared_ready=true`'den biridir, hala aktif anlamına gelmez; daha sonraki başlangıç ​​işaretçisi gereklidir.

<a id="dictionary-and-translation-output"></a>
## Sözlük ve çeviri çıktısı

`runtime/current/randomday_dictionary.json`, `schema=randomday_runtime_dictionary_v2` ve sözlük sürümünü tanımlar `randomday_dictionary_v2`. Paket modlarını, seçim durumlarını, basınç alanlarını, ayar etiketlerini, ham değerleri ve sade dildeki anlamları açıklar. Bilinmeyen değerler, kendinden emin bir açıklamaya dönüştürülmek yerine açık olarak kalır.

`player_message_preview.txt`, `today.json`, `today.html` ve oyun içi bildirimler aynı çeviri modülünden elde edilen görünümlerdir. Temel profil ve ham `SandboxSettings.ini` değerler gerçeğin kaynağı olmaya devam ediyor.

<a id="failure-and-recovery-rules"></a>
## Arıza ve kurtarma kuralları

1. Başarısız bir bekleyen yazma veya doğrulama işlemi hiçbir zaman üretim hedefi haline gelmez.
2. Başarısız bir tanıtım veya üretim tekrarı, tutulan orijinalin geri yüklenmesini tetikler; işlem yedeği, geri yükleme başarısız olduğunda geri dönüştür.
3. Saklanan bir geri alma dosyası veya `rollback_failed` oyun veya sunucu durdurulduğunda durumun manuel olarak incelenmesi gerekir.
4. Başarılı bir sanal alan yazma işlemi ve başarısız rotasyon durumu işleme işlemi, hazır değil, bozulmuştur; bağdaştırıcılar ve hazırlanmış profil mesajları atlanır.
5. Dışa aktarma hatası korumalı alan sonucunu değiştirmez, ancak kullanışlı bir kaynağı kaldırır. İşlem günlüklerini, durumu ve dosya okumasını kullanın.
6. Çalışma zamanı çıkışları yerel operasyonel verilerdir. Bunları bir sürüme eklemeyin ZIP veya ayrı bir gizlilik incelemesine gerek kalmadan bunları örnek olarak yayınlayın.
