# Roadmap Tecnico
# App: O Guardiao Sobrio

> Versao: 1.0 — Junho 2026

> Estado real (auditoria jun/2026): fases iniciais majoritariamente entregues. Pendências: lado do familiar
> (deploy/e2e), Comunidade (Fase 3), Contatos de Confiança, fonte General Sans (D15), cortes free×pago.
> Processo a adicionar: checagem anti-migration-drift no CI; manter `database.types.ts` ↔ migrations ↔ banco sincronizados.

---

## Fase 0 — Preparacao (Semana 1-2)

**Objetivo:** Ambiente de desenvolvimento pronto e design system validado.

### Tarefas

- [ ] Criar projeto Supabase (producao + staging)
- [ ] Criar projeto Expo com TypeScript + Expo Router
- [ ] Configurar NativeWind com tokens do design system
- [ ] Configurar Supabase Auth no app
- [ ] Criar schema do banco de dados (migration inicial)
- [ ] Aplicar RLS em todas as tabelas
- [ ] Configurar GitHub Actions: lint + test no PR
- [ ] Criar projeto Next.js para web (landing + PWA)
- [ ] Definir ambiente: `.env.local` (dev) e `.env.production`
- [ ] Configurar Sentry para crash reports

**Entregavel:** App em branco autenticando com Supabase + DB com schema aplicado.

---

## Fase 1 — MVP (Semana 3-8)

**Objetivo:** App publicavel na App Store e Play Store com as features core.

### Sprint 1 (Semana 3-4) — Onboarding + Auth + Checklist

- [ ] Splash screen com identidade da marca
- [ ] Fluxo de onboarding (3-5 telas)
- [ ] Cadastro e login (email/senha + Google)
- [ ] Criar/salvar perfil na tabela `profiles`
- [ ] Tela Home com counter de dias
- [ ] Checklist diario (5 itens, save no DB)
- [ ] Micro-animacoes do checklist
- [ ] Notificacao de lembrete diario

**Definition of Done:** Checklist salvo no Supabase com RLS. Counter calculado da `sobriety_start`.

### Sprint 2 (Semana 5-6) — Protocolo de Emergencia + Navigation

- [ ] Botao SOS flutuante (todas as telas)
- [ ] Tela PARE + RESPIRE (animacao de respiracao)
- [ ] Tela CONTATO (lista de contatos de confianca)
- [ ] Tela MOVIMENTO + ESTRUTURA
- [ ] Logica de limite de uso (free: 3/mes)
- [ ] Tab navigation (4 tabs)
- [ ] Tela de Marco de Dias
- [ ] Dark mode como padrao

**Definition of Done:** Protocolo completo funcionando offline. Limite free respeitado sem bloquear sessao ativa.

### Sprint 3 (Semana 7-8) — Polimento + Publicacao

- [ ] Tela de Perfil + Configuracoes
- [ ] PIN e biometria
- [ ] Exclusao de conta (LGPD)
- [ ] Links CVV e CAPS nas telas de protocolo
- [ ] Aviso etico em todas as telas de protocolo
- [ ] Testes em iOS e Android fisico
- [ ] Submissao App Store + Google Play
- [ ] Landing page (Next.js) publicada na Vercel

**Definition of Done:** App aprovado nas lojas. Landing com download link.

---

## Fase 2 — Crescimento (Semana 9-16)

**Objetivo:** Ativar monetizacao e aprofundar o metodo.

### Sprint 4 (Semana 9-10) — Diario + Fundamentos

- [ ] Diario de Prompts (CRUD + 1 prompt/dia)
- [ ] Rotacao de prompts por pilar
- [ ] Os 13 Fundamentos (listagem + detalhe)
- [ ] Fundamento do Dia
- [ ] Progresso: marcar fundamento como aplicado

### Sprint 5 (Semana 11-12) — Monetizacao

- [ ] Integrar Stripe (ou Pagar.me)
- [ ] Planos: Essential (R$ 19,90) + Guardiao (R$ 39,90)
- [ ] Webhook de pagamento -> atualiza `profiles.plan`
- [ ] Paywall suave: acesso limitado com upgrade claro (nunca bloqueio agressivo)
- [ ] Tela de planos com comparativo

### Sprint 6 (Semana 13-14) — Mapa de Gatilhos + Modulo Familiar

- [ ] CRUD de gatilhos
- [ ] Notificacao de horario de risco
- [ ] Modulo Familiar: convite + view segura
- [ ] Revogar acesso familiar

### Sprint 7 (Semana 15-16) — Estatisticas

- [ ] Relatorio semanal
- [ ] Graficos de progresso
- [ ] Exportar como PDF

---

## Fase 3 — Comunidade (Semana 17+)

**Objetivo:** Construir LTV com o Programa 30 Dias e Comunidade.

- [ ] Programa 30 Dias (conteudo diario sequenciado)
- [ ] Comunidade O Escudo (feed curado, posts anonimos, moderacao)
- [ ] Notificacoes de comunidade (opt-in)
- [ ] Analytics anonimizados (PostHog)
- [ ] A/B test: onboarding e paywall

---

## Criterios Globais de Qualidade

| Criterio | Meta |
|---|---|
| Crash-free rate | > 99.5% |
| App startup time | < 2s em dispositivo mid-range |
| Tempo para completar checklist | < 3 minutos |
| Protocolo de emergencia acessivel em | 2 toques |
| Cobertura de testes (unitarios) | > 60% nas funcoes de negocio |
| LGPD compliance | Exclusao de conta em 2 toques |
| Acessibilidade | WCAG AA em todas as telas |
| Zero promessas de cura | Auditoria antes de cada release |

---

## Decisoes Abertas (a Definir)

| # | Decisao | Opcoes | Prazo para decidir |
|---|---|---|---|
| DA1 | Gateway de pagamento | Stripe vs Pagar.me | Antes do Sprint 5 |
| DA2 | Storage local offline | WatermelonDB vs MMKV + cache manual | Antes do Sprint 1 |
| DA3 | Analytics | PostHog vs Mixpanel vs sem analytics | Antes da Fase 2 |
| DA4 | Comunidade: proprio vs Circle vs Discord | Construir no app vs plataforma externa | Antes da Fase 3 |
| DA5 | Suporte in-app | Chat com criador vs email vs sem suporte in-app | Antes da Fase 2 |

---

> Toda decisao tecnica e guiada por: privacidade do usuario, simplicidade operacional, e custo gerenciavel por 1-2 desenvolvedores.
