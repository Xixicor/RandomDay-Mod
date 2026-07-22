<a id="compatibility"></a>
# Khả năng tương thích

> **Nguồn tiếng Anh chuẩn:** [COMPATIBILITY.md](../../COMPATIBILITY.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


<a id="supported-installations"></a>
## Các cài đặt được hỗ trợ

RandomDay được xây dựng cho các bản cài đặt Abiotic Factor có thể tải UE4SS mod Lua.

| Môi trường | Hỗ trợ | Gói |
| --- | --- | --- |
| Máy chủ chuyên dụng Windows | Được hỗ trợ | Máy chủ chuyên dụng ZIP |
| Windows singleplayer hoặc LAN máy chủ | Quy trình sao chép thủ công được hỗ trợ | Singleplayer/LAN ZIP |
| Máy chủ Linux sử dụng Wine hoặc Proton | Chưa được phát hành thử nghiệm | Gói dành riêng cho Windows có thể được đánh giá bởi các nhà khai thác có kinh nghiệm nhưng không đưa ra lời hứa về khả năng tương thích. |
| Xbox và PlayStation | Không được hỗ trợ | Các nền tảng này không cung cấp quyền truy cập tệp và UE4SS Đường dẫn tải Lua mà bản phát hành này yêu cầu. |

RandomDay không kết hợp hai gói. Máy chủ chuyên dụng chỉ được khởi động để thỉnh thoảng chơi vẫn sử dụng máy chủ chuyên dụng ZIP và chọn trạng thái cấu hình tạm thời.

<a id="abiotic-factor-updates"></a>
## Cập nhật Yếu tố phi sinh học

Sau khi cập nhật trò chơi, hãy bắt đầu với máy chủ đã dừng và giữ một bản sao có thể khôi phục của thế giới, `SandboxSettings.ini` hiện tại và RandomDay. Xác nhận tải UE4SS, sau đó hoàn tất một chu trình RandomDay và kiểm tra cả cấu hình đang hoạt động và cấu hình đã chuẩn bị trước khi tiếp tục xoay vòng bình thường.

<a id="companion-mods"></a>
## Các mod đồng hành

RandomDay chỉ thay đổi một mod được cài đặt riêng khi bố cục cài đặt hoàn chỉnh của nó phù hợp với bộ điều hợp được hỗ trợ. Chỉ số phiên bản là không đủ.

| Tích hợp | Phiên bản hiện tại đã được xem xét | RandomDay ranh giới hỗ trợ |
| --- | --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | `0.8.5`; tệp chính `0.8.5-Hotfix1` | Bố cục `SharedData.lua` bố cục bao gồm các cài đặt xuất hiện, thời gian hồi chiêu, dân số, cổng, vi phạm, trùm và RandomDay được liệt kê trong tài liệu tham khảo bộ chuyển đổi. |
| Laze chết người | `1.0-UE4SS` | Bố cục `Scripts/main.lua` bố cục bao gồm cài đặt bộ phát, bộ phát môi trường, bộ phản xạ và lăng kính được công nhận. |
| ANTE Up | `1`, cập nhật ngày 19 tháng 7 năm 2026 | Bố cục công khai hiện tại chưa hoàn thành việc cố định bộ điều hợp. RandomDay bỏ qua một tệp chưa khớp, không thay đổi cho đến khi bố cục đó được xác minh. |

Mod đồng hành vắng mặt, bị vô hiệu hóa hoặc không được nhận dạng sẽ không thay đổi. Xem [Các mod tùy chọn được hỗ trợ](B%E1%BB%98_%C4%90I%E1%BB%80U_H%E1%BB%A2P_%C4%90%C6%AF%E1%BB%A2C_H%E1%BB%96_TR%E1%BB%A2.md) để biết các cài đặt, kiểm soát cấu hình, hành vi sao lưu và các bước khôi phục chính xác.

<a id="what-compatibility-validation-proves"></a>
## Việc xác thực tính tương thích chứng tỏ điều gì

Việc xác thực kho lưu trữ có thể chứng minh bố cục gói được vận chuyển, phạm vi cấu hình, các trường bộ điều hợp được nhận dạng, hoạt động sao lưu và khôi phục cũng như từ chối an toàn bố cục không xác định. Nó không thể chứng minh mọi Yếu tố phi sinh học, UE4SS hoặc phiên bản mod đồng hành trong tương lai. Ghi chú phát hành nêu tên các phiên bản đã được thử nghiệm thay vì giả định khả năng tương thích sau khi tải thành công.
