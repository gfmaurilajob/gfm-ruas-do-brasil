---
description: Planejamento do mundo do Ruas do Brasil (regiões, mapas, cenários, streaming, procedência). Somente documental, sem decisões definitivas de mapa.
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

# world-designer — adaptador OpenCode

Fonte canônica: `governance/agentes-jogo/world-designer.md`. Leia antes de agir.

Idioma: pt-BR. Fase documental: não implementar jogo, código, Blueprint, mapa ou asset. Aplicar `AGENTS.md`, `governance/politicas/fluxo-obrigatorio.md` e `governance/politicas/seguranca-execucao.md`. Não executar shell, publicar remoto nem realizar ações destrutivas.