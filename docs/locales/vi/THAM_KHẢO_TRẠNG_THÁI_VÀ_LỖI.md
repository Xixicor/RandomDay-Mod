<a id="status-and-error-reference"></a>
# Tham chiếu trạng thái và lỗi

> **Nguồn tiếng Anh chuẩn:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Sử dụng các giá trị `status`, `transaction_status`, `rollback_status` hiện tại và `error` chính xác từ quá trình xuất thời gian chạy. Cách diễn đạt tương tự trong bảng điều khiển hoặc bảng điều khiển không thể thay thế cho các trường đó.

Phần này là tham chiếu tra cứu hoàn chỉnh. Cây quyết định ở trên chọn danh mục có liên quan; các bảng này bảo toàn các giá trị máy chính xác và phản hồi an toàn của người vận hành.

<a id="normal-or-informational-states"></a>
## Trạng thái thông tin hoặc bình thường

| Trạng thái | Ý nghĩa | Phản hồi của người vận hành |
|---|---|---|
| `prepared_for_next_reboot` | Một hồ sơ xác thực đã được ghi cho lần khởi động tiếp theo. | Không có hành động nào; phiên hiện tại không thay đổi. |
| `next_reboot_already_prepared` | Hồ sơ dự định tiếp theo đã khớp với mục tiêu. | Không có hành động nào; đừng ép buộc một vòng quay khác. |
| `already_current` / `unchanged` | Đích đã chứa các byte mong muốn. | Không có hành động nào. |
| `applied` | Quá trình đọc lại ghi và sản xuất đã được thông qua. | Xác minh sự khác biệt active/prepared sau lần khởi động tiếp theo. |
| `bootstrap_prepare_first_family_start_day` | Không tồn tại trạng thái xoay vòng trước đó nên ngày đầu tiên được định cấu hình là ngày đầu tiên đã được chuẩn bị. | Dự kiến trong lần sử dụng đầu tiên. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Trạng thái lưu trữ đã được khôi phục và hồ sơ đã chuẩn bị tương tự đã được viết lại. | Xác minh ngày được khôi phục; không có lựa chọn ngẫu nhiên mới nào xảy ra. |
| `supervision_reconfirm_prepared_profile_no_advance` | Giấy giám sát đã xác nhận quá trình chuẩn bị hiện có. | Dự kiến; hàng đợi không tiến lên hai lần. |
| `external_mods_disabled` | Việc xử lý bộ điều hợp tùy chọn bị vô hiệu hóa. | Không có hành động nào trừ khi có ý định sử dụng bộ điều hợp. |
| `external_mods_processed` | Tất cả các gói bộ điều hợp đã bật đều đạt đến kết quả cuối cùng. | Xem lại từng hàng bộ điều hợp. |

<a id="startup-configuration-errors"></a>
## Lỗi cấu hình khởi động

Những thông báo này dừng khởi động trước RandomDay viết hồ sơ. Sửa cài đặt được đặt tên hoặc điểm đánh dấu gói; không bỏ qua nhánh xác thực.

| Văn bản lỗi | Ý nghĩa | Phản hồi an toàn |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` bị thiếu, không đúng định dạng hoặc dùng sai gói. | Cài đặt lại một gói hoàn chỉnh vào một thư mục dàn dựng sạch sẽ và giữ nguyên điểm đánh dấu chế độ dự định. |
| `invalid experience.mode` | `experience.mode` không phải là một trong các giá trị được ghi lại. | Sử dụng `auto`, `persistent_dedicated`, `temporary_dedicated` hoặc `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | Gói sao chép thủ công đã được định cấu hình làm máy chủ chuyên dụng. | Khôi phục `auto` hoặc `singleplayer_lan`; đừng tự động hướng nó vào thế giới bên ngoài. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Một gói chuyên dụng đã được định cấu hình cho quy trình sao chép thủ công. | Sử dụng `auto`, `persistent_dedicated` hoặc `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | Bộ chọn ngày đầu tiên không hợp lệ. | Sử dụng chính xác `configured` hoặc `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | Bộ chọn thứ tự ngày không hợp lệ. | Sử dụng chính xác `sequential` hoặc `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | Ngày bắt đầu được định cấu hình là phân số hoặc nằm ngoài chu kỳ. | Sử dụng số nguyên từ 1 đến `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | Sao lưu hoặc khôi phục tốt nhất đã bị tắt. | Khôi phục cả hai khóa an toàn; RandomDay cố tình từ chối việc ghi không an toàn. |
| `external adapter transaction safety locks must remain true` | Việc vá bộ điều hợp hoặc bảo vệ sao lưu đã bị tắt. | Khôi phục cả khóa an toàn của bộ điều hợp hoặc tắt các bộ điều hợp theo nhóm. |
| `paths.world_name must be one folder name` | Tên thế giới được định cấu hình chứa dấu phân cách hoặc ký tự không an toàn. | Chỉ nhập tên thư mục chính xác, sử dụng các chữ cái, số, dấu cách, dấu gạch dưới hoặc dấu gạch nối. |
| `required runtime directory unavailable` | Không thể tạo hoặc xác nhận thư mục đầu ra mod-local bắt buộc. | Chỉ kiểm tra thư mục RandomDay có tên và quyền ghi của nó. |

<a id="profile-wide-configuration-errors"></a>
## Lỗi cấu hình trên toàn hồ sơ

Những lỗi này dừng quá trình xây dựng hồ sơ trước khi ghi vào hộp cát.

| Văn bản lỗi | Ý nghĩa | Phản hồi an toàn |
|---|---|---|
| `sandbox.profile_overrides must be a table` | Bốn lựa chọn trên toàn cấu hình đã được thay thế bằng một loại Lua khác. | Khôi phục bảng tài liệu trong `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | Bảng chứa cài đặt không phải là một trong bốn khóa được hỗ trợ. | Xóa khóa được đặt tên và sử dụng nguồn family/profile cho các cài đặt hộp cát khác. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` hoặc `AllowIronMode` thì không. `true` hoặc `false`. | Sử dụng Lua boolean không trích dẫn. |
| `sandbox.profile_overrides.<key> must be integer` | Giá trị hỗ trợ không phải là số nguyên. | Sử dụng số nguyên. |
| `sandbox.profile_overrides.<key> outside supported range` | Giá trị hỗ trợ nằm ngoài `0..1000`. | Chọn một số nguyên từ `0` đến `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Trạng thái khôi phục và trạng thái trung gian

| Giá trị | Ý nghĩa | Phản hồi an toàn |
|---|---|---|
| `not_started` / `pending` | Gói giao dịch hoặc bộ điều hợp chưa đạt được kết quả cuối cùng. | Chỉ đợi thẻ khởi động giới hạn hiện tại; trạng thái liên tục yêu cầu điều tra. |
| `not_needed` | Không cần khôi phục. | Không có hành động nào. |
| `original_held` | Mục tiêu ban đầu đã được chuyển vào vị trí khôi phục trước khi thăng hạng. | Không xóa tệp khôi phục khi giao dịch chưa hoàn tất. |
| `retained_after_success` | Mục tiêu mới đã được xác minh nhưng dữ liệu khôi phục vẫn còn do không thể dọn dẹp hoặc cố ý giữ lại. | Xác minh quá trình sản xuất byte trước khi xóa bất kỳ tệp khôi phục có tên nào. |
| `discarded_after_success` | Dữ liệu khôi phục tạm thời và đã xác minh thay thế đã bị xóa. | Không có hành động nào. |
| `rollback_failed` | Không thể xác minh nỗ lực khôi phục. | Hãy dừng máy chủ và sử dụng bản sao lưu hoạt động đã được xác minh gần đây nhất. |
| `skipped_state_persistence_failed` | Các byte hộp cát đã được chuẩn bị nhưng trạng thái xoay không tồn tại nên bộ chuyển đổi và thông báo của trình phát đã chuẩn bị sẵn đã bị bỏ qua. | Sửa chữa bộ lưu trữ trạng thái thời gian chạy; không cuộn lại hoặc chuyển tiếp hàng đợi theo cách thủ công. |
| `failed` | Một hàng tóm tắt thể hiện lỗi thiết bị đầu cuối có nguyên nhân cụ thể nằm ở `error` hoặc các trường giao dịch của nó. | Hãy làm theo mã cụ thể đầu tiên; không khắc phục sự cố chỉ từ `failed`. |

<a id="transaction-failures"></a>
## Lỗi giao dịch

| Trạng thái | Ý nghĩa | Phản hồi an toàn |
|---|---|---|
| `invalid_input` | Yêu cầu thay thế không phải là văn bản hợp lệ hoặc thiếu mục tiêu hợp lệ. | Cấu hình đúng; không thử lại mà không thay đổi. |
| `stale_pending_cleanup_failed` | Không thể xóa tệp cũ đang chờ xử lý. | Dừng và giữ nguyên tệp đang chờ xử lý trước khi dọn dẹp thủ công. |
| `stale_rollback_requires_review` | Dữ liệu khôi phục tồn tại bên cạnh mục tiêu hiện tại và không thể loại bỏ một cách an toàn. | So sánh byte mục tiêu và byte khôi phục trước khi chọn. |
| `interrupted_transaction_restore_failed` | Khôi phục sau khi bị gián đoạn thay thế không thể khôi phục mục tiêu. | Hãy dừng máy chủ và khôi phục bản sao lưu đã được xác minh. |
| `interrupted_transaction_cleanup_failed` | Mục tiêu đã được khôi phục nhưng không thể xóa dữ liệu giao dịch cũ. | Xác minh byte mục tiêu, sau đó chỉ xóa sidecar cũ có tên. |
| `pending_write_failed` | Không thể ghi ứng viên. | Kiểm tra thư mục mục tiêu hẹp và không gian trống. |
| `pending_readback_failed` / `pending_readback_mismatch` | Không thể đọc hoặc phân biệt các byte ứng viên sau khi ghi. | Không quảng cáo tệp đang chờ xử lý. |
| `pending_validation_failed` | Ứng viên không thể xác thực schema/profile trước khi quảng cáo. | Sửa khóa hoặc quy tắc được báo cáo; không bỏ qua quá trình xác thực. |
| `operation_backup_failed` / `backup_failed` | Bản sao lưu ghi trước đã được xác minh chưa được tạo. | Dừng lại; không nên thay thế mục tiêu đáng tin cậy. |
| `original_preserved_move_failed` | Không thể di chuyển mục tiêu ban đầu vào vị trí khôi phục. | Bảo toàn tất cả các tệp giao dịch và khôi phục theo cách thủ công. |
| `promotion_failed` | Ứng viên đang chờ xử lý không thể trở thành mục tiêu sản xuất. | Kiểm tra xem bản gốc có được khôi phục trước khi thử lại hay không. |
| `production_validation_failed` | Các byte được thăng cấp không được sản xuất readback/validation. | Khôi phục bản sao lưu đã được xác minh và kiểm tra người ghi mục tiêu. |
| `replacement_committed_recovery_cleanup_failed` | Việc thay thế là hợp lệ nhưng không thể xóa dữ liệu khôi phục. | Xử lý mục tiêu như đã cam kết; chỉ xóa dữ liệu khôi phục cũ đã được xác minh. |
| `rollback_failed` | Khôi phục tự động không xác minh. | Hãy dừng máy chủ và sử dụng khôi phục thủ công. |

<a id="target-profile-adapter-and-export-failures"></a>
## Lỗi mục tiêu, hồ sơ, bộ điều hợp và xuất

| Trạng thái | Ý nghĩa | Phản hồi an toàn |
|---|---|---|
| `target_refused` | Đường dẫn đã định cấu hình nằm ngoài ranh giới chế độ được phép. | Sửa đường dẫn; không bao giờ làm suy yếu ranh giới. |
| `target_directory_failed` | Không thể tạo hoặc xác nhận thư mục đích. | Chỉ kiểm tra sự tồn tại và quyền của thư mục đó. |
| `profile_validation_failed` | Một cấu hình thiếu khóa, có type/range sai hoặc vi phạm quy tắc bất biến còn lại. | Sử dụng khóa được đặt tên, `sandbox.profile_overrides` và tham chiếu hồ sơ để sửa nguồn. |
| `skipped_incompatible` | Một mod tùy chọn tồn tại nhưng không khớp với chữ ký bộ điều hợp được hỗ trợ. | Giữ nguyên hoặc tắt bộ điều hợp đó. |
| `external_mods_partial` | Một số bộ điều hợp tùy chọn đã hoàn tất và một số bộ điều hợp khác đã an toàn skipped/failed. | Đánh giá các hàng bộ điều hợp một cách độc lập; kết quả hộp cát là riêng biệt. |
| `external_adapter_failed` | Bộ điều hợp bắt buộc đã không hoàn tất an toàn. | Khôi phục bản sao lưu đã được xác minh của nó trước khi thử lại. |
| `degraded_state_persistence` | Việc chuẩn bị hộp cát đã hoàn tất nhưng tính năng duy trì ở trạng thái xoay thì không. | Đừng cho rằng lần khởi động tiếp theo có thể tiến hành chính xác; sửa chữa bộ nhớ trạng thái. |
| `export_directory_failed` | `web_export/` không thể tạo hoặc ghi. | Việc chuẩn bị cho trò chơi có thể vẫn hợp lệ; báo cáo sửa chữa riêng. |

<a id="translation-and-message-validation-errors"></a>
## Lỗi xác thực thông báo và dịch thuật

Đây là lỗi từ điển hoặc lỗi hợp đồng trình bày. Chúng được xác thực trước khi phát hành và cũng có thể xuất hiện dưới dạng cảnh báo trạng thái thời gian chạy bị giới hạn.

| Văn bản lỗi | Ý nghĩa | Phản hồi an toàn |
|---|---|---|
| `dictionary coverage mismatch` | Từ điển hồ sơ không giải thích mọi cài đặt được ghi lại. | Thêm mục từ điển bị thiếu và chạy lại hồ sơ generation/validation. |
| `missing profile setting` | Hồ sơ đã chọn thiếu cài đặt được yêu cầu bởi dictionary/schema. | Sửa chữa nguồn dòng hồ sơ; không phát minh ra mặc định thời gian chạy. |
| `empty explanation` | Có cài đặt nhưng không có operator/player giải thích. | Thêm giải thích bằng ngôn ngữ đơn giản trước khi phát hành. |
| `join line too wide` | Một dòng nối được tạo vượt quá giới hạn nguồn 42 ký tự. | Hãy rút ngắn cụm từ từ điển; không dựa vào gói ứng dụng khách. |
| `join message too tall` | Tóm tắt liên kết được tạo vượt quá bốn dòng. | Giảm hoặc sắp xếp lại thứ tự ưu tiên của nội dung thư. |
