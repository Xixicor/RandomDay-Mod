<a id="randomday---action-family"></a>
# RandomDay - Família de Ação

> **Fonte canônica em inglês:** [action.md](../../../../profiles/families/action.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Versão: `v0.3.16-alpha`

Mais tiros, combate mais visível, menos furtividade.

**Estilo de jogo:** operações de combate avançado **Tom de mensagem:** alto otimismo de instalação

<a id="17-day-index"></a>
## Índice de 17 dias

| Dia | Perfil | Condições | Pressão principal |
|---:|---|---|---|
| 1 | Orientação de fogo ativo | Pressão padrão (1.85/5) | Pressão ambiental |
| 2 | Escaramuça de piso aberto | Condições favoráveis (1.29/5) | Pressão ambiental |
| 3 | Exercício de controle de pragas | Pressão padrão (2.14/5) | Pressão de sobrevivência |
| 4 | Supply Run Firefight | Condições favoráveis (1.47/5) | Pressão ambiental |
| 5 | Contato de segurança | Pressão padrão (2.03/5) | Pressão de combate |
| 6 | Engajamento resistido | Pressão padrão (2.02/5) | Pressão ambiental |
| 7 | Night Raid | Pressão padrão (2.03/5) | Pressão de combate |
| 8 | Route Runner | Pressão padrão (1.81/5) | Pressão ambiental |
| 9 | Ração Riot | Pressão padrão (2.17/5) | Pressão de sobrevivência |
| 10 | Recuperação de escolta | Condições favoráveis (1.05/5) | Pressão ambiental |
| 11 | Metas de treinamento | Condições favoráveis (1.46/5) | Pressão ambiental |
| 12 | Black Lab Assault | Pressão padrão (2.49/5) | Pressão de combate |
| 13 | Extended Fireline | Pressão padrão (2.22/5) | Pressão de sobrevivência |
| 14 | Supply Closet Miracle | Condições favoráveis (1.02/5) | Pressão ambiental |
| 15 | Auditoria de precisão ao vivo | Pressão padrão (1.97/5) | Pressão de combate |
| 16 | Experimental Crossfire | Pressão padrão (2.09/5) | Pressão ambiental |
| 17 | Jogo de Guerra de Conformidade | Condições exigentes (2.72/5) | Pressão de combate |

<a id="day-1---live-fire-orientation"></a>
## Dia 1 - Orientação de fogo real

**ID do perfil:** `action_live_fire_orientation` **Condições gerais:** Pressão padrão (1.85/5) **Significado simples:** Pressão padrão. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de sobrevivência: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Verifique a energia, a água, o abrigo e a proteção contra perigos antes de deixar a base.

<a id="main-effects"></a>
### Efeitos principais

- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,25x).
- A capacidade da pilha está bem acima do normal (2x).
- As tomadas são desligadas à noite.
- O saque coletado não reaparece.

<a id="domain-ratings"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (1.86/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (1.9/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | padrão (1.78/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.22/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.5/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **orientação de fogo cruzado**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.091**
- Oportunidade de evento especial: **2**

<a id="exact-sandbox-settings"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 12 | O tamanho do inventário base é a pressão padrão de 12. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.0 | A taxa de continência é quase normal em 1x. |
| DamageToAlliesMultiplier | 0.25 | O dano de fogo amigo está muito abaixo do normal em 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 0.9 | A velocidade de detecção do inimigo é quase normal em 0,9x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | A perda de durabilidade na morte está muito abaixo normal em 0,25x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.0 | A resiliência do inimigo é quase normal em 1x. |
| EnemyPlayerDamageMultiplier | 1.0 | O dano do inimigo aos jogadores é quase normal em 1x. |
| EnemySpawnRate | 1.1 | A frequência do inimigo é quase normal em 1,1x. |
| FatigueSpeedMultiplier | 1.0 | A taxa de fadiga é quase normal em 1x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.0 | A deterioração da comida é quase normal em 1x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.0 | A taxa de fome está quase normal em 1x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.5 | A durabilidade do item está acima do normal em 1,5x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.2 | O ganho de experiência está acima do normal em 1,2x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.0 | A refrigeração está quase normal em 1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.0 | A taxa de recarga da pia está quase normal em 1x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 1.0 | A taxa de sede está quase normal em 1x. |
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection"></a>
### Seleção de adaptador opcional

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `action_live_fire_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-skirmish"></a>
## Dia 2 - Open Floor Skirmish

**ID do perfil:** `action_open_floor_skirmish` **Condições gerais:** Condições favoráveis ​​(1.29/5) **Significado simples:** Condições favoráveis. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de sobrevivência: Condições favoráveis ​​são o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-1"></a>
### Efeitos principais

- O dano do fogo amigo está muito abaixo do normal (0x).
- A durabilidade do item é extrema (4x).
- A capacidade da pilha é extrema (8x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,05x).
- O dano inimigo às defesas está muito abaixo do normal (0,1x).

<a id="domain-ratings-1"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | favorável (1.16/5) | A pressão hostil é mais leve que o normal. |
| Pressão de sobrevivência | favorável (1.34/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | favorável (1.14/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (1.91/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.2/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-1"></a>
### Contexto do encontro

- Nível: **encontros leves**
- Tema: **preparação para fogo cruzado**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.036**
- Oportunidade de evento especial: **0**

<a id="exact-sandbox-settings-1"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 26 | O tamanho do inventário base são condições de alívio em 26. |
| BonusPerkPoints | 7 | Os pontos de vantagem de bônus são condições de alívio em 7. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 0.65 | A taxa de continência é abaixo do normal em 0,65x. |
| DamageToAlliesMultiplier | 0.0 | O dano de fogo amigo está muito abaixo do normal em 0x. |
| DayNightCycleSpeedMultiplier | 0.9 | A velocidade do ciclo dia-noite é quase normal em 0,9x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 0 | As penas de morte são mínimas. |
| DetectionSpeedMultiplier | 0.6 | A velocidade de detecção do inimigo está abaixo do normal em 0,6x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | A perda de durabilidade ao morrer está muito abaixo do normal, 0,05x. |
| EnemyAccuracy | 1 | A precisão do inimigo é reduzida. |
| EnemyDeployableDamageMultiplier | 0.1 | O dano inimigo às defesas está muito abaixo do normal, 0,1x. |
| EnemyHealthMultiplier | 0.8 | A resiliência do inimigo está abaixo do normal, 0,8x. |
| EnemyPlayerDamageMultiplier | 0.6 | O dano inimigo aos jogadores está abaixo do normal em 0,6x. |
| EnemySpawnRate | 0.7 | A frequência inimiga está abaixo do normal em 0,7x. |
| FatigueSpeedMultiplier | 0.65 | A taxa de fadiga está abaixo do normal em 0,65x. |
| FirstTimeStartingWeapon | 2 | Iniciar o fornecimento de armas é a pressão padrão em 2. |
| FoodSpoilSpeedMultiplier | 0.75 | A deterioração dos alimentos está abaixo normal em 0,75x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.65 | A taxa de fome está abaixo do normal em 0,65x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 4.0 | A durabilidade do item é extrema em 4x. |
| ItemStackSizeMultiplier | 8.0 | A capacidade da pilha é extrema em 8x. |
| ItemWeightMultiplier | 0.5 | O peso do item está muito abaixo do normal em 0,5x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.7 | O ganho de experiência está bem acima do normal, 1,7x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.5 | A refrigeração está acima do normal, 1,5x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 2.0 | A taxa de recarga da pia está bem acima do normal em 2x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 0.65 | A taxa de sede está abaixo do normal em 0,65x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-1"></a>
### Seleção de adaptador opcional

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `action_open_floor_skirmish`
- `lethal_lasers`: `low_hazard`

<a id="day-3---pest-control-drill"></a>
## Dia 3 - Exercício de controle de pragas

**ID do perfil:** `action_pest_control_drill` **Condições gerais:** Pressão padrão (2.14/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-2"></a>
### Efeitos principais

- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,25x).
- Dificuldade do jogo: difícil.
- A capacidade da pilha está bem acima do normal (2x).

<a id="domain-ratings-2"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.05/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (2.78/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (1.93/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.22/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.5/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-2"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **recurso biológico de fogo cruzado**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.118**
- Oportunidade de evento especial: **8**

<a id="exact-sandbox-settings-2"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 12 | O tamanho do inventário base é a pressão padrão de 12. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.45 | A taxa de continência está acima do normal em 1,45x. |
| DamageToAlliesMultiplier | 0.25 | O dano de fogo amigo está muito abaixo do normal em 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | A perda de durabilidade na morte está muito abaixo normal em 0,25x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.9 | O dano inimigo às defesas é quase normal em 0,9x. |
| EnemyHealthMultiplier | 1.0 | A resiliência do inimigo é quase normal em 1x. |
| EnemyPlayerDamageMultiplier | 1.1 | O dano inimigo aos jogadores é quase normal em 1,1x. |
| EnemySpawnRate | 1.2 | A frequência do inimigo está acima do normal em 1,1x. 1,2x. |
| FatigueSpeedMultiplier | 1.1 | A taxa de fadiga está quase normal em 1,1x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.25 | A deterioração dos alimentos está acima do normal em 1,25x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.1 | A taxa de fome está quase normal em 1,1x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.25 | A durabilidade do item está acima do normal em 1,25x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.4 | O ganho de experiência está acima do normal em 1,4x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.75 | A refrigeração está abaixo do normal em 0,75x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.25 | A taxa de recarga da pia está muito abaixo do normal em 0,25x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.6 | A taxa de sede está acima do normal em 1,6x. |
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection-2"></a>
### Seleção de adaptador opcional

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `action_pest_control_drill`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-run-firefight"></a>
## Dia 4 - Firefight de abastecimento

**ID do perfil:** `action_supply_run_firefight` **Condições gerais:** Condições favoráveis ​​(1.47/5) **Significado simples:** Condições favoráveis. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de combate: Condições favoráveis ​​são o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-3"></a>
### Efeitos principais

- A durabilidade do item é extrema (2,5x).
- A capacidade da pilha é extrema (14x).
- A taxa de recarga do coletor é extrema (2,5x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,05x).
- O tamanho do inventário base é uma condição de alívio (30).

<a id="domain-ratings-3"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | favorável (1.51/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | favorável (1.5/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | favorável (1.04/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (1.93/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.44/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-3"></a>
### Contexto do encontro

- Nível: **encontros leves**
- Tema: **mobilidade de saque em fogo cruzado**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.073**
- Oportunidade de evento especial: **2**

<a id="exact-sandbox-settings-3"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 30 | O tamanho do inventário base é condições de alívio em 30. |
| BonusPerkPoints | 3 | Pontos de bônus de vantagem são condições favoráveis em 3. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 0.75 | A taxa de continência está abaixo do normal em 3. 0,75x. |
| DamageToAlliesMultiplier | 0.25 | O dano de fogo amigo está muito abaixo do normal em 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 0.7 | A velocidade de detecção do inimigo está abaixo do normal em 0,7x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | A perda de durabilidade ao morrer está muito abaixo do normal, 0,05x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.5 | O dano inimigo às defesas está muito abaixo do normal em 0,5x. |
| EnemyHealthMultiplier | 0.9 | A resiliência do inimigo está quase normal em 0,9x. |
| EnemyPlayerDamageMultiplier | 0.8 | O dano inimigo aos jogadores está abaixo do normal em 0,8x. |
| EnemySpawnRate | 0.9 | A frequência do inimigo está quase normal em 0,9x. |
| FatigueSpeedMultiplier | 0.75 | A taxa de fadiga está abaixo do normal em 0,75x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.6 | A deterioração dos alimentos está abaixo do normal em 0,6x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.75 | A taxa de fome está abaixo do normal em 0,75x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 2.5 | A durabilidade do item é extrema em 2,5x. |
| ItemStackSizeMultiplier | 14.0 | A capacidade da pilha é extrema em 14x. |
| ItemWeightMultiplier | 0.3 | O peso do item está muito abaixo do normal em 0,3x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.8 | O ganho de experiência está bem acima do normal em 1,8x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.5 | A refrigeração está acima do normal, 1,5x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 2.5 | A taxa de recarga do coletor é extrema em 2,5x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 0.75 | A taxa de sede está abaixo do normal em 0,75x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-3"></a>
### Seleção de adaptador opcional

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `action_supply_run_firefight`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-contact"></a>
## Dia 5 - Contato de segurança

**ID do perfil:** `action_security_contact` **Condições gerais:** Pressão padrão (2.03/5) **Significado simples:** Pressão padrão. Pressão de combate: A pressão padrão é a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-4"></a>
### Efeitos principais

- O dano do fogo amigo está muito abaixo do normal (0,1x).
- Dificuldade do jogo: difícil.
- A capacidade da pilha está bem acima do normal (2x).
- As tomadas são desligadas à noite.
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,3x).

<a id="domain-ratings-4"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.37/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (1.94/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | padrão (1.72/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.17/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.51/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-4"></a>
### Contexto do encontro

- Nível: **encontros pesados**
- Tema: **segurança contra fogo cruzado**
- Máximo de grupos ativos: **2**
- Oportunidade de encontro misto: **0.155**
- Oportunidade de evento especial: **14**

<a id="exact-sandbox-settings-4"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 12 | O tamanho do inventário base é a pressão padrão de 12. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.0 | A taxa de continência é quase normal em 1x. |
| DamageToAlliesMultiplier | 0.1 | O dano de fogo amigo está muito abaixo do normal, 0,1x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.8 | A velocidade de detecção do inimigo está bem acima do normal, 1,8x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | A perda de durabilidade em caso de morte está muito abaixo do normal, 0,3x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.1 | A resiliência do inimigo está quase normal, 1,1x. |
| EnemyPlayerDamageMultiplier | 1.2 | O dano inimigo aos jogadores está acima do normal em 1,2x. |
| EnemySpawnRate | 1.7 | A frequência inimiga está bem acima do normal em 1,7x. |
| FatigueSpeedMultiplier | 1.15 | A taxa de fadiga está quase normal em 1,15x. |
| FirstTimeStartingWeapon | 4 | Iniciar o fornecimento de armas é condições favoráveis em 4. |
| FoodSpoilSpeedMultiplier | 1.0 | A deterioração da comida é quase normal em 1x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.0 | A taxa de fome está quase normal em 1x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.25 | A durabilidade do item está acima do normal em 1,25x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.7 | O ganho de experiência está bem acima do normal, 1,7x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.0 | A refrigeração está quase normal em 1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.0 | A taxa de recarga da pia está quase normal em 1x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 1.0 | A taxa de sede está quase normal em 1x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-4"></a>
### Seleção de adaptador opcional

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `action_security_contact`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---weathered-engagement"></a>
## Dia 6 - Engajamento resistido

**ID do perfil:** `action_weathered_engagement` **Condições gerais:** Pressão padrão (2.02/5) **Significado simples:** Pressão padrão. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de combate: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Verifique a energia, a água, o abrigo e a proteção contra perigos antes de deixar a base.

<a id="main-effects-5"></a>
### Efeitos principais

- Frequência climática: muito frequente.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,25x).
- Dificuldade do jogo: difícil.
- A capacidade da pilha está bem acima do normal (2x).

<a id="domain-ratings-5"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.07/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (2.04/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | padrão (1.89/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.52/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.5/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-5"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **clima de fogo cruzado**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.118**
- Oportunidade de evento especial: **10**

<a id="exact-sandbox-settings-5"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 12 | O tamanho do inventário base é a pressão padrão de 12. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.0 | A taxa de continência é quase normal em 1x. |
| DamageToAlliesMultiplier | 0.25 | O dano de fogo amigo está muito abaixo do normal em 0,25x. |
| DayNightCycleSpeedMultiplier | 1.25 | A velocidade do ciclo diurno-noturno está acima do normal em 1,25x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | A perda de durabilidade na morte está muito abaixo normal em 0,25x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.0 | A resiliência do inimigo é quase normal em 1x. |
| EnemyPlayerDamageMultiplier | 1.0 | O dano do inimigo aos jogadores é quase normal em 1x. |
| EnemySpawnRate | 1.3 | A frequência do inimigo está acima do normal em 1,3x. |
| FatigueSpeedMultiplier | 1.0 | A taxa de fadiga é quase normal em 1x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.25 | A deterioração dos alimentos está acima do normal em 1,25x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.1 | A taxa de fome está quase normal em 1,1x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.1 | A durabilidade do item está quase normal em 1,1x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.3 | O ganho de experiência está acima do normal em 1,3x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.8 | A refrigeração está abaixo do normal em 0,8x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.75 | A taxa de recarga do coletor está abaixo do normal em 0,75x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 1.35 | A taxa de sede está acima do normal em 1,35x. |
| WeatherFrequency | 5 | A frequência climática é muito frequente. |

<a id="optional-adapter-selection-5"></a>
### Seleção de adaptador opcional

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `action_weathered_engagement`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-raid"></a>
## Dia 7 - Incursão Noturna

**ID do perfil:** `action_night_raid` **Condições gerais:** Pressão padrão (2.03/5) **Significado simples:** Pressão padrão. Pressão de combate: A pressão padrão é a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-6"></a>
### Efeitos principais

- A capacidade da pilha é extrema (3x).
- Estado dia-noite: polarizado para a noite.
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,2x).
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- Dificuldade do jogo: difícil.

<a id="domain-ratings-6"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.39/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (1.93/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (1.61/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.33/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.49/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-6"></a>
### Contexto do encontro

- Nível: **encontros pesados**
- Tema: **fogo cruzado noturno**
- Máximo de grupos ativos: **2**
- Oportunidade de encontro misto: **0.155**
- Oportunidade de evento especial: **16**

<a id="exact-sandbox-settings-6"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 16 | O tamanho do inventário base é condições favoráveis em 16. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 0.95 | A taxa de continência está quase normal em 0,95x. |
| DamageToAlliesMultiplier | 0.25 | O dano de fogo amigo está muito abaixo do normal em 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 2 | O estado dia-noite é tendencioso para a noite. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.5 | A velocidade de detecção do inimigo está acima do normal em 1,5x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.2 | A perda de durabilidade na morte está muito abaixo do normal em 0,2x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.1 | A resiliência do inimigo está quase normal, 1,1x. |
| EnemyPlayerDamageMultiplier | 1.2 | O dano inimigo aos jogadores está acima do normal em 1,2x. |
| EnemySpawnRate | 1.9 | A frequência do inimigo está bem acima do normal em 1,9x. |
| FatigueSpeedMultiplier | 1.3 | A taxa de fadiga está acima do normal em 1,3x. |
| FirstTimeStartingWeapon | 5 | O início do fornecimento de armas apresenta condições favoráveis em 5. |
| FoodSpoilSpeedMultiplier | 1.0 | A deterioração da comida é quase normal em 1x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.95 | A taxa de fome está quase normal em 0,95x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.5 | A durabilidade do item está acima do normal em 1,5x. |
| ItemStackSizeMultiplier | 3.0 | A capacidade da pilha é extrema em 3x. |
| ItemWeightMultiplier | 0.8 | O peso do item está abaixo do normal em 0,8x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.8 | O ganho de experiência está bem acima do normal em 1,8x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.0 | A refrigeração está quase normal em 1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.0 | A taxa de recarga da pia está quase normal em 1x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 0.95 | A taxa de sede está quase normal em 0,95x. |
| WeatherFrequency | 4 | A frequência climática é frequente. |

<a id="optional-adapter-selection-6"></a>
### Seleção de adaptador opcional

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `action_night_raid`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-runner"></a>
## Dia 8 - Route Runner

**ID do perfil:** `action_route_runner` **Condições gerais:** Pressão padrão (1.81/5) **Significado simples:** Pressão padrão. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de combate: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Verifique a energia, a água, o abrigo e a proteção contra perigos antes de deixar a base.

<a id="main-effects-7"></a>
### Efeitos principais

- A velocidade do ciclo dia-noite é extrema (3x).
- A capacidade da pilha é extrema (4x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,15x).
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- Dificuldade do jogo: difícil.

<a id="domain-ratings-7"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.08/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | favorável (1.42/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | favorável (1.45/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (2.56/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.47/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-7"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **fogo cruzado rota**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.137**
- Oportunidade de evento especial: **14**

<a id="exact-sandbox-settings-7"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 18 | O tamanho do inventário base é condições favoráveis em 18. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 0.7 | A taxa de continência está abaixo do normal em 0,7x. |
| DamageToAlliesMultiplier | 0.25 | O dano de fogo amigo está muito abaixo do normal em 0,25x. |
| DayNightCycleSpeedMultiplier | 3.0 | A velocidade do ciclo dia-noite é extrema em 3x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.3 | A velocidade de detecção do inimigo está acima do normal em 1,3x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.15 | A perda de durabilidade em caso de morte está muito abaixo do normal em 0,15x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.8 | O dano inimigo às defesas está abaixo do normal em 0,8x. |
| EnemyHealthMultiplier | 0.8 | A resiliência do inimigo está abaixo do normal, 0,8x. |
| EnemyPlayerDamageMultiplier | 1.0 | O dano do inimigo aos jogadores é quase normal em 1x. |
| EnemySpawnRate | 1.6 | A frequência do inimigo está acima do normal em 1,6x. |
| FatigueSpeedMultiplier | 0.7 | A taxa de fadiga está abaixo do normal em 0,7x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.9 | A deterioração dos alimentos está quase normal em 0,9x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.7 | A taxa de fome está abaixo do normal em 0,7x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.25 | A durabilidade do item está acima do normal em 1,25x. |
| ItemStackSizeMultiplier | 4.0 | Capacidade da pilha é extremo em 4x. |
| ItemWeightMultiplier | 0.7 | O peso do item está abaixo do normal em 0,7x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.9 | O ganho de experiência está bem acima do normal em 1,9x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.1 | A refrigeração está quase normal em 1,1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.5 | A taxa de recarga da pia está acima do normal em 1,1x. 1,5x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 0.7 | A taxa de sede está abaixo do normal em 0,7x. |
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection-7"></a>
### Seleção de adaptador opcional

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `action_route_runner`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-riot"></a>
## Dia 9 - Motim da Ração

**ID do perfil:** `action_ration_riot` **Condições gerais:** Pressão padrão (2.17/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão de recursos: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-8"></a>
### Efeitos principais

- O tamanho do estoque básico é condições severas (10).
- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A deterioração dos alimentos está bem acima do normal (2x).
- As tomadas são desligadas à noite.

<a id="domain-ratings-8"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (1.92/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (2.81/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (2.33/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.17/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.53/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-8"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **escassez de fogo cruzado**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.109**
- Oportunidade de evento especial: **8**

<a id="exact-sandbox-settings-8"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 10 | O tamanho do inventário básico é condições graves em 10. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.25 | A taxa de continência está acima do normal em 1,25x. |
| DamageToAlliesMultiplier | 0.25 | O dano de fogo amigo está muito abaixo do normal em 0,25x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | A perda de durabilidade em caso de morte está muito abaixo do normal em 0,35x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.1 | A resiliência do inimigo está quase normal, 1,1x. |
| EnemyPlayerDamageMultiplier | 1.1 | O dano inimigo aos jogadores é quase normal em 1,1x. |
| EnemySpawnRate | 1.1 | A frequência do inimigo é quase normal em 1,1x. |
| FatigueSpeedMultiplier | 1.3 | A taxa de fadiga está acima do normal em 1,3x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 2.0 | A deterioração dos alimentos está bem acima do normal em 2x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.4 | Fome a taxa está acima do normal em 1,4x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 0.75 | A durabilidade do item está abaixo do normal em 0,75x. |
| ItemStackSizeMultiplier | 1.0 | A capacidade da pilha está quase normal em 1x. |
| ItemWeightMultiplier | 1.3 | O peso do item está acima do normal em 1,3x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.3 | O ganho de experiência está acima do normal em 1,3x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.5 | A refrigeração está muito abaixo do normal em 0,5x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.5 | A taxa de recarga da pia está muito abaixo do normal, 0,5x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.4 | A taxa de sede está acima do normal, 1,4x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-8"></a>
### Seleção de adaptador opcional

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `action_ration_riot`
- `lethal_lasers`: `standard_safety`

<a id="day-10---escort-recovery"></a>
## Dia 10 - Recuperação da escolta

**ID do perfil:** `action_escort_recovery` **Condições gerais:** Condições favoráveis ​​(1.05/5) **Significado simples:** Condições favoráveis. Pressão ambiental: As condições favoráveis ​​são a principal pressão. Pressão de recuperação: Condições favoráveis ​​são o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-9"></a>
### Efeitos principais

- Os pontos de bônus são condições de alívio (10).
- O dano do fogo amigo está muito abaixo do normal (0x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0x).
- A durabilidade do item é extrema (3x).
- A capacidade da pilha é extrema (10x).

<a id="domain-ratings-9"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | favorável (0.92/5) | A pressão hostil é mais leve que o normal. |
| Pressão de sobrevivência | favorável (1.02/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | favorável (0.9/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | favorável (1.54/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.19/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-9"></a>
### Contexto do encontro

- Nível: **encontros mínimos**
- Tema: **recuperação de fogo cruzado**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0**
- Oportunidade de evento especial: **0**

<a id="exact-sandbox-settings-9"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 30 | O tamanho do inventário base é condições de alívio em 30. |
| BonusPerkPoints | 10 | Os pontos de bônus são condições de alívio em 10. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 0.45 | A taxa de continência está muito abaixo normal em 0,45x. |
| DamageToAlliesMultiplier | 0.0 | O dano de fogo amigo está muito abaixo do normal em 0x. |
| DayNightCycleSpeedMultiplier | 0.85 | A velocidade do ciclo dia-noite está quase normal em 0,85x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 0 | As penas de morte são mínimas. |
| DetectionSpeedMultiplier | 0.4 | A velocidade de detecção do inimigo está muito abaixo do normal em 0,4x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 1 | A precisão do inimigo é reduzida. |
| EnemyDeployableDamageMultiplier | 0.1 | O dano inimigo às defesas está muito abaixo do normal, 0,1x. |
| EnemyHealthMultiplier | 0.7 | A resiliência do inimigo está abaixo do normal em 0,7x. |
| EnemyPlayerDamageMultiplier | 0.3 | O dano inimigo aos jogadores está muito abaixo do normal em 0,3x. |
| EnemySpawnRate | 0.5 | A frequência do inimigo está muito abaixo do normal em 0,5x. |
| FatigueSpeedMultiplier | 0.45 | A taxa de fadiga está muito abaixo do normal, 0,45x. |
| FirstTimeStartingWeapon | 2 | Iniciar o fornecimento de armas é a pressão padrão em 2. |
| FoodSpoilSpeedMultiplier | 0.4 | A deterioração dos alimentos está muito abaixo do normal, 0,4x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.45 | A taxa de fome está muito abaixo do normal, 0,45x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 3.0 | A durabilidade do item é extrema, 3x. |
| ItemStackSizeMultiplier | 10.0 | A capacidade da pilha é extrema em 3x. 10x. |
| ItemWeightMultiplier | 0.4 | O peso do item está muito abaixo do normal, 0,4x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.4 | O ganho de experiência está bem acima do normal, 2,4x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | falso | Os danos por radiação estão desativados. |
| RefrigerationEffectivenessMultiplier | 1.8 | A refrigeração está bem acima do normal, 1,8x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 3.0 | A taxa de recarga da pia é extrema, 3x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 0.45 | A taxa de sede está muito abaixo do normal, 0,45x. |
| WeatherFrequency | 1 | A frequência climática é rara. |

<a id="optional-adapter-selection-9"></a>
### Seleção de adaptador opcional

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `action_escort_recovery`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-targets"></a>
## Dia 11 - Metas de treinamento

**ID do perfil:** `action_training_targets` **Condições gerais:** Condições favoráveis ​​(1.46/5) **Significado simples:** Condições favoráveis. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de sobrevivência: Condições favoráveis ​​são o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-10"></a>
### Efeitos principais

- Os pontos de bônus são condições de alívio (12).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0x).
- A capacidade da pilha é extrema (5x).
- O ganho de experiência é extremo (3,1x).
- A durabilidade do item está bem acima do normal (2,25x).

<a id="domain-ratings-10"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | favorável (1.49/5) | A pressão hostil é mais leve que o normal. |
| Pressão de sobrevivência | favorável (1.58/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (0.92/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (1.96/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.43/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-10"></a>
### Contexto do encontro

- Nível: **encontros leves**
- Tema: **treinamento de fogo cruzado**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.064**
- Oportunidade de evento especial: **3**

<a id="exact-sandbox-settings-10"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 24 | O tamanho base do inventário corresponde às condições de alívio em 24. |
| BonusPerkPoints | 12 | Os pontos de bônus são condições de alívio em 12. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 0.8 | A taxa de continência está abaixo do normal em 0,8x. |
| DamageToAlliesMultiplier | 0.25 | O dano de fogo amigo está muito abaixo do normal em 0,25x. |
| DayNightCycleSpeedMultiplier | 1.15 | A velocidade do ciclo dia-noite está quase normal em 1,15x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 0.8 | A velocidade de detecção do inimigo está abaixo do normal em 0,8x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.4 | O dano inimigo às defesas está muito abaixo do normal, 0,4x. |
| EnemyHealthMultiplier | 0.8 | A resiliência do inimigo está abaixo do normal, 0,8x. |
| EnemyPlayerDamageMultiplier | 0.6 | O dano inimigo aos jogadores está abaixo do normal em 0,6x. |
| EnemySpawnRate | 1.1 | A frequência do inimigo é quase normal em 1,1x. |
| FatigueSpeedMultiplier | 0.8 | A taxa de fadiga está abaixo do normal, 0,8x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.8 | A deterioração dos alimentos está abaixo do normal, 0,8x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.8 | A taxa de fome está abaixo do normal, 0,8x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 2.25 | A durabilidade do item é bem acima do normal, 2,25x. |
| ItemStackSizeMultiplier | 5.0 | A capacidade da pilha é extrema, 5x. |
| ItemWeightMultiplier | 0.6 | O peso do item está abaixo do normal, 0,6x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 3.1 | O ganho de experiência é extremo, 3,1x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.3 | A refrigeração está acima do normal, 1,3x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 2.0 | A taxa de recarga da pia está bem acima do normal em 2x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 0.8 | A taxa de sede está abaixo do normal em 0,8x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-10"></a>
### Seleção de adaptador opcional

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `action_training_targets`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-assault"></a>
## Dia 12 - Ataque ao Black Lab

**ID do perfil:** `action_black_lab_assault` **Condições gerais:** Pressão padrão (2.49/5) **Significado simples:** Pressão padrão. Pressão de combate: As condições exigentes são a pressão principal. Pressão de sobrevivência: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-11"></a>
### Efeitos principais

- Dificuldade do jogo: muito difícil.
- A frequência do inimigo é extrema (2,5x).
- O ganho de experiência é extremo (2,5x).
- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,15x).

<a id="domain-ratings-11"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | exigente (3.15/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | padrão (2.53/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | padrão (1.78/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.22/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | padrão (1.79/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-11"></a>
### Contexto do encontro

- Nível: **encontros extremos**
- Tema: **teste pesado de fogo cruzado**
- Máximo de grupos ativos: **3**
- Oportunidade de encontro misto: **0.209**
- Oportunidade de evento especial: **22**

<a id="exact-sandbox-settings-11"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 12 | O tamanho do inventário base é a pressão padrão de 12. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.0 | A taxa de continência é quase normal em 1x. |
| DamageToAlliesMultiplier | 0.15 | O dano de fogo amigo está muito abaixo do normal, 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 1.8 | A velocidade de detecção do inimigo está bem acima do normal, 1,8x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.4 | A perda de durabilidade em caso de morte está muito abaixo do normal, 0,4x. |
| EnemyAccuracy | 3 | A precisão do inimigo é preciso. |
| EnemyDeployableDamageMultiplier | 1.4 | O dano inimigo às defesas está acima do normal em 1,4x. |
| EnemyHealthMultiplier | 1.7 | A resiliência do inimigo está bem acima do normal em 1,7x. |
| EnemyPlayerDamageMultiplier | 1.9 | O dano inimigo aos jogadores está bem acima do normal em 1,9x. |
| EnemySpawnRate | 2.5 | A frequência inimiga é extrema em 2,5x. |
| FatigueSpeedMultiplier | 1.15 | A taxa de fadiga está quase normal em 1,15x. |
| FirstTimeStartingWeapon | 1 | Iniciar o fornecimento de armas é a pressão padrão em 1. |
| FoodSpoilSpeedMultiplier | 1.15 | A deterioração dos alimentos é quase normal em 1,15x. |
| GameDifficulty | 3 | A dificuldade do jogo é muito difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.15 | A taxa de fome está quase normal em 1,15x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.1 | A durabilidade do item está quase normal em 1,1x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 1.0 | O peso do item está quase normal em 1,15x. 1x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.5 | O ganho de experiência é extremo com 2,5x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.85 | A refrigeração está quase normal com 0,85x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.75 | A taxa de recarga do coletor está abaixo do normal em 0,75x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.15 | A taxa de sede está quase normal com 1,15x. |
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection-11"></a>
### Seleção de adaptador opcional

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `action_black_lab_assault`
- `lethal_lasers`: `high_hazard`

<a id="day-13---extended-fireline"></a>
## Dia 13 - Fireline Estendido

**ID do perfil:** `action_extended_fireline` **Condições gerais:** Pressão padrão (2.22/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão de recursos: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-12"></a>
### Efeitos principais

- O tamanho do estoque básico é condições severas (10).
- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- Dificuldade do jogo: difícil.
- A capacidade da pilha está bem acima do normal (2x).

<a id="domain-ratings-12"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.06/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (3.02/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (2.17/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.01/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.53/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-12"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **resistência ao fogo cruzado**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.127**
- Oportunidade de evento especial: **7**

<a id="exact-sandbox-settings-12"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 10 | O tamanho do inventário básico é condições graves em 10. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.35 | A taxa de continência está acima do normal em 1,35x. |
| DamageToAlliesMultiplier | 0.25 | O dano de fogo amigo está muito abaixo do normal em 0,25x. |
| DayNightCycleSpeedMultiplier | 0.3 | A velocidade do ciclo dia-noite está muito abaixo do normal em 0,3x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | A perda de durabilidade em caso de morte está muito abaixo do normal em 0,35x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.9 | O dano inimigo às defesas é quase normal em 0,9x. |
| EnemyHealthMultiplier | 1.2 | A resiliência do inimigo está acima do normal em 1,2x. |
| EnemyPlayerDamageMultiplier | 1.2 | O dano inimigo aos jogadores está acima do normal em 1,2x. |
| EnemySpawnRate | 1.0 | A frequência do inimigo está quase normal em 1x. |
| FatigueSpeedMultiplier | 1.5 | A taxa de fadiga está acima do normal em 1,5x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.8 | A deterioração dos alimentos está bem acima do normal em 1,8x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.6 | A taxa de fome está acima do normal em 1,6x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 0.9 | A durabilidade do item está quase normal em 0,9x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 1.4 | O peso do item está acima do normal em 1,4x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.6 | O ganho de experiência está acima do normal em 1,6x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.65 | A refrigeração está abaixo do normal em 0,65x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.35 | A taxa de recarga da pia está muito abaixo do normal em 0,35x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.6 | A taxa de sede está acima do normal em 1,6x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-12"></a>
### Seleção de adaptador opcional

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `action_extended_fireline`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-miracle"></a>
## Dia 14 - Milagre do armário de suprimentos

**ID do perfil:** `action_supply_closet_miracle` **Condições gerais:** Condições favoráveis ​​(1.02/5) **Significado simples:** Condições favoráveis. Pressão ambiental: As condições favoráveis ​​são a principal pressão. Pressão de recuperação: Condições favoráveis ​​são o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-13"></a>
### Efeitos principais

- O tamanho do inventário base é uma condição de alívio (40).
- Os pontos de bônus são condições de alívio (12).
- O dano do fogo amigo está muito abaixo do normal (0x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0x).
- A durabilidade do item é extrema (6x).

<a id="domain-ratings-13"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | favorável (0.98/5) | A pressão hostil é mais leve que o normal. |
| Pressão de sobrevivência | favorável (0.86/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | alívio (0.79/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | favorável (1.58/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.19/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-13"></a>
### Contexto do encontro

- Nível: **encontros mínimos**
- Tema: **fogo cruzado alívio**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0**
- Oportunidade de evento especial: **0**

<a id="exact-sandbox-settings-13"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 40 | O tamanho do inventário base são condições de alívio em 40. |
| BonusPerkPoints | 12 | Os pontos de bônus são condições de alívio em 12. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 0.35 | A taxa de continência está muito abaixo do normal, 0,35x. |
| DamageToAlliesMultiplier | 0.0 | O dano de fogo amigo está muito abaixo do normal em 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 0 | As penas de morte são mínimas. |
| DetectionSpeedMultiplier | 0.5 | A velocidade de detecção do inimigo está muito abaixo do normal, 0,5x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 1 | A precisão do inimigo é reduzida. |
| EnemyDeployableDamageMultiplier | 0.1 | O dano inimigo às defesas está muito abaixo do normal, 0,1x. |
| EnemyHealthMultiplier | 0.7 | A resiliência do inimigo está abaixo do normal em 0,7x. |
| EnemyPlayerDamageMultiplier | 0.5 | O dano inimigo aos jogadores está muito abaixo do normal, 0,5x. |
| EnemySpawnRate | 0.5 | A frequência do inimigo está muito abaixo do normal em 0,5x. |
| FatigueSpeedMultiplier | 0.35 | A taxa de fadiga está muito abaixo do normal, 0,35x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.25 | A deterioração dos alimentos está muito abaixo do normal, 0,25x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.35 | A taxa de fome está muito abaixo do normal, 0,35x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 6.0 | A durabilidade do item é extrema, 6x. |
| ItemStackSizeMultiplier | 20.0 | A capacidade da pilha é extrema, 20x. |
| ItemWeightMultiplier | 0.2 | O peso do item está muito abaixo do normal. em 0,2x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 3.5 | O ganho de experiência é extremo em 3,5x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | falso | Os danos por radiação estão desativados. |
| RefrigerationEffectivenessMultiplier | 2.0 | A refrigeração está bem acima do normal, 2x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 5.0 | A taxa de recarga da pia é extrema, 5x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 0.35 | A taxa de sede está muito abaixo do normal, 0,35x. |
| WeatherFrequency | 1 | A frequência climática é rara. |

<a id="optional-adapter-selection-13"></a>
### Seleção de adaptador opcional

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `action_supply_closet_miracle`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-audit-live"></a>
## Dia 15 - Auditoria de precisão ao vivo

**ID do perfil:** `action_accuracy_audit_live` **Condições gerais:** Pressão padrão (1.97/5) **Significado simples:** Pressão padrão. Pressão de combate: A pressão padrão é a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-14"></a>
### Efeitos principais

- O dano do fogo amigo está muito abaixo do normal (0x).
- Dificuldade do jogo: difícil.
- A capacidade da pilha está bem acima do normal (2x).
- O ganho de experiência está bem acima do normal (2x).
- As tomadas são desligadas à noite.

<a id="domain-ratings-14"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.19/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (1.98/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | padrão (1.71/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.17/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.51/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-14"></a>
### Contexto do encontro

- Nível: **encontros pesados**
- Tema: **precisão do fogo cruzado**
- Máximo de grupos ativos: **2**
- Oportunidade de encontro misto: **0.155**
- Oportunidade de evento especial: **14**

<a id="exact-sandbox-settings-14"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 12 | O tamanho do inventário base é a pressão padrão de 12. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.0 | A taxa de continência é quase normal em 1x. |
| DamageToAlliesMultiplier | 0.0 | O dano de fogo amigo está muito abaixo do normal em 0x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.3 | A velocidade de detecção do inimigo está acima do normal em 1,3x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | A perda de durabilidade em caso de morte está muito abaixo do normal, 0,3x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.8 | O dano inimigo às defesas está abaixo do normal em 0,8x. |
| EnemyHealthMultiplier | 1.0 | A resiliência do inimigo é quase normal em 1x. |
| EnemyPlayerDamageMultiplier | 1.4 | O dano inimigo aos jogadores está acima do normal em 1,4x. |
| EnemySpawnRate | 1.3 | A frequência do inimigo está acima do normal em 1,3x. |
| FatigueSpeedMultiplier | 1.25 | A taxa de fadiga está acima do normal em 1,25x. |
| FirstTimeStartingWeapon | 4 | Iniciar o fornecimento de armas é condições favoráveis em 4. |
| FoodSpoilSpeedMultiplier | 1.0 | A deterioração da comida é quase normal em 1x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.0 | A taxa de fome está quase normal em 1x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.0 | A durabilidade do item é quase normal em 1x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.0 | Experiência o ganho está bem acima do normal em 2x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.0 | A refrigeração está quase normal em 1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.0 | A taxa de recarga da pia está quase normal em 1x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | falso | A água da pia não é contaminada por esta regra. |
| ThirstSpeedMultiplier | 1.0 | A taxa de sede está quase normal em 1x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-14"></a>
### Seleção de adaptador opcional

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `action_accuracy_audit_live`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-crossfire"></a>
## Dia 16 - Fogo Cruzado Experimental

**ID do perfil:** `action_experimental_crossfire` **Condições gerais:** Pressão padrão (2.09/5) **Significado simples:** Pressão padrão. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de combate: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Verifique a energia, a água, o abrigo e a proteção contra perigos antes de deixar a base.

<a id="main-effects-15"></a>
### Efeitos principais

- Dificuldade do jogo: muito difícil.
- Algumas radiações podem não ter um aviso visível.
- Frequência climática: muito frequente.
- O tamanho do inventário base é uma condição de alívio (42).
- Os pontos de bônus são condições de alívio (15).

<a id="domain-ratings-15"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.46/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (2.36/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (0.99/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (2.59/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.67/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-15"></a>
### Contexto do encontro

- Nível: **encontros extremos**
- Tema: **fogo cruzado experimental**
- Máximo de grupos ativos: **3**
- Oportunidade de encontro misto: **0.2**
- Oportunidade de evento especial: **20**

<a id="exact-sandbox-settings-15"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 42 | O tamanho do inventário base é condições de alívio em 42. |
| BonusPerkPoints | 15 | Os pontos de vantagem de bônus são condições de alívio em 15. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.2 | A taxa de continência está acima do normal em 1,2x. |
| DamageToAlliesMultiplier | 0.0 | O dano de fogo amigo está muito abaixo do normal em 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | A velocidade do ciclo dia-noite está acima do normal em 1,5x. |
| DayNightCycleState | 1 | O estado dia-noite é influenciado pelo dia. |
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 0.5 | A velocidade de detecção do inimigo está muito abaixo do normal, 0,5x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 3 | A precisão do inimigo é preciso. |
| EnemyDeployableDamageMultiplier | 0.7 | O dano inimigo às defesas está abaixo do normal em 0,7x. |
| EnemyHealthMultiplier | 1.4 | A resiliência do inimigo está acima do normal em 1,4x. |
| EnemyPlayerDamageMultiplier | 0.9 | O dano inimigo aos jogadores está quase normal em 0,9x. |
| EnemySpawnRate | 1.7 | A frequência inimiga está bem acima do normal em 1,7x. |
| FatigueSpeedMultiplier | 0.8 | A taxa de fadiga está abaixo do normal, 0,8x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.4 | A deterioração dos alimentos está muito abaixo do normal, 0,4x. |
| GameDifficulty | 3 | A dificuldade do jogo é muito difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.8 | A taxa de fome está abaixo do normal, 0,8x. |
| InvisibleRadiation | verdadeiro | Algumas radiações podem não ter um aviso visível. |
| ItemDurabilityMultiplier | 5.0 | A durabilidade do item é extrema, 5x. |
| ItemStackSizeMultiplier | 15.0 | A capacidade da pilha é extrema, 15x. |
| ItemWeightMultiplier | 0.2 | O peso do item está muito abaixo do normal. em 0,2x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 3.9 | O ganho de experiência é extremo, 3,9x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 2.0 | A refrigeração está bem acima do normal, 2x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.0 | A taxa de recarga da pia está muito abaixo do normal, 0x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.2 | A taxa de sede está acima do normal em 0x. 1,2x. |
| WeatherFrequency | 5 | A frequência climática é muito frequente. |

<a id="optional-adapter-selection-15"></a>
### Seleção de adaptador opcional

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `action_experimental_crossfire`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---compliance-war-game"></a>
## Dia 17 - Jogo de guerra de conformidade

**ID do perfil:** `action_compliance_war_game` **Condições gerais:** Condições exigentes (2.72/5) **Significado simples:** Condições exigentes. Pressão de combate: Condições severas são a pressão principal. Pressão de sobrevivência: Condições exigentes são o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-16"></a>
### Efeitos principais

- A frequência do inimigo é extrema (3,3x).
- Dificuldade do jogo: muito difícil.
- Frequência climática: muito frequente.
- A capacidade da pilha é extrema (3x).
- O ganho de experiência é extremo (3,6x).

<a id="domain-ratings-16"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | graves (3.5/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | exigente (2.72/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (1.88/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.55/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | padrão (1.81/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-16"></a>
### Contexto do encontro

- Nível: **encontros de pedra angular**
- Tema: **altura de fogo cruzado**
- Máximo de grupos ativos: **3**
- Oportunidade de encontro misto: **0.255**
- Oportunidade de evento especial: **30**

<a id="exact-sandbox-settings-16"></a>
### Configurações exatas do sandbox

| Configuração | Valor bruto | Significado traduzido |
|---|---:|---|
| AllowCharacterReset | verdadeiro | A redefinição de caracteres permanece disponível. |
| AllowIronMode | falso | O modo de ferro está desativado. |
| AllowPagers | verdadeiro | Pagers estão disponíveis. |
| AllowRecipeSharing | verdadeiro | O compartilhamento de receitas está disponível. |
| AllowTransmog | verdadeiro | A personalização da aparência está disponível. |
| BaseInventorySize | 12 | O tamanho do inventário base é a pressão padrão de 12. |
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.1 | A taxa de continência está quase normal em 1,1x. |
| DamageToAlliesMultiplier | 0.1 | O dano de fogo amigo está muito abaixo do normal, 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | A velocidade do ciclo dia-noite está acima do normal em 1,45x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 2.1 | A velocidade de detecção do inimigo é boa acima do normal em 2,1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.5 | A perda de durabilidade ao morrer está muito abaixo do normal em 0,5x. |
| EnemyAccuracy | 3 | A precisão do inimigo é preciso. |
| EnemyDeployableDamageMultiplier | 2.0 | O dano inimigo às defesas está bem acima do normal em 2x. |
| EnemyHealthMultiplier | 2.1 | A resiliência do inimigo está bem acima do normal em 2,1x. |
| EnemyPlayerDamageMultiplier | 2.2 | O dano inimigo aos jogadores está bem acima normal em 2,2x. |
| EnemySpawnRate | 3.3 | A frequência do inimigo é extrema em 3,3x. |
| FatigueSpeedMultiplier | 1.25 | A taxa de fadiga está acima do normal em 1,25x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.6 | A deterioração dos alimentos está acima do normal em 1,6x. |
| GameDifficulty | 3 | A dificuldade do jogo é muito difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.35 | A taxa de fome está acima do normal em 1,35x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.0 | A durabilidade do item é quase normal em 1x. |
| ItemStackSizeMultiplier | 3.0 | A capacidade da pilha é extrema em 3x. |
| ItemWeightMultiplier | 1.1 | O peso do item está próximo do normal, 1,1x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 3.6 | O ganho de experiência é extremo, 3,6x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.6 | A refrigeração está abaixo do normal, 0,6x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.5 | A taxa de recarga da pia está muito abaixo do normal, 0,5x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.35 | A taxa de sede está acima do normal em 1,35x. |
| WeatherFrequency | 5 | A frequência climática é muito frequente. |

<a id="optional-adapter-selection-16"></a>
### Seleção de adaptador opcional

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `action_compliance_war_game`
- `lethal_lasers`: `overcharged_high_hazard`
