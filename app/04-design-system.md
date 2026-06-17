# Design System
# App: O Guardiao Sobrio

> Versao: 1.0 — Junho 2026

---

## 1. Conceito Visual

**Estilo central:** Noir Realista

O Guardiao Sobrio vive na escuridao das madrugadas e nos finais de tarde dificeis. A estetica noir nao e decoracao — e a traducao visual da honestidade brutal da sobriedade. Nao tem filtro cheerful, nao tem paleta pasteis de bem-estar.

Mas o noir e modulado:
- **Noir pesado:** para momentos de choque de realidade, crise, recaida, confronto com a negacao
- **Noir suavizado:** para acolhimento, primeiros passos, familiar, comunidade

---

## 2. Paleta de Cores

### Paleta Principal (Modo Escuro — Padrao)

| Token | Hex | Uso |
|---|---|---|
| `--color-bg` | `#0e0d0c` | Background principal |
| `--color-surface` | `#141312` | Cards, modais |
| `--color-surface-2` | `#1a1917` | Superficies secundarias |
| `--color-surface-offset` | `#211f1d` | Inputs, itens de lista |
| `--color-border` | `rgba(255,255,255,0.08)` | Bordas alpha-blended |
| `--color-text` | `#e8e6e2` | Texto principal |
| `--color-text-muted` | `#8a8782` | Texto secundario |
| `--color-text-faint` | `#524f4c` | Placeholders, metadata |

### Acento Principal — Ouro Fosco

| Token | Hex | Uso |
|---|---|---|
| `--color-primary` | `#c8a84b` | CTAs, marcos, frases de ancora |
| `--color-primary-hover` | `#b8942f` | Estado hover |
| `--color-primary-highlight` | `rgba(200,168,75,0.12)` | Background de destaque |

### Acento Emergencia — Ambar

| Token | Hex | Uso |
|---|---|---|
| `--color-emergency` | `#e07b2a` | Botao SOS, alertas criticos |
| `--color-emergency-hover` | `#c96520` | Estado hover |

### Paleta Clara (Modo Claro — Opcional)

| Token | Hex | Uso |
|---|---|---|
| `--color-bg` | `#f5f3ef` | Background |
| `--color-surface` | `#f9f8f5` | Cards |
| `--color-text` | `#1a1917` | Texto |
| `--color-primary` | `#8b6914` | Acento (ouro escuro para contraste) |

---

## 3. Tipografia

### Fontes

| Uso | Fonte | Fonte CDN | Peso |
|---|---|---|---|
| **Display** (titulos grandes, macros, frases de ancora) | Cormorant Garamond | Google Fonts | 400, 500, 600 italic |
| **Body** (todo texto funcional, botoes, labels) | General Sans | Fontshare | 400, 500, 600 |
| **Mono** (contadores, numeros, dias) | JetBrains Mono | Google Fonts | 400, 500 |

### Escala (Mobile)

| Token | Tamanho | Uso |
|---|---|---|
| `--text-xs` | 12px | Timestamps, metadata, badges |
| `--text-sm` | 14px | Botoes, labels, nav |
| `--text-base` | 16px | Corpo de texto padrao |
| `--text-lg` | 20px | Subtitulos, cabecalhos de secao |
| `--text-xl` | 24px | Titulos de tela |
| `--text-2xl` | 32px | Contador de dias, macros |
| `--text-hero` | 48px | Frases de ancora, tela de onboarding |

---

## 4. Espacamento

Base 4px. Todos os espacamentos sao multiplos:

```
--space-1: 4px
--space-2: 8px
--space-3: 12px
--space-4: 16px
--space-6: 24px
--space-8: 32px
--space-10: 40px
--space-12: 48px
--space-16: 64px
```

---

## 5. Raio e Sombra

| Token | Valor | Uso |
|---|---|---|
| `--radius-sm` | 6px | Badges, inputs |
| `--radius-md` | 10px | Botoes, cards pequenos |
| `--radius-lg` | 16px | Cards, modais |
| `--radius-xl` | 24px | Bottom sheets |
| `--radius-full` | 9999px | Avatares, botao SOS |

**Sombras** sempre ton-matched para o fundo escuro:
```
--shadow-sm: 0 1px 3px rgba(0,0,0,0.4)
--shadow-md: 0 4px 16px rgba(0,0,0,0.5)
--shadow-lg: 0 12px 40px rgba(0,0,0,0.6)
--shadow-glow: 0 0 24px rgba(200,168,75,0.15)  /* Glow ouro suave para CTAs */
```

---

## 6. Componentes Principais

### Botao Primario
- Fundo: `--color-primary` (ouro fosco)
- Texto: `#0e0d0c` (quase preto para contraste)
- Raio: `--radius-md`
- Altura: 52px (touch target adequado)
- Peso: 600

### Botao SOS
- Flutuante, posicionado no canto inferior direito
- Circulo: 56px de diametro
- Fundo: `--color-emergency`
- Icone: escudo ou raio
- Sombra: `--shadow-lg` + glow ambar
- SEMPRE visivel em todas as telas exceto onboarding e configuracoes

### Card de Checklist
- Fundo: `--color-surface`
- Borda: `--color-border`
- Raio: `--radius-lg`
- Item checked: linha atravessada + icone de check em `--color-primary`
- Micro-animacao ao checar: scale 1 -> 1.05 -> 1 (100ms)

### Contador de Dias
- Fonte: `--font-mono`, peso 500
- Tamanho: `--text-2xl` ou maior
- Cor: `--color-primary`
- Fundo: `--color-surface` com borda sutil

### Tela de Respiracao (Protocolo)
- Circulo SVG animado
- Expand: inspirar (4s), Segurar (4s), Contrair: expirar (6s)
- Cor do circulo: `--color-primary` com opacidade variavel
- Texto instrucional em `--text-lg` General Sans

---

## 7. Animacoes e Micro-interacoes

| Elemento | Animacao | Duracao |
|---|---|---|
| Check do checklist | scale bounce (1 -> 1.08 -> 1) | 200ms |
| Transicao de tela | slide + fade | 250ms |
| Botao SOS | pulse sutil continuo | 2s loop |
| Circulo de respiracao | easeInOut sinusoidal | 4/4/6s |
| Contador de dias | count-up animado no carregamento | 800ms |
| Marco atingido | tela especial com shimmer dourado | 1.5s |
| Completar checklist do dia | confetti discreto (dourado + cinza) | 1.2s |

**Regra de motion:** todas as animacoes respeitam `prefers-reduced-motion`.

---

## 8. Icones

- Biblioteca: **Phosphor Icons** (consistente, estilo robusto, disponivel para React Native)
- Tamanho padrao: 24px para acao, 20px para nav, 16px para inline
- Cor: `--color-text-muted` por padrao, `--color-primary` quando ativo/selecionado

---

## 9. Linguagem Visual por Contexto

| Contexto | Tom visual |
|---|---|
| Onboarding | Noir suavizado: escuro mas com respiro. Frase de ancora em display. |
| Checklist diario | Funcional, limpo. Sem drama. Eficiencia acima de tudo. |
| Protocolo de emergencia | Alto contraste, fontes maiores, instrucoes minimas. Nao e hora de ler. |
| Diario de prompts | Respiro. Levemente mais claro. Campo de texto confortavel. |
| Marco de dias | Teatral. Shimmer dourado. Momento de celebracao discreta. |
| Modulo familiar | Menos noir. Mais acolhedor. Paleta clara opcional para este modulo. |
