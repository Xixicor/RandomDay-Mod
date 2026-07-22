<a id="randomday---full-profile-reference"></a>
# RandomDay - Referência completa do perfil

> **Fonte canônica em inglês:** [FULL_PROFILE_REFERENCE.md](../../../profiles/FULL_PROFILE_REFERENCE.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Versão: `v0.3.16-alpha`

Esta referência gerada cobre todos os 289 perfis em 17 famílias. Ele é gerado a partir das mesmas tabelas de perfil Lua e dicionário de tradução usados ​​em tempo de execução; os valores brutos permanecem oficiais.

<a id="read-the-reference"></a>
## Leia a referência

- As classificações gerais e de domínio são calculadas a partir de todas as 46 SandboxSettings chaves mais a pressão do encontro.
- O texto em linguagem simples é consultivo. Os valores exatos são mantidos ao lado de cada explicação.
- As configurações ativas se aplicam à inicialização atual. As configurações preparadas serão aplicadas somente após a próxima reinicialização.
- As seleções opcionais do adaptador são solicitações; o status do tempo de execução registra se um adaptador instalado realmente correspondeu e foi verificado.

<a id="families"></a>
## Famílias

- [Ação](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_A%C3%87%C3%83O.md): mais tiros, combate mais visível, menos furtividade.
- [Sobrevivência](FAM%C3%8DLIAS/SOBREVIV%C3%8ANCIA_FAM%C3%8DLIA_DE_PERFIL.md): Menos inimigos, ameaças mais fortes, maiores recompensas e menos perdão.
- [Furtividade](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_FURTIVOS.md): Evite a detecção. A instalação está ouvindo com mais atenção do que o normal.
- [Horda](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_HORDA.md): Problema de quantidade. A instalação ordenou muitos hostis.
- [Caça ao Chefe](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_CA%C3%87A_AO_CHEFE.md): Raros encontros graves com recompensas em nível de troféu e erros em nível de troféu.
- [Scavenger](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_LIMPEZA.md): As rotas de saque são lucrativas, lotadas e moralmente sem supervisão.
- [Construtor](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_CONSTRUTOR.md): Expansão da base e logística com objeções estruturais ocasionais.
- [Expedição](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_EXPEDI%C3%87%C3%83O.md): Execução focada em viagens. As rotas são importantes; persistir é desencorajado.
- [Bloqueio de segurança](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_BLOQUEIO_DE_SEGURAN%C3%87A.md): Ordem, robôs, patrulhas, detecção e muitos procedimentos.
- [Biohazard](FAM%C3%8DLIAS/PERFIL_DE_RISCO_BIOL%C3%93GICO_FAM%C3%8DLIA.md): Pragas, contaminação, problemas de água e higiene legalmente vaga.
- [Anteverso](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_ANTEVERSO.md): Pressão do portal, variantes e efeitos colaterais dimensionais.
- [Pesadelo](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_PESADELO.md): Escuridão, pavor, ameaças raras e graves e silêncio erros.
- [Resistido](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_RESISTIDO.md): Sobrevivência ambiental: clima, radiação, energia, fome, sede.
- [Precisão](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_PRECIS%C3%83O.md): Menos inimigos, mira mais nítida, maior punição por exposição.
- [Logística](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIS_DE_LOG%C3%8DSTICA.md): Transporte, inventário, durabilidade, peso, corridas de suprimentos, economia de preparação.
- [Experimental](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_EXPERIMENTAL.md): Combinações estranhas, mesas instáveis, resistências estranhas.
- [Teste de conformidade](FAM%C3%8DLIAS/FAM%C3%8DLIA_DE_PERFIL_DE_TESTE_DE_CONFORMIDADE.md): Um exame final de 17 dias sobre as piores ideias da instalação.

<a id="profile-index"></a>
## Índice de perfil

| Família | Dia | Perfil | Condições |
|---|---:|---|---|
| Ação | 1 | Orientação de fogo ativo | Pressão padrão (1.85/5) |
| Ação | 2 | Escaramuça de piso aberto | Condições favoráveis (1.29/5) |
| Ação | 3 | Exercício de controle de pragas | Pressão padrão (2.14/5) |
| Ação | 4 | Supply Run Firefight | Condições favoráveis (1.47/5) |
| Ação | 5 | Contato de segurança | Pressão padrão (2.03/5) |
| Ação | 6 | Engajamento resistido | Pressão padrão (2.02/5) |
| Ação | 7 | Night Raid | Pressão padrão (2.03/5) |
| Ação | 8 | Route Runner | Pressão padrão (1.81/5) |
| Ação | 9 | Ração Riot | Pressão padrão (2.17/5) |
| Ação | 10 | Recuperação de escolta | Condições favoráveis (1.05/5) |
| Ação | 11 | Metas de treinamento | Condições favoráveis (1.46/5) |
| Ação | 12 | Black Lab Assault | Pressão padrão (2.49/5) |
| Ação | 13 | Extended Fireline | Pressão padrão (2.22/5) |
| Ação | 14 | Supply Closet Miracle | Condições favoráveis (1.02/5) |
| Ação | 15 | Auditoria de precisão ao vivo | Pressão padrão (1.97/5) |
| Ação | 16 | Experimental Crossfire | Pressão padrão (2.09/5) |
| Ação | 17 | Jogo de Guerra de Conformidade | Condições exigentes (2.72/5) |
| Sobrevivência | 1 | Ingestão Silenciosa | Pressão padrão (2.02/5) |
| Sobrevivência | 2 | Protocolo de Barricada | Condições favoráveis (1.41/5) |
| Sobrevivência | 3 | Silêncio Contaminado | Pressão padrão (2.35/5) |
| Sobrevivência | 4 | Dívida do Catador | Condições favoráveis (1.61/5) |
| Sobrevivência | 5 | Bloqueio de segurança | Pressão padrão (2.26/5) |
| Sobrevivência | 6 | Abrigo Aviso | Pressão padrão (2.2/5) |
| Sobrevivência | 7 | Lights Out | Pressão padrão (2.25/5) |
| Sobrevivência | 8 | Do Not Linger | Pressão padrão (1.97/5) |
| Sobrevivência | 9 | Teste de despensa vazia | Pressão padrão (2.4/5) |
| Sobrevivência | 10 | Recuperação silenciosa | Condições favoráveis (1.14/5) |
| Sobrevivência | 11 | Risco medido | Condições favoráveis (1.62/5) |
| Sobrevivência | 12 | Análise do Predator | Condições exigentes (2.76/5) |
| Sobrevivência | 13 | Sobrevivência em turno longo | Pressão padrão (2.57/5) |
| Sobrevivência | 14 | Falsa calma | Condições favoráveis (1.29/5) |
| Sobrevivência | 15 | Visto primeiro, morto primeiro | Pressão padrão (2.28/5) |
| Sobrevivência | 16 | Condições não aprovadas | Pressão padrão (2.33/5) |
| Sobrevivência | 17 | Teste de evasão final | Condições exigentes (3.01/5) |
| Furtividade | 1 | Orientação sussurrada | Pressão padrão (2.03/5) |
| Furtividade | 2 | Silêncio autorizado | Condições favoráveis (1.43/5) |
| Furtividade | 3 | O andar ouviu você | Pressão padrão (2.34/5) |
| Furtividade | 4 | Evidências embolsadas | Condições favoráveis (1.63/5) |
| Furtividade | 5 | Varredura de segurança silenciosa | Pressão padrão (2.21/5) |
| Furtividade | 6 | Previsão: perfil discreto | Pressão padrão (2.2/5) |
| Furtividade | 7 | Liberação de rota escura | Pressão padrão (2.22/5) |
| Furtividade | 8 | Trânsito invisível | Pressão padrão (1.99/5) |
| Furtividade | 9 | Ração sem testemunhas | Pressão padrão (2.38/5) |
| Furtividade | 10 | Janela de reparo silencioso | Condições favoráveis (1.19/5) |
| Furtividade | 11 | Exercício de observação | Condições favoráveis (1.61/5) |
| Furtividade | 12 | Black Lab Blind Spot | Condições exigentes (2.62/5) |
| Furtividade | 13 | Longo silêncio Turno | Pressão padrão (2.55/5) |
| Furtividade | 14 | Falso Salão Vazio | Condições favoráveis (1.34/5) |
| Furtividade | 15 | Auditoria de Detecção | Pressão padrão (2.26/5) |
| Furtividade | 16 | Silêncio Experimental | Pressão padrão (2.21/5) |
| Furtividade | 17 | Não comparecimento final | Condições exigentes (2.83/5) |
| Horda | 1 | Erro de número de funcionários | Pressão padrão (1.82/5) |
| Horda | 2 | Excesso de andar aberto | Condições favoráveis (1.32/5) |
| Horda | 3 | Sobrereserva de pragas | Pressão padrão (2.13/5) |
| Horda | 4 | Debandada da linha de abastecimento | Condições favoráveis (1.46/5) |
| Horda | 5 | Controle de multidão arquivado incorretamente | Pressão padrão (2.02/5) |
| Horda | 6 | Clima dos corpos | Pressão padrão (1.99/5) |
| Horda | 7 | Atendimento no turno noturno | Pressão padrão (2.02/5) |
| Horda | 8 | Congestionamento de rotas | Pressão padrão (1.8/5) |
| Horda | 9 | Motim na fila de ração | Pressão padrão (2.14/5) |
| Horda | 10 | Brevemente menos lotado | Condições favoráveis (1.08/5) |
| Horda | 11 | Pico de população em treinamento | Condições favoráveis (1.47/5) |
| Horda | 12 | Revisão da multidão do Black Lab | Pressão padrão (2.42/5) |
| Horda | 13 | Formação de linhas estendidas | Pressão padrão (2.23/5) |
| Horda | 14 | Fila do armário de fornecimento | Condições favoráveis (1.07/5) |
| Horda | 15 | Precisão por volume | Pressão padrão (1.98/5) |
| Horda | 16 | Densidade experimental da multidão | Pressão padrão (2.1/5) |
| Horda | 17 | Problema de comparecimento final | Pressão padrão (2.58/5) |
| Caça ao Chefe | 1 | Orientação do troféu | Pressão padrão (1.98/5) |
| Caça ao Chefe | 2 | Construção da isca | Condições favoráveis (1.45/5) |
| Caça ao Chefe | 3 | Aviso de jogo pequeno | Pressão padrão (2.28/5) |
| Caça ao Chefe | 4 | Trilha de recompensa | Condições favoráveis (1.62/5) |
| Caça ao Chefe | 5 | Problema autorizado do Apex | Pressão padrão (2.16/5) |
| Caça ao Chefe | 6 | Pedreira desgastada | Pressão padrão (2.13/5) |
| Caça ao Chefe | 7 | Movimento do troféu noturno | Pressão padrão (2.16/5) |
| Caça ao Chefe | 8 | Rota de alvo rápido | Pressão padrão (1.93/5) |
| Caça ao Chefe | 9 | Hungry Trophy Case | Pressão padrão (2.29/5) |
| Caça ao Chefe | 10 | Taxidermy Break | Condições favoráveis (1.2/5) |
| Caça ao Chefe | 11 | Practice Hunt | Condições favoráveis (1.61/5) |
| Caça ao Chefe | 12 | Black Lab Specimen | Condições exigentes (2.62/5) |
| Caça ao Chefe | 13 | Long Hunt Shift | Pressão padrão (2.39/5) |
| Caça ao Chefe | 14 | Quiet Bait Day | Condições favoráveis (1.19/5) |
| Caça ao Chefe | 15 | Auditoria de troféus de precisão | Pressão padrão (2.12/5) |
| Caça ao Chefe | 16 | Experimental Apex | Pressão padrão (2.24/5) |
| Caça ao Chefe | 17 | Quadro de troféus final | Condições exigentes (2.79/5) |
| Scavenger | 1 | Ética de inventário solto | Pressão padrão (1.79/5) |
| Scavenger | 2 | Aquisição de piso aberto | Condições favoráveis (1.28/5) |
| Scavenger | 3 | Lanches questionáveis | Pressão padrão (2.08/5) |
| Scavenger | 4 | Dividendo de execução de fornecimento | Condições favoráveis (1.47/5) |
| Scavenger | 5 | Verificação de recebimento de segurança | Pressão padrão (1.98/5) |
| Scavenger | 6 | Venda de rota resistida | Pressão padrão (1.95/5) |
| Scavenger | 7 | Permissão de mercado noturno | Pressão padrão (1.98/5) |
| Scavenger | 8 | Taxa de liberação de rota | Pressão padrão (1.75/5) |
| Scavenger | 9 | Arbitragem de ração | Pressão padrão (2.07/5) |
| Scavenger | 10 | Silencioso Janela de lucro | Condições favoráveis (1.04/5) |
| Scavenger | 11 | Resgate de treinamento | Condições favoráveis (1.47/5) |
| Scavenger | 12 | Liquidação do Black Lab | Pressão padrão (2.43/5) |
| Scavenger | 13 | Inventário de longo prazo | Pressão padrão (2.14/5) |
| Scavenger | 14 | Suply Closet Jackpot | Condições favoráveis (1.02/5) |
| Scavenger | 15 | Imposto de precisão | Pressão padrão (1.92/5) |
| Scavenger | 16 | Marcação experimental | Pressão padrão (2.12/5) |
| Scavenger | 17 | Auditoria final de bolsos | Condições exigentes (2.68/5) |
| Construtor | 1 | Orientação de zoneamento | Pressão padrão (1.71/5) |
| Construtor | 2 | Autorização de piso aberto | Condições favoráveis (1.22/5) |
| Construtor | 3 | Problema de umidade da fundação | Pressão padrão (1.95/5) |
| Construtor | 4 | Requisição de material | Condições favoráveis (1.39/5) |
| Construtor | 5 | Inspeção de permissão | Pressão padrão (1.87/5) |
| Construtor | 6 | Aviso de atraso devido ao clima | Pressão padrão (1.84/5) |
| Construtor | 7 | Variação noturna de construção | Pressão padrão (1.86/5) |
| Construtor | 8 | Rota para o hardware | Condições favoráveis (1.66/5) |
| Construtor | 9 | Concreto racionado | Pressão padrão (1.93/5) |
| Construtor | 10 | Janela de construção de recuperação | Condições favoráveis (0.99/5) |
| Construtor | 11 | Trilho de segurança Seminário | Condições favoráveis (1.39/5) |
| Construtor | 12 | Código de construção do Black Lab | Pressão padrão (2.29/5) |
| Construtor | 13 | Enquadramento de turno estendido | Pressão padrão (1.99/5) |
| Construtor | 14 | Armário de fornecimento aprovado | Condições favoráveis (0.95/5) |
| Construtor | 15 | Precisão de medições | Pressão padrão (1.82/5) |
| Construtor | 16 | Planta baixa experimental | Pressão padrão (2.0/5) |
| Construtor | 17 | Revisão final de ocupação | Pressão padrão (2.52/5) |
| Expedição | 1 | Instruções de partida | Pressão padrão (1.86/5) |
| Expedição | 2 | Erro na lista de embalagem | Condições favoráveis (1.29/5) |
| Expedição | 3 | Quilometragem de hidratação | Pressão padrão (2.19/5) |
| Expedição | 4 | Dividendo de rota longa | Condições favoráveis (1.47/5) |
| Expedição | 5 | Contato do ponto de verificação | Pressão padrão (2.06/5) |
| Expedição | 6 | Rota de aviso meteorológico | Pressão padrão (2.03/5) |
| Expedição | 7 | Night Road Protocol | Pressão padrão (2.05/5) |
| Expedição | 8 | Route Runner Plus | Pressão padrão (1.82/5) |
| Expedição | 9 | Rações por distância | Pressão padrão (2.22/5) |
| Expedição | 10 | Redefinição do acampamento | Condições favoráveis (1.05/5) |
| Expedição | 11 | Desvio de treinamento | Condições favoráveis (1.47/5) |
| Expedição | 12 | Viagem de campo do Black Lab | Pressão padrão (2.52/5) |
| Expedição | 13 | Turno de trânsito estendido | Pressão padrão (2.29/5) |
| Expedição | 14 | Descoberta de cache de suprimentos | Condições favoráveis (1.03/5) |
| Expedição | 15 | Ponto de referência de precisão | Pressão padrão (1.99/5) |
| Expedição | 16 | Desvio experimental | Pressão padrão (2.11/5) |
| Expedição | 17 | Exame final de expedição | Condições exigentes (2.78/5) |
| Bloqueio de segurança | 1 | Verificação de crachá Orientação | Pressão padrão (2.02/5) |
| Bloqueio de segurança | 2 | Arquivo de barricada | Condições favoráveis (1.43/5) |
| Bloqueio de segurança | 3 | Ponto de verificação de hidratação | Pressão padrão (2.33/5) |
| Bloqueio de segurança | 4 | Rota de fornecimento de contrabando | Condições favoráveis (1.63/5) |
| Bloqueio de segurança | 5 | Varredura de segurança total | Pressão padrão (2.23/5) |
| Bloqueio de segurança | 6 | Aviso de bloqueio climático | Pressão padrão (2.19/5) |
| Bloqueio de segurança | 7 | Expansão da patrulha noturna | Pressão padrão (2.23/5) |
| Bloqueio de segurança | 8 | Aceleração de pontos de verificação | Pressão padrão (1.99/5) |
| Bloqueio de segurança | 9 | Inspeção de ração | Pressão padrão (2.36/5) |
| Bloqueio de segurança | 10 | brevemente não assistida | Condições favoráveis (1.17/5) |
| Bloqueio de segurança | 11 | Treinamento com testemunhas | Condições favoráveis (1.62/5) |
| Bloqueio de segurança | 12 | Resposta de segurança do Black Lab | Condições exigentes (2.65/5) |
| Bloqueio de segurança | 13 | Bloqueio de horas extras | Pressão padrão (2.45/5) |
| Bloqueio de segurança | 14 | Mandado de armário de fornecimento | Condições favoráveis (1.16/5) |
| Bloqueio de segurança | 15 | Auditoria de precisão formal | Pressão padrão (2.16/5) |
| Bloqueio de segurança | 16 | Protocolo de segurança experimental | Pressão padrão (2.2/5) |
| Bloqueio de segurança | 17 | Exame final de bloqueio | Condições exigentes (2.89/5) |
| Biohazard | 1 | Contaminação aceitável | Pressão padrão (2.03/5) |
| Biohazard | 2 | Descontaminação de piso aberto | Condições favoráveis (1.43/5) |
| Biohazard | 3 | Água potável questionável Plus | Pressão padrão (2.26/5) |
| Biohazard | 4 | Execução de fornecimento de amostra | Condições favoráveis (1.63/5) |
| Biohazard | 5 | A contenção era opcional | Pressão padrão (2.22/5) |
| Biohazard | 6 | Evento climático de saneamento | Pressão padrão (2.25/5) |
| Biohazard | 7 | Falha na desinfecção noturna | Pressão padrão (2.28/5) |
| Biohazard | 8 | Aviso de contaminação de rota | Pressão padrão (1.99/5) |
| Biohazard | 9 | Audiência sobre deterioração de ração | Pressão padrão (2.29/5) |
| Biohazard | 10 | Rumor de sala limpa | Condições favoráveis (1.19/5) |
| Biohazard | 11 | Treinamento com luvas | Condições favoráveis (1.63/5) |
| Biohazard | 12 | Revisão da biografia do Black Lab | Condições exigentes (2.61/5) |
| Biohazard | 13 | Turno de quarentena estendido | Pressão padrão (2.43/5) |
| Biohazard | 14 | Fornecimento Armário estéril | Condições favoráveis (1.16/5) |
| Biohazard | 15 | Precisão de espirros | Pressão padrão (2.15/5) |
| Biohazard | 16 | Exposição experimental | Pressão padrão (2.19/5) |
| Biohazard | 17 | Exame final de contenção | Condições exigentes (2.88/5) |
| Anteverso | 1 | Ingestão dimensional | Pressão padrão (1.88/5) |
| Anteverso | 2 | Geometria de piso aberto | Condições favoráveis (1.3/5) |
| Anteverso | 3 | Hidratação Entre ângulos | Pressão padrão (2.18/5) |
| Anteverso | 4 | Fornecimento de outro lugar | Condições favoráveis (1.48/5) |
| Anteverso | 5 | Violação de segurança de outro lugar | Pressão padrão (2.06/5) |
| Anteverso | 6 | Tempo nas paredes | Pressão padrão (2.04/5) |
| Anteverso | 7 | Cortesia do portal noturno | Pressão padrão (2.05/5) |
| Anteverso | 8 | Rota através do erro | Pressão padrão (1.82/5) |
| Anteverso | 9 | Desvio do cronograma de ração | Pressão padrão (2.2/5) |
| Anteverso | 10 | Janela de realidade estável | Condições favoráveis (1.07/5) |
| Anteverso | 11 | Treinamento com variáveis | Condições favoráveis (1.48/5) |
| Anteverso | 12 | Revisão dimensional do Black Lab | Pressão padrão (2.52/5) |
| Anteverso | 13 | Mudança estendida em outro lugar | Pressão padrão (2.29/5) |
| Anteverso | 14 | Paradoxo do armário de suprimentos | Condições favoráveis (1.05/5) |
| Anteverso | 15 | Precisão entre ângulos | Pressão padrão (2.0/5) |
| Anteverso | 16 | Antefase experimental | Pressão padrão (2.11/5) |
| Anteverso | 17 | Conformidade final da anteversa | Condições exigentes (2.77/5) |
| Pesadelo | 1 | Erro suavemente iluminado | Pressão padrão (2.03/5) |
| Pesadelo | 2 | Open Floor Dread | Condições favoráveis (1.43/5) |
| Pesadelo | 3 | Água no escuro | Pressão padrão (2.35/5) |
| Pesadelo | 4 | Forneça respiração no armário | Condições favoráveis (1.62/5) |
| Pesadelo | 5 | Segurança debaixo da cama | Pressão padrão (2.27/5) |
| Pesadelo | 6 | Tempo com os dentes | Pressão padrão (2.21/5) |
| Pesadelo | 7 | Luzes apagadas para sempre | Pressão padrão (2.23/5) |
| Pesadelo | 8 | Não corra alto | Pressão padrão (1.99/5) |
| Pesadelo | 9 | Rações para a coisa | Pressão padrão (2.38/5) |
| Pesadelo | 10 | Recuperação atrás de uma porta | Condições favoráveis (1.15/5) |
| Pesadelo | 11 | Treinamento no escuro | Condições favoráveis (1.63/5) |
| Pesadelo | 12 | Revisão do pesadelo do Black Lab | Condições exigentes (2.75/5) |
| Pesadelo | 13 | Longo turno depois da meia-noite | Pressão padrão (2.56/5) |
| Pesadelo | 14 | Falso dia | Condições favoráveis (1.3/5) |
| Pesadelo | 15 | Precisão das sombras | Pressão padrão (2.29/5) |
| Pesadelo | 16 | Medo experimental | Pressão padrão (2.33/5) |
| Pesadelo | 17 | Pesadelo final prático | Condições exigentes (2.99/5) |
| Resistido | 1 | Orientação de previsão | Pressão padrão (1.99/5) |
| Resistido | 2 | Cisalhamento do vento em piso aberto | Condições favoráveis (1.39/5) |
| Resistido | 3 | Aconselhamento sobre hidratação | Pressão padrão (2.34/5) |
| Resistido | 4 | Desbotamento da rota de abastecimento | Condições favoráveis (1.59/5) |
| Resistido | 5 | Segurança em baixa visibilidade | Pressão padrão (2.2/5) |
| Resistido | 6 | Desculpas do Departamento de Meteorologia | Pressão padrão (2.15/5) |
| Resistido | 7 | Vigilância noturna de tempestades | Pressão padrão (2.19/5) |
| Resistido | 8 | Aviso de inundação na rota | Pressão padrão (1.93/5) |
| Resistido | 9 | Teste de umidade de ração | Pressão padrão (2.4/5) |
| Resistido | 10 | Janela de abrigo | Condições favoráveis (1.14/5) |
| Resistido | 11 | Segurança Treinamento de guarda-chuva | Condições favoráveis (1.59/5) |
| Resistido | 12 | Revisão climática do Black Lab | Condições exigentes (2.74/5) |
| Resistido | 13 | Mudança de exposição estendida | Pressão padrão (2.5/5) |
| Resistido | 14 | Ponto seco do armário de fornecimento | Condições favoráveis (1.11/5) |
| Resistido | 15 | Precisão em vento cruzado | Pressão padrão (2.16/5) |
| Resistido | 16 | Célula meteorológica experimental | Pressão padrão (2.25/5) |
| Resistido | 17 | Clima final Auditoria | Condições exigentes (3.0/5) |
| Precisão | 1 | Orientação de mira | Pressão padrão (2.02/5) |
| Precisão | 2 | Plano de linha de visão aberta | Condições favoráveis (1.43/5) |
| Precisão | 3 | Hidratação atrás da cobertura | Pressão padrão (2.32/5) |
| Precisão | 4 | Linha de fogo de fornecimento | Condições favoráveis (1.62/5) |
| Precisão | 5 | Tiro de segurança | Pressão padrão (2.21/5) |
| Precisão | 6 | Nota sobre balística climática | Pressão padrão (2.19/5) |
| Precisão | 7 | Auditoria de visão noturna | Pressão padrão (2.23/5) |
| Precisão | 8 | Índice de exposição de rota | Pressão padrão (1.99/5) |
| Precisão | 9 | Ração sob fogo | Pressão padrão (2.35/5) |
| Precisão | 10 | Recuperação atrás da cobertura | Condições favoráveis (1.18/5) |
| Precisão | 11 | Treinamento com cobertura | Condições favoráveis (1.61/5) |
| Precisão | 12 | Black Lab Revisão de precisão | Condições exigentes (2.64/5) |
| Precisão | 13 | Mudança de linha de visão estendida | Pressão padrão (2.5/5) |
| Precisão | 14 | Ponto cego do armário de abastecimento | Condições favoráveis (1.34/5) |
| Precisão | 15 | Auditoria de precisão | Pressão padrão (2.25/5) |
| Precisão | 16 | Balística experimental | Pressão padrão (2.22/5) |
| Precisão | 17 | Exame de precisão final | Condições exigentes (2.85/5) |
| Logística | 1 | Orientação de inventário | Pressão padrão (1.72/5) |
| Logística | 2 | Armazenamento em piso aberto | Condições favoráveis (1.22/5) |
| Logística | 3 | Documentação de hidratação | Pressão padrão (2.0/5) |
| Logística | 4 | Celebração da cadeia de suprimentos | Condições favoráveis (1.4/5) |
| Logística | 5 | Segurança de recebimentos | Pressão padrão (1.89/5) |
| Logística | 6 | Frete resistido | Pressão padrão (1.87/5) |
| Logística | 7 | Estoque noturno | Pressão padrão (1.9/5) |
| Logística | 8 | Memorando de otimização de rota | Condições favoráveis (1.68/5) |
| Logística | 9 | Ration Ledger | Pressão padrão (1.99/5) |
| Logística | 10 | Recovery Repack | Condições favoráveis (0.99/5) |
| Logística | 11 | Treinamento de etiqueta de segurança | Condições favoráveis (1.4/5) |
| Logística | 12 | Revisão de logística do Black Lab | Pressão padrão (2.32/5) |
| Logística | 13 | Turno de transporte estendido | Pressão padrão (2.05/5) |
| Logística | 14 | Auditoria milagrosa do armário de suprimentos | Condições favoráveis (0.97/5) |
| Logística | 15 | Precisão da contagem | Pressão padrão (1.84/5) |
| Logística | 16 | Inventário experimental | Pressão padrão (2.03/5) |
| Logística | 17 | Exame final de logística | Pressão padrão (2.55/5) |
| Experimental | 1 | Orientação variável | Pressão padrão (1.89/5) |
| Experimental | 2 | Hipótese de piso aberto | Condições favoráveis (1.31/5) |
| Experimental | 3 | Controle de água questionável | Pressão padrão (2.21/5) |
| Experimental | 4 | Viés de amostra de fornecimento | Condições favoráveis (1.5/5) |
| Experimental | 5 | Grupo de controle de segurança | Pressão padrão (2.08/5) |
| Experimental | 6 | Anomalia climática | Pressão padrão (2.07/5) |
| Experimental | 7 | Variável noturna | Pressão padrão (2.09/5) |
| Experimental | 8 | Rota Deriva de teste | Pressão padrão (1.84/5) |
| Experimental | 9 | Experiência de ração | Pressão padrão (2.24/5) |
| Experimental | 10 | Janela de controle de recuperação | Condições favoráveis (1.07/5) |
| Experimental | 11 | Erro de dados de treinamento | Condições favoráveis (1.5/5) |
| Experimental | 12 | Revisão de variável do Black Lab | Pressão padrão (2.56/5) |
| Experimental | 13 | Execução de teste estendida | Pressão padrão (2.35/5) |
| Experimental | 14 | Armário de suprimentos Outlier | Condições favoráveis (1.05/5) |
| Experimental | 15 | Variável de precisão | Pressão padrão (2.02/5) |
| Experimental | 16 | Condições experimentais aprovadas | Pressão padrão (2.13/5) |
| Experimental | 17 | Resultado experimental final | Condições exigentes (2.8/5) |
| Teste de conformidade | 1 | Ingestão de conformidade | Pressão padrão (1.97/5) |
| Teste de conformidade | 2 | Conformidade estrutural | Condições favoráveis (1.38/5) |
| Teste de conformidade | 3 | Conformidade com hidratação | Pressão padrão (2.31/5) |
| Teste de conformidade | 4 | Conformidade com fornecimento | Condições favoráveis (1.58/5) |
| Teste de conformidade | 5 | Conformidade com segurança | Pressão padrão (2.19/5) |
| Teste de conformidade | 6 | Conformidade com o clima | Pressão padrão (2.14/5) |
| Teste de conformidade | 7 | Conformidade noturna | Pressão padrão (2.2/5) |
| Teste de conformidade | 8 | Conformidade com rotas | Pressão padrão (1.93/5) |
| Teste de conformidade | 9 | Conformidade com rações | Pressão padrão (2.35/5) |
| Teste de conformidade | 10 | Conformidade de recuperação | Condições favoráveis (1.13/5) |
| Teste de conformidade | 11 | Conformidade de treinamento | Condições favoráveis (1.58/5) |
| Teste de conformidade | 12 | Conformidade com Black Lab | Condições exigentes (2.67/5) |
| Teste de conformidade | 13 | Conformidade com horas extras | Pressão padrão (2.51/5) |
| Teste de conformidade | 14 | Conformidade milagrosa de fornecimento | Condições favoráveis (1.22/5) |
| Teste de conformidade | 15 | Conformidade com precisão | Pressão padrão (2.17/5) |
| Teste de conformidade | 16 | Conformidade experimental | Pressão padrão (2.22/5) |
| Teste de conformidade | 17 | Teste final de conformidade | Condições exigentes (2.9/5) |
