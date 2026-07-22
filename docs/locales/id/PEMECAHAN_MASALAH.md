<a id="troubleshooting"></a>
# Pemecahan masalah

> **Sumber kanonis bahasa Inggris:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Berhenti pada pemeriksaan pertama yang gagal. Pertahankan sandbox saat ini, `runtime/`, `web_export/`, dan `UE4SS.log` yang relevan sebelum mencoba pemulihan.

<a id="try-these-common-fixes-first"></a>
## Coba perbaikan umum ini terlebih dahulu

1. **RandomDay tidak pernah muncul:** konfirmasi `RandomDay` ada tepat di dalam `ue4ss/Mods`, aktifkan `RandomDay : 1` di `mods.txt`, dan mulai sekali.
2. **Sesi saat ini tetap mempertahankan aturan lama:** ini normal. RandomDay menyiapkan profil berikutnya; permainan memuatnya di awal yang lebih lambat.
3. **Profil yang sama terus muncul:** panel server mungkin diganti `SandboxSettings.ini`. Gunakan satu file sandbox otoritatif dan bandingkan nama yang aktif dan yang telah disiapkan di `web_export/today.html`.
4. **Mod opsional tidak mengikuti profil:** buka [Mod opsional yang didukung](ADAPTOR_YANG_DIDUKUNG.md). Mod opsional yang hilang, dinonaktifkan, atau tidak dikenali tidak akan diubah.
5. **RandomDay melaporkan kegagalan penulisan atau pemulihan:** berhenti sebelum memulai ulang lagi, pertahankan `runtime/backups/`, dan ikuti bagian pemulihan bernama di bawah.

Jika kelima pemeriksaan tersebut tidak mengidentifikasi masalah, lanjutkan dengan pohon keputusan mendetail.

<a id="choose-the-first-failed-stage"></a>
## Pilih tahap pertama yang gagal

Gunakan baris pertama yang sesuai dengan apa yang sebenarnya dapat Anda buktikan. Jangan memulai dengan penjelasan yang paling parah, dan jangan gabungkan kegagalan keluaran yang tidak terkait ke dalam satu diagnosis.

| Apa yang dapat Anda amati | Periksa dulu | Lanjutkan dengan | Hasil yang diharapkan |
|---|---|---|---|
| Tidak ada `[RandomDay]` garis awal ada di `UE4SS.log`. | Instal root, penanda paket, `mods.txt` saat ini, dan UE4SS Startup Lua. | [Pulihkan RandomDay yang hilang start](#restore-a-missing-randomday-start) | Satu baris awal memberi nama mode rilis dan paket, atau kegagalan pasti terjadi pada pemuatan. |
| RandomDay dimuat, tetapi tidak ada profil yang siap. | Kesalahan startup, konfigurasi, target, transaksi, atau status pertama. | [Pemulihan dari persiapan yang gagal](#recover-from-failed-preparation), lalu [referensi status dan kesalahan](REFERENSI_STATUS_DAN_KESALAHAN.md) | Satu kode yang tepat mengidentifikasi tindakan aman berikutnya. |
| Ada profil yang disiapkan, tetapi aturan yang berjalan tidak ubah. | ID yang aktif dan telah disiapkan di `today.json` atau `today.html`. | [Konfirmasi batas restart](#confirm-the-restart-boundary) | Sesi saat ini tetap aktif; profil yang telah disiapkan menunggu untuk dimulai lebih lambat. |
| Hari 1 atau hari berikutnya berulang setelah dimulai ulang. | Penanda kotak pasir sebelumnya panel dimulai, setelah panel dimulai, dan setelah persiapan. | [Hentikan persiapan yang berulang](#stop-repeated-preparation) | Titik penulis atau penimpaan yang berwenang diidentifikasi. |
| Sandbox berfungsi dengan baik, tetapi mod opsional dilewati atau gagal. | Hasil adaptor individual dan bukti kompatibilitas. | [Diagnosis adaptor yang dilewati](#diagnose-a-skipped-adapter) atau [Memulihkan kegagalan rollback adaptor](#recover-an-adapter-rollback-failure) | Kesehatan adaptor ditentukan secara independen dari sandbox kesehatan. |
| File singleplayer/LAN manual tidak ada. | Mode paket dan folder keluaran terbatas. | [Buat singleplayer/LAN file](#generate-a-missing-singleplayerlan-file) | File dibuat di dalam RandomDay tanpa menemukan penyimpanan pribadi. |
| Hanya pesan yang dilihat oleh pemain yang hilang atau terbungkus dengan buruk. | Log message-pass, pratinjau sumber, dan batasan yang terdokumentasi. | [Diagnosis masalah pesan](#diagnose-a-message-problem) | Presentasi diuji tanpa diperlakukan sebagai bukti profil. |

<a id="follow-the-safe-diagnostic-order"></a>
### Ikuti urutan diagnostik yang aman

1. Simpan bukti terkini sebelum mengubah file.
2. Buktikan apakah RandomDay dimuat.
3. Temukan tahap pertama yang tidak mencapai hasil yang didokumentasikan.
4. Salin status yang tepat atau nilai kesalahan dari keluaran runtime.
5. Gunakan baris tabel yang cocok di bawah untuk satu respons yang aman.
6. Baca kembali status target dan rotasi sebelum memulai berikutnya.

Jika tidak ada baris yang cocok, gunakan [Runtime State dan Referensi Output](OUTPUT_RUNTIME.md) untuk mengidentifikasi produser dan arti bidang sebelum mengubah konfigurasi.

<a id="restore-a-missing-randomday-start"></a>
## Pulihkan RandomDay yang hilang start

**Kemungkinan besar penyebab terikat:** tata letak ekstraksi salah, mod dinonaktifkan, mode paket salah, atau UE4SS tidak memuat titik masuk Lua.

**Pemeriksaan persis:** konfirmasi `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version` saat ini, dan `RandomDay/Scripts/main.lua`; konfirmasi `RandomDay : 1` di `mods.txt`; telusuri `UE4SS.log` untuk `[RandomDay]`.

**Hasil yang diharapkan:** satu baris awal memberi nama identitas rilis dan mode paket.

**Tindakan aman berikutnya:** perbaiki tata letak atau pengaktifan saat dihentikan, lalu mulai sekali.

**Jangan menyimpulkan:** tidak RandomDay tidak membuktikan bug game atau profil.

<a id="confirm-the-restart-boundary"></a>
## Konfirmasi batas restart

**Kemungkinan besar penyebab terikat:** perilaku restart berikutnya yang normal.

**Pemeriksaan persis:** bandingkan yang aktif dan yang disiapkan family/day di `web_export/today.json` atau `today.html`.

**Hasil yang diharapkan:** profil yang disiapkan berbeda dari, atau secara eksplisit terpisah dari, profil aktif.

**Tindakan aman berikutnya:** restart hanya ketika Anda siap untuk mengaktifkannya, kemudian verifikasi penanda aktif.

**Jangan menyimpulkan:** profil yang disiapkan tidak aktif sebelum pasca-restart readback.

<a id="stop-repeated-preparation"></a>
## Hentikan persiapan yang berulang

**Kemungkinan besar penyebab terikat:** RandomDay yang aktif hilang karena panel server atau alat lain menulis ulang `SandboxSettings.ini` saat startup.

**Pemeriksaan persis:** yang aktif membandingkan file sandbox dan RandomDay segera sebelum memulai, setelah panel dimulai, dan setelah RandomDay menyiapkan file.

**Hasil yang diharapkan:** file yang ada pada boot berikutnya mempertahankan penanda yang telah disiapkan.

**Tindakan aman berikutnya:** mengonfigurasi satu sumber sandbox otoritatif dan menonaktifkan penulisan ulang panel yang bertentangan.

**Jangan menyimpulkan:** diulangi Hari ke-1 tidak membuktikan keluarga pemilih salah mengacak.

<a id="recover-from-failed-preparation"></a>
## Pemulihan dari persiapan yang gagal

**Kemungkinan besar penyebab terikat:** penulisan tertunda, pencadangan, promosi, pembacaan kembali produksi, validasi, atau rollback gagal.

**Pemeriksaan persis:** baca `[RandomDay] [ERROR]` pertama dan menyimpan cadangan operasi bernama. Periksa `runtime/last_good/manifest.lua` sebelum menggunakan file sandbox-nya.

**Hasil yang diharapkan:** pertama apakah file sebelumnya diverifikasi sebagai dipulihkan atau hasilnya dengan jelas melaporkan kegagalan pemulihan.

**Tindakan aman berikutnya:** biarkan server berhenti dan ikuti [pemulihan manual](OPERASI.md#manual-recovery).

**Jangan menyimpulkan:** keberadaan file cadangan saja tidak membuktikan bahwa file tersebut cocok dengan status dunia aktif yang dimaksudkan.

<a id="diagnose-a-skipped-adapter"></a>
## Diagnosis adaptor yang dilewati

**Kemungkinan besar penyebab terikat:** mod tidak ada atau file tidak cocok dengan tanda tangan yang didukung.

**Pemeriksaan persis:** baca hasil adaptor dan bandingkan versi dan tata letak yang diinstal dengan [Adaptor Mod yang Didukung](ADAPTOR_YANG_DIDUKUNG.md).

**Hasil yang diharapkan:** `not_installed` untuk target yang tidak ada atau `skipped_incompatible` untuk target yang tidak dikenal.

**Tindakan aman berikutnya:** biarkan file tidak berubah, nonaktifkan adaptor tersebut, atau instal versi persis yang didukung dari pembuat aslinya.

**Jangan menyimpulkan:** nama file yang serupa atau versi yang lebih baru bukanlah bukti kompatibilitas.

<a id="recover-an-adapter-rollback-failure"></a>
## Memulihkan kegagalan rollback adaptor

**Kemungkinan besar penyebab terikat:** baik upaya penulisan maupun pemulihan otomatis tidak dapat diverifikasi.

**Pemeriksaan persis:** pertahankan target, saudara pending/rollback, status adaptor, dan cadangan adaptor terbaru di bawah `runtime/backups/`.

**Hasil yang diharapkan:** hasilnya adalah `rollback_failed`, bukan `applied`.

**Tindakan aman berikutnya:** menghentikan mod/server yang terpengaruh dan pulihkan cadangan terverifikasi secara manual sebelum peluncuran berikutnya.

**Jangan menyimpulkan:** RandomDay's hasil sandbox primer yang terpengaruh tidak membuktikan target adaptor terpisah sehat.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Buat singleplayer/LAN file

**Kemungkinan besar penyebab terikat:** paket khusus diinstal, penanda mode tidak valid, atau RandomDay tidak dimuat.

**Pemeriksaan persis:** `.randomday_mode` harus berisi `singleplayer_manual`; kemudian konfirmasikan baris awal RandomDay dan periksa `runtime/singleplayer_manual/SandboxSettings.ini`.

**Hasil yang diharapkan:** file ada di dalam RandomDay.

**Tindakan aman berikutnya:** instal paket yang benar dengan bersih dan mulai sekali.

**Jangan menyimpulkan:** RandomDay tidak akan mencari atau menulis dunia target atas nama Anda.

<a id="diagnose-a-message-problem"></a>
## Diagnosis masalah pesan

**Kemungkinan besar penyebab terikat:** tidak ada karakter pemain valid yang tersedia pada pass yang dijadwalkan, transport peringatan tidak tersedia, atau tampilan klien membungkus teks secara berbeda.

**Pemeriksaan persis:** periksa `[RandomDay]` dan bandingkan pesan sumber dengan batas panjang yang didokumentasikan.

**Hasil yang diharapkan:** laporan runtime apakah pass pesan berjalan; validasi sumber melaporkan panjang maksimum.

**Tindakan aman berikutnya:** verifikasi resolusi klien yang diinginkan. Pisahkan gameplay dan verifikasi profil dari hasil pesan.

**Jangan menyimpulkan:** pesan yang terlihat tidak membuktikan profil sandbox diterapkan, dan pesan yang hilang tidak membuktikan persiapan gagal.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Empat pilihan seluruh profil dikembalikan ke nilai yang dikirimkan

**Kemungkinan besar penyebab terikat:** hanya `SandboxSettings.ini` yang dihasilkan yang dihasilkan diedit, atau `server.lua` diubah saat proses Lua yang sama masih berjalan.

**Pemeriksaan persis:** yang dihasilkan menghentikan permainan atau server khusus, buka `RandomDay/Scripts/ax_config/server.lua`, dan konfirmasikan blok `sandbox.profile_overrides` yang disimpan berisi empat nilai yang dimaksud.

**Hasil yang diharapkan:** setelah permulaan berikutnya, setiap yang baru disiapkan family/day yang baru disiapkan berisi nilai yang dipilih. Rotasi profil selanjutnya dan server dimulai tetap menggunakan blok yang sama.

**Tindakan aman berikutnya:** perbaiki blok, mulai sekali, dan periksa profil yang telah disiapkan. Jangan hanya melakukan patch pada file sandbox yang dihasilkan karena persiapan selanjutnya akan menggantikannya.

<a id="look-up-an-exact-status"></a>
## Cari status yang tepat

Setelah pohon keputusan mengidentifikasi tahap yang gagal, salin nilai `status`, `transaction_status`, `rollback_status`, atau `error` nilai dari ekspor runtime. Gunakan [referensi status dan kesalahan](REFERENSI_STATUS_DAN_KESALAHAN.md) untuk mengetahui maknanya dan satu respons operator yang aman. Kata-kata serupa di panel atau konsol tidak menggantikan nilai yang diekspor.

Kegagalan lingkungan pengujian khusus kontributor termasuk dalam [validasi rilis](VALIDASI_RILIS.md#avoid-validation-environment-pitfalls), bukan dalam jalur pemulihan operator.
