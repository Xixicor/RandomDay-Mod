<a id="packaged-source-reference"></a>
# Tham khảo nguồn đóng gói

> **Nguồn tiếng Anh chuẩn:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Bản phát hành ZIP chứa chính xác 51 đường dẫn bên dưới. Trình xây dựng từ chối đường dẫn bị thiếu, nguồn hình gói bổ sung, xung đột trường hợp, liên kết tượng trưng hoặc thành viên nằm ngoài danh sách cho phép theo nghĩa đen của nó. Đầu ra thời gian chạy, kiểm tra, tài liệu kho lưu trữ và mod của bên thứ ba không phải là thành viên gói.

Người bạn đồng hành có thể kiểm tra bằng máy là [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Nó ghi lại các đường dẫn giống nhau với đầu vào, đầu ra, tác dụng phụ, cài đặt công khai, trạng thái hiển thị, chế độ lỗi, khả năng chỉnh sửa và tài liệu chuẩn.

Mỗi hàng Lua được vận chuyển có một neo `module-*` ổn định. Liên kết giống hệt nhau trong tiêu đề nguồn chuẩn và bản ghi máy giúp cho quyền sở hữu, hợp đồng, tác dụng phụ, lỗi và quá trình khôi phục có thể được theo dõi trực tiếp.

<a id="package-markers"></a>
## Điểm đánh dấu gói

| Đường dẫn | Người gọi và trách nhiệm | Tác dụng phụ và hành vi lỗi | Hướng dẫn |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS điểm đánh dấu hỗ trợ được bao gồm trong cả hai gói. | Không ghi khi chạy. Thiếu tệp không thể xác thực gói và có thể ngăn tải. | [Cài đặt](C%C3%80I_%C4%90%E1%BA%B6T.md) |
| `RandomDay/.randomday_version` | Đọc bởi `ax_core/version.lua`; được tạo trên mỗi gói. | Không ghi trong thời gian chạy. Missing/blank điểm đánh dấu trả về `unversioned`; bản dựng cuối cùng yêu cầu nhận dạng phiên bản được căn chỉnh. | [Xác thực bản phát hành](X%C3%81C_TH%E1%BB%B0C_PH%C3%81T_H%C3%80NH.md) |
| `RandomDay/.randomday_mode` | Đọc bởi `ax_core/version.lua`; được tạo dưới dạng `dedicated_server` hoặc `singleplayer_manual`. | Giá trị không hợp lệ dừng khởi động trước khi hệ thống tệp hoạt động. | [Kiến trúc](KI%E1%BA%BEN_TR%C3%9AC.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Các dịch vụ đầu vào, cấu hình và cốt lõi

| Đường dẫn | Người gọi và trách nhiệm | Đầu vào, đầu ra và hành vi lỗi | Hướng dẫn |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS điểm vào. Giải quyết một mod root và gọi `ax_core/init.lua`. | In một dòng nguy hiểm và trả về nếu quá trình phân giải gốc hoặc khởi động không thành công. | [Đường dẫn khởi động](KI%E1%BA%BEN_TR%C3%9AC.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Bộ điều phối chính để khởi động và giám sát tùy chọn. | Đường dẫn đầu ra neo, thực thi package/safety khóa, sở hữu một lựa chọn và ghi tuần tự, trạng thái, bộ điều hợp, trạng thái, web và tin nhắn. | [Đường dẫn khởi động](KI%E1%BA%BEN_TR%C3%9AC.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Được tải bởi `init.lua`; đối tượng cấu hình công khai hoàn chỉnh. | Đọc nhận dạng gói; cài đặt và các trường dành riêng được ghi lại riêng lẻ. Khóa an toàn không hợp lệ sẽ dừng khởi động. | [Cấu hình](C%E1%BA%A4U_H%C3%8CNH.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Được tải bởi cấu hình và sổ đăng ký hồ sơ. | Đọc các dấu gói đã được cắt bớt; trả về `unversioned` hoặc `invalid` khi không có sẵn. | [Giải phóng danh tính](X%C3%81C_TH%E1%BB%B0C_PH%C3%81T_H%C3%80NH.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Trình bao bọc ghi nhật ký được chia sẻ. | Phát ra các dòng `[RandomDay]` ở các cấp được định cấu hình; không truyền tải nhật ký riêng tư. | [Tệp thời gian chạy](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | Các trình trợ giúp tệp, đường dẫn, mã hóa, hàm băm, thư mục và giao dịch được chia sẻ. | Việc tạo thư mục chỉ chấp nhận lệnh Lua/Wine đã được xác nhận thành công; các kết quả không khả dụng, được nêu lên, được báo hiệu, không rõ ràng hoặc khác 0 không được đóng bằng các thông báo bị chặn và các tham chiếu liên quan đến thời gian chạy. Nó cũng sở hữu pending/readback/promotion/rollback ngữ nghĩa và giữ lại dữ liệu khôi phục không chắc chắn. | [Giao dịch hộp cát](KI%E1%BA%BEN_TR%C3%9AC.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Lựa chọn, Hộp cát, Trạng thái và Thông báo

| Đường dẫn | Người gọi và trách nhiệm | Đầu vào, đầu ra và hành vi lỗi | Hướng dẫn |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; đọc điểm đánh dấu hoạt động và trạng thái xoay, chọn một cặp active/prepared, duy trì chế độ phiên và thứ tự ngày chính xác. | Xây dựng configured/wrapped hoặc thứ tự 17 vị trí được xáo trộn một lần, ghi `rotation_state.txt` theo giao dịch và quay trở lại trạng thái tốt cuối cùng mà không cần cuộn lại. | [Máy trạng thái xoay](KI%E1%BA%BEN_TR%C3%9AC.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Trình ghi hộp cát; tạo hoạt động và các bản sao lưu tốt nhất cũng như khôi phục các byte đã được xác minh. | Cập nhật sandbox/manifest tốt nhất dưới dạng một cặp; giữ nguyên cặp trước nếu bảng kê khai thay thế không thành công. | [Tệp thời gian chạy](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Trình tạo hồ sơ, trình tuần tự hóa và trình xác thực. | Xác định thứ tự, loại, phạm vi và quy tắc cố định của khóa chính tắc; không có hệ thống tập tin nào ghi. | [Khóa hộp cát](H%E1%BB%92_S%C6%A0/PH%C3%8DM_C%C3%80I_%C4%90%E1%BA%B6T_H%E1%BB%98P_C%C3%81T.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Trình soạn thảo hộp cát. | Tạo ra tính xác định hoàn chỉnh INI văn bản với RandomDay; dữ liệu hồ sơ không hợp lệ bị từ chối bởi quá trình xác thực. | [Hồ sơ](H%E1%BB%92_S%C6%A0/T%C3%80I_LI%E1%BB%86U_H%E1%BB%92_S%C6%A0.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Người viết và kiểm tra trình xây dựng. | Xác thực các giá trị cấu hình và tuần tự hóa INI dựa trên lược đồ, giá trị cố định và danh tính hồ sơ dự kiến. | [Khóa hộp cát](H%E1%BB%92_S%C6%A0/PH%C3%8DM_C%C3%80I_%C4%90%E1%BA%B6T_H%E1%BB%98P_C%C3%81T.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; giải quyết các mục tiêu giới hạn chế độ và thực hiện primary/mirror ghi. | Tạo ra các kết quả giao dịch, sao lưu, khôi phục, băm, sao chép và xuất thủ công. Các mục tiêu không an toàn và ghi chưa được xác minh đã đóng không thành công. | [Giao dịch hộp cát](KI%E1%BA%BEN_TR%C3%9AC.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` sau mỗi kết quả chuẩn bị. | Ghi trạng thái hiện tại, từ điển và xem trước tin nhắn một cách giao dịch với các tham chiếu mục tiêu đã được chọn lọc. Lỗi đầu ra được ghi lại và không thay đổi quyền hạn hộp cát. | [Lược đồ trạng thái hiện tại](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` sau trạng thái. | Viết `today.json` và `today.html` từ active/prepared quyết định. Lỗi được báo cáo là lỗi xuất chứ không phải thành công trong hộp cát. | [Lược đồ xuất web](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` sau khi duy trì trạng thái thành công. | Xây dựng giới hạn join/daily thông báo từ dữ liệu dịch và tùy chọn đăng ký lệnh bảng điều khiển cục bộ. Thiếu player/transport bỏ qua thông báo mà không thay đổi trạng thái hồ sơ. | [Thông báo của người chơi](C%E1%BA%A4U_H%C3%8CNH.md#player-messages) |

<a id="optional-adapter-modules"></a>
## Mô-đun bộ điều hợp tùy chọn

| Đường dẫn | Người gọi và trách nhiệm | Đầu vào, đầu ra và hành vi lỗi | Hướng dẫn |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; phát hiện các mục tiêu của bộ chuyển đổi được công nhận và áp dụng tất cả các tệp được lập kế hoạch theo giao dịch. | Đưa ra sáu kết quả được ghi lại, các bản sao lưu đã được xác minh, chẩn đoán được sàng lọc và bằng chứng khôi phục. | [Ranh giới bộ điều hợp](KI%E1%BA%BEN_TR%C3%9AC.md#adapter-boundary) |
| <a id="module-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Định nghĩa cầu nối bộ điều hợp cho DynamicSpawns bố cục. | Cung cấp chữ ký được công nhận và bản đồ giá trị được chuẩn bị sẵn; bố cục không xác định sẽ bị bỏ qua. | [Bộ điều hợp được hỗ trợ](B%E1%BB%98_%C4%90I%E1%BB%80U_H%E1%BB%A2P_%C4%90%C6%AF%E1%BB%A2C_H%E1%BB%96_TR%E1%BB%A2.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Định nghĩa bộ điều hợp nội bộ cho tùy chọn RandomDay các trường mở rộng trong Công cụ sinh sản hỗn loạn được công nhận `DynamicSpawns`; tên tệp không phải là tên sản phẩm riêng biệt. | Chỉ gặp các giá trị phạm vi và cấu hình bản đồ khi bố cục tiện ích mở rộng hoàn chỉnh tồn tại; Chaotic Spawn Engine vẫn chịu trách nhiệm sử dụng trong thời gian chạy. | [Bộ điều hợp được hỗ trợ](B%E1%BB%98_%C4%90I%E1%BB%80U_H%E1%BB%A2P_%C4%90%C6%AF%E1%BB%A2C_H%E1%BB%96_TR%E1%BB%A2.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Định nghĩa cầu nối bộ chuyển đổi cho bố cục cài đặt Laser gây chết người được công nhận. | Yêu cầu mọi khóa dự định trước khi đột biến; nếu không thì báo cáo không tương thích. | [Bộ điều hợp được hỗ trợ](B%E1%BB%98_%C4%90I%E1%BB%80U_H%E1%BB%A2P_%C4%90%C6%AF%E1%BB%A2C_H%E1%BB%96_TR%E1%BB%A2.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Định nghĩa cầu nối bộ điều hợp cho ANTE Lên bố cục cài đặt. | Yêu cầu các trường hồi sinh, biến thể và cổng gỡ lỗi; nếu không thì báo cáo không tương thích. | [Bộ điều hợp được hỗ trợ](B%E1%BB%98_%C4%90I%E1%BB%80U_H%E1%BB%A2P_%C4%90%C6%AF%E1%BB%A2C_H%E1%BB%96_TR%E1%BB%A2.md) |

<a id="shared-profile-and-translation-modules"></a>
## Hồ sơ được chia sẻ và mô-đun dịch

| Đường dẫn | Người gọi và trách nhiệm | Đầu vào, đầu ra và hành vi lỗi | Hướng dẫn |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; giá trị cơ sở chuẩn và giá trị mặc định trong 17 ngày. | Cung cấp tất cả khóa hộp cát, bốn giá trị mặc định của cấu hình được cung cấp và các quy tắc cố định còn lại; không có hệ thống tập tin ghi. Xác thực lược đồ từ chối đầu ra không đầy đủ. | [Khóa hộp cát](H%E1%BB%92_S%C6%A0/PH%C3%8DM_C%C3%80I_%C4%90%E1%BA%B6T_H%E1%BB%98P_C%C3%81T.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Mọi mô-đun gia đình và chế độ xem gia đình kế thừa. | Sao chép các ngày cơ sở, áp dụng family/day giới hạn, xác thực `sandbox.profile_overrides`, áp dụng các giá trị cố định đó cộng với các quy tắc cố định còn lại và trả về gói gia đình gồm 17 hồ sơ. | [Tham khảo hồ sơ](H%E1%BB%92_S%C6%A0/T%C3%80I_LI%E1%BB%86U_H%E1%BB%92_S%C6%A0.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; đã ra lệnh đăng ký công khai cho tất cả 17 họ. | Cung cấp ID, tên tệp nguồn, tên, mô tả, thể loại và siêu dữ liệu giai điệu. Thiếu nguồn gia đình không tải được. | [Xoay vòng gia đình](XOAY_V%C3%92NG_GIA_%C4%90%C3%8CNH.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Lịch, trình ghi, trạng thái, bài kiểm tra và trình tạo. | Tải tất cả các gói gia đình đã đăng ký và hiển thị bộ hồ sơ 17 x 17, mặc định được gửi, giá trị toàn cấu hình hiệu quả, thứ tự lược đồ và quy tắc cố định. | [Tham khảo hồ sơ](H%E1%BB%92_S%C6%A0/T%C3%80I_LI%E1%BB%86U_H%E1%BB%92_S%C6%A0.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Chế độ xem tương thích đóng gói của gói Hành động 17 ngày ban đầu. | Trả về gói gia đình hoàn chỉnh nhưng không phải là nguồn gia đình của cơ quan đăng ký hiện tại. | [Xoay vòng gia đình](XOAY_V%C3%92NG_GIA_%C4%90%C3%8CNH.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Chế độ xem tương thích đóng gói của gói tồn tại Reaction ban đầu. | Trả về một gói gia đình hoàn chỉnh nhưng không được cơ quan đăng ký hiện tại chọn để đảm bảo tính liên tục của đường dẫn gói trước đây. | [Xoay vòng gia đình](XOAY_V%C3%92NG_GIA_%C4%90%C3%8CNH.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Tra cứu cuộc gặp gỡ trong chỉ mục ngày cũ có sẵn cho mã hồ sơ. | Trả về một bản đồ cuộc gặp gỡ được giới hạn theo ngày; không có hệ thống tập tin ghi. Hồ sơ gia đình hiện tại mang các giá trị gặp gỡ riêng. | [Tham khảo hồ sơ](H%E1%BB%92_S%C6%A0/T%C3%80I_LI%E1%BB%86U_H%E1%BB%92_S%C6%A0.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Trình bao bọc thông báo và khả năng tương thích của người chơi. | Xây dựng giới hạn joke/note gói từ hồ sơ đã chọn; dữ liệu hồ sơ không có sẵn sẽ chuyển thành thông báo trung tính. | [Thông báo của người chơi](C%E1%BA%A4U_H%C3%8CNH.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Trình bao bọc tương thích ngược xung quanh `messages_17.lua`. | Không có dữ liệu hoặc ghi độc lập; lỗi tải xảy ra sau mô-đun thông báo chuẩn. | [Thông báo của người chơi](C%E1%BA%A4U_H%C3%8CNH.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Trình soạn thảo từ điển thời gian chạy và bản dịch. | Xác định tất cả 46 ý nghĩa, loại, phạm vi, miền và ngôn ngữ giá trị của cài đặt hộp cát. Các giá trị không xác định vẫn rõ ràng. | [Bản dịch và từ điển](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Trạng thái thời gian chạy và thông báo của người chơi. | Chuyển đổi giá trị hồ sơ thô thành điểm miền giới hạn, dữ kiện, tóm tắt, cảnh báo và đầu ra từ điển trong khi vẫn giữ lại giá trị thô. | [Lược đồ trạng thái hiện tại](T%E1%BB%86P_TH%E1%BB%9CI_GIAN_CH%E1%BA%A0Y.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Mô-đun gia đình đã đăng ký

Mỗi hàng được tải bởi `randomday_17.lua`, gọi `profile_builder.lua`, trả về chính xác 17 cấu hình và không có tác dụng phụ trực tiếp đến hệ thống tệp. Cấu hình bị thiếu, trùng lặp, không đầy đủ, ngoài phạm vi hoặc vi phạm quy tắc cố định sẽ làm hỏng bộ cố định thời gian chạy và cổng tham chiếu được tạo.

| Đường dẫn | Gia đình | Hướng dẫn được tạo chuẩn |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Hành động | [Hành động](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/NH%C3%93M_H%E1%BB%92_S%C6%A0_H%C3%80NH_%C4%90%E1%BB%98NG.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Sống sót | [Sống sót](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/D%C3%92NG_H%E1%BB%92_S%C6%A0_SINH_T%E1%BB%92N.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Tàng hình | [Tàng hình](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/D%C3%92NG_H%E1%BB%92_S%C6%A0_%E1%BA%A8N.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Bầy đàn | [Bầy đàn](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/H%E1%BB%8C_H%E1%BB%92_S%C6%A0_%C4%90%C3%81M_%C4%90%C3%94NG.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Săn trùm | [Săn trùm](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/GIA_%C4%90%C3%8CNH_H%E1%BB%92_S%C6%A0_S%C4%82N_S%E1%BA%BEP.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Người nhặt rác | [Người nhặt rác](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/NH%C3%93M_H%E1%BB%92_S%C6%A0_NG%C6%AF%E1%BB%9CI_NH%E1%BA%B6T_R%C3%81C.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Trình tạo | [Trình tạo](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/D%C3%92NG_H%E1%BB%92_S%C6%A0_NG%C6%AF%E1%BB%9CI_X%C3%82Y_D%E1%BB%B0NG.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Chuyến thám hiểm | [Chuyến thám hiểm](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/NH%C3%93M_H%E1%BB%92_S%C6%A0_TH%C3%81M_HI%E1%BB%82M.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Khóa bảo mật | [Khóa bảo mật](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/NH%C3%93M_H%E1%BB%92_S%C6%A0_KH%C3%93A_B%E1%BA%A2O_M%E1%BA%ACT.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Nguy hiểm sinh học | [Nguy hiểm sinh học](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/NH%C3%93M_H%E1%BB%92_S%C6%A0_NGUY_HI%E1%BB%82M_SINH_H%E1%BB%8CC.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Phản đối | [Phản đối](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/H%E1%BB%8C_H%E1%BB%92_S%C6%A0_PH%E1%BA%A2N_DI%E1%BB%86N.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Cơn ác mộng | [Cơn ác mộng](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/GIA_%C4%90%C3%8CNH_H%E1%BB%92_S%C6%A0_%C3%81C_M%E1%BB%98NG.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Đã bị phong hóa | [Đã bị phong hóa](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/H%E1%BB%8C_H%E1%BB%92_S%C6%A0_PHONG_H%C3%93A.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Độ chính xác | [Độ chính xác](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/NH%C3%93M_H%E1%BB%92_S%C6%A0_CH%C3%8DNH_X%C3%81C.md) |
| <a id="module-ax-profiles-families-isticics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Hậu cần | [Hậu cần](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/D%C3%92NG_H%E1%BB%92_S%C6%A0_H%E1%BA%ACU_C%E1%BA%A6N.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Thử nghiệm | [Thử nghiệm](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/NH%C3%93M_H%E1%BB%92_S%C6%A0_TH%E1%BB%AC_NGHI%E1%BB%86M.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Kiểm tra tuân thủ | [Kiểm tra tuân thủ](H%E1%BB%92_S%C6%A0/GIA_%C4%90%C3%8CNH/NH%C3%93M_H%E1%BB%92_S%C6%A0_KI%E1%BB%82M_TRA_TU%C3%82N_TH%E1%BB%A6.md) |

<a id="generated-references"></a>
## Tham khảo đã tạo

`docs/profiles/profiles.generated.json`, các tệp Markdown dòng và `FULL_PROFILE_REFERENCE.md` là contributor/operator các tham chiếu được tạo từ cùng một bộ hồ sơ. Chúng không phải là thành viên gói và không được chỉnh sửa để thay thế cho việc thay đổi nguồn hồ sơ. Quá trình xác thực yêu cầu 17 họ, 17 hồ sơ cho mỗi họ, ID duy nhất, tất cả các khóa lược đồ, quy tắc cố định, phạm vi dịch thuật và thông báo giới hạn.
