<a id="randomday---nightmare-family"></a>
# RandomDay - Nightmare Ailesi

> **Kanonik İngilizce kaynağı:** [nightmare.md](../../../../profiles/families/nightmare.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Sürüm: `v0.3.16-alpha`

Karanlık, dehşet, nadir ciddi tehditler ve sessiz hatalar.

**Oyun tarzı:** kara korku ve nadir şiddetli tehditler **Mesaj tonu:** tam korku yönetimi

<a id="17-day-index"></a>
## 17 Günlük Dizin

| Gün | Profil | Koşullar | Ana baskı |
|---:|---|---|---|
| 1 | Yumuşak Işıklı Hata | Standart baskı (2.03/5) | Çevresel baskı |
| 2 | Açık Zemin Dread | Uygun koşullar (1.43/5) | Çevresel baskı |
| 3 | Karanlıktaki Su | Standart baskı (2.35/5) | Hayatta kalma baskısı |
| 4 | Tedarik Dolabı Solunumu | Uygun koşullar (1.62/5) | Çevresel baskı |
| 5 | Yatağın Altında Güvenlik | Standart baskı (2.27/5) | Savaş baskısı |
| 6 | Dişli Hava Durumu | Standart baskı (2.21/5) | Çevresel baskı |
| 7 | Işıklar Sonsuza Kadar Kapalı | Standart baskı (2.23/5) | Savaş baskısı |
| 8 | Yüksek Sesle Koşmayın | Standart baskı (1.99/5) | Çevresel baskı |
| 9 | Şey İçin Erzak | Standart baskı (2.38/5) | Hayatta kalma baskısı |
| 10 | Kapının Ardında Kurtarma | Uygun koşullar (1.15/5) | Çevresel baskı |
| 11 | Karanlıkta Eğitim | Uygun koşullar (1.63/5) | Çevresel baskı |
| 12 | Black Lab Kabusu İncelemesi | Zorlu koşullar (2.75/5) | Savaş baskısı |
| 13 | Gece Yarısından Sonra Uzun Vardiya | Standart baskı (2.56/5) | Hayatta kalma baskısı |
| 14 | Sahte Sabah | Uygun koşullar (1.3/5) | Çevresel baskı |
| 15 | Gölgelerin Doğruluğu | Standart baskı (2.29/5) | Savaş baskısı |
| 16 | Deneysel Korku | Standart baskı (2.33/5) | Çevresel baskı |
| 17 | Son Kabus Pratik | Zorlu koşullar (2.99/5) | Savaş baskısı |

<a id="day-1---softly-lit-mistake"></a>
## 1. Gün - Yumuşak Işıklı Hata

**Profil Kimliği:** `nightmare_softly_lit_mistake` **Genel koşullar:** Standart basınç (2.03/5) **Açık anlamı:** Standart basınç. Çevresel baskı: Standart basınç ana basınçtır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Üssü terk etmeden önce güç, su, barınak ve tehlike korumasını doğrulayın.

<a id="main-effects"></a>
### Ana etkiler

- Gündüz-gece durumu: gece ağırlıklı.
- Düşman doğruluğu: doğru.
- Dost ateşi hasarı normalin çok altında (0,25x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,25x).
- Yığın kapasitesi normalin çok üzerinde (2 kat).

<a id="domain-ratings"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.25/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | standart (1.99/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | standart (1.71/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.42/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.5/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **kabus yönelimi**
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
| BaseInventorySize | 12 | Temel envanter boyutu, 12'deki standart basınçtır. |
| BonusPerkPoints | 0 | Bonus avantaj puanları, 0'daki standart basınçtır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.5 | Düşman tespit hızı 1,5x ile normalin üzerinde. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.25 | Dayanıklılık kaybı açık ölüm 0,25x ile normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.6 | Düşmanın direnci 1,6x ile normalin üzerinde. |
| EnemyPlayerDamageMultiplier | 1.8 | Düşmanın oyunculara verdiği hasar 1,8x ile normalin oldukça üzerinde. |
| EnemySpawnRate | 0.7 | Düşman frekansı 0,7x ile normalin altında. |
| FatigueSpeedMultiplier | 1.1 | Yorgunluk oranı 1,1x ile normale yakın. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.0 | Yiyecek bozulması 1x'te normale yakın. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.1 | Açlık oranı 1,1x ile normale yakın. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.5 | Öğe dayanıklılığı 1,5x'te normalin üzerinde. |
| ItemStackSizeMultiplier | 2.0 | Yığın kapasitesi 2x'te normalin oldukça üzerinde. |
| ItemWeightMultiplier | 0.9 | Öğe ağırlığı normale yakın 0,9x. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 1.9 | Deneyim kazanımı 1,9x ile normalin oldukça üzerinde. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.0 | Soğutma 1x'te normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.0 | Lavabo doldurma hızı 1x ile normale yakın. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 1.1 | Susuzluk oranı 1,1 kat ile normale yakın. |
| WeatherFrequency | 3 | Hava frekansı normal. |

<a id="optional-adapter-selection"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `standard`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_softly_lit_mistake`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-dread"></a>
## 2. Gün - Açık Yer Korkusu

**Profil Kimliği:** `nightmare_open_floor_dread` **Genel koşullar:** Uygun koşullar (1.43/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Standart basınç ana basınçtır. Mücadele baskısı: Uygun koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-1"></a>
### Ana etkiler

- Dost ateşi hasarı normalin çok altında (0x).
- Öğe dayanıklılığı son derece yüksektir (4x).
- Yığın kapasitesi olağanüstü (8x).
- Deneyim kazanımı olağanüstü (2,7x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,05x).

<a id="domain-ratings-1"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | uygun (1.46/5) | Düşmanca baskı normalden daha hafif. |
| Hayatta kalma baskısı | uygun (1.4/5) | Günlük hayatta kalma ihtiyaçları affedicidir. |
| Kaynak baskısı | uygun (1.08/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.11/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.2/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-1"></a>
### Karşılaşma bağlamı

- Kademe: **hafif karşılaşmalar**
- Tema: **kabus hazırlığı**
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
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 0 | Ölüm cezaları minimum düzeydedir. |
| DetectionSpeedMultiplier | 1.0 | Düşman tespit hızı 1x ile normale yakın. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.05 | Ölüm durumunda dayanıklılık kaybı 0,05x ile normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 0.1 | Düşmanın savunmalara verdiği hasar 0,1x ile normalin çok altında. |
| EnemyHealthMultiplier | 1.3 | Düşmanın dayanıklılığı 1,3x ile normalin üzerinde. |
| EnemyPlayerDamageMultiplier | 1.1 | Düşmanın oyunculara verdiği hasar 1,1x ile normale yakın. |
| EnemySpawnRate | 0.4 | Düşman frekansı 0,4x ile normalin çok altında. |
| FatigueSpeedMultiplier | 0.7 | Yorgunluk oranı 0,7x ile normalin altında. |
| FirstTimeStartingWeapon | 2 | Silah tedariğinin başlatılması standart basınç 2'de. |
| FoodSpoilSpeedMultiplier | 0.75 | Yiyecek bozulması aşağıda 0,75x'te normal. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.7 | Açlık oranı 0,7x ile normalin altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 4.0 | 4x'te öğe dayanıklılığı çok yüksek. |
| ItemStackSizeMultiplier | 8.0 | 8x'te yığın kapasitesi çok yüksek. |
| ItemWeightMultiplier | 0.5 | Öğe ağırlığı 0,5x'te normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.7 | Deneyim kazanımı 2,7x'te olağanüstü düzeyde. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.5 | Soğutma normalin üzerinde 1,5x. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 2.0 | Lavabonun yeniden dolma hızı normalin oldukça üzerinde 2x. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.7 | Susuzluk oranı 0,7x ile normalin altında. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-1"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `nightmare_open_floor_dread`
- `lethal_lasers`: `low_hazard`

<a id="day-3---water-in-the-dark"></a>
## 3. Gün - Karanlıkta Su

**Profil Kimliği:** `nightmare_water_in_the_dark` **Genel koşullar:** Standart basınç (2.35/5) **Açık anlamı:** Standart basınç. Hayatta kalma baskısı: Zorlu koşullar ana baskıdır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Yiyecek ve su taşıyın, uzun yolculuklardan önce dinlenin ve güvenli duraklar planlayın.

<a id="main-effects-2"></a>
### Ana etkiler

- Lavabo suyu güvenli olmayabilir.
- Gündüz-gece durumu: gece ağırlıklı.
- Deneyim kazanımı normalin çok üzerinde (2,2x).
- Düşman doğruluğu: doğru.
- Dost ateşi hasarı normalin çok altında (0,25x).

<a id="domain-ratings-2"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.43/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | zorlu (3.05/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | standart (1.86/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.42/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.5/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-2"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **kabus biyo kaynağı**
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
| BaseInventorySize | 12 | Temel envanter boyutu, 12'deki standart basınçtır. |
| BonusPerkPoints | 0 | Bonus avantaj puanları, 0'daki standart basınçtır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.45 | Tutunma oranı: normalin üstünde 1,45x. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.6 | Düşman tespit hızı normalin üzerinde 1,6x. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.25 | Dayanıklılık kaybı açık ölüm 0,25x ile normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 0.9 | Düşmanın savunmaya verdiği hasar 0,9x ile normale yakın. |
| EnemyHealthMultiplier | 1.7 | Düşmanın direnci 1,7x ile normalin oldukça üzerinde. |
| EnemyPlayerDamageMultiplier | 2.0 | Düşmanın oyunculara verdiği hasar 2 kat ile normalin oldukça üzerinde. |
| EnemySpawnRate | 0.7 | Düşman frekansı 0,7x ile normalin altında. |
| FatigueSpeedMultiplier | 1.3 | Yorgunluk oranı 1,3x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.25 | Yiyecek bozulması 1,25x ile normalin üzerinde. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.4 | Açlık oranı 1,4x ile normalin üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.25 | Öğe dayanıklılığı 1,25x ile normalin üzerinde. |
| ItemStackSizeMultiplier | 2.0 | Yığın kapasitesi 2x'te normalin oldukça üzerinde. |
| ItemWeightMultiplier | 0.9 | Öğe ağırlığı normale yakın 0,9x. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.2 | Deneyim kazanımı normalin oldukça üzerinde 2,2x. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.75 | Soğutma 0,75x ile normalin altında. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.25 | Lavabo doldurma hızı 0,25x ile normalin çok altında. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 2.0 | Susuzluk oranı normalin oldukça üzerinde, 2 kat. |
| WeatherFrequency | 3 | Hava frekansı normal. |

<a id="optional-adapter-selection-2"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `biohazard`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_water_in_the_dark`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-closet-breathing"></a>
## 4. Gün - İkmal Dolabı Solunumu

**Profil Kimliği:** `nightmare_supply_closet_breathing` **Genel koşullar:** Uygun koşullar (1.62/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Standart basınç ana basınçtır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-3"></a>
### Ana etkiler

- Öğe dayanıklılığı son derece yüksektir (2,5x).
- Yığın kapasitesi olağanüstü (14x).
- Deneyim kazanımı olağanüstü (2,9x).
- Lavabo doldurma oranı çok yüksek (2,5x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,05x).

<a id="domain-ratings-3"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (1.85/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | uygun (1.56/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (0.99/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.13/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.44/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-3"></a>
### Karşılaşma bağlamı

- Kademe: **hafif karşılaşmalar**
- Tema: **kabus ganimeti mobilite**
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
| BaseInventorySize | 30 | Temel envanter boyutu, kurtarma koşulları 30'dur. |
| BonusPerkPoints | 3 | Bonus avantaj puanları, 3'teki uygun koşullardır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.75 | Tutma oranı normalin altında 0,75x. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.2 | Düşman tespit hızı 1,2x ile normalin üzerinde. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.05 | Ölüm durumunda dayanıklılık kaybı 0,05x ile normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 0.5 | Düşmanın savunmaya verdiği hasar 0,5x ile normalin çok altında. |
| EnemyHealthMultiplier | 1.4 | Düşmanın dayanıklılığı normalin üzerinde 1,4x. |
| EnemyPlayerDamageMultiplier | 1.4 | Düşmanların oyunculara verdiği hasar 1,4x ile normalin üzerinde. |
| EnemySpawnRate | 0.5 | Düşman frekansı 0,5x'te normalin çok altında. |
| FatigueSpeedMultiplier | 0.8 | Yorgunluk oranı 0,8x ile normalin altında. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.6 | Yiyecek bozulması 0,6x'te normalin altında. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.8 | Açlık oranı 0,8x ile normalin altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 2.5 | Öğe dayanıklılığı 2,5x ile son derece yüksek. |
| ItemStackSizeMultiplier | 14.0 | Yığın kapasitesi 14x ile son derece yüksek. |
| ItemWeightMultiplier | 0.3 | Eşya ağırlığı 0,3x ile normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.9 | Deneyim kazanımı 2,9x ile olağanüstü. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.5 | Soğutma normalin üzerinde 1,5x. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 2.5 | Lavabo doldurma oranı 2,5x ile aşırıdır. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.8 | Susuzluk oranı 0,8x ile normalin altında. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-3"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `loot`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_supply_closet_breathing`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-under-the-bed"></a>
## 5. Gün - Yatağın Altında Güvenlik

**Profil Kimliği:** `nightmare_security_under_the_bed` **Genel koşullar:** Standart basınç (2.27/5) **Açık anlamı:** Standart baskı. Mücadele baskısı: Zorlu koşullar ana baskıdır. Çevresel baskı: Standart baskı bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-4"></a>
### Ana etkiler

- Düşman tespit hızı son derece yüksektir (3x).
- Deneyim kazanımı olağanüstü (2,7x).
- Düşmanların oyunculara verdiği hasar normalin çok üzerinde (2,3x).
- Dost ateşi hasarı normalin çok altında (0,1x).
- Gündüz-gece durumu: gece ağırlıklı.

<a id="domain-ratings-4"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | zorlu (2.88/5) | Düşmanca baskı arttı; etkileşime geçmeden önce hazırlık yapın. |
| Hayatta kalma baskısı | standart (2.14/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.66/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.37/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.51/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-4"></a>
### Karşılaşma bağlamı

- Kademe: **ağır karşılaşmalar**
- Tema: **kabus güvenliği**
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
| BaseInventorySize | 12 | Temel envanter boyutu, 12'deki standart basınçtır. |
| BonusPerkPoints | 0 | Bonus avantaj puanları, 0'daki standart basınçtır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.1 | Dost ateşi hasarı 0,1x ile normalin çok altında. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 3.0 | Düşman tespit hızı 3 kat ile son derece yüksektir. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.3 | Ölüm durumunda dayanıklılık kaybı 0,3x ile normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.8 | Düşmanın direnci 1,8x ile normalin oldukça üzerinde. |
| EnemyPlayerDamageMultiplier | 2.3 | Düşmanın oyunculara verdiği hasar 2,3x ile normalin oldukça üzerindedir. |
| EnemySpawnRate | 1.1 | Düşman frekansı 1,1x'te normale yakın. |
| FatigueSpeedMultiplier | 1.4 | Yorgunluk oranı 1,4x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 4 | Silah tedariğinin başlatılması 4'te uygun koşullardır. |
| FoodSpoilSpeedMultiplier | 1.0 | Yiyecek bozulması 1x'te normale yakın. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.2 | Açlık oranı 1,2 kat ile normalin üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.25 | Öğe dayanıklılığı 1,25x ile normalin üzerinde. |
| ItemStackSizeMultiplier | 2.0 | Yığın kapasitesi 2x'te normalin oldukça üzerinde. |
| ItemWeightMultiplier | 0.9 | Öğe ağırlığı normale yakın 0,9x. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.7 | Deneyim kazanımı 2,7x'te olağanüstü düzeyde. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.0 | Soğutma 1x'te normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.0 | Lavabo doldurma hızı 1x ile normale yakın. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 1.2 | Susuzluk oranı normalin üzerinde, 1,2 kat. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-4"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `security`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_security_under_the_bed`
- `lethal_lasers`: `high_hazard`

<a id="day-6---weather-with-teeth"></a>
## 6. Gün - Dişli Hava Durumu

**Profil Kimliği:** `nightmare_weather_with_teeth` **Genel koşullar:** Standart basınç (2.21/5) **Açık anlamı:** Standart baskı. Çevresel baskı: Zorlu koşullar ana baskıdır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Üssü terk etmeden önce güç, su, barınak ve tehlike korumasını doğrulayın.

<a id="main-effects-5"></a>
### Ana etkiler

- Hava frekansı: çok sık.
- Gündüz-gece durumu: gece ağırlıklı.
- Düşman doğruluğu: doğru.
- Deneyim kazanımı normalin çok üzerinde (2,1x).
- Dost ateşi hasarı normalin çok altında (0,25x).

<a id="domain-ratings-5"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.45/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | standart (2.26/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | standart (1.81/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | zorlu (2.72/5) | Güç, hava, su veya radyasyon koşulları belirsiz. |
| Kurtarma baskısı | uygun (1.5/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-5"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **kabus havası**
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
| BaseInventorySize | 12 | Temel envanter boyutu, 12'deki standart basınçtır. |
| BonusPerkPoints | 0 | Bonus avantaj puanları, 0'daki standart basınçtır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.25 | Gündüz-gece döngüsü hızı normalin üzerinde 1,25x. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.6 | Düşman tespit hızı normalin üzerinde 1,6x. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.25 | Dayanıklılık kaybı açık ölüm 0,25x ile normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.6 | Düşmanın direnci 1,6x ile normalin üzerinde. |
| EnemyPlayerDamageMultiplier | 1.9 | Düşmanın oyunculara verdiği hasar 1,9x ile normalin oldukça üzerinde. |
| EnemySpawnRate | 0.8 | Düşman frekansı 0,8x ile normalin altında. |
| FatigueSpeedMultiplier | 1.3 | Yorgunluk oranı 1,3x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.25 | Yiyecek bozulması 1,25x ile normalin üzerinde. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.3 | Açlık oranı 1,3x ile normalin üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.1 | Eşya dayanıklılığı 1,1x ile normale yakın. |
| ItemStackSizeMultiplier | 2.0 | Yığın kapasitesi 2x'te normalin oldukça üzerinde. |
| ItemWeightMultiplier | 0.9 | Öğe ağırlığı normale yakın 0,9x. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.1 | Deneyim kazanımı 2,1x ile normalin oldukça üzerinde. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.8 | Soğutma 0,8x ile normalin altında. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.75 | Lavabo doldurma oranı normalin altında, 0,75x. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 1.6 | Susuzluk oranı normalin üzerinde 1,6x. |
| WeatherFrequency | 5 | Hava sıklığı çok sık. |

<a id="optional-adapter-selection-5"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `weather`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_weather_with_teeth`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---lights-out-forever"></a>
## 7. Gün - Sonsuza Kadar Işıklar Söndü

**Profil Kimliği:** `nightmare_lights_out_forever` **Genel koşullar:** Standart basınç (2.23/5) **Açık anlamı:** Standart baskı. Mücadele baskısı: Zorlu koşullar ana baskıdır. Çevresel baskı: Standart baskı bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-6"></a>
### Ana etkiler

- Düşman tespit hızı son derece yüksektir (2,5x).
- Yığın kapasitesi olağanüstü (3x).
- Deneyim kazanımı olağanüstü (2,9x).
- Gündüz-gece durumu: gece ağırlıklı.
- Düşmanların oyunculara verdiği hasar normalin çok üzerinde (2,2x).

<a id="domain-ratings-6"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | zorlu (2.82/5) | Düşmanca baskı arttı; etkileşime geçmeden önce hazırlık yapın. |
| Hayatta kalma baskısı | standart (2.18/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.54/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.33/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.49/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-6"></a>
### Karşılaşma bağlamı

- Kademe: **ağır karşılaşmalar**
- Tema: **kabus gecesi**
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
| BaseInventorySize | 16 | Temel envanter boyutu 16'da uygun koşullardır. |
| BonusPerkPoints | 0 | Bonus avantaj puanları, 0'daki standart basınçtır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.95 | Tutma oranı normale yakın 0,95x. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 2.5 | Düşman tespit hızı 2,5x ile son derece yüksek. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.2 | Ölüm durumunda dayanıklılık kaybı 0,2x ile normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.8 | Düşmanın direnci 1,8x ile normalin oldukça üzerinde. |
| EnemyPlayerDamageMultiplier | 2.2 | Düşmanların oyunculara verdiği hasar 2,2 kat ile normalin oldukça üzerinde. |
| EnemySpawnRate | 1.1 | Düşman frekansı 1,1x'te normale yakın. |
| FatigueSpeedMultiplier | 1.6 | Yorgunluk oranı 1,6x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 5 | Silah tedariğine başlamak için uygun koşullar 5'te. |
| FoodSpoilSpeedMultiplier | 1.0 | Yiyecek bozulması 1x'te normale yakın. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.2 | Açlık oranı 1,2 kat ile normalin üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.5 | Öğe dayanıklılığı 1,5x'te normalin üzerinde. |
| ItemStackSizeMultiplier | 3.0 | Yığın kapasitesi 3x ile aşırı düzeyde. |
| ItemWeightMultiplier | 0.7 | Öğe ağırlığı 0,7x ile normalin altında. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.9 | Deneyim kazanımı 2,9x ile olağanüstü. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.0 | Soğutma 1x'te normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.0 | Lavabo doldurma hızı 1x ile normale yakın. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 1.2 | Susuzluk oranı normalin üzerinde, 1,2 kat. |
| WeatherFrequency | 4 | Hava sıklığı sık. |

<a id="optional-adapter-selection-6"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_lights_out_forever`
- `lethal_lasers`: `high_hazard`

<a id="day-8---do-not-run-loudly"></a>
## 8. Gün - Yüksek Sesle Koşmayın

**Profil Kimliği:** `nightmare_do_not_run_loudly` **Genel koşullar:** Standart basınç (1.99/5) **Açık anlamı:** Standart baskı. Çevresel baskı: Zorlu koşullar ana baskıdır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Üssü terk etmeden önce güç, su, barınak ve tehlike korumasını doğrulayın.

<a id="main-effects-7"></a>
### Ana etkiler

- Gündüz-gece döngüsü hızı çok yüksek (3x).
- Yığın kapasitesi olağanüstü (4x).
- Deneyim kazanımı olağanüstü (3x).
- Gündüz-gece durumu: gece ağırlıklı.
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0,15x).

<a id="domain-ratings-7"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.46/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | uygun (1.54/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.41/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | zorlu (2.76/5) | Güç, hava, su veya radyasyon koşulları belirsiz. |
| Kurtarma baskısı | uygun (1.47/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-7"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **kabus rotası**
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
| BonusPerkPoints | 0 | Bonus avantaj puanları, 0'daki standart basınçtır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.7 | Tutma oranı 0,7x ile normalin altında. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 3.0 | Gündüz-gece döngüsü hızı çok yüksek 3x. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 2.1 | Düşman tespit hızı 2,1x ile normalin oldukça üzerinde. |
| DisableResearchMinigame | true | Araştırma bypass'ı etkinleştirildi. |
| DurabilityLossOnDeathMultiplier | 0.15 | Ölümde dayanıklılık kaybı 0,15x ile normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 0.8 | Savunmalara verilen düşman hasarı 0,8x ile normalin altında. |
| EnemyHealthMultiplier | 1.3 | Düşmanın dayanıklılığı 1,3x ile normalin üzerinde. |
| EnemyPlayerDamageMultiplier | 1.9 | Düşmanın oyunculara verdiği hasar 1,9x ile normalin oldukça üzerinde. |
| EnemySpawnRate | 0.9 | Düşman frekansı 0,9x'te normale yakın. |
| FatigueSpeedMultiplier | 0.8 | Yorgunluk oranı 0,8x ile normalin altında. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.9 | Gıda bozulması 0,9x ile normale yakın. |
| GameDifficulty | 2 | Oyun zorluğu zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.8 | Açlık oranı 0,8x ile normalin altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.25 | Öğe dayanıklılığı 1,25x ile normalin üzerinde. |
| ItemStackSizeMultiplier | 4.0 | Yığın kapasitesi 4x ile aşırı düzeyde. |
| ItemWeightMultiplier | 0.7 | Öğe ağırlığı 0,7x ile normalin altında. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 3.0 | Tecrübe kazancı 3 kat yüksek. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.1 | Soğutma 1,1x ile normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.5 | Yükleme yeniden doldurma oranı 1,5x ile normalin üzerinde. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.8 | Susuzluk oranı 0,8x ile normalin altında. |
| WeatherFrequency | 3 | Hava frekansı normal. |

<a id="optional-adapter-selection-7"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `speedrun`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_do_not_run_loudly`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---rations-for-the-thing"></a>
## 9. Gün - Şey için Erzak

**Profil Kimliği:** `nightmare_rations_for_the_thing` **Genel koşullar:** Standart basınç (2.38/5) **Açık anlamı:** Standart basınç. Hayatta kalma baskısı: Zorlu koşullar ana baskıdır. Çevresel baskı: Standart baskı bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Yiyecek ve su taşıyın, uzun yolculuklardan önce dinlenin ve güvenli duraklar planlayın.

<a id="main-effects-8"></a>
### Ana etkiler

- Temel envanter boyutu ağır koşullardır (10).
- Lavabo suyu güvenli olmayabilir.
- Gündüz-gece durumu: gece ağırlıklı.
- Deneyim kazanımı normalin çok üzerinde (2,2x).
- Düşman doğruluğu: doğru.

<a id="domain-ratings-8"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (2.32/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | zorlu (3.08/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | standart (2.23/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.37/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.53/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-8"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **kabus kıtlığı**
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
| BaseInventorySize | 10 | Temel envanter boyutu 10'da ağır koşullardır. |
| BonusPerkPoints | 0 | Bonus avantaj puanları, 0'daki standart basınçtır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.25 | Tutma oranı 1,25x ile normalin üzerindedir. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.6 | Düşman tespit hızı normalin üzerinde 1,6x. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.35 | Ölüm durumunda dayanıklılık kaybı 0,35x ile normalin çok altındadır. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 1.0 | Düşmanın savunmaya verdiği hasar 1x ile normale yakın. |
| EnemyHealthMultiplier | 1.8 | Düşmanın direnci 1,8x ile normalin oldukça üzerinde. |
| EnemyPlayerDamageMultiplier | 2.0 | Düşmanın oyunculara verdiği hasar 2 kat ile normalin oldukça üzerinde. |
| EnemySpawnRate | 0.7 | Düşman frekansı 0,7x ile normalin altında. |
| FatigueSpeedMultiplier | 1.5 | Yorgunluk oranı 1,5x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 2.0 | Gıda bozulması 2x ile normalin oldukça üzerindedir. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.8 | Açlık oranı 1,8x ile normalin oldukça üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 0.75 | Öğe dayanıklılığı 0,75x ile normalin altında. |
| ItemStackSizeMultiplier | 1.0 | Yığın kapasitesi 1x ile normale yakın. |
| ItemWeightMultiplier | 1.2 | Eşya ağırlığı 1,2x ile normalin üzerinde. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.2 | Deneyim kazanımı normalin oldukça üzerinde 2,2x. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.5 | Soğutma normalin çok altında 0,5x. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.5 | Lavabo doldurma oranı 0,5x ile normalin çok altında. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.7 | Susuzluk oranı normalin oldukça üzerinde, 1,7x. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-8"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `scarcity`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_rations_for_the_thing`
- `lethal_lasers`: `standard_safety`

<a id="day-10---recovery-behind-a-door"></a>
## 10. Gün - Arkasında Kurtarma a Kapı

**Profil Kimliği:** `nightmare_recovery_behind_a_door` **Genel koşullar:** Uygun koşullar (1.15/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Standart basınç ana basınçtır. İyileşme baskısı: Uygun koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-9"></a>
### Ana etkiler

- Bonus avantaj puanları yardım koşullarıdır (10).
- Dost ateşi hasarı normalin çok altında (0x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0x).
- Öğe dayanıklılığı son derece yüksektir (3x).
- Yığın kapasitesi olağanüstü (10x).

<a id="domain-ratings-9"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | uygun (1.18/5) | Düşmanca baskı normalden daha hafif. |
| Hayatta kalma baskısı | uygun (0.96/5) | Günlük hayatta kalma ihtiyaçları affedicidir. |
| Kaynak baskısı | uygun (0.9/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (1.74/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.19/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-9"></a>
### Karşılaşma bağlamı

- Kademe: **minimum karşılaşma**
- Tema: **kabus kurtarma**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.02**
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
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 0 | Ölüm cezaları minimum düzeydedir. |
| DetectionSpeedMultiplier | 0.7 | Düşmanın tespit hızı 0,7x ile normalin altında. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.0 | Ölüm halindeki dayanıklılık kaybı 0x'te normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 0.1 | Düşmanın savunmalara verdiği hasar 0,1x ile normalin çok altında. |
| EnemyHealthMultiplier | 1.1 | Düşmanın dayanıklılığı 1,1x ile normale yakın. |
| EnemyPlayerDamageMultiplier | 0.6 | Düşmanların oyunculara verdiği hasar 0,6x ile normalin altında. |
| EnemySpawnRate | 0.3 | Düşman frekansı 0,3x ile normalin çok altında. |
| FatigueSpeedMultiplier | 0.4 | Yorgunluk oranı 0,4x ile normalin çok altında. |
| FirstTimeStartingWeapon | 2 | Silah tedariğinin başlatılması standart basınç 2'de. |
| FoodSpoilSpeedMultiplier | 0.4 | Yiyecek bozulması 0,4x ile normalin çok altında. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.4 | Açlık oranı 0,4x ile normalin çok altında. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 3.0 | Ürün dayanıklılığı 3x ile son derece yüksek. |
| ItemStackSizeMultiplier | 10.0 | Yığın kapasitesi 10x'te aşırı. |
| ItemWeightMultiplier | 0.4 | Öğe ağırlığı 0,4x'te normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 3.9 | Deneyim kazanımı 3,9 kat ile son derece yüksek. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | false | Radyasyon hasarı devre dışı. |
| RefrigerationEffectivenessMultiplier | 1.8 | Soğutma 1,8x'te normalin oldukça üzerinde. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 3.0 | Lavabo doldurma oranı 3 kat ile çok yüksek. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.4 | Susuzluk oranı 0,4x ile normalin çok altında. |
| WeatherFrequency | 1 | Hava sıklığı nadirdir. |

<a id="optional-adapter-selection-9"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `nightmare_recovery_behind_a_door`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-in-the-dark"></a>
## 11. Gün - Karanlıkta Eğitim

**Profil Kimliği:** `nightmare_training_in_the_dark` **Genel koşullar:** Uygun koşullar (1.63/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Standart basınç ana basınçtır. Savaş baskısı: Standart basınç bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-10"></a>
### Ana etkiler

- Bonus avantaj puanları yardım koşullarıdır (12).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0x).
- Yığın kapasitesi olağanüstü (5x).
- Deneyim kazanımı olağanüstü (5x).
- Öğe dayanıklılığı normalin çok üzerinde (2,25x).

<a id="domain-ratings-10"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | standart (1.84/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | uygun (1.7/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (0.92/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (2.16/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.43/5) | Ölüm ve iyileşme kuralları affedicidir. |

<a id="encounter-context-10"></a>
### Karşılaşma bağlamı

- Kademe: **hafif karşılaşmalar**
- Tema: **kabus eğitimi**
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
| BaseInventorySize | 24 | Temel envanter boyutu, 24'teki yardım koşullarıdır. |
| BonusPerkPoints | 12 | Bonus avantaj puanı, 12'deki kurtarma koşullarıdır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 0.8 | Kontinans oranı 0,8x ile normalin altında. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.15 | Gündüz-gece döngüsü hızı 1,15x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 1 | Ölüm cezaları standart. |
| DetectionSpeedMultiplier | 1.3 | Düşman tespit hızı 1,3x ile normalin üzerinde. |
| DisableResearchMinigame | true | Araştırma bypass'ı etkinleştirildi. |
| DurabilityLossOnDeathMultiplier | 0.0 | Ölüm halindeki dayanıklılık kaybı 0x'te normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 0.4 | Düşmanın savunmaya verdiği hasar 0,4x ile normalin çok altında. |
| EnemyHealthMultiplier | 1.3 | Düşmanın dayanıklılığı 1,3x ile normalin üzerinde. |
| EnemyPlayerDamageMultiplier | 1.2 | Düşmanın oyunculara verdiği hasar 1,2x ile normalin üzerinde. |
| EnemySpawnRate | 0.7 | Düşman frekansı 0,7x ile normalin altında. |
| FatigueSpeedMultiplier | 0.9 | Yorgunluk oranı 0,9x ile normale yakın. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.8 | Yiyecek bozulması 0,8x ile normalin altında. |
| GameDifficulty | 1 | Oyun zorluğu standart. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.9 | Açlık oranı 0,9x ile normale yakın. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 2.25 | Öğe dayanıklılık 2,25x ile normalin çok üzerindedir. |
| ItemStackSizeMultiplier | 5.0 | Yığın kapasitesi 5x ile aşırıdır. |
| ItemWeightMultiplier | 0.6 | Öğe ağırlığı 0,6x ile normalin altındadır. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 5.0 | Deneyim kazanımı 5 kat olağanüstü. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.3 | Soğutma normalin üzerindedir 1,3x. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 2.0 | Lavabonun yeniden dolma hızı normalin oldukça üzerinde 2x. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.9 | Susuzluk oranı normale yakın 0,9x. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-10"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `training`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_training_in_the_dark`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-nightmare-review"></a>
## 12. Gün - Black Lab Nightmare İncelemesi

**Profil Kimliği:** `nightmare_black_lab_nightmare_review` **Genel koşullar:** Zorlu koşullar (2.75/5) **Açık anlamı:** Zorlu koşullar. Savaş baskısı: Ağır koşullar ana baskıdır. Hayatta kalma baskısı: Zorlu koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-11"></a>
### Ana etkiler

- Düşmanın isabetliliği: son derece isabetli.
- Düşmanın oyunculara verdiği hasar aşırı yüksek (3,5x).
- Oyun zorluğu: çok zor.
- Düşman tespit hızı son derece yüksektir (2,9x).
- Düşmanın dayanıklılığı son derece yüksek (2,8x).

<a id="domain-ratings-11"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | ciddi (3.62/5) | Düşmanca baskı arttı; etkileşime geçmeden önce hazırlık yapın. |
| Hayatta kalma baskısı | zorlu (2.85/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | standart (1.74/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.42/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | standart (1.79/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-11"></a>
### Karşılaşma bağlamı

- Kademe: **ekstrem karşılaşmalar**
- Tema: **kabus ağır testi**
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
| BaseInventorySize | 12 | Temel envanter boyutu, 12'deki standart basınçtır. |
| BonusPerkPoints | 2 | Bonus avantaj puanları olumlu koşullar 2'de. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.15 | Dost ateşi hasarı 0,15x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 2 | Ölüm cezaları ağırdır. |
| DetectionSpeedMultiplier | 2.9 | Düşman tespit hızı 2,9x ile son derece yüksek. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.4 | Ölüm halinde dayanıklılık kaybı 0,4x ile normalin çok altındadır. |
| EnemyAccuracy | 4 | Düşmanın isabetliliği son derece yüksektir. |
| EnemyDeployableDamageMultiplier | 1.4 | Düşmanın savunmaya verdiği hasar 1,4x ile normalin üzerinde. |
| EnemyHealthMultiplier | 2.8 | Düşmanın dayanıklılığı 2,8x ile son derece yüksek. |
| EnemyPlayerDamageMultiplier | 3.5 | Düşmanın oyunculara verdiği hasar 3,5x ile son derece yüksek. |
| EnemySpawnRate | 1.5 | Düşman frekansı normalin üzerinde 1,5x. |
| FatigueSpeedMultiplier | 1.5 | Yorgunluk oranı 1,5x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 1 | Silah tedariğinin başlangıcında standart basınç 1'dir. |
| FoodSpoilSpeedMultiplier | 1.15 | Yiyecek bozulması 1,15x ile normale yakın. |
| GameDifficulty | 3 | Oyun zorluğu çok zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.5 | Açlık oranı yukarıda normal 1,5x. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.1 | Eşya dayanıklılığı 1,1x ile normale yakın. |
| ItemStackSizeMultiplier | 2.0 | Yığın kapasitesi 2x'te normalin oldukça üzerinde. |
| ItemWeightMultiplier | 0.9 | Öğe ağırlığı normale yakın 0,9x. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 4.0 | Deneyim kazanımı 4x ile aşırı düzeyde. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.85 | Soğutma 0,85x ile normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.75 | Lavabo doldurma oranı normalin altında, 0,75x. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.5 | Susuzluk oranı 1,5x ile normalin üzerinde. |
| WeatherFrequency | 3 | Hava frekansı normal. |

<a id="optional-adapter-selection-11"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `black_lab`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_black_lab_nightmare_review`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-shift-after-midnight"></a>
## 13. Gün - Gece Yarısından Sonra Uzun Vardiya

**Profil Kimliği:** `nightmare_long_shift_after_midnight` **Genel koşullar:** Standart basınç (2.56/5) **Açık anlamı:** Standart basınç. Hayatta kalma baskısı: Ağır koşullar ana baskıdır. Mücadele baskısı: Zorlu koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Yiyecek ve su taşıyın, uzun yolculuklardan önce dinlenin ve güvenli duraklar planlayın.

<a id="main-effects-12"></a>
### Ana etkiler

- Oyun zorluğu: çok zor.
- Temel envanter boyutu ağır koşullardır (10).
- Deneyim kazanımı olağanüstü (2,5x).
- Lavabo suyu güvenli olmayabilir.
- Gündüz-gece durumu: gece ağırlıklı.

<a id="domain-ratings-12"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | zorlu (2.64/5) | Düşmanca baskı arttı; etkileşime geçmeden önce hazırlık yapın. |
| Hayatta kalma baskısı | ciddi (3.44/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | standart (2.11/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.21/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | standart (1.77/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-12"></a>
### Karşılaşma bağlamı

- Kademe: **orta düzeyde karşılaşmalar**
- Tema: **kabus dayanıklılığı**
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
| BaseInventorySize | 10 | Temel envanter boyutu 10'da ağır koşullardır. |
| BonusPerkPoints | 0 | Bonus avantaj puanları, 0'daki standart basınçtır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.35 | Tutunma oranı 1,35x ile normalin üzerinde. |
| DamageToAlliesMultiplier | 0.25 | Dost ateşi hasarı 0,25x ile normalin çok altındadır. |
| DayNightCycleSpeedMultiplier | 0.3 | Gündüz-gece döngüsü hızı 0,3x ile normalin çok altında. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 2 | Ölüm cezaları ağırdır. |
| DetectionSpeedMultiplier | 1.6 | Düşman tespit hızı normalin üzerinde 1,6x. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.35 | Ölüm durumunda dayanıklılık kaybı 0,35x ile normalin çok altındadır. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 0.9 | Düşmanın savunmaya verdiği hasar 0,9x ile normale yakın. |
| EnemyHealthMultiplier | 2.0 | Düşman dayanıklılığı 2x ile normalin oldukça üzerinde. |
| EnemyPlayerDamageMultiplier | 2.2 | Düşmanların oyunculara verdiği hasar 2,2 kat ile normalin oldukça üzerinde. |
| EnemySpawnRate | 0.6 | Düşman frekansı 0,6x ile normalin altında. |
| FatigueSpeedMultiplier | 1.9 | Yorgunluk oranı 1,9x ile normalin oldukça üzerinde. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.8 | Gıda bozulması 1,8x ile normalin oldukça üzerinde. |
| GameDifficulty | 3 | Oyun zorluğu çok zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 2.1 | Açlık oranı 2,1 kat ile normalin oldukça üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 0.9 | Ürün dayanıklılığı 0,9x ile normale yakın. |
| ItemStackSizeMultiplier | 2.0 | Yığın kapasitesi 2x'te normalin oldukça üzerinde. |
| ItemWeightMultiplier | 1.4 | Öğe ağırlığı 1,4x ile normalin üzerinde. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 2.5 | Deneyim kazanımı 2,5x ile son derece yüksek. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.65 | Soğutma 0,65x ile normalin altında. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.35 | Lavabo doldurma oranı 0,35x ile normalin çok altında. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 2.1 | Susuzluk oranı 2,1x ile normalin oldukça üzerinde. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-12"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `black_lab`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_long_shift_after_midnight`
- `lethal_lasers`: `standard_safety`

<a id="day-14---false-morning"></a>
## 14. Gün - Sahte Sabah

**Profil Kimliği:** `nightmare_false_morning` **Genel koşullar:** Uygun koşullar (1.3/5) **Açık anlamı:** Uygun koşullar. Çevresel baskı: Standart basınç ana basınçtır. İyileşme baskısı: Uygun koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Keşfetmek, yeniden stoklamak, onarmak ve bir sonraki yeniden başlatmaya hazırlanmak için uygun koşulları kullanın.

<a id="main-effects-13"></a>
### Ana etkiler

- Oyun zorluğu: çok zor.
- Temel envanter boyutu yardım koşullarıdır (40).
- Bonus avantaj puanları yardım koşullarıdır (12).
- Dost ateşi hasarı normalin çok altında (0x).
- Ölüm halinde dayanıklılık kaybı normalin çok altında (0x).

<a id="domain-ratings-13"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | uygun (1.59/5) | Düşman baskısı neredeyse normal. |
| Hayatta kalma baskısı | rahatlama (0.8/5) | Günlük hayatta kalma ihtiyaçları affedicidir. |
| Kaynak baskısı | rahatlama (0.79/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | standart (1.78/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | uygun (1.67/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-13"></a>
### Karşılaşma bağlamı

- Kademe: **minimum karşılaşma**
- Tema: **kabustan kurtulma**
- Maksimum aktif gruplar: **1**
- Karışık karşılaşma şansı: **0.02**
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
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 2 | Ölüm cezaları ağırdır. |
| DetectionSpeedMultiplier | 0.9 | Düşman tespit hızı 0,9x ile normale yakın. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.0 | Ölüm halindeki dayanıklılık kaybı 0x'te normalin çok altında. |
| EnemyAccuracy | 2 | Düşmanın isabetliliği standarttır. |
| EnemyDeployableDamageMultiplier | 0.1 | Düşmanın savunmalara verdiği hasar 0,1x ile normalin çok altında. |
| EnemyHealthMultiplier | 1.2 | Düşmanın dayanıklılığı yukarıda 1,2x'te normal. |
| EnemyPlayerDamageMultiplier | 0.9 | Düşmanların oyunculara verdiği hasar 0,9x ile normale yakın. |
| EnemySpawnRate | 0.3 | Düşman frekansı 0,3x ile normalin çok altında. |
| FatigueSpeedMultiplier | 0.3 | Yorgunluk oranı 0,3x ile normalin çok altında. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.25 | Gıda bozulması 0,25x ile normalin çok altında. |
| GameDifficulty | 3 | Oyun zorluğu çok zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 0.3 | Açlık oranı normalin çok altında 0,3x. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 6.0 | Eşya dayanıklılığı 6x ile son derece yüksek. |
| ItemStackSizeMultiplier | 20.0 | Yığın kapasitesi 20x ile son derece yüksek. |
| ItemWeightMultiplier | 0.2 | Öğe ağırlığı 0,2x ile normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 5.6 | Deneyim kazanımı 5,6 kat ile olağanüstü düzeyde. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | false | Radyasyon hasarı devre dışı. |
| RefrigerationEffectivenessMultiplier | 2.0 | Soğutma 2 kat normalin oldukça üzerinde. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 5.0 | Lavabo dolum oranı 5 kat yüksek. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 0.3 | Susuzluk oranı 0,3x ile normalin çok altında. |
| WeatherFrequency | 1 | Hava sıklığı nadirdir. |

<a id="optional-adapter-selection-13"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `black_lab`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `nightmare_false_morning`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-of-shadows"></a>
## 15. Gün - Gölgelerin Doğruluğu

**Profil Kimliği:** `nightmare_accuracy_of_shadows` **Genel koşullar:** Standart basınç (2.29/5) **Açık anlamı:** Standart baskı. Mücadele baskısı: Zorlu koşullar ana baskıdır. Çevresel baskı: Standart baskı bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-14"></a>
### Ana etkiler

- Oyun zorluğu: çok zor.
- Düşmanın oyunculara verdiği hasar aşırı yüksek (2,6x).
- Dost ateşi hasarı normalin çok altında (0x).
- Deneyim kazanımı olağanüstü (3,2x).
- Gündüz-gece durumu: gece ağırlıklı.

<a id="domain-ratings-14"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | zorlu (2.81/5) | Düşmanca baskı arttı; etkileşime geçmeden önce hazırlık yapın. |
| Hayatta kalma baskısı | standart (2.17/5) | Günlük hayatta kalma ihtiyaçları normale yakın. |
| Kaynak baskısı | uygun (1.68/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | standart (2.37/5) | Çevresel koşullar normale yakın. |
| Kurtarma baskısı | standart (1.76/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-14"></a>
### Karşılaşma bağlamı

- Kademe: **ağır karşılaşmalar**
- Tema: **kabus hassasiyeti**
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
| BaseInventorySize | 12 | Temel envanter boyutu, 12'deki standart basınçtır. |
| BonusPerkPoints | 0 | Bonus avantaj puanları, 0'daki standart basınçtır. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.0 | Devam oranı 1x'te normale yakındır. |
| DamageToAlliesMultiplier | 0.0 | Dost ateşi hasarı 0x'te normalin çok altında. |
| DayNightCycleSpeedMultiplier | 1.0 | Gündüz-gece döngü hızı 1x ile normale yakın. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 2 | Ölüm cezaları ağırdır. |
| DetectionSpeedMultiplier | 2.2 | Düşman tespit hızı 2,2x ile normalin oldukça üzerinde. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.3 | Ölüm durumunda dayanıklılık kaybı 0,3x ile normalin çok altında. |
| EnemyAccuracy | 3 | Düşmanın isabetliliği doğru. |
| EnemyDeployableDamageMultiplier | 0.8 | Savunmalara verilen düşman hasarı 0,8x ile normalin altında. |
| EnemyHealthMultiplier | 1.6 | Düşmanın direnci 1,6x ile normalin üzerinde. |
| EnemyPlayerDamageMultiplier | 2.6 | Düşmanın oyunculara verdiği hasar 2,6x ile son derece yüksek. |
| EnemySpawnRate | 0.8 | Düşman frekansı 0,8x ile normalin altında. |
| FatigueSpeedMultiplier | 1.5 | Yorgunluk oranı 1,5x ile normalin üzerinde. |
| FirstTimeStartingWeapon | 4 | Silah tedariğinin başlatılması 4'te uygun koşullardır. |
| FoodSpoilSpeedMultiplier | 1.0 | Yiyecek bozulması 1x'te normale yakın. |
| GameDifficulty | 3 | Oyun zorluğu çok zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.2 | Açlık oranı 1,2 kat ile normalin üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.0 | Eşya dayanıklılığı 1x ile normale yakın. |
| ItemStackSizeMultiplier | 2.0 | Yığın kapasitesi 2x'te normalin oldukça üzerinde. |
| ItemWeightMultiplier | 0.9 | Öğe ağırlığı normale yakın 0,9x. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 3.2 | Deneyim kazanımı olağanüstü düzeyde 3,2x. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 1.0 | Soğutma 1x'te normale yakın. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 1.0 | Lavabo doldurma hızı 1x ile normale yakın. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | false | Lavabo suyu bu kuralla kirlenmez. |
| ThirstSpeedMultiplier | 1.2 | Susuzluk oranı normalin üzerinde, 1,2 kat. |
| WeatherFrequency | 2 | Hava sıklığı ara sıra. |

<a id="optional-adapter-selection-14"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `black_lab`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_accuracy_of_shadows`
- `lethal_lasers`: `high_hazard`

<a id="day-16---experimental-fear"></a>
## 16. Gün - Deneysel Korku

**Profil Kimliği:** `nightmare_experimental_fear` **Genel koşullar:** Standart basınç (2.33/5) **Açık anlamı:** Standart basınç. Çevresel baskı: Zorlu koşullar ana baskıdır. Mücadele baskısı: Zorlu koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Üssü terk etmeden önce güç, su, barınak ve tehlike korumasını doğrulayın.

<a id="main-effects-15"></a>
### Ana etkiler

- Düşmanın isabetliliği: son derece isabetli.
- Oyun zorluğu: çok zor.
- Bazı radyasyonlarda görünür bir uyarı olmayabilir.
- Hava frekansı: çok sık.
- Temel envanter boyutu yardım koşullarıdır (42).

<a id="domain-ratings-15"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | zorlu (2.8/5) | Düşmanca baskı arttı; etkileşime geçmeden önce hazırlık yapın. |
| Hayatta kalma baskısı | zorlu (2.64/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | uygun (1.09/5) | Sarf malzemeleri ve taşıma koşulları uygundur. |
| Çevresel baskı | zorlu (2.86/5) | Güç, hava, su veya radyasyon koşulları belirsiz. |
| Kurtarma baskısı | uygun (1.67/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-15"></a>
### Karşılaşma bağlamı

- Kademe: **ekstrem karşılaşmalar**
- Tema: **kabus deneysel**
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
| BaseInventorySize | 42 | Temel envanter boyutu, 42'deki kurtarma koşullarıdır. |
| BonusPerkPoints | 2 | Bonus avantaj puanları olumlu koşullar 2'de. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.2 | Devam oranı: 1,2x ile normalin üzerinde. |
| DamageToAlliesMultiplier | 0.0 | Dost ateşi hasarı 0x'te normalin çok altında. |
| DayNightCycleSpeedMultiplier | 1.5 | Gündüz-gece döngüsü hızı 1,5x ile normalin üzerinde. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 2 | Ölüm cezaları ağırdır. |
| DetectionSpeedMultiplier | 0.8 | Düşman tespit hızı 0,8x ile normalin altında. |
| DisableResearchMinigame | true | Araştırma bypass'ı etkinleştirildi. |
| DurabilityLossOnDeathMultiplier | 0.0 | Ölüm halindeki dayanıklılık kaybı 0x'te normalin çok altında. |
| EnemyAccuracy | 4 | Düşmanın isabetliliği son derece yüksektir. |
| EnemyDeployableDamageMultiplier | 0.7 | Düşmanın savunmaya verdiği hasar 0,7x ile normalin altında. |
| EnemyHealthMultiplier | 2.3 | Düşmanın dayanıklılığı 2,3x ile normalin oldukça üzerinde. |
| EnemyPlayerDamageMultiplier | 1.7 | Düşmanların oyunculara verdiği hasar normalin oldukça üzerinde 1,7x'te. |
| EnemySpawnRate | 1.0 | Düşman frekansı 1x'te normale yakın. |
| FatigueSpeedMultiplier | 1.0 | Yorgunluk oranı 1x'te normale yakın. |
| FirstTimeStartingWeapon | 6 | Silah tedariğinin başlatılması 6'da uygun koşullar. |
| FoodSpoilSpeedMultiplier | 0.4 | Yiyecek bozulması 0,4x ile normalin çok altında. |
| GameDifficulty | 3 | Oyun zorluğu çok zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.0 | Açlık oranı 1x'te normale yakın. |
| InvisibleRadiation | true | Bazı radyasyonlarda görünür bir uyarı olmayabilir. |
| ItemDurabilityMultiplier | 5.0 | Öğe dayanıklılığı 5 kat ile son derece yüksektir. |
| ItemStackSizeMultiplier | 15.0 | Yığın kapasitesi 15 kat ile çok yüksek. |
| ItemWeightMultiplier | 0.2 | Öğe ağırlığı 0,2x ile normalin çok altında. |
| LootRespawnEnabled | true | Ganimet toplandıktan sonra geri dönebilir. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 6.1 | Deneyim kazanımı 6,1x ile olağanüstü. |
| PowerSocketsOffAtNight | false | Elektrik prizleri geceleri kullanılabilir durumda kalıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 2.0 | Soğutma 2 kat normalin oldukça üzerinde. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.0 | Lavabo doldurma hızı 0x ile normalin çok altında. |
| StorageByTag | false | Etiketlenen depolama organizasyonu devre dışı bırakıldı. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.6 | Susuzluk oranı normalin üzerinde 1,6x. |
| WeatherFrequency | 5 | Hava sıklığı çok sık. |

<a id="optional-adapter-selection-15"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `black_lab`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_experimental_fear`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-nightmare-practical"></a>
## 17. Gün - Son Kabus Uygulaması

**Profil Kimliği:** `nightmare_final_nightmare_practical` **Genel koşullar:** Zorlu koşullar (2.99/5) **Açık anlamı:** Zorlu koşullar. Savaş baskısı: Ağır koşullar ana baskıdır. Hayatta kalma baskısı: Zorlu koşullar bir sonraki en güçlü faktördür. **Oyuncu tavsiyesi:** Mühimmat taşıyın, geri çekilme rotasını koruyun ve desteklenmeyen çatışmalardan kaçının.

<a id="main-effects-16"></a>
### Ana etkiler

- Ölüm cezaları: ağır.
- Düşman tespit hızı son derece yüksektir (3,4x).
- Düşmanın isabetliliği: son derece isabetli.
- Düşmanın dayanıklılığı son derece yüksek (3,5x).
- Düşmanın oyunculara verdiği hasar aşırı yüksek (4,1x).

<a id="domain-ratings-16"></a>
### Alan derecelendirmeleri

| Alan | Derecelendirme | Anlamı |
|---|---|---|
| Savaş baskısı | ciddi (3.87/5) | Düşman baskısı şiddetli; desteklenmeyen dövüşlerden kaçının. |
| Hayatta kalma baskısı | zorlu (3.18/5) | Açlık, susuzluk, yorgunluk veya hijyene daha fazla dikkat edilmesi gerekir. |
| Kaynak baskısı | standart (1.84/5) | Tedarik ve taşıma koşulları normale yakın. |
| Çevresel baskı | zorlu (2.75/5) | Güç, hava, su veya radyasyon koşulları belirsiz. |
| Kurtarma baskısı | standart (2.0/5) | Ölüm ve iyileşme kuralları normale yakın. |

<a id="encounter-context-16"></a>
### Karşılaşma bağlamı

- Kademe: **sonuç karşılaşmaları**
- Tema: **kabusun özeti**
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
| BaseInventorySize | 12 | Temel envanter boyutu, 12'deki standart basınçtır. |
| BonusPerkPoints | 2 | Bonus avantaj puanları olumlu koşullar 2'de. |
| BridgeSupports | 0 | Köprü destek sınırı, 0'daki standart basınçtır. |
| ContinenceSpeedMultiplier | 1.1 | Tutma oranı 1,1x ile normale yakın. |
| DamageToAlliesMultiplier | 0.1 | Dost ateşi hasarı 0,1x ile normalin çok altında. |
| DayNightCycleSpeedMultiplier | 1.45 | Gündüz-gece döngüsü hızı 1,45x ile normalin üzerinde. |
| DayNightCycleState | 2 | Gündüz-gece durumu gece ağırlıklı. |
| DeathPenalties | 3 | Ölüm cezaları ağır. |
| DetectionSpeedMultiplier | 3.4 | Düşman tespit hızı 3,4x ile çok yüksek. |
| DisableResearchMinigame | false | Araştırma normal mini oyununu kullanıyor. |
| DurabilityLossOnDeathMultiplier | 0.5 | Ölüm halinde dayanıklılık kaybı 0,5 kat ile normalin çok altındadır. |
| EnemyAccuracy | 4 | Düşmanın isabetliliği son derece yüksektir. |
| EnemyDeployableDamageMultiplier | 2.0 | Düşmanın savunmaya verdiği hasar normalin çok üzerinde, 2 kat. |
| EnemyHealthMultiplier | 3.5 | Düşmanın dayanıklılığı son derece yüksek 3,5x. |
| EnemyPlayerDamageMultiplier | 4.1 | Düşmanların oyunculara verdiği hasar 4,1x ile çok yüksek. |
| EnemySpawnRate | 2.0 | Düşman frekansı 2 kat normalin oldukça üzerinde. |
| FatigueSpeedMultiplier | 1.7 | Yorgunluk oranı 1,7x ile normalin oldukça üzerinde. |
| FirstTimeStartingWeapon | 0 | Silah tedariğinin başlatılması standart basınç 0'da. |
| FoodSpoilSpeedMultiplier | 1.6 | Gıda bozulması normalin üzerinde 1,6 kattır. |
| GameDifficulty | 3 | Oyun zorluğu çok zor. |
| HardcoreMode | false | Hardcore modu devre dışı. |
| HomeWorlds | true | Ev-dünya davranışı etkin. |
| HostAccessPlayerCorpses | true | Sunucu, kurtarma desteği için oyuncu cesetlerine erişebilir. |
| HungerSpeedMultiplier | 1.9 | Açlık oranı 1,9x ile normalin oldukça üzerinde. |
| InvisibleRadiation | false | Bu kural sayesinde radyasyon görünmez hale getirilmiyor. |
| ItemDurabilityMultiplier | 1.0 | Eşya dayanıklılığı 1x ile normale yakın. |
| ItemStackSizeMultiplier | 3.0 | Yığın kapasitesi 3x ile aşırı düzeyde. |
| ItemWeightMultiplier | 1.0 | Öğe ağırlığı normale yakın 1x. |
| LootRespawnEnabled | false | Toplanan ganimet yeniden doğmaz. |
| PlayerFurnitureDestruction | false | Oyuncu tarafından yapılan mobilyalar bu kurala karşı korunur. |
| PlayerXPGainMultiplier | 4.8 | Deneyim kazanımı 2,6x ile son derece yüksek 4,8x. |
| PowerSocketsOffAtNight | true | Elektrik prizleri geceleri kapanıyor. |
| RadiationDealsDamage | true | Radyasyon hasara neden olur. |
| RefrigerationEffectivenessMultiplier | 0.6 | Soğutma 0,6x ile normalin altında. |
| ShowDeathMessages | true | Ölüm bildirimleri gösterilmektedir. |
| SinkRefillRate | 0.5 | Lavabo doldurma oranı 0,5x ile normalin çok altında. |
| StorageByTag | true | Etiketlenmiş depolama organizasyonu etkin. |
| StructuralSupportLimit | 0 | Yapısal destek sınırı, 0'daki standart basınçtır. |
| TaintedSinkWater | true | Lavabo suyu güvenli olmayabilir. |
| ThirstSpeedMultiplier | 1.9 | Susuzluk oranı normalin oldukça üzerinde, 1,9x. |
| WeatherFrequency | 5 | Hava sıklığı çok sık. |

<a id="optional-adapter-selection-16"></a>
### İsteğe bağlı adaptör seçimi

- `ante_up`: `capstone`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `nightmare_final_nightmare_practical`
- `lethal_lasers`: `overcharged_high_hazard`
