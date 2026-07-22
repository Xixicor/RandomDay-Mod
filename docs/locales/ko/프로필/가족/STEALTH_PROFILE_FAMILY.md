<a id="randomday---stealth-family"></a>
# RandomDay - 스텔스 가족

> **표준 영어 소스:** [stealth.md](../../../../profiles/families/stealth.md). 이 현지화된 문서는 정확한 명령, 경로, 키, 상태 값, 해시 및 파일 이름을 보존합니다. 기술적인 표현이 다를 경우 영어 소스를 사용하세요.


버전: `v0.3.16-alpha`

탐지하지 마세요. 시설에서 평소보다 더 열심히 듣고 있습니다.

**플레이 스타일:**회피 및 감시 압력 **메시지 톤:**속삭이는 기업 감시

<a id="17-day-index"></a>
## 17일 지수

| 일 | 프로필 | 조건 | 주요 압력 |
|---:|---|---|---|
| 1 | 속삭이는 방향 | 표준 압력 (2.03/5) | 전투 압박 |
| 2 | 공인된 침묵 | 바람직한 조건 (1.43/5) | 환경적 압박 |
| 3 | 바닥이 당신의 말을 들었다 | 표준 압력 (2.34/5) | 생존 압박 |
| 4 | 주머니에 담긴 증거 | 바람직한 조건 (1.63/5) | 전투 압박 |
| 5 | 침묵의 보안 수색 | 표준 압력 (2.21/5) | 전투 압박 |
| 6 | 예측: 낮은 프로필 | 표준 압력 (2.2/5) | 전투 압박 |
| 7 | 다크 루트 정리 | 표준 압력 (2.22/5) | 전투 압박 |
| 8 | 보이지 않는 교통 | 표준 압력 (1.99/5) | 전투 압박 |
| 9 | 목격자 없는 배급 | 표준 압력 (2.38/5) | 생존 압박 |
| 10 | 조용한 수리 창 | 바람직한 조건 (1.19/5) | 환경적 압박 |
| 11 | 관찰 훈련 | 바람직한 조건 (1.61/5) | 환경적 압박 |
| 12 | 블랙 랩 사각지대 | 가혹한 조건 (2.62/5) | 전투 압박 |
| 13 | 긴 침묵 교대 | 표준 압력 (2.55/5) | 생존 압박 |
| 14 | 허위 빈 홀 | 바람직한 조건 (1.34/5) | 전투 압박 |
| 15 | 탐지 감사 | 표준 압력 (2.26/5) | 전투 압박 |
| 16 | 실험적 침묵 | 표준 압력 (2.21/5) | 전투 압박 |
| 17 | 최종 불출현 | 가혹한 조건 (2.83/5) | 전투 압박 |

<a id="day-1---whispered-orientation"></a>
## 1일차 - 속삭이는 오리엔테이션

**프로필 ID:** `stealth_whispered_orientation` **전체 조건:** 표준 압력 (2.03/5) **일반적인 의미:** 표준 압력. 전투 압력: 표준 압력이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.25x).
- 적 탐지 속도는 정상보다 훨씬 높습니다 (2x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0.25x).
- 스택 용량은 보통보다 훨씬 높습니다. (2x).

<a id="domain-ratings"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.37/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 표준 (1.9/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 표준 (1.73/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.22/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.5/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **조용한 순찰 오리엔테이션**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0.07**
- 특별 이벤트 기회: **2**

<a id="exact-sandbox-settings"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 12 | 기본 인벤토리 크기는 12에서 표준 압력입니다. |
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.0 | 억제율은 1x로 정상에 가깝습니다. |
| DamageToAlliesMultiplier | 0.25 | 아군 사격 피해는 0.25x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 2.0 | 적 탐지 속도가 정상보다 2배로 훨씬 빠릅니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.25 | 사망 시 내구도 손실은 평소보다 훨씬 낮습니다. 0.25x. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.3 | 적 회복력이 1.3배로 정상보다 높습니다. |
| EnemyPlayerDamageMultiplier | 1.7 | 플레이어에 대한 적 피해가 일반 각도보다 훨씬 높습니다. 1.7배. |
| EnemySpawnRate | 0.6 | 적 빈도는 0.6x로 정상보다 낮습니다. |
| FatigueSpeedMultiplier | 1.0 | 피로율은 1x로 보통에 가깝습니다. |
| FirstTimeStartingWeapon | 0 | 시작 무기 보급이 표준입니다. 압력은 0입니다. |
| FoodSpoilSpeedMultiplier | 1.0 | 음식 부패는 1x로 거의 정상입니다. |
| GameDifficulty | 1 | 게임 난이도는 표준입니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.0 | 배고픔 비율은 1배로 정상에 가깝습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.5 | 아이템 내구도는 1.5배로 정상보다 높습니다. |
| ItemStackSizeMultiplier | 2.0 | 스택 용량은 2배로 정상보다 훨씬 높습니다. |
| ItemWeightMultiplier | 0.9 | 아이템 무게는 2배로 정상에 가깝습니다. 0.9x. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 1.7 | 경험치 획득량은 1.7배로 평소보다 훨씬 높습니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 1.0 | 냉장은 1x로 정상에 가깝습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 1.0 | 싱크대 보충률은 1x로 정상에 가깝습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 1.0 | 목마름 발생률은 1x로 정상에 가깝습니다. |
| WeatherFrequency | 3 | 날씨 빈도는 정상입니다. |

<a id="optional-adapter-selection"></a>
### 선택적 어댑터 선택

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `stealth_whispered_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---authorized-silence"></a>
## 2일차 - 승인된 침묵

**프로필 ID:** `stealth_authorized_silence` **전체 조건:** 유리한 조건 (1.43/5) **일반적인 의미:** 유리한 조건. 환경 압력: 표준 압력이 주요 압력입니다. 전투 압력: 유리한 조건이 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

<a id="main-effects-1"></a>
### 주요 효과

- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0x).
- 아이템 내구성이 최고입니다 (4x).
- 스택 용량이 최고입니다 (8x).
- 경험치 획득이 보통보다 훨씬 높습니다 (2.4x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0.05x).

<a id="domain-ratings-1"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 좋음 (1.59/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 좋음 (1.34/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 좋음 (1.08/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (1.91/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.2/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-1"></a>
### 대우 상황

- 계층: **가벼운 조우**
- 테마: **조용한 순찰 준비**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0.028**
- 특별 이벤트 기회: **0**

<a id="exact-sandbox-settings-1"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 26 | 기본 인벤토리 크기는 26의 구호 조건입니다. |
| BonusPerkPoints | 7 | 보너스 혜택 포인트는 7의 구호 조건입니다. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 0.65 | 자제율은 0.65x로 정상보다 낮습니다. |
| DamageToAlliesMultiplier | 0.0 | 아군 사격 피해는 0x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 0.9 | 낮-밤 주기 속도는 0.9x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 0 | 사망 처벌은 최소화됩니다. |
| DetectionSpeedMultiplier | 1.2 | 적 탐지 속도가 1.2x로 정상보다 높습니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.05 | 사망 시 내구성 손실은 0.05x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 3 | 적의 정확도는 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.1 | 적 방어에 대한 피해가 0.1x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 1.1 | 적 회복력은 1.1x로 정상에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 1.1 | 플레이어에 대한 적 피해는 1.1x로 정상에 가깝습니다. |
| EnemySpawnRate | 0.3 | 적 빈도가 0.3x로 평소보다 훨씬 낮습니다. |
| FatigueSpeedMultiplier | 0.65 | 피로율이 0.65x로 정상보다 낮습니다. |
| FirstTimeStartingWeapon | 2 | 시작 무기 보급은 표준 압력 2입니다. |
| FoodSpoilSpeedMultiplier | 0.75 | 음식 부패는 아래입니다. 보통은 0.75x입니다. |
| GameDifficulty | 1 | 게임 난이도는 표준입니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 0.65 | 허기율은 0.65x로 보통보다 낮습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 4.0 | 아이템 내구도는 4배로 최고입니다. |
| ItemStackSizeMultiplier | 8.0 | 쌓기 용량은 8배로 최고입니다. |
| ItemWeightMultiplier | 0.5 | 아이템 무게는 0.5x로 보통보다 훨씬 낮습니다. |
| LootRespawnEnabled | true | 수집 후 전리품이 돌아올 수 있습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.4 | 경험치 획득은 2.4x로 정상보다 훨씬 높습니다. |
| PowerSocketsOffAtNight | false | 밤에도 전원 소켓을 사용할 수 있습니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 1.5 | 냉장고는 1.5배로 평소보다 높습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 2.0 | 싱크대 재충전 속도는 평소보다 훨씬 높습니다. 2x. |
| StorageByTag | false | 태그된 보관 정리가 비활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 0.65 | 목마름 발생률은 0.65x로 정상보다 낮습니다. |
| WeatherFrequency | 2 | 날씨 빈도가 가끔 있습니다. |

<a id="optional-adapter-selection-1"></a>
### 선택적 어댑터 선택

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `stealth_authorized_silence`
- `lethal_lasers`: `low_hazard`

<a id="day-3---the-floor-heard-you"></a>
## 3일차 - 현장이 여러분의 이야기를 들었습니다

**프로필 ID:** `stealth_the_floor_heard_you` **전체 조건:** 표준 압력 (2.34/5) **일반적인 의미:** 표준 압력. 생존 압력: 까다로운 조건이 주요 압력입니다. 전투 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 음식과 물을 가지고 다니고, 장거리 여행 전에 휴식을 취하고, 안전한 정지를 계획하세요.

<a id="main-effects-2"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 싱크대 물은 안전하지 않을 수 있습니다.
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.25x).
- 적 탐지 속도는 정상보다 훨씬 높습니다 (2x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0.25x).

<a id="domain-ratings-2"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.53/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 까다로운 (2.93/5) | 배고픔, 갈증, 피로 또는 위생에 더 많은 주의가 필요함. |
| 자원 압박 | 표준 (1.88/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.22/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.5/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-2"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **조용한 순찰 바이오 자원**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0.091**
- 특별 이벤트 기회: **8**

<a id="exact-sandbox-settings-2"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 12 | 기본 인벤토리 크기는 12에서 표준 압력입니다. |
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.45 | 자제율이 정상보다 높음 1.45x입니다. |
| DamageToAlliesMultiplier | 0.25 | 아군 사격 피해는 0.25x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 2.0 | 적 탐지 속도가 정상보다 2배로 훨씬 빠릅니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.25 | 사망 시 내구도 손실은 평소보다 훨씬 낮습니다. 0.25x. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.9 | 방어에 대한 적 피해는 0.9x로 정상에 가깝습니다. |
| EnemyHealthMultiplier | 1.4 | 적의 회복력은 1.2x로 정상보다 높습니다. 1.4x. |
| EnemyPlayerDamageMultiplier | 1.8 | 플레이어가 받는 적 피해는 1.8배로 평소보다 훨씬 높습니다. |
| EnemySpawnRate | 0.6 | 적 빈도는 0.6x로 정상보다 낮습니다. |
| FatigueSpeedMultiplier | 1.1 | 피로율은 1.1x로 보통에 가깝습니다. |
| FirstTimeStartingWeapon | 0 | 시작 무기 보급이 표준입니다. 압력은 0입니다. |
| FoodSpoilSpeedMultiplier | 1.25 | 음식 부패도는 1.25x로 보통보다 높습니다. |
| GameDifficulty | 2 | 게임 난이도가 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.3 | 배고픔 비율이 1.3배로 정상보다 높습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.25 | 아이템 내구도는 1.25x로 정상보다 높습니다. |
| ItemStackSizeMultiplier | 2.0 | 스택 용량은 2배로 정상보다 훨씬 높습니다. |
| ItemWeightMultiplier | 0.9 | 아이템 무게는 2배로 정상에 가깝습니다. 0.9x. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.0 | 경험치 획득 2배로 정상보다 훨씬 높습니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 0.75 | 냉동은 0.75x로 정상보다 낮습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.25 | 싱크대 재충전 속도는 0.25x로 정상보다 훨씬 낮습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | true | 싱크대 물은 안전하지 않을 수 있습니다. |
| ThirstSpeedMultiplier | 1.9 | 목마름 발생률은 1.9x로 정상보다 훨씬 높습니다. |
| WeatherFrequency | 3 | 날씨 빈도는 정상입니다. |

<a id="optional-adapter-selection-2"></a>
### 선택적 어댑터 선택

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `stealth_the_floor_heard_you`
- `lethal_lasers`: `standard_safety`

<a id="day-4---pocketed-evidence"></a>
## 4일차 - 주머니에 담긴 증거

**프로필 ID:** `stealth_pocketed_evidence` **전체 조건:** 유리한 조건 (1.63/5) **일반적인 의미:** 유리한 조건. 전투 압력: 표준 압력이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

<a id="main-effects-3"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 아이템 내구성이 최고입니다 (2.5x).
- 스택 용량이 최고입니다 (14x).
- 경험치 획득량이 엄청납니다 (2.6x).
- 싱크 리필 비율이 극단적입니다 (2.5x).

<a id="domain-ratings-3"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (1.99/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 좋음 (1.5/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 좋음 (0.99/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (1.93/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.44/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-3"></a>
### 대우 상황

- 계층: **가벼운 조우**
- 테마: **조용한 순찰 전리품 이동성**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0.056**
- 특별 이벤트 기회: **2**

<a id="exact-sandbox-settings-3"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 30 | 기본 인벤토리 크기는 30의 구호 조건입니다. |
| BonusPerkPoints | 3 | 보너스 혜택 포인트는 3의 유리한 조건입니다. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 0.75 | 자제율은 정상보다 낮습니다. 0.75x. |
| DamageToAlliesMultiplier | 0.25 | 아군 사격 피해는 0.25x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 1.6 | 적 감지 속도가 정상보다 높습니다. 1.6x. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.05 | 사망 시 내구성 손실은 0.05x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.5 | 방어에 대한 적 피해는 0.5x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 1.2 | 적의 탄력성은 1.2x. |
| EnemyPlayerDamageMultiplier | 1.4 | 플레이어가 받는 적 피해는 1.4x로 정상보다 높습니다. |
| EnemySpawnRate | 0.4 | 적의 빈도는 0.4x로 정상보다 훨씬 낮습니다. |
| FatigueSpeedMultiplier | 0.75 | 피로도는 0.75x로 정상보다 낮습니다. |
| FirstTimeStartingWeapon | 6 | 시작 무기 보급이 6으로 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 0.6 | 음식 부패가 0.6x로 정상보다 낮습니다. |
| GameDifficulty | 1 | 게임 난이도는 표준입니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 0.75 | 배고픔 비율은 0.75배로 평소보다 낮습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 2.5 | 아이템 내구도는 2.5배로 극단적입니다. |
| ItemStackSizeMultiplier | 14.0 | 스택 용량은 14배로 극단적입니다. |
| ItemWeightMultiplier | 0.3 | 아이템 무게는 0.3배로 평소보다 훨씬 낮습니다. |
| LootRespawnEnabled | true | 수집 후 전리품이 돌아올 수 있습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.6 | 경험치 획득량은 2.6x로 극단적입니다. |
| PowerSocketsOffAtNight | false | 밤에도 전원 소켓을 사용할 수 있습니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 1.5 | 냉장고는 1.5배로 평소보다 높습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 2.5 | 싱크대 리필 비율은 2.5x로 극단적입니다. |
| StorageByTag | false | 태그된 보관 정리가 비활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 0.75 | 갈증 비율은 0.75x로 정상보다 낮습니다. |
| WeatherFrequency | 2 | 날씨 빈도가 가끔 있습니다. |

<a id="optional-adapter-selection-3"></a>
### 선택적 어댑터 선택

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `stealth_pocketed_evidence`
- `lethal_lasers`: `low_hazard`

<a id="day-5---silent-security-sweep"></a>
## 5일차 - 조용한 보안 청소

**프로필 ID:** `stealth_silent_security_sweep` **전체 조건:** 표준 압력 (2.21/5) **일반적인 의미:** 표준 압력. 전투 압력: 까다로운 조건이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-4"></a>
### 주요 효과

- 적 탐지 속도가 극도로 빠릅니다 (3.8x).
- 적 정확도: 매우 정확합니다.
- 경험치 획득이 보통보다 훨씬 높습니다 (2.4x).
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.1x).
- 선수에 대한 적 피해가 정상보다 훨씬 높습니다 (2.2x).

<a id="domain-ratings-4"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 까다로운 (2.92/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (1.94/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (1.6/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.17/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.51/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-4"></a>
### 대우 상황

- 계층: **심각한 전투**
- 테마: **조용한 순찰 보안**
- 최대 활성 그룹: **2**
- 혼합 만남 기회: **0.119**
- 특별 이벤트 기회: **14**

<a id="exact-sandbox-settings-4"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 12 | 기본 인벤토리 크기는 12에서 표준 압력입니다. |
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.0 | 억제율은 1x로 정상에 가깝습니다. |
| DamageToAlliesMultiplier | 0.1 | 아군 사격 피해는 0.1x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 3.8 | 적 탐지 속도가 극심합니다. 3.8x. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.3 | 사망 시 내구성 손실은 0.3x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.5 | 적 회복력이 보통보다 1.5배 높습니다. |
| EnemyPlayerDamageMultiplier | 2.2 | 플레이어에 대한 적 피해는 정상보다 훨씬 높습니다. 2.2x. |
| EnemySpawnRate | 0.9 | 적 빈도는 0.9x로 정상에 가깝습니다. |
| FatigueSpeedMultiplier | 1.15 | 피로율은 1.15x로 정상에 가깝습니다. |
| FirstTimeStartingWeapon | 4 | 시작 무기 보급은 4에서 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 1.0 | 음식 부패는 1x로 거의 정상입니다. |
| GameDifficulty | 2 | 게임 난이도가 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.0 | 배고픔 비율은 1배로 정상에 가깝습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.25 | 아이템 내구도는 1.25x로 정상보다 높습니다. |
| ItemStackSizeMultiplier | 2.0 | 스택 용량은 2배로 정상보다 훨씬 높습니다. |
| ItemWeightMultiplier | 0.9 | 아이템 무게는 2배로 정상에 가깝습니다. 0.9x. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.4 | 경험치 획득은 2.4x로 정상보다 훨씬 높습니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 1.0 | 냉장은 1x로 정상에 가깝습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 1.0 | 싱크대 보충률은 1x로 정상에 가깝습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 1.0 | 목마름 발생률은 1x로 정상에 가깝습니다. |
| WeatherFrequency | 2 | 날씨 빈도가 가끔 있습니다. |

<a id="optional-adapter-selection-4"></a>
### 선택적 어댑터 선택

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `stealth_silent_security_sweep`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---forecast-low-profile"></a>
## 6일차 - 예보: 낮은 프로필

**프로필 ID:** `stealth_forecast_low_profile` **전체 조건:** 표준 압력 (2.2/5) **일반적인 의미:** 표준 압력. 전투 압력: 표준 압력이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-5"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 날씨 빈도: 매우 빈번함.
- 적 탐지 속도는 정상보다 훨씬 높습니다 (2.1x).
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.25x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0.25x).

<a id="domain-ratings-5"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.57/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 표준 (2.1/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 표준 (1.83/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.52/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.5/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-5"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **조용한 순찰 날씨**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0.091**
- 특별 이벤트 기회: **10**

<a id="exact-sandbox-settings-5"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 12 | 기본 인벤토리 크기는 12에서 표준 압력입니다. |
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.0 | 억제율은 1x로 정상에 가깝습니다. |
| DamageToAlliesMultiplier | 0.25 | 아군 사격 피해는 0.25x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.25 | 낮과 밤의 주기 속도가 평소보다 높습니다. 1.25x. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 2.1 | 적 감지 속도는 20초에서 정상보다 훨씬 높습니다. 2.1x. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.25 | 사망 시 내구도 손실은 평소보다 훨씬 낮습니다. 0.25x. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.4 | 적의 회복력은 1.2x로 정상보다 높습니다. 1.4x. |
| EnemyPlayerDamageMultiplier | 1.8 | 플레이어가 받는 적 피해는 1.8배로 평소보다 훨씬 높습니다. |
| EnemySpawnRate | 0.6 | 적 빈도는 0.6x로 정상보다 낮습니다. |
| FatigueSpeedMultiplier | 1.2 | 피로 비율은 1.2x로 정상보다 높습니다. |
| FirstTimeStartingWeapon | 0 | 시작 무기 보급이 표준입니다. 압력은 0입니다. |
| FoodSpoilSpeedMultiplier | 1.25 | 음식 부패도는 1.25x로 보통보다 높습니다. |
| GameDifficulty | 2 | 게임 난이도가 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.1 | 배고픔 비율은 1.1x로 보통에 가깝습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.1 | 아이템 내구도는 1.1x로 정상에 가깝습니다. |
| ItemStackSizeMultiplier | 2.0 | 스택 용량은 2배로 정상보다 훨씬 높습니다. |
| ItemWeightMultiplier | 0.9 | 아이템 무게는 2배로 정상에 가깝습니다. 0.9x. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 1.9 | 경험치 획득량은 1.9x로 정상보다 훨씬 높습니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 0.8 | 냉동은 0.8x로 정상보다 낮습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.75 | 싱크 리필 비율이 0.75배로 정상보다 낮습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 1.35 | 목마름 발생률은 1.35x로 정상보다 높습니다. |
| WeatherFrequency | 5 | 날씨 빈도가 매우 잦습니다. |

<a id="optional-adapter-selection-5"></a>
### 선택적 어댑터 선택

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `stealth_forecast_low_profile`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---dark-route-clearance"></a>
## 7일차 - 어두운 경로 통행

**프로필 ID:** `stealth_dark_route_clearance` **전체 조건:** 표준 압력 (2.22/5) **일반적인 의미:** 표준 압력. 전투 압력: 까다로운 조건이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-6"></a>
### 주요 효과

- 적 탐지 속도가 극도로 빠릅니다 (3.2x).
- 적 정확도: 매우 정확합니다.
- 스택 용량이 최고입니다 (3x).
- 경험치 획득량이 엄청납니다 (2.6x).
- 낮-밤 상태: 야간 편향.

<a id="domain-ratings-6"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 까다로운 (2.93/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (1.99/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (1.48/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (2.33/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.49/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-6"></a>
### 대우 상황

- 계층: **심각한 전투**
- 테마: **조용한 순찰의 밤**
- 최대 활성 그룹: **2**
- 혼합 만남 기회: **0.119**
- 특별 이벤트 기회: **16**

<a id="exact-sandbox-settings-6"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 16 | 기본 인벤토리 크기는 16에서 유리한 조건입니다. |
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 0.95 | 자제율은 16에서 거의 정상에 가깝습니다. 0.95x. |
| DamageToAlliesMultiplier | 0.25 | 아군 사격 피해는 0.25x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 2 | 낮-밤 상태는 밤 편향적입니다. |
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 3.2 | 적 탐지 속도는 3.2x로 최고입니다. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.2 | 사망 시 내구성 손실은 0.2x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.5 | 적 회복력이 보통보다 1.5배 높습니다. |
| EnemyPlayerDamageMultiplier | 2.1 | 플레이어가 받는 적 피해는 2.1배로 정상보다 훨씬 높습니다. |
| EnemySpawnRate | 0.9 | 적 빈도는 0.9x로 정상에 가깝습니다. |
| FatigueSpeedMultiplier | 1.5 | 피로 비율은 1.5x로 정상보다 높습니다. |
| FirstTimeStartingWeapon | 5 | 시작 무기 보급이 5로 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 1.0 | 음식 부패는 1x로 거의 정상입니다. |
| GameDifficulty | 2 | 게임 난이도가 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 0.95 | 배고픔 비율은 0.95x로 정상에 가깝습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.5 | 아이템 내구도는 1.5배로 정상보다 높습니다. |
| ItemStackSizeMultiplier | 3.0 | 스택 용량은 3x로 극단적입니다. |
| ItemWeightMultiplier | 0.7 | 아이템 무게는 0.7x로 정상보다 낮습니다. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.6 | 경험치 획득량은 2.6x로 극단적입니다. |
| PowerSocketsOffAtNight | false | 밤에도 전원 소켓을 사용할 수 있습니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 1.0 | 냉장은 1x로 정상에 가깝습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 1.0 | 싱크대 보충률은 1x로 정상에 가깝습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 0.95 | 목마름 발생률은 0.95x로 정상에 가깝습니다. |
| WeatherFrequency | 4 | 날씨 빈도가 잦습니다. |

<a id="optional-adapter-selection-6"></a>
### 선택적 어댑터 선택

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `stealth_dark_route_clearance`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---unseen-transit"></a>
## 8일차 - 보이지 않는 대중교통

**프로필 ID:** `stealth_unseen_transit` **전체 조건:** 표준 압력 (1.99/5) **일반적인 의미:** 표준 압력. 전투 압력: 까다로운 조건이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-7"></a>
### 주요 효과

- 낮과 밤의 주기 속도가 극단적입니다 (3x).
- 적 정확도: 매우 정확합니다.
- 적 탐지 속도가 극도로 빠릅니다 (2.7x).
- 스택 용량이 최고입니다 (4x).
- 경험치 획득량이 엄청납니다 (2.7x).

<a id="domain-ratings-7"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 까다로운 (2.61/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 좋음 (1.42/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 좋음 (1.41/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (2.56/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.47/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-7"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **조용한 순찰 경로**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0.105**
- 특별 이벤트 기회: **14**

<a id="exact-sandbox-settings-7"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 18 | 기본 인벤토리 크기는 18에서 유리한 조건입니다. |
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 0.7 | 자제율은 0.7x로 정상보다 낮습니다. |
| DamageToAlliesMultiplier | 0.25 | 아군 사격 피해는 0.25x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 3.0 | 낮-밤 주기 속도는 극단적입니다. 3x. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 2.7 | 적 감지 속도는 2.7배로 극도로 빠릅니다. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.15 | 사망 시 내구성 손실은 0.15x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.8 | 방어에 대한 적 피해는 0.8x로 정상보다 낮습니다. |
| EnemyHealthMultiplier | 1.1 | 적 회복력은 1.1x로 정상에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 1.8 | 플레이어가 받는 적 피해는 1.8배로 평소보다 훨씬 높습니다. |
| EnemySpawnRate | 0.8 | 적 빈도는 0.8x로 정상보다 낮습니다. |
| FatigueSpeedMultiplier | 0.7 | 피로 비율은 0.7x로 정상보다 낮습니다. |
| FirstTimeStartingWeapon | 6 | 시작 무기 보급이 6으로 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 0.9 | 음식 부패는 0.9x로 정상에 가깝습니다. |
| GameDifficulty | 2 | 게임 난이도가 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 0.7 | 배고픔 비율은 0.7x로 정상보다 낮습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.25 | 아이템 내구도는 1.25x로 정상보다 높습니다. |
| ItemStackSizeMultiplier | 4.0 | 스택 용량 4x로 극단적입니다. |
| ItemWeightMultiplier | 0.7 | 아이템 무게는 0.7x로 정상보다 낮습니다. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.7 | 경험치 획득량이 2.7배로 극심합니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 1.1 | 냉장고는 1.1x로 정상에 가깝습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 1.5 | 싱크대 리필 속도는 1에서 정상보다 높습니다. 1.5x. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 0.7 | 목마름 발생률은 0.7x로 정상보다 낮습니다. |
| WeatherFrequency | 3 | 날씨 빈도는 정상입니다. |

<a id="optional-adapter-selection-7"></a>
### 선택적 어댑터 선택

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `stealth_unseen_transit`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-without-witnesses"></a>
## 9일차 - 증인 없는 배급

**프로필 ID:** `stealth_ration_without_witnesses` **전체 조건:** 표준 압력 (2.38/5) **일반적인 의미:** 표준 압력. 생존 압력: 까다로운 조건이 주요 압력입니다. 전투 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 음식과 물을 가지고 다니고, 장거리 여행 전에 휴식을 취하고, 안전한 정지를 계획하세요.

<a id="main-effects-8"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 기본 재고 규모가 심각한 상황 (10).
- 싱크대 물은 안전하지 않을 수 있습니다.
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.25x).
- 적 탐지 속도는 정상보다 훨씬 높습니다 (2x).

<a id="domain-ratings-8"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.44/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 까다로운 (2.96/5) | 배고픔, 갈증, 피로 또는 위생에 더 많은 주의가 필요함. |
| 자원 압박 | 표준 (2.26/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.17/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.53/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-8"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **조용한 순찰 부족**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0.084**
- 특별 이벤트 기회: **8**

<a id="exact-sandbox-settings-8"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 10 | 기본 재고 크기는 10으로 심각한 상태입니다. |
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.25 | 자제율은 1.25x로 정상보다 높습니다. |
| DamageToAlliesMultiplier | 0.25 | 아군 사격 피해는 0.25x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 2.0 | 적 탐지 속도가 정상보다 2배로 훨씬 빠릅니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.35 | 사망 시 내구성 손실은 0.35x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.6 | 적 회복력이 1.6배로 정상보다 높습니다. |
| EnemyPlayerDamageMultiplier | 1.9 | 플레이어에 대한 적 피해는 1.9x로 정상보다 훨씬 높습니다. |
| EnemySpawnRate | 0.6 | 적 빈도는 0.6x로 정상보다 낮습니다. |
| FatigueSpeedMultiplier | 1.3 | 피로율은 1.3x로 정상보다 높습니다. |
| FirstTimeStartingWeapon | 0 | 시작 무기 보급이 표준입니다. 압력은 0입니다. |
| FoodSpoilSpeedMultiplier | 2.0 | 음식 부패는 2x로 정상보다 훨씬 높습니다. |
| GameDifficulty | 1 | 게임 난이도는 표준입니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.7 | 굶주림 비율이 훨씬 높습니다. 보통은 1.7x입니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 0.75 | 아이템 내구도는 0.75x로 정상보다 낮습니다. |
| ItemStackSizeMultiplier | 1.0 | 스택 용량은 1배로 정상에 가깝습니다. |
| ItemWeightMultiplier | 1.2 | 아이템 무게는 1.2x로 정상보다 높습니다. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 1.9 | 경험치 획득량은 1.9x로 정상보다 훨씬 높습니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 0.5 | 냉장고는 평소보다 훨씬 낮습니다. 0.5x. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.5 | 싱크 리필 비율은 0.5x로 정상보다 훨씬 낮습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | true | 싱크대 물은 안전하지 않을 수 있습니다. |
| ThirstSpeedMultiplier | 1.6 | 목마름 발생률은 1.6배로 정상보다 높습니다. |
| WeatherFrequency | 2 | 날씨 빈도가 가끔 있습니다. |

<a id="optional-adapter-selection-8"></a>
### 선택적 어댑터 선택

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `stealth_ration_without_witnesses`
- `lethal_lasers`: `standard_safety`

<a id="day-10---quiet-repair-window"></a>
## 10일차 - 조용한 수리 창

**프로필 ID:** `stealth_quiet_repair_window` **전체 조건:** 유리한 조건 (1.19/5) **일반적인 의미:** 유리한 조건. 환경적 압력: 유리한 조건이 주요 압력입니다. 전투 압력: 유리한 조건이 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

<a id="main-effects-9"></a>
### 주요 효과

- 보너스 특전 포인트는 구호 조건입니다. (10).
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0x).
- 아이템 내구성이 최고입니다 (3x).
- 스택 용량이 최고입니다 (10배).

<a id="domain-ratings-9"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 좋음 (1.31/5) | 적대적인 압력이 평소보다 가벼워졌습니다. |
| 생존 압박 | 좋음 (1.02/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 좋음 (0.9/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 좋음 (1.54/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.19/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-9"></a>
### 대우 상황

- 계층: **최소한의 만남**
- 테마: **조용한 순찰 회복**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0**
- 특별 이벤트 기회: **0**

<a id="exact-sandbox-settings-9"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 30 | 기본 인벤토리 크기는 30의 구호 조건입니다. |
| BonusPerkPoints | 10 | 보너스 특전 포인트는 10의 구호 조건입니다. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 0.45 | 자제 비율은 0.45x로 정상보다 훨씬 낮습니다. |
| DamageToAlliesMultiplier | 0.0 | 아군 사격 피해는 0x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 0.85 | 주야간 주기 속도는 0.85x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 0 | 사망 처벌은 최소화됩니다. |
| DetectionSpeedMultiplier | 0.8 | 적 탐지 속도는 0.8x로 정상보다 낮습니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.0 | 사망 시 내구성 손실은 0x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 3 | 적의 정확도는 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.1 | 적 방어에 대한 피해가 0.1x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 1.0 | 적 회복력은 1x로 보통에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 0.6 | 플레이어가 받는 적 피해는 0.6x로 정상보다 낮습니다. |
| EnemySpawnRate | 0.2 | 적의 빈도는 0.2x로 정상보다 훨씬 낮습니다. |
| FatigueSpeedMultiplier | 0.45 | 피로 비율은 0.45x로 정상보다 훨씬 낮습니다. |
| FirstTimeStartingWeapon | 2 | 시작 무기 보급은 표준 압력 2입니다. |
| FoodSpoilSpeedMultiplier | 0.4 | 음식 부패율은 0.4x로 정상보다 훨씬 낮습니다. |
| GameDifficulty | 1 | 게임 난이도는 표준입니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 0.45 | 배고픔 비율은 0.45x로 정상보다 훨씬 낮습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 3.0 | 아이템 내구성은 3배로 극단적입니다. |
| ItemStackSizeMultiplier | 10.0 | 스택 용량은 최대 3배입니다. 10x. |
| ItemWeightMultiplier | 0.4 | 아이템 무게는 0.4x로 정상보다 훨씬 낮습니다. |
| LootRespawnEnabled | true | 수집 후 전리품이 돌아올 수 있습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 3.5 | 경험치 획득량이 3.5배로 극심합니다. |
| PowerSocketsOffAtNight | false | 밤에도 전원 소켓을 사용할 수 있습니다. |
| RadiationDealsDamage | false | 방사선 피해는 비활성화됩니다. |
| RefrigerationEffectivenessMultiplier | 1.8 | 냉장은 1.8x로 정상보다 훨씬 높습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 3.0 | 싱크대 재충전 비율은 3배로 극심합니다. |
| StorageByTag | false | 태그된 보관 정리가 비활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 0.45 | 목마름 비율은 0.45배로 정상보다 훨씬 낮습니다. |
| WeatherFrequency | 1 | 날씨 빈도는 거의 없습니다. |

<a id="optional-adapter-selection-9"></a>
### 선택적 어댑터 선택

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `stealth_quiet_repair_window`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---observation-drill"></a>
## 11일차 - 관측 훈련

**프로필 ID:** `stealth_observation_drill` **전체 조건:** 유리한 조건 (1.61/5) **일반적인 의미:** 유리한 조건. 환경 압력: 표준 압력이 주요 압력입니다. 전투 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

<a id="main-effects-10"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 보너스 특전 포인트는 구호 조건입니다. (12).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0x).
- 스택 용량이 최고입니다 (5배).
- 경험치 획득량이 엄청납니다 (4.5x).

<a id="domain-ratings-10"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (1.93/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 좋음 (1.58/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (0.92/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (1.96/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.43/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-10"></a>
### 대우 상황

- 계층: **가벼운 조우**
- 테마: **조용한 순찰 훈련**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0.049**
- 특별 이벤트 기회: **3**

<a id="exact-sandbox-settings-10"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 24 | 기본 인벤토리 크기는 24의 완화 조건입니다. |
| BonusPerkPoints | 12 | 보너스 특전 포인트는 구호 조건 12입니다. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 0.8 | 자제율은 0.8x로 정상보다 낮습니다. |
| DamageToAlliesMultiplier | 0.25 | 아군 사격 피해는 0.25x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.15 | 주야간 주기 속도는 1.15x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 1.6 | 적 감지 속도가 정상보다 높습니다. 1.6x. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.0 | 사망 시 내구성 손실은 0x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.4 | 방어에 대한 적 피해는 0.4x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 1.1 | 적 회복력은 1.1x로 정상에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 1.1 | 플레이어에 대한 적 피해는 1.1x로 정상에 가깝습니다. |
| EnemySpawnRate | 0.5 | 적의 빈도는 0.5x로 정상보다 훨씬 낮습니다. |
| FatigueSpeedMultiplier | 0.8 | 피로 비율은 0.8x로 정상보다 훨씬 낮습니다. |
| FirstTimeStartingWeapon | 6 | 시작 무기 보급이 6으로 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 0.8 | 음식 부패는 0.8x로 정상보다 낮습니다. |
| GameDifficulty | 1 | 게임 난이도는 표준입니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 0.8 | 배고픔 비율은 0.8x로 정상보다 낮습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 2.25 | 아이템 내구성 2.25x로 정상보다 훨씬 높습니다. |
| ItemStackSizeMultiplier | 5.0 | 쌓기 용량은 5배로 극단적입니다. |
| ItemWeightMultiplier | 0.6 | 아이템 무게는 0.6x로 정상보다 낮습니다. |
| LootRespawnEnabled | true | 수집 후 전리품이 돌아올 수 있습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 4.5 | 경험치 획득량이 4.5배로 극심합니다. |
| PowerSocketsOffAtNight | false | 밤에도 전원 소켓을 사용할 수 있습니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 1.3 | 냉동은 1.3x로 정상보다 높습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 2.0 | 싱크대 재충전 속도는 평소보다 훨씬 높습니다. 2x. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 0.8 | 목마름 발생률은 0.8x로 정상보다 낮습니다. |
| WeatherFrequency | 2 | 날씨 빈도가 가끔 있습니다. |

<a id="optional-adapter-selection-10"></a>
### 선택적 어댑터 선택

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `stealth_observation_drill`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-blind-spot"></a>
## 12일차 - Black Lab 사각지대

**프로필 ID:** `stealth_black_lab_blind_spot` **전체 조건:** 까다로운 조건 (2.62/5) **일반적인 의미:** 까다로운 조건. 전투 압박: 가혹한 상황이 주요 압박입니다. 생존 압력: 표준 압력이 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-11"></a>
### 주요 효과

- 적 탐지 속도가 극도로 빠릅니다 (3.7x).
- 적 정확도: 매우 정확합니다.
- 플레이어에 대한 적 피해가 극심함 (3.3x).
- 게임 난이도: 매우 어렵습니다.
- 경험치 획득량이 엄청납니다 (3.6x).

<a id="domain-ratings-11"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 심각한 (3.52/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (2.53/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 표준 (1.74/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.22/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 표준 (1.79/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-11"></a>
### 대우 상황

- 계층: **극한 조우**
- 테마: **조용한 순찰 집중 테스트**
- 최대 활성 그룹: **2**
- 혼합 만남 기회: **0.161**
- 특별 이벤트 기회: **22**

<a id="exact-sandbox-settings-11"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 12 | 기본 인벤토리 크기는 12에서 표준 압력입니다. |
| BonusPerkPoints | 2 | 보너스 특전 포인트 2에서는 유리한 조건입니다. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.0 | 억제율은 1x로 정상에 가깝습니다. |
| DamageToAlliesMultiplier | 0.15 | 아군 사격 피해는 0.15배로 평소보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 2 | 죽음 패널티가 무겁습니다. |
| DetectionSpeedMultiplier | 3.7 | 적 탐지 속도가 극심합니다. 3.7x. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.4 | 사망 시 내구성 손실은 0.4배로 평소보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.4 | 방어에 대한 적 피해는 1.4x로 정상보다 높습니다. |
| EnemyHealthMultiplier | 2.3 | 적 회복력이 정상보다 훨씬 높으며 2.3배입니다. |
| EnemyPlayerDamageMultiplier | 3.3 | 플레이어에 대한 적 피해는 3.3x로 극심합니다. |
| EnemySpawnRate | 1.2 | 적의 빈도는 1.45x로 정상에 가깝습니다. 1.2x. |
| FatigueSpeedMultiplier | 1.15 | 피로율은 1.15x로 정상에 가깝습니다. |
| FirstTimeStartingWeapon | 1 | 무기 보급 시작은 표준 압력 1입니다. |
| FoodSpoilSpeedMultiplier | 1.15 | 음식 부패는 1.15x로 보통에 가깝습니다. |
| GameDifficulty | 3 | 게임 난이도는 매우 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.15 | 배고픔 비율은 1.15x로 보통에 가깝습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.1 | 아이템 내구도는 1.1x로 정상에 가깝습니다. |
| ItemStackSizeMultiplier | 2.0 | 스택 용량은 2배로 정상보다 훨씬 높습니다. |
| ItemWeightMultiplier | 0.9 | 아이템 무게는 2배로 정상에 가깝습니다. 0.9x. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 3.6 | 경험치 획득은 3.6x로 극단적입니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 0.85 | 냉장 상태는 0.85x로 정상에 가깝습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.75 | 싱크 리필 비율이 0.75배로 정상보다 낮습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | true | 싱크대 물은 안전하지 않을 수 있습니다. |
| ThirstSpeedMultiplier | 1.15 | 목마름 발생률은 1.15x로 정상에 가깝습니다. |
| WeatherFrequency | 3 | 날씨 빈도는 정상입니다. |

<a id="optional-adapter-selection-11"></a>
### 선택적 어댑터 선택

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `stealth_black_lab_blind_spot`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-silent-shift"></a>
## 13일차 - 긴 침묵 교대

**프로필 ID:** `stealth_long_silent_shift` **전체 조건:** 표준 압력 (2.55/5) **일반적인 의미:** 표준 압력. 생존 압력: 까다로운 조건이 주요 압력입니다. 전투 압박: 까다로운 조건이 그 다음으로 강력한 요소입니다. **플레이어 조언:** 음식과 물을 가지고 다니고, 장거리 여행 전에 휴식을 취하고, 안전한 정지를 계획하세요.

<a id="main-effects-12"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 게임 난이도: 매우 어렵습니다.
- 기본 재고 규모가 심각한 상황 (10).
- 싱크대 물은 안전하지 않을 수 있습니다.
- 경험치 획득이 보통보다 훨씬 높습니다 (2.2x).

<a id="domain-ratings-12"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 까다로운 (2.75/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 까다로운 (3.28/5) | 배고픔, 갈증, 피로 또는 위생에 더 많은 주의가 필요함. |
| 자원 압박 | 표준 (2.12/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.01/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 표준 (1.77/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-12"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **조용한 순찰 지구력**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0.098**
- 특별 이벤트 기회: **7**

<a id="exact-sandbox-settings-12"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 10 | 기본 재고 크기는 10으로 심각한 상태입니다. |
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.35 | 자제율은 1.35x로 정상보다 높습니다. |
| DamageToAlliesMultiplier | 0.25 | 아군 사격 피해는 0.25x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 0.3 | 낮-밤 주기 속도는 0.3x로 정상보다 훨씬 낮습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 2 | 죽음 패널티가 무겁습니다. |
| DetectionSpeedMultiplier | 2.0 | 적 탐지 속도가 정상보다 2배로 훨씬 빠릅니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.35 | 사망 시 내구성 손실은 0.35x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.9 | 방어에 대한 적 피해는 0.9x로 정상에 가깝습니다. |
| EnemyHealthMultiplier | 1.7 | 적 회복력은 1.7x로 정상보다 훨씬 높습니다. |
| EnemyPlayerDamageMultiplier | 2.1 | 플레이어가 받는 적 피해는 2.1배로 정상보다 훨씬 높습니다. |
| EnemySpawnRate | 0.5 | 적의 빈도는 0.5x로 정상보다 훨씬 낮습니다. |
| FatigueSpeedMultiplier | 1.8 | 피로율은 1.8x로 정상보다 훨씬 높습니다. |
| FirstTimeStartingWeapon | 0 | 시작 무기 보급이 표준입니다. 압력은 0입니다. |
| FoodSpoilSpeedMultiplier | 1.8 | 음식 부패는 1.8x로 정상보다 훨씬 높습니다. |
| GameDifficulty | 3 | 게임 난이도는 매우 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.9 | 배고픔 비율은 1.9x로 정상보다 훨씬 높습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 0.9 | 아이템 내구도는 0.9x로 정상에 가깝습니다. |
| ItemStackSizeMultiplier | 2.0 | 스택 용량은 2배로 정상보다 훨씬 높습니다. |
| ItemWeightMultiplier | 1.4 | 아이템 무게가 이상입니다. 1.4x로 정상입니다. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.2 | 경험치 획득량은 2.2x로 정상보다 훨씬 높습니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 0.65 | 냉장고가 0.65x로 정상보다 낮습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.35 | 싱크대 리필 비율이 0.35x로 정상보다 훨씬 낮습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | true | 싱크대 물은 안전하지 않을 수 있습니다. |
| ThirstSpeedMultiplier | 1.9 | 목마름 발생률은 1.9x로 정상보다 훨씬 높습니다. |
| WeatherFrequency | 2 | 날씨 빈도가 가끔 있습니다. |

<a id="optional-adapter-selection-12"></a>
### 선택적 어댑터 선택

- `ante_up`: `black_lab`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `stealth_long_silent_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---false-empty-hall"></a>
## 14일차 - 거짓 빈 홀

**프로필 ID:** `stealth_false_empty_hall` **전체 조건:** 유리한 조건 (1.34/5) **일반적인 의미:** 유리한 조건. 전투 압력: 표준 압력이 주요 압력입니다. 회복 압력: 유리한 조건이 그 다음으로 강한 요인입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

<a id="main-effects-13"></a>
### 주요 효과

- 게임 난이도: 매우 어렵습니다.
- 기본 재고 크기는 완화 조건입니다 (40).
- 보너스 특전 포인트는 구호 조건입니다. (12).
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0x).

<a id="domain-ratings-13"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (1.73/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 좋음 (0.86/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 구호 (0.79/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 좋음 (1.58/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.67/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-13"></a>
### 대우 상황

- 계층: **최소한의 만남**
- 테마: **조용한 순찰 구호**
- 최대 활성 그룹: **1**
- 혼합 만남 기회: **0**
- 특별 이벤트 기회: **0**

<a id="exact-sandbox-settings-13"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 40 | 기본 인벤토리 크기는 40의 구호 조건입니다. |
| BonusPerkPoints | 12 | 보너스 특전 포인트는 구호 조건 12입니다. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 0.35 | 자제율 0.35x로 정상보다 훨씬 낮습니다. |
| DamageToAlliesMultiplier | 0.0 | 아군 사격 피해는 0x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 2 | 죽음 패널티가 무겁습니다. |
| DetectionSpeedMultiplier | 1.1 | 적 탐지 속도는 1.1x로 정상에 가깝습니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.0 | 사망 시 내구성 손실은 0x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 3 | 적의 정확도는 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.1 | 적 방어에 대한 피해가 0.1x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 1.0 | 적 회복력은 1x로 보통에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 0.8 | 플레이어에 대한 적 피해는 0.75x로 정상에 가깝습니다. 0.8x. |
| EnemySpawnRate | 0.3 | 적 빈도가 0.3x로 평소보다 훨씬 낮습니다. |
| FatigueSpeedMultiplier | 0.35 | 피로율은 0.35x로 정상보다 훨씬 낮습니다. |
| FirstTimeStartingWeapon | 6 | 시작 무기 보급이 6으로 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 0.25 | 음식 부패 0.25x로 정상보다 훨씬 낮습니다. |
| GameDifficulty | 3 | 게임 난이도는 매우 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 0.35 | 배고픔 비율은 0.35x로 정상보다 훨씬 낮습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 6.0 | 아이템 내구도가 6배로 극단적입니다. |
| ItemStackSizeMultiplier | 20.0 | 스택 용량이 20배로 극단적입니다. |
| ItemWeightMultiplier | 0.2 | 아이템 무게가 0.2x로 정상보다 훨씬 낮습니다. |
| LootRespawnEnabled | true | 수집 후 전리품이 돌아올 수 있습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 5.1 | 경험치 획득량이 5.1배로 극심합니다. |
| PowerSocketsOffAtNight | false | 밤에도 전원 소켓을 사용할 수 있습니다. |
| RadiationDealsDamage | false | 방사선 피해는 비활성화됩니다. |
| RefrigerationEffectivenessMultiplier | 2.0 | 냉장 상태는 정상보다 훨씬 높은 2배입니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 5.0 | 싱크대 재충전 비율은 5배로 극단적입니다. |
| StorageByTag | false | 태그된 보관 정리가 비활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 0.35 | 갈증률은 0.35x로 정상보다 훨씬 낮습니다. |
| WeatherFrequency | 1 | 날씨 빈도는 거의 없습니다. |

<a id="optional-adapter-selection-13"></a>
### 선택적 어댑터 선택

- `ante_up`: `black_lab`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `stealth_false_empty_hall`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---detection-audit"></a>
## 15일차 - 탐지 감사

**프로필 ID:** `stealth_detection_audit` **전체 조건:** 표준 압력 (2.26/5) **일반적인 의미:** 표준 압력. 전투 압력: 까다로운 조건이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-14"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 게임 난이도: 매우 어렵습니다.
- 적 탐지 속도가 극도로 빠릅니다 (2.8x).
- 선수에 대한 적 피해가 정상보다 훨씬 높습니다 (2.4x).
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0x).

<a id="domain-ratings-14"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 까다로운 (2.94/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (1.98/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (1.62/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.17/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 표준 (1.76/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-14"></a>
### 대우 상황

- 계층: **심각한 전투**
- 테마: **조용한 순찰의 정확성**
- 최대 활성 그룹: **2**
- 혼합 만남 기회: **0.119**
- 특별 이벤트 기회: **14**

<a id="exact-sandbox-settings-14"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 12 | 기본 인벤토리 크기는 12에서 표준 압력입니다. |
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.0 | 억제율은 1x로 정상에 가깝습니다. |
| DamageToAlliesMultiplier | 0.0 | 아군 사격 피해는 0x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 2 | 죽음 패널티가 무겁습니다. |
| DetectionSpeedMultiplier | 2.8 | 적 탐지 속도가 2.8x로 최고입니다. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.3 | 사망 시 내구성 손실은 0.3x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.8 | 방어에 대한 적 피해는 0.8x로 정상보다 낮습니다. |
| EnemyHealthMultiplier | 1.3 | 적 회복력이 1.3배로 정상보다 높습니다. |
| EnemyPlayerDamageMultiplier | 2.4 | 플레이어에게 주는 적 피해는 2.4배로 정상보다 훨씬 높습니다. |
| EnemySpawnRate | 0.7 | 적의 빈도가 0.7x로 정상보다 낮습니다. |
| FatigueSpeedMultiplier | 1.25 | 피로율은 1.25x로 정상보다 높습니다. |
| FirstTimeStartingWeapon | 4 | 시작 무기 보급은 4에서 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 1.0 | 음식 부패는 1x로 거의 정상입니다. |
| GameDifficulty | 3 | 게임 난이도는 매우 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.0 | 배고픔 비율은 1배로 정상에 가깝습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.0 | 아이템 내구성은 1x로 정상에 가깝습니다. |
| ItemStackSizeMultiplier | 2.0 | 스택 용량은 2배로 정상보다 훨씬 높습니다. |
| ItemWeightMultiplier | 0.9 | 아이템 무게는 2배로 정상에 가깝습니다. 0.9x. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.9 | 경험치 획득량은 2.9x로 극심합니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 1.0 | 냉장은 1x로 정상에 가깝습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 1.0 | 싱크대 보충률은 1x로 정상에 가깝습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | false | 싱크대 물은 이 규칙에 의해 오염되지 않습니다. |
| ThirstSpeedMultiplier | 1.0 | 목마름 발생률은 1x로 정상에 가깝습니다. |
| WeatherFrequency | 2 | 날씨 빈도가 가끔 있습니다. |

<a id="optional-adapter-selection-14"></a>
### 선택적 어댑터 선택

- `ante_up`: `black_lab`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `stealth_detection_audit`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-silence"></a>
## 16일차 - 실험적 침묵

**프로필 ID:** `stealth_experimental_silence` **전체 조건:** 표준 압력 (2.21/5) **일반적인 의미:** 표준 압력. 전투 압력: 까다로운 조건이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-15"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 게임 난이도: 매우 어렵습니다.
- 일부 방사선에는 가시적 경고가 부족할 수 있습니다.
- 날씨 빈도: 매우 빈번함.
- 기본 재고 크기는 완화 조건입니다 (42).

<a id="domain-ratings-15"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 까다로운 (2.74/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (2.36/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (1.09/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (2.59/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.67/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-15"></a>
### 대우 상황

- 계층: **극한 조우**
- 테마: **침묵 순찰 실험**
- 최대 활성 그룹: **2**
- 혼합 만남 기회: **0.154**
- 특별 이벤트 기회: **20**

<a id="exact-sandbox-settings-15"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 42 | 기본 인벤토리 크기는 42의 구호 조건입니다. |
| BonusPerkPoints | 2 | 보너스 특전 포인트 2에서는 유리한 조건입니다. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.2 | 자제율은 보통보다 높습니다. 1.2x. |
| DamageToAlliesMultiplier | 0.0 | 아군 사격 피해는 0x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.5 | 낮-밤 주기 속도는 1.5x로 정상보다 높습니다. |
| DayNightCycleState | 1 | 낮-밤 상태는 낮에 편향되어 있습니다. |
| DeathPenalties | 2 | 죽음 패널티가 무겁습니다. |
| DetectionSpeedMultiplier | 1.1 | 적 탐지 속도는 1.1x로 정상에 가깝습니다. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.0 | 사망 시 내구성 손실은 0x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.7 | 적 방어에 대한 피해는 0.7x로 정상보다 낮습니다. |
| EnemyHealthMultiplier | 1.9 | 적 회복력은 1.9배로 평소보다 훨씬 높습니다. |
| EnemyPlayerDamageMultiplier | 1.6 | 플레이어가 받는 적 피해는 1.6배로 정상보다 높습니다. |
| EnemySpawnRate | 0.8 | 적 빈도는 0.8x로 정상보다 낮습니다. |
| FatigueSpeedMultiplier | 0.8 | 피로 비율은 0.8x로 정상보다 훨씬 낮습니다. |
| FirstTimeStartingWeapon | 6 | 시작 무기 보급이 6으로 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 0.4 | 음식 부패율은 0.4x로 정상보다 훨씬 낮습니다. |
| GameDifficulty | 3 | 게임 난이도는 매우 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 0.8 | 배고픔 비율은 0.8x로 정상보다 낮습니다. |
| InvisibleRadiation | true | 일부 방사선에는 가시적 경고가 부족할 수 있습니다. |
| ItemDurabilityMultiplier | 5.0 | 아이템 내구도는 5배로 최고입니다. |
| ItemStackSizeMultiplier | 15.0 | 스택 용량은 15배로 최고입니다. |
| ItemWeightMultiplier | 0.2 | 아이템 무게가 0.2x로 정상보다 훨씬 낮습니다. |
| LootRespawnEnabled | true | 수집 후 전리품이 돌아올 수 있습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 5.6 | 경험치 획득량이 5.6배로 극심합니다. |
| PowerSocketsOffAtNight | false | 밤에도 전원 소켓을 사용할 수 있습니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 2.0 | 냉장 상태는 정상보다 훨씬 높은 2배입니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.0 | 싱크 리필 비율은 0x로 정상보다 훨씬 낮습니다. |
| StorageByTag | false | 태그된 보관 정리가 비활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | true | 싱크대 물은 안전하지 않을 수 있습니다. |
| ThirstSpeedMultiplier | 1.2 | 갈증률은 정상보다 높습니다. 1.2x. |
| WeatherFrequency | 5 | 날씨 빈도가 매우 잦습니다. |

<a id="optional-adapter-selection-15"></a>
### 선택적 어댑터 선택

- `ante_up`: `black_lab`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `stealth_experimental_silence`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-nonappearance"></a>
## 17일차 - 최종 출현하지 않음

**프로필 ID:** `stealth_final_nonappearance` **전체 조건:** 까다로운 조건 (2.83/5) **일반적인 의미:** 까다로운 조건. 전투 압박: 가혹한 상황이 주요 압박입니다. 생존 압력: 까다로운 조건이 그 다음으로 강력한 요인입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-16"></a>
### 주요 효과

- 사망 처벌: 심각함
- 적 탐지 속도가 극도로 빠릅니다 (4.4x).
- 적 정확도: 매우 정확합니다.
- 플레이어에 대한 적 피해가 극심함 (3.8x).
- 게임 난이도: 매우 어렵습니다.

<a id="domain-ratings-16"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 심각한 (3.79/5) | 적대적인 압박이 심합니다. 지원되지 않는 전투를 피하세요. |
| 생존 압박 | 까다로운 (2.72/5) | 배고픔, 갈증, 피로 또는 위생에 더 많은 주의가 필요함. |
| 자원 압박 | 표준 (1.78/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.55/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 표준 (2.0/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-16"></a>
### 대우 상황

- 계층: **캡스톤 조우**
- 테마: **침묵 순찰 관석**
- 최대 활성 그룹: **2**
- 혼합 만남 기회: **0.196**
- 특별 이벤트 기회: **30**

<a id="exact-sandbox-settings-16"></a>
### 정확한 샌드박스 설정

| 설정 | 원시 값 | 번역된 의미 |
|---|---:|---|
| AllowCharacterReset | true | 문자 재설정은 계속 가능합니다. |
| AllowIronMode | false | 아이언 모드가 비활성화되었습니다. |
| AllowPagers | true | 호출기가 사용 가능합니다. |
| AllowRecipeSharing | true | 레시피 공유가 가능합니다. |
| AllowTransmog | true | 외관 맞춤화가 가능합니다. |
| BaseInventorySize | 12 | 기본 인벤토리 크기는 12에서 표준 압력입니다. |
| BonusPerkPoints | 2 | 보너스 특전 포인트 2에서는 유리한 조건입니다. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.1 | 자제율은 1.1x로 정상에 가깝습니다. |
| DamageToAlliesMultiplier | 0.1 | 아군 사격 피해는 0.1x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.45 | 낮-밤 주기 속도는 1.45x로 정상보다 높습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 3 | 사망 처벌이 가혹합니다. |
| DetectionSpeedMultiplier | 4.4 | 적 탐지 속도가 극심합니다. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.5 | 사망 시 내구성 손실은 0.5x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 2.0 | 방어에 대한 적 피해는 2x로 정상보다 훨씬 높습니다. |
| EnemyHealthMultiplier | 2.9 | 적 회복력은 2.9x로 최고입니다. |
| EnemyPlayerDamageMultiplier | 3.8 | 플레이어에 대한 적 피해는 3.8배로 극단적입니다. |
| EnemySpawnRate | 1.6 | 적 빈도는 1.6x로 정상보다 높습니다. |
| FatigueSpeedMultiplier | 1.25 | 피로율은 1.25x로 정상보다 높습니다. |
| FirstTimeStartingWeapon | 0 | 시작 무기 보급이 표준입니다. 압력은 0입니다. |
| FoodSpoilSpeedMultiplier | 1.6 | 음식 부패율은 1.6x로 정상보다 높습니다. |
| GameDifficulty | 3 | 게임 난이도는 매우 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.35 | 배고픔 비율은 1.35x로 정상보다 높습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.0 | 아이템 내구성은 1x로 정상에 가깝습니다. |
| ItemStackSizeMultiplier | 3.0 | 스택 용량은 3x로 극단적입니다. |
| ItemWeightMultiplier | 1.0 | 아이템 무게는 보통에 가깝습니다. 1x. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 4.8 | 경험치 획득은 극심합니다. 4.8x. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 0.6 | 냉장고는 0.6x로 정상보다 낮습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.5 | 싱크 리필 비율은 0.5x로 정상보다 훨씬 낮습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | true | 싱크대 물은 안전하지 않을 수 있습니다. |
| ThirstSpeedMultiplier | 1.35 | 목마름 발생률은 1.35x로 정상보다 높습니다. |
| WeatherFrequency | 5 | 날씨 빈도가 매우 잦습니다. |

<a id="optional-adapter-selection-16"></a>
### 선택적 어댑터 선택

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `stealth_final_nonappearance`
- `lethal_lasers`: `overcharged_high_hazard`
