---
description: Gerar relatório de ciclo em reports/ com evidências sanitizadas, falhas, pendências e decisão.
agent: documentation
---

Gere o relatório de ciclo para "$ARGUMENTS" em `reports/`, usando
`templates/test-plans/test-report-template.md`: ID/data/ambiente, commit/versões, plano
relacionado, resultado resumido, validações executadas (com evidência sanitizada), falhas e
não executados (justificativa/impacto/ação), recursos temporários (criação/limpeza verificada),
conclusão (gates atendidos? tarefa pode ser concluída? aprovador). Não inventar resultados nem
declarar homologação sem evidência operacional. Não expor segredos/PII. Idioma: pt-BR.