<a id="randomday---biohazard-family"></a>
# RandomDay - Família de risco biológico

> **Fonte canônica em inglês:** [biohazard.md](../../../../profiles/families/biohazard.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Versão: `v0.3.16-alpha`

Pragas, contaminação, problemas de água e higiene legalmente vaga.

**Estilo de jogo:** sobrevivência de pragas e contaminação **Tom de mensagem:** sanitation/legal isenções de responsabilidade

<a id="17-day-index"></a>
## Índice de 17 dias

| Dia | Perfil | Condições | Pressão principal |
|---:|---|---|---|
| 1 | Contaminação aceitável | Pressão padrão (2.03/5) | Pressão de sobrevivência |
| 2 | Descontaminação de piso aberto | Condições favoráveis (1.43/5) | Pressão de sobrevivência |
| 3 | Água potável questionável Plus | Pressão padrão (2.26/5) | Pressão de sobrevivência |
| 4 | Execução de fornecimento de amostra | Condições favoráveis (1.63/5) | Pressão de sobrevivência |
| 5 | A contenção era opcional | Pressão padrão (2.22/5) | Pressão de sobrevivência |
| 6 | Evento climático de saneamento | Pressão padrão (2.25/5) | Pressão de sobrevivência |
| 7 | Falha na desinfecção noturna | Pressão padrão (2.28/5) | Pressão de sobrevivência |
| 8 | Aviso de contaminação de rota | Pressão padrão (1.99/5) | Pressão ambiental |
| 9 | Audiência sobre deterioração de ração | Pressão padrão (2.29/5) | Pressão de sobrevivência |
| 10 | Rumor de sala limpa | Condições favoráveis (1.19/5) | Pressão de sobrevivência |
| 11 | Treinamento com luvas | Condições favoráveis (1.63/5) | Pressão de sobrevivência |
| 12 | Revisão da biografia do Black Lab | Condições exigentes (2.61/5) | Pressão de combate |
| 13 | Turno de quarentena estendido | Pressão padrão (2.43/5) | Pressão de sobrevivência |
| 14 | Fornecimento Armário estéril | Condições favoráveis (1.16/5) | Pressão ambiental |
| 15 | Precisão de espirros | Pressão padrão (2.15/5) | Pressão de sobrevivência |
| 16 | Exposição experimental | Pressão padrão (2.19/5) | Pressão de sobrevivência |
| 17 | Exame final de contenção | Condições exigentes (2.88/5) | Pressão de combate |

<a id="day-1---acceptable-contamination"></a>
## Dia 1 - Aceitável Contaminação

**ID do perfil:** `biohazard_acceptable_contamination` **Condições gerais:** Pressão padrão (2.03/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects"></a>
### Efeitos principais

- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,25x).
- A capacidade da pilha está bem acima do normal (2x).
- As tomadas são desligadas à noite.

<a id="domain-ratings"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (1.9/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (2.64/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (1.77/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.22/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.5/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **orientação sobre contaminação**
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
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | A perda de durabilidade na morte está muito abaixo normal em 0,25x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.1 | A resiliência do inimigo está quase normal, 1,1x. |
| EnemyPlayerDamageMultiplier | 1.1 | O dano inimigo aos jogadores é quase normal em 1,1x. |
| EnemySpawnRate | 1.0 | A frequência do inimigo está quase normal em 1x. |
| FatigueSpeedMultiplier | 1.0 | A taxa de fadiga é quase normal em 1x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.0 | A deterioração da comida é quase normal em 1x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.4 | Fome a taxa está acima do normal em 1,4x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.5 | A durabilidade do item está acima do normal em 1,5x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.3 | O ganho de experiência está acima do normal em 1,3x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.0 | A refrigeração está quase normal em 1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.0 | A taxa de recarga da pia está quase normal em 1x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.4 | A taxa de sede está acima do normal, 1,4x. |
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection"></a>
### Seleção de adaptador opcional

- `ante_up`: `standard`
- `dynamic_spawns`: `standard_pressure`
- `encounter_director`: `biohazard_acceptable_contamination`
- `lethal_lasers`: `standard_safety`

<a id="day-2---open-floor-decontamination"></a>
## Dia 2 - Descontaminação de piso aberto

**ID do perfil:** `biohazard_open_floor_decontamination` **Condições gerais:** Condições favoráveis ​​(1.43/5) **Significado simples:** Condições favoráveis. Pressão de sobrevivência: A pressão padrão é a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-1"></a>
### Efeitos principais

- O dano do fogo amigo está muito abaixo do normal (0x).
- A durabilidade do item é extrema (4x).
- A capacidade da pilha é extrema (8x).
- A água da pia pode ser perigosa.
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,05x).

<a id="domain-ratings-1"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | favorável (1.18/5) | A pressão hostil é mais leve que o normal. |
| Pressão de sobrevivência | padrão (1.96/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (1.12/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (1.91/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.2/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-1"></a>
### Contexto do encontro

- Nível: **encontros leves**
- Tema: **preparação para contaminação**
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
| DetectionSpeedMultiplier | 0.6 | A velocidade de detecção do inimigo está abaixo do normal em 0,6x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | A perda de durabilidade ao morrer está muito abaixo do normal, 0,05x. |
| EnemyAccuracy | 1 | A precisão do inimigo é reduzida. |
| EnemyDeployableDamageMultiplier | 0.1 | O dano inimigo às defesas está muito abaixo do normal, 0,1x. |
| EnemyHealthMultiplier | 0.9 | A resiliência do inimigo está quase normal em 0,9x. |
| EnemyPlayerDamageMultiplier | 0.7 | O dano inimigo aos jogadores está abaixo do normal em 0,7x. |
| EnemySpawnRate | 0.6 | A frequência inimiga está abaixo do normal em 0,6x. |
| FatigueSpeedMultiplier | 0.65 | A taxa de fadiga está abaixo do normal em 0,65x. |
| FirstTimeStartingWeapon | 2 | Iniciar o fornecimento de armas é a pressão padrão em 2. |
| FoodSpoilSpeedMultiplier | 0.75 | A deterioração dos alimentos está abaixo normal em 0,75x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.8 | A taxa de fome está abaixo do normal, 0,8x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 4.0 | A durabilidade do item é extrema em 4x. |
| ItemStackSizeMultiplier | 8.0 | A capacidade da pilha é extrema em 8x. |
| ItemWeightMultiplier | 0.5 | O peso do item está muito abaixo do normal em 0,5x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.9 | O ganho de experiência está bem acima do normal em 1,9x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.5 | A refrigeração está acima do normal, 1,5x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 2.0 | A taxa de recarga da pia está bem acima do normal em 2x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 0.8 | A taxa de sede está abaixo do normal em 0,8x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-1"></a>
### Seleção de adaptador opcional

- `ante_up`: `quiet`
- `dynamic_spawns`: `quiet_base_safe`
- `encounter_director`: `biohazard_open_floor_decontamination`
- `lethal_lasers`: `low_hazard`

<a id="day-3---questionable-drinking-water-plus"></a>
## Dia 3 - Água potável questionável Plus

**ID do perfil:** `biohazard_questionable_drinking_water_plus` **Condições gerais:** Pressão padrão (2.26/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-2"></a>
### Efeitos principais

- A taxa de sede é extrema (2,6x).
- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,25x).
- Dificuldade do jogo: difícil.

<a id="domain-ratings-2"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.08/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (3.29/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (1.91/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.22/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.5/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-2"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **recurso biológico de contaminação**
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
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | A perda de durabilidade na morte está muito abaixo normal em 0,25x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.9 | O dano inimigo às defesas é quase normal em 0,9x. |
| EnemyHealthMultiplier | 1.2 | A resiliência do inimigo está acima do normal em 1,2x. |
| EnemyPlayerDamageMultiplier | 1.2 | O dano inimigo aos jogadores está acima do normal em 1,2x. |
| EnemySpawnRate | 1.1 | A frequência do inimigo é quase normal em 1,1x. |
| FatigueSpeedMultiplier | 1.1 | A taxa de fadiga está quase normal em 1,1x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.25 | A deterioração dos alimentos está acima do normal em 1,25x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.8 | A taxa de fome está bem acima do normal, 1,8x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.25 | A durabilidade do item está acima do normal em 1,25x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.6 | O ganho de experiência está acima do normal em 1,6x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.75 | A refrigeração está abaixo do normal em 0,75x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.25 | A taxa de recarga da pia está muito abaixo do normal em 0,25x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 2.6 | A taxa de sede é extrema em 2,6x. |
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection-2"></a>
### Seleção de adaptador opcional

- `ante_up`: `biohazard`
- `dynamic_spawns`: `biohazard_light`
- `encounter_director`: `biohazard_questionable_drinking_water_plus`
- `lethal_lasers`: `standard_safety`

<a id="day-4---specimen-supply-run"></a>
## Dia 4 - Execução de fornecimento de amostra

**ID do perfil:** `biohazard_specimen_supply_run` **Condições gerais:** Condições favoráveis ​​(1.63/5) **Significado simples:** Condições favoráveis. Pressão de sobrevivência: A pressão padrão é a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-3"></a>
### Efeitos principais

- A durabilidade do item é extrema (2,5x).
- A capacidade da pilha é extrema (14x).
- A taxa de recarga do coletor é extrema (2,5x).
- A água da pia pode ser perigosa.
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,05x).

<a id="domain-ratings-3"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | favorável (1.55/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (2.2/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (1.02/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (1.93/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.44/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-3"></a>
### Contexto do encontro

- Nível: **encontros leves**
- Tema: **mobilidade de saques de contaminação**
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
| DetectionSpeedMultiplier | 0.8 | A velocidade de detecção do inimigo está abaixo do normal em 0,8x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.05 | A perda de durabilidade ao morrer está muito abaixo do normal, 0,05x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.5 | O dano inimigo às defesas está muito abaixo do normal em 0,5x. |
| EnemyHealthMultiplier | 1.0 | A resiliência do inimigo é quase normal em 1x. |
| EnemyPlayerDamageMultiplier | 0.9 | O dano inimigo aos jogadores está quase normal em 0,9x. |
| EnemySpawnRate | 0.8 | A frequência do inimigo está abaixo do normal em 0,8x. |
| FatigueSpeedMultiplier | 0.75 | A taxa de fadiga está abaixo do normal em 0,75x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.6 | A deterioração dos alimentos está abaixo do normal em 0,6x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.0 | A taxa de fome está quase normal em 1x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 2.5 | A durabilidade do item é extrema em 2,5x. |
| ItemStackSizeMultiplier | 14.0 | A capacidade da pilha é extrema em 14x. |
| ItemWeightMultiplier | 0.3 | O peso do item está muito abaixo do normal em 0,3x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.0 | Experiência o ganho está bem acima do normal em 2x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.5 | A refrigeração está acima do normal, 1,5x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 2.5 | A taxa de recarga do coletor é extrema em 2,5x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.0 | A taxa de sede está quase normal em 1x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-3"></a>
### Seleção de adaptador opcional

- `ante_up`: `loot`
- `dynamic_spawns`: `low_pressure_loot_day`
- `encounter_director`: `biohazard_specimen_supply_run`
- `lethal_lasers`: `low_hazard`

<a id="day-5---containment-was-optional"></a>
## Dia 5 - A contenção era opcional

**ID do perfil:** `biohazard_containment_was_optional` **Condições gerais:** Pressão padrão (2.22/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão de combate: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-4"></a>
### Efeitos principais

- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,1x).
- Dificuldade do jogo: difícil.
- A capacidade da pilha está bem acima do normal (2x).
- As tomadas são desligadas à noite.

<a id="domain-ratings-4"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.42/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (2.75/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | favorável (1.7/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.17/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.51/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-4"></a>
### Contexto do encontro

- Nível: **encontros pesados**
- Tema: **segurança contra contaminação**
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
| DetectionSpeedMultiplier | 1.9 | A velocidade de detecção do inimigo está bem acima do normal em 1,9x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | A perda de durabilidade em caso de morte está muito abaixo do normal, 0,3x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.3 | A resiliência do inimigo está acima do normal em 1,3x. |
| EnemyPlayerDamageMultiplier | 1.4 | O dano inimigo aos jogadores está acima do normal em 1,4x. |
| EnemySpawnRate | 1.5 | A frequência do inimigo é acima do normal em 1,5x. |
| FatigueSpeedMultiplier | 1.15 | A taxa de fadiga está quase normal em 1,15x. |
| FirstTimeStartingWeapon | 4 | Iniciar o fornecimento de armas é condições favoráveis em 4. |
| FoodSpoilSpeedMultiplier | 1.0 | A deterioração da comida é quase normal em 1x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.5 | A taxa de fome está acima do normal em 1,9x. 1,5x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.25 | A durabilidade do item está acima do normal em 1,25x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.9 | O ganho de experiência está bem acima do normal em 1,9x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.0 | A refrigeração está quase normal em 1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.0 | A taxa de recarga da pia está quase normal em 1x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.5 | A taxa de sede está acima do normal em 1,5x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-4"></a>
### Seleção de adaptador opcional

- `ante_up`: `security`
- `dynamic_spawns`: `security_pressure`
- `encounter_director`: `biohazard_containment_was_optional`
- `lethal_lasers`: `moderate_hazard`

<a id="day-6---sanitation-weather-event"></a>
## Dia 6 - Evento climático de saneamento

**ID do perfil:** `biohazard_sanitation_weather_event` **Condições gerais:** Pressão padrão (2.25/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-5"></a>
### Efeitos principais

- Frequência climática: muito frequente.
- A água da pia pode ser perigosa.
- O dano do fogo amigo está muito abaixo do normal (0,25x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,25x).
- Dificuldade do jogo: difícil.

<a id="domain-ratings-5"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.1/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (3.06/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (1.87/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.52/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.5/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-5"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **clima de contaminação**
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
| DetectionSpeedMultiplier | 1.1 | A velocidade de detecção do inimigo é quase normal em 1,1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.25 | A perda de durabilidade na morte está muito abaixo normal em 0,25x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.2 | A resiliência do inimigo está acima do normal em 1,2x. |
| EnemyPlayerDamageMultiplier | 1.1 | O dano inimigo aos jogadores é quase normal em 1,1x. |
| EnemySpawnRate | 1.1 | A frequência do inimigo é quase normal em 1,1x. |
| FatigueSpeedMultiplier | 1.6 | A taxa de fadiga está acima do normal em 1,6x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.25 | A deterioração dos alimentos está acima do normal em 1,25x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.6 | A taxa de fome está acima do normal em 1,6x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.1 | A durabilidade do item está quase normal em 1,1x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.5 | O ganho de experiência está acima do normal em 1,5x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.8 | A refrigeração está abaixo do normal em 0,8x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.75 | A taxa de recarga do coletor está abaixo do normal em 0,75x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 2.0 | A taxa de sede está bem acima do normal em 2x. |
| WeatherFrequency | 5 | A frequência climática é muito frequente. |

<a id="optional-adapter-selection-5"></a>
### Seleção de adaptador opcional

- `ante_up`: `weather`
- `dynamic_spawns`: `weather_wandering`
- `encounter_director`: `biohazard_sanitation_weather_event`
- `lethal_lasers`: `electrical_hazard_light`

<a id="day-7---night-disinfection-failure"></a>
## Dia 7 - Falha na desinfecção noturna

**ID do perfil:** `biohazard_night_disinfection_failure` **Condições gerais:** Pressão padrão (2.28/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão de combate: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-6"></a>
### Efeitos principais

- A capacidade da pilha é extrema (3x).
- A água da pia pode ser perigosa.
- Estado dia-noite: polarizado para a noite.
- A taxa de fadiga está bem acima do normal (2,1x).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,2x).

<a id="domain-ratings-6"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.42/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (3.01/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | favorável (1.59/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.33/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.49/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-6"></a>
### Contexto do encontro

- Nível: **encontros pesados**
- Tema: **noite de contaminação**
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
| DetectionSpeedMultiplier | 1.6 | A velocidade de detecção do inimigo está acima do normal em 1,6x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.2 | A perda de durabilidade na morte está muito abaixo do normal em 0,2x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.3 | A resiliência do inimigo está acima do normal em 1,3x. |
| EnemyPlayerDamageMultiplier | 1.3 | O dano do inimigo aos jogadores está acima do normal em 1,3x. |
| EnemySpawnRate | 1.7 | A frequência inimiga está bem acima do normal em 1,7x. |
| FatigueSpeedMultiplier | 2.1 | A taxa de fadiga está bem acima do normal em 2,1x. |
| FirstTimeStartingWeapon | 5 | O início do fornecimento de armas apresenta condições favoráveis em 5. |
| FoodSpoilSpeedMultiplier | 1.0 | A deterioração da comida é quase normal em 1x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.5 | A taxa de fome está acima do normal em 1,9x. 1,5x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.5 | A durabilidade do item está acima do normal em 1,5x. |
| ItemStackSizeMultiplier | 3.0 | A capacidade da pilha é extrema em 3x. |
| ItemWeightMultiplier | 0.8 | O peso do item está abaixo do normal em 0,8x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.0 | Experiência o ganho está bem acima do normal em 2x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.0 | A refrigeração está quase normal em 1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.0 | A taxa de recarga da pia está quase normal em 1x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.5 | A taxa de sede está acima do normal em 1,5x. |
| WeatherFrequency | 4 | A frequência climática é frequente. |

<a id="optional-adapter-selection-6"></a>
### Seleção de adaptador opcional

- `ante_up`: `night`
- `dynamic_spawns`: `night_pressure`
- `encounter_director`: `biohazard_night_disinfection_failure`
- `lethal_lasers`: `night_visible_moderate`

<a id="day-8---route-contamination-notice"></a>
## Dia 8 - Aviso de contaminação de rota

**ID do perfil:** `biohazard_route_contamination_notice` **Condições gerais:** Pressão padrão (1.99/5) **Significado simples:** Pressão padrão. Pressão ambiental: A pressão padrão é a pressão principal. Pressão de sobrevivência: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Verifique a energia, a água, o abrigo e a proteção contra perigos antes de deixar a base.

<a id="main-effects-7"></a>
### Efeitos principais

- A velocidade do ciclo dia-noite é extrema (3x).
- A capacidade da pilha é extrema (4x).
- A água da pia pode ser perigosa.
- A perda de durabilidade em caso de morte está muito abaixo do normal (0,15x).
- O ganho de experiência está bem acima do normal (2,1x).

<a id="domain-ratings-7"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.1/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (2.22/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (1.44/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (2.56/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.47/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-7"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **rota de contaminação**
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
| DetectionSpeedMultiplier | 1.4 | A velocidade de detecção do inimigo está acima do normal em 1,4x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.15 | A perda de durabilidade em caso de morte está muito abaixo do normal em 0,15x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.8 | O dano inimigo às defesas está abaixo do normal em 0,8x. |
| EnemyHealthMultiplier | 0.9 | A resiliência do inimigo está quase normal em 0,9x. |
| EnemyPlayerDamageMultiplier | 1.1 | O dano inimigo aos jogadores é quase normal em 1,1x. |
| EnemySpawnRate | 1.4 | A frequência do inimigo está acima do normal em 1,4x. |
| FatigueSpeedMultiplier | 0.7 | A taxa de fadiga está abaixo do normal em 0,7x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.9 | A deterioração dos alimentos está quase normal em 0,9x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.1 | A taxa de fome está quase normal em 1,1x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.25 | A durabilidade do item está acima do normal em 1,25x. |
| ItemStackSizeMultiplier | 4.0 | Capacidade da pilha é extremo em 4x. |
| ItemWeightMultiplier | 0.7 | O peso do item está abaixo do normal em 0,7x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.1 | O ganho de experiência está bem acima do normal, 2,1x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.1 | A refrigeração está quase normal em 1,1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.5 | A taxa de recarga da pia está acima do normal em 1,1x. 1,5x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.1 | A taxa de sede está quase normal em 1,1x. |
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection-7"></a>
### Seleção de adaptador opcional

- `ante_up`: `speedrun`
- `dynamic_spawns`: `speedrun_pressure`
- `encounter_director`: `biohazard_route_contamination_notice`
- `lethal_lasers`: `low_to_moderate_hazard`

<a id="day-9---ration-spoilage-hearing"></a>
## Dia 9 - Audiência sobre deterioração da ração

**ID do perfil:** `biohazard_ration_spoilage_hearing` **Condições gerais:** Pressão padrão (2.29/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão de recursos: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-8"></a>
### Efeitos principais

- O tamanho do estoque básico é condições severas (10).
- A água da pia pode ser perigosa.
- A taxa de fome está bem acima do normal (2,3x).
- A taxa de sede está bem acima do normal (2,2x).
- O dano do fogo amigo está muito abaixo do normal (0,25x).

<a id="domain-ratings-8"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (1.94/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (3.32/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (2.31/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.17/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.53/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-8"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **escassez de contaminação**
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
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | A perda de durabilidade em caso de morte está muito abaixo do normal em 0,35x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 1.0 | O dano inimigo às defesas é quase normal em 1x. |
| EnemyHealthMultiplier | 1.3 | A resiliência do inimigo está acima do normal em 1,3x. |
| EnemyPlayerDamageMultiplier | 1.2 | O dano inimigo aos jogadores está acima do normal em 1,2x. |
| EnemySpawnRate | 1.0 | A frequência do inimigo está quase normal em 1x. |
| FatigueSpeedMultiplier | 1.3 | A taxa de fadiga está acima do normal em 1,3x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 2.0 | A deterioração dos alimentos está bem acima do normal em 2x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 2.3 | A taxa de fome está bem acima do normal em 2,3x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 0.75 | A durabilidade do item está abaixo do normal em 0,75x. |
| ItemStackSizeMultiplier | 1.0 | A capacidade da pilha está quase normal em 1x. |
| ItemWeightMultiplier | 1.3 | O peso do item está acima do normal em 1,3x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.5 | O ganho de experiência está acima do normal em 1,5x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.5 | A refrigeração está muito abaixo do normal em 0,5x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.5 | A taxa de recarga da pia está muito abaixo do normal, 0,5x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 2.2 | A taxa de sede está bem acima do normal, 2,2x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-8"></a>
### Seleção de adaptador opcional

- `ante_up`: `scarcity`
- `dynamic_spawns`: `scarcity_low_frequency`
- `encounter_director`: `biohazard_ration_spoilage_hearing`
- `lethal_lasers`: `standard_safety`

<a id="day-10---clean-room-rumor"></a>
## Dia 10 - Rumor de sala limpa

**ID do perfil:** `biohazard_clean_room_rumor` **Condições gerais:** Condições favoráveis ​​(1.19/5) **Significado simples:** Condições favoráveis. Pressão de sobrevivência: Condições favoráveis ​​são a pressão principal. Pressão ambiental: Condições favoráveis ​​são o próximo factor mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

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
| Pressão de combate | favorável (0.94/5) | A pressão hostil é mais leve que o normal. |
| Pressão de sobrevivência | favorável (1.64/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (0.9/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | favorável (1.54/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.19/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-9"></a>
### Contexto do encontro

- Nível: **encontros mínimos**
- Tema: **recuperação de contaminação**
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
| EnemyHealthMultiplier | 0.8 | A resiliência do inimigo está abaixo do normal, 0,8x. |
| EnemyPlayerDamageMultiplier | 0.4 | O dano inimigo aos jogadores está muito abaixo do normal, 0,4x. |
| EnemySpawnRate | 0.4 | A frequência inimiga está muito abaixo do normal, 0,4x. |
| FatigueSpeedMultiplier | 0.45 | A taxa de fadiga está muito abaixo do normal, 0,45x. |
| FirstTimeStartingWeapon | 2 | Iniciar o fornecimento de armas é a pressão padrão em 2. |
| FoodSpoilSpeedMultiplier | 0.4 | A deterioração dos alimentos está muito abaixo do normal, 0,4x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.6 | A taxa de fome está abaixo do normal em 0,6x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 3.0 | A durabilidade do item é extrema, 3x. |
| ItemStackSizeMultiplier | 10.0 | A capacidade da pilha é extrema em 3x. 10x. |
| ItemWeightMultiplier | 0.4 | O peso do item está muito abaixo do normal, 0,4x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.7 | O ganho de experiência é extremo, 2,7x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | falso | Os danos por radiação estão desativados. |
| RefrigerationEffectivenessMultiplier | 1.8 | A refrigeração está bem acima do normal, 1,8x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 3.0 | A taxa de recarga da pia é extrema, 3x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 0.6 | A taxa de sede está abaixo do normal em 0,6x. |
| WeatherFrequency | 1 | A frequência climática é rara. |

<a id="optional-adapter-selection-9"></a>
### Seleção de adaptador opcional

- `ante_up`: `recovery`
- `dynamic_spawns`: `minimum_pressure`
- `encounter_director`: `biohazard_clean_room_rumor`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-11---training-with-gloves"></a>
## Dia 11 - Treinamento com luvas

**ID do perfil:** `biohazard_training_with_gloves` **Condições gerais:** Condições favoráveis ​​(1.63/5) **Significado simples:** Condições favoráveis. Pressão de sobrevivência: A pressão padrão é a pressão principal. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

<a id="main-effects-10"></a>
### Efeitos principais

- Os pontos de bônus são condições de alívio (12).
- A perda de durabilidade em caso de morte está muito abaixo do normal (0x).
- A capacidade da pilha é extrema (5x).
- O ganho de experiência é extremo (3,5x).
- A água da pia pode ser perigosa.

<a id="domain-ratings-10"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | favorável (1.53/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | padrão (2.3/5) | As necessidades diárias de sobrevivência estão próximas do normal. |
| Pressão de recursos | favorável (0.92/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (1.96/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.43/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-10"></a>
### Contexto do encontro

- Nível: **encontros leves**
- Tema: **treinamento sobre contaminação**
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
| DetectionSpeedMultiplier | 0.8 | A velocidade de detecção do inimigo está abaixo do normal em 0,8x. |
| DisableResearchMinigame | verdadeiro | O desvio de pesquisa está ativado. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.4 | O dano inimigo às defesas está muito abaixo do normal, 0,4x. |
| EnemyHealthMultiplier | 1.0 | A resiliência do inimigo é quase normal em 1x. |
| EnemyPlayerDamageMultiplier | 0.7 | O dano inimigo aos jogadores está abaixo do normal em 0,7x. |
| EnemySpawnRate | 1.0 | A frequência do inimigo está quase normal em 1x. |
| FatigueSpeedMultiplier | 0.8 | A taxa de fadiga está abaixo do normal, 0,8x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.8 | A deterioração dos alimentos está abaixo do normal, 0,8x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.1 | A taxa de fome está quase normal em 1,1x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 2.25 | A durabilidade do item é bem acima do normal, 2,25x. |
| ItemStackSizeMultiplier | 5.0 | A capacidade da pilha é extrema, 5x. |
| ItemWeightMultiplier | 0.6 | O peso do item está abaixo do normal, 0,6x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 3.5 | O ganho de experiência é extremo em 3,5x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.3 | A refrigeração está acima do normal, 1,3x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 2.0 | A taxa de recarga da pia está bem acima do normal em 2x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.1 | A taxa de sede está quase normal em 1,1x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-10"></a>
### Seleção de adaptador opcional

- `ante_up`: `training`
- `dynamic_spawns`: `training_targets`
- `encounter_director`: `biohazard_training_with_gloves`
- `lethal_lasers`: `training_hazard`

<a id="day-12---black-lab-bio-review"></a>
## Dia 12 - Black Lab Bio Review

**ID do perfil:** `biohazard_black_lab_bio_review` **Condições gerais:** Condições exigentes (2.61/5) **Significado simples:** Condições exigentes. Pressão de combate: As condições exigentes são a pressão principal. Pressão de sobrevivência: Condições exigentes são o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-11"></a>
### Efeitos principais

- Dificuldade do jogo: muito difícil.
- O ganho de experiência é extremo (2,8x).
- A água da pia pode ser perigosa.
- A frequência do inimigo está bem acima do normal (2,3x).
- O dano do fogo amigo está muito abaixo do normal (0,15x).

<a id="domain-ratings-11"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | exigente (3.2/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | exigente (2.99/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (1.78/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.22/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | padrão (1.79/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-11"></a>
### Contexto do encontro

- Nível: **encontros extremos**
- Tema: **teste pesado de contaminação**
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
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.0 | A taxa de continência é quase normal em 1x. |
| DamageToAlliesMultiplier | 0.15 | O dano de fogo amigo está muito abaixo do normal, 0,15x. |
| DayNightCycleSpeedMultiplier | 1.0 | A velocidade do ciclo dia-noite é quase normal em 1x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 1.9 | A velocidade de detecção do inimigo está bem acima do normal em 1,9x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.4 | A perda de durabilidade em caso de morte está muito abaixo do normal, 0,4x. |
| EnemyAccuracy | 3 | A precisão do inimigo é preciso. |
| EnemyDeployableDamageMultiplier | 1.4 | O dano inimigo às defesas está acima do normal em 1,4x. |
| EnemyHealthMultiplier | 2.0 | A resiliência do inimigo está bem acima normal em 2x. |
| EnemyPlayerDamageMultiplier | 2.1 | O dano inimigo aos jogadores está bem acima do normal em 2,1x. |
| EnemySpawnRate | 2.3 | A frequência inimiga está bem acima do normal em 2,3x. |
| FatigueSpeedMultiplier | 1.15 | A taxa de fadiga está quase normal em 1,15x. |
| FirstTimeStartingWeapon | 1 | Iniciar o fornecimento de armas é a pressão padrão em 1. |
| FoodSpoilSpeedMultiplier | 1.15 | A deterioração dos alimentos é quase normal em 1,15x. |
| GameDifficulty | 3 | A dificuldade do jogo é muito difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.9 | A taxa de fome está bem acima do normal em 1,9x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.1 | A durabilidade do item está quase normal em 1,1x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 1.0 | O peso do item está quase normal em 1,15x. 1x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.8 | O ganho de experiência é extremo em 2,8x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.85 | A refrigeração está quase normal com 0,85x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.75 | A taxa de recarga do coletor está abaixo do normal em 0,75x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.9 | A taxa de sede está bem acima do normal, 1,9x. |
| WeatherFrequency | 3 | A frequência climática está normal. |

<a id="optional-adapter-selection-11"></a>
### Seleção de adaptador opcional

- `ante_up`: `black_lab`
- `dynamic_spawns`: `hard_pressure`
- `encounter_director`: `biohazard_black_lab_bio_review`
- `lethal_lasers`: `high_hazard`

<a id="day-13---extended-quarantine-shift"></a>
## Dia 13 - Turno de quarentena prolongado

**ID do perfil:** `biohazard_extended_quarantine_shift` **Condições gerais:** Pressão padrão (2.43/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições severas são a pressão principal. Pressão de recursos: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-12"></a>
### Efeitos principais

- A taxa de fome é extrema (2,6x).
- A taxa de sede é extrema (2,6x).
- A taxa de fadiga é extrema (2,5x).
- O tamanho do estoque básico é condições severas (10).
- A água da pia pode ser perigosa.

<a id="domain-ratings-12"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.1/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | graves (3.92/5) | As necessidades de sobrevivência são severas; carregue reservas e planeje paradas seguras. |
| Pressão de recursos | padrão (2.16/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.01/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.53/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-12"></a>
### Contexto do encontro

- Nível: **encontros moderados**
- Tema: **resistência à contaminação**
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
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.0 | A velocidade de detecção do inimigo é quase normal em 1x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.35 | A perda de durabilidade em caso de morte está muito abaixo do normal em 0,35x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.9 | O dano inimigo às defesas é quase normal em 0,9x. |
| EnemyHealthMultiplier | 1.5 | A resiliência do inimigo está acima do normal em 1,5x. |
| EnemyPlayerDamageMultiplier | 1.3 | O dano do inimigo aos jogadores está acima do normal em 1,3x. |
| EnemySpawnRate | 0.9 | A frequência do inimigo está quase normal em 0,9x. |
| FatigueSpeedMultiplier | 2.5 | A taxa de fadiga é extrema em 2,5x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.8 | A deterioração dos alimentos está bem acima do normal em 1,8x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 2.6 | A taxa de fome é extrema em 2,6x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 0.9 | A durabilidade do item está quase normal em 0,9x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 1.4 | O peso do item está acima do normal em 1,4x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 1.8 | O ganho de experiência está bem acima do normal em 1,8x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.65 | A refrigeração está abaixo do normal em 0,65x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.35 | A taxa de recarga da pia está muito abaixo do normal em 0,35x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 2.6 | A taxa de sede é extrema em 2,6x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-12"></a>
### Seleção de adaptador opcional

- `ante_up`: `attrition`
- `dynamic_spawns`: `slow_attrition`
- `encounter_director`: `biohazard_extended_quarantine_shift`
- `lethal_lasers`: `standard_safety`

<a id="day-14---supply-closet-sterile-ish"></a>
## Dia 14 - Armário de suprimentos estéril

**ID do perfil:** `biohazard_supply_closet_sterile_ish` **Condições gerais:** Condições favoráveis ​​(1.16/5) **Significado simples:** Condições favoráveis. Pressão ambiental: As condições favoráveis ​​são a principal pressão. Pressão de sobrevivência: Condições favoráveis ​​são o próximo fator mais forte. **Conselho ao jogador:** Use as condições favoráveis para explorar, reabastecer, reparar e se preparar para a próxima reinicialização.

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
| Pressão de combate | favorável (1.04/5) | A pressão hostil é mais leve que o normal. |
| Pressão de sobrevivência | favorável (1.4/5) | As necessidades diárias de sobrevivência são indulgentes. |
| Pressão de recursos | alívio (0.79/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | favorável (1.58/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.19/5) | As regras de morte e recuperação são indulgentes. |

<a id="encounter-context-13"></a>
### Contexto do encontro

- Nível: **encontros mínimos**
- Tema: **alívio de contaminação**
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
| DetectionSpeedMultiplier | 0.6 | A velocidade de detecção do inimigo está abaixo do normal em 0,6x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.0 | A perda de durabilidade ao morrer está muito abaixo do normal em 0x. |
| EnemyAccuracy | 1 | A precisão do inimigo é reduzida. |
| EnemyDeployableDamageMultiplier | 0.1 | O dano inimigo às defesas está muito abaixo do normal, 0,1x. |
| EnemyHealthMultiplier | 0.9 | A resiliência do inimigo está quase normal em 0,9x. |
| EnemyPlayerDamageMultiplier | 0.5 | O dano inimigo aos jogadores está muito abaixo do normal, 0,5x. |
| EnemySpawnRate | 0.5 | A frequência do inimigo está muito abaixo do normal em 0,5x. |
| FatigueSpeedMultiplier | 0.35 | A taxa de fadiga está muito abaixo do normal, 0,35x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.25 | A deterioração dos alimentos está muito abaixo do normal, 0,25x. |
| GameDifficulty | 1 | A dificuldade do jogo é padrão. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 0.4 | A taxa de fome está muito abaixo do normal, 0,4x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 6.0 | A durabilidade do item é extrema, 6x. |
| ItemStackSizeMultiplier | 20.0 | A capacidade da pilha é extrema, 20x. |
| ItemWeightMultiplier | 0.2 | O peso do item está muito abaixo do normal. em 0,2x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 4.0 | O ganho de experiência é extremo, 4x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | falso | Os danos por radiação estão desativados. |
| RefrigerationEffectivenessMultiplier | 2.0 | A refrigeração está bem acima do normal, 2x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 5.0 | A taxa de recarga da pia é extrema, 5x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 0.4 | A taxa de sede é muito abaixo do normal, 0,4x. |
| WeatherFrequency | 1 | A frequência climática é rara. |

<a id="optional-adapter-selection-13"></a>
### Seleção de adaptador opcional

- `ante_up`: `relief`
- `dynamic_spawns`: `relief_day`
- `encounter_director`: `biohazard_supply_closet_sterile_ish`
- `lethal_lasers`: `disabled_or_low_if_supported`

<a id="day-15---accuracy-of-sneezing"></a>
## Dia 15 - Precisão do espirro

**ID do perfil:** `biohazard_accuracy_of_sneezing` **Condições gerais:** Pressão padrão (2.15/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão de combate: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

<a id="main-effects-14"></a>
### Efeitos principais

- O dano do fogo amigo está muito abaixo do normal (0x).
- A água da pia pode ser perigosa.
- O ganho de experiência está bem acima do normal (2,3x).
- Dificuldade do jogo: difícil.
- A capacidade da pilha está bem acima do normal (2x).

<a id="domain-ratings-14"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | padrão (2.22/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (2.78/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | favorável (1.68/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.17/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.51/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-14"></a>
### Contexto do encontro

- Nível: **encontros pesados**
- Tema: **precisão de contaminação**
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
| DeathPenalties | 1 | As penalidades de morte são padrão. |
| DetectionSpeedMultiplier | 1.4 | A velocidade de detecção do inimigo está acima do normal em 1,4x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.3 | A perda de durabilidade em caso de morte está muito abaixo do normal, 0,3x. |
| EnemyAccuracy | 2 | A precisão do inimigo é padrão. |
| EnemyDeployableDamageMultiplier | 0.8 | O dano inimigo às defesas está abaixo do normal em 0,8x. |
| EnemyHealthMultiplier | 1.1 | A resiliência do inimigo está quase normal, 1,1x. |
| EnemyPlayerDamageMultiplier | 1.5 | O dano do inimigo aos jogadores está acima do normal em 1,5x. |
| EnemySpawnRate | 1.2 | A frequência do inimigo está acima do normal em 1,1x. 1,2x. |
| FatigueSpeedMultiplier | 1.25 | A taxa de fadiga está acima do normal em 1,25x. |
| FirstTimeStartingWeapon | 4 | Iniciar o fornecimento de armas é condições favoráveis em 4. |
| FoodSpoilSpeedMultiplier | 1.0 | A deterioração da comida é quase normal em 1x. |
| GameDifficulty | 2 | A dificuldade do jogo é difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.5 | A taxa de fome está acima do normal em 1,9x. 1,5x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.0 | A durabilidade do item é quase normal em 1x. |
| ItemStackSizeMultiplier | 2.0 | A capacidade da pilha está bem acima do normal em 2x. |
| ItemWeightMultiplier | 0.9 | O peso do item está quase normal em 2x. 0,9x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 2.3 | O ganho de experiência está bem acima do normal, 2,3x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 1.0 | A refrigeração está quase normal em 1x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 1.0 | A taxa de recarga da pia está quase normal em 1x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 1.5 | A taxa de sede está acima do normal em 1,5x. |
| WeatherFrequency | 2 | A frequência climática é ocasional. |

<a id="optional-adapter-selection-14"></a>
### Seleção de adaptador opcional

- `ante_up`: `accuracy`
- `dynamic_spawns`: `precision_patrols`
- `encounter_director`: `biohazard_accuracy_of_sneezing`
- `lethal_lasers`: `moderate_hazard`

<a id="day-16---experimental-exposure"></a>
## Dia 16 - Exposição Experimental

**ID do perfil:** `biohazard_experimental_exposure` **Condições gerais:** Pressão padrão (2.19/5) **Significado simples:** Pressão padrão. Pressão de sobrevivência: Condições exigentes são a principal pressão. Pressão ambiental: A pressão padrão é o próximo fator mais forte. **Conselho ao jogador:** Leve comida e água, descanse antes de viagens longas e planeje paradas seguras.

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
| Pressão de combate | padrão (2.48/5) | A pressão hostil está próxima do normal. |
| Pressão de sobrevivência | exigente (2.77/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | favorável (0.99/5) | Suprimentos e condições de transporte são favoráveis. |
| Pressão ambiental | padrão (2.59/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | favorável (1.67/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-15"></a>
### Contexto do encontro

- Nível: **encontros extremos**
- Tema: **contaminação experimental**
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
| EnemyHealthMultiplier | 1.6 | A resiliência do inimigo está acima do normal em 1,6x. |
| EnemyPlayerDamageMultiplier | 1.0 | O dano do inimigo aos jogadores é quase normal em 1x. |
| EnemySpawnRate | 1.5 | A frequência do inimigo é acima do normal em 1,5x. |
| FatigueSpeedMultiplier | 0.8 | A taxa de fadiga está abaixo do normal, 0,8x. |
| FirstTimeStartingWeapon | 6 | Iniciar o fornecimento de armas é condições favoráveis em 6. |
| FoodSpoilSpeedMultiplier | 0.4 | A deterioração dos alimentos está muito abaixo do normal, 0,4x. |
| GameDifficulty | 3 | A dificuldade do jogo é muito difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 1.3 | A taxa de fome está acima do normal em 1,3x. |
| InvisibleRadiation | verdadeiro | Algumas radiações podem não ter um aviso visível. |
| ItemDurabilityMultiplier | 5.0 | A durabilidade do item é extrema, 5x. |
| ItemStackSizeMultiplier | 15.0 | A capacidade da pilha é extrema, 15x. |
| ItemWeightMultiplier | 0.2 | O peso do item está muito abaixo do normal. em 0,2x. |
| LootRespawnEnabled | verdadeiro | O saque pode retornar após a coleta. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 4.4 | O ganho de experiência é extremo em 4,4x. |
| PowerSocketsOffAtNight | falso | As tomadas permanecem disponíveis à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 2.0 | A refrigeração está bem acima do normal, 2x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.0 | A taxa de recarga da pia está muito abaixo do normal, 0x. |
| StorageByTag | falso | A organização de armazenamento etiquetado está desativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 2.0 | A taxa de sede está bem acima do normal em 2x. |
| WeatherFrequency | 5 | A frequência climática é muito frequente. |

<a id="optional-adapter-selection-15"></a>
### Seleção de adaptador opcional

- `ante_up`: `experimental`
- `dynamic_spawns`: `experimental_mixed`
- `encounter_director`: `biohazard_experimental_exposure`
- `lethal_lasers`: `weird_cycle_or_standard`

<a id="day-17---final-containment-exam"></a>
## Dia 17 - Exame Final de Contenção

**ID do perfil:** `biohazard_final_containment_exam` **Condições gerais:** Condições exigentes (2.88/5) **Significado simples:** Condições exigentes. Pressão de combate: Condições severas são a pressão principal. Pressão de sobrevivência: Condições exigentes são o próximo fator mais forte. **Conselho ao jogador:** Carregue munição, mantenha uma rota de retirada e evite combates sem apoio.

<a id="main-effects-16"></a>
### Efeitos principais

- A frequência do inimigo é extrema (3x).
- Dificuldade do jogo: muito difícil.
- Frequência climática: muito frequente.
- A resiliência do inimigo é extrema (2,5x).
- O dano inimigo aos jogadores está bem acima do normal (2,4x).

<a id="domain-ratings-16"></a>
### Classificações de domínio

| Área | Classificação | Significado |
|---|---|---|
| Pressão de combate | graves (3.6/5) | A pressão hostil é elevada; prepare-se antes de se envolver. |
| Pressão de sobrevivência | exigente (3.29/5) | Fome, sede, fadiga ou saneamento precisam de mais atenção. |
| Pressão de recursos | padrão (1.88/5) | As condições de fornecimento e transporte estão próximas do normal. |
| Pressão ambiental | padrão (2.55/5) | As condições ambientais estão próximas do normal. |
| Pressão de recuperação | padrão (1.81/5) | As regras de morte e recuperação estão próximas do normal. |

<a id="encounter-context-16"></a>
### Contexto do encontro

- Nível: **encontros de pedra angular**
- Tema: **capital de contaminação**
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
| BonusPerkPoints | 0 | Os pontos de vantagem bônus são a pressão padrão em 0. |
| BridgeSupports | 0 | O limite de suporte da ponte é a pressão padrão em 0. |
| ContinenceSpeedMultiplier | 1.1 | A taxa de continência está quase normal em 1,1x. |
| DamageToAlliesMultiplier | 0.1 | O dano de fogo amigo está muito abaixo do normal, 0,1x. |
| DayNightCycleSpeedMultiplier | 1.45 | A velocidade do ciclo dia-noite está acima do normal em 1,45x. |
| DayNightCycleState | 0 | O estado dia-noite é o ciclo normal. |
| DeathPenalties | 2 | As penas de morte são pesadas. |
| DetectionSpeedMultiplier | 2.2 | A velocidade de detecção do inimigo está bem acima do normal, 2,2x. |
| DisableResearchMinigame | falso | A pesquisa usa seu minijogo normal. |
| DurabilityLossOnDeathMultiplier | 0.5 | A perda de durabilidade ao morrer está muito abaixo do normal em 0,5x. |
| EnemyAccuracy | 3 | A precisão do inimigo é preciso. |
| EnemyDeployableDamageMultiplier | 2.0 | O dano inimigo às defesas está bem acima do normal em 2x. |
| EnemyHealthMultiplier | 2.5 | A resiliência do inimigo é extrema, 2,5x. |
| EnemyPlayerDamageMultiplier | 2.4 | O dano inimigo aos jogadores está bem acima do normal, 2,4x. |
| EnemySpawnRate | 3.0 | A frequência do inimigo é extrema, 3x. |
| FatigueSpeedMultiplier | 1.25 | A taxa de fadiga está acima do normal em 1,25x. |
| FirstTimeStartingWeapon | 0 | Iniciar o fornecimento de armas é a pressão padrão em 0. |
| FoodSpoilSpeedMultiplier | 1.6 | A deterioração dos alimentos está acima do normal em 1,6x. |
| GameDifficulty | 3 | A dificuldade do jogo é muito difícil. |
| HardcoreMode | falso | O modo Hardcore está desativado. |
| HomeWorlds | verdadeiro | O comportamento do mundo natal está ativado. |
| HostAccessPlayerCorpses | verdadeiro | O anfitrião pode acessar os cadáveres dos jogadores para suporte de recuperação. |
| HungerSpeedMultiplier | 2.3 | A taxa de fome está bem acima do normal em 2,3x. |
| InvisibleRadiation | falso | A radiação não fica invisível por esta regra. |
| ItemDurabilityMultiplier | 1.0 | A durabilidade do item é quase normal em 1x. |
| ItemStackSizeMultiplier | 3.0 | A capacidade da pilha é extrema em 3x. |
| ItemWeightMultiplier | 1.1 | O peso do item está próximo do normal, 1,1x. |
| LootRespawnEnabled | falso | O saque coletado não reaparece. |
| PlayerFurnitureDestruction | falso | Os móveis construídos pelos jogadores estão protegidos desta regra. |
| PlayerXPGainMultiplier | 4.1 | O ganho de experiência é extremo em 4,1x. |
| PowerSocketsOffAtNight | verdadeiro | As tomadas são desligadas à noite. |
| RadiationDealsDamage | verdadeiro | A radiação causa danos. |
| RefrigerationEffectivenessMultiplier | 0.6 | A refrigeração está abaixo do normal, 0,6x. |
| ShowDeathMessages | verdadeiro | Avisos de falecimento são mostrados. |
| SinkRefillRate | 0.5 | A taxa de recarga da pia está muito abaixo do normal, 0,5x. |
| StorageByTag | verdadeiro | A organização de armazenamento marcada está ativada. |
| StructuralSupportLimit | 0 | O limite de suporte estrutural é a pressão padrão em 0. |
| TaintedSinkWater | verdadeiro | A água da pia pode ser perigosa. |
| ThirstSpeedMultiplier | 2.3 | A taxa de sede está bem acima do normal em 2,3x. |
| WeatherFrequency | 5 | A frequência climática é muito frequente. |

<a id="optional-adapter-selection-16"></a>
### Seleção de adaptador opcional

- `ante_up`: `capstone`
- `dynamic_spawns`: `capstone_pressure`
- `encounter_director`: `biohazard_final_containment_exam`
- `lethal_lasers`: `overcharged_high_hazard`
