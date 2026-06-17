# Regras de Negocio
# App: O Guardiao Sobrio

> Versao: 1.0 — Junho 2026

---

## 1. Contador de Dias

- O usuario define a `sobriety_start` no onboarding ou a qualquer momento no perfil
- Nao ha validacao externa — o usuario e o unico responsavel pela honestidade
- Se o usuario resetar a data: nao ha mensagem punitiva. Mensagem: "Ok. Novo inicio. Hoje e o unico dia que voce precisa ganhar."
- O app nunca diz "Voce quebrou a sequencia" ou exibe um numero de dias zerado com destaque negativo
- Marcos sao calculados automaticamente pela funcao `calculate_sobriety_days`

---

## 2. Checklist Diario

- Apenas 1 checklist por usuario por dia (UNIQUE constraint)
- Itens podem ser desmarcados ate a meia-noite do dia corrente
- Apos meia-noite: checklist do dia anterior e bloqueado para edicao
- `completed = true` quando todos os 5 itens estao marcados
- Sem calculo de streak punitivo: o app nao exibe "Sequencia perdida" em nenhuma tela
- Historico: free = 7 dias. Essential e Guardiao = ilimitado.

---

## 3. Protocolo de Emergencia

- Free: 3 usos por mes-calendario
- Essential e Guardiao: ilimitado
- O limite nao e punitivo: ao atingir 3 usos no mes, mensagem: "Voce usou muito o escudo este mes. Isso significa que esta passando por um momento dificil. Considera atualizarteu plano para acesso continuo."
- Nunca bloquear acesso completamente em uma situacao ativa de crise: se o usuario ja iniciou o protocolo, ele completa sem interrupcao mesmo que o limite seja atingido durante o uso

---

## 4. Diario de Prompts

- 1 prompt por dia, rotacionado por semana (ESPELHO = seg/qui, TATICA = ter/sex, ESCUDO = qua/sab)
- Domingo: prompt livre (usuario escolhe o pilar)
- Minimo de 50 caracteres para salvar a entrada
- Entradas nao podem ser deletadas, apenas editadas (preservar historico da jornada)
- Free: mostra historico dos ultimos 7 dias, entradas anteriores existem mas sao ocultas (nunca deletadas) ate upgrade

---

## 5. Modulo Familiar

- 1 conexao familiar ativa por usuario principal (MVP)
- O familiar ve apenas: status do dia (completed: sim/nao), sem horario, sem detalhes
- O usuario principal pode revogar o acesso a qualquer momento: acoes imediata, sem confirmacao do familiar
- O familiar NAO pode: ver diario, ver notas, ver contador de dias exato (apenas "em jornada" ou "comecando")
- Codigo de convite expira em 48 horas se nao usado

---

## 6. Planos e Acesso

| Feature | Free | Essential | Guardiao |
|---|---|---|---|
| Checklist diario | Sim | Sim | Sim |
| Contador de dias | Sim | Sim | Sim |
| Protocolo emergencia | 3/mes | Ilimitado | Ilimitado |
| Diario de prompts | 7 dias | Ilimitado | Ilimitado |
| 13 Fundamentos | 3 primeiros | Todos | Todos |
| Mapa de gatilhos | Nao | Sim | Sim |
| Modulo familiar | Nao | Nao | Sim |
| Programa 30 Dias | Nao | Nao | Sim |
| Comunidade | Nao | Nao | Sim |
| Estatisticas e relatorios | Nao | Sim | Sim |

---

## 7. Limites Eticos (Hard Rules)

Essas regras nao podem ser alteradas por nenhuma demanda de negocio ou pressao de conversao:

- **PROIBIDO:** qualquer tela, notificacao ou mensagem que prometa cura, sobriedade garantida ou resultado milagroso
- **PROIBIDO:** pressionar o usuario a nao procurar ajuda profissional
- **PROIBIDO:** exibir dados de sobriedade de um usuario para outros usuarios sem consentimento explicito
- **PROIBIDO:** bloquear o acesso ao protocolo de emergencia no meio de uma sessao ativa, mesmo que o limite seja atingido
- **OBRIGATORIO:** link para CVV (188) e CAPS (Centro de Atencao Psicossocial) visivel nas configuracoes e na tela de protocolo de emergencia
- **OBRIGATORIO:** aviso em todos os protocolos: "Este app nao substitui psiquiatra, psicologo ou grupos de apoio."
- **OBRIGATORIO:** botao de exclusao de conta e dados funcionando em no maximo 2 toques (LGPD)

---

## 8. Notificacoes

- Nunca enviar notificacao entre 23h e 7h
- Notificacoes sao sempre opcionais e desativiaveis por tipo
- Tom das notificacoes: direto, sem exclamacoes excessivas, sem pressao
- Exemplos aprovados:
  - "Seu checklist de hoje esta esperando."
  - "17h chegando. Como esta seu perimetro?"
  - "Hoje e o unico dia que voce precisa ganhar."
- Exemplos proibidos:
  - "Voce vai perder sua sequencia!"
  - "Nao deixe seus amigos te superar!"
  - "Seja o guardiao que voce merece ser!"
