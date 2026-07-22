<a id="install-update-or-remove-randomday"></a>
# Instalar, atualizar ou remover RandomDay

> **Fonte canônica em inglês:** [INSTALL.md](../../../INSTALL.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


RandomDay possui dois downloads completos. Escolha um para o mundo que você está configurando:

- use o **servidor dedicado ZIP** para qualquer servidor dedicado, incluindo um servidor aberto apenas para sessões ocasionais;
- use o **singleplayer/LAN ZIP** para um mundo local cujas configurações você copiará manualmente.

Não combine os pacotes. Um servidor dedicado persistente ou temporário é uma escolha em RandomDay's configurações, não um download diferente.

<a id="before-you-begin"></a>
## Antes de começar

Faça uma cópia restaurável de:

- o mundo que você está mudando;
- é atual `SandboxSettings.ini`;
- o existente `RandomDay` pasta, se houver alguma instalada.

InstalarUE4SS antes RandomDay. Nas instruções abaixo, a **pasta Mods** significa a `ue4ss/Mods/` diretório dentro do jogo ou instalação do servidor dedicado.

<a id="dedicated-server"></a>
## Servidor dedicado

<a id="new-installation"></a>
### Nova instalação

1. Pare o servidor.
2. Abra seu UE4SS `Mods` pasta.
3. Extraia o servidor dedicado ZIP. O resultado deve ser um `ue4ss/Mods/RandomDay/` pasta, não uma pasta dentro de outra `RandomDay` pasta.
4. Abra essa pasta e confirme que `RandomDay/Scripts/main.lua` está presente. Se estiver faltando, o ZIP foi extraído no nível errado.
5. Abra UE4SS `mods.txt` e ative esta linha:

   ```text
   RandomDay : 1
   ```

6. Inicie o servidor normalmente.
7. Abra RandomDay's página de status legível e confirma que ela nomeia o perfil ativo e o perfil preparado para a próxima inicialização.

A primeira inicialização não substitui as regras já carregadas por aquela sessão. Prepara o próximo perfil. Inicie o servidor novamente somente quando você realmente quiser que o perfil preparado se torne ativo.

[Verifique o primeiro ciclo](COMECE_AQUI.md)

<a id="choose-always-on-or-temporary-behavior"></a>
### Escolha o comportamento sempre ativo ou temporário

O pacote de servidor dedicado suporta ambos os estilos:

- **dedicado persistente** retoma a rotação salva nas reinicializações normais;
- **temporário dedicado** pode começar a partir do ponto inicial configurado ou aleatório quando uma nova execução temporária começa.

Escolha o comportamento em [Configuração](CONFIGURA%C3%87%C3%83O.md). Não instale um segundo pacote para alterar essa configuração.

<a id="update-an-existing-installation"></a>
### Atualize uma instalação existente

1. Pare o servidor). e faça os backups listados acima.
2. Mova a pasta `RandomDay` completa para fora da pasta UE4SS `Mods` Mantenha-a até que a atualização conclua um ciclo bem-sucedido.
3. Extraia o novo servidor dedicado ZIP no `Mods` pasta.
4. Reaplique apenas as configurações que você alterou intencionalmente e que ainda existem no novo [guia de configuração](CONFIGURA%C3%87%C3%83O.md).
5. Mantenha os arquivos de estado de rotação documentados apenas quando as notas de versão indicarem que seu formato é compatível. Não copie a saída temporária antiga ou arquivos de gravação com falha na nova instalação.
6. Confirme `RandomDay : 1` ainda está habilitado, então inicie o servidor uma vez e verifique os nomes dos perfis ativos e preparados.

<a id="updating-from-v0315-alpha"></a>
### Atualizando de v0.3.15-alpha

`RandomDay_v0.3.15-alpha.zip` era o antigo pacote base. `RandomDay_v0.3.15-alpha_singleplayer_patch.zip` era uma sobreposição e não um download independente.

Atual`v0.3.16-alpha` substitui o arranjo histórico de base e sobreposição por dois pacotes completos. Não coloque o patch antigo em nenhuma das embalagens. Os marcadores atuais são `.randomday_mode=dedicated_server` e `.randomday_mode=singleplayer_manual`.

<a id="singleplayer-or-lan"></a>
## Singleplayer ou LAN

O singleplayer/LAN cria um arquivo de configurações; ele não procura nem altera um salvamento pessoal por si só.

1. Feche o jogo.
2. Faça backup do mundo e de sua atual `SandboxSettings.ini`.
3. Extraia o singleplayer/LAN ZIP no jogo UE4SS `Mods` pasta então uma `Mods/RandomDay/` pasta existe.
4. Ativar`RandomDay : 1` em UE4SS `mods.txt`.
5. Inicie o jogo uma vez, espere RandomDay para terminar e feche o jogo completamente.
6. Encontre o gerado`SandboxSettings.ini` em RandomDay's `runtime/singleplayer_manual/` pasta.
7. Leia o resumo gerado e copie o arquivo no mundo que você escolheu.
8. Inicie esse mundo e verifique se o comportamento esperado do sandbox está ativo.

LAN usa o mesmo processo manual porque o host possui o mundo local. O mod não escolhe um mundo nem o substitui automaticamente.

[Singleplayer e LAN guia](SINGLEPLAYER_LAN.md)

<a id="remove-or-disable-randomday"></a>
## Remover ou desativar RandomDay

1. Pare o jogo ou servidor.
2. Faça backup do mundo, das configurações atuais do sandbox e RandomDay's estado.
3. Configure `RandomDay : 0` em UE4SS `mods.txt` para desativar o mod ou mova a pasta `RandomDay` completa para fora da pasta `Mods` para removê-la.
4. Decida qual `SandboxSettings.ini` deve ser carregado na próxima inicialização. Restaure sua cópia de pré-instalação se não quiser a preparada atualmente RandomDay perfil.
5. Inicie o mundo e confirme suas regras antes. excluindo qualquer backup.

Desativando RandomDay interrompe a preparação futura de perfis. Ele não reescreve o arquivo sandbox que já está aguardando no disco.

<a id="recover-from-an-unsuccessful-update"></a>
## Recuperar de uma atualização malsucedida

Parar após a primeira falha de limpeza. Reinicializações repetidas podem tornar mais difícil ver qual perfil estava ativo e qual estava aguardando.

1. Pare o jogo ou servidor.
2. Mova o. a instalação malsucedida de lado sem excluí-la.
3. Restaurar o RandomDay backup de pasta e sandbox feito antes da atualização.
4. Inicie uma vez e confirme os nomes dos perfis ativos e preparados restaurados.
5. Usar[Solução de problemas](SOLU%C3%87%C3%83O_DE_PROBLEMAS.md) para a primeira etapa ausente ou com falha antes de tentar outra atualização.

<a id="more-help"></a>
## Mais ajuda

- [Primeiro ciclo](COMECE_AQUI.md)
- [Escolha um perfil](ESCOLHA_UM_PERFIL.md)
- [Configuração](CONFIGURA%C3%87%C3%83O.md)
- [Operações e recuperação](OPERA%C3%87%C3%95ES.md)
- [Solução de problemas](SOLU%C3%87%C3%83O_DE_PROBLEMAS.md)
- [Compatibilidade](COMPATIBILIDADE.md)

Os mantenedores da versão podem encontrar verificações de compilação e pacote em [Validação de versão](VALIDA%C3%87%C3%83O_DE_VERS%C3%83O.md). Eles não são necessários para uma instalação normal.
