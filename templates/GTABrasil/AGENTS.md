# Instruções compartilhadas — GTA Brasil

Idioma oficial: português brasileiro. Este repositório é um template documental de agentes para um futuro jogo independente de mundo aberto, realista, inicialmente single-player e inspirado em Canoas, RS. Preserve identidade própria e não copie código, personagens, assets ou conteúdo proprietário. Não obtenha mapas, dados, imagens ou outros materiais externos sem autorização; verifique direitos antes do uso.

Esta é a referência central compartilhada por Codex CLI, Claude Code, GitHub Copilot CLI e OpenCode. Os pontos de entrada específicos de cada ferramenta devem encaminhar para este arquivo, respeitando seus mecanismos nativos e as capacidades verificadas na versão utilizada. A presença de instruções não comprova seu carregamento ou funcionamento.

A tecnologia futura é Unreal Engine 5, com C++ principal e Blueprints. Diretrizes de gameplay, mundo, convenções e testes: `docs/architecture/gta-brasil-diretrizes.md`. Responsabilidades dos agentes: `docs/architecture/papeis-agentes-gta-brasil.md`. Infraestrutura auxiliar: `docs/devops/infraestrutura-gta-brasil.md`. Não presuma versões instaladas, configurações ou autenticações.

A migração documental foi encerrada por decisão do usuário. A homologação operacional das ferramentas é parcial; consulte `reports/RELATORIO-GTA-BRASIL-TEMPLATE-001.txt` para as evidências e pendências antes de selecionar uma ferramenta.

## Fluxo e limites

Siga `docs/tasks/agent-workflow.md`: especificação e aprovação dos requisitos, arquitetura e decisões, plano e aprovação, tarefas e autorização explícita de execução. Aprovação documental não autoriza código, infraestrutura ou implantação. A autorização atual cobre apenas migração documental do template; desenvolvimento do jogo exige autorização específica posterior. Nesta fase não criar código, projeto Unreal, mapas, assets, serviços, bancos, Dockerfiles, Compose, scripts executáveis ou pipelines. Não instalar ferramentas nem executar Docker ou servidores.

Trabalhe apenas no escopo autorizado; não acesse serviços externos nem execute ações destrutivas sem autorização específica. Não exponha segredos, dados pessoais ou proprietários; se encontrar material suspeito, não o reproduza e interrompa alterações relacionadas. Preserve dados, volumes e controles de segurança. Não desabilite TLS ou autenticação. Não use dados reais identificáveis em exemplos ou testes.

Respeite as convenções nativas da versão selecionada da Unreal; C++ implementa sistemas conforme a necessidade e Blueprints apoiam composição e autoria. Evite dependências circulares e abstrações sem motivo. Prefira single-player local e não adicione servidores ou bancos sem requisito explícito. Avalie testes e desempenho para cada mudança futura; registre comandos, evidências, falhas e testes não executados. Informe fatos, inferências e pendências separadamente. Antes de remover arquivos, identifique dependências e crie backup verificável, sem publicá-lo.
