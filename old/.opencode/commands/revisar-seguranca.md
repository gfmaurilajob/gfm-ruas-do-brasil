---
description: Revisar segurança de uma mudança/SPEC (dados, ameaças, controles, dependências, IA).
agent: security-reviewer
---

Revise a segurança de "$ARGUMENTS" usando
`templates/security-reviews/security-review-template.md`: classificação de dados/ativos
(PII/segredos), limites de confiança e ameaças, controles (AuthN/autorização, validação, TLS,
criptografia, rate limit, logs, menor privilégio), dependências/cadeia de suprimentos e
segurança de IA (`docs/security/ai-security-guidance.md`). Produza achados com
ID/severidade/evidência sanitizada/mitigação, risco residual e gate. Não expor segredos/PII;
usar dados sintéticos; somente leitura. Idioma: pt-BR.