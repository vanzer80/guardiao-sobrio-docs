# Modelo de Dados — App O Guardião Sóbrio

> Versão: 2.0 — Junho 2026 (regenerado da fonte real na auditoria)
> Banco: PostgreSQL via Supabase
> **Fonte deste documento:** `lib/database.types.ts` do repo `guardiao-sobrio-app` (tipos gerados por
> `supabase gen types`, refletem o schema vivo) + `supabase/migrations/*.sql`. Tipos PostgreSQL exatos,
> defaults e constraints são definidos nas migrations; esta página é a referência de entidades e campos.
>
> O modelo conceitual v1 (com `daily_checklists`, `journal_entries`, `triggers_map`, `emergency_log`,
> view `family_day_status`) foi **substituído** — permanece no histórico do Git para rastreabilidade.

---

## 1. Visão geral

Schema normalizado, multiusuário, com **RLS por `user_id`** em todas as tabelas de dados do usuário.
14 tabelas + 4 funções (RPC, `SECURITY DEFINER`). O plano de assinatura é resolvido pela função
`effective_plan(uid)` (honra o trial). O cálculo de dias de sobriedade é feito no cliente (`lib/sobriety.ts`).

| Domínio | Tabelas |
|---|---|
| Conta/usuário | `profiles`, `user_settings`, `push_tokens` |
| Sobriedade | `sobriety_records`, `sos_activations` |
| Rotina diária | `checklist_items`, `checklist_completions`, `diary_entries` |
| Gatilhos | `trigger_categories`, `user_triggers` |
| Família | `family_connections`, `emergency_contacts` |
| Monetização | `subscriptions`, `subscription_audit_log` (+ `profiles.plan`) |

---

## 2. Tabelas

### profiles
Perfil do usuário (1:1 com `auth.users`).

| Campo | Tipo | Nulo | Observação |
|---|---|---|---|
| id | uuid | não | PK, referencia `auth.users` |
| full_name | text | sim | |
| avatar_url | text | sim | |
| plan | text | sim | plano atual (`free`/`essential`/`guardian`) |
| is_premium | boolean | não | flag derivada |
| trial_end | timestamptz | sim | fim do trial |
| trial_activated_at | timestamptz | sim | |
| is_anonymous | boolean | não | modo "explorar sem cadastro" |
| anonymous_created_at | timestamptz | sim | |
| substance_focus | text | sim | foco do usuário |
| sobriety_start_date | date | sim | |
| stripe_customer_id | text | sim | |
| timezone | text | não | |
| onboarding_completed | boolean | não | |
| onboarding_motivo | text | sim | resposta de onboarding |
| onboarding_tempo | text | sim | resposta de onboarding |
| onboarding_desafio | text | sim | resposta de onboarding |
| created_at / updated_at | timestamptz | não | |

### user_settings
Configurações por usuário (1:1).

| Campo | Tipo | Nulo |
|---|---|---|
| user_id | uuid | não (PK) |
| theme | text | não |
| language | text | não |
| notification_enabled | boolean | não |
| daily_reminder_time | time | não |
| quiet_hours_start | time | não |
| quiet_hours_end | time | não |
| biometric_lock | boolean | não |
| share_anonymous_data | boolean | não |
| updated_at | timestamptz | não |

### push_tokens
Tokens de push notification.

| Campo | Tipo | Nulo |
|---|---|---|
| id | uuid | não (PK) |
| user_id | uuid | não |
| token | text | não |
| platform | text | sim |
| is_active | boolean | não |
| created_at / updated_at | timestamptz | não |

### sobriety_records
Histórico de períodos de sobriedade (recaída = `end_date` preenchido).

| Campo | Tipo | Nulo |
|---|---|---|
| id | uuid | não (PK) |
| user_id | uuid | não |
| start_date | date | não |
| end_date | date | sim (null = ativo) |
| relapse_notes | text | sim |
| created_at | timestamptz | não |

### sos_activations
Registro de ativações do Protocolo SOS.

| Campo | Tipo | Nulo |
|---|---|---|
| id | uuid | não (PK) |
| user_id | uuid | não |
| triggered_at | timestamptz | não |
| resolved_at | timestamptz | sim |
| trigger_description | text | sim |
| craving_level | integer | sim |
| actions_taken | text[] | sim |
| notes | text | sim |

### checklist_items
Itens do checklist diário (por usuário).

| Campo | Tipo | Nulo |
|---|---|---|
| id | uuid | não (PK) |
| user_id | uuid | não |
| title | text | não |
| description | text | sim |
| category | text | sim |
| icon | text | sim |
| sort_order | integer | não |
| is_active | boolean | não |
| created_at | timestamptz | não |

### checklist_completions
Marcações diárias de cada item (substitui o antigo `daily_checklists` com item_1..5).

| Campo | Tipo | Nulo | Observação |
|---|---|---|---|
| id | uuid | não (PK) | |
| user_id | uuid | não | |
| item_id | uuid | não | FK → `checklist_items.id` |
| completed_date | date | não | |
| completed_at | timestamptz | não | |

### diary_entries
Diário (substitui `journal_entries`).

| Campo | Tipo | Nulo |
|---|---|---|
| id | uuid | não (PK) |
| user_id | uuid | não |
| entry_date | date | não |
| content | jsonb | não |
| mood_score | integer | sim |
| craving_level | integer | sim |
| created_at / updated_at | timestamptz | não |

### trigger_categories
Categorias de gatilho (sistema + do usuário).

| Campo | Tipo | Nulo | Observação |
|---|---|---|---|
| id | uuid | não (PK) | |
| user_id | uuid | sim | null = categoria de sistema |
| name | text | não | |
| icon | text | sim | |
| color | text | sim | |
| is_system | boolean | não | |
| created_at | timestamptz | não | |

### user_triggers
Mapa de gatilhos do usuário (substitui `triggers_map`).

| Campo | Tipo | Nulo | Observação |
|---|---|---|---|
| id | uuid | não (PK) | |
| user_id | uuid | não | |
| category_id | uuid | sim | FK → `trigger_categories.id` |
| title | text | não | |
| description | text | sim | |
| risk_level | integer | não | |
| coping_strategies | text[] | sim | |
| people_involved | text[] | sim | |
| location_name | text | sim | |
| location_lat / location_lng | numeric | sim | |
| is_active | boolean | não | |
| created_at / updated_at | timestamptz | não | |

### family_connections
Conexão dono ↔ familiar (substitui o desenho antigo + view).

| Campo | Tipo | Nulo | Observação |
|---|---|---|---|
| id | uuid | não (PK) | |
| user_id | uuid | não | dono da conta |
| family_name | text | não | |
| family_email | text | sim | |
| family_user_id | uuid | sim | preenchido quando o familiar aceita |
| relationship | text | sim | |
| invitation_token | text | sim | token do convite |
| invitation_status | text | não | status do convite |
| invitation_expires_at | timestamptz | sim | validade do convite |
| can_see_checklist | boolean | não | permissão granular |
| can_see_diary | boolean | não | permissão granular |
| can_see_sos | boolean | não | permissão granular |
| can_see_triggers | boolean | não | permissão granular |
| created_at / updated_at | timestamptz | não | |

### emergency_contacts
Contatos de confiança (tabela existe; a UI ainda é stub — ver auditoria FN-25).

| Campo | Tipo | Nulo |
|---|---|---|
| id | uuid | não (PK) |
| user_id | uuid | não |
| name | text | não |
| phone | text | não |
| relationship | text | sim |
| is_primary | boolean | não |
| sort_order | integer | não |
| created_at | timestamptz | não |

### subscriptions
Assinatura do usuário (Stripe).

| Campo | Tipo | Nulo |
|---|---|---|
| id | uuid | não (PK) |
| user_id | uuid | não |
| plan | text | não |
| status | text | não |
| provider | text | sim |
| provider_subscription_id | text | sim |
| stripe_subscription_id | text | sim |
| current_period_start | timestamptz | sim |
| current_period_end | timestamptz | sim |
| trial_end | timestamptz | sim |
| created_at / updated_at | timestamptz | não |

### subscription_audit_log
Trilha de auditoria das mudanças de plano (idempotência via `stripe_event_id`).

| Campo | Tipo | Nulo |
|---|---|---|
| id | uuid | não (PK) |
| user_id | uuid | não |
| action | text | não |
| old_plan | text | sim |
| new_plan | text | sim |
| stripe_event_id | text | sim |
| details | jsonb | sim |
| created_at | timestamptz | sim |

---

## 3. Funções (RPC, SECURITY DEFINER)

| Função | Args | Retorno | Papel |
|---|---|---|---|
| `effective_plan(uid)` | `uid` (uuid) | text | Plano efetivo do usuário; retorna `guardian` durante o trial (`trial_end > now()`). É a base das políticas de RLS. |
| `activate_trial()` | — | text | Ativa o trial de 5 dias para o usuário autenticado. |
| `accept_family_invite(p_token)` | `p_token` (text) | json | Familiar aceita o convite e vincula `family_user_id`. |
| `get_family_day_status()` | — | json | Status do dia que o familiar pode ver ("Dia guardado" / "Em jornada") — substitui a view `family_day_status` planejada. |

---

## 4. RLS e segurança

- Todas as tabelas de dados do usuário têm **RLS por `user_id`** (cada um lê/escreve apenas o próprio).
- O acesso do **familiar** é mediado pelas RPCs `SECURITY DEFINER` (`get_family_day_status`, `accept_family_invite`) e pelas flags `can_see_*` em `family_connections` — o familiar **não** lê as tabelas do dono diretamente.
- A política de INSERT em `family_connections` exige plano elegível via `effective_plan()` (que honra o trial), evitando recursão de RLS (lição da auditoria: erro `42P17`).
- Defaults, checks e índices exatos: ver `supabase/migrations/*.sql`.

---

> Documento vivo — regenerar (`supabase gen types`) e revisar a cada mudança de schema.
> Fonte de verdade do schema: migrations do repo `guardiao-sobrio-app`.
