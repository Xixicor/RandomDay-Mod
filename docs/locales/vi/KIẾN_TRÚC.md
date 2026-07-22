<a id="architecture-and-data-flow"></a>
# Luồng dữ liệu và kiến ​​trúc

> **Nguồn tiếng Anh chuẩn:** [ARCHITECTURE.md](../../ARCHITECTURE.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


RandomDay sở hữu một công việc giới hạn: chuẩn bị hồ sơ hộp cát hoàn chỉnh cho sự khởi đầu trong tương lai mà không mô tả hồ sơ đó là hoạt động trong quá trình hiện tại. Cấu hình hoạt động xuất phát từ điểm đánh dấu trong tệp hộp cát mà Abiotic Factor đã tải trước khi UE4SS bắt đầu RandomDay. Cấu hình đã chuẩn bị là trạng thái tệp được xác thực, riêng biệt cho lần khởi động lại tiếp theo.

<a id="package-modes"></a>
## Chế độ gói

Trình tạo bản phát hành tạo ra hai ZIP từ cùng một danh sách và bộ nguồn chính xác cho phép `RandomDay/.randomday_mode` khác nhau ở mỗi cái.

| Chế độ | Đầu ra chính | Tự động ghi bên ngoài |
|---|---|---|
| `dedicated_server` | Máy chủ chuyên dụng đã được giải quyết `SandboxSettings.ini` | Hộp cát chính, các bản sao được định cấu hình có chủ ý và các bộ điều hợp tùy chọn được công nhận. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Không có cấu hình nào bên ngoài thư mục RandomDay; gương và bộ điều hợp bị tắt. |

`RandomDay/.randomday_version` và `RandomDay/.randomday_mode` là các điểm đánh dấu gói được tạo. `RandomDay/Scripts/ax_core/version.lua` đọc chúng; người vận hành không được chỉnh sửa chúng sau khi cài đặt.

<a id="session-modes"></a>
## Chế độ phiên

Kiểm soát chế độ gói trong đó RandomDay có thể ghi. `experience.mode` mô tả riêng vòng đời dự định:

| Chế độ phiên | Gói | Hợp đồng vòng đời |
|---|---|---|
| `persistent_dedicated` | Dành riêng | Tiếp tục dòng ổn định và thứ tự ngày 17 vị trí trong các lần khởi động lại dài hạn. |
| `temporary_dedicated` | Dành riêng | Coi mỗi lần khởi chạy là một phiên chơi giới hạn trong khi vẫn giữ nguyên thứ tự xếp hàng giữa các lần khởi chạy. |
| `singleplayer_lan` | Hướng dẫn chơi đơn | Tạo tệp mod-local cho thế giới do nhà điều hành chọn; không lưu khám phá hoặc sao chép tự động. |

`auto` phân giải thành `persistent_dedicated` trong gói chuyên dụng và `singleplayer_lan` trong gói thủ công. Chế độ phiên không làm thay đổi ranh giới công cụ: quy trình hiện tại đã tải hộp cát của nó trước khi RandomDay thực thi.

<a id="startup-path"></a>
## Đường dẫn khởi động

1. UE4SS tải `RandomDay/Scripts/main.lua`.
2. Điểm vào phân giải một `RandomDay/` gốc và tải `Scripts/ax_core/init.lua`.
3. `init.lua` tải cấu hình, hồ sơ, lịch, trình ghi, bộ điều hợp, trạng thái, xuất web và mô-đun tin nhắn người chơi. Nó từ chối chế độ gói không hợp lệ hoặc khóa an toàn giao dịch bị vô hiệu hóa. Nó cũng xác thực chế độ phiên tương thích với gói, chế độ ngày bắt đầu, ngày bắt đầu được định cấu hình và chế độ tiến triển trong ngày.
4. Mọi bản dựng gia đình đều xác thực `sandbox.profile_overrides` từ `Scripts/ax_config/server.lua`. Bốn lựa chọn trên toàn cấu hình được áp dụng sau các giá trị family/day và trước các quy tắc bất biến còn lại, vì vậy mọi cấu hình đã chuẩn bị đều sử dụng các lựa chọn đã định cấu hình giống nhau.
5. Gốc thời gian chạy và đầu ra web được neo vào thư mục mod đã giải quyết. Chế độ chơi đơn được giảm xuống một đầu ra mod-local trước khi chọn.
6. `ax_cycle/calendar.lua` đọc điểm đánh dấu hộp cát và trạng thái xoay có thể phục hồi, sau đó tạo một active/prepared quyết định cho quá trình trò chơi này.
7. `ax_sandbox/writer.lua` tuần tự hóa và xác thực hồ sơ đã chuẩn bị, sau đó sử dụng giao dịch thay thế cho mục tiêu đã chọn.
8. Trạng thái xoay vòng chỉ được thực hiện sau giao dịch hộp cát thành công. Lỗi cam kết trạng thái bị suy giảm: bộ điều hợp và thông báo của trình phát đã chuẩn bị sẵn bị bỏ qua do trạng thái hộp cát và hàng đợi không đồng ý.
9. Ở chế độ chuyên dụng, `ax_external/bridge.lua` đánh giá các bộ điều hợp tùy chọn dựa trên cấu hình đang hoạt động. Trong lần khởi động đầu tiên, không có điểm đánh dấu hoạt động nào tồn tại, do đó, hồ sơ ngày bắt đầu configured/random đã chuẩn bị là ánh xạ bộ điều hợp khả dụng duy nhất.
10. Trạng thái thời gian chạy JSON/text và chế độ xem web HTML/JSON được viết lại từ cùng một quyết định. Thông báo của người chơi được cài đặt sau cùng.

Mặc định `cycle.check_interval_ms=0` chạy trình tự này một lần khi khởi động. Nếu nhà điều hành cung cấp một khoảng dương và UE4SS hiển thị `LoopAsync`, các lệnh gọi lại sau này sẽ sử dụng lại lựa chọn do quy trình sở hữu. Họ có thể sửa chữa hoặc tái xuất lựa chọn đó nhưng không chọn một ngày khác trong cùng một quy trình.

<a id="rotation-state-machine"></a>
## Máy trạng thái xoay

| Trạng thái lựa chọn | Điều kiện nhập | Kết quả đã chuẩn bị | Khôi phục an toàn |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Không có điểm đánh dấu hoạt động và không có trạng thái chuẩn bị có thể phục hồi. | Vị trí đầu tiên được định cấu hình hoặc chọn ngẫu nhiên theo thứ tự ngày mới được duy trì. | Duy trì phiên hiện có; chỉ khởi động lại sau `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | Ngày hoạt động không phải là vị trí cuối cùng trong thứ tự được lưu trữ. | Vị trí được lưu trữ tiếp theo trong cùng một họ. | Nếu việc duy trì liên tục không thành công, hãy dừng máy chủ và điều chỉnh hộp cát và trạng thái xoay. |
| `active_marker_found_completed_run_prepare_next_unused_family` | Ngày hoạt động là vị trí cuối cùng trong thứ tự được lưu trữ. | Vị trí đầu tiên từ một thứ tự mới đặt hàng trong lần chạy dòng đủ điều kiện tiếp theo. | Xác nhận family/day/order mới trước khi khởi động lại. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Không có điểm đánh dấu hoạt động, nhưng trạng thái xoay đặt tên cho cấu hình đã chuẩn bị. | Cấu hình xếp hàng tương tự sẽ được xây dựng lại. | Bảo toàn các tệp trạng thái; không xóa chúng để buộc cuộn lại. |
| `supervision_reconfirm_prepared_profile_no_advance` | Lệnh gọi lại sau đó sẽ chạy trong cùng một quy trình. | Cấu hình được chuẩn bị tương tự. | Chẩn đoán giai đoạn lỗi đầu tiên; các cuộc gọi lại lặp lại không phải là lựa chọn mới. |

`selected_run` luôn sử dụng `selected_family`. `rotation_run` tiêu thụ đơn đặt hàng đủ điều kiện đã định cấu hình. `non_repeating_random_run` chọn từ các nhóm đủ điều kiện còn lại và bắt đầu một nhóm mới sau khi tất cả đã hoàn thành. Mỗi chế độ giữ một nhóm cho đến khi tất cả 17 ID ngày duy nhất trong `day_order` hoàn thành. Chế độ tuần tự kết thúc sau Ngày 17 khi thời điểm bắt đầu được định cấu hình không phải là Ngày 1; chế độ không lặp lại ngẫu nhiên lưu trữ một hoán vị và không bao giờ cuộn lại nó trong quá trình khôi phục.

<a id="sandbox-transaction"></a>
## Giao dịch hộp cát

Người viết hiển thị tất cả các khóa theo thứ tự chuẩn và xác thực các loại, phạm vi, quy tắc cố định, giá trị điểm đánh dấu và danh tính hồ sơ trước khi viết. Sau đó, việc thay thế sẽ tuân theo thứ tự sau:

1. chỉ xóa một tệp cũ đang chờ xử lý khi thấy an toàn;
2. giữ nguyên hoặc dừng trên các sidecar khôi phục có sẵn;
3. ghi các byte đang chờ xử lý;
4. đọc lại tệp đang chờ xử lý và xác thực nó;
5. tạo bản sao lưu hoạt động đã được xác minh khi có mục tiêu tồn tại;
6. giữ bản gốc làm tệp khôi phục giao dịch;
7. quảng bá tệp đang chờ xử lý;
8. đọc và xác thực tệp sản xuất;
9. khôi phục bản gốc đã giữ nếu quá trình xác thực quá trình quảng bá hoặc sản xuất không thành công;
10. giữ lại dữ liệu khôi phục và báo cáo lỗi nếu không thể xác minh việc dọn dẹp.

Lần ghi đầu tiên sử dụng cùng một đường dẫn pending/readback/validation. Không có mục tiêu ban đầu nên không có gì để khôi phục, do đó lần ghi đầu tiên không thành công không được báo cáo là khôi phục tệp gốc.

<a id="adapter-boundary"></a>
## Ranh giới bộ điều hợp

Bộ điều hợp là các định nghĩa bản vá được RandomDay-owned định nghĩa bản vá cho các mod được cài đặt riêng. Đầu tiên, cây cầu yêu cầu một đường dẫn mục tiêu được công nhận và chữ ký khóa hoàn chỉnh. Nó chỉ vá các nhiệm vụ hiện có, tạo bản sao lưu hoạt động, áp dụng mọi tệp được lập kế hoạch dưới dạng một giao dịch và khôi phục tất cả các mục tiêu bị ảnh hưởng nếu bất kỳ bước nào không thành công. Mục tiêu bị thiếu và không tương thích là kết quả tùy chọn thông thường.

RandomDay không tải mã của bên thứ ba vào gói của nó. Bố cục dựa trên lịch thi đấu chứng minh hành vi giao dịch và trình phân tích cú pháp của RandomDay's hành vi giao dịch và phân tích cú pháp, chứ không phải bản phát hành của bên thứ ba đã tải hoặc sử dụng các giá trị trong quy trình trò chơi.

<a id="output-boundary"></a>
## Ranh giới đầu ra

Các tệp thời gian chạy được tạo bên dưới `RandomDay/runtime/` và `RandomDay/web_export/`; không có đầu vào nào là bản phát hành ZIP. Trình ghi trạng thái xóa đường dẫn bộ điều hợp cục bộ của máy khỏi chẩn đoán JSON chẩn đoán. Đường dẫn, lược đồ, nhịp độ và bản đồ lưu giữ hoàn chỉnh có trong [Tệp và trạng thái thời gian chạy](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md).

<a id="failure-ownership"></a>
## Quyền sở hữu thất bại

| Giai đoạn thất bại | Hậu quả mà chủ sở hữu có thể nhìn thấy |
|---|---|
| Hồ sơ hoặc INI xác thực | Không thử ghi sản xuất. |
| Đang chờ xử lý. write/readback | Các byte sản xuất hiện có vẫn được giữ nguyên. |
| Sao lưu hoạt động | Việc thay thế dừng trước khi bản gốc được di chuyển. |
| Xác thực khuyến mãi hoặc sản xuất | Đã thử khôi phục tự động và kết quả của nó được báo cáo. |
| Tính bền vững ở trạng thái xoay | Các byte hộp cát đã chuẩn bị sẵn có thể tồn tại nhưng quá trình chuyển đổi bị suy giảm và adapters/messages bị bỏ qua. |
| Khả năng tương thích của bộ chuyển đổi | Mục tiêu không thay đổi với `not_installed` hoặc `skipped_incompatible`. |
| Bộ chuyển đổi write/readback | Tất cả các mục tiêu bộ điều hợp đã thay đổi sẽ được khôi phục khi có thể. |
| Xuất trạng thái hoặc web | Kết quả hộp cát vẫn có giá trị chính xác; lỗi đầu ra được ghi lại và không được coi là báo cáo thành công. |

Theo dõi [Hoạt động](HO%E1%BA%A0T_%C4%90%E1%BB%98NG.md) để khôi phục và [Khắc phục sự cố](KH%E1%BA%AEC_PH%E1%BB%A4C_S%E1%BB%B0_C%E1%BB%90.md) để kiểm tra triệu chứng đầu tiên.

<a id="evidence-limit"></a>
## Giới hạn bằng chứng

Bộ cố định Lua cục bộ có thể chứng minh hành vi nguồn, bất biến cấu hình được tạo, nhánh giao dịch, hình dạng đầu ra và ranh giới gói. Nó không chứng minh bản dựng Yếu tố phi sinh học hiện tại, UE4SS, bảng điều khiển máy chủ cụ thể, mọi kích thước hiển thị hoặc phiên bản mod của bên thứ ba chưa được kiểm tra. Những tuyên bố đó vẫn `not tested` cho đến khi quá trình chạy tương thích được đặt tên được ghi lại.
