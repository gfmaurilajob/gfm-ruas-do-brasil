# Claude Code — integração documental

Comando `claude` não detectado neste ambiente (`Get-Command claude` e `claude --version` falharam). Classificação operacional: **NÃO DISPONÍVEL**.

Nenhuma instalação, autenticação ou credencial foi criada. Adaptadores e documentação ficam prontos para quando a ferramenta estiver disponível; o projeto não depende dela.

Formato confirmado no histórico deste repositório: `.claude/agents/<id>.md` com frontmatter `name`, `description` e `tools`. Os 12 arquivos deste diretório são adaptadores; a fonte canônica de cada papel é `governance/agentes-jogo/<id>.md`.

Regras:

- ler `AGENTS.md`, o ponteiro leve `CLAUDE.md`, `docs/FONTE-UNICA-VERDADE.md`, `docs/estado/ESTADO-IMPLEMENTACAO.md` e `docs/estado/PENDENCIAS.md`;
- ferramentas limitadas a leitura (`Read`, `Glob`, `Grep`);
- carregar papéis sob demanda;
- respeitar `governance/politicas/fluxo-obrigatorio.md`, `seguranca-execucao.md` e `continuidade-ia.md`;
- ao encerrar, usar `templates/relatorios/MODELO-RELATORIO-CONTINUIDADE.md`;
- não criar código do jogo, projeto/asset Unreal, mapa, personagem, gameplay, dependência, commit ou push;
- não publicar em remoto nem executar ações destrutivas.

Nenhum hook foi configurado; nenhum `settings.json` com hooks foi criado. A SPEC-001 está PROPOSTA e não autoriza implementação.
