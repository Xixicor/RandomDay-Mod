<a id="install-update-or-remove-randomday"></a>
# Instal, perbarui, atau hapus RandomDay

> **Sumber kanonis bahasa Inggris:** [INSTALL.md](../../../INSTALL.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


RandomDay memiliki dua unduhan lengkap. Pilih satu untuk dunia yang Anda siapkan:

- gunakan **server khusus ZIP** untuk server khusus apa pun, termasuk server yang dibuka hanya untuk sesi sesekali;
- gunakan **singleplayer/LAN ZIP** untuk dunia lokal yang setelannya akan Anda salin secara manual.

Jangan gabungkan paket-paket tersebut. Server khusus yang persisten atau sementara adalah pilihan dalam pengaturan RandomDay's setelan, bukan unduhan yang berbeda.

<a id="before-you-begin"></a>
## Sebelum Anda memulai

Buat salinan yang dapat dipulihkan dari:

- dunia yang sedang Anda ubah;
- saat ini `SandboxSettings.ini`;
- yang ada `RandomDay`, jika sudah terpasang.

Instal UE4SS sebelum RandomDay. Dalam petunjuk di bawah, **Folder mods** berarti `ue4ss/Mods/` di dalam game atau instalasi server khusus.

<a id="dedicated-server"></a>
## Server khusus

<a id="new-installation"></a>
### Instalasi baru

1. Hentikan server.
2. Buka UE4SS `Mods`folder.
3. Ekstrak server khusus ZIP. Hasilnya seharusnya `ue4ss/Mods/RandomDay/`, bukan folder di dalam folder lain `RandomDay`folder.
4. Buka folder tersebut dan konfirmasikan bahwa `RandomDay/Scripts/main.lua` ada. Jika tidak ada, ZIP diekstraksi ke tingkat yang salah.
5. Buka UE4SS `mods.txt` dan aktifkan baris ini:

   ```text
   RandomDay : 1
   ```

6. Mulai server secara normal.
7. Buka RandomDay's halaman status yang dapat dibaca dan mengonfirmasi bahwa halaman tersebut menamai profil aktif dan profil yang disiapkan untuk permulaan berikutnya.

Permulaan pertama tidak menggantikan aturan yang sudah dimuat oleh sesi itu. Ini mempersiapkan profil berikutnya. Mulai server lagi hanya jika Anda benar-benar ingin profil yang telah disiapkan tersebut menjadi aktif.

[Periksa siklus pertama](MULAI_DI_SINI.md)

<a id="choose-always-on-or-temporary-behavior"></a>
### Pilih perilaku selalu aktif atau sementara

Paket server khusus mendukung kedua gaya:

- **khusus persisten** melanjutkan rotasi yang disimpan saat restart normal;
- **khusus sementara** dapat dimulai dari titik awal yang dikonfigurasi atau acak ketika proses sementara baru dimulai.

Pilih perilaku di [Konfigurasi](KONFIGURASI.md). Jangan memasang paket kedua untuk mengubah setelan ini.

<a id="update-an-existing-installation"></a>
### Perbarui instalasi yang ada

1. Hentikan server dan lakukan instalasi cadangan yang tercantum di atas.
2. Pindahkan folder `RandomDay` dari folder UE4SS `Mods`. Simpan folder tersebut hingga pembaruan menyelesaikan satu siklus yang berhasil.
3. Ekstrak server khusus baru ZIP ke dalam `Mods`folder.
4. Terapkan kembali hanya setelan yang sengaja Anda ubah dan masih ada dalam status [panduan konfigurasi](KONFIGURASI.md).
5. Simpan file status rotasi yang terdokumentasi hanya jika catatan rilis menyatakan formatnya kompatibel. Jangan salin file keluaran sementara atau file gagal tulis yang lama ke dalam instalasi baru.
6. Konfirmasi `RandomDay : 1` masih diaktifkan, lalu mulai server satu kali dan periksa nama profil yang aktif dan disiapkan.

<a id="updating-from-v0315-alpha"></a>
### Memperbarui dari v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip` adalah paket dasar lama. `RandomDay_v0.3.15-alpha_singleplayer_patch.zip` merupakan overlay dan bukan unduhan mandiri.

Saat ini `v0.3.16-alpha` menggantikan susunan basis dan overlay historis dengan dua paket lengkap. Jangan letakkan patch lama pada paket mana pun. Penanda saat ini adalah `.randomday_mode=dedicated_server` dan `.randomday_mode=singleplayer_manual`.

<a id="singleplayer-or-lan"></a>
## Pemain tunggal atau LAN

singleplayer/LAN paket membuat file pengaturan; itu tidak mencari atau mengubah penyimpanan pribadi dengan sendirinya.

1. Tutup permainan.
2. Cadangkan dunia dan arusnya `SandboxSettings.ini`.
3. Ekstrak singleplayer/LAN ZIP ke dalam UE4SS `Mods` folder jadi satu`Mods/RandomDay/` ada folder.
4. Aktifkan `RandomDay : 1` di UE4SS `mods.txt`.
5. Mulai permainan sekali, tunggu RandomDay untuk menyelesaikan, dan tutup game sepenuhnya.
6. Temukan `SandboxSettings.ini` di RandomDay's `runtime/singleplayer_manual/`folder.
7. Baca ringkasan yang dihasilkan, lalu salin file ke dunia yang Anda pilih.
8. Mulai dunia itu dan periksa apakah perilaku sandbox yang diharapkan aktif.

LAN menggunakan proses manual yang sama karena host memiliki dunia lokal. Mod tidak memilih dunia atau menimpa dunia secara otomatis.

[Pemain tunggal dan LAN panduan](LAN_PEMAIN_TUNGGAL.md)

<a id="remove-or-disable-randomday"></a>
## Hapus atau nonaktifkan RandomDay

1. Hentikan game atau server.
2. Cadangkan dunia, setelan kotak pasirnya saat ini, dan RandomDay's yang baru.
3. Setel `RandomDay : 0` di UE4SS `mods.txt` untuk menonaktifkan mod, atau pindahkan seluruh folder `RandomDay` dari folder `Mods` untuk menghapusnya.
4. Putuskan `SandboxSettings.ini` harus dimuat pada permulaan berikutnya. Pulihkan salinan pra-instal Anda jika Anda tidak menginginkan RandomDay profil.
5. Mulai dunia dan konfirmasi aturannya sebelum menghapus cadangan apa pun.

Menonaktifkan RandomDay menghentikan persiapan profil di masa mendatang. Itu tidak menulis ulang file sandbox yang sudah menunggu di disk.

<a id="recover-from-an-unsuccessful-update"></a>
## Memulihkan dari pembaruan yang gagal

Berhenti setelah kegagalan pertama yang jelas dapat mempersulit untuk melihat profil mana yang aktif dan mana yang menunggu.

1. Hentikan game atau server.
2. Singkirkan instalasi yang gagal tanpa menghapusnya.
3. Kembalikan secara lengkap RandomDay pencadangan folder dan sandbox dilakukan sebelum pembaruan.
4. Mulai sekali dan konfirmasikan nama profil aktif dan siap yang dipulihkan.
5. Gunakan [Pemecahan masalah](PEMECAHAN_MASALAH.md) untuk langkah pertama yang hilang atau gagal sebelum mencoba pembaruan lainnya.

<a id="more-help"></a>
## Bantuan lebih lanjut

- [Siklus pertama](MULAI_DI_SINI.md)
- [Pilih profil](PILIH_PROFIL.md)
- [Konfigurasi](KONFIGURASI.md)
- [Operasi dan pemulihan](OPERASI.md)
- [Pemecahan masalah](PEMECAHAN_MASALAH.md)
- [Kompatibilitas](KOMPATIBILITAS.md)

Pemelihara rilis dapat menemukan pemeriksaan build dan paket di [Validasi rilis](VALIDASI_RILIS.md). Mereka tidak diperlukan untuk instalasi normal.
