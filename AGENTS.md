# AGENTS.md — Ruas do Brasil

Idioma oficial: português brasileiro (pt-BR). Código, comandos, nomes de arquivos e termos técnicos permanecem como estão.

Este arquivo é a instrução superior do repositório. Ele tem precedência sobre qualquer persona, skill, comando, kit, adaptador de ferramenta ou documentação de terceiros.

## 1. Identidade

Projeto independente de mundo aberto, ambientado no Brasil, com identidade própria. Estado inicial: Rio Grande do Sul; primeira cidade: Canoas. Jogo single-player, gráficos realistas, desenvolvimento modular e arquitetura escalável, com preparação para expansão futura.

Não utilizar nomes, marcas, personagens, código ou assets proprietários da franquia GTA. Não copiar conteúdo proprietário de outras obras. Não obter mapas, dados, imagens ou assets externos sem autorização e verificação de direitos.

O jogo ainda não existe: não há projeto Unreal, código C++, Blueprint, mapa, personagem, asset nem gameplay nesta fase.

## 2. Tecnologias autorizadas

Planejadas, não instaladas nem homologadas automaticamente:

- Unreal Engine 5;
- C++ nativo da Unreal para sistemas;
- Blueprints para composição e autoria;
- Git e GitHub para versionamento e colaboração;
- Ferramentas de IA como apoio documental e, futuramente, operacional.

Componentes como Unreal Build Tool, Unreal Automation Tool, Unreal Insights, Automation Testing, Git LFS, World Partition, Data Assets e Enhanced Input devem ser avaliados quanto à aplicabilidade. Nenhum deles é presumido instalado ou homologado.

Docker, servidores, pipelines e dependências extras exigem justificativa e autorização específica.

## 3. Hierarquia de instruções

1. Este `AGENTS.md`.
2. `governance/politicas/` — fluxo, segurança, qualidade, Git, continuidade e integração VEYLOQ.
3. `governance/historico/AGENTS-original-recuperado.md` — fonte histórica recuperada, usada como referência, não como autorização operacional.
4. `governance/agentes-jogo/` — 12 papéis especializados canônicos do projeto.
5. `docs/FONTE-UNICA-VERDADE.md` e `docs/specs/SPEC-001-ARQUITETURA-INICIAL.md` — índice canônico e especificação proposta.
6. `docs/arquitetura/ue5-arquitetura-inicial.md`, `docs/decisoes/`, `docs/tarefas/`, `docs/estado/` — arquitetura, decisões, tarefas e estado verificável.
7. Adaptadores locais: `.opencode/agents/`, `.claude/agents/`, `.github/copilot-instructions.md`, `.codex/README.md`, `CLAUDE.md`.
8. `kits/veyloq/referencias/AGENTS-veyloq-original.md` e demais conteúdos VEYLOQ — referência genérica de terceiros.

Em conflito, prevalece a ordem acima. Nenhuma persona, skill ou comando pode ignorar as regras superiores.

## 4. Política de autorização

Fase atual: documentação, organização, governaça e preparação técnica.

É PROIBIDO, sem autorização específica e posterior:

- criar projeto Unreal, código C++, Blueprints, mapas, assets, personagens ou gameplay;
- instalar programas ou dependências;
- executar scripts VEYLOQ não auditados;
- iniciar Docker, servidores ou serviços;
- publicar em remoto, fazer `git push` ou criar commits automáticos de backup;
- executar comandos destrutivos, inclusive `git reset --hard`, `git clean`, `rm -rf` e equivalentes;
- alterar configurações globais da máquina ou arquivos fora do repositório;
- desativar autenticação, autorização, TLS ou mecanismos de segurança.

Aprovação documental não autoriza implementação, infraestrutura ou implantação. O fluxo para antes de qualquer implementação até nova autorização.

## 5. Regras de segurança

- Não expor segredos, PII ou material proprietário; exemplos e testes usam dados sintéticos.
- Não armazenar credenciais no repositório.
- Menor privilégio; não delegar credenciais além do necessário.
- Não desativar autenticação, autorização ou TLS; não suprimir falhas críticas.
- Não executar ações destrutivas ou externas sem autorização específica.
- Verificar proveniência e licenças antes de usar ou redistribuir material de terceiros; consultar `ATTRIBUTION.md`.
- A política central de execução está em `governance/politicas/seguranca-execucao.md`.
- Serviços opcionais exigem ameaça, controles e aprovação próprios.

## 6. Papéis especializados do jogo

Os 12 papéis canônicos, recuperados do histórico, estão em `governance/agentes-jogo/`:

| Identificador | Papel | Responsabilidade-resumo |
|---|---|---|
| `orchestrator` | ORCHESTRATOR | Coordenação, dependências, permissões e consolidação |
| `architect` | ARCHITECT | Limites de sistemas Unreal, C++ e decisões arquiteturais |
| `world-designer` | WORLD DESIGNER | Organização regional, mapas, cenários e procedência |
| `gameplay-designer` | GAMEPLAY DESIGNER | Personagens, veículos, missões e economia de gameplay |
| `ai-engineer` | AI ENGINEER | Comportamento de NPCs, pedestres e trânsito |
| `implementer` | IMPLEMENTER | Implementação futura autorizada e integração de sistemas |
| `tester-qa` | TESTER/QA | Testes automatizados, funcionais e evidências |
| `reviewer` | REVIEWER | Revisão de qualidade, segurança e desempenho |
| `security-reviewer` | SECURITY REVIEWER | Avaliação de riscos e segurança |
| `devops-build` | DEVOPS/BUILD | Build, automação e infraestrutura auxiliar justificada |
| `documentation` | DOCUMENTATION | Documentação, rastreabilidade e relatórios |
| `performance-engineer` | PERFORMANCE ENGINEER | Desempenho, profiling e otimização |

`IMPLEMENTER` permanece bloqueado nesta fase. Os papéis são carregados sob demanda; não carregar todos no contexto principal. Eles são distintos dos 18 agentes genéricos VEYLOQ e não competem com eles.

## 7. Política de utilização do VEYLOQ

O pacote `pacote-desenvolvimento-com-ia` v1.0 foi preservado integralmente:

- 99 arquivos validados; 14 skills; 18 agentes genéricos; 8 comandos; 6 kits; 1 bundle;
- licenças mantidas em `ATTRIBUTION.md` e nos arquivos `LICENSE.txt`;
- monólito original preservado em `kits/veyloq/referencias/AGENTS-veyloq-original.md`.

Classificação, dependências ausentes e regras de ativação: `governance/politicas/integracao-veyloq.md`.

Nenhum componente VEYLOQ é ativado automaticamente. Componentes com `git push`, `git clean`, `rm -rf`, servidor local ou scripts de terceiros permanecem INATIVO ou PENDENTE DE VALIDAÇÃO conforme a política de execução.

Dependências documentadas e inexistentes, que não devem ser inventadas: `context-manager`, `websocket-engineer`, `deployment-engineer`, `database-optimizer`, `context-compression`, `filesystem-context`, `project-development`.

## 8. Regras de desenvolvimento Unreal/C++

- Separação: C++ para sistemas e lógica de baixo nível; Blueprints para composição e autoria.
- Não presumir versão da engine, plugins, autenticação ou instalações.
- Toda implementação futura depende de SPEC aprovada, fronteiras definidas por ARCHITECT e autorização explícita.
- Convenções de nomenclatura, módulos, plugins, assets, configurações e World Partition: `docs/arquitetura/ue5-arquitetura-inicial.md`.
- Não criar `.uproject`, código, Blueprint, mapa ou asset nesta fase.

## 9. Convenções de testes

- Testes de structure, referências internas, configurações, documentação e segurança são aplicáveis agora.
- Testes de Unreal Automation, gameplay, desempenho e assets só podem ser afirmados quando existir projeto funcional e execução real.
- Critérios e política: `governance/politicas/qualidade-testes.md`.
- Nunca declarar teste aprovado sem evidência; registrar NÃO TESTADO e justificativa quando aplicável.

## 10. Regras de Git

- Não executar `git push`, commits automáticos de backup, reset, clean ou reescrita de histórico.
- Preservar conteúdo preexistente e registrar alterações em relatórios.
- Convenções de branch, commit, PR e Git LFS: `governance/politicas/git-github.md`.
- Arquivos gerados e binários da Unreal não devem ser versionados; consultar `.gitignore` e `.gitattributes`.

## 11. Fluxo de documentação

Fluxo obrigatório, preservado do histórico:

REQUISITOS → BRAINSTORMING → SPEC → PLANEJAMENTO → REVISÃO ARQUITETURAL → APROVAÇÃO DO USUÁRIO → [IMPLEMENTAÇÃO FUTURA] → TESTES → REVISÃO → HOMOLOGAÇÃO → RELATÓRIO.

Detalhes e gates: `governance/politicas/fluxo-obrigatorio.md`. Todo ciclo gera relatório em `reports/` com evidências sanitizadas, testes executados ou não executados, falhas, pendências e decisão. A transferência entre ferramentas segue `governance/politicas/continuidade-ia.md` e o modelo em `templates/relatorios/MODELO-RELATORIO-CONTINUIDADE.md`.

## 12. Critérios de conclusão de tarefas

Só concluir quando:

- critérios de aceite atendidos;
- validações obrigatórias executadas e aprovadas;
- revisões aplicáveis de arquitetura, segurança e documentação registradas;
- evidências registradas em `reports/`;
- recursos temporários limpos sem remover dados existentes;
- riscos e pendências residuais declarados;
- nenhuma homologação inventada.

Falha ou validação ausente impede a conclusão.
