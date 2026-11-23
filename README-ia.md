# GFM — Ruas do Brasil — Estrutura de desenvolvimento orientado por agentes de IA

Template documental para o desenvolvimento futuro de um jogo independente de mundo
aberto brasileiro, realista, inicialmente single-player, com área inicial inspirada
em Canoas/RS. Stack futura prevista: **Unreal Engine 5, C++ e Blueprints**.

**Estado atual: fase documental.** Não há jogo, projeto Unreal, código, assets nem
infraestrutura de execução. A implementação do jogo exige autorização específica
posterior. Este repositório organiza a arquitetura de agentes de IA, governança,
skills, comandos, templates, segurança, qualidade e rastreabilidade.

## Pontos de entrada

- `AGENTS.md` — regras superiores compartilhadas (enxuto). Fonte central para
  OpenCode, Codex CLI, GitHub Copilot CLI e Claude Code.
- `CLAUDE.md`, `.github/copilot-instructions.md`, `.codex/README.md`,
  `.claude/README.md` — encaminham para `AGENTS.md` (adaptações documentais; a
  presença não comprova carregamento operacional).

## Estrutura

| Diretório | Finalidade |
|---|---|
| `governance/` | Políticas de engenharia, qualidade, segurança, dependências e fluxo obrigatório |
| `docs/` | Arquitetura, diretrizes, papéis, specs, segurança, testes, devops, diagramas |
| `docs/referencias/veyloq/` | Monolito original do pacote VEYLOQ preservado como referência |
| `templates/` | Modelos de SPEC, ADR, plano, tarefa, testes, revisão de segurança, release |
| `.opencode/agents/` | 12 papéis nativos do OpenCode (carregamento sob demanda) |
| `.opencode/commands/` | Comandos documentais de planejamento e validação (não destrutivos) |
| `.agents/skills/` | 14 skills reutilizáveis (Superpowers + engenharia de contexto) |
| `reports/` | Relatórios de ciclo e evidências de homologação |
| `src/`, `tests/`, `blueprints/`, `devops/` | Diretórios reservados documentais (sem código/infra nesta fase) |
| `kits/`, `bundles/`, `agents/`, `commands/` | Catálogo e licenças do pacote VEYLOQ |
| `ATTRIBUTION.md` | Créditos e licenças MIT (preservar) |

## Fluxo de aprovação

REQUISITOS → BRAINSTORMING → SPEC → PLANEJAMENTO → REVISÃO ARQUITETURAL →
APROVAÇÃO DO USUÁRIO → [IMPLEMENTAÇÃO FUTURA] → TESTES → REVISÃO → HOMOLOGAÇÃO →
RELATÓRIO. O fluxo para antes de qualquer implementação até nova autorização.
Ver `governance/agent-policies/fluxo-obrigatorio.md`.

## Proveniência

A arquitetura documental (governance/docs/templates/devops/blueprints) foi
recuperada do repositório de referência `C:\Work\dev\GTABrasil`, commit `0e830ba`,
sem alterar a origem. O método e as skills provêm do pacote VEYLOQ v1.0
(Superpowers/Jesse Vincent, VoltAgent, Muratcan Koylan — licenças MIT). Ver
`ATTRIBUTION.md` e `docs/referencias/veyloq/README.md`.

## Homologação e limitações conhecidas

A infraestrutura documental está consolidada e validada localmente. A homologação
operacional é parcial: depende de execução real das ferramentas e de autenticação
válida. Não declarar compatibilidade não testada.

Evidências, classificações e pendências externas:
`reports/RELATORIO-GTA-BRASIL-HOMOLOGACAO-FINAL-001.txt`.

Limitações: GitHub (conta suspensa/403) bloqueia publicação; Claude Code não está
instalado; descoberta de skills/comandos do OpenCode depende de sessão operacional.
Fase atual: infraestrutura de IA e planejamento. Não há jogo nem protótipo funcional.