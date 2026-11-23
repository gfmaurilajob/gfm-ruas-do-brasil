# Fonte única de verdade — Ruas do Brasil

Este índice define onde cada classe de informação vive. Adaptadores de ferramentas consomem estes caminhos; não mantêm versões paralelas.

| Classe | Caminho canônico | Regra |
|---|---|---|
| Governança | `AGENTS.md`, `governance/politicas/` | `AGENTS.md` é a entrada principal. Políticas detalham, não contradizem. |
| Histórico | `governance/historico/` | Referência recuperada; não autoriza operação. |
| Papéis canônicos | `governance/agentes-jogo/` | 12 papéis. Adaptadores apontam para aqui. |
| Arquitetura | `docs/arquitetura/ue5-arquitetura-inicial.md`, `docs/specs/SPEC-001-ARQUITETURA-INICIAL.md` | Diretrizes e especificação proposta. |
| Decisões técnicas | `docs/decisoes/` | Registros ADR. Decisão só é aprovada quando registrada com aprovação explícita. |
| Especificações | `docs/specs/` | SPEC-001 é a única especificação inicial. |
| Tarefas | `docs/tarefas/` | Identificadores estáveis; nenhuma ferramenta cria tarefas apenas no próprio histórico. |
| Estado de implementação | `docs/estado/ESTADO-IMPLEMENTACAO.md` | Reflete o repositório real, verificado por Git e arquivos. |
| Testes | `governance/politicas/qualidade-testes.md`, `reports/` | Política define critérios; relatórios guardam evidências. |
| Pendências | `docs/estado/PENDENCIAS.md` | Lista viva de bloqueios e decisões aguardadas. |
| Relatórios | `reports/` | Evidências verificáveis; prevalecem sobre afirmações de sessão. |
| Integração de ferramentas | `.codex/README.md`, `.opencode/README.md`, `.claude/README.md`, `.github/copilot-instructions.md`, `CLAUDE.md` | Documentação de consumo; nunca substitui governança. |

## Regras de atualização

1. Alterar a informação no caminho canônico antes de alterar qualquer adaptador.
2. Adaptadores devem conter apenas ponteiros e restrições locais.
3. Relatórios novos devem citar o caminho canônico correspondente.
4. Se houver conflito entre um relatório antigo e o estado verificável do repositório, prevalece o estado verificável; o conflito deve ser registrado em `docs/estado/PENDENCIAS.md`.
5. Nenhuma ferramenta de IA possui autoridade para redefinir hierarquia, aprovar SPEC, autorizar implementação ou publicar alterações.
