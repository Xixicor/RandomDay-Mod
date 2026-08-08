# Hướng dẫn RandomDay bằng tiếng Việt

> [!IMPORTANT]
> ## Trạng thái dự án — đã kết thúc thử nghiệm RandomDay
>
> Hoạt động thử nghiệm RandomDay đã hoàn tất và máy chủ thử nghiệm công khai sẽ sớm đóng cửa.
>
> Trong hoạt động này, RandomDay và RandomDayGuard đã chạy cùng nhau qua nhiều lần luân phiên hồ sơ, khởi động lại máy chủ bình thường và bị gián đoạn, kiểm tra khôi phục và rollback, tích hợp mod mở rộng, thu thập bằng chứng máy chủ và xem xét báo cáo của người vận hành.
>
> Nhờ đó, chúng tôi đã có được kiến thức mong muốn: cách các hồ sơ sandbox luân phiên hoạt động trong những vòng đời thực của máy chủ chuyên dụng; cách RandomDay tương tác với các mod mở rộng được hỗ trợ; và mức độ RandomDayGuard có thể chuyển bằng chứng do máy chủ ghi lại thành hoạt động giám sát hữu ích, thận trọng mà không trình bày khoảng trống hoặc phỏng đoán như sự thật.
>
> **Bộ thành phần đã dùng trên máy chủ thử nghiệm:**
>
> - RandomDay bản dựng phát triển riêng tư `v0.41.76`
> - RandomDayGuard bản dựng phát triển riêng tư `v0.46.130`
> - Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
> - Lethal Lasers `1.0 UE4SS`
> - ANTE Up `0.26`
> - Encounter Director integration — tiện ích DynamicSpawns thuộc sở hữu của RandomDay, không phải mod được phân phối riêng
> - UE4SS `v3.0.1 Beta #0` (Git `01e0a584`; Nexus `v3.0.1-940-g01e0a584`)
> - máy chủ chuyên dụng Abiotic Factor `1.4.0.27939`
>
> Các gói hiện được phát hành vẫn là RandomDay `v0.3.16-alpha` và RandomDayGuard `v0.4.12-alpha`.
>
> Việc phát triển cả hai dự án hiện tạm dừng. Các bản phát hành và tài liệu hiện có sẽ vẫn được cung cấp, và chúng tôi có thể quay lại khi một lần nữa muốn tiếp tục công việc.
>
> Bộ thành phần này ghi lại những gì đã được sử dụng trong hoạt động; đây không phải yêu cầu phiên bản tối thiểu hay bảo đảm tương thích với các phiên bản trò chơi, loader hoặc mod về sau. Vòng cuối cùng được ghi nhận chính thức đã dùng Abiotic Factor `1.4.0.27939`.

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
