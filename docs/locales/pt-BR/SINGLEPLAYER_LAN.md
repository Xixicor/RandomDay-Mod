<a id="singleplayer-and-lan-manual-workflow"></a>
# Singleplayer e LAN fluxo de trabalho manual

> **Fonte canônica em inglês:** [SINGLEPLAYER_LAN.md](../../SINGLEPLAYER_LAN.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


RandomDay's singleplayer/LAN do RandomDay gera um `SandboxSettings.ini` completo dentro da pasta mod. Você escolhe o mundo e copia o arquivo manualmente enquanto o jogo é fechado.

O pacote está bloqueado para esta saída:

```text
RandomDay/runtime/singleplayer_manual/SandboxSettings.ini
```

Ele desativa gravações de sandbox de servidor dedicado, espelhos de sandbox e todas as gravações de adaptadores opcionais. Não pesquisa AppData, dados de usuário do Steam, documentos, pastas salvas, pastas de servidor ou pastas de mod de terceiros.

<a id="understand-the-manual-boundary"></a>
## Entenda o limite manual

Antes de começar, configure a experiência em `RandomDay/Scripts/ax_config/server.lua`. O pacote manual aceita `experience.mode="auto"` ou `"singleplayer_lan"`. Você pode escolher um primeiro dia fixo ou aleatório e um pedido de 17 dias sequencial ou aleatório não repetido. A seleção de família usa as mesmas configurações de família selecionada, de rotação ou aleatória sem repetição de um servidor dedicado.

A saída gerada contém o marcador RandomDay lê no próximo processo. Para manter o estado alinhado, copie o arquivo gerado para o mundo parado escolhido antes de iniciar outro processo de geração. Começar repetidamente sem copiar pode avançar a fila mod-local mesmo que o mundo nunca tenha carregado a saída anterior.

Siga o procedimento de instalação canônico [singleplayer ou LAN](INSTALA%C3%87%C3%83O.md#singleplayer-or-lan) para backup, colocação de pacotes, ativação, geração, manual cópia e verificação. Esta página explica o limite manual; não define outro método de instalação.

A primeira geração prepara um perfil; não pode alterar regras já carregadas por esse processo de jogo. Feche, copie e comece novamente para usá-lo. Repita o ciclo apenas quando desejar deliberadamente o próximo dia persistente.

Removendo RandomDay não restaura um arquivo mundial que você copiou manualmente; use seu próprio backup para essa reversão. Siga [Remover ou reverter qualquer instalação](INSTALA%C3%87%C3%83O.md#remove-or-disable-randomday) para obter o procedimento exato de remoção.
