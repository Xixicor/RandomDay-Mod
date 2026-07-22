<a id="randomday---expedition-family"></a>
# RandomDay - Gia đình thám hiểm

> **Nguồn tiếng Anh chuẩn:** [expedition.md](../../../../profiles/families/expedition.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Phiên bản: `v0.3.16-alpha`

Chạy tập trung vào du lịch. Tuyến đường quan trọng; kéo dài không được khuyến khích.

**Phong cách chơi:** mối nguy hiểm khi đi lại và tuyến đường **Âm báo:** tóm tắt tư vấn du lịch

<a id="17-day-index"></a>
## Chỉ mục 17 ngày

| Ngày | Hồ sơ | Điều kiện | Áp lực chính |
|---:|---|---|---|
| 1 | Khởi hành Tóm tắt | Áp lực tiêu chuẩn (1.86/5) | Áp lực môi trường |
| 2 | Lỗi danh sách đóng gói | Điều kiện thuận lợi (1.29/5) | Áp lực môi trường |
| 3 | Số dặm hydrat hóa | Áp lực tiêu chuẩn (2.19/5) | Áp lực sinh tồn |
| 4 | Chi phí cho chặng đường dài | Điều kiện thuận lợi (1.47/5) | Áp lực môi trường |
| 5 | Liên hệ tại điểm kiểm tra | Áp lực tiêu chuẩn (2.06/5) | Áp lực chiến đấu |
| 6 | Tuyến đường tư vấn về thời tiết | Áp lực tiêu chuẩn (2.03/5) | Áp lực môi trường |
| 7 | Giao thức đường đêm | Áp lực tiêu chuẩn (2.05/5) | Áp lực chiến đấu |
| 8 | Route Runner Ngoài ra | Áp lực tiêu chuẩn (1.82/5) | Áp lực môi trường |
| 9 | Khẩu phần theo khoảng cách | Áp lực tiêu chuẩn (2.22/5) | Áp lực sinh tồn |
| 10 | Đặt lại trại | Điều kiện thuận lợi (1.05/5) | Áp lực môi trường |
| 11 | Đường vòng huấn luyện | Điều kiện thuận lợi (1.47/5) | Áp lực môi trường |
| 12 | Chuyến đi thực địa của phòng thí nghiệm đen | Áp lực tiêu chuẩn (2.52/5) | Áp lực chiến đấu |
| 13 | Ca chuyển tuyến mở rộng | Áp lực tiêu chuẩn (2.29/5) | Áp lực sinh tồn |
| 14 | Khám phá bộ đệm cung cấp | Điều kiện thuận lợi (1.03/5) | Áp lực môi trường |
| 15 | Điểm tham chiếu chính xác | Áp lực tiêu chuẩn (1.99/5) | Áp lực chiến đấu |
| 16 | Thử nghiệm đường vòng | Áp lực tiêu chuẩn (2.11/5) | Áp lực môi trường |
| 17 | Bài kiểm tra thám hiểm cuối cùng | Điều kiện đòi hỏi (2.78/5) | Áp lực chiến đấu |

<a id="day-1---departure-briefing"></a>
## Ngày 1 - Tóm tắt chuyến khởi hành

**ID hồ sơ:** `expedition_departure_briefing` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (1.86/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực chiến đấu: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects"></a>
### Tác dụng chính

- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,25x).
- Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường (2x).
- Ổ cắm điện tắt vào ban đêm.
- Chiến lợi phẩm đã thu thập không hồi sinh.

<a id="domain-ratings"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (1.9/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (1.9/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | tiêu chuẩn (1.74/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.22/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.5/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **định hướng phục kích tuyến đường**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0.07**
- Cơ hội sự kiện đặc biệt: **2**

<a id="exact-sandbox-settings"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 12 | Kích thước khoảng không quảng cáo cơ bản là áp suất tiêu chuẩn ở mức 12. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.1 | Tốc độ phát hiện kẻ thù gần như bình thường ở mức 1,1 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.25 | Độ bền mất đi khi chết thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 1.0 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Sát thương của kẻ thù đối với người chơi gần như bình thường ở mức 1,1x. |
| EnemySpawnRate | 1.0 | Tần số kẻ thù gần như bình thường ở mức 1x. |
| FatigueSpeedMultiplier | 1.0 | Tốc độ mỏi gần như bình thường ở mức 1x. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 1.0 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 1x. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.0 | Tỷ lệ đói gần như bình thường ở mức 1x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.5 | Độ bền của vật phẩm cao hơn bình thường ở mức 1,5 lần. |
| ItemStackSizeMultiplier | 2.0 | Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| ItemWeightMultiplier | 0.8 | Trọng lượng vật phẩm dưới mức bình thường là 0,8 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.5 | Trải nghiệm đạt được cao hơn bình thường ở mức 1,5 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 1.0 | Tốc độ làm lạnh gần như bình thường ở mức 1x. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 1.0 | Tốc độ nạp lại bồn rửa gần như bình thường ở mức 1x. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 1.0 | Tốc độ khát gần như bình thường ở mức 1x. |
| WeatherFrequency | 3 | Tần suất thời tiết bình thường. |

<a id="optional-adapter-selection"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `expedition_departure_briefing`
- `lethal_lasers`: `standard_safety`

<a id="day-2---packing-list-error"></a>
## Ngày 2 - Lỗi danh sách đóng gói

**ID hồ sơ:** `expedition_packing_list_error` **Điều kiện tổng thể:** Điều kiện thuận lợi (1.29/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực sống còn: Điều kiện thuận lợi là yếu tố mạnh tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

<a id="main-effects-1"></a>
### Tác dụng chính

- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0x).
- Độ bền của vật phẩm là cực cao (4x).
- Dung lượng ngăn xếp cực cao (8x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,05x).
- Sát thương của kẻ thù đối với hệ thống phòng thủ thấp hơn nhiều so với mức bình thường (0,1x).

<a id="domain-ratings-1"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | thuận lợi (1.2/5) | Áp lực thù địch nhẹ hơn bình thường. |
| Áp lực sinh tồn | thuận lợi (1.32/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | thuận lợi (1.09/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (1.91/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.2/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-1"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán nhẹ**
- Chủ đề: **chuẩn bị phục kích tuyến đường**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0.028**
- Cơ hội sự kiện đặc biệt: **0**

<a id="exact-sandbox-settings-1"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 26 | Kích thước khoảng không quảng cáo cơ bản là điều kiện giảm nhẹ ở mức 26. |
| BonusPerkPoints | 7 | Điểm thưởng đặc quyền là điều kiện giảm nhẹ ở mức 7. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.65 | Tỷ lệ tiểu không kiểm soát dưới mức bình thường là 0,65 lần. |
| DamageToAlliesMultiplier | 0.0 | Sát thương của hỏa lực đồng minh thấp hơn nhiều so với mức bình thường ở mức 0x. |
| DayNightCycleSpeedMultiplier | 0.9 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 0,9 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 0 | Hình phạt tử hình là tối thiểu. |
| DetectionSpeedMultiplier | 0.7 | Tốc độ phát hiện kẻ thù thấp hơn bình thường là 0,7 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.05 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,05x. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 0.1 | Sát thương của kẻ thù đối với hàng phòng thủ thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| EnemyHealthMultiplier | 0.9 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 0,9x. |
| EnemyPlayerDamageMultiplier | 0.7 | Sát thương của kẻ thù đối với người chơi dưới mức bình thường là 0,7 lần. |
| EnemySpawnRate | 0.6 | Tần số kẻ thù dưới mức bình thường là 0,6 lần. |
| FatigueSpeedMultiplier | 0.6 | Tỷ lệ mỏi dưới mức bình thường là 0,6 lần. |
| FirstTimeStartingWeapon | 2 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Tỷ lệ hư hỏng thực phẩm dưới mức bình thường là 0,75 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.65 | Tỷ lệ đói dưới mức bình thường là 0,65x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 4.0 | Độ bền của vật phẩm cực cao ở mức gấp 4 lần. |
| ItemStackSizeMultiplier | 8.0 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.4 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,4 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.1 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 2,1 lần. |
| PowerSocketsOffAtNight | false | Các ổ cắm điện vẫn có sẵn vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 1.5 | Tốc độ làm lạnh cao hơn bình thường ở mức 1,5 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 2.0 | Tốc độ nạp lại bồn rửa cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| StorageByTag | false | Tổ chức lưu trữ được gắn thẻ đã bị vô hiệu hóa. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 0.65 | Tốc độ khát dưới mức bình thường là 0,65x. |
| WeatherFrequency | 2 | Tần suất thời tiết không thường xuyên. |

<a id="optional-adapter-selection-1"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `expedition_packing_list_error`
- `lethal_lasers`: `low_hazard`

<a id="day-3---hydration-mileage"></a>
## Ngày 3 - Số dặm bổ sung nước

**ID hồ sơ:** `expedition_hydration_mileage` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.19/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực sinh tồn: Điều kiện đòi hỏi là áp lực chính. Áp lực môi trường: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo thức ăn và nước uống, nghỉ ngơi trước chuyến đi dài và lên kế hoạch dừng lại an toàn.

<a id="main-effects-2"></a>
### Tác dụng chính

- Nước bồn rửa có thể không an toàn.
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,25x).
- Độ khó của trò chơi: khó.
- Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường (2x).

<a id="domain-ratings-2"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.09/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | đòi hỏi (2.96/5) | Đói, khát, mệt mỏi hoặc vệ sinh cần được chú ý nhiều hơn. |
| Áp lực tài nguyên | tiêu chuẩn (1.88/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.22/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.5/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-2"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **tài nguyên sinh học phục kích tuyến đường**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0.091**
- Cơ hội sự kiện đặc biệt: **8**

<a id="exact-sandbox-settings-2"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 12 | Kích thước khoảng không quảng cáo cơ bản là áp suất tiêu chuẩn ở mức 12. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.45 | Tỷ lệ tiết niệu cao hơn bình thường tại 1,45x. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.2 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.25 | Độ bền mất đi khi chết thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 0.9 | Sát thương của kẻ thù đối với hàng phòng thủ gần như bình thường ở mức 0,9x. |
| EnemyHealthMultiplier | 1.1 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 1,1 lần. |
| EnemyPlayerDamageMultiplier | 1.2 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,2 lần. |
| EnemySpawnRate | 1.1 | Tần số kẻ thù gần như bình thường ở mức 1,1 lần. |
| FatigueSpeedMultiplier | 1.2 | Tỷ lệ mệt mỏi cao hơn bình thường ở mức 1,2 lần. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Thực phẩm hư hỏng cao hơn bình thường ở mức 1,25 lần. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.3 | Tỷ lệ đói cao hơn bình thường ở mức 1,3 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.25 | Độ bền của vật phẩm cao hơn bình thường ở 1,25x. |
| ItemStackSizeMultiplier | 2.0 | Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| ItemWeightMultiplier | 0.8 | Trọng lượng vật phẩm dưới mức bình thường là 0,8 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.8 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 1,8 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 0.75 | Tốc độ làm lạnh thấp hơn bình thường ở mức 0,75 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.25 | Tốc độ đổ đầy bồn rửa thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | true | Nước bồn rửa có thể không an toàn. |
| ThirstSpeedMultiplier | 1.9 | Tốc độ khát cao hơn nhiều so với mức bình thường ở mức 1,9 lần. |
| WeatherFrequency | 3 | Tần suất thời tiết bình thường. |

<a id="optional-adapter-selection-2"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `expedition_hydration_mileage`
- `lethal_lasers`: `standard_safety`

<a id="day-4---long-route-dividend"></a>
## Ngày 4 - Cổ tức chặng đường dài

**ID hồ sơ:** `expedition_long_route_dividend` **Điều kiện tổng thể:** Điều kiện thuận lợi (1.47/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực chiến đấu: Điều kiện thuận lợi là yếu tố mạnh mẽ tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

<a id="main-effects-3"></a>
### Tác dụng chính

- Độ bền của vật phẩm là cực cao (2,5x).
- Dung lượng ngăn xếp cực cao (14x).
- Tỷ lệ nạp lại bồn rửa rất cao (2,5x).
- Kinh nghiệm thu được cao hơn nhiều so với mức bình thường (2,3x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,05x).

<a id="domain-ratings-3"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | thuận lợi (1.55/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | thuận lợi (1.48/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | thuận lợi (0.99/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (1.93/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.44/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-3"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán nhẹ**
- Chủ đề: **khả năng di chuyển của chiến lợi phẩm phục kích tuyến đường**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0.056**
- Cơ hội sự kiện đặc biệt: **2**

<a id="exact-sandbox-settings-3"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 30 | Kích thước khoảng không quảng cáo cơ bản là điều kiện giảm nhẹ ở mức 30. |
| BonusPerkPoints | 3 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 3. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.75 | Tỷ lệ tiểu không kiểm soát dưới mức bình thường là 0,75 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 0.9 | Tốc độ phát hiện kẻ thù gần như bình thường ở mức 0,9 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.05 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,05x. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 0.5 | Sát thương của kẻ thù đối với hàng phòng thủ thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| EnemyHealthMultiplier | 0.9 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 0,9x. |
| EnemyPlayerDamageMultiplier | 0.9 | Sát thương của kẻ thù lên người chơi gần như bình thường ở mức 0,9 lần. |
| EnemySpawnRate | 0.8 | Tần số kẻ thù thấp hơn bình thường ở mức 0,8 lần. |
| FatigueSpeedMultiplier | 0.7 | Tỷ lệ mỏi dưới mức bình thường là 0,7 lần. |
| FirstTimeStartingWeapon | 6 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 6. |
| FoodSpoilSpeedMultiplier | 0.6 | Tỷ lệ hư hỏng thực phẩm dưới mức bình thường là 0,6 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.75 | Tỷ lệ đói dưới mức bình thường là 0,75x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 2.5 | Độ bền của vật phẩm cực cao ở mức 2,5 lần. |
| ItemStackSizeMultiplier | 14.0 | Dung lượng ngăn xếp cực cao ở mức 14x. |
| ItemWeightMultiplier | 0.3 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,3 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.3 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 2,3 lần. |
| PowerSocketsOffAtNight | false | Các ổ cắm điện vẫn có sẵn vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 1.5 | Tốc độ làm lạnh cao hơn bình thường ở mức 1,5 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 2.5 | Tốc độ nạp lại bồn rửa cực cao ở mức 2,5 lần. |
| StorageByTag | false | Tổ chức lưu trữ được gắn thẻ đã bị vô hiệu hóa. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 0.75 | Tốc độ khát nước dưới mức bình thường là 0,75x. |
| WeatherFrequency | 2 | Tần suất thời tiết không thường xuyên. |

<a id="optional-adapter-selection-3"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `expedition_long_route_dividend`
- `lethal_lasers`: `low_hazard`

<a id="day-5---checkpoint-contact"></a>
## Ngày 5 - Liên hệ tại điểm kiểm tra

**ID hồ sơ:** `expedition_checkpoint_contact` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.06/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp suất chiến đấu: Áp suất tiêu chuẩn là áp suất chính. Áp lực môi trường: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo đạn dược, giữ lộ trình rút lui và tránh giao tranh mà không được hỗ trợ.

<a id="main-effects-4"></a>
### Tác dụng chính

- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,1x).
- Kẻ thù tốc độ phát hiện cao hơn nhiều so với bình thường (2,2x).
- Kinh nghiệm thu được cao hơn nhiều so với mức bình thường (2,1x).
- Độ khó của trò chơi: khó.
- Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường (2x).

<a id="domain-ratings-4"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.45/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (1.99/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.67/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.17/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.51/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-4"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán gay gắt**
- Chủ đề: **bảo mật tuyến đường phục kích**
- Số nhóm hoạt động tối đa: **2**
- Cơ hội chạm trán hỗn hợp: **0.119**
- Cơ hội sự kiện đặc biệt: **14**

<a id="exact-sandbox-settings-4"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 12 | Kích thước khoảng không quảng cáo cơ bản là áp suất tiêu chuẩn ở mức 12. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.1 | Sát thương của hỏa lực thân thiện thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 2.2 | Tốc độ phát hiện kẻ thù cao hơn nhiều so với bình thường ở mức 2,2 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.3 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,3 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 1.2 | Khả năng phục hồi của kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| EnemyPlayerDamageMultiplier | 1.4 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,4 lần. |
| EnemySpawnRate | 1.5 | Tần suất của kẻ thù cao hơn bình thường ở 1,5x. |
| FatigueSpeedMultiplier | 1.3 | Tỷ lệ mệt mỏi cao hơn bình thường ở mức 1,3 lần. |
| FirstTimeStartingWeapon | 4 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 1x. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.0 | Tỷ lệ đói gần như bình thường ở mức 1x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.25 | Độ bền của vật phẩm cao hơn bình thường ở 1,25x. |
| ItemStackSizeMultiplier | 2.0 | Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| ItemWeightMultiplier | 0.8 | Trọng lượng vật phẩm dưới mức bình thường là 0,8 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.1 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 2,1 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 1.0 | Tốc độ làm lạnh gần như bình thường ở mức 1x. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 1.0 | Tốc độ nạp lại bồn rửa gần như bình thường ở mức 1x. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 1.0 | Tốc độ khát gần như bình thường ở mức 1x. |
| WeatherFrequency | 2 | Tần suất thời tiết không thường xuyên. |

<a id="optional-adapter-selection-4"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `expedition_checkpoint_contact`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weather-advisory-route"></a>
## Ngày 6 - Tuyến đường tư vấn thời tiết

**ID hồ sơ:** `expedition_weather_advisory_route` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.03/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực chiến đấu: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects-5"></a>
### Tác dụng chính

- Tần suất thời tiết: rất thường xuyên.
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,25x).
- Độ khó của trò chơi: khó.
- Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường (2x).

<a id="domain-ratings-5"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.1/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (2.1/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | tiêu chuẩn (1.84/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.52/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.5/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-5"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **thời tiết phục kích tuyến đường**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0.091**
- Cơ hội sự kiện đặc biệt: **10**

<a id="exact-sandbox-settings-5"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 12 | Kích thước khoảng không quảng cáo cơ bản là áp suất tiêu chuẩn ở mức 12. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.25 | Tốc độ chu kỳ ngày đêm cao hơn bình thường ở mức 1,25 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.2 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.25 | Độ bền mất đi khi chết thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 1.1 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 1,1 lần. |
| EnemyPlayerDamageMultiplier | 1.1 | Sát thương của kẻ thù đối với người chơi gần như bình thường ở mức 1,1x. |
| EnemySpawnRate | 1.1 | Tần số kẻ thù gần như bình thường ở mức 1,1 lần. |
| FatigueSpeedMultiplier | 1.2 | Tỷ lệ mệt mỏi cao hơn bình thường ở mức 1,2 lần. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Thực phẩm hư hỏng cao hơn bình thường ở mức 1,25 lần. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.1 | Tỷ lệ đói gần như bình thường ở mức 1,1 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.1 | Độ bền của vật phẩm gần như bình thường ở mức 1,1 lần. |
| ItemStackSizeMultiplier | 2.0 | Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| ItemWeightMultiplier | 0.8 | Trọng lượng vật phẩm dưới mức bình thường là 0,8 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.7 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 1,7 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 0.8 | Tốc độ làm lạnh dưới mức bình thường là 0,8 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.75 | Tốc độ nạp lại bồn rửa thấp hơn bình thường ở mức 0,75 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 1.35 | Tốc độ khát cao hơn bình thường ở mức 1,35 lần. |
| WeatherFrequency | 5 | Tần suất thời tiết rất thường xuyên. |

<a id="optional-adapter-selection-5"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `expedition_weather_advisory_route`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-road-protocol"></a>
## Ngày 7 - Giao thức Đường đêm

**ID hồ sơ:** `expedition_night_road_protocol` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.05/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp suất chiến đấu: Áp suất tiêu chuẩn là áp suất chính. Áp lực môi trường: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo đạn dược, giữ lộ trình rút lui và tránh giao tranh mà không được hỗ trợ.

<a id="main-effects-6"></a>
### Tác dụng chính

- Dung lượng ngăn xếp cực cao (3x).
- Kinh nghiệm thu được cao hơn nhiều so với mức bình thường (2,3x).
- Trạng thái ngày đêm: thiên về đêm.
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,2x).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).

<a id="domain-ratings-6"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.43/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (1.99/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.55/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.33/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.49/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-6"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán gay gắt**
- Chủ đề: **tuyến đường phục kích đêm**
- Số nhóm hoạt động tối đa: **2**
- Cơ hội chạm trán hỗn hợp: **0.119**
- Cơ hội sự kiện đặc biệt: **16**

<a id="exact-sandbox-settings-6"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 16 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 16. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.95 | Tỷ lệ tiểu không kiểm soát gần như bình thường ở mức 0,95 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 2 | Trạng thái ngày đêm thiên về đêm. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.8 | Tốc độ phát hiện kẻ thù cao hơn nhiều so với bình thường ở mức 1,8 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.2 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,2 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 1.2 | Khả năng phục hồi của kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| EnemyPlayerDamageMultiplier | 1.3 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,3 lần. |
| EnemySpawnRate | 1.7 | Tần số kẻ thù cao hơn nhiều so với bình thường ở mức 1,7 lần. |
| FatigueSpeedMultiplier | 1.5 | Tỷ lệ mệt mỏi cao hơn bình thường ở mức 1,5 lần. |
| FirstTimeStartingWeapon | 5 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 5. |
| FoodSpoilSpeedMultiplier | 1.0 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 1x. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.95 | Tỷ lệ đói gần như bình thường ở mức 0,95x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.5 | Độ bền của vật phẩm cao hơn bình thường ở mức 1,5 lần. |
| ItemStackSizeMultiplier | 3.0 | Dung lượng ngăn xếp cực cao ở mức 3x. |
| ItemWeightMultiplier | 0.7 | Trọng lượng vật phẩm dưới mức bình thường là 0,7 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.3 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 2,3 lần. |
| PowerSocketsOffAtNight | false | Các ổ cắm điện vẫn có sẵn vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 1.0 | Tốc độ làm lạnh gần như bình thường ở mức 1x. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 1.0 | Tốc độ nạp lại bồn rửa gần như bình thường ở mức 1x. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 0.95 | Tốc độ khát gần như bình thường ở mức 0,95x. |
| WeatherFrequency | 4 | Tần suất thời tiết xảy ra thường xuyên. |

<a id="optional-adapter-selection-6"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `expedition_night_road_protocol`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-runner-plus"></a>
## Ngày 8 - Route Runner Plus

**ID hồ sơ:** `expedition_route_runner_plus` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (1.82/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực chiến đấu: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects-7"></a>
### Tác dụng chính

- Tốc độ chu kỳ ngày đêm cực kỳ cao (3x).
- Dung lượng ngăn xếp cực cao (4x).
- Kinh nghiệm thu được cao hơn nhiều so với mức bình thường (2,3x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,15x).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).

<a id="domain-ratings-7"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.13/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | thuận lợi (1.46/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | thuận lợi (1.4/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (2.56/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.47/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-7"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **tuyến đường phục kích**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0.105**
- Cơ hội sự kiện đặc biệt: **14**

<a id="exact-sandbox-settings-7"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.7 | Tỷ lệ tiểu không kiểm soát dưới mức bình thường là 0,7 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 3.0 | Tốc độ chu kỳ ngày đêm cực cao ở mức gấp 3 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.6 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,6 lần. |
| DisableResearchMinigame | true | Bỏ qua nghiên cứu đã được bật. |
| DurabilityLossOnDeathMultiplier | 0.15 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,15 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 0.8 | Sát thương của kẻ thù đối với hàng phòng thủ dưới mức bình thường là 0,8 lần. |
| EnemyHealthMultiplier | 0.9 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 0,9x. |
| EnemyPlayerDamageMultiplier | 1.1 | Sát thương của kẻ thù đối với người chơi gần như bình thường ở mức 1,1x. |
| EnemySpawnRate | 1.4 | Tần số kẻ thù cao hơn bình thường ở mức 1,4 lần. |
| FatigueSpeedMultiplier | 0.8 | Tỷ lệ mệt mỏi thấp hơn mức bình thường ở mức 0,8 lần. |
| FirstTimeStartingWeapon | 6 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 6. |
| FoodSpoilSpeedMultiplier | 0.9 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 0,9 lần. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.7 | Tỷ lệ đói dưới mức bình thường là 0,7 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.25 | Độ bền của vật phẩm cao hơn bình thường ở 1,25x. |
| ItemStackSizeMultiplier | 4.0 | Dung lượng ngăn xếp cực cao ở mức 4x. |
| ItemWeightMultiplier | 0.6 | Trọng lượng của vật phẩm thấp hơn bình thường ở mức 0,6 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.3 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 2,3 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 1.1 | Tốc độ làm lạnh gần như bình thường ở mức 1,1 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 1.5 | Tốc độ nạp lại bồn rửa cao hơn bình thường ở mức 1,5 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 0.7 | Tốc độ khát dưới mức bình thường là 0,7 lần. |
| WeatherFrequency | 3 | Tần suất thời tiết bình thường. |

<a id="optional-adapter-selection-7"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `expedition_route_runner_plus`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---rations-by-distance"></a>
## Ngày 9 - Khẩu phần theo khoảng cách

**ID hồ sơ:** `expedition_rations_by_distance` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.22/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực sinh tồn: Điều kiện đòi hỏi là áp lực chính. Áp lực tài nguyên: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo thức ăn và nước uống, nghỉ ngơi trước chuyến đi dài và lên kế hoạch dừng lại an toàn.

<a id="main-effects-8"></a>
### Tác dụng chính

- Kích thước kho cơ bản là điều kiện khắc nghiệt (10).
- Nước bồn rửa có thể không an toàn.
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Thực phẩm hư hỏng cao hơn nhiều so với mức bình thường (2x).
- Ổ cắm điện tắt vào ban đêm.

<a id="domain-ratings-8"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (1.96/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | đòi hỏi (2.99/5) | Đói, khát, mệt mỏi hoặc vệ sinh cần được chú ý nhiều hơn. |
| Áp lực tài nguyên | tiêu chuẩn (2.28/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.17/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.53/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-8"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **sự khan hiếm tuyến đường phục kích**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0.084**
- Cơ hội sự kiện đặc biệt: **8**

<a id="exact-sandbox-settings-8"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 10 | Kích thước khoảng không quảng cáo cơ bản là điều kiện khắc nghiệt ở mức 10. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.25 | Tỷ lệ tiểu không kiểm soát cao hơn bình thường ở mức 1,25 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.2 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.35 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 1.2 | Khả năng phục hồi của kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| EnemyPlayerDamageMultiplier | 1.2 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,2 lần. |
| EnemySpawnRate | 1.0 | Tần số kẻ thù gần như bình thường ở mức 1x. |
| FatigueSpeedMultiplier | 1.4 | Tỷ lệ mệt mỏi cao hơn mức bình thường ở mức 1,4 lần. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Tỷ lệ hư hỏng thực phẩm cao hơn mức bình thường ở mức gấp 2 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.7 | Tỷ lệ đói cao hơn nhiều so với mức bình thường ở mức 1,7 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 0.75 | Độ bền của vật phẩm dưới mức bình thường là 0,75x. |
| ItemStackSizeMultiplier | 1.0 | Dung lượng ngăn xếp gần như bình thường ở mức 1x. |
| ItemWeightMultiplier | 1.2 | Trọng lượng vật phẩm cao hơn bình thường ở mức 1,2 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.7 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 1,7 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 0.5 | Tốc độ làm lạnh thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.5 | Tốc độ nạp lại bồn rửa thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | true | Nước bồn rửa có thể không an toàn. |
| ThirstSpeedMultiplier | 1.6 | Tốc độ khát nước cao hơn bình thường ở mức 1,6 lần. |
| WeatherFrequency | 2 | Tần suất thời tiết không thường xuyên. |

<a id="optional-adapter-selection-8"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `expedition_rations_by_distance`
- `lethal_lasers`: `standard_safety`

<a id="day-10---camp-reset"></a>
## Ngày 10 - Đặt lại trại

**ID hồ sơ:** `expedition_camp_reset` **Điều kiện tổng thể:** Điều kiện thuận lợi (1.05/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Điều kiện thuận lợi là áp lực chính. Áp lực phục hồi: Điều kiện thuận lợi là yếu tố mạnh tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

<a id="main-effects-9"></a>
### Tác dụng chính

- Điểm thưởng là điều kiện cứu trợ (10).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0x).
- Độ bền của vật phẩm là cực cao (3x).
- Dung lượng ngăn xếp cực cao (10x).

<a id="domain-ratings-9"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | thuận lợi (0.94/5) | Áp lực thù địch nhẹ hơn bình thường. |
| Áp lực sinh tồn | thuận lợi (1.0/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | thuận lợi (0.9/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | thuận lợi (1.54/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.19/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-9"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán tối thiểu**
- Chủ đề: **khôi phục tuyến phục kích**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0**
- Cơ hội sự kiện đặc biệt: **0**

<a id="exact-sandbox-settings-9"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 30 | Kích thước khoảng không quảng cáo cơ bản là điều kiện giảm nhẹ ở mức 30. |
| BonusPerkPoints | 10 | Điểm thưởng đặc quyền là điều kiện giảm nhẹ ở mức 10. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.45 | Tỷ lệ tiểu không kiểm soát thấp hơn nhiều so với mức bình thường ở mức 0,45 lần. |
| DamageToAlliesMultiplier | 0.0 | Sát thương của hỏa lực đồng minh thấp hơn nhiều so với mức bình thường ở mức 0x. |
| DayNightCycleSpeedMultiplier | 0.85 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 0,85x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 0 | Hình phạt tử hình là tối thiểu. |
| DetectionSpeedMultiplier | 0.5 | Tốc độ phát hiện kẻ thù thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.0 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0x. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 0.1 | Sát thương của kẻ thù đối với hàng phòng thủ thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| EnemyHealthMultiplier | 0.7 | Khả năng phục hồi của kẻ thù dưới mức bình thường là 0,7 lần. |
| EnemyPlayerDamageMultiplier | 0.4 | Sát thương của kẻ thù đối với người chơi thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| EnemySpawnRate | 0.4 | Tần suất của kẻ thù thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| FatigueSpeedMultiplier | 0.4 | Tỷ lệ mệt mỏi thấp hơn nhiều so với bình thường ở mức 0,4x. |
| FirstTimeStartingWeapon | 2 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 2. |
| FoodSpoilSpeedMultiplier | 0.4 | Tỷ lệ hư hỏng thực phẩm thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.45 | Tỷ lệ đói thấp hơn nhiều so với mức bình thường ở mức 0,45 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 3.0 | Độ bền của vật phẩm cực cao ở mức gấp 3 lần. |
| ItemStackSizeMultiplier | 10.0 | Dung lượng ngăn xếp cực cao ở mức 10 lần. |
| ItemWeightMultiplier | 0.4 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,4 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 3.0 | Trải nghiệm tăng lên gấp 3 lần. |
| PowerSocketsOffAtNight | false | Các ổ cắm điện vẫn có sẵn vào ban đêm. |
| RadiationDealsDamage | false | Tác hại do bức xạ bị vô hiệu hóa. |
| RefrigerationEffectivenessMultiplier | 1.8 | Tốc độ làm lạnh cao hơn bình thường ở mức 1,8 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 3.0 | Tốc độ nạp lại bồn rửa cực cao ở mức gấp 3 lần. |
| StorageByTag | false | Tổ chức lưu trữ được gắn thẻ đã bị vô hiệu hóa. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 0.45 | Tốc độ khát thấp hơn nhiều so với mức bình thường ở mức 0,45 lần. |
| WeatherFrequency | 1 | Tần suất thời tiết rất hiếm. |

<a id="optional-adapter-selection-9"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `expedition_camp_reset`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-detour"></a>
## Ngày 11 - Đường vòng huấn luyện

**ID hồ sơ:** `expedition_training_detour` **Điều kiện tổng thể:** Điều kiện thuận lợi (1.47/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực sống còn: Điều kiện thuận lợi là yếu tố mạnh tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

<a id="main-effects-10"></a>
### Tác dụng chính

- Điểm thưởng là điều kiện cứu trợ (12).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0x).
- Dung lượng ngăn xếp cực cao (5x).
- Kinh nghiệm thu được là cực kỳ (3,9x).
- Độ bền của vật phẩm cao hơn nhiều so với bình thường (2,25x).

<a id="domain-ratings-10"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | thuận lợi (1.53/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | thuận lợi (1.58/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (0.92/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (1.96/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.43/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-10"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán nhẹ**
- Chủ đề: **huấn luyện tuyến phục kích**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0.049**
- Cơ hội sự kiện đặc biệt: **3**

<a id="exact-sandbox-settings-10"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 24 | Kích thước khoảng không quảng cáo cơ bản là điều kiện giảm nhẹ ở mức 24. |
| BonusPerkPoints | 12 | Điểm thưởng là điều kiện giảm nhẹ ở mức 12. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.8 | Tốc độ kiểm soát dưới mức bình thường là 0,8 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.15 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1,15 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 0.9 | Tốc độ phát hiện kẻ thù gần như bình thường ở mức 0,9 lần. |
| DisableResearchMinigame | true | Bỏ qua nghiên cứu đã được bật. |
| DurabilityLossOnDeathMultiplier | 0.0 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0x. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 0.4 | Sát thương của kẻ thù đối với khả năng phòng vệ thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| EnemyHealthMultiplier | 0.9 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 0,9x. |
| EnemyPlayerDamageMultiplier | 0.7 | Sát thương của kẻ thù đối với người chơi dưới mức bình thường là 0,7 lần. |
| EnemySpawnRate | 1.0 | Tần số kẻ thù gần như bình thường ở mức 1x. |
| FatigueSpeedMultiplier | 0.8 | Tỷ lệ mệt mỏi thấp hơn mức bình thường ở mức 0,8 lần. |
| FirstTimeStartingWeapon | 6 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 6. |
| FoodSpoilSpeedMultiplier | 0.8 | Sự hư hỏng thực phẩm ở mức dưới mức bình thường ở mức 0,8 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.8 | Tỷ lệ đói thấp hơn mức bình thường ở mức 0,8 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 2.25 | Độ bền của vật phẩm cao hơn nhiều so với mức bình thường ở mức 2,25 lần. |
| ItemStackSizeMultiplier | 5.0 | Dung lượng ngăn xếp cực cao ở mức 5x. |
| ItemWeightMultiplier | 0.6 | Trọng lượng của vật phẩm thấp hơn bình thường ở mức 0,6 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 3.9 | Trải nghiệm tăng lên cực cao ở mức 3,9 lần. |
| PowerSocketsOffAtNight | false | Các ổ cắm điện vẫn có sẵn vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 1.3 | Tốc độ làm lạnh cao hơn bình thường ở mức 1,3 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 2.0 | Tốc độ nạp lại bồn rửa cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 0.8 | Tốc độ khát nước dưới mức bình thường ở 0,8x. |
| WeatherFrequency | 2 | Tần suất thời tiết không thường xuyên. |

<a id="optional-adapter-selection-10"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `expedition_training_detour`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-field-trip"></a>
## Ngày 12 - Chuyến đi thực địa của Phòng thí nghiệm đen

**ID hồ sơ:** `expedition_black_lab_field_trip` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.52/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực chiến đấu: Điều kiện đòi hỏi là áp lực chính. Áp lực sinh tồn: Điều kiện đòi hỏi là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo đạn dược, giữ lộ trình rút lui và tránh giao tranh mà không được hỗ trợ.

<a id="main-effects-11"></a>
### Tác dụng chính

- Độ khó của trò chơi: rất khó.
- Kinh nghiệm thu được là cực kỳ (3,1x).
- Nước bồn rửa có thể không an toàn.
- Tần số của kẻ thù cao hơn nhiều so với bình thường (2,3x).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,15x).

<a id="domain-ratings-11"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | đòi hỏi (3.2/5) | Áp lực thù địch tăng cao; chuẩn bị trước khi tham gia. |
| Áp lực sinh tồn | đòi hỏi (2.61/5) | Đói, khát, mệt mỏi hoặc vệ sinh cần được chú ý nhiều hơn. |
| Áp lực tài nguyên | tiêu chuẩn (1.76/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.22/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | tiêu chuẩn (1.79/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-11"></a>
### Bối cảnh gặp phải

- Cấp: **những cuộc chạm trán gay gắt**
- Chủ đề: **thử nghiệm hạng nặng về tuyến phục kích**
- Số nhóm hoạt động tối đa: **2**
- Cơ hội chạm trán hỗn hợp: **0.161**
- Cơ hội sự kiện đặc biệt: **22**

<a id="exact-sandbox-settings-11"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 12 | Kích thước khoảng không quảng cáo cơ bản là áp suất tiêu chuẩn ở mức 12. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.15 | Sát thương của hỏa lực thân thiện thấp hơn nhiều so với mức bình thường ở mức 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 2 | Hình phạt tử hình rất nặng. |
| DetectionSpeedMultiplier | 2.1 | Tốc độ phát hiện kẻ thù cao hơn nhiều so với bình thường ở mức 2,1 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.4 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| EnemyAccuracy | 3 | Độ chính xác của kẻ thù là chính xác. |
| EnemyDeployableDamageMultiplier | 1.4 | Sát thương của kẻ thù đối với hàng phòng thủ cao hơn bình thường ở mức 1,4 lần. |
| EnemyHealthMultiplier | 1.8 | Khả năng phục hồi của kẻ thù cao hơn nhiều so với mức bình thường ở mức 1,8 lần. |
| EnemyPlayerDamageMultiplier | 2.1 | Sát thương của kẻ thù đối với người chơi cao hơn nhiều so với mức bình thường ở mức 2,1 lần. |
| EnemySpawnRate | 2.3 | Tần số kẻ thù cao hơn nhiều so với bình thường ở mức 2,3 lần. |
| FatigueSpeedMultiplier | 1.4 | Tỷ lệ mệt mỏi cao hơn mức bình thường ở mức 1,4 lần. |
| FirstTimeStartingWeapon | 1 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 1,15 lần. |
| GameDifficulty | 3 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.15 | Tỷ lệ đói gần như bình thường ở mức 1,15 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.1 | Độ bền của vật phẩm gần như bình thường ở mức 1,1 lần. |
| ItemStackSizeMultiplier | 2.0 | Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| ItemWeightMultiplier | 0.9 | Trọng lượng vật phẩm gần như bình thường ở mức 0,9 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 3.1 | Trải nghiệm tăng lên cực độ ở mức 3,1 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 0.85 | Tốc độ làm lạnh gần như bình thường ở mức 0,85x. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.75 | Tốc độ nạp lại bồn rửa thấp hơn bình thường ở mức 0,75 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | true | Nước bồn rửa có thể không an toàn. |
| ThirstSpeedMultiplier | 1.15 | Tốc độ khát gần như bình thường ở mức 1,15 lần. |
| WeatherFrequency | 3 | Tần suất thời tiết bình thường. |

<a id="optional-adapter-selection-11"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `expedition_black_lab_field_trip`
- `lethal_lasers`: `high_hazard`

<a id="day-13---extended-transit-shift"></a>
## Ngày 13 - Chuyển đổi chuyển tuyến mở rộng

**ID hồ sơ:** `expedition_extended_transit_shift` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.29/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực sinh tồn: Điều kiện đòi hỏi là áp lực chính. Áp lực tài nguyên: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo thức ăn và nước uống, nghỉ ngơi trước chuyến đi dài và lên kế hoạch dừng lại an toàn.

<a id="main-effects-12"></a>
### Tác dụng chính

- Kích thước kho cơ bản là điều kiện khắc nghiệt (10).
- Nước bồn rửa có thể không an toàn.
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Độ khó của trò chơi: khó.
- Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường (2x).

<a id="domain-ratings-12"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.1/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | đòi hỏi (3.28/5) | Đói, khát, mệt mỏi hoặc vệ sinh cần được chú ý nhiều hơn. |
| Áp lực tài nguyên | tiêu chuẩn (2.13/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.01/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.53/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-12"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **tuyến phục kích độ bền**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0.098**
- Cơ hội sự kiện đặc biệt: **7**

<a id="exact-sandbox-settings-12"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 10 | Kích thước khoảng không quảng cáo cơ bản là điều kiện khắc nghiệt ở mức 10. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.35 | Tỷ lệ tiểu không kiểm soát cao hơn bình thường ở mức 1,35 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 0.3 | Tốc độ chu kỳ ngày đêm thấp hơn nhiều so với bình thường ở mức 0,3 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.2 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.35 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 0.9 | Sát thương của kẻ thù đối với hàng phòng thủ gần như bình thường ở mức 0,9x. |
| EnemyHealthMultiplier | 1.3 | Khả năng phục hồi của kẻ thù cao hơn bình thường ở mức 1,3 lần. |
| EnemyPlayerDamageMultiplier | 1.3 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,3 lần. |
| EnemySpawnRate | 0.9 | Tần số kẻ thù gần như bình thường ở mức 0,9 lần. |
| FatigueSpeedMultiplier | 1.8 | Tốc độ mệt mỏi cao hơn nhiều so với mức bình thường ở mức 1,8 lần. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Tỷ lệ hư hỏng thực phẩm cao hơn nhiều so với mức bình thường ở mức 1,8 lần. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.9 | Tỷ lệ đói cao hơn nhiều so với mức bình thường ở mức 1,9 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 0.9 | Độ bền của vật phẩm gần như bình thường ở mức 0,9 lần. |
| ItemStackSizeMultiplier | 2.0 | Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| ItemWeightMultiplier | 1.3 | Trọng lượng vật phẩm cao hơn bình thường ở mức 1,3 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.0 | Trải nghiệm tăng gấp 2 lần so với mức bình thường. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 0.65 | Tốc độ làm lạnh dưới mức bình thường là 0,65x. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.35 | Tốc độ nạp lại bồn rửa thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | true | Nước bồn rửa có thể không an toàn. |
| ThirstSpeedMultiplier | 1.9 | Tốc độ khát cao hơn nhiều so với mức bình thường ở mức 1,9 lần. |
| WeatherFrequency | 2 | Tần suất thời tiết không thường xuyên. |

<a id="optional-adapter-selection-12"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `expedition_extended_transit_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-cache-discovery"></a>
## Ngày 14 - Khám phá bộ đệm cung cấp

**ID hồ sơ:** `expedition_supply_cache_discovery` **Điều kiện tổng thể:** Điều kiện thuận lợi (1.03/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Điều kiện thuận lợi là áp lực chính. Áp lực phục hồi: Điều kiện thuận lợi là yếu tố mạnh tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

<a id="main-effects-13"></a>
### Tác dụng chính

- Kích thước kho lưu trữ cơ bản là điều kiện hỗ trợ (40).
- Điểm thưởng là điều kiện cứu trợ (12).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0x).
- Độ bền của vật phẩm là cực cao (6x).

<a id="domain-ratings-13"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | thuận lợi (1.02/5) | Áp lực thù địch nhẹ hơn bình thường. |
| Áp lực sinh tồn | thuận lợi (0.84/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | cứu trợ (0.79/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | thuận lợi (1.58/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.19/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-13"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán tối thiểu**
- Chủ đề: **hỗ trợ tuyến phục kích**
- Số nhóm hoạt động tối đa: **1**
- Cơ hội chạm trán hỗn hợp: **0**
- Cơ hội sự kiện đặc biệt: **0**

<a id="exact-sandbox-settings-13"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 40 | Kích thước khoảng không quảng cáo cơ bản là điều kiện giảm nhẹ ở mức 40. |
| BonusPerkPoints | 12 | Điểm thưởng là điều kiện giảm nhẹ ở mức 12. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.35 | Tỷ lệ tiểu không kiểm soát thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| DamageToAlliesMultiplier | 0.0 | Sát thương của hỏa lực đồng minh thấp hơn nhiều so với mức bình thường ở mức 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 0 | Hình phạt tử hình là tối thiểu. |
| DetectionSpeedMultiplier | 0.6 | Tốc độ phát hiện kẻ thù thấp hơn mức bình thường là 0,6 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.0 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0x. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 0.1 | Sát thương của kẻ thù đối với hàng phòng thủ thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| EnemyHealthMultiplier | 0.8 | Khả năng phục hồi của kẻ thù dưới mức bình thường là 0,8 lần. |
| EnemyPlayerDamageMultiplier | 0.5 | Sát thương của kẻ thù đối với người chơi thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| EnemySpawnRate | 0.5 | Tần số kẻ thù thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| FatigueSpeedMultiplier | 0.3 | Tốc độ mệt mỏi thấp hơn nhiều so với mức bình thường ở mức 0,3 lần. |
| FirstTimeStartingWeapon | 6 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 6. |
| FoodSpoilSpeedMultiplier | 0.25 | Tỷ lệ hư hỏng thực phẩm thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.35 | Tỷ lệ đói thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 6.0 | Độ bền của vật phẩm cực cao ở mức 6x. |
| ItemStackSizeMultiplier | 20.0 | Dung lượng ngăn xếp cực cao ở mức 20x. |
| ItemWeightMultiplier | 0.2 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,2 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 4.4 | Trải nghiệm tăng lên cực cao ở mức 4,4 lần. |
| PowerSocketsOffAtNight | false | Các ổ cắm điện vẫn có sẵn vào ban đêm. |
| RadiationDealsDamage | false | Tác hại do bức xạ bị vô hiệu hóa. |
| RefrigerationEffectivenessMultiplier | 2.0 | Tốc độ làm lạnh cao hơn bình thường ở mức gấp 2 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 5.0 | Tốc độ nạp lại bồn rửa cực cao ở mức 5x. |
| StorageByTag | false | Tổ chức lưu trữ được gắn thẻ đã bị vô hiệu hóa. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 0.35 | Tốc độ khát thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| WeatherFrequency | 1 | Tần suất thời tiết rất hiếm. |

<a id="optional-adapter-selection-13"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `expedition_supply_cache_discovery`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---precision-waypoint"></a>
## Ngày 15 - Điểm tham chiếu chính xác

**ID hồ sơ:** `expedition_precision_waypoint` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (1.99/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp suất chiến đấu: Áp suất tiêu chuẩn là áp suất chính. Áp lực môi trường: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo đạn dược, giữ lộ trình rút lui và tránh giao tranh mà không được hỗ trợ.

<a id="main-effects-14"></a>
### Tác dụng chính

- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0x).
- Kinh nghiệm thu được là cực kỳ (2,5x).
- Độ khó của trò chơi: khó.
- Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường (2x).
- Ổ cắm điện tắt vào ban đêm.

<a id="domain-ratings-14"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.24/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (2.02/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.67/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.17/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.51/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-14"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán gay gắt**
- Chủ đề: **độ chính xác của tuyến phục kích**
- Số nhóm hoạt động tối đa: **2**
- Cơ hội chạm trán hỗn hợp: **0.119**
- Cơ hội sự kiện đặc biệt: **14**

<a id="exact-sandbox-settings-14"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 12 | Kích thước khoảng không quảng cáo cơ bản là áp suất tiêu chuẩn ở mức 12. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.0 | Sát thương của hỏa lực đồng minh thấp hơn nhiều so với mức bình thường ở mức 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.6 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,6 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.3 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,3 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 0.8 | Sát thương của kẻ thù đối với hàng phòng thủ dưới mức bình thường là 0,8 lần. |
| EnemyHealthMultiplier | 1.0 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 1x. |
| EnemyPlayerDamageMultiplier | 1.5 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,5 lần. |
| EnemySpawnRate | 1.2 | Tần số kẻ thù cao hơn bình thường ở mức 1,2x. |
| FatigueSpeedMultiplier | 1.4 | Tỷ lệ mệt mỏi cao hơn mức bình thường ở mức 1,4 lần. |
| FirstTimeStartingWeapon | 4 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 1x. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.0 | Tỷ lệ đói gần như bình thường ở mức 1x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.0 | Độ bền của vật phẩm gần như bình thường ở mức 1x. |
| ItemStackSizeMultiplier | 2.0 | Dung lượng ngăn xếp cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| ItemWeightMultiplier | 0.8 | Trọng lượng vật phẩm dưới mức bình thường là 0,8 lần. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.5 | Trải nghiệm tăng lên cực cao ở mức 2,5 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 1.0 | Tốc độ làm lạnh gần như bình thường ở mức 1x. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 1.0 | Tốc độ nạp lại bồn rửa gần như bình thường ở mức 1x. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | false | Nước bồn rửa không bị ô nhiễm bởi quy tắc này. |
| ThirstSpeedMultiplier | 1.0 | Tốc độ khát gần như bình thường ở mức 1x. |
| WeatherFrequency | 2 | Tần suất thời tiết không thường xuyên. |

<a id="optional-adapter-selection-14"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `expedition_precision_waypoint`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-detour"></a>
## Ngày 16 - Đường vòng thử nghiệm

**ID hồ sơ:** `expedition_experimental_detour` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.11/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực chiến đấu: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects-15"></a>
### Tác dụng chính

- Độ khó của trò chơi: rất khó.
- Một số bức xạ có thể không có cảnh báo rõ ràng.
- Tần suất thời tiết: rất thường xuyên.
- Kích thước kho lưu trữ cơ bản là điều kiện hỗ trợ (42).
- Điểm thưởng là điều kiện cứu trợ (15).

<a id="domain-ratings-15"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.48/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (2.4/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (0.99/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (2.59/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.67/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-15"></a>
### Bối cảnh gặp phải

- Cấp: **những cuộc chạm trán gay gắt**
- Chủ đề: **thử nghiệm phục kích tuyến đường**
- Số nhóm hoạt động tối đa: **2**
- Cơ hội chạm trán hỗn hợp: **0.154**
- Cơ hội sự kiện đặc biệt: **20**

<a id="exact-sandbox-settings-15"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 42 | Kích thước khoảng không quảng cáo cơ bản là điều kiện giảm nhẹ ở mức 42. |
| BonusPerkPoints | 15 | Điểm thưởng đặc quyền là điều kiện giảm nhẹ ở mức 15. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.2 | Tỷ lệ tiểu không kiểm soát cao hơn bình thường ở mức 1,2 lần. |
| DamageToAlliesMultiplier | 0.0 | Sát thương của hỏa lực đồng minh thấp hơn nhiều so với mức bình thường ở mức 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | Tốc độ chu kỳ ngày đêm cao hơn bình thường ở mức 1,5 lần. |
| DayNightCycleState | 1 | Trạng thái ngày đêm thiên về ngày. |
| DeathPenalties | 2 | Hình phạt tử hình rất nặng. |
| DetectionSpeedMultiplier | 0.6 | Tốc độ phát hiện kẻ thù thấp hơn mức bình thường là 0,6 lần. |
| DisableResearchMinigame | true | Bỏ qua nghiên cứu đã được bật. |
| DurabilityLossOnDeathMultiplier | 0.0 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0x. |
| EnemyAccuracy | 3 | Độ chính xác của kẻ thù là chính xác. |
| EnemyDeployableDamageMultiplier | 0.7 | Sát thương của kẻ thù đối với hàng phòng thủ dưới mức bình thường là 0,7 lần. |
| EnemyHealthMultiplier | 1.5 | Khả năng phục hồi của kẻ thù cao hơn bình thường ở mức 1,5 lần. |
| EnemyPlayerDamageMultiplier | 1.0 | Sát thương của kẻ thù lên người chơi gần như bình thường ở mức 1x. |
| EnemySpawnRate | 1.5 | Tần suất của kẻ thù cao hơn bình thường ở 1,5x. |
| FatigueSpeedMultiplier | 0.9 | Tốc độ mỏi gần như bình thường ở mức 0,9x. |
| FirstTimeStartingWeapon | 6 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 6. |
| FoodSpoilSpeedMultiplier | 0.4 | Tỷ lệ hư hỏng thực phẩm thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| GameDifficulty | 3 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.8 | Tỷ lệ đói thấp hơn mức bình thường ở mức 0,8 lần. |
| InvisibleRadiation | true | Một số bức xạ có thể không có cảnh báo rõ ràng. |
| ItemDurabilityMultiplier | 5.0 | Độ bền của vật phẩm cực cao ở mức 5x. |
| ItemStackSizeMultiplier | 15.0 | Dung lượng ngăn xếp cực cao ở mức 15x. |
| ItemWeightMultiplier | 0.2 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,2 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 5.0 | Trải nghiệm tăng lên gấp 5 lần. |
| PowerSocketsOffAtNight | false | Các ổ cắm điện vẫn có sẵn vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 2.0 | Tốc độ làm lạnh cao hơn bình thường ở mức gấp 2 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.0 | Tốc độ nạp lại bồn rửa thấp hơn nhiều so với mức bình thường ở mức 0x. |
| StorageByTag | false | Tổ chức lưu trữ được gắn thẻ đã bị vô hiệu hóa. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | true | Nước bồn rửa có thể không an toàn. |
| ThirstSpeedMultiplier | 1.2 | Tốc độ khát cao hơn bình thường ở mức 1,2 lần. |
| WeatherFrequency | 5 | Tần suất thời tiết rất thường xuyên. |

<a id="optional-adapter-selection-15"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `expedition_experimental_detour`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-expedition-exam"></a>
## Ngày 17 - Bài kiểm tra thám hiểm cuối cùng

**ID hồ sơ:** `expedition_final_expedition_exam` **Điều kiện tổng thể:** Các điều kiện đòi hỏi (2.78/5) **Ý nghĩa đơn giản:** Các điều kiện đòi hỏi. Áp lực chiến đấu: Điều kiện khắc nghiệt là áp lực chính. Áp lực sinh tồn: Điều kiện đòi hỏi là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo đạn dược, giữ lộ trình rút lui và tránh giao tranh mà không được hỗ trợ.

<a id="main-effects-16"></a>
### Tác dụng chính

- Tần suất của kẻ thù là cực kỳ (3x).
- Độ khó của trò chơi: rất khó.
- Tần suất thời tiết: rất thường xuyên.
- Tốc độ phát hiện kẻ thù là cực cao (2,5x).
- Sát thương của kẻ thù đối với người chơi cao hơn nhiều so với mức bình thường (2,4x).

<a id="domain-ratings-16"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | nghiêm trọng (3.62/5) | Áp lực thù địch tăng cao; chuẩn bị trước khi tham gia. |
| Áp lực sinh tồn | đòi hỏi (2.82/5) | Đói, khát, mệt mỏi hoặc vệ sinh cần được chú ý nhiều hơn. |
| Áp lực tài nguyên | tiêu chuẩn (1.87/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.55/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | tiêu chuẩn (1.81/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-16"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán với capstone**
- Chủ đề: **capstone phục kích tuyến đường**
- Số nhóm hoạt động tối đa: **2**
- Cơ hội chạm trán hỗn hợp: **0.196**
- Cơ hội sự kiện đặc biệt: **30**

<a id="exact-sandbox-settings-16"></a>
### Cài đặt hộp cát chính xác

| Cài đặt | Giá trị thô | Đã dịch nghĩa |
|---|---:|---|
| AllowCharacterReset | true | Việc đặt lại ký tự vẫn khả dụng. |
| AllowIronMode | false | Chế độ sắt là đã tắt. |
| AllowPagers | true | Có sẵn máy nhắn tin. |
| AllowRecipeSharing | true | Có sẵn tính năng chia sẻ công thức. |
| AllowTransmog | true | Có sẵn tùy chỉnh giao diện. |
| BaseInventorySize | 12 | Kích thước khoảng không quảng cáo cơ bản là áp suất tiêu chuẩn ở mức 12. |
| BonusPerkPoints | 0 | Điểm thưởng là áp suất tiêu chuẩn ở mức 0. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.1 | Tỷ lệ tiểu không kiểm soát gần như bình thường ở mức 1,1 lần. |
| DamageToAlliesMultiplier | 0.1 | Sát thương của hỏa lực thân thiện thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | Tốc độ chu kỳ ngày đêm cao hơn bình thường ở mức 1,45 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 2 | Hình phạt tử hình rất nặng. |
| DetectionSpeedMultiplier | 2.5 | Tốc độ phát hiện kẻ thù cực cao ở mức 2,5 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.5 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| EnemyAccuracy | 3 | Độ chính xác của kẻ thù là chính xác. |
| EnemyDeployableDamageMultiplier | 2.0 | Sát thương của kẻ địch lên hàng phòng thủ cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| EnemyHealthMultiplier | 2.3 | Khả năng phục hồi của kẻ thù cao hơn nhiều so với bình thường ở mức 2,3 lần. |
| EnemyPlayerDamageMultiplier | 2.4 | Sát thương của kẻ thù gây ra cho người chơi cao hơn nhiều so với mức bình thường ở mức 2,4 lần. |
| EnemySpawnRate | 3.0 | Tần suất kẻ thù cực cao ở mức 3x. |
| FatigueSpeedMultiplier | 1.6 | Tỷ lệ mệt mỏi cao hơn bình thường ở mức 1,6 lần. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Tỷ lệ hư hỏng thực phẩm cao hơn bình thường ở mức 1,6 lần. |
| GameDifficulty | 3 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.35 | Tỷ lệ đói cao hơn bình thường ở mức 1,35 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.0 | Độ bền của vật phẩm gần như bình thường ở mức 1x. |
| ItemStackSizeMultiplier | 3.0 | Dung lượng ngăn xếp cực cao ở mức 3x. |
| ItemWeightMultiplier | 1.0 | Trọng lượng vật phẩm gần như bình thường ở mức 1x. |
| LootRespawnEnabled | false | Chiến lợi phẩm đã thu thập không hồi sinh. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 4.6 | Trải nghiệm thu được cực cao ở mức 4,6 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 0.6 | Tốc độ làm lạnh dưới mức bình thường là 0,6 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.5 | Tốc độ nạp lại bồn rửa thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | true | Nước bồn rửa có thể không an toàn. |
| ThirstSpeedMultiplier | 1.35 | Tốc độ khát cao hơn bình thường ở mức 1,35 lần. |
| WeatherFrequency | 5 | Tần suất thời tiết rất thường xuyên. |

<a id="optional-adapter-selection-16"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `expedition_final_expedition_exam`
- `lethal_lasers`: `overcharged_high_hazard`
