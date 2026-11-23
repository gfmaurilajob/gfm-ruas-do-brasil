# OpenCode — integração local

Versão detectada: `opencode 1.19.0` (`opencode --version` executado; nenhum agente iniciado).

Classificação operacional: **CONFIGURADA, NÃO TESTADA**.

Motivo: executável, versão e subcomandos foram verificados por `opencode --help`. O diretório de configuração no perfil existe, mas não foi lido para evitar exposição de segredos. Não foi executado `opencode run`, sessão interativa, servidor, ACP, nem chamada de modelo; isso evita custo não autorizado e sessão indefinida. Autenticação permanece **NÃO VERIFICADA**.

Formato confirmado no histórico deste repositório: `.opencode/agents/<id>.md` com frontmatter `description`, `mode` e `permissions`. Os 12 arquivos deste diretório são adaptadores; a fonte canônica de cada papel é `governance/agentes-jogo/<id>.md`.

Regras:

- começar por `AGENTS.md`, `docs/FONTE-UNICA-VERDADE.md`, `docs/estado/ESTADO-IMPLEMENTACAO.md` e `docs/estado/PENDENCIAS.md`;
- carregar papéis sob demanda; não carregar os 12 ao mesmo tempo;
- respeitar `governance/politicas/fluxo-obrigatorio.md`, `seguranca-execucao.md` e `continuidade-ia.md`;
- `shell` e `edit` estão negados nos adaptadores; leitura e ferramentas documentais são permitidas;
- ao encerrar, usar `templates/relatorios/MODELO-RELATORIO-CONTINUIDADE.md`;
- nenhum comando VEYLOQ é ativado automaticamente;
- não executar scripts de terceiros, publicar em remoto nem realizar ações destrutivas.

A disponibilidade de subagentes não foi presumida nem exercitada. A SPEC-001 está PROPOSTA e não autoriza implementação.
