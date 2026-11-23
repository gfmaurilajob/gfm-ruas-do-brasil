# AGENTS.md — GTA Brasil

Idioma oficial: português brasileiro (pt-BR). Código, comandos, nomes de arquivos e
termos técnicos permanecem como estão.

## Identidade
Template documental de agentes de IA para um futuro jogo independente de mundo aberto
brasileiro, realista, inicialmente single-player, com área inicial inspirada em
Canoas/RS. Identidade própria; não copiar conteúdo proprietário de outras obras. Não
obter mapas, dados, imagens ou assets externos sem autorização e verificação de direitos.

## Tecnologias futuras (previstas, não instaladas)
Unreal Engine 5, C++ (sistemas) e Blueprints (composição/autoria). Docker/servidores
apenas como auxílio futuro justificado. Não presumir versões, plugins, autenticações
ou instalações.

## Hierarquia de instruções
1. Este `AGENTS.md` (regras superiores).
2. `governance/` (políticas de engenharia, qualidade, segurança, dependências).
3. `governance/agent-policies/fluxo-obrigatorio.md` e `docs/tasks/agent-workflow.md`.
4. `docs/architecture/gta-brasil-diretrizes.md` e `docs/architecture/papeis-agentes-gta-brasil.md`.
5. Papéis nativos: `.opencode/agents/`. Skills sob demanda: `.agents/skills/`.
Nenhuma persona, skill ou comando pode ignorar as regras superiores.

## Regras de segurança
- Não expor segredos, PII ou material proprietário; exemplos e testes usam dados sintéticos.
- Não desativar autenticação, autorização ou TLS; não suprimir falhas críticas.
- Menor privilégio; não delegar credenciais além do necessário.
- Não executar ações destrutivas/externas sem autorização específica; preservar dados e volumes.
- Verificar proveniência e licenças antes de usar/redistribuir (`ATTRIBUTION.md`).
- Detalhes: `governance/security/security-baseline.md`, `docs/security/ai-security-guidance.md`.

## Proibição de programação sem autorização
Nesta fase é PROIBIDO criar código C++, Blueprints, projeto Unreal, gameplay, mapas,
assets, Dockerfiles, Compose, scripts executáveis, pipelines ou instalar dependências.
Aprovação documental NÃO autoriza código, infraestrutura nem implantação. O
desenvolvimento do jogo exige autorização específica posterior.

## Fluxo de aprovação (obrigatório)
REQUISITOS → BRAINSTORMING → SPEC → PLANEJAMENTO → REVISÃO ARQUITETURAL → APROVAÇÃO DO
USUÁRIO → [IMPLEMENTAÇÃO FUTURA] → TESTES → REVISÃO → HOMOLOGAÇÃO → RELATÓRIO.
O fluxo PARA antes de qualquer implementação até nova autorização. Critérios de
entrada/saída: `governance/agent-policies/fluxo-obrigatorio.md`.

## Responsabilidades dos agentes (12 papéis)
ORCHESTRATOR, ARCHITECT, GAMEPLAY DESIGNER, WORLD DESIGNER, AI ENGINEER, IMPLEMENTER
(bloqueado nesta fase), TESTER/QA, REVIEWER, SECURITY REVIEWER, DEVOPS/BUILD,
DOCUMENTATION, PERFORMANCE ENGINEER. Definições, limites, entradas/saídas e ferramentas:
`.opencode/agents/` e `docs/architecture/papeis-agentes-gta-brasil.md`. Carregamento sob
demanda; não carregar todas as personas no contexto principal.

## Skills (sob demanda)
14 skills em `.agents/skills/`. Fluxo: brainstorming → writing-plans → revisão/aprovação
→ executing-plans → test-driven-development → requesting-code-review →
receiving-code-review → verification-before-completion. `systematic-debugging` quando
necessário. `context-fundamentals`/`context-degradation`/`context-optimization` para
gerenciar contexto. Worktrees/subagentes só quando aplicáveis e autorizados. Não alterar
o conteúdo original das skills sem necessidade comprovada.

## Critérios de conclusão
Só concluir tarefa com: critérios de aceite atendidos; testes/validações obrigatórios
executados e aprovados; revisões de segurança/documentação aplicáveis; evidências
registradas; recursos temporários limpos; pendências/riscos residuais registrados. Falha
ou validação ausente impede conclusão. Ver `governance/quality-gates/quality-gates.md`.

## Obrigatoriedade de relatórios
Todo ciclo gera relatório em `reports/` com evidências sanitizadas, testes executados/não
executados, falhas, pendências e decisão. Não inventar resultados nem declarar homologação
sem evidência operacional. Modelo: `templates/test-plans/test-report-template.md`.

## Referências
- Governança: `governance/` · Arquitetura: `docs/architecture/` · Templates: `templates/`
- Referência VEYLOQ (monolito original preservado): `docs/referencias/veyloq/`
- Créditos/licenças: `ATTRIBUTION.md` · Relatórios: `reports/`