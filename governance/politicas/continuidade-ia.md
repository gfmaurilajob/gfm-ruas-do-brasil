# Continuidade entre ferramentas de IA

Objetivo: permitir que Codex CLI, OpenCode, Claude Code ou outra ferramenta compatível continue uma tarefa sem depender do histórico privado da sessão anterior.

## Protocolo de transferência

Ao encerrar uma tarefa, registrar um relatório baseado em `templates/relatorios/MODELO-RELATORIO-CONTINUIDADE.md`, em `reports/`, contendo:

1. identificador da tarefa;
2. objetivo;
3. arquivos alterados;
4. decisões tomadas;
5. testes executados;
6. resultados;
7. erros;
8. pendências;
9. próxima ação recomendada;
10. estado do Git.

## Regras

- Usar o modelo de relatório; não inventar formato novo por ferramenta.
- Citar caminhos canônicos definidos em `docs/FONTE-UNICA-VERDADE.md`.
- Não registrar prompts com credenciais, tokens, segredos, PII ou material proprietário.
- O estado real do repositório, verificado por Git e arquivos, prevalece sobre afirmações não comprovadas de sessões anteriores.
- Relatórios de execução são evidência, não autorização. Autorização depende de `AGENTS.md`, políticas e aprovação explícita.
- A próxima ferramenta deve começar lendo `AGENTS.md`, `docs/FONTE-UNICA-VERDADE.md`, `docs/estado/ESTADO-IMPLEMENTACAO.md`, `docs/estado/PENDENCIAS.md` e o relatório mais recente em `reports/`.
- Não copiar o conteúdo integral da governança para adapters ou perfis específicos.
- Se uma ferramenta não estiver disponível, a continuidade é feita pelos documentos canônicos, sem instalação ou autenticação automática.

## Controles reais disponíveis

Instruções textuais não garantem isolamento técnico por si mesmas. Os controles efetivamente disponíveis nesta fase são:

- permissões declaradas nos adapters suportados por cada ferramenta (`permissions` no OpenCode; `tools` no Claude Code);
- ausência de hooks e de arquivos `settings.json` com automação;
- ausência de scripts VEYLOQ executados;
- validações somente leitura executadas antes de qualquer conclusão;
- limites de autorização registrados em `AGENTS.md` e `governance/politicas/seguranca-execucao.md`.

Nenhum sandbox externo foi exercitado neste ciclo.
