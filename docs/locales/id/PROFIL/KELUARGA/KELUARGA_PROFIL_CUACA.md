<a id="randomday---weathered-family"></a>
# RandomDay - Keluarga Cuaca

> **Sumber kanonis bahasa Inggris:** [weathered.md](../../../../profiles/families/weathered.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Versi: `v0.3.16-alpha`

Kelangsungan hidup lingkungan: cuaca, radiasi, listrik, kelaparan, kehausan.

**Gaya bermain:** kelangsungan hidup lingkungan **Nada pesan:** permintaan maaf meteorologi

<a id="17-day-index"></a>
## Indeks 17 Hari

| Hari | Profil | Kondisi | Tekanan utama |
|---:|---|---|---|
| 1 | Orientasi Prakiraan | Tekanan standar (1.99/5) | Tekanan lingkungan |
| 2 | Penggeser Angin Lantai Terbuka | Kondisi yang menguntungkan (1.39/5) | Tekanan lingkungan |
| 3 | Saran Hidrasi | Tekanan standar (2.34/5) | Tekanan kelangsungan hidup |
| 4 | Pencucian Rute Pasokan | Kondisi yang menguntungkan (1.59/5) | Tekanan lingkungan |
| 5 | Keamanan dalam Jarak Pandang Buruk | Tekanan standar (2.2/5) | Tekanan kelangsungan hidup |
| 6 | Permintaan Maaf dari Departemen Cuaca | Tekanan standar (2.15/5) | Tekanan kelangsungan hidup |
| 7 | Pengawasan Badai Malam | Tekanan standar (2.19/5) | Tekanan kelangsungan hidup |
| 8 | Peringatan Rute Banjir | Tekanan standar (1.93/5) | Tekanan lingkungan |
| 9 | Uji Coba Kelembapan Jatah | Tekanan standar (2.4/5) | Tekanan kelangsungan hidup |
| 10 | Jendela Perlindungan | Kondisi yang menguntungkan (1.14/5) | Tekanan lingkungan |
| 11 | Pelatihan Payung Keselamatan | Kondisi yang menguntungkan (1.59/5) | Tekanan lingkungan |
| 12 | Tinjauan Iklim Black Lab | Kondisi yang menuntut (2.74/5) | Tekanan kelangsungan hidup |
| 13 | Pergeseran Eksposur yang Diperpanjang | Tekanan standar (2.5/5) | Tekanan kelangsungan hidup |
| 14 | Supply Closet Dry Spot | Kondisi yang menguntungkan (1.11/5) | Tekanan lingkungan |
| 15 | Akurasi di Crosswind | Tekanan standar (2.16/5) | Tekanan kelangsungan hidup |
| 16 | Sel Cuaca Eksperimental | Tekanan standar (2.25/5) | Tekanan kelangsungan hidup |
| 17 | Audit Iklim Akhir | Kondisi yang menuntut (3.0/5) | Tekanan kelangsungan hidup |

<a id="day-1---forecast-orientation"></a>
## Hari 1 - Orientasi Prakiraan

**ID Profil:** `weathered_forecast_orientation` **Keseluruhan kondisi:** Tekanan standar (1.99/5) **Arti jelasnya:** Tekanan standar. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan kelangsungan hidup: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Pastikan listrik, air, tempat berlindung, dan perlindungan bahaya sebelum meninggalkan markas.

<a id="main-effects"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,25x).
- Kapasitas tumpukan jauh di atas normal (2x).
- Soket listrik mati di malam hari.

<a id="domain-ratings"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (1.88/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (2.35/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | standar (1.77/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.48/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.5/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **orientasi cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.07**
- Peluang acara khusus: **2**

<a id="exact-sandbox-settings"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 12 | Ukuran inventaris dasar adalah tekanan standar pada 12. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.0 | Tingkat kontinensi mendekati normal pada 1x. |
| DamageToAlliesMultiplier | 0.25 | Kerusakan akibat tembakan jauh di bawah normal pada 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Kecepatan siklus siang-malam mendekati normal pada 1x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 1.0 | Kecepatan deteksi musuh mendekati normal pada 1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.25 | Kehilangan daya tahan saat mati jauh di bawah normal pada 0,25x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.1 | Ketahanan musuh mendekati normal yaitu 1,1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Kerusakan musuh pada pemain mendekati normal pada 1,1x. |
| EnemySpawnRate | 0.9 | Frekuensi musuh mendekati normal yaitu 0,9x. |
| FatigueSpeedMultiplier | 1.5 | Tingkat kelelahan di atas normal yaitu 1,5x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.0 | Pembusukan makanan mendekati normal pada 1x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.5 | Tingkat kelaparan di atas normal pada 1,5x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.5 | Daya tahan item di atas normal pada 1,5x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 1.0 | Berat item mendekati normal pada 1x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.4 | Perolehan pengalaman di atas normal yaitu 1,4x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.0 | Pendinginan mendekati normal pada 1x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 1.0 | Kecepatan pengisian ulang wastafel mendekati normal pada 1x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.5 | Tingkat ketiga di atas normal sebesar 1,5x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection"></a>
### Pemilihan adaptor opsional

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `weathered_forecast_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-wind-shear"></a>
## Hari 2 - Lantai Terbuka Wind Shear

**ID Profil:** `weathered_open_floor_wind_shear` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.39/5) **Arti jelasnya:** Kondisi yang menguntungkan. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan kelangsungan hidup: Kondisi yang menguntungkan adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-1"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Kerusakan akibat tembakan jauh di bawah normal (0x).
- Daya tahan item sangat ekstrem (4x).
- Kapasitas tumpukan sangat ekstrem (8x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,05x).

<a id="domain-ratings-1"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (1.17/5) | Tekanan musuh lebih ringan dari biasanya. |
| Tekanan kelangsungan hidup | menguntungkan (1.64/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | menguntungkan (1.11/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (2.22/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.2/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-1"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ringan**
- Tema: **persiapan cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.028**
- Peluang acara khusus: **0**

<a id="exact-sandbox-settings-1"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 26 | Ukuran inventaris dasar adalah kondisi bantuan di 26. |
| BonusPerkPoints | 7 | Poin keuntungan bonus adalah kondisi bantuan di 7. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 0.65 | Tingkat kontinensi di bawah normal pada 0,65x. |
| DamageToAlliesMultiplier | 0.0 | Kerusakan akibat tembakan teman jauh di bawah normal pada 0x. |
| DayNightCycleSpeedMultiplier | 0.9 | Kecepatan siklus siang-malam mendekati normal pada 0,9x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 0 | Hukuman mati minimal. |
| DetectionSpeedMultiplier | 0.65 | Kecepatan deteksi musuh di bawah normal yaitu 0,65x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.05 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0,05x. |
| EnemyAccuracy | 1 | Akurasi musuh berkurang. |
| EnemyDeployableDamageMultiplier | 0.1 | Kerusakan pertahanan musuh jauh di bawah normal yaitu 0,1x. |
| EnemyHealthMultiplier | 0.9 | Ketahanan musuh mendekati normal yaitu 0,9x. |
| EnemyPlayerDamageMultiplier | 0.7 | Kerusakan musuh pada pemain di bawah normal sebesar 0,7x. |
| EnemySpawnRate | 0.5 | Frekuensi musuh jauh di bawah normal yaitu 0,5x. |
| FatigueSpeedMultiplier | 0.9 | Tingkat kelelahan mendekati normal yaitu 0,9x. |
| FirstTimeStartingWeapon | 2 | Memulai penyediaan senjata adalah tekanan standar pada 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Pembusukan makanan di bawah normal pada 0,75x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.9 | Tingkat kelaparan mendekati normal yaitu 0,9x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 4.0 | Daya tahan item sangat ekstrem pada 4x. |
| ItemStackSizeMultiplier | 8.0 | Kapasitas tumpukan sangat ekstrem pada 8x. |
| ItemWeightMultiplier | 0.5 | Berat item jauh di bawah normal pada 0,5x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 2.0 | Perolehan pengalaman jauh di atas normal sebesar 2x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.5 | Pendinginan di atas normal pada 1,5x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 2.0 | Tingkat pengisian ulang wastafel jauh di atas normal pada 2x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.9 | Tingkat haus mendekati normal pada 0,9x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-1"></a>
### Pemilihan adaptor opsional

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `weathered_open_floor_wind_shear`
- `lethal_lasers`: `low_hazard`

<a id="day-3---hydration-advisory"></a>
## Hari ke-3 - Anjuran Hidrasi

**ID Profil:** `weathered_hydration_advisory` **Keseluruhan kondisi:** Tekanan standar (2.34/5) **Arti jelasnya:** Tekanan standar. Tekanan kelangsungan hidup: Kondisi yang parah adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-2"></a>
### Efek utama

- Tingkat kehausan sangat ekstrim (2,7x).
- Frekuensi cuaca: sangat sering.
- Air wastafel mungkin tidak aman.
- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,25x).

<a id="domain-ratings-2"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.06/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup |  (3.53/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | standar (1.92/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.48/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.5/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-2"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **sumber daya hayati cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.091**
- Peluang acara khusus: **8**

<a id="exact-sandbox-settings-2"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 12 | Ukuran inventaris dasar adalah tekanan standar pada 12. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.45 | Tingkat kontinensia di atas normal pada 1,45x. |
| DamageToAlliesMultiplier | 0.25 | Kerusakan akibat tembakan jauh di bawah normal pada 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Kecepatan siklus siang-malam mendekati normal pada 1x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 1.1 | Kecepatan deteksi musuh mendekati normal pada 1,1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.25 | Kehilangan daya tahan saat mati jauh di bawah normal pada 0,25x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.9 | Kerusakan musuh pada pertahanan mendekati normal pada 0,9x. |
| EnemyHealthMultiplier | 1.2 | Ketahanan musuh di atas normal pada 1,2x. |
| EnemyPlayerDamageMultiplier | 1.2 | Kerusakan musuh pada pemain berada di atas normal yaitu 1,2x. |
| EnemySpawnRate | 0.9 | Frekuensi musuh mendekati normal yaitu 0,9x. |
| FatigueSpeedMultiplier | 1.7 | Tingkat kelelahan jauh di atas normal sebesar 1,7x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Pembusukan makanan berada di atas normal yaitu 1,25x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.9 | Tingkat kelaparan jauh di atas normal sebesar 1,9x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.25 | Daya tahan item di atas normal yaitu 1,25x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 1.0 | Berat item mendekati normal pada 1x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.7 | Perolehan pengalaman jauh di atas normal yaitu 1,7x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.75 | Pendinginan di bawah normal yaitu 0,75x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.25 | Kecepatan isi ulang wastafel jauh di bawah normal yaitu 0,25x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 2.7 | Tingkat rasa haus sangat ekstrim yaitu 2,7x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-2"></a>
### Pemilihan adaptor opsional

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `weathered_hydration_advisory`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-route-washout"></a>
## Hari ke-4 - Rute Pasokan Washout

**ID Profil:** `weathered_supply_route_washout` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.59/5) **Arti jelasnya:** Kondisi yang menguntungkan. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan kelangsungan hidup: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-3"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Daya tahan item sangat ekstrem (2,5x).
- Kapasitas tumpukan sangat ekstrem (14x).
- Tingkat pengisian ulang wastafel sangat ekstrem (2,5x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,05x).

<a id="domain-ratings-3"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (1.53/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (1.89/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | menguntungkan (1.0/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (2.24/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.44/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-3"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ringan**
- Tema: **mobilitas penjarahan cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.056**
- Peluang acara khusus: **2**

<a id="exact-sandbox-settings-3"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 30 | Ukuran inventaris dasar adalah ketentuan bantuan pada 30. |
| BonusPerkPoints | 3 | Poin bonus bonus adalah ketentuan yang menguntungkan di 3. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 0.75 | Tingkat kontinensia di bawah normal yaitu 0,75x. |
| DamageToAlliesMultiplier | 0.25 | Kerusakan akibat tembakan jauh di bawah normal pada 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Kecepatan siklus siang-malam mendekati normal pada 1x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 0.8 | Kecepatan deteksi musuh di bawah normal pada 0,8x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.05 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0,05x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.5 | Kerusakan pertahanan musuh jauh di bawah normal yaitu 0,5x. |
| EnemyHealthMultiplier | 1.0 | Ketahanan musuh mendekati normal pada 1x. |
| EnemyPlayerDamageMultiplier | 0.9 | Kerusakan musuh pada pemain mendekati normal yaitu 0,9x. |
| EnemySpawnRate | 0.7 | Frekuensi musuh di bawah normal sebesar 0,7x. |
| FatigueSpeedMultiplier | 1.1 | Tingkat kelelahan mendekati normal yaitu 1,1x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.6 | Pembusukan makanan berada di bawah normal yaitu 0,6x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.1 | Tingkat kelaparan mendekati normal yaitu 1,1x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 2.5 | Daya tahan item sangat tinggi yaitu 2,5x. |
| ItemStackSizeMultiplier | 14.0 | Kapasitas tumpukan sangat ekstrim yaitu 14x. |
| ItemWeightMultiplier | 0.3 | Berat item jauh di bawah normal yaitu 0,3x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 2.2 | Perolehan pengalaman jauh di atas normal pada 2,2x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.5 | Pendinginan di atas normal pada 1,5x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 2.5 | Kecepatan pengisian ulang wastafel sangat ekstrim yaitu 2,5x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.1 | Tingkat haus mendekati normal yaitu 1,1x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-3"></a>
### Pemilihan adaptor opsional

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `weathered_supply_route_washout`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-in-poor-visibility"></a>
## Hari ke-5 - Keamanan dalam Jarak Pandang Buruk

**ID Profil:** `weathered_security_in_poor_visibility` **Keseluruhan kondisi:** Tekanan standar (2.2/5) **Arti jelasnya:** Tekanan standar. Tekanan bertahan hidup: Tekanan standar adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-4"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Kerusakan akibat tembakan jauh di bawah normal (0,1x).
- Kecepatan deteksi musuh jauh di atas normal (2x).
- Kesulitan permainan: sulit.
- Kapasitas tumpukan jauh di atas normal (2x).

<a id="domain-ratings-4"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.39/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (2.53/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | standar (1.7/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.48/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.51/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-4"></a>
### Konteks pertemuan

- Tingkat: **pertemuan berat**
- Tema: **keamanan cuaca**
- Grup aktif maksimum: **2**
- Peluang pertemuan campuran: **0.119**
- Peluang acara khusus: **14**

<a id="exact-sandbox-settings-4"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 12 | Ukuran inventaris dasar adalah tekanan standar pada 12. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.0 | Tingkat kontinensi mendekati normal pada 1x. |
| DamageToAlliesMultiplier | 0.1 | Kerusakan akibat tembakan teman jauh di bawah normal yaitu 0,1x. |
| DayNightCycleSpeedMultiplier | 1.0 | Kecepatan siklus siang-malam mendekati normal pada 1x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 2.0 | Kecepatan deteksi musuh jauh di atas normal sebesar 2x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.3 | Kehilangan ketahanan saat mati jauh di bawah normal yaitu 0,3x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.2 | Ketahanan musuh di atas normal pada 1,2x. |
| EnemyPlayerDamageMultiplier | 1.4 | Kerusakan musuh pada pemain di atas normal yaitu 1,4x. |
| EnemySpawnRate | 1.35 | Frekuensi musuh di atas normal yaitu 1,35x. |
| FatigueSpeedMultiplier | 1.9 | Tingkat kelelahan jauh di atas normal yaitu 1,9x. |
| FirstTimeStartingWeapon | 4 | Memulai penyediaan senjata adalah kondisi yang menguntungkan pada 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Pembusukan makanan mendekati normal pada 1x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.6 | Tingkat kelaparan di atas normal yaitu 1,6x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.25 | Daya tahan item di atas normal yaitu 1,25x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 1.0 | Berat item mendekati normal pada 1x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 2.0 | Perolehan pengalaman jauh di atas normal sebesar 2x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.0 | Pendinginan mendekati normal pada 1x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 1.0 | Kecepatan pengisian ulang wastafel mendekati normal pada 1x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.6 | Tingkat kehausan di atas normal yaitu 1,6x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-4"></a>
### Pemilihan adaptor opsional

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `weathered_security_in_poor_visibility`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weather-department-apology"></a>
## Hari ke-6 - Permintaan Maaf Departemen Cuaca

**ID Profil:** `weathered_weather_department_apology` **Keseluruhan kondisi:** Tekanan standar (2.15/5) **Arti jelasnya:** Tekanan standar. Tekanan untuk bertahan hidup: Kondisi yang menuntut adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-5"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Tingkat rasa haus jauh di atas normal (2,1x).
- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,25x).
- Kesulitan permainan: sulit.

<a id="domain-ratings-5"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.08/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | menuntut (2.65/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | standar (1.87/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.52/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.5/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-5"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **cuaca cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.091**
- Peluang acara khusus: **10**

<a id="exact-sandbox-settings-5"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 12 | Ukuran inventaris dasar adalah tekanan standar pada 12. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.0 | Tingkat kontinensi mendekati normal pada 1x. |
| DamageToAlliesMultiplier | 0.25 | Kerusakan akibat tembakan jauh di bawah normal pada 0,25x. |
| DayNightCycleSpeedMultiplier | 1.25 | Kecepatan siklus siang-malam di atas normal pada 1,25x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 1.1 | Kecepatan deteksi musuh mendekati normal pada 1,1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.25 | Kehilangan daya tahan saat mati jauh di bawah normal pada 0,25x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.1 | Ketahanan musuh mendekati normal yaitu 1,1x. |
| EnemyPlayerDamageMultiplier | 1.2 | Kerusakan musuh pada pemain berada di atas normal yaitu 1,2x. |
| EnemySpawnRate | 1.0 | Frekuensi musuh mendekati normal yaitu 1x. |
| FatigueSpeedMultiplier | 1.7 | Tingkat kelelahan jauh di atas normal sebesar 1,7x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Pembusukan makanan berada di atas normal yaitu 1,25x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.7 | Tingkat kelaparan jauh di atas normal yaitu 1,7x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.1 | Daya tahan item mendekati normal pada 1,1x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 1.0 | Berat item mendekati normal pada 1x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.6 | Perolehan pengalaman di atas normal sebesar 1,6x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.8 | Pendinginan di bawah normal pada 0,8x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.75 | Kecepatan isi ulang wastafel di bawah normal yaitu 0,75x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 2.1 | Tingkat ketiga jauh di atas normal yaitu 2,1x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-5"></a>
### Pemilihan adaptor opsional

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `weathered_weather_department_apology`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-storm-watch"></a>
## Hari ke-7 - Pengawasan Badai Malam Hari

**ID Profil:** `weathered_night_storm_watch` **Keseluruhan kondisi:** Tekanan standar (2.19/5) **Arti jelasnya:** Tekanan standar. Tekanan untuk bertahan hidup: Kondisi yang menuntut adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-6"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Kapasitas tumpukan sangat ekstrem (3x).
- Keadaan siang-malam: bias malam.
- Tingkat kelelahan jauh di atas normal (2,2x).
- Perolehan pengalaman jauh di atas normal (2,2x).

<a id="domain-ratings-6"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.39/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | menuntut (2.6/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | menguntungkan (1.57/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.44/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.49/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-6"></a>
### Konteks pertemuan

- Tingkat: **pertemuan berat**
- Tema: **cuaca malam**
- Grup aktif maksimum: **2**
- Peluang pertemuan campuran: **0.119**
- Peluang acara khusus: **16**

<a id="exact-sandbox-settings-6"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 16 | Ukuran inventaris dasar adalah kondisi yang menguntungkan di 16. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 0.95 | Tingkat kontinensia mendekati normal yaitu 0,95x. |
| DamageToAlliesMultiplier | 0.25 | Kerusakan akibat tembakan jauh di bawah normal pada 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Kecepatan siklus siang-malam mendekati normal pada 1x. |
| DayNightCycleState | 2 | Keadaan siang-malam bias pada malam hari. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 1.7 | Kecepatan deteksi musuh jauh di atas normal yaitu 1,7x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.2 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0,2x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.2 | Ketahanan musuh di atas normal pada 1,2x. |
| EnemyPlayerDamageMultiplier | 1.4 | Kerusakan musuh pada pemain di atas normal yaitu 1,4x. |
| EnemySpawnRate | 1.45 | Frekuensi musuh di atas normal yaitu 1,45x. |
| FatigueSpeedMultiplier | 2.2 | Tingkat kelelahan jauh di atas normal yaitu 2,2x. |
| FirstTimeStartingWeapon | 5 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 5. |
| FoodSpoilSpeedMultiplier | 1.0 | Pembusukan makanan mendekati normal pada 1x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.6 | Tingkat kelaparan di atas normal yaitu 1,6x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.5 | Daya tahan item di atas normal pada 1,5x. |
| ItemStackSizeMultiplier | 3.0 | Kapasitas tumpukan mencapai 3x. |
| ItemWeightMultiplier | 0.8 | Berat item di bawah normal sebesar 0,8x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 2.2 | Perolehan pengalaman jauh di atas normal pada 2,2x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.0 | Pendinginan mendekati normal pada 1x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 1.0 | Kecepatan pengisian ulang wastafel mendekati normal pada 1x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.6 | Tingkat kehausan di atas normal yaitu 1,6x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-6"></a>
### Pemilihan adaptor opsional

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `weathered_night_storm_watch`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-flood-warning"></a>
## Hari ke-8 - Peringatan Rute Banjir

**ID Profil:** `weathered_route_flood_warning` **Keseluruhan kondisi:** Tekanan standar (1.93/5) **Arti jelasnya:** Tekanan standar. Tekanan lingkungan: Kondisi yang menuntut adalah tekanan utama. Tekanan tempur: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Pastikan listrik, air, tempat berlindung, dan perlindungan bahaya sebelum meninggalkan markas.

<a id="main-effects-7"></a>
### Efek utama

- Kecepatan siklus siang-malam sangat ekstrem (3x).
- Frekuensi cuaca: sangat sering.
- Kapasitas tumpukan sangat ekstrem (4x).
- Perolehan pengalaman jauh di atas normal (2,3x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,15x).

<a id="domain-ratings-7"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.08/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (1.87/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | menguntungkan (1.43/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | menuntut (2.81/5) | Kondisi listrik, cuaca, air, atau radiasi tidak menentu. |
| Tekanan pemulihan | menguntungkan (1.47/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-7"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **rute cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.105**
- Peluang acara khusus: **14**

<a id="exact-sandbox-settings-7"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 18 | Ukuran inventaris dasar adalah kondisi yang menguntungkan di 18. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 0.7 | Tingkat kontinuitas di bawah normal yaitu 0,7x. |
| DamageToAlliesMultiplier | 0.25 | Kerusakan akibat tembakan jauh di bawah normal pada 0,25x. |
| DayNightCycleSpeedMultiplier | 3.0 | Kecepatan siklus siang-malam sangat ekstrem pada 3x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 1.4 | Kecepatan deteksi musuh di atas normal yaitu 1,4x. |
| DisableResearchMinigame | benar | Bypass penelitian diaktifkan. |
| DurabilityLossOnDeathMultiplier | 0.15 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0,15x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.8 | Kerusakan pertahanan musuh di bawah normal yaitu 0,8x. |
| EnemyHealthMultiplier | 0.9 | Ketahanan musuh mendekati normal yaitu 0,9x. |
| EnemyPlayerDamageMultiplier | 1.2 | Kerusakan musuh pada pemain berada di atas normal yaitu 1,2x. |
| EnemySpawnRate | 1.2 | Frekuensi musuh di atas normal pada 1,2x. |
| FatigueSpeedMultiplier | 1.1 | Tingkat kelelahan mendekati normal yaitu 1,1x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.9 | Pembusukan makanan mendekati normal yaitu 0,9x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.1 | Tingkat kelaparan mendekati normal yaitu 1,1x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.25 | Daya tahan item di atas normal yaitu 1,25x. |
| ItemStackSizeMultiplier | 4.0 | Kapasitas tumpukan sangat tinggi yaitu 4x. |
| ItemWeightMultiplier | 0.8 | Berat item di bawah normal sebesar 0,8x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 2.3 | Perolehan pengalaman jauh di atas normal yaitu 2,3x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.1 | Pendinginan mendekati normal pada 1,1x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 1.5 | Kecepatan isi ulang bak cuci berada di atas normal sebesar 1,5x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.1 | Tingkat haus mendekati normal yaitu 1,1x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-7"></a>
### Pemilihan adaptor opsional

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `weathered_route_flood_warning`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-humidity-trial"></a>
## Hari ke-9 - Uji Coba Kelembapan Ransum

**ID Profil:** `weathered_ration_humidity_trial` **Keseluruhan kondisi:** Tekanan standar (2.4/5) **Arti jelasnya:** Tekanan standar. Tekanan kelangsungan hidup: Kondisi yang parah adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-8"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Tingkat kelaparan sangat ekstrim (2,5x).
- Ukuran persediaan dasar berada dalam kondisi yang parah (10).
- Air wastafel mungkin tidak aman.
- Tingkat rasa haus jauh di atas normal (2,3x).

<a id="domain-ratings-8"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (1.96/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup |  (3.62/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | standar (2.31/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.48/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.53/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-8"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **kelangkaan cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.084**
- Peluang acara khusus: **8**

<a id="exact-sandbox-settings-8"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 10 | Ukuran inventaris dasar adalah kondisi yang parah pada angka 10. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.25 | Tingkat kontinensia berada di atas normal yaitu sebesar 1,25x. |
| DamageToAlliesMultiplier | 0.25 | Kerusakan akibat tembakan jauh di bawah normal pada 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Kecepatan siklus siang-malam mendekati normal pada 1x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 1.1 | Kecepatan deteksi musuh mendekati normal pada 1,1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.35 | Kehilangan daya tahan akibat kematian jauh di bawah normal yaitu sebesar 0,35x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.3 | Ketahanan musuh di atas normal yaitu 1,3x. |
| EnemyPlayerDamageMultiplier | 1.3 | Kerusakan musuh pada pemain di atas normal yaitu 1,3x. |
| EnemySpawnRate | 0.9 | Frekuensi musuh mendekati normal yaitu 0,9x. |
| FatigueSpeedMultiplier | 2.0 | Tingkat kelelahan jauh di atas normal pada saat 2x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Pembusukan makanan jauh di atas normal yaitu sebesar 2x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 2.5 | Tingkat kelaparan ekstrem sebesar 2,5x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 0.75 | Daya tahan item di bawah normal sebesar 0,75x. |
| ItemStackSizeMultiplier | 1.0 | Kapasitas tumpukan mendekati normal pada 1x. |
| ItemWeightMultiplier | 1.4 | Berat item berada di atas normal sebesar 1,4x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.6 | Perolehan pengalaman di atas normal sebesar 1,6x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.5 | Pendinginan jauh di bawah normal pada 0,5x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.5 | Kecepatan isi ulang wastafel jauh di bawah normal yaitu 0,5x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 2.3 | Tingkat ketiga jauh di atas normal yaitu 2,3x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-8"></a>
### Pemilihan adaptor opsional

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `weathered_ration_humidity_trial`
- `lethal_lasers`: `standard_safety`

<a id="day-10---shelter-window"></a>
## Hari ke-10 - Jendela Perlindungan

**ID Profil:** `weathered_shelter_window` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.14/5) **Arti jelasnya:** Kondisi yang menguntungkan. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan kelangsungan hidup: Kondisi yang menguntungkan adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-9"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Bonus poin tambahan adalah kondisi keringanan (10).
- Kerusakan akibat tembakan jauh di bawah normal (0x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0x).
- Daya tahan item sangat ekstrem (3x).

<a id="domain-ratings-9"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (0.94/5) | Tekanan musuh lebih ringan dari biasanya. |
| Tekanan kelangsungan hidup | menguntungkan (1.2/5) | Kebutuhan bertahan hidup sehari-hari sangat mudah. |
| Tekanan sumber daya | menguntungkan (0.9/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (1.93/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.19/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-9"></a>
### Konteks pertemuan

- Tingkat: **pertemuan minimal**
- Tema: **pemulihan cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0**
- Peluang acara khusus: **0**

<a id="exact-sandbox-settings-9"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 30 | Ukuran inventaris dasar adalah ketentuan bantuan pada 30. |
| BonusPerkPoints | 10 | Poin keuntungan bonus adalah kondisi bantuan di 10. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 0.45 | Tingkat kontinensi jauh di bawah normal pada 0,45x. |
| DamageToAlliesMultiplier | 0.0 | Kerusakan akibat tembakan teman jauh di bawah normal pada 0x. |
| DayNightCycleSpeedMultiplier | 0.85 | Kecepatan siklus siang-malam mendekati normal pada 0,85x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 0 | Hukuman mati minimal. |
| DetectionSpeedMultiplier | 0.4 | Kecepatan deteksi musuh jauh di bawah normal pada 0,4x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.0 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0x. |
| EnemyAccuracy | 1 | Akurasi musuh berkurang. |
| EnemyDeployableDamageMultiplier | 0.1 | Kerusakan pertahanan musuh jauh di bawah normal yaitu 0,1x. |
| EnemyHealthMultiplier | 0.8 | Ketahanan musuh di bawah normal yaitu 0,8x. |
| EnemyPlayerDamageMultiplier | 0.4 | Kerusakan musuh pada pemain jauh di bawah normal yaitu 0,4x. |
| EnemySpawnRate | 0.4 | Frekuensi musuh jauh di bawah normal yaitu 0,4x. |
| FatigueSpeedMultiplier | 0.6 | Tingkat kelelahan di bawah normal sebesar 0,6x. |
| FirstTimeStartingWeapon | 2 | Memulai penyediaan senjata adalah tekanan standar pada 2. |
| FoodSpoilSpeedMultiplier | 0.4 | Pembusukan makanan jauh di bawah normal yaitu 0,4x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.6 | Tingkat kelaparan di bawah normal sebesar 0,6x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 3.0 | Daya tahan item sangat ekstrem yaitu 3x. |
| ItemStackSizeMultiplier | 10.0 | Kapasitas tumpukan adalah ekstrim pada 10x. |
| ItemWeightMultiplier | 0.4 | Berat item jauh di bawah normal yaitu 0,4x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 2.9 | Perolehan pengalaman ekstrem pada 2,9x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | salah | Kerusakan akibat radiasi dinonaktifkan. |
| RefrigerationEffectivenessMultiplier | 1.8 | Pendinginan jauh di atas normal pada 1,8x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 3.0 | Kecepatan isi ulang wastafel sangat ekstrim yaitu 3x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.6 | Tingkat kelaparan di bawah normal sebesar 0,6x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-9"></a>
### Pemilihan adaptor opsional

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `weathered_shelter_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---safety-umbrella-training"></a>
## Hari ke-11 - Pelatihan Payung Keselamatan

**ID Profil:** `weathered_safety_umbrella_training` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.59/5) **Arti jelasnya:** Kondisi yang menguntungkan. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan kelangsungan hidup: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-10"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Bonus poin tambahan adalah kondisi keringanan (12).
- Kehilangan daya tahan saat mati jauh di bawah normal (0x).
- Kapasitas tumpukan sangat ekstrem (5x).
- Perolehan pengalaman sangat ekstrem (3,8x).

<a id="domain-ratings-10"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (1.49/5) | Tekanan musuh lebih ringan dari biasanya. |
| Tekanan kelangsungan hidup | standar (2.0/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | menguntungkan (0.93/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (2.27/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.43/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-10"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ringan**
- Tema: **pelatihan cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.049**
- Peluang acara khusus: **3**

<a id="exact-sandbox-settings-10"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 24 | Ukuran inventaris dasar adalah kondisi keringanan pada 24. |
| BonusPerkPoints | 12 | Bonus poin tambahan adalah kondisi bantuan pada 12. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 0.8 | Tingkat kontinensia di bawah normal sebesar 0,8x. |
| DamageToAlliesMultiplier | 0.25 | Kerusakan akibat tembakan jauh di bawah normal pada 0,25x. |
| DayNightCycleSpeedMultiplier | 1.15 | Kecepatan siklus siang-malam mendekati normal pada 1,15x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 0.9 | Kecepatan deteksi musuh mendekati normal yaitu 0,9x. |
| DisableResearchMinigame | benar | Bypass penelitian diaktifkan. |
| DurabilityLossOnDeathMultiplier | 0.0 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.4 | Kerusakan pertahanan musuh jauh di bawah normal yaitu 0,4x. |
| EnemyHealthMultiplier | 0.9 | Ketahanan musuh mendekati normal yaitu 0,9x. |
| EnemyPlayerDamageMultiplier | 0.7 | Kerusakan musuh pada pemain di bawah normal sebesar 0,7x. |
| EnemySpawnRate | 0.8 | Frekuensi musuh di bawah normal yaitu 0,8x. |
| FatigueSpeedMultiplier | 1.2 | Tingkat kelelahan di atas normal sebesar 1,2x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.8 | Pembusukan makanan di bawah normal yaitu 0,8x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.2 | Tingkat kelaparan berada di atas normal yaitu 1,2x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 2.25 | Item daya tahan jauh di atas normal pada 2,25x. |
| ItemStackSizeMultiplier | 5.0 | Kapasitas tumpukan sangat tinggi pada 5x. |
| ItemWeightMultiplier | 0.7 | Berat item di bawah normal yaitu 0,7x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 3.8 | Perolehan pengalaman sangat ekstrem, yakni 3,8x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.3 | Pendinginan di atas normal pada 1,3x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 2.0 | Tingkat pengisian ulang wastafel jauh di atas normal pada 2x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.2 | Tingkat kehausan di atas normal pada 1.2x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-10"></a>
### Pemilihan adaptor opsional

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `weathered_safety_umbrella_training`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-climate-review"></a>
## Hari ke-12 - Tinjauan Iklim Black Lab

**ID Profil:** `weathered_black_lab_climate_review` **Keseluruhan kondisi:** Kondisi yang menuntut (2.74/5) **Arti jelasnya:** Kondisi yang menuntut. Tekanan untuk bertahan hidup: Kondisi yang menuntut adalah tekanan utama. Tekanan tempur: Kondisi yang menuntut adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-11"></a>
### Efek utama

- Kesulitan permainan: sangat sulit.
- Beberapa radiasi mungkin tidak memiliki peringatan yang terlihat.
- Frekuensi cuaca: sangat sering.
- Perolehan pengalaman sangat ekstrem (3x).
- Air wastafel mungkin tidak aman.

<a id="domain-ratings-11"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menuntut (3.16/5) | Tekanan permusuhan meningkat; bersiaplah sebelum terlibat. |
| Tekanan kelangsungan hidup | menuntut (3.3/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | standar (1.78/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | menuntut (2.81/5) | Kondisi listrik, cuaca, air, atau radiasi tidak menentu. |
| Tekanan pemulihan | standar (1.79/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-11"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ekstrem**
- Tema: **ujian cuaca berat**
- Grup aktif maksimum: **2**
- Peluang pertemuan campuran: **0.161**
- Peluang acara khusus: **22**

<a id="exact-sandbox-settings-11"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 12 | Ukuran inventaris dasar adalah tekanan standar pada 12. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.0 | Tingkat kontinensi mendekati normal pada 1x. |
| DamageToAlliesMultiplier | 0.15 | Kerusakan akibat tembakan teman jauh di bawah normal yaitu 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | Kecepatan siklus siang-malam mendekati normal pada 1x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 2 | Hukuman mati sangat berat. |
| DetectionSpeedMultiplier | 2.0 | Kecepatan deteksi musuh jauh di atas normal sebesar 2x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.4 | Hilangnya daya tahan saat mati jauh di bawah normal yaitu 0,4x. |
| EnemyAccuracy | 3 | Akurasi musuh buruk akurat. |
| EnemyDeployableDamageMultiplier | 1.4 | Kerusakan pertahanan musuh berada di atas normal yaitu 1,4x. |
| EnemyHealthMultiplier | 1.9 | Ketahanan musuh jauh di atas normal yaitu 1,9x. |
| EnemyPlayerDamageMultiplier | 2.1 | Kerusakan musuh pada pemain jauh di atas normal sebesar 2,1x. |
| EnemySpawnRate | 2.0 | Frekuensi musuh jauh di atas normal yaitu 2x. |
| FatigueSpeedMultiplier | 2.0 | Tingkat kelelahan jauh di atas normal pada saat 2x. |
| FirstTimeStartingWeapon | 1 | Memulai penyediaan senjata adalah tekanan standar pada 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Pembusukan makanan mendekati normal pada 1,15x. |
| GameDifficulty | 3 | Kesulitan permainan sangat sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 2.0 | Tingkat kelaparan jauh di atas normal yaitu 2x. |
| InvisibleRadiation | benar | Beberapa radiasi mungkin tidak memiliki peringatan yang terlihat. |
| ItemDurabilityMultiplier | 1.1 | Daya tahan item mendekati normal pada 1,1x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 1.0 | Berat item mendekati normal pada 1x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 3.0 | Perolehan pengalaman ekstrem 3x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.85 | Pendinginan mendekati normal pada 0,85x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.75 | Kecepatan isi ulang wastafel di bawah normal yaitu 0,75x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 2.0 | Tingkat haus jauh di atas normal yaitu 2x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-11"></a>
### Pemilihan adaptor opsional

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `weathered_black_lab_climate_review`
- `lethal_lasers`: `high_hazard`

<a id="day-13---extended-exposure-shift"></a>
## Hari ke-13 - Pergeseran Eksposur yang Diperpanjang

**ID Profil:** `weathered_extended_exposure_shift` **Keseluruhan kondisi:** Tekanan standar (2.5/5) **Arti jelasnya:** Tekanan standar. Tekanan kelangsungan hidup: Kondisi yang parah adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-12"></a>
### Efek utama

- Tingkat kelaparan sangat ekstrim (2,8x).
- Tingkat kehausan sangat ekstrim (2,8x).
- Frekuensi cuaca: sangat sering.
- Tingkat kelelahan sangat ekstrim (2,6x).
- Ukuran persediaan dasar berada dalam kondisi yang parah (10).

<a id="domain-ratings-12"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.09/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup |  (4.06/5) | Kebutuhan untuk bertahan hidup sangat tinggi; membawa cadangan dan merencanakan pemberhentian yang aman. |
| Tekanan sumber daya | standar (2.16/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.32/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.53/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-12"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **ketahanan cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.098**
- Peluang acara khusus: **7**

<a id="exact-sandbox-settings-12"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 10 | Ukuran inventaris dasar adalah kondisi yang parah pada angka 10. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.35 | Tingkat kontinensia di atas normal yaitu 1,35x. |
| DamageToAlliesMultiplier | 0.25 | Kerusakan akibat tembakan jauh di bawah normal pada 0,25x. |
| DayNightCycleSpeedMultiplier | 0.3 | Kecepatan siklus siang-malam jauh di bawah normal yaitu 0,3x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 1.1 | Kecepatan deteksi musuh mendekati normal pada 1,1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.35 | Kehilangan daya tahan akibat kematian jauh di bawah normal yaitu sebesar 0,35x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.9 | Kerusakan musuh pada pertahanan mendekati normal pada 0,9x. |
| EnemyHealthMultiplier | 1.4 | Ketahanan musuh berada di atas normal yaitu 1,4x. |
| EnemyPlayerDamageMultiplier | 1.4 | Kerusakan musuh pada pemain di atas normal yaitu 1,4x. |
| EnemySpawnRate | 0.8 | Frekuensi musuh di bawah normal yaitu 0,8x. |
| FatigueSpeedMultiplier | 2.6 | Tingkat kelelahan sangat ekstrim yaitu 2,6x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Pembusukan makanan jauh di atas normal yaitu 1,8x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 2.8 | Tingkat kelaparan ekstrem sebesar 2,8x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 0.9 | Daya tahan item mendekati normal yaitu 0,9x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 1.5 | Berat item di atas normal sebesar 1,5x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.9 | Perolehan pengalaman jauh di atas normal yaitu 1,9x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.65 | Pendinginan di bawah normal sebesar 0,65x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.35 | Kecepatan isi ulang wastafel jauh di bawah normal sebesar 0,35x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 2.8 | Tingkat kelaparan ekstrem sebesar 2,8x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-12"></a>
### Pemilihan adaptor opsional

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `weathered_extended_exposure_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-dry-spot"></a>
## Hari ke-14 - Tempat Kering di Gudang Persediaan

**ID Profil:** `weathered_supply_closet_dry_spot` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.11/5) **Arti jelasnya:** Kondisi menguntungkan. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan pemulihan: Kondisi yang menguntungkan adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-13"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Ukuran inventaris dasar adalah kondisi keringanan (40).
- Bonus poin tambahan adalah kondisi keringanan (12).
- Kerusakan akibat tembakan jauh di bawah normal (0x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0x).

<a id="domain-ratings-13"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (1.0/5) | Tekanan musuh lebih ringan dari biasanya. |
| Tekanan kelangsungan hidup | menguntungkan (1.04/5) | Kebutuhan bertahan hidup sehari-hari sangat mudah. |
| Tekanan sumber daya | bantuan (0.79/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (1.97/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.19/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-13"></a>
### Konteks pertemuan

- Tingkat: **pertemuan minimal**
- Tema: **bantuan cuaca**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0**
- Peluang acara khusus: **0**

<a id="exact-sandbox-settings-13"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 40 | Ukuran inventaris dasar adalah kondisi bantuan pada 40. |
| BonusPerkPoints | 12 | Bonus poin tambahan adalah kondisi bantuan pada 12. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 0.35 | Tingkat kontinensia jauh di bawah normal yaitu 0,35x. |
| DamageToAlliesMultiplier | 0.0 | Kerusakan akibat tembakan teman jauh di bawah normal pada 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Kecepatan siklus siang-malam mendekati normal pada 1x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 0 | Hukuman mati minimal. |
| DetectionSpeedMultiplier | 0.6 | Kecepatan deteksi musuh di bawah normal yaitu 0,6x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.0 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0x. |
| EnemyAccuracy | 1 | Akurasi musuh berkurang. |
| EnemyDeployableDamageMultiplier | 0.1 | Kerusakan pertahanan musuh jauh di bawah normal yaitu 0,1x. |
| EnemyHealthMultiplier | 0.8 | Ketahanan musuh di bawah normal yaitu 0,8x. |
| EnemyPlayerDamageMultiplier | 0.5 | Kerusakan musuh pada pemain jauh di bawah normal yaitu 0,5x. |
| EnemySpawnRate | 0.4 | Frekuensi musuh jauh di bawah normal yaitu 0,4x. |
| FatigueSpeedMultiplier | 0.5 | Tingkat kelelahan jauh di bawah normal yaitu 0,5x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.25 | Pembusukan makanan jauh di bawah normal yaitu 0,25x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.5 | Tingkat kelaparan jauh di bawah normal yaitu 0,5x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 6.0 | Daya tahan item sangat tinggi yaitu 6x. |
| ItemStackSizeMultiplier | 20.0 | Kapasitas tumpukan sangat ekstrim yaitu 20x. |
| ItemWeightMultiplier | 0.2 | Berat item jauh di bawah normal yaitu 0,2x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 4.3 | Perolehan pengalaman ekstrem sebesar 4,3x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | salah | Kerusakan akibat radiasi dinonaktifkan. |
| RefrigerationEffectivenessMultiplier | 2.0 | Pendinginan jauh di atas normal yaitu 2x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 5.0 | Kecepatan pengisian ulang wastafel sangat ekstrem yaitu 5x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.5 | Tingkat kelaparan jauh di bawah normal yaitu 0,5x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-13"></a>
### Pemilihan adaptor opsional

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `weathered_supply_closet_dry_spot`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-in-crosswind"></a>
## Hari ke-15 - Akurasi dalam Crosswind

**ID Profil:** `weathered_accuracy_in_crosswind` **Keseluruhan kondisi:** Tekanan standar (2.16/5) **Arti jelasnya:** Tekanan standar. Tekanan bertahan hidup: Tekanan standar adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-14"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Kerusakan akibat tembakan jauh di bawah normal (0x).
- Perolehan pengalaman jauh di atas normal (2,4x).
- Tingkat kelelahan jauh di atas normal (2,1x).
- Kesulitan permainan: sulit.

<a id="domain-ratings-14"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.23/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (2.59/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | menguntungkan (1.69/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.48/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.51/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-14"></a>
### Konteks pertemuan

- Tingkat: **pertemuan berat**
- Tema: **presisi cuaca**
- Grup aktif maksimum: **2**
- Peluang pertemuan campuran: **0.119**
- Peluang acara khusus: **14**

<a id="exact-sandbox-settings-14"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 12 | Ukuran inventaris dasar adalah tekanan standar pada 12. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.0 | Tingkat kontinensi mendekati normal pada 1x. |
| DamageToAlliesMultiplier | 0.0 | Kerusakan akibat tembakan teman jauh di bawah normal pada 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Kecepatan siklus siang-malam mendekati normal pada 1x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 1 | Hukuman mati adalah standar. |
| DetectionSpeedMultiplier | 1.5 | Kecepatan deteksi musuh di atas normal yaitu 1,5x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.3 | Kehilangan ketahanan saat mati jauh di bawah normal yaitu 0,3x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.8 | Kerusakan pertahanan musuh di bawah normal yaitu 0,8x. |
| EnemyHealthMultiplier | 1.1 | Ketahanan musuh mendekati normal yaitu 1,1x. |
| EnemyPlayerDamageMultiplier | 1.6 | Kerusakan musuh pada pemain di atas normal yaitu 1,6x. |
| EnemySpawnRate | 1.05 | Frekuensi musuh mendekati normal di 1,05x. |
| FatigueSpeedMultiplier | 2.1 | Tingkat kelelahan jauh di atas normal yaitu 2,1x. |
| FirstTimeStartingWeapon | 4 | Memulai penyediaan senjata adalah kondisi yang menguntungkan pada 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Pembusukan makanan mendekati normal pada 1x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.6 | Tingkat kelaparan di atas normal yaitu 1,6x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.0 | Daya tahan item mendekati normal pada 1x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 1.0 | Berat item mendekati normal pada 1x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 2.4 | Perolehan pengalaman jauh di atas normal pada 2,4x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.0 | Pendinginan mendekati normal pada 1x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 1.0 | Kecepatan pengisian ulang wastafel mendekati normal pada 1x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.6 | Tingkat kehausan di atas normal yaitu 1,6x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-14"></a>
### Pemilihan adaptor opsional

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `weathered_accuracy_in_crosswind`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-weather-cell"></a>
## Hari ke-16 - Sel Cuaca Eksperimental

**ID Profil:** `weathered_experimental_weather_cell` **Keseluruhan kondisi:** Tekanan standar (2.25/5) **Arti jelasnya:** Tekanan standar. Tekanan untuk bertahan hidup: Kondisi yang menuntut adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-15"></a>
### Efek utama

- Kesulitan permainan: sangat sulit.
- Beberapa radiasi mungkin tidak memiliki peringatan yang terlihat.
- Frekuensi cuaca: sangat sering.
- Ukuran inventaris dasar adalah kondisi keringanan (42).
- Bonus poin tambahan adalah kondisi keringanan (15).

<a id="domain-ratings-15"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.47/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | menuntut (3.03/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | menguntungkan (0.99/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (2.59/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.67/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-15"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ekstrem**
- Tema: **eksperimen cuaca**
- Grup aktif maksimum: **2**
- Peluang pertemuan campuran: **0.154**
- Peluang acara khusus: **20**

<a id="exact-sandbox-settings-15"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 42 | Ukuran inventaris dasar adalah ketentuan keringanan sebesar 42. |
| BonusPerkPoints | 15 | Poin manfaat bonus adalah ketentuan keringanan sebesar 15. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.2 | Tingkat kontinuitas di atas normal sebesar 1,2x. |
| DamageToAlliesMultiplier | 0.0 | Kerusakan akibat tembakan teman jauh di bawah normal pada 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | Kecepatan siklus siang-malam berada di atas normal yaitu 1,5x. |
| DayNightCycleState | 1 | Keadaan siang-malam bias siang. |
| DeathPenalties | 2 | Hukuman mati sangat berat. |
| DetectionSpeedMultiplier | 0.6 | Kecepatan deteksi musuh di bawah normal yaitu 0,6x. |
| DisableResearchMinigame | benar | Bypass penelitian diaktifkan. |
| DurabilityLossOnDeathMultiplier | 0.0 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0x. |
| EnemyAccuracy | 3 | Akurasi musuh buruk akurat. |
| EnemyDeployableDamageMultiplier | 0.7 | Kerusakan pertahanan musuh berada di bawah normal yaitu 0,7x. |
| EnemyHealthMultiplier | 1.6 | Ketahanan musuh berada di atas normal yaitu 1,6x. |
| EnemyPlayerDamageMultiplier | 1.0 | Kerusakan musuh pada pemain mendekati normal pada 1x. |
| EnemySpawnRate | 1.3 | Frekuensi musuh di atas normal yaitu 1,3x. |
| FatigueSpeedMultiplier | 1.4 | Tingkat kelelahan di atas normal sebesar 1,4x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.4 | Pembusukan makanan jauh di bawah normal yaitu 0,4x. |
| GameDifficulty | 3 | Kesulitan permainan sangat sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.4 | Tingkat kelaparan di atas normal sebesar 1,4x. |
| InvisibleRadiation | benar | Beberapa radiasi mungkin tidak memiliki peringatan yang terlihat. |
| ItemDurabilityMultiplier | 5.0 | Daya tahan item ekstrem pada 5x. |
| ItemStackSizeMultiplier | 15.0 | Kapasitas tumpukan ekstrem pada 15x. |
| ItemWeightMultiplier | 0.2 | Berat item jauh di bawah normal yaitu 0,2x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 4.8 | Perolehan pengalaman ekstrem pada 2,4x 4,8x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 2.0 | Pendinginan jauh di atas normal yaitu 2x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.0 | Kecepatan isi ulang wastafel jauh di bawah normal pada 0x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 2.1 | Tingkat ketiga jauh di atas normal yaitu 2,1x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-15"></a>
### Pemilihan adaptor opsional

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `weathered_experimental_weather_cell`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-climate-audit"></a>
## Hari ke-17 - Audit Iklim Akhir

**ID Profil:** `weathered_final_climate_audit` **Keseluruhan kondisi:** Kondisi yang menuntut (3.0/5) **Arti jelasnya:** Kondisi yang menuntut. Tekanan kelangsungan hidup: Kondisi yang parah adalah tekanan utama. Tekanan tempur: Kondisi yang parah adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-16"></a>
### Efek utama

- Kesulitan permainan: sangat sulit.
- Beberapa radiasi mungkin tidak memiliki peringatan yang terlihat.
- Frekuensi cuaca: sangat sering.
- Frekuensi musuh sangat ekstrem (2,6x).
- Kerusakan musuh pada pemain sangat ekstrem (2,5x).

<a id="domain-ratings-16"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur |  (3.56/5) | Tekanan permusuhan meningkat; bersiaplah sebelum terlibat. |
| Tekanan kelangsungan hidup |  (3.72/5) | Kebutuhan untuk bertahan hidup sangat tinggi; membawa cadangan dan merencanakan pemberhentian yang aman. |
| Tekanan sumber daya | standar (1.88/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | menuntut (2.89/5) | Kondisi listrik, cuaca, air, atau radiasi tidak menentu. |
| Tekanan pemulihan | standar (1.81/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-16"></a>
### Konteks pertemuan

- Tingkat: **pertemuan batu penjuru yang parah**
- Tema: **batu penjuru cuaca**
- Grup aktif maksimum: **2**
- Peluang pertemuan campuran: **0.196**
- Peluang acara khusus: **30**

<a id="exact-sandbox-settings-16"></a>
### Setelan sandbox yang tepat

| Setelan | Nilai mentah | Arti terjemahan |
|---|---:|---|
| AllowCharacterReset | benar | Reset karakter tetap tersedia. |
| AllowIronMode | salah | Mode setrika dinonaktifkan. |
| AllowPagers | benar | Pager tersedia. |
| AllowRecipeSharing | benar | Berbagi resep tersedia. |
| AllowTransmog | benar | Penyesuaian tampilan tersedia. |
| BaseInventorySize | 12 | Ukuran inventaris dasar adalah tekanan standar pada 12. |
| BonusPerkPoints | 0 | Poin keuntungan bonus adalah tekanan standar pada 0. |
| BridgeSupports | 0 | Batas dukungan jembatan adalah tekanan standar pada 0. |
| ContinenceSpeedMultiplier | 1.1 | Tingkat kontinensia mendekati normal yaitu 1,1x. |
| DamageToAlliesMultiplier | 0.1 | Kerusakan akibat tembakan teman jauh di bawah normal yaitu 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | Kecepatan siklus siang-malam di atas normal yaitu 1,45x. |
| DayNightCycleState | 0 | Keadaan siang-malam adalah siklus normal. |
| DeathPenalties | 2 | Hukuman mati sangat berat. |
| DetectionSpeedMultiplier | 2.3 | Kecepatan deteksi musuh jauh di atas normal sebesar 2,3x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.5 | Kehilangan daya tahan saat mati jauh di bawah normal sebesar 0,5x. |
| EnemyAccuracy | 3 | Akurasi musuh buruk akurat. |
| EnemyDeployableDamageMultiplier | 2.0 | Kerusakan pertahanan musuh jauh di atas normal sebesar 2x. |
| EnemyHealthMultiplier | 2.4 | Ketahanan musuh jauh di atas normal yaitu 2,4x. |
| EnemyPlayerDamageMultiplier | 2.5 | Kerusakan musuh pada pemain sangat ekstrim yaitu 2,5x. |
| EnemySpawnRate | 2.6 | Frekuensi musuh ekstrim pada 2,6x. |
| FatigueSpeedMultiplier | 2.3 | Tingkat kelelahan jauh di atas normal yaitu 2,3x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Pembusukan makanan di atas normal sebesar 1,6x. |
| GameDifficulty | 3 | Kesulitan permainan sangat sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 2.5 | Tingkat kelaparan ekstrem sebesar 2,5x. |
| InvisibleRadiation | benar | Beberapa radiasi mungkin tidak memiliki peringatan yang terlihat. |
| ItemDurabilityMultiplier | 1.0 | Daya tahan item mendekati normal pada 1x. |
| ItemStackSizeMultiplier | 3.0 | Kapasitas tumpukan mencapai 3x. |
| ItemWeightMultiplier | 1.1 | Berat item mendekati normal pada 1,1x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 4.4 | Perolehan pengalaman sangat ekstrem pada 4,4x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.6 | Pendinginan di bawah normal pada 0,6x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.5 | Kecepatan isi ulang wastafel jauh di bawah normal yaitu 0,5x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 2.5 | Tingkat rasa haus sangat ekstrim pada 2,5x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-16"></a>
### Pemilihan adaptor opsional

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `weathered_final_climate_audit`
- `lethal_lasers`: `overcharged_high_hazard`
