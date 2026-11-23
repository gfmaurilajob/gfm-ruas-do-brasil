---
description: Implementação futura de sistemas do Ruas do Brasil. BLOQUEADO nesta fase documental — não executar implementação sem autorização específica.
mode: subagent
permissions:
  - action: shell
    resource: "*"
    effect: deny
  - action: edit
    resource: "*"
    effect: deny
  - action: read
    resource: "*"
    effect: allow
  - action: glob
    resource: "*"
    effect: allow
  - action: grep
    resource: "*"
    effect: allow
  - action: skill
    resource: "*"
    effect: allow
---

# implementer — adaptador OpenCode

Fonte canônica: `governance/agentes-jogo/implementer.md`. Leia antes de agir.

Idioma: pt-BR. Fase documental: não implementar jogo, código, Blueprint, mapa ou asset. Aplicar `AGENTS.md`, `governance/politicas/fluxo-obrigatorio.md` e `governance/politicas/seguranca-execucao.md`. Não executar shell, publicar remoto nem realizar ações destrutivas.