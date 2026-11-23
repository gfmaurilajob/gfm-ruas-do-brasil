# Referência VEYLOQ — Pacote desenvolvimento com IA

Esta pasta preserva, como referência documental, o conteúdo original do pacote
VEYLOQ "Pacote desenvolvimento com IA: método, times e qualidade" v1.0, instalado
na raiz do projeto antes da consolidação da estrutura de IA do GTA Brasil.

## Conteúdo

- `AGENTS-veyloq-original.md` — cópia integral (232.894 bytes) do `AGENTS.md`
  monolítico original do pacote, com 18 personas e 8 comandos inline. NÃO é
  carregado como instrução ativa; serve apenas como referência/consulta.

## Por que foi preservado

O monolito original injetava ~58k tokens por sessão (context bloat) e trazia
personas/comandos de stack web incompatíveis com o domínio UE5/C++ do GTA Brasil.
A consolidação substituiu o `AGENTS.md` da raiz por uma versão enxuta e moveu o
conteúdo original para cá, preservando integralmente o texto e a proveniência.

## Itens relacionados mantidos na raiz

- `ATTRIBUTION.md` — créditos e licenças MIT (obrigatório preservar).
- `.agents/skills/` — 14 skills reutilizáveis (Superpowers + engenharia de contexto).
- `kits/`, `bundles/`, `agents/`, `commands/` — catálogo e avisos de licença do pacote.

## Proveniência

Pacote VEYLOQ v1.0 (slug `pacote-desenvolvimento-com-ia`, target agents,
releasedAt 2026-11-05). Superpowers de Jesse Vincent (MIT),
https://github.com/obra/superpowers; personas de VoltAgent (MIT); skills de
contexto de Muratcan Koylan (MIT). Ver `ATTRIBUTION.md` na raiz.

Não editar este material de referência sem necessidade comprovada; ele documenta
o estado anterior à consolidação.