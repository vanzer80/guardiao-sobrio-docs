# Logo e Simbolo do Escudo — O Guardiao Sobrio
# Especificacao para Criacao e Diretrizes de Uso

> Status atual: Logo ainda nao criado. Este arquivo e a spec para contratacao de designer e a fonte de verdade quando o logo estiver pronto.
> Atualizado em: Junho 2026

---

## Status de Criacao

| Item | Status |
|---|---|
| Simbolo definido conceitualmente (o Escudo) | ✅ Definido |
| Estilo visual definido (geometrico, minimalista) | ✅ Definido |
| Paleta do logo definida | ✅ Definida (ver abaixo) |
| Logo criado por designer | ⏳ Pendente — ver D10 no ROADMAP.md |
| SVGs adicionados em `/marca/assets/` | ⏳ Aguardando criacao |
| Kit completo aprovado pelo criador | ⏳ Aguardando criacao |

---

## Versoes Obrigatorias

| Versao | Composicao | Uso Principal |
|---|---|---|
| **Logo Principal** | Escudo + nome "O Guardiao Sobrio" empilhados ou lado a lado | Site, cabecalho de email, materiais formais, bio expandida |
| **Simbolo Isolado** | Somente o escudo, sem texto | Favicon, icone de app, thumbnails, foto de perfil, carimbos |
| **Logo Horizontal** | Escudo + nome lado a lado em linha | Banners, rodapes de PDFs, assinatura de email |
| **Logo Branco** | Versao em branco sobre fundo escuro | Todos os materiais no modo noir (padrao) |
| **Logo Preto** | Versao em preto sobre fundo claro | Documentos impressos, modo acolhimento, apresentacoes em fundo claro |
| **Logo Ouro** | Versao em ouro `#C8A84B` sobre fundo escuro | Pecas premium, capas de produto premium, momentos de celebracao |

---

## Formatos de Entrega Obrigatorios

Ao contratar designer ou gerar com IA, solicitar todos os formatos abaixo:

| Formato | Resolucao / Especificacao | Uso |
|---|---|---|
| SVG | Vetor — sem restricao de escala | Fonte principal para todo uso digital e impresso |
| PNG fundo transparente | Minimo 2000x2000px (simbolo) | Sobreposicao em thumbnails, videos, capas |
| PNG fundo escuro (`#0E0D0C`) | 2000x2000px | Uso imediato sem precisar editar fundo |
| PNG fundo claro (`#F5F3EF`) | 2000x2000px | Modo acolhimento e documentos |
| PNG 512x512px | Quadrado perfeito | Icone de app mobile |
| PNG 400x400px | Quadrado perfeito | Foto de perfil TikTok / Instagram |
| Favicon ICO ou PNG 32x32px | Muito pequeno — testar legibilidade | Site |

---

## Especificacao do Simbolo

### Conceito Central

O Escudo representa protecao, perimetro e identidade sobria. Guarda — nao ataca. Solidez — nao agressividade.

### Estilo Visual

- **Geometrico e minimalista** — sem ornamentos, sem sombras internas, sem detalhes medievais
- **Linhas limpas e definidas** — bordas precisas, sem degrades, sem efeitos de brilho
- **Forma classica simplificada** — topo reto ou levemente arredondado, base em ogiva ou ponta suave
- **Sem texto interno** — o simbolo deve funcionar sozinho, sem letras dentro do escudo
- **Opcional:** iniciais "GS" estilizadas como elemento grafico geometrico dentro do escudo — avaliar com o designer

### Referencia de Estilo (O Que Nos Aproximamos)

- Logos de seguranca digital modernos (clean, austero, funcional)
- Emblemas de times de futebol europeus em versoes minimalistas
- Icones de apps de seguranca (shield icons modernos, sem glamour)

### O Que NAO Queremos

- Escudo com detalhes medievais, florais ou heraldicos
- Dragoes, leoes ou outros elementos tradicionais de heraldica
- Sombras 3D, gradientes ou efeitos de brilho excessivos
- Qualquer referencia a policia, militar ou violencia
- Estilo cartoon, arredondado demais ou infantilizado
- Texto "SÓBRIO" ou similar dentro do simbolo

---

## Paleta do Logo

| Situacao | Cor do logo | Fundo |
|---|---|---|
| Padrao (uso mais comum) | Branco `#E8E6E2` | Escuro `#0E0D0C` |
| Versao premium / destaque | Ouro `#C8A84B` | Escuro `#0E0D0C` |
| Modo acolhimento / claro | Preto `#1A1917` | Claro `#F5F3EF` |
| Monocromatico (impressao) | Preto `#0E0D0C` | Branco |

---

## Regras de Uso — Ativas Quando o Logo Estiver Criado

### Espaco Minimo (Area de Respiro)

O logo precisa de espaco livre ao redor equivalente a altura da letra "G" de "Guardiao". Nenhum elemento — texto, imagem, borda — pode invadir essa area.

### Tamanho Minimo

| Uso | Tamanho minimo |
|---|---|
| Digital — logo completo | 120px de largura |
| Digital — simbolo isolado | 32px de largura |
| Impressao — logo completo | 3cm de largura |
| Impressao — simbolo isolado | 1cm de largura |

Abaixo desses tamanhos, usar sempre o simbolo isolado — nunca o logo completo em escala muito pequena.

### Proporcao

- Nunca distorcer (nao esticar nem comprimir separadamente em largura e altura)
- Sempre manter a proporcao original do arquivo SVG
- Ao redimensionar: segurar Shift no Canva para manter proporcao

### Fundos Permitidos

- Fundo escuro (proximo a `#0E0D0C`) com logo branco ou ouro — preferencial
- Fundo claro (`#F5F3EF`) com logo preto — modo acolhimento
- Foto com area escura definida — logo branco posicionado sobre a area escura

### Fundos Proibidos

- Fotos com variacao intensa de luz (logo se perde ou fica ilegivel)
- Fundos coloridos fora da paleta da marca
- Fundos em tom medio (cinzas 40-60%) que reduzam contraste

### Nunca Fazer

- Aplicar degrade ou efeitos de sombra nao especificados aqui
- Rotacionar o logo
- Aplicar filtros de transparencia ao logo completo
- Redesenhar ou reinterpretar o escudo por conta propria
- Combinar o logo com outros logotipos sem alinhamento aprovado
- Usar prints de tela de baixa qualidade em lugar dos arquivos originais

---

## Nomes de Arquivo Esperados (Apos Criacao)

Quando o logo estiver criado, salvar em `/marca/assets/` com estes nomes exatos:

```
/marca/assets/
  logo-principal.svg          # Escudo + nome — versao padrao branca
  logo-principal-ouro.svg     # Escudo + nome — versao ouro
  logo-principal-preto.svg    # Escudo + nome — versao preta para fundo claro
  logo-simbolo.svg            # Somente o escudo, sem texto
  logo-simbolo-branco.svg     # Escudo branco para sobreposicao
  logo-simbolo-ouro.svg       # Escudo em ouro
  logo-horizontal.svg         # Logo em versao horizontal
  logo-simbolo-512.png        # PNG 512x512 para icone de app
  logo-simbolo-400.png        # PNG 400x400 para foto de perfil
```

---

## Atualizacao Deste Arquivo

Quando o logo for criado:
1. Adicionar os arquivos SVG e PNG em `/marca/assets/`
2. Atualizar a tabela "Status de Criacao" acima
3. Preencher os nomes de arquivo na secao "Nomes de Arquivo Esperados"
4. Registrar conclusao no ROADMAP.md — marcar D10 como concluido e iniciar D11

---

> Ver tambem: `/marca/assets/paleta.md` — cores exatas para o logo.
> Ver tambem: `/marca/assets/tipografia.md` — tipografia para uso junto ao logo.
> Ver tambem: `/marca/tom-visual-por-produto.md` — contextos de uso por produto.
> Ver tambem: ROADMAP.md — D10 (criar logo) e D11 (publicar SVGs e kit de mockups).

*Atualizado em: Junho 2026*
