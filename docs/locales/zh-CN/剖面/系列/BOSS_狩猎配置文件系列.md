<a id="randomday---boss-hunt-family"></a>
# RandomDay - Boss Hunt Family

> **规范的英文来源:** [boss_hunt.md](../../../../profiles/families/boss_hunt.md). 此本地化文档保留了准确的命令、路径、键、状态值、哈希值和文件名。如果技术措辞不同，请使用英文来源。


版本：`v0.3.16-alpha`

罕见地遭遇奖杯级奖励和奖杯级错误。

**游戏风格：**精英目标狩猎**消息提示音：**奖杯板挑战通知

<a id="17-day-index"></a>
## 17天指数

| 日 | 资料 | 条件 | 主要压力 |
|---:|---|---|---|
| 1 | 奖杯方向 | 标准压力(1.98/5) | 战斗压力 |
| 2 | 诱饵构建 | 有利条件(1.45/5) | 环境压力 |
| 3 | 小游戏警告 | 标准压力(2.28/5) | 生存压力 |
| 4 | 奖励线索 | 有利条件(1.62/5) | 战斗压力 |
| 5 | 授权顶点问题 | 标准压力(2.16/5) | 战斗压力 |
| 6 | 风化采石场 | 标准压力(2.13/5) | 环境压力 |
| 7 | 夜间奖杯移动 | 标准压力(2.16/5) | 战斗压力 |
| 8 | 快速目标路线 | 标准压力(1.93/5) | 环境压力 |
| 9 | 饥饿奖杯盒 | 标准压力(2.29/5) | 生存压力 |
| 10 | 动物标本剥制术休息 | 有利条件(1.2/5) | 环境压力 |
| 11 | 练习狩猎 | 有利条件(1.61/5) | 环境压力 |
| 12 | 黑色实验室标本 | 苛刻条件(2.62/5) | 战斗压力 |
| 13 | 长时间狩猎转变 | 标准压力(2.39/5) | 生存压力 |
| 14 | 安静诱饵日 | 有利条件(1.19/5) | 环境压力 |
| 15 | 精确奖杯审核 | 标准压力(2.12/5) | 战斗压力 |
| 16 | 实验性顶点 | 标准压力(2.24/5) | 战斗压力 |
| 17 | 最终奖杯板 | 苛刻条件(2.79/5) | 战斗压力 |

<a id="day-1---trophy-orientation"></a>
## 第 1 天 - 奖杯方向

**个人资料 ID：** `boss_hunt_trophy_orientation` **总体条件：**标准压力(1.98/5) **简单含义：**标准压力。战斗压力：标准压力为主压力。环境压力：标准压力是第二强的因素。 **玩家建议：**携带弹药，保留撤退路线，避免在无人支援的情况下战斗。

<a id="main-effects"></a>
### 主要效果

- 敌人准确度：准确。
- 友军火力伤害远低于正常水平(0.25x).
- 死亡时的耐久度损失远低于正常水平(0.25x).
- 堆栈容量远高于正常水平(2x).
- 电源插座在夜间关闭。

<a id="domain-ratings"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 标准(2.23/5) | 敌对压力接近 |
| 生存压力 | 标准(1.9/5) | 日常生存需求接近正常。 |
| 资源压力 | 标准(1.71/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.22/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.5/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context"></a>
### 遭遇背景

- 级别：**中等遭遇**
- 主题：**精英狩猎方向**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.07**
- 特殊活动机会：**2**

<a id="exact-sandbox-settings"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 12 | 基本库存尺寸为标准压力 12。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.0 | 失控率接近正常值 1x。 |
| DamageToAlliesMultiplier | 0.25 | 友军火力伤害远低于正常值 0.25x。 |
| DayNightCycleSpeedMultiplier | 1.0 | 日夜循环速度接近正常值 1x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 1.1 | 敌人检测速度接近正常，为 1.1 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.25 | 死亡时的耐久度损失远低于正常水平0.25x。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 1.8 | 敌人的恢复能力远高于正常水平，为 1.8x。 |
| EnemyPlayerDamageMultiplier | 1.5 | 敌人对玩家的伤害高于正常水平 1.5 倍。 |
| EnemySpawnRate | 0.8 | 敌人频率低于正常水平，为 0.8 倍。 |
| FatigueSpeedMultiplier | 1.0 | 疲劳率在 1 倍时接近正常。 |
| FirstTimeStartingWeapon | 0 | 开始武器供应的标准压力为0. |
| FoodSpoilSpeedMultiplier | 1.0 | 食物腐败程度为 1 倍，接近正常。 |
| GameDifficulty | 1 | 游戏难度为标准。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 1.0 | 饥饿率接近正常值，为 1 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 1.5 | 物品耐久度高于正常值，为 1.5 倍。 |
| ItemStackSizeMultiplier | 2.0 | 堆栈容量远高于正常值，为 2 倍。 |
| ItemWeightMultiplier | 0.9 | 物品重量接近正常值，为0.9x。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 1.9 | 经验增益远高于正常值，为 1.9 倍。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 1.0 | 制冷在 1x 时接近正常水平。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 1.0 | 水槽重新填充率接近正常值 1 倍。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 1.0 | 口渴率接近正常，为 1 倍。 |
| WeatherFrequency | 3 | 天气频率正常。 |

<a id="optional-adapter-selection"></a>
### 可选适配器选择

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `boss_hunt_trophy_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---bait-construction"></a>
## 第 2 天 - 诱饵构建

**个人资料 ID：** `boss_hunt_bait_construction` **总体条件：**有利条件(1.45/5) **简单含义：**有利的条件。环境压力：以标准压力为主。战斗压力：有利的条件是第二大的因素。 **玩家建议：**利用有利的条件进行探索、补货、维修，并为下次重新启动做好准备。

<a id="main-effects-1"></a>
### 主要效果

- 友军火力伤害远低于正常水平(0x).
- 物品耐用性极高(4x).
- 堆栈容量极高(8x).
- 经验值增益极高(2.7x).
- 死亡时的耐久度损失远低于正常水平(0.05x).

<a id="domain-ratings-1"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 有利(1.63/5) | 敌对压力接近 |
| 生存压力 | 有利(1.34/5) | 日常生存需求较为宽松。 |
| 资源压力 | 有利(1.08/5) | 补给和携带条件良好。 |
| 环境压力 | 标准(1.91/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.2/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context-1"></a>
### 遭遇背景

- 级别：**轻度遭遇**
- 主题：**精英狩猎准备**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.028**
- 特殊活动机会：**0**

<a id="exact-sandbox-settings-1"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 26 | 基础库存大小为救援条件为 26。 |
| BonusPerkPoints | 7 | 奖励点数为救援条件为 7。 |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 0.65 | 失控率低于正常水平，为 0.65 倍。 |
| DamageToAlliesMultiplier | 0.0 | 友军火力伤害远低于正常水平，为 0x。 |
| DayNightCycleSpeedMultiplier | 0.9 | 昼夜循环速度接近正常水平，为 0.9 倍。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 0 | 死亡处罚最低。 |
| DetectionSpeedMultiplier | 0.7 | 敌人探测速度低于正常值 0.7x。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.05 | 死亡时的耐久度损失远低于正常水平，为 0.05 倍。 |
| EnemyAccuracy | 2 | 敌人的准确度是标准的。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 1.5 | 敌人的恢复力高于正常水平，为1.5倍。 |
| EnemyPlayerDamageMultiplier | 1.0 | 敌人对玩家的伤害在 1 倍时接近正常。 |
| EnemySpawnRate | 0.4 | 敌人频率远低于正常水平，为 0.4 倍。 |
| FatigueSpeedMultiplier | 0.65 | 疲劳率低于正常值 0.65 倍。 |
| FirstTimeStartingWeapon | 2 | 开始武器供应的标准压力为 2。 |
| FoodSpoilSpeedMultiplier | 0.75 | 食物腐败程度低于正常值0.75x。 |
| GameDifficulty | 1 | 游戏难度为标准。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 0.65 | 饥饿率低于正常值 0.65x。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 4.0 | 物品耐久度极高，为 4x。 |
| ItemStackSizeMultiplier | 8.0 | 堆栈容量极高，为 8x。 |
| ItemWeightMultiplier | 0.5 | 物品重量远低于正常值，为 0.5x。 |
| LootRespawnEnabled | true | 收集后战利品可以返回。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 2.7 | 经验增益达到 2.7 倍。 |
| PowerSocketsOffAtNight | false | 电源插座在夜间仍然可用。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 1.5 | 制冷水平高于正常水平 1.5 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 2.0 | 水槽补充率远高于正常水平2x。 |
| StorageByTag | false | 标记的存储组织已禁用。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 0.65 | 口渴率低于正常水平，为 0.65x。 |
| WeatherFrequency | 2 | 天气频率偶尔出现。 |

<a id="optional-adapter-selection-1"></a>
### 可选适配器选择

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `boss_hunt_bait_construction`
- `lethal_lasers`: `low_hazard`

<a id="day-3---small-game-warning"></a>
## 第 3 天 - 小游戏警告

**个人资料 ID：** `boss_hunt_small_game_warning` **总体条件：**标准压力(2.28/5) **简单含义：**标准压力。生存压力：苛刻的条件是主要压力。战斗压力：标准压力是第二强的因素。 **玩家建议：**携带食物和水，长途旅行前休息，并计划安全停留。

<a id="main-effects-2"></a>
### 主要效果

- 水槽里的水可能不安全。
- 经验增益远高于正常(2.2x).
- 敌人准确度：准确。
- 友军火力伤害远低于正常水平(0.25x).
- 死亡时的耐久度损失远低于正常水平(0.25x).

<a id="domain-ratings-2"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 标准(2.42/5) | 敌对压力接近 |
| 生存压力 | 要求较高的(2.84/5) | 饥饿、口渴、疲劳或卫生需要更多注意。 |
| 资源压力 | 标准(1.86/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.22/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.5/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context-2"></a>
### 遭遇背景

- 级别：**中等遭遇**
- 主题：**精英狩猎生物资源**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.091**
- 特殊活动机会：**8**

<a id="exact-sandbox-settings-2"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 12 | 基本库存尺寸为标准压力 12。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.45 | 自控率高于正常水平1.45 倍。 |
| DamageToAlliesMultiplier | 0.25 | 友军火力伤害远低于正常值 0.25x。 |
| DayNightCycleSpeedMultiplier | 1.0 | 日夜循环速度接近正常值 1x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 1.1 | 敌人检测速度接近正常，为 1.1 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.25 | 死亡时的耐久度损失远低于正常水平0.25x。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 2.0 | 敌人恢复能力远高于正常水平的 2 倍。 |
| EnemyPlayerDamageMultiplier | 1.6 | 敌人对玩家的伤害高于正常值，为 1.6 倍。 |
| EnemySpawnRate | 0.8 | 敌人频率低于正常水平，为 0.8 倍。 |
| FatigueSpeedMultiplier | 1.1 | 疲劳率接近正常水平，为 1.1 倍。 |
| FirstTimeStartingWeapon | 0 | 开始武器供应的标准压力为0. |
| FoodSpoilSpeedMultiplier | 1.25 | 食物腐败程度高于正常水平，为 1.25 倍。 |
| GameDifficulty | 2 | 游戏难度很高。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 1.2 | 饥饿率高于正常水平，为1.2x。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 1.25 | 物品耐久度高于正常水平，为 1.25 倍。 |
| ItemStackSizeMultiplier | 2.0 | 堆栈容量远高于正常值，为 2 倍。 |
| ItemWeightMultiplier | 0.9 | 物品重量接近正常值，为0.9x。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 2.2 | 经验增益远高于正常值，为 2.2 倍。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 0.75 | 制冷能力低于正常水平，为 0.75 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 0.25 | 水槽补充率远低于正常水平，为 0.25 倍。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | true | 水槽里的水可能不安全。 |
| ThirstSpeedMultiplier | 1.7 | 口渴率远高于正常水平，为 1.7 倍。 |
| WeatherFrequency | 3 | 天气频率正常。 |

<a id="optional-adapter-selection-2"></a>
### 可选适配器选择

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `boss_hunt_small_game_warning`
- `lethal_lasers`: `standard_safety`

<a id="day-4---reward-trail"></a>
## 第 4 天 - 奖励追踪

**个人资料 ID：** `boss_hunt_reward_trail` **总体条件：**有利条件(1.62/5) **简单含义：**有利的条件。战斗压力：标准压力为主压力。环境压力：标准压力是第二强的因素。 **玩家建议：**利用有利的条件进行探索、补货、维修，并为下次重新启动做好准备。

<a id="main-effects-3"></a>
### 主要效果

- 物品耐用性极高(2.5x).
- 堆栈容量极高(14x).
- 经验值增益极高(2.9x).
- 水槽补充率极高(2.5x).
- 死亡时的耐久度损失远低于正常水平(0.05x).

<a id="domain-ratings-3"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 标准(1.96/5) | 敌对压力接近 |
| 生存压力 | 有利(1.5/5) | 日常生存需求较为宽松。 |
| 资源压力 | 有利(0.99/5) | 补给和携带条件良好。 |
| 环境压力 | 标准(1.93/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.44/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context-3"></a>
### 遭遇背景

- 级别：**轻度遭遇**
- 主题：**精英狩猎战利品流动性**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.056**
- 特殊活动机会：**2**

<a id="exact-sandbox-settings-3"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 30 | 基础库存大小为救济条件为 30。 |
| BonusPerkPoints | 3 | 奖励点数为有利条件为 3。 |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 0.75 | 失禁率低于正常水平，为0.75x。 |
| DamageToAlliesMultiplier | 0.25 | 友军火力伤害远低于正常值 0.25x。 |
| DayNightCycleSpeedMultiplier | 1.0 | 日夜循环速度接近正常值 1x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 0.9 | 敌人探测速度接近正常为 0.9 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.05 | 死亡时的耐久度损失远低于正常水平，为 0.05 倍。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 1.6 | 敌人的恢复力高于正常水平，为 1.6 倍。 |
| EnemyPlayerDamageMultiplier | 1.2 | 敌人对玩家的伤害高于正常值，为 1.2 倍。 |
| EnemySpawnRate | 0.6 | 敌人频率低于正常值，为 0.6 倍。 |
| FatigueSpeedMultiplier | 0.75 | 疲劳率低于正常值，为 0.75x。 |
| FirstTimeStartingWeapon | 6 | 开始武器供应是有利条件，为 6。 |
| FoodSpoilSpeedMultiplier | 0.6 | 食物腐败率低于正常值，为 0.6x。 |
| GameDifficulty | 1 | 游戏难度为标准。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 0.75 | 饥饿率低于正常水平，为 0.75 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 2.5 | 物品耐久度达到极限，为 2.5 倍。 |
| ItemStackSizeMultiplier | 14.0 | 堆栈容量达到极限，为 14 倍。 |
| ItemWeightMultiplier | 0.3 | 物品重量远低于正常水平，为 0.3 倍。 |
| LootRespawnEnabled | true | 收集后战利品可以返回。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 2.9 | 经验增益达到极限 2.9 倍。 |
| PowerSocketsOffAtNight | false | 电源插座在夜间仍然可用。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 1.5 | 制冷水平高于正常水平 1.5 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 2.5 | 水槽补水率极端为 2.5 倍。 |
| StorageByTag | false | 标记的存储组织已禁用。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 0.75 | 口渴率低于正常值，为 0.75 倍。 |
| WeatherFrequency | 2 | 天气频率偶尔出现。 |

<a id="optional-adapter-selection-3"></a>
### 可选适配器选择

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `boss_hunt_reward_trail`
- `lethal_lasers`: `low_hazard`

<a id="day-5---authorized-apex-problem"></a>
## 第 5 天 - 授权Apex问题

**个人资料 ID：** `boss_hunt_authorized_apex_problem` **总体条件：**标准压力(2.16/5) **简单含义：**标准压力。作战压力：苛刻的条件是主要压力。环境压力：标准压力是第二强的因素。 **玩家建议：**携带弹药，保留撤退路线，避免在无人支援的情况下战斗。

<a id="main-effects-4"></a>
### 主要效果

- 经验值增益极高(2.7x).
- 友军火力伤害远低于正常水平(0.1x).
- 敌人准确度：准确。
- 敌人探测速度远高于正常(2.1x).
- 敌人的恢复力远高于正常水平(2.1x).

<a id="domain-ratings-4"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 要求较高的(2.77/5) | 敌对压力升高；参与前做好准备。 |
| 生存压力 | 标准(1.94/5) | 日常生存需求接近正常。 |
| 资源压力 | 有利(1.66/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.17/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.51/5) | 死亡和恢复规则接近正常。 |

<a id="encounter-context-4"></a>
### 遭遇背景

- 级别：**遭遇重击**
- 主题：**精英狩猎安全**
- 最大活跃组数：**2**
- 混合遭遇机会：**0.119**
- 特殊活动机会：**14**

<a id="exact-sandbox-settings-4"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 12 | 基本库存尺寸为标准压力 12。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.0 | 失控率接近正常值 1x。 |
| DamageToAlliesMultiplier | 0.1 | 友军火力伤害远低于正常水平，为 0.1 倍。 |
| DayNightCycleSpeedMultiplier | 1.0 | 日夜循环速度接近正常值 1x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 2.1 | 敌人检测速度远高于正常值2.1 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.3 | 死亡时的耐久度损失远低于正常水平，为 0.3 倍。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 2.1 | 敌人的恢复能力远高于正常水平的 2.1 倍。 |
| EnemyPlayerDamageMultiplier | 1.9 | 敌人对玩家的伤害远高于正常值，为 1.9 倍。 |
| EnemySpawnRate | 1.1 | 敌人频率在 1.1 倍时接近正常。 |
| FatigueSpeedMultiplier | 1.15 | 疲劳率接近正常值，为 1.15 倍。 |
| FirstTimeStartingWeapon | 4 | 开始提供武器是有利条件，为 4。 |
| FoodSpoilSpeedMultiplier | 1.0 | 食物腐败程度为 1 倍，接近正常。 |
| GameDifficulty | 2 | 游戏难度很高。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 1.0 | 饥饿率接近正常值，为 1 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 1.25 | 物品耐久度高于正常水平，为 1.25 倍。 |
| ItemStackSizeMultiplier | 2.0 | 堆栈容量远高于正常值，为 2 倍。 |
| ItemWeightMultiplier | 0.9 | 物品重量接近正常值，为0.9x。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 2.7 | 经验增益达到 2.7 倍。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 1.0 | 制冷在 1x 时接近正常水平。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 1.0 | 水槽重新填充率接近正常值 1 倍。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 1.0 | 口渴率接近正常，为 1 倍。 |
| WeatherFrequency | 2 | 天气频率偶尔出现。 |

<a id="optional-adapter-selection-4"></a>
### 可选适配器选择

- `ante_up`: `security`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `boss_hunt_authorized_apex_problem`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weathered-quarry"></a>
## 第6天 - 风化采石场

**个人资料 ID：** `boss_hunt_weathered_quarry` **总体条件：**标准压力(2.13/5) **简单含义：**标准压力。环境压力：以标准压力为主。战斗压力：标准压力是第二强的因素。 **玩家建议：**在离开基地之前检查电源、水、庇护所和危险防护。

<a id="main-effects-5"></a>
### 主要效果

- 天气频率：非常频繁。
- 敌人准确度：准确。
- 经验增益远高于正常(2.1x).
- 友军火力伤害远低于正常水平(0.25x).
- 死亡时的耐久度损失远低于正常水平(0.25x).

<a id="domain-ratings-5"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 标准(2.42/5) | 敌对压力接近 |
| 生存压力 | 标准(2.07/5) | 日常生存需求接近正常。 |
| 资源压力 | 标准(1.81/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.52/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.5/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context-5"></a>
### 遭遇背景

- 级别：**中等遭遇**
- 主题：**精英狩猎天气**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.091**
- 特殊活动机会：**10**

<a id="exact-sandbox-settings-5"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 12 | 基本库存尺寸为标准压力 12。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.0 | 失控率接近正常值 1x。 |
| DamageToAlliesMultiplier | 0.25 | 友军火力伤害远低于正常值 0.25x。 |
| DayNightCycleSpeedMultiplier | 1.25 | 昼夜循环速度高于正常值1.25x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 1.2 | 敌人探测速度高于正常水平 1.2 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.25 | 死亡时的耐久度损失远低于正常水平0.25x。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 1.9 | 敌人的恢复能力远高于正常水平，为 1.9 倍。 |
| EnemyPlayerDamageMultiplier | 1.6 | 敌人对玩家的伤害高于正常值，为 1.6 倍。 |
| EnemySpawnRate | 0.8 | 敌人频率低于正常水平，为 0.8 倍。 |
| FatigueSpeedMultiplier | 1.1 | 疲劳率接近正常水平，为 1.1 倍。 |
| FirstTimeStartingWeapon | 0 | 开始武器供应的标准压力为0. |
| FoodSpoilSpeedMultiplier | 1.25 | 食物腐败程度高于正常水平，为 1.25 倍。 |
| GameDifficulty | 2 | 游戏难度很高。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 1.1 | 饥饿率接近正常水平，为 1.1 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 1.1 | 物品耐久度接近正常水平，为 1.1x。 |
| ItemStackSizeMultiplier | 2.0 | 堆栈容量远高于正常值，为 2 倍。 |
| ItemWeightMultiplier | 0.9 | 物品重量接近正常值，为0.9x。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 2.1 | 经验增益远高于正常水平 2.1 倍。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 0.8 | 制冷低于正常水平，为 0.8x。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 0.75 | 水槽重新填充率低于正常值 0.75x。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 1.35 | 口渴率高于正常水平，为 1.35 倍。 |
| WeatherFrequency | 5 | 天气频率非常频繁。 |

<a id="optional-adapter-selection-5"></a>
### 可选适配器选择

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `boss_hunt_weathered_quarry`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-trophy-movement"></a>
## 第 7 天 - 夜间奖杯移动

**个人资料 ID：** `boss_hunt_night_trophy_movement` **总体条件：**标准压力(2.16/5) **简单含义：**标准压力。作战压力：苛刻的条件是主要压力。环境压力：标准压力是第二强的因素。 **玩家建议：**携带弹药，保留撤退路线，避免在无人支援的情况下战斗。

<a id="main-effects-6"></a>
### 主要效果

- 堆栈容量极高(3x).
- 经验值增益极高(2.9x).
- 昼夜状态：夜间偏向。
- 敌人准确度：准确。
- 敌人的恢复力远高于正常水平(2.1x).

<a id="domain-ratings-6"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 要求较高的(2.75/5) | 敌对压力升高；参与前做好准备。 |
| 生存压力 | 标准(1.96/5) | 日常生存需求接近正常。 |
| 资源压力 | 有利(1.54/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.33/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.49/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context-6"></a>
### 遭遇背景

- 级别：**遭遇重击**
- 主题：**精英狩猎之夜**
- 最大活跃组数：**2**
- 混合遭遇机会：**0.119**
- 特殊活动机会：**16**

<a id="exact-sandbox-settings-6"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 16 | 基础库存大小为有利条件，为 16。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 0.95 | 失禁率接近正常水平为0.95x。 |
| DamageToAlliesMultiplier | 0.25 | 友军火力伤害远低于正常值 0.25x。 |
| DayNightCycleSpeedMultiplier | 1.0 | 日夜循环速度接近正常值 1x。 |
| DayNightCycleState | 2 | 昼夜状态偏向夜间。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 1.8 | 敌人探测速度远高于正常水平，为 1.8 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.2 | 死亡时的耐久度损失远低于正常水平，为 0.2x。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 2.1 | 敌人的恢复能力远高于正常水平的 2.1 倍。 |
| EnemyPlayerDamageMultiplier | 1.8 | 敌人对玩家的伤害远高于正常水平，为 1.8 倍。 |
| EnemySpawnRate | 1.2 | 敌人频率高于正常值1.2 倍。 |
| FatigueSpeedMultiplier | 1.4 | 疲劳率高于正常值 1.4 倍。 |
| FirstTimeStartingWeapon | 5 | 开始提供武器是有利条件，为 5 倍。 |
| FoodSpoilSpeedMultiplier | 1.0 | 食物腐败程度为 1 倍，接近正常。 |
| GameDifficulty | 2 | 游戏难度很高。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 0.95 | 饥饿率接近正常值，为 0.95 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 1.5 | 物品耐久度高于正常值，为 1.5 倍。 |
| ItemStackSizeMultiplier | 3.0 | 堆栈容量极端为 3 倍。 |
| ItemWeightMultiplier | 0.7 | 物品重量低于正常值，为 0.7 倍。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 2.9 | 经验增益达到极限 2.9 倍。 |
| PowerSocketsOffAtNight | false | 电源插座在夜间仍然可用。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 1.0 | 制冷在 1x 时接近正常水平。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 1.0 | 水槽重新填充率接近正常值 1 倍。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 0.95 | 口渴率接近正常值，为 0.95 倍。 |
| WeatherFrequency | 4 | 天气频率频繁。 |

<a id="optional-adapter-selection-6"></a>
### 可选适配器选择

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `boss_hunt_night_trophy_movement`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---fast-target-route"></a>
## 白天8 - 快速目标路线

**个人资料 ID：** `boss_hunt_fast_target_route` **总体条件：**标准压力(1.93/5) **简单含义：**标准压力。环境压力：以标准压力为主。战斗压力：标准压力是第二强的因素。 **玩家建议：**在离开基地之前检查电源、水、庇护所和危险防护。

<a id="main-effects-7"></a>
### 主要效果

- 昼夜循环速度极高(3x).
- 堆栈容量极高(4x).
- 经验值增益极高(3x).
- 死亡时的耐久度损失远低于正常水平(0.15x).
- 敌人准确度：准确。

<a id="domain-ratings-7"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 标准(2.45/5) | 敌对压力接近 |
| 生存压力 | 有利(1.42/5) | 日常生存需求较为宽松。 |
| 资源压力 | 有利(1.41/5) | 补给和携带条件良好。 |
| 环境压力 | 标准(2.56/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.47/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context-7"></a>
### 遭遇背景

- 级别：**中等遭遇**
- 主题：**精英狩猎路线**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.105**
- 特殊活动机会：**14**

<a id="exact-sandbox-settings-7"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 18 | 基础库存大小为有利条件，为 18。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 0.7 | 失禁率低于正常水平，为 0.7 倍。 |
| DamageToAlliesMultiplier | 0.25 | 友军火力伤害远低于正常值 0.25x。 |
| DayNightCycleSpeedMultiplier | 3.0 | 日夜循环速度为极端3x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 1.5 | 敌人检测速度高于正常水平，为 1.5x。 |
| DisableResearchMinigame | true | 已启用研究旁路。 |
| DurabilityLossOnDeathMultiplier | 0.15 | 死亡时的耐久度损失远低于正常水平，为 0.15x。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 1.5 | 敌人的恢复力高于正常水平，为1.5倍。 |
| EnemyPlayerDamageMultiplier | 1.6 | 敌人对玩家的伤害高于正常值，为 1.6 倍。 |
| EnemySpawnRate | 1.0 | 敌人频率接近正常值 1x。 |
| FatigueSpeedMultiplier | 0.7 | 疲劳率低于正常值，为 0.7 倍。 |
| FirstTimeStartingWeapon | 6 | 开始武器供应是有利条件，为 6。 |
| FoodSpoilSpeedMultiplier | 0.9 | 食物腐败接近正常值，为 0.9 倍。 |
| GameDifficulty | 2 | 游戏难度很高。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 0.7 | 饥饿率低于正常值，为 0.7 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 1.25 | 物品耐久度高于正常水平，为 1.25 倍。 |
| ItemStackSizeMultiplier | 4.0 | 堆栈容量为极端为 4 倍。 |
| ItemWeightMultiplier | 0.7 | 物品重量低于正常值，为 0.7 倍。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 3.0 | 经验增益达到极限 3x。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 1.1 | 制冷在 1.1 倍时接近正常值。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 1.5 | 水槽填充率高于正常值，为 1.5 倍。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 0.7 | 口渴率低于正常值 0.7 倍。 |
| WeatherFrequency | 3 | 天气频率正常。 |

<a id="optional-adapter-selection-7"></a>
### 可选适配器选择

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `boss_hunt_fast_target_route`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---hungry-trophy-case"></a>
## 第 9 天 - 饥饿的奖杯箱

**个人资料 ID：** `boss_hunt_hungry_trophy_case` **总体条件：**标准压力(2.29/5) **简单含义：**标准压力。生存压力：苛刻的条件是主要压力。战斗压力：标准压力是第二强的因素。 **玩家建议：**携带食物和水，长途旅行前休息，并计划安全停留。

<a id="main-effects-8"></a>
### 主要效果

- 基本库存规模是严峻的条件(10).
- 水槽里的水可能不安全。
- 经验增益远高于正常(2.2x).
- 敌人准确度：准确。
- 敌人的恢复力远高于正常水平(2.1x).

<a id="domain-ratings-8"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 标准(2.28/5) | 敌对压力接近 |
| 生存压力 | 要求较高的(2.84/5) | 饥饿、口渴、疲劳或卫生需要更多注意。 |
| 资源压力 | 标准(2.23/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.17/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.53/5) | 死亡和恢复规则接近正常。 |

<a id="encounter-context-8"></a>
### 遭遇背景

- 级别：**中等遭遇**
- 主题：**精英狩猎稀缺**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.084**
- 特殊活动机会：**8**

<a id="exact-sandbox-settings-8"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 10 | 基础库存规模为严酷条件，为 10。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.25 | 失禁率高于正常水平，为 1.25 倍。 |
| DamageToAlliesMultiplier | 0.25 | 友军火力伤害远低于正常值 0.25x。 |
| DayNightCycleSpeedMultiplier | 1.0 | 日夜循环速度接近正常值 1x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 1.1 | 敌人检测速度接近正常，为 1.1 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.35 | 死亡时的耐久度损失远低于正常水平，为 0.35 倍。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 2.1 | 敌人的恢复能力远高于正常水平的 2.1 倍。 |
| EnemyPlayerDamageMultiplier | 1.7 | 敌人对玩家的伤害远高于正常水平1.7 倍。 |
| EnemySpawnRate | 0.7 | 敌人频率低于正常值 0.7 倍。 |
| FatigueSpeedMultiplier | 1.3 | 疲劳率高于正常值，为 1.3 倍。 |
| FirstTimeStartingWeapon | 0 | 开始武器供应的标准压力为0. |
| FoodSpoilSpeedMultiplier | 2.0 | 食物腐败程度远高于正常水平，为 2 倍。 |
| GameDifficulty | 1 | 游戏难度为标准。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 1.5 | 饥饿率高于正常水平，为1.5 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 0.75 | 物品耐用性低于正常值 0.75 倍。 |
| ItemStackSizeMultiplier | 1.0 | 堆叠容量接近正常值 1 倍。 |
| ItemWeightMultiplier | 1.2 | 物品重量高于正常值，为 1.2 倍。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 2.2 | 经验增益远高于正常值，为 2.2 倍。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 0.5 | 制冷远低于正常值 0.5 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 0.5 | 水槽补水率远低于正常水平，为 0.5 倍。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | true | 水槽里的水可能不安全。 |
| ThirstSpeedMultiplier | 1.4 | 口渴率高于正常水平，为 1.4 倍。 |
| WeatherFrequency | 2 | 天气频率偶尔出现。 |

<a id="optional-adapter-selection-8"></a>
### 可选适配器选择

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `boss_hunt_hungry_trophy_case`
- `lethal_lasers`: `standard_safety`

<a id="day-10---taxidermy-break"></a>
## 第 10 天 - 动物标本剥制休息

**个人资料 ID：** `boss_hunt_taxidermy_break` **总体条件：**有利条件(1.2/5) **简单含义：**有利的条件。环境压力：有利条件是主要压力。战斗压力：有利的条件是第二大的因素。 **玩家建议：**利用有利的条件进行探索、补货、维修，并为下次重新启动做好准备。

<a id="main-effects-9"></a>
### 主要效果

- 奖励积分是救援条件(10).
- 友军火力伤害远低于正常水平(0x).
- 死亡时的耐久度损失远低于正常水平(0x).
- 物品耐用性极高(3x).
- 堆栈容量极高(10x).

<a id="domain-ratings-9"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 有利(1.36/5) | 敌对压力比正常情况要轻。 |
| 生存压力 | 有利(1.02/5) | 日常生存需求较为宽松。 |
| 资源压力 | 有利(0.9/5) | 补给和携带条件良好。 |
| 环境压力 | 有利(1.54/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.19/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context-9"></a>
### 遭遇背景

- 级别：**最少遭遇**
- 主题：**精英狩猎恢复**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.02**
- 特殊活动机会：**0**

<a id="exact-sandbox-settings-9"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 30 | 基础库存大小为救济条件为 30。 |
| BonusPerkPoints | 10 | 奖励点数是 10 时的救援条件。 |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 0.45 | 自控率是远低于正常水平的 0.45 倍。 |
| DamageToAlliesMultiplier | 0.0 | 友军火力伤害远低于正常水平，为 0x。 |
| DayNightCycleSpeedMultiplier | 0.85 | 昼夜循环速度接近正常水平的 0.85 倍。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 0 | 死亡处罚最低。 |
| DetectionSpeedMultiplier | 0.5 | 敌人探测速度远低于正常值 0.5 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.0 | 死亡时的耐久度损失远低于正常水平，为 0x。 |
| EnemyAccuracy | 2 | 敌人的准确度是标准的。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 1.3 | 敌人的恢复力高于正常水平，为 1.3 倍。 |
| EnemyPlayerDamageMultiplier | 0.5 | 敌人对玩家的伤害远低于正常值 0.5 倍。 |
| EnemySpawnRate | 0.3 | 敌人频率远低于正常水平，为 0.3 倍。 |
| FatigueSpeedMultiplier | 0.45 | 疲劳率远低于正常水平，为 0.45 倍。 |
| FirstTimeStartingWeapon | 2 | 开始武器供应的标准压力为 2。 |
| FoodSpoilSpeedMultiplier | 0.4 | 食物腐败程度远低于正常水平，为 0.4 倍。 |
| GameDifficulty | 1 | 游戏难度为标准。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 0.45 | 饥饿率远低于正常水平，为 0.45 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 3.0 | 物品耐久度极端为 3 倍。 |
| ItemStackSizeMultiplier | 10.0 | 堆栈容量极端为10 倍。 |
| ItemWeightMultiplier | 0.4 | 物品重量远低于正常值 0.4 倍。 |
| LootRespawnEnabled | true | 收集后战利品可以返回。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 3.9 | 经验增益在 3.9 倍时达到极限。 |
| PowerSocketsOffAtNight | false | 电源插座在夜间仍然可用。 |
| RadiationDealsDamage | false | 辐射伤害已禁用。 |
| RefrigerationEffectivenessMultiplier | 1.8 | 制冷远高于正常值 1.8 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 3.0 | 水槽补水率极端为 3 倍。 |
| StorageByTag | false | 标记的存储组织已禁用。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 0.45 | 口渴率远低于正常水平，为 0.45 倍。 |
| WeatherFrequency | 1 | 天气频率很少见。 |

<a id="optional-adapter-selection-9"></a>
### 可选适配器选择

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `boss_hunt_taxidermy_break`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---practice-hunt"></a>
## 第 11 天 - 练习狩猎

**个人资料 ID：** `boss_hunt_practice_hunt` **总体条件：**有利条件(1.61/5) **简单含义：**有利的条件。环境压力：以标准压力为主。战斗压力：标准压力是第二强的因素。 **玩家建议：**利用有利的条件进行探索、补货、维修，并为下次重新启动做好准备。

<a id="main-effects-10"></a>
### 主要效果

- 奖励积分是救援条件(12).
- 死亡时的耐久度损失远低于正常水平(0x).
- 堆栈容量极高(5x).
- 经验值增益极高(5x).
- 物品耐久度远高于正常(2.25x).

<a id="domain-ratings-10"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 标准(1.93/5) | 敌对压力接近 |
| 生存压力 | 有利(1.58/5) | 日常生存需求接近正常。 |
| 资源压力 | 有利(0.92/5) | 补给和携带条件良好。 |
| 环境压力 | 标准(1.96/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.43/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context-10"></a>
### 遭遇背景

- 级别：**轻度遭遇**
- 主题：**精英狩猎训练**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.049**
- 特殊活动机会：**3**

<a id="exact-sandbox-settings-10"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 24 | 基础库存大小是 24 时的救济条件。 |
| BonusPerkPoints | 12 | 奖励点数为救济条件 12。 |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 0.8 | 失禁率低于正常水平，为 0.8x。 |
| DamageToAlliesMultiplier | 0.25 | 友军火力伤害远低于正常值 0.25x。 |
| DayNightCycleSpeedMultiplier | 1.15 | 日夜循环速度接近正常水平，为 1.15x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 0.9 | 敌人探测速度接近正常为 0.9 倍。 |
| DisableResearchMinigame | true | 已启用研究旁路。 |
| DurabilityLossOnDeathMultiplier | 0.0 | 死亡时的耐久度损失远低于正常水平，为 0x。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 1.5 | 敌人的恢复力高于正常水平，为1.5倍。 |
| EnemyPlayerDamageMultiplier | 1.0 | 敌人对玩家的伤害在 1 倍时接近正常。 |
| EnemySpawnRate | 0.7 | 敌人频率低于正常值 0.7 倍。 |
| FatigueSpeedMultiplier | 0.8 | 疲劳率低于正常水平，为 0.8x。 |
| FirstTimeStartingWeapon | 6 | 开始武器供应是有利条件，为 6。 |
| FoodSpoilSpeedMultiplier | 0.8 | 食物腐败程度低于正常水平，为 0.8x。 |
| GameDifficulty | 1 | 游戏难度为标准。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 0.8 | 饥饿率低于正常水平，为 0.8x。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 2.25 | 物品耐久度为远高于正常水平的 2.25 倍。 |
| ItemStackSizeMultiplier | 5.0 | 堆叠容量极端为 5 倍。 |
| ItemWeightMultiplier | 0.6 | 物品重量低于正常水平的 0.6 倍。 |
| LootRespawnEnabled | true | 收集后战利品可以返回。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 5.0 | 经验增益达到极限 5 倍。 |
| PowerSocketsOffAtNight | false | 电源插座在夜间仍然可用。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 1.3 | 制冷高于正常水平的 1.3 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 2.0 | 水槽补充率远高于正常水平2x。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 0.8 | 口渴率低于正常值 0.8 倍。 |
| WeatherFrequency | 2 | 天气频率偶尔出现。 |

<a id="optional-adapter-selection-10"></a>
### 可选适配器选择

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `boss_hunt_practice_hunt`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-specimen"></a>
## 第 12 天 - 黑色实验室样本

**个人资料 ID：** `boss_hunt_black_lab_specimen` **总体条件：**苛刻的条件(2.62/5) **简单含义：**条件苛刻。作战压力：恶劣条件是主要压力。生存压力：标准压力是第二大的因素。 **玩家建议：**携带弹药，保留撤退路线，避免在无人支援的情况下战斗。

<a id="main-effects-11"></a>
### 主要效果

- 敌人精确度：高度准确。
- 敌人的恢复能力极高(3.2x).
- 游戏难度：非常困难。
- 敌人对玩家的伤害极大(2.9x).
- 经验值增益极高(4x).

<a id="domain-ratings-11"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 严重(3.52/5) | 敌对压力升高；参与前做好准备。 |
| 生存压力 | 标准(2.53/5) | 日常生存需求接近正常。 |
| 资源压力 | 标准(1.76/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.22/5) | 环境条件接近正常。 |
| 回收压力 | 标准(1.79/5) | 死亡和恢复规则接近正常。 |

<a id="encounter-context-11"></a>
### 遭遇背景

- 级别：**极端遭遇**
- 主题：**精英狩猎重型测试**
- 最大活跃组数：**2**
- 混合遭遇机会：**0.161**
- 特殊活动机会：**22**

<a id="exact-sandbox-settings-11"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 12 | 基本库存尺寸为标准压力 12。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.0 | 失控率接近正常值 1x。 |
| DamageToAlliesMultiplier | 0.15 | 友军火力伤害远低于正常值 0.15 倍。 |
| DayNightCycleSpeedMultiplier | 1.0 | 日夜循环速度接近正常值 1x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 2 | 死刑处罚很重。 |
| DetectionSpeedMultiplier | 2.1 | 敌人检测速度远高于正常值2.1 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.4 | 死亡时的耐久度损失远低于正常值 0.4 倍。 |
| EnemyAccuracy | 4 | 敌人的精确度非常准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 3.2 | 敌人的恢复能力达到极限，达到 3.2 倍。 |
| EnemyPlayerDamageMultiplier | 2.9 | 敌人对玩家的伤害达到极限，达到 2.9 倍。 |
| EnemySpawnRate | 1.7 | 敌人频率远高于正常值，为 1.7 倍。 |
| FatigueSpeedMultiplier | 1.15 | 疲劳率接近正常值，为 1.15 倍。 |
| FirstTimeStartingWeapon | 1 | 开始武器供给的标准压力为 1。 |
| FoodSpoilSpeedMultiplier | 1.15 | 食物腐败在 1.15x 时接近正常。 |
| GameDifficulty | 3 | 游戏难度非常困难。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 1.15 | 饥饿率在 1.15x 时接近正常。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 1.1 | 物品耐久度接近正常水平，为 1.1x。 |
| ItemStackSizeMultiplier | 2.0 | 堆栈容量远高于正常值，为 2 倍。 |
| ItemWeightMultiplier | 0.9 | 物品重量接近正常值，为0.9x。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 4.0 | 经验增益为 4 倍，达到极限。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 0.85 | 制冷为 0.85 倍，接近正常。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 0.75 | 水槽重新填充率低于正常值 0.75x。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | true | 水槽里的水可能不安全。 |
| ThirstSpeedMultiplier | 1.15 | 口渴率接近正常，为 1.15 倍。 |
| WeatherFrequency | 3 | 天气频率正常。 |

<a id="optional-adapter-selection-11"></a>
### 可选适配器选择

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `boss_hunt_black_lab_specimen`
- `lethal_lasers`: `high_hazard`

<a id="day-13---long-hunt-shift"></a>
## 日13 - 长期狩猎转移

**个人资料 ID：** `boss_hunt_long_hunt_shift` **总体条件：**标准压力(2.39/5) **简单含义：**标准压力。生存压力：苛刻的条件是主要压力。战斗压力：标准压力是第二强的因素。 **玩家建议：**携带食物和水，长途旅行前休息，并计划安全停留。

<a id="main-effects-12"></a>
### 主要效果

- 基本库存规模是严峻的条件(10).
- 经验值增益极高(2.5x).
- 水槽里的水可能不安全。
- 敌人的恢复力远高于正常水平(2.3x).
- 敌人准确度：准确。

<a id="domain-ratings-12"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 标准(2.49/5) | 敌对压力接近 |
| 生存压力 | 要求较高的(3.11/5) | 饥饿、口渴、疲劳或卫生需要更多注意。 |
| 资源压力 | 标准(2.11/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.01/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.53/5) | 死亡和恢复规则接近正常。 |

<a id="encounter-context-12"></a>
### 遭遇背景

- 级别：**中等遭遇**
- 主题：**精英狩猎耐力**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.098**
- 特殊活动机会：**7**

<a id="exact-sandbox-settings-12"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 10 | 基础库存规模为严酷条件，为 10。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.35 | 自控率高于正常水平，为 1.35 倍。 |
| DamageToAlliesMultiplier | 0.25 | 友军火力伤害远低于正常值 0.25x。 |
| DayNightCycleSpeedMultiplier | 0.3 | 昼夜循环速度远低于正常水平，为 0.3 倍。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 1.1 | 敌人检测速度接近正常，为 1.1 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.35 | 死亡时的耐久度损失远低于正常水平，为 0.35 倍。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 2.3 | 敌人的恢复力远高于正常水平，为 2.3x。 |
| EnemyPlayerDamageMultiplier | 1.9 | 敌人对玩家的伤害远高于正常值，为 1.9 倍。 |
| EnemySpawnRate | 0.7 | 敌人频率低于正常值 0.7 倍。 |
| FatigueSpeedMultiplier | 1.6 | 疲劳率高于正常值 1.6 倍。 |
| FirstTimeStartingWeapon | 0 | 开始武器供应的标准压力为0. |
| FoodSpoilSpeedMultiplier | 1.8 | 食物腐败程度远高于正常水平，为 1.8 倍。 |
| GameDifficulty | 2 | 游戏难度很高。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 1.7 | 饥饿率远高于正常水平，为1.7x。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 0.9 | 物品耐久度接近正常水平，为 0.9 倍。 |
| ItemStackSizeMultiplier | 2.0 | 堆栈容量远高于正常值，为 2 倍。 |
| ItemWeightMultiplier | 1.4 | 物品重量高于正常水平1.4 倍。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 2.5 | 经验增益达到极限，为 2.5 倍。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 0.65 | 制冷值低于正常值 0.65 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 0.35 | 水槽补水率远低于正常值 0.35 倍。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | true | 水槽里的水可能不安全。 |
| ThirstSpeedMultiplier | 1.7 | 口渴率远高于正常水平，为 1.7 倍。 |
| WeatherFrequency | 2 | 天气频率偶尔出现。 |

<a id="optional-adapter-selection-12"></a>
### 可选适配器选择

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `boss_hunt_long_hunt_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---quiet-bait-day"></a>
## 第 14 天 - 安静诱饵日

**个人资料 ID：** `boss_hunt_quiet_bait_day` **总体条件：**有利条件(1.19/5) **简单含义：**有利的条件。环境压力：有利条件是主要压力。战斗压力：有利的条件是第二大的因素。 **玩家建议：**利用有利的条件进行探索、补货、维修，并为下次重新启动做好准备。

<a id="main-effects-13"></a>
### 主要效果

- 基础库存大小是救济条件(40).
- 奖励积分是救援条件(12).
- 友军火力伤害远低于正常水平(0x).
- 死亡时的耐久度损失远低于正常水平(0x).
- 物品耐用性极高(6x).

<a id="domain-ratings-13"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 有利(1.46/5) | 敌对压力比正常情况要轻。 |
| 生存压力 | 有利(0.86/5) | 日常生存需求较为宽松。 |
| 资源压力 | 救援(0.79/5) | 补给和携带条件良好。 |
| 环境压力 | 有利(1.58/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.19/5) | 死亡和恢复规则是宽容的。 |

<a id="encounter-context-13"></a>
### 遭遇背景

- 级别：**最少遭遇**
- 主题：**精英狩猎缓解**
- 最大活跃组数：**1**
- 混合遭遇机会：**0.02**
- 特殊活动机会：**0**

<a id="exact-sandbox-settings-13"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 40 | 基础库存大小为救援条件 40。 |
| BonusPerkPoints | 12 | 奖励点数为救济条件 12。 |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 0.35 | 自控率远低于正常值 0.35 倍。 |
| DamageToAlliesMultiplier | 0.0 | 友军火力伤害远低于正常水平，为 0x。 |
| DayNightCycleSpeedMultiplier | 1.0 | 日夜循环速度接近正常值 1x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 0 | 死亡处罚最低。 |
| DetectionSpeedMultiplier | 0.6 | 敌人探测速度低于正常水平0.6 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.0 | 死亡时的耐久度损失远低于正常水平，为 0x。 |
| EnemyAccuracy | 2 | 敌人的准确度是标准的。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 1.4 | 敌人的恢复能力高于正常值1.4x。 |
| EnemyPlayerDamageMultiplier | 0.7 | 敌人对玩家的伤害低于正常值，为 0.7 倍。 |
| EnemySpawnRate | 0.4 | 敌人频率远低于正常水平，为 0.4 倍。 |
| FatigueSpeedMultiplier | 0.35 | 疲劳率远低于正常值 0.35 倍。 |
| FirstTimeStartingWeapon | 6 | 开始武器供应是有利条件，为 6。 |
| FoodSpoilSpeedMultiplier | 0.25 | 食物腐败远低于正常值 0.25 倍。 |
| GameDifficulty | 1 | 游戏难度为标准。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 0.35 | 饥饿率远低于正常值 0.35 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 6.0 | 物品耐久度极高，为 6 倍。 |
| ItemStackSizeMultiplier | 20.0 | 堆栈容量极高，为 20 倍。 |
| ItemWeightMultiplier | 0.2 | 物品重量远低于正常值 0.2 倍。 |
| LootRespawnEnabled | true | 收集后战利品可以返回。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 5.6 | 经验增益达到极限，达到 5.6 倍。 |
| PowerSocketsOffAtNight | false | 电源插座在夜间仍然可用。 |
| RadiationDealsDamage | false | 辐射伤害已禁用。 |
| RefrigerationEffectivenessMultiplier | 2.0 | 制冷量远高于正常水平，为 2 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 5.0 | 水槽补水率极端为 5 倍。 |
| StorageByTag | false | 标记的存储组织已禁用。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 0.35 | 口渴率远低于正常水平，为 0.35 倍。 |
| WeatherFrequency | 1 | 天气频率很少见。 |

<a id="optional-adapter-selection-13"></a>
### 可选适配器选择

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `boss_hunt_quiet_bait_day`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---precision-trophy-audit"></a>
## 第 15 天 - 精确奖杯审核

**个人资料 ID：** `boss_hunt_precision_trophy_audit` **总体条件：**标准压力(2.12/5) **简单含义：**标准压力。作战压力：苛刻的条件是主要压力。环境压力：标准压力是第二强的因素。 **玩家建议：**携带弹药，保留撤退路线，避免在无人支援的情况下战斗。

<a id="main-effects-14"></a>
### 主要效果

- 友军火力伤害远低于正常水平(0x).
- 经验值增益极高(3.2x).
- 敌人对玩家的伤害远高于正常(2.2x).
- 敌人准确度：准确。
- 游戏难度：困难。

<a id="domain-ratings-14"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 要求较高的(2.62/5) | 敌对压力升高；参与前做好准备。 |
| 生存压力 | 标准(1.98/5) | 日常生存需求接近正常。 |
| 资源压力 | 有利(1.68/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.17/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.51/5) | 死亡和恢复规则接近正常。 |

<a id="encounter-context-14"></a>
### 遭遇背景

- 级别：**遭遇重击**
- 主题：**精英狩猎精度**
- 最大活跃组数：**2**
- 混合遭遇机会：**0.119**
- 特殊活动机会：**14**

<a id="exact-sandbox-settings-14"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 12 | 基本库存尺寸为标准压力 12。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.0 | 失控率接近正常值 1x。 |
| DamageToAlliesMultiplier | 0.0 | 友军火力伤害远低于正常水平，为 0x。 |
| DayNightCycleSpeedMultiplier | 1.0 | 日夜循环速度接近正常值 1x。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 1 | 死亡惩罚是标准的。 |
| DetectionSpeedMultiplier | 1.5 | 敌人检测速度高于正常水平，为 1.5x。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.3 | 死亡时的耐久度损失远低于正常水平，为 0.3 倍。 |
| EnemyAccuracy | 3 | 敌人精确度为准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 1.8 | 敌人的恢复能力远高于正常水平，为 1.8x。 |
| EnemyPlayerDamageMultiplier | 2.2 | 敌人对玩家的伤害远高于正常水平的2.2 倍。 |
| EnemySpawnRate | 0.9 | 敌人频率接近正常值，为 0.9x。 |
| FatigueSpeedMultiplier | 1.25 | 疲劳率高于正常水平，为 1.25 倍。 |
| FirstTimeStartingWeapon | 4 | 开始提供武器是有利条件，为 4。 |
| FoodSpoilSpeedMultiplier | 1.0 | 食物腐败程度为 1 倍，接近正常。 |
| GameDifficulty | 2 | 游戏难度很高。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 1.0 | 饥饿率接近正常值，为 1 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 1.0 | 物品耐久度接近正常水平，为 1 倍。 |
| ItemStackSizeMultiplier | 2.0 | 堆栈容量远高于正常值，为 2 倍。 |
| ItemWeightMultiplier | 0.9 | 物品重量接近正常值，为0.9x。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 3.2 | 经验增益达到极限，达到3.2x。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 1.0 | 制冷在 1x 时接近正常水平。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 1.0 | 水槽重新填充率接近正常值 1 倍。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | false | 水槽水不会受到此规则的污染。 |
| ThirstSpeedMultiplier | 1.0 | 口渴率接近正常，为 1 倍。 |
| WeatherFrequency | 2 | 天气频率偶尔出现。 |

<a id="optional-adapter-selection-14"></a>
### 可选适配器选择

- `ante_up`: `accuracy`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `boss_hunt_precision_trophy_audit`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-apex"></a>
## 第 16 天 - 实验性顶点

**个人资料 ID：** `boss_hunt_experimental_apex` **总体条件：**标准压力(2.24/5) **简单含义：**标准压力。作战压力：苛刻的条件是主要压力。环境压力：标准压力是第二强的因素。 **玩家建议：**携带弹药，保留撤退路线，避免在无人支援的情况下战斗。

<a id="main-effects-15"></a>
### 主要效果

- 敌人精确度：高度准确。
- 游戏难度：非常困难。
- 某些辐射可能缺乏明显的警告。
- 天气频率：非常频繁。
- 敌人的恢复能力极高(2.6x).

<a id="domain-ratings-15"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 要求较高的(2.87/5) | 敌对压力升高；参与前做好准备。 |
| 生存压力 | 标准(2.36/5) | 日常生存需求接近正常。 |
| 资源压力 | 有利(0.99/5) | 补给和携带条件良好。 |
| 环境压力 | 标准(2.59/5) | 环境条件接近正常。 |
| 回收压力 | 有利(1.67/5) | 死亡和恢复规则接近正常。 |

<a id="encounter-context-15"></a>
### 遭遇背景

- 级别：**极端遭遇**
- 主题：**精英狩猎实验**
- 最大活跃组数：**2**
- 混合遭遇机会：**0.154**
- 特殊活动机会：**20**

<a id="exact-sandbox-settings-15"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 42 | 基础库存大小为救济条件为 42。 |
| BonusPerkPoints | 15 | 奖励点数为救济条件为 15。 |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.2 | 失禁率高于正常水平，为1.2 倍。 |
| DamageToAlliesMultiplier | 0.0 | 友军火力伤害远低于正常水平，为 0x。 |
| DayNightCycleSpeedMultiplier | 1.5 | 昼夜循环速度高于正常值 1.5 倍。 |
| DayNightCycleState | 1 | 昼夜状态偏于白天。 |
| DeathPenalties | 2 | 死刑处罚很重。 |
| DetectionSpeedMultiplier | 0.6 | 敌人探测速度低于正常水平0.6 倍。 |
| DisableResearchMinigame | true | 已启用研究旁路。 |
| DurabilityLossOnDeathMultiplier | 0.0 | 死亡时的耐久度损失远低于正常水平，为 0x。 |
| EnemyAccuracy | 4 | 敌人的精确度非常准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 2.6 | 敌人的恢复能力达到极限，达到 2.6 倍。 |
| EnemyPlayerDamageMultiplier | 1.4 | 敌人对玩家的伤害高于正常水平，为 1.4 倍。 |
| EnemySpawnRate | 1.1 | 敌人频率在 1.1 倍时接近正常。 |
| FatigueSpeedMultiplier | 0.8 | 疲劳率低于正常水平，为 0.8x。 |
| FirstTimeStartingWeapon | 6 | 开始武器供应是有利条件，为 6。 |
| FoodSpoilSpeedMultiplier | 0.4 | 食物腐败程度远低于正常水平，为 0.4 倍。 |
| GameDifficulty | 3 | 游戏难度非常困难。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 0.8 | 饥饿率低于正常水平，为 0.8x。 |
| InvisibleRadiation | true | 某些辐射可能缺乏明显的警告。 |
| ItemDurabilityMultiplier | 5.0 | 物品耐久度在 5 倍时达到极限。 |
| ItemStackSizeMultiplier | 15.0 | 堆栈容量在 15 倍时达到极限。 |
| ItemWeightMultiplier | 0.2 | 物品重量远低于正常值 0.2 倍。 |
| LootRespawnEnabled | true | 收集后战利品可以返回。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 6.1 | 经验增益达到极限，达到 6.1x。 |
| PowerSocketsOffAtNight | false | 电源插座在夜间仍然可用。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 2.0 | 制冷量远高于正常水平，为 2 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 0.0 | 水槽补水率在 0x 时远低于正常水平。 |
| StorageByTag | false | 标记的存储组织已禁用。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | true | 水槽里的水可能不安全。 |
| ThirstSpeedMultiplier | 1.2 | 口渴率在 0x 时高于正常水平。 1.2x。 |
| WeatherFrequency | 5 | 天气频率非常频繁。 |

<a id="optional-adapter-selection-15"></a>
### 可选适配器选择

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `boss_hunt_experimental_apex`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-trophy-board"></a>
## 第 17 天 - 最终奖杯板

**个人资料 ID：** `boss_hunt_final_trophy_board` **总体条件：**苛刻的条件(2.79/5) **简单含义：**苛刻的条件。作战压力：恶劣条件是主要压力。生存压力：苛刻的条件是第二大的因素。 **玩家建议：**携带弹药，保留撤退路线，避免在无人支援的情况下战斗。

<a id="main-effects-16"></a>
### 主要效果

- 敌人精确度：高度准确。
- 敌人的恢复能力极高(4x).
- 敌人对玩家的伤害极大(3.4x).
- 游戏难度：非常困难。
- 天气频率：非常频繁。

<a id="domain-ratings-16"></a>
### 域名评级

| 区域 | 评级 | 含义 |
|---|---|---|
| 战斗压力 | 严重(3.7/5) | 敌对压力升高；参与前做好准备。 |
| 生存压力 | 要求较高的(2.72/5) | 饥饿、口渴、疲劳或卫生需要更多注意。 |
| 资源压力 | 标准(1.87/5) | 供应和承载条件接近正常。 |
| 环境压力 | 标准(2.55/5) | 环境条件接近正常。 |
| 回收压力 | 标准(1.81/5) | 死亡和恢复规则接近正常。 |

<a id="encounter-context-16"></a>
### 遭遇背景

- 级别：**顶点遭遇**
- 主题：**精英狩猎顶点**
- 最大活跃组数：**2**
- 混合遭遇机会：**0.196**
- 特殊活动机会：**30**

<a id="exact-sandbox-settings-16"></a>
### 精确的沙盒设置

| 设置 | 原始值 | 翻译含义 |
|---|---:|---|
| AllowCharacterReset | true | 角色重置仍然可用。 |
| AllowIronMode | false | 熨烫模式已禁用。 |
| AllowPagers | true | 可以使用寻呼机。 |
| AllowRecipeSharing | true | 可以分享食谱。 |
| AllowTransmog | true | 可以自定义外观。 |
| BaseInventorySize | 12 | 基本库存尺寸为标准压力 12。 |
| BonusPerkPoints | 0 | 额外奖励积分为标准压力 12。 0. |
| BridgeSupports | 0 | 桥梁支撑限制为标准压力 0。 |
| ContinenceSpeedMultiplier | 1.1 | 自控率接近正常值 1.1 倍。 |
| DamageToAlliesMultiplier | 0.1 | 友军火力伤害远低于正常水平，为 0.1 倍。 |
| DayNightCycleSpeedMultiplier | 1.45 | 日夜循环速度高于正常值 1.45 倍。 |
| DayNightCycleState | 0 | 昼夜状态是正常循环。 |
| DeathPenalties | 2 | 死刑处罚很重。 |
| DetectionSpeedMultiplier | 2.4 | 敌人检测速度远高于正常水平2.4 倍。 |
| DisableResearchMinigame | false | 研究使用正常的小游戏。 |
| DurabilityLossOnDeathMultiplier | 0.5 | 死亡时的耐久度损失远低于正常水平的 0.5 倍。 |
| EnemyAccuracy | 4 | 敌人的精确度非常准确。 |
| EnemyDeployableDamageMultiplier | 1.25 | 敌人对防御的伤害高于正常水平1.25x。 |
| EnemyHealthMultiplier | 4.0 | 敌人的恢复能力极高，为 4 倍。 |
| EnemyPlayerDamageMultiplier | 3.4 | 敌人对玩家的伤害为极高，为 3.4 倍。 |
| EnemySpawnRate | 2.2 | 敌人频率远高于正常水平，为 2.2 倍。 |
| FatigueSpeedMultiplier | 1.25 | 疲劳率高于正常水平，为 1.25 倍。 |
| FirstTimeStartingWeapon | 0 | 开始武器供应的标准压力为0. |
| FoodSpoilSpeedMultiplier | 1.6 | 食物腐败程度高于正常水平，为 1.6 倍。 |
| GameDifficulty | 3 | 游戏难度非常困难。 |
| HardcoreMode | false | 禁用硬核模式。 |
| HomeWorlds | true | 启用家庭世界行为。 |
| HostAccessPlayerCorpses | true | 主机可以访问玩家尸体以获取恢复支持。 |
| HungerSpeedMultiplier | 1.35 | 饥饿率高于正常水平，为 1.35 倍。 |
| InvisibleRadiation | false | 此规则不会使辐射变得不可见。 |
| ItemDurabilityMultiplier | 1.0 | 物品耐久度接近正常水平，为 1 倍。 |
| ItemStackSizeMultiplier | 3.0 | 堆栈容量极端为 3 倍。 |
| ItemWeightMultiplier | 1.0 | 物品重量在 1.15x 时接近正常。 1 倍。 |
| LootRespawnEnabled | false | 收集到的战利品不会重生。 |
| PlayerFurnitureDestruction | false | 玩家建造的家具不受此规则的影响。 |
| PlayerXPGainMultiplier | 4.8 | 经验增益达到极限，达到 4.8 倍。 |
| PowerSocketsOffAtNight | true | 电源插座在夜间关闭。 |
| RadiationDealsDamage | true | 辐射会造成损坏。 |
| RefrigerationEffectivenessMultiplier | 0.6 | 制冷效果低于正常值，为 0.6 倍。 |
| ShowDeathMessages | true | 死亡通知是 |
| SinkRefillRate | 0.5 | 水槽补水率远低于正常水平，为 0.5 倍。 |
| StorageByTag | true | 已启用标记存储组织。 |
| StructuralSupportLimit | 0 | 结构支撑限制为 0 处的标准压力。 |
| TaintedSinkWater | true | 水槽里的水可能不安全。 |
| ThirstSpeedMultiplier | 1.35 | 口渴率高于正常水平，为 1.35 倍。 |
| WeatherFrequency | 5 | 天气频率非常频繁。 |

<a id="optional-adapter-selection-16"></a>
### 可选适配器选择

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `boss_hunt_final_trophy_board`
- `lethal_lasers`: `overcharged_high_hazard`
