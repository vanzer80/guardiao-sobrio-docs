# Reconciliação Pós-Auditoria — guardiao-sobrio-docs × realidade do app

> Documento mestre que alinha a documentação (fonte de verdade da marca) ao **estado real**
> do app `guardiao-sobrio-app`, verificado na auditoria forense de 3 vias (jun/2026).
> Objetivo: nada se perde. Cada arquivo do repo tem aqui "o que diz × realidade × ação".
> Preservar histórico: nas edições, anexar bloco datado "Estado real (auditoria jun/2026)" sem apagar a intenção original.
>
> **Correção (verificação completa):** o repo tem **43 arquivos** (não 28). Após reler todos, **26 recebem bloco de reconciliação** e **17 ficam sem alteração**. O inventário definitivo, com o bloco exato de cada arquivo, está em `ATUALIZACOES-DOCS.md` (Blocos A–F + Inventário completo) — use-o como fonte de execução.

---

## 1. Correções globais (valem para vários documentos)

| # | Tema | A doc diz | Realidade (CODE/LIVE) | Decisão / ação |
|---|---|---|---|---|
| G1 | **Stack** | PRD §4.2: "Next.js 15 (App Router)" como frontend | **Expo / React Native + Expo Router** (web via `react-native-web` no Vercel); Next.js só era cogitado p/ landing/dashboard | Corrigir PRD para a stack real; `02-arquitetura` já está correto (Expo mobile + Next.js web opcional) |
| G2 | **Monetização** | Dois modelos conflitantes: PRD/funil = **produtos avulsos** (R$47/97/197 + mentoria R$997); `02`/`07` = **assinaturas** (Free / Essential R$19,90 / Guardião R$39,90) | App implementa **assinaturas** (Stripe Checkout + webhook); planos `free/essential/guardian`; trial 5 dias; modo anônimo | **Decisão a registrar (ADR):** o produto é **assinatura**. Atualizar PRD/funil para refletir (ou marcar avulsos como descontinuados/futuros). Preço anual: alinhar (`02` diz R$299; código R$399) |
| G3 | **Autenticação** | PRD: magic link sem senha | **E-mail + senha** (`signUp`/`signInWithPassword`) + **OAuth Google/Apple** + **modo anônimo** ("explorar sem cadastro") + confirmação de e-mail | Corrigir PRD/fluxos para auth real |
| G4 | **Landing pública + Painel Admin** | PRD §5.1 (landing) e §5.6 (admin `/admin`) | **Não implementados** (app entra em welcome→onboarding; sem `/admin`, sem SSR/landing) | Marcar como não construídos / fase futura ou fora de escopo do app mobile |
| G5 | **Fonte de verdade do plano** | — | Cliente lê `profiles.plan`; webhook escreve `profiles.plan`+`subscriptions.plan`; RLS usa `effective_plan()` (trial→guardian). Colunas estavam ausentes (migration drift), corrigidas em jun/2026 | Documentar a decisão (Opção A) + a função `effective_plan()` no `06` |
| G6 | **Aprendizados de banco** | — | Migration drift (migration registrada sem rodar), recursão de RLS `42P17`, validar e2e após cada fix | Registrar em `02`/`08` como "lições e práticas de migração/RLS" |

---

## 2. Mudanças por documento

### Bloco A — `app/`
| Arquivo | Principais ajustes |
|---|---|
| `01-PRD.md` | Stack→Expo (G1); auth real (G3); monetização=assinatura (G2); landing/admin como não-implementados (G4); manter visão/personas/OKRs |
| `02-arquitetura.md` | Já alinhado (Expo); acrescentar: preço anual real, `effective_plan()`/RPCs, lições de migration drift/RLS (G5/G6) |
| `03-funcionalidades.md` | Marcar status real: ✅ checklist/contador/SOS/diário/fundamentos/gatilhos/Programa30; 🟡 Módulo Familiar (lado do familiar recém-construído); ❌ Comunidade (Fase 3); Contatos de Confiança = stub |
| `04-design-system.md` | Ícones reais = **Ionicons** (spec dizia Phosphor); **SOS** central na tab bar (spec dizia flutuante 56px); **General Sans** ainda não carregada (corpo cai p/ sistema); tons de hover divergentes; manter tokens (conferem) |
| `05-fluxos-e-telas.md` | Abas reais: Hoje/Método/[SOS=Protocolo]/Escudo/Perfil; fluxo de aceitar convite familiar (RPC); onboarding 3 perguntas + setup |
| `06-modelo-de-dados.md` | **Reescrever para o schema real**: `profiles`(plan, trial_end, is_anonymous, substance_focus…), `checklist_items`+`checklist_completions`, `diary_entries`, `user_triggers`, `sos_activations`, `sobriety_records`, `family_connections`, `subscriptions`, `subscription_audit_log`, `user_settings`, `push_tokens`, `trigger_categories`, `emergency_contacts`; RPCs `effective_plan`/`accept_family_invite`/`get_family_day_status`; nota sobre a view `family_day_status` substituída por RPC |
| `07-regras-de-negocio.md` | Matriz de planos confere; **cortes free×pago (histórico/diário 7 dias) NÃO impostos** hoje (todos 90d/ilimitado) — registrar; limites éticos conferem |
| `08-roadmap-tecnico.md` | Marcar fases entregues; adicionar item anti-drift no CI; registrar pendências reais |
| `app/README.md` | Índice — adicionar este doc de reconciliação |

### Bloco B — raiz
| Arquivo | Ajustes |
|---|---|
| `README.md` | Adicionar seção "Estado do app (auditoria jun/2026)" + link p/ este doc; ajustar naming/monetização se decisão G2 mudar |
| `ROADMAP.md` | Adicionar **Fase 7 — Auditoria do App (jun/2026)** com achados resolvidos (Achados 1/2, DRIFT-01, MO-07) e pendências; novas decisões D12+ (modelo de monetização; fonte de verdade do plano) |

### Bloco C — marca
| Arquivo | Ajustes |
|---|---|
| `manual-de-marca.md` (Interface Digital App) | Ícone do app = placeholder (logo do Escudo ainda pendente D10); ícones de UI = Ionicons; SOS central; demais âncoras conferem |
| `assets/paleta.md` | Tokens do app conferem; sem mudança material (apontar 04 para os tons de hover reais) |
| `assets/tipografia.md` | App usa Cormorant + JetBrains Mono ✅; **General Sans ainda não embarcada** no app (corpo cai p/ sistema) — registrar pendência |
| `assets/logo-guidelines.md` | Logo segue **não criado** (D10); o app usa ícone placeholder + shield do Ionicons no SOS — consistente |

### Bloco D — produtos
| Arquivo | Ajustes |
|---|---|
| `funil-de-produtos-v2.md` | Sinalizar: o **app cobra por assinatura**, não pelos avulsos descritos. Conciliar com decisão G2 (manter avulsos como oferta de marketing? migrar para assinatura?) |
| `bundles-e-pacotes.md` | Idem — bundles dependem do modelo avulso; revisar após decisão G2 |

### Bloco E — revisar (sem mudança de divergência)
`fundamentos/13-fundamentos.md` (✅ fiel ao código), `protocolos/*` (conteúdo clínico; o app referencia mas não diverge), `estrategia/*`, `contexto/*`, `planos/*`, `marca/{manifesto, briefing-executivo, diretrizes-video, tom-visual-por-produto}` → conferidos; sem alteração por divergência de implementação. (Se a decisão G2 mudar o modelo, revisar `planos/*` e `estrategia/metricas-de-funil`.)

---

## 3. Decisões novas a registrar no ROADMAP (D12+)
- **D12 — Modelo de monetização (DECIDIDO em jun/2026):** **assinatura (Free / Essential R$19,90 / Guardião R$39,90) é o modelo OFICIAL.** Produtos avulsos (R$47/97/197), mentoria avulsa e bundles → **descontinuados/legado**. PRD, `funil-de-produtos-v2` e `bundles-e-pacotes` reescritos/anotados para assinatura.
- **D13 — Fonte de verdade do plano:** Opção A (manter `profiles.plan`), com `effective_plan()` honrando trial; reavaliar Opção B (`subscriptions.plan` único) no futuro.
- **D14 — Preço anual:** padronizar (R$299 × R$399) entre doc e código.
- **D15 — General Sans:** embarcar a fonte no app (hoje o corpo cai p/ fonte do sistema).
- **D16 — Prevenção de migration drift:** check no CI (migration list / db diff) antes de marcar migration como concluída.

---

## 4. Ordem de execução (blocos)
1. **Bloco A** (app/) — núcleo da divergência.
2. **Bloco B** (raiz) — README + ROADMAP.
3. **Bloco C** (marca) — ajustes pontuais.
4. **Bloco D** (produtos) — depende da decisão G2/D12.
5. **Bloco E** — registrar como revisados.

Cada bloco gera arquivos atualizados em `kit-docs-update/` (espelhando o repo) + um prompt de commit para o Claude Code. Nada é aplicado sem sua revisão.
