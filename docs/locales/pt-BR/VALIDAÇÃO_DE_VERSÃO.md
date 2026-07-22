<a id="release-validation"></a>
# Validação de versão

> **Fonte canônica em inglês:** [RELEASE_VALIDATION.md](../../RELEASE_VALIDATION.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Esta página é para contribuidores e mantenedores de versão. Os jogadores que instalam o mod não precisam executar esses comandos.

<a id="ordinary-user-proof"></a>
## Prova de usuário comum

Uma versão é compreensível quando um novo leitor pode escolher um dos dois pacotes, instalá-lo, identificar o perfil ativo e o perfil preparado e se recuperar de um resultado ausente seguindo o guia vinculado. Essas tarefas de leitura não devem exigir Git, PowerShell, Python ou checksum.

<a id="contributor-checks"></a>
## Verificações do contribuidor

Executar a partir da raiz do repositório:

```powershell
python -B tools/validate_repo.py
python -B -m unittest discover tests
```

Quando `luac` estiver disponível, verifique a sintaxe de cada arquivo Lua enviado:

```powershell
Get-ChildItem RandomDay -Recurse -Filter *.lua | ForEach-Object { luac -p $_.FullName }
```

Os testes de tempo de execução Lua exigem `lupa`. Um intérprete Lua ausente ou uma instalação `lupa` é um recurso de teste indisponível, não um resultado aprovado.

<a id="release-checks"></a>
## Verificações de liberação

```powershell
python -B tools/build_release_zip.py --check
git diff --check
```

A verificação de liberação verifica estas condições:

- `VERSION` e `RandomDay/.randomday_version` correspondência.
- Somente a versão atual existe em `releases/`.
- Os ZIPs dedicados e singleplayer/LAN são alternativas completas.
- Ambos os arquivos contêm o caminho canônico `RandomDay/Scripts/main.lua` e nenhum carregador de colisão de casos.
- Os marcadores de modo de pacote são `dedicated_server` e `singleplayer_manual`.
- ZIP bytes são determinísticos e correspondem `CHECKSUMS.sha256`.
- Nenhum dado de tempo de execução, configuração privada, credenciais, caches ou saída de teste são empacotados.
- Todos os links de documentação local e 27 páginas de entrada de localidade são validados.

<a id="avoid-validation-environment-pitfalls"></a>
## Evite armadilhas do ambiente de validação

- Execute verificações de gravação de repositório em série para que dois processos não substituam o mesmo arquivo temporário ao mesmo tempo.
- No Windows, verifique ZIP nomes de membros em vez de usar uma pesquisa de arquivo que não diferencia maiúsculas de minúsculas para decidir se existe um carregador em minúsculas.
- Confirme `mods.txt` e `enabled.txt` somente em um teste de servidor instalado; eles não são prova de que os testes de origem foram executados.
- Registre um tempo limite de comando como incompleto. Não o converta para aprovação ou reprovação sem a saída limitada do comando.
- Mantenha os arquivos temporários dentro dos `.tmp/` diretório.

<a id="known-limits"></a>
## Limites conhecidos

A validação local comprova contratos de origem, pacote, documentação e acessórios do repositório. Ele não prova a ordem de inicialização de um painel de servidor específico, o layout de mensagens de um cliente ativo ou um caminho de sistema de arquivos específico do host. Registre-os como resultados de integração separados quando forem testados.
