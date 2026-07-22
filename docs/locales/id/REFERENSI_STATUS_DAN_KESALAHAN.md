<a id="status-and-error-reference"></a>
# Referensi status dan kesalahan

> **Sumber kanonis bahasa Inggris:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Gunakan `status`, `transaction_status`, `rollback_status` saat ini, dan `error` nilai dari ekspor waktu proses. Kata-kata serupa di panel atau konsol bukan pengganti kolom tersebut.

Bagian ini adalah referensi pencarian lengkap. Pohon keputusan di atas memilih kategori yang relevan; tabel ini mempertahankan nilai alat berat yang tepat dan respons operator yang aman.

<a id="normal-or-informational-states"></a>
## Status normal atau informasional

| Status | Arti | Respon operator |
|---|---|---|
| `prepared_for_next_reboot` | Profil yang divalidasi telah ditulis untuk booting berikutnya. | Tidak ada tindakan; sesi saat ini tidak berubah. |
| `next_reboot_already_prepared` | Profil selanjutnya yang dimaksud sudah sesuai dengan target. | Tidak ada tindakan; jangan memaksakan rotasi lagi. |
| `already_current` / `unchanged` | Target sudah berisi byte yang diinginkan. | Tidak ada tindakan. |
| `applied` | Pembacaan ulang penulisan dan produksi berhasil. | Verifikasi perbedaan active/prepared setelah booting berikutnya. |
| `bootstrap_prepare_first_family_start_day` | Tidak ada status rotasi sebelumnya ada, sehingga hari pertama yang dikonfigurasi telah disiapkan. | Diharapkan pada penggunaan pertama. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Keadaan yang disimpan telah dipulihkan dan profil yang sama telah ditulis ulang. | Verifikasi hari pemulihan; tidak ada pilihan acak baru yang terjadi. |
| `supervision_reconfirm_prepared_profile_no_advance` | Kartu pengawasan mengonfirmasi persiapan yang ada. | Diharapkan; antrian tidak maju dua kali. |
| `external_mods_disabled` | Pemrosesan adaptor opsional dinonaktifkan. | Tidak ada tindakan kecuali adaptor memang dimaksudkan. |
| `external_mods_processed` | Semua paket adaptor yang diaktifkan mencapai hasil terminal. | Tinjau setiap baris adaptor. |

<a id="startup-configuration-errors"></a>
## Kesalahan konfigurasi startup

Pesan-pesan ini menghentikan startup sebelum RandomDay menulis profil. Perbaiki pengaturan bernama atau penanda paket; jangan melewati cabang validasi.

| Teks kesalahan | Arti | Respon aman |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` hilang, formatnya salah, atau dari paket yang salah. | Instal ulang satu paket lengkap ke dalam folder staging yang bersih dan pertahankan penanda mode yang diinginkan. |
| `invalid experience.mode` | `experience.mode` bukan salah satu nilai yang didokumentasikan. | Gunakan `auto`, `persistent_dedicated`, `temporary_dedicated`, atau `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | A paket penyalinan manual dikonfigurasi sebagai server khusus. | Pulihkan `auto` atau `singleplayer_lan`; jangan arahkan ke dunia luar secara otomatis. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Paket khusus telah dikonfigurasi untuk alur kerja penyalinan manual. | Gunakan `auto`, `persistent_dedicated`, atau `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | Pemilih hari awal tidak valid. | Gunakan dengan tepat `configured` atau `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | Pemilih urutan hari tidak valid. | Gunakan dengan tepat `sequential` atau `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | Hari mulai yang dikonfigurasi adalah pecahan atau di luar siklus. | Gunakan bilangan bulat dari 1 hingga `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | Pencadangan atau pemulihan terakhir yang baik telah dinonaktifkan. | Pulihkan kedua kunci pengaman; RandomDay dengan sengaja menolak penulisan yang tidak aman. |
| `external adapter transaction safety locks must remain true` | Patching adaptor atau perlindungan cadangan dinonaktifkan. | Pulihkan kedua kunci pengaman adaptor atau nonaktifkan adaptor secara berkelompok. |
| `paths.world_name must be one folder name` | Nama dunia yang dikonfigurasi berisi pemisah atau karakter tidak aman. | Masukkan hanya nama folder yang tepat, menggunakan huruf, angka, spasi, garis bawah, atau tanda hubung. |
| `required runtime directory unavailable` | Direktori keluaran mod-lokal yang diperlukan tidak dapat dibuat atau dikonfirmasi. | Periksa hanya direktori bernama RandomDay dan izin menulisnya. |

<a id="profile-wide-configuration-errors"></a>
## Kesalahan konfigurasi seluruh profil

Kesalahan ini menghentikan pembuatan profil sebelum penulisan sandbox.

| Teks kesalahan | Arti | Respon aman |
|---|---|---|
| `sandbox.profile_overrides must be a table` | Empat pilihan seluruh profil diganti dengan tipe Lua yang lain. | Pulihkan tabel yang didokumentasikan di `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | Tabel berisi pengaturan yang bukan salah satu dari empat kunci yang didukung. | Hapus kunci bernama dan gunakan sumber family/profile untuk pengaturan sandbox lainnya. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` atau `AllowIronMode` bukan `true` atau `false`. | Gunakan boolean Lua tanpa tanda kutip. |
| `sandbox.profile_overrides.<key> must be integer` | Nilai dukungan bukan bilangan bulat. | Gunakan bilangan bulat. |
| `sandbox.profile_overrides.<key> outside supported range` | Nilai dukungan berada di luar `0..1000`. | Pilih bilangan bulat dari `0` sampai `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Kembalikan dan status peralihan

| Nilai | Arti | Respon aman |
|---|---|---|
| `not_started` / `pending` | Transaksi atau paket adaptor belum mencapai hasil terminal. | Tunggu hanya izin startup yang dibatasi saat ini; keadaan persisten memerlukan penyelidikan. |
| `not_needed` | Tidak diperlukan rollback. | Tidak ada tindakan. |
| `original_held` | Target asli dipindahkan ke posisi pemulihan sebelum promosi. | Jangan menghapus file pemulihan saat transaksi belum selesai. |
| `retained_after_success` | Target baru diverifikasi, namun data pemulihan tetap ada karena pembersihan tidak tersedia atau sengaja disimpan. | Verifikasi byte produksi sebelum menghapus file pemulihan bernama apa pun. |
| `discarded_after_success` | Data rollback sementara dan terverifikasi pengganti telah dihapus. | Tidak ada tindakan. |
| `rollback_failed` | Upaya pemulihan tidak dapat diverifikasi. | Biarkan server tetap berhenti dan gunakan cadangan operasi terverifikasi terakhir. |
| `skipped_state_persistence_failed` | Byte kotak pasir telah disiapkan, tetapi status rotasi telah disiapkan tidak bertahan, sehingga adaptor dan pesan pemain yang disiapkan dilewati. | Memperbaiki penyimpanan status waktu proses; jangan memutar ulang atau memajukan antrean secara manual. |
| `failed` | Baris ringkasan mewakili kegagalan terminal yang penyebab spesifiknya ada di `error` atau kolom transaksi. | Ikuti kode spesifik pertama; jangan memecahkan masalah hanya dari `failed`. |

<a id="transaction-failures"></a>
## Kegagalan transaksi

| Status | Arti | Respon aman |
|---|---|---|
| `invalid_input` | Permintaan penggantian bukan teks yang valid atau tidak memiliki target yang valid. | Konfigurasi yang benar; jangan coba lagi tanpa perubahan. |
| `stale_pending_cleanup_failed` | File lama yang tertunda tidak dapat dihapus. | Hentikan dan simpan file yang tertunda sebelum pembersihan manual. |
| `stale_rollback_requires_review` | Data pemulihan ada di samping target saat ini dan tidak dapat dibuang dengan aman. | Bandingkan byte target dan rollback sebelum memilih keduanya. |
| `interrupted_transaction_restore_failed` | Pemulihan setelah penggantian terputus tidak dapat memulihkan target. | Biarkan server berhenti dan pulihkan cadangan terverifikasi. |
| `interrupted_transaction_cleanup_failed` | Target telah dipulihkan tetapi data transaksi lama tidak dapat dihapus. | Verifikasi byte target, lalu hapus hanya sidecar basi yang bernama. |
| `pending_write_failed` | Kandidat tidak dapat ditulis. | Periksa direktori target yang sempit dan ruang kosong. |
| `pending_readback_failed` / `pending_readback_mismatch` | Bita kandidat tidak dapat dibaca atau dibedakan setelah penulisan. | Jangan promosikan file yang tertunda. |
| `pending_validation_failed` | Kandidat gagal schema/profile validasi sebelum promosi. | Perbaiki kunci atau aturan yang dilaporkan; jangan mengabaikan validasi. |
| `operation_backup_failed` / `backup_failed` | Cadangan pra-tulis yang terverifikasi tidak dibuat. | Berhenti; tidak ada pengganti target yang dapat dipercaya. |
| `original_preserved_move_failed` | Target asli tidak dapat dipindahkan ke posisi pemulihan. | Simpan semua file transaksi dan pulihkan secara manual. |
| `promotion_failed` | Kandidat yang tertunda tidak dapat menjadi target produksi. | Periksa apakah file asli telah dipulihkan sebelum mencoba lagi. |
| `production_validation_failed` | Byte yang dipromosikan gagal dalam produksi readback/validation. | Pulihkan cadangan terverifikasi dan periksa penulis target. |
| `replacement_committed_recovery_cleanup_failed` | Penggantinya valid, namun data rollback tidak dapat dihapus. | Perlakukan target sebagai komitmen; hapus hanya data pemulihan basi yang terverifikasi. |
| `rollback_failed` | Pemulihan otomatis tidak memverifikasi. | Biarkan server tetap berhenti dan gunakan pemulihan manual. |

<a id="target-profile-adapter-and-export-failures"></a>
## Kegagalan target, profil, adaptor, dan ekspor

| Status | Arti | Respon aman |
|---|---|---|
| `target_refused` | Jalur yang dikonfigurasi berada di luar batas mode yang diizinkan. | Perbaiki jalur; jangan pernah melemahkan batasan tersebut. |
| `target_directory_failed` | Direktori target tidak dapat dibuat atau dikonfirmasi. | Periksa hanya keberadaan dan izin direktori tersebut. |
| `profile_validation_failed` | Profil tidak memiliki kunci, memiliki type/range yang salah, atau melanggar aturan invarian yang tersisa. | Gunakan yang bernama kunci, `sandbox.profile_overrides`, dan referensi profil untuk memperbaiki sumber. |
| `skipped_incompatible` | Mod opsional ada tetapi tidak cocok dengan tanda tangan adaptor yang didukung. | Biarkan tidak berubah atau nonaktifkan adaptor tersebut. |
| `external_mods_partial` | Beberapa adaptor opsional telah selesai dan yang lainnya aman skipped/failed. | Tinjau baris adaptor secara independen; hasil sandboxnya terpisah. |
| `external_adapter_failed` | Adaptor yang diperlukan tidak selesai dengan aman. | Pulihkan cadangan terverifikasinya sebelum mencoba lagi. |
| `degraded_state_persistence` | Persiapan sandbox selesai, namun persistensi status rotasi tidak. | Jangan berasumsi bahwa booting berikutnya dapat dilanjutkan dengan benar; memperbaiki penyimpanan negara. |
| `export_directory_failed` | `web_export/` tidak dapat dibuat atau ditulis. | Persiapan gameplay mungkin masih valid; perbaiki pelaporan secara terpisah. |

<a id="translation-and-message-validation-errors"></a>
## Kesalahan terjemahan dan validasi pesan

Ini adalah kegagalan kamus atau kontrak presentasi. Profil tersebut divalidasi sebelum rilis dan mungkin juga muncul sebagai peringatan status waktu proses yang terbatas.

| Teks kesalahan | Arti | Respon aman |
|---|---|---|
| `dictionary coverage mismatch` | Kamus profil tidak menjelaskan setiap setelan yang didokumentasikan. | Tambahkan entri kamus yang hilang dan jalankan kembali profil generation/validation. |
| `missing profile setting` | Profil yang dipilih tidak memiliki setelan yang diperlukan oleh dictionary/schema. | Perbaiki sumber keluarga profil; jangan membuat default waktu proses. |
| `empty explanation` | Setelan ada tetapi tidak memiliki penjelasan operator/player. | Tambahkan penjelasan dalam bahasa sederhana sebelum rilis. |
| `join line too wide` | Baris gabungan yang dihasilkan melebihi batas sumber 42 karakter. | Persingkat frasa kamus; jangan mengandalkan pembungkusan klien. |
| `join message too tall` | Ringkasan gabungan yang dihasilkan melebihi empat baris. | Kurangi atau prioritaskan ulang konten pesan. |
