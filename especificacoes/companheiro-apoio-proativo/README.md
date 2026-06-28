# Especificação Técnica — Companheiro de Apoio Proativo
## O Guardião Sóbrio

| | |
|---|---|
| **Versão** | 0.1 (rascunho — documento vivo) |
| **Status** | Em definição. Nada aqui é fechado; tudo pode ser refinado, validado clinicamente e escalado por fases. |
| **Stack alvo** | **Expo / React Native** (expo-router · NativeWind · Zustand) · TypeScript · **Supabase (Edge Functions)** · backend LLM com provedor abstraído. _(Decisão de implementação registrada em `guardiao-sobrio-app/docs/adr/0002-companheiro-apoio-proativo-fundacao.md`, D1. A stack Next.js cogitada inicialmente foi descartada: o produto real é o app Expo.)_ |
| **Idioma do produto** | Português (BR) |
| **Público** | Pessoas em recuperação de uso de álcool e outras substâncias |

> **Como ler este documento:** ele descreve o *que* e o *porquê*, e dá direção suficiente de *como* sem fechar decisões de implementação. Onde houver decisão em aberto, está marcado com **[EM ABERTO]**. Onde houver risco que exige cuidado especial, está marcado com **⚠️**.

---

## 1. Visão geral

Estamos construindo um **companheiro de apoio conversacional** dentro do Guardião Sóbrio, voltado para o momento de fissura (craving) e para a prevenção dele. O diferencial não é "mais um chatbot": é um sistema que **aprende com o usuário ao longo da jornada** e age de forma **proativa**, antecipando momentos de risco em vez de só reagir quando a pessoa já está em crise.

Três pilares definem o produto:

1. **Acolhimento sem pressão** — empatia genuína, sem julgar, sem cobrar, sem soar como formulário ou interrogatório.
2. **Apoio real, não bajulação** — o bot oferece estratégias concretas e ajuda a pessoa a agir; ele **não** é um "sim-senhor" que só concorda. Isso é uma exigência de produto, não um detalhe.
3. **Memória e proatividade** — o bot constrói um modelo do usuário (preferências, gatilhos, o que funciona) e usa isso para apoiar de forma cada vez mais assertiva, inclusive antecipando crises.

### 1.1 O que este produto NÃO é (limites inegociáveis) ⚠️

Esta seção orienta copy, design e comportamento do modelo. Ela existe porque o público é vulnerável e o custo de errar é alto.

- **Não é tratamento, terapia ou diagnóstico.** É apoio complementar. O produto deve comunicar isso com clareza e, em momentos de risco real, direcionar para ajuda humana/profissional.
- **Não substitui conexão humana.** O objetivo é ser uma ponte para a recuperação e para a rede de apoio real da pessoa — nunca fomentar dependência do próprio bot. (Esse é um risco documentado em apps do gênero e deve ser combatido por design.)
- **Não promete o que não pode cumprir.** Nada de "estou sempre aqui por você como seu melhor amigo". O tom é de apoio competente e honesto.
- **Em risco grave (ideação suicida, autoagressão, emergência), a prioridade é encaminhar para recurso de crise**, não "resolver" sozinho.

---

## 2. Fundamentação clínica

A abordagem conversacional é um **híbrido de dois modelos validados e amplamente usados por profissionais**, escolhidos porque combinam acolhimento com estrutura prática.

### 2.1 Entrevista Motivacional (Motivational Interviewing — Miller & Rollnick)

Dá o **tom** da interação: empatia, ausência de julgamento, perguntas abertas, respeito à autonomia da pessoa. Em vez de confrontar ou empurrar, explora as razões da própria pessoa para mudar.

Princípios operacionais para o bot:
- Perguntas abertas, não fechadas ("Como está sendo isso pra você?" em vez de "Você bebeu?").
- Escuta reflexiva: devolver o que a pessoa disse, validando o sentimento **sem** validar a ação de uso.
- Reforçar autonomia: a decisão é sempre da pessoa.
- Explorar **DARN** quando fizer sentido — *Desire* (vontade), *Ability* (capacidade), *Reasons* (razões), *Need* (necessidade) de mudar.

### 2.2 Prevenção de Recaída (Relapse Prevention — Marlatt & Gordon)

Dá a **estrutura prática** para a crise. A premissa central: o que determina se um momento de risco vira recaída **não é o gatilho em si, mas como a pessoa responde a ele**. Quem consegue executar uma estratégia de enfrentamento (sair do lugar, ligar pra alguém, se distrair) tem muito menos chance de recair — e cada vitória aumenta a autoeficácia.

O que isso significa para o bot:
- Identificar a **situação de alto risco** (onde, quando, com quem, o que disparou).
- Apoiar a pessoa a **executar uma resposta de enfrentamento concreta** no momento.
- Trabalhar a **autoeficácia**: nomear e reforçar cada vez que a pessoa supera um momento.

### 2.3 A síntese (o jeito do bot)

> Acolher como na Entrevista Motivacional + agir como na Prevenção de Recaída — **sem nunca ser bajulador nem coercitivo.**

O bot é caloroso e não-julgador, **e** oferece caminhos concretos baseados no que ele já sabe sobre aquela pessoa. Acolhe sem ser passivo; orienta sem pressionar.

**[EM ABERTO]** Recomendação forte: ter um profissional da área (psicólogo/terapeuta com experiência em dependência química) revisando os fluxos e a copy antes do lançamento. Vale também avaliar referência ao **TIP 35 (SAMHSA)** e ao material de Entrevista Motivacional de William Miller como base de copy.

---

## 3. Arquitetura de funcionalidades

Visão de alto nível do loop do produto:

```
Onboarding leve  →  Interação na crise (reativa)  →  Captura de aprendizado
        ↑                                                      ↓
   Validação  ←  Notificação preventiva  ←  Detecção de padrões (proativa)
```

As subseções abaixo detalham cada bloco.

### 3.1 Onboarding leve e progressivo

**Objetivo:** reduzir ao máximo a barreira de entrada. Meta de 3–5 minutos, dinâmico, **jamais** um formulário gigante.

**Princípio central — tudo é opcional.** O usuário precisa entender, com clareza e numa linguagem acolhedora, que:
- Nenhuma informação é obrigatória.
- Se ele não quiser preencher nada agora, está tudo bem.
- Quanto mais ele conversar com o bot ao longo da jornada, mais o bot vai entendê-lo. O aprendizado é contínuo, não depende do cadastro inicial.

**Campos iniciais sugeridos (todos opcionais, "skippáveis"):**
- Nome ou como a pessoa quer ser chamada.
- Idade (ou faixa etária — pode ser menos invasivo).
- Substância principal (álcool ou outra).

**Copy de referência (ajustar com tom da marca):**
> "Antes de começar, só algumas coisas — e nenhuma delas é obrigatória. Você pode pular tudo e ir direto pra conversa. Quanto mais a gente conversar, mais eu vou te entender. Sem pressa e sem pressão."

⚠️ **Cuidado de UX:** o "pular" precisa ser tão visível quanto o "continuar". A pessoa não pode se sentir empurrada a preencher.

### 3.2 Sistema de memória e aprendizado (núcleo do diferencial)

O bot mantém um **modelo vivo do usuário**, alimentado por três fontes: o que a pessoa declara, o que ela revela conversando, e os padrões que o sistema deriva disso. Pense em três camadas:

| Camada | O que guarda | Como é alimentada |
|---|---|---|
| **1 — Identidade** | Nome, idade, substância | Onboarding (opcional) + menções na conversa |
| **2 — O que funciona** | Estratégias que ajudam a pessoa (caminhar, ligar pra alguém, ouvir música), rede de apoio, motivadores (ex.: "não decepcionar a mãe"), receios | Extração passiva durante as conversas |
| **3 — Padrões** | Horários, locais e situações recorrentes de risco; frequência; eficácia das estratégias ao longo do tempo | Análise/derivação sobre o histórico |

**Captura passiva (Camada 2)** ⚠️ : durante a conversa, um passo de extração (via LLM) identifica e estrutura informações relevantes — ex.: a pessoa diz "consegui me distrair caminhando" → registra `estratégia: caminhada` com sinal de eficácia positivo; "minha irmã sempre me ajuda" → registra um contato de apoio. **Toda extração deve ser auditável e revisável pelo usuário** (ver §6 Privacidade). Nada de inferir e guardar coisas sensíveis silenciosamente sem que a pessoa possa ver e apagar.

**Analogia para alinhar expectativa do time:** funciona como a memória de um assistente que vai aprendendo as preferências da pessoa ao longo das interações e passa a sugerir coisas mais sob medida — mas aqui com cuidado redobrado por ser saúde e dado sensível.

### 3.3 Motor de detecção de padrões

Sobre o histórico (Camada 3), um processo deriva padrões úteis:

- **Temporais:** "aciona com frequência por volta das 17h", "fins de semana à noite".
- **Geográficos/contextuais:** "perto de tal lugar", "quando está sozinho na rua". *(Geolocalização é dado sensível — só com consentimento explícito e granular; ver §6.)*
- **Situacionais:** estados emocionais ou eventos que antecedem a fissura.

Cada padrão carrega um **nível de confiança** e uma **frequência**. O bot só age proativamente sobre um padrão **acima de um limiar de confiança** (evita agir sobre coincidência). **[EM ABERTO]** definir limiar inicial (ex.: padrão observado N vezes em janela de X dias) e calibrar com dados reais.

### 3.4 Comportamento proativo (notificações preventivas)

O bot é **preventivo**, não só reativo. Quando identifica um padrão confiável de risco, ele age **antes** da janela crítica.

**Exemplo de uso (caso real discutido):**
> O sistema detectou que o usuário tende a sentir fissura por volta das 17h. Por volta das 16h, envia: *"Oi, Luis. Percebi que esse horário costuma ser mais difícil pra você. Que tal a gente já combinar algo pro próximo período? Aquela caminhada que costuma te ajudar, ou falar com alguém?"*

⚠️ **Risco crítico a tratar — reatividade ao gatilho (cue reactivity):** lembrar a pessoa do horário de risco pode, mal calibrado, *funcionar como o próprio gatilho* e disparar a fissura que se quer evitar. Isto **precisa** de validação clínica e de testes cuidadosos. Diretrizes iniciais:
> - A mensagem foca em **planejar uma ação positiva**, não em nomear cru "você vai querer beber".
> - Tom leve e de parceria, nunca alarmista.
> - Frequência controlada (anti-spam / anti-fadiga de notificação) — notificação demais vira ruído e perde efeito.
> - Permitir que o usuário ajuste, silencie ou desligue os lembretes proativos a qualquer momento.

**Mecanismo:** push notification e/ou aviso in-app. **[EM ABERTO]** definir mix; provavelmente push para o lembrete preventivo + experiência rica dentro do app ao abrir.

### 3.5 Sistema de validação (anti-falso-positivo)

O bot aprende **mesmo sem confirmação manual** do usuário — mas valida para não aprender errado.

- **Inferência passiva:** se a pessoa não acionou no horário crítico, é um **sinal** (não prova) de que passou bem.
- **O problema do falso positivo** ⚠️ : "não acionou" **não garante** que não houve crise — ela pode ter recaído e simplesmente não ter conversado. Por isso a inferência passiva, sozinha, não é confiável.
- **Validação ativa e gentil:** em momento oportuno, o bot confirma sem soar invasivo ou desconfiado:
  > *"Oi, Luis. Ontem por volta das 17h, que costuma ser um horário mais puxado, você não me chamou. Conseguiu passar bem por aquele momento? Como você se sentiu?"*
- **Atualização do modelo conforme a resposta:**
  - "Passei bem / nem senti" → reforça a estratégia/contexto como positivos.
  - "Tive vontade mas consegui lidar sozinho" → a estratégia funcionou; reforça autoeficácia.
  - "Tive e foi difícil / acabei usando" → marca a abordagem como insuficiente naquele contexto e **ajusta** a estratégia para a próxima vez.

Isso é, na prática, **validação cruzada contínua**: inferência passiva + confirmação ativa para manter a integridade dos padrões aprendidos.

### 3.6 Escalonamento de crise (prioridade máxima) ⚠️

Esta é a funcionalidade mais importante e deve ser construída **primeiro e com mais rigor**.

- **Detecção de sinais de risco grave:** ideação suicida, autoagressão, emergência médica. Seguir as **melhores práticas dos apps que já funcionam** (ex.: apps que detectam ideação suicida e redirecionam imediatamente para linha de apoio).
- **Ação imediata:** ao detectar risco grave, o bot **interrompe o fluxo normal** e direciona com clareza para recurso de crise humano, de forma calma e acolhedora.
- **Recursos de crise (Brasil)** — *o time deve verificar e manter atualizado:*
  - **CVV — Centro de Valorização da Vida: 188** (apoio emocional e prevenção do suicídio, 24h).
  - **SAMU: 192** (emergência médica).
  - **CAPS** (Centros de Atenção Psicossocial) — rede pública de saúde mental.
- **Limites de conteúdo:** o bot **nunca** fornece informação que possa facilitar autoagressão; foca em acolher e conectar a ajuda.
- **Não diagnosticar, não prometer confidencialidade absoluta** de forma irreal; comunicar com honestidade.

**[EM ABERTO]** Definir a árvore de decisão exata de escalonamento (sinais → nível de risco → ação) junto com profissional. Esse fluxo merece um documento próprio.

---

## 4. Modelo de dados (Supabase) — esboço inicial

Esboço conceitual para o time partir. **Todas as colunas de perfil são nullable** (nada obrigatório). **RLS obrigatório em todas as tabelas**, seguindo o padrão já adotado no Guardião Sóbrio (políticas no padrão do app, idealmente versionadas em migration — ver §6).

```
user_profiles
  user_id (PK, FK auth.users)
  display_name        text null
  age_range           text null
  primary_substance   text null
  created_at, updated_at

conversations            -- cada sessão de conversa
  id (PK)
  user_id (FK)
  started_at, ended_at
  context_time         time null      -- horário (para padrões)
  context_location     text null      -- só se consentido
  trigger_type         text null
  crisis_level         int null       -- escala interna de severidade
  outcome              text null      -- resolvido / escalado / recaída / desconhecido

messages
  id (PK)
  conversation_id (FK)
  role                 text           -- user | assistant | system
  content              text
  created_at

learned_strategies       -- Camada 2: o que funciona
  id (PK)
  user_id (FK)
  type                 text           -- caminhada | ligar | distração | ...
  description          text
  effectiveness_score  numeric        -- atualizado pela validação
  times_used           int
  last_used_at         timestamptz
  source               text           -- declarado | inferido (auditabilidade)

support_network          -- pessoas de apoio (SENSÍVEL)
  id (PK)
  user_id (FK)
  name                 text
  relationship         text null
  can_contact          bool
  notes                text null

patterns                 -- Camada 3: padrões derivados
  id (PK)
  user_id (FK)
  pattern_type         text           -- temporal | local | situacional
  value                jsonb          -- ex.: { "hora": "17:00", "dias": ["sab","dom"] }
  confidence           numeric
  frequency            int
  active               bool           -- usuário pode desativar

proactive_notifications  -- log dos lembretes preventivos
  id (PK)
  user_id (FK)
  pattern_id (FK)
  sent_at
  user_response        text null
  validated_outcome    text null      -- preenchido pela validação ativa
  was_helpful          bool null

crisis_events            -- eventos de risco grave (auditoria + segurança)
  id (PK)
  user_id (FK)
  detected_at
  severity             text
  action_taken         text           -- recurso direcionado
  resolved             bool null

consent_records          -- o que o usuário consentiu (granular)
  id (PK)
  user_id (FK)
  consent_type         text           -- memoria | geolocalizacao | notif_proativa | ...
  granted              bool
  granted_at, revoked_at
```

⚠️ **Lembrete do histórico do Guardião:** políticas RLS aplicadas só pelo dashboard (e nunca commitadas) são **inauditáveis**. Aqui, padronizar RLS em **migrations versionadas** desde o começo para evitar repetir esse débito.

---

## 5. Fluxos de conversa (referência)

### 5.1 Crise reativa (pessoa aciona o bot)

1. **Acolher** — validar o sentimento, sem julgar, sem alarme. ("Que bom que você me chamou. Vamos passar por isso juntos.")
2. **Entender a situação** — onde está, sozinho/acompanhado, o que disparou, intensidade. Perguntas abertas, uma de cada vez. **Usar o que já se sabe** do perfil para não repetir perguntas.
3. **Apoiar a ação de enfrentamento** — sugerir, com base na Camada 2, algo que já funcionou pra pessoa; ajudar a sair do gatilho; ocupar os próximos 15–30 min (a janela típica do pico de fissura).
4. **Acompanhar** — manter presença durante o pico; reforçar cada passo.
5. **Reforçar autoeficácia** — ao final, nomear a vitória. ("Você reconheceu, pediu apoio e se afastou. Isso é grande.")
6. **Registrar aprendizado** — capturar o que funcionou para as Camadas 2 e 3.

⚠️ Em **qualquer** ponto, se surgir sinal de risco grave → §3.6 (escalonamento) tem prioridade sobre todo o resto.

### 5.2 Lembrete proativo (bot inicia)

1. Padrão acima do limiar de confiança dispara o lembrete antes da janela.
2. Mensagem leve, focada em **planejar ação positiva** (não em nomear o craving cru).
3. Convite (nunca obrigação) a fazer algo da lista do que funciona.
4. Mais tarde → §3.5 (validação ativa) para fechar o loop.

### 5.3 Validação (fechamento de loop)

Conforme §3.5 — check-in gentil, atualização do modelo conforme a resposta.

---

## 6. Privacidade, consentimento e compliance ⚠️

Reaproveitar e elevar o padrão já usado no Guardião Sóbrio.

- **RLS em todas as tabelas, versionado em migrations** (não só dashboard).
- **Consentimento granular** (tabela `consent_records`): memória/aprendizado, geolocalização e notificações proativas são consentimentos **separados**. A pessoa pode conceder um e negar outro.
- **Transparência sobre rastreamento de padrões:** a pessoa precisa saber, em linguagem clara, que o bot aprende com as conversas e identifica padrões — e poder **ver, editar e apagar** o que foi aprendido sobre ela.
- **Dado sensível de saúde:** tratar com o rigor correspondente (no Brasil, atenção à LGPD para dado de saúde; **[EM ABERTO]** validar requisitos com quem entende de compliance/jurídico).
- **Minimização:** coletar só o necessário; geolocalização só se realmente agregar e só com opt-in explícito.
- **Direito ao esquecimento:** exportar e apagar todos os dados de forma simples.

---

## 7. Considerações de segurança e ética (resumo dos ⚠️)

Consolidando os pontos críticos espalhados pelo documento:

1. **Escalonamento de crise é a feature nº 1** — construir primeiro, com revisão profissional.
2. **Reatividade ao gatilho** nas notificações proativas — testar com cuidado clínico; pode virar o próprio gatilho.
3. **Não fomentar dependência do bot** — ele é ponte para recuperação e para rede humana, não substituto.
4. **Não ser bajulador** — apoiar de verdade, inclusive divergindo com gentileza quando necessário; **e** não pressionar.
5. **Memória auditável** — nada de inferir e guardar dado sensível sem a pessoa ver/apagar.
6. **Honestidade sobre limites** — não é terapia, não diagnostica, não promete o impossível.
7. **Revisão clínica antes do lançamento** — fortemente recomendada.

---

## 8. Métricas de sucesso (sugestão)

Medir o que importa para o usuário, não só engajamento (engajamento alto pode mascarar dependência).

- **Retenção saudável:** 7/30/90 dias — mas cruzada com sinais de bem-estar, não isolada.
- **Taxa de superação de crise:** crises em que a pessoa relatou ter passado sem usar.
- **Eficácia da proatividade:** lembretes preventivos seguidos de janela sem crise (validados).
- **Precisão de padrões:** padrões confirmados vs. falsos positivos corrigidos pela validação.
- **Encaminhamento de crise grave:** sinais detectados → recurso efetivamente apresentado.
- **Saúde do uso:** sinais de que o bot está sendo ponte para apoio humano (e não substituindo-o).

---

## 9. Roadmap por fases (escalável, não fechado)

O produto é incremental. Cada fase entrega valor sozinha e abre caminho para a próxima.

**Fase 1 — Base segura (MVP)**
- Onboarding leve e 100% opcional.
- Chat de crise reativo com o framework híbrido (MI + Prevenção de Recaída).
- **Escalonamento de crise** (recursos BR) — prioridade.
- Memória básica (Camada 1 + início da Camada 2).
- Privacidade e RLS versionado desde o dia 1.

**Fase 2 — Aprendizado**
- Captura passiva robusta de estratégias e rede de apoio (Camada 2), auditável.
- Histórico visível para o usuário (autoconhecimento + accountability).
- Consentimento granular completo.

**Fase 3 — Proatividade**
- Motor de detecção de padrões (Camada 3).
- Notificações preventivas (com salvaguardas de reatividade).
- Sistema de validação ativa (anti-falso-positivo).

**Fase 4 — Aprofundamento**
- Journaling / espaço de reflexão para além do chat.
- Refinamento dos padrões com dados reais.
- Features avançadas conforme aprendizado de uso.

---

## 10. Questões em aberto (para o time decidir)

- **[EM ABERTO]** Limiar de confiança inicial para acionar proatividade (N ocorrências / janela de X dias).
- **[EM ABERTO]** Mix de notificação: push vs. in-app para o lembrete preventivo.
- **[EM ABERTO]** Árvore de decisão detalhada do escalonamento (merece documento próprio).
- **[EM ABERTO]** Modelo de LLM e estratégia de prompt para (a) condução da conversa e (b) extração estruturada de memória.
- **[EM ABERTO]** Requisitos de LGPD para dado de saúde — validar com jurídico/compliance.
- **[EM ABERTO]** Profissional clínico para revisar fluxos e copy antes do lançamento.
- **[EM ABERTO]** Nome definitivo da feature/companheiro.

---

*Documento vivo. Atualizar a versão e o changelog a cada revisão.*
