---
tipo: aula
resumo: "Vibe coding (Karpathy, 2025), quando usar e quando evitar, e a evolução para a engenharia agêntica em 2026: loops de execução, human-in-the-loop, multi-agentes e agentes em background."
tags:
  - aula
  - engenharia-de-software
  - vibe-coding
  - agentic-coding
  - agentes
  - ia
---

# Vibe Coding e Engenharia Agêntica

> [!quote] Andrej Karpathy (fev/2025)
> *"Existe um novo tipo de programação que eu chamo de 'vibe coding', onde você se entrega totalmente às vibes, abraça os exponenciais e esquece que o código existe."*

---

## 1. Vibe Coding

> [!INFO] Definição
> **Vibe coding** é programar **descrevendo o que você quer em linguagem natural** e aceitando o código que a IA gera — muitas vezes sem ler tudo. O foco está no *resultado* (o app funcionando), não no código em si.

O termo foi cunhado por **Andrej Karpathy** (cofundador da OpenAI, ex-diretor de IA da Tesla) em fevereiro de 2025 e virou a palavra do ano no desenvolvimento de software.

### O fluxo típico

1. Descrever a ideia: *"faz um app de lista de tarefas com login e tema escuro"*
2. A IA gera o projeto inteiro
3. Testar clicando no resultado
4. Pedir ajustes em linguagem natural: *"o botão tá feio, deixa arredondado"*
5. Repetir até ficar bom
6. Publicar

### Onde o vibe coding brilha ✅

- **Protótipos e MVPs** — validar uma ideia em horas (ver [[Criação Rápida de MVPs]])
- **Projetos pessoais e automações** — "software descartável" feito sob medida
- **Aprendizado** — ver código funcionando e perguntar "por quê?"
- **Não-programadores** — em 2026, 63% dos usuários de app builders não são devs

### Onde o vibe coding quebra ❌

- **Produção com dados reais de usuários** — segurança não pode ser "vibe"
- **Sistemas que crescem** — sem arquitetura, o castelo de cartas desaba
- **Código que ninguém entende** — se quebrar às 3h da manhã, quem conserta?
- **Times** — código sem padrão e sem review não escala para equipes

> [!warning] A ressaca do vibe coding
> 2025–2026 encheu a internet de apps vazando chaves de API, bancos de dados abertos e código impossível de manter. O mercado aprendeu: vibe coding é ótimo para *começar*, péssimo como *método profissional*. A resposta da indústria foi a **engenharia agêntica**.

---

## 2. Engenharia Agêntica (Agentic Engineering)

> [!INFO] Definição
> **Engenharia agêntica** é o uso profissional de **agentes de IA** no desenvolvimento: a IA não apenas sugere código — ela **planeja, executa, testa e itera em loop** — enquanto o humano define objetivos, fornece contexto e **revisa com método**. O próprio Karpathy reconheceu em 2026: a era do vibe coding deu lugar à era da engenharia agêntica.

### O que é um agente?

Um **agente** é um LLM rodando em loop com acesso a ferramentas:

```
        ┌──────────────────────────────┐
        │  1. Recebe a tarefa (spec)   │
        │  2. PLANEJA os passos        │
        │  3. EXECUTA (edita arquivos, │
        │     roda comandos e testes)  │
        │  4. OBSERVA o resultado      │
        │  5. Erro? → corrige e volta  │
        │     ao passo 3               │
        │  6. Sucesso? → entrega       │
        └──────────────────────────────┘
```

A diferença para o chat: você não copia e cola — o agente **age** no projeto de verdade (lê o código, executa, vê o erro, conserta).

### Vibe coding × Engenharia agêntica

| | Vibe Coding | Engenharia Agêntica |
|--|-------------|---------------------|
| Spec | "Vibes" — descrições soltas | Especificação escrita e versionada |
| Código | Ignorado ("esqueça que existe") | Revisado nos pontos críticos |
| Testes | Clicar e ver se funciona | Suíte automatizada que o agente roda em loop |
| Contexto | O que couber no chat | Engenharia de contexto deliberada (AGENTS.md, docs) |
| Escala | Um app pequeno | Codebases reais, times, produção |
| Quem usa | Qualquer pessoa | Profissionais |

### Práticas centrais

1. **Plan first:** pedir o plano antes do código; aprovar o plano é mais barato que corrigir a execução
2. **Checkpoints (human-in-the-loop):** o agente para em pontos críticos para revisão humana
3. **Testes como contrato:** o agente só "termina" quando a suíte passa
4. **Tarefas pequenas e bem delimitadas:** agente com escopo gigante = desastre garantido
5. **Contexto persistente:** arquivos como `AGENTS.md`/`CLAUDE.md` ensinam o agente sobre o projeto (ver [[Engenharia de Contexto e Spec-Driven Development]])
6. **Review como gate final:** nada vai para produção sem julgamento humano

---

## 3. Fronteira 2026: longa duração e multi-agentes

### Agentes de longa duração (long-running)

A grande virada de 2026: agentes que não respondem a *um* prompt, mas **trabalham por horas** em uma tarefa — mantendo um loop de execução com replanejamento. Você delega de manhã, revisa o PR à tarde.

### Agentes em background

Rodam fora da sua máquina (na nuvem), ligados ao repositório:

- Triagem automática de issues
- Correção de bugs simples com PR pronto
- Atualização de dependências
- Exemplo real: os "Minions" da Stripe produzem **1.000+ PRs aceitos por semana**

### Multi-agentes e equipes de agentes

- **Subagentes:** um agente "orquestrador" divide a tarefa entre agentes especializados (um pesquisa, outro implementa, outro testa, outro revisa)
- **Paralelismo:** várias frentes de trabalho simultâneas no mesmo projeto (em worktrees/branches isoladas)
- **Adversarial:** um agente gera, outro tenta achar defeitos no que o primeiro fez

> [!tip] A metáfora que define 2026
> O desenvolvedor virou **tech lead de uma equipe de agentes**: distribui tarefas, define padrões, cobra qualidade e decide o que entra. Quem nunca aprendeu a liderar/revisar trabalho dos outros está aprendendo agora — com estagiários infinitamente rápidos e ocasionalmente alucinados.

---

## 4. Na prática: o mesmo pedido nos dois mundos

> [!example] Tarefa: "adicionar recuperação de senha por e-mail"
>
> **Vibe coder:** *"adiciona recuperação de senha"* → aceita tudo → testa clicando → funcionou → commit. (Token sem expiração? E-mail revelando se a conta existe? Nunca saberá.)
>
> **Engenheiro agêntico:**
> 1. Pede o **plano** ao agente e revisa (fluxo, expiração do token, mensagens neutras)
> 2. Agente implementa **com testes** (token expira, e-mail não vaza existência de conta)
> 3. Roda a suíte completa + linter de segurança
> 4. Revisa o diff nos pontos críticos (geração do token, queries)
> 5. PR → CI → merge
>
> O segundo gastou 20 minutos a mais. O primeiro vai gastar um fim de semana quando vazarem as contas.

➡️ **Próxima aula:** [[Engenharia de Contexto e Spec-Driven Development]] — como alimentar agentes com o contexto e as especificações certas.
