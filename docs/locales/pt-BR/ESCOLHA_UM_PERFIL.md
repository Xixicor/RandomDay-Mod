<a id="choose-the-kind-of-game-you-want"></a>
# Escolha o tipo de jogo que você deseja

> **Fonte canônica em inglês:** [CHOOSE_A_PROFILE.md](../../CHOOSE_A_PROFILE.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


RandomDay inclui 289 conjuntos prontos de regras mundiais. Eles são organizados em 17 **famílias**, com 17 **perfis** em cada família:

- uma família é um estilo de jogo amplo, como sobrevivência, construção, furtividade ou exploração;
- um perfil é um conjunto completo de regras dentro desse estilo de jogo; e
- o número do perfil é chamado de dia porque RandomDay passa por essas 17 posições conforme o servidor é reiniciado. Não é um dia do calendário do mundo real.

Comece com a tabela abaixo. Escolha a linha que mais se aproxima da sessão desejada e abra uma ou duas páginas de família para comparar seus efeitos exatos.

<a id="start-with-a-playstyle"></a>
## Comece com um estilo de jogo

| Você deseja | Comece com | Compare esses efeitos |
|---|---|---|
| Combate direto frequente ou mais nítido tiroteios | [Ação](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_A%C3%87%C3%83O.md), [Horda](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_HORDA.md), [Caça ao Chefe](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_CA%C3%87A_AO_CHEFE.md) ou [Precisão](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_PRECIS%C3%83O.md) | Contagem de inimigos, nível de encontro, precisão, dano e dias de recuperação |
| Detecção, escuridão ou pressão de patrulha | [Furtividade](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_FURTIVOS.md), [Pesadelo](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_PESADELO.md) ou [Bloqueio de segurança](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_BLOQUEIO_DE_SEGURAN%C3%87A.md) | Visibilidade, velocidade de detecção, polarização noturna, robôs e intervalos de segurança |
| Fome, clima, contaminação ou atrito | [Sobrevivência](PERFIS/FAM%C3%8DLIAS/SOBREVIV%C3%8ANCIA_FAM%C3%8DLIA_DE_PERFIL.md), [Resistido](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_RESISTIDO.md) ou [Biohazard](PERFIS/FAM%C3%8DLIAS/PERFIL_DE_RISCO_BIOL%C3%93GICO_FAM%C3%8DLIA.md) | Recursos, água, radiação, clima, durabilidade e penas de morte |
| Crescimento de base, transporte, estoque ou planejamento de fornecimento | [Construtor](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_CONSTRUTOR.md) ou [Logística](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_LOG%C3%8DSTICA.md) | Tamanho da pilha, estoque, peso, durabilidade, potência e pressão de construção |
| Viagens, portais, rotas de saque ou exploração | [Expedição](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_EXPEDI%C3%87%C3%83O.md), [Anteverso](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_ANTEVERSO.md) ou [Scavenger](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_LIMPEZA.md) | Movimento, pressão do portal, recompensas, risco de rota e tempo longe da base |
| Combinações imprevisíveis ou um amplo desafio final | [Experimental](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_EXPERIMENTAL.md) ou [Teste de conformidade](PERFIS/FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_TESTE_DE_CONFORMIDADE.md) | Todos os dias nessas progressões deliberadamente misturadas |

Essas sugestões são de navegação, não substituem valores exatos. Cada página de família lista os principais efeitos, domínio classificações, contexto do encontro, todas as 46 configurações de sandbox e seleções de adaptadores opcionais para todos os dias.

<a id="confirm-the-exact-family-and-day"></a>
## Confirme a família e o dia exatos

1. Abra a página da família e compare todas as posições de 17 dias.
2. Use a [referência completa do perfil](PERFIS/REFER%C3%8ANCIA_COMPLETA_DO_PERFIL.md) para comparar nomes de perfis e regras de interpretação em todas as 289 combinações.
3. Usar[chaves de configuração de sandbox](PERFIS/CHAVES_DE_CONFIGURA%C3%87%C3%95ES_DO_SANDBOX.md) para interpretar cada valor bruto, intervalo compatível, faixa de pontuação e padrão de perfil enviado.
4. Usar[`profiles.generated.json`](../../profiles/profiles.generated.json) quando as ferramentas precisam do perfil exato legível por máquina, dicionário e fonte de tradução.

<a id="configure-the-chosen-experience"></a>
## Configure a experiência escolhida

Follow [Escolha uma experiência](CONFIGURA%C3%87%C3%83O.md#choose-an-experience) para defina o modo familiar, a lista de famílias qualificadas, o comportamento do dia inicial e a ordem dos dias sequencial ou aleatória não repetida. RandomDay persiste a ordem escolhida; a recuperação não refaz silenciosamente uma execução familiar em andamento.
