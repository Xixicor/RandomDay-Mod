<a id="configuration"></a>
# Konfigurasi

> **Sumber kanonis bahasa Inggris:** [CONFIGURATION.md](../../CONFIGURATION.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Konfigurasi operator utama adalah:

```text
RandomDay/Scripts/ax_config/server.lua
```

Cadangkan file dan ubah satu bagian dalam satu waktu. Lua boolean adalah huruf kecil `true` dan `false`; string membutuhkan tanda kutip; entri daftar perlu koma. Setelah permulaan berikutnya, baca halaman status sebelum melakukan perubahan lainnya. Kontributor yang bekerja dari sumber dapat menggunakan pemeriksaan [validasi rilis](VALIDASI_RILIS.md) terpisah sebelum mengemas build yang dimodifikasi.

Jangan mengedit sendiri `.randomday_mode`, `.randomday_version`, referensi profil yang dihasilkan, `runtime/`, atau `web_export/`. Pembuat paket memiliki mode paket dan penanda versi serta memeriksa apakah keduanya sesuai dengan metadata rilis.

Setiap setelan di bawah ditentukan dalam `RandomDay/Scripts/ax_config/server.lua`. Tabel membedakan pengaturan yang dapat diedit dari bidang identitas milik rilis dan bidang kompatibilitas yang dicadangkan. Bidang yang ada di Lua tidak berarti mengubahnya adalah perilaku yang didukung.

<a id="choose-an-experience"></a>
## Pilih pengalaman

RandomDay memiliki dua paket: satu untuk setiap server khusus dan satu lagi untuk singleplayer/LAN penyalinan manual. Paket khusus memiliki dua mode operasi; mode tersebut adalah setelan, bukan unduhan terpisah.

| Dunia Anda | Instal | Pilih perilaku ini |
| --- | --- | --- |
| Server khusus yang membuat satu kampanye tetap berjalan saat memulai ulang secara rutin | Paket server khusus | `persistent_dedicated` melanjutkan urutan keluarga dan profil yang disimpan. |
| Server khusus yang dibuka hanya untuk sesi permainan individu | Paket server khusus yang sama | `temporary_dedicated` menyimpan profil berikutnya yang disiapkan dengan aman di antara sesi, sementara permainan keluarga baru mungkin menggunakan permulaan yang dikonfigurasi atau acak. |
| Pemain tunggal atau LAN dunia | Singleplayer/LAN package | `auto` memilih perilaku penyalinan manual; hentikan dunia sebelum menyalin file yang dihasilkan. |

Jika Anda tidak yakin, gunakan `auto`. Paket memilih perilaku normal untuk jenis instalasinya. Pilih gaya permainan luas di [Rotasi keluarga](ROTASI_KELUARGA.md). Gunakan [indeks keluarga yang dihasilkan](PROFIL/DOKUMENTASI_PROFIL.md) bila Anda menginginkan nilai gameplay dan sandbox yang tepat. Kemudian pilih hari pertama dan perkembangannya:

- `start_day_mode="configured"` dimulai pada `start_day`.
- `start_day_mode="random"` memilih satu hari pertama yang valid di awal rangkaian keluarga baru dan mempertahankan pilihan tersebut.
- `day_progression_mode="sequential"` menyelesaikan seluruh 17 posisi.
- `day_progression_mode="non_repeating_random"` menyimpan satu pesanan acak yang berisi setiap hari tepat satu kali.

Gunakan preset lengkap di [Rotasi](#rotation). Instalasi baru masih memerlukan satu permulaan untuk mempersiapkan profil pertama yang dipilih dan permulaan berikutnya untuk mengaktifkannya.

<a id="release-identity-and-logging"></a>
## Rilis identitas dan pencatatan

| Setelan | Ketik dan nilai yang dikirimkan | Penggunaan yang didukung | Kegagalan atau interaksi |
|---|---|---|---|
| `version` | String dibaca dari `.randomday_version` | Hanya baca. | Penanda tidak ada atau kosong menjadi `unversioned`; validasi paket akhir menolak penyimpangan identitas. |
| `package_mode` | String dibaca dari `.randomday_mode` | Hanya baca: `dedicated_server` atau `singleplayer_manual`. | Nilai lainnya menghentikan startup sebelum target menulis. |
| `plan_basis` | String: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Hanya label diagnostik; jangan gunakan ini sebagai pengalih fitur. | Waktu proses saat ini tidak bercabang pada bidang ini. |
| `logging.level` | String: `info` | `debug`, `info`, `warn`, atau `error`. | Nilai yang tidak diketahui tidak menambahkan tujuan logging; simpan `info` kecuali mendiagnosis perilaku pembuatan profil. |

Contoh:

```lua
logging = { level = "debug" }
```

Gunakan `debug` untuk sementara, pertahankan `UE4SS.log` yang relevan, lalu kembali ke `info`. Log dapat berisi jalur lokal dari kegagalan tingkat rendah; tinjau sebelum membagikannya.

<a id="experience-mode"></a>
## Mode pengalaman

`experience.mode` memberi nama cara instalasi ini dioperasikan. Hal ini tidak melemahkan batas keamanan permulaan berikutnya: Faktor Abiotik membaca pengaturan sandbox sebelum UE4SS memuat RandomDay, sehingga tidak ada mode yang dapat menggantikan aturan proses yang sudah berjalan.

| Setelan | Nilai yang dikirimkan | Nilai yang didukung | Efek |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` diselesaikan dari paket. Paket khusus dapat menggunakan salah satu mode khusus. Paket penyalinan manual hanya menerima `auto` atau `singleplayer_lan`. |

- `persistent_dedicated` menyimpan satu pesanan family/day selama server restart normal dalam jangka panjang.
- `temporary_dedicated` menjelaskan server yang dimulai untuk sesi bermain terbatas. Urutan yang telah disiapkan masih dipertahankan sehingga menghentikan host tidak akan memutar ulang sesi berikutnya secara diam-diam.
- `singleplayer_lan` hanya menghasilkan keluaran penyalinan manual yang dibatasi. Ia tidak pernah menemukan atau mengedit folder penyimpanan pribadi.

Kombinasi package/experience yang tidak kompatibel berhenti sebelum penulisan sandbox.

<a id="rotation"></a>
## Rotasi

| Setelan | Nilai yang dikirimkan | Nilai yang didukung | Efek |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Mempertahankan semua perubahan sandbox pada batas restart. |
| `cycle.cycle_length_days` | `17` | `17` untuk kumpulan profil standar | Cocok dengan setiap paket keluarga dan referensi yang dihasilkan. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Menggunakan `cycle.start_day` atau memilih satu hari mulai yang valid satu kali pada awal pengoperasian keluarga. |
| `cycle.start_day` | `1` | Bilangan bulat `1` sampai `17` | Hari pertama saat `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Membuat urutan berurutan yang digabungkan atau satu urutan acak yang berisi setiap hari tepat satu kali. |
| `cycle.bootstrap_day` | `1` | Bilangan bulat `1` sampai `17` | Pengembalian kompatibilitas hanya digunakan jika `cycle.start_day` tidak ada. Konfigurasi baru harus menggunakan `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` atau interval positif terbatas | `0` bersiap sekali saat startup; nilai positif memungkinkan pengawasan berkala ketika UE4SS menyediakan `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Memilih bagaimana acara keluarga baru selama 17 hari dimulai. |
| `profile_family.selected_family` | `action` | Satu ID di `allowed_families` | Keluarga yang digunakan oleh `selected_run` dan sebagai pengganti. |
| `profile_family.default_family` | `action` | Satu ID keluarga terdaftar | Penggantian ketika ID yang dipilih hilang atau tidak valid. |
| `profile_family.allowed_families` | Ke-17 ID keluarga publik | Setiap subkumpulan ID terdaftar yang tidak kosong | Membatasi keluarga yang memenuhi syarat untuk proses baru. |
| `profile_family.preserve_family_until_day_17` | Boolean: `true` | Bidang kompatibilitas yang dicadangkan; keep `true`. | Kalender saat ini selalu menyimpan keluarga melalui setiap posisi dalam urutan 17 hari yang bertahan dan tidak membaca bidang ini sebagai tombol pengalih. |
| `profile_family.reroll_only_after_day_17` | Boolean: `true` | Bidang kompatibilitas yang dicadangkan; keep `true`. | Kalender saat ini mengubah keluarga hanya setelah ID setiap hari selesai, terlepas dari hari mana yang terakhir dalam pesanan yang disimpan. |
| `profile_family.prevent_repeats_until_rotation_complete` | Boolean: `true` | Bidang kompatibilitas yang dicadangkan; keep `true`. | Logika kumpulan tidak berulang saat ini adalah tetap dan tidak membaca nilai ini sebagai nilai toggle. |

Urutan hari dibuat satu kali untuk menjalankan keluarga baru dan ditulis ke `runtime/rotation_state.txt`. Pemulihan dan restart kemudian menggunakan kembali posisi yang tepat tersebut. Pengeditan konfigurasi tidak memutar ulang pesanan yang sedang berlangsung. Keluarga berubah hanya setelah 17 posisi selesai.

<a id="recommended-presets"></a>
### Preset yang direkomendasikan

Server khusus persisten:

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

Sesi khusus sementara dengan urutan tidak berulang yang berbeda per rangkaian keluarga baru:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN salinan manual menggunakan paket singleplayer dan biasanya meninggalkan `experience.mode="auto"`. Anda dapat memilih kontrol awal dan perkembangan yang sama sebelum membuat file berikutnya. Salin file yang dihasilkan ke dunia terhenti yang dipilih sebelum generasi lain dijalankan jika Anda ingin status waktu proses dan profil dunia yang dimuat tetap selaras.

Pada instalasi baru, proses pertama hanya dapat mempersiapkan hari mulai yang dipilih. Proses selanjutnya akan mengaktifkannya. Permulaan yang acak atau terkonfigurasi tidak mengabaikan urutan pemuatan mesin tersebut.

Contoh untuk eksekusi Builder tetap:

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

Kumpulan memenuhi syarat yang kosong atau tidak diketahui akan dikembalikan ke keluarga terdaftar alih-alih membuat profil yang tidak lengkap.

<a id="primary-sandbox-path"></a>
## Jalur sandbox primer

| Setelan | Ketik dan nilai yang dikirimkan | Penggunaan yang didukung | Kegagalan atau interaksi |
|---|---|---|---|
| `paths.runtime_dir` | String: `ue4ss/Mods/RandomDay/runtime` | Hanya baca dalam konfigurasi sumber. | `init.lua` menggantikannya dengan jalur mod-root `runtime/` yang terselesaikan. |
| `paths.web_export_dir` | String: `ue4ss/Mods/RandomDay/web_export` | Hanya baca dalam konfigurasi sumber. | `init.lua` menggantikannya dengan jalur mod-root `web_export/` yang terselesaikan. |
| `paths.sandbox_path_override` | String atau `nil`: `nil` | Satu jalur `SandboxSettings.ini` literal untuk tata letak khusus non-standar. | Target yang tidak aman atau tidak tersedia gagal dalam penulisan; mode pemain tunggal menghapus penggantian. |
| `paths.sandbox_candidates` | Daftar string: tujuh kandidat umum | Kandidat pengganti server khusus yang diurutkan. | `init.lua` menambahkan kandidat turunan instalasi; jalur pertama yang ada akan menang. |
| `paths.write_sandbox_mirrors` | Boolean: `true` | Mengizinkan mirror yang dikonfigurasi dengan sengaja. | Tidak ada mirror yang ditulis saat daftar mirror kosong dan `world_name=nil`; mode singleplayer memaksa `false`. |
| `paths.sandbox_mirror_required` | Boolean: `false` | Bidang kompatibilitas yang dicadangkan; keep `false`. | Penulis saat ini memperlakukan mirror sebagai opsional dan tidak membaca kolom ini sebagai gerbang wajib. |
| `paths.world_name` | String atau `nil`: `nil` | Satu komponen folder dunia aman yang digunakan untuk mendapatkan kandidat mirror generik. | Apa pun selain huruf, angka, spasi, `_`, atau `-` akan menghentikan permulaan; mode singleplayer mengabaikannya. |
| `paths.sandbox_mirror_candidates` | Daftar string: kosong | File mirror opsional yang tepat. | Setiap mirror yang memenuhi syarat menggunakan transaksinya sendiri; kegagalan cermin tidak mengubah keberhasilan utama. |

`paths.sandbox_path_override` defaultnya adalah `nil`. Tanpa override, RandomDay pertama-tama memeriksa kandidat WindowsServer umum yang ditautkan ke instalasi RandomDay yang terdeteksi, lalu memeriksa kandidat yang dikonfigurasi. Jika tidak ada, ia akan menggunakan kandidat generik yang ditambatkan instalasi pertama, yang menyelesaikan instalasi server:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Fallback ini tidak diselesaikan dari direktori kerja proses saat ini. Setel `sandbox_path_override` hanya ketika instalasi Anda menggunakan file literal yang berbeda. Arahkan ke satu `SandboxSettings.ini`, bukan ke direktori. Hentikan server dan konfirmasikan file berada di dalam instalasi yang dimaksudkan sebelum digunakan.

<a id="optional-mirrors"></a>
### Mirror Opsional

`paths.write_sandbox_mirrors` dikirimkan sebagai `true`, tetapi daftar jalur mirror kosong dan `paths.world_name` adalah `nil`. Oleh karena itu default yang dikirimkan tidak menulis mirror tambahan. Setel ke `false` saat instalasi harus selalu menulis hanya target utama yang terselesaikan. Tanpa kandidat mirror atau nama dunia yang dikonfigurasi, nilai mana pun tetap hanya menulis file sandbox utama.

Cermin menjadi memenuhi syarat hanya jika Anda dengan sengaja menambahkan entri yang tepat ke `paths.sandbox_mirror_candidates` atau menyetel `paths.world_name`. Mirror adalah salinan upaya terbaik untuk instalasi yang membaca jalur sandbox spesifik dunia kedua. Mereka bukan pengganti untuk mengonfigurasi jalur utama yang benar.

Sebelum mengaktifkan mirror:

1. hentikan server;
2. identifikasi file persis yang dibaca server;
3. konfirmasi target ada di dalam instalasi yang dimaksud;
4. buat cadangannya;
5. tambahkan jalur tersebut saja;
6. verifikasi hasil mirror setelah persiapan.

Contoh penggantian tanpa mirror:

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

`<server-root>` adalah placeholder. Ganti secara lokal; jangan memublikasikan jalur khusus mesin.

<a id="non-disableable-safety-locks"></a>
## Kunci Pengaman yang Tidak Dapat Dinonaktifkan

| Setelan | Nilai yang diperlukan | Arti |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Simpan salinan terverifikasi sebelum mengganti file utama yang ada. |
| `sandbox.restore_last_good_on_failure` | `true` | Coba pemulihan otomatis setelah penggantian atau pembacaan kembali gagal. |
| `external_mods.patch_only_existing_keys` | `true` | Menolak membuat pengaturan yang tidak diketahui dalam file mod lain. |
| `external_mods.backup_before_write` | `true` | Pertahankan byte target sebelum pengeditan adaptor transaksional yang didukung. |

RandomDay menolak startup jika salah satu dari empat nilai ini tidak `true`. Itu adalah kunci pengaman, bukan sakelar operator yang didukung. Jangan menonaktifkannya, termasuk dalam pengembangan atau pemecahan masalah, karena hal ini akan mengubah batasan gagal-tertutup yang dibuktikan oleh pengujian penulis dan adaptor.

`sandbox.force_rewrite_every_supervision_tick` tetap merupakan setelan normal dan dikirimkan sebagai `false`, sehingga file sandbox yang sudah cocok tidak tersentuh. Ia menerima Boolean. Menyetelnya ke `true` memaksa byte siap milik proses yang sama melewati penulis lagi; itu tidak memajukan family/day. Gunakan hanya untuk pengujian pemulihan terbatas karena penulisan berulang akan membuat lebih banyak cadangan operasi.

<a id="optional-mod-adapters"></a>
## Adaptor Mod Opsional

| Setelan | Nilai yang dikirimkan | Arti |
|---|---:|---|
| `external_mods.enabled` | `true` | Izinkan adaptor yang dikonfigurasi untuk memeriksa target yang dipasang secara terpisah. |
| `external_mods.optional_by_default` | `true` | Mod opsional yang hilang atau tidak kompatibel tidak memblokir RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Kunci pengaman yang diperlukan; startup gagal jika diubah. |
| `external_mods.backup_before_write` | `true` | Kunci pengaman yang diperlukan; startup gagal jika diubah. |
| `external_mods.adapters` | Empat ID adaptor publik | Batas yang mungkin dimiliki oleh adaptor milik RandomDay-owned adaptor dapat berjalan. |

Hapus ID adaptor dari daftar untuk membiarkan integrasi tersebut tanpa menonaktifkan atau mencopot pemasangan mod pihak ketiga. singleplayer/LAN menonaktifkan setiap adaptor terlepas dari daftar ini.

`external_mods.optional_by_default=false` membuat hasil adaptor yang dikonfigurasi selain `applied` atau `already_current` menggagalkan hasil adaptor agregat. Itu tidak membuat transaksi sandbox utama dibatalkan. Simpan `true` yang dikirimkan kecuali operator memiliki alasan yang teruji untuk memerlukan integrasi.

Lihat [Adaptor Mod yang Didukung](ADAPTOR_YANG_DIDUKUNG.md) untuk tata letak yang dikenali dan enam kemungkinan hasil.

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### Bidang cakupan Chaotic Spawn Engine opsional

`world_scope` menyediakan lima pengaturan ekstensi RandomDay opsional hanya ketika Chaotic Spawn Engine yang dikenali `DynamicSpawns/SharedData.lua` yang dikenali sudah berisi kolom tersebut. Ini bukan mod atau unduhan terpisah:

| Setelan | Nilai yang dikirimkan | Efek adaptor |
|---|---:|---|
| `world_scope.enabled` | `true` | Meminta gerbang cakupan dunia RandomDay opsional di dalam DynamicSpawns layout. |
| `world_scope.affect_open_worlds` | `true` | Menyertakan dunia terbuka kecuali mod target menerapkan aturan dunia yang dilindungi. |
| `world_scope.unknown_world_policy` | `allow` | Permintaan `allow` atau `block` ketika mod target tidak dapat mengklasifikasikan dunia. |
| `world_scope.log_scope_decisions` | `true` | Meminta logging mod target untuk keputusan cakupannya. |
| `world_scope.protected_worlds` | Daftar kosong | Menyediakan pola dunia lindung yang dipisahkan koma ke tata letak target. |

Nilai ini adalah masukan adaptor, bukan filter dunia yang diterapkan oleh penulis sandbox RandomDay's penulis sandbox. Ini hanya berlaku jika tata letak Chaotic Spawn Engine yang dipasang secara terpisah sudah berisi RandomDay opsional yang lengkap dan laporan `applied` atau `already_current`. Chaotic Spawn Engine tetap bertanggung jawab untuk menggunakan bidang tersebut saat runtime. Instalasi biasa tanpa kolom ekstensi tidak diubah.

Kelima nilai tersebut merupakan input adaptor. `unknown_world_policy` hanya menerima nilai target yang terdokumentasi `allow` atau `block`; tata letak target yang tidak dikenal dilewati. Biarkan `protected_worlds` kosong dalam contoh dokumentasi. Jika operator menggunakan pola lokal, pola tersebut tidak boleh disertakan dalam tangkapan layar, masalah, atau artefak rilis.

<a id="player-messages"></a>
## Pesan Pemain

Konfigurasi server khusus yang dikirimkan memungkinkan pemberitahuan gabungan yang ringkas dan antrean harian yang singkat. Ia menunggu 30 detik sebelum pass pertama, memeriksa pemain yang baru bergabung setiap 15 detik, dan menunggu 10 detik setelah pemberitahuan bergabung sebelum baris harian.

| Setelan | Nilai yang dikirimkan |
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

Validasi panjang pesan memeriksa batas sumber. Ini tidak menggantikan pengujian visual pada setiap resolusi klien.

Nilai waktu adalah angka non-negatif yang ditafsirkan sebagai milidetik kecuali `daily_joke_delay_seconds`. Pengaturan pesan atau siaran yang dinonaktifkan menyembunyikan pemberitahuan klien tanpa mengubah persiapan sandbox. Perintah konsol didaftarkan hanya ketika pengaturan dan pengendali UE4SS tersedia. Pertahankan nilai kekritisan pada tingkat pengangkutan yang dikirimkan kecuali pengujian klien bernama membuktikan nilai lain.

`max_line_chars` dijepit menjadi 8 hingga 64 karakter oleh penerjemah. Tiga pengaturan jumlah baris masing-masing membatasi keluaran gabungan, peringatan, dan catatan; nilai yang dikirimkan cocok dengan jumlah baris sumber yang tersedia. Pertahankan keempat batasan ini pada nilai defaultnya kecuali pengujian tata letak klien membuktikan setelan yang lebih sempit.

Contoh dengan pesan dinonaktifkan:

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
## Profil dan Nilai Sandbox

File sumber keluarga di bawah `RandomDay/Scripts/ax_profiles/families/` menentukan 17 hari penuh per keluarga. Dokumentasi yang dihasilkan pada `docs/profiles/` adalah keluaran referensi, bukan sumber penyesuaian.

Gunakan [referensi kunci sandbox](PROFIL/TOMBOL_PENGATURAN_SANDBOX.md) opsional lengkap untuk jenis, rentang, default profil yang dikirimkan, dan nilai invarian yang tersisa. Setelah mengedit sumber profil, buat ulang dan validasi semua 289 kombinasi; jangan menambal satu penurunan harga yang dihasilkan atau JSON yang dihasilkan dengan tangan.

<a id="customize-the-shipped-profile-defaults"></a>
### Sesuaikan default profil yang dikirimkan

Buka:

```text
RandomDay/Scripts/ax_config/server.lua
```

Temukan blok ini di bawah `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Ini adalah pilihan awal RandomDay's pilihan awal, bukan aturan Faktor Abiotik yang tidak dapat diubah. Setel mode mana pun ke `true` atau `false`. Tetapkan setiap nilai dukungan ke bilangan bulat dari `0` sampai `1000`. Hentikan permainan atau server khusus sebelum mengedit file, simpan, dan kemudian mulai lagi sehingga Lua memuat konfigurasi baru.

RandomDay membaca blok ini setiap kali ia membangun 17 profil dalam satu keluarga. Oleh karena itu, nilai yang dipilih diterapkan pada setiap keluarga dan hari, termasuk profil yang disiapkan setelah rotasi dan profil yang dibuat ulang setelah server dimulai nanti. Anda tidak perlu mengedit 289 file profil atau membuat ulang referensi profil.

Mengubah hanya `SandboxSettings.ini` yang aktif bersifat sementara karena profil yang disiapkan berikutnya dihasilkan dari `server.lua`. Jenis yang tidak valid, kunci yang tidak dikenal, atau nilai dukungan di luar `0..1000` menghentikan pembuatan profil dengan kesalahan konfigurasi bernama alih-alih kembali ke default secara diam-diam.

Referensi profil yang dihasilkan terus menampilkan default yang dikirimkan. Ini adalah referensi rilis, bukan salinan konfigurasi pribadi satu server.
