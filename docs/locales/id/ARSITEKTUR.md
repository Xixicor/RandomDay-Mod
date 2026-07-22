<a id="architecture-and-data-flow"></a>
# Arsitektur dan Aliran Data

> **Sumber kanonis bahasa Inggris:** [ARCHITECTURE.md](../../ARCHITECTURE.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


RandomDay memiliki satu tugas terbatas: menyiapkan profil sandbox lengkap untuk permulaan di masa mendatang tanpa mendeskripsikan profil tersebut sebagai aktif selama proses saat ini. Profil aktif berasal dari penanda di file sandbox yang dimuat Abiotic Factor sebelum UE4SS dimulai RandomDay. Profil yang disiapkan adalah status file terpisah dan tervalidasi untuk restart berikutnya.

<a id="package-modes"></a>
## Mode Paket

Pembuat rilis menghasilkan dua ZIP dari daftar sumber yang sama persis dan menetapkan `RandomDay/.randomday_mode` secara berbeda di masing-masing ZIP.

| Mode | Output utama | Penulisan eksternal otomatis |
|---|---|---|
| `dedicated_server` | Server khusus yang terselesaikan `SandboxSettings.ini` | Sandbox primer, mirror yang sengaja dikonfigurasi, dan adaptor opsional yang dikenali. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Tidak ada di luar folder RandomDay; mirror dan adaptor dinonaktifkan. |

`RandomDay/.randomday_version` dan `RandomDay/.randomday_mode` adalah penanda paket yang dihasilkan. `RandomDay/Scripts/ax_core/version.lua` membacanya; operator tidak boleh mengeditnya setelah instalasi.

<a id="session-modes"></a>
## Mode Sesi

Mode paket mengontrol tempat RandomDay dapat menulis. `experience.mode` secara terpisah menjelaskan siklus hidup yang diinginkan:

| Mode sesi | Paket | Kontrak siklus hidup |
|---|---|---|
| `persistent_dedicated` | Khusus | Melanjutkan pesanan hari keluarga dan 17 posisi yang bertahan dalam jangka panjang dimulai ulang. |
| `temporary_dedicated` | Khusus | Perlakukan setiap peluncuran sebagai sesi permainan berbatas sambil mempertahankan urutan antrean antar peluncuran. |
| `singleplayer_lan` | Panduan pemain tunggal | Buat file mod-lokal untuk dunia yang dipilih operator; tidak ada penemuan penyimpanan atau penyalinan otomatis. |

`auto` memutuskan untuk `persistent_dedicated` dalam paket khusus dan `singleplayer_lan` dalam paket manual. Mode sesi tidak mengubah batas mesin: proses saat ini telah memuat kotak pasirnya sebelum RandomDay dijalankan.

<a id="startup-path"></a>
## Jalur Startup

1. UE4SS memuat `RandomDay/Scripts/main.lua`.
2. Titik masuk menyelesaikan satu `RandomDay/` root dan memuat `Scripts/ax_core/init.lua`.
3. `init.lua` memuat konfigurasi, profil, kalender, penulis, adaptor, status, ekspor web, dan modul pesan pemain. Ini menolak mode paket yang tidak valid atau kunci pengaman transaksi yang dinonaktifkan. Ini juga memvalidasi mode sesi yang kompatibel dengan paket, mode hari mulai, hari mulai yang dikonfigurasi, dan mode perkembangan hari.
4. Setiap build keluarga memvalidasi `sandbox.profile_overrides` dari `Scripts/ax_config/server.lua`. Keempat pilihan seluruh profil diterapkan setelah nilai family/day dan sebelum aturan invarian lainnya, sehingga setiap profil yang disiapkan menggunakan pilihan terkonfigurasi yang sama.
5. Akar runtime dan output web ditautkan ke folder mod yang telah diselesaikan. Mode pemain tunggal dikurangi menjadi satu keluaran mod-lokal sebelum pemilihan.
6. `ax_cycle/calendar.lua` membaca penanda kotak pasir dan status rotasi yang dapat dipulihkan, lalu membuat satu active/prepared keputusan untuk proses permainan ini.
7. `ax_sandbox/writer.lua` membuat serialisasi dan memvalidasi profil yang telah disiapkan, kemudian menggunakan pengganti transaksional untuk target yang dipilih.
8. Keadaan rotasi dilakukan hanya setelah transaksi sandbox berhasil. Kegagalan penerapan status mengalami penurunan: adaptor dan pesan pemain yang disiapkan dilewati karena status sandbox dan antrean tidak sesuai.
9. Dalam mode khusus, `ax_external/bridge.lua` mengevaluasi adaptor opsional terhadap profil aktif. Selama bootstrap pertama, tidak ada penanda aktif, jadi profil hari mulai configured/random yang disiapkan adalah satu-satunya pemetaan adaptor yang tersedia.
10. Status Runtime JSON/text dan tampilan web HTML/JSON ditulis ulang dari keputusan yang sama. Pemberitahuan pemain dipasang terakhir.

Default `cycle.check_interval_ms=0` menjalankan urutan ini satu kali saat startup. Jika operator memberikan interval positif dan UE4SS mengekspos `LoopAsync`, callback selanjutnya menggunakan kembali pilihan milik proses. Mereka dapat memperbaiki atau mengekspor ulang pilihan tersebut, namun tidak memilih hari lain selama proses yang sama.

<a id="rotation-state-machine"></a>
## Rotation State Machine

| Status pemilihan | Kondisi entri | Hasil yang disiapkan | Pemulihan aman |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Tidak ada penanda aktif dan tidak ada status siap yang dapat dipulihkan. | Posisi pertama yang dikonfigurasi atau dipilih secara acak dalam urutan hari yang baru dipertahankan. | Menjaga sesi yang ada tetap berjalan; restart hanya setelah `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | Hari aktif bukanlah posisi terakhir dalam urutan tersimpan. | Posisi tersimpan berikutnya dalam kelompok yang sama. | Jika persistensi gagal, biarkan server tetap berhenti dan rekonsiliasi status sandbox dan rotasi. |
| `active_marker_found_completed_run_prepare_next_unused_family` | Hari aktif adalah posisi terakhir dalam urutan tersimpan. | Posisi pertama dari pesanan baru dalam rangkaian keluarga berikutnya yang memenuhi syarat. | Konfirmasikan family/day/order baru sebelum memulai ulang. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Tidak ada penanda aktif, namun status rotasi menamai profil yang telah disiapkan. | Profil antrean yang sama dibuat ulang. | Pertahankan file status; jangan menghapusnya untuk memaksa pemutaran ulang. |
| `supervision_reconfirm_prepared_profile_no_advance` | Panggilan balik selanjutnya berjalan dalam proses yang sama. | Profil yang disiapkan sama. | Diagnosis tahap kegagalan pertama; callback berulang bukanlah pilihan baru. |

`selected_run` selalu menggunakan `selected_family`. `rotation_run` menggunakan pesanan memenuhi syarat yang dikonfigurasi. `non_repeating_random_run` memilih dari sisa keluarga yang memenuhi syarat dan memulai kumpulan baru setelah semuanya selesai. Setiap mode mempertahankan satu keluarga hingga 17 ID hari unik di `day_order` telah selesai. Mode sekuensial berakhir setelah Hari ke-17 ketika permulaan yang dikonfigurasi bukan Hari ke-1; mode non-acak berulang menyimpan satu permutasi dan tidak pernah memutar ulang selama pemulihan.

<a id="sandbox-transaction"></a>
## Transaksi Sandbox

Penulis merender semua kunci dalam urutan kanonik dan memvalidasi jenis, rentang, aturan tetap, nilai penanda, dan identitas profil sebelum menulis. Penggantian kemudian mengikuti perintah ini:

1. hapus file basi yang tertunda hanya jika sudah aman untuk melakukannya;
2. pertahankan atau hentikan pada sidecar pemulihan yang sudah ada sebelumnya;
3. tulis byte yang tertunda;
4. baca kembali file yang tertunda dan validasi;
5. buat a pencadangan operasi terverifikasi ketika ada target;
6. menyimpan yang asli sebagai file rollback transaksi;
7. mempromosikan file asli yang tertunda;
8. membaca dan memvalidasi file produksi;
9. memulihkan file asli yang disimpan jika validasi promosi atau produksi gagal;
10. menyimpan data pemulihan dan melaporkan kegagalan jika pembersihan tidak dapat diverifikasi.

Penulisan pertama menggunakan jalur pending/readback/validation yang sama. Tanpa target asli, tidak ada yang dapat dipulihkan, jadi penulisan pertama yang gagal tidak boleh dilaporkan sebagai pemulihan file asli.

<a id="adapter-boundary"></a>
## Batas Adaptor

Adaptor adalah RandomDay-owned definisi patch untuk mod yang diinstal secara terpisah. Jembatan pertama-tama memerlukan jalur target yang dikenali dan tanda tangan kunci yang lengkap. Ini hanya menambal penugasan yang ada, membuat cadangan operasi, menerapkan setiap file yang direncanakan sebagai satu transaksi, dan mengembalikan semua target yang terpengaruh jika ada langkah yang gagal. Target yang hilang dan tidak kompatibel adalah hasil opsional yang normal.

RandomDay tidak memuat kode pihak ketiga ke dalam paketnya. Tata letak yang didukung perlengkapan membuktikan perilaku parser dan transaksi RandomDay's parser dan perilaku transaksi, bukan rilis pihak ketiga yang memuat atau menggunakan nilai dalam proses permainan.

<a id="output-boundary"></a>
## Batas Output

File runtime dibuat di bawah `RandomDay/runtime/` dan `RandomDay/web_export/`; tidak ada yang merupakan masukan rilis ZIP. Penulis status menghapus jalur adaptor lokal mesin dari diagnostik JSON diagnostik. Jalur lengkap, skema, irama, dan peta retensi ada di [File dan Status Runtime](FILE_RUNTIME.md).

<a id="failure-ownership"></a>
## Kepemilikan Kegagalan

| Tahap gagal | Konsekuensi yang terlihat oleh pemilik |
|---|---|
| Validasi profil atau INI | Tidak ada upaya penulisan produksi. |
| Tertunda write/readback | Byte produksi yang ada tetap ada. |
| Cadangan operasi | Penggantian berhenti sebelum yang asli dipindahkan. |
| Validasi promosi atau produksi | Pemulihan otomatis dicoba dan hasilnya dilaporkan. |
| Persistensi status rotasi | Byte sandbox yang telah disiapkan mungkin ada, namun transisinya menurun dan adapters/messages dilewati. |
| Kompatibilitas adaptor | Target tidak diubah dengan `not_installed` atau `skipped_incompatible`. |
| Adaptor write/readback | Semua target adaptor yang diubah akan dipulihkan jika memungkinkan. |
| Ekspor status atau web | Hasil sandbox tetap resmi; kegagalan keluaran dicatat dan tidak boleh dianggap sebagai laporan berhasil. |

Ikuti [Operasi](OPERASI.md) untuk pemulihan dan [Pemecahan masalah](PEMECAHAN_MASALAH.md) untuk pemeriksaan gejala pertama.

<a id="evidence-limit"></a>
## Batas Bukti

Rangkaian perlengkapan Lua lokal dapat membuktikan perilaku sumber, invarian profil yang dihasilkan, cabang transaksi, bentuk keluaran, dan batasan paket. Ini tidak membuktikan pembuatan Faktor Abiotik saat ini, UE4SS rilis, panel server tertentu, setiap ukuran tampilan, atau versi mod pihak ketiga yang belum teruji. Klaim tersebut tetap `not tested` hingga proses kompatibilitas bernama dicatat.
