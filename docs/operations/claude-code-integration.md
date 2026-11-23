# Integração documental do Claude Code

Status: **preparada, não instalada e não homologada operacionalmente**. Nenhuma sessão do Claude Code foi executada nesta preparação.

## Escopo

- `AGENTS.md` continua sendo a fonte central de regras.
- OpenCode e Codex CLI permanecem como ferramentas principais e homologadas com ressalvas.
- Claude Code é complementar: os arquivos em `.claude/` são adaptadores documentais que apontam para as definições nativas em `.opencode/` e `.agents/skills/`.
- GitHub Copilot CLI é referência histórica e não faz parte das obrigações de homologação ou dos fluxos futuros. O arquivo `.github/copilot-instructions.md` foi preservado.

Não alterar `.agents/skills/*/SKILL.md`, `.opencode/agents/*.md` nem `.opencode/commands/*.md` para adaptar ao Claude.

## Estrutura entregue

| Caminho | Quantidade | Observação |
|---|---:|---|
| `.claude/agents/` | 12 | adaptadores de subagentes com `name`, `description` e `tools` |
| `.claude/commands/` | 9 | comandos manuais com `description`, `argument-hint` e `$ARGUMENTS` |
| `.claude/skills/` | 14 | adaptadores para as skills canônicas |
| `.claude/settings.json` | 1 | configuração compartilhada mínima |
| `.claude/settings.local.json` | 0 | ignorado pelo Git; não deve ser versionado |

## Convenções adotadas

As convenções foram consultadas em:

- `https://code.claude.com/docs/en/sub-agents`
- `https://code.claude.com/docs/en/settings`
- `https://code.claude.com/docs/en/skills`

Pontos aplicados:

- subagentes: arquivos Markdown em `.claude/agents/` com frontmatter YAML; `name` e `description` obrigatórios; `tools` restrito a leitura;
- comandos: arquivos Markdown em `.claude/commands/` continuam funcionando; comandos customizados foram mesclados em skills na documentação oficial;
- skills: `.claude/skills/<nome>/SKILL.md` com frontmatter e corpo; adaptadores apontam para a skill canônica sem duplicar conteúdo;
- configuração: `.claude/settings.json` é compartilhável; `.claude/settings.local.json` é pessoal e deve ficar fora do Git;
- precedência: configuração local supera a compartilhada; configuração gerenciada/superior pode sobrescrever ambas.

## Segurança

A configuração compartilhada não define hooks, MCP servers, plugins, integrações externas, autenticação nem chaves de API. Permissões de leitura são amplas dentro do repositório; gravações e comandos potencialmente destrutivos permanecem sujeitos a confirmação ou negação.

Não criar `.claude/settings.local.json`, tokens, credenciais ou arquivos de ambiente nesta fase.

## Verificação futura

Quando Claude Code estiver disponível e o usuário autorizar:

1. iniciar a sessão na raiz `C:\Work\dev\veyloq\GTABrasil`;
2. executar `/status` para confirmar quais arquivos de configuração foram carregados;
3. executar `/agents` para conferir os 12 adaptadores;
4. executar `/skills` para conferir as 14 skills;
5. testar um comando documental, por exemplo `/validar-documentacao`;
6. executar `pwsh -File ./.github/scripts/validate-structure.ps1`;
7. registrar evidências reais em novo relatório, sem reclassificar esta preparação como homologação operacional.

Se um adaptador não aparecer, verificar frontmatter, reiniciar a sessão ou usar o comando de recarga disponível na versão instalada. Não presumir suporte a recursos versionados.

## Resultado desta preparação

Estrutura documental criada e validada localmente. Claude Code ausente do PATH; nenhuma execução, autenticação ou homologação operacional realizada. Detalhes em `reports/RELATORIO-GTA-BRASIL-INTEGRACAO-CLAUDE-001.txt`.
