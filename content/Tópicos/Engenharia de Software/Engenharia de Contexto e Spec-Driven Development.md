---
tipo: aula
resumo: "Prompt engineering, context engineering (a habilidade nº 1 de 2026), arquivos AGENTS.md/CLAUDE.md, Spec-Driven Development (Kiro, Spec Kit) e o protocolo MCP."
tags:
  - aula
  - engenharia-de-software
  - context-engineering
  - prompt-engineering
  - spec-driven-development
  - mcp
---

# Engenharia de Contexto e Spec-Driven Development

> [!quote] A habilidade que define quem domina IA
> *Em 2026, a habilidade mais importante do desenvolvimento com IA não é escrever prompts bonitos — é montar o **contexto** certo. O modelo é o mesmo para todo mundo; o contexto é o seu diferencial.*

---

## 1. Prompt Engineering (o começo da história)

> [!INFO] Definição
> **Prompt engineering** é a técnica de escrever instruções (prompts) que maximizam a qualidade da resposta de um LLM.

### Técnicas clássicas que ainda valem

| Técnica | O que é | Exemplo |
|---------|---------|---------|
| **Zero-shot** | Pedir direto, sem exemplos | "Converta este JSON para CSV" |
| **Few-shot** | Dar 2–3 exemplos do formato esperado | "Entrada: X → Saída: Y. Agora faça com Z" |
| **Chain-of-thought** | Pedir raciocínio passo a passo | "Pense passo a passo antes de responder" |
| **Papel (role)** | Definir persona e critérios | "Você é um revisor de segurança rigoroso..." |
| **Restrições explícitas** | Delimitar formato, escopo e proibições | "Apenas SQL padrão, sem extensões; não altere o schema" |

### Regras de ouro para prompts de código

1. **Especifique o resultado, não o caminho** (deixe o "como" para o modelo, valide o "o quê")
2. **Dê o contexto mínimo suficiente** (a função, o erro, o stack trace — não o projeto inteiro colado)
3. **Defina critérios de aceitação** ("deve passar nestes testes", "deve manter a API pública")
4. **Itere:** prompt é conversa, não bala de prata

---

## 2. Context Engineering (a evolução)

> [!INFO] Definição
> **Context engineering** é a disciplina de **selecionar, estruturar e gerenciar tudo que entra na janela de contexto** do modelo: instruções, código relevante, documentação, exemplos, ferramentas disponíveis e memória. O prompt é só a última frase de uma conversa que você inteira projetou.

### Por que superou o prompt engineering?

- Agentes modernos trabalham com **projetos inteiros**, não trechos colados
- A janela de contexto é grande (até 1M tokens) mas **não infinita** — e qualidade > quantidade
- Contexto irrelevante **piora** o resultado ("context rot"): o modelo se distrai
- O mesmo prompt com contexto diferente produz resultados opostos

### As camadas de contexto de um agente

| Camada | Conteúdo | Vida útil |
|--------|----------|-----------|
| **System prompt** | Quem o agente é, regras inegociáveis | Fixa |
| **Contexto durável do projeto** | `AGENTS.md` / `CLAUDE.md`: arquitetura, convenções, comandos | Versionada no repo |
| **Contexto da tarefa** | A spec, os arquivos relevantes, o erro atual | Por sessão |
| **Memória acumulada** | O que o agente aprendeu em sessões passadas | Cresce com o uso |
| **Ferramentas** | O que o agente pode *fazer* (rodar testes, buscar na web, MCP) | Configurável |

### AGENTS.md e CLAUDE.md

Arquivos Markdown **na raiz do repositório** que ensinam o agente sobre o projeto:

- Como buildar e rodar os testes
- Convenções de código e arquitetura do projeto
- O que nunca fazer (ex: "não tocar na pasta `legacy/`")
- **`AGENTS.md`** é o padrão aberto (criado em 2025 por OpenAI, Google, Cursor, Sourcegraph e outros; hoje governado por fundação ligada à Linux Foundation)
- **`CLAUDE.md`** é o formato do Claude Code (mesma ideia)

> [!example] Trecho de um AGENTS.md real
> ```markdown
> # Projeto: API de Biblioteca
> ## Comandos
> - Testes: `pytest -x` | Lint: `ruff check .`
> ## Convenções
> - FastAPI + SQLAlchemy; schemas Pydantic em `schemas/`
> - Toda rota nova exige teste de integração
> ## Nunca
> - Commitar credenciais; alterar migrations antigas
> ```

---

## 3. Spec-Driven Development (SDD)

> [!INFO] Definição
> **Spec-Driven Development** é a metodologia em que a **especificação escrita** — não o código — é o artefato central do desenvolvimento. Humanos escrevem e refinam specs; agentes geram implementação, testes e documentação **a partir delas**.

É a resposta profissional ao vibe coding: em vez de "vibes", um documento que diz exatamente o que construir.

### O fluxo SDD (popularizado por Kiro/AWS e GitHub Spec Kit)

```
1. REQUIREMENTS  →  o que o sistema deve fazer
   (user stories + critérios de aceitação testáveis)
2. DESIGN        →  como será construído
   (arquitetura, dados, trade-offs, decisões)
3. TASKS         →  plano de implementação
   (tarefas pequenas, ordenadas, verificáveis)
4. IMPLEMENT     →  agentes executam tarefa a tarefa
   (com testes; humano revisa cada etapa)
```

### Por que funciona

- **Mudança barata:** corrigir uma frase na spec custa segundos; corrigir código gerado errado custa horas
- **A spec vira memória persistente** do agente — o projeto "lembra" suas decisões
- **Auditável:** dá para rastrear cada linha de código a um requisito
- **Paralelizável:** tarefas independentes → vários agentes simultâneos

> [!tip] Déjà vu?
> Requisitos → design → implementação... é o **ciclo de vida clássico** ([[Engenharia de Software Clássica]])! A diferença: o ciclo que levava meses agora roda em horas, e a documentação que ninguém atualizava agora é **executável** — ela literalmente gera o sistema. A engenharia clássica não morreu; ela virou a linguagem de comando dos agentes.

---

## 4. MCP — Model Context Protocol

> [!INFO] Definição
> **MCP (Model Context Protocol)** é o protocolo aberto que padroniza como modelos de IA se conectam a **ferramentas e fontes de dados externas** — apelidado de **"USB-C da IA"**. Criado pela Anthropic (2024), adotado por OpenAI, Google, Microsoft e Amazon.

### O que ele resolve

Antes: cada integração (IA ↔ banco de dados, IA ↔ Jira, IA ↔ navegador) era um código sob medida.
Com MCP: o serviço expõe um **servidor MCP** padrão; qualquer agente compatível o usa.

```
Agente (cliente MCP) ⇄ Servidor MCP ⇄ Serviço real
                                       (GitHub, banco, browser, Slack...)
```

### Em números (2026)

- **97+ milhões** de downloads mensais dos SDKs
- **10.000+ servidores MCP públicos**: bancos de dados, navegadores, nuvens, APIs de pagamento...

### O que isso significa na prática

Um agente com MCP pode: consultar seu banco de produção (read-only!), abrir o navegador e testar a UI que ele mesmo gerou, ler o Figma do designer, atualizar o ticket no Jira — tudo na mesma sessão.

---

## 5. O arsenal de contexto do desenvolvedor moderno

| Mecanismo | Para quê |
|-----------|----------|
| `AGENTS.md` / `CLAUDE.md` | Contexto durável do projeto |
| **Specs** (`specs/`) | O que construir, com critérios verificáveis |
| **Skills / slash commands** | Workflows reutilizáveis empacotados (`/deploy`, `/review`) |
| **Subagentes** | Delegar pesquisa/execução sem poluir o contexto principal |
| **Servidores MCP** | Conectar o agente ao mundo real |
| **Memória persistente** | O agente aprende o projeto com o tempo |

➡️ **Próxima aula:** [[Ferramentas de IA para Desenvolvimento]] — o panorama 2026 das ferramentas e como escolher.
