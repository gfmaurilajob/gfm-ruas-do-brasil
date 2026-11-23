# SPEC-001 — Adaptação documental do template para GTA Brasil

## Metadados
- Status: requisitos e execução da migração documental aprovados pelo usuário em 2026-11-22.
- Data: 2026-11-22.
- Responsável pela aprovação: usuário responsável pelo projeto.
- Cenário: jogo independente single-player, Unreal Engine 5, C++ e Blueprints.

## Contexto e objetivo
Adaptar o template documental existente para orientar o desenvolvimento futuro de um jogo de mundo aberto com identidade própria, inspirado inicialmente em Canoas, RS, e preparado para expansão gradual a outras regiões brasileiras.

## Escopo e exclusões
Auditar e preparar instruções, governança, arquitetura proposta, organização do mundo, agentes, testes e documentação de infraestrutura. Preservar os diretórios principais e os recursos persistentes existentes. Não criar jogo, projeto Unreal, código C++, mapas, assets, infraestrutura executável ou pipelines nesta etapa. Não obter dados externos nem iniciar serviços. Não copiar conteúdo proprietário de terceiros.

## Requisitos e critérios de aceite
| ID | Requisito | Evidência esperada |
|---|---|---|
| RF-01 | Inventariar arquivos, dependências e referências existentes, inclusive ocultos. | Inventário e classificação rastreáveis por caminho. |
| RF-02 | Preparar arquitetura Unreal e convenções nativas, sem importar camadas .NET automaticamente. | Documentação com responsabilidades e dependências propostas. |
| RF-03 | Orientar personagem, veículos, trânsito, pedestres, missões, salvamento e mundo. | Descrição de responsabilidades e limites, sem implementação. |
| RF-04 | Planejar uma área inicial pequena inspirada em Canoas e expansão regional. | Convenções de regiões, mapas, objetos e assets; World Partition avaliado. |
| RF-05 | Preservar infraestrutura local e dados; usar containers apenas para serviços auxiliares justificados. | Inventário de configurações e validações não destrutivas quando aplicáveis. |
| RF-06 | Orientar Codex CLI, Claude Code, GitHub Copilot CLI, OpenCode e os dez papéis solicitados. | Responsabilidades centralizadas e integração por ferramenta comprovada ou explicitamente pendente. |
| RF-07 | Classificar componentes e registrar mudanças e evidências. | Relatório com justificativas, validações, pendências e caminhos reais. |

## Segurança e restrições
Sem acesso a serviços externos, downloads, inicialização de servidores ou operações destrutivas sem autorização específica. Preservar dados e volumes. Arquivamento é preferível quando houver dúvida; remoções exigem backup verificável e tratamento dos riscos. Não presumir licenças de marcas ou dados geográficos. Não registrar segredos ou dados pessoais.

## Dependências e validação
Identificar referências entre instruções, modelos e diagramas antes de alterá-los. Verificar caminhos e sintaxe das configurações existentes; validar Compose sem iniciar serviços apenas se houver configuração apropriada. Documentar o que não puder ser validado. Ferramentas e versões de Unreal e agentes permanecem não verificadas.

## Questões pendentes
- Delimitação exata da primeira área e critérios de fidelidade visual.
- Versão da Unreal, plataforma-alvo além de Windows e orçamento de desempenho.
- Origem e licenças dos futuros dados de referência e assets.
- As decisões técnicas detalhadas e a implementação futura do jogo exigem especificação e aprovação próprias.

## Aprovação
O usuário aprovou a migração documental e sua execução, mantendo a proibição de implementação do jogo e infraestrutura. Para trabalhos futuros continuam necessárias as aprovações de SPEC, plano e escopo de tarefas, conforme a governança.

Correção de escopo posterior: o usuário incluiu explicitamente GitHub Copilot CLI entre as quatro ferramentas, sem autorizar implementação do jogo.
