<a id="install-update-or-remove-randomday"></a>
# Cài đặt, cập nhật hoặc xóa RandomDay

> **Nguồn tiếng Anh chuẩn:** [INSTALL.md](../../../INSTALL.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


RandomDay có hai bản tải xuống hoàn chỉnh. Chọn một cho thế giới bạn đang thiết lập:

- sử dụng **máy chủ chuyên dụng ZIP** cho bất kỳ máy chủ chuyên dụng nào, kể cả máy chủ chỉ được mở cho các phiên không thường xuyên;
- sử dụng **singleplayer/LAN ZIP** cho thế giới cục bộ có cài đặt mà bạn sẽ sao chép thủ công.

Không kết hợp các gói. Máy chủ chuyên dụng liên tục hoặc tạm thời là một lựa chọn trong RandomDay's cài đặt, không phải tải xuống khác.

<a id="before-you-begin"></a>
## Trước khi bạn bắt đầu

Tạo một bản sao có thể phục hồi của:

- thế giới mà bạn đang thay đổi;
- `SandboxSettings.ini`;
- thế giới hiện có `RandomDay` thư mục nếu có cài đặt.

Cài đặt UE4SS trước RandomDay. Trong hướng dẫn bên dưới, **Thư mục Mod** có nghĩa là trang trạng thái `ue4ss/Mods/` bên trong trò chơi hoặc cài đặt máy chủ chuyên dụng.

<a id="dedicated-server"></a>
## Máy chủ chuyên dụng

<a id="new-installation"></a>
### Cài đặt mới

1. Dừng máy chủ.
2. Mở UE4SS `Mods` thư mục.
3. Trích xuất máy chủ chuyên dụng ZIP. Kết quả phải là một `ue4ss/Mods/RandomDay/` thư mục, không phải thư mục bên trong thư mục khác `RandomDay` thư mục.
4. Mở thư mục đó và xác nhận `RandomDay/Scripts/main.lua` hiện diện. Nếu nó bị thiếu, ZIP đã được trích xuất sai cấp độ.
5. Mở UE4SS `mods.txt` và kích hoạt dòng này:

   ```text
   RandomDay : 1
   ```

6. Khởi động máy chủ bình thường.
7. Mở RandomDay's có thể đọc được và xác nhận nó đặt tên cho cả cấu hình đang hoạt động và cấu hình được chuẩn bị cho lần khởi động tiếp theo.

Lần khởi động đầu tiên không thay thế các quy tắc đã được tải trong phiên đó. Nó chuẩn bị hồ sơ tiếp theo. Chỉ khởi động lại máy chủ khi bạn thực sự muốn hồ sơ đã chuẩn bị đó hoạt động.

[Kiểm tra chu kỳ đầu tiên](B%E1%BA%AET_%C4%90%E1%BA%A6U_T%E1%BA%A0I_%C4%90%C3%82Y.md)

<a id="choose-always-on-or-temporary-behavior"></a>
### Chọn chế độ luôn bật hoặc tạm thời

Gói máy chủ chuyên dụng hỗ trợ cả hai kiểu:

- **chuyên dụng liên tục** tiếp tục quá trình quay đã lưu trong thời gian bình thường khởi động lại;
- **dành riêng tạm thời** có thể bắt đầu từ điểm bắt đầu được định cấu hình hoặc ngẫu nhiên khi một lần chạy tạm thời mới bắt đầu.

Chọn hành vi trong [Cấu hình](C%E1%BA%A4U_H%C3%8CNH.md). Không cài đặt gói thứ hai để thay đổi cài đặt này.

<a id="update-an-existing-installation"></a>
### Cập nhật cài đặt hiện có

1. Dừng máy chủ và tạo bản sao lưu được liệt kê ở trên.
2. Di chuyển `RandomDay` ra khỏi thư mục UE4SS `Mods`. Giữ nó cho đến khi bản cập nhật hoàn tất một chu kỳ thành công.
3. Trích xuất máy chủ chuyên dụng mới ZIP vào `Mods` thư mục.
4. Chỉ áp dụng lại các cài đặt bạn đã cố ý thay đổi và vẫn tồn tại trong [hướng dẫn cấu hình](C%E1%BA%A4U_H%C3%8CNH.md).
5. Chỉ giữ lại các tệp trạng thái xoay được ghi lại khi ghi chú phát hành cho biết định dạng của chúng tương thích. Không sao chép các tập tin đầu ra tạm thời cũ hoặc các tập tin không ghi được vào bản cài đặt mới.
6. Xác nhận `RandomDay : 1` vẫn được bật, sau đó khởi động máy chủ một lần và kiểm tra tên hồ sơ đang hoạt động và đã chuẩn bị.

<a id="updating-from-v0315-alpha"></a>
### Cập nhật từ v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip` là gói cơ sở cũ. `RandomDay_v0.3.15-alpha_singleplayer_patch.zip` là một lớp phủ chứ không phải là bản tải xuống độc lập.

`v0.3.16-alpha` hiện tại thay thế cách sắp xếp lớp phủ và lớp nền trước đây bằng hai gói hoàn chỉnh. Không đặt miếng vá cũ lên một trong hai gói. Các điểm đánh dấu hiện tại là `.randomday_mode=dedicated_server` và `.randomday_mode=singleplayer_manual`.

<a id="singleplayer-or-lan"></a>
## Người chơi đơn hoặc LAN

Gói singleplayer/LAN tạo một tệp cài đặt; nó không tự tìm kiếm hoặc thay đổi bản lưu cá nhân.

1. Đóng trò chơi.
2. Sao lưu thế giới và `SandboxSettings.ini`.
3. Trích xuất singleplayer/LAN ZIP vào UE4SS `Mods` của trò chơi thành một `Mods/RandomDay/` thư mục đã tồn tại.
4. Bật `RandomDay : 1` trong UE4SS `mods.txt`.
5. Bắt đầu trò chơi một lần, đợi RandomDay để kết thúc và đóng trò chơi hoàn toàn.
6. Tìm `SandboxSettings.ini` trong RandomDay's `runtime/singleplayer_manual/` thư mục.
7. Đọc bản tóm tắt đã tạo, sau đó sao chép tệp vào thế giới bạn đã chọn.
8. Bắt đầu thế giới đó và kiểm tra xem hành vi hộp cát mong đợi có đang hoạt động hay không.

LAN sử dụng quy trình thủ công tương tự vì máy chủ sở hữu thế giới cục bộ. Bản mod không tự động chọn thế giới hoặc ghi đè lên thế giới đó.

[Người chơi đơn và LAN trạng thái](LAN_CH%C6%A0I_%C4%90%C6%A0N.md)

<a id="remove-or-disable-randomday"></a>
## Xóa hoặc tắt RandomDay

1. Dừng trò chơi hoặc máy chủ.
2. Sao lưu thế giới, cài đặt hộp cát hiện tại và RandomDay's mới.
3. Đặt `RandomDay : 0` trong UE4SS `mods.txt` để tắt mod hoặc di chuyển toàn bộ `RandomDay` ra khỏi thư mục `Mods` để xóa thư mục đó.
4. Quyết định xem `SandboxSettings.ini` phải được tải vào lần khởi động tiếp theo. Khôi phục bản sao cài đặt sẵn của bạn nếu bạn không muốn RandomDay hồ sơ.
5. Khởi động thế giới và xác nhận các quy tắc của nó trước khi xóa bất kỳ bản sao lưu nào.

Vô hiệu hóa RandomDay dừng việc chuẩn bị hồ sơ trong tương lai. Nó không ghi lại tập tin sandbox đang chờ trên đĩa.

<a id="recover-from-an-unsuccessful-update"></a>
## Khôi phục từ một bản cập nhật không thành công

Dừng sau lần khởi động lại rõ ràng đầu tiên có thể khiến việc xem hồ sơ nào đang hoạt động và hồ sơ nào đang chờ trở nên khó khăn hơn.

1. Dừng trò chơi hoặc máy chủ.
2. Hãy chuyển cài đặt không thành công sang một bên mà không xóa nó.
3. Khôi phục hoàn chỉnh RandomDay sao lưu thư mục và hộp cát được thực hiện trước khi cập nhật.
4. Bắt đầu một lần và xác nhận tên hồ sơ đã chuẩn bị và đang hoạt động được khôi phục.
5. Sử dụng [Khắc phục sự cố](KH%E1%BA%AEC_PH%E1%BB%A4C_S%E1%BB%B0_C%E1%BB%90.md) cho bước đầu tiên bị thiếu hoặc thất bại trước khi thử bản cập nhật khác.

<a id="more-help"></a>
## Thêm trợ giúp

- [Chu kỳ đầu tiên](B%E1%BA%AET_%C4%90%E1%BA%A6U_T%E1%BA%A0I_%C4%90%C3%82Y.md)
- [Chọn cấu hình](CH%E1%BB%8CN_H%E1%BB%92_S%C6%A0.md)
- [Cấu hình](C%E1%BA%A4U_H%C3%8CNH.md)
- [Hoạt động và khôi phục](HO%E1%BA%A0T_%C4%90%E1%BB%98NG.md)
- [Khắc phục sự cố](KH%E1%BA%AEC_PH%E1%BB%A4C_S%E1%BB%B0_C%E1%BB%90.md)
- [Khả năng tương thích](KH%E1%BA%A2_N%C4%82NG_T%C6%AF%C6%A0NG_TH%C3%8DCH.md)

Người bảo trì bản phát hành có thể tìm thấy các bước kiểm tra bản dựng và gói trong [Xác thực bản phát hành](X%C3%81C_TH%E1%BB%B0C_PH%C3%81T_H%C3%80NH.md). Chúng không cần thiết cho quá trình cài đặt thông thường.
