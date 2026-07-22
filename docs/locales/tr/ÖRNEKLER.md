<a id="worked-configuration-examples"></a>
# Çalışılmış yapılandırma örnekleri

> **Kanonik İngilizce kaynağı:** [EXAMPLES.md](../../EXAMPLES.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Bu örnekler, RandomDay'nin sıradan hazırlık, etkinleştirme, kurtarma ve uyumluluk sonuçlarını nasıl rapor ettiğini göstermek için icat edilmiş adları ve değerleri kullanır.

<a id="first-bootstrap"></a>
## İlk Önyükleme

Önce: çalışan oturum, RandomDay işaretçisi olmayan bir sanal alan yükledi.

Başarılı bir RandomDay başlatma işleminden sonra:

```text
selection_status=bootstrap_prepare_first_family_start_day
session_mode=temporary_dedicated
start_day_mode=configured
day_progression_mode=sequential
day_order=8,9,10,11,12,13,14,15,16,17,1,2,3,4,5,6,7
active_profile_id=unknown_current_boot
prepared_next_profile_id=<action-day-8-profile-id>
prepared_ready=true
restart_required_for_prepared_profile=true
```

Anlamı: geçerli oturum RandomDay tarafından bilinmiyor. Yapılandırılmış 8. Gün, bir sonraki yeniden başlatma için hazırdır ve tamamlanmış sipariş devam eder. 8. Günü henüz etkin olarak tanımlamayın.

<a id="normal-next-day"></a>
## Normal Sonraki Gün

Önce: Geçerli sanal alan işaretçisi, Eylem Günü 1'i tanımlar.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Anlamı: 1. Gün bu işlem için etkindir; 2. gün hazırlandı. Yeniden başlatma bir operatör kararıdır.

<a id="state-commit-failure"></a>
## Durum Kesinliği Hatası

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Anlamı: geçerli sanal alan baytları diskte olabilir, ancak RandomDay eşleşen bir kuyruk kaydını sürdüremedi. Sunucuyu durdurun, sanal alanı ve her iki dönüş durumu dosyasını koruyun ve manuel kurtarmayı takip edin. Başarılı bir sanal alan yazma işlemi tek başına sağlıklı hazırlanmış bir geçiş değildir.

<a id="primary-write-restored"></a>
## Birincil Yazma Geri Yüklendi

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Anlamı: üretim geri okuması başarısız oldu ve önceki dosya geri yüklendi. Başka bir başlatmadan önce işlem yedeklemesini ve ilk hatayı inceleyin. Hazırlanan profilin kullanılabilir olduğu sonucunu çıkarmayın.

<a id="adapter-outcomes"></a>
## Adaptör Sonuçları

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Anlamı: Ölümcül Lazerler hedefi, düzeninin tamamı tanınmadığından değiştirilmeden bırakıldı. ANTE Yukarı hedef zaten eşleşti. Hiçbir sonuç birincil korumalı alan işlemini değiştirmez.

Bir bağdaştırıcı rapor veriyorsa `rollback_failed`, etkilenen hizmeti durdurun ve hedefi, yardımcıları ve `runtime/backups/external_<operation>/` dizini.

<a id="singleplayer-or-lan"></a>
## Tek Oyunculu Veya LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Anlamı: RandomDay yalnızca yazdı `runtime/singleplayer_manual/SandboxSettings.ini`. Oyunu kapatın, dosyayı inceleyin, seçilen dünyayı yedekleyin ve manuel olarak kopyalayın. Çıktı, onu herhangi bir dünyanın yüklediğini kanıtlamaz.

<a id="incompatible-environment"></a>
## Uyumsuz Ortam

Abiyotik Faktör adı verilmediğinde veya UE4SS çalıştırma mevcut, sürüm kopyasında şunun belirtilmesi gerekir:

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

Yerel Lua ayrıştırma, sabitlemeler ve paket çıkarma yararlı kanıtlar olmaya devam ediyor ancak daha geniş bir uyumluluk iddiası haline gelmiyor.
