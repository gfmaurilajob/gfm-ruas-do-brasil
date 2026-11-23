# Integração do pacote VEYLOQ — Ruas do Brasil

Este documento é a camada de integração entre a governança do projeto e o pacote `pacote-desenvolvimento-com-ia` v1.0. O pacote é referência de terceiros; ele nunca substitui `AGENTS.md`, as políticas em `governance/politicas/` nem os 12 papéis em `governance/agentes-jogo/`.

## Inventário validado

| Item | Quantidade | Evidência |
|---|---:|---|
| Arquivos do pacote sob `agents/` | 99 | ZIP com 102 entradas; 0 ausentes; 0 divergentes por SHA-256 na auditoria técnica |
| Skills | 14 | `.agents/skills/*/SKILL.md` |
| Agentes genéricos | 18 | `agents/*/LICENSE.txt` e definições no monólito preservado |
| Comandos | 8 | `commands/*/LICENSE.txt` e definições no monólito preservado |
| Kits | 6 | `kits/*.md` |
| Bundle | 1 | `bundles/pacote-desenvolvimento-com-ia/` |
| ZIP original | 1 | `kits/pacote-desenvolvimento-com-ia-v1.0-agents.zip` |
| Monólito original | 1 | `kits/veyloq/referencias/AGENTS-veyloq-original.md` |
| Licenças | preservadas | `ATTRIBUTION.md` e arquivos `LICENSE.txt` |

Formato do manifest: `format`, `id`, `type`, `slug`, `version`, `releasedAt`, `target`, `items`, `files`. Não há campo `hooks`.

## Significado dos status

- **ATIVO**: pode ser usado agora, sob as regras de `AGENTS.md`.
- **DISPONÍVEL SOB DEMANDA**: pode ser lido como método quando necessário; não é carregado automaticamente e não autoriza execução.
- **INATIVO**: não deve ser usado nesta fase.
- **INCOMPATÍVEL**: não corresponde ao domínio UE5/C++/Blueprints do projeto ou se sobrepõe aos papéis canônicos.
- **PENDENTE DE VALIDAÇÃO**: exige auditoria, adaptador seguro ou autorização específica antes de qualquer uso operacional.

## Agentes genéricos VEYLOQ — 18

| Agente | Status | Motivo |
|---|---|---|
| `frontend-developer` | INCOMPATÍVEL | Domínio web; não é papel do jogo |
| `react-specialist` | INCOMPATÍVEL | Domínio React |
| `nextjs-developer` | INCOMPATÍVEL | Domínio Next.js |
| `typescript-pro` | INCOMPATÍVEL | Domínio TypeScript web |
| `ui-designer` | INCOMPATÍVEL | Design system web |
| `accessibility-tester` | INCOMPATÍVEL | WCAG web |
| `backend-developer` | INCOMPATÍVEL | Serviços web/API |
| `api-designer` | INCOMPATÍVEL | REST/GraphQL |
| `node-specialist` | INCOMPATÍVEL | Node.js |
| `python-pro` | INCOMPATÍVEL | Python de aplicação |
| `sql-pro` | INCOMPATÍVEL | Banco relacional de aplicação |
| `postgres-pro` | INCOMPATÍVEL | PostgreSQL de aplicação |
| `docker-expert` | INCOMPATÍVEL | Docker não autorizado nesta fase |
| `qa-expert` | PENDENTE DE VALIDAÇÃO | Sobreposição parcial com TESTER/QA; falta adaptação UE5 |
| `test-automator` | PENDENTE DE VALIDAÇÃO | Sobreposição parcial; automação ainda não existe |
| `debugger` | PENDENTE DE VALIDAÇÃO | Metodologia útil, mas sem projeto compilável |
| `security-auditor` | PENDENTE DE VALIDAÇÃO | Sobreposição com SECURITY REVIEWER; falta escopo UE5 |
| `performance-engineer` | PENDENTE DE VALIDAÇÃO | Sobreposição com PERFORMANCE ENGINEER; falta Unreal Insights real |

Os 18 agentes genéricos não são expostos como agentes nativos pelo projeto. Os 12 papéis canônicos estão em `governance/agentes-jogo/`.

## Skills — 14

| Skill | Status | Restrição principal |
|---|---|---|
| `brainstorming` | PENDENTE DE VALIDAÇÃO | `visual-companion` inicia servidor e `stop-server.sh` contém `rm -rf` |
| `writing-plans` | DISPONÍVEL SOB DEMANDA | Instruções de `git commit` substituídas pela política de Git |
| `test-driven-development` | DISPONÍVEL SOB DEMANDA | Somente quando houver código autorizado |
| `systematic-debugging` | PENDENTE DE VALIDAÇÃO | `find-polluter.sh` não auditado |
| `executing-plans` | INATIVO | Implementação bloqueada; cita `git clean -fdx` |
| `subagent-driven-development` | INATIVO | Exige subagentes; cita `git clean -fdx` e `rm -rf` |
| `requesting-code-review` | DISPONÍVEL SOB DEMANDA | Revisão documental; sem envio remoto |
| `receiving-code-review` | DISPONÍVEL SOB DEMANDA | Verificação antes de aplicar sugestões |
| `verification-before-completion` | DISPONÍVEL SOB DEMANDA | Evidência antes de conclusão |
| `finishing-a-development-branch` | INATIVO | Contém `git push` |
| `using-git-worktrees` | PENDENTE DE VALIDAÇÃO | Worktree somente com autorização; sem limpeza destrutiva |
| `context-fundamentals` | PENDENTE DE VALIDAÇÃO | Referencia skills ausentes |
| `context-degradation` | PENDENTE DE VALIDAÇÃO | Script Python não executado |
| `context-optimization` | PENDENTE DE VALIDAÇÃO | Script Python não executado |

## Comandos — 8

| Comando | Status | Restrição principal |
|---|---|---|
| `/typescript-scaffold` | INATIVO | Cria projeto TypeScript |
| `/component-scaffold` | INATIVO | Cria componente React |
| `/python-scaffold` | INATIVO | Cria projeto Python |
| `/sql-migrations` | INATIVO | Cria/aplica migração |
| `/test-generate` | INATIVO | Gera código de teste sem projeto funcional |
| `/security-sast` | PENDENTE DE VALIDAÇÃO | Ferramenta de scan não confirmada |
| `/deps-audit` | PENDENTE DE VALIDAÇÃO | Não há manifesto de dependências do jogo |
| `/pr-enhance` | PENDENTE DE VALIDAÇÃO | PR/publicação exige autorização específica |

## Kits e bundle

| Item | Status | Uso permitido |
|---|---|---|
| `kit-engenharia-de-contexto-para-agentes` | DISPONÍVEL SOB DEMANDA | Referência documental; scripts não executados |
| `kit-qualidade-e-seguranca` | DISPONÍVEL SOB DEMANDA | Referência metodológica, subordinada às políticas |
| `kit-time-de-back-end` | DISPONÍVEL SOB DEMANDA | Referência apenas; domínio sem projeto correspondente |
| `kit-time-de-front-end` | DISPONÍVEL SOB DEMANDA | Referência apenas; domínio sem projeto correspondente |
| `superpowers-fluxo-de-entrega` | DISPONÍVEL SOB DEMANDA | Método, desde que respeite o fluxo obrigatório |
| `superpowers-metodo-completo` | DISPONÍVEL SOB DEMANDA | Método, desde que respeite o fluxo obrigatório |
| `bundles/pacote-desenvolvimento-com-ia` | DISPONÍVEL SOB DEMANDA | Índice dos seis kits |

Nenhum kit foi classificado como ATIVO nesta fase.

## Dependências inexistentes documentadas

| Dependência | Situação | Substituto documentado e verificável |
|---|---|---|
| `context-manager` | Ausente; exigida por algumas personas do VEYLOQ | Leitura explícita de `AGENTS.md`, governança e `git status` antes de cada tarefa |
| `websocket-engineer` | Ausente | Nenhuma implementação; necessidades de rede serão avaliadas por ARCHITECT/DEVOPS/BUILD em SPEC futura |
| `deployment-engineer` | Ausente | Nenhuma implantação nesta fase; DEVOPS/BUILD apenas documental |
| `database-optimizer` | Ausente | Nenhum banco de jogo definido; decisão futura via ARCHITECT |
| `context-compression` | Ausente | Registro manual de contexto e evidências em `reports/`; sem ferramenta inventada |
| `filesystem-context` | Ausente | Leitura sob demanda de arquivos do repositório com ferramentas já disponíveis |
| `project-development` | Ausente | Fluxo obrigatório em `governance/politicas/fluxo-obrigatorio.md` |

Nenhuma dessas dependências foi implementada ou simulada.

## Camada de integração

- `AGENTS.md` define precedência e limites.
- `governance/politicas/seguranca-execucao.md` classifica operações e isola scripts perigosos.
- `governance/agentes-jogo/` concentra os 12 papéis canônicos.
- `.opencode/agents/` e `.claude/agents/` contêm apenas adaptadores que apontam para os papéis canônicos.
- `.github/copilot-instructions.md` e `.codex/README.md` vinculam as instruções centrais sem inventar formatos não confirmados.
- Conteúdo original VEYLOQ permanece em `.agents/`, `agents/`, `commands/`, `kits/`, `bundles/` e no monólito preservado. Nenhum arquivo de terceiros foi alterado.
