# Relatório de Revisão de Perfis Sociais — O Guardião Sóbrio
**Data:** 24 jun 2026  
**Escopo:** Instagram, TikTok, YouTube (Facebook fora de escopo)  
**Arquivos auditados:** `AGENTS.md`, `marca/kit-perfis-sociais.md`, `marca/setup-canais-sociais.md`

---

## Resumo executivo

| Plataforma | Conta | Bio/Descrição | Campos pendentes | Violações AGENTS.md corrigidas nos docs |
|---|---|---|---|---|
| Instagram | ✅ Ativa | ✅ Conforme | 5 campos manuais | — |
| TikTok | ✅ Ativa | ✅ Conforme | 2 campos manuais | ⚠️ Nome de exibição viola regra (ação manual urgente) |
| YouTube | ✅ Canal ativo | ⬜ Não configurada | 6 campos manuais | — |

**Violações corrigidas nos docs:** 6 inconsistências corrigidas em `kit-perfis-sociais.md` e `setup-canais-sociais.md`.

---

## 1. Instagram — `@guardiaosobrio`

### ✅ Correto
- Conta do tipo Criador de conteúdo (Profissional) ativa
- Categoria: Saúde/beleza
- Username: `guardiaosobrio`
- Bio configurada (131/150 chars) com CVV 188, tagline e CTA de isca gratuita
- Sem menção a "Luis Vanzer" na bio
- CTA aponta para isca gratuita (conforme D12 — sem produto avulso)

### ✅ Corrigido nos docs
- `setup-canais-sociais.md`: bio do rascunho foi atualizada para refletir o texto efetivamente implementado (divergia em "os primeiros 30 dias" e "Crise: CVV 188" — versão implementada usa "30 dias" e "CVV 188" direto)

### ⬜ Ação manual pendente (no app do Instagram)

| Prioridade | Campo | Ação | Texto exato |
|---|---|---|---|
| 1 | **Nome de exibição** | Editar no app (web não permite) | `O Guardião Sóbrio` |
| 2 | **Foto de perfil** | ✅ Subida via web em 25 jun 2026 | Arquivo: `marca/assets/foto-perfil-800x800.png` (escudo dourado) |
| 3 | **Email de contato** | Adicionar via app → Editar perfil → Informações de contato | `guardiaosobrio@gmail.com` |
| 4 | **Site (link na bio)** | Adicionar quando Linktree estiver pronto | URL do Linktree (isca gratuita) |
| 5 | **Destaques** | Criar 4 highlights com capas SVG exportadas como PNG 1000×1000 | Método · Protocolos · Família · Depoimentos (capas em `marca/assets/`) |

---

## 2. TikTok — `@guardiaosobrio`

### ✅ Correto
- Conta Pro (gratuita) ativa com analytics habilitado
- Username: `guardiaosobrio`
- Categoria: Saúde e bem-estar
- Bio configurada (80/80 chars) com CVV 188 e tagline
- Bio não menciona "Luis Vanzer"
- CVV 188 presente no texto da bio

### ⚠️ Violação de AGENTS.md — ação manual URGENTE

**Nome de exibição atual: `Luis Vanzer - Guardião Sóbrio`**

Isso viola a regra inegociável: *"Nenhum perfil público menciona 'Luis Vanzer' — marca é 'O Guardião Sóbrio'"*.

O doc registra que o TikTok impõe cooldown de 7 dias por troca de nome. O nome foi definido na criação da conta (24 jun 2026). **Trocar assim que o cooldown encerrar — mais tardar em 1 jul 2026.**

Caminho: Editar Perfil → Nome → `O Guardião Sóbrio` → Salvar

### ✅ Corrigido nos docs
- `setup-canais-sociais.md`: rascunho de bio substituído pelo texto implementado (80 chars exatos). O rascunho anterior excedia o limite e continha texto divergente.
- `kit-perfis-sociais.md` e `setup-canais-sociais.md`: removida `@luisvanzer.oficial` da lista de handles alternativos (violava regra de marca — handle público com nome pessoal do criador é proibido).

### ⬜ Ação manual pendente

| Prioridade | Campo | Ação | Texto exato |
|---|---|---|---|
| 1 | **Nome de exibição** ⚠️ | Editar em Perfil → Nome **após 1 jul 2026** (cooldown 7 dias) | `O Guardião Sóbrio` |
| 2 | **Foto de perfil** | ✅ Subida via web em 25 jun 2026 | Arquivo: `marca/assets/foto-perfil-800x800.png` (escudo dourado) |
| 3 | **Link na bio** | Adicionar quando Linktree estiver pronto | URL do Linktree (isca gratuita) |

---

## 3. YouTube — `@guardiaosobrio`

### ✅ Correto
- Canal ativo com nome `Guardião Sóbrio` (sem "O" — decisão do criador, documentada)
- Handle: `@guardiaosobrio`
- URL: `youtube.com/@guardiaosobrio`
- Conta Google da marca: `guardiaosobrio@gmail.com`
- Descrição preparada no kit tem CVV 188, sem menção a "Luis Vanzer", CTA para isca gratuita

### ✅ Corrigido nos docs
- `setup-canais-sociais.md`: descrição do canal atualizada para a versão completa do kit (a versão anterior era um rascunho simplificado, sem bullets, sem emojis, com placeholder `[link]` em vez de `[LINK-NA-BIO]`).

### ⬜ Ação manual pendente (tudo via YouTube Studio)

| Prioridade | Campo | Ação | Status |
|---|---|---|---|
| 1 | **Descrição do canal** | YouTube Studio → Personalizar canal → Descrição básica | ✅ Publicada em 24 jun 2026 |
| 2 | **Categoria** | YouTube Studio → Configurações do canal | ℹ️ N/A — YouTube moderno não tem categoria por canal; é por vídeo |
| 3 | **País** | YouTube Studio → Configurações → Canal → Informações básicas | ✅ Brasil — configurado em 24 jun 2026 |
| 4 | **Banner** | Exportar SVG → PNG 2560×1440 → Personalizar canal | ✅ Exportado e publicado em 24 jun 2026 |
| 5 | **Ícone do canal** | Personalizar canal → Foto do perfil → subir 400×400 | ✅ Escudo 800×800 publicado em 25 jun 2026 |
| 6 | **Links** | Personalizar canal → Links | ✅ Instagram + TikTok adicionados em 24 jun 2026; Facebook aguarda criação da Página |

**Descrição do canal — texto pronto para colar:**

```
O Guardião Sóbrio — sobriedade adulta real, sem julgamento e sem jargão de coach.

Método próprio (Espelho · Tática · Escudo) para os primeiros 30 dias e para familiares.

📋 O que você vai encontrar aqui:
• Histórias reais e vulnerabilidade honesta (Espelho)
• Protocolos táticos para atravessar o impulso de beber (Tática)
• Guias para cônjuges e familiares (Escudo)

⚠️ Conteúdo de apoio — não substitui psiquiatra, psicólogo ou grupos de apoio.
Em crise, ligue 188 (CVV) ou procure um serviço de saúde.

↓ Comece de graça: [LINK-NA-BIO]
```

*(Substituir `[LINK-NA-BIO]` pela URL do Linktree quando estiver pronto)*

**Links do canal:**

| Rótulo | URL |
|---|---|
| ↓ Comece de graça | `[LINK-NA-BIO]` |
| Instagram | `instagram.com/guardiaosobrio` |
| TikTok | `tiktok.com/@guardiaosobrio` |

> ⚠️ Não adicionar o link do Facebook até a página existir.

---

## Ações manuais consolidadas — ordenadas por prioridade

| # | Prioridade | Plataforma | Campo | Status |
|---|---|---|---|---|
| 1 | 🔴 URGENTE | **TikTok** | Trocar nome de exibição para `O Guardião Sóbrio` | ⏳ A partir de 1 jul 2026 (cooldown TikTok) |
| 2 | 🟠 Alta | **Todos** | Recortar foto de perfil 400×400 e subir (Instagram, TikTok, YouTube) | ✅ Escudo gerado 800×800 e publicado em YouTube, Instagram e TikTok — 25 jun 2026 |
| 3 | 🟠 Alta | **YouTube** | Descrição do canal | ✅ Publicada em 24 jun 2026 |
| 4 | 🟠 Alta | **YouTube** | País do canal | ✅ Brasil — 24 jun 2026 |
| 5 | 🟠 Alta | **YouTube** | Banner 2560×1440 | ✅ Exportado e publicado em 24 jun 2026 |
| 6 | 🟡 Média | **Instagram** | Editar nome de exibição no app | ⬜ Ação manual — somente via app |
| 7 | 🟡 Média | **Instagram** | Adicionar email de contato no app | ⬜ Ação manual — somente via app |
| 8 | 🟡 Média | **YouTube** | Links do canal (Instagram + TikTok) | ✅ Configurados em 24 jun 2026 |
| 9 | 🟢 Quando Linktree pronto | **Todos** | Preencher `[LINK-NA-BIO]` em Instagram, TikTok e YouTube | ⬜ Após criar o Linktree |
| 10 | 🟢 Quando Linktree pronto | **Instagram** | Criar 4 Destaques com capas SVG exportadas | ⬜ Após primeiros Stories publicados |

---

## Correções aplicadas nos docs (resumo)

| Arquivo | Linha(s) | Problema | Correção |
|---|---|---|---|
| `kit-perfis-sociais.md` | Cabeçalho | Status dizia "todas as plataformas do zero" | Atualizado para refletir contas criadas em 24 jun 2026 |
| `kit-perfis-sociais.md` | § 0 alternativas | `@luisvanzer.oficial` violava regra de marca | Removido; adicionada nota explícita proibindo handles com nome pessoal |
| `setup-canais-sociais.md` | Nota de handle | `@luisvanzer.oficial` nas alternativas | Removido; adicionada nota de proibição |
| `setup-canais-sociais.md` | Bio TikTok | Rascunho excedia 80 chars e divergia do implementado | Substituído pelo texto implementado (80/80) |
| `setup-canais-sociais.md` | Bio Instagram | Rascunho divergia do texto implementado ("os primeiros 30 dias", "Crise: CVV 188") | Substituído pelo texto implementado (131/150) |
| `setup-canais-sociais.md` | Descrição YouTube | Versão simplificada sem bullets, com `[link]` como placeholder | Substituído pela versão completa do kit com `[LINK-NA-BIO]` |

---

*Gerado por agente de revisão em: 24 jun 2026*  
*Arquivos auditados: `AGENTS.md` · `marca/kit-perfis-sociais.md` · `marca/setup-canais-sociais.md`*
