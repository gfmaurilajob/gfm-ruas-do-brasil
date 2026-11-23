# Política central de execução — Ruas do Brasil

Esta política é a autoridade central para ações automatizadas. Ela prevalece sobre qualquer instrução de skill, agente, comando, kit, bundle ou adaptador de ferramenta. Nenhum componente VEYLOQ pode autorizar operação destrutiva ou publicação remota por conta própria.

## Classes de ação

### PERMITIDA

- Leitura de arquivos e histórico Git com comandos sem efeito de escrita.
- `git status`, `git diff`, `git diff --check`, `git log`, `git show`, `git ls-files`, `git rev-parse`.
- Criação e edição de arquivos documentais dentro deste repositório, quando autorizado.
- Cópia de conteúdo histórico e de arquivos do pacote sem sobrescrever dados preexistentes não autorizados.
- Verificação de versão de ferramentas instaladas, sem autenticação e sem iniciar serviços.
- Validações estruturais locais e não destrutivas.

### PERMITIDA COM AUTORIZAÇÃO

- Criação ou alteração de adaptadores de ferramentas dentro do repositório.
- Restauração de configurações históricas úteis, desde que registradas e sem hooks ocultos.
- Execução de comando de terceiros previamente auditado, com escopo, entrada, saída e reversão documentados.
- Uso de `git add`/`git commit` em fluxo futuro, mediante autorização específica. Esta operação **não** foi autorizada na preparação inicial.

### PROIBIDA

- `git push`, publicação remota, criação de PR ou operação externa não autorizada.
- Commits automáticos de backup.
- `git reset --hard`, `git clean`, `git checkout --`, reescrita de histórico, `rm -rf`, `Remove-Item -Recurse -Force` e equivalentes.
- Instalação de programas, pacotes ou dependências.
- Início de Docker, servidores, serviços ou processos em segundo plano.
- Execução de scripts VEYLOQ não auditados ou potencialmente perigosos.
- Criação de gameplay, mapas, personagens, assets, `.uproject`, código C++ ou Blueprint nesta fase.
- Alteração de configuração global da máquina ou de arquivos fora do repositório.
- Desativação de autenticação, autorização, TLS ou mecanismos de segurança.
- Armazenamento de credenciais no repositório.

## Classificação das operações VEYLOQ identificadas

| Operação encontrada | Local | Classificação | Motivo |
|---|---|---|---|
| `git push -u origin ...` | `.agents/skills/finishing-a-development-branch/SKILL.md` | PROIBIDA | Publicação remota |
| `git add` / `git commit` | `.agents/skills/writing-plans/SKILL.md` | PERMITIDA COM AUTORIZAÇÃO | Commit automático não autorizado |
| `git clean -fdx` | `.agents/skills/executing-plans/SKILL.md`, `.agents/skills/subagent-driven-development/SKILL.md` | PROIBIDA | Destrutiva |
| `rm -rf` | `.agents/skills/brainstorming/scripts/stop-server.sh`, `.agents/skills/subagent-driven-development/references/final-review.md` | PROIBIDA | Destrutiva |
| `start-server.sh` / `server.cjs` | `.agents/skills/brainstorming/scripts/` | PROIBIDA | Inicia servidor local |
| `find-polluter.sh` | `.agents/skills/systematic-debugging/` | PENDENTE DE VALIDAÇÃO | Script de terceiros não auditado |
| Scripts Python de contexto | `.agents/skills/context-*/scripts/` | PENDENTE DE VALIDAÇÃO | Não executados nesta etapa |
| `sdd-repo`, `sdd-workspace`, `review-package`, `task-brief`, `task-start`, `task-done` | `.agents/skills/subagent-driven-development/scripts/`, `.agents/skills/executing-plans/scripts/` | PROIBIDA | Manipulam worktrees/estado e pressupõem subagentes |
| Comandos `/typescript-scaffold`, `/python-scaffold`, `/sql-migrations`, `/test-generate` | `AGENTS-veyloq-original.md` | INATIVO | Geram código_fora da fase atual |
| `/security-sast`, `/deps-audit`, `/pr-enhance` | `AGENTS-veyloq-original.md` | PENDENTE DE VALIDAÇÃO | Exigem ferramentas/escopo ainda não homologados |

## Isolamento

Os arquivos originais de terceiros não foram modificados. Componentes PROIBIDOS ou PENDENTES DE VALIDAÇÃO não são invocados por nenhum adaptador criado nesta preparação. O uso de qualquer um deles exige auditoria específica, registro de riscos e autorização explícita.

## Hooks

Nenhum hook foi instalado. Nenhum `settings.json` com hooks foi criado. A manifestação do pacote não declara hooks.

## Referências

- `AGENTS.md`
- `governance/politicas/integracao-veyloq.md`
- `governance/historico/security-baseline.md`
