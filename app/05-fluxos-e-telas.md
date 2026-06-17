# Fluxos e Telas
# App: O Guardiao Sobrio

> Versao: 1.0 — Junho 2026

---

## 1. Mapa de Telas (MVP)

```
App Launch
  |
  |-- [Nao autenticado] --> Splash Screen --> Onboarding (3-5 passos) --> Cadastro/Login
  |
  |-- [Autenticado] --> Home (Tab Principal)

Home (Bottom Tab Nav — 4 tabs)
  |
  |-- Tab 1: HOJE (Home)
  |       |- Contador de Dias
  |       |- Checklist Diario
  |       |- Prompt do Dia (acesso rapido)
  |       |- Frase de Ancora do Dia
  |
  |-- Tab 2: PROTOCOLO
  |       |- Protocolo Emergencia (Escudo 72h)
  |       |- Lista de Protocolos disponiveis
  |       |- (Pago) Protocolo Perimetro 24h
  |       |- (Pago) Protocolo Seguranca e Respeito
  |
  |-- Tab 3: METODO
  |       |- Os 13 Fundamentos
  |       |- Fundamento do Dia
  |       |- Diario de Prompts
  |       |- Mapa de Gatilhos (F2)
  |
  |-- Tab 4: PERFIL
          |- Configuracoes
          |- Privacidade (PIN, biometria)
          |- Plano atual
          |- Contatos de confianca
          |- Exclusao de conta
          |- Sobre (creditos, limite etico)

SOS Button (flutuante, todas as telas) --> Tela de Emergencia
```

---

## 2. Fluxo de Onboarding

```
Splash (logo + frase) -- 2s -->

Tela 1: "O que te traz aqui hoje?"
  [ ] Quero parar de beber
  [ ] Estou tentando me manter sobrio
  [ ] Quero ajudar alguem que bebe

Tela 2: "Ha quanto tempo voce esta nesta jornada?"
  [ ] Estou comecando agora
  [ ] 1 a 7 dias
  [ ] 8 a 30 dias
  [ ] Mais de 30 dias

Tela 3: "Qual e o seu maior desafio agora?"
  [ ] Nao sei por onde comecar
  [ ] Os gatilhos sao muito fortes
  [ ] Me sinto sozinho nisso
  [ ] Tive uma recaida recente

Tela 4: Cadastro
  Email + Senha
  ou [Continuar com Google] [Continuar com Apple]

Tela 5: Boas-vindas personalizada
  Baseada nas respostas anteriores
  Exibe: contador começa HOJE / frase de ancora personalizada
  Botao: "Comecar meu primeiro dia"
  --> Home
```

---

## 3. Fluxo da Tela de Emergencia (SOS)

```
[Botao SOS] -- 1 toque -->

Tela: PARE
  "Interrompa o que esta fazendo."
  "Nao tome decisoes nos proximos 5 minutos."
  [Proxima etapa]

Tela: RESPIRE
  Animacao de circulo pulsando
  "Inspirar 4s | Segurar 4s | Expirar 6s"
  5 respiracoes (contador visivel)
  [Proxima etapa]

Tela: CONTATO
  Lista de contatos de confianca cadastrados
  Botao: [Ligar agora] [Mandar mensagem]
  Se sem contatos: instrucao para ir a lugar publico
  [Proxima etapa]

Tela: MOVIMENTO
  "Mova o corpo por 10 minutos."
  Timer de 10 minutos (opcional)
  [Proxima etapa]

Tela: ESTRUTURA
  Tabela simplificada das 72h
  Horas 1-24 / 24-48 / 48-72
  [Concluir]

[Concluir] --> Home com mensagem de reforco
```

---

## 4. Fluxo do Checklist Diario

```
Home:
  Card do checklist com 5 itens
  Cada item: checkbox + icone + descricao curta

[Check item]
  - Micro-animacao: scale bounce + icone muda para check dourado
  - Progresso da barra avanca

[Check todos os 5 itens]
  - Animacao de confetti discreto
  - Mensagem: frase de ancora
  - Boton: "Registrar no diario" (opcional)
  - Card muda para estado "Concluido"

Se nao completar ate as 21h:
  - Notificacao de lembrete gentil (nao punitiva)
  - Sem perda de streak
```

---

## 5. Fluxo do Diario de Prompts

```
Tab Metodo --> Diario de Prompts

Tela Principal:
  Data de hoje + prompt do dia
  Campo de texto (minimo 50 chars para salvar)
  Contador de caracteres discreto
  Botao [Salvar]

[Salvar]:
  Micro-animacao de confirmacao
  Entrada aparece na lista abaixo (organizadas por data)

Historico:
  Lista de entradas com data e icone do pilar
  Toque na entrada: expande para leitura completa
  Gratuito: 7 entradas visiveis. Pago: todas.
```

---

## 6. Tela de Marco de Dias

```
Ao atingir marco (7, 14, 30, 60, 90, 180, 365 dias):

Tela especial (modal ou full-screen):
  Fundo: extra escuro com particulas douradas animadas
  Numero grande: ex. "30" em --text-hero, fonte mono
  Subtitulo: "Dias com voce mesmo."
  Frase de ancora especifica para o marco
  Botao: [Fechar] e [Compartilhar imagem] (sem expor conteudo sensivelr)
```

---

## 7. Tela Modulo Familiar

```
Criador de conta principal:
  Perfil --> "Convidar familiar"
  Gera codigo de 6 digitos + link

Familiar instala app ou acessa web:
  Insere codigo
  Cria conta propria (email + senha)
  Ve apenas:
    - Status do dia do parceiro ("Dia guardado: sim/nao")
    - Conteudo do Guia do Familiar
    - Protocolo de crise para familiares
    - NAO ve: diario, notas, detalhes do checklist

Privacidade:
  Usuario pode revogar acesso do familiar a qualquer momento em Configuracoes
```
