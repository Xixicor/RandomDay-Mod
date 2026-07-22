<a id="start-here-complete-the-first-randomday-cycle"></a>
# Comece aqui: conclua o primeiro RandomDay ciclo

> **Fonte canônica em inglês:** [START_HERE.md](../../START_HERE.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Este guia começa após RandomDay ser instalado. Ele mostra o que o mod muda, o que ele deixa de lado e como reconhecer um ciclo bem-sucedido.

<a id="know-the-two-states"></a>
## Conheça os dois estados

O Abiotic Factor lê as configurações da sandbox do mundo antes de RandomDay iniciar. RandomDay portanto mantém dois estados claramente nomeados:

- **Perfil ativo:** as regras que a sessão atual já está usando.
- **Perfil preparado:** as regras salvas para a próxima inicialização.

O perfil preparado não altera uma sessão já em andamento.

<a id="dedicated-server-prepare-the-next-profile"></a>
## Servidor dedicado: prepare a próxima profile

1. Inicie o servidor normalmente.
2. Aguarde RandomDay concluir seu trabalho de inicialização.
3. Abra `RandomDay/web_export/today.html` na pasta do mod instalado.
4. Localizar **Perfil ativo** e **Perfil preparado**.

No primeiro início bem-sucedido, a página deve nomear as regras já ativas e um perfil diferente aguardando a próxima partida. A página também explica a família escolhida, a posição e se o arquivo preparado passou na verificação de segurança.

Não reinicie apenas para fazer a mudança de status. Continue jogando com as regras ativas até o próximo início planejado do servidor.

<a id="dedicated-server-activate-it-later"></a>
## Servidor dedicado: ative-o mais tarde

1. Pare e inicie o servidor na próxima reinicialização planejada.
2. Abra a página de status legível novamente.
3. Confirme se o perfil preparado anteriormente agora está listado como ativo.
4. Confirme que RandomDay preparou o seguinte perfil.

Essa transição preparar-e-ativar é completa. RandomDay ciclo.

<a id="temporary-dedicated-servers"></a>
## Servidores dedicados temporários

O comportamento temporário usa o mesmo pacote de servidor dedicado. Em [Configuração](CONFIGURA%C3%87%C3%83O.md), escolha se uma nova execução começa em um perfil específico ou escolhe um ponto de partida aleatório. A página de status ainda separa o perfil ativo daquele preparado para a próxima inicialização.

<a id="singleplayer-or-lan"></a>
## Singleplayer ou LAN

1. Inicie o jogo uma vez com o singleplayer/LAN pacote instalado.
2. Feche o jogo completamente após RandomDay terminar.
3. Leia o resumo gerado.
4. Copie o gerado `SandboxSettings.ini` no mundo que você selecionou enquanto o jogo está fechado.
5. Comece esse mundo e confirme as regras esperadas.

O pacote local nunca escolhe um mundo ou copia o arquivo sozinho para um salvamento. Consulte [Singleplayer e LAN](SINGLEPLAYER_LAN.md) para obter o procedimento completo.

<a id="if-the-expected-result-is-missing"></a>
## Se o resultado esperado estiver faltando

Não continue reiniciando. Preserve os arquivos atuais e escolha o sintoma correspondente em [Solução de problemas](SOLU%C3%87%C3%83O_DE_PROBLEMAS.md). O resultado normal sempre nomeia um perfil ativo e um perfil preparado ou uma falha clara de preparação.

<a id="continue"></a>
## Continuar

- [Escolha um estilo de jogo](ESCOLHA_UM_PERFIL.md)
- [Escolha o comportamento inicial e de progressão](CONFIGURA%C3%87%C3%83O.md)
- [Operar e recuperar RandomDay](OPERA%C3%87%C3%95ES.md)
- [Entenda a rotação](ROTA%C3%87%C3%83O_FAMILIAR.md)
