# Arquitetura Tecnica
# App: O Guardiao Sobrio

> Versao: 1.0 — Junho 2026

---

## 1. Stack Recomendada

### Frontend — Mobile

| Tecnologia | Escolha | Justificativa |
|---|---|---|
| **Framework** | React Native (Expo) | Cross-platform iOS + Android, ecossistema JS, deploy simplificado |
| **Linguagem** | TypeScript | Tipagem, seguranca, escala |
| **Navegacao** | Expo Router (file-based) | Padrao moderno, suporte nativo |
| **UI Components** | NativeWind (Tailwind para RN) | Design system consistente, tokens da marca |
| **State Management** | Zustand | Leve, simples, sem boilerplate excessivo |
| **Formularios** | React Hook Form + Zod | Validacao robusta, performance |

### Frontend — Web (versao PWA / dashboard do criador)

| Tecnologia | Escolha | Justificativa |
|---|---|---|
| **Framework** | Next.js 15 (App Router) | SSR/SSG, performance, SEO, Vercel deployment |
| **Linguagem** | TypeScript | |
| **Styling** | Tailwind CSS v4 | |
| **Deploy** | Vercel | Integrado com GitHub, preview branches |

### Backend

| Tecnologia | Escolha | Justificativa |
|---|---|---|
| **BaaS** | Supabase | PostgreSQL gerenciado, Auth, Storage, Realtime, RLS |
| **Auth** | Supabase Auth | Email/senha, OAuth (Google, Apple) |
| **Storage** | Supabase Storage | Avatares, audios, PDFs de protocolos |
| **Realtime** | Supabase Realtime | Notificacoes, sync de dados |
| **Edge Functions** | Supabase Edge Functions (Deno) | Logica de negocio sensivel, webhooks, notificacoes push |
| **Push Notifications** | Expo Notifications + OneSignal | Lembretes diarios, alertas de protocolo |

### Banco de Dados

- **PostgreSQL via Supabase**
- Row Level Security (RLS) em todas as tabelas com dados de usuarios
- Migrations versionadas com Supabase CLI
- Backups automaticos diarios

### Infraestrutura

| Servico | Uso |
|---|---|
| Supabase (Free → Pro) | Backend, DB, Auth, Storage |
| Vercel | Web app / landing page |
| Expo EAS | Build e deploy de apps iOS + Android |
| GitHub | Repositorio de codigo, CI/CD |
| GitHub Actions | Testes automatizados, lint, build |
| OneSignal (Free) | Push notifications |

---

## 2. Arquitetura de Alto Nivel

```
[App Mobile / Web] 
     |
     | HTTPS / WebSocket
     |
[Supabase]
  |- Auth (JWT)
  |- PostgreSQL (RLS)
  |- Storage (avatares, PDFs)
  |- Edge Functions
  |- Realtime
     |
[OneSignal] <--- Push Notifications
[Expo EAS]  <--- Build iOS/Android
[Vercel]    <--- Web App / Landing
```

---

## 3. Seguranca

- **RLS obrigatoria** em todas as tabelas de dados de usuarios
- **Nenhum dado sensivel** de sobriedade exposto em logs ou analytics
- **Auth JWT** com refresh token rotation
- **Rate limiting** em Edge Functions para prevencao de abuso
- **Sem rastreamento** de comportamento de sobriedade para fins publicitarios
- **LGPD compliance**: botao de exclusao de conta e dados na tela de configuracoes

---

## 4. Monetizacao Tecnica

| Tier | Acesso | Preco | Implementacao |
|---|---|---|---|
| **Gratuito** | Checklist diario, Protocolo emergencia (3 usos/mes), Diario (7 dias) | R$ 0 | Supabase role: `free` |
| **Essencial** | Tudo do gratuito + Diario ilimitado + 13 Fundamentos + historico completo | R$ 19,90/mes | Supabase role: `essential` |
| **Guardiao** | Tudo do Essencial + Programa 30 Dias + modulo familiares + protocolo escudo ilimitado | R$ 39,90/mes | Supabase role: `guardiao` |
| **Anual Guardiao** | Igual ao mensal com desconto | R$ 299/ano | |

**Gateway de pagamento:** Stripe (global) ou Pagar.me (Brasil) — integrado via Supabase Edge Function webhook.

---

## 5. Offline First

As seguintes funcionalidades devem funcionar sem conexao:
- Checklist diario (sync quando reconectar)
- Diario de prompts (sync quando reconectar)
- Protocolos (conteudo estatico em cache local)
- Fundamentos (conteudo estatico em cache local)

**Implementacao:** WatermelonDB ou MMKV para storage local no React Native.

---

## 6. Observabilidade

| Ferramenta | Uso |
|---|---|
| Sentry | Crash reports mobile e web |
| Supabase Analytics | Queries lentas, erros de DB |
| PostHog (opcional) | Product analytics anonimizados (sem dados sensiveis) |

---

> Todas as decisoes tecnicas priorizam privacidade e simplicidade operacional.
> O stack e gerenciavel por 1-2 desenvolvedores.
