<a id="worked-configuration-examples"></a>
# Contoh konfigurasi yang berhasil

> **Sumber kanonis bahasa Inggris:** [EXAMPLES.md](../../EXAMPLES.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Contoh ini menggunakan nama dan nilai yang diciptakan untuk menunjukkan bagaimana RandomDay melaporkan hasil persiapan, aktivasi, pemulihan, dan kompatibilitas biasa.

<a id="first-bootstrap"></a>
## Bootstrap Pertama

Sebelumnya: sesi yang sedang berjalan memuat sandbox tanpa penanda RandomDay.

Setelah satu kali startup RandomDay berhasil:

```text
selection_status=bootstrap_prepare_first_family_start_day
session_mode=temporary_dedicated
start_day_mode=configured
day_progression_mode=sequential
day_order=8,9,10,11,12,13,14,15,16,17,1,2,3,4,5,6,7
active_profile_id=unknown_current_boot
prepared_next_profile_id=<action-day-8-profile-id>
prepared_ready=true
restart_required_for_prepared_profile=true
```

Artinya: sesi saat ini tetap tidak diketahui oleh RandomDay. Hari 8 yang Dikonfigurasi siap untuk dimulai ulang berikutnya dan pesanan yang diselesaikan secara lengkap tetap dipertahankan. Jangan mendeskripsikan Hari ke-8 sebagai hari aktif.

<a id="normal-next-day"></a>
## Normal Hari Berikutnya

Sebelum: penanda sandbox saat ini mengidentifikasi Hari Aksi 1.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Artinya: Hari ke-1 aktif untuk proses ini; Hari ke 2 sudah dipersiapkan. Memulai ulang merupakan keputusan operator.

<a id="state-commit-failure"></a>
## State Commit Failure

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Artinya: byte sandbox yang valid mungkin ada di disk, namun RandomDay tidak dapat mempertahankan rekaman antrean yang cocok. Biarkan server berhenti, pertahankan sandbox dan kedua file status rotasi, dan ikuti pemulihan manual. Penulisan sandbox yang berhasil saja bukanlah transisi yang dipersiapkan dengan baik.

<a id="primary-write-restored"></a>
## Penulisan Utama Dipulihkan

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Artinya: pembacaan kembali produksi gagal dan file sebelumnya dipulihkan. Periksa cadangan operasi dan kesalahan pertama sebelum memulai yang lain. Jangan menyimpulkan bahwa profil yang disiapkan dapat digunakan.

<a id="adapter-outcomes"></a>
## Hasil Adaptor

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Artinya: target Lethal Laser tidak diubah karena tata letak lengkapnya tidak dikenali. ANTE Target naik sudah sesuai. Tidak ada hasil yang mengubah transaksi sandbox utama.

Jika adaptor melaporkan `rollback_failed`, hentikan layanan yang terpengaruh dan pertahankan target, sidecar, dan direktori `runtime/backups/external_<operation>/`.

<a id="singleplayer-or-lan"></a>
## Singleplayer Atau LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Artinya: RandomDay hanya menulis `runtime/singleplayer_manual/SandboxSettings.ini`. Tutup permainan, periksa file, buat cadangan dunia yang dipilih, dan salin secara manual. Outputnya tidak membuktikan bahwa ada dunia yang memuatnya.

<a id="incompatible-environment"></a>
## Lingkungan Tidak Kompatibel

Bila tidak ada proses bernama Abiotic Factor atau UE4SS, salinan rilis harus mengatakan:

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

Penguraian Lua lokal, perlengkapan, dan ekstraksi paket tetap menjadi bukti yang berguna, namun tidak menjadi klaim kompatibilitas yang lebih luas.
