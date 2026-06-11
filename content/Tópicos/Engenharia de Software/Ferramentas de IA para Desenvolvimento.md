---
tipo: aula
resumo: "Panorama 2026 das ferramentas de IA para desenvolvimento: agentes de terminal (Claude Code, Codex), IDEs com IA (Cursor, Antigravity, Copilot), app builders (Lovable, Bolt, v0, Replit), agentes em background e critérios de escolha."
tags:
  - aula
  - engenharia-de-software
  - ferramentas
  - ia
  - claude-code
  - cursor
  - copilot
---

# Ferramentas de IA para Desenvolvimento

> [!quote] Não existe "a melhor ferramenta"
> *Existe a melhor ferramenta para cada tarefa — e o desenvolvedor profissional de 2026 normalmente combina duas ou três.*

---

## 1. O mapa das categorias (2026)

| Categoria | O que faz | Exemplos |
|-----------|-----------|----------|
| **Agentes de terminal** | Agente autônomo no terminal, lê o projeto inteiro, edita, roda e testa | **Claude Code**, OpenAI Codex CLI, Gemini CLI |
| **IDEs nativas de IA** | Editor completo redesenhado em torno da IA | **Cursor**, Windsurf, Google Antigravity, AWS Kiro |
| **Extensões de IDE** | IA dentro do editor que você já usa | **GitHub Copilot** (VS Code, JetBrains...) |
| **App builders (vibe coding)** | Da descrição ao app publicado, no navegador | **Lovable, Bolt.new, v0, Replit** |
| **Agentes em background** | Trabalham na nuvem ligados ao repositório, abrem PRs | Devin, Codex cloud, Jules, Copilot coding agent |
| **Review com IA** | Primeira passada de code review automática | CodeRabbit, Copilot code review |
| **Chats generalistas** | Tirar dúvidas, planejar, aprender | ChatGPT, Claude, Gemini |

---

## 2. Os três líderes de mercado

### GitHub Copilot — o padrão corporativo

- **O que é:** extensão multi-IDE (VS Code, JetBrains, etc.) + agente no GitHub
- **Força:** integração total com o ecossistema GitHub; adoção empresarial; preço de entrada (US$ 10/mês)
- **Perfil:** times que vivem no GitHub e querem IA "ligada por padrão" pra todo mundo

### Cursor — o favorito dos desenvolvedores

- **O que é:** IDE completa (fork do VS Code) com IA em todos os fluxos
- **Força:** experiência de edição — o **Composer** propõe mudanças em múltiplos arquivos numa passada; tab-completion excelente; contexto do projeto inteiro
- **Perfil:** quem passa o dia editando código e quer a IA na ponta dos dedos (US$ 20/mês)

### Claude Code — o teto de capacidade

- **O que é:** agente **nativo de terminal** (Anthropic); também em IDE, web e desktop
- **Força:** raciocínio profundo em tarefas complexas; contexto de até **1 milhão de tokens** (codebases inteiras sem perder o fio); autonomia longa; subagentes, skills e MCP
- **Perfil:** tarefas grandes e multi-arquivo, refatorações profundas, automação agêntica (US$ 20–200/mês)

> [!tip] O stack combinado mais comum em 2026
> **Cursor (ou VS Code+Copilot) para o dia a dia** + **Claude Code para tarefas pesadas/agênticas**. Ferramentas deixaram de ser excludentes: são camadas.

---

## 3. App builders — software pelo navegador

Para MVPs e protótipos (detalhes em [[Criação Rápida de MVPs]]):

| Ferramenta | Destaque | Típico para |
|------------|----------|-------------|
| **Lovable** | Código React limpo; o mais amigável para não-devs | SaaS MVP de founder não-técnico |
| **Bolt.new** | Prompt → app full-stack rodando no navegador | Validação rápida de ideia |
| **v0 (Vercel)** | UIs Next.js bonitas; integração com o deploy da Vercel | Front-ends e landing pages |
| **Replit Agent** | IDE online + agente + banco + hosting no mesmo lugar | Híbrido: prompt + codar junto |

Mercado em 2026: **US$ 4,7 bi**, com **63% de usuários não-desenvolvedores**.

---

## 4. Agentes em background — a fronteira

Trabalham **sem você na frente da tela**, ligados ao repositório:

- Você atribui uma issue ao agente → ele abre um **PR pronto** com testes
- Triagem automática de bugs; atualização de dependências; pequenas features
- Exemplos: **Devin**, **OpenAI Codex (cloud)**, **Google Jules**, **Copilot coding agent**
- Caso real: os "Minions" da Stripe — **1.000+ PRs aceitos por semana**

> [!warning] Pré-requisito
> Agente em background sem **CI forte + suíte de testes + code review obrigatório** = fábrica de incidentes. A infraestrutura de [[Metodologias Ágeis e DevOps|DevOps]] é o que torna isso seguro.

---

## 5. Os modelos por trás das ferramentas

As ferramentas são "carrocerias"; o motor são os LLMs:

- **Anthropic Claude** (Opus, Sonnet) — referência em código e agentes de longa duração
- **OpenAI GPT / Codex** — generalistas fortes, ecossistema gigante
- **Google Gemini** — multimodal, contexto enorme, integração Google
- **Modelos abertos** (DeepSeek, Qwen, Llama...) — rodam localmente, privacidade e custo

**Como se mede?** Benchmarks como **SWE-bench** (resolver issues reais do GitHub) e **Terminal-Bench** — e, na prática, a taxa de PRs aceitos.

---

## 6. Como escolher (critérios de engenheiro)

1. **Nível de autonomia necessário** — autocomplete? chat? agente? (ver [[Desenvolvimento de Software com IA]])
2. **Onde você trabalha** — terminal, IDE, navegador, GitHub?
3. **Tamanho do contexto** — projetos grandes pedem janelas grandes
4. **Privacidade** — código pode sair da máquina? Há opção enterprise/local?
5. **Custo × valor** — US$ 10–200/mês contra horas economizadas
6. **Ecossistema** — suporta MCP? AGENTS.md? Skills? CI?

> [!example] Regra prática para a disciplina
> - Aprender/explorar → chat (Claude, ChatGPT, Gemini)
> - Editar código todo dia → Cursor ou VS Code + Copilot
> - Tarefa grande, multi-arquivo → Claude Code
> - MVP de produto → Lovable/Bolt/v0 (ver [[Criação Rápida de MVPs]])

➡️ **Próxima aula:** [[Criação Rápida de MVPs]] — usar essas ferramentas para colocar um produto no ar.
