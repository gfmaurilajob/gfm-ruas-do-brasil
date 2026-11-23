---
description: Verificar prontidão para desenvolvimento (gates documentais atendidos antes de autorizar implementação).
argument-hint: [tarefa]
allowed-tools: Read, Glob, Grep
disable-model-invocation: true
---

Comando canônico: `.opencode/commands/verificar-prontidao.md`. Papel associado: `.opencode/agents/orchestrator.md`.

Leia `AGENTS.md`, `governance/agent-policies/fluxo-obrigatorio.md` e `governance/quality-gates/quality-gates.md`. Verifique em "$ARGUMENTS" SPEC e plano aprovados, revisões arquitetural/de segurança/documentação, testes planejados e autorização explícita do usuário.

Emita parecer PRONTO ou NÃO PRONTO com bloqueios. Mesmo PRONTO não autoriza implementação sem autorização específica posterior.
