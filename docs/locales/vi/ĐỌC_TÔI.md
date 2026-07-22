# Hướng dẫn RandomDay bằng tiếng Việt

**v0.3.16-alpha**

RandomDay chuẩn bị một `SandboxSettings.ini` hoàn chỉnh cho lần khởi động
Abiotic Factor tiếp theo. Mod không thay đổi quy tắc của phiên đang chạy; hồ sơ
đang hoạt động và hồ sơ đã chuẩn bị cho lần sau luôn được báo cáo riêng.

## Cài đặt và kiểm tra

Làm theo [hướng dẫn cài đặt](C%C3%80I_%C4%90%E1%BA%B6T.md). Thư mục đúng là
`ue4ss/Mods/RandomDay` và `mods.txt` phải chứa `RandomDay : 1`. Thông thường lần
khởi động đầu chuẩn bị hồ sơ và lần tiếp theo kích hoạt hồ sơ đó.

Kiểm tra `runtime/current/randomday_status.json`, `runtime/rotation_state.txt`
và `web_export/today.json`. Danh tính hồ sơ đang hoạt động và đã chuẩn bị phải
khớp trong cả ba tệp.

## Chọn trải nghiệm

Đặt chế độ, nhóm, ngày đầu và tiến trình trong
`RandomDay/Scripts/ax_config/server.lua`. Đọc [Bắt đầu](B%E1%BA%AET_%C4%90%E1%BA%A6U_T%E1%BA%A0I_%C4%90%C3%82Y.md),
[Chọn hồ sơ](CH%E1%BB%8CN_H%E1%BB%92_S%C6%A0.md), [Cấu hình](C%E1%BA%A4U_H%C3%8CNH.md)
và [Khắc phục sự cố](KH%E1%BA%AEC_PH%E1%BB%A4C_S%E1%BB%B0_C%E1%BB%90.md).

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` và
`BridgeSupports=0` là giá trị ban đầu của bộ tạo hồ sơ đi kèm, không phải quy
tắc bắt buộc của Abiotic Factor. Cách thay đổi và tạo lại hồ sơ nằm trong tài
liệu cấu hình.

Lệnh, đường dẫn, khóa INI và trạng thái giữ nguyên tiếng Anh để khớp chính xác
với tệp thực tế.

## Bản alpha và lựa chọn được giữ lại

Đây là bản alpha. Các quy trình cài đặt, xoay vòng và khôi phục đã được kiểm thử; khả năng tương thích và tính dễ dùng vẫn tiếp tục được cải thiện.

Trong `RandomDay/Scripts/ax_config/server.lua`, `sandbox.profile_overrides` giữ bốn giá trị cho mọi nhóm và ngày. Dừng máy chủ, sửa một lần rồi khởi động lại. Các lần xoay vòng và khởi động sau vẫn dùng cùng giá trị; chỉ sửa `SandboxSettings.ini` là tạm thời.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Các mod tùy chọn bên dưới là bản tải riêng của tác giả. RandomDay không phân phối lại hoặc thay đổi tính năng của chúng; bộ điều hợp được bật chỉ chỉnh các thiết lập hiện có và được hỗ trợ. Xin cảm ơn các tác giả và người bảo trì.

## Thư viện tài liệu hoàn chỉnh

Mọi tài liệu Markdown công khai đều có sẵn bằng ngôn ngữ này với tên tệp được bản địa hóa.

- [Mở chỉ mục tài liệu đã bản địa hóa](T%C3%80I_LI%E1%BB%86U.md)
