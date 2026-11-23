# Template de agentes — GTA Brasil

Este template orienta o desenvolvimento futuro de um jogo independente de mundo aberto com identidade própria, visual realista e área inicial pequena inspirada em Canoas, RS. A primeira versão será single-player; a expansão geográfica deve ser possível de forma progressiva. Não há jogo ou projeto Unreal criado aqui.

A stack pretendida é Unreal Engine 5, C++ e Blueprints. Docker e servidores locais são apenas opções auxiliares futuras e justificadas. Não há versão de ferramenta confirmada nem serviços configurados por este documento.

O template contempla Codex CLI, Claude Code, GitHub Copilot CLI e OpenCode. `AGENTS.md` é a fonte compartilhada; `CLAUDE.md` e `.github/copilot-instructions.md` encaminham para ela. As instruções e os diretórios por ferramenta não comprovam instalação ou carregamento: consulte o relatório para as evidências por CLI.

Leia `AGENTS.md`, `docs/tasks/agent-workflow.md`, `docs/architecture/gta-brasil-diretrizes.md`, `docs/architecture/papeis-agentes-gta-brasil.md` e `docs/devops/infraestrutura-gta-brasil.md`. A SPEC em `docs/specs/SPEC-001-adaptacao-template-gta-brasil.md` cobre esta migração documental; não autoriza implementar o jogo.

A estrutura existente é preservada: `.claude`, `.codex`, `.github` e `.opencode` para orientação de ferramentas; `blueprints` para propostas; `devops` para operação; `docs` e `governance` para decisões e políticas; `src` para orientação de futuro código; `templates` para modelos; `tests` para estratégia de testes; `reports` para evidências. Diretórios existentes não representam funcionalidades implementadas.

A migração documental foi encerrada por decisão do usuário; a homologação operacional das ferramentas permanece parcial. O template pode apoiar o planejamento do jogo com as ferramentas efetivamente disponíveis, respeitando as limitações registradas no relatório. A implementação futura exige autorização e validação específica das ferramentas escolhidas.
