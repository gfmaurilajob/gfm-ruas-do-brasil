# Auditoria inicial do template

O inventário por caminho e SHA-256 encontra-se em `reports/INVENTARIO-TEMPLATE-001.md`; leitura mecânica não equivale a revisão semântica integral. A inspeção reconheceu arquivos Markdown, diagramas Draw.io e PNG, um PDF e `.gitignore`, sem Dockerfiles, Compose, scripts de automação executáveis, código C++ ou projeto Unreal no workspace.

## Classificação por componente

| Componente | Classificação | Justificativa |
|---|---|---|
| `.claude`, `.codex`, `.opencode`, `.github` | ADAPTAR | Entradas documentais e reservas de integração; não há evidência de agentes instalados ou configurados. |
| `AGENTS.md`, `CLAUDE.md`, `README.md` | ADAPTAR | Pontos de entrada contêm premissas e stacks anteriores. |
| `governance`, `docs`, `templates`, `tests` | ADAPTAR/CONSOLIDAR | Manter governança, fluxo e modelos reutilizáveis; substituir decisões particulares incompatíveis. |
| `blueprints`, `src` | ADAPTAR | Diretórios documentais existentes, não projetos do jogo. |
| `devops` | ADAPTAR | Orientações de infraestrutura futura; preservar conteúdo genérico e não iniciar serviços. |
| Diagramas e PDF | MANTER provisoriamente | Conteúdo e direitos não examinados integralmente; não excluir sem análise específica e backup. |
| Documentação exclusivamente orientada à stack anterior | AVALIAR ARQUIVAMENTO/REMOÇÃO | Somente após verificação individual, referências e backup recuperável. |

Não há classificação REMOVER aplicada antes de análise individual. A presença de Docker no PATH não prova existência ou estado de serviços. O diretório não é um repositório Git reconhecido.
