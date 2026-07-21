# RandomDay 한국어 안내

**v0.3.16-alpha**

RandomDay는 다음 Abiotic Factor 시작에 사용할 완전한 `SandboxSettings.ini`를
준비합니다. 현재 세션이 이미 불러온 규칙은 바꾸지 않으며, 활성 프로필과 준비된
프로필을 분리하여 관리합니다.

## 설치와 확인

[설치 안내](../../../INSTALL.md)를 따르십시오. 올바른 위치는
`ue4ss/Mods/RandomDay`이고 `mods.txt`에는 `RandomDay : 1`이 있어야 합니다.
일반적으로 첫 시작은 준비하고, 이후 시작이 준비된 프로필을 활성화합니다.

`runtime/current/randomday_status.json`, `runtime/rotation_state.txt`,
`web_export/today.json`을 확인하십시오. 세 파일의 활성 및 준비된 식별자가 서로
일치해야 합니다.

## 플레이 방식 선택

모드, 패밀리, 시작일, 진행 방식은 `RandomDay/Scripts/ax_config/server.lua`에서
설정합니다. [시작](../../START_HERE.md), [프로필 선택](../../CHOOSE_A_PROFILE.md),
[설정](../../CONFIGURATION.md), [운영](../../OPERATIONS.md)을 참고하십시오.

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0`,
`BridgeSupports=0`은 이 릴리스의 기본값이며 고정된 게임 규칙이 아닙니다.
[고급 설정](../../CONFIGURATION.md#customize-the-shipped-profile-defaults)은 지속적인 변경 방법을 설명합니다.

명령, 경로, 키, 상태 값은 실제 파일과 맞도록 영어를 유지합니다.

## 알파 릴리스와 유지되는 선택값

이 버전은 알파입니다. 문서화된 설치, 순환, 복구 경로는 테스트했으며 호환성과 사용 편의성은 계속 개선 중입니다.

`RandomDay/Scripts/ax_config/server.lua`의 `sandbox.profile_overrides`는 네 값을 모든 패밀리와 날짜에 유지합니다. 서버를 멈추고 한 번 수정한 뒤 다시 시작하세요. 이후 순환과 시작에도 같은 값이 사용됩니다. `SandboxSettings.ini`만 바꾸면 일시적입니다.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

아래 선택 모드는 각 제작자가 따로 배포합니다. RandomDay는 이를 재배포하거나 기능을 바꾸지 않으며, 활성화된 어댑터는 이미 존재하는 지원 설정만 조정합니다. 제작자와 유지관리자께 감사드립니다.
