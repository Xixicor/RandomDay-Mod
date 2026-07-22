<a id="supported-optional-mods"></a>
# Mod Opsional yang Didukung

> **Sumber kanonis bahasa Inggris:** [SUPPORTED_ADAPTERS.md](../../SUPPORTED_ADAPTERS.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


RandomDay dapat membuat mod yang diinstal secara terpisah mengikuti profil RandomDay yang aktif. Fitur ini hanya tersedia dalam paket server khusus. singleplayer/LAN tidak pernah mengedit mod lain.

RandomDay tidak menyertakan atau mendistribusikan ulang mod apa pun yang tercantum di sini. Instal dan aktifkan setiap mod opsional dari halaman Nexus-nya sendiri dan ikuti instruksi pembuatnya terlebih dahulu. RandomDay hanya mengubah pengaturan yang dikenali dan sudah ada di file yang diinstal. Itu tidak menambahkan fitur ke mod lain, dan adaptor dapat dinonaktifkan tanpa menghapus instalasi mod tersebut. Paket server khusus dimulai dengan `external_mods.enabled = true`.

<a id="what-randomday-changes"></a>
## Apa yang RandomDay berubah

| Integrasi opsional | Pengaturan dipilih dari profil aktif |
| --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | Mode sulit, player/area perilaku cooldown, aktivitas badai dan zona panas, kemunculan bos dan ledakan, waktu siklus spawn, rentang cooldown kecil dan besar, jarak spawn, global/local/mod batas, portal-storm, Pelanggaran pesanan dan peluang bos, serta kemunculan minimum per area. |
| Bidang ekstensi Chaotic Spawn Engine opsional | Bila `SharedData.lua` sudah berisi RandomDay bidang ekstensi, adaptor dapat menyediakan profil pertemuan, tingkatan, tema, batas grup, nilai acara khusus dan pertemuan campuran, anggaran, waktu tunggu, dan kontrol cakupan dunia. Ini bukan mod lain untuk diunduh. |
| Tata letak Lethal Laser | Aktivasi mod ditambah kerusakan dan mengaktifkan kontrol untuk pemancar, pemancar lingkungan, reflektor, dan prisma yang dapat diterapkan. |
| ANTE Naik | Pengganda frekuensi respawn, frekuensi Antevarian, dan sakelar development/debug switch. RandomDay menonaktifkan semua pengembangan dan debug yang dikenali. |

Pustaka profil menyediakan kumpulan nilai yang telah disiapkan untuk setiap hari yang didukung. Hari yang tenang dapat mengurangi tekanan, hari yang penuh bahaya dapat meningkatkannya, dan hari pemulihan dapat menurunkannya secara tajam. RandomDay tidak menghitung nilai arbitrer saat boot; itu menerapkan kumpulan nilai yang ditinjau yang diberi nama oleh profil aktif.

<a id="current-version-evidence"></a>
## Bukti versi saat ini

Tabel ini ditinjau pada tanggal 20 Juli 2026. “Diakui” berarti adaptor yang dirilis memiliki perlengkapan tata letak lokal lengkap untuk pengaturan bernama. Ini tidak berarti setiap rilis mendatang akan memiliki bentuk file yang sama.

| Mod opsional | Versi upstream saat ini telah ditinjau | RandomDay status rilis |
| --- | --- | --- |
| [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156) | Halaman Nexus `0.8.5`; file utama saat ini `0.8.5-Hotfix1` | Tata letak `DynamicSpawns/Scripts/SharedData.lua` yang dikenali untuk set pengaturan spawn, cooldown, batas, portal, pelanggaran, dan bos yang lengkap. |
| Bidang ekstensi Chaotic Spawn Engine opsional | Tidak ada download terpisah; kolom opsional di dalam `SharedData.lua` | Diterapkan hanya jika setiap kolom ekstensi sudah ada Instalasi mesin tidak diubah jika kolom tersebut tidak ada. ID adaptor internal adalah `encounter_director`; itu tidak menyebutkan nama mod publik yang terpisah. |
| [Tata letak Lethal Laser](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Tata letak `LethalLasers/Scripts/main.lua` tata letak untuk semua setelan emitor, emitor lingkungan, reflektor, dan prisma yang tercantum di atas. |
| [ANTE Naik](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, diperbarui 19 Juli 2026 | Adaptor yang dirilis mengenali `Settings.lua` kumpulan bidang. Versi 1 tidak diklaim kompatibel hingga file saat ini ditambahkan ke perlengkapan dan lolos uji transaksi adaptor. Jika tata letaknya berbeda, RandomDay melaporkan `skipped_incompatible` dan membiarkannya tidak berubah. |

<a id="how-recognition-protects-another-mod"></a>
## Bagaimana pengenalan melindungi mod lain

Menemukan nama file yang familier saja tidak cukup. Sebelum menulis, RandomDay memeriksa apakah setiap pengaturan yang diperlukan untuk adaptor tersebut ada di file target. Ini hanya menambal tugas yang ada; tidak pernah menemukan pengaturan yang hilang.

Untuk tata letak yang dikenali, RandomDay melakukan satu transaksi terikat:

1. menghitung setiap nilai yang dimaksudkan untuk profil aktif;
2. membuat dan memeriksa byte cadangan setiap file target;
3. tulis melalui file saudaranya yang tertunda;
4. promosikan file yang tertunda dan membaca kembali byte yang disimpan;
5. konfirmasi setiap nilai yang diinginkan;
6. gunakan pemulihan otomatis dari cadangan terverifikasi jika ada langkah yang gagal.

DynamicSpawns dapat menyertakan pengaturannya dan file pesan pemain yang dikenali dalam satu transaksi. RandomDay tidak melaporkan bahwa pembaruan multi-file berhasil kecuali transaksi lengkap selesai.

<a id="read-an-adapter-result"></a>
## Baca hasil adaptor

| Hasil | Arti |
| --- | --- |
| `applied` | Setelan yang dikenali diubah dan lolos pembacaan kembali. |
| `already_current` | Pengaturan yang dikenali sudah cocok dengan profil aktif. |
| `not_installed` | Mod opsional tidak ditemukan. RandomDay dilanjutkan tanpanya. |
| `skipped_incompatible` | File ditemukan, namun tata letak pengaturan lengkapnya tidak dikenali. Tidak ada yang berubah. |
| `partial` | Setelan utama DynamicSpawns diterapkan, namun file pesan opsional yang diterjemahkan tidak selesai. Tinjau hasil adaptor yang direkam. |
| `failed_rolled_back` | Transaksi gagal dan byte sebelumnya tetap utuh atau dipulihkan dan diverifikasi. |
| `rollback_failed` | RandomDay tidak dapat memverifikasi perubahan atau pemulihan. Hentikan mod yang terpengaruh dan pulihkan cadangan yang direkam secara manual. |

Mod opsional yang hilang dan tidak kompatibel tidak menghentikan rotasi sandbox RandomDay's rotasi sandbox pada konfigurasi yang dikirimkan.

<a id="enable-or-disable-integrations"></a>
## Aktifkan atau nonaktifkan integrasi

Kontrolnya ada di:

```text
RandomDay/Scripts/ax_config/server.lua
```

Paket server khusus dikirimkan dengan:

```lua
external_mods = {
    enabled = true,
    optional_by_default = true,
    patch_only_existing_keys = true,
    backup_before_write = true,
    adapters = {
        "lethal_lasers",
        "dynamic_spawns",
        "encounter_director",
        "ante_up"
    }
}
```

- Setel `enabled = false` untuk menghentikan RandomDay memeriksa atau mengubah setiap mod opsional.
- Hapus satu ID adaptor agar mod tersebut tetap aktif dan integrasi lainnya tetap aktif.
- Tetap atur `patch_only_existing_keys` dan `backup_before_write` ke `true`. Ini adalah batas keamanan penulisan.
- Tetap atur `optional_by_default = true` kecuali setiap mod opsional yang terdaftar merupakan bagian wajib dari server. Menyetelnya ke `false` membuat adaptor yang hilang, tidak kompatibel, atau dibatalkan dengan aman memengaruhi hasil agregat.

Anda tidak perlu mencopot pemasangan atau menonaktifkan mod opsional. mod opsional saat Anda menonaktifkan adaptor RandomDay.

<a id="thanks-and-ownership"></a>
## Terima kasih dan kepemilikan

Terima kasih kepada penulis dan pengelola [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156), [Tata letak Lethal Laser](https://www.nexusmods.com/abioticfactor/mods/141) saat ini, dan [ANTE Naik](https://www.nexusmods.com/abioticfactor/mods/201). Mod mereka tetap merupakan unduhan terpisah yang diatur oleh halaman, izin, dan instruksi dukungan mereka sendiri. RandomDay's adaptor hanya menggunakan kolom konfigurasi yang ada dalam tata letak yang terpasang dan dikenali; mereka tidak mendistribusikan ulang atau mengganti mod tersebut.

<a id="backups-and-manual-recovery"></a>
## Pencadangan dan pemulihan manual

Salinan pra-tulis yang terverifikasi disimpan di bawah:

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

Jika `rollback_failed` muncul:

1. menghentikan game atau server;
2. set `external_mods.enabled = false`, atau hapus ID adaptor yang terpengaruh;
3. pertahankan file target saat ini dan file saudaranya pending/rollback;
4. cocokkan file cadangan bernomor dengan jalur target yang dicatat dalam hasil adaptor;
5. pulihkan byte terverifikasi saat layanan dihentikan;
6. memulai mod opsional itu sendiri sebelum mengaktifkannya kembali RandomDay.

Jangan memaksakan kompatibilitas dengan mengganti nama pengaturan atau menambahkan kunci yang hilang. Gunakan tata letak yang dikenali, biarkan adaptor dinonaktifkan, atau tambahkan perlengkapan versi baru dan pengujian transaksi sebelum memperluas klaim dukungan.
