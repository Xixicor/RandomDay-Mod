<a id="randomday---security-lockdown-family"></a>
# RandomDay - 보안 잠금 가족

> **표준 영어 소스:** [security_lockdown.md](../../../../profiles/families/security_lockdown.md). 이 현지화된 문서는 정확한 명령, 경로, 키, 상태 값, 해시 및 파일 이름을 보존합니다. 기술적인 표현이 다를 경우 영어 소스를 사용하세요.


버전: `v0.3.16-alpha`

명령, 로봇, 순찰, 탐지 및 과도한 절차.

**플레이 스타일:**순찰 로봇 및 경보 **메시지 톤:**압도적인 기업 보안

<a id="17-day-index"></a>
## 17일 지수

| 일 | 프로필 | 조건 | 주요 압력 |
|---:|---|---|---|
| 1 | 배지 확인 오리엔테이션 | 표준 압력 (2.02/5) | 전투 압박 |
| 2 | 바리케이드 파일링 | 바람직한 조건 (1.43/5) | 환경적 압박 |
| 3 | 수분 공급 검문소 | 표준 압력 (2.33/5) | 생존 압박 |
| 4 | 밀수품 공급 경로 | 바람직한 조건 (1.63/5) | 전투 압박 |
| 5 | 철저한 보안 수색 | 표준 압력 (2.23/5) | 전투 압박 |
| 6 | 날씨 봉쇄 알림 | 표준 압력 (2.19/5) | 전투 압박 |
| 7 | 야간 순찰 확대 | 표준 압력 (2.23/5) | 전투 압박 |
| 8 | 검문소 가속화 | 표준 압력 (1.99/5) | 전투 압박 |
| 9 | 배급 검사 | 표준 압력 (2.36/5) | 생존 압박 |
| 10 | 잠시 감시되지 않음 | 바람직한 조건 (1.17/5) | 환경적 압박 |
| 11 | 목격자 교육 | 바람직한 조건 (1.62/5) | 환경적 압박 |
| 12 | Black Lab 보안 대응 | 가혹한 조건 (2.65/5) | 전투 압박 |
| 13 | 초과 근무 봉쇄 | 표준 압력 (2.45/5) | 생존 압박 |
| 14 | 공급 옷장 영장 | 바람직한 조건 (1.16/5) | 환경적 압박 |
| 15 | 정확성 감사 공식 | 표준 압력 (2.16/5) | 전투 압박 |
| 16 | 실험적 보안 프로토콜 | 표준 압력 (2.2/5) | 전투 압박 |
| 17 | 최종 잠금 시험 | 가혹한 조건 (2.89/5) | 전투 압박 |

<a id="day-1---badge-check-orientation"></a>
## 1일차 - 배지 확인 방향

**프로필 ID:** `security_lockdown_badge_check_orientation` **전체 조건:** 표준 압력 (2.02/5) **일반적인 의미:** 표준 압력. 전투 압력: 표준 압력이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.25x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0.25x).
- 스택 용량은 보통보다 훨씬 높습니다. (2x).
- 밤에는 전원 소켓이 꺼집니다.

<a id="domain-ratings"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.33/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 표준 (1.9/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 표준 (1.76/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.22/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.5/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **보안 방향**
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
| DetectionSpeedMultiplier | 1.7 | 적 탐지 속도는 1.7x로 정상보다 훨씬 높습니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.25 | 사망 시 내구도 손실은 평소보다 훨씬 낮습니다. 0.25x. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.2 | 적의 탄력성은 1.2x. |
| EnemyPlayerDamageMultiplier | 1.3 | 플레이어가 받는 적 피해가 정상보다 1.3배입니다. |
| EnemySpawnRate | 1.0 | 적의 주파수는 1x로 정상에 가깝습니다. |
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
| PlayerXPGainMultiplier | 1.4 | 경험치 획득량은 1.4x로 정상보다 높습니다. |
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
- `encounter_director`: `security_lockdown_badge_check_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---barricade-filing"></a>
## 2일차 - 바리케이드 파일링

**프로필 ID:** `security_lockdown_barricade_filing` **전체 조건:** 유리한 조건 (1.43/5) **일반적인 의미:** 유리한 조건. 환경 압력: 표준 압력이 주요 압력입니다. 전투 압력: 유리한 조건이 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

<a id="main-effects-1"></a>
### 주요 효과

- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0x).
- 아이템 내구성이 최고입니다 (4x).
- 스택 용량이 최고입니다 (8x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0.05x).
- 방어에 대한 적 피해는 평소보다 훨씬 낮습니다. (0.1x).

<a id="domain-ratings-1"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 좋음 (1.57/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 좋음 (1.34/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 좋음 (1.12/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (1.91/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.2/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-1"></a>
### 대우 상황

- 계층: **가벼운 조우**
- 테마: **보안 준비**
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
| DetectionSpeedMultiplier | 1.1 | 적 탐지 속도는 1.1x로 정상에 가깝습니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.05 | 사망 시 내구성 손실은 0.05x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 3 | 적의 정확도는 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.1 | 적 방어에 대한 피해가 0.1x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 1.0 | 적 회복력은 1x로 보통에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 0.8 | 플레이어에 대한 적 피해는 0.75x로 정상에 가깝습니다. 0.8x. |
| EnemySpawnRate | 0.6 | 적 빈도는 0.6x로 정상보다 낮습니다. |
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
| PlayerXPGainMultiplier | 1.9 | 경험치 획득량은 1.9x로 정상보다 훨씬 높습니다. |
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
- `encounter_director`: `security_lockdown_barricade_filing`
- `lethal_lasers`: `low_hazard`

<a id="day-3---hydration-checkpoint"></a>
## 3일차 - 수분 공급 체크포인트

**프로필 ID:** `security_lockdown_hydration_checkpoint` **전체 조건:** 표준 압력 (2.33/5) **일반적인 의미:** 표준 압력. 생존 압력: 까다로운 조건이 주요 압력입니다. 전투 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 음식과 물을 가지고 다니고, 장거리 여행 전에 휴식을 취하고, 안전한 정지를 계획하세요.

<a id="main-effects-2"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 싱크대 물은 안전하지 않을 수 있습니다.
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.25x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0.25x).
- 게임 난이도: 어려움.

<a id="domain-ratings-2"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.52/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 까다로운 (2.87/5) | 배고픔, 갈증, 피로 또는 위생에 더 많은 주의가 필요함. |
| 자원 압박 | 표준 (1.91/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.22/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.5/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-2"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **보안 바이오 자원**
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
| DetectionSpeedMultiplier | 1.8 | 적 감지 속도는 1.8x로 정상보다 훨씬 빠릅니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.25 | 사망 시 내구도 손실은 평소보다 훨씬 낮습니다. 0.25x. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.9 | 방어에 대한 적 피해는 0.9x로 정상에 가깝습니다. |
| EnemyHealthMultiplier | 1.3 | 적 회복력이 1.3배로 정상보다 높습니다. |
| EnemyPlayerDamageMultiplier | 1.4 | 플레이어가 받는 적 피해는 1.4x로 정상보다 높습니다. |
| EnemySpawnRate | 1.1 | 적의 빈도는 1.1x로 보통에 가깝습니다. |
| FatigueSpeedMultiplier | 1.1 | 피로율은 1.1x로 보통에 가깝습니다. |
| FirstTimeStartingWeapon | 0 | 시작 무기 보급이 표준입니다. 압력은 0입니다. |
| FoodSpoilSpeedMultiplier | 1.25 | 음식 부패도는 1.25x로 보통보다 높습니다. |
| GameDifficulty | 2 | 게임 난이도가 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.2 | 배고픔 비율이 이상입니다. 보통은 1.2x입니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 1.25 | 아이템 내구도는 1.25x로 정상보다 높습니다. |
| ItemStackSizeMultiplier | 2.0 | 스택 용량은 2배로 정상보다 훨씬 높습니다. |
| ItemWeightMultiplier | 0.9 | 아이템 무게는 2배로 정상에 가깝습니다. 0.9x. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 1.6 | 경험치 획득량이 1.6x로 정상보다 높습니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 0.75 | 냉동은 0.75x로 정상보다 낮습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.25 | 싱크대 재충전 속도는 0.25x로 정상보다 훨씬 낮습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | true | 싱크대 물은 안전하지 않을 수 있습니다. |
| ThirstSpeedMultiplier | 1.8 | 목마름 발생률은 1.8x로 정상보다 훨씬 높습니다. |
| WeatherFrequency | 3 | 날씨 빈도는 정상입니다. |

<a id="optional-adapter-selection-2"></a>
### 선택적 어댑터 선택

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `security_lockdown_hydration_checkpoint`
- `lethal_lasers`: `standard_safety`

<a id="day-4---contraband-supply-route"></a>
## 4일차 - 밀수품 공급 경로

**프로필 ID:** `security_lockdown_contraband_supply_route` **전체 조건:** 유리한 조건 (1.63/5) **일반적인 의미:** 유리한 조건. 전투 압력: 표준 압력이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

<a id="main-effects-3"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 아이템 내구성이 최고입니다 (2.5x).
- 스택 용량이 최고입니다 (14x).
- 싱크 리필 비율이 극단적입니다 (2.5x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0.05x).

<a id="domain-ratings-3"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (1.98/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 좋음 (1.5/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 좋음 (1.01/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (1.93/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.44/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-3"></a>
### 대우 상황

- 계층: **가벼운 조우**
- 테마: **보안 전리품 이동성**
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
| DetectionSpeedMultiplier | 1.4 | 적 탐지 속도가 1.4x로 정상보다 높습니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.05 | 사망 시 내구성 손실은 0.05x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.5 | 방어에 대한 적 피해는 0.5x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 1.1 | 적 회복력은 1.1x로 정상에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 1.1 | 플레이어에 대한 적 피해는 1.1x로 정상에 가깝습니다. |
| EnemySpawnRate | 0.8 | 적 빈도는 0.8x로 정상보다 낮습니다. |
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
| PlayerXPGainMultiplier | 2.1 | 경험치 획득량은 2.1배로 정상보다 훨씬 높습니다. |
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
- `encounter_director`: `security_lockdown_contraband_supply_route`
- `lethal_lasers`: `low_hazard`

<a id="day-5---full-security-sweep"></a>
## 5일차 - 전체 보안 소탕

**프로필 ID:** `security_lockdown_full_security_sweep` **전체 조건:** 표준 압력 (2.23/5) **일반적인 의미:** 표준 압력. 전투 압력: 까다로운 조건이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-4"></a>
### 주요 효과

- 적 탐지 속도가 극도로 빠릅니다 (3.3x).
- 적 정확도: 매우 정확합니다.
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.1x).
- 게임 난이도: 어려움.
- 스택 용량은 보통보다 훨씬 높습니다. (2x).

<a id="domain-ratings-4"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 까다로운 (2.94/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (1.94/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (1.7/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.17/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.51/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-4"></a>
### 대우 상황

- 계층: **심각한 전투**
- 테마: **보안 보안**
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
| DetectionSpeedMultiplier | 3.3 | 적 탐지 속도가 극심합니다. 3.3x. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.3 | 사망 시 내구성 손실은 0.3x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.4 | 적의 회복력은 1.2x로 정상보다 높습니다. 1.4x. |
| EnemyPlayerDamageMultiplier | 1.7 | 플레이어에 대한 적 피해가 일반 각도보다 훨씬 높습니다. 1.7배. |
| EnemySpawnRate | 1.6 | 적 빈도는 1.6x로 정상보다 높습니다. |
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
| PlayerXPGainMultiplier | 1.9 | 경험치 획득량은 1.9x로 정상보다 훨씬 높습니다. |
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
- `encounter_director`: `security_lockdown_full_security_sweep`
- `lethal_lasers`: `high_hazard`

<a id="day-6---weather-lockdown-notice"></a>
## 6일차 - 날씨 폐쇄 알림

**프로필 ID:** `security_lockdown_weather_lockdown_notice` **전체 조건:** 표준 압력 (2.19/5) **일반적인 의미:** 표준 압력. 전투 압력: 표준 압력이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-5"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 날씨 빈도: 매우 빈번함.
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.25x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0.25x).
- 게임 난이도: 어려움.

<a id="domain-ratings-5"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.55/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 표준 (2.07/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 표준 (1.86/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.52/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.5/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-5"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **보안 날씨**
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
| DetectionSpeedMultiplier | 1.8 | 적 감지 속도는 1.8x로 정상보다 훨씬 빠릅니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.25 | 사망 시 내구도 손실은 평소보다 훨씬 낮습니다. 0.25x. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.3 | 적 회복력이 1.3배로 정상보다 높습니다. |
| EnemyPlayerDamageMultiplier | 1.4 | 플레이어가 받는 적 피해는 1.4x로 정상보다 높습니다. |
| EnemySpawnRate | 1.2 | 적의 빈도는 1.45x로 정상에 가깝습니다. 1.2x. |
| FatigueSpeedMultiplier | 1.1 | 피로율은 1.1x로 보통에 가깝습니다. |
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
| PlayerXPGainMultiplier | 1.6 | 경험치 획득량이 1.6x로 정상보다 높습니다. |
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
- `encounter_director`: `security_lockdown_weather_lockdown_notice`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-patrol-expansion"></a>
## 7일차 - 야간 순찰 확대

**프로필 ID:** `security_lockdown_night_patrol_expansion` **전체 조건:** 표준 압력 (2.23/5) **일반적인 의미:** 표준 압력. 전투 압력: 까다로운 조건이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-6"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 적 탐지 속도가 극도로 빠릅니다 (2.8x).
- 스택 용량이 최고입니다 (3x).
- 낮-밤 상태: 야간 편향.
- 경험치 획득이 보통보다 훨씬 높습니다 (2.1x).

<a id="domain-ratings-6"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 까다로운 (2.94/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (1.96/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (1.58/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.33/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.49/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-6"></a>
### 대우 상황

- 계층: **심각한 전투**
- 테마: **보안의 밤**
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
| DetectionSpeedMultiplier | 2.8 | 적 탐지 속도가 2.8x로 최고입니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.2 | 사망 시 내구성 손실은 0.2x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.4 | 적의 회복력은 1.2x로 정상보다 높습니다. 1.4x. |
| EnemyPlayerDamageMultiplier | 1.6 | 플레이어가 받는 적 피해는 1.6배로 정상보다 높습니다. |
| EnemySpawnRate | 1.7 | 적의 빈도는 1.7x로 정상보다 훨씬 높습니다. |
| FatigueSpeedMultiplier | 1.4 | 피로율이 1.4배로 정상보다 높습니다. |
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
| ItemWeightMultiplier | 0.8 | 항목 무게는 0.8x로 정상보다 낮습니다. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.1 | 경험치 획득량은 2.1배로 정상보다 훨씬 높습니다. |
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
- `encounter_director`: `security_lockdown_night_patrol_expansion`
- `lethal_lasers`: `high_hazard`

<a id="day-8---checkpoint-acceleration"></a>
## 8일차 - 검문소 가속화

**프로필 ID:** `security_lockdown_checkpoint_acceleration` **전체 조건:** 표준 압력 (1.99/5) **일반적인 의미:** 표준 압력. 전투 압력: 표준 압력이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-7"></a>
### 주요 효과

- 낮과 밤의 주기 속도가 극단적입니다 (3x).
- 적 정확도: 매우 정확합니다.
- 적 탐지 속도는 정상보다 훨씬 높습니다 (2.4x).
- 스택 용량이 최고입니다 (4x).
- 경험치 획득이 보통보다 훨씬 높습니다 (2.2x).

<a id="domain-ratings-7"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.59/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 좋음 (1.42/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 좋음 (1.43/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (2.56/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.47/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-7"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **보안 경로**
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
| DetectionSpeedMultiplier | 2.4 | 적 탐지 속도가 정상보다 훨씬 높습니다. 2.4x. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.15 | 사망 시 내구성 손실은 0.15x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.8 | 방어에 대한 적 피해는 0.8x로 정상보다 낮습니다. |
| EnemyHealthMultiplier | 1.0 | 적 회복력은 1x로 보통에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 1.4 | 플레이어가 받는 적 피해는 1.4x로 정상보다 높습니다. |
| EnemySpawnRate | 1.4 | 적 빈도가 1.4x로 정상보다 높습니다. |
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
| PlayerXPGainMultiplier | 2.2 | 경험치 획득량은 2.2x로 정상보다 훨씬 높습니다. |
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
- `encounter_director`: `security_lockdown_checkpoint_acceleration`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-inspection"></a>
## 9일 차 - 식량 검사

**프로필 ID:** `security_lockdown_ration_inspection` **전체 조건:** 표준 압력 (2.36/5) **일반적인 의미:** 표준 압력. 생존 압력: 까다로운 조건이 주요 압력입니다. 전투 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 음식과 물을 가지고 다니고, 장거리 여행 전에 휴식을 취하고, 안전한 정지를 계획하세요.

<a id="main-effects-8"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 기본 재고 규모가 심각한 상황 (10).
- 싱크대 물은 안전하지 않을 수 있습니다.
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.25x).
- 식품 부패가 정상보다 훨씬 높음 (2x).

<a id="domain-ratings-8"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.4/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 까다로운 (2.9/5) | 배고픔, 갈증, 피로 또는 위생에 더 많은 주의가 필요함. |
| 자원 압박 | 표준 (2.3/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.17/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.53/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-8"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **보안 부족**
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
| DetectionSpeedMultiplier | 1.8 | 적 감지 속도는 1.8x로 정상보다 훨씬 빠릅니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.35 | 사망 시 내구성 손실은 0.35x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.0 | 방어에 대한 적의 피해는 1x로 거의 정상입니다. |
| EnemyHealthMultiplier | 1.4 | 적의 회복력은 1.2x로 정상보다 높습니다. 1.4x. |
| EnemyPlayerDamageMultiplier | 1.5 | 플레이어에게 주는 적 피해가 정상보다 1.5배 높습니다. |
| EnemySpawnRate | 1.0 | 적의 주파수는 1x로 정상에 가깝습니다. |
| FatigueSpeedMultiplier | 1.3 | 피로율은 1.3x로 정상보다 높습니다. |
| FirstTimeStartingWeapon | 0 | 시작 무기 보급이 표준입니다. 압력은 0입니다. |
| FoodSpoilSpeedMultiplier | 2.0 | 음식 부패는 2x로 정상보다 훨씬 높습니다. |
| GameDifficulty | 1 | 게임 난이도는 표준입니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.6 | 배고픔 비율은 1.6x로 정상보다 훨씬 높습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 0.75 | 아이템 내구도는 0.75x로 정상보다 낮습니다. |
| ItemStackSizeMultiplier | 1.0 | 스택 용량은 1배로 정상에 가깝습니다. |
| ItemWeightMultiplier | 1.3 | 아이템 무게는 1.3배로 정상보다 높습니다. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 1.6 | 경험치 획득량이 1.6x로 정상보다 높습니다. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 0.5 | 냉장고는 평소보다 훨씬 낮습니다. 0.5x. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.5 | 싱크 리필 비율은 0.5x로 정상보다 훨씬 낮습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | true | 싱크대 물은 안전하지 않을 수 있습니다. |
| ThirstSpeedMultiplier | 1.5 | 목마름 비율은 1.5x로 정상보다 높습니다. |
| WeatherFrequency | 2 | 날씨 빈도가 가끔 있습니다. |

<a id="optional-adapter-selection-8"></a>
### 선택적 어댑터 선택

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `security_lockdown_ration_inspection`
- `lethal_lasers`: `standard_safety`

<a id="day-10---briefly-unwatched"></a>
## 10일차 - 잠시 지켜보지 않음

**프로필 ID:** `security_lockdown_briefly_unwatched` **전체 조건:** 유리한 조건 (1.17/5) **일반적인 의미:** 유리한 조건. 환경적 압력: 유리한 조건이 주요 압력입니다. 전투 압력: 유리한 조건이 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

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
| 전투 압박 | 좋음 (1.27/5) | 적대적인 압력이 평소보다 가벼워졌습니다. |
| 생존 압박 | 좋음 (1.02/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 좋음 (0.9/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 좋음 (1.54/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.19/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-9"></a>
### 대우 상황

- 계층: **최소한의 만남**
- 테마: **보안 복구**
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
| DetectionSpeedMultiplier | 0.7 | 적 탐지 속도는 0.7x로 정상보다 낮습니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.0 | 사망 시 내구성 손실은 0x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 3 | 적의 정확도는 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.1 | 적 방어에 대한 피해가 0.1x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 0.9 | 적 회복력은 0.9x로 정상에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 0.4 | 플레이어가 받는 적 피해는 0.4x로 정상보다 훨씬 낮습니다. |
| EnemySpawnRate | 0.4 | 적의 빈도는 0.4x로 정상보다 훨씬 낮습니다. |
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
| PlayerXPGainMultiplier | 2.8 | 경험치 획득은 극단적입니다. 2.8배. |
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
- `encounter_director`: `security_lockdown_briefly_unwatched`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-with-witnesses"></a>
## 11일차 - 증인과 함께하는 훈련

**프로필 ID:** `security_lockdown_training_with_witnesses` **전체 조건:** 유리한 조건 (1.62/5) **일반적인 의미:** 유리한 조건. 환경 압력: 표준 압력이 주요 압력입니다. 전투 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

<a id="main-effects-10"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 보너스 특전 포인트는 구호 조건입니다. (12).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0x).
- 스택 용량이 최고입니다 (5배).
- 경험치 획득량이 엄청납니다 (3.6x).

<a id="domain-ratings-10"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (1.95/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 좋음 (1.58/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (0.92/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (1.96/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.43/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-10"></a>
### 대우 상황

- 계층: **가벼운 조우**
- 테마: **보안 교육**
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
| DetectionSpeedMultiplier | 1.4 | 적 탐지 속도가 1.4x로 정상보다 높습니다. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.0 | 사망 시 내구성 손실은 0x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.4 | 방어에 대한 적 피해는 0.4x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 1.0 | 적 회복력은 1x로 보통에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 0.9 | 플레이어에 대한 적 피해는 0.9x로 거의 정상에 가깝습니다. |
| EnemySpawnRate | 1.0 | 적의 주파수는 1x로 정상에 가깝습니다. |
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
| PlayerXPGainMultiplier | 3.6 | 경험치 획득은 3.6x로 극단적입니다. |
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
- `encounter_director`: `security_lockdown_training_with_witnesses`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-security-response"></a>
## 12일차 - 블랙 랩 보안 대응

**프로필 ID:** `security_lockdown_black_lab_security_response` **전체 조건:** 까다로운 조건 (2.65/5) **일반적인 의미:** 까다로운 조건. 전투 압박: 가혹한 상황이 주요 압박입니다. 생존 압력: 표준 압력이 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-11"></a>
### 주요 효과

- 적 탐지 속도가 극도로 빠릅니다 (3.3x).
- 적 정확도: 매우 정확합니다.
- 게임 난이도: 매우 어렵습니다.
- 플레이어에 대한 적 피해가 극심함 (2.5x).
- 경험치 획득량이 엄청납니다 (2.9x).

<a id="domain-ratings-11"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 심각한 (3.59/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (2.53/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 표준 (1.78/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.22/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 표준 (1.79/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-11"></a>
### 대우 상황

- 계층: **극한 조우**
- 테마: **보안 강도 높은 테스트**
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
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.0 | 억제율은 1x로 정상에 가깝습니다. |
| DamageToAlliesMultiplier | 0.15 | 아군 사격 피해는 0.15배로 평소보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.0 | 낮-밤 주기 속도는 1x로 정상에 가깝습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 2 | 죽음 패널티가 무겁습니다. |
| DetectionSpeedMultiplier | 3.3 | 적 탐지 속도가 극심합니다. 3.3x. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.4 | 사망 시 내구성 손실은 0.4배로 평소보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 1.4 | 방어에 대한 적 피해는 1.4x로 정상보다 높습니다. |
| EnemyHealthMultiplier | 2.2 | 적 회복력은 2.2배로 정상보다 훨씬 높습니다. |
| EnemyPlayerDamageMultiplier | 2.5 | 플레이어에 대한 적 피해는 2.5배로 극심합니다. |
| EnemySpawnRate | 2.3 | 적의 빈도는 2.3x로 정상보다 훨씬 높습니다. |
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
| ItemWeightMultiplier | 1.0 | 아이템 무게는 보통에 가깝습니다. 1x. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 2.9 | 경험치 획득량은 2.9x로 극심합니다. |
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
- `encounter_director`: `security_lockdown_black_lab_security_response`
- `lethal_lasers`: `high_hazard`

<a id="day-13---overtime-lockdown"></a>
## 13일차 - 초과 근무 봉쇄

**프로필 ID:** `security_lockdown_overtime_lockdown` **전체 조건:** 표준 압력 (2.45/5) **일반적인 의미:** 표준 압력. 생존 압력: 까다로운 조건이 주요 압력입니다. 전투 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 음식과 물을 가지고 다니고, 장거리 여행 전에 휴식을 취하고, 안전한 정지를 계획하세요.

<a id="main-effects-12"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 기본 재고 규모가 심각한 상황 (10).
- 싱크대 물은 안전하지 않을 수 있습니다.
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0.25x).
- 게임 난이도: 어려움.

<a id="domain-ratings-12"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 표준 (2.58/5) | 적대적인 압력이 정상입니다. |
| 생존 압박 | 까다로운 (3.2/5) | 배고픔, 갈증, 피로 또는 위생에 더 많은 주의가 필요함. |
| 자원 압박 | 표준 (2.16/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.01/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.53/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-12"></a>
### 대우 상황

- 계층: **보통의 만남**
- 테마: **보안 내구성**
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
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 1.8 | 적 감지 속도는 1.8x로 정상보다 훨씬 빠릅니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.35 | 사망 시 내구성 손실은 0.35x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.9 | 방어에 대한 적 피해는 0.9x로 정상에 가깝습니다. |
| EnemyHealthMultiplier | 1.6 | 적 회복력이 1.6배로 정상보다 높습니다. |
| EnemyPlayerDamageMultiplier | 1.6 | 플레이어가 받는 적 피해는 1.6배로 정상보다 높습니다. |
| EnemySpawnRate | 1.0 | 적의 주파수는 1x로 정상에 가깝습니다. |
| FatigueSpeedMultiplier | 1.7 | 피로 배고픔 비율은 1.7배로 정상보다 훨씬 높습니다. |
| FirstTimeStartingWeapon | 0 | 시작 무기 보급이 표준입니다. 압력은 0입니다. |
| FoodSpoilSpeedMultiplier | 1.8 | 음식 부패는 1.8x로 정상보다 훨씬 높습니다. |
| GameDifficulty | 2 | 게임 난이도가 어렵습니다. |
| HardcoreMode | false | 하드코어 모드가 비활성화됩니다. |
| HomeWorlds | true | 홈 월드 동작이 활성화됩니다. |
| HostAccessPlayerCorpses | true | 호스트는 복구 지원을 위해 플레이어 시체에 접근할 수 있습니다. |
| HungerSpeedMultiplier | 1.8 | 배고픔 비율은 1.8배로 정상보다 훨씬 높습니다. |
| InvisibleRadiation | false | 이 규칙에 따라 방사선이 보이지 않게 되지 않습니다. |
| ItemDurabilityMultiplier | 0.9 | 아이템 내구도는 0.9x로 정상에 가깝습니다. |
| ItemStackSizeMultiplier | 2.0 | 스택 용량은 2배로 정상보다 훨씬 높습니다. |
| ItemWeightMultiplier | 1.4 | 아이템 무게가 이상입니다. 1.4x로 정상입니다. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 1.8 | 경험치 획득량은 평소보다 훨씬 높습니다. 1.8x. |
| PowerSocketsOffAtNight | true | 밤에는 전원 소켓이 꺼집니다. |
| RadiationDealsDamage | true | 방사선으로 인해 손상이 발생합니다. |
| RefrigerationEffectivenessMultiplier | 0.65 | 냉장고가 0.65x로 정상보다 낮습니다. |
| ShowDeathMessages | true | 사망 알림 표시됩니다. |
| SinkRefillRate | 0.35 | 싱크대 리필 비율이 0.35x로 정상보다 훨씬 낮습니다. |
| StorageByTag | true | 태그된 보관 정리가 활성화됩니다. |
| StructuralSupportLimit | 0 | 구조적 지지 한계는 표준 압력 0입니다. |
| TaintedSinkWater | true | 싱크대 물은 안전하지 않을 수 있습니다. |
| ThirstSpeedMultiplier | 1.8 | 목마름 발생률은 1.8x로 정상보다 훨씬 높습니다. |
| WeatherFrequency | 2 | 날씨 빈도가 가끔 있습니다. |

<a id="optional-adapter-selection-12"></a>
### 선택적 어댑터 선택

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `security_lockdown_overtime_lockdown`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-warrant"></a>
## 14일차 - 공급 옷장 영장

**프로필 ID:** `security_lockdown_supply_closet_warrant` **전체 조건:** 유리한 조건 (1.16/5) **일반적인 의미:** 유리한 조건. 환경적 압력: 유리한 조건이 주요 압력입니다. 전투 압력: 유리한 조건이 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탐색, 재입고, 수리 및 다음 재부팅을 준비하는 데 유리한 조건을 사용하세요.

<a id="main-effects-13"></a>
### 주요 효과

- 기본 재고 크기는 완화 조건입니다 (40).
- 보너스 특전 포인트는 구호 조건입니다. (12).
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0x).
- 사망 시 내구성 손실은 정상보다 훨씬 낮습니다. (0x).
- 아이템 내구성이 최고입니다 (6x).

<a id="domain-ratings-13"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 좋음 (1.39/5) | 적대적인 압력이 평소보다 가벼워졌습니다. |
| 생존 압박 | 좋음 (0.86/5) | 일상의 생존 요구는 관대합니다. |
| 자원 압박 | 구호 (0.79/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 좋음 (1.58/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.19/5) | 죽음과 회복 규칙은 관대합니다. |

<a id="encounter-context-13"></a>
### 대우 상황

- 계층: **최소한의 만남**
- 테마: **보안 완화**
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
| DeathPenalties | 0 | 사망 처벌은 최소화됩니다. |
| DetectionSpeedMultiplier | 1.0 | 적 탐지 속도는 1x로 정상에 가깝습니다. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.0 | 사망 시 내구성 손실은 0x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 3 | 적의 정확도는 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.1 | 적 방어에 대한 피해가 0.1x로 정상보다 훨씬 낮습니다. |
| EnemyHealthMultiplier | 0.9 | 적 회복력은 0.9x로 정상에 가깝습니다. |
| EnemyPlayerDamageMultiplier | 0.6 | 플레이어가 받는 적 피해는 0.6x로 정상보다 낮습니다. |
| EnemySpawnRate | 0.5 | 적의 빈도는 0.5x로 정상보다 훨씬 낮습니다. |
| FatigueSpeedMultiplier | 0.35 | 피로율은 0.35x로 정상보다 훨씬 낮습니다. |
| FirstTimeStartingWeapon | 6 | 시작 무기 보급이 6으로 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 0.25 | 음식 부패 0.25x로 정상보다 훨씬 낮습니다. |
| GameDifficulty | 1 | 게임 난이도는 표준입니다. |
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
| PlayerXPGainMultiplier | 4.1 | 경험치 획득량이 4.1배로 극단적입니다. |
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

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `security_lockdown_supply_closet_warrant`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-audit-formal"></a>
## 15일차 - 정확성 감사 공식

**프로필 ID:** `security_lockdown_accuracy_audit_formal` **전체 조건:** 표준 압력 (2.16/5) **일반적인 의미:** 표준 압력. 전투 압력: 까다로운 조건이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-14"></a>
### 주요 효과

- 적 정확도: 매우 정확합니다.
- 적 탐지 속도는 정상보다 훨씬 높습니다 (2.4x).
- 아군 사격 피해는 정상보다 훨씬 낮습니다. (0x).
- 경험치 획득이 보통보다 훨씬 높습니다 (2.3x).
- 게임 난이도: 어려움.

<a id="domain-ratings-14"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 까다로운 (2.73/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (1.98/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (1.68/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.17/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.51/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-14"></a>
### 대우 상황

- 계층: **심각한 전투**
- 테마: **보안 정밀도**
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
| DeathPenalties | 1 | 사망 패널티가 표준입니다. |
| DetectionSpeedMultiplier | 2.4 | 적 탐지 속도가 정상보다 훨씬 높습니다. 2.4x. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.3 | 사망 시 내구성 손실은 0.3x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.8 | 방어에 대한 적 피해는 0.8x로 정상보다 낮습니다. |
| EnemyHealthMultiplier | 1.2 | 적의 탄력성은 1.2x. |
| EnemyPlayerDamageMultiplier | 1.9 | 플레이어에 대한 적 피해는 1.9x로 정상보다 훨씬 높습니다. |
| EnemySpawnRate | 1.2 | 적의 빈도는 1.45x로 정상에 가깝습니다. 1.2x. |
| FatigueSpeedMultiplier | 1.25 | 피로율은 1.25x로 정상보다 높습니다. |
| FirstTimeStartingWeapon | 4 | 시작 무기 보급은 4에서 유리한 조건입니다. |
| FoodSpoilSpeedMultiplier | 1.0 | 음식 부패는 1x로 거의 정상입니다. |
| GameDifficulty | 2 | 게임 난이도가 어렵습니다. |
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
| PlayerXPGainMultiplier | 2.3 | 경험치 획득이 정상보다 훨씬 높은 2.3x입니다. |
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

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `security_lockdown_accuracy_audit_formal`
- `lethal_lasers`: `high_hazard`

<a id="day-16---experimental-security-protocol"></a>
## 16일차 - 실험적 보안 프로토콜

**프로필 ID:** `security_lockdown_experimental_security_protocol` **전체 조건:** 표준 압력 (2.2/5) **일반적인 의미:** 표준 압력. 전투 압력: 까다로운 조건이 주요 압력입니다. 환경적 압력: 표준 압력은 그 다음으로 강력한 요소입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

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
| 전투 압박 | 까다로운 (2.75/5) | 적대적인 압력이 높아집니다. 참여하기 전에 준비하세요. |
| 생존 압박 | 표준 (2.36/5) | 일상 생존 요구 사항이 정상에 가깝습니다. |
| 자원 압박 | 좋음 (0.99/5) | 보급품 및 운송 조건이 좋습니다. |
| 환경적 압박 | 표준 (2.59/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 좋음 (1.67/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-15"></a>
### 대우 상황

- 계층: **극한 조우**
- 테마: **실험적인 보안**
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
| BonusPerkPoints | 15 | 보너스 특전 포인트는 15의 구호 조건입니다. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.2 | 자제율은 보통보다 높습니다. 1.2x. |
| DamageToAlliesMultiplier | 0.0 | 아군 사격 피해는 0x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.5 | 낮-밤 주기 속도는 1.5x로 정상보다 높습니다. |
| DayNightCycleState | 1 | 낮-밤 상태는 낮에 편향되어 있습니다. |
| DeathPenalties | 2 | 죽음 패널티가 무겁습니다. |
| DetectionSpeedMultiplier | 0.9 | 적 탐지 속도는 0.9x로 거의 정상에 가깝습니다. |
| DisableResearchMinigame | true | 연구 우회가 활성화됩니다. |
| DurabilityLossOnDeathMultiplier | 0.0 | 사망 시 내구성 손실은 0x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 0.7 | 적 방어에 대한 피해는 0.7x로 정상보다 낮습니다. |
| EnemyHealthMultiplier | 1.8 | 적 회복력은 1.8배로 정상보다 훨씬 높습니다. |
| EnemyPlayerDamageMultiplier | 1.2 | 플레이어에 대한 적 피해는 1.2x로 정상보다 높습니다. |
| EnemySpawnRate | 1.5 | 적 빈도는 다음과 같습니다. 1.5x로 정상보다 높습니다. |
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
| PlayerXPGainMultiplier | 4.6 | 경험치 획득이 극심합니다. 4.6x. |
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

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `security_lockdown_experimental_security_protocol`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-lockdown-exam"></a>
## 17일차 - 최종 봉쇄 시험

**프로필 ID:** `security_lockdown_final_lockdown_exam` **전체 조건:** 까다로운 조건 (2.89/5) **일반적인 의미:** 까다로운 조건. 전투 압박: 가혹한 상황이 주요 압박입니다. 생존 압력: 까다로운 조건이 그 다음으로 강력한 요인입니다. **플레이어 조언:** 탄약을 휴대하고, 후퇴 경로를 유지하고, 지원되지 않는 전투를 피하세요.

<a id="main-effects-16"></a>
### 주요 효과

- 적 탐지 속도가 극도로 빠릅니다 (3.8x).
- 적 정확도: 매우 정확합니다.
- 플레이어에 대한 적 피해가 극심함 (3x).
- 적의 빈도가 극도로 높음 (3x).
- 게임 난이도: 매우 어렵습니다.

<a id="domain-ratings-16"></a>
### 도메인 등급

| 지역 | 등급 | 의미 |
|---|---|---|
| 전투 압박 | 심각한 (3.98/5) | 적대적인 압박이 심합니다. 지원되지 않는 전투를 피하세요. |
| 생존 압박 | 까다로운 (2.72/5) | 배고픔, 갈증, 피로 또는 위생에 더 많은 주의가 필요함. |
| 자원 압박 | 표준 (1.88/5) | 공급 및 운반 조건이 정상에 가깝습니다. |
| 환경적 압박 | 표준 (2.55/5) | 환경 조건이 정상에 가깝습니다. |
| 회복 압력 | 표준 (1.81/5) | 죽음 및 회복 규칙은 정상에 가깝습니다. |

<a id="encounter-context-16"></a>
### 대우 상황

- 계층: **캡스톤 조우**
- 테마: **보안 관석**
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
| BonusPerkPoints | 0 | 보너스 혜택 포인트는 12에서 표준 압력입니다. 0. |
| BridgeSupports | 0 | 교량 지원 한계는 표준 압력 0입니다. |
| ContinenceSpeedMultiplier | 1.1 | 자제율은 1.1x로 정상에 가깝습니다. |
| DamageToAlliesMultiplier | 0.1 | 아군 사격 피해는 0.1x로 정상보다 훨씬 낮습니다. |
| DayNightCycleSpeedMultiplier | 1.45 | 낮-밤 주기 속도는 1.45x로 정상보다 높습니다. |
| DayNightCycleState | 0 | 낮-밤 상태는 일반적인 주기입니다. |
| DeathPenalties | 2 | 죽음 패널티가 무겁습니다. |
| DetectionSpeedMultiplier | 3.8 | 적 탐지 속도가 극심합니다. 3.8x. |
| DisableResearchMinigame | false | 연구에서는 일반 미니게임을 사용합니다. |
| DurabilityLossOnDeathMultiplier | 0.5 | 사망 시 내구성 손실은 0.5x로 정상보다 훨씬 낮습니다. |
| EnemyAccuracy | 4 | 적 정확도가 매우 정확합니다. |
| EnemyDeployableDamageMultiplier | 2.0 | 방어에 대한 적 피해는 2x로 정상보다 훨씬 높습니다. |
| EnemyHealthMultiplier | 2.7 | 적 회복력은 2.7x로 극도입니다. |
| EnemyPlayerDamageMultiplier | 3.0 | 플레이어에 대한 적 피해는 3배로 극도로 높습니다. |
| EnemySpawnRate | 3.0 | 적 빈도는 3배로 극단적입니다. |
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
| ItemWeightMultiplier | 1.1 | 아이템 무게는 1.1x로 정상에 가깝습니다. |
| LootRespawnEnabled | false | 수집한 전리품은 다시 생성되지 않습니다. |
| PlayerFurnitureDestruction | false | 플레이어가 제작한 가구는 이 규칙으로부터 보호됩니다. |
| PlayerXPGainMultiplier | 4.3 | 경험치 획득량이 4.3배로 극심합니다. |
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
- `encounter_director`: `security_lockdown_final_lockdown_exam`
- `lethal_lasers`: `overcharged_high_hazard`
