# Infraestrutura auxiliar futura

O editor Unreal, o jogo e o build Windows são previstos para execução nativa no ambiente apropriado. Docker e servidores locais somente serão usados quando uma necessidade auxiliar for documentada e aprovada. Não presumir banco, API, serviço online ou licença de runner para o protótipo. Avaliar volumes, redes, portas, segredos, dependências, persistência e isolamento antes de alterar qualquer infraestrutura. Jamais executar `docker compose down -v` ou excluir recursos existentes. Não criar Dockerfiles, Compose, pipelines ou iniciar serviços nesta fase documental.

Não foram identificados Dockerfiles ou arquivos Compose no inventário; estado do daemon, serviços e dados externos ao workspace não foi inspecionado. Ferramentas instaladas, versões e credenciais não foram verificadas.
