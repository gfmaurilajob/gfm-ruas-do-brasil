# Diretrizes futuras de arquitetura e mundo

Este documento orienta decisões futuras, não cria uma arquitetura física nem autoriza implementação. O jogo independente terá identidade própria, visual realista, primeira versão single-player e uma área pequena inspirada em Canoas, RS. A expansão para outras regiões depende de pesquisa, licenças e decisões posteriores; não copiar conteúdo proprietário de outras obras.

## Unreal e gameplay

Usar Unreal Engine 5, C++ como base dos sistemas e Blueprints para composição, configuração e comportamento adequado a designers. Evitar dependências circulares e definir fronteiras por responsabilidade, com APIs pequenas; introduzir módulos ou plugins apenas quando houver necessidade comprovada. Classes, propriedades e ciclo de vida devem respeitar os mecanismos de reflexão, garbage collection, componentes e padrões da versão da engine escolhida. Validar versão e plugins antes de firmar decisões; não presumir instalações.

Personagem e controles devem ser desacoplados das definições de apresentação; veículos e física devem ser avaliados com as ferramentas nativas disponíveis; trânsito e pedestres devem ter simulação, navegação e níveis de detalhe adequados ao orçamento. Missões descrevem objetivos e estados; economia tem regras e valores definidos por design; salvamento registra estado serializável com versão e migração e trata falhas sem sucesso silencioso. Os detalhes dependem de SPECs próprias. Mundo, missões e salvamento não devem exigir um serviço remoto para o protótipo single-player.

## Mundo e nomenclatura

Planejar um recorte jogável pequeno antes da expansão. Organizar logicamente por cidade, região e área; considerar World Partition, streaming, Data Layers e autoria colaborativa conforme compatibilidade e testes da versão selecionada. Identificar ruas, cruzamentos, semáforos, calçadas, edifícios, comércios, postos, oficinas, garagens, estacionamentos, paradas de ônibus, fluxos de tráfego, pedestres, missões e pontos de interesse. São categorias de planejamento, não ativos existentes.

Proposta de nomes técnicos sem acentos: regiões `BR_RS_Canoas_<Regiao>`, mapas `L_<Cidade>_<Area>`, Blueprints `BP_<Tipo>_<Descricao>`, malhas `SM_<Descricao>`, materiais `M_<Descricao>` e instâncias `MI_<Descricao>`; identificadores únicos e revisão humana evitam colisões. Não inferir limites, endereços ou nomes reais sem fonte autorizada. Não baixar dados, imagens ou modelos sem autorização; verificar licenças, marcas, privacidade e permissões antes do uso.

## Qualidade e operação

Definir metas mensuráveis de desempenho e plataformas na SPEC correspondente. Avaliar testes automatizados de regras, integração entre sistemas, fluxos funcionais de editor/jogo, salvamento e regressão, além de profiling de CPU, GPU, memória e streaming. Utilizar dados sintéticos e registrar evidências, falhas e ambiente. Build e empacotamento devem ocorrer em ambiente Unreal nativo autorizado; versões, licenças e máquinas de CI precisam de confirmação. Docker é opcional para dependências auxiliares justificadas; não introduzir serviços, bancos ou API para o single-player sem requisito aprovado. Nunca remover volumes ou dados existentes.
