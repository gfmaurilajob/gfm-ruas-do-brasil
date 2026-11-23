# Modelo de relatório de continuidade

Substituir os campos entre colchetes. Não incluir credenciais, tokens, segredos, PII ou prompts sensíveis.

```text
RELATÓRIO DE CONTINUIDADE — [ID DA TAREFA]
Data: [AAAA-MM-DD]
Ferramenta utilizada: [CODEX CLI | OPENCODE | CLAUDE CODE | OUTRA]

1. Objetivo:
   [objetivo único e verificável]

2. Arquivos alterados:
   - [caminho]: [criação | modificação | sem alteração]

3. Decisões tomadas:
   - [decisão]: [motivo e caminho canônico relacionado]

4. Testes executados:
   - [comando ou procedimento]: [resultado]

5. Testes não executados:
   - [teste]: [justificativa]

6. Resultados:
   [resultado objetivo, com evidências em reports/ quando aplicável]

7. Erros:
   - [erro]: [tratativa ou pendência]

8. Pendências:
   - [pendência]: [responsável ou gate necessário]

9. Próxima ação recomendada:
   [ação concreta e autorização necessária]

10. Estado do Git:
   Branch: [branch]
   HEAD: [hash]
   Status: [resumo de modified/created/untracked]
   Commit: [NÃO CRIADO | hash, se explicitamente autorizado]
   Push: [NÃO EXECUTADO | executado, se explicitamente autorizado]

11. Fontes canônicas consultadas:
   - [caminho]
```
