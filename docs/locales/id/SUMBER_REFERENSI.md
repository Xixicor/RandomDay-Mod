<a id="packaged-source-reference"></a>
# Referensi Sumber Paket

> **Sumber kanonis bahasa Inggris:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Rilis ZIP berisi 51 jalur di bawah ini. Pembangun menolak jalur yang hilang, sumber tambahan berbentuk paket, tabrakan kasus, symlink, atau anggota di luar daftar literal yang diizinkan. Output waktu proses, pengujian, dokumen repositori, dan mod pihak ketiga bukan merupakan anggota paket.

Pendamping yang dapat diperiksa mesin adalah [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Ini mencatat jalur yang sama dengan masukan, keluaran, efek samping, setelan publik, status yang terlihat, mode kegagalan, kemampuan untuk diedit, dan dokumentasi kanonik.

Setiap baris Lua yang dikirimkan mempunyai satu jangkar `module-*` yang stabil. Tautan yang identik dalam header sumber kanonik dan catatan mesin membuat kepemilikan, kontrak, efek samping, kegagalan, dan pemulihan dapat dilacak secara langsung.

<a id="package-markers"></a>
## Penanda Paket

| Jalur | Penelepon dan tanggung jawab | Efek samping dan perilaku kegagalan | Panduan |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS penanda pengaktifan disertakan dalam kedua paket. | Tidak ada waktu proses penulisan. File yang hilang menggagalkan validasi paket dan mungkin menghalangi pemuatan. | [Pemasangan](PEMASANGAN.md) |
| `RandomDay/.randomday_version` | Dibaca oleh `ax_core/version.lua`; dibuat per paket. | Tidak ada penulisan waktu proses. Missing/blank penanda mengembalikan `unversioned`; build final memerlukan identitas versi yang selaras. | [Validasi rilis](VALIDASI_RILIS.md) |
| `RandomDay/.randomday_mode` | Dibaca oleh `ax_core/version.lua`; dihasilkan sebagai `dedicated_server` atau `singleplayer_manual`. | Nilai tidak valid menghentikan startup sebelum sistem file berfungsi. | [Arsitektur](ARSITEKTUR.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Entri, Konfigurasi, dan Layanan Inti

| Jalur | Penelepon dan tanggung jawab | Input, output, dan perilaku kegagalan | Panduan |
|---|---|---|---|
| <a id="modul-utama"></a>`RandomDay/Scripts/main.lua` | UE4SS titik masuk. Menyelesaikan satu root mod dan memanggil `ax_core/init.lua`. | Mencetak garis fatal dan mengembalikannya jika resolusi root atau startup gagal. | [Jalur permulaan](ARSITEKTUR.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Orkestrator utama untuk startup dan pengawasan opsional. | Jalur keluaran jangkar, menerapkan kunci package/safety, memiliki satu pilihan, dan mengurutkan penulisan, status, adaptor, status, web, dan pesan. | [Jalur permulaan](ARSITEKTUR.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Dimuat oleh `init.lua`; objek konfigurasi. | Membaca pengaturan paket dan bidang yang dicadangkan didokumentasikan satu per satu. Kunci pengaman yang tidak valid menghentikan startup. | [Konfigurasi](KONFIGURASI.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Dimuat oleh konfigurasi dan registri profil. | Membaca penanda paket yang dipangkas akan menghasilkan `unversioned` atau `invalid` bila tidak tersedia. | [Identitas rilis](VALIDASI_RILIS.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Wrapper logging bersama. | Memancarkan baris `[RandomDay]` pada level yang dikonfigurasi; tidak ada transportasi log pribadi. | [File runtime](FILE_RUNTIME.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | File bersama, jalur, pengkodean, hash, direktori, dan pembantu transaksi. | Pembuatan direktori hanya menerima keberhasilan perintah Lua/Wine yang dikonfirmasi; hasil yang tidak tersedia, dimunculkan, diberi sinyal, ambigu, atau bukan nol gagal ditutup dengan pesan yang dibatasi dan referensi relatif waktu proses. Ia juga memiliki pending/readback/promotion/rollback semantik dan menyimpan data pemulihan yang tidak pasti. | [Transaksi sandbox](ARSITEKTUR.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Pilihan, Sandbox, Status, dan Pesan

| Jalur | Penelepon dan tanggung jawab | Input, output, dan perilaku kegagalan | Panduan |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; membaca aktif penanda dan status rotasi, memilih satu pasangan active/prepared, mempertahankan mode sesi dan urutan hari yang tepat. | Membuat configured/wrapped atau urutan 17 posisi yang diacak satu kali, menulis `rotation_state.txt` secara transaksional, dan kembali ke kondisi terakhir tanpa melakukan rerolling transisi yang terdegradasi. | [Mesin status rotasi](ARSITEKTUR.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Sandbox writer; membuat operasi dan pencadangan barang terakhir serta memulihkan byte terverifikasi. | Memperbarui barang terakhir sandbox/manifest sebagai pasangan; mempertahankan pasangan sebelumnya jika penggantian manifes gagal. | [File runtime](FILE_RUNTIME.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Pembuat profil, serializer, dan validator. | Mendefinisikan urutan kunci kanonik, jenis, rentang, dan aturan tetap; tidak ada sistem file yang menulis. | [Kunci kotak pasir](PROFIL/TOMBOL_PENGATURAN_SANDBOX.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Penulis sandbox. | Menghasilkan deterministik lengkap INI teks dengan RandomDay penanda; data profil yang tidak valid ditolak oleh validasi. | [Profil](PROFIL/DOKUMENTASI_PROFIL.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Pengujian dan penulis pembuat. | Memvalidasi nilai profil dan membuat serial INI terhadap skema, nilai tetap, dan identitas profil yang diharapkan. | [Kunci kotak pasir](PROFIL/TOMBOL_PENGATURAN_SANDBOX.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; menyelesaikan target yang dibatasi mode dan melakukan primary/mirror penulisan. | Menghasilkan transaksi, pencadangan, rollback, hash, mirror, dan hasil keluaran manual. Target yang tidak aman dan penulisan yang belum diverifikasi gagal ditutup. | [Transaksi sandbox](ARSITEKTUR.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` setelah setiap hasil persiapan. | Menulis status saat ini, kamus, dan pratinjau pesan secara transaksional dengan referensi target yang telah dibersihkan. Kegagalan output dicatat dan tidak mengubah otoritas sandbox. | [Skema status saat ini](FILE_RUNTIME.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` setelah status. | Menulis `today.json` dan `today.html` dari keputusan active/prepared. Kegagalan dilaporkan sebagai kegagalan ekspor, bukan keberhasilan sandbox. | [Skema ekspor web](FILE_RUNTIME.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` setelah persistensi status berhasil. | Membangun pesan join/daily yang dibatasi dari data terjemahan dan secara opsional mendaftarkan perintah konsol lokal. player/transport yang hilang akan melewatkan pemberitahuan tanpa mengubah status profil. | [Pesan pemain](KONFIGURASI.md#player-messages) |

<a id="optional-adapter-modules"></a>
## Modul Adaptor Opsional

| Jalur | Penelepon dan tanggung jawab | Input, output, dan perilaku kegagalan | Panduan |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; menemukan target adaptor yang dikenali dan menerapkan semua file yang direncanakan secara transaksional. | Menghasilkan enam hasil yang terdokumentasi, pencadangan terverifikasi, diagnostik yang sudah dibersihkan, dan bukti rollback. | [Batas adaptor](ARSITEKTUR.md#adapter-boundary) |
| <a id="modul-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Definisi jembatan adaptor untuk DynamicSpawns layout. | Menyediakan tanda tangan yang dikenali dan peta nilai yang disiapkan; tata letak yang tidak diketahui dilewati. | [Adaptor yang didukung](ADAPTOR_YANG_DIDUKUNG.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Definisi adaptor internal untuk bidang ekstensi opsional RandomDay yang diinstal secara terpisah di Chaotic Spawn Engine yang dikenali `DynamicSpawns` Chaotic Spawn Engine yang dikenali; nama file bukan nama produk terpisah. | Pertemuan profil Maps dan nilai cakupan yang dikonfigurasi hanya jika tata letak ekstensi lengkap ada; Chaotic Spawn Engine tetap bertanggung jawab atas penggunaan waktu proses. | [Adaptor yang didukung](ADAPTOR_YANG_DIDUKUNG.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Definisi jembatan adaptor untuk tata letak setelan Lethal Lasers yang dikenali. | Membutuhkan setiap kunci yang diinginkan sebelum mutasi; jika tidak, laporkan ketidaksesuaian. | [Adaptor yang didukung](ADAPTOR_YANG_DIDUKUNG.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Definisi jembatan adaptor untuk ANTE Tata letak pengaturan atas yang dikenali. | Memerlukan kolom respawn, varian, dan gerbang debug; jika tidak, akan dilaporkan tidak kompatibel. | [Adaptor yang didukung](ADAPTOR_YANG_DIDUKUNG.md) |

<a id="shared-profile-and-translation-modules"></a>
## Profil Bersama dan Modul Terjemahan

| Jalur | Penelepon dan tanggung jawab | Input, output, dan perilaku kegagalan | Panduan |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; nilai dasar kanonis dan default 17 hari. | Menyediakan semua kunci sandbox, empat profil default yang dikirimkan, dan aturan tetap lainnya; tidak ada sistem file yang menulis. Validasi skema menolak keluaran yang tidak lengkap. | [Kunci kotak pasir](PROFIL/TOMBOL_PENGATURAN_SANDBOX.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Setiap modul keluarga dan tampilan keluarga lama. | Klon hari dasar, berlaku terbatas family/day menimpa, memvalidasi `sandbox.profile_overrides`, menerapkan nilai persisten tersebut ditambah aturan tetap lainnya, dan mengembalikan paket keluarga 17 profil. | [Referensi profil](PROFIL/DOKUMENTASI_PROFIL.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; memerintahkan pencatatan publik untuk seluruh 17 keluarga. | ID persediaan, nama file sumber, nama, deskripsi, genre, dan metadata nada. Sumber keluarga yang hilang gagal dimuat. | [Rotasi keluarga](ROTASI_KELUARGA.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Kalender, penulis, status, pengujian, dan generator. | Memuat semua paket keluarga yang terdaftar dan menampilkan kumpulan profil 17 kali 17, default yang dikirimkan, nilai seluruh profil yang efektif, urutan skema, dan aturan tetap. | [Referensi profil](PROFIL/DOKUMENTASI_PROFIL.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Tampilan kompatibilitas paket dari paket Action 17 hari asli. | Mengembalikan paket keluarga lengkap namun bukan sumber keluarga registri saat ini. Disimpan untuk kesinambungan jalur paket historis. | [Rotasi keluarga](ROTASI_KELUARGA.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Tampilan kompatibilitas terpaket dari paket survival Reaction asli. | Mengembalikan paket keluarga lengkap tetapi tidak dipilih oleh registri saat ini. Disimpan untuk kesinambungan jalur paket historis. | [Rotasi keluarga](ROTASI_KELUARGA.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Pencarian pertemuan indeks hari lama tersedia untuk kode profil. | Mengembalikan satu peta pertemuan terbatas berdasarkan hari; tidak ada sistem file yang menulis. Profil keluarga saat ini memiliki nilai pertemuannya sendiri. | [Referensi profil](PROFIL/DOKUMENTASI_PROFIL.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Pesan pemain dan wrapper kompatibilitas. | Membangun pesan joke/note paket dari profil yang dipilih; data profil yang tidak tersedia dikembalikan ke pesan netral. | [Pesan pemain](KONFIGURASI.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Wrapper yang kompatibel dengan versi sebelumnya di sekitar `messages_17.lua`. | Tidak ada data atau penulisan independen; kegagalan pemuatan mengikuti modul pesan kanonik. | [Pesan pemain](KONFIGURASI.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Penulis kamus terjemahan dan runtime. | Mendefinisikan ke-46 arti, tipe, rentang, domain, dan bahasa nilai setelan sandbox. Nilai yang tidak diketahui tetap eksplisit. | [Terjemahan dan kamus](FILE_RUNTIME.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Status runtime dan pesan pemain. | Mengonversi nilai profil mentah menjadi skor domain terbatas, fakta, ringkasan, peringatan, dan keluaran kamus sambil tetap mempertahankan nilai mentah nilai-nilai. | [Skema status saat ini](FILE_RUNTIME.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Modul Keluarga Terdaftar

Setiap baris dimuat oleh `randomday_17.lua`, memanggil `profile_builder.lua`, mengembalikan tepat 17 profil, dan tidak memiliki efek samping sistem file langsung. Profil yang hilang, duplikat, tidak lengkap, di luar jangkauan, atau melanggar aturan tetap menggagalkan rangkaian perlengkapan runtime dan gerbang referensi yang dihasilkan.

| Jalur | Keluarga | Panduan yang dihasilkan secara kanonik |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Aksi | [Aksi](PROFIL/KELUARGA/KELOMPOK_PROFIL_TINDAKAN.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Bertahan Hidup | [Bertahan Hidup](PROFIL/KELUARGA/KELUARGA_PROFIL_KELANGSUNGAN_HIDUP.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Siluman | [Siluman](PROFIL/KELUARGA/KELUARGA_PROFIL_SILUMAN.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Gerombolan | [Gerombolan](PROFIL/KELUARGA/KELUARGA_PROFIL_GEROMBOLAN.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Perburuan Bos | [Perburuan Bos](PROFIL/KELUARGA/KELUARGA_PROFIL_PERBURUAN_BOS.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Pemulung | [Pemulung](PROFIL/KELUARGA/KELUARGA_PROFIL_PEMULUNG.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Pembangun | [Pembangun](PROFIL/KELUARGA/KELUARGA_PROFIL_PEMBANGUN.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Ekspedisi | [Ekspedisi](PROFIL/KELUARGA/KELUARGA_PROFIL_EKSPEDISI.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Penguncian Keamanan | [Penguncian Keamanan](PROFIL/KELUARGA/KELUARGA_PROFIL_PENGUNCIAN_KEAMANAN.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Biohazard | [Biohazard](PROFIL/KELUARGA/PROFIL_BIOHAZARD_KELUARGA.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Anteverse | [Anteverse](PROFIL/KELUARGA/KELUARGA_PROFIL_ANTEVERSE.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Mimpi buruk | [Mimpi buruk](PROFIL/KELUARGA/KELUARGA_PROFIL_MIMPI_BURUK.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Lapukan | [Lapukan](PROFIL/KELUARGA/KELUARGA_PROFIL_CUACA.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Presisi | [Presisi](PROFIL/KELUARGA/KELUARGA_PROFIL_PRESISI.md) |
| <a id="module-ax-profiles-families-logistics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Logistik | [Logistik](PROFIL/KELUARGA/KELOMPOK_PROFIL_LOGISTIK.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Eksperimental | [Eksperimental](PROFIL/KELUARGA/KELUARGA_PROFIL_EKSPERIMENTAL.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Uji Kepatuhan | [Uji Kepatuhan](PROFIL/KELUARGA/KELUARGA_PROFIL_UJI_KEPATUHAN.md) |

<a id="generated-references"></a>
## Referensi yang Dihasilkan

`docs/profiles/profiles.generated.json`, file penurunan harga keluarga, dan `FULL_PROFILE_REFERENCE.md` adalah contributor/operator referensi yang dihasilkan dari kumpulan profil yang sama. Mereka bukan anggota paket dan tidak boleh diedit sebagai pengganti perubahan sumber profil. Validasi memerlukan 17 kelompok, 17 profil per kelompok, ID unik, semua kunci skema, aturan tetap, cakupan terjemahan, dan pesan terbatas.
