# Funcionalidades por Fase
# App: O Guardiao Sobrio

> Versao: 1.0 — Junho 2026

---

## Fase 1 — MVP (Dias 1-60)

Objetivo: entregar o minimo valioso. Validar retencao antes de construir mais.

### F1.1 — Onboarding

- Tela de boas-vindas com identidade da marca (noir, escudo, frase de ancora)
- Pergunta 1: "Qual e o seu objetivo hoje?" (parar de beber / me manter sobrio / ajudar alguem)
- Pergunta 2: "Ha quanto tempo voce esta nesta jornada?" (hoje / 1-7 dias / 8-30 dias / mais de 30 dias)
- Pergunta 3: "Qual e o seu maior desafio agora?" (gatilhos / isolamento / familiar / recaida recente)
- Cadastro: email + senha (ou Google / Apple)
- Tela de boas-vindas personalizada com base nas respostas

**Limite:** no maximo 5 perguntas antes de entregar valor. O usuario precisa ver o checklist no primeiro uso.

### F1.2 — Checklist Diario (Pilar: TATICA)

O feature mais importante do MVP.

- 5 itens fixos baseados no Protocolo de Seguranca e Respeito 24h:
  - [ ] Dormi pelo menos 6 horas?
  - [ ] Tomei agua hoje?
  - [ ] Me alimentei nas ultimas 4 horas?
  - [ ] Fiz algum movimento fisico?
  - [ ] Tive 1 contato humano real hoje?
- Check mark em cada item com micro-animacao de conclusao
- Progresso visual do dia (barra ou circulo)
- Ao completar os 5: mensagem de reforco com frase de ancora da marca
- Historico dos ultimos 7 dias (gratuito) ou ilimitado (pago)
- Notificacao push configuravel: lembrete diario no horario de maior risco do usuario

### F1.3 — Contador de Dias

- Data de inicio editavel pelo usuario
- Exibicao do numero de dias com dignidade (sem gamificacao excessiva)
- Marco em dias: 1, 7, 14, 30, 60, 90, 180, 365
- Ao atingir marco: tela especial com frase de ancora + opcao de compartilhar (sem expor o usuario)
- Sem streak de perda punitiva: se o usuario resetar, e um recado, nao uma punicao

### F1.4 — Protocolo de Emergencia (Pilar: ESCUDO + TATICA)

Acessivel em 2 toques de qualquer tela. Botao de SOS visivel.

- Versao simplificada do Protocolo Escudo 72h
- 5 etapas visuais com instrucoes curtas: PARE / RESPIRE / CONTATO / MOVIMENTO / ESTRUTURA
- Tela de RESPIRE com animacao de respiracao (4-4-6): circulo que expande e contrai
- Tela de CONTATO com acesso rapido a contatos de confianca cadastrados
- Gratuito: 3 usos por mes. Pago: ilimitado.

### F1.5 — Notificacoes

- Lembrete do checklist diario (horario customizavel)
- Alerta de horario de risco (configuravel pelo usuario)
- Mensagem diaria opcional: frase de ancora da marca (pode desativar)

---

## Fase 2 — Crescimento (Dias 61-120)

Objetivo: aprofundar o metodo e comecar a monetizar ativamente.

### F2.1 — Diario de Prompts (Pilar: ESPELHO)

- 1 prompt diario baseado nos 13 Fundamentos
- Rotacao de prompts alinhada ao pilar da semana (ESPELHO / TATICA / ESCUDO)
- Campo de texto livre com minimo de caracteres (ex: 50 chars para ativar o save)
- Entradas visualmente organizadas por data e pilar
- Gratuito: 7 dias de historico. Pago: ilimitado.
- Exemplos de prompts:
  - "Qual emocao voce esta evitando sentir hoje?"
  - "O que tentou invadir seu perimetro nas ultimas 24h? Como voce respondeu?"
  - "Complete: Estou sobrio para ____ (inclua pelo nome)."

### F2.2 — Os 13 Fundamentos (Pilar: ESPELHO)

- Lista dos 13 fundamentos com icones dos pilares
- Cada fundamento: insight + aplicacao + acao minima + armadilha + frase de ancora
- Progresso: marcar fundamento como "estudado" / "aplicado hoje"
- Fundamento do dia (rotacao semanal)
- Plano pago: destravado completamente. Gratuito: acesso aos 3 primeiros.

### F2.3 — Mapa de Gatilhos (Pilar: TATICA)

- Cadastro de gatilhos proprios: horario + situacao + emocao
- Resposta planejada para cada gatilho
- Alerta configuravel: se o usuario marcar "horario de risco" no gatilho, app pode notificar antes
- Visualizacao simples: lista ou mapa semanal de risco

### F2.4 — Modulo Familiar (Pilar: ESCUDO)

- Acesso via codigo de convite (usuario principal convida familiar)
- Familiar ve:
  - Status do dia do parceiro (apenas: dia sobrio sim/nao — sem detalhes)
  - Conteudo do Guia do Familiar (os 13 fundamentos para quem esta do outro lado)
  - Protocolo: o que fazer quando o parceiro esta em crise
  - O que NAO fazer (lista pratica)
- Familiar NAO ve: diario, detalhes do checklist, notas pessoais
- Privacidade total: usuario pode desativar o acesso do familiar a qualquer momento

---

## Fase 3 — Retencao e Comunidade (Dias 121+)

Objetivo: construir LTV e escalar a comunidade.

### F3.1 — Programa 30 Dias (Pilar: todos)

- Programa estruturado de 30 dias com conteudo diario desbloqueado progressivamente
- Cada dia: 1 fundamento + 1 protocolo + 1 prompt
- Progresso visual (barra de 30 dias)
- Certificado digital ao completar (sem expor conteudo da sobriedade)
- Plano Guardiao

### F3.2 — Comunidade O Escudo

- Feed curado: apenas posts aprovados (sem algoritmo aberto)
- Posts anonimos por padrao
- Reacoes sem numeros publicos (evitar comparacao)
- Moderacao ativa pelo criador
- Sem comentarios abertos inicialmente — apenas reacoes e mensagem privada para o criador
- Plano Guardiao

### F3.3 — Estatisticas Pessoais

- Relatorio semanal: dias sobrios, checklists completados, prompts escritos, gatilhos registrados
- Grafico simples de progresso (sem gamificacao punitiva)
- Exportavel como PDF (para compartilhar com terapeuta se quiser)

---

## Features Transversais (todas as fases)

### Modo SOS
- Botao flutuante visivel em todas as telas
- Abre o Protocolo de Emergencia em 1 toque

### Modo Escuro (obrigatorio)
- Tema escuro como padrao (noir da marca)
- Tema claro opcional

### Configuracoes de Privacidade
- Biometria para abrir o app
- PIN de acesso
- Exclusao de conta e todos os dados (LGPD)

### Acessibilidade
- Tamanho de fonte ajustavel
- Suporte a VoiceOver / TalkBack
- Contraste alto disponivel
