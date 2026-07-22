<a id="singleplayer-and-lan-manual-workflow"></a>
# 싱글플레이어 및 LAN 수동 작업 흐름

> **표준 영어 소스:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). 이 현지화된 문서는 정확한 명령, 경로, 키, 상태 값, 해시 및 파일 이름을 보존합니다. 기술적인 표현이 다를 경우 영어 소스를 사용하세요.


RandomDay's singleplayer/LAN 패키지는 mod 폴더 내에 완전한 `SandboxSettings.ini`를 생성합니다. 게임이 닫혀 있는 동안 세계를 선택하고 파일을 수동으로 복사합니다.

패키지는 다음 출력으로 잠겨 있습니다.

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

전용 서버 샌드박스 쓰기, 샌드박스 미러 및 모든 선택적 어댑터 쓰기를 비활성화합니다. 검색되지 않습니다 AppData, Steam 사용자 데이터, 문서, 저장 폴더, 서버 폴더 또는 타사 모드 폴더.

<a id="understand-the-manual-boundary"></a>
## 수동 경계를 이해하세요

시작하기 전에 `RandomDay/Scripts/ax_config/server.lua`에서 환경을 구성하세요. 수동 패키지는 `experience.mode="auto"` 또는 `"singleplayer_lan"`을 허용합니다. 고정 또는 무작위 첫날과 순차적 또는 비반복 무작위 17일 주문을 선택할 수 있습니다. 가족 선택은 전용 서버와 동일한 선택, 순환 또는 반복되지 않는 무작위 가족 설정을 사용합니다.

생성된 출력에는 마커가 포함되어 있습니다. RandomDay은 다음 프로세스를 읽습니다. 상태 정렬을 유지하려면 다른 생성 프로세스를 시작하기 전에 생성된 파일을 선택한 중지된 세계에 복사하세요. 복사하지 않고 반복적으로 시작하면 전 세계에서 이전 출력을 로드한 적이 없더라도 mod-local 대기열이 진행될 수 있습니다.

표준을 따르세요 [싱글플레이어 또는 LAN 설치 절차](%EC%84%A4%EC%B9%98.md#singleplayer-or-lan) 이 페이지에서는 수동 경계를 설명합니다. 다른 설치 방법을 정의하지 않습니다.

1세대는 프로필을 준비합니다. 해당 게임 프로세스에 의해 이미 로드된 규칙은 변경할 수 없습니다. 닫고 복사한 후 다시 시작하여 사용하세요. 의도적으로 다음 날을 유지하려는 경우에만 주기를 반복하십시오.

삭제 RandomDay은 수동으로 복사한 월드 파일을 복원하지 않습니다. 해당 롤백에는 자체 백업을 사용하십시오. 팔로우 [모든 설치 제거 또는 롤백](%EC%84%A4%EC%B9%98.md#remove-or-disable-randomday) 정확한 제거 절차를 확인하세요.
