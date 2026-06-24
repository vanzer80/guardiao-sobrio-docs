# Kit de Perfis de Redes Sociais — O Guardião Sóbrio

> **Handle:** `@guardiaosobrio` (validar disponibilidade antes de criar qualquer conta — ver § 0)
> **Link-na-bio:** `[LINK-NA-BIO]` ← preencher quando o Linktree estiver pronto
> **Status:** todas as plataformas do zero (nenhuma conta existia em jun/2026)
> **Atualizado em:** junho 2026

Para regras de voz/CTA: `AGENTS.md` · Para specs visuais de referência: `marca/setup-canais-sociais.md`

---

## 0. Validar o @ antes de criar as contas

Verificação realizada em **24 jun 2026** — acesso direto às URLs via navegador.

| Plataforma | Status | Evidência |
|---|---|---|
| Instagram | ✅ **Livre** | "Profile não está disponível" / "O link pode estar corrompido ou o perfil pode ter sido removido" — equivale a handle inexistente |
| TikTok | ✅ **Livre** | "Não foi possível localizar esta conta" — 404 equivalente |
| YouTube | ✅ **Livre** | 404 Not Found |
| Facebook | ✅ **Livre** (alta confiança) | Mesmo comportamento de URLs completamente inexistentes; Páginas públicas são visíveis sem login (confirmado com teste de controle em `facebook.com/cocacola`) |

**Resultado:** `@guardiaosobrio` está disponível nas 4 plataformas. ✅ Pode criar as contas.

> ⚠️ **Regra:** registrar o mesmo @ nos 4 canais antes de divulgar qualquer um. Consistência entre plataformas é essencial para que seguidores te encontrem.

**Se `guardiaosobrio` não estiver mais disponível quando for criar**, alternativas em ordem de preferência:
1. `@oguardiaosobrio`
2. `@guardiaosobrio.oficial`
3. `@luisvanzer.oficial`

---

## 1. Instagram

**Status:** abrir do zero.
**Tipo de conta:** Profissional → Criador (para analytics, ferramenta de link na bio e contato).

### Dados do perfil

| Campo | Valor |
|---|---|
| **@** (username) | `guardiaosobrio` |
| **Nome de exibição** | `Luis Vanzer — O Guardião Sóbrio` |
| **Categoria** | Criador de conteúdo digital *ou* Saúde/bem-estar |
| **Site (link na bio)** | `[LINK-NA-BIO]` |
| **Email de contato** | (email do criador) |

### Bio — 131 chars (limite: 150 ✓)

```
Sobriedade não é abstinência. É construção.
Método p/ 30 dias + familiares.
Não substitui profissionais • CVV 188
↓ Comece de graça
```

### Destaques (Stories Highlights)

Criar os 4 destaques abaixo. Capas SVG prontas em `marca/assets/` → exportar como PNG 1000×1000.

| Nome | Capa | Cor do pilar |
|---|---|---|
| Método | `marca/assets/destaque-instagram-metodo.svg` | Ouro `#C8A84B` |
| Protocolos | `marca/assets/destaque-instagram-protocolos.svg` | Ouro `#C8A84B` |
| Família | `marca/assets/destaque-instagram-familia.svg` | Ardósia `#6B8FA3` |
| Depoimentos | `marca/assets/destaque-instagram-depoimentos.svg` | Prata `#D4D0CA` |

> Para o conteúdo de Família dentro do Instagram (Reels/carrosséis), usar **modo Limpo** (`#F5F3EF`) — ver `marca/tom-visual-por-produto.md`. A capa do destaque permanece noir para uniformidade da grade.

### Conteúdo inicial (sem produção exclusiva)
- **Reels:** cortes do TikTok diretamente (reaproveitamento)
- **Carrosséis:** 1 fundamento = 1 carrossel de 5 slides
- **Stories:** bastidores leves + CTA para isca gratuita + enquetes
- **Bio link:** sempre aponta para iscas gratuitas (nunca produto avulso — D12)

---

## 2. TikTok — ✅ Perfil criado em 24 jun 2026

**Status:** ✅ Conta criada — `@guardiaosobrio`
**Tipo de conta:** Conta Pro gratuita (habilita analytics sem custo).

### Dados do perfil

| Campo | Valor |
|---|---|
| **@** (username) | `guardiaosobrio` |
| **Nome de exibição** | `Luis Vanzer — O Guardião Sóbrio` |
| **Categoria** | Saúde e bem-estar |
| **Link da bio** | `[LINK-NA-BIO]` (disponível em contas Pro) |

### Bio — 80 chars exatos (limite: 80 ✓)

```
Sobriedade não é abstinência. É construção.
Não substitui profissionais. CVV 188
```

> ⚠️ O TikTok limita a bio a **80 caracteres totais**, contando espaços e quebras de linha. O texto acima usa exatamente 80 (43 + 1 newline + 36). Conte antes de salvar — qualquer adição vai cortar o final.

### Foto de perfil
- **Fonte:** `C:\dev\guardiao-sobrio-digital\public\luis-vanzer.png`
- **Spec:** 400×400 px quadrado, fundo escuro, rosto centralizado, expressão séria e firme
- **Copiar para:** `marca/assets/foto-perfil-luis-vanzer.png` (foto-fonte recortada)
- Instruções de recorte: ver `marca/assets/logo-guidelines.md` e § 6 abaixo

---

## 3. YouTube

**Status:** abrir do zero. Criar dentro de uma conta Google do criador.

### Dados do canal

| Campo | Valor |
|---|---|
| **Nome do canal** | `O Guardião Sóbrio` |
| **Handle (@)** | `@guardiaosobrio` |
| **Categoria** | Saúde / Pessoa e blog |
| **País** | Brasil |
| **URL do canal** | `youtube.com/@guardiaosobrio` (gerada após criação) |

### Descrição do canal

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

### Banner do canal
- **Arquivo SVG:** `marca/assets/banner-youtube.svg`
- **Tamanho final:** 2560×1440 px — exportar como PNG antes de subir
- **Área segura:** 1546×423 px centralizada (x=507–2053, y=509–932) — todo conteúdo importante já está dentro
- **Visual:** shield dourado + "O GUARDIÃO SÓBRIO" em Oswald + tagline em Cormorant Garamond

### Ícone do canal
- Mesma foto 400×400 do TikTok (subir a maior disponível — YouTube aceita até 800×800)

### Links (configurar em "Personalizar canal → Links")

| Rótulo | URL |
|---|---|
| ↓ Comece de graça | `[LINK-NA-BIO]` |
| Instagram | `instagram.com/guardiaosobrio` |
| TikTok | `tiktok.com/@guardiaosobrio` |
| Facebook | `facebook.com/guardiaosobrio` |

---

## 4. Facebook

**Status:** abrir do zero. Criar **Página** (não perfil pessoal).

### Dados da página

| Campo | Valor |
|---|---|
| **Nome da página** | `O Guardião Sóbrio` |
| **Username (@)** | `guardiaosobrio` |
| **Categoria** | Saúde e bem-estar *ou* Criador de conteúdo digital |
| **Site** | `[LINK-NA-BIO]` |
| **País** | Brasil |

### Descrição curta ("Sobre em poucas palavras") — 147 chars (limite: 255 ✓)

```
Sobriedade não é abstinência. É construção. Método p/ os primeiros 30 dias + familiares. Não substitui profissionais. Crise: CVV 188.
```

### Sobre completo

```
O Guardião Sóbrio — sobriedade adulta real, sem julgamento e sem jargão de coach.

Método próprio (Espelho · Tática · Escudo) criado por Luis Vanzer para atravessar os primeiros 30 dias de sobriedade e apoiar familiares de quem está em recuperação.

✅ Protocolos táticos para atravessar o impulso de beber
✅ Guias honestos de vulnerabilidade e consciência
✅ Suporte para cônjuges e familiares

❌ Não substitui psiquiatra, psicólogo ou grupos de apoio
❌ Não promete cura

Em crise: ligue 188 (CVV)
↓ Comece de graça: [LINK-NA-BIO]
```

### Foto de capa (Cover)
- **Arquivo SVG:** `marca/assets/capa-facebook.svg`
- **Tamanho final:** 851×315 px — exportar como PNG antes de subir
- **Visual:** mesma estética do banner YouTube, adaptada para formato horizontal estreito

### Papel do Facebook na estratégia
- **Reaproveitamento automático:** publicar Reels via Meta Business Suite (TikTok → Facebook Reels)
- **Público-alvo:** alcance de familiares e cônjuges (35+, mais ativos no Facebook que no TikTok)
- **Grupo privado:** avaliar após consolidar base de leads (fase posterior)
- **Cadência:** mesma do Instagram — mínimo esforço adicional via automação

---

## 5. Estrutura do link-na-bio (Linktree — a criar)

Quando o Linktree (ou bio.link, beacons.ai, carrd.co) estiver pronto, configurar com:

| Ordem | Título do botão | Destino | Tipo |
|---|---|---|---|
| 1 | ↓ Checklist do Escudo (Grátis) | Landing page / isca | CTA principal |
| 2 | ↓ Diário de Prompts (Grátis) | Landing page / isca | CTA secundário |
| 3 | ↓ Guia do Familiar (Grátis) | Landing page / isca | CTA terciário |
| 4 | Conheça o Método | Página "Comece Aqui" do site | Institucional |
| 5 | App — Teste grátis 5 dias | AppLanding page | Conversão (trial) |
| — | Links sociais | TikTok, Instagram, YouTube, Facebook | Footer |

**Estética do Linktree:**
- Fundo: `#0E0D0C`
- Botões: borda `#C8A84B`, texto `#E8E6E2`
- Foto: mesma 400×400 do perfil
- Nome: "O Guardião Sóbrio" / "Luis Vanzer"

> ⚠️ Não criar botão de produto avulso. CTA padrão: isca grátis → trial de assinatura (D12).

---

## 6. Foto de perfil — spec de recorte (400×400)

**Arquivo-fonte:** `C:\dev\guardiao-sobrio-digital\public\luis-vanzer.png`
**Destino (copiar antes):** `C:\dev\guardiao-sobrio-docs\marca\assets\foto-perfil-luis-vanzer.png`

**Spec de recorte:**
- Dimensão final: 400×400 px (quadrado perfeito)
- Fundo: escuro (manter o fundo natural da foto se já for escuro; caso contrário, recolorir para `#0E0D0C`)
- Rosto: centralizado, ocupando ~70–80% da altura do quadrado
- Expressão: séria e firme — sem sorriso performático
- Formato de entrega: PNG, sem borda arredondada (as plataformas aplicam o círculo automaticamente)

**Opções de recorte:**

*Via Canva (sem instalar software):*
1. Fazer upload de `luis-vanzer.png` no Canva
2. Criar design 400×400 px, fundo `#0E0D0C`
3. Inserir a foto, centralizar o rosto, ajustar escala
4. Baixar como PNG

*Via ImageMagick (terminal, se instalado):*
```bash
# Exemplo — ajustar os valores de crop conforme a foto real
magick "luis-vanzer.png" -gravity Center -crop 400x400+0+0 +repage -resize 400x400 "foto-perfil-400.png"
```

---

## 7. Checklist final — antes de publicar em qualquer canal

- [ ] `@guardiaosobrio` disponível e reservado na plataforma (ver § 0)
- [ ] Nome de exibição consistente: **Luis Vanzer — O Guardião Sóbrio** (ou **O Guardião Sóbrio** no YouTube/Facebook)
- [ ] Bio dentro do limite de caracteres, com tagline + disclaimer + CVV 188
- [ ] Foto de perfil 400×400: rosto do criador, fundo escuro, expressão firme
- [ ] Link-na-bio aponta para iscas gratuitas — **não** produto avulso (D12)
- [ ] Conta tipo Pro / Criador / Página ativada (para analytics)
- [ ] Conta piloto validada (sugestão: Instagram primeiro) antes de replicar nos outros 3
- [ ] [LINK-NA-BIO] preenchido quando Linktree estiver pronto (agora está como placeholder)

---

## 8. Ativos visuais — manifesto de arquivos

| Arquivo | Uso | Status |
|---|---|---|
| `marca/assets/banner-youtube.svg` | Banner do canal YouTube 2560×1440 | ✅ Gerado |
| `marca/assets/capa-facebook.svg` | Foto de capa Facebook 851×315 | ✅ Gerado |
| `marca/assets/destaque-instagram-metodo.svg` | Capa Destaque Instagram: Método | ✅ Gerado |
| `marca/assets/destaque-instagram-protocolos.svg` | Capa Destaque Instagram: Protocolos | ✅ Gerado |
| `marca/assets/destaque-instagram-familia.svg` | Capa Destaque Instagram: Família | ✅ Gerado |
| `marca/assets/destaque-instagram-depoimentos.svg` | Capa Destaque Instagram: Depoimentos | ✅ Gerado |
| `marca/assets/foto-perfil-luis-vanzer.png` | Foto de perfil 400×400 (todos os canais) | ⬜ Recortar (ver § 6) |

> Para exportar SVG → PNG: abrir o arquivo SVG no Chrome com conexão à internet (para carregar Google Fonts) → F12 → Console → `document.querySelector('svg').outerHTML` (ou usar extensão "SVG Export" / ferramenta online [svgomg.net](https://svgomg.net/) → download → abrir no Canva para exportar como PNG no tamanho correto).
>
> Alternativa rápida: abrir o SVG no Inkscape (gratuito) → Arquivo → Exportar PNG → digitar o tamanho.

---

## 9. Gmail exclusivo da marca

> ⚠️ Criar o Gmail é **ação manual** — Google exige telefone + captcha. Não é possível automatizar.

### Endereço — ✅ criado em 24 jun 2026

```
guardiaosobrio@gmail.com
```

> Usar um endereço separado do e-mail pessoal do Luis — facilita delegar acesso no futuro e mantém o histórico da marca organizado.

### Para que serve esta conta Google

| Uso | Obrigatório? | Observação |
|---|---|---|
| **Canal YouTube** | ✅ Sim | O YouTube usa conta Google — este Gmail **é** o login do canal |
| **Google Analytics** | ✅ Sim | Propriedade do site `guardiasobrio.com.br` |
| **Google Search Console** | Recomendado | Monitorar SEO do site |
| **Google Business Profile** | Opcional | Criar perfil de negócio local (se aplicável) |
| **Login no Linktree / bio.link** | Recomendado | Centralizar tudo na conta da marca |
| **Meta Business Suite (Instagram/Facebook)** | Opcional | Pode usar e-mail separado, mas usar este mantém tudo num lugar |

### Passo a passo para criar

1. Acesse `accounts.google.com/signup`
2. Escolha **Para uso pessoal** (não empresarial — evita cobrança)
3. Nome: **Luis Vanzer** (ou "O Guardião Sóbrio" no campo "Apelido")
4. Endereço: `guardiaosobrio` (verificar disponibilidade na hora)
5. Senha forte — salvar em gerenciador de senhas (Bitwarden, 1Password, etc.)
6. Número de telefone: usar o do criador (necessário para verificação)
7. **Não vincular** recuperação ao e-mail pessoal sem pensar — se perder acesso ao pessoal, perde a conta da marca também. Usar um telefone de backup se disponível.
8. Após criar: ativar **verificação em duas etapas** imediatamente (Configurações → Segurança)

### Após criar — primeiros usos

- [ ] Criar canal YouTube com esta conta (ver § 3)
- [ ] Configurar Google Analytics para `guardiasobrio.com.br`
- [ ] Usar este e-mail como login do Linktree (quando criado)
- [ ] Atualizar o campo "Email de contato" nas páginas do Instagram e Facebook

---

> **Referências:** `marca/setup-canais-sociais.md` · `estrategia/estrategia-multicanal.md` · `AGENTS.md` · `marca/manual-de-marca.md` · `marca/assets/paleta.md`

*Gerado por agente em: junho 2026*
