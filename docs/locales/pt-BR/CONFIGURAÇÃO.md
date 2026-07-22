<a id="configuration"></a>
# Configuração

> **Fonte canônica em inglês:** [CONFIGURATION.md](../../CONFIGURATION.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


A configuração principal do operador é:

```text
RandomDay/Scripts/ax_config/server.lua
```

Faça backup do arquivo e altere uma seção por vez. Os booleanos Lua são minúsculos `true` e `false`; strings precisam de aspas; as entradas da lista precisam de vírgulas. Após a próxima inicialização, leia a página de status antes de fazer outra alteração. Os colaboradores que trabalham a partir do código-fonte podem usar as verificações separadas de [validação de versão](VALIDA%C3%87%C3%83O_DE_VERS%C3%83O.md) antes de empacotar uma compilação modificada.

Não edite manualmente `.randomday_mode`, `.randomday_version`, referências de perfil geradas, `runtime/` ou `web_export/`. O construtor de pacotes possui os marcadores de modo e versão do pacote e verifica se eles concordam com os metadados de lançamento.

Cada configuração abaixo é definida em `RandomDay/Scripts/ax_config/server.lua`. As tabelas distinguem as configurações editáveis ​​da identidade de propriedade da versão e dos campos de compatibilidade reservados. Um campo presente em Lua não significa que alterá-lo seja um comportamento suportado.

<a id="choose-an-experience"></a>
## Escolha uma experiência

RandomDay tem dois pacotes: um para cada servidor dedicado e outro para singleplayer/LAN cópia manual. O pacote dedicado possui dois modos de operação; esses modos são configurações, não downloads separados.

| Seu mundo | Instalar | Escolha este comportamento |
| --- | --- | --- |
| Um servidor dedicado que mantém uma campanha em movimento durante reinicializações de rotina | Pacote de servidor dedicado | `persistent_dedicated` retoma a família salva e a ordem do perfil. |
| Um servidor dedicado aberto apenas para sessões de jogo individuais | O mesmo pacote de servidor dedicado | `temporary_dedicated` mantém o próximo perfil preparado com segurança entre as sessões, enquanto uma nova família pode usar um início configurado ou aleatório. |
| Um singleplayer ou LAN mundo | Singleplayer/LAN package | `auto` seleciona comportamento de cópia manual; pare o mundo antes de copiar o arquivo gerado. |

Se não tiver certeza, use `auto`. O pacote seleciona o comportamento normal para seu tipo de instalação. Escolha o estilo de jogo amplo em [Rotação familiar](ROTA%C3%87%C3%83O_FAMILIAR.md). Use o [índice de família gerado](PERFIS/DOCUMENTA%C3%87%C3%83O_DO_PERFIL.md) quando quiser valores exatos de jogabilidade e sandbox. Em seguida, escolha o primeiro dia e a progressão:

- `start_day_mode="configured"` começa em `start_day`.
- `start_day_mode="random"` escolhe um primeiro dia válido no início de uma nova família e persiste nessa escolha.
- `day_progression_mode="sequential"` passa por todas as 17 posições.
- `day_progression_mode="non_repeating_random"` armazena uma ordem embaralhada que contém todos os dias exatamente uma vez.

Use as predefinições completas em [Rotação](#rotation). Uma nova instalação ainda precisa de uma inicialização para preparar o primeiro perfil escolhido e uma inicialização posterior para ativá-lo.

<a id="release-identity-and-logging"></a>
## Liberar identidade e registro

| Configuração | Tipo e valor enviado | Uso suportado | Falha ou interação |
|---|---|---|---|
| `version` | String lida de `.randomday_version` | Somente leitura. | O marcador ausente ou em branco torna-se `unversioned`; a validação final do pacote rejeita desvio de identidade. |
| `package_mode` | String lida de `.randomday_mode` | Somente leitura: `dedicated_server` ou `singleplayer_manual`. | Qualquer outro valor interrompe a inicialização antes da gravação do destino. |
| `plan_basis` | String: `RandomDay - Seventeen Suns Rotation + Open World Scope` | Somente rótulo de diagnóstico; não use-o como uma alternância de recursos. | O tempo de execução atual não ramifica neste campo. |
| `logging.level` | String: `info` | `debug`, `info`, `warn` ou `error`. | Valores desconhecidos não adicionam destinos de registro; manter `info` a menos que esteja diagnosticando o comportamento de geração de perfil. |

Exemplo:

```lua
logging = { level = "debug" }
```

Usar`debug` temporariamente, preserve o `UE4SS.log` e retorne para `info`. Os logs podem conter caminhos locais de falhas de baixo nível; revise-os antes de compartilhar.

<a id="experience-mode"></a>
## Modo de experiência

`experience.mode` nomeia a forma como esta instalação é operada. Isso não enfraquece o limite de segurança da próxima inicialização: o Abiotic Factor lê as configurações da sandbox antes de UE4SS carrega RandomDay, portanto, nenhum modo pode substituir as regras do processo que já está em execução.

| Configuração | Valor enviado | Valores suportados | Efeito |
|---|---:|---|---|
| `experience.mode` | `auto` | `auto`, `persistent_dedicated`, `temporary_dedicated`, `singleplayer_lan` | `auto` resolve a partir do pacote. Pacotes dedicados podem usar qualquer modo dedicado. O pacote de cópia manual aceita apenas `auto` ou `singleplayer_lan`. |

- `persistent_dedicated` mantém um armazenado family/day ordem nas reinicializações normais do servidor de longo prazo.
- `temporary_dedicated` descreve um servidor iniciado para sessões de jogo limitadas. Ele ainda persiste a ordem preparada, portanto, parar o host não re-rola silenciosamente a próxima sessão.
- `singleplayer_lan` gera apenas a saída de cópia manual limitada. Ele nunca descobre ou edita uma pasta pessoal salva.

Um incompatível package/experience a combinação para antes de uma gravação no sandbox.

<a id="rotation"></a>
## Rotação

| Configuração | Valor enviado | Valores suportados | Efeito |
|---|---:|---|---|
| `cycle.application_mode` | `next_reboot_queue` | `next_reboot_queue` | Mantém todas as alterações do sandbox no limite de reinicialização. |
| `cycle.cycle_length_days` | `17` | `17` para o conjunto de perfis padrão | Corresponde a todos os pacotes familiares e referências geradas. |
| `cycle.start_day_mode` | `configured` | `configured`, `random` | Usos`cycle.start_day` ou escolhe um dia de início válido uma vez no início de uma gestão familiar. |
| `cycle.start_day` | `1` | Número inteiro `1` até `17` | Primeiro dia quando `start_day_mode=configured`. |
| `cycle.day_progression_mode` | `sequential` | `sequential`, `non_repeating_random` | Constrói uma ordem sequencial agrupada ou uma ordem embaralhada contendo todos os dias exatamente uma vez. |
| `cycle.bootstrap_day` | `1` | Número inteiro `1` até `17` | Falter de compatibilidade usado somente quando `cycle.start_day` está ausente. A nova configuração deve usar `cycle.start_day`. |
| `cycle.check_interval_ms` | `0` | `0` ou um intervalo positivo limitado | `0` prepara uma vez na inicialização; um valor positivo permite supervisão periódica quando UE4SS fornece `LoopAsync`. |
| `profile_family.mode` | `non_repeating_random_run` | `selected_run`, `non_repeating_random_run`, `rotation_run` | Escolhe como uma nova gestão familiar de 17 dias começa. |
| `profile_family.selected_family` | `action` | Um ID em `allowed_families` | Família usada por `selected_run` e como substituto. |
| `profile_family.default_family` | `action` | Um ID de família registrado | Fallback quando o ID selecionado estiver ausente ou for inválido. |
| `profile_family.allowed_families` | Todos os 17 IDs de família públicos | Qualquer subconjunto não vazio de IDs registrados | Limite as famílias qualificadas para novas execuções. |
| `profile_family.preserve_family_until_day_17` | Booleano: `true` | Campo de compatibilidade reservado; keep `true`. | O calendário atual sempre mantém a família em todas as posições na ordem persistente de 17 dias e não lê esse campo como uma alternância. |
| `profile_family.reroll_only_after_day_17` | Booleano: `true` | Campo de compatibilidade reservado; keep `true`. | O calendário atual muda a família somente após a conclusão de cada ID de dia, independentemente de qual dia é o último na ordem armazenada. |
| `profile_family.prevent_repeats_until_rotation_complete` | Booleano: `true` | Campo de compatibilidade reservado; keep `true`. | A lógica atual do pool não repetitivo é fixa e não lê esse valor como uma alternância. |

A ordem do dia é criada uma vez para uma nova família e gravada em `runtime/rotation_state.txt`. A recuperação e as reinicializações posteriores reutilizam essas posições exatas. Uma edição de configuração não rola novamente um pedido em andamento. A família muda somente depois que todas as 17 posições forem preenchidas.

<a id="recommended-presets"></a>
### Predefinições recomendadas

Servidor dedicado persistente:

```lua
experience = { mode = "persistent_dedicated" }
cycle = {
    application_mode = "next_reboot_queue",
    cycle_length_days = 17,
    start_day_mode = "configured",
    start_day = 1,
    day_progression_mode = "sequential",
    bootstrap_day = 1,
    check_interval_ms = 0,
}
```

Sessões dedicadas temporárias com uma ordem diferente e não repetitiva por nova execução familiar:

```lua
experience = { mode = "temporary_dedicated" }
cycle.start_day_mode = "random"
cycle.day_progression_mode = "non_repeating_random"
```

Singleplayer/LAN a cópia manual usa o pacote singleplayer e normalmente sai `experience.mode="auto"`. Você pode escolher os mesmos controles de início e progressão antes de gerar o próximo arquivo. Copie o arquivo gerado no mundo parado escolhido antes de outra execução de geração se desejar que o estado do tempo de execução e o perfil carregado do mundo permaneçam alinhados.

Em uma nova instalação, o primeiro processo só pode preparar o dia de início selecionado. Um processo posterior o ativa. A inicialização aleatória ou configurada não ignora a ordem de carregamento do mecanismo.

Exemplo de uma execução fixa do Builder:

```lua
profile_family = {
    mode = "selected_run",
    selected_family = "builder",
    default_family = "action",
    allowed_families = { "builder" },
    preserve_family_until_day_17 = true,
    reroll_only_after_day_17 = true,
    prevent_repeats_until_rotation_complete = true,
}
```

Um conjunto qualificado vazio ou desconhecido retorna para uma família registrada em vez de criar um perfil incompleto.

<a id="primary-sandbox-path"></a>
## Caminho primário da sandbox

| Configuração | Tipo e valor enviado | Uso suportado | Falha ou interação |
|---|---|---|---|
| `paths.runtime_dir` | String: `ue4ss/Mods/RandomDay/runtime` | Somente leitura na configuração de origem. | `init.lua` substitui -lo com o caminho mod-root `runtime/` resolvido. |
| `paths.web_export_dir` | String: `ue4ss/Mods/RandomDay/web_export` | Somente leitura na configuração de origem. | `init.lua` substitui -lo com o caminho mod-root `web_export/` resolvido. |
| `paths.sandbox_path_override` | String ou `nil`: `nil` | Um caminho literal `SandboxSettings.ini` para um layout dedicado não padrão. | Alvos inseguros ou indisponíveis falham na gravação; o modo singleplayer limpa a substituição. |
| `paths.sandbox_candidates` | Lista de strings: sete candidatos genéricos | Candidatos substitutos de servidor dedicado ordenados. | `init.lua` precede candidatos derivados da instalação; o primeiro caminho existente vence. |
| `paths.write_sandbox_mirrors` | Booleano: `true` | Permite espelhos configurados deliberadamente. | Nenhum espelho é gravado enquanto a lista de espelhos está vazia e `world_name=nil`; o modo singleplayer força `false`. |
| `paths.sandbox_mirror_required` | Booleano: `false` | Campo de compatibilidade reservado; keep `false`. | O gravador atual trata os espelhos como opcionais e não lê este campo como uma porta obrigatória. |
| `paths.world_name` | String ou `nil`: `nil` | Um componente de pasta mundial seguro usado para derivar candidatos genéricos a espelhos. | Qualquer coisa fora de letras, números, espaços, `_` ou `-` interrompe a inicialização; o modo singleplayer ignora isso. |
| `paths.sandbox_mirror_candidates` | Lista de strings: vazia | Arquivos espelho opcionais exatos. | Cada espelho elegível usa sua própria transação; uma falha de espelho não altera o sucesso primário. |

`paths.sandbox_path_override` o padrão é `nil`. Sem substituição, RandomDay primeiro verifica os candidatos WindowsServer genéricos ancorados na instalação RandomDay detectada e, em seguida, verifica todos os candidatos configurados. Se não existir, ele usa o primeiro candidato genérico ancorado na instalação, que resolve para a instalação do servidor:

```text
AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini
```

Este substituto não é resolvido a partir do diretório de trabalho atual do processo. Defina `sandbox_path_override` somente quando sua instalação usar um arquivo literal diferente. Aponte para um `SandboxSettings.ini`, não para um diretório. Pare o servidor e confirme se o arquivo está dentro da instalação pretendida antes de usar.

<a id="optional-mirrors"></a>
### Espelhos opcionais

`paths.write_sandbox_mirrors` são enviados como `true`, mas a lista de caminhos de espelho está vazia e `paths.world_name` é `nil`. Portanto, os padrões enviados não gravam nenhum espelho extra. Defina-o como `false` quando a instalação sempre precisar gravar apenas o destino primário resolvido. Sem nenhum candidato a espelho ou nome mundial configurado, qualquer um dos valores ainda grava apenas o arquivo sandbox primário.

Um espelho se torna elegível somente quando você adiciona deliberadamente uma entrada exata a `paths.sandbox_mirror_candidates` ou define `paths.world_name`. Os espelhos são cópias de melhor esforço para instalações que leem um segundo caminho de sandbox específico do mundo. Eles não substituem a configuração do caminho primário correto.

Antes de ativar um espelho:

1. pare o servidor;
2. identifique o arquivo exato que o servidor lê;
3. confirme se o destino está dentro da instalação pretendida;
4. faça backup;
5. adicione apenas esse caminho;
6. verifique o resultado do espelho após a preparação.

Exemplo de substituição sem espelho:

```lua
paths = {
    runtime_dir = "ue4ss/Mods/RandomDay/runtime",
    web_export_dir = "ue4ss/Mods/RandomDay/web_export",
    sandbox_path_override = "<server-root>/AbioticFactor/Saved/Config/WindowsServer/SandboxSettings.ini",
    sandbox_candidates = {},
    write_sandbox_mirrors = false,
    sandbox_mirror_required = false,
    world_name = nil,
    sandbox_mirror_candidates = {},
}
```

`<server-root>` é um espaço reservado. Substitua-o localmente; não publique um caminho específico da máquina.

<a id="non-disableable-safety-locks"></a>
## Bloqueios de segurança não desativos

| Configuração | Valor obrigatório | Significado |
|---|---:|---|
| `sandbox.backup_before_write` | `true` | Preservar uma cópia verificada antes de substituir um arquivo primário existente. |
| `sandbox.restore_last_good_on_failure` | `true` | Tentar recuperação automática após uma falha na substituição ou leitura. |
| `external_mods.patch_only_existing_keys` | `true` | Recuse-se a inventar uma configuração desconhecida no arquivo de outro mod. |
| `external_mods.backup_before_write` | `true` | Preserva os bytes de destino antes de uma edição de adaptador transacional compatível. |

RandomDay recusa a inicialização se algum desses quatro valores não for `true`. São travas de segurança, não há suporte para botões de operação. Não os desative, inclusive no desenvolvimento ou na solução de problemas, pois isso altera o limite de falha fechada que os testes do gravador e do adaptador comprovam.

`sandbox.force_rewrite_every_supervision_tick` permanece uma configuração normal e é fornecido como `false`, o que deixa um arquivo sandbox já correspondente intocado. Aceita um booleano. Definir como `true` força os mesmos bytes preparados de propriedade do processo através do gravador novamente; não avança o family/day. Use-o apenas para um teste de recuperação limitado porque gravações repetidas criam mais backups de operação.

<a id="optional-mod-adapters"></a>
## Adaptadores Mod opcionais

| Configuração | Valor enviado | Significado |
|---|---:|---|
| `external_mods.enabled` | `true` | Permitem que adaptadores configurados inspecionem alvos instalados separadamente. |
| `external_mods.optional_by_default` | `true` | Mods opcionais ausentes ou incompatíveis não bloqueiam RandomDay. |
| `external_mods.patch_only_existing_keys` | `true` | Trava de segurança necessária; a inicialização falha se for alterada. |
| `external_mods.backup_before_write` | `true` | Trava de segurança necessária; a inicialização falha se for alterada. |
| `external_mods.adapters` | Quatro IDs de adaptadores públicos | Limites que RandomDay-owned adaptadores podem ser executados. |

Remova um ID de adaptador da lista para deixar essa integração de lado sem desativar ou desinstalar o mod de terceiros. O singleplayer/LAN desativa todos os adaptadores, independentemente desta lista.

`external_mods.optional_by_default=false` faz com que um resultado de adaptador configurado diferente de `applied` ou `already_current` falhe no resultado do adaptador agregado. Isso não reverte a transação primária do sandbox. Mantenha o `true` enviado, a menos que o operador tenha um motivo testado para exigir uma integração.

Veja [Adaptadores Mod Suportados](ADAPTADORES_SUPORTADOS.md) para layouts reconhecidos e os seis resultados possíveis.

<a id="optional-chaotic-spawn-engine-scope-fields"></a>
### Campos de escopo opcionais do Chaotic Spawn Engine

`world_scope` fornece cinco configurações de extensão RandomDay opcionais somente quando um Chaotic Spawn Engine reconhecido `DynamicSpawns/SharedData.lua` já contém esses campos. Este não é um mod ou download separado:

| Configuração | Valor enviado | Efeito adaptador |
|---|---:|---|
| `world_scope.enabled` | `true` | solicita o RandomDay portão de escopo mundial opcional dentro de um DynamicSpawns layout. |
| `world_scope.affect_open_worlds` | `true` | Inclui mundos abertos, a menos que o mod alvo aplique uma regra de mundo protegido. |
| `world_scope.unknown_world_policy` | `allow` | Solicitações `allow` ou `block` quando o mod de destino não consegue classificar um mundo. |
| `world_scope.log_scope_decisions` | `true` | Solicita o registro do mod de destino para sua decisão de escopo. |
| `world_scope.protected_worlds` | Lista vazia | Fornece padrões de mundo protegido separados por vírgula para o layout de destino. |

Esses valores são entradas do adaptador, não um filtro mundial implementado pelo gravador de sandbox do RandomDay's gravador de sandbox. Eles entram em vigor somente quando o layout do Chaotic Spawn Engine instalado separadamente já contém a RandomDay conjunto de campos e relatórios opcionais completos `applied` ou `already_current`. O Chaotic Spawn Engine permanece responsável por usar esses campos em tempo de execução. Uma instalação comum sem os campos de extensão permanece inalterada.

Todos os cinco valores são entradas do adaptador. `unknown_world_policy` aceita apenas os valores alvo documentados `allow` ou `block`; um layout de destino não reconhecido é ignorado. Mantenha `protected_worlds` vazio nos exemplos de documentação. Se um operador usar padrões locais, eles não deverão ser incluídos em capturas de tela, problemas ou artefatos de lançamento.

<a id="player-messages"></a>
## Mensagens do jogador

A configuração de servidor dedicado fornecida permite avisos de adesão compactos e uma fila diária curta. Ele espera 30 segundos antes da primeira passagem, verifica se há jogadores recém-inscritos a cada 15 segundos e espera 10 segundos após um aviso de entrada antes da linha diária.

| Configuração | Valor enviado |
|---|---:|
| `player_message.enabled` | `true` |
| `player_message.log_on_startup` | `true` |
| `player_message.register_console_command` | `false` |
| `player_message.console_command` | `randomday` |
| `player_message.broadcast_enabled` | `true` |
| `player_message.startup_delay_ms` | `30000` |
| `player_message.join_check_interval_ms` | `15000` |
| `player_message.send_daily_joke_after_join` | `true` |
| `player_message.daily_joke_delay_seconds` | `10` |
| `player_message.criticality_join` | `2` |
| `player_message.criticality_joke` | `0` |
| `player_message.max_line_chars` | `42` |
| `player_message.max_join_lines` | `4` |
| `player_message.max_warning_lines` | `3` |
| `player_message.max_note_lines` | `3` |

A validação do comprimento da mensagem verifica os limites de origem. Ele não substitui um teste visual em cada resolução do cliente.

Os valores de tempo são números não negativos interpretados como milissegundos, exceto `daily_joke_delay_seconds`. Uma configuração de mensagem ou transmissão desabilitada suprime avisos do cliente sem alterar a preparação do sandbox. O comando do console é registrado somente quando a configuração e o manipulador UE4SS estão disponíveis. Mantenha os valores de criticidade nos níveis de transporte enviados, a menos que um teste de cliente nomeado prove outro valor.

`max_line_chars` é limitado entre 8 e 64 caracteres pelo tradutor. As três configurações de contagem de linhas limitam a saída de junção, aviso e nota, respectivamente; os valores enviados correspondem ao número de linhas de origem disponíveis. Mantenha esses quatro limites em seus padrões, a menos que um teste de layout do cliente prove uma configuração mais restrita.

Exemplo com mensagens desativadas:

```lua
player_message = {
    enabled = false,
    log_on_startup = true,
    register_console_command = false,
    console_command = "randomday",
    broadcast_enabled = false,
    startup_delay_ms = 30000,
    join_check_interval_ms = 15000,
    send_daily_joke_after_join = false,
    daily_joke_delay_seconds = 10,
    criticality_join = 2,
    criticality_joke = 0,
    max_line_chars = 42,
    max_join_lines = 4,
    max_warning_lines = 3,
    max_note_lines = 3,
}
```

<a id="profiles-and-sandbox-values"></a>
## Perfis e valores de sandbox

Os arquivos de origem da família em `RandomDay/Scripts/ax_profiles/families/` definem 17 dias completos por família. A documentação gerada em `docs/profiles/` é uma saída de referência, não a fonte de personalização.

Usar[referência da chave sandbox](PERFIS/CHAVES_DE_CONFIGURA%C3%87%C3%95ES_DO_SANDBOX.md) opcional completa para tipos, intervalos, padrões de perfil enviados e valores invariáveis ​​restantes. Após editar uma fonte de perfil, gere novamente e valide todas as 289 combinações; não corrija um Markdown gerado ou JSON registre manualmente.

<a id="customize-the-shipped-profile-defaults"></a>
### Personalize os padrões de perfil enviados

Abrir:

```text
RandomDay/Scripts/ax_config/server.lua
```

Encontre este bloco em `sandbox`:

```lua
profile_overrides = {
    HardcoreMode = false,
    AllowIronMode = false,
    StructuralSupportLimit = 0,
    BridgeSupports = 0,
}
```

Essas são as escolhas iniciais de RandomDay's escolhas iniciais, nem regras imutáveis ​​de Fator Abiótico. Defina qualquer um dos modos como `true` ou `false`. Defina cada valor de suporte como um número inteiro de `0` até `1000`. Pare o jogo ou servidor dedicado antes de editar o arquivo, salve-o e reinicie para que Lua carregue a nova configuração.

RandomDay ler este bloco sempre que construir os 17 perfis em uma família. Os valores escolhidos são, portanto, aplicados a cada família e dia, incluindo perfis preparados após uma rotação e perfis reconstruídos após uma inicialização posterior do servidor. Você não precisa editar 289 arquivos de perfil ou gerar novamente a referência de perfil.

Alterar apenas um `SandboxSettings.ini` ativo é temporário porque o próximo perfil preparado é gerado a partir de `server.lua`. Tipos inválidos, chaves desconhecidas ou valores de suporte externos `0..1000` interrompem a construção do perfil com um erro de configuração nomeado em vez de reverter silenciosamente para os padrões.

A referência de perfil gerada continua mostrando os padrões enviados. É uma referência de lançamento, não uma cópia da configuração privada de um servidor.
