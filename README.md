# Ruas do Brasil

Jogo independente de mundo aberto ambientado no Brasil, em fase de preparação técnica e documental.

## Objetivo

Construir progressivamente um mundo aberto single-player com identidade própria, gráficos realistas e arquitetura modular. Estado inicial: Rio Grande do Sul; primeira cidade: Canoas. Não utilizar nomes, marcas, personagens, código ou assets proprietários da franquia GTA.

## Tecnologias planejadas

- Unreal Engine 5 — versão exata `PENDENTE DE DEFINIÇÃO`;
- C++ nativo da Unreal para sistemas;
- Blueprints para composição e autoria;
- Git e GitHub para versionamento;
- ferramentas de IA como apoio documental e, futuramente, operacional.

Nenhuma versão de engine, plugin, autenticação ou instalação é presumida. Docker, servidores e dependências extras exigem justificativa e autorização específica.

## Estado atual

Não existe jogo, protótipo, projeto Unreal, código C++, Blueprint, mapa, personagem, asset ou gameplay. A `SPEC-001` está **PROPOSTA — AGUARDANDO APROVAÇÃO**. O `MARCO-001` está apenas planejado. Toda implementação depende de SPEC aprovada, revisão arquitetural, versão da engine definida e autorização explícita.

## Estrutura atual

| Caminho | Finalidade |
|---|---|
| `AGENTS.md`, `CLAUDE.md` | entrada principal da governança e ponteiro leve para Claude Code |
| `docs/FONTE-UNICA-VERDADE.md` | índice canônico de governança, arquitetura, estado e relatórios |
| `governance/politicas/` | fluxo, segurança, qualidade, Git, continuidade e integração VEYLOQ |
| `governance/agentes-jogo/` | 12 papéis especializados canônicos |
| `governance/historico/` | conteúdo recuperado do histórico, para referência |
| `docs/arquitetura/` | arquitetura futura UE5 |
| `docs/specs/` | SPEC-001 e MARCO-001 planejado |
| `docs/decisoes/`, `docs/tarefas/`, `docs/estado/` | decisões, tarefas e estado verificável |
| `templates/relatorios/` | modelos de relatório de continuidade |
| `.agents/skills/`, `agents/`, `commands/`, `kits/`, `bundles/` | pacote VEYLOQ preservado |
| `kits/veyloq/referencias/` | monólito original do VEYLOQ |
| `.opencode/`, `.claude/`, `.codex/`, `.github/` | adaptadores e integrações documentais |
| `src/`, `tests/` | diretórios reservados; `tests/` contém validação documental segura |
| `reports/` | diagnóstico, evidências e relatórios |
| `ATTRIBUTION.md` | créditos e licenças de terceiros |

## Governança

A hierarquia é definida em `AGENTS.md`. O fluxo obrigatório está em `governance/politicas/fluxo-obrigatorio.md`:

REQUISITOS → BRAINSTORMING → SPEC → PLANEJAMENTO → REVISÃO ARQUITETURAL → APROVAÇÃO DO USUÁRIO → [IMPLEMENTAÇÃO FUTURA] → TESTES → REVISÃO → HOMOLOGAÇÃO → RELATÓRIO.

O fluxo para antes de qualquer implementação até nova autorização. Nenhuma skill, agente ou comando pode autorizar ações destrutivas ou publicação remota por conta própria.

## Fonte única de verdade

`docs/FONTE-UNICA-VERDADE.md` define onde vive cada classe de informação. Adaptadores de IA consomem esses caminhos; não mantêm versões paralelas de arquitetura, decisões, estado ou pendências. O estado real do repositório e os relatórios verificáveis prevalecem sobre afirmações de sessões anteriores.

## Continuidade entre ferramentas

Protocolo em `governance/politicas/continuidade-ia.md`. Modelo reutilizável em `templates/relatorios/MODELO-RELATORIO-CONTINUIDADE.md`. Ao encerrar tarefa, registrar identificador, objetivo, arquivos alterados, decisões, testes, resultados, erros, pendências, próxima ação e estado do Git. Nenhum prompt com credenciais ou segredos deve ser registrado.

## Agentes especializados

Os 12 papéis canônicos estão em `governance/agentes-jogo/`: ORCHESTRATOR, ARCHITECT, WORLD DESIGNER, GAMEPLAY DESIGNER, AI ENGINEER, IMPLEMENTER, TESTER/QA, REVIEWER, SECURITY REVIEWER, DEVOPS/BUILD, DOCUMENTATION e PERFORMANCE ENGINEER. `IMPLEMENTER` permanece bloqueado nesta fase.

Eles são distintos dos 18 agentes genéricos VEYLOQ, classificados em `governance/politicas/integracao-veyloq.md`.

## Integração VEYLOQ

O pacote `pacote-desenvolvimento-com-ia` v1.0 foi preservado: 99 arquivos validados, 14 skills, 18 agentes genéricos, 8 comandos, 6 kits e 1 bundle. Licenças em `ATTRIBUTION.md` e nos arquivos `LICENSE.txt`. O monólito original está em `kits/veyloq/referencias/AGENTS-veyloq-original.md`.

Nenhum componente é ativado automaticamente. Componentes com servidor local, `git push`, `git clean`, `rm -rf` ou scripts não auditados permanecem inativos ou pendentes de validação.

## Ferramentas de IA — classificação operacional

| Ferramenta | Versão detectada | Classificação |
|---|---|---|
| Codex CLI | `codex-cli 0.171.0` | CONFIGURADA, NÃO TESTADA |
| OpenCode | `opencode 1.19.0` | CONFIGURADA, NÃO TESTADA |
| GitHub Copilot CLI | `GitHub Copilot CLI 1.0.109` | FORA DE ESCOPO, NÃO HOMOLOGADA |
| Claude Code | não instalada | NÃO DISPONÍVEL |

Executáveis e versões foram verificados. Nenhuma autenticação foi testada, nenhuma chamada de modelo foi executada e nenhuma ferramenta foi iniciada em sessão ativa. Isso evita consumo pago não autorizado. Adaptadores e documentação estão preparados para qualquer uma das três ferramentas, sem dependência obrigatória.

## Ambiente detectado

- Windows 11 Pro 10.0.26300, 64 bits;
- Git `2.55.0.windows.5`;
- Python `3.13.15`;
- Git LFS `3.7.1`;
- .NET `10.0.402`;
- Unreal Engine: NÃO DETECTADA;
- `cl.exe`, `clang-cl`, `g++`, `cmake`, `ninja` e `msbuild`: NÃO DISPONÍVEIS no PATH;
- diretórios de configuração de Codex e OpenCode existem no perfil, mas não foram lidos para evitar exposição de segredos.

## SPEC-001 e MARCO-001

- `docs/specs/SPEC-001-ARQUITETURA-INICIAL.md`: **PROPOSTA**.
- `MARCO-001 — Projeto Unreal inicial compilável`: planejado na seção 29 da SPEC; não executado.
- Dependências: definir versão da engine, revisão arquitetural e aprovação explícita do responsável pelo projeto.

## Como iniciar uma tarefa

1. Ler `AGENTS.md`, `docs/FONTE-UNICA-VERDADE.md` e políticas aplicáveis.
2. Verificar o estado do Git com comandos somente leitura.
3. Carregar sob demanda apenas o papel canônico necessário.
4. Seguir o fluxo obrigatório e registrar critérios de aceite.
5. Executar validações permitidas e registrar evidências em `reports/`.
6. Declarar explicitamente testes não executados e pendências.
7. Ao encerrar, gerar relatório de continuidade.

## Validações disponíveis

`tests/validar-preparacao.ps1` executa validações somente leitura de estrutura, contagens, referências, adaptadores, ausência de artefatos de jogo e `git diff --check`. Testes de Unreal Automation, gameplay, desempenho e assets dependem de projeto funcional e não foram executados.

## Limitações atuais

- Nenhuma homologação operacional com chamada de modelo.
- Nenhuma autenticação de IA verificada.
- Unreal Engine e toolchain C++ não detectados.
- Nenhum agente VEYLOQ ativado.
- Nenhum script de terceiros executado.
- Nenhum commit ou push havia sido realizado até a emissão dos relatórios; verificar o Git para o estado atual.
- Dependências documentadas ausentes: `context-manager`, `websocket-engineer`, `deployment-engineer`, `database-optimizer`, `context-compression`, `filesystem-context`, `project-development`.

## Próxima etapa

Definir a versão da Unreal Engine, revisar e aprovar a SPEC-001, registrar ADRs e somente então autorizar o MARCO-001. A implementação só começa após autorização específica.

Relatórios:
- `reports/RELATORIO-DIAGNOSTICO-INICIAL.txt`;
- `reports/RELATORIO-RUAS-DO-BRASIL-PREPARACAO-INICIAL.txt`;
- `reports/RELATORIO-RUAS-DO-BRASIL-HOMOLOGACAO-IA-SPEC-001.txt`.
