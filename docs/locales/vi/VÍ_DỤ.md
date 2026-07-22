<a id="worked-configuration-examples"></a>
# Các ví dụ về cấu hình đã hoạt động

> **Nguồn tiếng Anh chuẩn:** [EXAMPLES.md](../../EXAMPLES.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Những ví dụ này sử dụng tên và giá trị được phát minh để cho thấy cách RandomDay báo cáo các kết quả chuẩn bị, kích hoạt, khôi phục và tương thích thông thường.

<a id="first-bootstrap"></a>
## First Bootstrap

Trước: phiên chạy đã tải một hộp cát không có điểm đánh dấu RandomDay.

Sau một phiên chạy khởi động thành công RandomDay:

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

Ý nghĩa: RandomDay vẫn chưa biết phiên hiện tại. Ngày thứ 8 được định cấu hình đã sẵn sàng cho lần khởi động lại tiếp theo và thứ tự gói hoàn chỉnh vẫn được duy trì. Đừng mô tả Ngày 8 là đang hoạt động.

<a id="normal-next-day"></a>
## Ngày tiếp theo bình thường

Trước: điểm đánh dấu hộp cát hiện tại xác định Ngày hành động 1.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Ý nghĩa: Ngày 1 đang hoạt động cho quá trình này; Ngày thứ 2 đã được chuẩn bị. Việc khởi động lại là quyết định của nhà điều hành.

<a id="state-commit-failure"></a>
## Lỗi cam kết trạng thái

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Ý nghĩa: byte hộp cát hợp lệ có thể có trên đĩa, nhưng RandomDay không thể duy trì bản ghi hàng đợi phù hợp. Giữ máy chủ dừng lại, bảo vệ hộp cát và cả hai tệp trạng thái quay, đồng thời thực hiện khôi phục thủ công. Chỉ viết vào hộp cát thành công không phải là một quá trình chuyển đổi được chuẩn bị lành mạnh.

<a id="primary-write-restored"></a>
## Đã khôi phục ghi chính

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Ý nghĩa: quá trình đọc lại quá trình sản xuất không thành công và tệp trước đó đã được khôi phục. Kiểm tra bản sao lưu hoạt động và lỗi đầu tiên trước khi bắt đầu lần khác. Đừng suy luận rằng hồ sơ đã chuẩn bị có thể sử dụng được.

<a id="adapter-outcomes"></a>
## Kết quả của Bộ chuyển đổi

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Ý nghĩa: mục tiêu của Tia laze gây chết người không được thay đổi vì bố cục hoàn chỉnh của nó không được nhận dạng. ANTE Mục tiêu đã được khớp. Không có kết quả nào làm thay đổi giao dịch hộp cát chính.

Nếu bộ điều hợp báo cáo `rollback_failed`, hãy dừng dịch vụ bị ảnh hưởng và giữ nguyên mục tiêu, sidecar và thư mục `runtime/backups/external_<operation>/`.

<a id="singleplayer-or-lan"></a>
## Người chơi đơn Hoặc LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Ý nghĩa: RandomDay chỉ viết `runtime/singleplayer_manual/SandboxSettings.ini`. Đóng trò chơi, kiểm tra tệp, sao lưu thế giới đã chọn và sao chép thủ công. Kết quả đầu ra không chứng minh được rằng bất kỳ thế giới nào đã tải nó.

<a id="incompatible-environment"></a>
## Môi trường không tương thích

Khi không có Yếu tố phi sinh học được đặt tên hoặc UE4SS đã chạy, bản phát hành phải ghi:

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

Việc phân tích cú pháp Lua cục bộ, đồ đạc và trích xuất gói vẫn là bằng chứng hữu ích nhưng không trở thành tuyên bố về khả năng tương thích rộng hơn.
