<a id="randomday-profile-documentation"></a>
# RandomDay documentação do perfil

> **Fonte canônica em inglês:** [README.md](../../../profiles/README.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Versão: `v0.3.16-alpha`

- Famílias: **17**
- Perfis: **289**
- SandboxSettings entradas de dicionário: **46**

Escolha uma família por intenção de jogo no [guia de escolha de perfil](../ESCOLHA_UM_PERFIL.md) e use esse índice gerado para valores exatos.

Esses arquivos são gerados a partir da fonte Lua de tempo de execução e seu contrato dictionary/translation. Eles mostram os padrões `sandbox.profile_overrides` enviados; os valores configurados de um servidor podem ser diferentes:

- `profiles.generated.json`: perfis legíveis por máquina, valores brutos, dicionário e traduções.
- `FULL_PROFILE_REFERENCE.md`: índice completo e regras de interpretação.
- `SANDBOX_SETTINGS_KEYS.md`: dicionário completo de 46 chaves.
- `families/*.md`: referências familiares detalhadas de 17 dias.

Regenerar com: `python -B tools/generate_profile_docs.py` Verifique se há desvios com: `python -B tools/generate_profile_docs.py --check`
