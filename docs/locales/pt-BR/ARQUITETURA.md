<a id="architecture-and-data-flow"></a>
# Arquitetura e fluxo de dados

> **Fonte canônica em inglês:** [ARCHITECTURE.md](../../ARCHITECTURE.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


RandomDay possui um trabalho limitado: preparar um perfil de sandbox completo para um início futuro sem descrever esse perfil como ativo durante o processo atual. O perfil ativo vem do marcador no arquivo sandbox que o Abiotic Factor carregou antes de UE4SS iniciar RandomDay. O perfil preparado é um estado de arquivo separado e validado para a próxima reinicialização.

<a id="package-modes"></a>
## Modos de pacote

O criador de lançamento produz dois ZIPs da mesma lista de permissões de origem exata e define `RandomDay/.randomday_mode` diferentemente em cada um.

| Modo | Saída primária | Gravações externas automáticas |
|---|---|---|
| `dedicated_server` | Servidor dedicado resolvido `SandboxSettings.ini` | Sandbox primário, espelhos configurados deliberadamente e adaptadores opcionais reconhecidos. |
| `singleplayer_manual` | `RandomDay/runtime/singleplayer_manual/SandboxSettings.ini` | Nenhum fora da pasta RandomDay; espelhos e adaptadores estão desabilitados. |

`RandomDay/.randomday_version` e `RandomDay/.randomday_mode` são marcadores de pacote gerados. `RandomDay/Scripts/ax_core/version.lua` lê-os; os operadores não devem editá-los após a instalação.

<a id="session-modes"></a>
## Modos de sessão

O modo de pacote controla onde RandomDay pode gravar. `experience.mode` descreve separadamente o ciclo de vida pretendido:

| Modo de sessão | Pacote | Contrato de ciclo de vida |
|---|---|---|
| `persistent_dedicated` | Dedicado | Retomar a família persistente e o pedido de 17 posições por dia no longo prazo reinicia. |
| `temporary_dedicated` | Dedicado | Trate cada lançamento como uma sessão de jogo limitada, preservando a ordem na fila entre os lançamentos. |
| `singleplayer_lan` | Manual para um jogador | Gere um arquivo mod-local para um mundo selecionado pelo operador; sem descoberta de salvamento ou cópia automática. |

`auto` resolve para `persistent_dedicated` no pacote dedicado e `singleplayer_lan` no pacote manual. O modo de sessão não altera o limite do mecanismo: o processo atual já carregou sua sandbox antes de RandomDay ser executado.

<a id="startup-path"></a>
## Caminho de inicialização

1. UE4SS carrega `RandomDay/Scripts/main.lua`.
2. O ponto de entrada resolve uma `RandomDay/` raiz e carrega `Scripts/ax_core/init.lua`.
3. `init.lua` carrega configuração, perfis, calendário, gravador, adaptadores, módulos de status, exportação da web e mensagem do jogador. Ele rejeita um modo de pacote inválido ou bloqueio de segurança de transação desabilitado. Ele também valida o modo de sessão compatível com o pacote, o modo do dia de início, o dia de início configurado e o modo de progressão do dia.
4. Cada compilação de família valida `sandbox.profile_overrides` de `Scripts/ax_config/server.lua`. As quatro opções para todo o perfil são aplicadas após family/day valores e antes das regras invariáveis ​​restantes, de modo que cada perfil preparado use as mesmas opções configuradas.
5. As raízes do tempo de execução e de saída da web são ancoradas na pasta mod resolvida. O modo singleplayer é reduzido a uma saída mod-local antes da seleção.
6. `ax_cycle/calendar.lua` lê o marcador sandbox e o estado de rotação recuperável e, em seguida, cria uma active/prepared decisão para este processo de jogo.
7. `ax_sandbox/writer.lua` serializa e valida o perfil preparado e, em seguida, usa uma substituição transacional para o alvo selecionado.
8. O estado de rotação é confirmado somente após o transação sandbox foi bem-sucedida. Uma falha de confirmação de estado é degradada: os adaptadores e as mensagens do jogador preparado são ignorados porque o estado da sandbox e da fila não concordam.
9. No modo dedicado, `ax_external/bridge.lua` avalia os adaptadores opcionais em relação ao perfil ativo. Durante a primeira inicialização, não existe nenhum marcador ativo, portanto, o configured/random perfil de início do dia preparado é o único mapeamento de adaptador disponível.
10. O status do tempo de execução JSON/text e a HTML/JSON visualização da Web são reescritos a partir da mesma decisão. Os avisos do jogador são instalados por último.

O `cycle.check_interval_ms=0` executa essa sequência uma vez na inicialização. Se um operador fornece um intervalo positivo e UE4SS expõe `LoopAsync`, retornos de chamada posteriores reutilizam a seleção de propriedade do processo. Eles podem reparar ou reexportar essa seleção, mas não escolhem outro dia durante o mesmo processo.

<a id="rotation-state-machine"></a>
## Máquina de estado de rotação

| Estado da seleção | Condição de entrada | Resultado preparado | Recuperação segura |
|---|---|---|---|
| `bootstrap_prepare_first_family_start_day` | Nenhum marcador ativo e não recuperável estado preparado. | Primeira posição configurada ou selecionada aleatoriamente em uma ordem de dia persistida recentemente. | Manter a sessão existente em execução; reinicie somente após `prepared_ready=true`. |
| `active_marker_found_family_locked_prepare_next_day` | O dia ativo não é a última posição no pedido armazenado. | Próxima posição armazenada na mesma família. | Se a persistência falhar, mantenha o servidor parado e reconcilie o sandbox e o estado de rotação. |
| `active_marker_found_completed_run_prepare_next_unused_family` | O dia ativo é a última posição no pedido armazenado. | Primeira posição de um novo pedido na próxima execução familiar qualificada. | Confirme o novo family/day/order antes de reiniciar. |
| `state_recovery_rewrite_prepared_profile_no_reroll` | Nenhum marcador ativo, mas o estado de rotação nomeia um perfil preparado. | O mesmo perfil na fila é reconstruído. | Preservar os arquivos de estado; não os exclua para forçar uma nova rolagem. |
| `supervision_reconfirm_prepared_profile_no_advance` | Um retorno de chamada posterior é executado no mesmo processo. | O mesmo perfil preparado. | Diagnosticar o primeiro estágio com falha; retornos de chamada repetidos não são novas seleções. |

`selected_run` sempre usa `selected_family`. `rotation_run` consome o pedido qualificado configurado. `non_repeating_random_run` escolhe entre as famílias elegíveis restantes e inicia um novo pool depois que todas forem concluídas. Cada modo mantém uma família até que todos os 17 IDs diários exclusivos em `day_order` sejam concluídos. O modo sequencial termina após o Dia 17 quando o início configurado não é o Dia 1; O modo aleatório sem repetição armazena uma permutação e nunca a rola novamente durante a recuperação.

<a id="sandbox-transaction"></a>
## Transação sandbox

O gravador renderiza todas as chaves em ordem canônica e valida tipos, intervalos, regras fixas, valores de marcadores e identidade de perfil antes de gravar. A substituição segue esta ordem:

1. remover um arquivo pendente obsoleto somente quando for seguro fazê-lo;
2. preservar ou parar em sidecars de recuperação pré-existentes;
3. escrever os bytes pendentes;
4. ler o arquivo pendente de volta e validá-lo;
5. criar um backup de operação verificado quando existe um destino;
6. manter o original como o arquivo de reversão da transação;
7. promover o arquivo pendente;
8. ler e validar o arquivo de produção;
9. restaurar o original retido se a promoção ou validação de produção falhar;
10. reter os dados de recuperação e relatar a falha se a limpeza não puder ser verificado.

A primeira gravação usa o mesmo pending/readback/validation caminho. Sem o destino original, não há nada para restaurar, portanto, uma falha na primeira gravação não deve ser relatada como uma recuperação do arquivo original.

<a id="adapter-boundary"></a>
## Limite do adaptador

Os adaptadores são RandomDay-owned definições de patch para mods instalados separadamente. A ponte requer primeiro um caminho de destino reconhecido e uma armadura de clave completa. Ele corrige apenas as atribuições existentes, cria backups de operações, aplica cada arquivo planejado como uma transação e reverte todos os alvos afetados se alguma etapa falhar. Alvos ausentes e incompatíveis são resultados opcionais normais.

RandomDay não carrega código de terceiros em seu pacote. Um layout baseado em fixture prova o comportamento do analisador e da transação do RandomDay's comportamento do analisador e da transação, e não que uma versão de terceiros tenha carregado ou usado os valores em um processo de jogo.

<a id="output-boundary"></a>
## Limite de saída

Os arquivos de tempo de execução são gerados abaixo `RandomDay/runtime/` e `RandomDay/web_export/`; none é uma entrada de lançamento ZIP. O gravador de status remove os caminhos do adaptador local da máquina dos diagnósticos JSON diagnóstico. O caminho completo, esquema, cadência e mapa de retenção estão em [Runtime Files And Status](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md).

<a id="failure-ownership"></a>
## Propriedade da falha

| Estágio com falha | Consequência visível ao proprietário |
|---|---|
| Perfil ou INI validação | Nenhuma tentativa de gravação de produção é tentada. |
| Pendentewrite/readback | Os bytes de produção existentes permanecem em vigor. |
| Backup de operação | A substituição é interrompida antes que o original seja movido. |
| Promoção ou validação de produção | É feita uma tentativa de restauração automática e seu resultado é relatado. |
| Persistência do estado de rotação | Podem existir bytes de sandbox preparados, mas a transição está degradada e adapters/messages são ignorados. |
| Compatibilidade do adaptador | O destino permanece inalterado com `not_installed` ou `skipped_incompatible`. |
| Adaptador write/readback | Todos os destinos do adaptador alterados são restaurados quando possível. |
| Status ou exportação da web | O resultado do sandbox permanece oficial; a falha de saída é registrada e não deve ser tratada como um relatório de sucesso. |

Follow [Operações](OPERA%C3%87%C3%95ES.md) para recuperação e [Solução de problemas](SOLU%C3%87%C3%83O_DE_PROBLEMAS.md) para verificações dos primeiros sintomas.

<a id="evidence-limit"></a>
## Limite de evidências

O conjunto de fixtures Lua local pode provar comportamento de origem, invariantes de perfil gerados, ramificações de transação, formas de saída e limites de pacote. Ele não prova uma construção de Fator Abiótico atual, um UE4SS versão, um painel de servidor específico, cada tamanho de exibição ou uma versão mod de terceiros não testada. Essas afirmações permanecem `not tested` até que uma execução de compatibilidade nomeada seja registrada.
