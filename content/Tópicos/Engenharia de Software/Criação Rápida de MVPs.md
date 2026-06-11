---
tipo: aula
resumo: "MVP (Lean Startup) na era da IA: build-measure-learn, tipos de MVP, fluxo da ideia ao deploy em um dia, stack típica (Next.js + Supabase + Vercel), ferramentas (Lovable, Bolt, v0, Replit) e quando re-arquitetar."
tags:
  - aula
  - engenharia-de-software
  - mvp
  - lean-startup
  - empreendedorismo
  - ia
---

# Criação Rápida de MVPs

> [!quote] A regra de ouro do produto
> *"Se você não tem vergonha da primeira versão do seu produto, você lançou tarde demais."* — Reid Hoffman (fundador do LinkedIn)

---

## 1. O que é um MVP

> [!INFO] Definição
> **MVP (Minimum Viable Product / Produto Mínimo Viável)** é a versão mais simples de um produto que permite **aprender com usuários reais** com o mínimo de esforço. O objetivo do MVP não é ser um produto pequeno — é ser um **experimento** que valida (ou derruba) uma hipótese de negócio.

Conceito central do **Lean Startup** (Eric Ries, 2011):

```
   IDEIA → CONSTRUIR → produto → MEDIR → dados → APRENDER → nova ideia
            (build)               (measure)        (learn)
                    ↻ repetir o ciclo o mais rápido possível
```

### A pergunta que o MVP responde

Não é *"consigo construir isso?"* (com IA, quase sempre sim).
É **"alguém quer isso a ponto de usar/pagar?"**

### Erros clássicos

- Construir 6 meses em segredo e lançar o produto "completo" que ninguém pediu
- Confundir MVP com produto malfeito (mínimo ≠ quebrado)
- Validar com amigos que elogiam por educação em vez de usuários reais
- Pular a métrica: lançar e não medir nada

---

## 2. O que a IA mudou no jogo

| | Antes (até ~2023) | Agora (2026) |
|--|-------------------|--------------|
| Custo de construir um MVP | Semanas/meses, time técnico | **Horas/dias**, 1 pessoa |
| Gargalo | Programar | **Escolher o problema certo** |
| Quem consegue lançar | Devs ou quem paga devs | Qualquer pessoa (63% dos usuários de app builders não são devs) |
| Vantagem competitiva | Saber construir | **Velocidade de aprendizado** |

> [!tip] Consequência estratégica
> Quando todo mundo consegue construir, construir deixa de ser diferencial. O diferencial vira: **encontrar o problema certo, falar com usuários e iterar mais rápido que os outros.** O ciclo build-measure-learn ficou 100x mais rápido — para todos.

---

## 3. Tipos de MVP (do mais barato ao mais caro)

1. **Landing page + lista de espera** — descreve o produto e mede quem se cadastra (valida interesse antes de existir produto)
2. **MVP "Mágico de Oz"** — por fora parece automático; por trás, um humano faz o trabalho (valida demanda sem construir a automação)
3. **MVP concierge** — você entrega o serviço manualmente para poucos clientes (aprende o processo antes de automatizar)
4. **Protótipo navegável** — telas clicáveis sem back-end (Figma, v0)
5. **Produto funcional mínimo** — 1 a 3 funcionalidades de verdade, no ar — *com IA, este ficou quase tão barato quanto os anteriores*

---

## 4. O fluxo: da ideia ao MVP no ar em 1 dia

### Etapa 0 — Validar antes de construir (a mais importante!)

- Descrever o problema em 1 frase: *quem* sofre *o quê* e *quando*
- Conversar com 5+ pessoas do público-alvo (sem vender — perguntar sobre o problema)
- Conferir alternativas existentes (concorrente ruim = bom sinal: mercado existe)

### Etapa 1 — Especificar (30–60 min)

Escrever uma **mini-spec** (ver [[Engenharia de Contexto e Spec-Driven Development]]):

> [!example] Mini-spec de MVP
> - **Problema:** professores perdem horas montando listas de exercícios personalizadas
> - **Usuário:** professor de ensino médio
> - **Hipótese:** se gerar listas em 1 minuto, professores usarão semanalmente
> - **Funcionalidades (só 3!):** (1) escolher tema e dificuldade, (2) gerar lista com gabarito, (3) exportar PDF
> - **Fora do escopo v1:** login, pagamento, banco de questões próprio, app mobile
> - **Métrica de sucesso:** 20 professores gerarem 3+ listas na primeira semana

### Etapa 2 — Construir com IA (1–4 horas)

Dois caminhos:

**Caminho A — App builder (sem código):** colar a spec no **Lovable**, **Bolt.new** ou **v0** → ajustar conversando → publicar no domínio. *Tempo típico medido em 2026: ~47–60 min para um protótipo funcional.*

**Caminho B — Agente + stack própria (com código):** usar **Claude Code**/**Cursor** com uma stack padrão de MVP:

| Camada | Escolha típica 2026 | Por quê |
|--------|---------------------|---------|
| Front+Back | **Next.js** (React) | Um framework só, deploy trivial |
| Banco + Auth | **Supabase** (Postgres) | Gratuito no início, auth pronta |
| Deploy | **Vercel** | Git push = produção, HTTPS automático |
| Pagamento | **Stripe** (ou Mercado Pago no BR) | Checkout em minutos |
| E-mail | Resend | API simples |

> Caminho A = mais rápido para validar. Caminho B = você é dono do código e escala melhor. Começar no A e migrar pro B é um caminho comum.

### Etapa 3 — Medir (desde o primeiro dia)

- Analytics de eventos (o que as pessoas *fazem*, não o que dizem)
- Funil mínimo: visitou → testou → voltou → pagou
- Canal de feedback direto (botão de WhatsApp/formulário)

### Etapa 4 — Aprender e iterar

- Toda semana: olhar métricas → falar com usuários → decidir **persistir, pivotar ou matar**
- Matar um MVP que ninguém usa é **sucesso** (aprendizado barato), não fracasso

---

## 5. Do MVP ao produto de verdade

> [!warning] A dívida do MVP
> MVP construído por vibe coding carrega **dívida técnica proposital**. Isso é certo — desde que você saiba que ela existe. Sinais de que chegou a hora de re-arquitetar com engenharia de verdade:
> - Usuários pagantes e dados sensíveis no sistema
> - Bugs recorrentes que ninguém sabe consertar
> - Toda mudança quebra outra coisa
> - Precisa de time (mais de uma pessoa no código)
>
> Nesse ponto: auditoria de segurança, testes automatizados, CI/CD e provavelmente reescrever os módulos críticos com [[Vibe Coding e Engenharia Agêntica|engenharia agêntica]] disciplinada. **Falência por sucesso é evitável.**

### Checklist mínimo de segurança (mesmo em MVP!)

- [ ] Nenhuma chave de API/secret no código do front-end
- [ ] Banco de dados com regras de acesso (não aberto pro mundo)
- [ ] Senhas com hash (nunca em texto puro) — use auth pronta (Supabase/Clerk)
- [ ] HTTPS sempre
- [ ] Dados pessoais: o mínimo necessário (LGPD vale para MVP também!)

---

## 6. Estudo de caso da disciplina

> [!example] Desafio prático
> Em duplas: escolher um problema real do campus → escrever a mini-spec → construir o MVP com um app builder ou agente → publicar → conseguir **10 usuários reais** → apresentar **os dados** (não o app!) em 10 min: o que a métrica disse? A hipótese sobreviveu?
> Detalhes em [[Trabalhos e Projetos de Engenharia de Software]].

➡️ **Próxima aula:** [[Boas Práticas e Riscos da IA no Desenvolvimento]] — o que pode dar (muito) errado e como se proteger.
