# RandomDay em português do Brasil

> [!IMPORTANT]
> ## Status do projeto — testes do RandomDay concluídos
>
> A operação de testes do RandomDay foi concluída, e o servidor público de testes será fechado em breve.
>
> Durante essa operação, RandomDay e RandomDayGuard funcionaram juntos em rotações repetidas de perfis, reinicializações normais e interrompidas do servidor, verificações de recuperação e reversão, integração com mods estendidos, coleta de evidências do servidor e análise dos relatórios do operador.
>
> Com isso, obtivemos o conhecimento que buscávamos: como perfis rotativos de sandbox se comportam durante ciclos de vida reais de um servidor dedicado; como o RandomDay interage com os mods estendidos compatíveis; e até que ponto o RandomDayGuard pode transformar as evidências gravadas pelo servidor em monitoramento útil e cauteloso, sem apresentar lacunas ou suposições como fatos.
>
> **Conjunto usado no servidor de testes:**
>
> - RandomDay build privada de desenvolvimento `v0.41.76`
> - RandomDayGuard build privada de desenvolvimento `v0.46.130`
> - Chaotic Spawn Engine / DynamicSpawns `0.8.5 Hotfix 1`
> - Lethal Lasers `1.0 UE4SS`
> - ANTE Up `0.26`
> - Encounter Director integration — uma extensão do DynamicSpawns pertencente ao RandomDay, não um mod distribuído separadamente
> - UE4SS `v3.0.1 Beta #0` (Git `01e0a584`; Nexus `v3.0.1-940-g01e0a584`)
> - servidor dedicado do Abiotic Factor `1.4.0.27939`
>
> Os pacotes publicados atualmente continuam sendo RandomDay `v0.3.16-alpha` e RandomDayGuard `v0.4.12-alpha`.
>
> O desenvolvimento dos dois projetos está pausado por enquanto. As versões e a documentação existentes continuarão disponíveis, e talvez retornemos quando sentirmos novamente vontade de continuar o trabalho.
>
> Este conjunto documenta o que foi usado durante a operação; ele não é um requisito de versão mínima nem uma garantia de compatibilidade com versões posteriores do jogo, do loader ou dos mods. O último ciclo registrado formalmente usou Abiotic Factor `1.4.0.27939`.

**v0.3.16-alpha**

RandomDay prepara um `SandboxSettings.ini` completo para a próxima inicialização
de Abiotic Factor. Ele não altera as regras já carregadas pela sessão atual. O
perfil ativo e o perfil preparado permanecem separados.

## Instalar e comprovar

Siga o [guia de instalação](INSTALA%C3%87%C3%83O.md). A pasta correta é
`ue4ss/Mods/RandomDay` e `mods.txt` deve conter `RandomDay : 1`. A primeira
inicialização normalmente prepara; uma inicialização posterior ativa o perfil.

Confira `runtime/current/randomday_status.json`, `runtime/rotation_state.txt` e
`web_export/today.json`. Os três devem mostrar identidades ativa e preparada
coerentes.

## Escolher a experiência

Configure modo, família, dia inicial e progressão em
`RandomDay/Scripts/ax_config/server.lua`. Consulte [Início](COMECE_AQUI.md),
[Escolher perfil](ESCOLHA_UM_PERFIL.md), [Configuração](CONFIGURA%C3%87%C3%83O.md)
e [Operações](OPERA%C3%87%C3%95ES.md).

`HardcoreMode=False`, `AllowIronMode=False`, `StructuralSupportLimit=0` e
`BridgeSupports=0` são padrões desta versão, não regras fixas do jogo. A
[configuração avançada](CONFIGURA%C3%87%C3%83O.md#customize-the-shipped-profile-defaults)
explica como alterá-los de forma durável.

Comandos, caminhos, chaves e estados permanecem em inglês para corresponder aos arquivos.

## Versão alfa e escolhas persistentes

Esta é uma versão alfa. Os caminhos documentados de instalação, rotação e recuperação foram testados; compatibilidade e facilidade de uso continuam sendo aprimoradas.

Em `RandomDay/Scripts/ax_config/server.lua`, `sandbox.profile_overrides` mantém os quatro valores para todas as famílias e dias. Pare o servidor, altere uma vez e inicie novamente. As rotações e inicializações seguintes usam os mesmos valores; alterar somente `SandboxSettings.ini` é temporário.

- [Chaotic Spawn Engine](https://www.nexusmods.com/abioticfactor/mods/156)
- [Lethal Lasers](https://www.nexusmods.com/abioticfactor/mods/141)
- [ANTE Up](https://www.nexusmods.com/abioticfactor/mods/201)

Os mods opcionais abaixo são downloads separados de seus autores. O RandomDay não os redistribui nem altera seus recursos; um adaptador ativado ajusta apenas configurações existentes e compatíveis. Agradecemos aos autores e mantenedores.

## Biblioteca de documentação completa

Todos os documentos públicos do Markdown estão disponíveis neste idioma com nomes de arquivos localizados.

- [Abra o índice de documentação localizada](DOCUMENTA%C3%87%C3%83O.md)
