<a id="troubleshooting"></a>
# Solução de problemas

> **Fonte canônica em inglês:** [TROUBLESHOOTING.md](../../TROUBLESHOOTING.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Pare na primeira verificação com falha. Preserve a sandbox atual, `runtime/`, `web_export/`, e `UE4SS.log` relevante antes de tentar a recuperação.

<a id="try-these-common-fixes-first"></a>
## Tente primeiro estas correções comuns

1. **RandomDay nunca aparece:** confirme `RandomDay` está diretamente dentro de `ue4ss/Mods`, habilite `RandomDay : 1` em `mods.txt` e comece uma vez.
2. **A sessão atual manteve suas regras antigas:** isso é normal. RandomDay prepara o próximo perfil; o jogo carrega-o mais tarde.
3. **O mesmo perfil continua retornando:** um painel do servidor pode estar substituindo `SandboxSettings.ini`. Use um arquivo sandbox oficial e compare os nomes ativos e preparados em `web_export/today.html`.
4. **Um mod opcional não seguiu o perfil:** open [Mods opcionais suportados](ADAPTADORES_SUPORTADOS.md). Um mod opcional ausente, desativado ou não reconhecido permanece inalterado.
5. **RandomDay relata uma falha de gravação ou restauração:** pare antes de outra reinicialização, preserve `runtime/backups/` e siga a seção de recuperação nomeada abaixo.

Se essas cinco verificações não identificarem o problema, continue com a árvore de decisão detalhada.

<a id="choose-the-first-failed-stage"></a>
## Escolha o primeiro estágio com falha

Use a primeira linha que corresponda ao que você realmente pode provar. Não comece com a explicação mais severa e não combine falhas de saída não relacionadas em um diagnóstico.

| O que você pode observar | Verifique primeiro | Continue com | Resultado esperado |
|---|---|---|---|
| Nenhuma `[RandomDay]` a linha de início existe em `UE4SS.log`. | Instalar raiz, marcadores de pacote, `mods.txt` atual e o UE4SS inicialização Lua. | [Restaurar um arquivo ausente RandomDay início](#restore-a-missing-randomday-start) | Uma linha inicial nomeia o modo de lançamento e pacote, ou a falha está vinculada ao carregamento. |
| RandomDay foi carregado, mas nenhum perfil ficou pronto. | O primeiro erro de inicialização, configuração, destino, transação ou estado. | [Recuperar-se de falha na preparação](#recover-from-failed-preparation) e, em seguida, [status e referência de erro](REFER%C3%8ANCIA_DE_STATUS_E_ERRO.md) | Um código exato identifica a próxima ação segura. |
| Existe um perfil preparado, mas as regras de execução não foram alteradas. | IDs ativos e preparados em `today.json` ou `today.html`. | [Confirme o limite de reinicialização](#confirm-the-restart-boundary) | A sessão atual permanece ativa; o perfil preparado aguarda um início posterior. |
| O dia 1 ou outro dia se repete após as reinicializações. | Marcadores de sandbox antes do início do painel, após o início do painel, e após a preparação. | [Interromper a preparação repetida](#stop-repeated-preparation) | O autor autorizado ou ponto de substituição é identificado. |
| O sandbox está íntegro, mas um mod opcional foi ignorado ou falhou. | O resultado individual do adaptador e evidências de compatibilidade. | [Diagnosticar um adaptador ignorado](#diagnose-a-skipped-adapter) ou [Recuperar uma falha de reversão do adaptador](#recover-an-adapter-rollback-failure) | A integridade do adaptador é decidida independentemente do sandbox health. |
| O arquivo singleplayer/LAN manual está ausente. | Modo de pacote e pasta de saída limitada. | [Gerar um singleplayer/LAN arquivo](#generate-a-missing-singleplayerlan-file) | O arquivo é gerado dentro de RandomDay sem descobrir um salvamento pessoal. |
| Apenas a mensagem voltada para o jogador está faltando ou mal encapsulada. | Registro de passagem de mensagem, visualização da fonte e limites documentados. | [Diagnosticar um problema de mensagem](#diagnose-a-message-problem) | A apresentação é testada sem ser tratada como prova de perfil. |

<a id="follow-the-safe-diagnostic-order"></a>
### Siga as instruções ordem de diagnóstico segura

1. Preservar a evidência atual antes de alterar os arquivos.
2. Prove se RandomDay carregado.
3. Encontre o primeiro estágio que não atingiu seu resultado documentado.
4. Copie o status exato ou valor de erro da saída do tempo de execução.
5. Use a linha da tabela correspondente abaixo para obter uma resposta segura.
6. Leia o destino e o estado de rotação antes de outro início.

Se nenhuma linha corresponder, use [Estado de tempo de execução e referência de saída](SA%C3%8DDAS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md) para identificar o produtor e o significado do campo antes de alterar a configuração.

<a id="restore-a-missing-randomday-start"></a>
## Restaurar um arquivo ausente RandomDay início

**Causa limitada mais provável:** layout de extração incorreto, mod desativado, modo de pacote incorreto ou UE4SS não carregou o ponto de entrada Lua.

**Verificação exata:** confirmação `RandomDay/enabled.txt`, `.randomday_mode`, `.randomday_version` atual e o `RandomDay/Scripts/main.lua`; confirme `RandomDay : 1` em `mods.txt`; pesquise `UE4SS.log` por `[RandomDay]`.

**Resultado esperado:** uma linha inicial nomeia a identidade da versão e o modo do pacote.

**Próxima ação segura:** corrija o layout ou a ativação enquanto estiver parado e, em seguida, inicie uma vez.

**Não inferir:** não RandomDay linha não prova um bug no jogo ou no perfil.

<a id="confirm-the-restart-boundary"></a>
## Confirme o limite de reinicialização

**Causa limitada mais provável:** comportamento normal da próxima reinicialização.

**Verificação exata:** compare o perfil ativo e preparado family/day em `web_export/today.json` ou `today.html`.

**Resultado esperado:** o perfil preparado difere ou é explicitamente separado do perfil ativo.

**Próxima ação segura:** reinicie somente quando estiver pronto para ativá-lo e, em seguida, verifique o marcador ativo.

**Não inferir:** um perfil preparado não está ativo antes da reinicialização readback.

<a id="stop-repeated-preparation"></a>
## Interromper a preparação repetida

**Causa limitada mais provável:** o RandomDay marcador está faltando porque um painel do servidor ou outra ferramenta foi reescrito `SandboxSettings.ini` durante a inicialização.

**Verificação exata:** ativo compara o arquivo sandbox e seu RandomDay marcador imediatamente antes da inicialização, após o início do painel e depois de RandomDay prepara o arquivo.

**Resultado esperado:** o arquivo presente na próxima inicialização retém o marcador preparado.

**Próxima ação segura:** configura uma fonte de sandbox autorizada e desativa a reescrita do painel conflitante.

**Não inferir:** repetido Dia 1 não prova a família o seletor está randomizando incorretamente.

<a id="recover-from-failed-preparation"></a>
## Recuperar-se de falha na preparação

**Causa limitada mais provável:** gravação pendente, backup, promoção, leitura de produção, validação ou reversão falhou.

**Verificação exata:** leia o primeiro `[RandomDay] [ERROR]` linha e preserve o backup da operação nomeada. Inspecione `runtime/last_good/manifest.lua` antes de usar seu arquivo sandbox.

**Resultado esperado:** ou o arquivo anterior é verificado como restaurado ou o resultado relata claramente uma falha de restauração.

**Próxima ação segura:** mantenha o servidor parado e siga [recuperação manual](OPERA%C3%87%C3%95ES.md#manual-recovery).

**Não inferir:** a existência de um arquivo de backup por si só não prova que ele corresponde ao estado mundial ativo pretendido.

<a id="diagnose-a-skipped-adapter"></a>
## Diagnosticar um adaptador ignorado

**Causa limitada mais provável:** o mod está ausente ou o arquivo não corresponde a uma assinatura suportada.

**Verificação exata:** leia o resultado do adaptador e compare a versão instalada e o layout com [Adaptadores Mod Suportados](ADAPTADORES_SUPORTADOS.md).

**Resultado esperado:** `not_installed` para um alvo ausente ou `skipped_incompatible` para um alvo não reconhecido.

**Próxima ação segura:** deixe o arquivo inalterado, desative esse adaptador ou instale uma versão exata suportada de seu autor original.

**Não inferir:** um nome de arquivo semelhante ou uma versão mais recente não é prova de compatibilidade.

<a id="recover-an-adapter-rollback-failure"></a>
## Recuperar uma falha de reversão do adaptador

**Causa limitada mais provável:** a tentativa de gravação e a restauração automática não puderam ser verificadas.

**Verificação exata:** preserve o destino, irmão pending/rollback, status do adaptador e backup do adaptador mais recente em `runtime/backups/`.

**Resultado esperado:** o resultado é `rollback_failed`, não `applied`.

**Próxima ação segura:** parar o mod/server afetado e restaure o backup verificado manualmente antes de outra inicialização.

**Não inferir:** RandomDay's resultado do sandbox primário afetado não prova que um destino de adaptador separado está íntegro.

<a id="generate-a-missing-singleplayerlan-file"></a>
## Gerar um singleplayer/LAN arquivo

**Causa limitada mais provável:** o pacote dedicado foi instalado, o marcador de modo é inválido ou RandomDay não foi carregado.

**Verificação exata:** `.randomday_mode` deve conter `singleplayer_manual`; então confirme o RandomDay iniciar linha e inspecionar `runtime/singleplayer_manual/SandboxSettings.ini`.

**Resultado esperado:** o arquivo existe dentro do RandomDay somente pasta.

**Próxima ação segura:** instale o pacote correto de forma limpa e inicie uma vez.

**Não inferir:** RandomDay não pesquisará nem gravará o mundo de destino em seu nome.

<a id="diagnose-a-message-problem"></a>
## Diagnosticar um problema de mensagem

**Causa limitada mais provável:** nenhum personagem de jogador válido estava disponível na passagem agendada, o transporte de aviso estava indisponível ou a exibição do cliente envolveu o texto de forma diferente.

**Verificação exata:** inspecione o `[RandomDay]` log de mensagens e compare a mensagem de origem com o comprimento documentado limit.

**Resultado esperado:** o tempo de execução informa se uma passagem de mensagem foi executada; a validação de origem informa o comprimento máximo.

**Próxima ação segura:** verifique a resolução pretendida do cliente. Mantenha a verificação do jogo e do perfil separada do resultado da mensagem.

**Não inferir:** uma mensagem visível não prova que o perfil sandbox foi aplicado, e uma mensagem ausente não prova que a preparação falhou.
<a id="four-profile-wide-choices-returned-to-the-shipped-values"></a>
## Quatro opções para todo o perfil retornaram aos valores enviados

**Causa limitada mais provável:** somente o gerado `SandboxSettings.ini` foi editado ou `server.lua` foi alterado enquanto o mesmo processo Lua ainda estava em execução.

**Verificação exata:** pare o jogo ou servidor dedicado, abra `RandomDay/Scripts/ax_config/server.lua` e confirme se o bloco `sandbox.profile_overrides` salvo contém os quatro valores pretendidos.

**Resultado esperado:** após o próximo início, a cada novo preparado family/day recém-preparado contém os valores escolhidos. As rotações posteriores do perfil e as inicializações do servidor continuam usando o mesmo bloco.

**Próxima ação segura:** corrija o bloco, comece uma vez e inspecione o perfil preparado. Não corrija apenas o arquivo sandbox gerado porque uma preparação posterior irá substituí-lo.

<a id="look-up-an-exact-status"></a>
## Procure um status exato

Depois que a árvore de decisão identificar o estágio com falha, copie o valor `status`, `transaction_status`, `rollback_status` ou `error` valor da exportação de tempo de execução. Use [status e referência de erro](REFER%C3%8ANCIA_DE_STATUS_E_ERRO.md) para saber seu significado e uma resposta segura do operador. Texto semelhante em um painel ou console não substitui o valor exportado.

Falhas no ambiente de teste somente para colaboradores pertencem a [validação de versão](VALIDA%C3%87%C3%83O_DE_VERS%C3%83O.md#avoid-validation-environment-pitfalls), não ao caminho de recuperação do operador.
