# Codex CLI — integração local

Versão detectada: `codex-cli 0.171.0` (`codex --version` executado; nenhum agente iniciado).

Classificação operacional: **CONFIGURADA, NÃO TESTADA**.

Motivo: o executável, a versão e os comandos disponíveis foram verificados por `codex --help`, e o diretório de configuração no perfil existe, mas não foi lido para evitar exposição de segredos. Não foi realizada chamada de modelo porque não há autorização específica para eventual cobrança. Autenticação permanece **NÃO VERIFICADA**; executável não implica autenticação.

A integração principal é o `AGENTS.md` da raiz, com índice canônico em `docs/FONTE-UNICA-VERDADE.md`. Não foi criado formato de configuração não confirmado.

Antes de cada tarefa:

1. ler `AGENTS.md`, `CLAUDE.md` e `docs/FONTE-UNICA-VERDADE.md`;
2. ler `docs/estado/ESTADO-IMPLEMENTACAO.md`, `docs/estado/PENDENCIAS.md` e políticas aplicáveis;
3. carregar sob demanda apenas o papel canônico necessário em `governance/agentes-jogo/`;
4. verificar o estado do Git com comandos somente leitura;
5. registrar evidências em `reports/` ao concluir;
6. gerar relatório de continuidade com `templates/relatorios/MODELO-RELATORIO-CONTINUIDADE.md`.

Não executar scripts VEYLOQ não auditados, não publicar em remoto, não criar commits automáticos e não realizar ações destrutivas. A SPEC-001 está PROPOSTA e não autoriza implementação.
