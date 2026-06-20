# Metricas de Funil — O Guardiao Sobrio

> O Guardiao Sobrio — Luis Vanzer
> Atualizado em: Junho 2026

Sem medicao, nao ha otimizacao. Este documento define os KPIs do funil de monetizacao, metas por fase do action-plan e a estrutura minima de rastreamento. O objetivo nao e burocracia — e saber quais pilares e formatos de video estao gerando receita real, nao so engajamento.

---

## Funil Macro e KPIs por Etapa

```
[VIEW / ALCANCE] --> [CLIQUE / LINK] --> [LEAD CAPTURADO] --> [COMPRA] --> [UPSELL]
```

| Etapa | Metrica | Ferramenta de Medicao |
|---|---|---|
| View / Alcance | Visualizacoes TikTok por video; alcance semanal | Analitico nativo TikTok |
| Clique / Link | CTR (cliques na bio ou link na legenda) | Linktree/Beacons + UTM |
| Lead Capturado | Novos assinantes de email por semana | Plataforma de email (MailerLite, Brevo) |
| Compra Entrada | Vendas de produtos R$ 47 por mes | Plataforma de venda (Hotmart, Kiwify) |
| Compra Medio | Vendas do Programa 30 Dias (R$ 197) | Plataforma de venda |
| Retencao Premium | Assinantes ativos Comunidade O Escudo (R$ 39,90/mes) | Plataforma de comunidade |
| Upsell | Conversao de comprador Entrada → Medio (%) | Planilha de cohort manual |

---

## Taxas de Conversao Referencia (Benchmarks para Infoprodutos)

Estas taxas sao referencias de mercado para validar se o funil esta saudavel:

| Conversao | Benchmark Saudavel | Sinal de Alerta |
|---|---|---|
| View → Clique no link bio | 0,5% – 2% | Abaixo de 0,3%: revisar CTA do video |
| Clique → Lead (opt-in) | 20% – 40% | Abaixo de 15%: revisar pagina de captura |
| Lead → Compra entrada (ate 30 dias) | 2% – 8% | Abaixo de 1%: revisar copy de email ou produto |
| Compra entrada → Programa (upsell) | 10% – 25% | Abaixo de 8%: revisar sequencia de email e CTA |
| Programa → Comunidade | 15% – 35% | Abaixo de 10%: revisar proposta de valor da comunidade |

---

## Metas por Fase do Action Plan

### Fase 1 — ESPELHO (Dias 1-30)

| Metrica | Meta Minima | Meta Ideal |
|---|---|---|
| Videos publicados | 20 | 24 |
| Visualizacoes totais | 10.000 | 50.000+ |
| Cliques no link bio | 200 | 1.000 |
| Leads capturados | 50 | 150 |
| Vendas de produto entrada | 0 (nao lancado ainda) | — |
| Taxa de abertura de email | Acima de 30% | Acima de 40% |

### Fase 2 — TATICA (Dias 31-60)

| Metrica | Meta Minima | Meta Ideal |
|---|---|---|
| Videos publicados | 20 | 24 |
| Novos leads no mes | 80 | 250 |
| Total de leads acumulados | 130 | 400 |
| Vendas Protocolo 72h (R$ 47) | 5 | 20+ |
| Taxa de clique no email (CTA) | Acima de 5% | Acima de 10% |
| Depoimentos coletados | 2 | 5+ |

### Fase 3 — ESCUDO (Dias 61-90)

| Metrica | Meta Minima | Meta Ideal |
|---|---|---|
| Videos publicados | 20 | 24 |
| Total de leads acumulados | 300 | 700 |
| Vendas Mapa 13 Fundamentos (R$ 47) | 5 | 15+ |
| Vendas Programa 30 Dias (R$ 197) | 3 | 10+ |
| MRR estimado (receita mensal recorrente) | R$ 500 | R$ 2.000+ |
| Lista de espera Comunidade | 10 | 30+ |

---

## Estrutura UTM — Rastreamento de Links

Todo link compartilhado no TikTok, email ou outros canais deve ter UTM para identificar origem da conversao.

### Formato padrao

```
https://seusite.com/produto?utm_source=[canal]&utm_medium=[formato]&utm_campaign=[pilar]
```

### Tabela de parametros

| Parametro | Valores usados |
|---|---|
| `utm_source` | `tiktok`, `email`, `instagram`, `youtube` |
| `utm_medium` | `video`, `bio`, `newsletter`, `stories`, `reel` |
| `utm_campaign` | `espelho`, `tatica`, `escudo`, `lancamento`, `bundle` |

### Exemplos

| Situacao | URL com UTM |
|---|---|
| Link bio TikTok para Checklist | `seusite.com/checklist?utm_source=tiktok&utm_medium=bio&utm_campaign=escudo` |
| CTA email Dia 7 para Protocolo 72h | `seusite.com/protocolo72h?utm_source=email&utm_medium=newsletter&utm_campaign=tatica` |
| Video ESPELHO com CTA para isca | `seusite.com/diario?utm_source=tiktok&utm_medium=video&utm_campaign=espelho` |

---

## Planilha de Cohort — Acompanhamento Minimo

Uma planilha simples mensal para rastrear o comportamento dos compradores:

| Coluna | O que registrar |
|---|---|
| Mes de entrada | Quando o lead entrou na lista |
| Isca capturada | Qual isca gratuita gerou o lead |
| Pilar de origem | Qual video (ESPELHO / TATICA / ESCUDO) gerou o clique |
| Compra 1 | Produto de entrada comprado (se houver) e data |
| Compra 2 | Upsell (Programa ou Comunidade) e data |
| Canal de origem | TikTok, email, Instagram, etc. |

> Revisar a planilha de cohort mensalmente para identificar quais pilares geram compradores, nao apenas seguidores.

---

## Ferramentas Minimas Recomendadas

| Finalidade | Ferramenta (Nivel Inicial) |
|---|---|
| Email e sequencias | MailerLite (gratuito ate 1.000 contatos) |
| Pagina de captura de leads | MailerLite built-in ou Linktree Pro |
| Venda de infoprodutos | Hotmart ou Kiwify (sem custo fixo — comissao na venda) |
| UTM builder | Planilha propria ou utm.io (gratuito) |
| Cohort tracking | Google Sheets (planilha manual, revisao mensal) |
| Analiticos TikTok | Nativo (Pro Account — gratuito) |

---

> Consulte tambem: `/estrategia/estrategia-multicanal.md` para metricas por canal.
> Consulte tambem: `/planos/action-plan-90-dias.md` para metas operacionais por fase.

*Atualizado em: Junho 2026*
