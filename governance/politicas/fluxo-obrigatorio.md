# Fluxo obrigatório de governança — Ruas do Brasil

Este documento define o fluxo superior de trabalho assistido por agentes. Nenhuma persona, skill, comando, kit ou adaptador pode ignorá-lo. Em conflito, prevalecem `AGENTS.md` e este documento.

Fonte histórica: `governance/historico/fluxo-obrigatorio.md`.

## Pipeline obrigatório

REQUISITOS → BRAINSTORMING → SPEC → PLANEJAMENTO → REVISÃO ARQUITETURAL → APROVAÇÃO DO USUÁRIO → [IMPLEMENTAÇÃO FUTURA] → TESTES → REVISÃO → HOMOLOGAÇÃO → RELATÓRIO.

Até nova autorização explícita, o fluxo **PARA** antes de qualquer implementação. Aprovação documental não autoriza código, infraestrutura nem implantação.

## Gates

| Etapa | Entrada | Saída / gate |
|---|---|---|
| REQUISITOS | Pedido do usuário, contexto e restrições | Requisitos, dúvidas explícitas, riscos e dependências |
| BRAINSTORMING | Requisitos levantados | Objetivo clarificado; alternativas ejustificativas |
| SPEC | Brainstorming concluído | Escopo, exclusões, requisitos com ID e critérios de aceite verificáveis |
| PLANEJAMENTO | SPEC aprovada | Plano com fases, tarefas rastreáveis, testes e riscos |
| REVISÃO ARQUITETURAL | Plano elaborado | Parecer de ARCHITECT/REVIEWER; decisões registradas |
| APROVAÇÃO DO USUÁRIO | Plano + revisão | Autorização explícita do escopo. Sem ela, parar |
| IMPLEMENTAÇÃO FUTURA | Autorização específica de execução | Código/Blueprints apenas quando autorizado. **Bloqueada nesta fase** |
| TESTES | Implementação autorizada | Testes aplicáveis com evidências reproduzíveis |
| REVISÃO | Testes executados | Revisão de código e segurança; achados tratados |
| HOMOLOGAÇÃO | Revisão concluída | Verificação operacional com evidência; classificação por ferramenta |
| RELATÓRIO | Homologação | Relatório em `reports/` com evidências sanitizadas, falhas, pendências e decisão |

## Regras transversais

1. Inspecionar antes de propor; preservar conteúdo existente.
2. Tarefas com ID único, escopo permitido, dependências reais, aceite, testes e evidências.
3. Executar somente tarefas autorizadas; menor privilégio; não delegar credenciais.
4. Nunca declarar sucesso sem resultado verificável; registrar testes não executados e motivos.
5. Parar diante de requisito ambíguo, conflito com conteúdo existente ou ação destrutiva/externa não autorizada.
6. Dados sintéticos em exemplos/testes; não expor segredos ou PII; não desativar TLS/autenticação.
7. Recursos temporários descartáveis somente quando justificados, identificados e autorizados; nunca remover dados existentes.
8. Todo ciclo gera relatório; não inventar resultados nem declarar homologação sem evidência operacional.

## Carregamento sob demanda

Os 12 papéis canônicos ficam em `governance/agentes-jogo/` e seus adaptadores em `.opencode/agents/` e `.claude/agents/`. Skills VEYLOQ ficam em `.agents/skills/`. Carregar apenas o necessário para a tarefa.

## Referências

- `AGENTS.md`
- `governance/politicas/seguranca-execucao.md`
- `governance/politicas/qualidade-testes.md`
- `governance/politicas/integracao-veyloq.md`
- `docs/arquitetura/ue5-arquitetura-inicial.md`
- `governance/historico/AGENTS-original-recuperado.md`
