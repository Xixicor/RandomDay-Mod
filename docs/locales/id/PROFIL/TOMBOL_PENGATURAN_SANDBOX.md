<a id="randomday---sandboxsettings-dictionary"></a>
# RandomDay - SandboxSettings kamus

> **Sumber kanonis bahasa Inggris:** [SANDBOX_SETTINGS_KEYS.md](../../../profiles/SANDBOX_SETTINGS_KEYS.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Versi: `v0.3.16-alpha`

Ini adalah kamus runtime lengkap untuk 46 SandboxSettings kunci yang digunakan oleh setiap profil RandomDay. Kamus mengonversi nilai mentah menjadi skor domain dan dibatasi player/admin susunan kata; itu tidak pernah menggantikan nilai mentah.

| Kunci | Makna pemain | Domain | Ketik | Dasar Dasar | Lebih sulit jika |
|---|---|---|---|---:|---|
| AllowCharacterReset | reset karakter | pemulihan | boolean | n/a | konteks |
| AllowIronMode | mode setrika | pemulihan | boolean | n/a | konteks |
| AllowPagers | pager | sumber daya | boolean | n/a | konteks |
| AllowRecipeSharing | berbagi resep | sumber daya | boolean | n/a | konteks |
| AllowTransmog | transmog | sumber daya | boolean | n/a | konteks |
| BaseInventorySize | inventaris dasar ukuran | sumber daya | angka | 12 | rendah |
| BonusPerkPoints | bonus poin keuntungan | sumber daya | angka | 0 | rendah |
| BridgeSupports | batas dukungan jembatan | lingkungan | angka | 0 | tinggi |
| ContinenceSpeedMultiplier | tingkat kontinensi | kelangsungan hidup | pengganda | 1.0 | tinggi |
| DamageToAlliesMultiplier | kerusakan akibat tembakan | pertempuran | pengganda | 1.0 | tinggi |
| DayNightCycleSpeedMultiplier | kecepatan siklus siang-malam | lingkungan | pengganda | 1.0 | tinggi |
| DayNightCycleState | keadaan siang-malam | lingkungan | enum | n/a | konteks |
| DeathPenalties | hukuman mati | pemulihan | enum | n/a | konteks |
| DetectionSpeedMultiplier | deteksi musuh kecepatan | pertempuran | pengganda | 1.0 | tinggi |
| DisableResearchMinigame | minigame penelitian | sumber daya | boolean | n/a | konteks |
| DurabilityLossOnDeathMultiplier | kehilangan daya tahan saat mati | pemulihan | pengganda | 1.0 | tinggi |
| EnemyAccuracy | akurasi musuh | pertempuran | enum | n/a | konteks |
| EnemyDeployableDamageMultiplier | kerusakan musuh pada pertahanan | pertempuran | pengganda | 1.0 | tinggi |
| EnemyHealthMultiplier | ketahanan musuh | pertempuran | pengganda | 1.0 | tinggi |
| EnemyPlayerDamageMultiplier | musuh kerusakan pada pemain | pertempuran | pengganda | 1.0 | tinggi |
| EnemySpawnRate | frekuensi musuh | pertempuran | pengganda | 1.0 | tinggi |
| FatigueSpeedMultiplier | tingkat kelelahan | kelangsungan hidup | pengganda | 1.0 | tinggi |
| FirstTimeStartingWeapon | memulai penyediaan senjata | sumber daya | angka | 0 | rendah |
| FoodSpoilSpeedMultiplier | pembusukan makanan | sumber daya | pengganda | 1.0 | tinggi |
| GameDifficulty | kesulitan permainan | pertempuran | enum | n/a | konteks |
| HardcoreMode | mode hardcore | pemulihan | boolean | n/a | konteks |
| HomeWorlds | home worlds | lingkungan | boolean | n/a | konteks |
| HostAccessPlayerCorpses | hosting mayat akses | pemulihan | boolean | n/a | konteks |
| HungerSpeedMultiplier | tingkat kelaparan | kelangsungan hidup | pengganda | 1.0 | tinggi |
| InvisibleRadiation | radiasi tak terlihat | lingkungan | boolean | n/a | konteks |
| ItemDurabilityMultiplier | daya tahan item | sumber daya | pengganda | 1.0 | rendah |
| ItemStackSizeMultiplier | kapasitas tumpukan | sumber daya | pengganda | 1.0 | rendah |
| ItemWeightMultiplier | berat item | sumber daya | pengganda | 1.0 | tinggi |
| LootRespawnEnabled | loot respawn | sumber daya | boolean | n/a | konteks |
| PlayerFurnitureDestruction | penghancuran furnitur pemain | pertempuran | boolean | n/a | konteks |
| PlayerXPGainMultiplier | peningkatan pengalaman | sumber daya | pengganda | 1.0 | rendah |
| PowerSocketsOffAtNight | kekuatan malam | lingkungan | boolean | n/a | konteks |
| RadiationDealsDamage | kerusakan radiasi | lingkungan | boolean | n/a | konteks |
| RefrigerationEffectivenessMultiplier | pendinginan | sumber daya | pengganda | 1.0 | rendah |
| ShowDeathMessages | pesan kematian | pemulihan | boolean | n/a | konteks |
| SinkRefillRate | kecepatan isi ulang wastafel | sumber daya | pengganda | 1.0 | rendah |
| StorageByTag | penyimpanan berdasarkan tag | sumber daya | boolean | n/a | konteks |
| StructuralSupportLimit | batas dukungan struktural | lingkungan | angka | 0 | tinggi |
| TaintedSinkWater | air wastafel tercemar | kelangsungan hidup | boolean | n/a | konteks |
| ThirstSpeedMultiplier | tingkat kehausan | kelangsungan hidup | pengganda | 1.0 | tinggi |
| WeatherFrequency | frekuensi cuaca | lingkungan | enum | n/a | konteks |

<a id="score-bands"></a>
## Gelombang skor

| Skor melalui | Peringkat | Arti sederhana |
|---:|---|---|
| 0.8 | Kondisi bantuan | bantuan |
| 1.7 | Kondisi yang menguntungkan | menguntungkan |
| 2.6 | Tekanan standar | standar |
| 3.4 | Kondisi yang menuntut | menuntut |
| 4.2 | Kondisi yang berat | parah |
| 5.0 | Kondisi ekstrem | ekstrim |
