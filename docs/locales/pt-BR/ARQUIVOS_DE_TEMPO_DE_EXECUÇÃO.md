<a id="locate-runtime-files-and-status"></a>
# Localize arquivos e status de tempo de execução

> **Fonte canônica em inglês:** [RUNTIME_FILES.md](../../RUNTIME_FILES.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Este é o inventário de caminho canônico usado pelos operadores e pela rastreabilidade da origem. Ele responde onde está um arquivo, quem o grava, quando ele é alterado, quanto tempo permanece e qual função de recuperação ele desempenha. O [referência de saída de tempo de execução](SA%C3%8DDAS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md) possui esquemas, significados de campos, estados vazios e interpretação de valor de máquina.

Todos os caminhos neste guia são relativos à pasta `RandomDay/` instalada, salvo indicação em contrário. As saídas de tempo de execução são criadas após a instalação; eles são excluídos dos ZIPs de lançamento.

<a id="operator-file-map"></a>
## Mapa de arquivo do operador

| Caminho | Produtor e gatilho | Atualização e retenção | Significado e recuperação |
|---|---|---|---|
| Primário configurado `SandboxSettings.ini` | `ax_sandbox/writer.lua` após serialização e validação do perfil em modo dedicado. | Substituído transacionalmente; o destino é configurado pelo operador ou derivado da instalação. | Perfil completo para a próxima inicialização. A sessão em execução mantém as regras já carregadas. |
| Espelho configurado `SandboxSettings.ini` | Gravador de sandbox após um resultado primário bem-sucedido quando um espelho explícito é elegível. | Substituição transacional de melhor esforço. | Somente cópia secundária; um espelho não substitui a configuração correta do caminho primário. |
| Destino do adaptador reconhecido | `ax_external/bridge.lua` após a correspondência completa da assinatura do layout. | Atribuições existentes são alteradas transacionalmente com backups exclusivos. | Configuração de mod instalada separadamente; inspeciona o resultado do adaptador de seis estados independentemente da sandbox primária. |
| `runtime/rotation_state.txt` | `ax_cycle/calendar.lua` após uma transação de sandbox bem-sucedida. | Substituído transacionalmente após cada preparação aceita. | Contabilidade de filas. Se ilegível, RandomDay tenta o último estado bom. |
| `runtime/rotation_state.last_good.txt` | Backup de transação do calendário. | Substituído quando o estado atual é atualizado. | Estado legível anterior; preserve-o durante diagnósticos e atualizações. |
| `runtime/current/randomday_status.json` | `ax_runtime/status.lua` após sucesso, persistência degradada ou falha de gravação. | Substituído transacionalmente em cada passagem de status. | Estruturado canônico active/prepared, transação, tradução e resumo do adaptador. |
| `runtime/current/randomday_dictionary.json` | `ax_runtime/status.lua` ao lado do status. | Substituído transacionalmente. | Esquema `randomday_runtime_dictionary_v2`: termos, definições de traduções, domínios, modos de pacote e estados de seleção. |
| `runtime/current/player_message_preview.txt` | `ax_runtime/status.lua` ao lado do status. | Substituído transacionalmente. | Visualização exata da mensagem limitada para revisão do operador; isso não prova a renderização do cliente. |
| `runtime/last_good/SandboxSettings.ini` | `ax_backup/manager.lua` após um resultado de sandbox primário verificado. | Substituído transacionalmente. | Último sandbox aceito como em bom estado. Use somente com seu manifesto. |
| `runtime/last_good/manifest.lua` | `ax_backup/manager.lua` depois que o snapshot do sandbox for bem-sucedido. | Substituído transacionalmente como um par com o snapshot do sandbox. | Versão, ID do perfil, nome, dia, hash de conteúdo e horário de gravação do último arquivo válido. |
| `runtime/backups/<operation>/SandboxSettings.ini` | Gravador primário ou espelhado antes da mutação. | Diretório de operação exclusivo; RandomDay não o remove. | Bytes de pré-gravação verificados. Os operadores possuem retenção após revisão. |
| `runtime/backups/external_<operation>/...` | Ponte do adaptador antes de qualquer mutação do adaptador. | Diretório de operação exclusivo; sem remoção automática. | Uma cópia verificada de cada destino de adaptador planejado. |
| `runtime/pending/` | Criado pela configuração do diretório de tempo de execução. | Reservado; as transações primárias atuais usam sidecars irmãos. | Não trate um diretório vazio como prova de preparação. |
| `runtime/singleplayer_manual/SandboxSettings.ini` | Gravador sandbox no modo `singleplayer_manual`. | Substituído transacionalmente quando o pacote manual é executado. | Arquivo completo para o operador inspecionar e copiar manualmente. um mundo parado. |
| `web_export/today.json` | `ax_web/export.lua` após cada resultado de preparação. | Substituído transacionalmente. | Resultado compacto legível por máquina active/prepared e writer/adapter. |
| `web_export/today.html` | `ax_web/export.lua` após uma passagem de exportação bem-sucedida. | Substituído transacionalmente. | Visão humana derivada da mesma transição; não é prova independente. |
| `UE4SS.log` | UE4SS e `ax_core/log.lua`. | Gerenciado por UE4SS, não RandomDay. | Linhas de inicialização, perfil selecionado, gravação, adaptador, mensagem, status e falha prefixadas com `[RandomDay]`. |

<a id="recognize-empty-and-failed-file-states"></a>
### Reconhecer estados de arquivo vazios e com falha

- Um destino primário ou espelhado ausente pode ser criado. Um perfil inválido, falha de gravação pendente, promoção ou leitura de produção não está pronto. Uma falha de espelho não altera o resultado primário aceito.
- `runtime/singleplayer_manual/SandboxSettings.ini` pode ser criado na primeira execução manual. Uma falha de geração permanece visível no status e na saída do log.
- Um `rotation_state.txt` ilegível pode retornar ao último estado bom ou a uma inicialização baseada em marcador. Uma confirmação de estado com falha produz `degraded_state_persistence`.
- `runtime/last_good/` pode estar ausente antes do primeiro alvo verificado. Se a atualização do manifesto emparelhado falhar, RandomDay restaura o par aceito anteriormente.
- `runtime/backups/mirror_<operation>/` é o local de backup específico do espelho. Nenhum arquivo de backup primário ou espelhado existe quando esse destino não existia antes da transação.
- A mutação do adaptador não começa quando a criação ou leitura do backup falha.
- O status atual, dicionário ou arquivos de visualização podem estar ausentes quando a saída do status do tempo de execução está indisponível ou incompleta.
- Um resultado `export_failed` pode deixar um resultado mais antigo `today.json` em vigor. Uma falha no sandbox é atualizada JSON mas não cria uma nova falha HTML página; comparar carimbos de data/hora com `UE4SS.log`.
- Um arquivo secundário obsoleto e pendente é removido antes de uma nova tentativa; falha de limpeza interrompe a transação. Se o destino de produção e o arquivo secundário de reversão existirem, RandomDay preserva os bytes de recuperação para revisão.
- Nenhuma `[RandomDay]` linha inicial em `UE4SS.log` significa que o carregamento do mod não foi comprovado.

<a id="transaction-sidecars"></a>
## Carros secundários de transação

O gravador transacional pode criar arquivos irmãos ao lado de um alvo:

| Padrão | Estado | Ação do operador |
|---|---|---|
| `<target>.randomday.pending` | Bytes do candidato antes da promoção. | Normalmente removido por promoção. Preserve-o se uma falha relatar problemas pendentes de limpeza ou leitura. |
| `<target>.randomday.rollback` | Bytes originais retidos durante a substituição. | Normalmente restaurado em caso de falha ou removido após verificação de sucesso. Não exclua quando o alvo também estiver presente; essa combinação requer revisão. |
| `<target>.randomday.restore.pending` | Bytes candidatos durante a restauração do adaptador. | Preservar com o backup do adaptador se a restauração falhar. |
| `<target>.randomday.restore.rollback` | Bytes de recuperação retidos durante a restauração do adaptador. | Preservar e interromper o serviço afetado se a limpeza ou restauração não for verificada. |

Esses arquivos podem existir ao lado da sandbox dedicada ou de um destino de adaptador instalado separadamente. A presença deles é um estado de transação, não uma evidência de que o novo perfil se tornou ativo.

<a id="interpret-file-contents"></a>
## Interpretar o conteúdo do arquivo

Usar[Estado de tempo de execução e referência de saída](SA%C3%8DDAS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md) para os `rotation_state.txt`, `randomday_status.json` atual e o `today.json` esquemas completos. Essa referência também possui estados vazios, significados de falha, saída de dicionário e a regra de que o estado preparado não é um estado ativo. Use o [status e referência de erro](REFER%C3%8ANCIA_DE_STATUS_E_ERRO.md) quando um valor exato da máquina exigir uma ação do operador.

<a id="rotation-state-fields"></a>
### Campos de estado de rotação

Veja o [esquema de estado de rotação](SA%C3%8DDAS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md#rotation-state-schema).

<a id="current-status-schema"></a>
### Esquema de status atual

Veja o [status de tempo de execução JSON esquema](SA%C3%8DDAS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md#runtime-status-json).

<a id="web-export-schema"></a>
### Esquema de exportação da Web

Veja o [status público JSON esquema](SA%C3%8DDAS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md#public-status-json).

<a id="retain-recovery-evidence"></a>
## Reter evidências de recuperação

RandomDay substitui o estado atual, o status atual, o último estado válido e as visualizações da web. Ele cria diretórios exclusivos de backup de operação e não exclui os antigos. Escolha uma política de retenção fora do processo em execução, mas nunca exclua as evidências de recuperação mais recentes enquanto um problema de gravação, leitura, estado ou reversão não for resolvido.
