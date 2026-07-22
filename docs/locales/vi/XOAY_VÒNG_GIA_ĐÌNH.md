<a id="seventeen-families-seventeen-days"></a>
# Seventeen Families, Seventeen Days

> **Nguồn tiếng Anh chuẩn:** [FAMILY_ROTATION.md](../../FAMILY_ROTATION.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


RandomDay chứa 17 nhóm kiểu chơi với 17 hồ sơ hàng ngày hoàn chỉnh trong mỗi nhóm. Điều đó tạo ra 289 tài liệu family/day được ghi lại.

Gia đình đặt ra phong cách chung cho cuộc chạy. Ngày 1 đến ngày 17 cung cấp sự tiến triển của gia đình đó về áp lực, sự phục hồi, nhịp độ và nguồn lực. Một lần chạy sẽ lưu trữ một đơn hàng chứa ID mỗi ngày đúng một lần. Khởi động lại tiến tới vị trí được lưu tiếp theo; RandomDay không thay đổi họ ở giữa đơn hàng.

<a id="selection-modes"></a>
## Chế độ lựa chọn

| Chế độ | Hành vi chạy mới | Trong quá trình chạy |
|---|---|---|
| `selected_run` | Sử dụng `profile_family.selected_family`. | Giữ dòng đó qua tất cả 17 vị trí được lưu trữ. |
| `non_repeating_random_run` | Chọn một dòng chưa sử dụng đủ điều kiện. | Giữ họ qua tất cả 17 vị trí và tránh lặp lại họ cho đến khi hết danh sách đủ điều kiện. |
| `rotation_run` | Lấy họ tiếp theo theo thứ tự đã định cấu hình. | Giữ họ qua tất cả 17 vị trí được lưu trữ. |

Cấu hình được vận chuyển sử dụng `non_repeating_random_run`. Họ chuẩn bị sau vị trí lưu trữ cuối cùng vẫn chỉ là chuẩn bị; nó sẽ hoạt động sau khi khởi động lại. `cycle.start_day_mode` và `cycle.day_progression_mode` chọn thứ tự ngày và ngày đầu tiên mà không thay đổi lựa chọn nhóm.

<a id="families"></a>
## Gia đình

- Hành động
- Sống sót
- Tàng hình
- Bầy đàn
- Săn trùm
- Người nhặt rác
- Trình tạo
- Chuyến thám hiểm
- Khóa bảo mật
- Nguy hiểm sinh học
- Phản đối
- Cơn ác mộng
- Đã bị phong hóa
- Độ chính xác
- Hậu cần
- Thử nghiệm
- Kiểm tra tuân thủ

Sử dụng [chỉ mục hồ sơ được tạo](H%E1%BB%92_S%C6%A0/T%C3%80I_LI%E1%BB%86U_H%E1%BB%92_S%C6%A0.md) để mở một họ hoặc [tham chiếu hồ sơ đầy đủ](H%E1%BB%92_S%C6%A0/THAM_KH%E1%BA%A2O_H%E1%BB%92_S%C6%A0_%C4%90%E1%BA%A6Y_%C4%90%E1%BB%A6.md) để xem xét tất cả 289 kết hợp. Tài liệu [tham chiếu khóa hộp cát](H%E1%BB%92_S%C6%A0/PH%C3%8DM_C%C3%80I_%C4%90%E1%BA%B6T_H%E1%BB%98P_C%C3%81T.md) xác định từng giá trị được hỗ trợ và mặc định của cấu hình được cung cấp.

<a id="custom-families-and-days"></a>
## Ngày và gia đình tùy chỉnh

Nguồn gia đình sống dưới:

```text
RandomDay/Scripts/ax_profiles/families/
```

Markdown và JSON dưới `docs/profiles/` là các tài liệu tham khảo được tạo. Đổi nguồn, không tạo ra đầu ra thì chạy full profile/schema. Bộ tùy chỉnh chưa sẵn sàng khi chỉ phân tích cú pháp trong một ngày; tất cả 17 ngày, mặc định cấu hình, loại, phạm vi và tham chiếu được tạo phải đồng ý.
