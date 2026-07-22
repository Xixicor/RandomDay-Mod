<a id="randomday---logistics-family"></a>
# RandomDay - Gia đình hậu cần

> **Nguồn tiếng Anh chuẩn:** [logistics.md](../../../../profiles/families/logistics.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Phiên bản: `v0.3.16-alpha`

Vận chuyển, tồn kho, độ bền, trọng lượng, hoạt động cung ứng, nền kinh tế chuẩn bị.

**Phong cách chơi:** tính kinh tế và chuẩn bị hàng tồn kho **Âm báo:** bộ máy quản lý kho hàng

<a id="17-day-index"></a>
## Chỉ mục 17 ngày

| Ngày | Hồ sơ | Điều kiện | Áp lực chính |
|---:|---|---|---|
| 1 | Định hướng hàng tồn kho | Áp lực tiêu chuẩn (1.72/5) | Áp lực môi trường |
| 2 | Kho lưu trữ trên sàn mở | Điều kiện thuận lợi (1.22/5) | Áp lực môi trường |
| 3 | Giấy tờ hydrat hóa | Áp lực tiêu chuẩn (2.0/5) | Áp lực sinh tồn |
| 4 | Kỷ niệm chuỗi cung ứng | Điều kiện thuận lợi (1.4/5) | Áp lực môi trường |
| 5 | An ninh biên nhận | Áp lực tiêu chuẩn (1.89/5) | Áp lực môi trường |
| 6 | Vận chuyển hàng hóa trong điều kiện thời tiết | Áp lực tiêu chuẩn (1.87/5) | Áp lực môi trường |
| 7 | Kiểm kê ban đêm | Áp lực tiêu chuẩn (1.9/5) | Áp lực môi trường |
| 8 | Bản ghi nhớ tối ưu hóa tuyến đường | Điều kiện thuận lợi (1.68/5) | Áp lực môi trường |
| 9 | Khẩu phần Sổ cái | Áp lực tiêu chuẩn (1.99/5) | Áp lực sinh tồn |
| 10 | Gói phục hồi lại | Điều kiện thuận lợi (0.99/5) | Áp lực môi trường |
| 11 | Đào tạo về nhãn an toàn | Điều kiện thuận lợi (1.4/5) | Áp lực môi trường |
| 12 | Đánh giá hậu cần của Black Lab | Áp lực tiêu chuẩn (2.32/5) | Áp lực chiến đấu |
| 13 | Sự thay đổi vận chuyển kéo dài | Áp lực tiêu chuẩn (2.05/5) | Áp lực sinh tồn |
| 14 | Kiểm tra thần kỳ về tủ cung ứng | Điều kiện thuận lợi (0.97/5) | Áp lực môi trường |
| 15 | Tính chính xác của số lượng | Áp lực tiêu chuẩn (1.84/5) | Áp lực môi trường |
| 16 | Kiểm kê thử nghiệm | Áp lực tiêu chuẩn (2.03/5) | Áp lực môi trường |
| 17 | Bài kiểm tra hậu cần cuối cùng | Áp lực tiêu chuẩn (2.55/5) | Áp lực chiến đấu |

<a id="day-1---inventory-orientation"></a>
## Ngày 1 - Định hướng hàng tồn kho

**ID hồ sơ:** `logistics_inventory_orientation` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (1.72/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực sống sót: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects"></a>
### Tác dụng chính

- Dung lượng ngăn xếp cực cao (8x).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,25x).
- Ổ cắm điện tắt vào ban đêm.
- Chiến lợi phẩm có thể được trả lại sau khi thu thập.

<a id="domain-ratings"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | thuận lợi (1.65/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (1.9/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.44/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (2.22/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.5/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **định hướng hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 0.8 | Tốc độ phát hiện kẻ thù thấp hơn bình thường ở mức 0,8 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.25 | Độ bền mất đi khi chết thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 0.9 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 0,9x. |
| EnemyPlayerDamageMultiplier | 1.0 | Sát thương của kẻ thù lên người chơi gần như bình thường ở mức 1x. |
| EnemySpawnRate | 0.7 | Tần số kẻ địch thấp hơn bình thường là 0,7 lần. |
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
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.5 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.4 | Trải nghiệm đạt được cao hơn mức bình thường ở mức 1,4 lần. |
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
- `encounter_director`: `logistics_inventory_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-storage"></a>
## Ngày 2 - Kho lưu trữ trên sàn mở

**ID hồ sơ:** `logistics_open_floor_storage` **Điều kiện tổng thể:** Điều kiện thuận lợi (1.22/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực sống còn: Điều kiện thuận lợi là yếu tố mạnh tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

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
| Áp lực chiến đấu | thuận lợi (0.99/5) | Áp lực thù địch nhẹ hơn bình thường. |
| Áp lực sinh tồn | thuận lợi (1.34/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | thuận lợi (1.08/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (1.91/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.2/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-1"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán nhẹ**
- Chủ đề: **hậu cần sự chuẩn bị**
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
| DetectionSpeedMultiplier | 0.5 | Tốc độ phát hiện kẻ thù thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.05 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,05x. |
| EnemyAccuracy | 0 | Độ chính xác của kẻ thù kém. |
| EnemyDeployableDamageMultiplier | 0.1 | Sát thương của kẻ thù đối với hàng phòng thủ thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| EnemyHealthMultiplier | 0.8 | Khả năng phục hồi của kẻ thù dưới mức bình thường là 0,8 lần. |
| EnemyPlayerDamageMultiplier | 0.6 | Sát thương của kẻ thù đối với người chơi dưới mức bình thường là 0,6 lần. |
| EnemySpawnRate | 0.4 | Tần suất của kẻ thù thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| FatigueSpeedMultiplier | 0.65 | Tỷ lệ mỏi dưới mức bình thường là 0,65x. |
| FirstTimeStartingWeapon | 2 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 2. |
| FoodSpoilSpeedMultiplier | 0.75 | Tỷ lệ hư hỏng thực phẩm dưới mức bình thường là 0,75 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.65 | Tỷ lệ đói dưới mức bình thường là 0,65x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 4.0 | Độ bền của vật phẩm cực cao ở mức gấp 4 lần. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.2 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,2 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.9 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 1,9 lần. |
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
- `encounter_director`: `logistics_open_floor_storage`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-3---hydration-paperwork"></a>
## Ngày 3 - Thủ tục giấy tờ hydrat hóa

**ID hồ sơ:** `logistics_hydration_paperwork` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.0/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực sinh tồn: Điều kiện đòi hỏi là áp lực chính. Áp lực môi trường: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo thức ăn và nước uống, nghỉ ngơi trước chuyến đi dài và lên kế hoạch dừng lại an toàn.

<a id="main-effects-2"></a>
### Tác dụng chính

- Dung lượng ngăn xếp cực cao (8x).
- Nước bồn rửa có thể không an toàn.
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,25x).
- Độ khó của trò chơi: khó.

<a id="domain-ratings-2"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (1.85/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | đòi hỏi (2.72/5) | Đói, khát, mệt mỏi hoặc vệ sinh cần được chú ý nhiều hơn. |
| Áp lực tài nguyên | thuận lợi (1.59/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.22/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.5/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-2"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **tài nguyên sinh học hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.45 | Tỷ lệ tiết niệu cao hơn bình thường tại 1,45x. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 0.9 | Tốc độ phát hiện kẻ thù gần như bình thường ở mức 0,9 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.25 | Độ bền mất đi khi chết thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 0.9 | Sát thương của kẻ thù đối với hàng phòng thủ gần như bình thường ở mức 0,9x. |
| EnemyHealthMultiplier | 1.0 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 1x. |
| EnemyPlayerDamageMultiplier | 1.1 | Sát thương của kẻ thù đối với người chơi gần như bình thường ở mức 1,1x. |
| EnemySpawnRate | 0.8 | Tần số kẻ thù thấp hơn bình thường ở mức 0,8 lần. |
| FatigueSpeedMultiplier | 1.1 | Tốc độ mỏi gần như bình thường ở mức 1,1 lần. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Thực phẩm hư hỏng cao hơn bình thường ở mức 1,25 lần. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.0 | Tỷ lệ đói gần như bình thường ở mức 1x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.25 | Độ bền của vật phẩm cao hơn bình thường ở 1,25x. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.5 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.6 | Kinh nghiệm đạt được cao hơn bình thường ở mức 1,6 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 0.75 | Tốc độ làm lạnh thấp hơn bình thường ở mức 0,75 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.25 | Tốc độ đổ đầy bồn rửa thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | true | Nước bồn rửa có thể không an toàn. |
| ThirstSpeedMultiplier | 1.5 | Tốc độ khát cao hơn bình thường ở mức 1,5 lần. |
| WeatherFrequency | 3 | Tần suất thời tiết bình thường. |

<a id="optional-adapter-selection-2"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `logistics_hydration_paperwork`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-chain-celebration"></a>
## Ngày 4 - Lễ kỷ niệm chuỗi cung ứng

**ID hồ sơ:** `logistics_supply_chain_celebration` **Điều kiện tổng thể:** Điều kiện thuận lợi (1.4/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực sống còn: Điều kiện thuận lợi là yếu tố mạnh tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

<a id="main-effects-3"></a>
### Tác dụng chính

- Độ bền của vật phẩm là cực cao (2,5x).
- Dung lượng ngăn xếp cực cao (8x).
- Tỷ lệ nạp lại bồn rửa rất cao (2,5x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,05x).
- Kinh nghiệm thu được cao hơn nhiều so với mức bình thường (2,1x).

<a id="domain-ratings-3"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | thuận lợi (1.33/5) | Áp lực thù địch nhẹ hơn bình thường. |
| Áp lực sinh tồn | thuận lợi (1.5/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | thuận lợi (1.06/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (1.93/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.44/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-3"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán nhẹ**
- Chủ đề: **hậu cần cướp đi tính di động**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.75 | Tỷ lệ tiểu không kiểm soát dưới mức bình thường là 0,75 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 0.7 | Tốc độ phát hiện kẻ thù thấp hơn bình thường là 0,7 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.05 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,05x. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 0.5 | Sát thương của kẻ thù đối với hàng phòng thủ thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| EnemyHealthMultiplier | 0.8 | Khả năng phục hồi của kẻ thù dưới mức bình thường là 0,8 lần. |
| EnemyPlayerDamageMultiplier | 0.8 | Sát thương của kẻ thù đối với người chơi dưới mức bình thường là 0,8 lần. |
| EnemySpawnRate | 0.6 | Tần số kẻ thù dưới mức bình thường là 0,6 lần. |
| FatigueSpeedMultiplier | 0.75 | Tỷ lệ mỏi dưới mức bình thường là 0,75x. |
| FirstTimeStartingWeapon | 6 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 6. |
| FoodSpoilSpeedMultiplier | 0.6 | Tỷ lệ hư hỏng thực phẩm dưới mức bình thường là 0,6 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.75 | Tỷ lệ đói dưới mức bình thường là 0,75x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 2.5 | Độ bền của vật phẩm cực cao ở mức 2,5 lần. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.2 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,2 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.1 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 2,1 lần. |
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
- `encounter_director`: `logistics_supply_chain_celebration`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-of-receipts"></a>
## Ngày 5 - Bảo mật biên nhận

**ID hồ sơ:** `logistics_security_of_receipts` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (1.89/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực chiến đấu: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects-4"></a>
### Tác dụng chính

- Dung lượng ngăn xếp cực cao (8x).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,1x).
- Độ khó của trò chơi: khó.
- Ổ cắm điện tắt vào ban đêm.
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,3x).

<a id="domain-ratings-4"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.15/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (1.94/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.38/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (2.17/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.51/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-4"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán gay gắt**
- Chủ đề: **an ninh hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.1 | Sát thương của hỏa lực thân thiện thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.6 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,6 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.3 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,3 lần. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 1.1 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 1,1 lần. |
| EnemyPlayerDamageMultiplier | 1.2 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,2 lần. |
| EnemySpawnRate | 1.1 | Tần số kẻ thù gần như bình thường ở mức 1,1 lần. |
| FatigueSpeedMultiplier | 1.15 | Tốc độ mỏi gần như bình thường ở mức 1,15 lần. |
| FirstTimeStartingWeapon | 4 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 1x. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.0 | Tỷ lệ đói gần như bình thường ở mức 1x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.25 | Độ bền của vật phẩm cao hơn bình thường ở 1,25x. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.5 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.9 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 1,9 lần. |
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
- `encounter_director`: `logistics_security_of_receipts`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weathered-freight"></a>
## Ngày 6 - Vận chuyển hàng hóa qua thời tiết

**ID hồ sơ:** `logistics_weathered_freight` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (1.87/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực sống sót: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects-5"></a>
### Tác dụng chính

- Tần suất thời tiết: rất thường xuyên.
- Dung lượng ngăn xếp cực cao (8x).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,25x).
- Độ khó của trò chơi: khó.

<a id="domain-ratings-5"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (1.86/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (2.0/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.54/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.52/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.5/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-5"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **thời tiết hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.25 | Tốc độ chu kỳ ngày đêm cao hơn bình thường ở mức 1,25 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 0.9 | Tốc độ phát hiện kẻ thù gần như bình thường ở mức 0,9 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.25 | Độ bền mất đi khi chết thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 1.0 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 1x. |
| EnemyPlayerDamageMultiplier | 1.0 | Sát thương của kẻ thù lên người chơi gần như bình thường ở mức 1x. |
| EnemySpawnRate | 0.8 | Tần số kẻ thù thấp hơn bình thường ở mức 0,8 lần. |
| FatigueSpeedMultiplier | 0.9 | Tốc độ mỏi gần như bình thường ở mức 0,9x. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 1.25 | Thực phẩm hư hỏng cao hơn bình thường ở mức 1,25 lần. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.1 | Tỷ lệ đói gần như bình thường ở mức 1,1 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.1 | Độ bền của vật phẩm gần như bình thường ở mức 1,1 lần. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.5 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.6 | Kinh nghiệm đạt được cao hơn bình thường ở mức 1,6 lần. |
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
- `encounter_director`: `logistics_weathered_freight`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-stocktake"></a>
## Ngày 7 - Kiểm kê hàng đêm

**ID hồ sơ:** `logistics_night_stocktake` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (1.9/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực chiến đấu: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects-6"></a>
### Tác dụng chính

- Dung lượng ngăn xếp cực cao (8x).
- Trạng thái ngày đêm: thiên về đêm.
- Kinh nghiệm thu được cao hơn nhiều so với mức bình thường (2,1x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,2x).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).

<a id="domain-ratings-6"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.17/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (1.9/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.32/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (2.33/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.49/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-6"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán gay gắt**
- Chủ đề: **đêm hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.95 | Tỷ lệ tiểu không kiểm soát gần như bình thường ở mức 0,95 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 2 | Trạng thái ngày đêm thiên về đêm. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.4 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,4 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.2 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,2 lần. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 1.1 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 1,1 lần. |
| EnemyPlayerDamageMultiplier | 1.2 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,2 lần. |
| EnemySpawnRate | 1.2 | Tần số kẻ thù cao hơn bình thường ở mức 1,2x. |
| FatigueSpeedMultiplier | 1.2 | Tỷ lệ mệt mỏi cao hơn bình thường ở mức 1,2 lần. |
| FirstTimeStartingWeapon | 5 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 5. |
| FoodSpoilSpeedMultiplier | 1.0 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 1x. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.95 | Tỷ lệ đói gần như bình thường ở mức 0,95x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.5 | Độ bền của vật phẩm cao hơn bình thường ở mức 1,5 lần. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.4 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,4 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.1 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 2,1 lần. |
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
- `encounter_director`: `logistics_night_stocktake`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-optimization-memo"></a>
## Ngày 8 - Bản ghi nhớ tối ưu hóa tuyến đường

**ID hồ sơ:** `logistics_route_optimization_memo` **Điều kiện tổng thể:** Điều kiện thuận lợi (1.68/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực chiến đấu: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

<a id="main-effects-7"></a>
### Tác dụng chính

- Tốc độ chu kỳ ngày đêm cực kỳ cao (3x).
- Dung lượng ngăn xếp cực cao (8x).
- Kinh nghiệm thu được cao hơn nhiều so với mức bình thường (2,2x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0,15x).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).

<a id="domain-ratings-7"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (1.87/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | thuận lợi (1.42/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | thuận lợi (1.19/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (2.56/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.47/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-7"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **Tuyến đường hậu cần**
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
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.7 | Tỷ lệ tiểu không kiểm soát dưới mức bình thường là 0,7 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 3.0 | Tốc độ chu kỳ ngày đêm cực cao ở mức gấp 3 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.2 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| DisableResearchMinigame | true | Bỏ qua nghiên cứu đã được bật. |
| DurabilityLossOnDeathMultiplier | 0.15 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,15 lần. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 0.8 | Sát thương của kẻ thù đối với hàng phòng thủ dưới mức bình thường là 0,8 lần. |
| EnemyHealthMultiplier | 0.8 | Khả năng phục hồi của kẻ thù dưới mức bình thường là 0,8 lần. |
| EnemyPlayerDamageMultiplier | 1.0 | Sát thương của kẻ thù lên người chơi gần như bình thường ở mức 1x. |
| EnemySpawnRate | 1.0 | Tần số kẻ thù gần như bình thường ở mức 1x. |
| FatigueSpeedMultiplier | 0.7 | Tỷ lệ mỏi dưới mức bình thường là 0,7 lần. |
| FirstTimeStartingWeapon | 6 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 6. |
| FoodSpoilSpeedMultiplier | 0.9 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 0,9 lần. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.7 | Tỷ lệ đói dưới mức bình thường là 0,7 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.25 | Độ bền của vật phẩm cao hơn bình thường ở 1,25x. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.4 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,4 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.2 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 2,2 lần. |
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
- `encounter_director`: `logistics_route_optimization_memo`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-ledger"></a>
## Ngày 9 - Khẩu phần Sổ cái

**ID hồ sơ:** `logistics_ration_ledger` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (1.99/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực sinh tồn: Điều kiện đòi hỏi là áp lực chính. Áp lực môi trường: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo thức ăn và nước uống, nghỉ ngơi trước chuyến đi dài và lên kế hoạch dừng lại an toàn.

<a id="main-effects-8"></a>
### Tác dụng chính

- Dung lượng ngăn xếp cực cao (8x).
- Nước bồn rửa có thể không an toàn.
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Thực phẩm hư hỏng cao hơn nhiều so với mức bình thường (2x).
- Ổ cắm điện tắt vào ban đêm.

<a id="domain-ratings-8"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (1.72/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | đòi hỏi (2.78/5) | Đói, khát, mệt mỏi hoặc vệ sinh cần được chú ý nhiều hơn. |
| Áp lực tài nguyên | tiêu chuẩn (1.74/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.17/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.53/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-8"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **sự khan hiếm hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.25 | Tỷ lệ tiểu không kiểm soát cao hơn bình thường ở mức 1,25 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 0.9 | Tốc độ phát hiện kẻ thù gần như bình thường ở mức 0,9 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.35 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 1.0 | Sát thương của kẻ địch lên hàng phòng thủ gần như bình thường ở mức 1x. |
| EnemyHealthMultiplier | 1.1 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 1,1 lần. |
| EnemyPlayerDamageMultiplier | 1.1 | Sát thương của kẻ thù đối với người chơi gần như bình thường ở mức 1,1x. |
| EnemySpawnRate | 0.7 | Tần số kẻ địch thấp hơn bình thường là 0,7 lần. |
| FatigueSpeedMultiplier | 1.3 | Tỷ lệ mệt mỏi cao hơn bình thường ở mức 1,3 lần. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 2.0 | Tỷ lệ hư hỏng thực phẩm cao hơn mức bình thường ở mức gấp 2 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.4 | Tỷ lệ đói cao hơn bình thường ở mức 1,4 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 0.75 | Độ bền của vật phẩm dưới mức bình thường là 0,75x. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.7 | Trọng lượng vật phẩm dưới mức bình thường là 0,7 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.6 | Kinh nghiệm đạt được cao hơn bình thường ở mức 1,6 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 0.5 | Tốc độ làm lạnh thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.5 | Tốc độ nạp lại bồn rửa thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | true | Nước bồn rửa có thể không an toàn. |
| ThirstSpeedMultiplier | 1.3 | Tốc độ khát cao hơn bình thường ở mức 1,3 lần. |
| WeatherFrequency | 2 | Tần suất thời tiết không thường xuyên. |

<a id="optional-adapter-selection-8"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `logistics_ration_ledger`
- `lethal_lasers`: `standard_safety`

<a id="day-10---recovery-repack"></a>
## Ngày 10 - Đóng gói lại phục hồi

**ID hồ sơ:** `logistics_recovery_repack` **Điều kiện tổng thể:** Điều kiện thuận lợi (0.99/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Điều kiện thuận lợi là áp lực chính. Áp lực phục hồi: Điều kiện thuận lợi là yếu tố mạnh tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

<a id="main-effects-9"></a>
### Tác dụng chính

- Điểm thưởng là điều kiện cứu trợ (10).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0x).
- Độ bền của vật phẩm là cực cao (3x).
- Dung lượng ngăn xếp cực cao (8x).

<a id="domain-ratings-9"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | cứu trợ (0.79/5) | Áp lực thù địch nhẹ hơn bình thường. |
| Áp lực sinh tồn | thuận lợi (1.02/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | thuận lợi (0.88/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | thuận lợi (1.54/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.19/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-9"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán tối thiểu**
- Chủ đề: **khôi phục hậu cần**
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
| DetectionSpeedMultiplier | 0.4 | Tốc độ phát hiện kẻ thù thấp hơn nhiều so với bình thường ở mức 0,4 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.0 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0x. |
| EnemyAccuracy | 0 | Độ chính xác của kẻ thù kém. |
| EnemyDeployableDamageMultiplier | 0.1 | Sát thương của kẻ thù đối với hàng phòng thủ thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| EnemyHealthMultiplier | 0.7 | Khả năng phục hồi của kẻ thù dưới mức bình thường là 0,7 lần. |
| EnemyPlayerDamageMultiplier | 0.3 | Sát thương của kẻ thù đối với người chơi thấp hơn nhiều so với mức bình thường ở mức 0,3 lần. |
| EnemySpawnRate | 0.3 | Tần số kẻ thù thấp hơn nhiều so với bình thường ở mức 0,3 lần. |
| FatigueSpeedMultiplier | 0.45 | Tỷ lệ mỏi thấp hơn nhiều so với mức bình thường ở mức 0,45 lần. |
| FirstTimeStartingWeapon | 2 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 2. |
| FoodSpoilSpeedMultiplier | 0.4 | Tỷ lệ hư hỏng thực phẩm thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.45 | Tỷ lệ đói thấp hơn nhiều so với mức bình thường ở mức 0,45 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 3.0 | Độ bền của vật phẩm cực cao ở mức gấp 3 lần. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.2 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,2 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.8 | Trải nghiệm tăng lên cực cao ở mức 2,8 lần. |
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
- `encounter_director`: `logistics_recovery_repack`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---safety-label-training"></a>
## Ngày 11 - Đào tạo về nhãn an toàn

**ID hồ sơ:** `logistics_safety_label_training` **Điều kiện tổng thể:** Điều kiện thuận lợi (1.4/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực sống còn: Điều kiện thuận lợi là yếu tố mạnh tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

<a id="main-effects-10"></a>
### Tác dụng chính

- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0x).
- Dung lượng ngăn xếp cực cao (8x).
- Kinh nghiệm thu được là cực kỳ (3,6x).
- Độ bền của vật phẩm cao hơn nhiều so với bình thường (2,25x).
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).

<a id="domain-ratings-10"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | thuận lợi (1.29/5) | Áp lực thù địch nhẹ hơn bình thường. |
| Áp lực sinh tồn | thuận lợi (1.58/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (0.99/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (1.96/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.43/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-10"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán nhẹ**
- Chủ đề: **đào tạo hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 0.8 | Tốc độ kiểm soát dưới mức bình thường là 0,8 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 1.15 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1,15 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 0.7 | Tốc độ phát hiện kẻ thù thấp hơn bình thường là 0,7 lần. |
| DisableResearchMinigame | true | Bỏ qua nghiên cứu đã được bật. |
| DurabilityLossOnDeathMultiplier | 0.0 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0x. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 0.4 | Sát thương của kẻ thù đối với khả năng phòng vệ thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| EnemyHealthMultiplier | 0.8 | Khả năng phục hồi của kẻ thù dưới mức bình thường là 0,8 lần. |
| EnemyPlayerDamageMultiplier | 0.6 | Sát thương của kẻ thù đối với người chơi dưới mức bình thường là 0,6 lần. |
| EnemySpawnRate | 0.7 | Tần số kẻ địch thấp hơn bình thường là 0,7 lần. |
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
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.3 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,3 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 3.6 | Trải nghiệm tăng lên cực cao ở mức 3,6 lần. |
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
- `encounter_director`: `logistics_safety_label_training`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-logistics-review"></a>
## Ngày 12 - Đánh giá hậu cần của Black Lab

**ID hồ sơ:** `logistics_black_lab_logistics_review` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.32/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực chiến đấu: Điều kiện đòi hỏi là áp lực chính. Áp lực sống sót: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo đạn dược, giữ lộ trình rút lui và tránh giao tranh mà không được hỗ trợ.

<a id="main-effects-11"></a>
### Tác dụng chính

- Độ khó của trò chơi: rất khó.
- Dung lượng ngăn xếp cực cao (8x).
- Kinh nghiệm thu được là cực kỳ (2,9x).
- Nước bồn rửa có thể không an toàn.
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,15x).

<a id="domain-ratings-11"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | đòi hỏi (2.83/5) | Áp lực thù địch tăng cao; chuẩn bị trước khi tham gia. |
| Áp lực sinh tồn | tiêu chuẩn (2.53/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.45/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (2.22/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | tiêu chuẩn (1.79/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-11"></a>
### Bối cảnh gặp phải

- Cấp: **những cuộc chạm trán gay gắt**
- Chủ đề: **kiểm tra nặng về hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.15 | Sát thương của hỏa lực thân thiện thấp hơn nhiều so với mức bình thường ở mức 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 2 | Hình phạt tử hình rất nặng. |
| DetectionSpeedMultiplier | 1.6 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,6 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.4 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 1.4 | Sát thương của kẻ thù đối với hàng phòng thủ cao hơn bình thường ở mức 1,4 lần. |
| EnemyHealthMultiplier | 1.7 | Khả năng phục hồi của kẻ thù cao hơn nhiều so với mức bình thường ở mức 1,7 lần. |
| EnemyPlayerDamageMultiplier | 1.9 | Sát thương của kẻ thù gây ra cho người chơi cao hơn nhiều so với mức bình thường ở mức 1,9 lần. |
| EnemySpawnRate | 1.6 | Tần số kẻ thù cao hơn bình thường ở mức 1,6 lần. |
| FatigueSpeedMultiplier | 1.15 | Tốc độ mỏi gần như bình thường ở mức 1,15 lần. |
| FirstTimeStartingWeapon | 1 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 1. |
| FoodSpoilSpeedMultiplier | 1.15 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 1,15 lần. |
| GameDifficulty | 3 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.15 | Tỷ lệ đói gần như bình thường ở mức 1,15 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.1 | Độ bền của vật phẩm gần như bình thường ở mức 1,1 lần. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.5 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.9 | Trải nghiệm tăng lên cực cao ở mức 2,9 lần. |
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
- `encounter_director`: `logistics_black_lab_logistics_review`
- `lethal_lasers`: `high_hazard`

<a id="day-13---extended-haul-shift"></a>
## Ngày 13 - Ca kéo dài

**ID hồ sơ:** `logistics_extended_haul_shift` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.05/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực sinh tồn: Điều kiện đòi hỏi là áp lực chính. Áp lực môi trường: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo thức ăn và nước uống, nghỉ ngơi trước chuyến đi dài và lên kế hoạch dừng lại an toàn.

<a id="main-effects-12"></a>
### Tác dụng chính

- Dung lượng ngăn xếp cực cao (8x).
- Nước bồn rửa có thể không an toàn.
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0,25x).
- Độ khó của trò chơi: khó.
- Ổ cắm điện tắt vào ban đêm.

<a id="domain-ratings-12"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (1.88/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | đòi hỏi (2.93/5) | Đói, khát, mệt mỏi hoặc vệ sinh cần được chú ý nhiều hơn. |
| Áp lực tài nguyên | thuận lợi (1.69/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.01/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.53/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-12"></a>
### Bối cảnh gặp phải

- Cấp: **kiểm duyệt các cuộc chạm trán**
- Chủ đề: **độ bền hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.35 | Tỷ lệ tiểu không kiểm soát cao hơn bình thường ở mức 1,35 lần. |
| DamageToAlliesMultiplier | 0.25 | Thiệt hại do hỏa hoạn thân thiện thấp hơn nhiều so với bình thường ở mức 0,25x. |
| DayNightCycleSpeedMultiplier | 0.3 | Tốc độ chu kỳ ngày đêm thấp hơn nhiều so với bình thường ở mức 0,3 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 0.9 | Tốc độ phát hiện kẻ thù gần như bình thường ở mức 0,9 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.35 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 0.9 | Sát thương của kẻ thù đối với hàng phòng thủ gần như bình thường ở mức 0,9x. |
| EnemyHealthMultiplier | 1.2 | Khả năng phục hồi của kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| EnemyPlayerDamageMultiplier | 1.2 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,2 lần. |
| EnemySpawnRate | 0.7 | Tần số kẻ địch thấp hơn bình thường là 0,7 lần. |
| FatigueSpeedMultiplier | 1.4 | Tỷ lệ mệt mỏi cao hơn mức bình thường ở mức 1,4 lần. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 1.8 | Tỷ lệ hư hỏng thực phẩm cao hơn nhiều so với mức bình thường ở mức 1,8 lần. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.5 | Tỷ lệ đói cao hơn bình thường ở mức 1,5 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 0.9 | Độ bền của vật phẩm gần như bình thường ở mức 0,9 lần. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.7 | Trọng lượng vật phẩm dưới mức bình thường là 0,7 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 1.8 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 1,8 lần. |
| PowerSocketsOffAtNight | true | Ổ cắm điện tắt vào ban đêm. |
| RadiationDealsDamage | true | Bức xạ gây ra thiệt hại. |
| RefrigerationEffectivenessMultiplier | 0.65 | Tốc độ làm lạnh dưới mức bình thường là 0,65x. |
| ShowDeathMessages | true | Thông báo tử vong được hiển thị. |
| SinkRefillRate | 0.35 | Tốc độ nạp lại bồn rửa thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| StorageByTag | true | Tổ chức lưu trữ được gắn thẻ đã được bật. |
| StructuralSupportLimit | 0 | Giới hạn hỗ trợ kết cấu là áp suất tiêu chuẩn ở mức 0. |
| TaintedSinkWater | true | Nước bồn rửa có thể không an toàn. |
| ThirstSpeedMultiplier | 1.5 | Tốc độ khát cao hơn bình thường ở mức 1,5 lần. |
| WeatherFrequency | 2 | Tần suất thời tiết không thường xuyên. |

<a id="optional-adapter-selection-12"></a>
### Lựa chọn bộ điều hợp tùy chọn

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `logistics_extended_haul_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-miracle-audit"></a>
## Ngày 14 - Kiểm tra điều kì diệu về tủ quần áo

**ID hồ sơ:** `logistics_supply_closet_miracle_audit` **Điều kiện tổng thể:** Điều kiện thuận lợi (0.97/5) **Ý nghĩa đơn giản:** Điều kiện thuận lợi. Áp lực môi trường: Điều kiện thuận lợi là áp lực chính. Áp lực phục hồi: Điều kiện thuận lợi là yếu tố mạnh tiếp theo. **Lời khuyên của người chơi:** Tận dụng những điều kiện thuận lợi để khám phá, bổ sung, sửa chữa và chuẩn bị cho lần khởi động lại tiếp theo.

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
| Áp lực chiến đấu | thuận lợi (0.85/5) | Áp lực thù địch nhẹ hơn bình thường. |
| Áp lực sinh tồn | thuận lợi (0.86/5) | Nhu cầu sinh tồn hàng ngày rất dễ tha thứ. |
| Áp lực tài nguyên | cứu trợ (0.77/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | thuận lợi (1.58/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.19/5) | Các quy tắc về cái chết và phục hồi đều có tính tha thứ. |

<a id="encounter-context-13"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán tối thiểu**
- Chủ đề: **cứu trợ hậu cần**
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
| DetectionSpeedMultiplier | 0.5 | Tốc độ phát hiện kẻ thù thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.0 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0x. |
| EnemyAccuracy | 0 | Độ chính xác của kẻ thù kém. |
| EnemyDeployableDamageMultiplier | 0.1 | Sát thương của kẻ thù đối với hàng phòng thủ thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| EnemyHealthMultiplier | 0.7 | Khả năng phục hồi của kẻ thù dưới mức bình thường là 0,7 lần. |
| EnemyPlayerDamageMultiplier | 0.5 | Sát thương của kẻ thù đối với người chơi thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| EnemySpawnRate | 0.3 | Tần số kẻ thù thấp hơn nhiều so với bình thường ở mức 0,3 lần. |
| FatigueSpeedMultiplier | 0.35 | Tỷ lệ mỏi thấp hơn nhiều so với mức bình thường ở mức 0,35x. |
| FirstTimeStartingWeapon | 6 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 6. |
| FoodSpoilSpeedMultiplier | 0.25 | Tỷ lệ hư hỏng thực phẩm thấp hơn nhiều so với mức bình thường ở mức 0,25 lần. |
| GameDifficulty | 1 | Độ khó của trò chơi là tiêu chuẩn. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.35 | Tỷ lệ đói thấp hơn nhiều so với mức bình thường ở mức 0,35 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 6.0 | Độ bền của vật phẩm cực cao ở mức 6x. |
| ItemStackSizeMultiplier | 14 | Dung lượng ngăn xếp cực cao ở mức 14x. |
| ItemWeightMultiplier | 0.1 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,1 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 4.1 | Trải nghiệm tăng lên cực cao ở mức 4,1 lần. |
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
- `encounter_director`: `logistics_supply_closet_miracle_audit`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-of-count"></a>
## Ngày 15 - Độ chính xác của số đếm

**ID hồ sơ:** `logistics_accuracy_of_count` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (1.84/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực chiến đấu: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects-14"></a>
### Tác dụng chính

- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0x).
- Dung lượng ngăn xếp cực cao (8x).
- Kinh nghiệm thu được cao hơn nhiều so với mức bình thường (2,3x).
- Độ khó của trò chơi: khó.
- Ổ cắm điện tắt vào ban đêm.

<a id="domain-ratings-14"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (1.99/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (1.98/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.37/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (2.17/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.51/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-14"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán gay gắt**
- Chủ đề: **độ chính xác về hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.0 | Tốc độ tự chủ gần như bình thường ở mức 1x. |
| DamageToAlliesMultiplier | 0.0 | Sát thương của hỏa lực đồng minh thấp hơn nhiều so với mức bình thường ở mức 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | Tốc độ chu kỳ ngày đêm gần như bình thường ở mức 1x. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 1 | Hình phạt tử hình là tiêu chuẩn. |
| DetectionSpeedMultiplier | 1.2 | Tốc độ phát hiện kẻ thù cao hơn bình thường ở mức 1,2 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.3 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,3 lần. |
| EnemyAccuracy | 1 | Độ chính xác của kẻ thù bị giảm. |
| EnemyDeployableDamageMultiplier | 0.8 | Sát thương của kẻ thù đối với hàng phòng thủ dưới mức bình thường là 0,8 lần. |
| EnemyHealthMultiplier | 0.9 | Khả năng phục hồi của kẻ thù gần như bình thường ở mức 0,9x. |
| EnemyPlayerDamageMultiplier | 1.4 | Sát thương của kẻ thù đối với người chơi cao hơn bình thường ở mức 1,4 lần. |
| EnemySpawnRate | 0.9 | Tần số kẻ thù gần như bình thường ở mức 0,9 lần. |
| FatigueSpeedMultiplier | 1.25 | Tỷ lệ mỏi cao hơn bình thường ở mức 1,25 lần. |
| FirstTimeStartingWeapon | 4 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 4. |
| FoodSpoilSpeedMultiplier | 1.0 | Tỷ lệ hư hỏng thực phẩm gần như bình thường ở mức 1x. |
| GameDifficulty | 2 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.0 | Tỷ lệ đói gần như bình thường ở mức 1x. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.0 | Độ bền của vật phẩm gần như bình thường ở mức 1x. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.5 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 2.3 | Kinh nghiệm đạt được cao hơn nhiều so với mức bình thường ở mức 2,3 lần. |
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
- `encounter_director`: `logistics_accuracy_of_count`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-inventory"></a>
## Ngày 16 - Khoảng không quảng cáo thử nghiệm

**ID hồ sơ:** `logistics_experimental_inventory` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.03/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực môi trường: Áp suất tiêu chuẩn là áp lực chính. Áp lực sống sót: Áp suất tiêu chuẩn là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Kiểm tra nguồn điện, nước, nơi trú ẩn và khả năng bảo vệ khỏi mối nguy hiểm trước khi rời căn cứ.

<a id="main-effects-15"></a>
### Tác dụng chính

- Độ khó của trò chơi: rất khó.
- Một số bức xạ có thể không có cảnh báo rõ ràng.
- Tần suất thời tiết: rất thường xuyên.
- Sát thương do hỏa lực đồng minh thấp hơn nhiều so với mức bình thường (0x).
- Sức bền bị mất khi chết thấp hơn nhiều so với mức bình thường (0x).

<a id="domain-ratings-15"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | tiêu chuẩn (2.2/5) | Áp lực thù địch gần như bình thường. |
| Áp lực sinh tồn | tiêu chuẩn (2.36/5) | Nhu cầu sinh tồn hàng ngày gần như bình thường. |
| Áp lực tài nguyên | thuận lợi (1.14/5) | Nguồn cung cấp và điều kiện vận chuyển thuận lợi. |
| Áp lực môi trường | tiêu chuẩn (2.59/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | thuận lợi (1.67/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-15"></a>
### Bối cảnh gặp phải

- Cấp: **những cuộc chạm trán gay gắt**
- Chủ đề: **thử nghiệm hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.2 | Tỷ lệ tiểu không kiểm soát cao hơn bình thường ở mức 1,2 lần. |
| DamageToAlliesMultiplier | 0.0 | Sát thương của hỏa lực đồng minh thấp hơn nhiều so với mức bình thường ở mức 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | Tốc độ chu kỳ ngày đêm cao hơn bình thường ở mức 1,5 lần. |
| DayNightCycleState | 1 | Trạng thái ngày đêm thiên về ngày. |
| DeathPenalties | 2 | Hình phạt tử hình rất nặng. |
| DetectionSpeedMultiplier | 0.5 | Tốc độ phát hiện kẻ thù thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| DisableResearchMinigame | true | Bỏ qua nghiên cứu đã được bật. |
| DurabilityLossOnDeathMultiplier | 0.0 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0x. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 0.7 | Sát thương của kẻ thù đối với hàng phòng thủ dưới mức bình thường là 0,7 lần. |
| EnemyHealthMultiplier | 1.3 | Khả năng phục hồi của kẻ thù cao hơn bình thường ở mức 1,3 lần. |
| EnemyPlayerDamageMultiplier | 0.9 | Sát thương của kẻ thù lên người chơi gần như bình thường ở mức 0,9 lần. |
| EnemySpawnRate | 1.1 | Tần số kẻ thù gần như bình thường ở mức 1,1 lần. |
| FatigueSpeedMultiplier | 0.8 | Tỷ lệ mệt mỏi thấp hơn mức bình thường ở mức 0,8 lần. |
| FirstTimeStartingWeapon | 6 | Bắt đầu cung cấp vũ khí là điều kiện thuận lợi ở mức 6. |
| FoodSpoilSpeedMultiplier | 0.4 | Tỷ lệ hư hỏng thực phẩm thấp hơn nhiều so với mức bình thường ở mức 0,4 lần. |
| GameDifficulty | 3 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 0.8 | Tỷ lệ đói thấp hơn mức bình thường ở mức 0,8 lần. |
| InvisibleRadiation | true | Một số bức xạ có thể không có cảnh báo rõ ràng. |
| ItemDurabilityMultiplier | 5.0 | Độ bền của vật phẩm cực cao ở mức 5x. |
| ItemStackSizeMultiplier | 8 | Dung lượng ngăn xếp cực cao ở mức 8x. |
| ItemWeightMultiplier | 0.1 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,1 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 4.6 | Trải nghiệm thu được cực cao ở mức 4,6 lần. |
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
- `encounter_director`: `logistics_experimental_inventory`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-logistics-exam"></a>
## Ngày 17 - Kỳ thi cuối kỳ về hậu cần

**ID hồ sơ:** `logistics_final_logistics_exam` **Điều kiện tổng thể:** Áp suất tiêu chuẩn (2.55/5) **Ý nghĩa đơn giản:** Áp suất tiêu chuẩn. Áp lực chiến đấu: Điều kiện đòi hỏi là áp lực chính. Áp lực sinh tồn: Điều kiện đòi hỏi là yếu tố mạnh nhất tiếp theo. **Lời khuyên của người chơi:** Mang theo đạn dược, giữ lộ trình rút lui và tránh giao tranh mà không được hỗ trợ.

<a id="main-effects-16"></a>
### Tác dụng chính

- Độ khó của trò chơi: rất khó.
- Tần suất thời tiết: rất thường xuyên.
- Dung lượng ngăn xếp cực cao (14x).
- Kinh nghiệm thu được là cực kỳ (4,3x).
- Nước bồn rửa có thể không an toàn.

<a id="domain-ratings-16"></a>
### Xếp hạng tên miền

| Khu vực | Xếp hạng | Ý nghĩa |
|---|---|---|
| Áp lực chiến đấu | đòi hỏi (3.19/5) | Áp lực thù địch tăng cao; chuẩn bị trước khi tham gia. |
| Áp lực sinh tồn | đòi hỏi (2.72/5) | Đói, khát, mệt mỏi hoặc vệ sinh cần được chú ý nhiều hơn. |
| Áp lực tài nguyên | thuận lợi (1.57/5) | Điều kiện cung cấp và vận chuyển gần như bình thường. |
| Áp lực môi trường | tiêu chuẩn (2.55/5) | Điều kiện môi trường gần như bình thường. |
| Áp lực phục hồi | tiêu chuẩn (1.81/5) | Quy tắc chết và phục hồi gần như bình thường. |

<a id="encounter-context-16"></a>
### Bối cảnh gặp phải

- Cấp: **các cuộc chạm trán với capstone**
- Chủ đề: **năng lực hậu cần**
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
| BaseInventorySize | 18 | Kích thước khoảng không quảng cáo cơ bản là điều kiện thuận lợi ở mức 18. |
| BonusPerkPoints | 4 | Điểm thưởng đặc quyền là điều kiện thuận lợi ở mức 4. |
| BridgeSupports | 0 | Hỗ trợ cầu nối giới hạn là áp suất tiêu chuẩn ở mức 0. |
| ContinenceSpeedMultiplier | 1.1 | Tỷ lệ tiểu không kiểm soát gần như bình thường ở mức 1,1 lần. |
| DamageToAlliesMultiplier | 0.1 | Sát thương của hỏa lực thân thiện thấp hơn nhiều so với mức bình thường ở mức 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | Tốc độ chu kỳ ngày đêm cao hơn bình thường ở mức 1,45 lần. |
| DayNightCycleState | 0 | Trạng thái ngày đêm là chu kỳ bình thường. |
| DeathPenalties | 2 | Hình phạt tử hình rất nặng. |
| DetectionSpeedMultiplier | 1.9 | Tốc độ phát hiện kẻ thù cao hơn nhiều so với bình thường ở mức 1,9 lần. |
| DisableResearchMinigame | false | Nghiên cứu sử dụng trò chơi nhỏ thông thường. |
| DurabilityLossOnDeathMultiplier | 0.5 | Độ bền bị mất khi chết thấp hơn nhiều so với mức bình thường ở mức 0,5 lần. |
| EnemyAccuracy | 2 | Độ chính xác của kẻ thù là tiêu chuẩn. |
| EnemyDeployableDamageMultiplier | 2.0 | Sát thương của kẻ địch lên hàng phòng thủ cao hơn nhiều so với mức bình thường ở mức gấp 2 lần. |
| EnemyHealthMultiplier | 2.1 | Khả năng phục hồi của kẻ thù cao hơn nhiều so với mức bình thường ở mức 2,1 lần. |
| EnemyPlayerDamageMultiplier | 2.2 | Sát thương của kẻ thù gây ra cho người chơi cao hơn nhiều so với mức bình thường ở mức 2,2 lần. |
| EnemySpawnRate | 2.1 | Tần số kẻ thù cao hơn nhiều so với bình thường ở mức 2,1 lần. |
| FatigueSpeedMultiplier | 1.25 | Tỷ lệ mỏi cao hơn bình thường ở mức 1,25 lần. |
| FirstTimeStartingWeapon | 0 | Bắt đầu cung cấp vũ khí là áp suất tiêu chuẩn ở mức 0. |
| FoodSpoilSpeedMultiplier | 1.6 | Tỷ lệ hư hỏng thực phẩm cao hơn bình thường ở mức 1,6 lần. |
| GameDifficulty | 3 | Độ khó của trò chơi rất khó. |
| HardcoreMode | false | Chế độ Hardcore bị tắt. |
| HomeWorlds | true | Hành vi ở thế giới gia đình được bật. |
| HostAccessPlayerCorpses | true | Máy chủ có thể truy cập xác của người chơi để được hỗ trợ phục hồi. |
| HungerSpeedMultiplier | 1.35 | Tỷ lệ đói cao hơn bình thường ở mức 1,35 lần. |
| InvisibleRadiation | false | Quy tắc này không làm cho bức xạ trở nên vô hình. |
| ItemDurabilityMultiplier | 1.0 | Độ bền của vật phẩm gần như bình thường ở mức 1x. |
| ItemStackSizeMultiplier | 14 | Dung lượng ngăn xếp cực cao ở mức 14x. |
| ItemWeightMultiplier | 0.5 | Trọng lượng vật phẩm thấp hơn nhiều so với bình thường ở mức 0,5 lần. |
| LootRespawnEnabled | true | Chiến lợi phẩm có thể được trả lại sau khi thu thập. |
| PlayerFurnitureDestruction | false | Nội thất do người chơi chế tạo được bảo vệ khỏi quy tắc này. |
| PlayerXPGainMultiplier | 4.3 | Trải nghiệm tăng lên cực cao ở mức 4,3 lần. |
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
- `encounter_director`: `logistics_final_logistics_exam`
- `lethal_lasers`: `overcharged_high_hazard`
