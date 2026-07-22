<a id="seventeen-families-seventeen-days"></a>
# Seventeen Families, Seventeen Days

> **Sumber kanonis bahasa Inggris:** [FAMILY_ROTATION.md](../../FAMILY_ROTATION.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


RandomDay berisi 17 gaya bermain keluarga dengan 17 profil harian lengkap di setiap keluarga. Itu menghasilkan 289 family/day yang terdokumentasi.

Keluarga yang terdokumentasi menetapkan gaya lari yang luas. Hari 1 hingga 17 memberikan kemajuan keluarga dalam hal tekanan, pemulihan, kecepatan, dan sumber daya. Proses menyimpan satu pesanan yang berisi ID setiap hari tepat satu kali. Pengulangan ulang akan maju ke posisi tersimpan berikutnya; RandomDay tidak mengubah kelompok di tengah urutan.

<a id="selection-modes"></a>
## Mode Seleksi

| Mode | Perilaku baru dijalankan | Selama dijalankan |
|---|---|---|
| `selected_run` | Menggunakan `profile_family.selected_family`. | Mempertahankan keluarga tersebut melalui 17 posisi tersimpan. |
| `non_repeating_random_run` | Memilih yang memenuhi syarat dan tidak digunakan family. | Menyimpannya di seluruh 17 posisi dan menghindari pengulangan keluarga hingga daftar yang memenuhi syarat habis. |
| `rotation_run` | Mempertahankan keluarga berikutnya dalam urutan yang dikonfigurasi. | Mempertahankannya di seluruh 17 posisi tersimpan. |

Konfigurasi yang dikirim menggunakan `non_repeating_random_run`. Keluarga yang dipersiapkan setelah posisi simpanan terakhir masih hanya dipersiapkan; itu menjadi aktif setelah restart. `cycle.start_day_mode` dan `cycle.day_progression_mode` pilih hari pertama dan urutan hari tanpa mengubah pilihan keluarga.

<a id="families"></a>
## Keluarga

- Aksi
- Bertahan Hidup
- Siluman
- Gerombolan
- Perburuan Bos
- Pemulung
- Pembangun
- Ekspedisi
- Penguncian Keamanan
- Biohazard
- Anteverse
- Mimpi buruk
- Lapukan
- Presisi
- Logistik
- Eksperimental
- Uji Kepatuhan

Gunakan [indeks profil yang dihasilkan](PROFIL/DOKUMENTASI_PROFIL.md) untuk membuka satu kelompok atau [referensi profil lengkap](PROFIL/REFERENSI_PROFIL_LENGKAP.md) untuk meninjau seluruh 289 kombinasi. [referensi kunci sandbox](PROFIL/TOMBOL_PENGATURAN_SANDBOX.md) mendefinisikan setiap nilai yang didukung dan dokumentasi default profil yang dikirimkan.

<a id="custom-families-and-days"></a>
## Keluarga dan Hari Khusus

Sumber keluarga ada di bawah:

```text
RandomDay/Scripts/ax_profiles/families/
```

Penurunan Harga dan JSON di bawah `docs/profiles/` adalah referensi yang dihasilkan. Ubah sumber, bukan keluaran yang dihasilkan, lalu jalankan validasi profile/schema penuh. Kumpulan kustom belum siap jika hanya diurai satu hari; selama 17 hari, default profil yang dikonfigurasi, jenis, rentang, dan referensi yang dihasilkan harus disetujui.
