# Manual de Marca — O Guardiao Sobrio

## Identidade Central

| Elemento | Definicao |
|---|---|
| **Nome da marca** | Luis Vanzer — O Guardiao Sobrio |
| **Tagline** | Sobriedade nao e abstinencia. E construcao. |
| **Arquetipo** | O Guardiao / O Sabio |
| **Missao** | Ser referencia brasileira em sobriedade adulta com foco nos primeiros 30 dias e no apoio a familiares, usando verdade, estrategia e protecao emocional como pilares. |
| **Simbolo** | O Escudo (protecao, perimetro, identidade) |

---

## Metodologia O Guardiao Sobrio

O metodo se sustenta em tres pilares praticos, seculares e complementares. Nao e religioso. Nao e coach. E baseado em estoicismo, mindfulness, psicoeducacao sobre vicio e experiencia pessoal.

### ESPELHO — Ver a verdade sem anestesia

> _Fundamentos associados: Identidade, Consciencia, Emocao, Proposito_

- Sair da negacao: ver o estrago real sem se destruir.
- Nomear o padrao (comportamento, gatilho, emocao) como primeiro ato de poder.
- Referencia estoica: distinguir o que esta no seu controle (a escolha de hoje) do que nao esta (o passado, o julgamento alheio).
- Aplicado especialmente nos **primeiros 30 dias**, quando a negacao ainda e a defesa mais ativa.

### TATICA — Micro-acoes para atravessar hoje

> _Fundamentos associados: Gatilhos, Corpo, Ambiente, Consistencia, Ciclos, Repeticao_

- Acoes executaveis em 5 a 10 minutos, sem heroismo.
- Respiracao consciente como intervencao imediata (mindfulness): inspirar 4s, segurar 4s, expirar 6s.
- Mapa de gatilhos por horario e situacao (foco no final da tarde e noite).
- Design de ambiente antes de confiar na forca de vontade.
- Microhabitos de consistencia: cada dia sobrio e prova concreta, nao promessa.

### ESCUDO — Proteger ambiente e relacoes

> _Fundamentos associados: Perimetro, Comunidade, Expressao, Familia_

- Fronteiras claras com alcool, eventos de risco, pessoas que nao respeitam o processo.
- A familia como parte ativa do sistema de protecao — nao como expectadora ou vitima passiva.
- Busca de suporte profissional (psiquiatra, psicologo) e grupos de apoio (Al-Anon, Amor-Exigente).
- Expressao emocional como protecao de relacoes: quem nao fala, explode.

---

## Voz e Tom

- Direto, sem exagero emocional
- Honesto, vulneravel com firmeza (nao vitimismo)
- Linguagem de quem ainda esta no processo — nao de quem ja chegou do outro lado
- Sem jargao de coach motivacional
- Sem drama, sem performance de dor
- O criador fala **a partir da trincheira**, ainda em tratamento (psiquiatra, terapia individual, terapia de casal) — a autoridade vem da honestidade, nao da perfeicao
- A marca **sempre reforca o papel de profissionais** (psiquiatras, psicologos, medicos) e grupos de apoio — nunca os substitui

**Falar ASSIM:**

> "Sobriedade nao e uma conquista. E uma identidade que voce escolhe todo dia."

**NAO falar assim:**

> "Voce CONSEGUE! Acredite em voce! A vida e linda!"

---

## Estetica Visual

| Elemento | Especificacao |
|---|---|
| **Paleta principal** | Preto, cinza chumbo, dourado opaco |
| **Tipografia** | Robusta, sem serifa, alto impacto visual |
| **Estilo base** | Noir Realista — escuro, contraste, sem filtros cheerful |
| **Noir (quando usar)** | Pecas de choque de realidade: recaida, consequencias, negacao, caos. Tom mais pesado, sombrio, direto. |
| **Visual limpo (quando usar)** | Conteudos de acolhimento, familia, primeiros passos, protocolo de crise. Tom mais claro, respiro visual, menos contraste. |
| **Simbolo** | Escudo — protecao, perimetro, identidade sobria |
| **Foto de perfil** | Fundo escuro, rosto visivel, expressao seria e firme |

> Especificacao tecnica completa — cores em HEX/RGB: `/marca/assets/paleta.md`
> Especificacao tecnica completa — fontes por contexto de uso: `/marca/assets/tipografia.md`
> Especificacao do simbolo e logo: `/marca/assets/logo-guidelines.md`

---

## Interface Digital — App

O app O Guardiao Sobrio e uma extensao direta dos tres pilares do metodo. Os principios de marca definidos neste manual — tom noir, ouro como ancora, escudo como simbolo — se traduzem em interface digital conforme documentado em `/app/04-design-system.md`.

Resumo das decisoes visuais do app:

| Elemento | Decisao | Referencia |
|---|---|---|
| Paleta de cores (tokens CSS) | Noir escuro padrao; modo claro opcional para modulo de familiares | `/app/04-design-system.md` — secao 2 |
| Tipografia do app | Cormorant Garamond (display/ancora), General Sans (corpo funcional), JetBrains Mono (contadores) | `/app/04-design-system.md` — secao 3 |
| Icone do app | Simbolo do escudo — 512x512px PNG; ainda nao criado (ver D10 no ROADMAP.md) | `/marca/assets/logo-guidelines.md` |
| Botao SOS | Sempre visivel; fundo emergencia `#E07B2A`; icone de escudo ou raio | `/app/04-design-system.md` — secao 6 |
| Tom visual por tela | Noir pesado para protocolo de emergencia; noir suavizado para checklist; limpo para modulo familiar | `/app/04-design-system.md` — secao 9 |

> Qualquer decisao de UI que nao esteja em `/app/04-design-system.md` deve ser validada contra os principios deste manual antes de implementar.

---

## Ancora Visual — O Que Nao Muda Entre os Dois Modos

O Guardiao Sobrio opera em dois modos visuais: **Noir** (choque, realidade, crise) e **Limpo** (acolhimento, familia, onboarding). Para que os dois modos sejam reconhecidos como a mesma marca ao scroll rapido no TikTok ou em qualquer plataforma, tres elementos sao obrigatorios em todos os modos:

| Ancora | Elemento | Como aplicar |
|---|---|---|
| **1. Cor de destaque** | Ouro Fosco — sempre presente | Modo Noir: `#C8A84B`. Modo Limpo: `#8B6914` (ouro com contraste sobre fundo claro). A cor muda de HEX; o ouro nao some. |
| **2. Simbolo ou nome da marca** | Escudo (quando logo existir) ou nome "O Guardiao Sobrio" | Presente em toda peca — thumbnail, capa de produto, PDF, story. Ate o logo estar criado: nome em Oswald Bold no canto da peca. |
| **3. Tipografia de headline** | Oswald Bold para impacto; Cormorant Garamond para frases de ancora e programas | Nao variar a familia tipografica entre os dois modos — a fonte e identidade tao importante quanto a cor. |

**Regra pratica:** Fundo, contraste e nivel de tensao visual podem variar entre os modos. As tres ancoras acima nao variam. Quem assiste um video de crise (Noir Pesado) e depois ve um post de familia (Visual Limpo) precisa reconhecer a mesma marca antes de ler qualquer palavra.

> Ver especificacao de cores: `/marca/assets/paleta.md`
> Ver especificacao de tipografia: `/marca/assets/tipografia.md`
> Ver especificacao de logo e simbolo: `/marca/assets/logo-guidelines.md`
> Ver aplicacao por produto: `/marca/tom-visual-por-produto.md`

---

## Sistema de Cores por Pilar

Cada pilar tem uma cor de referencia para uso em materiais visuais (site, PDFs, app, carrosseis). As cores sao complementares a paleta noir principal — nao a substituem. O fundo continua escuro; a cor do pilar e usada em titulos, bordas, icones e destaques.

| Pilar | Cor | Hex | Uso |
|---|---|---|---|
| **ESPELHO** | Prata Espelho | `#d4d0ca` | Titulos e destaques em conteudo de identidade, consciencia e verdade |
| **TATICA** | Ouro Fosco | `#c8a84b` | CTAs, destaques em conteudo de acao, protocolo e rotina |
| **ESCUDO** | Aco Ardosia | `#6b8fa3` | Marcadores e bordas em conteudo de familia, perimetro e protecao |
| **Marca Geral** | Cinza Chumbo | `#3a3835` | Base de superficies e backgrounds complementares |

**Aplicacao pratica:**
- Em PDFs: rodape e cabecalho da cor do pilar correspondente ao conteudo
- Em carrosseis: borda ou fundo de slide na cor do pilar do video
- No app: icones de navegacao e marcadores de progresso seguem o sistema de cores por pilar (ver `/app/04-design-system.md`)
- Em thumbnails: usar cor do pilar como elemento de destaque no texto ou borda

---

## Frases de Ancora da Marca

| Tema | Frase |
|---|---|
| Identidade | "Nao estou tentando parar. Estou decidindo quem sou." |
| Consciencia | "Nomear o monstro e o primeiro passo para nao ser devorado por ele." |
| Perimetro | "Meu 'nao' respeita meu 'sim'." |
| Proposito / Familia | "Nao estou parando por mim. Estou construindo por nos." |
| Consistencia | "Motivacao e consequencia — nao combustivel." |
| Expressao | "Sentir e sagrado; expressar e libertador." |
| Repeticao | "A identidade sobria nasce da repeticao, nao da intensidade." |
| Ciclos / Descanso | "Descansar nao e desistir. E estrategia." |
| Janela de 24h | "Hoje e o unico dia que voce precisa ganhar." |
| Marca geral | "Sobriedade nao e abstinencia. E construcao." |

---

## O Que a Marca NAO E

- Nao substitui psiquiatras, psicologos ou medicos
- Nao promete cura nem resultados milagrosos
- Nao se vincula a nenhuma religiao especifica
- Nao e coach motivacional
- Nao julga quem recai
- Nao usa linguagem de vitima
- Nao se coloca como "heroi que ja resolveu tudo" — o criador esta no processo

---

## Como o Criador Comunica Seus Proprios Limites

Luis esta em processo de sobriedade — isso e parte da proposta de valor, nao uma fragilidade. Mas precisa ser comunicado com precisao para nao gerar expectativas incorretas no publico e nos familiares.

### O que comunicar com clareza

- Luis e um criador de conteudo que compartilha sua propria experiencia — nao um terapeuta, conselheiro clinico ou especialista em dependencia quimica
- Estar em tratamento ativo (psiquiatra, terapia individual, terapia de casal) e parte da credibilidade da marca, nao uma contradicao
- A marca nao oferece atendimento de crise 1:1 — para isso ha profissionais de saude e linhas de apoio como o CVV (188)
- O metodo O Guardiao Sobrio e baseado em experiencia pessoal, estoicismo e psicoeducacao — nao substitui diagnostico ou prescricao medica

### Como dizer em conteudo (modelos de script)

> "Eu nao sou psicologo. Sou alguem que passou por isso e escolheu documentar o processo em tempo real."

> "O que funciona para mim pode nao funcionar para voce da mesma forma — leve para o seu psicologo ou psiquiatra e veja o que faz sentido para o seu caso."

> "Se voce esta em crise aguda agora, o lugar certo nao e meu perfil. E o 188 ou o seu profissional de saude. Depois que voce estiver seguro, volte aqui."

> "Eu ainda estou em tratamento. Isso e o que me da autoridade para falar sobre isso — nao um certificado."

### Frequencia recomendada

- **Em todo produto pago:** disclaimer escrito na pagina de vendas e dentro do produto (primeira pagina ou slide inicial)
- **Em conteudo de crise ou protocolo:** mencionar no video ou na legenda do TikTok
- **Na bio:** manter tagline que comunica posicionamento claro (nao e coach, nao e medico, esta no processo)
- **Em emails de produto:** incluir linha de disclaimer no rodape de toda comunicacao comercial

---

Atualizado em: Junho 2026 — frases de ancora revisadas (D2: troca de "Um dia de cada vez" por frase secular propria); sistema de cores por pilar e comunicacao de limites do criador adicionados (Analise Estrategica jun/2026)
