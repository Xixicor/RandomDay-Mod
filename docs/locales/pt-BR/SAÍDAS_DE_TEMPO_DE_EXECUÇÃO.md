<a id="interpret-runtime-state-and-output-schemas"></a>
# Interpretar o estado do tempo de execução e os esquemas de saída

> **Fonte canônica em inglês:** [RUNTIME_OUTPUTS.md](../../RUNTIME_OUTPUTS.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Este é o guia canônico do esquema completo de campo. Ele responde o que significa cada campo, estado, valor vazio e resultado da máquina. Use o [mapa de arquivo de tempo de execução](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md) para produtores, caminhos, tempo de gravação, retenção, sidecars de transação e locais de recuperação.

Todos os caminhos neste guia são relativos à pasta `RandomDay/`, a menos que uma linha nomeie explicitamente o sandbox configurado ou um destino de adaptador opcional. As saídas de tempo de execução são geradas após a instalação e não são membros de nenhuma versão ZIP.

<a id="choose-the-authoritative-view"></a>
## Escolha a visualização autoritativa

| Necessidade | Fonte autoritativa |
|---|---|
| Regras carregadas pelo processo atual | RandomDay marcador no `SandboxSettings.ini` lido na inicialização |
| Contabilidade de fila preparada | `runtime/rotation_state.txt`, esquema `1` |
| Status local detalhado | `runtime/current/randomday_status.json`, `randomday_runtime_status_v2` |
| Status público legível por máquina | `web_export/today.json`, esquema `2` e `randomday_public_status_v2` |
| Status legível por humanos | `web_export/today.html`, derivado de a mesma transição de status público |
| Vocabulário de tradução | `runtime/current/randomday_dictionary.json`, `randomday_runtime_dictionary_v2` |
| Aviso exato do jogador limitado | `runtime/current/player_message_preview.txt` |

O HTML visualização, visualização e resumos traduzidos são visualizações derivadas. Eles não substituem o marcador de sandbox, o resultado da transação ou os valores brutos do perfil. Localize os últimos arquivos válidos, backups de operações, sidecars, espelhos, destinos de adaptadores e `UE4SS.log` em [arquivos de tempo de execução](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md).

<a id="rotation-state-schema"></a>
## Esquema de estado de rotação

`runtime/rotation_state.txt` usa esquema `1` e contém um `key=value` par por linha:

| Campo | Significado |
|---|---|
| `schema_version` | Deve ser `1`. |
| `mod_version` | Identidade do pacote lida em `.randomday_version`. |
| `rotation_id` | Identificador do passe atual através do conjunto familiar qualificado. |
| `mode` | `selected_run`, `non_repeating_random_run` ou `rotation_run`. |
| `available_families` | IDs de família elegíveis separados por vírgula após a filtragem de configuração. |
| `remaining_families` | Famílias qualificadas ainda não selecionadas no passe atual não repetitivo. |
| `completed_families` | Famílias cuja ordem de 17 posições persistente foi concluída no passe atual. |
| `active_family`, `active_day` | Informações do marcador ativo registradas quando a seleção foi confirmada. O marcador sandbox é autoritativo na próxima inicialização. |
| `prepared_family`, `prepared_day` | Perfil mantido para a próxima reinicialização. |
| `active_run_id` | Identificador familiar associado à seleção preparada. |
| `last_status` | Estado de seleção do calendário que produziu este arquivo. |
| `session_mode` | Resolvido persistente dedicado, temporário dedicado ou singleplayer/LAN ciclo de vida. |
| `start_day_mode` | Escolha de início aleatória configurada ou única para uma nova execução. |
| `day_progression_mode` | Progressão aleatória sequencial ou não repetida. |
| `day_order` | IDs de dias persistentes separados por vírgula na ordem exata em que serão preparados. |
| `day_position` | Posição do dia preparado em `day_order`. |
| `updated_at` | Tempo de gravação local para comparação do operador. |

A gravação do estado é aceita somente quando o marcador de esquema, a família preparada e o dia preparado são lidos corretamente. Um arquivo atual ilegível pode retornar para `rotation_state.last_good.txt`; o marcador de sandbox selecionado ainda determina o que o jogo carregou para o processo atual.

<a id="runtime-status-json"></a>
## Status do tempo de execução JSON

`runtime/current/randomday_status.json` usa `status_schema=randomday_runtime_status_v2`. Seus principais grupos de campos são:

| Grupo | Campos e interpretação |
|---|---|
| Identidade | `mod`, `version`, `package_mode`, `mode`, `session_mode`, `profile_system`, `status_schema`, `dictionary_version` |
| Seleção | `reason`, `selection_status`, `active_profile_detection`, `rotation_id`, `run_id`, `cycle_length_days` |
| Ativo | `active_cycle_day`, `active_profile_id`, `active_display_name`, `active_family`, `active_family_label`, `active_profile_translation` |
| Preparado | `prepared_next_cycle_day`, `prepared_next_profile_id`, `prepared_next_display_name`, `prepared_next_family`, `prepared_next_family_label`, `prepared_profile_translation` |
| Resumos humanos | `profile_intensity`, `player_summary`, `prepared_profile_intensity`, `prepared_player_summary`, `admin_summary`, `message_preview` |
| Prova de gravação | `write_status`, `backup_status`, `last_known_good_status`, `sandbox_transaction_status`, `sandbox_rollback_status`, `prepared_ready`, `state_commit_ok`, `state_commit_error_code` |
| Prova de adaptador | `adapter_status`, `adapter_results`; cada registro do adaptador contém evidências de compatibilidade, transaction/rollback estado, contagem de arquivos alterados e referências de destino editadas |
| Limites | `restart_required_for_prepared_profile`, `sandbox_target`, `manual_copy_required`, `mirrors_written`, `world_scope`, `dictionary_path` |
| Diagnósticos | `hash`, `replacement_method`, `pending_readback_verified`, `target_readback_verified`, `updated_at` |

Valores ativos desconhecidos significam que o sandbox atual não continha um arquivo legível RandomDay marcador. Eles não devem ser substituídos por valores preparados. Caminhos de adaptador externos `runtime/` são reduzidos a uma referência de nome de base, e as strings de diagnóstico editam os caminhos absolutos detectados.

<a id="public-status-json"></a>
## Status público JSON

`web_export/today.json` usa `schema_version=2` e `status_schema=randomday_public_status_v2`. Ele repete os fatos de identidade, active/prepared, seleção, transação, adaptador e limite de reinicialização necessários para um operador. Ele também inclui:

- `session_mode`, `start_day_mode`, `configured_start_day`, `day_progression_mode`, `day_order` atual e o `prepared_day_position`;
- `family_selection_mode`, legado `family_locked_until_day_17` atual e o `family_locked_until_cycle_complete`;
- `remaining_families`, `completed_families` e sua contagem;
- perfil de encontro preparado, nível, tema e chance de encontro misto;
- ativação de escopo mundial, configuração de mundo aberto, política de mundo desconhecido e apenas uma contagem de padrões de mundo excluídos configurados;
- mensagem preparada e visualizações de mensagens combinadas;
- `selected_at`, `sandbox_target`, `manual_copy_required` e hash preparado.

`profile_status` é um dos `prepared_for_next_reboot`, `next_reboot_already_prepared`, `degraded_state_persistence` ou `write_failed_or_rollback`. `prepared_ready=true` ainda não significa ativo; o marcador de inicialização posterior é necessário.

<a id="dictionary-and-translation-output"></a>
## Saída de dicionário e tradução

`runtime/current/randomday_dictionary.json` usa `schema=randomday_runtime_dictionary_v2` e identifica a versão do dicionário `randomday_dictionary_v2`. Ele descreve modos de pacote, estados de seleção, domínios de pressão, rótulos de configuração, valores brutos e significados em linguagem simples. Valores desconhecidos permanecem explícitos em vez de serem convertidos em uma descrição confiável.

`player_message_preview.txt`, `today.json`, `today.html`, e os avisos no jogo são visualizações derivadas do mesmo módulo de tradução. O perfil subjacente e os valores `SandboxSettings.ini` brutos permanecem a fonte da verdade.

<a id="failure-and-recovery-rules"></a>
## Regras de falha e recuperação

1. Uma gravação ou validação pendente com falha nunca se torna um alvo de produção.
2. Uma promoção ou leitura de produção com falha aciona a restauração do original retido; um backup de operação é o substituto quando a restauração falha.
3. Um arquivo de reversão retido ou `rollback_failed` status requer revisão manual enquanto o jogo ou servidor está parado.
4. Uma gravação de sandbox bem-sucedida e uma confirmação de estado de rotação com falha estão degradadas, não estão prontas; adaptadores e mensagens de perfil preparado são ignorados.
5. Uma falha na exportação não altera o resultado do sandbox, mas remove uma fonte de prova de conveniência. Use logs de transações, estado e leitura de arquivo.
6. As saídas de tempo de execução são dados operacionais locais. Não os adicione a um lançamento ZIP ou publique-os como exemplos sem uma análise de privacidade separada.
