<a id="worked-configuration-examples"></a>
# Exemplos de configuração funcionais

> **Fonte canônica em inglês:** [EXAMPLES.md](../../EXAMPLES.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Esses exemplos usam nomes e valores inventados para mostrar como RandomDay relata resultados comuns de preparação, ativação, recuperação e compatibilidade.

<a id="first-bootstrap"></a>
## Primeiro Bootstrap

Antes: a sessão em execução carregava uma sandbox sem RandomDay marcador.

Após uma RandomDay inicialização bem-sucedida:

```text
selection_status=bootstrap_prepare_first_family_start_day
session_mode=temporary_dedicated
start_day_mode=configured
day_progression_mode=sequential
day_order=8,9,10,11,12,13,14,15,16,17,1,2,3,4,5,6,7
active_profile_id=unknown_current_boot
prepared_next_profile_id=<action-day-8-profile-id>
prepared_ready=true
restart_required_for_prepared_profile=true
```

Significado: a sessão atual permanece desconhecida para RandomDay. O Dia 8 configurado está pronto para a próxima reinicialização e o pedido completo é persistido. Não descreva o Dia 8 como ativo ainda.

<a id="normal-next-day"></a>
## Normal Dia Seguinte

Antes: o marcador de sandbox atual identifica o Dia de Ação 1.

```text
active_profile_id=action_live_fire_orientation
active_cycle_day=1
prepared_next_profile_id=action_open_floor_skirmish
prepared_next_cycle_day=2
sandbox_transaction_status=applied
prepared_ready=true
```

Significado: o Dia 1 está ativo para este processo; O dia 2 está preparado. A reinicialização é uma decisão do operador.

<a id="state-commit-failure"></a>
## Falha de confirmação de estado

```text
sandbox_transaction_status=applied
state_commit_ok=false
state_commit_error_code=state_persistence_failed
prepared_ready=false
adapter_status=skipped_state_persistence_failed
```

Significado: bytes de sandbox válidos podem estar no disco, mas RandomDay não foi possível persistir um registro de fila correspondente. Mantenha o servidor parado, preserve o sandbox e os arquivos de estado de rotação e siga a recuperação manual. Uma gravação de sandbox bem-sucedida por si só não é uma transição saudável e preparada.

<a id="primary-write-restored"></a>
## Gravação primária restaurada

```text
sandbox_transaction_status=production_validation_failed
sandbox_rollback_status=restored
prepared_ready=false
```

Significado: a leitura de produção falhou e o arquivo anterior foi restaurado. Inspecione o backup da operação e o primeiro erro antes de outro início. Não infira que o perfil preparado é utilizável.

<a id="adapter-outcomes"></a>
## Resultados do adaptador

```text
adapter_status=external_mods_processed
lethal_lasers.status=skipped_incompatible
ante_up.status=already_current
```

Significado: o alvo do Lethal Lasers foi deixado inalterado porque seu layout completo não foi reconhecido. O ANTE Alvo superior já correspondido. Nenhum dos resultados altera a transação primária do sandbox.

Se um adaptador reportar `rollback_failed`, interrompa o serviço afetado e preserve o destino, os sidecars e `runtime/backups/external_<operation>/` diretório.

<a id="singleplayer-or-lan"></a>
## Jogador único ou LAN

```text
package_mode=singleplayer_manual
session_mode=singleplayer_lan
start_day_mode=random
day_progression_mode=non_repeating_random
day_order=<one persisted permutation of 1 through 17>
sandbox_target=singleplayer_manual_output
manual_copy_required=true
```

Significado: RandomDay somente gravação `runtime/singleplayer_manual/SandboxSettings.ini`. Feche o jogo, inspecione o arquivo, faça backup do mundo escolhido e copie-o manualmente. A saída não prova que algum mundo o carregou.

<a id="incompatible-environment"></a>
## Ambiente incompatível

Quando não há Fator Abiótico nomeado ou UE4SS run existe, a cópia de lançamento deve dizer:

```text
Abiotic Factor: local fixtures only
UE4SS: Lua 5.4 parser and local fixture suite
```

A análise local de Lua, os fixtures e a extração de pacotes continuam sendo provas úteis, mas não se tornam uma reivindicação de compatibilidade mais ampla.
