<a id="randomday---sandboxsettings-dictionary"></a>
# RandomDay - SandboxSettings dicionário

> **Fonte canônica em inglês:** [SANDBOX_SETTINGS_KEYS.md](../../../profiles/SANDBOX_SETTINGS_KEYS.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Versão: `v0.3.16-alpha`

Este é o dicionário de tempo de execução completo para as 46 SandboxSettings chaves usadas por cada RandomDay perfil. O dicionário converte valores brutos em pontuações de domínio e limitados player/admin limitado; ele nunca substitui o valor bruto.

| Chave | Significado do jogador | Domínio | Tipo | Linha de base | Mais difícil quando |
|---|---|---|---|---:|---|
| AllowCharacterReset | redefinição de caracteres | recuperação | booleano | n/a | contexto |
| AllowIronMode | ferro modo | recuperação | booleano | n/a | contexto |
| AllowPagers | pagers | recursos | booleano | n/a | contexto |
| AllowRecipeSharing | compartilhamento de receitas | recursos | booleano | n/a | contexto |
| AllowTransmog | transmog | recursos | booleano | n/a | contexto |
| BaseInventorySize | inventário base tamanho | recursos | número | 12 | baixo |
| BonusPerkPoints | pontos de vantagens de bônus | recursos | número | 0 | baixo |
| BridgeSupports | limite de suporte de ponte | ambiente | número | 0 | alta |
| ContinenceSpeedMultiplier | taxa de continência | sobrevivência | multiplicador | 1.0 | alta |
| DamageToAlliesMultiplier | dano de fogo amigo | combate | multiplicador | 1.0 | alta |
| DayNightCycleSpeedMultiplier | velocidade do ciclo dia-noite | ambiente | multiplicador | 1.0 | alta |
| DayNightCycleState | estado dia-noite | ambiente | enum | n/a | contexto |
| DeathPenalties | penalidades de morte | recuperação | enum | n/a | contexto |
| DetectionSpeedMultiplier | detecção de inimigo velocidade | combate | multiplicador | 1.0 | alta |
| DisableResearchMinigame | minigame de pesquisa | recursos | booleano | n/a | contexto |
| DurabilityLossOnDeathMultiplier | perda de durabilidade na morte | recuperação | multiplicador | 1.0 | alta |
| EnemyAccuracy | precisão do inimigo | combate | enum | n/a | contexto |
| EnemyDeployableDamageMultiplier | danos do inimigo às defesas | combate | multiplicador | 1.0 | alta |
| EnemyHealthMultiplier | resiliência do inimigo | combate | multiplicador | 1.0 | alta |
| EnemyPlayerDamageMultiplier | inimigo danos aos jogadores | combate | multiplicador | 1.0 | alta |
| EnemySpawnRate | frequência do inimigo | combate | multiplicador | 1.0 | alta |
| FatigueSpeedMultiplier | taxa de fadiga | sobrevivência | multiplicador | 1.0 | alta |
| FirstTimeStartingWeapon | iniciar o fornecimento de armas | recursos | número | 0 | baixo |
| FoodSpoilSpeedMultiplier | deterioração de alimentos | recursos | multiplicador | 1.0 | alta |
| GameDifficulty | dificuldade do jogo | combate | enum | n/a | contexto |
| HardcoreMode | hardcore modo | recuperação | booleano | n/a | contexto |
| HomeWorlds | home worlds | ambiente | booleano | n/a | contexto |
| HostAccessPlayerCorpses | acesso ao cadáver do hospedeiro | recuperação | booleano | n/a | contexto |
| HungerSpeedMultiplier | taxa de fome | sobrevivência | multiplicador | 1.0 | alta |
| InvisibleRadiation | radiação invisível | ambiente | booleano | n/a | contexto |
| ItemDurabilityMultiplier | durabilidade do item | recursos | multiplicador | 1.0 | baixo |
| ItemStackSizeMultiplier | capacidade da pilha | recursos | multiplicador | 1.0 | baixo |
| ItemWeightMultiplier | peso do item | recursos | multiplicador | 1.0 | alta |
| LootRespawnEnabled | ressurgimento do saque | recursos | booleano | n/a | contexto |
| PlayerFurnitureDestruction | destruição de móveis do jogador | combate | booleano | n/a | contexto |
| PlayerXPGainMultiplier | ganho de experiência | recursos | multiplicador | 1.0 | baixo |
| PowerSocketsOffAtNight | energia noturna | ambiente | booleano | n/a | contexto |
| RadiationDealsDamage | radiação danos | ambiente | booleano | n/a | contexto |
| RefrigerationEffectivenessMultiplier | refrigeração | recursos | multiplicador | 1.0 | baixo |
| ShowDeathMessages | mensagens de morte | recuperação | booleano | n/a | contexto |
| SinkRefillRate | taxa de recarga do coletor | recursos | multiplicador | 1.0 | baixo |
| StorageByTag | armazenamento por tag | recursos | booleano | n/a | contexto |
| StructuralSupportLimit | limite de suporte estrutural | ambiente | número | 0 | alta |
| TaintedSinkWater | água contaminada da pia | sobrevivência | booleano | n/a | contexto |
| ThirstSpeedMultiplier | taxa de sede | sobrevivência | multiplicador | 1.0 | alta |
| WeatherFrequency | frequência climática | ambiente | enum | n/a | contexto |

<a id="score-bands"></a>
## Faixas de pontuação

| Pontuação através de | Classificação | Significado simples |
|---:|---|---|
| 0.8 | Condições de alívio | alívio |
| 1.7 | Condições favoráveis | favorável |
| 2.6 | Pressão padrão | padrão |
| 3.4 | Condições exigentes | exigente |
| 4.2 | Condições graves | severas |
| 5.0 | Condições extremas | extremas |
