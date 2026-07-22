<a id="start-here-complete-the-first-randomday-cycle"></a>
# Bắt đầu tại đây: hoàn thành RandomDay chu kỳ

> **Nguồn tiếng Anh chuẩn:** [START_HERE.md](../../START_HERE.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Hướng dẫn này bắt đầu sau RandomDay đã được cài đặt. Nó hiển thị những gì mod thay đổi, những gì nó để lại và cách nhận biết một chu kỳ thành công.

<a id="know-the-two-states"></a>
## Biết hai trạng thái

Abiotic Factor đọc cài đặt hộp cát của thế giới trước RandomDay bắt đầu. RandomDay do đó giữ hai trạng thái được đặt tên rõ ràng:

- **Hồ sơ đang hoạt động:** các quy tắc mà phiên hiện tại đang sử dụng.
- **Đã chuẩn bị profile:** các quy tắc được lưu cho lần khởi động tiếp theo.

Hồ sơ đã chuẩn bị không thay đổi phiên đang diễn ra.

<a id="dedicated-server-prepare-the-next-profile"></a>
## Máy chủ chuyên dụng: chuẩn bị hồ sơ tiếp theo

1. Khởi động máy chủ bình thường.
2. Đợi RandomDay để hoàn thành công việc khởi động.
3. Mở `RandomDay/web_export/today.html` trong thư mục mod đã cài đặt.
4. Tìm **Hồ sơ đang hoạt động** và **Hồ sơ đã chuẩn bị**.

Trong lần khởi động thành công đầu tiên, trang sẽ đặt tên cho các quy tắc đã hoạt động và một cấu hình khác đang chờ lần khởi động tiếp theo. Trang này cũng giải thích họ, vị trí đã chọn và liệu tệp đã chuẩn bị có vượt qua quá trình kiểm tra an toàn hay không.

Không khởi động lại chỉ để thay đổi trạng thái. Tiếp tục chơi theo các quy tắc hiện hoạt cho đến khi máy chủ theo kế hoạch tiếp theo bắt đầu.

<a id="dedicated-server-activate-it-later"></a>
## Máy chủ chuyên dụng: kích hoạt sau

1. Dừng và khởi động máy chủ vào lần khởi động lại theo kế hoạch tiếp theo.
2. Mở lại trang trạng thái có thể đọc được.
3. Xác nhận rằng hồ sơ đã chuẩn bị trước đó hiện được liệt kê là đang hoạt động.
4. Xác nhận rằng RandomDay đã chuẩn bị hồ sơ sau.

Quá trình chuyển đổi chuẩn bị rồi kích hoạt đó đã hoàn tất RandomDay chu kỳ.

<a id="temporary-dedicated-servers"></a>
## Các máy chủ chuyên dụng tạm thời

Hành vi tạm thời sử dụng cùng gói máy chủ chuyên dụng. Trong [Cấu hình](C%E1%BA%A4U_H%C3%8CNH.md), chọn xem lần chạy mới có bắt đầu trên một cấu hình cụ thể hay chọn điểm bắt đầu ngẫu nhiên. Trang trạng thái vẫn tách biệt hồ sơ đang hoạt động với hồ sơ được chuẩn bị cho lần bắt đầu tiếp theo.

<a id="singleplayer-or-lan"></a>
## Người chơi đơn hoặc LAN

1. Bắt đầu trò chơi một lần với gói singleplayer/LAN đã được cài đặt.
2. Đóng trò chơi hoàn toàn sau RandomDay kết thúc.
3. Đọc bản tóm tắt đã tạo.
4. Sao chép `SandboxSettings.ini` đã tạo vào thế giới bạn đã chọn khi trò chơi kết thúc.
5. Bắt đầu thế giới đó và xác nhận các quy tắc dự kiến.

Gói cục bộ không bao giờ chọn thế giới hoặc sao chép tệp vào bản lưu. Xem [Người chơi đơn và LAN](LAN_CH%C6%A0I_%C4%90%C6%A0N.md) để biết toàn bộ quy trình.

<a id="if-the-expected-result-is-missing"></a>
## Nếu thiếu kết quả mong đợi

Đừng tiếp tục khởi động lại. Giữ nguyên các tệp hiện tại và chọn triệu chứng phù hợp trong [Khắc phục sự cố](KH%E1%BA%AEC_PH%E1%BB%A4C_S%E1%BB%B0_C%E1%BB%90.md). Kết quả bình thường luôn đặt tên cho một hồ sơ đang hoạt động và một hồ sơ đã chuẩn bị hoặc một lỗi chuẩn bị rõ ràng.

<a id="continue"></a>
## Tiếp tục

- [Chọn kiểu chơi](CH%E1%BB%8CN_H%E1%BB%92_S%C6%A0.md)
- [Chọn hành vi bắt đầu và tiến triển](C%E1%BA%A4U_H%C3%8CNH.md)
- [Vận hành và khôi phục RandomDay](HO%E1%BA%A0T_%C4%90%E1%BB%98NG.md)
- [Hiểu cách xoay](XOAY_V%C3%92NG_GIA_%C4%90%C3%8CNH.md)
