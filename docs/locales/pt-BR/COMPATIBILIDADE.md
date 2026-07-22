<a id="compatibility"></a>
# Compatibilidade

> **Fonte canônica em inglês:** [COMPATIBILITY.md](../../COMPATIBILITY.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


<a id="supported-installations"></a>
## Instalações suportadas

RandomDay foi criada para instalações do Abiotic Factor que podem carregar UE4SS mods Lua.

| Ambiente | Suporte | Pacote |
| --- | --- | --- |
| Windows dedicado servidor | Suportado | servidor dedicado ZIP |
| Windows singleplayer ou LAN host | Fluxo de trabalho de cópia manual compatível | Singleplayer/LAN ZIP |
| Servidor Linux usando Wine ou Proton | Não testado na versão | O pacote dedicado do Windows pode ser avaliado por operadores experientes, mas nenhuma promessa de compatibilidade é feita. |
| Xbox e PlayStation | Não suportado | Essas plataformas não fornecem acesso a arquivos e UE4SS caminho de carregamento Lua exigido por esta versão. |

RandomDay não combina os dois pacotes. Um servidor dedicado que é iniciado apenas para jogos ocasionais ainda usa o servidor dedicado ZIP e seleciona um comportamento temporário na configuração.

<a id="abiotic-factor-updates"></a>
## Atualizações do Fator Abiótico

Após uma atualização do jogo, comece com o servidor parado e mantenha uma cópia restaurável do mundo, `SandboxSettings.ini` atual e o RandomDay estado. Confirme UE4SS carregamentos, complete um RandomDay ciclo e verifique o perfil ativo e preparado antes de retomar a rotação normal.

<a id="companion-mods"></a>
## Mods complementares

RandomDay altera um mod instalado separadamente somente quando seu layout completo de configurações corresponde a um adaptador compatível. Um número de versão por si só não é suficiente.

| Integração | Versão atual revisada | RandomDay limite de suporte |
| --- | --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | `0.8.5`; arquivo principal `0.8.5-Hotfix1` | O layout `SharedData.lua` layout abrange as configurações de spawn, cooldown, população, portal, violação, chefe e RandomDay encontro listadas na referência do adaptador. |
| Lasers Letais | `1.0-UE4SS` | O layout `Scripts/main.lua` o layout abrange configurações de emissor reconhecido, emissor ambiental, refletor e prisma. |
| ANTE Up | `1`, atualizado em 19 de julho de 2026 | O layout público atual não concluiu a fixação do adaptador. RandomDay ignora um arquivo sem correspondência inalterado até que o layout seja verificado. |

Um mod complementar ausente, desativado ou não reconhecido permanece inalterado. Consulte [Mods opcionais suportados](ADAPTADORES_SUPORTADOS.md) para configurações exatas, controles de configuração, comportamento de backup e etapas de recuperação.

<a id="what-compatibility-validation-proves"></a>
## O que a validação de compatibilidade comprova

A validação do repositório pode provar o layout do pacote enviado, a cobertura da configuração, os campos do adaptador reconhecidos, o comportamento de backup e restauração e a rejeição segura de um layout desconhecido. Ele não pode provar todos os Fatores Abióticos futuros, UE4SS ou versão mod complementar. As notas de lançamento nomeiam as versões testadas em vez de assumir a compatibilidade de um carregamento bem-sucedido.
