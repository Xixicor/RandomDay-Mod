<a id="troubleshooting"></a>
# Khắc phục sự cố

> **Nguồn tiếng Anh chuẩn:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Dừng ở lần kiểm tra thất bại đầu tiên. Bảo toàn sandbox hiện tại, `runtime/`, `web_export/` và có liên quan `UE4SS.log` trước khi thử khôi phục.

<a id="try-these-common-fixes-first"></a>
## Trước tiên hãy thử các cách sửa lỗi phổ biến này

1. **RandomDay không bao giờ xuất hiện:** xác nhận `RandomDay` nằm ngay bên trong `ue4ss/Mods`, bật `RandomDay : 1` trong `mods.txt` và bắt đầu một lần.
2. **Phiên hiện tại vẫn giữ nguyên các quy tắc cũ:** điều này là bình thường. RandomDay chuẩn bị hồ sơ tiếp theo; trò chơi tải nó khi bắt đầu muộn hơn.
3. **Cấu hình tương tự tiếp tục quay lại:** một bảng điều khiển máy chủ có thể đang thay thế `SandboxSettings.ini`. Sử dụng một tệp hộp cát có thẩm quyền và so sánh tên đang hoạt động và tên đã chuẩn bị trong `web_export/today.html`.
4. **Một mod tùy chọn không tuân theo cấu hình:** mở [Các mod tùy chọn được hỗ trợ](B%E1%BB%98_%C4%90I%E1%BB%80U_H%E1%BB%A2P_%C4%90%C6%AF%E1%BB%A2C_H%E1%BB%96_TR%E1%BB%A2.md). Một mod tùy chọn bị thiếu, bị vô hiệu hóa hoặc không được nhận dạng sẽ không thay đổi.
5. **RandomDay báo cáo lỗi ghi hoặc khôi phục:** dừng trước khi khởi động lại lần nữa, giữ nguyên `runtime/backups/` và làm theo phần khôi phục được đặt tên bên dưới.

Nếu năm lần kiểm tra đó không xác định được vấn đề, hãy tiếp tục với cây quyết định chi tiết.

<a id="choose-the-first-failed-stage"></a>
## Chọn giai đoạn thất bại đầu tiên

Sử dụng hàng đầu tiên khớp với những gì bạn thực sự có thể chứng minh. Đừng bắt đầu bằng lời giải thích nghiêm khắc nhất và đừng kết hợp các lỗi đầu ra không liên quan vào một chẩn đoán.

| Những gì bạn có thể quan sát | Kiểm tra trước | Tiếp tục với | Kết quả mong đợi |
|---|---|---|---|
| Không `[RandomDay]` dòng bắt đầu tồn tại trong `UE4SS.log`. | Cài đặt root, đánh dấu gói, `mods.txt` hiện tại và UE4SS Lua khởi động. | [Khôi phục RandomDay bắt đầu](#restore-a-missing-randomday-start) | Một dòng bắt đầu nêu tên chế độ phát hành và gói hoặc lỗi liên quan đến việc tải. |
| RandomDay đã được tải nhưng chưa có hồ sơ nào sẵn sàng. | Lỗi khởi động, cấu hình, mục tiêu, giao dịch hoặc trạng thái đầu tiên. | [Khôi phục sau khi chuẩn bị không thành công](#recover-from-failed-preparation), sau đó [tham chiếu trạng thái và lỗi](THAM_KH%E1%BA%A2O_TR%E1%BA%A0NG_TH%C3%81I_V%C3%80_L%E1%BB%96I.md) | Một mã chính xác xác định hành động an toàn tiếp theo. |
| Đã tồn tại một hồ sơ đã chuẩn bị nhưng các quy tắc chạy không thay đổi. | ID đang hoạt động và đã chuẩn bị trong `today.json` hoặc `today.html`. | [Xác nhận ranh giới khởi động lại](#confirm-the-restart-boundary) | Phiên hiện tại vẫn hoạt động; hồ sơ đã chuẩn bị sẽ chờ để bắt đầu sau. |
| Ngày 1 hoặc ngày khác lặp lại sau khi khởi động lại. | Đánh dấu hộp cát trước khi bắt đầu bảng điều khiển, sau khi bắt đầu bảng điều khiển và sau khi chuẩn bị. | [Dừng việc chuẩn bị lặp đi lặp lại](#stop-repeated-preparation) | Người viết có thẩm quyền hoặc điểm ghi đè được xác định. |
| Hộp cát vẫn hoạt động tốt nhưng một mod tùy chọn đã bị bỏ qua hoặc không thành công. | Kết quả của từng bộ điều hợp và bằng chứng về khả năng tương thích. | [Chẩn đoán bộ chuyển đổi bị bỏ qua](#diagnose-a-skipped-adapter) hoặc [Khôi phục lỗi khôi phục bộ điều hợp](#recover-an-adapter-rollback-failure) | Tình trạng bộ điều hợp được quyết định độc lập với tình trạng hộp cát. |
| Không có tệp singleplayer/LAN thủ công. | Chế độ gói và thư mục đầu ra được giới hạn. | [Tạo một singleplayer/LAN tệp](#generate-a-missing-singleplayerlan-file) | Tệp được tạo bên trong RandomDay mà không phát hiện ra bản lưu cá nhân. |
| Chỉ giao diện người chơi tin nhắn bị thiếu hoặc bị gói không đúng cách. | Nhật ký chuyển tin nhắn, bản xem trước nguồn và các giới hạn được ghi lại. | [Chẩn đoán sự cố về tin nhắn](#diagnose-a-message-problem) | Bản trình bày được kiểm tra mà không được coi là bằng chứng hồ sơ. |

<a id="follow-the-safe-diagnostic-order"></a>
### Tuân theo thứ tự chẩn đoán an toàn

1. Lưu giữ bằng chứng hiện tại trước đó thay đổi tệp.
2. Chứng minh xem RandomDay đã được tải.
3. Tìm giai đoạn đầu tiên không đạt được kết quả được ghi trong tài liệu.
4. Sao chép trạng thái chính xác hoặc giá trị lỗi từ đầu ra thời gian chạy.
5. Sử dụng hàng trong bảng phù hợp bên dưới cho một phản hồi an toàn.
6. Đọc lại mục tiêu và trạng thái xoay trước một trạng thái khác bắt đầu.

Nếu không có hàng nào khớp, hãy sử dụng [Trạng thái thời gian chạy và tham chiếu đầu ra](K%E1%BA%BET_QU%E1%BA%A2_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md) để xác định ý nghĩa của nhà sản xuất và trường trước khi thay đổi cấu hình.

<a id="restore-a-missing-randomday-start"></a>
## Khôi phục RandomDay bắt đầu

**Nguyên nhân có thể xảy ra nhất:** bố cục trích xuất sai, mod bị tắt, chế độ gói sai hoặc UE4SS không tải điểm vào Lua.

**Kiểm tra chính xác:** xác nhận `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version` hiện tại và `RandomDay/Scripts/main.lua`; xác nhận `RandomDay : 1` trong `mods.txt`; tìm kiếm `UE4SS.log` cho `[RandomDay]`.

**Kết quả mong đợi:** một dòng bắt đầu nêu tên nhận dạng bản phát hành và chế độ gói.

**Hành động tiếp theo an toàn:** sửa bố cục hoặc hỗ trợ khi dừng, sau đó bắt đầu một lần.

**Không suy luận:** không RandomDay không chứng tỏ lỗi trò chơi hoặc hồ sơ.

<a id="confirm-the-restart-boundary"></a>
## Xác nhận ranh giới khởi động lại

**Nguyên nhân có thể xảy ra nhất:** bình thường hành vi khởi động lại tiếp theo.

**Kiểm tra chính xác:** so sánh hồ sơ đang hoạt động và đã chuẩn bị family/day trong `web_export/today.json` hoặc `today.html`.

**Kết quả mong đợi:** hồ sơ đã chuẩn bị khác với hoặc tách biệt rõ ràng với hồ sơ đang hoạt động.

**Hành động tiếp theo an toàn:** chỉ khởi động lại khi bạn sẵn sàng kích hoạt nó, sau đó xác minh điểm đánh dấu đang hoạt động.

**Không suy luận:** hồ sơ đã chuẩn bị không hoạt động trước khi đọc lại sau khi khởi động lại.

<a id="stop-repeated-preparation"></a>
## Dừng việc chuẩn bị lặp đi lặp lại

**Nguyên nhân có thể xảy ra nhất:** hoạt động RandomDay bị thiếu do bảng điều khiển máy chủ hoặc công cụ khác viết lại `SandboxSettings.ini` trong khi khởi động.

**Kiểm tra chính xác:** so sánh tệp hộp cát và RandomDay ngay trước khi khởi động, sau khi bảng khởi động và sau RandomDay chuẩn bị tệp.

**Kết quả mong đợi:** tệp có trong lần khởi động tiếp theo giữ lại điểm đánh dấu đã chuẩn bị.

**Hành động tiếp theo an toàn:** định cấu hình một nguồn hộp cát có thẩm quyền và vô hiệu hóa việc ghi lại bảng điều khiển xung đột.

**Không suy luận:** Ngày 1 lặp lại không chứng minh được bộ chọn gia đình đang ngẫu nhiên hóa không chính xác.

<a id="recover-from-failed-preparation"></a>
## Khôi phục sau khi chuẩn bị không thành công

**Nguyên nhân có thể xảy ra nhất:** đang chờ ghi, sao lưu, quảng cáo, đọc lại sản xuất, xác thực hoặc khôi phục không thành công.

**Kiểm tra chính xác:** đọc `[RandomDay] [ERROR]` và duy trì bản sao lưu hoạt động được đặt tên. Kiểm tra `runtime/last_good/manifest.lua` trước khi sử dụng tệp hộp cát của nó.

**Kết quả mong đợi:** đầu tiên hoặc tệp trước đó được xác minh là đã khôi phục hoặc kết quả báo cáo rõ ràng là không khôi phục được.

**Hành động tiếp theo an toàn:** hãy dừng máy chủ và thực hiện [khôi phục thủ công](HO%E1%BA%A0T_%C4%90%E1%BB%98NG.md#manual-recovery).

**Không suy luận:** sự tồn tại của một tệp sao lưu thôi không chứng minh được nó phù hợp trạng thái thế giới hoạt động dự định.

<a id="diagnose-a-skipped-adapter"></a>
## Chẩn đoán bộ chuyển đổi bị bỏ qua

**Nguyên nhân có thể xảy ra nhất:** mod không có hoặc tệp không khớp với chữ ký được hỗ trợ.

**Kiểm tra chính xác:** đọc kết quả bộ điều hợp và so sánh phiên bản đã cài đặt và bố cục với [Bộ điều hợp Mod được hỗ trợ](B%E1%BB%98_%C4%90I%E1%BB%80U_H%E1%BB%A2P_%C4%90%C6%AF%E1%BB%A2C_H%E1%BB%96_TR%E1%BB%A2.md).

**Kết quả mong đợi:** `not_installed` cho mục tiêu vắng mặt hoặc `skipped_incompatible` cho mục tiêu không được nhận dạng.

**Hành động tiếp theo an toàn:** giữ nguyên tệp, tắt bộ chuyển đổi đó hoặc cài đặt một phiên bản được hỗ trợ chính xác từ tác giả ban đầu của nó.

**Không suy luận:** tên tệp tương tự hoặc phiên bản mới hơn không phải là bằng chứng về tính tương thích.

<a id="recover-an-adapter-rollback-failure"></a>
## Khôi phục lỗi khôi phục bộ điều hợp

**Nguyên nhân có thể xảy ra nhất:** cả việc ghi cố gắng và khôi phục tự động đều không thể được xác minh.

**Kiểm tra chính xác:** giữ nguyên mục tiêu, anh chị em pending/rollback, trạng thái bộ điều hợp và bản sao lưu bộ điều hợp mới nhất trong `runtime/backups/`.

**Kết quả mong đợi:** kết quả là `rollback_failed`, không phải `applied`.

**Hành động tiếp theo an toàn:** dừng kết quả hộp cát chính mod/server và khôi phục bản sao lưu đã xác minh theo cách thủ công trước khi khởi chạy lần khác.

**Không suy luận:** RandomDay's bị ảnh hưởng không chứng minh được mục tiêu bộ chuyển đổi riêng biệt hoạt động tốt.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Tạo một singleplayer/LAN tệp

**Nguyên nhân có thể xảy ra nhất:** gói chuyên dụng đã được cài đặt, điểm đánh dấu chế độ không hợp lệ hoặc RandomDay không tải.

**Kiểm tra chính xác:** `.randomday_mode` phải chứa `singleplayer_manual`; sau đó xác nhận RandomDay bắt đầu dòng và kiểm tra `runtime/singleplayer_manual/SandboxSettings.ini`.

**Kết quả mong đợi:** tệp tồn tại bên trong RandomDay chỉ thư mục.

**Hành động tiếp theo an toàn:** cài đặt đúng gói một cách sạch sẽ và bắt đầu một lần.

**Không suy luận:** RandomDay sẽ không thay mặt bạn tìm kiếm hoặc viết thế giới mục tiêu.

<a id="diagnose-a-message-problem"></a>
## Chẩn đoán sự cố về tin nhắn

**Nguyên nhân có thể xảy ra nhất:** không có ký tự người chơi hợp lệ nào tại thẻ đã lên lịch, quá trình truyền tải cảnh báo không khả dụng hoặc màn hình máy khách bao bọc văn bản theo cách khác.

**Kiểm tra chính xác:** kiểm tra `[RandomDay]` nhật ký tin nhắn và so sánh tin nhắn nguồn với giới hạn độ dài được ghi lại.

**Kết quả mong đợi:** thời gian chạy báo cáo xem một thẻ thông báo có chạy hay không; xác thực nguồn báo cáo độ dài tối đa.

**Hành động tiếp theo an toàn:** xác minh độ phân giải dự kiến ​​của khách hàng. Giữ quá trình xác minh hồ sơ và cách chơi tách biệt với kết quả thông báo.

**Không suy luận:** một thông báo hiển thị không chứng tỏ hồ sơ hộp cát đã được áp dụng và một thông báo bị thiếu không chứng tỏ việc chuẩn bị không thành công.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Bốn lựa chọn trên toàn hồ sơ được trả về giá trị được vận chuyển

**Nguyên nhân có thể xảy ra nhất:** chỉ `SandboxSettings.ini` đã được chỉnh sửa hoặc `server.lua` đã bị thay đổi trong khi quy trình Lua tương tự vẫn đang chạy.

**Kiểm tra chính xác:** được tạo mới dừng trò chơi hoặc máy chủ chuyên dụng, mở `RandomDay/Scripts/ax_config/server.lua` và xác nhận `sandbox.profile_overrides` chứa bốn giá trị dự kiến.

**Kết quả mong đợi:** sau lần bắt đầu tiếp theo, mọi family/day chứa các giá trị đã chọn. Các lần xoay hồ sơ sau này và khởi động máy chủ tiếp tục sử dụng cùng một khối.

**Hành động tiếp theo an toàn:** mới chuẩn bị sẽ sửa lỗi chặn, bắt đầu một lần và kiểm tra hồ sơ đã chuẩn bị. Không chỉ vá tệp hộp cát đã tạo vì quá trình chuẩn bị sau này sẽ thay thế tệp đó.

<a id="look-up-an-exact-status"></a>
## Tra cứu trạng thái chính xác

Sau khi cây quyết định xác định được giai đoạn lỗi, hãy sao chép chính xác `status`, `transaction_status`, `rollback_status` hoặc `error` giá trị từ quá trình xuất trong thời gian chạy. Sử dụng [tham chiếu trạng thái và lỗi](THAM_KH%E1%BA%A2O_TR%E1%BA%A0NG_TH%C3%81I_V%C3%80_L%E1%BB%96I.md) cho ý nghĩa của nó và một phản hồi an toàn của người vận hành. Từ ngữ tương tự trong bảng điều khiển hoặc bảng điều khiển không thay thế cho giá trị được xuất.

Các lỗi trong môi trường thử nghiệm chỉ dành cho cộng tác viên thuộc về [xác thực bản phát hành](X%C3%81C_TH%E1%BB%B0C_PH%C3%81T_H%C3%80NH.md#avoid-validation-environment-pitfalls), không thuộc đường dẫn khôi phục của nhà điều hành.
