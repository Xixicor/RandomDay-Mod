<a id="seventeen-families-seventeen-days"></a>
# Dezessete famílias, dezessete dias

> **Fonte canônica em inglês:** [FAMILY_ROTATION.md](../../FAMILY_ROTATION.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


RandomDay contém 17 famílias de estilos de jogo com 17 perfis diários completos em cada família. Isso produz 289 documentados family/day combinações.

A família define o estilo amplo de uma corrida. Os dias 1 a 17 fornecem a progressão da família em pressão, recuperação, ritmo e recursos. Uma execução armazena um pedido contendo ID de cada dia exatamente uma vez. Uma reinicialização avança para a próxima posição armazenada; RandomDay não altera famílias no meio do pedido.

<a id="selection-modes"></a>
## Modos de seleção

| Modo | Comportamento de nova execução | Durante a execução |
|---|---|---|
| `selected_run` | Usos`profile_family.selected_family`. | Mantém essa família em todas as 17 posições armazenadas. |
| `non_repeating_random_run` | Escolhe uma família qualificada não utilizada. | Mantém todas as 17 posições e evita repetições familiares até que a lista qualificada se esgote. |
| `rotation_run` | Leva a próxima família na ordem configurada. | Mantém todas as 17 posições armazenadas. |

A configuração enviada usa `non_repeating_random_run`. A família preparada após a posição final armazenada ainda está apenas preparada; ele se torna ativo após a reinicialização. `cycle.start_day_mode` e `cycle.day_progression_mode` escolha o primeiro dia e a ordem do dia sem alterar a seleção da família.

<a id="families"></a>
## Famílias

- Ação
- Sobrevivência
- Furtividade
- Horda
- Caça ao Chefe
- Scavenger
- Construtor
- Expedição
- Bloqueio de segurança
- Biohazard
- Anteverso
- Pesadelo
- Resistido
- Precisão
- Logística
- Experimental
- Teste de conformidade

Use a [índice de perfil gerado](PERFIS/DOCUMENTA%C3%87%C3%83O_DO_PERFIL.md) para abrir uma família ou [referência completa do perfil](PERFIS/REFER%C3%8ANCIA_COMPLETA_DO_PERFIL.md) para revisar todas as 289 combinações. A [referência de chave de sandbox](PERFIS/CHAVES_DE_CONFIGURA%C3%87%C3%95ES_DO_SANDBOX.md) define cada valor suportado e padrão de perfil enviado.

<a id="custom-families-and-days"></a>
## Famílias e dias personalizados

A origem da família reside em:

```text
RandomDay/Scripts/ax_profiles/families/
```

O Markdown e JSON em `docs/profiles/` são referências geradas. Altere a origem, não a saída gerada, e execute a validação profile/schema completa. Um conjunto personalizado não está pronto quando apenas um dia é analisado; todos os 17 dias, os padrões de perfil configurados, tipos, intervalos e a referência gerada devem concordar.
