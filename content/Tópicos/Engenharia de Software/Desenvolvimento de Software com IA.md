---
tipo: aula
resumo: "Panorama do desenvolvimento de software com IA em 2026: linha do tempo da revolução, os 5 níveis de autonomia, dados de adoção e o novo papel do desenvolvedor como orquestrador."
tags:
  - aula
  - engenharia-de-software
  - ia
  - llm
  - agentes
  - desenvolvimento-com-ia
---

# Desenvolvimento de Software com IA

> [!quote] A maior mudança da história do desenvolvimento
> *Em 60 anos de engenharia de software, nenhuma tecnologia mudou o trabalho do desenvolvedor tão rápido quanto os modelos de linguagem. O que era ficção em 2021 virou rotina profissional em 2026.*

---

## 1. Linha do tempo da revolução

| Ano | Marco |
|-----|-------|
| 2021 | **GitHub Copilot** — primeiro autocomplete com IA em massa |
| 2022 | **ChatGPT** — programar conversando vira mainstream |
| 2023 | LLMs passam a resolver problemas reais de código; explosão de assistentes |
| 2024 | Primeiros **agentes** (Devin, Claude + tool use, benchmark SWE-bench) e o protocolo **MCP** |
| 2025 | **"Vibe coding"** (Karpathy) vira fenômeno; agentes de terminal (Claude Code, Codex CLI); IDEs nativas de IA (Cursor, Windsurf) dominam |
| 2026 | **Engenharia agêntica**: agentes de longa duração, equipes de agentes, spec-driven development e context engineering viram prática profissional padrão |

### Números de 2026 (para dimensionar)

- O mercado de "vibe coding"/app builders chega a **US$ 4,7 bilhões**, com **63% de usuários não-desenvolvedores**
- Stripe mantém agentes ("Minions") produzindo **mais de 1.000 PRs aceitos por semana**
- O protocolo MCP ultrapassa **97 milhões de downloads mensais** de SDK, com 10.000+ servidores públicos
- Grandes empresas relatam que a **maioria do código novo** já é escrita com assistência de IA

---

## 2. Os 5 níveis de autonomia

Assim como carros autônomos, ferramentas de IA para código têm níveis crescentes de autonomia:

| Nível | Nome | Como funciona | Exemplo |
|-------|------|---------------|---------|
| 1 | **Autocomplete** | Sugere a próxima linha enquanto você digita | Copilot clássico |
| 2 | **Chat** | Você pergunta, copia e cola a resposta | ChatGPT, Gemini |
| 3 | **Copiloto no editor** | IA lê o projeto e edita múltiplos arquivos sob seu comando | Cursor, Windsurf, Copilot Edits |
| 4 | **Agente supervisionado** | Recebe uma tarefa, planeja, edita, roda testes e itera — você revisa checkpoints | Claude Code, Codex, Kiro |
| 5 | **Agente autônomo / equipes** | Trabalha em background, abre PRs sozinho, vários agentes em paralelo | Background agents, Devin, "AI teams" |

> [!warning] Autonomia ≠ confiança cega
> Quanto maior o nível, maior a alavancagem — e maior o estrago possível. Por isso os níveis 4 e 5 exigem as redes de segurança da engenharia clássica: testes, CI/CD, code review e permissões controladas. Ver [[Boas Práticas e Riscos da IA no Desenvolvimento]].

---

## 3. O novo papel do desenvolvedor

### O que mudou

| Antes (até ~2023) | Agora (2026) |
|-------------------|--------------|
| Escrever código linha a linha | **Especificar, orquestrar e revisar** código gerado |
| Digitar era o gargalo | **Decidir** é o gargalo |
| Saber sintaxe de cor | Saber **arquitetura, requisitos e trade-offs** |
| Debugar manualmente | Dirigir agentes que debugam em loop |
| Um dev = uma tarefa por vez | Um dev = vários agentes em paralelo |

### A pirâmide de habilidades de 2026

```
        / Julgamento \        ← avaliar se a solução está CERTA (arquitetura, segurança, negócio)
       /  Orquestração \      ← dirigir agentes: specs, contexto, revisão de PRs
      /   Fundamentos    \    ← algoritmos, redes, banco, testes — para ENTENDER o que a IA faz
```

> [!tip] O paradoxo do iniciante
> A IA escreve o código fácil — justamente o código que formava os júniors. Em 2026, quem entra na área precisa **acelerar os fundamentos** (não pulá-los): o mercado paga por quem sabe julgar o que a IA produz. Quem só sabe aceitar sugestões compete com a própria ferramenta.

### O que NÃO mudou

- Requisito mal entendido continua gerando produto errado (agora mais rápido 😅)
- Sistemas continuam precisando de arquitetura, segurança e manutenção
- A responsabilidade pelo que vai pra produção é **sempre humana**
- Comunicação e trabalho em equipe continuam decidindo o sucesso do projeto

---

## 4. Como a IA entra em cada fase do ciclo de vida

| Fase clássica | Com IA em 2026 |
|---------------|----------------|
| Requisitos | IA entrevista, resume conversas, gera user stories e specs estruturadas |
| Design | IA propõe arquiteturas, gera diagramas, compara trade-offs |
| Implementação | Agentes geram e refatoram código em múltiplos arquivos |
| Testes | IA gera suítes de teste, dados de teste e roda em loop até passar |
| Code review | IA faz a primeira passada; humano decide |
| Deploy | Pipelines CI/CD acionados e corrigidos por agentes |
| Manutenção | Agentes de background triam issues, propõem correções e abrem PRs |
| Documentação | Gerada e atualizada automaticamente a partir do código |

---

## 5. Os termos-chave do momento (mapa da Parte 2)

- **[[Vibe Coding e Engenharia Agêntica|Vibe coding]]** — programar descrevendo em linguagem natural, sem revisar tudo
- **[[Vibe Coding e Engenharia Agêntica|Engenharia agêntica]]** — a evolução profissional: dirigir agentes com método
- **[[Engenharia de Contexto e Spec-Driven Development|Context engineering]]** — a habilidade nº 1: montar o contexto certo para o agente
- **[[Engenharia de Contexto e Spec-Driven Development|Spec-driven development]]** — a especificação como centro do desenvolvimento
- **[[Ferramentas de IA para Desenvolvimento|Agentes e ferramentas]]** — Claude Code, Cursor, Copilot, app builders
- **[[Criação Rápida de MVPs|MVP com IA]]** — da ideia ao produto no ar em horas

➡️ **Próxima aula:** [[Vibe Coding e Engenharia Agêntica]]
