<a id="glossary"></a>
# Bảng thuật ngữ

> **Nguồn tiếng Anh chuẩn:** [GLOSSARY.md](../../GLOSSARY.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Đây là từ vựng chuẩn cho RandomDay tài liệu. Các thủ tục liên kết đến các định nghĩa này thay vì xác định lại cùng một trạng thái trong nhiều hướng dẫn. Quy tắc trường dành riêng cho lược đồ vẫn còn trong [Đầu ra thời gian chạy](K%E1%BA%BET_QU%E1%BA%A2_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md).

| Thuật ngữ | Ý nghĩa đơn giản | Ý nghĩa kỹ thuật chính xác |
|---|---|---|
| Hồ sơ đang hoạt động | Các quy tắc mà phiên hiện tại đang sử dụng. | Gói family/day được xác định bởi RandomDay đọc điểm đánh dấu từ hộp cát khi khởi động quá trình. |
| Hồ sơ đã chuẩn bị | Các quy tắc đã sẵn sàng cho phiên sau. | Đầy đủ family/day có byte mục tiêu đã vượt qua quá trình xác thực và đọc lại cũng như trạng thái xoay đã được cam kết. Nó không hoạt động trước khi khởi động lại đọc lại. |
| Đã khôi phục | Việc chuẩn bị không thành công và các byte đã xác minh trước đó đã bị đặt lại. | Giao dịch không thành công báo cáo việc khôi phục và đọc lại thành công bản gốc đã được giữ hoặc bản sao khôi phục đã được xác minh. |
| Hàng đợi khởi động lại tiếp theo | Một lựa chọn đã chuẩn bị sẵn được giữ lại cho lần khởi động tiếp theo. | `next_reboot_queue` chọn một lần cho mỗi quy trình và sử dụng lại lựa chọn do khởi động sở hữu đó trong quá trình giám sát. |
| Bootstrap | Việc chuẩn bị đầu tiên khi không có điểm đánh dấu hoạt động nào tồn tại. | Lựa chọn ngày đầu tiên được định cấu hình hoặc ngẫu nhiên từ một nhóm đủ điều kiện; `cycle.bootstrap_day` chỉ là dự phòng tương thích. |
| Gia đình | Quá trình phát triển kiểu chơi kéo dài 17 ngày. | Một mục đăng ký và mô-đun dòng tạo ra chính xác 17 hồ sơ hoàn chỉnh. |
| Xoay | Vượt qua các gia đình đủ điều kiện. | Trạng thái được xác định bởi `rotation_id`, với danh sách gia đình có sẵn, còn lại và đã hoàn thành. |
| Chạy | Một gia đình trên tất cả các ID 17 ngày. | Một chuỗi giới hạn họ được xác định bởi `run_id`; nhóm vẫn bị khóa cho đến khi mọi vị trí đặt hàng trong ngày liên tục hoàn thành. |
| Chế độ phiên | Cách nhà điều hành sử dụng gói này. | `persistent_dedicated`, `temporary_dedicated` hoặc `singleplayer_lan`; chế độ gói vẫn kiểm soát ranh giới hệ thống tập tin. |
| Thứ tự ngày | Thứ tự chính xác được sử dụng bởi một nhóm chạy. | Một hoán vị 17 số được duy trì. Chế độ tuần tự kết thúc từ ngày bắt đầu; chế độ ngẫu nhiên xáo trộn một lần mà không lặp lại. |
| Điểm đánh dấu | Danh tính được lưu trữ trong tệp hộp cát. | `RANDOMDAY_*` được hiển thị với hồ sơ hoàn chỉnh và đọc ở lần khởi động quy trình tiếp theo. |
| Đã chuẩn bị sẵn sàng | Giao dịch ghi và trạng thái đã thành công. | `prepared_ready=true` yêu cầu kết quả hộp cát thành công và không có lỗi cam kết trạng thái. Nó không chứng minh được sự kích hoạt. |
| Đã có sẵn | Mục tiêu đã có số byte mong muốn. | Băm hồ sơ được hiển thị khớp với mục tiêu, vì vậy RandomDay xác minh last-good/mirror hoạt động mà không cần viết lại phần chính. |
| Tính bền vững của trạng thái xuống cấp | Các byte hộp cát đã thành công nhưng việc ghi sổ kế toán luân chuyển thì không. | `profile_status=degraded_state_persistence`; bộ điều hợp và tin nhắn cấu hình đã chuẩn bị bị bỏ qua. |
| Tệp đang chờ xử lý | Các byte ứng cử viên chưa được thăng cấp. | `<target>.randomday.pending`, được ghi, đọc lại và xác thực trước khi thay thế. |
| Tệp khôi phục | Bản gốc được giữ lại trong quá trình thay thế. | `<target>.randomday.rollback`, được sử dụng để khôi phục sản xuất khi quảng cáo hoặc xác thực không thành công. |
| Sao lưu hoạt động | Một bản sao lâu bền được tạo ra trước khi đột biến. | Một tệp đã được xác minh trong `runtime/backups/` cho giao dịch chính, sao chép hoặc bộ chuyển đổi. |
| Hàng hóa được biết đến lần cuối | Hộp cát mới nhất được chấp nhận để khôi phục. | `runtime/last_good/SandboxSettings.ini` cộng với `manifest.lua`; cặp này ghi lại danh tính hồ sơ và hàm băm. |
| Gương | Mục tiêu hộp cát thứ hai tùy chọn. | Mục tiêu được định cấu hình rõ ràng hoặc có nguồn gốc từ tên thế giới được viết sau mục tiêu chính thông qua giao dịch của chính nó. |
| Chế độ gói | Ranh giới cài đặt được chọn bởi nội dung phát hành. | `dedicated_server` hoặc `singleplayer_manual` từ `.randomday_mode`. |
| Chế độ sao chép thủ công | Singleplayer/LAN mà không cần lưu khám phá. | `singleplayer_manual` chỉ ghi bên trong `runtime/singleplayer_manual/` và vô hiệu hóa bộ điều hợp và máy nhân bản. |
| Bộ điều hợp | RandomDay-owned ánh xạ cho một mod đã cài đặt khác. | Một gói giao dịch được kiểm soát bằng chữ ký chỉ cập nhật các nhiệm vụ hiện có sau khi kiểm tra sao lưu và kiểm tra tính tương thích. |
| Được công nhận bố cục | Hình dạng tệp bộ điều hợp chính xác được chấp nhận để ghi. | Tất cả các khóa chữ ký bắt buộc và tệp mục tiêu đều có sẵn; chỉ tên tệp là không đủ. |
| `not_installed` | Không tìm thấy mục tiêu tùy chọn. | Kết quả của bộ chuyển đổi an toàn không có đột biến. |
| `skipped_incompatible` | Một mục tiêu tồn tại nhưng hình dạng của nó không được hỗ trợ. | Kết quả của bộ chuyển đổi an toàn không có đột biến vì chữ ký hoàn chỉnh không khớp. |
| `failed_rolled_back` | Một thay đổi không thành công và các byte trước đó bị bỏ qua nguyên vẹn. | Giao dịch bộ điều hợp không thành công trước khi đột biến hoặc tất cả các tệp bị ảnh hưởng đều được khôi phục và xác minh. |
| `rollback_failed` | Không thể xác minh quá trình khôi phục tự động. | Trạng thái bộ điều hợp dừng cứng yêu cầu khôi phục thủ công từ bản sao lưu đã ghi. |
| Từ điển | Ánh xạ từ giá trị thô sang giải thích công khai. | `randomday_dictionary_v2`, được tạo từ `dictionary.lua` và được bao gồm trong đầu ra trạng thái thời gian chạy. |
| Bản dịch | Chế độ xem của con người bắt nguồn từ các giá trị hồ sơ thô. | Điểm số miền giới hạn, dữ kiện, tóm tắt và thông báo được tạo bởi `translation.lua`; giá trị thô vẫn có thẩm quyền. |
| Trạng thái công khai | Bản tóm tắt toán tử có thể đọc được bằng máy đã được dọn dẹp. | `web_export/today.json` sử dụng `randomday_public_status_v2`. |
| Trạng thái thời gian chạy | Ảnh chụp nhanh chi tiết mà máy có thể đọc được trên máy cục bộ. | `runtime/current/randomday_status.json` sử dụng `randomday_runtime_status_v2`. |
