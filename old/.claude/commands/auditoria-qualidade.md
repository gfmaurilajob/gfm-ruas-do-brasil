---
description: Executar auditoria de qualidade (gates, testes, evidências, critérios de pronto).
argument-hint: [alvo]
allowed-tools: Read, Glob, Grep
disable-model-invocation: true
---

Comando canônico: `.opencode/commands/auditoria-qualidade.md`. Papel associado: `.opencode/agents/tester-qa.md`.

Leia `AGENTS.md`, `governance/quality-gates/quality-gates.md` e `templates/test-plans/test-report-template.md`. Audite "$ARGUMENTS" quanto a gates, aceite, revisões, testes executados, evidências sanitizadas e critérios de pronto.

Registre falhas, não executados e riscos residuais. Não declare sucesso sem evidência e não implemente nada.
