---
description: Revisar arquitetura de uma SPEC/plano e registrar decisões (ADR), somente análise.
argument-hint: [spec-ou-plano]
allowed-tools: Read, Glob, Grep
disable-model-invocation: true
---

Comando canônico: `.opencode/commands/revisar-arquitetura.md`. Papel associado: `.opencode/agents/architect.md`.

Leia `AGENTS.md`, `docs/architecture/gta-brasil-diretrizes.md` e `templates/`. Examine "$ARGUMENTS" quanto a fronteiras, dependências circulares, APIs pequenas e conformidade com as diretrizes UE5/C++/Blueprints.

Registre achados por severidade e decisões em formato ADR somente no plano documental. Não altere código, assets ou infraestrutura.
