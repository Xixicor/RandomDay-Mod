<a id="packaged-source-reference"></a>
# Referência de fonte empacotada

> **Fonte canônica em inglês:** [SOURCE_REFERENCE.md](../../SOURCE_REFERENCE.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


O lançamento ZIP contém exatamente os 51 caminhos abaixo. O construtor rejeita um caminho ausente, uma fonte adicional em formato de pacote, uma colisão de caso, um link simbólico ou um membro fora de sua lista de permissões literal. A saída do tempo de execução, os testes, os documentos do repositório e os mods de terceiros não são membros do pacote.

O complemento verificável por máquina é [`SOURCE_TRACEABILITY.json`](../../SOURCE_TRACEABILITY.json). Ele registra os mesmos caminhos com entradas, saídas, efeitos colaterais, configurações públicas, estados visíveis, modos de falha, capacidade de edição e documentação canônica.

Cada linha Lua enviada tem uma âncora `module-*` estável. O link idêntico em seu cabeçalho de origem canônico e registro de máquina torna a propriedade, o contrato, os efeitos colaterais, as falhas e a recuperação diretamente rastreáveis.

<a id="package-markers"></a>
## Marcadores de pacote

| Caminho | Chamador e responsabilidade | Efeitos colaterais e comportamento de falha | Guia |
|---|---|---|---|
| `RandomDay/enabled.txt` | UE4SS marcador de ativação incluído em ambos os pacotes. | Sem gravação em tempo de execução. O arquivo ausente falha na validação do pacote e pode impedir o carregamento. | [Instalação](INSTALA%C3%87%C3%83O.md) |
| `RandomDay/.randomday_version` | Ler por `ax_core/version.lua`; gerado por pacote. | Sem gravação em tempo de execução. Missing/blank retornos do marcador `unversioned`; a compilação final requer identidade de versão alinhada. | [Validação de versão](VALIDA%C3%87%C3%83O_DE_VERS%C3%83O.md) |
| `RandomDay/.randomday_mode` | Ler por `ax_core/version.lua`; gerado como `dedicated_server` ou `singleplayer_manual`. | Valor inválido interrompe a inicialização antes do trabalho do sistema de arquivos. | [Arquitetura](ARQUITETURA.md#package-modes) |

<a id="entry-configuration-and-core-services"></a>
## Entrada, configuração e serviços principais

| Caminho | Chamador e responsabilidade | Entradas, saídas e comportamento de falha | Guia |
|---|---|---|---|
| <a id="module-main"></a>`RandomDay/Scripts/main.lua` | UE4SS ponto de entrada. Resolve um mod root e invoca `ax_core/init.lua`. | Imprime uma linha fatal e retorna se a resolução da raiz ou inicialização falhar. | [Caminho de inicialização](ARQUITETURA.md#startup-path) |
| <a id="module-ax-core-init"></a>`RandomDay/Scripts/ax_core/init.lua` | Orquestrador principal para inicialização e supervisão opcional. | Ancora caminhos de saída, impõe package/safety bloqueios, possui uma seleção e sequencia gravação, estado, adaptadores, status, web e mensagens. | [Caminho de inicialização](ARQUITETURA.md#startup-path) |
| <a id="module-ax-config-server"></a>`RandomDay/Scripts/ax_config/server.lua` | Carregado por `init.lua`; objeto de configuração pública completo. | Lê as configurações de identidade do pacote e os campos reservados são documentados individualmente. Bloqueios de segurança inválidos param a inicialização. | [Configuração](CONFIGURA%C3%87%C3%83O.md) |
| <a id="module-ax-core-version"></a>`RandomDay/Scripts/ax_core/version.lua` | Carregado pela configuração e registro de perfil. | Lê os marcadores de pacote cortados; `unversioned` ou `invalid` quando indisponível. | [Lançamento identidade](VALIDA%C3%87%C3%83O_DE_VERS%C3%83O.md#release-checks) |
| <a id="module-ax-core-log"></a>`RandomDay/Scripts/ax_core/log.lua` | Wrapper de registro compartilhado. | Emite `[RandomDay]` linhas em níveis configurados; sem transporte de log privado. | [arquivos de tempo de execução](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md#operator-file-map) |
| <a id="module-ax-core-utils"></a>`RandomDay/Scripts/ax_core/utils.lua` | Arquivo compartilhado, caminho, codificação, hash, diretório e auxiliares de transação. | A criação de diretório aceita apenas um sucesso confirmado do comando Lua/Wine; resultados indisponíveis, gerados, sinalizados, ambíguos ou diferentes de zero falham no fechamento com mensagens limitadas e referências relativas ao tempo de execução. Ele também possui pending/readback/promotion/rollback semântica e retém dados de recuperação incertos. | [transação sandbox](ARQUITETURA.md#sandbox-transaction) |

<a id="selection-sandbox-status-and-messages"></a>
## Seleção, sandbox, status e mensagens

| Caminho | Chamador e responsabilidade | Entradas, saídas e comportamento de falha | Guia |
|---|---|---|---|
| <a id="module-ax-cycle-calendar"></a>`RandomDay/Scripts/ax_cycle/calendar.lua` | `init.lua`; lê marcador ativo e estado de rotação, escolhe um active/prepared par, persiste o modo de sessão e a ordem exata do dia. | Constrói uma configured/wrapped ou uma ordem de 17 posições embaralhada única, grava `rotation_state.txt` transacionalmente e retorna ao último estado bom sem nova rolagem. produz uma transição degradada. | [máquina de estado de rotação](ARQUITETURA.md#rotation-state-machine) |
| <a id="module-ax-backup-manager"></a>`RandomDay/Scripts/ax_backup/manager.lua` | Gravador de sandbox; cria backups de operação e de última qualidade e restaura bytes verificados. | Atualiza a última boa sandbox/manifest como um par; preserva o par anterior se a substituição do manifesto falhar. | [arquivos de tempo de execução](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md#operator-file-map) |
| <a id="module-ax-sandbox-schema"></a>`RandomDay/Scripts/ax_sandbox/schema.lua` | Construtor de perfil, serializador e validador. | Define a ordem das chaves canônicas, tipos, intervalos e regras fixas; nenhuma gravação no sistema de arquivos. | [Chaves de sandbox](PERFIS/CHAVES_DE_CONFIGURA%C3%87%C3%95ES_DO_SANDBOX.md) |
| <a id="module-ax-sandbox-serializer"></a>`RandomDay/Scripts/ax_sandbox/serializer.lua` | Escritor de sandbox. | Produz dados determinísticos completos INI texto com RandomDay marcadores; dados de perfil inválidos são rejeitados pela validação. | [Perfis](PERFIS/DOCUMENTA%C3%87%C3%83O_DO_PERFIL.md) |
| <a id="module-ax-sandbox-validator"></a>`RandomDay/Scripts/ax_sandbox/validator.lua` | Testes de construtor e gravador. | Valida valores de perfil e serializado INI em relação ao esquema, valores fixos e identidade de perfil esperada. | [Chaves de sandbox](PERFIS/CHAVES_DE_CONFIGURA%C3%87%C3%95ES_DO_SANDBOX.md) |
| <a id="module-ax-sandbox-writer"></a>`RandomDay/Scripts/ax_sandbox/writer.lua` | `init.lua`; resolve alvos limitados por modo e executa primary/mirror gravações. | Produz resultados de transação, backup, reversão, hash, espelho e saída manual. | [transação sandbox](ARQUITETURA.md#sandbox-transaction) |
| <a id="module-ax-runtime-status"></a>`RandomDay/Scripts/ax_runtime/status.lua` | `init.lua` após cada resultado de preparação. | Grava o status atual, o dicionário e a visualização da mensagem transacionalmente com referências de destino higienizadas. A falha de saída é registrada e não altera a autoridade do sandbox. | [Esquema de status atual](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md#current-status-schema) |
| <a id="module-ax-web-export"></a>`RandomDay/Scripts/ax_web/export.lua` | `init.lua` após o status. | Grava `today.json` e `today.html` da decisão active/prepared A falha é relatada como falha de exportação, não como sucesso de sandbox. | [Esquema de exportação da Web](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md#web-export-schema) |
| <a id="module-ax-player-message"></a>`RandomDay/Scripts/ax_player/message.lua` | `init.lua` após persistência de estado bem-sucedida. | Construções limitadasjoin/daily mensagens de dados de tradução e, opcionalmente, registra um comando do console local. Faltando player/transport ignora um aviso sem alterar o estado do perfil. | [Mensagens do jogador](CONFIGURA%C3%87%C3%83O.md#player-messages) |

<a id="optional-adapter-modules"></a>
## Módulos adaptadores opcionais

| Caminho | Chamador e responsabilidade | Entradas, saídas e comportamento de falha | Guia |
|---|---|---|---|
| <a id="module-ax-external-bridge"></a>`RandomDay/Scripts/ax_external/bridge.lua` | `init.lua`; descobre destinos de adaptador reconhecidos e aplica todos os arquivos planejados transacionalmente. | Produz seis resultados documentados, backups verificados, diagnósticos limpos e evidências de reversão. | [Limite do adaptador](ARQUITETURA.md#adapter-boundary) |
| <a id="module-ax-external-adapters-dynamic-spawns"></a>`RandomDay/Scripts/ax_external/adapters/dynamic_spawns.lua` | Definição de ponte do adaptador para uma DynamicSpawns layout. | Fornece assinaturas reconhecidas e mapas de valor preparados; layouts desconhecidos são ignorados. | [Adaptadores compatíveis](ADAPTADORES_SUPORTADOS.md) |
| <a id="module-ax-external-adapters-encounter-director"></a>`RandomDay/Scripts/ax_external/adapters/encounter_director.lua` | Definição de adaptador interno instalado separadamente para campos de extensão RandomDay opcionais em um Chaotic Spawn Engine `DynamicSpawns` layout; o nome do arquivo não é um nome de produto separado. | O perfil do Maps encontra e os valores de escopo configurados somente quando o layout de extensão completo existe; O Chaotic Spawn Engine permanece responsável pelo uso do tempo de execução. | [Adaptadores compatíveis](ADAPTADORES_SUPORTADOS.md) |
| <a id="module-ax-external-adapters-lethal-lasers"></a>`RandomDay/Scripts/ax_external/adapters/lethal_lasers.lua` | Definição de ponte adaptadora para um layout de configurações de lasers letais reconhecido. | Requer todas as chaves pretendidas antes da mutação; caso contrário, os relatórios serão incompatíveis. | [Adaptadores compatíveis](ADAPTADORES_SUPORTADOS.md) |
| <a id="module-ax-external-adapters-ante-up"></a>`RandomDay/Scripts/ax_external/adapters/ante_up.lua` | Definição de ponte do adaptador para um layout de configurações ANTE Up reconhecido. | Requer campos de reaparecimento, variante e portão de depuração; caso contrário, os relatórios serão incompatíveis. | [Adaptadores compatíveis](ADAPTADORES_SUPORTADOS.md) |

<a id="shared-profile-and-translation-modules"></a>
## Perfil compartilhado e módulos de tradução

| Caminho | Chamador e responsabilidade | Entradas, saídas e comportamento de falha | Guia |
|---|---|---|---|
| <a id="module-ax-profiles-base-17"></a>`RandomDay/Scripts/ax_profiles/base_17.lua` | `profile_builder.lua`; valores base canônicos e padrões de 17 dias. | Fornece todas as chaves de sandbox, os quatro padrões de perfil enviados e as regras fixas restantes; nenhum sistema de arquivos grava. A validação do esquema rejeita saída incompleta. | [Chaves de sandbox](PERFIS/CHAVES_DE_CONFIGURA%C3%87%C3%95ES_DO_SANDBOX.md) |
| <a id="module-ax-profiles-profile-builder"></a>`RandomDay/Scripts/ax_profiles/profile_builder.lua` | Cada módulo de família e visualização de família herdada. | Clona dias base, aplica family/day substituições limitadas, valida `sandbox.profile_overrides`, aplica-os. valores persistentes mais as regras fixas restantes e retorna um pacote familiar de 17 perfis. | [Referência de perfil](PERFIS/DOCUMENTA%C3%87%C3%83O_DO_PERFIL.md) |
| <a id="module-ax-profiles-profile-family-registry"></a>`RandomDay/Scripts/ax_profiles/profile_family_registry.lua` | `randomday_17.lua`; registro público ordenado de todas as 17 famílias. | Fornece IDs, origem nomes de arquivos, nomes, descrições, gêneros e metadados de tom. A fonte da família ausente falha no carregamento. | [Rotação familiar](ROTA%C3%87%C3%83O_FAMILIAR.md) |
| <a id="module-ax-profiles-randomday-17"></a>`RandomDay/Scripts/ax_profiles/randomday_17.lua` | Calendário, gravador, status, testes e geradores. | Carrega todos os pacotes familiares registrados e expõe o conjunto de perfis 17 por 17, padrões enviados, valores efetivos para todo o perfil, ordem de esquema e regras fixas. | [Referência de perfil](PERFIS/DOCUMENTA%C3%87%C3%83O_DO_PERFIL.md) |
| <a id="module-ax-profiles-action-17"></a>`RandomDay/Scripts/ax_profiles/action_17.lua` | Visualização de compatibilidade do pacote original do pacote Action de 17 dias. | Retorna um pacote familiar completo, mas não é a origem da família do registro atual. Mantido para continuidade histórica do caminho do pacote. | [Rotação familiar](ROTA%C3%87%C3%83O_FAMILIAR.md) |
| <a id="module-ax-profiles-reaction-17"></a>`RandomDay/Scripts/ax_profiles/reaction_17.lua` | Visualização de compatibilidade do pacote do pacote de sobrevivência Reaction original. | Retorna um pacote familiar completo, mas é não selecionado pelo registro atual. Mantido para continuidade histórica do caminho do pacote. | [Rotação familiar](ROTA%C3%87%C3%83O_FAMILIAR.md) |
| <a id="module-ax-profiles-encounter-profiles"></a>`RandomDay/Scripts/ax_profiles/encounter_profiles.lua` | Pesquisa de encontro de índice diário legado disponível para código de perfil. | Retorna um mapa de encontro limitado por dia; nenhum sistema de arquivos grava. Os perfis familiares atuais carregam seus próprios valores de encontro. | [Referência de perfil](PERFIS/DOCUMENTA%C3%87%C3%83O_DO_PERFIL.md) |
| <a id="module-ax-profiles-messages-17"></a>`RandomDay/Scripts/ax_profiles/messages_17.lua` | Mensagens do jogador e wrapper de compatibilidade. | Construções limitadasjoke/note pacotes do perfil selecionado; dados de perfil indisponíveis voltam para uma mensagem neutra. | [Mensagens do jogador](CONFIGURA%C3%87%C3%83O.md#player-messages) |
| <a id="module-ax-profiles-message-bank"></a>`RandomDay/Scripts/ax_profiles/message_bank.lua` | Wrapper compatível com versões anteriores `messages_17.lua`. | Sem dados ou gravações independentes; a falha de carregamento segue o módulo de mensagem canônica. | [Mensagens do jogador](CONFIGURA%C3%87%C3%83O.md#player-messages) |
| <a id="module-ax-profiles-dictionary"></a>`RandomDay/Scripts/ax_profiles/dictionary.lua` | Escritor de dicionário de tradução e tempo de execução. | Define todos os significados, tipos, intervalos, domínios e linguagem de valor de todas as 46 configurações de sandbox. Valores desconhecidos permanecem explícitos. | [Tradução e dicionário](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md#current-status-schema) |
| <a id="module-ax-profiles-translation"></a>`RandomDay/Scripts/ax_profiles/translation.lua` | Status do tempo de execução e mensagens do jogador. | Converte valores brutos de perfil em pontuações de domínio limitado, fatos, resumos, avisos e saída de dicionário enquanto retendo valores brutos. | [Esquema de status atual](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md#current-status-schema) |

<a id="registered-family-modules"></a>
## Módulos de família registrados

Cada linha é carregada por `randomday_17.lua`, chama `profile_builder.lua`, retorna exatamente 17 perfis e não tem nenhum efeito colateral direto no sistema de arquivos. Um perfil ausente, duplicado, incompleto, fora do intervalo ou que viola regras fixas falha no dispositivo de tempo de execução. suíte e porta de referência gerada.

| Caminho | Família | Guia gerado canônico |
|---|---|---|
| <a id="module-ax-profiles-families-action-17"></a>`RandomDay/Scripts/ax_profiles/families/action_17.lua` | Ação | [Ação](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_A%C3%87%C3%83O.md) |
| <a id="module-ax-profiles-families-survival-17"></a>`RandomDay/Scripts/ax_profiles/families/survival_17.lua` | Sobrevivência | [Sobrevivência](PERFIS/FAM%C3%8DLIAS/SOBREVIV%C3%8ANCIA_FAM%C3%8DLIA_DE_PERFIL.md) |
| <a id="module-ax-profiles-families-stealth-17"></a>`RandomDay/Scripts/ax_profiles/families/stealth_17.lua` | Furtividade | [Furtividade](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_FURTIVOS.md) |
| <a id="module-ax-profiles-families-horde-17"></a>`RandomDay/Scripts/ax_profiles/families/horde_17.lua` | Horda | [Horda](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_HORDA.md) |
| <a id="module-ax-profiles-families-boss-hunt-17"></a>`RandomDay/Scripts/ax_profiles/families/boss_hunt_17.lua` | Caça ao Chefe | [Caça ao Chefe](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_CA%C3%87A_AO_CHEFE.md) |
| <a id="module-ax-profiles-families-scavenger-17"></a>`RandomDay/Scripts/ax_profiles/families/scavenger_17.lua` | Scavenger | [Scavenger](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_LIMPEZA.md) |
| <a id="module-ax-profiles-families-builder-17"></a>`RandomDay/Scripts/ax_profiles/families/builder_17.lua` | Construtor | [Construtor](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_CONSTRUTOR.md) |
| <a id="module-ax-profiles-families-expedition-17"></a>`RandomDay/Scripts/ax_profiles/families/expedition_17.lua` | Expedição | [Expedição](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_EXPEDI%C3%87%C3%83O.md) |
| <a id="module-ax-profiles-families-security-lockdown-17"></a>`RandomDay/Scripts/ax_profiles/families/security_lockdown_17.lua` | Bloqueio de segurança | [Bloqueio de segurança](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_BLOQUEIO_DE_SEGURAN%C3%87A.md) |
| <a id="module-ax-profiles-families-biohazard-17"></a>`RandomDay/Scripts/ax_profiles/families/biohazard_17.lua` | Biohazard | [Biohazard](PERFIS/FAM%C3%8DLIAS/PERFIL_DE_RISCO_BIOL%C3%93GICO_FAM%C3%8DLIA.md) |
| <a id="module-ax-profiles-families-anteverse-17"></a>`RandomDay/Scripts/ax_profiles/families/anteverse_17.lua` | Anteverso | [Anteverso](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_ANTEVERSO.md) |
| <a id="module-ax-profiles-families-nightmare-17"></a>`RandomDay/Scripts/ax_profiles/families/nightmare_17.lua` | Pesadelo | [Pesadelo](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_PESADELO.md) |
| <a id="module-ax-profiles-families-weathered-17"></a>`RandomDay/Scripts/ax_profiles/families/weathered_17.lua` | Resistido | [Resistido](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_RESISTIDO.md) |
| <a id="module-ax-profiles-families-precision-17"></a>`RandomDay/Scripts/ax_profiles/families/precision_17.lua` | Precisão | [Precisão](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_PRECIS%C3%83O.md) |
| <a id="module-ax-profiles-families-logistics-17"></a>`RandomDay/Scripts/ax_profiles/families/logistics_17.lua` | Logística | [Logística](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_LOG%C3%8DSTICA.md) |
| <a id="module-ax-profiles-families-experimental-17"></a>`RandomDay/Scripts/ax_profiles/families/experimental_17.lua` | Experimental | [Experimental](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_EXPERIMENTAL.md) |
| <a id="module-ax-profiles-families-compliance-test-17"></a>`RandomDay/Scripts/ax_profiles/families/compliance_test_17.lua` | Teste de conformidade | [Teste de conformidade](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_TESTE_DE_CONFORMIDADE.md) |

<a id="generated-references"></a>
## Referências geradas

`docs/profiles/profiles.generated.json`, os arquivos Markdown da família e `FULL_PROFILE_REFERENCE.md` são contributor/operator referências geradas a partir do mesmo conjunto de perfis. Eles não são membros do pacote e não devem ser editados como um substituto para a alteração da origem do perfil. A validação requer 17 famílias, 17 perfis por família, IDs exclusivos, todas as chaves de esquema, regras fixas, cobertura de tradução e mensagens limitadas.
