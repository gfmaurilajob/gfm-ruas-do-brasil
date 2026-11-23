# SPEC-001 — Arquitetura inicial

Status: **PROPOSTA — AGUARDANDO APROVAÇÃO**

Data: 2026-11-23
Responsável pela aprovação: responsável pelo projeto
Versão da Unreal Engine: **PENDENTE DE DEFINIÇÃO**

Este documento separa explicitamente:

- **Arquitetura aprovada:** nenhuma. Não existe ADR aprovada nem autorização de implementação.
- **Arquitetura proposta:** todo o conteúdo técnico abaixo, sujeito a revisão e aprovação.
- **Decisões pendentes:** seção 32 e `docs/estado/PENDENCIAS.md`.

Nada aqui autoriza criar projeto Unreal, código, Blueprint, mapa, asset, personagem, veículo, missão ou gameplay.

## 1. Visão geral do jogo

Ruas do Brasil é um jogo independente de mundo aberto, single-player, ambientado no Brasil, com identidade própria e estilo realista. O estado inicial é Rio Grande do Sul e a primeira cidade é Canoas. A ambição de longo prazo é um mundo persistente e expansível; o primeiro marco é apenas um projeto Unreal inicial compilável.

Não utilizar nomes, marcas, personagens, código, mapas, imagens, áudio ou assets proprietários de franquias existentes. Não copiar conteúdo de outras obras.

## 2. Objetivos técnicos

- Estabelecer uma base modular, simples e evolutiva, sem complexidade prematura.
- Definir fronteiras claras entre C++ e Blueprints.
- Preparar organização para streaming de mundo e dados com identificadores estáveis.
- Manter governança e evidências verificáveis independentes de ferramenta de IA.
- Permitir que a implementação comece somente após SPEC aprovada, versão da engine definida e autorização explícita.
- Preservar conteúdo histórico e pacote VEYLOQ como referência, sem ativação automática.

## 3. Escopo inicial

Escopo desta SPEC é documental e de planejamento:

- SPEC-001 e MARCO-001;
- protocolo de continuidade entre ferramentas;
- classificação de ambiente e ferramentas;
- validações não destrutivas.

Fora do escopo atual:

- criação de `.uproject`;
- código C++ ou módulos reais;
- Blueprints, mapas e assets;
- gameplay, IA de NPCs, trânsito e missões implementadas;
- instalação de engine, plugins ou dependências;
- builds, testes Unreal e profiling.

## 4. Requisitos funcionais futuros

RF-01 — O projeto deve abrir no editor da versão definida da engine.
RF-02 — Deve existir um módulo principal C++ funcional no MARCO-001.
RF-03 — A estrutura de conteúdo deve separar mapas técnicos, dados e assets por domínio.
RF-04 — Um mapa técnico vazio deve ser carregável para validação inicial.
RF-05 — O jogador deve poder ser representado por um personagem básico em marco posterior, não no MARCO-001.
RF-06 — Veículos, tráfego, pedestres e missões devem ser evoluções modulares, não pré-requisitos do primeiro protótipo.
RF-07 — Toda mecânica proposta deve ter fronteira de responsabilidade definida antes da implementação.
RF-08 — Dados de mundo e configurações devem usar identificadores estáveis.

## 5. Requisitos não funcionais

RNF-01 — Modularidade: sistemas devem ser substituíveis sem reescrita global.
RNF-02 — Desempenho: desenhar para mundo aberto, mas medir somente com cenário reproduzível.
RNF-03 — Segurança: nenhuma credencial ou segredo no repositório.
RNF-04 — Proveniência: todo material de terceiros exige licença verificada e registro em `ATTRIBUTION.md`.
RNF-05 — Rastreabilidade: decisões em `docs/decisoes/`, tarefas em `docs/tarefas/`, evidências em `reports/`.
RNF-06 — Compatibilidade multi-IA: nenhuma ferramenta é fonte única da arquitetura.
RNF-07 — Testabilidade: regras puras em C++ devem ser isoladas para teste quando existir módulo compilável.
RNF-08 — Escalabilidade: adicionar regiões não deve exigir mudança de identificadores existentes.

## 6. Premissas e restrições

- Engine planejada: Unreal Engine 5; versão exata não detectada.
- Linguagem principal: C++; complemento: Blueprints.
- Modo inicial: single-player.
- Nenhuma ferramenta de IA está autorizada a aprovar esta SPEC.
- Nenhuma implementação é permitida enquanto houver pendências P-001, P-002 e P-003.
- Instruções textuais em adaptadores não substituem controles reais de permissão/sandbox.
- Pacote VEYLOQ permanece preservado e classificado; componentes pendentes não são executados.

## 7. Versão da Unreal Engine

**PENDENTE DE DEFINIÇÃO.**

Não foi detectada instalação de Unreal Engine neste ambiente. Não存在一个 caminho de instalação, executável `UnrealEditor.exe`, `Build.bat`, `UnrealBuildTool.exe` ou entrada de registro Epic identificada. A versão final deve ser confirmada pelo responsável pelo projeto e registrada em ADR antes do MARCO-001.

## 8. Organização do projeto Unreal

Proposta, não criada:

```text
RuasDoBrasil/
  Config/
  Content/
    RDB/
      Maps/
      Data/
      Characters/
      Vehicles/
      UI/
      Environment/
  Source/
    RuasDoBrasil/
    RuasDoBrasilEditor/
  Plugins/
```

Nomes são convenções documentais. A estrutura real depende da versão da engine e da aprovação do MARCO-001.

## 9. Arquitetura C++

Proposta:

- C++ para regras estáveis, APIs reutilizáveis, integração com engine e lógica sensível a desempenho.
- Prefixo `RDB`.
- `URDB...` para UObject, `ARDB...` para Actor, `FRDB...` para structs, `ERDB...` para enums, `IRDB...` para interfaces.
- Eventos e configuração compartilhada concentrados em `RDBCore`.
- Nenhuma dependência de plugin de terceiros sem ADR e verificação de licença.

## 10. Estratégia de Blueprints

Proposta:

- Blueprints para composição, ajuste de design, UI e prototipagem de mecânicas já aprovadas.
- Convenções: `BP_RDB_<Funcao>`, `WBP_RDB_<Funcao>`, `DA_RDB_<Dominio>`.
- Blueprints não duplicam regras implementadas em C++.
- Toda fronteira C++/Blueprint deve ser revisada por ARCHITECT.
- Nenhum Blueprint será criado nesta fase.

## 11. Organização de módulos

Módulos previstos, não criados:

| Módulo | Responsabilidade | Prioridade proposta |
|---|---|---|
| `RDBCore` | tipos base, configuração, logging, eventos e utilitários | MARCO-001 |
| `RDBWorld` | World Partition, streaming, regiões e coordenadas | após MARCO-001 |
| `RDBGameplay` | personagem, veículos, missões e progressão | após base |
| `RDBAI` | NPCs, pedestres e trânsito | após base de mundo |
| `RDBUI` | HUD e menus | conforme necessidade |
| `RDBTests` | testes automatizados e utilitários de validação | com módulo compilável |
| `RuasDoBrasilEditor` | extensões de editor, se necessárias | somente se justificado |

A lista é evolutiva; o primeiro protótipo não implementa todos os módulos.

## 12. Subsistemas do jogo

Subsistemas propostos:

- `RDBCore`: fundação compartilhada.
- `RDBWorld`: espaço, setores e streaming.
- `RDBGameplay`: regras de jogador e progressão.
- `RDBAI`: agentes e trânsito.
- `RDBUI`: apresentação e entrada.
- `RDBTests`: validação automatizada.

Cada subsistema deve expor interface mínima e evitar dependência circular. Detalhamento em `docs/arquitetura/ue5-arquitetura-inicial.md`.

## 13. Sistema de mundo aberto

Proposta: mundo contínuo organizado por regiões lógicas e setores carregáveis. Rio Grande do Sul é região inicial; Canoas é primeira cidade. Identificadores de região devem ser estáveis e independentes de nomes de arquivos. Dados externos só entram com autorização e verificação de direitos.

Não é objetivo do MARCO-001 implementar mundo aberto jogável.

## 14. Estratégia World Partition

World Partition é candidato a mecanismo de streaming, não tecnologia homologada. Deve ser avaliado após definição da versão da engine e com mapa técnico real. Critérios de decisão: tamanho do mundo, granularidade de células, custo de edição, carregamento e compatibilidade com dados regionais. Registrar decisão em ADR.

## 15. Organização de mapas

Convenção proposta: `L_<Regiao>_<Finalidade>`. O primeiro mapa técnico do MARCO-001 deve ser vazio e usado apenas para validar abertura, compilação e carregamento. Mapas de conteúdo real dependem de assets autorizados e SPEC específica.

## 16. Sistema de personagens

Proposta futura: personagem controlável com input, movimento e câmera em C++/Blueprint conforme fronteira aprovada. No MARCO-001, nenhum personagem jogável é exigido; apenas estrutura de módulo e mapa técnico.

## 17. Sistema de veículos

Proposta futura: veículos como entidades modulares com dados em Data Assets e regras de direção em C++ quando estáveis. Não implementar no primeiro protótipo. Depende de decisão sobre integração com sistema de física da versão escolhida da engine.

## 18. Tráfego e pedestres

Proposta futura: tráfego e pedestres como parte de `RDBAI`, com LOD de agentes e prioridades de_simulação. Depende de mundo carregável e orçamento de desempenho medido. Não incluir no MARCO-001.

## 19. Inteligência artificial de NPCs

Proposta futura: comportamento por camadas — percepção, decisão, navegação e animação — com APIs em C++ e parametrização em Data Assets/Blueprints. Nenhum sistema de IA será implementado antes de fronteira arquitetural aprovada.

## 20. Interação com o ambiente

Proposta futura: interações por interfaces claras, com objetos interativos registrando estado mínimo. Depende de conteúdo autorizado e testes funcionais. Não faz parte do MARCO-001.

## 21. Sistema de missões

Proposta futura: missões como dados com identificadores estáveis, condições e recompensas, gerenciadas por `RDBGameplay`. Evitar acoplamento direto com UI e atores específicos. Implementação depende de SPEC dedicada.

## 22. Salvamento e carregamento

Proposta futura: salvamento com versão de esquema, dados sintéticos em testes e migração explícita quando necessário. Nenhuma credencial, PII ou dado real deve ser usado. Não implementar no MARCO-001.

## 23. Interface do usuário

Proposta futura: HUD e menus em `RDBUI`, com Blueprints para composição e C++ para lógica reutilizável. Enhanced Input deve ser avaliado, não presumido. Nenhuma UI é exigida no MARCO-001.

## 24. Gerenciamento de assets

Proposta:

- assets por domínio em `Content/RDB/`;
- Data Assets para dados estáveis;
- nomes `DA_RDB_<Dominio>`;
- `.uasset` e `.umap` como candidatos a Git LFS;
- nenhum rastreamento LFS retroativo;
- proveniência e licença verificadas antes de inclusão;
- nenhum asset de terceiros copiado nesta fase.

## 25. Estratégia de desempenho

Medir somente com build executável e cenário reproduzível. Ferramentas como Unreal Insights e estatísticas da engine devem ser avaliadas quando existir projeto. Orçamentos de frame, memória e streaming devem ser definidos em SPEC específica após medição. Nenhum resultado de desempenho é afirmado agora.

## 26. Testes e validação

Agora: structure, referências internas, integridade do pacote, documentação, configuração e segurança. Depois:

- testes unitários para regras puras em C++;
- testes de integração entre módulos;
- Automation Testing com projeto funcional;
- testes de performance e assets com engine e cenário real.

Política em `governance/politicas/qualidade-testes.md`. Nenhum teste Unreal foi executado.

## 27. Git e Git LFS

Branch atual: `develop`. HEAD inicial: `081039b85492654dd659d04483acdc8f08410210`. Convenções em `governance/politicas/git-github.md`.

Nenhum commit ou push foi criado neste ciclo. `.gitignore` e `.gitattributes` preveem artefatos Unreal e LFS, mas nenhum binário foi rastreado retroativamente. LFS será avaliado quando houver projeto real.

## 28. Estrutura de diretórios

Estrutura documental atual inclui:

```text
AGENTS.md
CLAUDE.md
governance/
  politicas/
  agentes-jogo/
  historico/
docs/
  arquitetura/
  specs/
  decisoes/
  tarefas/
  estado/
  FONTE-UNICA-VERDADE.md
templates/relatorios/
reports/
src/
tests/
```

`src/` e `tests/` permanecem sem código de jogo. `tests/` pode conter scripts seguros de validação documental.

## 29. Etapas de implementação — MARCO-001 planejado

Nome: **MARCO-001 — Projeto Unreal inicial compilável**.

Objetivo: criar futuramente um projeto Unreal Engine 5 com C++ e Blueprints, sem gameplay complexo.

Critérios propostos:

1. projeto Unreal criado na versão confirmada;
2. projeto abre no editor;
3. compilação C++ bem-sucedida;
4. módulo principal `RDBCore` funcional;
5. estrutura de conteúdo organizada conforme seção 8;
6. mapa técnico vazio carregável;
7. teste básico executado e evidenciado;
8. documentação e ADRs atualizados.

Dependências: P-001, P-002, P-003 e autorização explícita. O MARCO-001 **não foi executado** neste ciclo.

Ordem futura sugerida após aprovação: confirmar engine → criar projeto → módulo principal → mapa técnico → teste básico → relatório. Implementação de mundo, personagens, veículos, IA e missões fica para marcos posteriores.

## 30. Riscos técnicos

- Versão da engine indefinida pode invalidar caminhos, plugins e APIs.
- Nenhum compilador C++ detectado além de `dotnet`; toolchain real não validada.
- World Partition pode ser excessivo ou inadequado para o primeiro protótipo.
- Assets externos podem trazer risco de licença e proveniência.
- Dependência de uma única ferramenta de IA pode quebrar continuidade; protocolo mitiga, mas não elimina.
- Complexidade prematura de tráfego, IA e missões pode atrasar o primeiro marco.
- Instruções textuais de IA não garantem isolamento técnico sem permissões reais.

## 31. Critérios de aceitação

Para esta SPEC ser considerada pronta para aprovação:

- conter as 32 seções exigidas;
- registrar Unreal como `PENDENTE DE DEFINIÇÃO`;
- separar aprovado, proposto e pendente;
- não conter código, mapa ou asset;
- referenciar fonte única de verdade e protocolo de continuidade;
- registrar MARCO-001 apenas como planejado;
- ser aprovada explicitamente pelo responsável pelo projeto.

A aprovação ainda não autoriza implementação; é necessária autorização específica posterior.

## 32. Decisões pendentes

| ID | Decisão | Status |
|---|---|---|
| D-001 | Versão exata da Unreal Engine | PENDENTE |
| D-002 | Aprovação da SPEC-001 | PENDENTE |
| D-003 | Revisão arquitetural por ARCHITECT | PENDENTE |
| D-004 | Estrutura final de módulos e `.Build.cs` | PENDENTE |
| D-005 | Uso de World Partition no primeiro mapa | PENDENTE |
| D-006 | Plugin e versão de Enhanced Input | PENDENTE |
| D-007 | Política final de Git LFS para assets | PENDENTE |
| D-008 | Toolchain C++ e compilador homologado | PENDENTE |
| D-009 | Homologação operacional de ferramentas de IA com chamada de modelo | PENDENTE |

Referências:
- `AGENTS.md`
- `docs/FONTE-UNICA-VERDADE.md`
- `docs/arquitetura/ue5-arquitetura-inicial.md`
- `governance/politicas/fluxo-obrigatorio.md`
- `governance/politicas/continuidade-ia.md`
- `docs/estado/PENDENCIAS.md`
