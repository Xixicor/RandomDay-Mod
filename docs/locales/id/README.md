# Panduan RandomDay dalam Bahasa Indonesia

**v0.3.16-alpha**

RandomDay menyiapkan `SandboxSettings.ini` lengkap untuk mulai Abiotic Factor
berikutnya. Aturan sesi yang sedang berjalan tidak diubah; profil aktif dan
profil berikutnya yang disiapkan selalu dilaporkan secara terpisah.

## Pasang dan periksa

Ikuti [panduan pemasangan](../../../INSTALL.md). Folder yang benar adalah
`ue4ss/Mods/RandomDay` dan `mods.txt` harus berisi `RandomDay : 1`. Biasanya
mulai pertama menyiapkan profil dan mulai berikutnya mengaktifkannya.

Periksa `runtime/current/randomday_status.json`, `runtime/rotation_state.txt`
dan `web_export/today.json`. Ketiganya harus menyebut identitas profil aktif dan
profil yang disiapkan secara konsisten.

## Pilih pengalaman

Atur mode, keluarga, hari awal dan kemajuan di
`RandomDay/Scripts/ax_config/server.lua`. Baca [Mulai](../../START_HERE.md),
[Pilih profil](../../CHOOSE_A_PROFILE.md), [Konfigurasi](../../CONFIGURATION.md)
dan [Pemecahan masalah](../../TROUBLESHOOTING.md).

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
