<a id="release-validation"></a>
# Validasi rilis

> **Sumber kanonis bahasa Inggris:** [RELEASE_VALIDATION.md](../../RELEASE_VALIDATION.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Halaman ini ditujukan untuk kontributor dan pengelola rilis. Pemain yang menginstal mod tidak perlu menjalankan perintah ini.

<a id="ordinary-user-proof"></a>
## Bukti pengguna biasa

Rilis dapat dimengerti ketika pembaca baru dapat memilih salah satu dari dua paket, menginstalnya, mengidentifikasi profil aktif dan profil yang disiapkan, dan memulihkan dari hasil yang hilang dengan mengikuti panduan tertaut. Tugas pembaca tersebut tidak memerlukan Git, PowerShell, Python, atau pengetahuan checksum.

<a id="contributor-checks"></a>
## Pemeriksaan kontributor

Jalankan dari root repositori:

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

Ketika `luac` tersedia, pemeriksaan sintaksis setiap file Lua yang dikirimkan:

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

Pengujian runtime Lua memerlukan `lupa`. Penerjemah Lua atau instalasi `lupa` yang hilang adalah kemampuan pengujian yang tidak tersedia, bukan hasil yang lewat.

<a id="release-checks"></a>
## Pemeriksaan rilis

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

Pemeriksaan rilis memverifikasi kondisi berikut:

- `VERSION` dan `RandomDay/.randomday_version` cocok.
- Hanya versi saat ini yang ada di bawah `releases/`.
- ZIP khusus dan singleplayer/LAN adalah alternatif yang lengkap.
- Kedua arsip berisi jalur `RandomDay/Scripts/main.lua` kanonis dan tidak ada pemuat yang bertabrakan.
- Penanda mode paket adalah `dedicated_server` dan `singleplayer_manual`.
- ZIP byte bersifat deterministik dan cocok dengan `CHECKSUMS.sha256`.
- Tidak ada data waktu proses, konfigurasi pribadi, kredensial, cache, atau keluaran pengujian yang dikemas.
- Semua link dokumentasi lokal dan 27 halaman entri lokal divalidasi.

<a id="avoid-validation-environment-pitfalls"></a>
## Hindari kesalahan lingkungan validasi

- Jalankan pemeriksaan penulisan repositori secara serial sehingga dua proses tidak menggantikan file sementara yang sama sekaligus.
- Di Windows, periksa ZIP nama anggota daripada menggunakan pencarian file yang tidak peka huruf besar-kecil untuk memutuskan apakah ada pemuat huruf kecil.
- Konfirmasi `mods.txt` dan `enabled.txt` hanya dalam pengujian server yang diinstal; hal tersebut bukan merupakan bukti bahwa pengujian sumber telah berjalan.
- Rekam batas waktu perintah sebagai tidak lengkap. Jangan mengubahnya menjadi lulus atau gagal tanpa keluaran perintah yang dibatasi.
- Simpan file sementara di dalam repositori yang diabaikan `.tmp/`.

<a id="known-limits"></a>
## Batas yang diketahui

Validasi lokal membuktikan kontrak sumber, paket, dokumentasi, dan perlengkapan. Itu tidak membuktikan urutan startup panel server tertentu, tata letak pesan klien langsung, atau jalur sistem file spesifik host. Catat hal tersebut sebagai hasil integrasi terpisah saat diuji.
