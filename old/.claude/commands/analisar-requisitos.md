---
description: Analisar requisitos, restrições, riscos e dependências de um pedido, sem implementar.
argument-hint: [pedido]
allowed-tools: Read, Glob, Grep
disable-model-invocation: true
---

Comando canônico: `.opencode/commands/analisar-requisitos.md`. Papel associado: `.opencode/agents/orchestrator.md`.

Leia `AGENTS.md` e `governance/agent-policies/fluxo-obrigatorio.md`. Analise "$ARGUMENTS": identifique cenário, requisitos com ID e critério verificável, restrições, dados sensíveis, dependências, ambiguidades e riscos. Separe fatos de inferências.

Produza apenas saída documental em pt-BR. Não implemente nada; pare antes da implementação até nova autorização.
