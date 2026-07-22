<a id="randomday-profile-documentation"></a>
# RandomDay tài liệu hồ sơ

> **Nguồn tiếng Anh chuẩn:** [README.md](../../../profiles/README.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Phiên bản: `v0.3.16-alpha`

- Gia đình: **17**
- Hồ sơ: **289**
- SandboxSettings mục từ điển: **46**

Chọn một gia đình theo ý định chơi trò chơi trong [hướng dẫn lựa chọn hồ sơ](../CH%E1%BB%8CN_H%E1%BB%92_S%C6%A0.md), sau đó sử dụng chỉ mục được tạo này để có các giá trị chính xác.

Các tệp này được tạo từ nguồn Lua thời gian chạy và hợp đồng dictionary/translation của nó. Chúng hiển thị các giá trị mặc định `sandbox.profile_overrides` đã được vận chuyển; giá trị được định cấu hình của một máy chủ có thể khác nhau:

- `profiles.generated.json`: cấu hình máy có thể đọc được, giá trị thô, từ điển và bản dịch.
- `FULL_PROFILE_REFERENCE.md`: chỉ mục hoàn chỉnh và quy tắc diễn giải.
- `SANDBOX_SETTINGS_KEYS.md`: từ điển 46 phím hoàn chỉnh.
- `families/*.md`: tài liệu tham khảo chi tiết về dòng 17 ngày.

Tái tạo bằng: `python -B tools/generate_profile_docs.py` Kiểm tra độ lệch bằng: `python -B tools/generate_profile_docs.py --check`
