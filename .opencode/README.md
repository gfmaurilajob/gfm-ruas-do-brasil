# OpenCode

Leia `AGENTS.md` (regras superiores) e `governance/agent-policies/fluxo-obrigatorio.md`.

- Agentes nativos: `.opencode/agents/` (12 papéis, carregamento sob demanda via subagent).
- Comandos nativos: `.opencode/commands/` (9 comandos documentais não destrutivos).
- Skills: `.agents/skills/` (14 skills; fonte de projeto suportada pelo OpenCode).

Diretórios documentais não ativam agentes/comandos por si só; o formato nativo
(`.opencode/agents/*.md`, `.opencode/commands/*.md`) é o que registra agentes/comandos.
Verifique sintaxe e disponibilidade na versão utilizada. A fase atual é exclusivamente
documental; não implementar o jogo sem autorização específica.

A evidência de carregamento/descoberta nesta sessão está em
`reports/RELATORIO-GTA-BRASIL-ESTRUTURA-IA-001.txt`.