# Infoprodutos — O Guardião Sóbrio

> **Handoff document** — fonte de verdade do estado atual dos infoprodutos, como regenerar os PDFs e o que precisa acontecer para o funil entrar no ar.
> Atualizado em: junho/2026.

Esta pasta é o **funil de captação** da marca: dois lead magnets gratuitos que alimentam a lista de email e um ebook pago que monetiza a lista já formada. O topo de funil é o TikTok (@luisvanzer) — os roteiros prontos estão na seção abaixo.

---

## Inventário de arquivos

| Arquivo | Produto | Modo visual | Público | Status |
|---|---|---|---|---|
| `lead-magnet-escudo-da-familia.md` | O Escudo da Família (PDF gratuito) | Acolhimento `#F5F3EF` | Familiar / cônjuge | ✅ Rascunho pronto |
| `o-escudo-da-familia.html` | Versão diagramada HTML | — | — | ✅ Diagramado |
| `o-escudo-da-familia.pdf` | PDF final entregável | — | — | ✅ Gerado |
| `lead-magnet-primeiras-72h.md` | As Primeiras 72 Horas (PDF gratuito) | Noir `#0E0D0C` | Dependente em crise | ✅ Rascunho pronto |
| `as-primeiras-72-horas.html` | Versão diagramada HTML | — | — | ✅ Diagramado |
| `as-primeiras-72-horas.pdf` | PDF final entregável | — | — | ✅ Gerado |
| `ebook-13-fundamentos.md` | O Método: 13 Fundamentos (ebook pago) | Capa Noir / miolo por pilar | Ambos | ✅ Rascunho pronto |
| `o-metodo-13-fundamentos.html` | Versão diagramada HTML | — | — | ✅ Diagramado |
| `o-metodo-13-fundamentos.pdf` | PDF final entregável | — | — | ✅ Gerado |
| `paginas-de-vendas.md` | Copy: 2 páginas de captura + página de vendas + sequência de 5 emails | — | — | ✅ Pronto para implementar |
| `luis_acolhimento.png` | Retrato do Luis — fundo creme claro | Acolhimento | — | ✅ Aprovado |
| `luis_noir.png` | Retrato do Luis — fundo escuro cinematográfico | Noir | — | ✅ Aprovado |
| `gerar-pdf.bat` | Script HTML → PDF (Escudo da Família) | — | — | ✅ Funcional |
| `gerar-72h.bat` | Script HTML → PDF (Primeiras 72h) | — | — | ✅ Funcional |
| `gerar-metodo.bat` | Script HTML → PDF (O Método) | — | — | ✅ Funcional |
| `gerar-todos.bat` | Script HTML → PDF (todos os três em sequência) | — | — | ✅ Funcional |

---

## Como regenerar os PDFs

### Modo automático (Windows — `.bat`)

```
# Abrir a pasta no Explorador de Arquivos e dar duplo clique em:
gerar-pdf.bat      → regera o-escudo-da-familia.pdf
gerar-72h.bat      → regera as-primeiras-72-horas.pdf
gerar-metodo.bat   → regera o-metodo-13-fundamentos.pdf
gerar-todos.bat    → regera os três PDFs em sequência
```

> **Pré-requisito:** o wkhtmltopdf ou Puppeteer precisa estar instalado (conforme configurado nos .bat). Se o script falhar, use o modo manual abaixo.

### Modo manual (Chrome)

1. Garantir que `luis_acolhimento.png` e `luis_noir.png` estão na **mesma pasta** que o `.html`.
2. Abrir o `.html` no **Google Chrome**.
3. `Ctrl + P` → Impressora: **Salvar como PDF**.
4. Configurações:
   - Papel: **A4**
   - Margens: **Nenhuma** (ou Padrão — o CSS já define as margens via `@page`)
   - ☑ **Gráficos de fundo** (obrigatório — os fundos coloridos somem sem isso)
   - ☐ Cabeçalhos e rodapés (desmarcar)
5. Salvar na mesma pasta com o nome correspondente.

---

## Regras de marca e compliance aplicadas

Todas as regras abaixo já estão implementadas nos três produtos. Ao editar qualquer arquivo, mantenha:

### Compliance obrigatório
- **Disclaimer na 1ª página** de cada PDF: *"Este material não substitui acompanhamento de psicólogo, psiquiatra ou grupos de apoio."*
- **Contatos de emergência** em todo produto:
  - CVV **188** (24h, gratuito, anônimo) — crise emocional / ideação suicida
  - SAMU **192** — emergência médica
  - Ligue **180** — violência doméstica (obrigatório no Escudo da Família)
  - CAPS — saúde mental (buscar unidade mais próxima)

### Posicionamento e tom
- **Secular** — sem menção a Deus, fé, oração, AA, 12 passos.
- **Da trincheira, não do pedestal** — Luis fala como alguém ainda no processo, não como quem "chegou do outro lado".
- **Não julga recaída** — recaída é informação, não fracasso.
- **Sem linguagem de coach motivacional** — sem "herói", "vencedor", "guerreiro", "cura do vício".

### Funil e CTAs (decisão D12 — jun/2026)
- Lead magnets → CTA para **trial gratuito de 5 dias do app** (não para produtos avulsos).
- Ebook pago → posicionado como **referência offline permanente**; app = **uso diário interativo**. Os dois se complementam; a página de vendas do ebook termina com CTA para o app.
- **Não criar CTAs para produtos avulsos descontinuados** (R$ 47/97/197 da era pré-D12).

---

## Sequenciamento de lançamento

A ordem que minimiza risco e tempo:

```
1. Escudo da Família (lead magnet)  → lista feminina 35-54 anos já no TikTok
2. Primeiras 72h (lead magnet)      → lista dependente / início de processo
3. O Método (ebook pago)            → lança com lista já formada (nunca para lista zero)
```

> Dados do TikTok confirmam: 67% da audiência são mulheres 35-54 anos buscando "conviver com alcoólatra". O Escudo da Família é a prioridade nº 1.

---

## Próximos passos para dar andamento (checklist)

### Infraestrutura (bloqueia o push — fazer primeiro)

- [ ] **D4 — Escolher plataforma de email**: MailerLite (mais simples, gratuito até 1.000 contatos) ou Brevo (mais automações, free plan generoso). Subir a sequência de 5 emails de `paginas-de-vendas.md` assim que decidir.
- [ ] **Página de captura no ar**: Beacons.ai (30 min, sem código) ou landing page própria. Textos prontos em `paginas-de-vendas.md` — seções "PÁGINA DE CAPTURA 1" e "PÁGINA DE CAPTURA 2".
- [ ] **Bio do TikTok atualizada**: manter "Espelho · Tática · Escudo" + linha de nicho + link da página de captura. **Não reescrever do zero** — esses conceitos já convertem.

### Ebook pago

- [ ] **Escolher plataforma**: Hotmart ou Kiwify. Ambas têm checkout, afiliados e entrega automática do PDF.
- [ ] **Definir preço final**: sugerido R$ 27–47 para lançamento. Pode subir após primeiras vendas/reviews.
- [ ] **Página de vendas**: texto pronto em `paginas-de-vendas.md` — seção "PÁGINA DE VENDAS — EBOOK". Implementar na plataforma escolhida.

### Conteúdo TikTok (topo de funil)

- [ ] Gravar os roteiros 24–29 (abaixo) que apontam para os PDFs — começar pelo Roteiro 24.
- [ ] CTA padrão: *"Link na bio pra baixar o guia gratuito"* — ativar só depois que a página de captura estiver no ar.

---

## Roteiros de TikTok prontos para gravação

> Derivados diretamente dos PDFs desta pasta. Continuam a numeração do banco @luisvanzer (roteiros 1–23 estão em `estrategia/` e nas sessões de planejamento anteriores).

---

### Roteiro 24 — "Você não causou isso"
- **Pilar:** 1 — A dor de quem convive
- **Lacuna/tema:** culpa do familiar — busca "o que fazer marido alcoólatra", "minha culpa pelo vício dele"
- **Gancho (0-3s):** [texto na tela: "Você não causou isso."] + voz: *"Você não causou isso. Você não pode curar isso. Mas você pode parar de se destruir tentando — e é sobre isso que eu quero falar com você."*
- **Desenvolvimento:** Explique que o vício é padrão neurológico, não escolha moral nem falta de amor. Três consequências práticas: por que as promessas quebram, por que o comportamento muda quando bebe, por que o ciclo se repete. Feche: *"Quando você entende isso, muda a estratégia — você para de tentar convencer e começa a pensar em estrutura."*
- **CTA:** *"Segue pro Escudo da Família — tenho um guia gratuito no link da bio especificamente pra você que está nessa situação. Comenta 'EU' se isso te atingiu."*
- **Formato:** 75-90s 🔊 som em alta
- **Descrição pronta:** `conviver com alcoólatra sem se destruir — por que o vício não é escolha moral e o que isso muda na forma de ajudar. Guia gratuito no link da bio.`
- **Hashtags:** #alcoolismo #familiardealcoolatra #codependencia #sobriedade #dependenciaquimica
- **Por que tende a performar:** desculpabiliza o familiar (maior alívio emocional possível para a audiência) + CTA de comentário de 1 letra + produto direto no CTA

---

### Roteiro 25 — "Cobrir os efeitos não é proteger"
- **Pilar:** 1 — A dor de quem convive
- **Lacuna/tema:** codependência prática — busca "como ajudar alcoólatra", "o que não fazer com marido que bebe"
- **Gancho (0-3s):** [texto: "Você acha que está protegendo ele. Não está."] + voz: *"Existe uma coisa que quase toda esposa de alcoólatra faz achando que está ajudando — e que na verdade protege o vício, não a pessoa."*
- **Desenvolvimento:** Explique a lógica da cobertura (limpar a bagunça, mentir para terceiros, pagar dívidas do comportamento). Por que parece amor mas prolonga o problema. A diferença entre proteção e consequência natural. *"Deixar a pessoa sentir o peso real não é crueldade — é respeito pela capacidade dela de escolher diferente."*
- **CTA:** *"Salva esse vídeo — você vai precisar reler isso mais de uma vez. E segue pro Escudo da Família, tem mais conteúdo assim aqui."*
- **Formato:** 70-80s 🔊 som em alta
- **Descrição pronta:** `o que a esposa do alcoólatra faz achando que ajuda — e que na verdade prolonga o vício. Conteúdo para familiar de dependente químico.`
- **Hashtags:** #familiardealcoolatra #codependencia #alcoolismo #comodeixardebeber #sobriedade
- **Por que tende a performar:** CTA de salvamento explícito + ruptura de crença ("você acha que ajuda mas não ajuda") = padrão de alto compartilhamento comprovado no perfil

---

### Roteiro 26 — "A palavra que ninguém te explicou"
- **Pilar:** 1 — A dor de quem convive
- **Lacuna/tema:** codependência emocional — busca "codependencia emocional" (alta demanda, baixa cobertura no perfil)
- **Gancho (0-3s):** [texto: "Codependência"] + voz: *"Existe uma palavra que explica por que você cancela seus planos, não dorme direito e sua vida entrou em pausa esperando a mudança dele. Essa palavra é codependência — e não é fraqueza."*
- **Desenvolvimento:** O que é codependência em linguagem simples. 3 sinais do dia a dia: você monitora, você cobre, você esqueceu de cuidar de você. *"É o que acontece com pessoas boas em situações impossíveis."* O que começa a mudar quando você nomeia isso.
- **CTA:** *"Comenta 'CHEGA' se você se reconheceu aqui. E segue — tem um guia gratuito no link da bio sobre como sair desse ciclo sem abandonar quem você ama."*
- **Formato:** 75-90s 🔊 som em alta
- **Descrição pronta:** `codependência emocional — o que é, 3 sinais e o que muda quando você nomeia isso. Para quem ama alguém que bebe.`
- **Hashtags:** #codependencia #codependenciaemocional #familiardealcoolatra #alcoolismo #saudemental
- **Por que tende a performar:** "codependência emocional" tem altíssima busca orgânica + CTA de 1 palavra comprovado no perfil ("Chega" já funcionou) + tema com baixa cobertura = primeira posição na busca

---

### Roteiro 27 — "Um limite só vale se você mantiver"
- **Pilar:** 1 — A dor de quem convive
- **Lacuna/tema:** como colocar limites — busca "como falar com marido alcoólatra", "limites com quem bebe"
- **Gancho (0-3s):** [texto: "Você deu o ultimato. Ele bebeu. Você ficou."] + voz: *"Se você já disse 'vou embora se você beber de novo' — e ficou — eu preciso te contar o que aconteceu naquele momento."*
- **Desenvolvimento:** A lógica do limite sem consequência: a pessoa aprende que os limites são negociáveis. Não é manipulação consciente — é aprendizado. Como colocar um limite real: só declare o que você está disposta a manter. Exemplos concretos. *"Um limite que você não mantém ensina que limites não existem."*
- **CTA:** *"Segue pro Escudo da Família — semana que vem tem mais sobre isso. Comenta 'LIMITE' se você já passou por isso."*
- **Formato:** 65-80s 🔊 som em alta
- **Descrição pronta:** `como colocar limites com quem bebe — por que o ultimato sem consequência ensina que limites não existem e o que fazer diferente.`
- **Hashtags:** #familiardealcoolatra #alcoolismo #limitessaudaveis #codependencia #maridoalcoolatra
- **Por que tende a performar:** situação concreta que a audiência viveu → identificação imediata → alto comentário ("passei exatamente por isso")

---

### Roteiro 28 — "Não parei" (história pessoal)
- **Pilar:** 3 — Histórias reais
- **Lacuna/tema:** recaída / "beber socialmente" — busca "recaída no álcool", "voltei a beber depois de parar"
- **Gancho (0-3s):** [texto: "Eu tinha quase 2 anos de sobriedade."] + voz: *"Eu tinha quase dois anos de sobriedade quando decidi testar se conseguia beber socialmente. 'Só um copo. Só nessa comemoração.'"* [pausa de 1s, olhar direto para a câmera]
- **Desenvolvimento:** *"Não parei."* O que aconteceu a seguir. A lição central: para o dependente, não existe beber social — existe o primeiro gole que abre a porta de volta. O que fez recomeçar. O protocolo das primeiras 72h que foi usado.
- **CTA:** *"Comenta quanto tempo você tem de sobriedade — ou quanto quer ter. Segue pro Escudo da Família, tem um protocolo gratuito das primeiras 72h no link da bio."*
- **Formato:** 90-110s — som ambiente suave, câmera próxima, íntimo
- **Descrição pronta:** `recaída depois de quase 2 anos sóbrio — o que aprendi sobre beber socialmente e o que fiz nas primeiras 72 horas para recomeçar.`
- **Hashtags:** #recaida #sobriedade #alcoolismo #parardebeberalcool #primeiros30dias
- **Por que tende a performar:** história pessoal com detalhe concreto ("quase 2 anos") + "Não parei" é o gancho mais forte do perfil em potencial + conecta direto ao lead magnet das 72h

---

### Roteiro 29 — "O impulso passa — se você não o alimentar"
- **Pilar:** 4 — Primeiros passos para a sobriedade
- **Lacuna/tema:** como resistir ao impulso — busca "como resistir à vontade de beber", "fissura álcool o que fazer"
- **Gancho (0-3s):** [texto: "O impulso dura 15 minutos."] + voz: *"O impulso de beber dura em média 15 a 20 minutos se você não o alimentar. Isso não é motivação — é fisiologia. E muda tudo."*
- **Desenvolvimento:** A técnica das 5 etapas (PARE / RESPIRE / CONTATO / MOVIMENTO / ESTRUTURA) em linguagem de vídeo. Cada etapa em 10-15 segundos. Ênfase no RESPIRE com o ritmo 4-4-6. *"Você não está meditando — está mudando o estado químico do seu corpo em menos de 2 minutos."*
- **CTA:** *"Salva esse vídeo — pode ser o mais importante que você vai assistir hoje. E segue, tem o protocolo completo das 72h gratuito no link da bio."*
- **Formato:** 80-95s 🔊 som em alta
- **Descrição pronta:** `como resistir à vontade de beber — o impulso dura 15 minutos e existe um protocolo de 5 etapas para atravessar esse tempo. Guia gratuito no link da bio.`
- **Hashtags:** #parardebeberalcool #sobriedade #fissura #alcoolismo #primeiros30dias
- **Por que tende a performar:** CTA de salvamento explícito + dado concreto (15 minutos) que a pessoa vai querer guardar + conecta direto ao lead magnet das 72h

---

## Guia do colaborador (para quem for implementar o funil)

Se você recebeu acesso a este repositório para montar a infraestrutura de captura:

1. **Conteúdo dos PDFs** está pronto — não reescrever.
2. **Copy das páginas de captura** está em `paginas-de-vendas.md`. Copiar as seções "PÁGINA DE CAPTURA 1 / 2" para a plataforma de landing page.
3. **Sequência de emails (5 emails, dias 0/3/7/14/30)** está na seção "SEQUÊNCIA DE EMAIL" do mesmo arquivo.
4. **Identidade visual** do email: usar o modo Acolhimento (`#F5F3EF`) para emails da lista Família; modo Noir (`#0E0D0C`) para emails da lista Dependente. Fontes: Oswald (títulos), DM Sans (corpo).
5. **Regras que não podem mudar:** disclaimer, CVV 188, posicionamento secular — ver seção "Regras de marca e compliance" acima.

---

*O Guardião Sóbrio — Luis Vanzer Gonçalves*
*Sobriedade não é abstinência. É construção.*
