<a id="singleplayer-and-lan-manual-workflow"></a>
# Người chơi đơn và LAN quy trình làm việc thủ công

> **Nguồn tiếng Anh chuẩn:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


RandomDay's singleplayer/LAN của RandomDay tạo ra một `SandboxSettings.ini` hoàn chỉnh bên trong thư mục mod. Bạn chọn thế giới và sao chép tệp theo cách thủ công khi trò chơi đóng.

Gói này bị khóa ở đầu ra này:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Nó vô hiệu hóa tính năng ghi hộp cát trên máy chủ chuyên dụng, nhân bản hộp cát và tất cả tính năng ghi bộ điều hợp tùy chọn. Nó không tìm kiếm AppData, Dữ liệu người dùng Steam, Tài liệu, thư mục lưu, thư mục máy chủ hoặc thư mục mod của bên thứ ba.

<a id="understand-the-manual-boundary"></a>
## Hiểu ranh giới thủ công

Trước khi bắt đầu, hãy định cấu hình trải nghiệm trong `RandomDay/Scripts/ax_config/server.lua`. Gói thủ công chấp nhận `experience.mode="auto"` hoặc `"singleplayer_lan"`. Bạn có thể chọn ngày đầu tiên cố định hoặc ngẫu nhiên và thứ tự 17 ngày tuần tự hoặc không lặp lại ngẫu nhiên. Lựa chọn gia đình sử dụng cùng các cài đặt gia đình được chọn, xoay hoặc không lặp lại ngẫu nhiên như một máy chủ chuyên dụng.

Đầu ra được tạo chứa điểm đánh dấu RandomDay đọc quy trình tiếp theo. Để giữ trạng thái được căn chỉnh, hãy sao chép tệp đã tạo vào thế giới đã dừng đã chọn trước khi bắt đầu quá trình tạo khác. Việc bắt đầu lặp lại mà không sao chép có thể nâng cao hàng đợi mod-local mặc dù thế giới chưa bao giờ tải đầu ra trước đó.

Tuân theo quy trình cài đặt [chế độ chơi đơn hoặc LAN chuẩn](C%C3%80I_%C4%90%E1%BA%B6T.md#singleplayer-or-lan) để sao lưu, đặt gói, hỗ trợ, tạo, sao chép thủ công và xác minh. Trang này giải thích ranh giới thủ công; nó không xác định phương pháp cài đặt khác.

Thế hệ đầu tiên chuẩn bị một hồ sơ; nó không thể thay đổi các quy tắc đã được tải bởi quá trình trò chơi đó. Đóng, sao chép và bắt đầu lại để sử dụng nó. Chỉ lặp lại chu trình này khi bạn cố tình muốn có ngày tiếp theo tiếp theo.

Đang xóa RandomDay không khôi phục tệp world mà bạn đã sao chép thủ công; sử dụng bản sao lưu của riêng bạn cho lần khôi phục đó. Hãy làm theo [Xóa hoặc khôi phục mọi cài đặt](C%C3%80I_%C4%90%E1%BA%B6T.md#remove-or-disable-randomday) để biết quy trình xóa chính xác.
