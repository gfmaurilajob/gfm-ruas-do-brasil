# Fluxo obrigatório de governança — GTA Brasil

Este documento define o fluxo superior de trabalho assistido por agentes. Nenhuma
persona, skill ou comando pode ignorá-lo. Em conflito, prevalecem `AGENTS.md` e
`governance/agent-policies/agent-engineering-policy.md`.

## Pipeline obrigatório

REQUISITOS → BRAINSTORMING → SPEC → PLANEJAMENTO → REVISÃO ARQUITETURAL →
APROVAÇÃO DO USUÁRIO → [IMPLEMENTAÇÃO FUTURA] → TESTES → REVISÃO → HOMOLOGAÇÃO →
RELATÓRIO.

**Até nova autorização explícita, o fluxo PARA antes de qualquer implementação.**
Aprovação documental não autoriza código, infraestrutura nem implantação.

## Critérios de entrada e saída por etapa

| Etapa | Entrada | Saída / gate |
|---|---|---|
| REQUISITOS | Pedido do usuário, contexto, restrições | Lista de requisitos, dúvidas explícitas, riscos e dependências |
| BRAINSTORMING | Requisitos levantados | Problema/objetivo clarificados (skill `brainstorming`); alternativas e porquês |
| SPEC | Brainstorming concluído | SPEC com escopo, exclusões, requisitos com ID e critério de aceite verificável (`templates/specifications/specification-template.md`); aprovação dos requisitos |
| PLANEJAMENTO | SPEC aprovada | Plano com fases, tarefas rastreáveis, testes, riscos (`templates/implementation-plans/implementation-plan-template.md`; skill `writing-plans`) |
| REVISÃO ARQUITETURAL | Plano elaborado | Parecer de ARCHITECT/REVIEWER; ADRs quando houver decisão (`templates/architecture-decisions/adr-template.md`) |
| APROVAÇÃO DO USUÁRIO | Plano + revisão | Autorização explícita do escopo. Sem ela, parar |
| IMPLEMENTAÇÃO FUTURA | Autorização específica de execução | Código/Blueprints apenas quando autorizado; skill `executing-plans`/`test-driven-development`. **Bloqueada na fase atual** |
| TESTES | Implementação autorizada | Testes unitários/integração/funcionais/desempenho conforme risco; evidências reproduzíveis |
| REVISÃO | Testes executados | Revisão de código e segurança (skills `requesting-code-review`/`receiving-code-review`); achados tratados |
| HOMOLOGAÇÃO | Revisão concluída | Verificação operacional com evidência (skill `verification-before-completion`); classificação por ferramenta |
| RELATÓRIO | Homologação | Relatório em `reports/` com evidências sanitizadas, falhas, pendências e decisão |

## Regras transversais

1. Inspecionar antes de propor; preservar conteúdo existente e backup verificável.
2. IDs únicos, escopo permitido, dependências reais, aceite, testes e evidências por tarefa.
3. Executar somente tarefas autorizadas; menor privilégio; não delegar credenciais além do necessário.
4. Nunca declarar sucesso sem resultado verificável; registrar testes não executados e motivos.
5. Parar e pedir decisão diante de requisito ambíguo, conflito com conteúdo existente ou ação destrutiva/externa não autorizada.
6. Dados sintéticos em exemplos/testes; não expor segredos/PII; não desativar TLS/autenticação.
7. Recursos temporários descartáveis somente quando justificados, identificados e autorizados; nunca remover dados/volumes existentes.
8. Todo ciclo gera relatório; não inventar resultados nem declarar homologação sem evidência operacional.

## Carregamento sob demanda

Personas e skills são carregadas sob demanda (`.opencode/agents/`, `.agents/skills/`),
não inline no contexto principal. Gerenciar contexto com as skills
`context-fundamentals`, `context-degradation`, `context-optimization`.

## Referências

- `governance/agent-policies/agent-engineering-policy.md`
- `governance/quality-gates/quality-gates.md`
- `governance/security/security-baseline.md`
- `docs/tasks/agent-workflow.md`
- `docs/architecture/papeis-agentes-gta-brasil.md`