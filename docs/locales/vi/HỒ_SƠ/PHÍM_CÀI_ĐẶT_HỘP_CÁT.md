<a id="randomday---sandboxsettings-dictionary"></a>
# RandomDay - SandboxSettings từ điển

> **Nguồn tiếng Anh chuẩn:** [SANDBOX_SETTINGS_KEYS.md](../../../profiles/SANDBOX_SETTINGS_KEYS.md). Tài liệu được bản địa hóa này bảo toàn chính xác các lệnh, đường dẫn, khóa, giá trị trạng thái, hàm băm và tên tệp. Nếu cách diễn đạt kỹ thuật khác nhau, hãy sử dụng nguồn tiếng Anh.


Phiên bản: `v0.3.16-alpha`

Đây là từ điển thời gian chạy hoàn chỉnh cho 46 khóa SandboxSettings được mọi cấu hình RandomDay sử dụng. Từ điển chuyển đổi các giá trị thô thành điểm miền và giới hạn player/admin giới hạn; nó không bao giờ thay thế giá trị thô.

| Khóa | Ý nghĩa của trình phát | Miền | Loại | Đường cơ sở | Khó hơn khi |
|---|---|---|---|---:|---|
| AllowCharacterReset | đặt lại ký tự | khôi phục | boolean | n/a | ngữ cảnh |
| AllowIronMode | chế độ sắt | khôi phục | boolean | n/a | ngữ cảnh |
| AllowPagers | máy nhắn tin | tài nguyên | boolean | n/a | ngữ cảnh |
| AllowRecipeSharing | chia sẻ công thức | tài nguyên | boolean | n/a | ngữ cảnh |
| AllowTransmog | truyền | tài nguyên | boolean | n/a | ngữ cảnh |
| BaseInventorySize | kích thước khoảng không quảng cáo cơ sở | tài nguyên | số | 12 | thấp |
| BonusPerkPoints | điểm thưởng đặc quyền | tài nguyên | số | 0 | thấp |
| BridgeSupports | giới hạn hỗ trợ cầu | môi trường | số | 0 | cao |
| ContinenceSpeedMultiplier | tỷ lệ tiếp tục | sự sống sót | hệ số nhân | 1.0 | cao |
| DamageToAlliesMultiplier | sát thương do hỏa lực thân thiện | chiến đấu | hệ số nhân | 1.0 | cao |
| DayNightCycleSpeedMultiplier | tốc độ chu kỳ ngày đêm | môi trường | hệ số nhân | 1.0 | cao |
| DayNightCycleState | trạng thái ngày đêm | môi trường | enum | n/a | ngữ cảnh |
| DeathPenalties | hình phạt tử hình | khôi phục | enum | n/a | ngữ cảnh |
| DetectionSpeedMultiplier | tốc độ phát hiện kẻ thù | chiến đấu | hệ số nhân | 1.0 | cao |
| DisableResearchMinigame | trò chơi nhỏ nghiên cứu | tài nguyên | boolean | n/a | ngữ cảnh |
| DurabilityLossOnDeathMultiplier | mất độ bền khi chết | khôi phục | hệ số nhân | 1.0 | cao |
| EnemyAccuracy | độ chính xác của kẻ thù | chiến đấu | enum | n/a | ngữ cảnh |
| EnemyDeployableDamageMultiplier | sát thương của kẻ thù lên hàng phòng thủ | chiến đấu | hệ số nhân | 1.0 | cao |
| EnemyHealthMultiplier | khả năng phục hồi của kẻ thù | chiến đấu | hệ số nhân | 1.0 | cao |
| EnemyPlayerDamageMultiplier | kẻ địch gây sát thương cho người chơi | chiến đấu | hệ số nhân | 1.0 | cao |
| EnemySpawnRate | tần số địch | chiến đấu | hệ số nhân | 1.0 | cao |
| FatigueSpeedMultiplier | tỷ lệ mỏi | sự sống sót | hệ số nhân | 1.0 | cao |
| FirstTimeStartingWeapon | bắt đầu cung cấp vũ khí | tài nguyên | số | 0 | thấp |
| FoodSpoilSpeedMultiplier | làm hỏng thực phẩm | tài nguyên | hệ số nhân | 1.0 | cao |
| GameDifficulty | độ khó của trò chơi | chiến đấu | enum | n/a | ngữ cảnh |
| HardcoreMode | chế độ hạng nặng | khôi phục | boolean | n/a | ngữ cảnh |
| HomeWorlds | thế giới gia đình | môi trường | boolean | n/a | ngữ cảnh |
| HostAccessPlayerCorpses | quyền truy cập vào xác máy chủ | khôi phục | boolean | n/a | ngữ cảnh |
| HungerSpeedMultiplier | tỷ lệ đói | sự sống sót | hệ số nhân | 1.0 | cao |
| InvisibleRadiation | bức xạ vô hình | môi trường | boolean | n/a | ngữ cảnh |
| ItemDurabilityMultiplier | độ bền của vật phẩm | tài nguyên | hệ số nhân | 1.0 | thấp |
| ItemStackSizeMultiplier | dung lượng ngăn xếp | tài nguyên | hệ số nhân | 1.0 | thấp |
| ItemWeightMultiplier | trọng lượng vật phẩm | tài nguyên | hệ số nhân | 1.0 | cao |
| LootRespawnEnabled | hồi sinh cướp bóc | tài nguyên | boolean | n/a | ngữ cảnh |
| PlayerFurnitureDestruction | phá hủy đồ đạc của người chơi | chiến đấu | boolean | n/a | ngữ cảnh |
| PlayerXPGainMultiplier | tăng kinh nghiệm | tài nguyên | hệ số nhân | 1.0 | thấp |
| PowerSocketsOffAtNight | sức mạnh ban đêm | môi trường | boolean | n/a | ngữ cảnh |
| RadiationDealsDamage | thiệt hại do bức xạ | môi trường | boolean | n/a | ngữ cảnh |
| RefrigerationEffectivenessMultiplier | làm lạnh | tài nguyên | hệ số nhân | 1.0 | thấp |
| ShowDeathMessages | thông báo tử thần | khôi phục | boolean | n/a | ngữ cảnh |
| SinkRefillRate | tốc độ nạp lại bồn rửa | tài nguyên | hệ số nhân | 1.0 | thấp |
| StorageByTag | lưu trữ theo thẻ | tài nguyên | boolean | n/a | ngữ cảnh |
| StructuralSupportLimit | giới hạn hỗ trợ cấu trúc | môi trường | số | 0 | cao |
| TaintedSinkWater | nước bồn rửa bị nhiễm độc | sự sống sót | boolean | n/a | ngữ cảnh |
| ThirstSpeedMultiplier | tỷ lệ khát | sự sống sót | hệ số nhân | 1.0 | cao |
| WeatherFrequency | tần suất thời tiết | môi trường | enum | n/a | ngữ cảnh |

<a id="score-bands"></a>
## Dải điểm

| Chấm điểm | Xếp hạng | Ý nghĩa đơn giản |
|---:|---|---|
| 0.8 | Điều kiện hỗ trợ | cứu trợ |
| 1.7 | Điều kiện thuận lợi | thuận lợi |
| 2.6 | Áp suất tiêu chuẩn | tiêu chuẩn |
| 3.4 | Đòi hỏi điều kiện | đòi hỏi |
| 4.2 | Điều kiện nghiêm trọng | nghiêm trọng |
| 5.0 | Điều kiện khắc nghiệt | cực đoan |
