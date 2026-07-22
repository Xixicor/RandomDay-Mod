<a id="randomday---scavenger-family"></a>
# RandomDay - Çöpçü Ailesi

> **Kanonik İngilizce kaynağı:** [scavenger.md](../../../../profiles/families/scavenger.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Sürüm: `v0.3.16-alpha`

Ganimet yolları kârlı, kalabalık ve ahlaki açıdan denetimsizdir.

**Oyun tarzı:** yağma yolları ve açgözlü risk **Mesaj tonu:** tedarik zinciri şakaları

<a id="17-day-index"></a>
## 17 Günlük Dizin

| Gün | Profil | Koşullar | Ana baskı |
|---:|---|---|---|
| 1 | Gevşek Envanter Etiği | Standart baskı (1.79/5) | Çevresel baskı |
| 2 | Açık Kat Edinimi | Uygun koşullar (1.28/5) | Çevresel baskı |
| 3 | Şüpheli Atıştırmalıklar | Standart baskı (2.08/5) | Hayatta kalma baskısı |
| 4 | Tedarik Koşusu Temettü | Uygun koşullar (1.47/5) | Çevresel baskı |
| 5 | Güvenlik Makbuzu Kontrolü | Standart baskı (1.98/5) | Savaş baskısı |
| 6 | Yıpranmış Güzergah Satışı | Standart baskı (1.95/5) | Çevresel baskı |
| 7 | Gece Piyasası İzni | Standart baskı (1.98/5) | Savaş baskısı |
| 8 | Güzergah Temizleme Ücreti | Standart baskı (1.75/5) | Çevresel baskı |
| 9 | Rasyon Arbitrajı | Standart baskı (2.07/5) | Hayatta kalma baskısı |
| 10 | Sessiz Kâr Penceresi | Uygun koşullar (1.04/5) | Çevresel baskı |
| 11 | Eğitim Kurtarma | Uygun koşullar (1.47/5) | Çevresel baskı |
| 12 | Kara Laboratuvar Tasfiyesi | Standart baskı (2.43/5) | Savaş baskısı |
| 13 | Uzun Vadeli Envanter | Standart baskı (2.14/5) | Hayatta kalma baskısı |
| 14 | Tedarik Dolabı İkramiyesi | Uygun koşullar (1.02/5) | Çevresel baskı |
| 15 | Doğruluk Vergisi | Standart baskı (1.92/5) | Savaş baskısı |
| 16 | Deneysel İşaretleme | Standart baskı (2.12/5) | Çevresel baskı |
| 17 | Ceplerin Son Denetimi | Zorlu koşullar (2.68/5) | Savaş baskısı |

<a id="day-1---loose-inventory-ethics"></a>
## 1. Gün - Gevşek Envanter Etiği

**Profil Kimliği:** `scavenger_loose_inventory_ethics` **Genel koşullar:** Standart basınç (1.79/5) **Açık anlamı:** Standart basınç. Çevresel baskı: Standart basınç ana basınçtır. Hayatta kalma baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Üssü terk etmeden önce güç, su, barınak ve tehlike korumasını doğrulayın.

<a id="main-effects"></a>
### Ana etkiler

- Yığın kapasitesi olağanüstü (8x).
- Dost ateşi hasarı normalin çok altında (0,25x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,25x).
- Elektrik prizleri geceleri kapanıyor.
- Ganimet toplandıktan sonra geri dönebilir.

<a id="domain-ratings"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (1.86/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | standart (1.9/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.44/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.22/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.5/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **yağma rotası yönlendirmesi**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.07**
- Özel etkinlik şansı: **2**

<a id="exact-sandbox-settings"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.0 | Düşman tespit hızı 1x ile normale yakın. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.25 | Dayanıklılık kaybı açık ölüm 0,25x ile normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.0 | Düşmanın dayanıklılığı 1x'te normale yakın. |
| EnemyPlayerDamageMultiplier | 1.1 | Düşmanın oyunculara verdiği hasar 1,1x ile normale yakın. |
| EnemySpawnRate | 0.9 | Düşman frekansı 0,9x'te normale yakın. |
| FatigueSpeedMultiplier | 1.0 | Yorgunluk oranı 1x'te normale yakın. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.0 | Yiyecek bozulması 1x'te normale yakın. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.0 | Açlık oranı 1x'te normale yakın. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.5 | Öğe dayanıklılığı 1,5x'te normalin üzerinde. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.6 | Öğe ağırlığı 0,6x ile normalin altındadır. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 1.5 | Deneyim kazanımı 1,5x ile normalin üzerinde. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.0 | Soğutma 1x'te normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.0 | Lavabo doldurma hızı 1x ile normale yakın. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 1.0 | Susuzluk oranı normale yakın, 1 kat. |
| WeatherFrequency | 3 | Hava frekansı normal. |

<a id="optional-adapter-selection"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `scavenger_loose_inventory_ethics`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-acquisition"></a>
## 2. Gün - Açık Kat Edinimi

**Profil Kimliği:** `scavenger_open_floor_acquisition` **Genel koşullar:** Uygun koşullar (1.28/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Standart basınç ana basınçtır. Hayatta kalma baskısı: Uygun koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-1"></a>
### Ana etkiler

- Dost ateşi hasarı normalin çok altında (0x).
- Öğe dayanıklılığı son derece yüksektir (4x).
- Yığın kapasitesi olağanüstü (8x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,05x).
- Düşmanın savunmaya verdiği hasar normalin çok altında (0,1x).

<a id="domain-ratings-1"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | uygun (1.17/5) | Düşmanca baskı normalden daha hafif. |
| Hayatta kalma baskısı | uygun (1.34/5) | Günlük hayatta kalma ihtiyaçları affedicidir. |
| Kaynak baskısı | uygun (1.08/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (1.91/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.2/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-1"></a>
### Karşılaşma bağlamı

- Kademe: **hafif karşılaşmalar**
- Tema: **yağma rotası hazırlığı**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.028**
- Özel etkinlik şansı: **0**

<a id="exact-sandbox-settings-1"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 26 | Temel envanter boyutu, 26'daki yardım koşullarıdır. |
| BonusPerkPoints | 7 | Bonus avantaj puanları, 7'deki yardım koşullarıdır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.65 | Tutma oranı 0,65x ile normalin altında. |
| DamageToAlliesMultiplier | 0.0 | Dost ateşi hasarı 0x'te normalin çok altında. |
| DayNightCycleSpeedMultiplier | 0.9 | Gündüz-gece döngüsü hızı 0,9x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 0 | Ölüm cezaları minimum düzeydedir. |
| DetectionSpeedMultiplier | 0.65 | Düşman tespit hızı 0,65x ile normalin altında. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.05 | Ölüm durumunda dayanıklılık kaybı 0,05x ile normalin çok altında. |
| EnemyAccuracy | 1 | Düşmanın isabetliliği azaldı. |
| EnemyDeployableDamageMultiplier | 0.1 | Düşmanın savunmalara verdiği hasar 0,1x ile normalin çok altında. |
| EnemyHealthMultiplier | 0.9 | Düşmanın dayanıklılığı 0,9x ile normale yakın. |
| EnemyPlayerDamageMultiplier | 0.7 | Düşmanların oyunculara verdiği hasar 0,7x ile normalin altında. |
| EnemySpawnRate | 0.5 | Düşman frekansı 0,5x'te normalin çok altında. |
| FatigueSpeedMultiplier | 0.65 | Yorgunluk oranı 0,65x ile normalin altında. |
| FirstTimeStartingWeapon | 2 | Silah tedariğinin başlatılması standart basınç 2'de. |
| FoodSpoilSpeedMultiplier | 0.75 | Yiyecek bozulması aşağıda 0,75x'te normal. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.65 | Açlık oranı 0,65x'te normalin altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 4.0 | 4x'te öğe dayanıklılığı çok yüksek. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.3 | Eşya ağırlığı 0,3x ile normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.1 | Deneyim kazanımı 2,1x ile normalin oldukça üzerinde. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.5 | Soğutma normalin üzerinde 1,5x. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 2.0 | Lavabonun yeniden dolma hızı normalin oldukça üzerinde 2x. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.65 | Susuzluk oranı normalin altında, 0,65x. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-1"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `scavenger_open_floor_acquisition`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-3---questionable-snacks"></a>
## 3. Gün - Şüpheli Atıştırmalıklar

**Profil Kimliği:** `scavenger_questionable_snacks` **Genel koşullar:** Standart basınç (2.08/5) **Açık anlamı:** Standart basınç. Hayatta kalma baskısı: Zorlu koşullar ana baskıdır. Çevresel baskı: Standart baskı bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Yiyecek ve su taşıyın, uzun yolculuklardan önce dinlenin ve güvenli duraklar planlayın.

<a id="main-effects-2"></a>
### Ana etkiler

- Yığın kapasitesi olağanüstü (8x).
- Lavabo suyu güvenli olmayabilir.
- Dost ateşi hasarı normalin çok altında (0,25x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,25x).
- Oyun zorluğu: zor.

<a id="domain-ratings-2"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.04/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | zorlu (2.78/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | uygun (1.59/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.22/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.5/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-2"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **yağma rotası biyo kaynağı**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.091**
- Özel etkinlik şansı: **8**

<a id="exact-sandbox-settings-2"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.45 | Tutunma oranı: normalin üstünde 1,45x. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.1 | Düşman tespit hızı 1,1x ile normale yakın. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.25 | Dayanıklılık kaybı açık ölüm 0,25x ile normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 0.9 | Düşmanın savunmaya verdiği hasar 0,9x ile normale yakın. |
| EnemyHealthMultiplier | 1.1 | Düşmanın dayanıklılığı 1,1x ile normale yakın. |
| EnemyPlayerDamageMultiplier | 1.2 | Düşmanın oyunculara verdiği hasar 1,2x ile normalin üzerinde. |
| EnemySpawnRate | 0.9 | Düşman frekansı 0,9x'te normale yakın. |
| FatigueSpeedMultiplier | 1.1 | Yorgunluk oranı 1,1x ile normale yakın. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.25 | Yiyecek bozulması 1,25x ile normalin üzerinde. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.1 | Açlık oranı 1,1x ile normale yakın. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.25 | Öğe dayanıklılığı 1,25x ile normalin üzerinde. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.6 | Öğe ağırlığı 0,6x ile normalin altındadır. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 1.8 | Deneyim kazancı 1,8x ile normalin oldukça üzerindedir. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.75 | Soğutma 0,75x ile normalin altında. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.25 | Lavabo doldurma hızı 0,25x ile normalin çok altında. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.6 | Susuzluk oranı normalin üzerinde 1,6x. |
| WeatherFrequency | 3 | Hava frekansı normal. |

<a id="optional-adapter-selection-2"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `scavenger_questionable_snacks`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-run-dividend"></a>
## 4. Gün - Tedarik Koşusu Temettü

**Profil Kimliği:** `scavenger_supply_run_dividend` **Genel koşullar:** Uygun koşullar (1.47/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Standart basınç ana basınçtır. Mücadele baskısı: Uygun koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-3"></a>
### Ana etkiler

- Öğe dayanıklılığı son derece yüksektir (2,5x).
- Yığın kapasitesi olağanüstü (8x).
- Lavabo doldurma oranı çok yüksek (2,5x).
- Deneyim kazanımı normalin çok üzerinde (2,3x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,05x).

<a id="domain-ratings-3"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | uygun (1.51/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | uygun (1.5/5) | Günlük hayatta kalma ihtiyaçları affedicidir. |
| Kaynak baskısı | uygun (1.04/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (1.93/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.44/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-3"></a>
### Karşılaşma bağlamı

- Kademe: **hafif karşılaşmalar**
- Tema: **yağma rotası ganimet hareketliliği**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.056**
- Özel etkinlik şansı: **2**

<a id="exact-sandbox-settings-3"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.75 | Tutma oranı normalin altında 0,75x. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 0.8 | Düşman tespit hızı 0,8x ile normalin altında. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.05 | Ölüm durumunda dayanıklılık kaybı 0,05x ile normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 0.5 | Düşmanın savunmaya verdiği hasar 0,5x ile normalin çok altında. |
| EnemyHealthMultiplier | 0.9 | Düşmanın dayanıklılığı 0,9x ile normale yakın. |
| EnemyPlayerDamageMultiplier | 0.9 | Düşmanların oyunculara verdiği hasar 0,9x ile normale yakın. |
| EnemySpawnRate | 0.7 | Düşman frekansı 0,7x ile normalin altında. |
| FatigueSpeedMultiplier | 0.75 | Yorgunluk oranı 0,75x'te normalin altında. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.6 | Yiyecek bozulması 0,6x'te normalin altında. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.75 | Açlık oranı 0,75x ile normalin altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 2.5 | Öğe dayanıklılığı 2,5x ile son derece yüksek. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.2 | Öğe ağırlığı 0,2x ile normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.3 | Deneyim kazanımı 2,3x ile normalin oldukça üzerindedir. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.5 | Soğutma normalin üzerinde 1,5x. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 2.5 | Lavabo doldurma oranı 2,5x ile aşırıdır. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.75 | Susuzluk oranı 0,75x ile normalin altındadır. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-3"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `scavenger_supply_run_dividend`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-receipt-check"></a>
## 5. Gün - Güvenlik Makbuz Kontrolü

**Profil Kimliği:** `scavenger_security_receipt_check` **Genel koşullar:** Standart basınç (1.98/5) **Açık anlamı:** Standart basınç. Savaş basıncı: Standart basınç ana basınçtır. Çevresel baskı: Standart baskı bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-4"></a>
### Ana etkiler

- Yığın kapasitesi olağanüstü (8x).
- Dost ateşi hasarı normalin çok altında (0,1x).
- Deneyim kazanımı normalin çok üzerinde (2,1x).
- Düşman tespit hızı normalin oldukça üzerinde (2 kat).
- Oyun zorluğu: zor.

<a id="domain-ratings-4"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.39/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | standart (1.94/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.37/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.17/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.51/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-4"></a>
### Karşılaşma bağlamı

- Kademe: **ağır karşılaşmalar**
- Tema: **yağma rotası güvenliği**
- Maksimum aktif gruplar: **2**
- Karışık karşılaşma şansı: **0.119**
- Özel etkinlik şansı: **14**

<a id="exact-sandbox-settings-4"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.1 | Dost ateşi hasarı 0,1x ile normalin çok altında. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 2.0 | Düşman tespit hızı 2x ile normalin oldukça üzerinde. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.3 | Ölüm durumunda dayanıklılık kaybı 0,3x ile normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.2 | Düşmanın dayanıklılığı yukarıda 1,2x'te normal. |
| EnemyPlayerDamageMultiplier | 1.4 | Düşmanların oyunculara verdiği hasar 1,4x ile normalin üzerinde. |
| EnemySpawnRate | 1.35 | Düşman frekansı 1,35x ile normalin üzerinde. |
| FatigueSpeedMultiplier | 1.15 | Yorgunluk oranı 1,15x ile normale yakın. |
| FirstTimeStartingWeapon | 4 | Silah tedariğinin başlatılması 4'te uygun koşullardır. |
| FoodSpoilSpeedMultiplier | 1.0 | Yiyecek bozulması 1x'te normale yakın. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.0 | Açlık oranı 1x'te normale yakın. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.25 | Öğe dayanıklılığı 1,25x ile normalin üzerinde. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.6 | Öğe ağırlığı 0,6x ile normalin altındadır. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.1 | Deneyim kazanımı 2,1x ile normalin oldukça üzerinde. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.0 | Soğutma 1x'te normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.0 | Lavabo doldurma hızı 1x ile normale yakın. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 1.0 | Susuzluk oranı normale yakın, 1 kat. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-4"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `scavenger_security_receipt_check`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weathered-route-sale"></a>
## 6. Gün - Yıpranmış Rota İndirimi

**Profil Kimliği:** `scavenger_weathered_route_sale` **Genel koşullar:** Standart basınç (1.95/5) **Açık anlamı:** Standart basınç. Çevresel baskı: Standart basınç ana basınçtır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Üssü terk etmeden önce güç, su, barınak ve tehlike korumasını doğrulayın.

<a id="main-effects-5"></a>
### Ana etkiler

- Hava frekansı: çok sık.
- Yığın kapasitesi olağanüstü (8x).
- Dost ateşi hasarı normalin çok altında (0,25x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,25x).
- Oyun zorluğu: zor.

<a id="domain-ratings-5"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.07/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | standart (2.04/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.54/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.52/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.5/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-5"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **yağma rotası hava durumu**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.091**
- Özel etkinlik şansı: **10**

<a id="exact-sandbox-settings-5"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.25 | Gündüz-gece döngüsü hızı normalin üzerinde 1,25x. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.1 | Düşman tespit hızı 1,1x ile normale yakın. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.25 | Dayanıklılık kaybı açık ölüm 0,25x ile normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.1 | Düşmanın dayanıklılığı 1,1x ile normale yakın. |
| EnemyPlayerDamageMultiplier | 1.1 | Düşmanın oyunculara verdiği hasar 1,1x ile normale yakın. |
| EnemySpawnRate | 1.0 | Düşman frekansı 1x'te normale yakın. |
| FatigueSpeedMultiplier | 1.0 | Yorgunluk oranı 1x'te normale yakın. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.25 | Yiyecek bozulması 1,25x ile normalin üzerinde. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.1 | Açlık oranı 1,1x ile normale yakın. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.1 | Eşya dayanıklılığı 1,1x ile normale yakın. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.6 | Öğe ağırlığı 0,6x ile normalin altındadır. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 1.7 | Deneyim kazanımı normalin oldukça üzerinde 1,7x. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.8 | Soğutma 0,8x ile normalin altında. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.75 | Lavabo doldurma oranı normalin altında, 0,75x. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 1.35 | Susuzluk oranı normalin üzerinde, 1,35x. |
| WeatherFrequency | 5 | Hava sıklığı çok sık. |

<a id="optional-adapter-selection-5"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `scavenger_weathered_route_sale`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-market-permit"></a>
## 7. Gün - Gece Pazarı İzni

**Profil Kimliği:** `scavenger_night_market_permit` **Genel koşullar:** Standart basınç (1.98/5) **Açık anlamı:** Standart basınç. Savaş basıncı: Standart basınç ana basınçtır. Çevresel baskı: Standart baskı bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-6"></a>
### Ana etkiler

- Yığın kapasitesi olağanüstü (8x).
- Deneyim kazanımı normalin çok üzerinde (2,3x).
- Gündüz-gece durumu: gece ağırlıklı.
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,2x).
- Dost ateşi hasarı normalin çok altında (0,25x).

<a id="domain-ratings-6"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.38/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | standart (1.93/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.31/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.33/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.49/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-6"></a>
### Karşılaşma bağlamı

- Kademe: **ağır karşılaşmalar**
- Tema: **ganimet rotası gecesi**
- Maksimum aktif gruplar: **2**
- Karışık karşılaşma şansı: **0.119**
- Özel etkinlik şansı: **16**

<a id="exact-sandbox-settings-6"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.95 | Tutma oranı normale yakın 0,95x. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.7 | Düşman tespit hızı 1,7x ile normalin oldukça üzerinde. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.2 | Ölüm durumunda dayanıklılık kaybı 0,2x ile normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.2 | Düşmanın dayanıklılığı yukarıda 1,2x'te normal. |
| EnemyPlayerDamageMultiplier | 1.3 | Düşmanın oyunculara verdiği hasar 1,3x ile normalin üzerinde. |
| EnemySpawnRate | 1.45 | Düşman frekansı 1,45x ile normalin üzerinde. |
| FatigueSpeedMultiplier | 1.3 | Yorgunluk oranı 1,3x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 5 | Silah tedariğine başlamak için uygun koşullar 5'te. |
| FoodSpoilSpeedMultiplier | 1.0 | Yiyecek bozulması 1x'te normale yakın. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.95 | Açlık oranı 0,95x ile normale yakın. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.5 | Öğe dayanıklılığı 1,5x'te normalin üzerinde. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.5 | Öğe ağırlığı 0,5x'te normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.3 | Deneyim kazanımı 2,3x ile normalin oldukça üzerindedir. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.0 | Soğutma 1x'te normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.0 | Lavabo doldurma hızı 1x ile normale yakın. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.95 | Susuzluk oranı 0,95x ile normale yakın. |
| WeatherFrequency | 4 | Hava sıklığı sık. |

<a id="optional-adapter-selection-6"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `scavenger_night_market_permit`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-clearance-fee"></a>
## 8. Gün - Rota Temizleme Ücreti

**Profil Kimliği:** `scavenger_route_clearance_fee` **Genel koşullar:** Standart basınç (1.75/5) **Açık anlamı:** Standart basınç. Çevresel baskı: Standart basınç ana basınçtır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Üssü terk etmeden önce güç, su, barınak ve tehlike korumasını doğrulayın.

<a id="main-effects-7"></a>
### Ana etkiler

- Gündüz-gece döngüsü hızı çok yüksek (3x).
- Yığın kapasitesi olağanüstü (8x).
- Deneyim kazanımı normalin çok üzerinde (2,3x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,15x).
- Dost ateşi hasarı normalin çok altında (0,25x).

<a id="domain-ratings-7"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.07/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | uygun (1.42/5) | Günlük hayatta kalma ihtiyaçları affedicidir. |
| Kaynak baskısı | uygun (1.18/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.56/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.47/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-7"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **yağma rotası rotası**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.105**
- Özel etkinlik şansı: **14**

<a id="exact-sandbox-settings-7"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.7 | Tutma oranı 0,7x ile normalin altında. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 3.0 | Gündüz-gece döngüsü hızı çok yüksek 3x. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.4 | Düşman tespit hızı 1,4x ile normalin üzerinde. |
| DisableResearchMinigame | true | Araştırma bypass'ı etkinleştirildi. |
| DurabilityLossOnDeathMultiplier | 0.15 | Ölümde dayanıklılık kaybı 0,15x ile normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 0.8 | Savunmalara verilen düşman hasarı 0,8x ile normalin altında. |
| EnemyHealthMultiplier | 0.9 | Düşmanın dayanıklılığı 0,9x ile normale yakın. |
| EnemyPlayerDamageMultiplier | 1.1 | Düşmanın oyunculara verdiği hasar 1,1x ile normale yakın. |
| EnemySpawnRate | 1.2 | Düşmanın frekansı normalin üzerinde 1,2x. |
| FatigueSpeedMultiplier | 0.7 | Yorgunluk oranı 0,7x ile normalin altında. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.9 | Gıda bozulması 0,9x ile normale yakın. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.7 | Açlık oranı 0,7x ile normalin altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.25 | Öğe dayanıklılığı 1,25x ile normalin üzerinde. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.4 | Öğe ağırlığı 0,4x'te normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.3 | Deneyim kazanımı 2,3x ile normalin oldukça üzerindedir. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.1 | Soğutma 1,1x ile normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.5 | Yükleme yeniden doldurma oranı 1,5x ile normalin üzerinde. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.7 | Susuzluk oranı 0,7x ile normalin altında. |
| WeatherFrequency | 3 | Hava frekansı normal. |

<a id="optional-adapter-selection-7"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `scavenger_route_clearance_fee`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-arbitrage"></a>
## 9. Gün - Erzak Arbitrajı

**Profil Kimliği:** `scavenger_ration_arbitrage` **Genel koşullar:** Standart basınç (2.07/5) **Açık anlamı:** Standart basınç. Hayatta kalma baskısı: Zorlu koşullar ana baskıdır. Çevresel baskı: Standart baskı bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Yiyecek ve su taşıyın, uzun yolculuklardan önce dinlenin ve güvenli duraklar planlayın.

<a id="main-effects-8"></a>
### Ana etkiler

- Yığın kapasitesi olağanüstü (8x).
- Lavabo suyu güvenli olmayabilir.
- Dost ateşi hasarı normalin çok altında (0,25x).
- Gıda bozulması normalin çok üzerindedir (2 kat).
- Elektrik prizleri geceleri kapanıyor.

<a id="domain-ratings-8"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (1.93/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | zorlu (2.81/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | standart (1.75/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.17/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.53/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-8"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **yağma rotası kıtlığı**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.084**
- Özel etkinlik şansı: **8**

<a id="exact-sandbox-settings-8"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.25 | Tutma oranı 1,25x ile normalin üzerindedir. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.1 | Düşman tespit hızı 1,1x ile normale yakın. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.35 | Ölüm durumunda dayanıklılık kaybı 0,35x ile normalin çok altındadır. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.2 | Düşmanın dayanıklılığı yukarıda 1,2x'te normal. |
| EnemyPlayerDamageMultiplier | 1.2 | Düşmanın oyunculara verdiği hasar 1,2x ile normalin üzerinde. |
| EnemySpawnRate | 0.9 | Düşman frekansı 0,9x'te normale yakın. |
| FatigueSpeedMultiplier | 1.3 | Yorgunluk oranı 1,3x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 2.0 | Gıda bozulması 2x ile normalin oldukça üzerindedir. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.4 | Açlık oranı 1,4x ile normalin üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 0.75 | Öğe dayanıklılığı 0,75x ile normalin altında. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.8 | Öğe ağırlığı 0,8x ile normalin altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 1.7 | Deneyim kazanımı normalin oldukça üzerinde 1,7x. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.5 | Soğutma normalin çok altında 0,5x. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.5 | Lavabo doldurma oranı 0,5x ile normalin çok altında. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.4 | Susuzluk oranı 1,4x ile normalin üzerinde. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-8"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `scavenger_ration_arbitrage`
- `lethal_lasers`: `standard_safety`

<a id="day-10---quiet-profit-window"></a>
## 10. Gün - Sessiz Kâr Penceresi

**Profil Kimliği:** `scavenger_quiet_profit_window` **Genel koşullar:** Uygun koşullar (1.04/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Uygun koşullar ana baskıdır. İyileşme baskısı: Uygun koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-9"></a>
### Ana etkiler

- Bonus avantaj puanları yardım koşullarıdır (10).
- Dost ateşi hasarı normalin çok altında (0x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0x).
- Öğe dayanıklılığı son derece yüksektir (3x).
- Yığın kapasitesi olağanüstü (8x).

<a id="domain-ratings-9"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | uygun (0.92/5) | Düşmanca baskı normalden daha hafif. |
| Hayatta kalma baskısı | uygun (1.02/5) | Günlük hayatta kalma ihtiyaçları affedicidir. |
| Kaynak baskısı | uygun (0.88/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | uygun (1.54/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.19/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-9"></a>
### Karşılaşma bağlamı

- Kademe: **minimum karşılaşma**
- Tema: **yağma rotası kurtarma**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0**
- Özel etkinlik şansı: **0**

<a id="exact-sandbox-settings-9"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 30 | Temel envanter boyutu, kurtarma koşulları 30'dur. |
| BonusPerkPoints | 10 | Bonus avantaj puanı, 10'daki kurtarma koşullarıdır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.45 | Devam oranı çok yüksek 0,45x ile normalin altında. |
| DamageToAlliesMultiplier | 0.0 | Dost ateşi hasarı 0x'te normalin çok altında. |
| DayNightCycleSpeedMultiplier | 0.85 | Gündüz-gece döngüsü hızı 0,85x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 0 | Ölüm cezaları minimum düzeydedir. |
| DetectionSpeedMultiplier | 0.4 | Düşman tespit hızı 0,4x ile normalin çok altında. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.0 | Ölüm halindeki dayanıklılık kaybı 0x'te normalin çok altında. |
| EnemyAccuracy | 1 | Düşmanın isabetliliği azaldı. |
| EnemyDeployableDamageMultiplier | 0.1 | Düşmanın savunmalara verdiği hasar 0,1x ile normalin çok altında. |
| EnemyHealthMultiplier | 0.7 | Düşman direnci 0,7x'te normalin çok altında. |
| EnemyPlayerDamageMultiplier | 0.4 | Düşmanların oyunculara verdiği hasar 0,4x ile normalin çok altında. |
| EnemySpawnRate | 0.4 | Düşman frekansı 0,4x ile normalin çok altında. |
| FatigueSpeedMultiplier | 0.45 | Yorgunluk oranı 0,45x ile normalin çok altında. |
| FirstTimeStartingWeapon | 2 | Silah tedariğinin başlatılması standart basınç 2'de. |
| FoodSpoilSpeedMultiplier | 0.4 | Yiyecek bozulması 0,4x ile normalin çok altında. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.45 | Açlık oranı 0,45x ile normalin çok altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 3.0 | Ürün dayanıklılığı 3x ile son derece yüksek. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.2 | Öğe ağırlığı 0,2x ile normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 3.0 | Tecrübe kazancı 3 kat yüksek. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | false | Radyasyon hasarı devre dışı. |
| RefrigerationEffectivenessMultiplier | 1.8 | Soğutma 1,8x'te normalin oldukça üzerinde. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 3.0 | Lavabo doldurma oranı 3 kat ile çok yüksek. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.45 | Susuzluk oranı 0,45x ile normalin çok altında. |
| WeatherFrequency | 1 | Hava sıklığı nadirdir. |

<a id="optional-adapter-selection-9"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `scavenger_quiet_profit_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-salvage"></a>
## 11. Gün - Eğitim Kurtarma

**Profil Kimliği:** `scavenger_training_salvage` **Genel koşullar:** Uygun koşullar (1.47/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Standart basınç ana basınçtır. Hayatta kalma baskısı: Uygun koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-10"></a>
### Ana etkiler

- Ölüm halinde dayanıklılık kaybı normalin çok altında (0x).
- Yığın kapasitesi olağanüstü (8x).
- Deneyim kazanımı olağanüstü (3,9x).
- Öğe dayanıklılığı normalin çok üzerinde (2,25x).
- Dost ateşi hasarı normalin çok altında (0,25x).

<a id="domain-ratings-10"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | uygun (1.49/5) | Düşmanca baskı normalden daha hafif. |
| Hayatta kalma baskısı | uygun (1.58/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.0/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (1.96/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.43/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-10"></a>
### Karşılaşma bağlamı

- Kademe: **hafif karşılaşmalar**
- Tema: **yağma rotası eğitimi**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.049**
- Özel etkinlik şansı: **3**

<a id="exact-sandbox-settings-10"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.8 | Kontinans oranı 0,8x ile normalin altında. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.15 | Gündüz-gece döngüsü hızı 1,15x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 0.9 | Düşman tespit hızı 0,9x ile normale yakın. |
| DisableResearchMinigame | true | Araştırma bypass'ı etkinleştirildi. |
| DurabilityLossOnDeathMultiplier | 0.0 | Ölüm halindeki dayanıklılık kaybı 0x'te normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 0.4 | Düşmanın savunmaya verdiği hasar 0,4x ile normalin çok altında. |
| EnemyHealthMultiplier | 0.9 | Düşmanın dayanıklılığı 0,9x ile normale yakın. |
| EnemyPlayerDamageMultiplier | 0.7 | Düşmanların oyunculara verdiği hasar 0,7x ile normalin altında. |
| EnemySpawnRate | 0.8 | Düşman frekansı 0,8x ile normalin altında. |
| FatigueSpeedMultiplier | 0.8 | Yorgunluk oranı 0,8x ile normalin altında. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.8 | Yiyecek bozulması 0,8x ile normalin altında. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.8 | Açlık oranı 0,8x ile normalin altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 2.25 | Öğe dayanıklılık 2,25x ile normalin çok üzerindedir. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.4 | Öğe ağırlığı 0,4x'te normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 3.9 | Deneyim kazanımı 3,9 kat ile son derece yüksek. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.3 | Soğutma normalin üzerindedir 1,3x. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 2.0 | Lavabonun yeniden dolma hızı normalin oldukça üzerinde 2x. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.8 | Susuzluk oranı 0,8x ile normalin altında. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-10"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `scavenger_training_salvage`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-liquidation"></a>
## 12. Gün - Kara Laboratuvar Tasfiyesi

**Profil Kimliği:** `scavenger_black_lab_liquidation` **Genel koşullar:** Standart basınç (2.43/5) **Açık anlamı:** Standart basınç. Mücadele baskısı: Zorlu koşullar ana baskıdır. Hayatta kalma baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-11"></a>
### Ana etkiler

- Oyun zorluğu: çok zor.
- Yığın kapasitesi olağanüstü (8x).
- Deneyim kazanımı olağanüstü (3,1x).
- Lavabo suyu güvenli olmayabilir.
- Dost ateşi hasarı normalin çok altında (0,15x).

<a id="domain-ratings-11"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | zorlu (3.15/5) | Düşmanca baskı arttı; etkileşime geçmeden önce hazırlık yapın. |
| Hayatta kalma baskısı | standart (2.53/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.46/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.22/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | standart (1.79/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-11"></a>
### Karşılaşma bağlamı

- Kademe: **ekstrem karşılaşmalar**
- Tema: **yağma rotası yoğun testi**
- Maksimum aktif gruplar: **2**
- Karışık karşılaşma şansı: **0.161**
- Özel etkinlik şansı: **22**

<a id="exact-sandbox-settings-11"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.15 | Dost ateşi hasarı 0,15x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 2 | Ölüm cezaları ağırdır. |
| DetectionSpeedMultiplier | 2.0 | Düşman tespit hızı 2x ile normalin oldukça üzerinde. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.4 | Ölüm halinde dayanıklılık kaybı 0,4x ile normalin çok altındadır. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 1.4 | Düşmanın savunmaya verdiği hasar 1,4x ile normalin üzerinde. |
| EnemyHealthMultiplier | 1.8 | Düşmanın direnci 1,8x ile normalin oldukça üzerinde. |
| EnemyPlayerDamageMultiplier | 2.1 | Düşmanların oyunculara verdiği hasar 2,1x ile normalin oldukça üzerinde. |
| EnemySpawnRate | 2.0 | Düşman frekansı 2 kat normalin oldukça üzerinde. |
| FatigueSpeedMultiplier | 1.15 | Yorgunluk oranı 1,15x ile normale yakın. |
| FirstTimeStartingWeapon | 1 | Silah tedariğinin başlangıcında standart basınç 1'dir. |
| FoodSpoilSpeedMultiplier | 1.15 | Yiyecek bozulması 1,15x ile normale yakın. |
| GameDifficulty | 3 | Oyun zorluğu çok zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.15 | Açlık oranı 1,15x ile normale yakın. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.1 | Eşya dayanıklılığı 1,1x ile normale yakın. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.6 | Öğe ağırlığı 0,6x ile normalin altındadır. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 3.1 | 3,1x ile deneyim kazanımı son derece yüksektir. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.85 | Soğutma 0,85x ile normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.75 | Lavabo doldurma oranı normalin altında, 0,75x. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.15 | Susuzluk oranı 1,15x ile normale yakın. |
| WeatherFrequency | 3 | Hava frekansı normal. |

<a id="optional-adapter-selection-11"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `scavenger_black_lab_liquidation`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-haul-inventory"></a>
## 13. Gün - Uzun Mesafe Envanteri

**Profil Kimliği:** `scavenger_long_haul_inventory` **Genel koşullar:** Standart basınç (2.14/5) **Açık anlamı:** Standart basınç. Hayatta kalma baskısı: Zorlu koşullar ana baskıdır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Yiyecek ve su taşıyın, uzun yolculuklardan önce dinlenin ve güvenli duraklar planlayın.

<a id="main-effects-12"></a>
### Ana etkiler

- Yığın kapasitesi olağanüstü (8x).
- Lavabo suyu güvenli olmayabilir.
- Dost ateşi hasarı normalin çok altında (0,25x).
- Oyun zorluğu: zor.
- Deneyim kazanımı normalin çok üzerinde (2 kat).

<a id="domain-ratings-12"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.07/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | zorlu (3.02/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | uygun (1.69/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.01/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.53/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-12"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **yağma rotası dayanıklılık**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.098**
- Özel etkinlik şansı: **7**

<a id="exact-sandbox-settings-12"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.35 | Tutunma oranı 1,35x ile normalin üzerinde. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 0.3 | Gündüz-gece döngüsü hızı 0,3x ile normalin çok altında. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.1 | Düşman tespit hızı 1,1x ile normale yakın. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.35 | Ölüm durumunda dayanıklılık kaybı 0,35x ile normalin çok altındadır. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 0.9 | Düşmanın savunmaya verdiği hasar 0,9x ile normale yakın. |
| EnemyHealthMultiplier | 1.3 | Düşmanın dayanıklılığı 1,3x ile normalin üzerinde. |
| EnemyPlayerDamageMultiplier | 1.3 | Düşmanın oyunculara verdiği hasar 1,3x ile normalin üzerinde. |
| EnemySpawnRate | 0.8 | Düşman frekansı 0,8x ile normalin altında. |
| FatigueSpeedMultiplier | 1.5 | Yorgunluk oranı 1,5x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.8 | Gıda bozulması 1,8x ile normalin oldukça üzerinde. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.6 | Açlık oranı 1,6x ile normalin üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 0.9 | Ürün dayanıklılığı 0,9x ile normale yakın. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.9 | Öğe ağırlığı normale yakın 0,9x. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.0 | Deneyim kazanımı 2 kat ile normalin oldukça üzerinde. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.65 | Soğutma 0,65x ile normalin altında. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.35 | Lavabo doldurma oranı 0,35x ile normalin çok altında. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.6 | Susuzluk oranı normalin üzerinde 1,6x. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-12"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `scavenger_long_haul_inventory`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-jackpot"></a>
## 14. Gün - Tedarik Dolabı İkramiyesi

**Profil Kimliği:** `scavenger_supply_closet_jackpot` **Genel koşullar:** Uygun koşullar (1.02/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Uygun koşullar ana baskıdır. İyileşme baskısı: Uygun koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-13"></a>
### Ana etkiler

- Temel envanter boyutu yardım koşullarıdır (40).
- Bonus avantaj puanları yardım koşullarıdır (12).
- Dost ateşi hasarı normalin çok altında (0x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0x).
- Öğe dayanıklılığı son derece yüksektir (6 kat).

<a id="domain-ratings-13"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | uygun (1.0/5) | Düşmanca baskı normalden daha hafif. |
| Hayatta kalma baskısı | uygun (0.86/5) | Günlük hayatta kalma ihtiyaçları affedicidir. |
| Kaynak baskısı | rahatlama (0.77/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | uygun (1.58/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.19/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-13"></a>
### Karşılaşma bağlamı

- Kademe: **minimum karşılaşma**
- Tema: **yağma rotası yardımı**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0**
- Özel etkinlik şansı: **0**

<a id="exact-sandbox-settings-13"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 40 | Temel envanter boyutu 40'taki kurtarma koşullarıdır. |
| BonusPerkPoints | 12 | Bonus avantaj puanı, 12'deki kurtarma koşullarıdır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.35 | Devam oranı 0,35x ile normalin çok altında. |
| DamageToAlliesMultiplier | 0.0 | Dost ateşi hasarı 0x'te normalin çok altında. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 0 | Ölüm cezaları minimum düzeydedir. |
| DetectionSpeedMultiplier | 0.6 | Düşman tespit hızı 0,6x ile normalin altında. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.0 | Ölüm halindeki dayanıklılık kaybı 0x'te normalin çok altında. |
| EnemyAccuracy | 1 | Düşmanın isabetliliği azaldı. |
| EnemyDeployableDamageMultiplier | 0.1 | Düşmanın savunmalara verdiği hasar 0,1x ile normalin çok altında. |
| EnemyHealthMultiplier | 0.8 | Düşmanın dayanıklılığı 0,8x ile normalin çok altında. |
| EnemyPlayerDamageMultiplier | 0.5 | Düşmanın oyunculara verdiği hasar 0,5x ile normalin çok altında. |
| EnemySpawnRate | 0.4 | Düşman frekansı 0,4x ile normalin çok altında. |
| FatigueSpeedMultiplier | 0.35 | Yorgunluk oranı 0,35x ile normalin çok altında. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.25 | Gıda bozulması 0,25x ile normalin çok altında. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.35 | Açlık oranı 0,35x ile normalin çok altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 6.0 | Eşya dayanıklılığı 6x ile son derece yüksek. |
| ItemStackSizeMultiplier | 14 | Yığın kapasitesi 14x ile son derece yüksek. |
| ItemWeightMultiplier | 0.1 | Öğe ağırlığı normalin çok altında 0,1x. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 4.4 | Deneyim kazanımı aşırı derecede yüksek 4,4x. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | false | Radyasyon hasarı devre dışı. |
| RefrigerationEffectivenessMultiplier | 2.0 | Soğutma 2 kat normalin oldukça üzerinde. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 5.0 | Lavabo dolum oranı 5 kat yüksek. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.35 | Susuzluk oranı 0,35x ile normalin çok altında. |
| WeatherFrequency | 1 | Hava sıklığı nadirdir. |

<a id="optional-adapter-selection-13"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `scavenger_supply_closet_jackpot`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-tax"></a>
## 15. Gün - Doğruluk Vergisi

**Profil Kimliği:** `scavenger_accuracy_tax` **Genel koşullar:** Standart basınç (1.92/5) **Açık anlamı:** Standart basınç. Savaş basıncı: Standart basınç ana basınçtır. Çevresel baskı: Standart baskı bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-14"></a>
### Ana etkiler

- Dost ateşi hasarı normalin çok altında (0x).
- Yığın kapasitesi olağanüstü (8x).
- Deneyim kazanımı olağanüstü (2,5x).
- Oyun zorluğu: zor.
- Elektrik prizleri geceleri kapanıyor.

<a id="domain-ratings-14"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.2/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | standart (1.98/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.38/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.17/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.51/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-14"></a>
### Karşılaşma bağlamı

- Kademe: **ağır karşılaşmalar**
- Tema: **yağma rotası hassasiyeti**
- Maksimum aktif gruplar: **2**
- Karışık karşılaşma şansı: **0.119**
- Özel etkinlik şansı: **14**

<a id="exact-sandbox-settings-14"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.0 | Dost ateşi hasarı 0x'te normalin çok altında. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.5 | Düşman tespit hızı 1,5x ile normalin üzerinde. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.3 | Ölüm durumunda dayanıklılık kaybı 0,3x ile normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 0.8 | Savunmalara verilen düşman hasarı 0,8x ile normalin altında. |
| EnemyHealthMultiplier | 1.0 | Düşmanın dayanıklılığı 1x'te normale yakın. |
| EnemyPlayerDamageMultiplier | 1.5 | Düşmanın oyunculara verdiği hasar 1,5x ile normalin üzerinde. |
| EnemySpawnRate | 1.05 | Düşman frekansı şu saatte normale yakın: 1.05x. |
| FatigueSpeedMultiplier | 1.25 | Yorgunluk oranı 1,25x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 4 | Silah tedariğinin başlatılması 4'te uygun koşullardır. |
| FoodSpoilSpeedMultiplier | 1.0 | Yiyecek bozulması 1x'te normale yakın. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.0 | Açlık oranı 1x'te normale yakın. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.0 | Eşya dayanıklılığı 1x ile normale yakın. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.6 | Öğe ağırlığı 0,6x ile normalin altındadır. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.5 | Deneyim kazanımı 2,5x ile son derece yüksek. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.0 | Soğutma 1x'te normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.0 | Lavabo doldurma hızı 1x ile normale yakın. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 1.0 | Susuzluk oranı normale yakın, 1 kat. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-14"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `scavenger_accuracy_tax`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-markup"></a>
## 16. Gün - Deneysel İşaretleme

**Profil Kimliği:** `scavenger_experimental_markup` **Genel koşullar:** Standart basınç (2.12/5) **Açık anlamı:** Standart basınç. Çevresel baskı: Standart basınç ana basınçtır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Üssü terk etmeden önce güç, su, barınak ve tehlike korumasını doğrulayın.

<a id="main-effects-15"></a>
### Ana etkiler

- Oyun zorluğu: çok zor.
- Bazı radyasyonlarda görünür bir uyarı olmayabilir.
- Hava frekansı: çok sık.
- Dost ateşi hasarı normalin çok altında (0x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0x).

<a id="domain-ratings-15"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.45/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | standart (2.36/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.14/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.59/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.67/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-15"></a>
### Karşılaşma bağlamı

- Kademe: **ekstrem karşılaşmalar**
- Tema: **yağma rotası deneysel**
- Maksimum aktif gruplar: **2**
- Karışık karşılaşma şansı: **0.154**
- Özel etkinlik şansı: **20**

<a id="exact-sandbox-settings-15"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.2 | Devam oranı: 1,2x ile normalin üzerinde. |
| DamageToAlliesMultiplier | 0.0 | Dost ateşi hasarı 0x'te normalin çok altında. |
| DayNightCycleSpeedMultiplier | 1.5 | Gündüz-gece döngüsü hızı 1,5x ile normalin üzerinde. |
| DayNightCycleState | 1 | Gündüz-gece durumu gündüz ağırlıklı. |
| DeathPenalties | 2 | Ölüm cezaları ağırdır. |
| DetectionSpeedMultiplier | 0.6 | Düşman tespit hızı 0,6x ile normalin altında. |
| DisableResearchMinigame | true | Araştırma bypass'ı etkinleştirildi. |
| DurabilityLossOnDeathMultiplier | 0.0 | Ölüm halindeki dayanıklılık kaybı 0x'te normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 0.7 | Düşmanın savunmaya verdiği hasar 0,7x ile normalin altında. |
| EnemyHealthMultiplier | 1.5 | Düşmanın dayanıklılığı 1,5x ile normalin üzerinde. |
| EnemyPlayerDamageMultiplier | 1.0 | Düşmanın oyunculara verdiği hasar 1x'te normale yakın. |
| EnemySpawnRate | 1.3 | Düşman frekansı 1,3x ile normalin üzerinde. |
| FatigueSpeedMultiplier | 0.8 | Yorgunluk oranı 0,8x ile normalin altında. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.4 | Yiyecek bozulması 0,4x ile normalin çok altında. |
| GameDifficulty | 3 | Oyun zorluğu çok zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.8 | Açlık oranı 0,8x ile normalin altında. |
| InvisibleRadiation | true | Bazı radyasyonlarda görünür bir uyarı olmayabilir. |
| ItemDurabilityMultiplier | 5.0 | Öğe dayanıklılığı 5 kat ile son derece yüksektir. |
| ItemStackSizeMultiplier | 8 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.1 | Öğe ağırlığı normalin çok altında 0,1x. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 5.0 | Deneyim kazanımı 5 kat olağanüstü. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 2.0 | Soğutma 2 kat normalin oldukça üzerinde. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.0 | Lavabo doldurma hızı 0x ile normalin çok altında. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.2 | Susuzluk oranı normalin üzerinde, 1,2 kat. |
| WeatherFrequency | 5 | Hava sıklığı çok sık. |

<a id="optional-adapter-selection-15"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `scavenger_experimental_markup`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-audit-of-pockets"></a>
## 17. Gün - Ceplerin Son Denetimi

**Profil Kimliği:** `scavenger_final_audit_of_pockets` **Genel koşullar:** Zorlu koşullar (2.68/5) **Açık anlamı:** Zorlu koşullar. Savaş baskısı: Ağır koşullar ana baskıdır. Hayatta kalma baskısı: Zorlu koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-16"></a>
### Ana etkiler

- Oyun zorluğu: çok zor.
- Hava frekansı: çok sık.
- Düşman frekansı çok yüksek (2,6x).
- Düşmanların oyunculara verdiği hasar normalin çok üzerinde (2,4x).
- Yığın kapasitesi olağanüstü (14x).

<a id="domain-ratings-16"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | ciddi (3.53/5) | Düşmanca baskı arttı; etkileşime geçmeden önce hazırlık yapın. |
| Hayatta kalma baskısı | zorlu (2.72/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | uygun (1.59/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.55/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | standart (1.81/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-16"></a>
### Karşılaşma bağlamı

- Kademe: **sonuç karşılaşmaları**
- Tema: **yağma rotasının temel taşı**
- Maksimum aktif gruplar: **2**
- Karışık karşılaşma şansı: **0.196**
- Özel etkinlik şansı: **30**

<a id="exact-sandbox-settings-16"></a>
### Tam korumalı alan ayarları

| Ayar | Ham değer | Çeviri anlamı |
|---|---:|---|
| AllowCharacterReset | true | Karakter sıfırlama kullanılabilir durumda kalır. |
| AllowIronMode | false | Ütü modu devre dışı. |
| AllowPagers | true | Çağrı cihazları mevcut. |
| AllowRecipeSharing | true | Tarif paylaşımı mevcut. |
| AllowTransmog | true | Görünüm özelleştirme mevcut. |
| BaseInventorySize | 18 | Temel envanter boyutu 18'de uygun koşullar. |
| BonusPerkPoints | 4 | Bonus avantaj puanları 4'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.1 | Tutma oranı 1,1x ile normale yakın. |
| DamageToAlliesMultiplier | 0.1 | Dost ateşi hasarı 0,1x ile normalin çok altında. |
| DayNightCycleSpeedMultiplier | 1.45 | Gündüz-gece döngüsü hızı 1,45x ile normalin üzerinde. |
| DayNightCycleState | 0 | Gündüz-gece durumu normal döngü. |
| DeathPenalties | 2 | Ölüm cezaları ağırdır. |
| DetectionSpeedMultiplier | 2.3 | Düşman algılama hızı çok üzerindedir normal, 2,3x. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.5 | Ölüm halinde dayanıklılık kaybı 0,5 kat ile normalin çok altındadır. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 2.0 | Düşmanın savunmaya verdiği hasar normalin çok üzerinde, 2 kat. |
| EnemyHealthMultiplier | 2.3 | Düşmanın dayanıklılığı 2,3x ile normalin oldukça üzerinde. |
| EnemyPlayerDamageMultiplier | 2.4 | Düşmanın oyunculara verdiği hasar 2,4x ile normalin oldukça üzerinde. |
| EnemySpawnRate | 2.6 | Düşman frekansı 2,6x ile çok yüksek. |
| FatigueSpeedMultiplier | 1.25 | Yorgunluk oranı 1,25x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.6 | Gıda bozulması normalin üzerinde 1,6 kattır. |
| GameDifficulty | 3 | Oyun zorluğu çok zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.35 | Açlık oranı 1,35x ile normalin üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.0 | Eşya dayanıklılığı 1x ile normale yakın. |
| ItemStackSizeMultiplier | 14 | Yığın kapasitesi 14x ile son derece yüksek. |
| ItemWeightMultiplier | 0.7 | Öğe ağırlığı 0,7x ile normalin altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 4.6 | Deneyim kazanımı son derece yüksek 4,6x. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.6 | Soğutma 0,6x ile normalin altında. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.5 | Lavabo doldurma oranı 0,5x ile normalin çok altında. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.35 | Susuzluk oranı normalin üzerinde, 1,35x. |
| WeatherFrequency | 5 | Hava sıklığı çok sık. |

<a id="optional-adapter-selection-16"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `scavenger_final_audit_of_pockets`
- `lethal_lasers`: `overcharged_high_hazard`
