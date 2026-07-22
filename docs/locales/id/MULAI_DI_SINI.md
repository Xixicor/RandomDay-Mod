<a id="start-here-complete-the-first-randomday-cycle"></a>
# Mulai di sini: selesaikan yang pertama RandomDay cycle

> **Sumber kanonis bahasa Inggris:** [START_HERE.md](../../START_HERE.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Panduan ini dimulai setelah RandomDay diinstal. Ini menunjukkan apa yang diubah oleh mod, apa yang ditinggalkannya, dan bagaimana mengenali satu siklus yang berhasil.

<a id="know-the-two-states"></a>
## Kenali kedua keadaan

Abiotic Factor membaca pengaturan sandbox dunia sebelum RandomDay dimulai. RandomDay oleh karena itu menyimpan dua status yang diberi nama dengan jelas:

- **Profil aktif:** aturan yang sudah digunakan sesi saat ini.
- **Profil yang disiapkan:** aturan yang disimpan untuk permulaan berikutnya.

Profil yang disiapkan tidak mengubah sesi yang sedang berlangsung.

<a id="dedicated-server-prepare-the-next-profile"></a>
## Server khusus: siapkan profil berikutnya

1. Mulai server secara normal.
2. Tunggu hingga RandomDay menyelesaikan pekerjaan permulaannya.
3. Buka `RandomDay/web_export/today.html` di folder mod yang diinstal.
4. Temukan **Profil aktif** dan **Profil yang telah disiapkan**.

Pada permulaan pertama yang berhasil, laman harus menyebutkan aturan yang sudah aktif dan profil berbeda menunggu berikutnya mulai. Halaman tersebut juga menjelaskan keluarga yang dipilih, posisi, dan apakah file yang disiapkan lolos pemeriksaan keamanan.

Jangan memulai ulang hanya untuk membuat perubahan status. Terus mainkan aturan aktif hingga server yang direncanakan berikutnya dimulai.

<a id="dedicated-server-activate-it-later"></a>
## Server khusus: aktifkan nanti

1. Hentikan dan mulai server pada rencana restart berikutnya.
2. Buka kembali halaman status yang dapat dibaca.
3. Konfirmasikan bahwa profil yang disiapkan sebelumnya kini terdaftar sebagai aktif.
4. Konfirmasikan bahwa RandomDay menyiapkan profil berikut.

Transisi persiapan-lalu-aktifkan itu sudah selesai RandomDay cycle.

<a id="temporary-dedicated-servers"></a>
## Server khusus sementara

Perilaku sementara menggunakan paket server khusus yang sama. Di [Konfigurasi](KONFIGURASI.md), pilih apakah proses baru dimulai pada profil tertentu atau pilih titik awal acak. Halaman status masih memisahkan profil aktif dari profil yang disiapkan untuk permulaan berikutnya.

<a id="singleplayer-or-lan"></a>
## Pemain tunggal atau LAN

1. Mulai permainan sekali dengan singleplayer/LAN paket terinstal.
2. Tutup game sepenuhnya setelah RandomDay selesai.
3. Baca ringkasan yang dihasilkan.
4. Salin `SandboxSettings.ini` ke dunia yang Anda pilih saat game ditutup.
5. Mulai dunia itu dan konfirmasikan aturan yang diharapkan.

Paket lokal tidak pernah memilih dunia atau menyalin file ke dalam penyimpanan dengan sendirinya. Lihat [Pemain tunggal dan LAN](LAN_PEMAIN_TUNGGAL.md) untuk prosedur selengkapnya.

<a id="if-the-expected-result-is-missing"></a>
## Jika hasil yang diharapkan tidak ada

Jangan terus-terusan memulai ulang. Pertahankan file saat ini dan pilih gejala yang cocok di [Pemecahan masalah](PEMECAHAN_MASALAH.md). Hasil normal selalu menyebutkan profil aktif dan profil yang telah disiapkan atau profil yang jelas gagal dalam persiapan.

<a id="continue"></a>
## Lanjutkan

- [Pilih gaya bermain](PILIH_PROFIL.md)
- [Pilih perilaku awal dan perkembangan](KONFIGURASI.md)
- [Operasikan dan pulihkan RandomDay](OPERASI.md)
- [Pahami rotasi](ROTASI_KELUARGA.md)
