# Relatório de Auditoria de Perfis Sociais — O Guardião Sóbrio
**Data:** 25 jun 2026  
**Escopo:** Instagram, TikTok, YouTube (Facebook fora de escopo — ainda a criar)  
**Referência:** `marca/kit-perfis-sociais.md` · `RELATORIO-REVISAO-PERFIS-2026-06-24.md`  
**Método:** Verificação ao vivo via navegador nos perfis públicos

---

## Resumo executivo

| Plataforma | Conformidade | Bloqueadores | Status geral |
|---|---|---|---|
| Instagram | 🟡 Parcial | Nome de exibição incorreto; sem Destaques | 4 itens pendentes |
| TikTok | 🔴 Crítico | **CVV 188 ausente da bio**; nome viola AGENTS.md | 3 itens pendentes |
| YouTube | ✅ Conforme | Nenhum bloqueador | 1 pendência menor (Linktree) |

---

## 1. Instagram — `@guardiaosobrio`

### ✅ Conforme

| Campo | Valor observado | Referência |
|---|---|---|
| Username | `guardiaosobrio` | ✅ |
| Tipo de conta | Profissional / Criador | ✅ |
| Bio (texto) | Sobriedade não é abstinência. É construção. / Método p/ 30 dias + familiares. / Não substitui profissionais • CVV 188 / ↓ Comece de graça | ✅ |
| CVV 188 na bio | Presente | ✅ |
| Foto de perfil | Escudo publicado (800×800) | ✅ |

### ❌ Não conforme

| Campo | Valor observado | Valor esperado (kit) | Severidade |
|---|---|---|---|
| **Nome de exibição** | `Guardiao Sobrio` | `O Guardião Sóbrio` | 🟠 Alta — sem "O" prefixo, sem acentos |

> **Causa:** O Instagram não permite editar o nome de exibição via web. Ação pendente desde 24 jun 2026 — requer app móvel.

### ⬜ Pendências (ações manuais)

| # | Campo | Ação | Como |
|---|---|---|---|
| 1 | **Nome de exibição** | Trocar para `O Guardião Sóbrio` | App → Editar perfil → Nome |
| 2 | **Email de contato** | Adicionar `guardiaosobrio@gmail.com` | App → Editar perfil → Informações de contato |
| 3 | **Link na bio** | Preencher URL do Linktree | App → Editar perfil → Site (após criar Linktree) |
| 4 | **Story Highlights** | Criar 4 destaques: Método · Protocolos · Família · Depoimentos | App → Novo Destaque; capas em `marca/assets/*.svg` |

---

## 2. TikTok — `@guardiaosobrio`

### ✅ Conforme

| Campo | Valor observado | Referência |
|---|---|---|
| Username | `guardiaosobrio` | ✅ |
| Foto de perfil | Escudo publicado (800×800) | ✅ |
| Conta Pro | Analytics habilitado | ✅ |

### ❌ Não conforme — CRÍTICO

| Campo | Valor observado | Valor esperado (kit) | Severidade |
|---|---|---|---|
| **Bio — linha 2** | `Não substitui ajuda profissionais.` | `Não substitui profissionais. CVV 188` | 🔴 **CRÍTICO** |
| **CVV 188** | **AUSENTE** | Obrigatório (aviso de crise) | 🔴 **CRÍTICO** |
| **Bio — palavra extra** | "ajuda" inserida antes de "profissionais" | Não existe no kit | 🟠 Alta — texto gramaticalmente incorreto |

**Bio atual (live):**
```
Sobriedade não é abstinência. É construção.
Não substitui ajuda profissionais.
```

**Bio correta (kit):**
```
Sobriedade não é abstinência. É construção.
Não substitui profissionais. CVV 188
```

> ⚠️ A ausência do CVV 188 é a divergência mais grave deste relatório. O número do CVV (Centro de Valorização da Vida) é aviso de crise obrigatório em todos os canais da marca, conforme `AGENTS.md`. O texto também contém a palavra "ajuda" não prevista no kit, tornando a frase gramaticalmente incorreta.

### ⚠️ Violação conhecida e controlada

| Campo | Valor observado | Valor esperado | Status |
|---|---|---|---|
| **Nome de exibição** | `Luis Vanzer - Guardião Sóbrio` | `O Guardião Sóbrio` | ⏳ Cooldown de 7 dias — trocar **a partir de 1 jul 2026** |

> O TikTok limita trocas de nome a 1 por semana. A conta foi criada em 24 jun 2026. O cooldown encerra em 1 jul 2026. Esta violação é **temporária e controlada**.

### ⬜ Pendências

| # | Campo | Ação | Prazo |
|---|---|---|---|
| 1 | **Bio** 🔴 | Corrigir para o texto exato do kit (remover "ajuda", adicionar "CVV 188") | **Imediato** |
| 2 | **Nome de exibição** ⚠️ | Trocar para `O Guardião Sóbrio` | A partir de 1 jul 2026 |
| 3 | **Link na bio** | Adicionar URL do Linktree | Após criar Linktree |

**Texto exato para colar no campo Bio do TikTok (80 chars):**
```
Sobriedade não é abstinência. É construção.
Não substitui profissionais. CVV 188
```

---

## 3. YouTube — `@guardiaosobrio`

### ✅ Conforme (todos os campos críticos)

| Campo | Valor observado | Referência |
|---|---|---|
| Nome do canal | `Guardião Sóbrio` | ✅ (sem "O" — decisão documentada do criador) |
| Handle | `@guardiaosobrio` | ✅ |
| URL | `youtube.com/@guardiaosobrio` | ✅ |
| Descrição | Publicada — começa com "O Guardião Sóbrio — sobriedade adulta real, sem julgamento e sem jargão de coach. Método próprio…" | ✅ |
| Link — Instagram | `instagram.com/guardiaosobrio` | ✅ |
| Link — TikTok | `tiktok.com/@guardiaosobrio` | ✅ |
| Email | `guardiaosobrio@gmail.com` | ✅ |
| País | Brasil | ✅ |
| Data de criação | 24 jun 2026 | ✅ |
| Banner | Publicado | ✅ |
| Ícone do canal | Escudo 800×800 publicado | ✅ |
| CVV 188 na descrição | Presente ("Em crise, ligue 188 (CVV)…") | ✅ |

### ⬜ Pendências menores

| # | Campo | Ação | Prazo |
|---|---|---|---|
| 1 | **Link "↓ Comece de graça"** | Adicionar URL do Linktree em "Personalizar canal → Links" | Após criar Linktree |
| 2 | **Facebook** | NÃO adicionar até a Página Facebook existir | — |

---

## Ações consolidadas — ordenadas por prioridade

| # | Prioridade | Plataforma | Ação | Prazo |
|---|---|---|---|---|
| 1 | 🔴 CRÍTICO | **TikTok** | Corrigir bio: remover "ajuda", adicionar "CVV 188" | **Hoje** |
| 2 | 🟠 URGENTE | **TikTok** | Trocar nome de exibição para `O Guardião Sóbrio` | A partir de 1 jul 2026 |
| 3 | 🟠 ALTA | **Instagram** | Trocar nome de exibição para `O Guardião Sóbrio` (via app) | Esta semana |
| 4 | 🟡 MÉDIA | **Instagram** | Adicionar email de contato via app | Esta semana |
| 5 | 🟢 Pós-Linktree | **Todos** | Preencher `[LINK-NA-BIO]` em Instagram, TikTok e YouTube | Após criar Linktree |
| 6 | 🟢 Pós-Stories | **Instagram** | Criar 4 Destaques com capas SVG | Após publicar primeiros Stories |

---

## Comparativo com auditoria anterior (24 jun 2026)

| Item | Status em 24 jun | Status hoje (25 jun) | Delta |
|---|---|---|---|
| TikTok — nome de exibição | ⚠️ Viola AGENTS.md (cooldown ativo) | ⚠️ Idem — aguardando 1 jul 2026 | Sem mudança (esperado) |
| TikTok — bio | ✅ Configurada 80/80 | ❌ **CVV 188 ausente; "ajuda" inserida** | 🔴 **Regressão detectada** |
| Instagram — foto de perfil | ✅ Subida 25 jun 2026 | ✅ Confirmada | Mantido |
| Instagram — nome de exibição | ⬜ Pendente (app) | ❌ `Guardiao Sobrio` — pendente | Sem mudança |
| YouTube — banner | ✅ Publicado | ✅ Confirmado | Mantido |
| YouTube — ícone | ✅ Publicado | ✅ Confirmado | Mantido |
| YouTube — links | ✅ Instagram + TikTok | ✅ Confirmados | Mantido |
| YouTube — descrição | ✅ Publicada | ✅ Confirmada | Mantido |

> **Regressão crítica:** a bio do TikTok estava ✅ em 24 jun mas hoje está divergente do kit. O CVV 188 foi removido (ou nunca foi salvo corretamente) e a palavra "ajuda" foi inserida. **Corrigir imediatamente.**

---

*Auditoria realizada em: 25 jun 2026 — verificação ao vivo via navegador*  
*Referências: `marca/kit-perfis-sociais.md` · `AGENTS.md` · `RELATORIO-REVISAO-PERFIS-2026-06-24.md`*
