# PRD — App O Guardiao Sobrio

> Product Requirements Document
> Versão: 2.0
> Stack: Expo / React Native (Expo Router) · Supabase · Vercel
> Atualizado em: Junho 2026
> Fonte de verdade: este arquivo + repositório guardiao-sobrio-docs

---

## 1. Visão do Produto

### 1.1 Problema

Pessoas em processo de sobriedade — e seus familiares — não têm acesso a uma ferramenta digital laica, honesta, sem jargão de coach e sem vínculo religioso que:

- Apoie os **primeiros 30 dias** (período de maior risco de recaída)
- Entregue protocolos de crise disponíveis **24h por dia**, no celular
- Conecte quem está no caos com uma comunidade real de suporte
- Permita que **familiares e cônjuges** também tenham estrutura e orientação

Grupos como AA existem mas têm barreira religiosa e de anonimato. Terapeutas são caros e indisponíveis às 23h quando o impulso chega. O app O Guardião Sóbrio preenche essa lacuna.

### 1.2 Solução

Um aplicativo (Expo / React Native, com versão web via react-native-web) que entrega:

1. **Ferramenta diária gratuita** — contador de sobriedade, checklist e protocolo de crise (conversão de leads e prova de valor)
2. **Conteúdo por plano de assinatura** — protocolos, fundamentos e programas liberados conforme o plano (Free / Essential / Guardião)
3. **Comunidade fechada** — O Escudo (assinatura mensal/anual)
4. **Painel de criador** — dashboard para Luis gerenciar conteúdo, leads e receita

### 1.3 Posicionamento

> "Sobriedade não é abstinência. É construção."

O app não é um substituto para psiquiatras, psicólogos ou grupos de apoio. Essa afirmação deve aparecer em tela na autenticação e em todas as páginas de produto.

### 1.4 Diferencial Central

- Método próprio (ESPELHO · TÁTICA · ESCUDO) — não é 12 passos, não é coaching genérico
- Tom da trincheira: fala de quem está no processo, não de quem chegou no outro lado
- Inclui familiares e cônjuges como cidadãos de primeira classe
- Frases de âncora próprias, protocolos práticos, fundamentos aplicáveis hoje
- Limite ético claro: o app complementa, nunca substitui profissionais de saúde

---

## 2. Usuários

### 2.1 Personas

| Persona | Quem é | Dor central | Entrada no app |
|---|---|---|---|
| **Pedro, 38 anos** | Homem que quer parar de beber, ainda na negação ou nos primeiros dias | "Não sei como atravessar hoje" | Vídeo TikTok → onboarding → cadastro gratuito (ou modo anônimo) |
| **Marcos, 42 anos** | Em processo, já parou mas frágil — medo de recaída | "Preciso de estrutura para não cair" | Assinatura (trial de 5 dias → Essential/Guardião) |
| **Ana, 35 anos** | Cônjuge/familiar de quem bebe | "Não sei como ajudar sem me destruir" | Pilar ESCUDO no TikTok → Guia do Familiar → app |
| **Luis (Admin)** | Criador da marca | Gerenciar conteúdo, leads, receita e comunidade | Painel admin protegido |

### 2.2 Jornada Principal (Pedro → Marcos → Comunidade)

```
Explora sem cadastro (modo anônimo) ou cria conta
|
Ativa o trial de 5 dias (acesso Guardião completo)
|
Assina Essential (R$ 19,90/mês) ou Guardião (R$ 39,90/mês) via Stripe
|
Renova a assinatura (retenção) — Comunidade O Escudo inclusa no plano Guardião
```

---

## 3. Objetivos do Produto (OKRs)

### Objetivo 1 — Retenção e Engajamento

- KR1: 60% dos usuários ativos completam o checklist diário em pelo menos 5 dias da primeira semana
- KR2: Taxa de retenção D7 acima de 40%
- KR3: Taxa de retenção D30 acima de 20%

### Objetivo 2 — Monetização

- KR1: Conversão free → pago acima de 8% nos primeiros 90 dias
- KR2: Receita mensal recorrente (MRR) de R$ 2.000 no mês 3
- KR3: LTV médio acima de R$ 150

### Objetivo 3 — Impacto Real

- KR1: NPS acima de 60
- KR2: 80% dos usuários reportam que o checklist diário reduziu a sensação de risco
- KR3: Zero promessas de cura ou resultados garantidos em qualquer tela do app

---

## 4. Arquitetura do Produto

### 4.1 Módulos

| Módulo | Acesso | Descrição |
|---|---|---|
| **Landing Page** | Público | Apresentação da marca, CTA para cadastro e produtos |
| **Ferramenta Diária** | Gratuito (autenticado) | Contador, checklist, protocolo de crise |
| **Biblioteca de Conteúdo** | Por plano de assinatura | Protocolos, fundamentos, programas |
| **Comunidade O Escudo** | Assinatura ativa | Feed, comentários, suporte mútuo |
| **Painel Admin** | Luis apenas | Gestão de conteúdo, usuários, produtos, métricas |

### 4.2 Stack Técnica

| Camada | Tecnologia | Justificativa |
|---|---|---|
| **Frontend** | Expo / React Native (Expo Router) | App iOS/Android + web via react-native-web (deploy no Vercel) |
| **Auth** | Supabase Auth (e-mail/senha + OAuth Google/Apple + modo anônimo) | Cadastro/login com senha; OAuth; "explorar sem cadastro" com trial de 5 dias |
| **Banco de dados** | Supabase PostgreSQL | RLS nativo por usuário/produto |
| **Storage** | Supabase Storage | PDFs, assets de produto, fotos de perfil |
| **Edge Functions** | Supabase Edge Functions | Webhooks de pagamento, notificações |
| **Pagamentos** | Stripe (via Supabase webhook) | PIX + cartão; gerenciamento de assinaturas |
| **Deploy** | Vercel | Preview deploys, Edge Network, CI/CD automático |
| **Email** | Resend | Transacional: confirmação, acesso ao produto, boas-vindas |
| **Estética** | NativeWind (Tailwind para React Native) | Design system noir realista — paleta escura |

---

## 5. Funcionalidades por Módulo

> ⚠️ NÃO IMPLEMENTADA no app (auditoria jun/2026): o app entra em welcome → onboarding; não há landing pública/SSR. Especificação mantida como referência para um site futuro.

### 5.1 Landing Page (público)

**Objetivo:** Converter visitante do TikTok em lead cadastrado ou comprador direto.

**Seções obrigatórias:**

| Seção | Conteúdo |
|---|---|
| Hero | Headline direta + CTA "Começar agora — grátis" + sub-CTA "Ver produtos" |
| Prova social | Número de dias somados da comunidade + depoimentos reais (quando disponíveis) |
| O Método | Explicação visual dos 3 pilares: ESPELHO · TÁTICA · ESCUDO |
| Produtos | Cards dos 4 produtos pagos com preço explícito (sem enrolação) |
| Para familiares | Seção separada com CTA para o Guia do Familiar |
| Sobre Luis | Narrativa da trincheira — não herói, guardião em combate |
| Disclaimer | "Este app não substitui psiquiatra, psicólogo ou grupos de apoio" |
| Footer | Links legais (termos, privacidade), redes sociais |

**Regras de design:**
- Paleta noir: preto `#0e0e0e`, cinza chumbo `#1c1c1e`, dourado opaco `#c9a84c`
- Tipografia: display serifado bold para headlines, sans-serif para corpo
- Sem gradientes coloridos, sem ícones em círculos coloridos, sem emojis como elementos de design
- CTA primário: fundo dourado, texto escuro — único elemento de cor quente por seção

### 5.2 Autenticação

- **E-mail e senha** (cadastro/login) + **OAuth Google/Apple** + **modo anônimo** ("explorar sem cadastro"), com confirmação de e-mail
- Confirmação de email obrigatória
- Ao primeiro login: tela de boas-vindas com disclaimer obrigatório (não substituição de profissionais) + pergunta: "Você está começando sua jornada ou é familiar de alguém em processo?"
- A resposta define a `persona` do usuário: `user_type: 'self' | 'family'` — personaliza a home

### 5.3 Ferramenta Diária (gratuita, autenticada)

O núcleo gratuito. Prova de valor diária. Motor de retenção orgânica.

#### 5.3.1 Contador de Sobriedade

- Usuário define a data de início da sobriedade atual
- Exibe: dias, horas, minutos — em tempo real
- Ao marcar o dia: micro-animação de confirmação (sem exagero)
- Histórico de streaks visível (30 dias, 60 dias, etc.)
- Se o usuário registrar recaída: fluxo empático — sem punição, sem reset agressivo:
  > "Hoje foi difícil. O Protocolo de Recaída está disponível agora."
  > CTA para o protocolo gratuito de crise

#### 5.3.2 Checklist Diário de Segurança

Baseado em `/protocolos/seguranca-e-respeito-24h.md`:

- **Manhã:** dormiu 6h+? tomou água? tem plano para as próximas 8h?
- **Final da tarde (push notification às 17h):** comeu nas últimas 4h? identificou gatilho hoje? tem contato humano planejado?
- **Noite:** o perímetro foi mantido? houve situação de risco? como respondeu?

O checklist é marcado diariamente. Dados armazenados em `daily_logs` no Supabase.

#### 5.3.3 Protocolo de Crise (Botão do Escudo)

Botão fixo, sempre visível, em destaque na home: **"ATIVAR ESCUDO"**

Ao pressionar:
1. Tela de resposta imediata com as 5 etapas do protocolo (baseado em `/protocolos/protocolo-escudo-72h.md`)
2. Timer de 5 minutos visível: "Não tome nenhuma decisão nos próximos 5 minutos"
3. Breathing exercise animado: 4s in · 4s hold · 6s out
4. Campo: "Com quem você pode falar agora?" + botão de ligação/mensagem rápida
5. Movimento: "Saia do ambiente. 10 minutos."

Essa funcionalidade é **sempre gratuita**. Nunca bloqueada por paywall.

#### 5.3.4 Diário de Gatilhos

- Registro simples: horário, situação, emoção, como respondeu
- Visualização de padrão após 7 dias: "Seus gatilhos aparecem mais às [horário] quando você está [emoção]"
- Dados locais no Supabase — visíveis apenas para o próprio usuário (RLS estrito)

### 5.4 Biblioteca de Conteúdo (desbloqueio por compra)

Cada plano de assinatura libera um conjunto de conteúdo:

> **Modelo vigente: ASSINATURA (D12).** O conteúdo é liberado por plano, não por compra avulsa.

| Plano | Preço | Acesso |
|---|---|---|
| Free | R$ 0 | Acesso básico (limites definidos em `07-regras-de-negocio.md`) |
| Essential | R$ 19,90/mês | Recursos do plano Essential (ver matriz em `07-regras-de-negocio.md`) |
| Guardião | R$ 39,90/mês | Tudo do Essential + Programa 30 Dias + Módulo Familiar + Comunidade |

> A matriz detalhada de recursos por plano é a de `07-regras-de-negocio.md` (fonte única).
> Produtos avulsos (Protocolo 72h, Mapa, Plano 14 Dias, Programa 30) e mentoria individual: **descontinuados** (D12).

**Regras de acesso:**
- Assinatura via Stripe Checkout — webhook confirma o plano no Supabase (`profiles.plan` + `subscriptions`)
- RLS: o acesso a conteúdo restrito é decidido pelo plano efetivo (`effective_plan()`, que honra o trial)
- O acesso vale enquanto a assinatura estiver ativa (não é compra vitalícia)
- Programa 30 Dias e Módulo Familiar fazem parte do plano Guardião

**Estrutura de conteúdo:**
- Cada módulo: texto (MDX renderizado), checklist interativo, campo de reflexão pessoal
- Progresso salvo automaticamente por usuário em `user_progress`
- Versão mobile-first: leitura confortável em 375px

### 5.5 Comunidade O Escudo (assinatura)

Fase 3 — abrir quando a base de leads ultrapassar 300 contatos.

**Funcionalidades MVP da comunidade:**

| Feature | Descrição |
|---|---|
| Feed de posts | Texto curto, sem imagem obrigatória — foco na palavra |
| Comentários | Threading simples (1 nível) |
| Reações | 3 opções: "Reconheço", "Força" e "Obrigado" — sem like genérico |
| Categorias | ESPELHO, TÁTICA, ESCUDO, FAMILIARES |
| Moderação | Luis como admin — posts ficam em fila para aprovação nas primeiras 48h |
| Regras visíveis | Fixadas no topo: sem julgamento, sem proselitismo, sem promessas de cura |

**Preços:**
- R$ 39,90/mês ou R$ 299/ano (Stripe Subscription)
- Acesso encerrado automaticamente ao cancelar (webhook Supabase)

> ⚠️ NÃO IMPLEMENTADO (auditoria jun/2026): não existe rota `/admin` no app. Item de fase futura; a especificação abaixo é referência.

### 5.6 Painel Admin (Luis)

Rota protegida: `/admin` — acesso restrito por `user_role = 'admin'` no Supabase.

| Área | Funcionalidades |
|---|---|
| **Dashboard** | Usuários ativos, receita do mês, produtos vendidos, leads capturados |
| **Usuários** | Listagem, filtro por produto, exportar CSV de leads |
| **Conteúdo** | Criar/editar módulos em MDX, publicar/despublicar |
| **Comunidade** | Fila de moderação, banir usuário, fixar post |
| **Produtos** | Criar/editar produtos, ajustar preços |
| **Métricas** | Churn de assinatura, taxa de conclusão de módulos, dias somados pela comunidade |

---

## 6. Modelo de Dados (Supabase)

> ⚠️ LEGADO/CONCEITUAL (auditoria jun/2026): o schema abaixo (`daily_logs`, `products`, `user_purchases`, `modules`, `community_posts`, `user_type`/`role` em `profiles`) **NÃO corresponde ao banco real**. Fonte de verdade: **`app/06-modelo-de-dados.md`** (regenerado das migrations reais — `profiles.plan/trial_end`, `checklist_items`+`checklist_completions`, `diary_entries`, `user_triggers`, `sos_activations`, `family_connections`, `subscriptions`, `subscription_audit_log`, RPCs `effective_plan`/`accept_family_invite`/`get_family_day_status`). Tabelas abaixo mantidas como histórico do desenho conceitual.

### 6.1 Tabelas principais

```sql
-- Perfil do usuário (extende auth.users)
create table profiles (
  id          uuid primary key references auth.users on delete cascade,
  name        text,
  user_type   text check (user_type in ('self', 'family')) default 'self',
  role        text check (role in ('user', 'admin')) default 'user',
  created_at  timestamptz default now()
);

-- Sobriedade
create table sobriety_records (
  id            uuid primary key default gen_random_uuid(),
  user_id       uuid references profiles on delete cascade,
  start_date    date not null,
  relapse_date  date,        -- null = ativo
  notes         text,
  created_at    timestamptz default now()
);

-- Logs diários (checklist + diário de gatilhos)
create table daily_logs (
  id          uuid primary key default gen_random_uuid(),
  user_id     uuid references profiles on delete cascade,
  log_date    date not null,
  checklist   jsonb,         -- { morning: {sleep: true, water: false}, afternoon: {...}, night: {...} }
  triggers    jsonb,         -- [{ time, situation, emotion, response }]
  shield_used boolean default false,
  created_at  timestamptz default now(),
  unique (user_id, log_date)
);

-- Produtos disponíveis
create table products (
  id          uuid primary key default gen_random_uuid(),
  slug        text unique not null,
  name        text not null,
  price_cents int not null,
  stripe_price_id text,
  type        text check (type in ('one_time', 'subscription')),
  active      boolean default true,
  created_at  timestamptz default now()
);

-- Compras confirmadas
create table user_purchases (
  id              uuid primary key default gen_random_uuid(),
  user_id         uuid references profiles on delete cascade,
  product_id      uuid references products,
  stripe_session  text,
  purchased_at    timestamptz default now()
);

-- Assinatura ativa (comunidade)
create table subscriptions (
  id                  uuid primary key default gen_random_uuid(),
  user_id             uuid references profiles on delete cascade,
  product_id          uuid references products,
  stripe_subscription text,
  status              text check (status in ('active', 'canceled', 'past_due')),
  current_period_end  timestamptz,
  updated_at          timestamptz default now()
);

-- Conteúdo dos módulos
create table modules (
  id          uuid primary key default gen_random_uuid(),
  product_id  uuid references products,
  slug        text unique not null,
  title       text not null,
  content_mdx text,
  order_index int,
  published   boolean default false,
  created_at  timestamptz default now()
);

-- Progresso do usuário nos módulos
create table user_progress (
  id          uuid primary key default gen_random_uuid(),
  user_id     uuid references profiles on delete cascade,
  module_id   uuid references modules,
  completed   boolean default false,
  notes       text,    -- reflexão pessoal salva no módulo
  updated_at  timestamptz default now(),
  unique (user_id, module_id)
);

-- Posts da comunidade
create table community_posts (
  id          uuid primary key default gen_random_uuid(),
  user_id     uuid references profiles on delete cascade,
  category    text check (category in ('espelho', 'tatica', 'escudo', 'familiares')),
  content     text not null,
  approved    boolean default false,
  created_at  timestamptz default now()
);

-- Reações
create table community_reactions (
  id       uuid primary key default gen_random_uuid(),
  post_id  uuid references community_posts on delete cascade,
  user_id  uuid references profiles on delete cascade,
  type     text check (type in ('reconheco', 'forca', 'obrigado')),
  unique (post_id, user_id, type)
);
```

### 6.2 Políticas de RLS (Row Level Security)

```sql
-- Perfis: usuário vê e edita apenas o próprio
alter table profiles enable row level security;
create policy "own profile" on profiles
  for all using (auth.uid() = id);

-- Logs diários: apenas o próprio usuário
alter table daily_logs enable row level security;
create policy "own logs" on daily_logs
  for all using (auth.uid() = user_id);

-- Conteúdo de módulo: exige compra ativa
alter table modules enable row level security;
create policy "purchased content" on modules
  for select using (
    exists (
      select 1 from user_purchases
      where user_purchases.user_id = auth.uid()
        and user_purchases.product_id = modules.product_id
    )
    or exists (
      select 1 from profiles
      where profiles.id = auth.uid()
        and profiles.role = 'admin'
    )
  );

-- Comunidade: apenas assinantes ativos
alter table community_posts enable row level security;
create policy "active subscribers" on community_posts
  for all using (
    exists (
      select 1 from subscriptions
      where subscriptions.user_id = auth.uid()
        and subscriptions.status = 'active'
    )
    or exists (
      select 1 from profiles
      where profiles.id = auth.uid()
        and profiles.role = 'admin'
    )
  );
```

---

## 7. Estrutura de Rotas (LEGADO — conceitual em Next.js)

> ⚠️ LEGADO/CONCEITUAL (auditoria jun/2026): o app real **não usa Next.js**. Usa **Expo Router** (file-based), abas **HOJE · MÉTODO · [SOS=Protocolo, central] · ESCUDO · PERFIL**. Estrutura real: **`app/05-fluxos-e-telas.md`**. A árvore abaixo (Next.js, `/login` magic link, `/admin`) é histórico do desenho conceitual.

```
app/
├── (public)/
│   ├── page.tsx                  — Landing page
│   ├── sobre/page.tsx            — Sobre Luis
│   ├── produtos/
│   │   ├── page.tsx              — Vitrine de produtos
│   │   └── [slug]/page.tsx       — Página de venda do produto
│   ├── termos/page.tsx
│   └── privacidade/page.tsx
│
├── (auth)/
│   ├── login/page.tsx            — Magic link
│   └── callback/page.tsx         — Supabase auth callback
│
├── (app)/                        — Autenticado (middleware protege)
│   ├── home/page.tsx             — Dashboard diário
│   ├── escudo/page.tsx           — Protocolo de crise (sempre free)
│   ├── diario/page.tsx           — Diário de gatilhos
│   ├── conteudo/
│   │   ├── page.tsx              — Biblioteca de produtos desbloqueados
│   │   └── [produto]/
│   │       └── [modulo]/page.tsx — Módulo de conteúdo
│   ├── comunidade/
│   │   ├── page.tsx              — Feed da comunidade
│   │   └── novo/page.tsx         — Novo post
│   └── perfil/page.tsx           — Configurações, planos, histórico
│
└── (admin)/                      — role = 'admin' apenas
    └── admin/
        ├── page.tsx              — Dashboard de métricas
        ├── usuarios/page.tsx
        ├── conteudo/page.tsx
        ├── comunidade/page.tsx
        └── produtos/page.tsx
```

---

## 8. Integrações Externas

### 8.1 Stripe

| Evento | Ação no Supabase |
|---|---|
| `checkout.session.completed` | Insere linha em `user_purchases` |
| `customer.subscription.created` | Insere/atualiza `subscriptions` com `status = 'active'` |
| `customer.subscription.deleted` | Atualiza `subscriptions` com `status = 'canceled'` |
| `invoice.payment_failed` | Atualiza `subscriptions` com `status = 'past_due'` |

Webhook: Supabase Edge Function `/functions/v1/stripe-webhook`

### 8.2 Resend (email transacional)

| Trigger | Email enviado |
|---|---|
| Cadastro novo | Boas-vindas + link para Ferramenta Diária |
| Compra confirmada | Acesso ao produto + link direto para o módulo |
| Assinatura ativada | Boas-vindas à Comunidade O Escudo |
| Assinatura cancelada | Confirmação + link para reativar |
| Usuário sem log há 3 dias | Lembrete gentil (não agressivo) |

### 8.3 Vercel

- CI/CD automático: push em `main` → deploy em produção
- Branch `dev` → preview deploy automático
- Edge Middleware para proteção de rotas autenticadas
- Analytics (Vercel Analytics) para métricas de performance

---

## 9. Fluxo de Compra (assinatura)

> ⚠️ Reconciliação (D12, jun/2026): o modelo é **assinatura** (não compra avulsa vitalícia). Leia "compra do produto / acesso vitalício" abaixo como "ativação do plano (Essential/Guardião) enquanto a assinatura estiver ativa".

```
1. Usuário clica "Comprar" na página do produto
2. Se não autenticado → redirect para /login → após login, retorna ao produto
3. Stripe Checkout Session criada (via Next.js Route Handler)
4. Usuário completa pagamento (PIX ou cartão)
5. Stripe dispara webhook → Edge Function → insere user_purchases
6. Redirect para /conteudo/[produto] — acesso imediato
7. Email de confirmação via Resend
```

---

## 10. Design e Identidade Visual no App

Baseado em `/marca/manual-de-marca.md`.

### 10.1 Paleta (noir realista)

> ⚠️ Reconciliação: a paleta canônica do app está em `marca/assets/paleta.md` e `app/04-design-system.md`. Os valores abaixo são de uma versão anterior, mantidos como referência — em caso de divergência, vale a paleta canônica.

```css
:root {
  --color-bg:       #0e0e0e;   /* preto base */
  --color-surface:  #1c1c1e;   /* cinza chumbo */
  --color-surface-2: #242424;  /* card */
  --color-border:   rgba(255,255,255,0.08);
  --color-text:     #e8e6e0;   /* off-white quente */
  --color-muted:    #787672;
  --color-accent:   #c9a84c;   /* dourado opaco */
  --color-accent-hover: #dbb95a;
  --color-danger:   #c0392b;   /* vermelho crise */
  --color-success:  #27ae60;
}
```

### 10.2 Regras visuais

- **Botão de crise (ATIVAR ESCUDO):** fundo `--color-danger`, texto branco, sempre visível na home
- **CTA principal:** fundo `--color-accent`, texto `#0e0e0e`, bold — único elemento dourado por tela
- **Cards de conteúdo:** borda `--color-border`, fundo `--color-surface-2`, sombra sutil
- **Tipografia display:** Cormorant Garamond (serifada) para headlines e frases de âncora
- **Corpo:** General Sans (⚠️ ainda não embarcada no app — corpo cai p/ fonte do sistema; ver D15)
- **Sem emojis como elementos de design**
- **Sem gradientes coloridos**
- **Ícones:** Ionicons (`@expo/vector-icons`) — monocromáticos, tamanho consistente. (Histórico da biblioteca de ícones em `app/04-design-system.md`.)

---

## 11. O Que o App NÃO É

- Não é app de monitoramento médico
- Não substitui psiquiatra, psicólogo ou grupos de apoio presenciais
- Não faz diagnóstico de dependência
- Não promete sobriedade permanente
- Não é rede social pública de sobriedade
- Não usa linguagem religiosa ou de 12 passos como método central

---

## 12. Limites e Responsabilidade

Estes itens devem aparecer em tela nas seguintes situações:

1. **Tela de boas-vindas (pós-cadastro):**
   > "O Guardião Sóbrio é uma ferramenta de apoio. Não substitui psiquiatra, psicólogo ou grupos de apoio. Se você está em crise, ligue 188 (CVV) ou procure atendimento médico."

2. **Protocolo de Crise (Botão do Escudo):**
   > "Este protocolo é um suporte de emergência. Se o risco for à vida, ligue 192 (SAMU) ou vá ao pronto-socorro mais próximo."

3. **Páginas de produto:**
   > "Este produto é material educativo e de apoio. Não é diagnóstico, prescrição ou tratamento médico."

4. **Rodapé do app:**
   > Ícone + "App de apoio — não substitui profissionais de saúde"

---

## 13. Critérios de Sucesso (Definition of Done do Produto)

- O usuário consegue completar o checklist diário em menos de 3 minutos
- O protocolo de emergência é acessível em no máximo 2 toques a partir de qualquer tela
- O app funciona offline para as funcionalidades principais (checklist, diário, protocolos)
- O onboarding não pede mais de 5 informações antes de entregar valor
- Todas as telas seguem o design system noir da marca
- Nenhuma tela faz promessas de cura ou resultados garantidos

---

## 14. Fases de Lançamento

> ⚠️ Reconciliação (jun/2026): os itens de produto/preço abaixo refletem o **plano original com avulsos (descontinuado — D12)** e auth por magic link (substituída). Estado real e atual: ver `ROADMAP.md` (Fase 7) e `app/03-funcionalidades.md`. Mantido como histórico de planejamento.

### Fase 1 — MVP (Dias 1–30)

Objetivo: validar o produto e capturar os primeiros leads e compradores.

| Item | Descrição |
|---|---|
| Landing page | Pública, otimizada para conversão |
| Auth | Magic link por email |
| Ferramenta Diária | Contador + checklist + Botão do Escudo |
| Diário de Gatilhos | Registro simples |
| Produto de entrada | Protocolo Escudo 72h (R$ 47) + Mapa dos 13 Fundamentos (R$ 47) |
| Stripe | Checkout + webhook |
| Email | Boas-vindas + confirmação de compra |
| Admin básico | Dashboard de usuários e vendas |

**Critério de sucesso Fase 1:** 50 cadastros + 10 vendas dos produtos de entrada.

### Fase 2 — Expansão (Dias 31–60)

| Item | Descrição |
|---|---|
| Programa 30 Dias | Produto R$ 197 com módulos completos |
| Plano Correção 14 Dias | Produto R$ 97 |
| Módulo familiares | Dentro do Programa 30 Dias |
| Notificações push | PWA Service Worker para checklist de final de tarde |
| Perfil do usuário | Histórico, progresso, badges de streak |

**Critério de sucesso Fase 2:** 200 cadastros + R$ 3.000 em receita acumulada.

### Fase 3 — Comunidade (Dias 61–90)

| Item | Descrição |
|---|---|
| Comunidade O Escudo | Feed, comentários, reações, moderação |
| Assinatura Stripe | R$ 39,90/mês ou R$ 299/ano |
| Mentoria Individual | Lista de espera (vagas limitadas) |
| Admin completo | Métricas avançadas, moderação, gestão de conteúdo |

**Critério de sucesso Fase 3:** 30 assinantes da comunidade + 1 mentoria fechada.

---

## 15. Métricas de Sucesso

| Métrica | Meta Fase 1 | Meta Fase 2 | Meta Fase 3 |
|---|---|---|---|
| Usuários cadastrados | 50 | 200 | 500 |
| Vendas produtos de entrada | 10 | 50 | 100 |
| Receita acumulada | R$ 500 | R$ 3.000 | R$ 8.000 |
| Assinantes comunidade | — | — | 30 |
| Dias somados pela comunidade | — | 1.000 | 5.000 |
| Taxa de abertura do checklist diário | — | > 40% | > 50% |
| Uso do Botão do Escudo | monitorar | monitorar | monitorar |
| MRR | — | — | R$ 2.000 |
| LTV médio | — | — | > R$ 150 |
| NPS | — | — | > 60 |

---

## 16. Próximos Passos

1. ✅ Repositório `guardiao-sobrio-app` criado (Expo / React Native + Supabase) — já em produção (auditoria jun/2026)
2. Configurar projeto Supabase (tabelas + RLS conforme seção 6)
3. Configurar projeto Vercel + variáveis de ambiente
4. Criar conta Stripe + configurar produtos e webhooks
5. Criar conta Resend + templates de email
6. Iniciar Fase 1 pelo checklist da seção 14

---

> "O app é o guardião no bolso. Não é o terapeuta, não é o médico. É o escudo no momento crítico."
> Luis Vanzer

---

> Documento vivo — atualizar a cada decisão de produto relevante.
> Fonte de verdade: repositório `guardiao-sobrio-docs`, pasta `/app/`

*Versão 2.0 — Junho 2026 — Consolidação de 01-PRD.md (v1.0 conceitual) + PRD.md (v1.0 técnico). Baseado em: funil-de-produtos-v2.md, 13-fundamentos.md, manual-de-marca.md, contexto-criador.md, protocolos/*
