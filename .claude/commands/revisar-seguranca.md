---
description: Revisar segurança de uma mudança/SPEC (dados, ameaças, controles, dependências, IA).
argument-hint: [mudanca-ou-spec]
allowed-tools: Read, Glob, Grep
disable-model-invocation: true
---

Comando canônico: `.opencode/commands/revisar-seguranca.md`. Papel associado: `.opencode/agents/security-reviewer.md`.

Leia `AGENTS.md`, `governance/security/security-baseline.md`, `docs/security/ai-security-guidance.md` e `templates/`. Aplique "$ARGUMENTS" aos eixos de dados, ameaças, controles, cadeia de suprimentos e segurança de IA.

Emita achados sanitizados, risco residual e gate. Não exponha segredos, não altere autenticação/autorização/TLS e não edite arquivos.
