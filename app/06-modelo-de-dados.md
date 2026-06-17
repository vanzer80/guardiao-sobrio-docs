# Modelo de Dados
# App: O Guardiao Sobrio

> Versao: 1.0 — Junho 2026
> Banco: PostgreSQL via Supabase

---

## 1. Entidades Principais

### users (gerenciado pelo Supabase Auth)
```sql
id            uuid PRIMARY KEY  -- auth.users.id
email         text
full_name     text
avatar_url    text
created_at    timestamptz
```

### profiles
```sql
id              uuid PRIMARY KEY REFERENCES auth.users
sobriety_start  date              -- data de inicio da sobriedade (editavel)
onboarding_goal text              -- 'stop_drinking' | 'maintain' | 'family_support'
onboarding_time text              -- 'today' | '1-7d' | '8-30d' | '30d+'
onboarding_challenge text         -- 'start' | 'triggers' | 'lonely' | 'relapse'
plan            text DEFAULT 'free' -- 'free' | 'essential' | 'guardiao'
plan_expires_at timestamptz
notif_checklist time              -- horario do lembrete diario
notif_risk      time              -- horario do alerta de risco
pin_enabled     boolean DEFAULT false
biometric_enabled boolean DEFAULT false
created_at      timestamptz
updated_at      timestamptz
```

**RLS:** usuario so pode ler e escrever o proprio perfil.

### daily_checklists
```sql
id          uuid PRIMARY KEY
user_id     uuid REFERENCES profiles
date        date
item_1      boolean DEFAULT false  -- sono
item_2      boolean DEFAULT false  -- agua
item_3      boolean DEFAULT false  -- alimentacao
item_4      boolean DEFAULT false  -- movimento
item_5      boolean DEFAULT false  -- conexao
completed   boolean DEFAULT false  -- todos os 5 marcados
completed_at timestamptz
created_at  timestamptz

UNIQUE(user_id, date)
```

**RLS:** usuario so pode ler e escrever seus proprios checklists.

### journal_entries
```sql
id          uuid PRIMARY KEY
user_id     uuid REFERENCES profiles
date        date
prompt_text text              -- texto do prompt exibido
entry_text  text              -- resposta do usuario
pillar      text              -- 'espelho' | 'tatica' | 'escudo'
created_at  timestamptz
updated_at  timestamptz
```

**RLS:** usuario so pode ler e escrever suas proprias entradas.

### triggers_map
```sql
id          uuid PRIMARY KEY
user_id     uuid REFERENCES profiles
trigger_name text             -- nome do gatilho (ex: "final da tarde")
trigger_time time             -- horario de risco
trigger_place text            -- lugar (opcional)
trigger_emotion text          -- emocao associada
response_plan text            -- o que farei quando aparecer
notif_enabled boolean DEFAULT false
created_at  timestamptz
```

**RLS:** privado por usuario.

### emergency_log
```sql
id          uuid PRIMARY KEY
user_id     uuid REFERENCES profiles
started_at  timestamptz
completed   boolean DEFAULT false
step_reached int DEFAULT 1    -- ate qual etapa chegou (1-5)
created_at  timestamptz
```

**RLS:** privado por usuario. Sem conteudo sensivel — apenas metrica de uso.

### family_connections
```sql
id          uuid PRIMARY KEY
owner_id    uuid REFERENCES profiles   -- usuario principal
family_id   uuid REFERENCES profiles   -- familiar conectado
status      text DEFAULT 'active'       -- 'active' | 'revoked'
code        text UNIQUE                 -- codigo de convite de 6 chars
created_at  timestamptz
revoked_at  timestamptz
```

**RLS:** owner pode criar, ler e revogar. Familiar pode apenas ler o status do dia (via view segura).

### sobriety_milestones
```sql
id          uuid PRIMARY KEY
user_id     uuid REFERENCES profiles
days        int                         -- 7, 14, 30, 60, 90, 180, 365
reached_at  timestamptz
shared      boolean DEFAULT false
created_at  timestamptz
```

**RLS:** privado por usuario.

---

## 2. Views e Funcoes

### family_day_status (view)
```sql
-- Expoe apenas: owner_id, date, completed
-- Familiar acessa via esta view, nunca diretamente na daily_checklists
CREATE VIEW family_day_status AS
  SELECT dc.user_id as owner_id, dc.date, dc.completed
  FROM daily_checklists dc
  JOIN family_connections fc ON fc.owner_id = dc.user_id
  WHERE fc.status = 'active';
```

### calculate_sobriety_days (funcao)
```sql
-- Retorna numero de dias desde sobriety_start
CREATE FUNCTION calculate_sobriety_days(user_uuid uuid)
RETURNS int AS $$
  SELECT EXTRACT(EPOCH FROM (NOW() - sobriety_start))::int / 86400
  FROM profiles WHERE id = user_uuid;
$$ LANGUAGE sql SECURITY DEFINER;
```

### check_milestone_trigger
```sql
-- Trigger que verifica marcos e insere em sobriety_milestones
-- Executado via Edge Function no momento do login diario
```

---

## 3. Indices de Performance

```sql
CREATE INDEX idx_daily_checklists_user_date ON daily_checklists(user_id, date DESC);
CREATE INDEX idx_journal_entries_user_date ON journal_entries(user_id, date DESC);
CREATE INDEX idx_triggers_user ON triggers_map(user_id);
CREATE INDEX idx_family_connections_owner ON family_connections(owner_id);
CREATE INDEX idx_family_connections_family ON family_connections(family_id);
```

---

## 4. Politicas RLS (exemplos)

```sql
-- profiles: leitura e edicao somente do proprio perfil
CREATE POLICY "profiles_own" ON profiles
  USING (auth.uid() = id)
  WITH CHECK (auth.uid() = id);

-- daily_checklists: leitura e edicao somente dos proprios
CREATE POLICY "checklists_own" ON daily_checklists
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- journal_entries: privado
CREATE POLICY "journal_own" ON journal_entries
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);
```

---

> Nenhum dado de sobriedade e exposto sem RLS explicita.
> Toda consulta de familiar passa pela view family_day_status — nunca pela tabela direta.
