<a id="supported-optional-mods"></a>
# Các Mod tùy chọn được hỗ trợ

> **Nguồn tiếng Anh chuẩn:** [SUPPORTED_ADAPTERS.md](../../SUPPORTED_ADAPTERS.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


RandomDay có thể tạo một mod được cài đặt riêng theo cấu hình RandomDay đang hoạt động. Tính năng này chỉ có trong gói máy chủ chuyên dụng. singleplayer/LAN không bao giờ chỉnh sửa một mod khác.

RandomDay không bao gồm hoặc phân phối lại bất kỳ mod nào được liệt kê ở đây. Cài đặt và kích hoạt từng mod tùy chọn từ trang Nexus của chính nó và làm theo hướng dẫn của tác giả trước. RandomDay chỉ thay đổi các cài đặt được nhận dạng đã tồn tại trong tệp đã cài đặt. Nó không thêm tính năng vào một mod khác và có thể tắt bộ chuyển đổi mà không cần gỡ cài đặt mod đó. Gói máy chủ chuyên dụng bắt đầu với `external_mods.enabled = true`.

<a id="what-randomday-changes"></a>
## Những thay đổi RandomDay

| Tích hợp tùy chọn | Cài đặt được chọn từ cấu hình đang hoạt động |
| --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | Chế độ cứng, player/area hành vi hồi chiêu, hoạt động của bão và vùng nóng, xuất hiện trùm và bùng phát, thời gian chu kỳ sinh sản, phạm vi thời gian hồi chiêu nhỏ và lớn, khoảng cách xuất hiện, global/local/mod giới hạn, cơn bão cổng thông tin, cơ hội vi phạm trật tự và trùm cũng như số lần xuất hiện tối thiểu trên mỗi khu vực. |
| Các trường mở rộng Công cụ sinh sản hỗn loạn tùy chọn | Khi cài đặt `SharedData.lua` đã chứa RandomDay các trường mở rộng, bộ điều hợp có thể cung cấp hồ sơ cuộc gặp gỡ, cấp độ, chủ đề, giới hạn nhóm, giá trị sự kiện đặc biệt và cuộc gặp gỡ hỗn hợp, ngân sách, thời gian hồi chiêu và các biện pháp kiểm soát phạm vi thế giới. Đây không phải là một bản mod khác để tải xuống. |
| Laze chết người | Kích hoạt mod cộng với hư hỏng và bật điều khiển cho các bộ phát có thể triển khai, bộ phát môi trường, bộ phản xạ và lăng kính. |
| ANTE Up | Hệ số nhân tần số hồi sinh, tần số Tiền biến thể và development/debug chuyển đổi. RandomDay tắt tất cả các công tắc gỡ lỗi và phát triển được công nhận. |

Thư viện hồ sơ cung cấp một bộ giá trị được chuẩn bị sẵn cho mỗi ngày được hỗ trợ. Một ngày yên tĩnh có thể làm giảm áp lực, một ngày nguy hiểm có thể làm tăng áp lực và một ngày phục hồi có thể giảm áp lực đáng kể. RandomDay không tính toán các giá trị tùy ý khi khởi động; nó áp dụng tập giá trị đã xem xét được đặt tên theo cấu hình đang hoạt động.

<a id="current-version-evidence"></a>
## Bằng chứng về phiên bản hiện tại

Bảng này đã được xem xét vào ngày 20 tháng 7 năm 2026. “Được công nhận” có nghĩa là bộ điều hợp đã phát hành có bản cố định bố cục cục bộ hoàn chỉnh cho các cài đặt được đặt tên. Điều đó không có nghĩa là mọi bản phát hành trong tương lai sẽ có hình dạng tệp giống nhau.

| Chế độ tùy chọn | Đã xem xét phiên bản ngược dòng hiện tại | RandomDay trạng thái phát hành |
| --- | --- | --- |
| [Công cụ sinh sản hỗn loạn](https://www.nexusmods.com/abioticfactor/mods/156) | Trang Nexus `0.8.5`; tập tin chính hiện tại `0.8.5-Hotfix1` | Đã được công nhận `DynamicSpawns/Scripts/SharedData.lua` bố cục cho bộ cài đặt hoàn chỉnh về sinh sản, thời gian hồi chiêu, giới hạn, cổng, vi phạm và trùm. |
| Các trường mở rộng Công cụ sinh sản hỗn loạn tùy chọn | Không tải xuống riêng biệt; các trường tùy chọn bên trong cùng `SharedData.lua` | Chỉ áp dụng khi mọi trường tiện ích mở rộng đã tồn tại. Các cài đặt Chaotic Spawn Engine thông thường không thay đổi khi các trường đó vắng mặt. ID bộ điều hợp nội bộ là `encounter_director`; nó không đặt tên cho một mod công khai riêng biệt. |
| [Laze chết người](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Đã được công nhận `LethalLasers/Scripts/main.lua` bố cục cho tất cả cài đặt bộ phát, bộ phát môi trường, bộ phản xạ và lăng kính được liệt kê ở trên. |
| [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, cập nhật ngày 19 tháng 7 năm 2026 | Bộ điều hợp đã phát hành nhận dạng `Settings.lua` tập trường. Phiên bản 1 không được xác nhận là tương thích cho đến khi tệp hiện tại của nó được thêm vào lịch thi đấu và vượt qua các thử nghiệm giao dịch bộ chuyển đổi. Nếu bố cục của nó khác, RandomDay sẽ báo cáo `skipped_incompatible` và giữ nguyên. |

<a id="how-recognition-protects-another-mod"></a>
## Cách nhận dạng bảo vệ một mod khác

Tìm một Tên tệp quen thuộc là không đủ. Trước khi viết, RandomDay kiểm tra xem mọi cài đặt bắt buộc cho bộ điều hợp đó có tồn tại trong tệp đích hay không. Nó chỉ vá các bài tập hiện có; nó không bao giờ phát minh ra một cài đặt bị thiếu.

Đối với bố cục được nhận dạng, RandomDay thực hiện một giao dịch giới hạn:

1. tính toán mọi giá trị dự định cho cấu hình đang hoạt động;
2. tạo và kiểm tra byte bản sao lưu của mọi tệp mục tiêu;
3. ghi thông qua một tệp đang chờ xử lý;
4. quảng cáo tệp đang chờ xử lý và đọc lại các byte đã lưu;
5. xác nhận mọi giá trị dự kiến;
6. sử dụng tính năng khôi phục tự động từ các bản sao lưu đã xác minh nếu có bất kỳ bước nào không thành công.

DynamicSpawns có thể bao gồm cài đặt của nó và các tệp tin nhắn người chơi được nhận dạng trong một giao dịch. RandomDay không báo cáo rằng cập nhật nhiều tệp là thành công trừ khi giao dịch hoàn tất kết thúc.

<a id="read-an-adapter-result"></a>
## Đọc kết quả bộ điều hợp

| Kết quả | Ý nghĩa |
| --- | --- |
| `applied` | Cài đặt được nhận dạng đã thay đổi và được đọc lại. |
| `already_current` | Cài đặt được nhận dạng đã khớp với cấu hình đang hoạt động. |
| `not_installed` | Không tìm thấy mod tùy chọn. RandomDay tiếp tục mà không có nó. |
| `skipped_incompatible` | Đã tìm thấy một tệp nhưng bố cục cài đặt hoàn chỉnh của nó không được nhận dạng. Không có gì thay đổi. |
| `partial` | Cài đặt DynamicSpawns chính đã được áp dụng nhưng tệp tin nhắn được dịch tùy chọn chưa hoàn tất. Xem lại kết quả bộ điều hợp đã ghi. |
| `failed_rolled_back` | Giao dịch không thành công và các byte trước đó vẫn còn nguyên hoặc đã được khôi phục và xác minh. |
| `rollback_failed` | RandomDay không thể xác minh thay đổi hoặc khôi phục. Dừng mod bị ảnh hưởng và khôi phục bản sao lưu đã ghi của nó theo cách thủ công. |

Các mod tùy chọn bị thiếu và không tương thích sẽ không dừng quá trình xoay hộp cát của RandomDay's xoay hộp cát theo cấu hình được cung cấp.

<a id="enable-or-disable-integrations"></a>
## Bật hoặc tắt tích hợp

Các điều khiển có trong:

```text
RandomDay/Scripts/ax_config/server.lua
```

Gói máy chủ chuyên dụng đi kèm:

```lua
external_mods = {
    enabled = true,
    optional_by_default = true,
    patch_only_existing_keys = true,
    backup_before_write = true,
    adapters = {
        "lethal_lasers",
        "dynamic_spawns",
        "encounter_director",
        "ante_up"
    }
}
```

- Đặt `enabled = false` để ngăn RandomDay kiểm tra hoặc thay đổi mọi mod tùy chọn.
- Xóa một ID bộ điều hợp để giữ nguyên mod đó trong khi vẫn duy trì hoạt động của các tiện ích tích hợp khác.
- Giữ `patch_only_existing_keys` và `backup_before_write` được đặt thành `true`. Chúng là ranh giới an toàn ghi.
- Giữ `optional_by_default = true` trừ khi mọi mod tùy chọn được liệt kê đều là một phần bắt buộc của máy chủ. Việc đặt thành `false` sẽ làm cho bộ điều hợp bị thiếu, không tương thích hoặc được khôi phục an toàn ảnh hưởng đến kết quả tổng hợp.

Bạn không cần phải gỡ cài đặt hoặc tắt một mod tùy chọn khi tắt bộ điều hợp RandomDay của nó.

<a id="thanks-and-ownership"></a>
## Cảm ơn và quyền sở hữu

Xin cảm ơn các tác giả và người duy trì [Công cụ sinh sản hỗn loạn](https://www.nexusmods.com/abioticfactor/mods/156), [Laze chết người](https://www.nexusmods.com/abioticfactor/mods/141) hiện tại và [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201). Các mod của họ vẫn là các bản tải xuống riêng biệt được quản lý bởi các trang, quyền và hướng dẫn hỗ trợ của riêng họ. RandomDay's bộ điều hợp chỉ sử dụng các trường cấu hình có trong bố cục đã được cài đặt và nhận dạng; họ không phân phối lại hoặc thay thế các mod đó.

<a id="backups-and-manual-recovery"></a>
## Bản sao lưu và khôi phục thủ công

Các bản sao ghi trước đã được xác minh được giữ lại trong:

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

Nếu `rollback_failed` xuất hiện:

1. dừng trò chơi hoặc máy chủ;
2. đặt `external_mods.enabled = false` hoặc xóa ID bộ điều hợp bị ảnh hưởng;
3. bảo tồn tệp mục tiêu hiện tại và anh em của nó pending/rollback tệp;
4. khớp các tệp sao lưu được đánh số với đường dẫn đích được ghi trong kết quả bộ điều hợp;
5. khôi phục các byte đã xác minh khi dịch vụ bị dừng;
6. tự khởi động mod tùy chọn trước khi bật lại RandomDay của nó.

Không ép buộc tính tương thích bằng cách đổi tên cài đặt hoặc thêm khóa bị thiếu. Sử dụng bố cục được công nhận, tắt bộ điều hợp hoặc thêm bản cố định phiên bản mới và kiểm tra giao dịch trước khi mở rộng yêu cầu hỗ trợ.
