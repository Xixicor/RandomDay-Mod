# Panduan RandomDay dalam Bahasa Indonesia

> [!IMPORTANT]
> ## Status proyek — pengujian RandomDay selesai
>
> Operasi pengujian RandomDay telah selesai dan server uji publik akan segera ditutup.
>
> Selama operasi ini, RandomDay dan RandomDayGuard dijalankan bersama melalui rotasi profil berulang, pemulaian ulang server yang normal maupun terputus, pemeriksaan pemulihan dan rollback, integrasi mod tambahan, pengumpulan bukti server, serta peninjauan laporan operator.
>
> Hal ini memberi kami pengetahuan yang ingin kami peroleh: bagaimana profil sandbox yang berotasi berperilaku sepanjang siklus hidup nyata server khusus; bagaimana RandomDay berinteraksi dengan mod tambahan yang didukung; dan sejauh mana RandomDayGuard dapat mengubah bukti yang ditulis server menjadi pemantauan yang berguna dan berhati-hati tanpa menyajikan celah atau dugaan sebagai fakta.
>
> **Stack server uji yang digunakan:**
>
> - RandomDay build pengembangan privat `v0.41.76`
> - RandomDayGuard build pengembangan privat `v0.46.130`
> - Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
> - Lethal Lasers `1.0 UE4SS`
> - ANTE Up `0.26`
> - Encounter Director integration — ekstensi DynamicSpawns milik RandomDay, bukan mod yang didistribusikan secara terpisah
> - UE4SS `v3.0.1 Beta #0` (Git `01e0a584`; Nexus `v3.0.1-940-g01e0a584`)
> - server khusus Abiotic Factor `1.4.0.27939`
>
> Paket yang saat ini diterbitkan tetap RandomDay `v0.3.16-alpha` dan RandomDayGuard `v0.4.12-alpha`.
>
> Pengembangan kedua proyek kini dijeda. Rilis dan dokumentasi yang ada akan tetap tersedia, dan kami mungkin kembali ketika kembali ingin melanjutkan pekerjaan ini.
>
> Stack ini mendokumentasikan apa yang digunakan selama operasi; ini bukan persyaratan versi minimum ataupun jaminan kompatibilitas dengan versi game, loader, atau mod yang lebih baru. Siklus terakhir yang dicatat secara resmi menggunakan Abiotic Factor `1.4.0.27939`.

**v0.3.16-alpha**

RandomDay menyiapkan `SandboxSettings.ini` lengkap untuk mulai Abiotic Factor
berikutnya. Aturan sesi yang sedang berjalan tidak diubah; profil aktif dan
profil berikutnya yang disiapkan selalu dilaporkan secara terpisah.

## Pasang dan periksa

Ikuti [panduan pemasangan](PEMASANGAN.md). Folder yang benar adalah
`ue4ss/Mods/RandomDay` dan `mods.txt` harus berisi `RandomDay : 1`. Biasanya
mulai pertama menyiapkan profil dan mulai berikutnya mengaktifkannya.

Periksa `runtime/current/randomday_status.json`, `runtime/rotation_state.txt`
dan `web_export/today.json`. Ketiganya harus menyebut identitas profil aktif dan
profil yang disiapkan secara konsisten.

## Pilih pengalaman

Atur mode, keluarga, hari awal dan kemajuan di
`RandomDay/Scripts/ax_config/server.lua`. Baca [Mulai](MULAI_DI_SINI.md),
[Pilih profil](PILIH_PROFIL.md), [Konfigurasi](KONFIGURASI.md)
dan [Pemecahan masalah](PEMECAHAN_MASALAH.md).

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` dan
`BridgeSupports=0` adalah nilai awal pembuat profil yang disertakan, bukan aturan
wajib Abiotic Factor. Cara mengubah dan membangun ulang profil dijelaskan dalam
dokumentasi konfigurasi.

Perintah, jalur, kunci INI dan status tetap dalam bahasa Inggris agar sama persis
dengan berkas nyata.

## Rilis alfa dan pilihan yang menetap

Ini adalah rilis alfa. Jalur pemasangan, rotasi, dan pemulihan yang didokumentasikan telah diuji; kompatibilitas dan kemudahan penggunaan terus ditingkatkan.

Di `RandomDay/Scripts/ax_config/server.lua`, `sandbox.profile_overrides` mempertahankan empat nilai untuk setiap keluarga dan hari. Hentikan server, ubah sekali, lalu mulai lagi. Rotasi dan mulai berikutnya memakai nilai yang sama; mengubah hanya `SandboxSettings.ini` bersifat sementara.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Mod opsional di bawah adalah unduhan terpisah milik pembuatnya. RandomDay tidak mendistribusikan ulang atau mengubah fiturnya; adaptor yang diaktifkan hanya menyesuaikan pengaturan yang sudah ada dan didukung. Terima kasih kepada pembuat dan pemeliharanya.

## Perpustakaan dokumentasi lengkap

Setiap dokumen Penurunan Harga publik tersedia dalam bahasa ini dengan nama file yang dilokalkan.

- [Buka indeks dokumentasi yang dilokalkan](DOKUMENTASI.md)
