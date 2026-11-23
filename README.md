# 🇧🇷 GFM — Ruas do Brasil

**Um novo mundo aberto inspirado no Brasil.**

![Status](https://img.shields.io/badge/Status-Planejamento-blue)
![Engine](https://img.shields.io/badge/Engine-Unreal%20Engine%205-black)
![Linguagem](https://img.shields.io/badge/Linguagem-C%2B%2B%20%7C%20Blueprints-blue)
![IA](https://img.shields.io/badge/Desenvolvimento-Agentes%20de%20IA-purple)
![Plataforma](https://img.shields.io/badge/Plataforma-PC-lightgrey)

---

## 🎮 Sobre o projeto

**GFM — Ruas do Brasil** é um projeto independente de jogo de mundo aberto, ambientado em um universo inspirado nas cidades, paisagens, na cultura e no cotidiano brasileiro.

A proposta é construir progressivamente um ambiente virtual que represente características do Brasil, combinando exploração, sistemas interativos e possibilidades de simulação.

O projeto tem como referência inicial uma região inspirada em **Canoas, no Rio Grande do Sul**, com possibilidade de expansão conforme as futuras definições de desenvolvimento.

O desenvolvimento será orientado por uma arquitetura modular, documentação técnica e agentes especializados de inteligência artificial.

> **Importante:** o projeto está em fase de estruturação técnica. Mecânicas, sistemas, mapas e demais funcionalidades ainda serão definidos e aprovados antes da implementação.

## 🎯 Objetivos

- Desenvolver um jogo independente de mundo aberto com identidade brasileira.
- Utilizar Unreal Engine 5 como tecnologia principal.
- Adotar C++ e Blueprints conforme as necessidades técnicas.
- Construir uma arquitetura modular, escalável e documentada.
- Utilizar agentes de IA para apoiar planejamento, implementação, testes e revisão.
- Estabelecer processos de qualidade, segurança e validação.
- Desenvolver o projeto progressivamente, com decisões técnicas registradas.

## 🛠️ Tecnologias previstas

| Tecnologia | Finalidade |
|---|---|
| Unreal Engine 5 | Motor gráfico e desenvolvimento do jogo |
| C++ | Programação de sistemas e funcionalidades |
| Blueprints | Programação visual e integração de sistemas |
| Git | Versionamento |
| GitHub | Repositório e colaboração |
| Codex CLI | Assistência ao desenvolvimento (principal) |
| OpenCode | Orquestração e execução assistida (principal) |
| GitHub Copilot CLI | Referência histórica; fora do escopo operacional atual |
| Claude Code | Ferramenta complementar; integração documental preparada, não homologada |

A utilização operacional das ferramentas depende de disponibilidade, configuração e homologação.

### Estado das ferramentas de IA

- OpenCode e Codex CLI: ferramentas principais, com homologação operacional parcial e evidências registradas.
- Claude Code: adaptadores documentais preparados em `.claude/`; não instalado nem testado neste ambiente.
- GitHub Copilot CLI: não faz parte das obrigações de homologação nem dos fluxos futuros; apenas referência histórica.

## 🤖 Desenvolvimento orientado por IA

O projeto prevê uma estrutura de agentes especializados para apoiar diferentes etapas do desenvolvimento.

| Agente | Responsabilidade |
|---|---|
| Orchestrator | Coordenar tarefas e agentes |
| Architect | Definir e revisar a arquitetura |
| Gameplay Designer | Planejar mecânicas e sistemas |
| World Designer | Planejar ambientes e mundo aberto |
| AI Engineer | Planejar sistemas inteligentes e NPCs |
| Implementer | Implementar funcionalidades autorizadas |
| Tester / QA | Planejar e executar testes |
| Reviewer | Revisar implementações |
| Security Reviewer | Avaliar riscos e segurança |
| DevOps / Build Engineer | Planejar builds e automações |
| Documentation | Manter a documentação técnica |
| Performance Engineer | Avaliar desempenho e otimizações |

Os agentes deverão operar conforme as políticas de governança e os limites de autorização do projeto.

A existência de uma definição documental não significa que o agente esteja automaticamente configurado ou homologado.

## 🧠 Skills e metodologia

A arquitetura de IA utiliza como referência um conjunto de 14 skills, incluindo:

- Brainstorming e levantamento de requisitos.
- Planejamento e execução de tarefas.
- Desenvolvimento orientado por testes (TDD).
- Depuração sistemática.
- Desenvolvimento assistido por subagentes.
- Revisão de código.
- Verificação antes da conclusão.
- Gerenciamento de branches e worktrees.
- Engenharia e otimização de contexto.

As skills serão utilizadas conforme a necessidade de cada tarefa, evitando carregar instruções desnecessárias.

## 🏗️ Arquitetura do projeto

A estrutura inicial é dedicada à organização do desenvolvimento.

Os principais componentes previstos incluem:

- **AGENTS.md:** instruções centrais para agentes.
- **governance/:** políticas, segurança e critérios de aprovação.
- **docs/:** especificações, decisões arquiteturais e documentação.
- **.agents/skills/:** habilidades reutilizáveis.
- **.opencode/:** configurações de agentes e comandos, quando homologadas.
- **.claude/:** adaptadores documentais opcionais para Claude Code.
- **docs/operations/:** guias operacionais documentais.
- **templates/:** modelos de documentação e planejamento.
- **reports/:** relatórios de execução e validação.
- **kits/ e bundles/:** referências e métodos complementares.

A organização poderá evoluir conforme as necessidades técnicas do projeto.

## 🔄 Fluxo de desenvolvimento

O processo previsto segue as etapas:

**Requisitos → Brainstorming → Especificação → Planejamento → Revisão arquitetural → Aprovação → Implementação → Testes → Revisão → Homologação → Documentação.**

Toda implementação deverá respeitar os critérios de aprovação estabelecidos.

As decisões arquiteturais relevantes serão registradas, permitindo rastreabilidade e revisão futura.

## 📍 Estado atual

**Fase: preparação da estrutura de inteligência artificial.**

O projeto encontra-se na etapa de organização de agentes, skills, documentação, governança e processos de desenvolvimento.

Ainda não foram iniciados:

- Projeto executável na Unreal Engine.
- Programação de sistemas em C++.
- Desenvolvimento de Blueprints.
- Construção do mapa.
- Implementação de gameplay.
- Desenvolvimento de personagens e NPCs.
- Produção de assets definitivos.

A implementação dessas funcionalidades dependerá das próximas definições do projeto.

### Estado da homologação

A infraestrutura de IA está consolidada, com validação estrutural local e no GitHub via
`.github/workflows/validate-structure.yml`. A homologação operacional é parcial e baseada em
evidências reais: OpenCode e Codex CLI foram executados; Claude Code foi apenas preparado
documentalmente; GitHub Copilot CLI é referência histórica e está fora do escopo atual.
Detalhes em `reports/RELATORIO-GTA-BRASIL-HOMOLOGACAO-FINAL-001.txt` e
`reports/RELATORIO-GTA-BRASIL-INTEGRACAO-CLAUDE-001.txt`.
Este projeto ainda não possui jogo, protótipo funcional ou implementação de gameplay.

## 🗺️ Roadmap

| Fase | Objetivo | Situação |
|---|---|---|
| 01 | Definição da identidade do projeto | Definida |
| 02 | Consolidação da arquitetura de IA | Em preparação |
| 03 | Homologação dos agentes e ferramentas | Parcial |
| 04 | Definição dos requisitos do jogo | Pendente |
| 05 | Planejamento arquitetural UE5 | Pendente |
| 06 | Preparação do ambiente de desenvolvimento | Pendente |
| 07 | Primeiro protótipo técnico | Pendente |
| 08 | Desenvolvimento incremental | Futuro |
| 09 | Testes, otimização e evolução | Futuro |

O roadmap é preliminar e poderá ser revisado.

## 🔐 Governança e segurança

O projeto adota os seguintes princípios:

- Nenhuma implementação sem autorização.
- Preservação dos arquivos e documentos existentes.
- Separação entre planejamento e execução.
- Verificações técnicas antes da conclusão de tarefas.
- Registro de alterações e evidências.
- Proteção de informações sensíveis.
- Respeito às licenças e à propriedade intelectual.
- Utilização de recursos de terceiros somente quando devidamente autorizada.

## 📄 Licenças e atribuições

O licenciamento do código e dos conteúdos originais do jogo ainda será definido.

Ferramentas, skills, bibliotecas e materiais de terceiros permanecem sujeitos às respectivas licenças e condições de utilização.

Consulte `ATTRIBUTION.md` para informações sobre os componentes de terceiros incorporados à estrutura de desenvolvimento.

## 👨‍💻 Desenvolvimento

**GFM — Projetos de Software**

Projeto independente desenvolvido com apoio de ferramentas e agentes de inteligência artificial.

**Repositório:** `gfmaurilajob/gfm-ruas-do-brasil`

---

*GFM — Ruas do Brasil*

*Das ideias às ruas. Um mundo brasileiro em construção.*