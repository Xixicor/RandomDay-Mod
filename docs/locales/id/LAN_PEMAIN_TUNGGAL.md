<a id="singleplayer-and-lan-manual-workflow"></a>
# Pemain tunggal dan LAN alur kerja manual

> **Sumber kanonis bahasa Inggris:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


RandomDay's singleplayer/LAN RandomDay menghasilkan `SandboxSettings.ini` lengkap di dalam folder mod. Anda memilih dunia dan menyalin file secara manual saat permainan ditutup.

Paket dikunci pada output ini:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Ini menonaktifkan penulisan sandbox server khusus, mirror sandbox, dan semua penulisan adaptor opsional. Itu tidak mencari AppData, data pengguna Steam, Dokumen, folder penyimpanan, folder server, atau folder mod pihak ketiga.

<a id="understand-the-manual-boundary"></a>
## Pahami batasan manual

Sebelum memulai, konfigurasikan pengalaman di `RandomDay/Scripts/ax_config/server.lua`. Paket manual menerima `experience.mode="auto"` atau `"singleplayer_lan"`. Anda dapat memilih hari pertama yang tetap atau acak dan pesanan 17 hari yang berurutan atau tidak berulang secara acak. Pemilihan keluarga menggunakan pengaturan keluarga yang dipilih, dirotasi, atau tidak acak berulang seperti server khusus.

Output yang dihasilkan berisi penanda RandomDay membaca proses selanjutnya. Agar status tetap selaras, salin file yang dihasilkan ke dunia terhenti yang dipilih sebelum memulai proses pembuatan lainnya. Memulai berulang kali tanpa menyalin dapat memajukan antrean mod-lokal meskipun dunia tidak pernah memuat keluaran sebelumnya.

Ikuti kanonis [pemain tunggal atau LAN prosedur instalasi](PEMASANGAN.md#singleplayer-or-lan) untuk pencadangan, penempatan paket, pengaktifan, pembuatan, penyalinan manual, dan verifikasi. Halaman ini menjelaskan batasan manual; itu tidak menentukan metode instalasi lain.

Generasi pertama menyiapkan profil; itu tidak bisa mengubah aturan yang sudah dimuat oleh proses permainan itu. Tutup, salin, dan mulai lagi menggunakannya. Ulangi siklus ini hanya jika Anda sengaja ingin hari berikutnya tetap ada.

Menghapus RandomDay tidak memulihkan file dunia yang Anda salin secara manual; gunakan cadangan Anda sendiri untuk rollback itu. Ikuti [Hapus atau kembalikan instalasi apa pun](PEMASANGAN.md#remove-or-disable-randomday) untuk prosedur penghapusan yang tepat.
