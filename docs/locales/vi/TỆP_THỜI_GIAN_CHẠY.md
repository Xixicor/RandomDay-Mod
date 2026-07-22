<a id="locate-runtime-files-and-status"></a>
# Xác định vị trí và trạng thái tệp thời gian chạy

> **Nguồn tiếng Anh chuẩn:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Đây là bản kiểm kê đường dẫn chuẩn được các nhà khai thác sử dụng và truy xuất nguồn gốc. Nó trả lời tập tin ở đâu, ai viết nó, khi nào nó thay đổi, nó tồn tại trong bao lâu và nó phục vụ vai trò phục hồi nào. [tham chiếu đầu ra thời gian chạy](K%E1%BA%BET_QU%E1%BA%A2_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md) sở hữu các lược đồ, ý nghĩa trường, trạng thái trống và diễn giải giá trị máy.

Tất cả các đường dẫn trong hướng dẫn này đều liên quan đến thư mục `RandomDay/` đã cài đặt trừ khi có quy định khác. Đầu ra thời gian chạy được tạo sau khi cài đặt; chúng bị loại khỏi các ZIP phát hành.

<a id="operator-file-map"></a>
## Bản đồ tệp toán tử

| Đường dẫn | Nhà sản xuất và trình kích hoạt | Cập nhật và lưu giữ | Ý nghĩa và khôi phục |
|---|---|---|---|
| Chính được định cấu hình `SandboxSettings.ini` | `ax_sandbox/writer.lua` sau hồ sơ tuần tự hóa và xác thực ở chế độ chuyên dụng. | Đã thay thế về mặt giao dịch; mục tiêu được định cấu hình bởi nhà điều hành hoặc bắt nguồn từ quá trình cài đặt. | Hồ sơ hoàn chỉnh cho lần khởi động tiếp theo. Phiên đang chạy giữ nguyên các quy tắc đã được tải. |
| Bản sao được định cấu hình `SandboxSettings.ini` | Trình ghi hộp cát sau kết quả chính thành công khi một bản sao rõ ràng đủ điều kiện. | Thay thế giao dịch với nỗ lực cao nhất. | Chỉ bản sao phụ; một máy nhân bản không thay thế cấu hình đường dẫn chính chính xác. |
| Mục tiêu bộ điều hợp được công nhận | `ax_external/bridge.lua` sau khi khớp chữ ký bố cục hoàn chỉnh. | Các nhiệm vụ hiện tại được thay đổi về mặt giao dịch bằng các bản sao lưu duy nhất. | Cấu hình mod được cài đặt riêng biệt; kiểm tra kết quả của bộ chuyển đổi sáu trạng thái một cách độc lập với hộp cát chính. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` sau khi giao dịch hộp cát thành công. | Được thay thế về mặt giao dịch sau mỗi lần chuẩn bị được chấp nhận. | Sổ sách xếp hàng. Nếu không thể đọc được, RandomDay thử trạng thái tốt cuối cùng. |
| `runtime/rotation_state.last_good.txt` | Sao lưu giao dịch lịch. | Được thay thế khi trạng thái hiện tại được cập nhật. | Trạng thái có thể đọc trước đó; bảo quản nó trong quá trình chẩn đoán và cập nhật. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` sau khi thành công, khả năng duy trì bị suy giảm hoặc ghi không thành công. | Được thay thế về mặt giao dịch trên mỗi lần chuyển trạng thái. | Có cấu trúc chuẩn active/prepared, bản tóm tắt giao dịch, bản dịch và bộ chuyển đổi. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` bên cạnh trạng thái. | Đã thay thế về mặt giao dịch. | Lược đồ `randomday_runtime_dictionary_v2`: điều khoản, cài đặt bản dịch, tên miền, chế độ gói và trạng thái lựa chọn. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` bên cạnh trạng thái. | Đã thay thế về mặt giao dịch. | Bản xem trước tin nhắn được giới hạn chính xác để nhà điều hành xem xét; nó không chứng minh khả năng hiển thị của ứng dụng khách. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` sau kết quả hộp cát chính đã được xác minh. | Đã thay thế về mặt giao dịch. | Hộp cát cuối cùng được chấp nhận là hàng hóa đã biết. Chỉ sử dụng với bảng kê khai của nó. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua` sau khi ảnh chụp nhanh hộp cát thành công. | Được thay thế về mặt giao dịch thành một cặp với ảnh chụp nhanh hộp cát. | Phiên bản, ID hồ sơ, tên, ngày, hàm băm nội dung và thời gian ghi cho tệp tốt nhất. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Trình ghi chính hoặc bản sao trước khi đột biến. | Thư mục hoạt động duy nhất; RandomDay không cắt tỉa nó. | Các byte ghi trước đã được xác minh. Nhà điều hành sở hữu quyền lưu giữ sau khi xem xét. |
| `runtime/backups/external_<operation>/...` | Cầu nối bộ chuyển đổi trước bất kỳ đột biến bộ điều hợp nào. | Thư mục hoạt động duy nhất; không tự động cắt tỉa. | Một bản sao đã được xác minh của mọi mục tiêu bộ điều hợp đã lên kế hoạch. |
| `runtime/pending/` | Được tạo bằng cách thiết lập thư mục thời gian chạy. | Dành riêng; Thay vào đó, các giao dịch chính hiện tại sử dụng các sidecar tương tự. | Không coi thư mục trống là bằng chứng chuẩn bị. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Trình ghi hộp cát ở chế độ `singleplayer_manual`. | Đã thay thế giao dịch khi gói thủ công chạy. | Tệp hoàn chỉnh để người vận hành kiểm tra và sao chép thủ công vào một tệp đã dừng world. |
| `web_export/today.json` | `ax_web/export.lua` sau mỗi kết quả chuẩn bị. | Đã thay thế về mặt giao dịch. | Kết quả active/prepared và writer/adapter có thể đọc được bằng máy nhỏ gọn. |
| `web_export/today.html` | `ax_web/export.lua` sau khi xuất thành công. | Đã thay thế về mặt giao dịch. | Chế độ xem của con người bắt nguồn từ cùng một quá trình chuyển đổi; không phải bằng chứng độc lập. |
| `UE4SS.log` | UE4SS và `ax_core/log.lua`. | Được quản lý bởi UE4SS, không phải RandomDay. | Các dòng khởi động, cấu hình đã chọn, ghi, bộ điều hợp, thông báo, trạng thái và các dòng lỗi có tiền tố `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Nhận biết trạng thái tệp trống và không thành công

- Có thể tạo một mục tiêu chính hoặc mục tiêu phản chiếu bị thiếu. Hồ sơ không hợp lệ, lỗi ghi đang chờ xử lý, quảng cáo hoặc đọc lại sản xuất chưa sẵn sàng. Lỗi gương không làm thay đổi kết quả chính được chấp nhận.
- `runtime/singleplayer_manual/SandboxSettings.ini` có thể được tạo trong lần chạy thủ công đầu tiên. Lỗi tạo vẫn hiển thị ở trạng thái và đầu ra nhật ký.
- Một `rotation_state.txt` có thể quay trở lại trạng thái tốt cuối cùng hoặc bootstrap dựa trên điểm đánh dấu. Cam kết trạng thái không thành công tạo ra `degraded_state_persistence`.
- `runtime/last_good/` có thể vắng mặt trước mục tiêu được xác minh đầu tiên. Nếu cập nhật bảng kê khai được ghép nối không thành công, RandomDay khôi phục cặp được chấp nhận trước đó.
- `runtime/backups/mirror_<operation>/` là vị trí sao lưu dành riêng cho máy nhân bản. Không có tệp sao lưu chính hoặc sao lưu nhân bản nào tồn tại khi mục tiêu đó không tồn tại trước giao dịch.
- Đột biến bộ chuyển đổi không bắt đầu khi quá trình tạo hoặc đọc lại bản sao lưu của nó không thành công.
- Các tệp trạng thái hiện tại, từ điển hoặc xem trước có thể không có khi đầu ra trạng thái thời gian chạy không có sẵn hoặc không đầy đủ.
- Một `export_failed` có thể để lại `today.json` tại chỗ. Cập nhật lỗi hộp cát JSON nhưng không tạo ra lỗi mới HTML; so sánh dấu thời gian với `UE4SS.log`.
- Một chiếc sidecar cũ đang chờ xử lý sẽ bị xóa trước lần thử mới; lỗi dọn dẹp sẽ dừng giao dịch. Nếu cả mục tiêu sản xuất và sidecar rollback đều tồn tại, RandomDay bảo toàn các byte khôi phục để xem xét.
- Không `[RandomDay]` dòng bắt đầu trong `UE4SS.log` có nghĩa là việc tải mod chưa được chứng minh.

<a id="transaction-sidecars"></a>
## Giao dịch phụ

Người viết giao dịch có thể tạo các tệp anh chị em bên cạnh mục tiêu:

| Mẫu | Trạng thái | Hành động của người vận hành |
|---|---|---|
| `<target>.randomday.pending` | Các byte ứng cử viên trước khi thăng hạng. | Thường bị xóa bởi quảng cáo. Giữ nguyên nó nếu có báo cáo lỗi đang chờ xử lý hoặc có sự cố đọc lại. |
| `<target>.randomday.rollback` | Các byte gốc được giữ lại trong quá trình thay thế. | Thường được khôi phục khi thất bại hoặc bị xóa sau khi được xác minh thành công. Đừng xóa nó khi mục tiêu cũng có mặt; sự kết hợp đó cần được xem xét. |
| `<target>.randomday.restore.pending` | Các byte ứng cử viên trong quá trình khôi phục bộ điều hợp. | Dự trữ bằng bản sao lưu bộ điều hợp nếu quá trình khôi phục không thành công. |
| `<target>.randomday.restore.rollback` | Các byte khôi phục được giữ trong quá trình khôi phục bộ điều hợp. | Duy trì và dừng dịch vụ bị ảnh hưởng nếu quá trình dọn dẹp hoặc khôi phục chưa được xác minh. |

Các tệp này có thể tồn tại bên cạnh hộp cát chuyên dụng hoặc một mục tiêu bộ điều hợp được cài đặt riêng. Sự hiện diện của chúng là trạng thái giao dịch, không phải bằng chứng cho thấy cấu hình mới đã hoạt động.

<a id="interpret-file-contents"></a>
## Giải thích nội dung tệp

Sử dụng [Trạng thái thời gian chạy và tham chiếu đầu ra](K%E1%BA%BET_QU%E1%BA%A2_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md) cho các lược đồ `rotation_state.txt`, `randomday_status.json` hiện tại và `today.json` hoàn chỉnh. Tham chiếu đó cũng sở hữu các trạng thái trống, ý nghĩa lỗi, đầu ra từ điển và quy tắc trạng thái đã chuẩn bị không phải là trạng thái hoạt động. Sử dụng [tham chiếu trạng thái và lỗi](THAM_KH%E1%BA%A2O_TR%E1%BA%A0NG_TH%C3%81I_V%C3%80_L%E1%BB%96I.md) khi giá trị máy chính xác yêu cầu thao tác của người vận hành.

<a id="rotation-state-fields"></a>
### Trường trạng thái xoay

Xem lược đồ [chuẩn mực trạng thái xoay](K%E1%BA%BET_QU%E1%BA%A2_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Lược đồ trạng thái hiện tại

Xem lược đồ [trạng thái thời gian chạy JSON lược đồ](K%E1%BA%BET_QU%E1%BA%A2_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md#runtime-status-json).

<a id="web-export-schema"></a>
### Lược đồ xuất web

Xem lược đồ [trạng thái công khai JSON lược đồ](K%E1%BA%BET_QU%E1%BA%A2_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Giữ lại bằng chứng khôi phục

RandomDay ghi đè trạng thái hiện tại, trạng thái hiện tại, trạng thái tốt nhất và lượt xem web. Nó tạo các thư mục sao lưu hoạt động duy nhất và không xóa các thư mục cũ. Chọn chính sách lưu giữ bên ngoài quy trình đang chạy nhưng không bao giờ xóa bằng chứng khôi phục mới nhất trong khi vấn đề ghi, đọc lại, trạng thái hoặc khôi phục chưa được giải quyết.
