# Política de banco descartável para integração

Esta política só se aplica se uma dependência de banco for justificada e autorizada; ela não exige banco ou containers para o jogo single-player. A limpeza não pode remover volumes ou dados existentes e não usa `docker compose down -v`.

## Ciclo obrigatório, quando aplicável

1. Criar banco/container temporário isolado, com nome/ID único por execução.
2. Confirmar que o endpoint e banco identificam explicitamente ambiente de teste descartável.
3. Criar estruturas aplicando migrations/scripts de teste da versão sob validação.
4. Popular somente dados sintéticos e mínimos.
5. Executar todos os testes de integração aplicáveis e coletar resultados.
6. Mediante autorização e somente após confirmar que foram criados exclusivamente para a execução, descartar os recursos temporários de teste, inclusive em falhas, sem afetar volumes ou dados preexistentes.
7. Verificar que nenhum recurso temporário permaneceu.

Selecionar ferramentas de provisionamento apenas quando necessárias e compatíveis com a versão aprovada; não presumir uma ferramenta específica.

## Proteções obrigatórias

- Exigir ambiente identificado como `Test` e marcador explícito de recurso descartável.
- Rejeitar conexões com hosts, contas, nomes ou perfis configurados como dev compartilhado, homologação ou produção.
- Usar allowlist local/container, credencial efêmera e database name com sufixo único.
- Não aceitar connection string herdada do ambiente sem validação.
- Proibir operação destrutiva se não puder provar que o recurso é descartável.
- Não imprimir connection strings, senhas, tokens ou payloads em log.
- Não reutilizar esquema/banco de desenvolvedor pessoal como fallback.

## Falhas e cancelamento abrupto

Implementação futura deve usar encerramento e limpeza/finally/disposal e limites de tempo. Adicionar labels e identificação de execução para localizar órfãos; rotina de limpeza deve atuar somente em recursos com label de teste e idade/TTL definidos. Se a limpeza falhar, reportar explicitamente. Nunca remover por nome genérico, wildcard ou em volume compartilhado.

## Limite da política

Esta política descreve requisitos; não cria comandos, containers, banco ou código de teste nesta fase.
