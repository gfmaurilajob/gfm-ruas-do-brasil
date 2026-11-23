# Política de Git e GitHub — Ruas do Brasil

## Estado e histórico

- Nunca apagar histórico Git.
- Não executar `git reset --hard`, `git clean`, reescrita de histórico ou comandos equivalentes.
- Não fazer `git push`, criar PR, publicar remoto ou criar commits automáticos de backup sem autorização explícita.
- Preservar conteúdo preexistente; registrar alterações em relatórios em `reports/`.

## Branches e commits (futuro)

- `main`: estado estável e homologado.
- `develop`: integração do trabalho autorizado.
- `feature/<id-ou-tema>`: trabalho isolado com escopo e SPEC/plano associados.
- Commits devem ser atômicos, em português, no formato `tipo: descrição curta`.
- Tipos sugeridos: `docs`, `chore`, `refactor`, `feat`, `fix`, `test`, `perf`.
- O commit de preparação técnica foi criado mediante autorização explícita; não houve commits automáticos de backup.

## Pull requests (futuro)

- PR deve referenciar SPEC/tarefa, critérios de aceite, testes executados e evidências.
- Revisão de arquitetura, segurança e documentação quando aplicável.
- PR não substitui autorização de implementação nem homologação operacional.

## Arquivos da Unreal

Não versionar:

- `Binaries/`
- `Intermediate/`
- `Saved/`
- `DerivedDataCache/`
- `.vs/`, `.idea/`, arquivos temporários e artefatos gerados
- credenciais, `.env`, chaves e certificados

Consultar `.gitignore` e `.gitattributes`. Arquivos binários de assets devem ser avaliados para Git LFS quando houver projeto real; não aplicar rastreamento LFS retroativo automaticamente.

## CI/CD futuro

- Não configurar workflows que executem builds, publicações ou operações remotas indisponíveis.
- Qualquer automação remota exige justificativa, ameaça, controles e autorização próprios.

## Referências

- `AGENTS.md`
- `governance/politicas/fluxo-obrigatorio.md`
- `governance/politicas/seguranca-execucao.md`
