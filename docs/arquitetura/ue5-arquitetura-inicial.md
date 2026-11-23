# Arquitetura inicial UE5 — Ruas do Brasil

Documento de preparação técnica. Não há projeto Unreal, `.uproject`, módulo C++, Blueprint, mapa ou asset nesta fase. Nenhuma versão de engine, plugin, autenticação ou instalação é presumida.

## 1. Organização de módulos C++

Quando o projeto for autorizado, a separação mínima prevista é:

| Módulo | Responsabilidade prevista |
|---|---|
| `RDBCore` | tipos base, logging, configuração e utilitários compartilhados |
| `RDBWorld` | World Partition, streaming, carregamento regional e coordenadas de mundo |
| `RDBGameplay` | personagem, veículos, missões, economia e salvamento |
| `RDBAI` | NPCs, pedestres, trânsito e percepção |
| `RDBUI` | HUD e menus; composição em Blueprints |
| `RDBTests` | testes automatizados e utilitários de validação |

Nomes são convenções documentais, não código criado. A versão real da engine define a estrutura final de módulos e arquivos `.Build.cs`.

## 2. Convenções de nomenclatura

- Prefixo de projeto: `RDB` para classes, módulos e namespaces C++.
- Classes UObject/AActor: `URDB...`, `ARDB...`.
- Enums: `ERDB...`. Estruturas: `FRDB...`. Interfaces: `IRDB...`.
- Blueprints: `BP_RDB_<Funcao>`,Widgets `WBP_RDB_<Funcao>`, Data Assets `DA_RDB_<Dominio>`.
- Mapas: `L_<Regiao>_<Finalidade>`; subníveis de World Partition seguem a região.
- Nomes em inglês técnico para código; textos de documentação em pt-BR.
- Nenhuma referência a marcas ou personagens proprietários.

## 3. Separação entre C++ e Blueprints

- C++: sistemas, regras de baixo nível, performance, integração com engine e APIs reutilizáveis.
- Blueprints: composição de cenários, ajustes de design, UI e prototipagem de mecânicas aprovadas.
- Regra geral: lógica estável e reutilizável em C++; variação autoral em Blueprint.
- Blueprints não devem duplicar regras já implementadas em C++.
- Toda fronteira C++/Blueprint deve ser definida por ARCHITECT antes da implementação.

## 4. Responsabilidades dos subsistemas

- `RDBWorld`: organização espacial, setores, streaming e procedência de dados geográficos.
- `RDBGameplay`: estado de missão, progressão, inventário/economia e veículos.
- `RDBAI`: comportamento de NPCs, pedestres, trânsito e LOD de agentes.
- `RDBUI`: apresentação e entrada do jogador, usando Enhanced Input quando homologado.
- `RDBCore`: configuração, eventos compartilhados, telemetria local e diagnóstico.
- `RDBTests`: testes automatizados e evidências; não substitui revisão humana.

## 5. Organização de plugins

- Plugins próprios devem seguir o mesmo prefixo `RDB` e ter finalidade única.
- Plugin de terceiros exige verificação de licença, compatibilidade com a versão da engine e registro em `ATTRIBUTION.md`.
- Plugins de editor devem ser separados de plugins de runtime.
- Nenhum plugin é considerado instalado ou homologado nesta fase.

## 6. Gestão de assets

- Assets binários (`*.uasset`, `*.umap`) são candidatos a Git LFS; `.gitattributes` já contém regras, mas nenhum arquivo foi rastreado retroativamente.
- Material de terceiros exige proveniência e licença verificadas antes de entrar no repositório.
- Dados de mundo devem ser representados por Data Assets quando fizer sentido, com identificadores estáveis.
- Não criar mapas, personagens, veículos, texturas ou áudio nesta fase.

## 7. Estratégia de testes

- Testes unitários para regras puras em C++ quando houver módulo compilável.
- Testes de integração para fronteiras entre subsistemas.
- Automation Testing para fluxos de editor e gameplay quando existir projeto funcional.
- Testes de desempenho com Unreal Insights somente com build executável e cenário reproduzível.
- Validação de assets com ferramentas da engine quando houver pipeline real.
- Nenhum teste Unreal foi executado; registrar NÃO TESTADO até que exista evidência.

## 8. Organização de configurações

- Configurações padrão em `Config/` quando o projeto existir.
- Arquivos por categoria: Engine, Game, Input, Rendering, Editor e World.
- Valores sensíveis nunca devem ser versionados; usar dados sintéticos em exemplos.
- Diferenças por plataforma devem ser explícitas e mínimas.

## 9. Política de dependências

- Unreal Build Tool e Unreal Automation Tool: avaliar quando houver projeto; não assumir comandos disponíveis.
- Git LFS: regras declaradas, instalação e funcionamento não testados nesta preparação.
- World Partition, Data Assets e Enhanced Input: avaliar aplicabilidade na SPEC de arquitetura.
- Nova dependência externa exige justificativa, licença, ameaça, impacto e autorização.
- Nenhuma dependência foi instalada.

## 10. Estratégia de expansão do mundo

- Estado inicial: Rio Grande do Sul; primeira cidade: Canoas.
- Mundo dividido em regiões lógicas e setores carregáveis, com identificadores estáveis.
- World Partition deve ser avaliado como mecanismo de streaming; não é considerado homologado.
- Dados geográficos externos só entram com autorização e verificação de direitos.
- Expansões futuras devem ser adicionadas por SPEC e ADR, sem alterar identificadores existentes.
- A identidade visual e narrativa permanece própria, sem conteúdo proprietário de outras franquias.

## Referências

- `AGENTS.md`
- `governance/politicas/fluxo-obrigatorio.md`
- `governance/politicas/qualidade-testes.md`
- `governance/politicas/integracao-veyloq.md`
