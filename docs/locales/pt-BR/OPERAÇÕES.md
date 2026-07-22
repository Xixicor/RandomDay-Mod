<a id="operate-active-prepared-and-recovery-state"></a>
# Operar estado ativo, preparado e de recuperação

> **Fonte canônica em inglês:** [OPERATIONS.md](../../OPERATIONS.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


RandomDay altera o arquivo sandbox para uma inicialização futura. Isso não altera as regras já carregadas em uma sessão do Fator Abiótico em execução.

Esta página contém decisões do operador e procedimentos de recuperação. Use [Glossário](GLOSS%C3%81RIO.md) para termos canônicos, [arquivos de tempo de execução](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md) para propriedade de caminho e [Saídas de tempo de execução](SA%C3%8DDAS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md) para esquemas exatos e significados de campos.

<a id="distinguish-active-and-prepared-state"></a>
## Distinguir estado ativo e preparado

Um perfil preparado não está ativo até que uma inicialização posterior leia seu marcador. Não use o family/day preparado para descrever a sessão atual.

Usar`web_export/today.html` para um resumo legível e `web_export/today.json` para o estado exato. Confirme o marcador ativo, a identidade preparada, `prepared_ready`, `profile_status`, o resultado da transação, o resultado da reversão e o resultado do commit do estado antes de decidir reiniciar.

<a id="follow-the-normal-dedicated-server-sequence"></a>
## Siga a sequência normal do servidor dedicado

| Antes | Ação | Depois |
|---|---|---|
| Nenhuma RandomDay marcador | Comece com RandomDay ativado. | A sessão atual mantém as regras existentes; RandomDay cria e mantém uma ordem diária e depois prepara a primeira configured/random posição. |
| Primeira posição preparada | Reiniciar. | Esse dia se torna ativo; a próxima posição armazenada na mesma família é preparada. |
| Posição intermediária ativa | Reiniciar após revisar o perfil preparado. | O dia preparado torna-se ativo e a posição armazenada seguinte é preparada. |
| Posição final ativa | Reiniciar após revisar a próxima família. | A primeira posição de outro pedido de família elegível torna-se ativa. |

`selected_run` mantém a família configurada. `non_repeating_random_run` mantém uma família escolhida aleatoriamente durante todos os cargos de 17 dias e evita reutilizar uma família até que a lista elegível se esgote. `rotation_run` segue a ordem familiar configurada. `cycle.day_progression_mode` controla a ordem do dia independentemente da seleção da família.

Uma nova instalação sempre precisa de um processo para preparar e um processo posterior para ativar. Isso vale para servidores persistentes, servidores temporários e singleplayer/LAN geração manual.

<a id="read-the-right-evidence"></a>
## Leia as evidências corretas

Use a [mapa de arquivo de tempo de execução](ARQUIVOS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md) para localizar o estado de rotação, status atual, últimos arquivos válidos, backups de operações, exportações e `UE4SS.log`. Use o [referência de saída de tempo de execução](SA%C3%8DDAS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md) para cada grupo de campos, esquema, estado vazio, significado de falha e regra de retenção. Os HTML e JSON exportações resumem o estado de origem; eles não provam que um perfil foi usado por um cliente de jogo ao vivo.

Se `prepared_ready` é `false` ou `profile_status` é `degraded_state_persistence`, mantenha o servidor parado até que o sandbox e o estado de rotação concordem. Uma gravação de sandbox válida com persistência de estado de falha não é uma transição preparada e saudável.

<a id="respond-to-writer-outcomes"></a>
## Responder aos resultados do gravador

RandomDay prepara os novos bytes em um arquivo irmão, os lê de volta, valida a sandbox completa, preserva o original quando existe, promove o novo arquivo e o lê novamente. Ele relata que está pronto somente após a leitura de produção concordar.

Se a promoção ou validação de produção falhar, RandomDay tenta restaurar o arquivo mantido por essa operação. Uma falha na restauração é uma parada brusca: mantenha o servidor parado e recupere-o manualmente em vez de reiniciá-lo repetidamente.

<a id="respond-to-adapter-outcomes"></a>
## Responder aos resultados do adaptador

Usar[Adaptadores compatíveis](ADAPTADORES_SUPORTADOS.md#read-an-adapter-result) para a tabela canônica de resultados de seis estados e a próxima ação. Tratar `rollback_failed` como uma parada brusca; o backup do adaptador gravado separadamente é a fonte de recuperação.

Os adaptadores afetam apenas os mods instalados separadamente. Eles nunca ativam um RandomDay perfil sandbox preparado.

Em uma inicialização normal, os valores do adaptador são selecionados no perfil ativo porque o mod instalado separadamente pode ser carregado posteriormente na mesma UE4SS inicialização. Durante a primeira inicialização, quando não existe nenhum marcador RandomDay ativo, o perfil do dia inicial preparado é o único mapeamento disponível. Esta regra de tempo é separada do limite da sandbox da próxima reinicialização e ainda depende do comportamento de carregamento do outro mod.

<a id="manual-recovery"></a>
## Recuperação manual

1. Pare o jogo ou servidor. Não recupere um arquivo enquanto ele estiver aberto.
2. Copie o `SandboxSettings.ini`, `runtime/` atual e o `web_export/` para um backup de diagnóstico separado.
3. Inspecione `runtime/last_good/manifest.lua` e a entrada relevante mais recente em `runtime/backups/`. Escolha um arquivo cujo family/day e hash correspondam ao estado que você pretende restaurar.
4. Copie o arquivo verificado selecionado para o caminho da sandbox primária configurado.
5. Leia-o novamente e confirme que está completo antes de começar.
6. Comece uma vez e inspecione o marcador ativo e o estado preparado. Não presuma que a recuperação foi bem-sucedida apenas pela ausência de uma mensagem de erro.

Se não existir nenhum backup verificado, restaure o backup do operador criado antes da instalação. RandomDay não é possível reconstruir um arquivo que nunca foi legível.

<a id="account-for-control-panel-writes"></a>
## Conta para gravações no painel de controle

Alguns painéis de servidor geram `SandboxSettings.ini` durante a inicialização. RandomDay não pode preservar um perfil preparado se outra ferramenta o substituir após a verificação da gravação. Configure uma fonte de sandbox autorizada e verifique o marcador de arquivo imediatamente antes e depois de reiniciar ao diagnosticar uma repetição do Dia 1 ou uma transição ausente.
