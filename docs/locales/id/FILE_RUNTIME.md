<a id="locate-runtime-files-and-status"></a>
# Temukan file runtime dan status

> **Sumber kanonis bahasa Inggris:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Ini adalah inventaris jalur kanonik yang digunakan oleh operator dan ketertelusuran sumber. Ini menjawab di mana file berada, siapa yang menulisnya, kapan berubah, berapa lama file tersebut bertahan, dan peran pemulihan apa yang dijalankannya. [referensi keluaran runtime](OUTPUT_RUNTIME.md) memiliki skema, arti kolom, status kosong, dan interpretasi nilai mesin.

Semua jalur dalam panduan ini bersifat relatif terhadap folder `RandomDay/` yang diinstal kecuali dinyatakan lain. Output runtime dibuat setelah instalasi; mereka dikecualikan dari ZIP rilis.

<a id="operator-file-map"></a>
## Peta file operator

| Jalur | Produser dan pemicu | Pembaruan dan retensi | Makna dan pemulihan |
|---|---|---|---|
| Utama yang dikonfigurasi `SandboxSettings.ini` | `ax_sandbox/writer.lua` setelah serialisasi dan validasi profil dalam mode khusus. | Diganti secara transaksional; target dikonfigurasikan oleh operator atau diturunkan dari instalasi. | Profil lengkap untuk permulaan berikutnya. Sesi yang berjalan mempertahankan aturan yang sudah dimuat. |
| Mirror yang dikonfigurasi `SandboxSettings.ini` | Penulis sandbox setelah hasil utama berhasil ketika mirror eksplisit memenuhi syarat. | Penggantian transaksional dengan upaya terbaik. | Hanya salinan sekunder; mirror tidak menggantikan konfigurasi jalur utama yang benar. |
| Target adaptor yang dikenali | `ax_external/bridge.lua` setelah pencocokan tanda tangan tata letak selesai. | Penugasan yang ada diubah secara transaksional dengan cadangan unik. | Konfigurasi mod yang diinstal secara terpisah; periksa hasil adaptor enam negara secara independen dari sandbox utama. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` setelah transaksi sandbox berhasil. | Diganti secara transaksional setelah setiap persiapan yang diterima. | Pembukuan antrian. Jika tidak dapat dibaca, RandomDay mencoba keadaan terakhir yang baik. |
| `runtime/rotation_state.last_good.txt` | Cadangan transaksi kalender. | Diganti ketika keadaan saat ini diperbarui. | Keadaan yang dapat dibaca sebelumnya; pertahankan selama diagnosis dan pembaruan. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` setelah sukses, penurunan persistensi, atau kegagalan penulisan. | Diganti secara transaksional pada setiap status pass. | Terstruktur kanonis active/prepared, transaksi, terjemahan, dan ringkasan adaptor. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` di samping status. | Diganti secara transaksional. | Skema `randomday_runtime_dictionary_v2`: istilah, pengaturan terjemahan, domain, mode paket, dan status pemilihan. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` di samping status. | Diganti secara transaksional. | Pratinjau pesan berbatas tepat untuk peninjauan operator; ini tidak membuktikan rendering klien. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` setelah hasil sandbox utama terverifikasi. | Diganti secara transaksional. | Sandbox terakhir diterima sebagai barang yang diketahui baik. Gunakan hanya dengan manifesnya. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua` setelah snapshot sandbox berhasil. | Diganti secara transaksional sebagai pasangan dengan snapshot sandbox. | Versi, ID profil, nama, hari, hash konten, dan waktu penulisan untuk file yang terakhir bagus. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Penulis utama atau cermin sebelum mutasi. | Direktori operasi unik; RandomDay tidak memangkasnya. | Byte pra-tulis terverifikasi. Penyimpanan dimiliki oleh operator setelah peninjauan. |
| `runtime/backups/external_<operation>/...` | Jembatan adaptor sebelum mutasi adaptor apa pun. | Direktori operasi unik; tidak ada pemangkasan otomatis. | Satu salinan terverifikasi dari setiap target adaptor yang direncanakan. |
| `runtime/pending/` | Dibuat oleh penyiapan direktori runtime. | Dicadangkan; transaksi utama saat ini menggunakan sidecar saudara. | Jangan perlakukan direktori kosong sebagai bukti persiapan. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Penulis kotak pasir dalam mode `singleplayer_manual`. | Diganti secara transaksional ketika paket manual berjalan. | File lengkap untuk diperiksa dan disalin secara manual oleh operator menjadi satu dunia yang terhenti. |
| `web_export/today.json` | `ax_web/export.lua` setelah setiap hasil persiapan. | Diganti secara transaksional. | Hasil active/prepared dan writer/adapter ringkas yang dapat dibaca mesin. |
| `web_export/today.html` | `ax_web/export.lua` setelah lolos ekspor berhasil. | Diganti secara transaksional. | Tampilan manusia berasal dari transisi yang sama; bukan bukti independen. |
| `UE4SS.log` | UE4SS dan `ax_core/log.lua`. | Dikelola oleh UE4SS, bukan RandomDay. | Startup, profil yang dipilih, penulisan, adaptor, pesan, status, dan baris kegagalan yang diawali dengan `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Kenali status file yang kosong dan gagal

- Target utama atau target cermin yang hilang mungkin dibuat. Profil yang tidak valid, penulisan yang tertunda, promosi, atau kegagalan pembacaan kembali produksi belum siap. Kegagalan mirror tidak mengubah hasil utama yang diterima.
- `runtime/singleplayer_manual/SandboxSettings.ini` mungkin terjadi saat pertama kali dijalankan secara manual. Kegagalan pembangkitan tetap terlihat dalam status dan keluaran log.
- `rotation_state.txt` yang tidak dapat dibaca dapat kembali ke kondisi terakhir baik atau bootstrap berbasis penanda. Komitmen status gagal menghasilkan `degraded_state_persistence`.
- `runtime/last_good/` mungkin tidak ada sebelum target terverifikasi pertama. Jika pembaruan manifes yang dipasangkan gagal, RandomDay memulihkan pasangan yang diterima sebelumnya.
- `runtime/backups/mirror_<operation>/` adalah lokasi pencadangan khusus mirror. Tidak ada file cadangan utama atau cadangan cermin jika target tersebut tidak ada sebelum transaksi.
- Mutasi adaptor tidak dimulai ketika pembuatan cadangan atau pembacaan kembali gagal.
- Status saat ini, kamus, atau file pratinjau mungkin tidak ada jika keluaran status waktu proses tidak tersedia atau tidak lengkap.
- Hasil `export_failed` dapat meninggalkan hasil yang lebih lama `today.json` sudah ada. Kegagalan sandbox memperbarui JSON tetapi tidak menimbulkan kegagalan baru HTML halaman; bandingkan stempel waktu dengan `UE4SS.log`.
- Sespan yang sudah basi dan tertunda akan dihapus sebelum percobaan baru; kegagalan pembersihan menghentikan transaksi. Jika target produksi dan sidecar rollback ada, RandomDay menyimpan byte pemulihan untuk ditinjau.
- Tidak ada `[RandomDay]` baris awal di `UE4SS.log` berarti pemuatan mod tidak terbukti.

<a id="transaction-sidecars"></a>
## Sespan transaksi

Penulis transaksional dapat membuat file saudara di sampingnya target:

| Pola | Status | Tindakan operator |
|---|---|---|
| `<target>.randomday.pending` | Bita kandidat sebelum promosi. | Biasanya dihapus oleh promosi. Pertahankan jika terjadi kegagalan yang melaporkan masalah pembersihan atau pembacaan kembali yang tertunda. |
| `<target>.randomday.rollback` | Byte asli disimpan selama penggantian. | Biasanya dipulihkan jika gagal atau dihapus setelah keberhasilan terverifikasi. Jangan menghapusnya saat target juga ada; kombinasi tersebut memerlukan peninjauan. |
| `<target>.randomday.restore.pending` | Kandidat byte selama pemulihan adaptor. | Simpan dengan cadangan adaptor jika pemulihan gagal. |
| `<target>.randomday.restore.rollback` | Byte pemulihan disimpan selama pemulihan adaptor. | Pertahankan dan hentikan layanan yang terpengaruh jika pembersihan atau pemulihan tidak diverifikasi. |

File-file ini dapat berada di samping sandbox khusus atau target adaptor yang dipasang secara terpisah. Kehadiran mereka merupakan status transaksi, bukan bukti bahwa profil baru telah aktif.

<a id="interpret-file-contents"></a>
## Menafsirkan isi file

Gunakan [Status waktu proses dan referensi keluaran](OUTPUT_RUNTIME.md) untuk `rotation_state.txt`, `randomday_status.json` saat ini, dan `today.json` skema. Referensi tersebut juga memiliki status kosong, makna kegagalan, keluaran kamus, dan aturan bahwa status siap bukanlah status aktif. Gunakan [referensi status dan kesalahan](REFERENSI_STATUS_DAN_KESALAHAN.md) ketika nilai mesin yang tepat memerlukan tindakan operator.

<a id="rotation-state-fields"></a>
### Bidang status rotasi

Lihat kanonis [skema status rotasi](OUTPUT_RUNTIME.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Skema status saat ini

Lihat kanonis [status waktu proses JSON skema](OUTPUT_RUNTIME.md#runtime-status-json).

<a id="web-export-schema"></a>
### Skema ekspor web

Lihat kanonis [status publik JSON skema](OUTPUT_RUNTIME.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Simpan bukti pemulihan

RandomDay menimpa keadaan saat ini, status saat ini, keadaan terakhir yang baik, dan tampilan web. Ini menciptakan direktori cadangan operasi yang unik dan tidak menghapus yang lama. Pilih kebijakan penyimpanan di luar proses yang sedang berjalan, namun jangan pernah menghapus bukti pemulihan terbaru saat masalah penulisan, pembacaan kembali, status, atau rollback belum terselesaikan.
