<a id="release-validation"></a>
# Xác thực bản phát hành

> **Nguồn tiếng Anh chuẩn:** [RELEASE_VALIDATION.md](../../RELEASE_VALIDATION.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Trang này dành cho những người đóng góp và người duy trì bản phát hành. Người chơi cài đặt mod không cần chạy các lệnh này.

<a id="ordinary-user-proof"></a>
## Bằng chứng người dùng thông thường

Bản phát hành là điều dễ hiểu khi người đọc mới có thể chọn một trong hai gói, cài đặt gói đó, xác định cấu hình đang hoạt động và cấu hình đã chuẩn bị cũng như khôi phục từ kết quả bị thiếu bằng cách làm theo hướng dẫn được liên kết. Những tác vụ đọc đó không được yêu cầu Git, PowerShell, kiến ​​thức về Python hoặc tổng kiểm tra.

<a id="contributor-checks"></a>
## Kiểm tra của cộng tác viên

Chạy từ thư mục gốc của kho lưu trữ:

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

Khi `luac` có sẵn, hãy kiểm tra cú pháp mọi tệp Lua được gửi:

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

Các bài kiểm tra thời gian chạy Lua yêu cầu `lupa`. Thiếu trình thông dịch Lua hoặc `lupa` cài đặt là khả năng kiểm tra không khả dụng, không phải là kết quả đạt.

<a id="release-checks"></a>
## Kiểm tra phát hành

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

Kiểm tra phát hành xác minh các điều kiện sau:

- `VERSION` và `RandomDay/.randomday_version` khớp.
- Chỉ có phiên bản hiện tại tồn tại trong `releases/`.
- Dành riêng và singleplayer/LAN ZIP là lựa chọn thay thế hoàn chỉnh.
- Cả hai kho lưu trữ đều chứa `RandomDay/Scripts/main.lua` và không có trình tải xung đột chữ hoa chữ thường.
- Các điểm đánh dấu chế độ gói là `dedicated_server` và `singleplayer_manual`.
- ZIP byte mang tính xác định và khớp `CHECKSUMS.sha256`.
- Không có dữ liệu thời gian chạy, cấu hình riêng tư, thông tin xác thực, bộ đệm hoặc đầu ra kiểm tra nào được đóng gói.
- Tất cả các liên kết tài liệu cục bộ và 27 trang mục nhập ngôn ngữ đều xác thực.

<a id="avoid-validation-environment-pitfalls"></a>
## Tránh các cạm bẫy môi trường xác thực

- Chạy tuần tự các bước kiểm tra ghi kho lưu trữ để hai quy trình không thay thế cùng một tệp tạm thời cùng một lúc.
- Trên Windows, hãy kiểm tra ZIP tên thành viên thay vì sử dụng tra cứu tệp không phân biệt chữ hoa chữ thường để quyết định xem có tồn tại trình tải chữ thường hay không.
- Xác nhận `mods.txt` và `enabled.txt` chỉ trong thử nghiệm máy chủ đã cài đặt; chúng không phải là bằng chứng cho thấy kiểm tra nguồn đã chạy.
- Ghi lại thời gian chờ của lệnh là chưa hoàn thành. Không chuyển đổi nó thành vượt qua hoặc thất bại nếu không có đầu ra giới hạn của lệnh.
- Giữ các tệp tạm thời bên trong kho lưu trữ bị bỏ qua `.tmp/`.

<a id="known-limits"></a>
## Các giới hạn đã biết

Xác thực cục bộ chứng minh các hợp đồng nguồn, gói, tài liệu và cố định. Nó không chứng minh thứ tự khởi động của bảng điều khiển máy chủ cụ thể, bố cục thông báo của máy khách trực tiếp hoặc đường dẫn hệ thống tệp dành riêng cho máy chủ. Ghi lại những kết quả đó dưới dạng kết quả tích hợp riêng biệt khi chúng được kiểm tra.
