<a id="status-and-error-reference"></a>
# Status e referência de erro

> **Fonte canônica em inglês:** [STATUS_AND_ERROR_REFERENCE.md](../../STATUS_AND_ERROR_REFERENCE.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Use o exato `status`, `transaction_status`, `rollback_status` atual e o `error` valores da exportação de tempo de execução. Texto semelhante em um painel ou console não substitui esses campos.

Esta seção é a referência completa da pesquisa. A árvore de decisão acima escolhe a categoria relevante; essas tabelas preservam os valores exatos da máquina e as respostas seguras do operador.

<a id="normal-or-informational-states"></a>
## Estados normais ou informativos

| Status | Significado | Resposta do operador |
|---|---|---|
| `prepared_for_next_reboot` | Um perfil validado foi escrito para a próxima inicialização. | Nenhuma ação; a sessão atual permanece inalterada. |
| `next_reboot_already_prepared` | O próximo perfil pretendido já corresponde ao alvo. | Nenhuma ação; não force outra rotação. |
| `already_current` / `unchanged` | O destino já contém os bytes pretendidos. | Nenhuma ação. |
| `applied` | A leitura de gravação e produção foi aprovada. | Verifique a distinção active/prepared após a próxima inicialização. |
| `bootstrap_prepare_first_family_start_day` | Nenhum estado de rotação anterior existia, portanto, o primeiro dia configurado foi preparado. | Esperado no primeiro uso. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | O estado armazenado foi recuperado e o mesmo perfil preparado foi reescrito. | Verifique o dia recuperado; nenhuma nova escolha aleatória ocorreu. |
| `supervision_reconfirm_prepared_profile_no_advance` | Uma aprovação de supervisão confirmou a preparação existente. | Esperado; a fila não avançou duas vezes. |
| `external_mods_disabled` | O processamento opcional do adaptador está desativado. | Nenhuma ação, a menos que os adaptadores sejam pretendidos. |
| `external_mods_processed` | Todos os planos de adaptador ativados atingiram um resultado terminal. | Revise cada linha do adaptador. |

<a id="startup-configuration-errors"></a>
## Erros de configuração de inicialização

Essas mensagens interrompem a inicialização antes de RandomDay gravar um perfil. Corrija a configuração nomeada ou o marcador de pacote; não ignore o branch de validação.

| Texto de erro | Significado | Resposta segura |
|---|---|---|
| `invalid package mode marker; expected dedicated_server or singleplayer_manual` | `.randomday_mode` está ausente, malformada ou é do pacote errado. | Reinstale um pacote completo em uma pasta de teste limpa e preserve o marcador de modo pretendido. |
| `invalid experience.mode` | `experience.mode` não é um dos valores documentados. | Usar`auto`, `persistent_dedicated`, `temporary_dedicated` ou `singleplayer_lan`. |
| `singleplayer_manual package requires experience.mode=auto or singleplayer_lan` | A o pacote de cópia manual foi configurado como um servidor dedicado. | Restaurar `auto` ou `singleplayer_lan`; não aponte-o para um mundo externo automaticamente. |
| `dedicated_server package cannot use experience.mode=singleplayer_lan` | Um pacote dedicado foi configurado para o fluxo de trabalho de cópia manual. | Usar`auto`, `persistent_dedicated` ou `temporary_dedicated`. |
| `cycle.start_day_mode must be configured or random` | O seletor de dia inicial é inválido. | Use exatamente `configured` ou `random`. |
| `cycle.day_progression_mode must be sequential or non_repeating_random` | O seletor de ordem de dia é inválido. | Use exatamente `sequential` ou `non_repeating_random`. |
| `cycle.start_day must be a whole day inside the configured cycle` | O dia de início configurado é fracionário ou fora do ciclo. | Use um número inteiro de 1 a `cycle_length_days`. |
| `sandbox recovery safety locks must remain true` | O backup ou a última restauração válida foi desativado. | Restaure ambas as travas de segurança; RandomDay recusa intencionalmente gravações inseguras. |
| `external adapter transaction safety locks must remain true` | O patch do adaptador ou a proteção de backup foram desativados. | Restaure as travas de segurança do adaptador ou desative os adaptadores como um grupo. |
| `paths.world_name must be one folder name` | O nome mundial configurado contém um separador ou caractere inseguro. | Insira apenas o nome exato da pasta, usando letras, números, espaços, sublinhados ou hífens. |
| `required runtime directory unavailable` | Um diretório de saída mod-local obrigatório não pôde ser criado ou confirmado. | Verifique apenas o diretório RandomDay nomeado e sua permissão de gravação. |

<a id="profile-wide-configuration-errors"></a>
## Erros de configuração em todo o perfil

Esses erros interrompem a construção do perfil antes da gravação do sandbox.

| Texto de erro | Significado | Resposta segura |
|---|---|---|
| `sandbox.profile_overrides must be a table` | As quatro opções de todo o perfil foram substituídas por outro tipo Lua. | Restaure a tabela documentada em `Scripts/ax_config/server.lua`. |
| `unsupported sandbox.profile_overrides key` | A tabela contém uma configuração que não é uma das quatro chaves suportadas. | Remova a chave nomeada e use family/profile fontes para outras configurações de sandbox. |
| `sandbox.profile_overrides.<key> must be boolean` | `HardcoreMode` ou `AllowIronMode` não é `true` ou `false`. | Use um booleano Lua sem aspas. |
| `sandbox.profile_overrides.<key> must be integer` | Um valor de suporte não é um número inteiro. | Use um número inteiro. |
| `sandbox.profile_overrides.<key> outside supported range` | Um valor de suporte está fora de `0..1000`. | Escolha um número inteiro de `0` até `1000`. |

<a id="rollback-and-intermediate-states"></a>
## Reversão e estados intermediários

| Valor | Significado | Resposta segura |
|---|---|---|
| `not_started` / `pending` | A transação ou plano do adaptador não atingiu um resultado terminal. | Aguarde apenas pela passagem de inicialização limitada atual; o estado persistente requer investigação. |
| `not_needed` | Nenhuma reversão foi necessária. | Nenhuma ação. |
| `original_held` | O destino original foi movido para a posição de recuperação antes da promoção. | Não exclua o arquivo de recuperação enquanto a transação estiver incompleta. |
| `retained_after_success` | O novo destino foi verificado, mas os dados de recuperação permanecem porque a limpeza não estava disponível ou foi retida intencionalmente. | Verifique os bytes de produção antes de remover qualquer arquivo de recuperação nomeado. |
| `discarded_after_success` | A substituição verificada e os dados de reversão temporária foram apagados. | Nenhuma ação. |
| `rollback_failed` | A tentativa de restauração não pôde ser verificada. | Mantenha o servidor parado e use o backup da última operação verificada. |
| `skipped_state_persistence_failed` | Os bytes da sandbox foram preparados, mas o estado de rotação não persistiu, então os adaptadores e as mensagens do jogador preparado foram ignorados. | Reparar armazenamento de estado de tempo de execução; não role novamente ou avance a fila manualmente. |
| `failed` | Uma linha de resumo representa uma falha de terminal cuja causa específica está em seus `error` ou campos de transação. | Siga o primeiro código específico; não solucione problemas `failed` sozinho. |

<a id="transaction-failures"></a>
## Falhas de transação

| Status | Significado | Resposta segura |
|---|---|---|
| `invalid_input` | A solicitação de substituição não era um texto válido ou não tinha um destino válido. | Configuração correta; não tente novamente inalterado. |
| `stale_pending_cleanup_failed` | Um arquivo pendente antigo não pôde ser removido. | Pare e preserve o arquivo pendente antes da limpeza manual. |
| `stale_rollback_requires_review` | Os dados de recuperação existem ao lado de um destino atual e não podem ser descartados com segurança. | Compare os bytes de destino e de reversão antes de escolher qualquer um deles. |
| `interrupted_transaction_restore_failed` | A recuperação após uma substituição interrompida não pôde restaurar o destino. | Mantenha o servidor parado e restaure um backup verificado. |
| `interrupted_transaction_cleanup_failed` | O destino foi recuperado, mas os dados de transação obsoletos não puderam ser apagados. | Verifique os bytes do destino e remova apenas o arquivo secundário obsoleto nomeado. |
| `pending_write_failed` | O o candidato não pôde ser gravado. | Verifique o diretório de destino estreito e o espaço livre. |
| `pending_readback_failed` / `pending_readback_mismatch` | Os bytes do candidato não puderam ser lidos ou diferenciados após a gravação. | Não promova o arquivo pendente. |
| `pending_validation_failed` | O candidato falhou schema/profile na validação antes da promoção. | Corrigir a chave ou regra relatada; não ignore a validação. |
| `operation_backup_failed` / `backup_failed` | Um backup de pré-gravação verificado não foi criado. | Parar; nenhuma substituição de destino deve ser confiável. |
| `original_preserved_move_failed` | O destino original não pôde ser movido para a posição de recuperação. | Preservar todos os arquivos de transação e recuperar manualmente. |
| `promotion_failed` | O candidato pendente não pôde se tornar o destino de produção. | Verifique se o original foi restaurado antes de tentar novamente. |
| `production_validation_failed` | Os bytes promovidos falharam na produção readback/validation. | Restaure o backup verificado e inspecione o gravador de destino. |
| `replacement_committed_recovery_cleanup_failed` | A substituição é válida, mas os dados de reversão não puderam ser apagados. | Trate o destino como confirmado; remova apenas dados de recuperação obsoletos verificados. |
| `rollback_failed` | A restauração automática não foi verificada. | Mantenha o servidor parado e use a recuperação manual. |

<a id="target-profile-adapter-and-export-failures"></a>
## Falhas de destino, perfil, adaptador e exportação

| Status | Significado | Resposta segura |
|---|---|---|
| `target_refused` | O caminho configurado está fora do limite do modo permitido. | Corrija o caminho; nunca enfraqueça o limite. |
| `target_directory_failed` | O diretório de destino não pôde ser criado ou confirmado. | Verifique apenas a existência e as permissões desse diretório. |
| `profile_validation_failed` | Um perfil não tem uma chave, tem a type/range errada ou viola uma regra invariável restante. | Use o nomeado chave, `sandbox.profile_overrides` e referência de perfil para reparar a origem. |
| `skipped_incompatible` | Existe um mod opcional, mas não corresponde a uma assinatura de adaptador compatível. | Deixe-o inalterado ou desative esse adaptador. |
| `external_mods_partial` | Alguns adaptadores opcionais foram concluídos e outros foram seguramente skipped/failed. | Revise as linhas do adaptador de forma independente; o resultado do sandbox é separado. |
| `external_adapter_failed` | Um adaptador necessário não foi concluído com segurança. | Restaure seu backup verificado antes de tentar novamente. |
| `degraded_state_persistence` | A preparação do sandbox foi concluída, mas a persistência do estado de rotação não. | Não presuma que a próxima inicialização poderá avançar corretamente; reparar o armazenamento de estado. |
| `export_directory_failed` | `web_export/` não pôde ser criado ou gravado. | A preparação do jogo ainda pode ser válida; repare os relatórios separadamente. |

<a id="translation-and-message-validation-errors"></a>
## Erros de tradução e validação de mensagens

São falhas de dicionário ou de contrato de apresentação. Eles são validados antes do lançamento e também podem aparecer como um aviso de status de tempo de execução limitado.

| Texto de erro | Significado | Resposta segura |
|---|---|---|
| `dictionary coverage mismatch` | O dicionário de perfil não explica todas as configurações documentadas. | Adicionar a entrada de dicionário ausente e executar novamente o perfil generation/validation. |
| `missing profile setting` | Um perfil selecionado não possui uma configuração exigida pelo dictionary/schema. | Reparar a origem da família de perfis; não invente um padrão de tempo de execução. |
| `empty explanation` | Uma configuração existe, mas não tem operator/player explicação. | Adicione uma explicação em linguagem simples antes do lançamento. |
| `join line too wide` | Uma linha de junção gerada excede o limite de origem de 42 caracteres. | Encurte a frase do dicionário; não confie no empacotamento do cliente. |
| `join message too tall` | O resumo de junção gerado excede quatro linhas. | Reduza ou repriorize o conteúdo da mensagem. |
