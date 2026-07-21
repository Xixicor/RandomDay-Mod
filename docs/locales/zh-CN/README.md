# RandomDay 简体中文指南

**v0.3.16-alpha**

RandomDay 会为 Abiotic Factor 的下一次启动准备完整的 `SandboxSettings.ini`。
它不会修改当前会话已经加载的规则，并始终区分正在使用的配置和已准备的配置。

## 安装与验证

按照[安装指南](../../../INSTALL.md)操作。正确目录是 `ue4ss/Mods/RandomDay`，
并在 `mods.txt` 中加入 `RandomDay : 1`。第一次启动通常负责准备，之后的启动
才会启用已准备的配置。

检查 `runtime/current/randomday_status.json`、`runtime/rotation_state.txt` 和
`web_export/today.json`。三个文件中的当前配置与待启用配置标识应保持一致。

## 选择游戏体验

在 `RandomDay/Scripts/ax_config/server.lua` 中设置模式、配置族、起始日和推进方式。
请阅读[首次运行](../../START_HERE.md)、[选择配置](../../CHOOSE_A_PROFILE.md)、
[配置](../../CONFIGURATION.md)和[日常操作](../../OPERATIONS.md)。

`HardcoreMode=False`、`AllowIronMode=False`、`StructuralSupportLimit=0` 和
`BridgeSupports=0` 是本版本的默认值，并非游戏不可更改的规则。
[高级配置](../../CONFIGURATION.md#customize-the-shipped-profile-defaults)说明如何进行持久修改。

命令、路径、配置键和状态值保留英文，以便与实际文件完全一致。

## Alpha 版本与持续生效的选项

这是 Alpha 版本。文档中的安装、轮换和恢复流程已经过测试；兼容性和易用性仍在继续改进。

`RandomDay/Scripts/ax_config/server.lua` 中的 `sandbox.profile_overrides` 会把四个数值应用到每个系列和日期。先停止服务器，只修改一次，再重新启动。后续轮换和启动仍使用相同数值；只修改 `SandboxSettings.ini` 只是临时生效。

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

以下可选模组都是各自作者提供的独立下载。RandomDay 不会重新分发它们，也不会修改其功能；启用的适配器只调整现有且受支持的设置。感谢这些模组的作者和维护者。
