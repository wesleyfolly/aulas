---
tipo: aula
resumo: "Trabalhos e projetos da disciplina de Engenharia de Software: spec de produto, MVP com IA, relatório de engenharia agêntica e projeto final com apresentação de métricas."
tags:
  - aula
  - engenharia-de-software
  - trabalhos
  - projetos
---

# Trabalhos e Projetos de Engenharia de Software

> [!info] Como funciona
> Os trabalhos da disciplina simulam o fluxo real de um time de produto em 2026: **especificar → construir com IA → medir → defender as decisões**. Em todos eles, o uso de IA é **permitido e esperado**: o que se avalia é o seu **julgamento de engenharia**, não a digitação.

---

## Trabalho 1: Engenharia clássica aplicada

**Objetivo:** dominar a base que os agentes consomem.

- Escolher um problema real (do campus, da cidade, de um conhecido)
- Produzir: levantamento de **requisitos** (funcionais + não-funcionais), **histórias de usuário** com critérios de aceitação e um **diagrama** (casos de uso ou classes)
- Comparar: como esse projeto seria tocado em **cascata** × **Scrum**? (1 página)

**Entrega:** documento (PDF/Markdown). **Individual.**

> Conteúdo de apoio: [[Engenharia de Software Clássica]], [[Metodologias Ágeis e DevOps]]

---

## Trabalho 2: Mini-spec + MVP com IA

**Objetivo:** ir da ideia ao produto no ar.

- Escrever a **mini-spec** do MVP (problema, usuário, hipótese, 3 funcionalidades, fora de escopo, métrica de sucesso)
- Construir com **app builder** (Lovable/Bolt/v0/Replit) ou **agente** (Claude Code/Cursor)
- Publicar (link funcionando!)
- Registrar o processo: prompts/conversas-chave, o que a IA acertou, o que você teve que corrigir

**Entrega:** link do MVP + spec + diário de processo (2-4 páginas). **Duplas.**

> Conteúdo de apoio: [[Criação Rápida de MVPs]], [[Ferramentas de IA para Desenvolvimento]]

---

## Trabalho 3: Auditoria de código gerado por IA

**Objetivo:** desenvolver o olhar crítico (a habilidade mais valiosa).

- Receber (ou gerar) um trecho de aplicação criado por IA **com defeitos plantados** (vulnerabilidades, dependência inexistente, lógica sutil errada)
- Encontrar e documentar os problemas: o que é, por que é grave, como corrigir
- Corrigir usando um agente: **dirigindo** a correção com prompts precisos

**Entrega:** relatório de auditoria + diff das correções. **Individual.**

> Conteúdo de apoio: [[Boas Práticas e Riscos da IA no Desenvolvimento]]

---

## Projeto Final: Produto validado com usuários reais

**Objetivo:** o ciclo completo: build → measure → learn.

1. **Spec aprovada** pelo professor (checkpoint 1)
2. MVP no ar construído com engenharia agêntica: spec versionada, `AGENTS.md`/`CLAUDE.md` no repo, testes mínimos, código no GitHub (checkpoint 2)
3. **10+ usuários reais** usando, com métricas coletadas
4. Apresentação final de **10 minutos sobre os dados**: a hipótese sobreviveu? O que vocês aprenderam? Persistir, pivotar ou matar?

**Entrega:** repositório + produto no ar + apresentação. **Equipes de 3-4.**

### Critérios de avaliação

| Critério | Peso |
|----------|------|
| Qualidade da spec e dos requisitos | 25% |
| Processo de engenharia (repo, testes, AGENTS.md, commits, review) | 25% |
| Produto funcionando + segurança básica (checklist da disciplina) | 20% |
| Validação real (usuários, métricas, aprendizado demonstrado) | 20% |
| Apresentação e defesa das decisões | 10% |

> [!warning] Regras de integridade
> - Usar IA é esperado; **esconder o processo não é.** O diário de prompts faz parte da nota.
> - Vocês precisam ser capazes de **explicar qualquer linha** do que entregarem: haverá perguntas individuais na apresentação.
> - Dados de usuários reais: mínimos e protegidos (LGPD). Nada de coletar o que não precisa.

---

## Pontos Extras 🌟

- Contribuir com um termo novo bem pesquisado para o [[Glossário de Engenharia de Software com IA]]
- Apresentar em 5 min uma ferramenta de IA nova que a turma não conhece (com demo ao vivo)
- Publicar o MVP do projeto final com primeiro usuário pagante 💰
