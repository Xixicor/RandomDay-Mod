<a id="interpret-runtime-state-and-output-schemas"></a>
# Giải thích các lược đồ đầu ra và trạng thái thời gian chạy

> **Nguồn tiếng Anh chuẩn:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Đây là hướng dẫn lược đồ hoàn chỉnh trường chuẩn. Nó trả lời ý nghĩa của từng trường, trạng thái, giá trị trống và kết quả máy. Sử dụng [bản đồ tệp thời gian chạy](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md) cho nhà sản xuất, đường dẫn, thời gian ghi, lưu giữ, sidecar giao dịch và vị trí khôi phục.

Tất cả các đường dẫn trong hướng dẫn này đều liên quan đến thư mục `RandomDay/` trừ khi một hàng đặt tên rõ ràng cho hộp cát đã định cấu hình hoặc mục tiêu bộ điều hợp tùy chọn. Đầu ra thời gian chạy được tạo sau khi cài đặt và không phải là thành viên của cả hai bản phát hành ZIP.

<a id="choose-the-authoritative-view"></a>
## Chọn chế độ xem có thẩm quyền

| Cần | Nguồn có thẩm quyền |
|---|---|
| Các quy tắc được tải bởi quy trình hiện tại | RandomDay trong `SandboxSettings.ini` đọc tại khởi động |
| Sổ sách hàng đợi đã chuẩn bị sẵn | `runtime/rotation_state.txt`, lược đồ `1` |
| Trạng thái cục bộ chi tiết | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Trạng thái công khai có thể đọc được bằng máy | `web_export/today.json`, lược đồ `2` và `randomday_public_status_v2` |
| Trạng thái có thể đọc được của con người | `web_export/today.html`, bắt nguồn từ quá trình chuyển đổi trạng thái công khai tương tự |
| Từ vựng dịch | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Thông báo về trình phát được giới hạn chính xác | `runtime/current/player_message_preview.txt` |

Gói HTML chế độ xem, xem trước và bản tóm tắt đã dịch là các chế độ xem phái sinh. Chúng không ghi đè điểm đánh dấu hộp cát, kết quả giao dịch hoặc giá trị hồ sơ thô. Xác định vị trí các tệp tốt nhất được biết đến gần đây nhất, bản sao lưu hoạt động, sidecar, máy nhân bản, mục tiêu bộ điều hợp và `UE4SS.log` trong [Tệp thời gian chạy](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md).

<a id="rotation-state-schema"></a>
## Lược đồ trạng thái xoay

`runtime/rotation_state.txt` sử dụng lược đồ `1` và chứa một cặp `key=value` trên mỗi dòng:

| Trường | Ý nghĩa |
|---|---|
| `schema_version` | Phải là `1`. |
| `mod_version` | Nhận dạng gói được đọc từ `.randomday_version`. |
| `rotation_id` | Mã định danh cho lần chuyển hiện tại qua nhóm đủ điều kiện. |
| `mode` | `selected_run`, `non_repeating_random_run` hoặc `rotation_run`. |
| `available_families` | ID gia đình đủ điều kiện được phân tách bằng dấu phẩy sau khi lọc cấu hình. |
| `remaining_families` | Các gia đình đủ điều kiện chưa được chọn trong thẻ không lặp lại hiện tại. |
| `completed_families` | Các gia đình có thứ tự 17 vị trí duy trì hoàn chỉnh đã hoàn thành trong thẻ hiện tại. |
| `active_family`, `active_day` | Thông tin điểm đánh dấu hoạt động được ghi lại khi lựa chọn được thực hiện. Điểm đánh dấu hộp cát có hiệu lực trong lần khởi động tiếp theo. |
| `prepared_family`, `prepared_day` | Hồ sơ được giữ lại cho lần khởi động lại tiếp theo. |
| `active_run_id` | Giá trị nhận dạng do gia đình điều hành được liên kết với lựa chọn đã chuẩn bị. |
| `last_status` | Trạng thái lựa chọn lịch đã tạo ra tệp này. |
| `session_mode` | Đã giải quyết dành riêng liên tục, dành riêng tạm thời hoặc vòng đời singleplayer/LAN. |
| `start_day_mode` | Lựa chọn bắt đầu ngẫu nhiên một lần hoặc được định cấu hình cho lần chạy mới. |
| `day_progression_mode` | Tiến trình được bao bọc tuần tự hoặc không lặp lại ngẫu nhiên. |
| `day_order` | ID ngày cố định được phân tách bằng dấu phẩy theo thứ tự chính xác mà chúng sẽ được chuẩn bị. |
| `day_position` | Vị trí của ngày chuẩn bị trong `day_order`. |
| `updated_at` | Thời gian ghi cục bộ để so sánh toán tử. |

Việc ghi trạng thái chỉ được chấp nhận khi điểm đánh dấu lược đồ, họ đã chuẩn bị và ngày đã chuẩn bị đọc lại chính xác. Tệp hiện tại không thể đọc được có thể quay trở lại `rotation_state.last_good.txt`; điểm đánh dấu hộp cát đã chọn vẫn xác định nội dung trò chơi đã tải cho quy trình hiện tại.

<a id="runtime-status-json"></a>
## Trạng thái thời gian chạy JSON

`runtime/current/randomday_status.json` sử dụng `status_schema=randomday_runtime_status_v2`. Các nhóm trường chính của nó là:

| Nhóm | Các trường và diễn giải |
|---|---|
| Danh tính | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Lựa chọn | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Đang hoạt động | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Đã chuẩn bị | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Bản tóm tắt do con người thực hiện | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Viết bằng chứng | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Bằng chứng về bộ chuyển đổi | `adapter_status`, `adapter_results`; mỗi bản ghi bộ điều hợp chứa bằng chứng về khả năng tương thích, trạng thái transaction/rollback, số lượng tệp đã thay đổi và các tham chiếu mục tiêu được xử lý lại |
| Ranh giới | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Chẩn đoán | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Các giá trị hoạt động không xác định có nghĩa là hộp cát hiện tại không chứa RandomDay. Chúng không được thay thế bằng các giá trị đã chuẩn bị sẵn. Đường dẫn adapter bên ngoài `runtime/` được giảm xuống thành tham chiếu tên cơ sở và chuỗi chẩn đoán sẽ loại bỏ các đường dẫn tuyệt đối được phát hiện.

<a id="public-status-json"></a>
## Trạng thái công khai JSON

`web_export/today.json` sử dụng `schema_version=2` và `status_schema=randomday_public_status_v2`. Nó lặp lại danh tính, active/prepared, lựa chọn, giao dịch, bộ điều hợp và các dữ kiện ranh giới khởi động lại mà nhà điều hành cần. Nó cũng bao gồm:

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order` hiện tại và `prepared_day_position`;
- `family_selection_mode`, `family_locked_until_day_17` hiện tại và `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families` kế thừa và số lượng của chúng;
- hồ sơ gặp gỡ, cấp độ, chủ đề và cơ hội gặp gỡ hỗn hợp đã được chuẩn bị sẵn;
- hỗ trợ phạm vi thế giới, cài đặt thế giới mở, chính sách thế giới không xác định và chỉ số lượng các mẫu thế giới bị loại trừ đã được định cấu hình;
- bản xem trước tin nhắn được chuẩn bị sẵn và kết hợp;
- `selected_at`, `sandbox_target`, `manual_copy_required` và hàm băm đã được chuẩn bị sẵn.

`profile_status` là một trong `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence` hoặc `write_failed_or_rollback`. `prepared_ready=true` vẫn không có nghĩa là đang hoạt động; cần có điểm đánh dấu khởi động sau.

<a id="dictionary-and-translation-output"></a>
## Đầu ra từ điển và bản dịch

`runtime/current/randomday_dictionary.json` sử dụng `schema=randomday_runtime_dictionary_v2` và nhận dạng phiên bản từ điển `randomday_dictionary_v2`. Nó mô tả các chế độ gói, trạng thái lựa chọn, miền áp suất, nhãn cài đặt, giá trị thô và ý nghĩa ngôn ngữ đơn giản. Các giá trị không xác định vẫn rõ ràng thay vì được chuyển đổi thành mô tả đáng tin cậy.

`player_message_preview.txt`, `today.json`, `today.html` và thông báo trong trò chơi là các chế độ xem được lấy từ cùng một mô-đun dịch. Cấu hình cơ bản và các giá trị `SandboxSettings.ini` thô vẫn là nguồn đáng tin cậy.

<a id="failure-and-recovery-rules"></a>
## Quy tắc khôi phục và lỗi

1. Việc ghi hoặc xác thực đang chờ xử lý không thành công sẽ không bao giờ trở thành mục tiêu sản xuất.
2. Việc xúc tiến hoặc đọc lại sản xuất không thành công sẽ kích hoạt khôi phục bản gốc được giữ; bản sao lưu hoạt động là phương án dự phòng khi quá trình khôi phục đó không thành công.
3. Tệp khôi phục được giữ lại hoặc trạng thái `rollback_failed` yêu cầu xem xét thủ công trong khi trò chơi hoặc máy chủ bị dừng.
4. Việc ghi vào hộp cát thành công cộng với cam kết trạng thái xoay không thành công đã xuống cấp, chưa sẵn sàng; bộ điều hợp và thông báo cấu hình đã chuẩn bị bị bỏ qua.
5. Lỗi xuất không làm thay đổi kết quả hộp cát nhưng nó sẽ xóa nguồn bằng chứng tiện lợi. Sử dụng nhật ký giao dịch, trạng thái và đọc lại tệp.
6. Đầu ra thời gian chạy là dữ liệu vận hành cục bộ. Đừng thêm chúng vào bản phát hành ZIP hoặc xuất bản chúng dưới dạng ví dụ mà không có đánh giá riêng về quyền riêng tư.
