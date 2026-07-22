<a id="supported-optional-mods"></a>
# Mods opcionais suportados

> **Fonte canônica em inglês:** [SUPPORTED_ADAPTERS.md](../../SUPPORTED_ADAPTERS.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


RandomDay pode fazer com que um mod instalado separadamente siga o perfil RandomDay ativo. Este recurso está disponível apenas no pacote de servidor dedicado. O singleplayer/LAN nunca edita outro mod.

RandomDay não inclui nem redistribui nenhum dos mods listados aqui. Instale e ative cada mod opcional em sua própria página do Nexus e siga primeiro as instruções do autor. RandomDay altera apenas configurações reconhecidas que já existem no arquivo instalado. Ele não adiciona recursos a outro mod e um adaptador pode ser desativado sem desinstalar esse mod. O pacote de servidor dedicado começa com `external_mods.enabled = true`.

<a id="what-randomday-changes"></a>
## Quais RandomDay alterações

| Integração opcional | Configurações selecionadas no perfil ativo |
| --- | --- |
| Chaotic Spawn Engine / DynamicSpawns | Modo rígido, player/area comportamento de resfriamento, atividade de tempestade e zona quente, spawns de chefes e burst, tempo de ciclo de spawn, intervalos de resfriamento pequenos e grandes, distância de spawn, global/local/mod limites, tempestade de portal, Chances de violação de ordem e chefe, e spawns mínimos por área. |
| Campos de extensão opcionais do Chaotic Spawn Engine | Quando o `SharedData.lua` já contém RandomDay campos de extensão, o adaptador pode fornecer perfil de encontro, nível, tema, limites de grupo, valores de eventos especiais e encontros mistos, orçamento, resfriamento e controles de escopo mundial. Este não é outro mod para baixar. |
| Lasers Letais | Ativação do mod, além de danos e ativação de controles para emissores implantáveis, emissores ambientais, refletores e prismas. |
| ANTE Up | Multiplicador de frequência de respawn, frequência Antevariant e os interruptores development/debug switches. RandomDay mantém todos os interruptores de desenvolvimento e depuração reconhecidos desligados. |

A biblioteca de perfis fornece um conjunto de valores preparado para cada dia com suporte. Um dia tranquilo pode reduzir a pressão, um dia de perigo pode aumentá-la e um dia de recuperação pode reduzi-la drasticamente. RandomDay não calcula valores arbitrários na inicialização; ele aplica o conjunto de valores revisado nomeado pelo perfil ativo.

<a id="current-version-evidence"></a>
## Evidência da versão atual

Esta tabela foi revisada em 20 de julho de 2026. “Reconhecido” significa que o adaptador lançado tem um dispositivo de layout local completo para as configurações nomeadas. Isso não significa que todas as versões futuras terão o mesmo formato de arquivo.

| Mod opcional | Versão upstream atual revisada | RandomDay status de lançamento |
| --- | --- | --- |
| [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156) | Página Nexus `0.8.5`; layout do arquivo principal atual `0.8.5-Hotfix1` | Reconhecido `DynamicSpawns/Scripts/SharedData.lua` para o conjunto completo de spawn, cooldown, limite, portal, violação e chefe. |
| Campos de extensão opcionais do Chaotic Spawn Engine | Nenhum campo opcional separado dentro do mesmo `SharedData.lua` | Aplicado somente quando todos os campos de extensão já existem. As instalações do Spawn Engine permanecem inalteradas quando esses campos estão ausentes. O ID do adaptador interno é `encounter_director`; ele não nomeia um mod público separado. |
| [Lasers Letais](https://www.nexusmods.com/abioticfactor/mods/141) | `1.0-UE4SS` | Reconhecido `LethalLasers/Scripts/main.lua` layout para todas as configurações de emissor, emissor de ambiente, refletor e prisma listadas acima. |
| [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201) | `1`, atualizado em 19 de julho de 2026 | O adaptador lançado reconhece o conjunto de campos `Settings.lua` conjunto de campos. A versão 1 não é reivindicada como compatível até que seu arquivo atual seja adicionado ao fixture e passe nos testes de transação do adaptador. Se seu layout for diferente, RandomDay relatórios `skipped_incompatible` e o deixa inalterado. |

<a id="how-recognition-protects-another-mod"></a>
## Como o reconhecimento protege outro mod

Encontrar um nome de arquivo familiar não é suficiente Antes de escrever, RandomDay verifica se todas as configurações necessárias para esse adaptador existem no arquivo de destino. Ele corrige apenas as atribuições existentes;

Para um layout reconhecido, RandomDay executa uma transação limitada:

1. calcula cada valor pretendido para o perfil ativo;
2. cria e verifica os bytes de um backup de cada arquivo de destino;
3. escreve através de um arquivo pendente irmão;
4. promove o arquivo pendente e leia os bytes salvos de volta;
5. confirme cada valor pretendido;
6. use a restauração automática dos backups verificados se alguma etapa falhar.

DynamicSpawns pode incluir suas configurações e arquivos de mensagens do jogador reconhecidos em uma transação. RandomDay não informa que a atualização de vários arquivos foi bem-sucedida, a menos que a transação completa seja concluída.

<a id="read-an-adapter-result"></a>
## Resultado da leitura de um adaptador

| Resultado | Significado |
| --- | --- |
| `applied` | As configurações reconhecidas foram alteradas e aprovadas na leitura. |
| `already_current` | As configurações reconhecidas já correspondiam ao perfil ativo. |
| `not_installed` | O mod opcional não foi encontrado. RandomDay continuou sem ele. |
| `skipped_incompatible` | Um arquivo foi encontrado, mas seu mod opcional não foi encontrado. o layout completo da configuração não foi reconhecido. Nada foi alterado. |
| `partial` | As configurações DynamicSpawns primárias foram aplicadas, mas um arquivo de mensagem traduzido opcional não foi concluído. Revise o resultado do adaptador registrado. |
| `failed_rolled_back` | Uma transação falhou e os bytes anteriores permaneceram intactos ou foram restaurados e verificados. |
| `rollback_failed` | RandomDay não foi possível verificar a alteração ou a restauração. Mantenha o mod afetado parado e restaure seu backup gravado manualmente. |

Mods opcionais ausentes e incompatíveis não impedem RandomDay's rotação de sandbox na configuração enviada.

<a id="enable-or-disable-integrations"></a>
## Ativar ou desativar integrações

Os controles estão em:

```text
RandomDay/Scripts/ax_config/server.lua
```

O pacote de servidor dedicado é fornecido com:

```lua
external_mods = {
    enabled = true,
    optional_by_default = true,
    patch_only_existing_keys = true,
    backup_before_write = true,
    adapters = {
        "lethal_lasers",
        "dynamic_spawns",
        "encounter_director",
        "ante_up"
    }
}
```

- Configure `enabled = false` para impedir RandomDay de inspecionar ou alterar cada mod opcional.
- Remova um ID do adaptador para deixar esse mod sozinho enquanto mantém as outras integrações ativas.
- Mantenha `patch_only_existing_keys` e `backup_before_write` definido como `true`. Eles são o limite de segurança contra gravação.
- Mantenha `optional_by_default = true` a menos que cada mod opcional listado seja uma parte obrigatória do servidor. Configurá-lo como `false` faz com que um adaptador ausente, incompatível ou revertido com segurança afete o resultado agregado.

Você não precisa desinstalar ou desabilitar um mod opcional ao desabilitar seu RandomDay adaptador.

<a id="thanks-and-ownership"></a>
## Agradecimentos e propriedade

Agradecimentos aos autores e mantenedores de [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156), [Lasers Letais](https://www.nexusmods.com/abioticfactor/mods/141) atual e o [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201). Seus mods permanecem downloads separados regidos por suas próprias páginas, permissões e instruções de suporte. RandomDay's os adaptadores usam apenas campos de configuração presentes em um layout reconhecido e instalado; eles não redistribuem ou substituem esses mods.

<a id="backups-and-manual-recovery"></a>
## Backups e recuperação manual

Cópias pré-gravadas verificadas são retidas em:

```text
RandomDay/runtime/backups/external_<transaction>_<adapter>/
```

Se `rollback_failed` aparece:

1. parar o jogo ou servidor;
2. definir `external_mods.enabled = false` ou remova o ID do adaptador afetado;
3. preservar o arquivo de destino atual e seus arquivos pending/rollback irmãos;
4. corresponder os arquivos de backup numerados aos caminhos de destino registrados no resultado do adaptador;
5. restaurar os bytes verificados enquanto o serviço está interrompido;
6. inicia o mod opcional sozinho antes de reativar seu RandomDay adaptador.

Não force a compatibilidade renomeando configurações ou adicionando chaves ausentes. Use um layout reconhecido, deixe o adaptador desabilitado ou adicione um novo dispositivo de versão e teste de transação antes de expandir a reivindicação de suporte.
