# Política de qualidade e testes — Ruas do Brasil

## Princípios

- Nenhuma homologação sem evidência real.
- Nenhum teste declarado aprovado sem execução registrada.
- Testes não executados devem constar como NÃO TESTADO, com justificativa.
- A fase atual é documental; não existe projeto Unreal funcional.

## Testes aplicáveis nesta fase

| Categoria | O que validar | Status |
|---|---|---|
| Estrutura | diretórios com finalidade real, sem pastas vazias injustificadas | Aplicável agora |
| Referências internas | caminhos citados em `AGENTS.md`, README e políticas existem | Aplicável agora |
| Configurações | sintaxe de `.gitignore`, `.gitattributes`, adaptadores e arquivos de política | Aplicável agora |
| Documentação | consistência entre README, AGENTS e estado real do repositório | Aplicável agora |
| Integridade VEYLOQ | 99 arquivos, 14 skills, 18 agentes, 8 comandos, 6 kits, 1 bundle; licenças | Aplicável agora |
| Governança | hierarquia, 12 papéis, fluxo de aprovação e política de execução presentes | Aplicável agora |
| Segurança de comandos | comandos perigosos classificados e isolados | Aplicável agora |

## Testes somente no futuro

| Categoria | Condição necessária |
|---|---|
| Testes unitários C++ | módulo Unreal compilável e projeto funcional |
| Testes de integração | subsistemas implementados com fronteiras definidas |
| Testes de gameplay | protótipo funcional, mapas e personagens autorizados |
| Unreal Automation Testing | engine e projeto funcional disponíveis |
| Testes de desempenho / Unreal Insights | build executável e cenário reproduzível |
| Validação de assets | pipeline de assets e Git LFS avaliados |
| Testes de NPCs, veículos e trânsito | sistemas implementados e aprovados |

Critérios de aceite de cada tarefa futura devem ser verificáveis, com evidência sanitizada em `reports/`. Publicação exige autorização específica.
