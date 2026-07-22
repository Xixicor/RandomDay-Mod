<a id="choose-the-kind-of-game-you-want"></a>
# Pilih jenis permainan yang Anda inginkan

> **Sumber kanonis bahasa Inggris:** [CHOOSE_A_PROFILE.md](../../CHOOSE_A_PROFILE.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


RandomDay mencakup 289 set aturan dunia yang sudah jadi. Mereka dikelompokkan ke dalam 17 **keluarga**, dengan 17 **profil** di setiap keluarga:

- keluarga adalah satu gaya bermain yang luas, seperti bertahan hidup, membangun, diam-diam, atau eksplorasi;
- profil adalah satu set aturan lengkap dalam gaya bermain tersebut; dan
- nomor profil dipanggil sehari karena RandomDay berpindah melalui 17 posisi tersebut saat server dimulai ulang. Ini bukan hari kalender di dunia nyata.

Mulailah dengan tabel di bawah. Pilih baris yang terdengar paling dekat dengan sesi yang Anda inginkan, lalu buka satu atau dua laman keluarga untuk membandingkan efek persisnya.

<a id="start-with-a-playstyle"></a>
## Mulai dengan gaya bermain

| Anda ingin | Mulai dengan | Bandingkan efek ini |
|---|---|---|
| Sering pertarungan langsung atau lebih tajam baku tembak | [Aksi](PROFIL/KELUARGA/KELOMPOK_PROFIL_TINDAKAN.md), [Gerombolan](PROFIL/KELUARGA/KELUARGA_PROFIL_GEROMBOLAN.md), [Perburuan Bos](PROFIL/KELUARGA/KELUARGA_PROFIL_PERBURUAN_BOS.md), atau [Presisi](PROFIL/KELUARGA/KELUARGA_PROFIL_PRESISI.md) | Jumlah musuh, tingkat pertemuan, akurasi, kerusakan, dan hari pemulihan |
| Deteksi, kegelapan, atau tekanan patroli | [Siluman](PROFIL/KELUARGA/KELUARGA_PROFIL_SILUMAN.md), [Mimpi buruk](PROFIL/KELUARGA/KELUARGA_PROFIL_MIMPI_BURUK.md), atau [Penguncian Keamanan](PROFIL/KELUARGA/KELUARGA_PROFIL_PENGUNCIAN_KEAMANAN.md) | Visibilitas, kecepatan deteksi, bias malam, robot, dan interval aman |
| Kelaparan, cuaca, kontaminasi, atau gesekan | [Bertahan Hidup](PROFIL/KELUARGA/KELUARGA_PROFIL_KELANGSUNGAN_HIDUP.md), [Lapukan](PROFIL/KELUARGA/KELUARGA_PROFIL_CUACA.md), atau [Biohazard](PROFIL/KELUARGA/PROFIL_BIOHAZARD_KELUARGA.md) | Sumber daya, air, radiasi, cuaca, daya tahan, dan hukuman mati |
| Pertumbuhan dasar, pengangkutan, inventaris, atau perencanaan pasokan | [Pembangun](PROFIL/KELUARGA/KELUARGA_PROFIL_PEMBANGUN.md) atau [Logistik](PROFIL/KELUARGA/KELOMPOK_PROFIL_LOGISTIK.md) | Ukuran tumpukan, inventaris, berat, daya tahan, daya, dan konstruksi tekanan |
| Perjalanan, portal, rute penjarahan, atau eksplorasi | [Ekspedisi](PROFIL/KELUARGA/KELUARGA_PROFIL_EKSPEDISI.md), [Anteverse](PROFIL/KELUARGA/KELUARGA_PROFIL_ANTEVERSE.md), atau [Pemulung](PROFIL/KELUARGA/KELUARGA_PROFIL_PEMULUNG.md) | Pergerakan, tekanan portal, imbalan, risiko rute, dan waktu menjauh dari dasar |
| Kombinasi yang tidak dapat diprediksi atau tantangan akhir yang luas | [Eksperimental](PROFIL/KELUARGA/KELUARGA_PROFIL_EKSPERIMENTAL.md) atau [Uji Kepatuhan](PROFIL/KELUARGA/KELUARGA_PROFIL_UJI_KEPATUHAN.md) | Setiap hari dalam perkembangan yang sengaja dicampur ini |

Saran ini adalah navigasi, bukan pengganti nilai pasti. Setiap laman keluarga mencantumkan efek utama, peringkat domain, konteks perjumpaan, 46 setelan kotak pasir, dan pilihan adaptor opsional untuk setiap hari.

<a id="confirm-the-exact-family-and-day"></a>
## Konfirmasikan keluarga dan hari yang tepat

1. Buka laman keluarga dan bandingkan semua posisi 17 hari.
2. Gunakan [referensi profil lengkap](PROFIL/REFERENSI_PROFIL_LENGKAP.md) untuk membandingkan nama profil dan aturan interpretasi di seluruh 289 kombinasi.
3. Gunakan [kunci pengaturan sandbox](PROFIL/TOMBOL_PENGATURAN_SANDBOX.md) untuk menafsirkan setiap nilai mentah, rentang yang didukung, rentang skor, dan default profil yang dikirimkan.
4. Gunakan [`profiles.generated.json`](../../profiles/profiles.generated.json) saat perkakas memerlukan profil, kamus, dan sumber terjemahan yang tepat dan dapat dibaca mesin.

<a id="configure-the-chosen-experience"></a>
## Konfigurasi pengalaman yang dipilih

Ikuti [Pilih pengalaman](KONFIGURASI.md#choose-an-experience) untuk mengatur mode keluarga, daftar keluarga yang memenuhi syarat, perilaku hari awal, dan urutan hari yang berurutan atau tidak berulang secara acak. RandomDay mempertahankan urutan yang dipilih; pemulihan tidak secara diam-diam memutar ulang proses keluarga yang sedang berlangsung.
