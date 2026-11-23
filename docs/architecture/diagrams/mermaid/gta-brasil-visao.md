# Visão documental do template e do futuro jogo

```mermaid
flowchart LR
  U[Solicitação e requisitos] --> S[SPEC aprovada]
  S --> A[Arquitetura e decisões]
  A --> P[Plano aprovado]
  P --> T[Tarefas autorizadas]
  T --> V[Testes, revisão e evidências]
  V --> F[Conclusão validada]
```

```mermaid
flowchart TB
  J[Jogo local futuro] --> C[Personagem e controles]
  J --> W[Mundo e regiões]
  J --> G[Veículos, trânsito e pedestres]
  J --> M[Missões e economia]
  J --> S[Salvamento local versionado]
  W --> R[Área inicial inspirada em Canoas]
  R -. expansão progressiva .-> X[Outras regiões]
```

Os blocos são responsabilidades conceituais, não módulos implementados. Infraestrutura auxiliar só será acrescentada mediante necessidade aprovada.
