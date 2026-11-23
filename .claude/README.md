# Claude Code — adaptadores documentais

Este diretório prepara o uso futuro do Claude Code sem substituir as definições nativas do projeto.

## Pontos de entrada

- `CLAUDE.md`: instruções de sessão.
- `AGENTS.md`: fonte central de regras.
- `docs/operations/claude-code-integration.md`: guia operacional e limitações.

## Conteúdo

| Caminho | Finalidade |
|---|---|
| `.claude/agents/` | 12 adaptadores de subagentes; cada um aponta para `.opencode/agents/*.md` |
| `.claude/commands/` | 9 adaptadores de comandos; cada um aponta para `.opencode/commands/*.md` |
| `.claude/skills/` | 14 adaptadores; cada um aponta para `.agents/skills/*/SKILL.md` |
| `.claude/settings.json` | configuração compartilhada mínima, sem hooks/MCP/plugins |
| `.claude/settings.local.json` | ajuste pessoal ignorado pelo Git; não criar nesta fase |

## Estado

Integração documental preparada; Claude Code não instalado e não testado neste ambiente. OpenCode e Codex CLI continuam sendo as ferramentas operacionais principais. GitHub Copilot CLI permanece apenas como referência histórica.

Não presumir carregamento automático. A presença dos arquivos não comprova que `/agents`, `/skills`, comandos ou configurações foram reconhecidos por uma versão futura do Claude Code.

A fase é documental: não implementar o jogo nem executar infraestrutura sem autorização específica.
