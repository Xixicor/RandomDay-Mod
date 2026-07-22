<a id="interpret-runtime-state-and-output-schemas"></a>
# Menafsirkan status waktu proses dan skema keluaran

> **Sumber kanonis bahasa Inggris:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md). Dokumentasi yang dilokalkan ini mempertahankan perintah, jalur, kunci, nilai status, hash, dan nama file yang tepat. Jika kata-kata teknisnya berbeda, gunakan sumber bahasa Inggris.


Ini adalah panduan skema lengkap bidang kanonik. Ini menjawab arti setiap bidang, status, nilai kosong, dan hasil mesin. Gunakan [peta file runtime](FILE_RUNTIME.md) untuk produsen, jalur, waktu penulisan, retensi, sidecar transaksi, dan lokasi pemulihan.

Semua jalur dalam panduan ini bersifat relatif terhadap folder `RandomDay/` kecuali sebuah baris secara eksplisit menyebutkan nama sandbox yang dikonfigurasi atau target adaptor opsional. Output runtime dihasilkan setelah instalasi dan bukan merupakan anggota dari rilis mana pun ZIP.

<a id="choose-the-authoritative-view"></a>
## Pilih tampilan resmi

| Perlu | Sumber resmi |
|---|---|
| Aturan dimuat oleh proses saat ini | RandomDay di `SandboxSettings.ini` dibaca saat startup |
| Pembukuan antrean yang disiapkan | `runtime/rotation_state.txt`, skema `1` |
| Status lokal terperinci | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Status publik yang dapat dibaca mesin | `web_export/today.json`, skema `2` dan `randomday_public_status_v2` |
| Status yang dapat dibaca manusia | `web_export/today.html`, berasal dari transisi status publik yang sama |
| Kosakata terjemahan | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Pemberitahuan pemain dengan batas yang tepat | `runtime/current/player_message_preview.txt` |

HTML tampilan, pratinjau, dan ringkasan terjemahan adalah tampilan turunan. Mereka tidak mengesampingkan penanda kotak pasir, hasil transaksi, atau nilai profil mentah. Temukan file bagus yang terakhir diketahui, cadangan operasi, sidecar, mirror, target adaptor, dan `UE4SS.log` di [File runtime](FILE_RUNTIME.md).

<a id="rotation-state-schema"></a>
## Skema status rotasi

`runtime/rotation_state.txt` menggunakan skema `1` dan berisi satu pasangan `key=value` per baris:

| Field | Arti |
|---|---|
| `schema_version` | Harus `1`. |
| `mod_version` | Identitas paket dibaca dari `.randomday_version`. |
| `rotation_id` | Pengidentifikasi untuk tiket saat ini melalui kumpulan keluarga yang memenuhi syarat. |
| `mode` | `selected_run`, `non_repeating_random_run`, atau `rotation_run`. |
| `available_families` | ID keluarga yang memenuhi syarat yang dipisahkan koma setelah pemfilteran konfigurasi. |
| `remaining_families` | Keluarga yang memenuhi syarat belum dipilih dalam tiket tidak berulang saat ini. |
| `completed_families` | Keluarga yang urutan 17 posisi lengkapnya telah diselesaikan pada tiket saat ini. |
| `active_family`, `active_day` | Informasi penanda aktif dicatat ketika pemilihan dilakukan. Penanda sandbox bersifat otoritatif pada booting berikutnya. |
| `prepared_family`, `prepared_day` | Profil disimpan untuk restart berikutnya. |
| `active_run_id` | Pengidentifikasi yang dikelola keluarga dikaitkan dengan pilihan yang telah disiapkan. |
| `last_status` | Status pemilihan kalender yang menghasilkan file ini. |
| `session_mode` | Terselesaikan berdedikasi persisten, berdedikasi sementara, atau singleplayer/LAN siklus hidup. |
| `start_day_mode` | Pilihan awal acak yang dikonfigurasi atau satu kali untuk proses baru. |
| `day_progression_mode` | Membungkus perkembangan berurutan atau tidak berulang-acak. |
| `day_order` | ID hari bertahan yang dipisahkan koma sesuai urutan yang akan disiapkan. |
| `day_position` | Posisi hari yang disiapkan di `day_order`. |
| `updated_at` | Waktu penulisan lokal untuk perbandingan operator. |

Penulisan status hanya diterima jika penanda skema, kelompok yang disiapkan, dan hari yang disiapkan dibaca kembali dengan benar. File saat ini yang tidak dapat dibaca mungkin kembali ke `rotation_state.last_good.txt`; penanda sandbox yang dipilih masih menentukan game apa yang dimuat untuk proses saat ini.

<a id="runtime-status-json"></a>
## Status waktu proses JSON

`runtime/current/randomday_status.json` menggunakan `status_schema=randomday_runtime_status_v2`. Grup bidang utamanya adalah:

| Grup | Bidang dan interpretasi |
|---|---|
| Identitas | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Seleksi | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Aktif | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Disiapkan | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Ringkasan manusia | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Bukti penulisan | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Bukti adaptor | `adapter_status`, `adapter_results`; setiap catatan adaptor berisi bukti kompatibilitas, transaction/rollback status, jumlah file yang diubah, dan referensi target yang disunting |
| Batas | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Diagnostik | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Nilai aktif yang tidak diketahui berarti sandbox saat ini tidak berisi RandomDay penanda. Nilai-nilai tersebut tidak boleh digantikan dengan nilai-nilai yang telah dipersiapkan. Jalur adaptor di luar `runtime/` direduksi menjadi referensi nama dasar, dan string diagnostik menyunting jalur absolut yang terdeteksi.

<a id="public-status-json"></a>
## Status publik JSON

`web_export/today.json` menggunakan `schema_version=2` dan `status_schema=randomday_public_status_v2`. Ini mengulangi identitas, active/prepared, pemilihan, transaksi, adaptor, dan fakta batas mulai ulang yang diperlukan oleh operator. Hal ini juga mencakup:

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order` saat ini, dan `prepared_day_position`;
- `family_selection_mode`, `family_locked_until_day_17` saat ini, dan `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families` lama, dan jumlah mereka;
- profil pertemuan, tingkatan, tema, dan peluang pertemuan campuran yang telah disiapkan;
- pengaktifan cakupan dunia, pengaturan dunia terbuka, kebijakan dunia yang tidak diketahui, dan hanya jumlah pola dunia yang dikecualikan yang dikonfigurasi;
- pesan yang telah disiapkan dan pratinjau pesan gabungan;
- `selected_at`, `sandbox_target`, `manual_copy_required`, dan hash yang telah disiapkan.

`profile_status` merupakan salah satu dari `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence`, atau `write_failed_or_rollback`. `prepared_ready=true` masih belum berarti aktif; penanda permulaan yang lebih baru diperlukan.

<a id="dictionary-and-translation-output"></a>
## Kamus dan keluaran terjemahan

`runtime/current/randomday_dictionary.json` menggunakan `schema=randomday_runtime_dictionary_v2` dan mengidentifikasi versi kamus `randomday_dictionary_v2`. Ini menjelaskan mode paket, status pemilihan, domain tekanan, label pengaturan, nilai mentah, dan makna bahasa sederhana. Nilai yang tidak diketahui tetap eksplisit dan bukan diubah menjadi deskripsi yang meyakinkan.

`player_message_preview.txt`, `today.json`, `today.html`, dan pemberitahuan dalam game adalah tampilan yang berasal dari modul terjemahan yang sama. Profil dasar dan nilai `SandboxSettings.ini` tetap menjadi sumber kebenaran.

<a id="failure-and-recovery-rules"></a>
## Aturan kegagalan dan pemulihan

1. Penulisan atau validasi yang gagal tidak akan pernah menjadi target produksi.
2. Promosi atau pembacaan kembali produksi yang gagal memicu pemulihan dokumen asli yang disimpan; pencadangan operasi adalah cadangan ketika pemulihan gagal.
3. File rollback yang disimpan atau status `rollback_failed` memerlukan peninjauan manual saat game atau server dihentikan.
4. Penulisan sandbox yang berhasil ditambah penerapan status rotasi yang gagal terdegradasi, belum siap; adaptor dan pesan profil yang telah disiapkan dilewati.
5. Kegagalan ekspor tidak mengubah hasil sandbox, namun menghilangkan sumber bukti kenyamanan. Gunakan log transaksi, status, dan pembacaan kembali file.
6. Output runtime adalah data operasional lokal. Jangan menambahkannya ke rilis ZIP atau publikasikan sebagai contoh tanpa tinjauan privasi terpisah.
