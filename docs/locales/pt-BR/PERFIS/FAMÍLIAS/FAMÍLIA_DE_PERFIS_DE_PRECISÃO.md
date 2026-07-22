<a id="randomday---precision-family"></a>
# RandomDay - Família Precision

> **Fonte canônica em inglês:** [precision.md](../../../../profiles/families/precision.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Versão: `v0.3.16-alpha`

Menos inimigos, mira mais nítida, maior punição por exposição.

**Estilo de jogo:** letalidade e detecção à distância **Tom de mensagem:** linguagem de auditoria e precisão

<a id="17-day-index"></a>
## Índice de 17 dias

| Dia | Perfil | Condições | Pressão principal |
|---:|---|---|---|
| 1 | Orientação de mira | Pressão padrão (2.02/5) | Pressão de combate |
| 2 | Plano de linha de visão aberta | Condições favoráveis (1.43/5) | Pressão ambiental |
| 3 | Hidratação atrás da cobertura | Pressão padrão (2.32/5) | Pressão de sobrevivência |
| 4 | Linha de fogo de fornecimento | Condições favoráveis (1.62/5) | Pressão de combate |
| 5 | Tiro de segurança | Pressão padrão (2.21/5) | Pressão de combate |
| 6 | Nota sobre balística climática | Pressão padrão (2.19/5) | Pressão de combate |
| 7 | Auditoria de visão noturna | Pressão padrão (2.23/5) | Pressão de combate |
| 8 | Índice de exposição de rota | Pressão padrão (1.99/5) | Pressão de combate |
| 9 | Ração sob fogo | Pressão padrão (2.35/5) | Pressão de sobrevivência |
| 10 | Recuperação atrás da cobertura | Condições favoráveis (1.18/5) | Pressão ambiental |
| 11 | Treinamento com cobertura | Condições favoráveis (1.61/5) | Pressão ambiental |
| 12 | Black Lab Revisão de precisão | Condições exigentes (2.64/5) | Pressão de combate |
| 13 | Mudança de linha de visão estendida | Pressão padrão (2.5/5) | Pressão de sobrevivência |
| 14 | Ponto cego do armário de abastecimento | Condições favoráveis (1.34/5) | Pressão de combate |
| 15 | Auditoria de precisão | Pressão padrão (2.25/5) | Pressão de combate |
| 16 | Balística experimental | Pressão padrão (2.22/5) | Pressão de combate |
| 17 | Exame de precisão final | Condições exigentes (2.85/5) | Pressão de combate |

<a id="day-1---sighting-orientation"></a>
## Dia 1 - Orientação de observação

**ID do perfil:** `precision_sighting_orientation` **Condições gerais:** Pressão padrão (2.02/5) **Significado simples:** Pressão padrão. Pressão de combate: A pressão padrão é a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects"></a>
### Efeitos principais

- Precisão do inimigo: altamente precisa.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,25x).
- A capacidade da pilha está bem acima do normal (2x).
- As tomadas são desligadas à noite.

<a id="domain-ratings"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.35/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (1.9/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | padrão (1.73/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.22/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.5/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **orientação de precisão**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.07**
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
| DetectionSpeedMultiplier | 1.8 | A velocidade de detecção do inimigo está bem acima do normal, 1,8x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | A perda de durabilidade na morte está muito abaixo normal em 0,25x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.2 | A resiliência do inimigo está acima do normal em 1,2x. |
| EnemyPlayerDamageMultiplier | 1.6 | O dano inimigo aos jogadores está acima do normal em 1,6x. |
| EnemySpawnRate | 0.8 | A frequência do inimigo está abaixo do normal em 0,8x. |
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
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection"></a>
### Seleção de adaptador opcional

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `precision_sighting_orientation`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-sightline-plan"></a>
## Dia 2 - Plano de linha de visão aberta

**ID do perfil:** `precision_open_sightline_plan` **Condições gerais:** Condições favoráveis ​​(1.43/5) **Significado simples:** Condições favoráveis. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de combate: Condições favoráveis ​​são o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-1"></a>
### Efeitos principais

- O dano do fogo amigo está muito abaixo do normal (0x).
- A durabilidade do item é extrema (4x).
- A capacidade da pilha é extrema (8x).
- O ganho de experiência está bem acima do normal (2,4x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,05x).

<a id="domain-ratings-1"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | favorável (1.59/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | favorável (1.34/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | favorável (1.08/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (1.91/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.2/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-1"></a>
### Contexto do encontro

- Nível: **encontros leves**
- Tema: **preparação de precisão**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.028**
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
| DetectionSpeedMultiplier | 1.1 | A velocidade de detecção do inimigo é quase normal em 1,1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | A perda de durabilidade ao morrer está muito abaixo do normal, 0,05x. |
| EnemyAccuracy | 3 | A precisão do inimigo é preciso. |
| EnemyDeployableDamageMultiplier | 0.1 | O dano inimigo às defesas está muito abaixo do normal, 0,1x. |
| EnemyHealthMultiplier | 1.0 | A resiliência do inimigo é quase normal em 1x. |
| EnemyPlayerDamageMultiplier | 1.0 | O dano do inimigo aos jogadores é quase normal em 1x. |
| EnemySpawnRate | 0.5 | A frequência do inimigo está muito abaixo do normal em 0,5x. |
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
| PlayerXPGainMultiplier | 2.4 | O ganho de experiência está bem acima do normal, 2,4x. |
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
- `encounter_director`: `precision_open_sightline_plan`
- `lethal_lasers`: `low_hazard`

<a id="day-3---hydration-behind-cover"></a>
## Dia 3 - Hidratação atrás da cobertura

**ID do perfil:** `precision_hydration_behind_cover` **Condições gerais:** Pressão padrão (2.32/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão de combate: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-2"></a>
### Efeitos principais

- Precisão do inimigo: altamente precisa.
- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,25x).
- Dificuldade do jogo: difícil.

<a id="domain-ratings-2"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.53/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (2.84/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (1.88/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.22/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.5/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-2"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **recurso biológico de precisão**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.091**
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
| DetectionSpeedMultiplier | 1.9 | A velocidade de detecção do inimigo está bem acima do normal em 1,9x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | A perda de durabilidade na morte está muito abaixo normal em 0,25x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 0.9 | O dano inimigo às defesas é quase normal em 0,9x. |
| EnemyHealthMultiplier | 1.3 | A resiliência do inimigo está acima do normal em 1,3x. |
| EnemyPlayerDamageMultiplier | 1.7 | O dano inimigo aos jogadores está bem acima do normal em 1,7x. |
| EnemySpawnRate | 0.8 | A frequência do inimigo está abaixo do normal em 0,8x. |
| FatigueSpeedMultiplier | 1.1 | A taxa de fadiga está quase normal em 1,1x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.25 | A deterioração dos alimentos está acima do normal em 1,25x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.2 | A taxa de fome está acima do normal em 1,2x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.25 | A durabilidade do item está acima do normal em 1,25x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.0 | Experiência o ganho está bem acima do normal em 2x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.75 | A refrigeração está abaixo do normal em 0,75x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.25 | A taxa de recarga da pia está muito abaixo do normal em 0,25x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.7 | A taxa de sede está bem acima do normal, 1,7x. |
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection-2"></a>
### Seleção de adaptador opcional

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `precision_hydration_behind_cover`
- `lethal_lasers`: `standard_safety`

<a id="day-4---supply-line-of-fire"></a>
## Dia 4 - Linha de abastecimento de fogo

**ID do perfil:** `precision_supply_line_of_fire` **Condições gerais:** Condições favoráveis ​​(1.62/5) **Significado simples:** Condições favoráveis. Pressão de combate: A pressão padrão é a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-3"></a>
### Efeitos principais

- Precisão do inimigo: altamente precisa.
- A durabilidade do item é extrema (2,5x).
- A capacidade da pilha é extrema (14x).
- O ganho de experiência é extremo (2,6x).
- A taxa de recarga do coletor é extrema (2,5x).

<a id="domain-ratings-3"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (1.97/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | favorável (1.5/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | favorável (0.99/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (1.93/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.44/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-3"></a>
### Contexto do encontro

- Nível: **encontros leves**
- Tema: **mobilidade de saque de precisão**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.056**
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
| DetectionSpeedMultiplier | 1.4 | A velocidade de detecção do inimigo está acima do normal em 1,4x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | A perda de durabilidade ao morrer está muito abaixo do normal, 0,05x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 0.5 | O dano inimigo às defesas está muito abaixo do normal em 0,5x. |
| EnemyHealthMultiplier | 1.1 | A resiliência do inimigo está quase normal, 1,1x. |
| EnemyPlayerDamageMultiplier | 1.3 | O dano do inimigo aos jogadores está acima do normal em 1,3x. |
| EnemySpawnRate | 0.6 | A frequência inimiga está abaixo do normal em 0,6x. |
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
| PlayerXPGainMultiplier | 2.6 | O ganho de experiência é extremo, 2,6x. |
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
- `encounter_director`: `precision_supply_line_of_fire`
- `lethal_lasers`: `low_hazard`

<a id="day-5---security-marksmanship"></a>
## Dia 5 - Pontaria de segurança

**ID do perfil:** `precision_security_marksmanship` **Condições gerais:** Pressão padrão (2.21/5) **Significado simples:** Pressão padrão. Pressão de combate: As condições exigentes são a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-4"></a>
### Efeitos principais

- A velocidade de detecção do inimigo é extrema (3,5x).
- Precisão do inimigo: altamente precisa.
- O ganho de experiência está bem acima do normal (2,4x).
- O dano do fogo amigo está muito abaixo do normal (0,1x).
- O dano inimigo aos jogadores está bem acima do normal (2x).

<a id="domain-ratings-4"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | exigente (2.92/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | padrão (1.94/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (1.6/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.17/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.51/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-4"></a>
### Contexto do encontro

- Nível: **encontros pesados**
- Tema: **segurança de precisão**
- Máximo de grupos ativos: **2**
- Oportunidade de encontro misto: **0.119**
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
| DetectionSpeedMultiplier | 3.5 | A velocidade de detecção do inimigo é extrema em 3,5x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.3 | A perda de durabilidade em caso de morte está muito abaixo do normal, 0,3x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.4 | A resiliência do inimigo está acima do normal em 1,4x. |
| EnemyPlayerDamageMultiplier | 2.0 | O dano inimigo aos jogadores está bem acima do normal em 2x. |
| EnemySpawnRate | 1.2 | A frequência do inimigo está acima do normal em 1,1x. 1,2x. |
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
| PlayerXPGainMultiplier | 2.4 | O ganho de experiência está bem acima do normal, 2,4x. |
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
- `encounter_director`: `precision_security_marksmanship`
- `lethal_lasers`: `high_hazard`

<a id="day-6---weather-ballistics-note"></a>
## Dia 6 - Nota sobre balística climática

**ID do perfil:** `precision_weather_ballistics_note` **Condições gerais:** Pressão padrão (2.19/5) **Significado simples:** Pressão padrão. Pressão de combate: A pressão padrão é a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-5"></a>
### Efeitos principais

- Precisão do inimigo: altamente precisa.
- Frequência climática: muito frequente.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A velocidade de detecção do inimigo está bem acima do normal (2x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,25x).

<a id="domain-ratings-5"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.57/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (2.07/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | padrão (1.83/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.52/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.5/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-5"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **clima de precisão**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.091**
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
| DetectionSpeedMultiplier | 2.0 | A velocidade de detecção do inimigo está bem acima do normal em 2x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | A perda de durabilidade na morte está muito abaixo normal em 0,25x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.2 | A resiliência do inimigo está acima do normal em 1,2x. |
| EnemyPlayerDamageMultiplier | 1.7 | O dano inimigo aos jogadores está bem acima do normal em 1,7x. |
| EnemySpawnRate | 0.9 | A frequência do inimigo está quase normal em 0,9x. |
| FatigueSpeedMultiplier | 1.1 | A taxa de fadiga está quase normal em 1,1x. |
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
| PlayerXPGainMultiplier | 1.9 | O ganho de experiência está bem acima do normal em 1,9x. |
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
- `encounter_director`: `precision_weather_ballistics_note`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-sight-audit"></a>
## Dia 7 - Auditoria de visão noturna

**ID do perfil:** `precision_night_sight_audit` **Condições gerais:** Pressão padrão (2.23/5) **Significado simples:** Pressão padrão. Pressão de combate: As condições exigentes são a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-6"></a>
### Efeitos principais

- A velocidade de detecção do inimigo é extrema (3x).
- Precisão do inimigo: altamente precisa.
- A capacidade da pilha é extrema (3x).
- O ganho de experiência é extremo (2,6x).
- Estado dia-noite: polarizado para a noite.

<a id="domain-ratings-6"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | exigente (2.97/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | padrão (1.96/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (1.49/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (2.33/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.49/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-6"></a>
### Contexto do encontro

- Nível: **encontros pesados**
- Tema: **noite de precisão**
- Máximo de grupos ativos: **2**
- Oportunidade de encontro misto: **0.119**
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
| DetectionSpeedMultiplier | 3.0 | A velocidade de detecção do inimigo é extrema em 3x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.2 | A perda de durabilidade na morte está muito abaixo do normal em 0,2x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.4 | A resiliência do inimigo está acima do normal em 1,4x. |
| EnemyPlayerDamageMultiplier | 2.0 | O dano inimigo aos jogadores está bem acima do normal em 2x. |
| EnemySpawnRate | 1.3 | A frequência do inimigo está acima do normal em 1,3x. |
| FatigueSpeedMultiplier | 1.4 | A taxa de fadiga está acima do normal em 1,4x. |
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
| PlayerXPGainMultiplier | 2.6 | O ganho de experiência é extremo, 2,6x. |
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
- `encounter_director`: `precision_night_sight_audit`
- `lethal_lasers`: `high_hazard`

<a id="day-8---route-exposure-index"></a>
## Dia 8 - Índice de exposição da rota

**ID do perfil:** `precision_route_exposure_index` **Condições gerais:** Pressão padrão (1.99/5) **Significado simples:** Pressão padrão. Pressão de combate: As condições exigentes são a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-7"></a>
### Efeitos principais

- A velocidade do ciclo dia-noite é extrema (3x).
- Precisão do inimigo: altamente precisa.
- A velocidade de detecção do inimigo é extrema (2,5x).
- A capacidade da pilha é extrema (4x).
- O ganho de experiência é extremo (2,7x).

<a id="domain-ratings-7"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | exigente (2.6/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | favorável (1.42/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | favorável (1.41/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (2.56/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.47/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-7"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **rota de precisão**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.105**
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
| DetectionSpeedMultiplier | 2.5 | A velocidade de detecção do inimigo é extrema, 2,5x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.15 | A perda de durabilidade em caso de morte está muito abaixo do normal em 0,15x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 0.8 | O dano inimigo às defesas está abaixo do normal em 0,8x. |
| EnemyHealthMultiplier | 1.0 | A resiliência do inimigo é quase normal em 1x. |
| EnemyPlayerDamageMultiplier | 1.7 | O dano inimigo aos jogadores está bem acima do normal em 1,7x. |
| EnemySpawnRate | 1.1 | A frequência do inimigo é quase normal em 1,1x. |
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
| PlayerXPGainMultiplier | 2.7 | O ganho de experiência é extremo, 2,7x. |
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
- `encounter_director`: `precision_route_exposure_index`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-under-fire"></a>
## Dia 9 - Ração sob fogo

**ID do perfil:** `precision_ration_under_fire` **Condições gerais:** Pressão padrão (2.35/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão de combate: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-8"></a>
### Efeitos principais

- Precisão do inimigo: altamente precisa.
- O tamanho do estoque básico é condições severas (10).
- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A deterioração dos alimentos está bem acima do normal (2x).

<a id="domain-ratings-8"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.42/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (2.84/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (2.27/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.17/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.53/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-8"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **escassez de precisão**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.084**
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
| DetectionSpeedMultiplier | 1.9 | A velocidade de detecção do inimigo está bem acima do normal em 1,9x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | A perda de durabilidade em caso de morte está muito abaixo do normal em 0,35x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.4 | A resiliência do inimigo está acima do normal em 1,4x. |
| EnemyPlayerDamageMultiplier | 1.8 | O dano do inimigo aos jogadores está bem acima do normal em 1,8x. |
| EnemySpawnRate | 0.8 | A frequência do inimigo está abaixo do normal em 0,8x. |
| FatigueSpeedMultiplier | 1.3 | A taxa de fadiga está acima do normal em 1,3x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 2.0 | A deterioração dos alimentos está bem acima do normal em 2x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.5 | A taxa de fome está acima do normal em 1,9x. 1,5x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 0.75 | A durabilidade do item está abaixo do normal em 0,75x. |
| ItemStackSizeMultiplier | 1.0 | A capacidade da pilha está quase normal em 1x. |
| ItemWeightMultiplier | 1.3 | O peso do item está acima do normal em 1,3x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.9 | O ganho de experiência está bem acima do normal em 1,9x. |
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
- `encounter_director`: `precision_ration_under_fire`
- `lethal_lasers`: `standard_safety`

<a id="day-10---recovery-behind-cover"></a>
## Dia 10 - Recuperação atrás da cobertura

**ID do perfil:** `precision_recovery_behind_cover` **Condições gerais:** Condições favoráveis ​​(1.18/5) **Significado simples:** Condições favoráveis. Pressão ambiental: As condições favoráveis ​​são a principal pressão. Pressão de combate: Condições favoráveis ​​são o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

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
| Pressão de combate | favorável (1.29/5) | A pressão hostil é mais leve que o normal. |
| Pressão de sobrevivência | favorável (1.02/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | favorável (0.9/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | favorável (1.54/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.19/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-9"></a>
### Contexto do encontro

- Nível: **encontros mínimos**
- Tema: **recuperação de precisão**
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
| DetectionSpeedMultiplier | 0.8 | A velocidade de detecção do inimigo está abaixo do normal em 0,8x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 3 | A precisão do inimigo é preciso. |
| EnemyDeployableDamageMultiplier | 0.1 | O dano inimigo às defesas está muito abaixo do normal, 0,1x. |
| EnemyHealthMultiplier | 0.9 | A resiliência do inimigo está quase normal em 0,9x. |
| EnemyPlayerDamageMultiplier | 0.5 | O dano inimigo aos jogadores está muito abaixo do normal, 0,5x. |
| EnemySpawnRate | 0.3 | A frequência do inimigo está muito abaixo do normal, 0,3x. |
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
| PlayerXPGainMultiplier | 3.5 | O ganho de experiência é extremo em 3,5x. |
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
- `encounter_director`: `precision_recovery_behind_cover`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-with-cover"></a>
## Dia 11 - Treinamento com cobertura

**ID do perfil:** `precision_training_with_cover` **Condições gerais:** Condições favoráveis ​​(1.61/5) **Significado simples:** Condições favoráveis. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de combate: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-10"></a>
### Efeitos principais

- Precisão do inimigo: altamente precisa.
- Os pontos de bônus são condições de alívio (12).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0x).
- A capacidade da pilha é extrema (5x).
- O ganho de experiência é extremo (4,5x).

<a id="domain-ratings-10"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (1.93/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | favorável (1.58/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (0.92/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (1.96/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.43/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-10"></a>
### Contexto do encontro

- Nível: **encontros leves**
- Tema: **treinamento de precisão**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.049**
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
| DetectionSpeedMultiplier | 1.5 | A velocidade de detecção do inimigo está acima do normal em 1,5x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 0.4 | O dano inimigo às defesas está muito abaixo do normal, 0,4x. |
| EnemyHealthMultiplier | 1.0 | A resiliência do inimigo é quase normal em 1x. |
| EnemyPlayerDamageMultiplier | 1.0 | O dano do inimigo aos jogadores é quase normal em 1x. |
| EnemySpawnRate | 0.7 | A frequência inimiga está abaixo do normal em 0,7x. |
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
| PlayerXPGainMultiplier | 4.5 | O ganho de experiência é extremo, 4,5x. |
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
- `encounter_director`: `precision_training_with_cover`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-accuracy-review"></a>
## Dia 12 - Revisão de precisão do Black Lab

**ID do perfil:** `precision_black_lab_accuracy_review` **Condições gerais:** Condições exigentes (2.64/5) **Significado simples:** Condições exigentes. Pressão de combate: Condições severas são a pressão principal. Pressão de sobrevivência: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-11"></a>
### Efeitos principais

- A velocidade de detecção do inimigo é extrema (3,5x).
- Precisão do inimigo: altamente precisa.
- O dano do inimigo aos jogadores é extremo (3,1x).
- Dificuldade do jogo: muito difícil.
- O ganho de experiência é extremo (3,6x).

<a id="domain-ratings-11"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | graves (3.58/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | padrão (2.53/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | padrão (1.75/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.22/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | padrão (1.79/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-11"></a>
### Contexto do encontro

- Nível: **encontros extremos**
- Tema: **teste pesado de precisão**
- Máximo de grupos ativos: **2**
- Oportunidade de encontro misto: **0.161**
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
| BonusPerkPoints | 2 | Pontos de vantagem bônus são condições favoráveis em 2. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.0 | A taxa de continência é quase normal em 1x. |
| DamageToAlliesMultiplier | 0.15 | O dano de fogo amigo está muito abaixo do normal, 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 3.5 | A velocidade de detecção do inimigo é extrema em 3,5x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.4 | A perda de durabilidade em caso de morte está muito abaixo do normal, 0,4x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 1.4 | O dano inimigo às defesas está acima do normal em 1,4x. |
| EnemyHealthMultiplier | 2.1 | A resiliência do inimigo está bem acima do normal em 2,1x. |
| EnemyPlayerDamageMultiplier | 3.1 | O dano do inimigo aos jogadores é extremo em 3,1x. |
| EnemySpawnRate | 1.8 | A frequência do inimigo está bem acima do normal, 1,8x. |
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
| PlayerXPGainMultiplier | 3.6 | O ganho de experiência é extremo, 3,6x. |
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
- `encounter_director`: `precision_black_lab_accuracy_review`
- `lethal_lasers`: `high_hazard`

<a id="day-13---extended-sightline-shift"></a>
## Dia 13 - Mudança de linha de visão estendida

**ID do perfil:** `precision_extended_sightline_shift` **Condições gerais:** Pressão padrão (2.5/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão de combate: Condições exigentes são o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-12"></a>
### Efeitos principais

- Precisão do inimigo: altamente precisa.
- Dificuldade do jogo: muito difícil.
- O tamanho do estoque básico é condições severas (10).
- A água da pia pode ser perigosa.
- O ganho de experiência está bem acima do normal (2,2x).

<a id="domain-ratings-12"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | exigente (2.73/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | exigente (3.11/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (2.12/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.01/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | padrão (1.77/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-12"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **resistência de precisão**
- Máximo de grupos ativos: **1**
- Oportunidade de encontro misto: **0.098**
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
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 1.9 | A velocidade de detecção do inimigo está bem acima do normal em 1,9x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | A perda de durabilidade em caso de morte está muito abaixo do normal em 0,35x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 0.9 | O dano inimigo às defesas é quase normal em 0,9x. |
| EnemyHealthMultiplier | 1.5 | A resiliência do inimigo está acima do normal em 1,5x. |
| EnemyPlayerDamageMultiplier | 2.0 | O dano inimigo aos jogadores está bem acima do normal em 2x. |
| EnemySpawnRate | 0.7 | A frequência inimiga está abaixo do normal em 0,7x. |
| FatigueSpeedMultiplier | 1.6 | A taxa de fadiga está acima do normal em 1,6x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.8 | A deterioração dos alimentos está bem acima do normal em 1,8x. |
| GameDifficulty | 3 | A dificuldade do jogo é muito difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.7 | A taxa de fome está bem acima do normal, em 1,7x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 0.9 | A durabilidade do item está quase normal em 0,9x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 1.4 | O peso do item está acima do normal em 1,4x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.2 | O ganho de experiência está bem acima do normal em 2,2x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.65 | A refrigeração está abaixo do normal em 0,65x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.35 | A taxa de recarga da pia está muito abaixo do normal em 0,35x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.7 | A taxa de sede está bem acima do normal, 1,7x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-12"></a>
### Seleção de adaptador opcional

- `ante_up`: `black_lab`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `precision_extended_sightline_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-blind-spot"></a>
## Dia 14 - Ponto cego do armário de suprimentos

**ID do perfil:** `precision_supply_closet_blind_spot` **Condições gerais:** Condições favoráveis ​​(1.34/5) **Significado simples:** Condições favoráveis. Pressão de combate: A pressão padrão é a pressão principal. Pressão de recuperação: Condições favoráveis ​​são o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-13"></a>
### Efeitos principais

- Dificuldade do jogo: muito difícil.
- O tamanho do inventário base é uma condição de alívio (40).
- Os pontos de bônus são condições de alívio (12).
- O dano do fogo amigo está muito abaixo do normal (0x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0x).

<a id="domain-ratings-13"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (1.71/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | favorável (0.86/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | alívio (0.79/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | favorável (1.58/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.67/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-13"></a>
### Contexto do encontro

- Nível: **encontros mínimos**
- Tema: **alívio de precisão**
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
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 3 | A precisão do inimigo é preciso. |
| EnemyDeployableDamageMultiplier | 0.1 | O dano inimigo às defesas está muito abaixo do normal, 0,1x. |
| EnemyHealthMultiplier | 0.9 | A resiliência do inimigo está quase normal em 0,9x. |
| EnemyPlayerDamageMultiplier | 0.8 | O dano inimigo aos jogadores está abaixo do normal em 0,8x. |
| EnemySpawnRate | 0.4 | A frequência inimiga está muito abaixo do normal, 0,4x. |
| FatigueSpeedMultiplier | 0.35 | A taxa de fadiga está muito abaixo do normal, 0,35x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.25 | A deterioração dos alimentos está muito abaixo do normal, 0,25x. |
| GameDifficulty | 3 | A dificuldade do jogo é muito difícil. |
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
| PlayerXPGainMultiplier | 5.1 | O ganho de experiência é extremo, 5,1x. |
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

- `ante_up`: `black_lab`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `precision_supply_closet_blind_spot`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-audit"></a>
## Dia 15 - Auditoria de precisão

**ID do perfil:** `precision_accuracy_audit` **Condições gerais:** Pressão padrão (2.25/5) **Significado simples:** Pressão padrão. Pressão de combate: As condições exigentes são a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-14"></a>
### Efeitos principais

- Precisão do inimigo: altamente precisa.
- Dificuldade do jogo: muito difícil.
- A velocidade de detecção do inimigo é extrema (2,6x).
- O dano do fogo amigo está muito abaixo do normal (0x).
- O ganho de experiência é extremo (2,9x).

<a id="domain-ratings-14"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | exigente (2.92/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | padrão (1.98/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (1.62/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.17/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | padrão (1.76/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-14"></a>
### Contexto do encontro

- Nível: **encontros pesados**
- Tema: **precisão de precisão**
- Máximo de grupos ativos: **2**
- Oportunidade de encontro misto: **0.119**
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
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 2.6 | A velocidade de detecção do inimigo é extrema, 2,6x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.3 | A perda de durabilidade em caso de morte está muito abaixo do normal, 0,3x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 0.8 | O dano inimigo às defesas está abaixo do normal em 0,8x. |
| EnemyHealthMultiplier | 1.2 | A resiliência do inimigo está acima do normal em 1,2x. |
| EnemyPlayerDamageMultiplier | 2.3 | O dano inimigo aos jogadores está bem acima do normal em 2,3x. |
| EnemySpawnRate | 0.9 | A frequência do inimigo está quase normal em 0,9x. |
| FatigueSpeedMultiplier | 1.25 | A taxa de fadiga está acima do normal em 1,25x. |
| FirstTimeStartingWeapon | 4 | Iniciar o fornecimento de armas é condições favoráveis em 4. |
| FoodSpoilSpeedMultiplier | 1.0 | A deterioração da comida é quase normal em 1x. |
| GameDifficulty | 3 | A dificuldade do jogo é muito difícil. |
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
| PlayerXPGainMultiplier | 2.9 | O ganho de experiência é extremo, 2,9x. |
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

- `ante_up`: `black_lab`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `precision_accuracy_audit`
- `lethal_lasers`: `high_hazard`

<a id="day-16---experimental-ballistics"></a>
## Dia 16 - Balística Experimental

**ID do perfil:** `precision_experimental_ballistics` **Condições gerais:** Pressão padrão (2.22/5) **Significado simples:** Pressão padrão. Pressão de combate: As condições exigentes são a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-15"></a>
### Efeitos principais

- Precisão do inimigo: altamente precisa.
- Dificuldade do jogo: muito difícil.
- Algumas radiações podem não ter um aviso visível.
- Frequência climática: muito frequente.
- O tamanho do inventário base é uma condição de alívio (42).

<a id="domain-ratings-15"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | exigente (2.75/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | padrão (2.36/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (1.09/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (2.59/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.67/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-15"></a>
### Contexto do encontro

- Nível: **encontros extremos**
- Tema: **precisão experimental**
- Máximo de grupos ativos: **2**
- Oportunidade de encontro misto: **0.154**
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
| BonusPerkPoints | 2 | Pontos de vantagem bônus são condições favoráveis em 2. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.2 | A taxa de continência está acima do normal em 1,2x. |
| DamageToAlliesMultiplier | 0.0 | O dano de fogo amigo está muito abaixo do normal em 0x. |
| DayNightCycleSpeedMultiplier | 1.5 | A velocidade do ciclo dia-noite está acima do normal em 1,5x. |
| DayNightCycleState | 1 | O estado dia-noite é influenciado pelo dia. |
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 0.7 | O dano inimigo às defesas está abaixo do normal em 0,7x. |
| EnemyHealthMultiplier | 1.7 | A resiliência do inimigo está bem acima do normal em 1,7x. |
| EnemyPlayerDamageMultiplier | 1.5 | O dano do inimigo aos jogadores está acima do normal em 1,5x. |
| EnemySpawnRate | 1.2 | A frequência do inimigo está acima do normal em 1,1x. 1,2x. |
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
| PlayerXPGainMultiplier | 5.6 | O ganho de experiência é extremo, 5,6x. |
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

- `ante_up`: `black_lab`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `precision_experimental_ballistics`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-precision-exam"></a>
## Dia 17 - Exame final de precisão

**ID do perfil:** `precision_final_precision_exam` **Condições gerais:** Condições exigentes (2.85/5) **Significado simples:** Condições exigentes. Pressão de combate: Condições severas são a pressão principal. Pressão de sobrevivência: Condições exigentes são o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-16"></a>
### Efeitos principais

- Penas de morte: severas.
- A velocidade de detecção do inimigo é extrema (4,1x).
- Precisão do inimigo: altamente precisa.
- O dano do inimigo aos jogadores é extremo (3,6x).
- Dificuldade do jogo: muito difícil.

<a id="domain-ratings-16"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | graves (3.85/5) | A pressão hostil é severa; evite lutas sem suporte. |
| Pressão de sobrevivência | exigente (2.72/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (1.79/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.55/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | padrão (2.0/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-16"></a>
### Contexto do encontro

- Nível: **encontros de pedra angular**
- Tema: **capital de precisão**
- Máximo de grupos ativos: **2**
- Oportunidade de encontro misto: **0.196**
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
| BonusPerkPoints | 2 | Pontos de vantagem bônus são condições favoráveis em 2. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.1 | A taxa de continência está quase normal em 1,1x. |
| DamageToAlliesMultiplier | 0.1 | O dano de fogo amigo está muito abaixo do normal, 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | A velocidade do ciclo dia-noite está acima do normal em 1,45x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 3 | As penas de morte são severas. |
| DetectionSpeedMultiplier | 4.1 | A velocidade de detecção do inimigo é extrema em 4,1x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.5 | A perda de durabilidade ao morrer está muito abaixo do normal em 0,5x. |
| EnemyAccuracy | 4 | A precisão do inimigo é altamente precisa. |
| EnemyDeployableDamageMultiplier | 2.0 | O dano inimigo às defesas está bem acima do normal em 2x. |
| EnemyHealthMultiplier | 2.6 | A resiliência do inimigo é extrema em 2,6x. |
| EnemyPlayerDamageMultiplier | 3.6 | O dano inimigo aos jogadores é extremo em 3,6x. |
| EnemySpawnRate | 2.3 | A frequência inimiga está bem acima do normal em 2,3x. |
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
| PlayerXPGainMultiplier | 4.8 | O ganho de experiência é extremo em 4,8x. |
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
- `encounter_director`: `precision_final_precision_exam`
- `lethal_lasers`: `overcharged_high_hazard`
