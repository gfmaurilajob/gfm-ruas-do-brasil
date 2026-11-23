---
description: Criar SPEC documental a partir de requisitos aprovados, sem autorizar código.
argument-hint: [requisitos]
allowed-tools: Read, Glob, Grep
disable-model-invocation: true
---

Comando canônico: `.opencode/commands/criar-spec.md`. Papel associado: `.opencode/agents/documentation.md`.

Leia `AGENTS.md`, `governance/agent-policies/fluxo-obrigatorio.md` e os templates em `templates/`. A partir de "$ARGUMENTS", produza uma SPEC documental com escopo, requisitos verificáveis, dependências, riscos, testes planejados, critérios de aceite e registro de aprovação.

Não altere `docs/referencias/**`, `ATTRIBUTION.md` nem skills originais. A SPEC não autoriza código; pare antes da implementação.
