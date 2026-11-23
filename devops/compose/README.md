# Docker Compose local

Compose futuro poderá orquestrar dependências locais fictícias para desenvolvimento/testes. Não criar arquivo YAML nesta fase.

Separar perfil de teste descartável de ambiente de desenvolvimento; volumes nomeados somente quando intencionais. Preservar volumes e dados existentes; nunca usar `docker compose down -v`. A limpeza de recursos temporários criados por testes futuros requer isolamento comprovado e autorização específica.

Comandos planejados a documentar quando houver Compose autorizado: iniciar ambiente, executar testes, gerar relatórios, encerrar e remover somente recursos temporários identificados.
