<a id="glossary"></a>
# Glosarium

> **Sumber kanonis bahasa Inggris:** [GLOSSARY.md](../../GLOSSARY.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Ini adalah kosakata kanonik untuk dokumentasi RandomDay dokumentasi. Prosedur tertaut ke definisi ini alih-alih mendefinisikan ulang keadaan yang sama dalam beberapa panduan. Aturan bidang khusus skema tetap ada di [Output runtime](OUTPUT_RUNTIME.md).

| Istilah | Arti sederhana | Arti teknis yang tepat |
|---|---|---|
| Profil aktif | Aturan yang digunakan sesi saat ini. | family/day profil yang diidentifikasi oleh penanda RandomDay yang dibaca dari kotak pasir saat proses dimulai. |
| Profil yang telah disiapkan | Aturan siap untuk sesi berikutnya. | Profil family/day lengkap yang byte targetnya lolos validasi dan pembacaan kembali serta status rotasinya telah diterapkan. Profil ini tidak aktif sebelum memulai kembali pembacaan kembali. |
| Dipulihkan | Persiapan gagal dan byte terverifikasi sebelumnya dikembalikan. | Transaksi yang gagal melaporkan keberhasilan rollback dan pembacaan kembali salinan pemulihan asli atau terverifikasi yang disimpan. |
| Antrean reboot berikutnya | Satu pilihan yang telah disiapkan ditahan untuk booting berikutnya. | `next_reboot_queue` memilih satu kali per proses dan menggunakan kembali pilihan yang dimiliki boot tersebut selama pengawasan. |
| Bootstrap | Persiapan pertama ketika tidak ada penanda aktif. | Pemilihan hari pertama yang dikonfigurasi atau acak dari kelompok yang memenuhi syarat; `cycle.bootstrap_day` hanyalah cadangan kompatibilitas. |
| Keluarga | Perkembangan gaya bermain selama 17 hari. | Satu entri registri dan modul keluarga yang menghasilkan tepat 17 profil lengkap. |
| Rotasi | Lulus melalui keluarga yang memenuhi syarat. | Negara diidentifikasi oleh `rotation_id`, dengan tersedia, tersisa, dan daftar keluarga yang lengkap. |
| Jalankan | Satu keluarga di seluruh ID 17 hari. | Urutan terikat keluarga yang diidentifikasi oleh `run_id`; keluarga tetap terkunci sampai setiap posisi pesanan harian selesai. |
| Mode sesi | Cara operator menggunakan paket ini. | `persistent_dedicated`, `temporary_dedicated`, atau `singleplayer_lan`; mode paket masih mengontrol batas sistem file. |
| Urutan hari | Urutan persis yang digunakan oleh satu rangkaian yang dijalankan. | Permutasi 17 angka yang bertahan. Mode sekuensial selesai dari hari awalnya; mode acak mengacak satu kali tanpa pengulangan. |
| Penanda | Identitas disimpan dalam file sandbox. | `RANDOMDAY_*` kolom dirender dengan profil lengkap dan dibaca pada permulaan proses berikutnya. |
| Siap disiapkan | Penulisan dan penerapan status berhasil. | `prepared_ready=true` memerlukan hasil sandbox yang berhasil dan tidak ada kegagalan penerapan negara. Itu tidak membuktikan aktivasi. |
| Sudah terkini | Target sudah memiliki byte yang diinginkan. | Hash profil yang dirender cocok dengan target, sehingga RandomDay memverifikasi pemetaan milik last-good/mirror berfungsi tanpa menulis ulang byte utama. |
| Persistensi status menurun | Byte kotak pasir berhasil tetapi pembukuan rotasi tidak. | `profile_status=degraded_state_persistence`; adaptor dan perpesanan profil yang telah disiapkan dilewati. |
| File tertunda | Byte kandidat belum dipromosikan. | `<target>.randomday.pending`, ditulis, dibaca kembali, dan divalidasi sebelum penggantian. |
| File rollback | File asli disimpan selama penggantian. | `<target>.randomday.rollback`, digunakan untuk memulihkan produksi jika promosi atau kegagalan validasi. |
| Cadangan operasi | Salinan tahan lama yang dibuat sebelum mutasi. | File terverifikasi di bawah `runtime/backups/` untuk transaksi utama, mirror, atau adaptor. |
| Barang terakhir yang diketahui | Sandbox terbaru yang diterima untuk pemulihan. | `runtime/last_good/SandboxSettings.ini` ditambah `manifest.lua`; pasangan ini mencatat identitas profil dan hash. |
| Mirror | Target sandbox kedua opsional. | Target yang dikonfigurasi secara eksplisit atau berasal dari nama dunia yang ditulis setelah primer melalui transaksinya sendiri. |
| Mode paket | Batas pemasangan yang dipilih oleh rilis aset. | `dedicated_server` atau `singleplayer_manual` dari `.randomday_mode`. |
| Mode penyalinan manual | Singleplayer/LAN pembuatan tanpa menyimpan penemuan. | `singleplayer_manual` hanya menulis di dalam `runtime/singleplayer_manual/` dan menonaktifkan adaptor dan mirror. |
| Adaptor | RandomDay-owned memetakan mod lain yang diinstal. | Rencana transaksi dengan gerbang tanda tangan yang memperbarui tugas yang ada hanya setelah pencadangan dan pemeriksaan kompatibilitas. |
| Tata letak yang dikenali | Bentuk file adaptor yang tepat diterima untuk penulisan. | Semua kunci tanda tangan dan file target yang diperlukan ada; nama file saja tidak cukup. |
| `not_installed` | Target opsional tidak ditemukan. | Hasil adaptor aman tanpa mutasi. |
| `skipped_incompatible` | Target ada tetapi bentuknya tidak didukung. | Hasil adaptor aman tanpa mutasi karena tanda tangan lengkap tidak cocok. |
| `failed_rolled_back` | Perubahan gagal dan sebelumnya byte utuh. | Transaksi adaptor gagal sebelum mutasi atau semua file yang terpengaruh dipulihkan dan diverifikasi. |
| `rollback_failed` | Pemulihan otomatis tidak dapat diverifikasi. | Status adaptor hard-stop yang memerlukan pemulihan manual dari cadangan yang direkam. |
| Kamus | Pemetaan dari nilai mentah ke publik penjelasan. | `randomday_dictionary_v2`, dihasilkan dari `dictionary.lua` dan disertakan dalam keluaran status waktu proses. |
| Terjemahan | Tampilan manusia berasal dari nilai profil mentah. | Skor, fakta, ringkasan, dan pesan domain terikat yang dihasilkan oleh `translation.lua`; nilai mentah tetap berwibawa. |
| Status publik | Ringkasan operator yang dapat dibaca mesin yang disanitasi. | `web_export/today.json` menggunakan `randomday_public_status_v2`. |
| Status runtime | Snapshot lokal mendetail yang dapat dibaca mesin. | `runtime/current/randomday_status.json` menggunakan `randomday_runtime_status_v2`. |
