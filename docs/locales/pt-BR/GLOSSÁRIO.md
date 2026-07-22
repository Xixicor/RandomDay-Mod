<a id="glossary"></a>
# Glossário

> **Fonte canônica em inglês:** [GLOSSARY.md](../../GLOSSARY.md). Essa documentação localizada preserva comandos, caminhos, chaves, valores de status, hashes e nomes de arquivos exatos. Se o texto técnico for diferente, use a fonte em inglês.


Este é o vocabulário canônico para RandomDay documentação. Os procedimentos vinculam-se a essas definições em vez de redefinir o mesmo estado em vários guias. As regras de campo específicas do esquema permanecem em [Saídas de tempo de execução](SA%C3%8DDAS_DE_TEMPO_DE_EXECU%C3%87%C3%83O.md).

| Termo | Significado simples | Significado técnico exato |
|---|---|---|
| Perfil ativo | As regras que a sessão atual está usando. | O family/day perfil identificado pelo RandomDay marcador lido na sandbox na inicialização do processo. |
| Perfil preparado | Regras prontas para uma sessão posterior. | O perfil family/day completo cujos bytes de destino passaram na validação e na leitura e cujo estado de rotação foi confirmado. Ele não está ativo antes de reiniciar a leitura. |
| Restaurado | A preparação falhou e os bytes verificados anteriores foram devolvidos. | A transação com falha relata uma reversão e leitura bem-sucedidas da cópia de recuperação original ou verificada mantida. |
| Fila de próxima reinicialização | Uma escolha preparada mantida para a próxima inicialização. | `next_reboot_queue` seleciona uma vez por processo e reutiliza essa escolha de propriedade de inicialização durante a supervisão. |
| Bootstrap | A primeira preparação quando não existe nenhum marcador ativo. | A seleção do primeiro dia configurado ou aleatório de uma família elegível `cycle.bootstrap_day` é apenas um substituto de compatibilidade. |
| Família | Uma progressão de estilo de jogo de 17 dias. | Uma entrada de registro e módulo familiar que produz exatamente 17 perfis completos. |
| Rotação | Uma passagem pelas famílias qualificadas. | Estado identificado por `rotation_id`, com informações disponíveis, restantes e listas de famílias completadas. |
| Executar | Uma família em todos os IDs de 17 dias. | Uma sequência vinculada à família identificada por `run_id`; a família permanece bloqueada até que cada posição de ordem diária persistente seja concluída. |
| Modo de sessão | Como o operador usa este pacote. | `persistent_dedicated`, `temporary_dedicated` ou `singleplayer_lan`; o modo de pacote ainda controla o limite do sistema de arquivos. |
| Ordem dos dias | A ordem exata usada por uma família. | Uma permutação persistente de 17 números. O modo sequencial termina desde o dia de início; o modo aleatório embaralha uma vez sem repetição. |
| Marcador | Identidade armazenada no arquivo sandbox. | `RANDOMDAY_*` campos renderizados com o perfil completo e lidos na próxima inicialização do processo. |
| Preparado pronto | A gravação e a confirmação de estado foram bem-sucedidas. | `prepared_ready=true` requer um resultado de sandbox bem-sucedido e nenhuma falha de confirmação de estado. Isso não prova a ativação. |
| Já atual | O destino já possui os bytes pretendidos. | O hash do perfil renderizado corresponde ao destino, então RandomDay verifica last-good/mirror funciona sem reescrever o primário. |
| Persistência de estado degradado | Os bytes da sandbox foram bem-sucedidos, mas a contabilidade de rotação não. | `profile_status=degraded_state_persistence`; adaptadores e mensagens de perfil preparado são ignorados. |
| Arquivo pendente | Bytes candidatos ainda não promovidos. | `<target>.randomday.pending`, gravados, lidos e validados antes da substituição. |
| Arquivo de reversão | O original mantido durante a substituição. | `<target>.randomday.rollback`, usado para restaurar a produção em caso de falha de promoção ou validação. |
| Backup de operação | Uma cópia durável feita antes da mutação. | Um arquivo verificado em `runtime/backups/` para a transação primária, espelhada ou adaptadora. |
| Último válido conhecido | O sandbox mais recente aceito para recuperação. | `runtime/last_good/SandboxSettings.ini` mais `manifest.lua`; o par registra a identidade e o hash do perfil. |
| Espelho | Segundo destino de sandbox opcional. | Um destino explicitamente configurado ou derivado do nome mundial escrito após o primário por meio de sua própria transação. |
| Modo de pacote | Limite de instalação selecionado pela versão ativo. | `dedicated_server` ou `singleplayer_manual` de `.randomday_mode`. |
| Modo de cópia manual | Singleplayer/LAN geração sem descoberta de salvamento. | `singleplayer_manual` escreve apenas dentro `runtime/singleplayer_manual/` e desativa adaptadores e espelhos. |
| Adaptador | RandomDay-owned mapeamento para outro mod instalado. | Um plano de transação controlado por assinatura que atualiza as atribuições existentes somente após verificações de backup e compatibilidade. |
| Layout reconhecido | Formato exato do arquivo do adaptador aceito para gravação. | Todas as chaves de assinatura e arquivos de destino necessários estão presentes; apenas um nome de arquivo é insuficiente. |
| `not_installed` | O destino opcional não foi encontrado. | Resultado do adaptador seguro sem mutação. |
| `skipped_incompatible` | Existe um destino, mas seu formato não é compatível. | Resultado do adaptador seguro sem mutação porque a assinatura completa não corresponde. |
| `failed_rolled_back` | Uma alteração falhou e os bytes anteriores estão intactos. | A transação do adaptador falhou antes da mutação ou todos os arquivos afetados foram restaurados e verificados. |
| `rollback_failed` | Não foi possível verificar a recuperação automática. | Estado de parada brusca do adaptador que requer recuperação manual do backup gravado. |
| Dicionário | Mapeamento de valores brutos para explicações públicas. | `randomday_dictionary_v2`, gerado a partir de `dictionary.lua` e incluído na saída de status do tempo de execução. |
| Tradução | Visualização humana derivada de valores brutos de perfil. | Pontuações de domínio limitado, fatos, resumos e mensagens geradas por `translation.lua`; os valores brutos permanecem oficiais. |
| Status público | Resumo do operador limpo e legível por máquina. | `web_export/today.json` usando `randomday_public_status_v2`. |
| Status do tempo de execução | Snapshot local detalhado legível por máquina. | `runtime/current/randomday_status.json` usando `randomday_runtime_status_v2`. |
