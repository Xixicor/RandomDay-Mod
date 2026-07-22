<a id="randomday---action-family"></a>
# RandomDay - Kelompok Tindakan

> **Sumber kanonis bahasa Inggris:** [action.md](../../../../profiles/families/action.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Versi: `v0.3.16-alpha`

Lebih banyak menembak, lebih banyak pertarungan yang terlihat, lebih sedikit menyelinap.

**Gaya bermain:** operasi tempur-maju **Nada pesan:** optimisme fasilitas yang keras

<a id="17-day-index"></a>
## Indeks 17 Hari

| Hari | Profil | Kondisi | Tekanan utama |
|---:|---|---|---|
| 1 | Orientasi Kebakaran Langsung | Tekanan standar (1.85/5) | Tekanan lingkungan |
| 2 | Pertempuran Lantai Terbuka | Kondisi yang menguntungkan (1.29/5) | Tekanan lingkungan |
| 3 | Latihan Pengendalian Hama | Tekanan standar (2.14/5) | Tekanan kelangsungan hidup |
| 4 | Pasokan Jalankan Pemadam Kebakaran | Kondisi yang menguntungkan (1.47/5) | Tekanan lingkungan |
| 5 | Kontak Keamanan | Tekanan standar (2.03/5) | Tekanan tempur |
| 6 | Keterlibatan Cuaca | Tekanan standar (2.02/5) | Tekanan lingkungan |
| 7 | Serangan Malam | Tekanan standar (2.03/5) | Tekanan tempur |
| 8 | Pelari Rute | Tekanan standar (1.81/5) | Tekanan lingkungan |
| 9 | Kerusuhan Jatah | Tekanan standar (2.17/5) | Tekanan kelangsungan hidup |
| 10 | Pemulihan Pengawal | Kondisi yang menguntungkan (1.05/5) | Tekanan lingkungan |
| 11 | Target Pelatihan | Kondisi yang menguntungkan (1.46/5) | Tekanan lingkungan |
| 12 | Serangan Lab Hitam | Tekanan standar (2.49/5) | Tekanan tempur |
| 13 | Extend Fireline | Tekanan standar (2.22/5) | Tekanan kelangsungan hidup |
| 14 | Keajaiban Lemari Pasokan | Kondisi yang menguntungkan (1.02/5) | Tekanan lingkungan |
| 15 | Audit Akurasi Langsung | Tekanan standar (1.97/5) | Tekanan tempur |
| 16 | Baku Baku Eksperimental | Tekanan standar (2.09/5) | Tekanan lingkungan |
| 17 | Kepatuhan Permainan Perang | Kondisi yang menuntut (2.72/5) | Tekanan tempur |

<a id="day-1---live-fire-orientation"></a>
## Hari 1 - Orientasi Kebakaran Langsung

**ID Profil:** `action_live_fire_orientation` **Keseluruhan kondisi:** Tekanan standar (1.85/5) **Arti jelasnya:** Tekanan standar. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan kelangsungan hidup: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Pastikan listrik, air, tempat berlindung, dan perlindungan bahaya sebelum meninggalkan markas.

<a id="main-effects"></a>
### Efek utama

- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,25x).
- Kapasitas tumpukan jauh di atas normal (2x).
- Soket listrik mati di malam hari.
- Loot yang dikumpulkan tidak muncul kembali.

<a id="domain-ratings"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (1.86/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (1.9/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | standar (1.78/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.22/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.5/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **orientasi baku tembak**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.091**
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
| DetectionSpeedMultiplier | 0.9 | Kecepatan deteksi musuh mendekati normal yaitu 0,9x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.25 | Kehilangan daya tahan saat mati jauh di bawah normal pada 0,25x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.0 | Ketahanan musuh mendekati normal pada 1x. |
| EnemyPlayerDamageMultiplier | 1.0 | Kerusakan musuh pada pemain mendekati normal pada 1x. |
| EnemySpawnRate | 1.1 | Frekuensi musuh mendekati normal pada 1,1x. |
| FatigueSpeedMultiplier | 1.0 | Tingkat kelelahan mendekati normal pada 1x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.0 | Pembusukan makanan mendekati normal pada 1x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.0 | Tingkat kelaparan mendekati normal pada 1x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.5 | Daya tahan item di atas normal pada 1,5x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 0.9 | Berat item mendekati normal pada 0,9x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.2 | Perolehan pengalaman di atas normal pada 1,2x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.0 | Pendinginan mendekati normal pada 1x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 1.0 | Kecepatan pengisian ulang wastafel mendekati normal pada 1x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.0 | Tingkat kehausan mendekati normal yaitu 1x. |
| WeatherFrequency | 3 | Frekuensi cuaca normal. |

<a id="optional-adapter-selection"></a>
### Pemilihan adaptor opsional

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `action_live_fire_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-skirmish"></a>
## Hari ke-2 - Pertempuran Lantai Terbuka

**ID Profil:** `action_open_floor_skirmish` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.29/5) **Arti jelasnya:** Kondisi yang menguntungkan. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan kelangsungan hidup: Kondisi yang menguntungkan adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-1"></a>
### Efek utama

- Kerusakan akibat tembakan jauh di bawah normal (0x).
- Daya tahan item sangat ekstrem (4x).
- Kapasitas tumpukan sangat ekstrem (8x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,05x).
- Kerusakan pertahanan musuh jauh di bawah normal (0,1x).

<a id="domain-ratings-1"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (1.16/5) | Tekanan musuh lebih ringan dari biasanya. |
| Tekanan kelangsungan hidup | menguntungkan (1.34/5) | Kebutuhan bertahan hidup sehari-hari sangat mudah. |
| Tekanan sumber daya | menguntungkan (1.14/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (1.91/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.2/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-1"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ringan**
- Tema: **persiapan baku tembak**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.036**
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
| DetectionSpeedMultiplier | 0.6 | Kecepatan deteksi musuh di bawah normal yaitu 0,6x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.05 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0,05x. |
| EnemyAccuracy | 1 | Akurasi musuh berkurang. |
| EnemyDeployableDamageMultiplier | 0.1 | Kerusakan pertahanan musuh jauh di bawah normal yaitu 0,1x. |
| EnemyHealthMultiplier | 0.8 | Ketahanan musuh di bawah normal yaitu 0,8x. |
| EnemyPlayerDamageMultiplier | 0.6 | Kerusakan musuh pada pemain di bawah normal sebesar 0,6x. |
| EnemySpawnRate | 0.7 | Frekuensi musuh di bawah normal sebesar 0,7x. |
| FatigueSpeedMultiplier | 0.65 | Tingkat kelelahan di bawah normal sebesar 0,65x. |
| FirstTimeStartingWeapon | 2 | Memulai penyediaan senjata adalah tekanan standar pada 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Pembusukan makanan di bawah normal pada 0,75x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.65 | Tingkat kelaparan di bawah normal pada 0,65x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 4.0 | Daya tahan item sangat ekstrem pada 4x. |
| ItemStackSizeMultiplier | 8.0 | Kapasitas tumpukan sangat ekstrem pada 8x. |
| ItemWeightMultiplier | 0.5 | Berat item jauh di bawah normal pada 0,5x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.7 | Perolehan pengalaman jauh di atas normal yaitu 1,7x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.5 | Pendinginan di atas normal pada 1,5x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 2.0 | Tingkat pengisian ulang wastafel jauh di atas normal pada 2x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.65 | Tingkat ketiga di bawah normal yaitu 0,65x. |
| WeatherFrequency | 2 | Frekuensi cuaca sesekali. |

<a id="optional-adapter-selection-1"></a>
### Pemilihan adaptor opsional

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `action_open_floor_skirmish`
- `lethal_lasers`: `low_hazard`

<a id="day-3---pest-control-drill"></a>
## Hari ke-3 - Latihan Pengendalian Hama

**ID Profil:** `action_pest_control_drill` **Keseluruhan kondisi:** Tekanan standar (2.14/5) **Arti jelasnya:** Tekanan standar. Tekanan untuk bertahan hidup: Kondisi yang menuntut adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-2"></a>
### Efek utama

- Air wastafel mungkin tidak aman.
- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,25x).
- Kesulitan permainan: sulit.
- Kapasitas tumpukan jauh di atas normal (2x).

<a id="domain-ratings-2"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.05/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | menuntut (2.78/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | standar (1.93/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.22/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.5/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-2"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **sumber daya hayati baku tembak**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.118**
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
| DetectionSpeedMultiplier | 1.0 | Kecepatan deteksi musuh mendekati normal pada 1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.25 | Kehilangan daya tahan saat mati jauh di bawah normal pada 0,25x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.9 | Kerusakan musuh pada pertahanan mendekati normal pada 0,9x. |
| EnemyHealthMultiplier | 1.0 | Ketahanan musuh mendekati normal pada 1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Kerusakan musuh pada pemain mendekati normal pada 1,1x. |
| EnemySpawnRate | 1.2 | Frekuensi musuh di atas normal pada 1,2x. |
| FatigueSpeedMultiplier | 1.1 | Tingkat kelelahan mendekati normal yaitu 1,1x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Pembusukan makanan berada di atas normal yaitu 1,25x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.1 | Tingkat kelaparan mendekati normal yaitu 1,1x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.25 | Daya tahan item di atas normal yaitu 1,25x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 0.9 | Berat item mendekati normal pada 0,9x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.4 | Perolehan pengalaman di atas normal yaitu 1,4x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.75 | Pendinginan di bawah normal yaitu 0,75x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.25 | Kecepatan isi ulang wastafel jauh di bawah normal yaitu 0,25x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 1.6 | Tingkat kehausan di atas normal yaitu 1,6x. |
| WeatherFrequency | 3 | Frekuensi cuaca normal. |

<a id="optional-adapter-selection-2"></a>
### Pemilihan adaptor opsional

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `action_pest_control_drill`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-run-firefight"></a>
## Hari ke-4 - Baku Tembak Pasokan

**ID Profil:** `action_supply_run_firefight` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.47/5) **Arti jelasnya:** Kondisi yang menguntungkan. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan tempur: Kondisi yang menguntungkan adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-3"></a>
### Efek utama

- Daya tahan item sangat ekstrem (2,5x).
- Kapasitas tumpukan sangat ekstrem (14x).
- Tingkat pengisian ulang wastafel sangat ekstrem (2,5x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,05x).
- Ukuran inventaris dasar adalah kondisi keringanan (30).

<a id="domain-ratings-3"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (1.51/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | menguntungkan (1.5/5) | Kebutuhan bertahan hidup sehari-hari sangat mudah. |
| Tekanan sumber daya | menguntungkan (1.04/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (1.93/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.44/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-3"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ringan**
- Tema: **mobilitas penjarahan baku tembak**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.073**
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
| DetectionSpeedMultiplier | 0.7 | Kecepatan deteksi musuh di bawah normal yaitu 0,7x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.05 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0,05x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.5 | Kerusakan pertahanan musuh jauh di bawah normal yaitu 0,5x. |
| EnemyHealthMultiplier | 0.9 | Ketahanan musuh mendekati normal yaitu 0,9x. |
| EnemyPlayerDamageMultiplier | 0.8 | Kerusakan musuh pada pemain di bawah normal yaitu 0,8x. |
| EnemySpawnRate | 0.9 | Frekuensi musuh mendekati normal yaitu 0,9x. |
| FatigueSpeedMultiplier | 0.75 | Tingkat kelelahan di bawah normal yaitu 0,75x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.6 | Pembusukan makanan berada di bawah normal yaitu 0,6x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.75 | Tingkat kelaparan berada di bawah normal sebesar 0,75x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 2.5 | Daya tahan item sangat tinggi yaitu 2,5x. |
| ItemStackSizeMultiplier | 14.0 | Kapasitas tumpukan sangat ekstrim yaitu 14x. |
| ItemWeightMultiplier | 0.3 | Berat item jauh di bawah normal yaitu 0,3x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.8 | Perolehan pengalaman jauh di atas normal yaitu 1,8x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.5 | Pendinginan di atas normal pada 1,5x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 2.5 | Kecepatan pengisian ulang wastafel sangat ekstrim yaitu 2,5x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.75 | Tingkat haus berada di bawah normal yaitu 0,75x. |
| WeatherFrequency | 2 | Frekuensi cuaca sesekali. |

<a id="optional-adapter-selection-3"></a>
### Pemilihan adaptor opsional

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `action_supply_run_firefight`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-contact"></a>
## Hari 5 - Kontak Keamanan

**ID Profil:** `action_security_contact` **Keseluruhan kondisi:** Tekanan standar (2.03/5) **Arti jelasnya:** Tekanan standar. Tekanan tempur: Tekanan standar adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah amunisi, jaga jalur mundur, dan hindari pertempuran tanpa dukungan.

<a id="main-effects-4"></a>
### Efek utama

- Kerusakan akibat tembakan jauh di bawah normal (0,1x).
- Kesulitan permainan: sulit.
- Kapasitas tumpukan jauh di atas normal (2x).
- Soket listrik mati di malam hari.
- Kehilangan daya tahan saat mati jauh di bawah normal (0,3x).

<a id="domain-ratings-4"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.37/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (1.94/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | standar (1.72/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.17/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.51/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-4"></a>
### Konteks pertemuan

- Tingkat: **pertemuan berat**
- Tema: **keamanan baku tembak**
- Grup aktif maksimum: **2**
- Peluang pertemuan campuran: **0.155**
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
| DetectionSpeedMultiplier | 1.8 | Kecepatan deteksi musuh jauh di atas normal yaitu 1,8x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.3 | Kehilangan ketahanan saat mati jauh di bawah normal yaitu 0,3x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.1 | Ketahanan musuh mendekati normal yaitu 1,1x. |
| EnemyPlayerDamageMultiplier | 1.2 | Kerusakan musuh pada pemain berada di atas normal yaitu 1,2x. |
| EnemySpawnRate | 1.7 | Frekuensi musuh jauh di atas normal yaitu 1,7x. |
| FatigueSpeedMultiplier | 1.15 | Tingkat kelelahan mendekati normal pada 1,15x. |
| FirstTimeStartingWeapon | 4 | Memulai penyediaan senjata adalah kondisi yang menguntungkan pada 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Pembusukan makanan mendekati normal pada 1x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.0 | Tingkat kelaparan mendekati normal pada 1x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.25 | Daya tahan item di atas normal yaitu 1,25x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 0.9 | Berat item mendekati normal pada 0,9x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.7 | Perolehan pengalaman jauh di atas normal yaitu 1,7x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.0 | Pendinginan mendekati normal pada 1x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 1.0 | Kecepatan pengisian ulang wastafel mendekati normal pada 1x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.0 | Tingkat kehausan mendekati normal yaitu 1x. |
| WeatherFrequency | 2 | Frekuensi cuaca sesekali. |

<a id="optional-adapter-selection-4"></a>
### Pemilihan adaptor opsional

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `action_security_contact`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weathered-engagement"></a>
## Hari ke-6 - Keterlibatan Cuaca

**ID Profil:** `action_weathered_engagement` **Keseluruhan kondisi:** Tekanan standar (2.02/5) **Arti jelasnya:** Tekanan standar. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan tempur: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Pastikan listrik, air, tempat berlindung, dan perlindungan bahaya sebelum meninggalkan markas.

<a id="main-effects-5"></a>
### Efek utama

- Frekuensi cuaca: sangat sering.
- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,25x).
- Kesulitan permainan: sulit.
- Kapasitas tumpukan jauh di atas normal (2x).

<a id="domain-ratings-5"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.07/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (2.04/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | standar (1.89/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.52/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.5/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-5"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **cuaca baku tembak**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.118**
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
| DetectionSpeedMultiplier | 1.0 | Kecepatan deteksi musuh mendekati normal pada 1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.25 | Kehilangan daya tahan saat mati jauh di bawah normal pada 0,25x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.0 | Ketahanan musuh mendekati normal pada 1x. |
| EnemyPlayerDamageMultiplier | 1.0 | Kerusakan musuh pada pemain mendekati normal pada 1x. |
| EnemySpawnRate | 1.3 | Frekuensi musuh di atas normal yaitu 1,3x. |
| FatigueSpeedMultiplier | 1.0 | Tingkat kelelahan mendekati normal pada 1x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Pembusukan makanan berada di atas normal yaitu 1,25x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.1 | Tingkat kelaparan mendekati normal yaitu 1,1x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.1 | Daya tahan item mendekati normal pada 1,1x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 0.9 | Berat item mendekati normal pada 0,9x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.3 | Perolehan pengalaman di atas normal pada 1,3x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.8 | Pendinginan di bawah normal pada 0,8x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.75 | Kecepatan isi ulang wastafel di bawah normal yaitu 0,75x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 1.35 | Tingkat haus di atas normal yaitu 1,35x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-5"></a>
### Pemilihan adaptor opsional

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `action_weathered_engagement`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-raid"></a>
## Hari 7 - Serangan Malam

**ID Profil:** `action_night_raid` **Keseluruhan kondisi:** Tekanan standar (2.03/5) **Arti jelasnya:** Tekanan standar. Tekanan tempur: Tekanan standar adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah amunisi, jaga jalur mundur, dan hindari pertempuran tanpa dukungan.

<a id="main-effects-6"></a>
### Efek utama

- Kapasitas tumpukan sangat ekstrem (3x).
- Keadaan siang-malam: bias malam.
- Kehilangan daya tahan saat mati jauh di bawah normal (0,2x).
- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Kesulitan permainan: sulit.

<a id="domain-ratings-6"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.39/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (1.93/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | menguntungkan (1.61/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.33/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.49/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-6"></a>
### Konteks pertemuan

- Tingkat: **pertemuan berat**
- Tema: **baku tembak malam**
- Grup aktif maksimum: **2**
- Peluang pertemuan campuran: **0.155**
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
| DetectionSpeedMultiplier | 1.5 | Kecepatan deteksi musuh di atas normal yaitu 1,5x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.2 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0,2x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.1 | Ketahanan musuh mendekati normal yaitu 1,1x. |
| EnemyPlayerDamageMultiplier | 1.2 | Kerusakan musuh pada pemain berada di atas normal yaitu 1,2x. |
| EnemySpawnRate | 1.9 | Frekuensi musuh jauh di atas normal yaitu 1,9x. |
| FatigueSpeedMultiplier | 1.3 | Tingkat kelelahan di atas normal yaitu 1,3x. |
| FirstTimeStartingWeapon | 5 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 5. |
| FoodSpoilSpeedMultiplier | 1.0 | Pembusukan makanan mendekati normal pada 1x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.95 | Tingkat kelaparan mendekati normal yaitu 0,95x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.5 | Daya tahan item di atas normal pada 1,5x. |
| ItemStackSizeMultiplier | 3.0 | Kapasitas tumpukan mencapai 3x. |
| ItemWeightMultiplier | 0.8 | Berat item di bawah normal sebesar 0,8x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.8 | Perolehan pengalaman jauh di atas normal yaitu 1,8x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.0 | Pendinginan mendekati normal pada 1x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 1.0 | Kecepatan pengisian ulang wastafel mendekati normal pada 1x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.95 | Tingkat haus mendekati normal pada 0,95x. |
| WeatherFrequency | 4 | Frekuensi cuaca sering terjadi. |

<a id="optional-adapter-selection-6"></a>
### Pemilihan adaptor opsional

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `action_night_raid`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-runner"></a>
## Hari 8 - Pelari Rute

**ID Profil:** `action_route_runner` **Keseluruhan kondisi:** Tekanan standar (1.81/5) **Arti jelasnya:** Tekanan standar. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan tempur: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Pastikan listrik, air, tempat berlindung, dan perlindungan bahaya sebelum meninggalkan markas.

<a id="main-effects-7"></a>
### Efek utama

- Kecepatan siklus siang-malam sangat ekstrem (3x).
- Kapasitas tumpukan sangat ekstrem (4x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0,15x).
- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Kesulitan permainan: sulit.

<a id="domain-ratings-7"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.08/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | menguntungkan (1.42/5) | Kebutuhan bertahan hidup sehari-hari sangat mudah. |
| Tekanan sumber daya | menguntungkan (1.45/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (2.56/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.47/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-7"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **baku tembak rute**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.137**
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
| DetectionSpeedMultiplier | 1.3 | Kecepatan deteksi musuh di atas normal yaitu 1,3x. |
| DisableResearchMinigame | benar | Bypass penelitian diaktifkan. |
| DurabilityLossOnDeathMultiplier | 0.15 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0,15x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.8 | Kerusakan pertahanan musuh di bawah normal yaitu 0,8x. |
| EnemyHealthMultiplier | 0.8 | Ketahanan musuh di bawah normal yaitu 0,8x. |
| EnemyPlayerDamageMultiplier | 1.0 | Kerusakan musuh pada pemain mendekati normal pada 1x. |
| EnemySpawnRate | 1.6 | Frekuensi musuh di atas normal yaitu 1,6x. |
| FatigueSpeedMultiplier | 0.7 | Tingkat kelelahan di bawah normal yaitu 0,7x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.9 | Pembusukan makanan mendekati normal yaitu 0,9x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.7 | Tingkat kelaparan di bawah normal yaitu 0,7x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.25 | Daya tahan item di atas normal yaitu 1,25x. |
| ItemStackSizeMultiplier | 4.0 | Kapasitas tumpukan sangat tinggi yaitu 4x. |
| ItemWeightMultiplier | 0.7 | Berat item di bawah normal yaitu 0,7x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.9 | Perolehan pengalaman jauh di atas normal yaitu 1,9x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.1 | Pendinginan mendekati normal pada 1,1x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 1.5 | Kecepatan isi ulang bak cuci berada di atas normal sebesar 1,5x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.7 | Tingkat haus di bawah normal sebesar 0,7x. |
| WeatherFrequency | 3 | Frekuensi cuaca normal. |

<a id="optional-adapter-selection-7"></a>
### Pemilihan adaptor opsional

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `action_route_runner`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-riot"></a>
## Hari ke-9 - Kerusuhan Jatah

**ID Profil:** `action_ration_riot` **Keseluruhan kondisi:** Tekanan standar (2.17/5) **Arti jelasnya:** Tekanan standar. Tekanan untuk bertahan hidup: Kondisi yang menuntut adalah tekanan utama. Tekanan sumber daya: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-8"></a>
### Efek utama

- Ukuran persediaan dasar berada dalam kondisi yang parah (10).
- Air wastafel mungkin tidak aman.
- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Pembusukan makanan jauh di atas normal (2x).
- Soket listrik mati di malam hari.

<a id="domain-ratings-8"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (1.92/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | menuntut (2.81/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | standar (2.33/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.17/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.53/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-8"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **kelangkaan baku tembak**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.109**
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
| DetectionSpeedMultiplier | 1.0 | Kecepatan deteksi musuh mendekati normal pada 1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.35 | Kehilangan daya tahan akibat kematian jauh di bawah normal yaitu sebesar 0,35x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 1.0 | Kerusakan pertahanan musuh mendekati normal yaitu 1x. |
| EnemyHealthMultiplier | 1.1 | Ketahanan musuh mendekati normal yaitu 1,1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Kerusakan musuh pada pemain mendekati normal pada 1,1x. |
| EnemySpawnRate | 1.1 | Frekuensi musuh mendekati normal pada 1,1x. |
| FatigueSpeedMultiplier | 1.3 | Tingkat kelelahan di atas normal yaitu 1,3x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Pembusukan makanan jauh di atas normal yaitu sebesar 2x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.4 | Tingkat kelaparan di atas normal sebesar 1,4x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 0.75 | Daya tahan item di bawah normal sebesar 0,75x. |
| ItemStackSizeMultiplier | 1.0 | Kapasitas tumpukan mendekati normal pada 1x. |
| ItemWeightMultiplier | 1.3 | Berat item di atas normal sebesar 1,3x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.3 | Perolehan pengalaman di atas normal pada 1,3x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.5 | Pendinginan jauh di bawah normal pada 0,5x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.5 | Kecepatan isi ulang wastafel jauh di bawah normal yaitu 0,5x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 1.4 | Kecepatan ketiga di atas normal yaitu 1,4x. |
| WeatherFrequency | 2 | Frekuensi cuaca sesekali. |

<a id="optional-adapter-selection-8"></a>
### Pemilihan adaptor opsional

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `action_ration_riot`
- `lethal_lasers`: `standard_safety`

<a id="day-10---escort-recovery"></a>
## Hari ke-10 - Pemulihan Pengawal

**ID Profil:** `action_escort_recovery` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.05/5) **Arti jelasnya:** Kondisi yang menguntungkan. Tekanan lingkungan: Kondisi yang menguntungkan adalah tekanan utama. Tekanan pemulihan: Kondisi yang menguntungkan adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-9"></a>
### Efek utama

- Bonus poin tambahan adalah kondisi keringanan (10).
- Kerusakan akibat tembakan jauh di bawah normal (0x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0x).
- Daya tahan item sangat ekstrem (3x).
- Kapasitas tumpukan sangat ekstrem (10x).

<a id="domain-ratings-9"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (0.92/5) | Tekanan musuh lebih ringan dari biasanya. |
| Tekanan kelangsungan hidup | menguntungkan (1.02/5) | Kebutuhan bertahan hidup sehari-hari sangat mudah. |
| Tekanan sumber daya | menguntungkan (0.9/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | menguntungkan (1.54/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.19/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-9"></a>
### Konteks pertemuan

- Tingkat: **pertemuan minimal**
- Tema: **pemulihan baku tembak**
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
| EnemyHealthMultiplier | 0.7 | Ketahanan musuh di bawah normal yaitu 0,7x. |
| EnemyPlayerDamageMultiplier | 0.3 | Kerusakan musuh pada pemain jauh di bawah normal yaitu 0,3x. |
| EnemySpawnRate | 0.5 | Frekuensi musuh jauh di bawah normal yaitu 0,5x. |
| FatigueSpeedMultiplier | 0.45 | Tingkat kelelahan jauh di bawah normal yaitu 0,45x. |
| FirstTimeStartingWeapon | 2 | Memulai penyediaan senjata adalah tekanan standar pada 2. |
| FoodSpoilSpeedMultiplier | 0.4 | Pembusukan makanan jauh di bawah normal yaitu 0,4x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.45 | Tingkat kelaparan jauh di bawah normal yaitu 0,45x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 3.0 | Daya tahan item sangat ekstrem yaitu 3x. |
| ItemStackSizeMultiplier | 10.0 | Kapasitas tumpukan adalah ekstrim pada 10x. |
| ItemWeightMultiplier | 0.4 | Berat item jauh di bawah normal yaitu 0,4x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 2.4 | Perolehan pengalaman jauh di atas normal pada 2,4x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | salah | Kerusakan akibat radiasi dinonaktifkan. |
| RefrigerationEffectivenessMultiplier | 1.8 | Pendinginan jauh di atas normal pada 1,8x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 3.0 | Kecepatan isi ulang wastafel sangat ekstrim yaitu 3x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.45 | Kecepatan ketiga jauh di bawah normal yaitu 0,45x. |
| WeatherFrequency | 1 | Frekuensi cuaca jarang terjadi. |

<a id="optional-adapter-selection-9"></a>
### Pemilihan adaptor opsional

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `action_escort_recovery`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-targets"></a>
## Hari ke-11 - Target Pelatihan

**ID Profil:** `action_training_targets` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.46/5) **Arti jelasnya:** Kondisi yang menguntungkan. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan kelangsungan hidup: Kondisi yang menguntungkan adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-10"></a>
### Efek utama

- Bonus poin tambahan adalah kondisi keringanan (12).
- Kehilangan daya tahan saat mati jauh di bawah normal (0x).
- Kapasitas tumpukan sangat ekstrem (5x).
- Perolehan pengalaman sangat ekstrem (3,1x).
- Daya tahan item jauh di atas normal (2,25x).

<a id="domain-ratings-10"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (1.49/5) | Tekanan musuh lebih ringan dari biasanya. |
| Tekanan kelangsungan hidup | menguntungkan (1.58/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | menguntungkan (0.92/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (1.96/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.43/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-10"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ringan**
- Tema: **pelatihan baku tembak**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.064**
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
| DetectionSpeedMultiplier | 0.8 | Kecepatan deteksi musuh di bawah normal pada 0,8x. |
| DisableResearchMinigame | benar | Bypass penelitian diaktifkan. |
| DurabilityLossOnDeathMultiplier | 0.0 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.4 | Kerusakan pertahanan musuh jauh di bawah normal yaitu 0,4x. |
| EnemyHealthMultiplier | 0.8 | Ketahanan musuh di bawah normal yaitu 0,8x. |
| EnemyPlayerDamageMultiplier | 0.6 | Kerusakan musuh pada pemain di bawah normal sebesar 0,6x. |
| EnemySpawnRate | 1.1 | Frekuensi musuh mendekati normal pada 1,1x. |
| FatigueSpeedMultiplier | 0.8 | Tingkat kelelahan di bawah normal yaitu 0,8x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.8 | Pembusukan makanan di bawah normal yaitu 0,8x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.8 | Tingkat kelaparan di bawah normal yaitu 0,8x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 2.25 | Item daya tahan jauh di atas normal pada 2,25x. |
| ItemStackSizeMultiplier | 5.0 | Kapasitas tumpukan sangat tinggi pada 5x. |
| ItemWeightMultiplier | 0.6 | Berat item di bawah normal pada 0,6x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 3.1 | Perolehan pengalaman sangat ekstrem pada 3,1x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 1.3 | Pendinginan di atas normal pada 1,3x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 2.0 | Tingkat pengisian ulang wastafel jauh di atas normal pada 2x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.8 | Tingkat haus di bawah normal yaitu 0,8x. |
| WeatherFrequency | 2 | Frekuensi cuaca sesekali. |

<a id="optional-adapter-selection-10"></a>
### Pemilihan adaptor opsional

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `action_training_targets`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-assault"></a>
## Hari ke-12 - Serangan Lab Hitam

**ID Profil:** `action_black_lab_assault` **Keseluruhan kondisi:** Tekanan standar (2.49/5) **Arti jelasnya:** Tekanan standar. Tekanan tempur: Kondisi yang menuntut adalah tekanan utama. Tekanan kelangsungan hidup: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah amunisi, jaga jalur mundur, dan hindari pertempuran tanpa dukungan.

<a id="main-effects-11"></a>
### Efek utama

- Kesulitan permainan: sangat sulit.
- Frekuensi musuh sangat ekstrem (2,5x).
- Perolehan pengalaman sangat ekstrem (2,5x).
- Air wastafel mungkin tidak aman.
- Kerusakan akibat tembakan jauh di bawah normal (0,15x).

<a id="domain-ratings-11"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menuntut (3.15/5) | Tekanan permusuhan meningkat; bersiaplah sebelum terlibat. |
| Tekanan kelangsungan hidup | standar (2.53/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | standar (1.78/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.22/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | standar (1.79/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-11"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ekstrem**
- Tema: **ujian berat dalam baku tembak**
- Grup aktif maksimum: **3**
- Peluang pertemuan campuran: **0.209**
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
| DetectionSpeedMultiplier | 1.8 | Kecepatan deteksi musuh jauh di atas normal yaitu 1,8x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.4 | Hilangnya daya tahan saat mati jauh di bawah normal yaitu 0,4x. |
| EnemyAccuracy | 3 | Akurasi musuh buruk akurat. |
| EnemyDeployableDamageMultiplier | 1.4 | Kerusakan pertahanan musuh berada di atas normal yaitu 1,4x. |
| EnemyHealthMultiplier | 1.7 | Ketahanan musuh jauh di atas normal yaitu 1,7x. |
| EnemyPlayerDamageMultiplier | 1.9 | Kerusakan musuh pada pemain jauh di atas normal yaitu 1,9x. |
| EnemySpawnRate | 2.5 | Frekuensi musuh ekstrim yaitu 2,5x. |
| FatigueSpeedMultiplier | 1.15 | Tingkat kelelahan mendekati normal pada 1,15x. |
| FirstTimeStartingWeapon | 1 | Memulai penyediaan senjata adalah tekanan standar pada 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Pembusukan makanan mendekati normal pada 1,15x. |
| GameDifficulty | 3 | Kesulitan permainan sangat sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.15 | Tingkat kelaparan mendekati normal pada 1,15x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.1 | Daya tahan item mendekati normal pada 1,1x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 1.0 | Berat item mendekati normal pada 1x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 2.5 | Perolehan pengalaman sangat ekstrem yaitu 2,5x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.85 | Pendinginan mendekati normal pada 0,85x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.75 | Kecepatan isi ulang wastafel di bawah normal yaitu 0,75x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 1.15 | Kecepatan ketiga mendekati normal pada 1,15x. |
| WeatherFrequency | 3 | Frekuensi cuaca normal. |

<a id="optional-adapter-selection-11"></a>
### Pemilihan adaptor opsional

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `action_black_lab_assault`
- `lethal_lasers`: `high_hazard`

<a id="day-13---extended-fireline"></a>
## Hari ke-13 - Extended Fireline

**ID Profil:** `action_extended_fireline` **Keseluruhan kondisi:** Tekanan standar (2.22/5) **Arti jelasnya:** Tekanan standar. Tekanan untuk bertahan hidup: Kondisi yang menuntut adalah tekanan utama. Tekanan sumber daya: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah makanan dan air, istirahat sebelum perjalanan jauh, dan rencanakan pemberhentian yang aman.

<a id="main-effects-12"></a>
### Efek utama

- Ukuran persediaan dasar berada dalam kondisi yang parah (10).
- Air wastafel mungkin tidak aman.
- Kerusakan akibat tembakan jauh di bawah normal (0,25x).
- Kesulitan permainan: sulit.
- Kapasitas tumpukan jauh di atas normal (2x).

<a id="domain-ratings-12"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.06/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | menuntut (3.02/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | standar (2.17/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.01/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.53/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-12"></a>
### Konteks pertemuan

- Tingkat: **pertemuan sedang**
- Tema: **ketahanan baku tembak**
- Grup aktif maksimum: **1**
- Peluang pertemuan campuran: **0.127**
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
| DetectionSpeedMultiplier | 1.0 | Kecepatan deteksi musuh mendekati normal pada 1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.35 | Kehilangan daya tahan akibat kematian jauh di bawah normal yaitu sebesar 0,35x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.9 | Kerusakan musuh pada pertahanan mendekati normal pada 0,9x. |
| EnemyHealthMultiplier | 1.2 | Ketahanan musuh di atas normal pada 1,2x. |
| EnemyPlayerDamageMultiplier | 1.2 | Kerusakan musuh pada pemain berada di atas normal yaitu 1,2x. |
| EnemySpawnRate | 1.0 | Frekuensi musuh mendekati normal yaitu 1x. |
| FatigueSpeedMultiplier | 1.5 | Tingkat kelelahan di atas normal yaitu 1,5x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Pembusukan makanan jauh di atas normal yaitu 1,8x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.6 | Tingkat kelaparan di atas normal yaitu 1,6x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 0.9 | Daya tahan item mendekati normal yaitu 0,9x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 1.4 | Berat item berada di atas normal sebesar 1,4x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 1.6 | Perolehan pengalaman di atas normal sebesar 1,6x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.65 | Pendinginan di bawah normal sebesar 0,65x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.35 | Kecepatan isi ulang wastafel jauh di bawah normal sebesar 0,35x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 1.6 | Tingkat kehausan di atas normal yaitu 1,6x. |
| WeatherFrequency | 2 | Frekuensi cuaca sesekali. |

<a id="optional-adapter-selection-12"></a>
### Pemilihan adaptor opsional

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `action_extended_fireline`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-miracle"></a>
## Hari ke-14 - Keajaiban Lemari Persediaan

**ID Profil:** `action_supply_closet_miracle` **Keseluruhan kondisi:** Kondisi yang menguntungkan (1.02/5) **Arti jelasnya:** Kondisi yang menguntungkan. Tekanan lingkungan: Kondisi yang menguntungkan adalah tekanan utama. Tekanan pemulihan: Kondisi yang menguntungkan adalah faktor terkuat berikutnya. **Saran pemain:** Gunakan kondisi yang menguntungkan untuk menjelajahi, mengisi ulang, memperbaiki, dan bersiap untuk reboot berikutnya.

<a id="main-effects-13"></a>
### Efek utama

- Ukuran inventaris dasar adalah kondisi keringanan (40).
- Bonus poin tambahan adalah kondisi keringanan (12).
- Kerusakan akibat tembakan jauh di bawah normal (0x).
- Kehilangan daya tahan saat mati jauh di bawah normal (0x).
- Daya tahan item sangat ekstrem (6x).

<a id="domain-ratings-13"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | menguntungkan (0.98/5) | Tekanan musuh lebih ringan dari biasanya. |
| Tekanan kelangsungan hidup | menguntungkan (0.86/5) | Kebutuhan bertahan hidup sehari-hari sangat mudah. |
| Tekanan sumber daya | bantuan (0.79/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | menguntungkan (1.58/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.19/5) | Aturan kematian dan pemulihan bersifat memaafkan. |

<a id="encounter-context-13"></a>
### Konteks pertemuan

- Tingkat: **pertemuan minimal**
- Tema: **tembak baku tembak lega**
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
| DetectionSpeedMultiplier | 0.5 | Kecepatan deteksi musuh jauh di bawah normal yaitu 0,5x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.0 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0x. |
| EnemyAccuracy | 1 | Akurasi musuh berkurang. |
| EnemyDeployableDamageMultiplier | 0.1 | Kerusakan pertahanan musuh jauh di bawah normal yaitu 0,1x. |
| EnemyHealthMultiplier | 0.7 | Ketahanan musuh di bawah normal yaitu 0,7x. |
| EnemyPlayerDamageMultiplier | 0.5 | Kerusakan musuh pada pemain jauh di bawah normal yaitu 0,5x. |
| EnemySpawnRate | 0.5 | Frekuensi musuh jauh di bawah normal yaitu 0,5x. |
| FatigueSpeedMultiplier | 0.35 | Tingkat kelelahan jauh di bawah normal yaitu 0,35x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.25 | Pembusukan makanan jauh di bawah normal yaitu 0,25x. |
| GameDifficulty | 1 | Kesulitan permainan adalah standar. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.35 | Tingkat kelaparan jauh di bawah normal yaitu 0,35x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 6.0 | Daya tahan item sangat tinggi yaitu 6x. |
| ItemStackSizeMultiplier | 20.0 | Kapasitas tumpukan sangat ekstrim yaitu 20x. |
| ItemWeightMultiplier | 0.2 | Berat item jauh di bawah normal yaitu 0,2x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 3.5 | Perolehan pengalaman sangat ekstrem yaitu 3,5x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | salah | Kerusakan akibat radiasi dinonaktifkan. |
| RefrigerationEffectivenessMultiplier | 2.0 | Pendinginan jauh di atas normal yaitu 2x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 5.0 | Kecepatan pengisian ulang wastafel sangat ekstrem yaitu 5x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | salah | Air wastafel tidak tercemar oleh aturan ini. |
| ThirstSpeedMultiplier | 0.35 | Tingkat ketiga jauh di bawah normal yaitu 0,35x. |
| WeatherFrequency | 1 | Frekuensi cuaca jarang terjadi. |

<a id="optional-adapter-selection-13"></a>
### Pemilihan adaptor opsional

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `action_supply_closet_miracle`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-audit-live"></a>
## Hari ke-15 - Audit Akurasi Langsung

**ID Profil:** `action_accuracy_audit_live` **Keseluruhan kondisi:** Tekanan standar (1.97/5) **Arti jelasnya:** Tekanan standar. Tekanan tempur: Tekanan standar adalah tekanan utama. Tekanan lingkungan: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah amunisi, jaga jalur mundur, dan hindari pertempuran tanpa dukungan.

<a id="main-effects-14"></a>
### Efek utama

- Kerusakan akibat tembakan jauh di bawah normal (0x).
- Kesulitan permainan: sulit.
- Kapasitas tumpukan jauh di atas normal (2x).
- Perolehan pengalaman jauh di atas normal (2x).
- Soket listrik mati di malam hari.

<a id="domain-ratings-14"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur | standar (2.19/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (1.98/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | standar (1.71/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.17/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.51/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-14"></a>
### Konteks pertemuan

- Tingkat: **pertemuan berat**
- Tema: **presisi baku tembak**
- Grup aktif maksimum: **2**
- Peluang pertemuan campuran: **0.155**
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
| DetectionSpeedMultiplier | 1.3 | Kecepatan deteksi musuh di atas normal yaitu 1,3x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.3 | Kehilangan ketahanan saat mati jauh di bawah normal yaitu 0,3x. |
| EnemyAccuracy | 2 | Akurasi musuh adalah standar. |
| EnemyDeployableDamageMultiplier | 0.8 | Kerusakan pertahanan musuh di bawah normal yaitu 0,8x. |
| EnemyHealthMultiplier | 1.0 | Ketahanan musuh mendekati normal pada 1x. |
| EnemyPlayerDamageMultiplier | 1.4 | Kerusakan musuh pada pemain di atas normal yaitu 1,4x. |
| EnemySpawnRate | 1.3 | Frekuensi musuh di atas normal yaitu 1,3x. |
| FatigueSpeedMultiplier | 1.25 | Tingkat kelelahan di atas normal yaitu 1,25x. |
| FirstTimeStartingWeapon | 4 | Memulai penyediaan senjata adalah kondisi yang menguntungkan pada 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Pembusukan makanan mendekati normal pada 1x. |
| GameDifficulty | 2 | Kesulitan permainan sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.0 | Tingkat kelaparan mendekati normal pada 1x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.0 | Daya tahan item mendekati normal pada 1x. |
| ItemStackSizeMultiplier | 2.0 | Kapasitas tumpukan jauh di atas normal pada 2x. |
| ItemWeightMultiplier | 0.9 | Berat item mendekati normal pada 0,9x. |
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
| ThirstSpeedMultiplier | 1.0 | Tingkat kehausan mendekati normal yaitu 1x. |
| WeatherFrequency | 2 | Frekuensi cuaca sesekali. |

<a id="optional-adapter-selection-14"></a>
### Pemilihan adaptor opsional

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `action_accuracy_audit_live`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-crossfire"></a>
## Hari ke-16 - Baku Tembak Eksperimental

**ID Profil:** `action_experimental_crossfire` **Keseluruhan kondisi:** Tekanan standar (2.09/5) **Arti jelasnya:** Tekanan standar. Tekanan lingkungan: Tekanan standar adalah tekanan utama. Tekanan tempur: Tekanan standar adalah faktor terkuat berikutnya. **Saran pemain:** Pastikan listrik, air, tempat berlindung, dan perlindungan bahaya sebelum meninggalkan markas.

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
| Tekanan tempur | standar (2.46/5) | Tekanan musuh mendekati normal. |
| Tekanan kelangsungan hidup | standar (2.36/5) | Kebutuhan kelangsungan hidup sehari-hari mendekati normal. |
| Tekanan sumber daya | menguntungkan (0.99/5) | Persediaan dan kondisi pengangkutan mendukung. |
| Tekanan lingkungan | standar (2.59/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | menguntungkan (1.67/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-15"></a>
### Konteks pertemuan

- Tingkat: **pertemuan ekstrem**
- Tema: **eksperimen baku tembak**
- Grup aktif maksimum: **3**
- Peluang pertemuan campuran: **0.2**
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
| DetectionSpeedMultiplier | 0.5 | Kecepatan deteksi musuh jauh di bawah normal yaitu 0,5x. |
| DisableResearchMinigame | benar | Bypass penelitian diaktifkan. |
| DurabilityLossOnDeathMultiplier | 0.0 | Kehilangan daya tahan saat mati jauh di bawah normal yaitu 0x. |
| EnemyAccuracy | 3 | Akurasi musuh buruk akurat. |
| EnemyDeployableDamageMultiplier | 0.7 | Kerusakan pertahanan musuh berada di bawah normal yaitu 0,7x. |
| EnemyHealthMultiplier | 1.4 | Ketahanan musuh berada di atas normal yaitu 1,4x. |
| EnemyPlayerDamageMultiplier | 0.9 | Kerusakan musuh pada pemain mendekati normal yaitu 0,9x. |
| EnemySpawnRate | 1.7 | Frekuensi musuh jauh di atas normal yaitu 1,7x. |
| FatigueSpeedMultiplier | 0.8 | Tingkat kelelahan di bawah normal yaitu 0,8x. |
| FirstTimeStartingWeapon | 6 | Memulai penyediaan senjata adalah kondisi yang menguntungkan di 6. |
| FoodSpoilSpeedMultiplier | 0.4 | Pembusukan makanan jauh di bawah normal yaitu 0,4x. |
| GameDifficulty | 3 | Kesulitan permainan sangat sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 0.8 | Tingkat kelaparan di bawah normal yaitu 0,8x. |
| InvisibleRadiation | benar | Beberapa radiasi mungkin tidak memiliki peringatan yang terlihat. |
| ItemDurabilityMultiplier | 5.0 | Daya tahan item ekstrem pada 5x. |
| ItemStackSizeMultiplier | 15.0 | Kapasitas tumpukan ekstrem pada 15x. |
| ItemWeightMultiplier | 0.2 | Berat item jauh di bawah normal yaitu 0,2x. |
| LootRespawnEnabled | benar | Loot dapat dikembalikan setelah dikumpulkan. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 3.9 | Perolehan pengalaman ekstrem pada 3,9x. |
| PowerSocketsOffAtNight | salah | Soket listrik tetap tersedia di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 2.0 | Pendinginan jauh di atas normal yaitu 2x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.0 | Kecepatan isi ulang wastafel jauh di bawah normal pada 0x. |
| StorageByTag | salah | Organisasi penyimpanan yang diberi tag dinonaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 1.2 | Tingkat kehausan di atas normal pada 1.2x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-15"></a>
### Pemilihan adaptor opsional

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `action_experimental_crossfire`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---compliance-war-game"></a>
## Hari ke-17 - Permainan Perang Kepatuhan

**ID Profil:** `action_compliance_war_game` **Keseluruhan kondisi:** Kondisi yang menuntut (2.72/5) **Arti jelasnya:** Kondisi yang menuntut. Tekanan tempur: Kondisi parah adalah tekanan utama. Tekanan kelangsungan hidup: Kondisi yang menuntut adalah faktor terkuat berikutnya. **Saran pemain:** Bawalah amunisi, jaga jalur mundur, dan hindari pertempuran tanpa dukungan.

<a id="main-effects-16"></a>
### Efek utama

- Frekuensi musuh sangat ekstrem (3,3x).
- Kesulitan permainan: sangat sulit.
- Frekuensi cuaca: sangat sering.
- Kapasitas tumpukan sangat ekstrem (3x).
- Perolehan pengalaman sangat ekstrem (3,6x).

<a id="domain-ratings-16"></a>
### Peringkat domain

| Area | Peringkat | Arti |
|---|---|---|
| Tekanan tempur |  (3.5/5) | Tekanan permusuhan meningkat; bersiaplah sebelum terlibat. |
| Tekanan kelangsungan hidup | menuntut (2.72/5) | Lapar, haus, kelelahan, atau sanitasi memerlukan perhatian lebih. |
| Tekanan sumber daya | standar (1.88/5) | Kondisi pasokan dan pengangkutan mendekati normal. |
| Tekanan lingkungan | standar (2.55/5) | Kondisi lingkungan mendekati normal. |
| Tekanan pemulihan | standar (1.81/5) | Aturan kematian dan pemulihan mendekati normal. |

<a id="encounter-context-16"></a>
### Konteks pertemuan

- Tingkat: **pertemuan batu penjuru yang parah**
- Tema: **batu penjuru tembak-menembak**
- Grup aktif maksimum: **3**
- Peluang pertemuan campuran: **0.255**
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
| DetectionSpeedMultiplier | 2.1 | Kecepatan deteksi musuh baik di atas normal sebesar 2,1x. |
| DisableResearchMinigame | salah | Penelitian menggunakan minigame normalnya. |
| DurabilityLossOnDeathMultiplier | 0.5 | Kehilangan daya tahan saat mati jauh di bawah normal sebesar 0,5x. |
| EnemyAccuracy | 3 | Akurasi musuh buruk akurat. |
| EnemyDeployableDamageMultiplier | 2.0 | Kerusakan pertahanan musuh jauh di atas normal sebesar 2x. |
| EnemyHealthMultiplier | 2.1 | Ketahanan musuh jauh di atas normal sebesar 2,1x. |
| EnemyPlayerDamageMultiplier | 2.2 | Kerusakan musuh pada pemain jauh di atas normal sebesar 2,2x. |
| EnemySpawnRate | 3.3 | Frekuensi musuh ekstrem sebesar 3,3x. |
| FatigueSpeedMultiplier | 1.25 | Tingkat kelelahan di atas normal yaitu 1,25x. |
| FirstTimeStartingWeapon | 0 | Memulai penyediaan senjata adalah tekanan standar pada 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Pembusukan makanan di atas normal sebesar 1,6x. |
| GameDifficulty | 3 | Kesulitan permainan sangat sulit. |
| HardcoreMode | salah | Mode hardcore dinonaktifkan. |
| HomeWorlds | benar | Perilaku dunia asal diaktifkan. |
| HostAccessPlayerCorpses | benar | Tuan rumah dapat mengakses mayat pemain untuk dukungan pemulihan. |
| HungerSpeedMultiplier | 1.35 | Tingkat kelaparan di atas normal sebesar 1,35x. |
| InvisibleRadiation | salah | Radiasi tidak dibuat tidak terlihat oleh aturan ini. |
| ItemDurabilityMultiplier | 1.0 | Daya tahan item mendekati normal pada 1x. |
| ItemStackSizeMultiplier | 3.0 | Kapasitas tumpukan mencapai 3x. |
| ItemWeightMultiplier | 1.1 | Berat item mendekati normal pada 1,1x. |
| LootRespawnEnabled | salah | Loot yang dikumpulkan tidak muncul kembali. |
| PlayerFurnitureDestruction | salah | Furnitur buatan pemain dilindungi dari aturan ini. |
| PlayerXPGainMultiplier | 3.6 | Peningkatan pengalaman sangat ekstrem pada 3,6x. |
| PowerSocketsOffAtNight | benar | Soket listrik mati di malam hari. |
| RadiationDealsDamage | benar | Radiasi menyebabkan kerusakan. |
| RefrigerationEffectivenessMultiplier | 0.6 | Pendinginan di bawah normal pada 0,6x. |
| ShowDeathMessages | benar | Pemberitahuan kematian ditampilkan. |
| SinkRefillRate | 0.5 | Kecepatan isi ulang wastafel jauh di bawah normal yaitu 0,5x. |
| StorageByTag | benar | Organisasi penyimpanan yang diberi tag diaktifkan. |
| StructuralSupportLimit | 0 | Batas dukungan struktural adalah tekanan standar pada 0. |
| TaintedSinkWater | benar | Air wastafel mungkin tidak aman. |
| ThirstSpeedMultiplier | 1.35 | Tingkat haus di atas normal yaitu 1,35x. |
| WeatherFrequency | 5 | Frekuensi cuaca sangat sering terjadi. |

<a id="optional-adapter-selection-16"></a>
### Pemilihan adaptor opsional

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `action_compliance_war_game`
- `lethal_lasers`: `overcharged_high_hazard`
