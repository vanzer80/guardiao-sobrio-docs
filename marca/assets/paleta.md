# Paleta de Cores — O Guardiao Sobrio
# Uso em Canva, CapCut, PDFs e Thumbnails

> Fonte de verdade para uso de cores fora do ambiente de codigo.
> Para tokens CSS do app, ver `/app/04-design-system.md`.
> Atualizado em: Junho 2026

---

## Como Adicionar no Canva

1. Abrir qualquer design
2. Clicar em qualquer elemento de cor
3. Selecionar "Cores da marca" > "Adicionar nova cor"
4. Digitar o codigo HEX exato abaixo
5. Salvar com o nome do token (ex: "Fundo Principal")

Repetir para cada cor da paleta. Depois disso, as cores ficam salvas e acessiveis em todos os designs da conta.

---

## Paleta Principal — Modo Noir (Padrao)

Fundo e texto de todos os materiais no modo noir pesado e suavizado.

| Token | HEX | RGB | Uso |
|---|---|---|---|
| **Fundo Principal** | `#0E0D0C` | 14, 13, 12 | Fundo de slides, thumbnails, capas de produto, modo noir pesado |
| **Fundo Secundario** | `#141312` | 20, 19, 18 | Caixas internas, rodapes, modo noir suavizado |
| **Fundo Terciario** | `#1A1917` | 26, 25, 23 | Camadas sobre fundo principal, blocos de citacao |
| **Cinza Chumbo** | `#3A3835` | 58, 56, 53 | Separadores, backgrounds intermediarios, bordas |
| **Texto Principal** | `#E8E6E2` | 232, 230, 226 | Todo texto legivel: titulos, corpo, legendas sobre escuro |
| **Texto Secundario** | `#8A8782` | 138, 135, 130 | Dados de suporte, creditos, metadados, rodapes |
| **Texto Desbotado** | `#524F4C` | 82, 79, 76 | Placeholders, informacoes complementares de rodape |

---

## Acento Principal — Ouro Fosco

A ancora visual da marca. Presente em ambos os modos (noir e limpo). Nunca substituir por outro ouro "parecido" — a consistencia do acento e o que une todas as pecas.

| Token | HEX | RGB | Uso |
|---|---|---|---|
| **Ouro Fosco** | `#C8A84B` | 200, 168, 75 | CTAs, bordas de destaque, frases de ancora, icones ativos — uso padrao sobre fundos escuros |
| **Ouro Escuro** | `#B8942F` | 184, 148, 47 | Variacao para bordas sobre fundos muito escuros onde o ouro padrao perde contraste |
| **Ouro Claro** | `#8B6914` | 139, 105, 20 | Acento dourado no modo limpo — garante contraste sobre fundo `#F5F3EF` |

---

## Cores por Pilar

Usadas em titulos, bordas e icones para identificar o pilar do conteudo. Sempre aplicadas sobre fundo escuro.

| Pilar | Nome | HEX | RGB | Uso |
|---|---|---|---|---|
| **ESPELHO** | Prata Espelho | `#D4D0CA` | 212, 208, 202 | Conteudo de identidade, consciencia, verdade |
| **TATICA** | Ouro Fosco | `#C8A84B` | 200, 168, 75 | Conteudo de acao, protocolo, rotina (coincide com o acento da marca) |
| **ESCUDO** | Aco Ardosia | `#6B8FA3` | 107, 143, 163 | Conteudo de familia, perimetro, protecao |

Aplicacao pratica:
- PDFs: rodape e cabecalho na cor do pilar correspondente
- Carrosseis: borda ou fundo do slide na cor do pilar
- Thumbnails: cor do pilar como destaque no texto ou borda
- App: icones de navegacao e marcadores de progresso (ver `/app/04-design-system.md`)

---

## Cor de Emergencia

Reservada para sinalizacao critica. Nunca usar como elemento decorativo ou de marca.

| Token | HEX | RGB | Uso |
|---|---|---|---|
| **Emergencia** | `#E07B2A` | 224, 123, 42 | Botao SOS no app, avisos de crise, alertas de seguranca |

---

## Paleta Clara — Modo Acolhimento

Usada em conteudo de familia, onboarding, guias de familiar e materiais onde o publico precisa de respiro visual. O ouro permanece como ancora — apenas muda o HEX para manter contraste.

| Token | HEX | RGB | Uso |
|---|---|---|---|
| **Fundo Limpo** | `#F5F3EF` | 245, 243, 239 | Fundo de slides de acolhimento, PDFs do Guia do Familiar, modulo familiar do app |
| **Superficie Clara** | `#F9F8F5` | 249, 248, 245 | Caixas e cartoes sobre fundo claro |
| **Texto em Claro** | `#1A1917` | 26, 25, 23 | Texto sobre fundo claro — alto contraste |
| **Ouro Claro** | `#8B6914` | 139, 105, 20 | Acento dourado com contraste sobre fundo `#F5F3EF` |

---

## Hierarquia de Uso por Modo

```
MODO NOIR PESADO (crise, recaida, choque de realidade)
  Fundo:    #0E0D0C
  Texto:    #E8E6E2
  Destaque: #C8A84B (ouro fosco)
  Cor pilar: conforme contexto

MODO NOIR SUAVIZADO (aprendizado, metodologia, retomada)
  Fundo:    #141312 ou #1A1917
  Texto:    #E8E6E2
  Destaque: #C8A84B (ouro fosco)
  Cor pilar: conforme contexto

MODO LIMPO / ACOLHIMENTO (familia, onboarding, comunidade)
  Fundo:    #F5F3EF
  Texto:    #1A1917
  Destaque: #8B6914 (ouro claro — ancora da marca adaptada)
```

---

## Contraste e Acessibilidade

Combinacoes validadas para uso seguro (minimo WCAG AA = 4.5:1 para texto; 3:1 para elementos grandes):

| Combinacao | Contraste | Status |
|---|---|---|
| `#E8E6E2` (texto) sobre `#0E0D0C` (fundo) | ~16:1 | Excelente — texto corrido |
| `#C8A84B` (ouro) sobre `#0E0D0C` (fundo) | ~7:1 | Excelente — CTAs e destaques |
| `#1A1917` (texto) sobre `#F5F3EF` (fundo) | ~15:1 | Excelente — modo limpo |
| `#8B6914` (ouro claro) sobre `#F5F3EF` (fundo) | ~4.6:1 | Aceito — acento no modo limpo |
| `#8A8782` (texto secundario) sobre `#0E0D0C` (fundo) | ~4.2:1 | Aceito — texto secundario (nao usar para texto critico) |
| `#6B8FA3` (ardosia) sobre `#0E0D0C` (fundo) | ~4.8:1 | Aceito — cor do pilar ESCUDO |
| `#D4D0CA` (prata) sobre `#0E0D0C` (fundo) | ~14:1 | Excelente — cor do pilar ESPELHO |

---

> Ver tambem: `/marca/assets/tipografia.md` — fontes por contexto de uso.
> Ver tambem: `/marca/tom-visual-por-produto.md` — qual modo usar em cada produto.
> Ver tambem: `/app/04-design-system.md` — tokens CSS do aplicativo.

*Atualizado em: Junho 2026*
