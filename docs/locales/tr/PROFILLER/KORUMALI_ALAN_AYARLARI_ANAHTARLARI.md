<a id="randomday---sandboxsettings-dictionary"></a>
# RandomDay - SandboxSettings sözlüğü

> **Kanonik İngilizce kaynağı:** [SANDBOX_SETTINGS_KEYS.md](../../../profiles/SANDBOX_SETTINGS_KEYS.md). Bu yerelleştirilmiş belgeler tam komutları, yolları, anahtarları, durum değerlerini, karmaları ve dosya adlarını korur. Teknik ifadeler farklıysa İngilizce kaynağı kullanın.


Sürüm: `v0.3.16-alpha`

Bu, her SandboxSettings anahtarının eksiksiz çalışma zamanı sözlüğüdür. Sözlük, ham değerleri alan puanlarına ve sınırlı değerlere dönüştürür RandomDay profili tarafından kullanılan 46 player/admin ifadelere dönüştürür; hiçbir zaman ham değerin yerini almaz.

| Anahtar | Oynatıcı anlamı | Etki alanı | Tür | Temel | Daha zor |
|---|---|---|---|---:|---|
| AllowCharacterReset | karakter sıfırlama | kurtarma | boolean | n/a | bağlam |
| AllowIronMode | demir modu | kurtarma | boolean | n/a | bağlam |
| AllowPagers | çağrı cihazları | kaynaklar | boolean | n/a | bağlam |
| AllowRecipeSharing | tarif paylaşımı | kaynaklar | boolean | n/a | bağlam |
| AllowTransmog | transmog | kaynaklar | boolean | n/a | bağlam |
| BaseInventorySize | temel envanter boyutu | kaynaklar | sayı | 12 | düşük |
| BonusPerkPoints | bonus avantaj puanları | kaynaklar | sayı | 0 | düşük |
| BridgeSupports | köprü desteği sınırı | ortam | sayı | 0 | yüksek |
| ContinenceSpeedMultiplier | kontinans oranı | hayatta kalma | çarpan | 1.0 | yüksek |
| DamageToAlliesMultiplier | dost ateşi hasarı | savaş | çarpan | 1.0 | yüksek |
| DayNightCycleSpeedMultiplier | gündüz-gece döngüsü hızı | ortam | çarpan | 1.0 | yüksek |
| DayNightCycleState | gündüz-gece durumu | ortam | enum | n/a | bağlam |
| DeathPenalties | ölüm cezaları | kurtarma | enum | n/a | bağlam |
| DetectionSpeedMultiplier | düşman tespiti hız | savaş | çarpan | 1.0 | yüksek |
| DisableResearchMinigame | mini oyun araştırması | kaynaklar | boolean | n/a | bağlam |
| DurabilityLossOnDeathMultiplier | ölümde dayanıklılık kaybı | kurtarma | çarpan | 1.0 | yüksek |
| EnemyAccuracy | düşman doğruluk | savaş | enum | n/a | bağlam |
| EnemyDeployableDamageMultiplier | düşmanın savunmaya verdiği hasar | savaş | çarpan | 1.0 | yüksek |
| EnemyHealthMultiplier | düşmanın dayanıklılığı | savaş | çarpan | 1.0 | yüksek |
| EnemyPlayerDamageMultiplier | düşmanın oyunculara verdiği hasar | savaş | çarpan | 1.0 | yüksek |
| EnemySpawnRate | düşman frekansı | savaş | çarpan | 1.0 | yüksek |
| FatigueSpeedMultiplier | yorgunluk oranı | hayatta kalma | çarpan | 1.0 | yüksek |
| FirstTimeStartingWeapon | Silah tedariği başlatılıyor | kaynaklar | sayı | 0 | düşük |
| FoodSpoilSpeedMultiplier | yiyecek bozulması | kaynaklar | çarpan | 1.0 | yüksek |
| GameDifficulty | oyun zorluğu | savaş | enum | n/a | bağlam |
| HardcoreMode | hardcore modu | kurtarma | boolean | n/a | bağlam |
| HomeWorlds | ev dünyaları | ortam | boolean | n/a | bağlam |
| HostAccessPlayerCorpses | ana bilgisayar ceset erişimi | kurtarma | boolean | n/a | bağlam |
| HungerSpeedMultiplier | açlık oranı | hayatta kalma | çarpan | 1.0 | yüksek |
| InvisibleRadiation | görünmez radyasyon | ortam | boolean | n/a | bağlam |
| ItemDurabilityMultiplier | öğe dayanıklılığı | kaynaklar | çarpan | 1.0 | düşük |
| ItemStackSizeMultiplier | yığın kapasitesi | kaynaklar | çarpan | 1.0 | düşük |
| ItemWeightMultiplier | öğe ağırlığı | kaynaklar | çarpan | 1.0 | yüksek |
| LootRespawnEnabled | ganimetin yeniden doğması | kaynaklar | boolean | n/a | bağlam |
| PlayerFurnitureDestruction | oyuncu mobilyalarının imhası | savaş | boolean | n/a | bağlam |
| PlayerXPGainMultiplier | deneyim kazanımı | kaynaklar | çarpan | 1.0 | düşük |
| PowerSocketsOffAtNight | gece gücü | ortam | boolean | n/a | bağlam |
| RadiationDealsDamage | radyasyon hasarı | ortam | boolean | n/a | bağlam |
| RefrigerationEffectivenessMultiplier | soğutma | kaynaklar | çarpan | 1.0 | düşük |
| ShowDeathMessages | ölüm mesajları | kurtarma | boolean | n/a | bağlam |
| SinkRefillRate | havuz doldurma oranı | kaynaklar | çarpan | 1.0 | düşük |
| StorageByTag | etikete göre depolama | kaynaklar | boolean | n/a | bağlam |
| StructuralSupportLimit | yapısal destek sınırı | ortam | sayı | 0 | yüksek |
| TaintedSinkWater | kirli lavabo suyu | hayatta kalma | boolean | n/a | bağlam |
| ThirstSpeedMultiplier | susuzluk oranı | hayatta kalma | çarpan | 1.0 | yüksek |
| WeatherFrequency | hava durumu frekansı | ortam | enum | n/a | bağlam |

<a id="score-bands"></a>
## Puan bantları

| Puan | Derecelendirme | Açık anlam |
|---:|---|---|
| 0.8 | Rahatlama koşulları | rahatlama |
| 1.7 | Uygun koşullar | olumlu |
| 2.6 | Standart basınç | standart |
| 3.4 | Zorlu koşullar | zorlu |
| 4.2 | Zorlu koşullar | ciddi |
| 5.0 | Aşırı koşullar | ekstrem |
