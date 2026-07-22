<a id="operate-active-prepared-and-recovery-state"></a>
# Mengoperasikan status aktif, persiapan, dan pemulihan

> **Sumber kanonis bahasa Inggris:** [OPERATIONS.md](../../OPERATIONS.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


RandomDay mengubah file sandbox untuk booting di masa mendatang. Ini tidak mengubah aturan yang sudah dimuat ke dalam sesi Faktor Abiotik yang sedang berjalan.

Halaman ini berisi keputusan operator dan prosedur pemulihan. Gunakan [Glosarium](GLOSARIUM.md) untuk istilah kanonis, [File runtime](FILE_RUNTIME.md) untuk kepemilikan jalur, dan [Output runtime](OUTPUT_RUNTIME.md) untuk skema dan arti kolom yang tepat.

<a id="distinguish-active-and-prepared-state"></a>
## Membedakan status aktif dan siap

Profil yang telah disiapkan tidak aktif sampai startup berikutnya membaca penandanya. Jangan gunakan family/day yang telah disiapkan untuk mendeskripsikan sesi saat ini.

Gunakan `web_export/today.html` untuk ringkasan yang mudah dibaca dan `web_export/today.json` untuk status pastinya. Konfirmasikan penanda aktif, identitas yang telah disiapkan, `prepared_ready`, `profile_status`, hasil transaksi, hasil rollback, dan hasil penerapan status sebelum memutuskan untuk memulai ulang.

<a id="follow-the-normal-dedicated-server-sequence"></a>
## Ikuti urutan server khusus yang normal

| Sebelum | Aksi | Setelah |
|---|---|---|
| Tidak ada RandomDay penanda | Mulai dengan RandomDay diaktifkan. | Sesi saat ini mempertahankan aturan yang ada; RandomDay membuat dan mempertahankan pesanan harian, lalu menyiapkan configured/random pertamanya. |
| Posisi pertama disiapkan | Mulai ulang. | Hari itu menjadi aktif; posisi tersimpan berikutnya dalam kelompok yang sama telah disiapkan. |
| Posisi tengah aktif | Mulai ulang setelah meninjau profil yang telah disiapkan. | Hari yang disiapkan menjadi aktif dan posisi tersimpan berikut telah disiapkan. |
| Posisi akhir aktif | Mulai ulang setelah meninjau keluarga berikutnya. | Posisi pertama dari urutan keluarga lain yang memenuhi syarat menjadi aktif. |

`selected_run` mempertahankan keluarga yang dikonfigurasi. `non_repeating_random_run` mempertahankan keluarga yang dipilih secara acak selama seluruh posisi 17 hari dan menghindari penggunaan kembali keluarga hingga daftar yang memenuhi syarat habis. `rotation_run` mengikuti urutan keluarga yang dikonfigurasi. `cycle.day_progression_mode` mengontrol urutan hari secara terpisah dari pilihan keluarga.

Penginstalan baru selalu memerlukan satu proses untuk mempersiapkan dan proses berikutnya untuk mengaktifkan. Hal ini berlaku untuk server persisten, server sementara, dan pembuatan singleplayer/LAN manual.

<a id="read-the-right-evidence"></a>
## Baca bukti yang benar

Gunakan [peta file runtime](FILE_RUNTIME.md) untuk menemukan status rotasi, status saat ini, barang terakhir yang diketahui file, pencadangan operasi, ekspor, dan `UE4SS.log`. Gunakan [referensi keluaran runtime](OUTPUT_RUNTIME.md) untuk setiap grup bidang, skema, status kosong, makna kegagalan, dan aturan retensi. HTML dan JSON merangkum status sumber; mereka tidak membuktikan bahwa suatu profil digunakan oleh klien game langsung.

Jika `prepared_ready` adalah `false` atau `profile_status` adalah `degraded_state_persistence`, biarkan server dihentikan hingga status sandbox dan rotasi disetujui. Penulisan sandbox yang valid dengan persistensi status gagal bukanlah transisi yang dipersiapkan dengan baik.

<a id="respond-to-writer-outcomes"></a>
## Respon hasil penulis

RandomDay menyiapkan byte baru dalam file saudara, membacanya kembali, memvalidasi sandbox lengkap, mempertahankan yang asli jika ada, mempromosikan file baru, dan membacanya kembali. Laporan siap hanya setelah pembacaan kembali produksi disetujui.

Jika promosi atau validasi produksi gagal, RandomDay berupaya memulihkan file yang disimpan oleh operasi tersebut. Kegagalan pemulihan adalah penghentian yang sulit: biarkan server berhenti dan pulihkan secara manual daripada memulai ulang berulang kali.

<a id="respond-to-adapter-outcomes"></a>
## Respon hasil adaptor

Gunakan [Adaptor yang didukung](ADAPTOR_YANG_DIDUKUNG.md#read-an-adapter-result) untuk tabel hasil enam keadaan kanonik dan tindakan selanjutnya. Perlakukan `rollback_failed` sebagai perhentian yang sulit; cadangan adaptor yang direkam secara terpisah adalah sumber pemulihan.

Adaptor hanya memengaruhi mod yang diinstal secara terpisah. Mereka tidak pernah mengaktifkan profil sandbox RandomDay yang telah disiapkan.

Pada boot normal, nilai adaptor dipilih dari profil aktif karena mod yang dipasang secara terpisah dapat dimuat nanti di startup UE4SS yang sama. Selama bootstrap pertama, ketika tidak ada penanda RandomDay yang aktif, profil hari mulai yang telah disiapkan adalah satu-satunya pemetaan yang tersedia. Aturan pengaturan waktu ini terpisah dari batas sandbox restart berikutnya dan masih bergantung pada perilaku pemuatan mod lain.

<a id="manual-recovery"></a>
## Pemulihan manual

1. Hentikan game atau server. Jangan memulihkan file saat masih terbuka.
2. Salin `SandboxSettings.ini`, `runtime/` saat ini, dan `web_export/` ke cadangan diagnostik terpisah.
3. Periksa `runtime/last_good/manifest.lua` dan entri terbaru yang relevan di bawah `runtime/backups/`. Pilih file yang family/day dan hashnya cocok dengan status yang ingin Anda pulihkan.
4. Salin file terverifikasi yang dipilih ke jalur sandbox utama yang dikonfigurasi.
5. Baca kembali dan konfirmasikan bahwa file sudah selesai sebelum memulai.
6. Mulai sekali dan periksa penanda aktif dan status siap. Jangan berasumsi bahwa pemulihan berhasil hanya karena tidak adanya pesan kesalahan.

Jika tidak ada cadangan terverifikasi, pulihkan cadangan operator yang dibuat sebelum pemasangan. RandomDay tidak dapat merekonstruksi file yang tidak pernah dapat dibaca.

<a id="account-for-control-panel-writes"></a>
## Akun untuk penulisan panel kontrol

Beberapa panel server menghasilkan `SandboxSettings.ini` saat startup. RandomDay tidak dapat mempertahankan profil yang telah disiapkan jika alat lain menimpanya setelah penulisan diverifikasi. Konfigurasikan satu sumber sandbox otoritatif dan periksa penanda file segera sebelum dan setelah memulai ulang saat mendiagnosis Hari 1 yang berulang atau transisi yang hilang.
