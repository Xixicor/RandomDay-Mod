<a id="operate-active-prepared-and-recovery-state"></a>
# Hoạt động ở trạng thái hoạt động, chuẩn bị và phục hồi

> **Nguồn tiếng Anh chuẩn:** [OPERATIONS.md](../../OPERATIONS.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


RandomDay thay đổi tệp sandbox cho lần khởi động sau này. Nó không thay đổi các quy tắc đã được tải vào phiên Yếu tố phi sinh học đang chạy.

Trang này sở hữu các quyết định của nhà điều hành và quy trình khôi phục. Sử dụng [Bảng thuật ngữ](B%E1%BA%A2NG_THU%E1%BA%ACT_NG%E1%BB%AE.md) dành cho các thuật ngữ chuẩn, [Tệp thời gian chạy](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md) dành cho quyền sở hữu đường dẫn và [Đầu ra thời gian chạy](K%E1%BA%BET_QU%E1%BA%A2_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md) để biết chính xác các lược đồ và ý nghĩa của trường.

<a id="distinguish-active-and-prepared-state"></a>
## Phân biệt trạng thái hoạt động và trạng thái chuẩn bị

Một cấu hình đã chuẩn bị sẽ không hoạt động cho đến khi lần khởi động sau đó đọc được điểm đánh dấu của nó. Không sử dụng family/day để mô tả phiên hiện tại.

Sử dụng `web_export/today.html` để có bản tóm tắt dễ đọc và `web_export/today.json` để biết trạng thái chính xác. Xác nhận điểm đánh dấu hoạt động, danh tính đã chuẩn bị, `prepared_ready`, `profile_status`, kết quả giao dịch, kết quả khôi phục và kết quả cam kết trạng thái trước khi quyết định khởi động lại.

<a id="follow-the-normal-dedicated-server-sequence"></a>
## Tuân theo trình tự máy chủ chuyên dụng thông thường

| Trước | Hành động | Sau |
|---|---|---|
| Không RandomDay điểm đánh dấu | Bắt đầu với RandomDay đã bật. | Phiên hiện tại giữ nguyên các quy tắc hiện có; RandomDay tạo và duy trì đơn đặt hàng trong ngày, sau đó chuẩn bị configured/random vị trí. |
| Vị trí đầu tiên đã được chuẩn bị | Khởi động lại. | Ngày đó bắt đầu hoạt động; vị trí được lưu trữ tiếp theo trong cùng một họ đã được chuẩn bị. |
| Vị trí ở giữa đang hoạt động | Khởi động lại sau khi xem lại hồ sơ đã chuẩn bị. | Ngày đã chuẩn bị sẽ hoạt động và vị trí được lưu trữ sau đây được chuẩn bị. |
| Vị trí cuối cùng đang hoạt động | Khởi động lại sau khi xem xét họ tiếp theo. | Vị trí đầu tiên đang hoạt động của một đơn đặt hàng dòng đủ điều kiện khác sẽ hoạt động. |

`selected_run` giữ lại dòng đã định cấu hình. `non_repeating_random_run` giữ một họ được chọn ngẫu nhiên trong tất cả các vị trí trong 17 ngày và tránh sử dụng lại một họ cho đến khi hết danh sách đủ điều kiện. `rotation_run` tuân theo thứ tự dòng được định cấu hình. `cycle.day_progression_mode` kiểm soát thứ tự ngày độc lập với lựa chọn nhóm.

Bản cài đặt mới luôn cần một quy trình để chuẩn bị và một quy trình sau để kích hoạt. Điều này đúng với các máy chủ liên tục, máy chủ tạm thời và quá trình tạo singleplayer/LAN thủ công.

<a id="read-the-right-evidence"></a>
## Đọc bằng chứng phù hợp

Sử dụng [bản đồ tệp thời gian chạy](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md) để xác định trạng thái xoay, trạng thái hiện tại, các tệp được biết đến gần đây nhất, sao lưu hoạt động, xuất và `UE4SS.log`. Sử dụng [tham chiếu đầu ra thời gian chạy](K%E1%BA%BET_QU%E1%BA%A2_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md) cho mọi nhóm trường, lược đồ, trạng thái trống, ý nghĩa lỗi và quy tắc lưu giữ. HTML và JSON tóm tắt trạng thái nguồn; chúng không chứng minh rằng hồ sơ đã được khách hàng trò chơi trực tiếp sử dụng.

Nếu `prepared_ready` là `false` hoặc `profile_status` là `degraded_state_persistence`, hãy tiếp tục dừng máy chủ cho đến khi hộp cát và trạng thái xoay đồng ý. Quá trình ghi vào hộp cát hợp lệ nhưng tồn tại ở trạng thái không thành công không phải là một quá trình chuyển đổi được chuẩn bị tốt.

<a id="respond-to-writer-outcomes"></a>
## Phản hồi kết quả của người viết

RandomDay chuẩn bị các byte mới trong tệp anh chị em, đọc lại chúng, xác thực hộp cát hoàn chỉnh, giữ nguyên bản gốc khi có, quảng bá tệp mới và đọc lại. Nó chỉ báo cáo sẵn sàng sau khi quá trình đọc lại sản xuất đồng ý.

Nếu quá trình xác thực quảng bá hoặc sản xuất không thành công, RandomDay sẽ cố gắng khôi phục tệp do thao tác đó nắm giữ. Lỗi khôi phục là một điểm dừng cứng: giữ cho máy chủ dừng và khôi phục theo cách thủ công thay vì khởi động lại nhiều lần.

<a id="respond-to-adapter-outcomes"></a>
## Phản hồi kết quả của bộ điều hợp

Sử dụng [Bộ điều hợp được hỗ trợ](B%E1%BB%98_%C4%90I%E1%BB%80U_H%E1%BB%A2P_%C4%90%C6%AF%E1%BB%A2C_H%E1%BB%96_TR%E1%BB%A2.md#read-an-adapter-result) cho bảng kết quả sáu trạng thái chuẩn và hành động tiếp theo. Điều trị `rollback_failed` như một điểm dừng cứng; bản sao lưu bộ điều hợp được ghi riêng là nguồn khôi phục.

Bộ điều hợp chỉ ảnh hưởng đến các mod được cài đặt riêng biệt. Chúng không bao giờ kích hoạt cấu hình hộp cát đã chuẩn bị RandomDay.

Khi khởi động bình thường, các giá trị bộ điều hợp được chọn từ cấu hình đang hoạt động vì mod được cài đặt riêng biệt có thể tải sau đó trong cùng một lần khởi động UE4SS. Trong lần khởi động đầu tiên, khi không có điểm đánh dấu RandomDay hoạt động, hồ sơ ngày bắt đầu đã chuẩn bị là bản đồ duy nhất có sẵn. Quy tắc tính thời gian này tách biệt với ranh giới hộp cát khởi động lại tiếp theo và vẫn phụ thuộc vào hành vi tải của chính mod khác.

<a id="manual-recovery"></a>
## Khôi phục thủ công

1. Dừng trò chơi hoặc máy chủ. Không khôi phục tệp khi tệp có thể đang mở.
2. Sao chép `SandboxSettings.ini`, `runtime/` hiện tại và `web_export/` sang bản sao lưu chẩn đoán riêng.
3. Kiểm tra `runtime/last_good/manifest.lua` và mục nhập có liên quan mới nhất trong `runtime/backups/`. Chọn một tệp có family/day và hàm băm khớp với trạng thái bạn định khôi phục.
4. Sao chép tệp đã xác minh đã chọn vào đường dẫn hộp cát chính đã định cấu hình.
5. Đọc lại và xác nhận rằng tệp đã hoàn tất trước khi bắt đầu.
6. Bắt đầu một lần và kiểm tra điểm đánh dấu đang hoạt động cũng như trạng thái đã chuẩn bị. Đừng cho rằng quá trình khôi phục thành công chỉ vì không có thông báo lỗi.

Nếu không có bản sao lưu nào được xác minh, hãy khôi phục bản sao lưu của nhà điều hành đã tạo trước khi cài đặt. RandomDay không thể xây dựng lại một tệp không bao giờ có thể đọc được.

<a id="account-for-control-panel-writes"></a>
## Tài khoản để ghi vào bảng điều khiển

Một số bảng máy chủ tạo ra `SandboxSettings.ini` trong khi khởi động. RandomDay không thể giữ lại cấu hình đã chuẩn bị nếu một công cụ khác ghi đè lên nó sau khi quá trình ghi được xác minh. Định cấu hình một nguồn hộp cát có thẩm quyền và kiểm tra điểm đánh dấu tệp ngay trước và sau khi khởi động lại khi chẩn đoán Ngày 1 lặp lại hoặc chuyển đổi bị thiếu.
