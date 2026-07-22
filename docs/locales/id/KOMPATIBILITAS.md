<a id="compatibility"></a>
# Kompatibilitas

> **Sumber kanonis bahasa Inggris:** [COMPATIBILITY.md](../../COMPATIBILITY.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


<a id="supported-installations"></a>
## Instalasi yang didukung

RandomDay dibuat untuk instalasi Faktor Abiotik yang dapat memuat UE4SS mod Lua.

| Lingkungan | Dukungan | Paket |
| --- | --- | --- |
| khusus Windows server | Didukung | Server khusus ZIP |
| Windows singleplayer atau LAN host | Alur kerja penyalinan manual yang didukung | Singleplayer/LAN ZIP |
| Server Linux menggunakan Wine atau Proton | Belum diuji rilis | Paket khusus Windows dapat dievaluasi oleh operator berpengalaman, namun tidak ada janji kompatibilitas yang dibuat. |
| Xbox dan PlayStation | Tidak didukung | Platform ini tidak menyediakan akses file dan UE4SS Jalur pemuatan Lua yang diperlukan oleh rilis ini. |

RandomDay tidak menggabungkan kedua paket. Server khusus yang hanya dimulai untuk pemutaran sesekali masih menggunakan server khusus ZIP dan memilih perilaku sementara dalam status konfigurasi.

<a id="abiotic-factor-updates"></a>
## Pembaruan Faktor Abiotik

Setelah pembaruan game, mulailah dengan server dihentikan dan simpan salinan dunia, `SandboxSettings.ini` saat ini, dan RandomDay. Konfirmasikan UE4SS pemuatan, lalu selesaikan satu siklus RandomDay dan periksa profil aktif dan profil yang telah disiapkan sebelum melanjutkan rotasi normal.

<a id="companion-mods"></a>
## Mod pendamping

RandomDay mengubah mod yang diinstal secara terpisah hanya jika tata letak pengaturan lengkapnya cocok dengan adaptor yang didukung. Nomor versi saja tidak cukup.

| Integrasi | Versi saat ini ditinjau | RandomDay batas dukungan |
| --- | --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | `0.8.5`; file utama `0.8.5-Hotfix1` | Tata letak `SharedData.lua` tata letak mencakup pengaturan spawn, cooldown, populasi, portal, pelanggaran, bos, dan RandomDay yang tercantum dalam referensi adaptor. |
| Tata letak Lethal Laser | `1.0-UE4SS` | Tata letak `Scripts/main.lua` mencakup pengaturan emitor, emitor lingkungan, reflektor, dan prisma yang dikenali. |
| ANTE Naik | `1`, diperbarui 19 Juli 2026 | Tata letak publik saat ini belum melengkapi perlengkapan adaptor. RandomDay melewatkan file yang tidak cocok tanpa perubahan hingga tata letak tersebut diverifikasi. |

Mod pendamping yang tidak ada, dinonaktifkan, atau tidak dikenali tidak akan diubah. Lihat [Mod opsional yang didukung](ADAPTOR_YANG_DIDUKUNG.md) untuk pengaturan yang tepat, kontrol konfigurasi, perilaku pencadangan, dan langkah-langkah pemulihan.

<a id="what-compatibility-validation-proves"></a>
## Apa yang dibuktikan oleh validasi kompatibilitas

Validasi repositori dapat membuktikan tata letak paket yang dikirimkan, cakupan konfigurasi, bidang adaptor yang dikenali, perilaku pencadangan dan pemulihan, dan penolakan aman terhadap tata letak yang tidak diketahui. Ia tidak dapat membuktikan setiap Faktor Abiotik, UE4SS, atau versi mod pendamping di masa mendatang. Catatan rilis menyebutkan nama versi yang diuji, bukan mengasumsikan kompatibilitas dari pemuatan yang berhasil.
