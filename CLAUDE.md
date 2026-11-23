# CLAUDE.md — Claude Code

Integração documental complementar. OpenCode e Codex CLI permanecem como ferramentas principais; Claude Code é opcional e foi preparado, mas não foi instalado nem homologado operacionalmente neste ambiente.

## Regras superiores

Leia `AGENTS.md` antes de qualquer outra instrução específica. A hierarquia é:

1. `AGENTS.md`
2. `governance/`
3. `governance/agent-policies/fluxo-obrigatorio.md` e `docs/tasks/agent-workflow.md`
4. `docs/architecture/gta-brasil-diretrizes.md` e `docs/architecture/papeis-agentes-gta-brasil.md`
5. Definições nativas em `.opencode/agents/`, `.opencode/commands/` e `.agents/skills/`

Nenhum adaptador em `.claude/` substitui essas fontes. Em caso de conflito, prevalecem as regras superiores.

## Fase atual

Fase exclusivamente documental de infraestrutura de IA. Não criar jogo, protótipo, projeto Unreal, código C++, Blueprints, mapas, personagens, assets, gameplay, Dockerfile, Compose, dependências nem infraestrutura. Aprovação documental não autoriza implementação.

Aplique o fluxo obrigatório e pare antes de qualquer implementação até nova autorização.

## Estrutura Claude

- `.claude/agents/`: 12 adaptadores de subagentes, um por papel canônico.
- `.claude/commands/`: 9 adaptadores de comandos documentais; use `/nome` manualmente.
- `.claude/skills/`: 14 adaptadores que apontam para as skills canônicas em `.agents/skills/`.
- `.claude/settings.json`: configuração compartilhada mínima e sem hooks, MCP, plugins ou integrações externas.
- `.claude/settings.local.json`: override pessoal; nunca versionar.

Os adaptadores são pontes documentais. Não presumir que foram carregados apenas porque os arquivos existem; confirmar com `/agents`, `/skills` e `/status` em sessão operacional futura.

## Segurança

Menor privilégio: não expor segredos, PII ou material proprietário. Não desativar autenticação, autorização ou TLS. Não executar ações destrutivas ou externas sem autorização específica. Verificar proveniência e licenças em `ATTRIBUTION.md`.

Não instalar Claude Code, autenticar conta, configurar chaves de API ou consumir recursos externos sem autorização explícita.

## Estado e evidências

Claude Code não foi encontrado no PATH; nenhuma execução operacional foi realizada. Registro desta preparação: `reports/RELATORIO-GTA-BRASIL-INTEGRACAO-CLAUDE-001.txt`. Homologação anterior: `reports/RELATORIO-GTA-BRASIL-HOMOLOGACAO-FINAL-001.txt`.
