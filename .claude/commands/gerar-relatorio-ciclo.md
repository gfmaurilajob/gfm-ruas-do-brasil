---
description: Gerar relatório de ciclo em reports/ com evidências sanitizadas, falhas, pendências e decisão.
argument-hint: [ciclo]
allowed-tools: Read, Glob, Grep
disable-model-invocation: true
---

Comando canônico: `.opencode/commands/gerar-relatorio-ciclo.md`. Papel associado: `.opencode/agents/documentation.md`.

Leia `AGENTS.md`, `templates/test-plans/test-report-template.md` e `reports/`. Para "$ARGUMENTS", descreva validações executadas, resultados reais, falhas, não executados, limpeza de temporários, riscos residuais e decisão.

Use dados sanitizados. Não invente resultados nem declare homologação sem evidência operacional.
