<a id="configuration"></a>
# Cấu hình

> **Nguồn tiếng Anh chuẩn:** [CONFIGURATION.md](../../CONFIGURATION.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Cấu hình toán tử chính là:

```text
RandomDay/Scripts/ax_config/server.lua
```

Sao lưu tệp và thay đổi từng phần một. Boolean Lua là chữ thường `true` và `false`; chuỗi cần dấu ngoặc kép; danh sách các mục cần có dấu phẩy. Sau lần bắt đầu tiếp theo, hãy đọc trang trạng thái trước khi thực hiện thay đổi khác. Những người đóng góp làm việc từ nguồn có thể sử dụng các bước kiểm tra [xác thực bản phát hành](X%C3%81C_TH%E1%BB%B0C_PH%C3%81T_H%C3%80NH.md) riêng biệt trước khi đóng gói bản dựng đã sửa đổi.

Không chỉnh sửa thủ công `.randomday_mode`, `.randomday_version`, tham chiếu hồ sơ đã tạo, `runtime/` hoặc `web_export/`. Trình tạo gói sở hữu các điểm đánh dấu phiên bản và chế độ gói cũng như kiểm tra xem chúng có phù hợp với siêu dữ liệu phát hành hay không.

Mọi cài đặt bên dưới được xác định trong `RandomDay/Scripts/ax_config/server.lua`. Các bảng phân biệt cài đặt có thể chỉnh sửa với trường nhận dạng thuộc sở hữu của bản phát hành và trường tương thích dành riêng. Một trường hiện diện trong Lua không có nghĩa là việc thay đổi trường đó là hành vi được hỗ trợ.

<a id="choose-an-experience"></a>
## Chọn một trải nghiệm

RandomDay có hai gói: một gói dành cho mọi máy chủ chuyên dụng và một gói dành cho singleplayer/LAN sao chép thủ công. Gói chuyên dụng có hai chế độ hoạt động; các chế độ đó là cài đặt, không phải các bản tải xuống riêng biệt.

| Thế giới của bạn | Cài đặt | Chọn hành vi này |
| --- | --- | --- |
| Một máy chủ chuyên dụng giúp một chiến dịch tiếp tục di chuyển trong các lần khởi động lại định kỳ | Gói máy chủ chuyên dụng | `persistent_dedicated` tiếp tục dòng và hồ sơ đã lưu order. |
| Một máy chủ chuyên dụng chỉ mở cho các phiên chơi riêng lẻ | Gói máy chủ chuyên dụng tương tự | `temporary_dedicated` giữ cho hồ sơ tiếp theo được chuẩn bị an toàn giữa các phiên, trong khi một giải chạy gia đình mới có thể sử dụng chế độ khởi động ngẫu nhiên hoặc được định cấu hình. |
| Một người chơi đơn hoặc LAN thế giới | Singleplayer/LAN gói | `auto` chọn hành vi sao chép thủ công; dừng thế giới trước khi sao chép tệp được tạo. |

Nếu bạn không chắc chắn, hãy sử dụng `auto`. Gói chọn hành vi bình thường cho kiểu cài đặt của nó. Chọn kiểu chơi rộng rãi trong [Xoay vòng gia đình](XOAY_V%C3%92NG_GIA_%C4%90%C3%8CNH.md). Sử dụng [chỉ mục gia đình được tạo](H%E1%BB%92_S%C6%A0/T%C3%80I_LI%E1%BB%86U_H%E1%BB%92_S%C6%A0.md) khi bạn muốn giá trị hộp cát và lối chơi chính xác. Sau đó chọn ngày đầu tiên và tiến trình:

- `start_day_mode="configured"` bắt đầu lúc `start_day`.
- `start_day_mode="random"` chọn một ngày đầu tiên hợp lệ khi bắt đầu giải chạy gia đình mới và tiếp tục lựa chọn đó.
- `day_progression_mode="sequential"` bao trùm tất cả 17 vị trí.
- `day_progression_mode="non_repeating_random"` lưu trữ một đơn hàng được xáo trộn chứa mỗi ngày đúng một lần.

Sử dụng các cài đặt trước hoàn chỉnh trong [Xoay](#rotation). Quá trình cài đặt mới vẫn cần một lần khởi động để chuẩn bị cấu hình đầu tiên đã chọn và bắt đầu sau để kích hoạt cấu hình đó.

<a id="release-identity-and-logging"></a>
## Phát hành danh tính và ghi nhật ký

| Cài đặt | Loại và giá trị vận chuyển | Sử dụng được hỗ trợ | Lỗi hoặc tương tác |
|---|---|---|---|
| `version` | Chuỗi đọc từ `.randomday_version` | Chỉ đọc. | Đánh dấu bị thiếu hoặc trống trở thành `unversioned`; Xác thực gói cuối cùng sẽ loại bỏ sự trôi dạt danh tính. |
| `package_mode` | Chuỗi đọc từ `.randomday_mode` | Chỉ đọc: `dedicated_server` hoặc `singleplayer_manual`. | Mọi giá trị khác sẽ dừng khởi động trước khi mục tiêu ghi. |
| `plan_basis` | Chuỗi: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Chỉ nhãn chẩn đoán; không sử dụng nó làm nút chuyển đổi tính năng. | Thời gian chạy hiện tại không phân nhánh trên trường này. |
| `logging.level` | Chuỗi: `info` | `debug`, `info`, `warn` hoặc `error`. | Các giá trị không xác định sẽ không thêm đích ghi nhật ký; giữ `info` trừ khi chẩn đoán hành vi tạo hồ sơ. |

Ví dụ:

```lua
logging = { level = "debug" }
```

Sử dụng `debug` tạm thời, giữ nguyên `UE4SS.log` có liên quan, sau đó quay lại `info`. Nhật ký có thể chứa các đường dẫn cục bộ từ các lỗi cấp thấp; hãy xem lại chúng trước khi chia sẻ.

<a id="experience-mode"></a>
## Chế độ trải nghiệm

`experience.mode` đặt tên cho cách vận hành cài đặt này. Nó không làm suy yếu ranh giới an toàn cho lần khởi động tiếp theo: Abiotic Factor đọc cài đặt hộp cát trước UE4SS tải RandomDay, do đó không có chế độ nào có thể thay thế các quy tắc của quy trình đang chạy.

| Cài đặt | Giá trị được vận chuyển | Các giá trị được hỗ trợ | Hiệu ứng |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` giải quyết khỏi gói. Các gói chuyên dụng có thể sử dụng chế độ chuyên dụng. Gói sao chép thủ công chỉ chấp nhận `auto` hoặc `singleplayer_lan`. |

- `persistent_dedicated` giữ một đơn hàng family/day được lưu trữ trong các lần khởi động lại máy chủ dài hạn thông thường.
- `temporary_dedicated` mô tả một máy chủ được khởi động cho các phiên chơi bị giới hạn. Nó vẫn duy trì thứ tự đã chuẩn bị sẵn nên việc dừng máy chủ sẽ không âm thầm cuộn lại phiên tiếp theo.
- `singleplayer_lan` chỉ tạo ra đầu ra sao chép thủ công có giới hạn. Nó không bao giờ phát hiện hoặc chỉnh sửa thư mục lưu cá nhân.

Một tổ hợp package/experience không tương thích dừng trước khi ghi vào hộp cát.

<a id="rotation"></a>
## Xoay

| Cài đặt | Giá trị được vận chuyển | Các giá trị được hỗ trợ | Hiệu ứng |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Giữ tất cả các thay đổi của hộp cát ở ranh giới khởi động lại. |
| `cycle.cycle_length_days` | `17` | `17` cho bộ cấu hình tiêu chuẩn | Trùng khớp mọi gói gia đình và tham chiếu được tạo. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Sử dụng `cycle.start_day` hoặc chọn một ngày bắt đầu hợp lệ một lần khi bắt đầu giải chạy gia đình. |
| `cycle.start_day` | `1` | Số nguyên `1` đến `17` | Ngày đầu tiên `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Xây dựng một đơn hàng tuần tự được bao bọc hoặc một đơn hàng được xáo trộn mỗi ngày đúng một lần. |
| `cycle.bootstrap_day` | `1` | Số nguyên `1` đến `17` | Dự phòng tương thích chỉ được sử dụng khi không có `cycle.start_day`. Cấu hình mới nên sử dụng `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` hoặc khoảng dương giới hạn | `0` chuẩn bị một lần khi khởi động; giá trị dương cho phép giám sát định kỳ khi UE4SS cung cấp `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Chọn cách bắt đầu một đợt chạy gia đình 17 ngày mới. |
| `profile_family.selected_family` | `action` | Một ID trong `allowed_families` | Gia đình được `selected_run` sử dụng và làm dự phòng. |
| `profile_family.default_family` | `action` | Một ID gia đình đã đăng ký | Dự phòng khi ID đã chọn bị thiếu hoặc không hợp lệ. |
| `profile_family.allowed_families` | Tất cả 17 ID gia đình công khai | Bất kỳ tập hợp con ID đã đăng ký nào không trống | Giới hạn các gia đình đủ điều kiện cho các lần chạy mới. |
| `profile_family.preserve_family_until_day_17` | Boolean: `true` | Khả năng tương thích được bảo lưu lĩnh vực; giữ `true`. | Lịch hiện tại luôn giữ cho nhóm ở mọi vị trí trong thứ tự 17 ngày liên tục và không đọc trường này dưới dạng chuyển đổi. |
| `profile_family.reroll_only_after_day_17` | Boolean: `true` | Khả năng tương thích được bảo lưu lĩnh vực; giữ `true`. | Lịch hiện tại chỉ thay đổi nhóm sau mỗi ngày ID đã hoàn thành, bất kể ngày nào là ngày cuối cùng trong thứ tự được lưu trữ. |
| `profile_family.prevent_repeats_until_rotation_complete` | Boolean: `true` | Khả năng tương thích được bảo lưu lĩnh vực; giữ `true`. | Logic nhóm không lặp lại hiện tại đã được sửa và không đọc giá trị này dưới dạng chuyển đổi. |

Thứ tự ngày được tạo một lần cho dòng sản phẩm mới và được ghi vào `runtime/rotation_state.txt`. Phục hồi và sau đó khởi động lại sẽ sử dụng lại các vị trí chính xác đó. Chỉnh sửa cấu hình không cuộn lại đơn hàng đang được thực hiện. Gia đình chỉ thay đổi sau khi hoàn thành đủ 17 vị trí.

<a id="recommended-presets"></a>
### Các cài đặt trước được đề xuất

Máy chủ chuyên dụng liên tục:

```lua
experience = { mode = "persistent_dedicated" }
cycle = {
    application_mode = "next_reboot_queue",
    cycle_length_days = 17,
    start_day_mode = "configured",
    start_day = 1,
    day_progression_mode = "sequential",
    bootstrap_day = 1,
    check_interval_ms = 0,
}
```

Các phiên dành riêng tạm thời với thứ tự không lặp lại khác nhau cho mỗi lần chạy gia đình mới:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN bản sao thủ công sử dụng gói chơi đơn và thường rời đi `experience.mode="auto"`. Bạn có thể chọn các điều khiển bắt đầu và tiến trình tương tự trước khi tạo tệp tiếp theo. Sao chép tệp đã tạo vào thế giới đã dừng đã chọn trước khi chạy thế hệ khác nếu bạn muốn trạng thái thời gian chạy và cấu hình đã tải của thế giới vẫn được căn chỉnh.

Khi cài đặt mới, quy trình đầu tiên chỉ có thể chuẩn bị ngày bắt đầu đã chọn. Một quá trình sau đó sẽ kích hoạt nó. Khởi động ngẫu nhiên hoặc được định cấu hình không bỏ qua thứ tự tải động cơ đó.

Ví dụ về lần chạy Builder cố định:

```lua
profile_family = {
    mode = "selected_run",
    selected_family = "builder",
    default_family = "action",
    allowed_families = { "builder" },
    preserve_family_until_day_17 = true,
    reroll_only_after_day_17 = true,
    prevent_repeats_until_rotation_complete = true,
}
```

Một bộ đủ điều kiện trống hoặc không xác định sẽ được gửi lại cho một họ đã đăng ký thay vì tạo một hồ sơ chưa hoàn chỉnh.

<a id="primary-sandbox-path"></a>
## Đường dẫn hộp cát chính

| Cài đặt | Loại và giá trị vận chuyển | Sử dụng được hỗ trợ | Lỗi hoặc tương tác |
|---|---|---|---|
| `paths.runtime_dir` | Chuỗi: `ue4ss/Mods/RandomDay/runtime` | Chỉ đọc trong cấu hình nguồn. | `init.lua` thay thế nó bằng mod-root đã giải quyết `runtime/`. |
| `paths.web_export_dir` | Chuỗi: `ue4ss/Mods/RandomDay/web_export` | Chỉ đọc trong cấu hình nguồn. | `init.lua` thay thế nó bằng mod-root đã giải quyết `web_export/`. |
| `paths.sandbox_path_override` | Chuỗi hoặc `nil`: `nil` | Một chữ `SandboxSettings.ini` dành cho bố cục chuyên dụng không chuẩn. | Các mục tiêu không an toàn hoặc không khả dụng sẽ không ghi được; chế độ chơi đơn sẽ xóa phần ghi đè. |
| `paths.sandbox_candidates` | Danh sách các chuỗi: bảy ứng cử viên chung | Đã đặt hàng các ứng cử viên dự phòng cho máy chủ chuyên dụng. | `init.lua` thêm vào trước các ứng cử viên bắt nguồn từ quá trình cài đặt; đường dẫn hiện có đầu tiên sẽ thắng. |
| `paths.write_sandbox_mirrors` | Boolean: `true` | Cho phép các bản sao được định cấu hình có chủ ý. | Không có bản sao nào được ghi trong khi danh sách bản sao trống và `world_name=nil`; lực lượng chế độ chơi đơn `false`. |
| `paths.sandbox_mirror_required` | Boolean: `false` | Khả năng tương thích được bảo lưu lĩnh vực; giữ `false`. | Người viết hiện tại coi các bản sao là tùy chọn và không đọc trường này như một cổng bắt buộc. |
| `paths.world_name` | Chuỗi hoặc `nil`: `nil` | Một thành phần thư mục thế giới an toàn được sử dụng để lấy ra các ứng cử viên nhân bản chung. | Mọi thứ bên ngoài chữ cái, số, dấu cách, `_` hoặc `-` đều dừng khởi động; chế độ chơi đơn sẽ bỏ qua nó. |
| `paths.sandbox_mirror_candidates` | Danh sách các chuỗi: trống | Các tệp sao chép tùy chọn chính xác. | Mỗi máy sao chép đủ điều kiện sử dụng giao dịch riêng của nó; lỗi nhân bản không làm thay đổi thành công chính. |

`paths.sandbox_path_override` mặc định là `nil`. Khi không ghi đè, RandomDay trước tiên sẽ kiểm tra các ứng cử viên WindowsServer chung được neo vào bản cài đặt RandomDay được phát hiện, sau đó kiểm tra mọi ứng cử viên đã được định cấu hình. Nếu không tồn tại, nó sử dụng ứng cử viên chung được neo cài đặt đầu tiên, giải quyết vấn đề cài đặt máy chủ:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Dự phòng này không được giải quyết khỏi thư mục làm việc hiện tại của quy trình. Chỉ đặt `sandbox_path_override` khi cài đặt của bạn sử dụng một tệp chữ khác. Trỏ nó tới một `SandboxSettings.ini`, không phải một thư mục. Dừng máy chủ và xác nhận tệp nằm trong bản cài đặt dự định trước khi sử dụng.

<a id="optional-mirrors"></a>
### Các bản sao tùy chọn

`paths.write_sandbox_mirrors` được gửi dưới dạng `true`, nhưng danh sách đường dẫn bản sao trống và `paths.world_name` là `nil`. Do đó, các giá trị mặc định được vận chuyển không ghi thêm bản sao. Đặt nó thành `false` khi quá trình cài đặt phải luôn chỉ ghi mục tiêu chính đã được giải quyết. Không có ứng cử viên nhân bản hoặc tên thế giới nào được định cấu hình, một trong hai giá trị vẫn chỉ ghi vào tệp hộp cát chính.

Một nhân bản chỉ đủ điều kiện khi bạn cố tình thêm mục nhập chính xác vào `paths.sandbox_mirror_candidates` hoặc đặt `paths.world_name`. Bản sao là bản sao nỗ lực tốt nhất cho các bản cài đặt đọc đường dẫn hộp cát dành riêng cho thế giới thứ hai. Chúng không thay thế cho việc định cấu hình đường dẫn chính chính xác.

Trước khi bật máy nhân bản:

1. dừng máy chủ;
2. xác định chính xác tệp mà máy chủ đọc;
3. xác nhận mục tiêu nằm trong cài đặt dự kiến;
4. sao lưu;
5. chỉ thêm đường dẫn đó;
6. xác minh kết quả phản chiếu sau khi chuẩn bị.

Ghi đè ví dụ mà không cần phản chiếu:

```lua
paths = {
    runtime_dir = "ue4ss/Mods/RandomDay/runtime",
    web_export_dir = "ue4ss/Mods/RandomDay/web_export",
    sandbox_path_override = "<server-root>/AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    sandbox_candidates = {},
    write_sandbox_mirrors = false,
    sandbox_mirror_required = false,
    world_name = nil,
    sandbox_mirror_candidates = {},
}
```

`<server-root>` là trình giữ chỗ. Thay thế nó cục bộ; không xuất bản đường dẫn dành riêng cho máy.

<a id="non-disableable-safety-locks"></a>
## Khóa an toàn không thể tắt

| Cài đặt | Giá trị bắt buộc | Ý nghĩa |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Bảo quản bản sao đã được xác minh trước khi thay thế tệp chính hiện có. |
| `sandbox.restore_last_good_on_failure` | `true` | Cố gắng tự động khôi phục sau khi thay thế hoặc đọc lại không thành công. |
| `external_mods.patch_only_existing_keys` | `true` | Từ chối tạo ra cài đặt không xác định trong tệp của mod khác. |
| `external_mods.backup_before_write` | `true` | Giữ lại byte mục tiêu trước khi chỉnh sửa bộ điều hợp giao dịch được hỗ trợ. |

RandomDay từ chối khởi động nếu bất kỳ giá trị nào trong bốn giá trị này không `true`. Chúng là các khóa an toàn, không hỗ trợ các nút chuyển đổi của người vận hành. Không tắt chúng, kể cả trong quá trình phát triển hoặc khắc phục sự cố, vì làm như vậy sẽ thay đổi ranh giới đóng không thành công mà quá trình kiểm tra trình ghi và bộ chuyển đổi chứng minh.

`sandbox.force_rewrite_every_supervision_tick` vẫn là cài đặt bình thường và được gửi dưới dạng `false`, khiến tệp hộp cát phù hợp không bị ảnh hưởng. Nó chấp nhận một Boolean. Đặt nó thành `true` buộc các byte đã chuẩn bị thuộc sở hữu quy trình tương tự phải thông qua trình ghi lần nữa; nó không nâng cao family/day. Chỉ sử dụng nó cho thử nghiệm khôi phục giới hạn vì việc ghi lặp lại sẽ tạo ra nhiều bản sao lưu hoạt động hơn.

<a id="optional-mod-adapters"></a>
## Bộ điều hợp Mod tùy chọn

| Cài đặt | Giá trị được vận chuyển | Ý nghĩa |
|---|---:|---|
| `external_mods.enabled` | `true` | Cho phép bộ điều hợp được định cấu hình kiểm tra các mục tiêu được cài đặt riêng. |
| `external_mods.optional_by_default` | `true` | Các mod tùy chọn bị thiếu hoặc không tương thích sẽ không chặn RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Khóa an toàn bắt buộc; khởi động không thành công nếu bị thay đổi. |
| `external_mods.backup_before_write` | `true` | Khóa an toàn bắt buộc; khởi động không thành công nếu bị thay đổi. |
| `external_mods.adapters` | Bốn ID bộ điều hợp công cộng | Giới hạn mà RandomDay-owned bộ điều hợp có thể chạy. |

Xóa ID bộ điều hợp khỏi danh sách để giữ nguyên tích hợp đó mà không tắt hoặc gỡ cài đặt mod của bên thứ ba. singleplayer/LAN vô hiệu hóa mọi bộ điều hợp bất kể danh sách này.

`external_mods.optional_by_default=false` khiến kết quả bộ điều hợp đã định cấu hình không phải là `applied` hoặc `already_current` không đạt kết quả bộ điều hợp tổng hợp. Nó không làm cho giao dịch hộp cát chính bị quay trở lại. Giữ `true` được vận chuyển trừ khi người vận hành có lý do đã được kiểm chứng để yêu cầu tích hợp.

Xem [Bộ điều hợp Mod được hỗ trợ](B%E1%BB%98_%C4%90I%E1%BB%80U_H%E1%BB%A2P_%C4%90%C6%AF%E1%BB%A2C_H%E1%BB%96_TR%E1%BB%A2.md) dành cho bố cục được nhận dạng và sáu kết quả có thể xảy ra.

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### Các trường phạm vi của Chaotic Spawn Engine tùy chọn

`world_scope` chỉ cung cấp năm cài đặt tiện ích mở rộng RandomDay tùy chọn khi Chaotic Spawn Engine được công nhận `DynamicSpawns/SharedData.lua` bố cục đã chứa các trường đó. Đây không phải là một bản mod hoặc bản tải xuống riêng biệt:

| Cài đặt | Giá trị được vận chuyển | Hiệu ứng bộ chuyển đổi |
|---|---:|---|
| `world_scope.enabled` | `true` | Yêu cầu cổng phạm vi thế giới RandomDay tùy chọn bên trong một DynamicSpawns bố cục. |
| `world_scope.affect_open_worlds` | `true` | Bao gồm các thế giới mở trừ khi mod mục tiêu áp dụng quy tắc thế giới được bảo vệ. |
| `world_scope.unknown_world_policy` | `allow` | Yêu cầu `allow` hoặc `block` khi mục tiêu không thể mod phân loại một thế giới. |
| `world_scope.log_scope_decisions` | `true` | Yêu cầu ghi nhật ký mô-đun mục tiêu để quyết định phạm vi của nó. |
| `world_scope.protected_worlds` | Danh sách trống | Cung cấp các mẫu thế giới được bảo vệ được phân tách bằng dấu phẩy cho bố cục mục tiêu. |

Các giá trị này là đầu vào của bộ điều hợp chứ không phải bộ lọc thế giới được trình viết hộp cát của RandomDay's trình soạn thảo hộp cát. Chúng chỉ có hiệu lực khi bố cục Chaotic Spawn Engine được cài đặt riêng đã chứa RandomDay tùy chọn hoàn chỉnh và báo cáo `applied` hoặc `already_current`. Chaotic Spawn Engine vẫn chịu trách nhiệm sử dụng các trường đó trong thời gian chạy. Cài đặt thông thường không có trường mở rộng sẽ không thay đổi.

Tất cả năm giá trị đều là đầu vào của bộ chuyển đổi. `unknown_world_policy` chỉ chấp nhận các giá trị đích được ghi lại `allow` hoặc `block`; bố cục mục tiêu không được nhận dạng sẽ bị bỏ qua. Giữ trống `protected_worlds` trong các ví dụ về tài liệu. Nếu nhà điều hành sử dụng các mẫu cục bộ thì chúng không được đưa vào ảnh chụp màn hình, sự cố hoặc tạo phẩm phát hành.

<a id="player-messages"></a>
## Thông báo của người chơi

Cấu hình máy chủ chuyên dụng được cung cấp cho phép thông báo tham gia nhỏ gọn và đường truyền ngắn hàng ngày. Nó đợi 30 giây trước lần vượt qua đầu tiên, kiểm tra những người chơi mới tham gia cứ sau 15 giây và đợi 10 giây sau thông báo tham gia trước dòng hàng ngày.

| Cài đặt | Giá trị được vận chuyển |
|---|---:|
| `player_message.enabled` | `true` |
| `player_message.log_on_startup` | `true` |
| `player_message.register_console_command` | `false` |
| `player_message.console_command` | `randomday` |
| `player_message.broadcast_enabled` | `true` |
| `player_message.startup_delay_ms` | `30000` |
| `player_message.join_check_interval_ms` | `15000` |
| `player_message.send_daily_joke_after_join` | `true` |
| `player_message.daily_joke_delay_seconds` | `10` |
| `player_message.criticality_join` | `2` |
| `player_message.criticality_joke` | `0` |
| `player_message.max_line_chars` | `42` |
| `player_message.max_join_lines` | `4` |
| `player_message.max_warning_lines` | `3` |
| `player_message.max_note_lines` | `3` |

Xác thực độ dài tin nhắn sẽ kiểm tra giới hạn nguồn. Nó không thay thế kiểm tra trực quan trên mọi độ phân giải của máy khách.

Giá trị thời gian là các số không âm được hiểu là mili giây ngoại trừ `daily_joke_delay_seconds`. Cài đặt thông báo hoặc phát sóng bị vô hiệu hóa sẽ ngăn chặn các thông báo của khách hàng mà không thay đổi quá trình chuẩn bị hộp cát. Lệnh console chỉ được đăng ký khi cả cài đặt và trình xử lý UE4SS đều khả dụng. Giữ các giá trị quan trọng ở mức độ vận chuyển trừ khi thử nghiệm khách hàng được chỉ định chứng minh một giá trị khác.

`max_line_chars` được người dịch giới hạn ở mức 8 đến 64 ký tự. Ba cài đặt đếm dòng giới hạn kết nối, cảnh báo và đầu ra ghi chú tương ứng; các giá trị được vận chuyển khớp với số dòng nguồn có sẵn. Giữ bốn giới hạn này ở chế độ mặc định trừ khi thử nghiệm bố cục máy khách chứng minh cài đặt hẹp hơn.

Ví dụ với thông báo bị tắt:

```lua
player_message = {
    enabled = false,
    log_on_startup = true,
    register_console_command = false,
    console_command = "randomday",
    broadcast_enabled = false,
    startup_delay_ms = 30000,
    join_check_interval_ms = 15000,
    send_daily_joke_after_join = false,
    daily_joke_delay_seconds = 10,
    criticality_join = 2,
    criticality_joke = 0,
    max_line_chars = 42,
    max_join_lines = 4,
    max_warning_lines = 3,
    max_note_lines = 3,
}
```

<a id="profiles-and-sandbox-values"></a>
## Hồ sơ và giá trị hộp cát

Các tệp nguồn dòng trong `RandomDay/Scripts/ax_profiles/families/` xác định 17 ngày hoàn chỉnh cho mỗi dòng. Tài liệu được tạo trong `docs/profiles/` là đầu ra tham chiếu, không phải nguồn tùy chỉnh.

Sử dụng [tham chiếu khóa hộp cát hoàn chỉnh](H%E1%BB%92_S%C6%A0/PH%C3%8DM_C%C3%80I_%C4%90%E1%BA%B6T_H%E1%BB%98P_C%C3%81T.md) tùy chọn cho các loại, phạm vi, mặc định cấu hình được vận chuyển và các giá trị bất biến còn lại. Sau khi chỉnh sửa nguồn hồ sơ, hãy tạo lại và xác thực tất cả 289 kết hợp; không vá một lựa chọn bắt đầu Markdown hoặc JSON được tạo bằng tay.

<a id="customize-the-shipped-profile-defaults"></a>
### Tùy chỉnh các giá trị mặc định của cấu hình được gửi

Mở:

```text
RandomDay/Scripts/ax_config/server.lua
```

Tìm khối này trong `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Đây là những lựa chọn ban đầu của RandomDay's đã tạo, không phải các quy tắc Yếu tố phi sinh học không thể thay đổi. Đặt chế độ thành `true` hoặc `false`. Đặt từng giá trị hỗ trợ thành một số nguyên từ `0` đến `1000`. Dừng trò chơi hoặc máy chủ chuyên dụng trước khi chỉnh sửa tệp, lưu tệp rồi bắt đầu lại để Lua tải cấu hình mới.

RandomDay đọc khối này bất cứ khi nào nó xây dựng 17 hồ sơ trong một họ. Do đó, các giá trị đã chọn sẽ được áp dụng cho mọi gia đình và ngày, bao gồm các hồ sơ được chuẩn bị sau khi xoay vòng và các hồ sơ được xây dựng lại sau khi khởi động máy chủ sau này. Bạn không cần chỉnh sửa 289 tệp hồ sơ hoặc tạo lại tham chiếu hồ sơ.

Chỉ thay đổi `SandboxSettings.ini` trực tiếp là tạm thời vì hồ sơ chuẩn bị tiếp theo được tạo từ `server.lua`. Loại không hợp lệ, khóa không xác định hoặc giá trị hỗ trợ bên ngoài `0..1000` dừng việc xây dựng hồ sơ với lỗi cấu hình được đặt tên thay vì âm thầm hoàn nguyên về mặc định.

Tham chiếu hồ sơ được tạo tiếp tục hiển thị các giá trị mặc định được gửi. Đây là bản phát hành tham chiếu chứ không phải bản sao cấu hình riêng của một máy chủ.
