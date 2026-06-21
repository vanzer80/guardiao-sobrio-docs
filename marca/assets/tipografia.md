# Tipografia — O Guardiao Sobrio
# Uso em Canva, CapCut, PDFs e Producao de Conteudo

> Fonte de verdade para fontes fora do ambiente de codigo.
> Para tipografia do app (escala de tokens, CDN, pesos), ver `/app/04-design-system.md`.
> Atualizado em: Junho 2026

---

## Principio

Duas familias de fonte por peca. Uma para impacto (headlines, frases de ancora), uma para leitura (corpo, instrucoes). Consistencia entre plataformas supera variedade — fonte errada destroi a diferenciacao visual mais rapido do que qualquer erro de cor.

**Nota sobre o app:** O aplicativo usa Cormorant Garamond (display), General Sans (corpo) e JetBrains Mono (contador). ⚠️ Auditoria jun/2026: a **General Sans ainda não está embarcada** no app — o corpo cai para a fonte do sistema (ver D15). Essas fontes sao adequadas para interface digital. Para producao de conteudo offline (Canva, CapCut, PDFs), este arquivo define o sistema correto.

---

## Sistema de Fontes para Producao de Conteudo

### 1. Headline de Alto Impacto

**Oswald Bold**
- Categoria: Sem serifa condensada, alto impacto visual
- Pesos: Regular (400), Medium (500), Semi-Bold (600), Bold (700)
- Uso principal: **Bold (700)**
- Download: Google Fonts — gratuita
- No Canva: buscar "Oswald" > selecionar Bold
- No CapCut: buscar "Oswald" na biblioteca de fontes; se indisponivel, usar Bebas Neue

**Quando usar Oswald:**

| Situacao | Peso | Tamanho orientativo |
|---|---|---|
| Titulo de thumbnail TikTok / YouTube | Bold 700 | 80–120px em 1280x720 |
| Texto sobreimpresso em video (hook) | Bold 700 | Grande — preencher 50-70% da largura |
| Capa de PDF — protocolo de crise | Bold 700 | 48–64pt |
| Titulo de story (1080x1920) | Bold 700 | 60–80px |
| Legenda/caption no CapCut | Bold 700 | Visivelmente legivel em tela de 6" |
| Titulos de carrossel (slide de capa) | Bold ou Semi-Bold | 48–72px |

---

### 2. Headline Elegante para Frases de Ancora

**Cormorant Garamond**
- Categoria: Serifada de display, alta elegancia, legibilidade em corpo de texto grande
- Pesos: Regular (400), Medium (500), Semi-Bold (600) — com versoes italic
- Uso principal: **400 Italic** para frases e **600** para titulos de programa
- Download: Google Fonts — gratuita
- No Canva: buscar "Cormorant Garamond"

> Atencao: Cormorant e uma fonte serifada — nao corresponde ao "sem serifa" do manual para thumbnails. E a excecao correta para materiais longos e frases de ancora onde a elegancia supera o impacto bruto.

**Quando usar Cormorant Garamond:**

| Situacao | Peso | Tamanho orientativo |
|---|---|---|
| Frase de ancora em carrossel (slide destaque) | 400 Italic ou 600 | 36–54px em 1080x1080 |
| Epigrafe ou citacao interna em PDF | 400 Italic | 14–16pt |
| Capa do Mapa dos 13 Fundamentos (PDF) | 600 | 48pt |
| Capa do Programa O Guardiao 30 Dias (PDF) | 600 | 48pt |
| Onboarding do app — frases de ancora grandes | 600 Italic | Seguir tokens do design system |
| Slide de abertura em apresentacoes | 400 Italic | 48–64px |

**Nao usar Cormorant em:**
- Thumbnails de TikTok (a serifa se perde em resolucao reduzida da grade)
- Texto sobreimpresso em video (Oswald tem muito mais impacto)
- Corpo de texto em PDFs (reservar para destaques e titulos)

---

### 3. Corpo — Texto Corrido

**Inter**
- Categoria: Sem serifa geometrica, alta legibilidade em qualquer tamanho
- Pesos: Regular (400), Medium (500), Semi-Bold (600)
- Uso principal: **400** para corpo, **600** para subtitulos
- Download: Google Fonts — gratuita
- No Canva: buscar "Inter"
- No CapCut: buscar "Inter"; alternativa se indisponivel: DM Sans

**Quando usar Inter:**

| Situacao | Peso | Tamanho orientativo |
|---|---|---|
| Corpo de texto em PDFs (protocolos, guias, checklists) | 400 | 11–12pt |
| Subtitulos e secoes em PDF | 600 | 14–16pt |
| Instrucoes de protocolo em carrossel (slides internos) | 400 | 14–16px |
| Texto em emails de nurture e onboarding | 400 | 16px (padrao de email) |
| Labels e metadados em qualquer peca | 400 ou 500 | 10–12pt/px |

---

## Tabela de Decisao Rapida

| Situacao | Fonte | Peso |
|---|---|---|
| Thumbnail TikTok / YouTube | Oswald | Bold 700 |
| Capa de PDF — protocolo de crise ou recaida | Oswald | Bold 700 |
| Capa de PDF — programa de 30 dias ou fundamentos | Cormorant Garamond | 600 |
| Frase de ancora em carrossel ou PDF | Cormorant Garamond | 400 Italic |
| Texto corrido em PDF | Inter | 400 |
| Subtitulo ou secao em PDF | Inter | 600 |
| Legenda/caption em CapCut | Oswald | Bold 700 |
| Texto sobreimpresso em video (hook) | Oswald | Bold 700 |
| Stories — texto de impacto | Oswald | Bold 700 |
| Stories — texto de apoio | Inter | 400 |
| Email — corpo | Inter | 400 |
| Carrossel — slide de capa | Oswald ou Cormorant | Conforme tom do conteudo |
| Carrossel — slides internos | Inter | 400 |

---

## Tamanhos de Referencia por Formato

### Thumbnail (1280x720px)
- Headline: Oswald Bold, 80–120px
- Subtitulo: Oswald Regular, 40–60px
- Maximo 2 linhas de texto

### Capa de PDF A4 (595x842pt equivalente)
- Titulo principal: Oswald Bold 48–64pt OU Cormorant 600 48pt
- Subtitulo: Inter 600, 20–24pt
- Corpo do documento: Inter 400, 11–12pt
- Citacao interna: Cormorant 400 Italic, 14–16pt

### Carrossel Quadrado (1080x1080px)
- Numero do slide / pilar: Oswald Bold, 16–20px
- Frase de ancora (slide destaque): Cormorant Garamond, 36–48px
- Texto de apoio: Inter 400, 14–16px

### Stories (1080x1920px)
- Texto de impacto: Oswald Bold, 60–80px
- Texto de apoio: Inter 400, 28–32px

### Video — Legenda no CapCut
- Fonte: Oswald Bold (ou equivalente)
- Tamanho: Grande o suficiente para leitura sem zoom em preview de celular
- Cor: Branco `#E8E6E2` padrao; palavra de destaque em Ouro `#C8A84B`

---

## Alternativas por Ferramenta

| Fonte preferida | Se nao disponivel no Canva | Se nao disponivel no CapCut |
|---|---|---|
| Oswald Bold | Barlow Condensed Black | Bebas Neue |
| Cormorant Garamond | EB Garamond | (evitar em video) |
| Inter | DM Sans ou Manrope | DM Sans |

---

## O Que Nao Usar

- Fontes default genericas sem identidade: Arial, Helvetica sozinhas, Times New Roman
- Mais de 2 familias tipograficas em uma mesma peca
- Fontes decorativas, de script ou cursivas — incompativeis com tom noir e serio
- Qualquer fonte com personalidade infantil, leviana ou excessivamente arredondada
- Fontes diferentes entre pecas do mesmo produto — a tipografia e ancora visual da marca

---

> Ver tambem: `/marca/assets/paleta.md` — cores a combinar com a tipografia.
> Ver tambem: `/marca/diretrizes-video.md` — especificacao de texto em video.
> Ver tambem: `/app/04-design-system.md` — tipografia do aplicativo (Cormorant Garamond, General Sans, JetBrains Mono).

*Atualizado em: Junho 2026*
