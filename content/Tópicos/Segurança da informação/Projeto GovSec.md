---
tipo: aula
resumo: "Projeto-âncora da disciplina: estudar Segurança da Informação construindo o GovSec, um framework de red team com IA, transparente e ético por construção, para endurecer sistemas de instituições públicas."
tags:
  - aula
  - seguranca-da-informacao
  - govsec
  - projeto
  - pbl
---

# Projeto GovSec

> [!quote] Sobre esta disciplina
> *Aqui a Segurança da Informação não é só estudada: ela é **construída**. Ao longo do semestre vamos entender os conceitos da área enquanto projetamos, peça por peça, o **GovSec** — um framework de auditoria de segurança com IA. Você aprende segurança fazendo segurança.*

---

## 🎯 O que é o GovSec

> [!info] Em uma frase
> Um **framework agêntico de red team com IA** para auditar e endurecer a segurança de sistemas web de **instituições públicas** (Institutos Federais, prefeituras, escolas, gov.br), com **transparência radical** e **uso educacional**.

Por que ele existe:

| Motivo | Explicação |
|--------|-----------|
| **Lacuna nacional** | Instituições públicas brasileiras carecem de ferramentas open-source de auditoria em PT-BR adaptadas à LGPD e à realidade institucional. |
| **Superfície nova** | Sistemas com IA/RAG (como o **iffbot**) introduzem riscos novos — OWASP LLM Top 10, MITRE ATLAS — pouco cobertos pelas ferramentas tradicionais. |
| **Ensino observável** | Cada execução do GovSec é um "transcript de aula": dá pra ver o agente **raciocinando** sobre segurança, passo a passo. |

> [!tip] Posição na pesquisa
> O GovSec é o **Ciclo 1** da linha de pesquisa *IA Confiável para Educação* (o iffbot foi o Ciclo 0). Ou seja: vocês participam de um projeto de pesquisa real, não de um exercício de gaveta.

---

## 🧱 A proposta pedagógica: aprender construindo

> [!quote] Construcionismo
> *"Você aprende melhor quando está ativamente envolvido na criação de algo que tem significado para você."* — Seymour Papert

A disciplina segue **Aprendizagem Baseada em Projetos (PBL)**: em vez de só ler sobre ataque e defesa, cada conceito de segurança vira uma **peça do GovSec** que estudamos e ajudamos a montar.

```
Conceito de segurança  →  peça do GovSec  →  estudo + implementação  →  você entendeu de verdade
```

- **Teoria** ancorada em papers e documentação real (não em slides genéricos).
- **Prática** em laboratório controlado, sempre com alvos preparados e autorizados.
- **Avaliação** por entregas reais: relatórios, mini-projetos e um projeto final autoral.

---

## 🔐 Ética por construção (o coração da disciplina)

> [!warning] A regra de ouro
> Segurança ofensiva só se aprende dentro de um **envelope ético**. No GovSec, **usar fora do escopo é tecnicamente impossível** — não é "evitado por confiança", é **impedido por design**.

As 7 travas que vamos estudar (e que valem para qualquer trabalho de segurança nesta disciplina):

| # | Trava | O que garante |
|---|-------|---------------|
| 1 | **Authorization Manifest** assinado | Sem autorização formal e assinada do dono do sistema, o agente **se recusa a rodar**. |
| 2 | **Caged by construction** | Roda isolado (container), **sem acesso à internet** por padrão. |
| 3 | **Escopo re-checado** | A permissão é verificada a **cada ação**, não só no início. |
| 4 | **Verbo educativo radical** | O agente **explica o que vai fazer antes de fazer** — bom pra aprender, bom pra auditar. |
| 5 | **Log assinado** | Tudo fica registrado em trilha **inviolável** (cadeia de custódia). |
| 6 | **Kill switches (L1-L7)** | Sete camadas de desligamento de emergência (de orçamento até a trilha de auditoria). |
| 7 | **Disclosure responsável** | Qualquer falha encontrada tem **embargo de 90 dias** antes de divulgação. |

> [!info] Por que isso é aula, não burocracia
> Projetar essas travas **é** o conteúdo: autenticação, autorização, isolamento, auditoria, resposta a incidente e divulgação responsável aparecem todos aqui, aplicados.

---

## 🗺️ Arco da disciplina

> [!note] Da base ao projeto autoral
> A ementa completa tem 15 semanas (versão adaptada ao Técnico Integrado: mais laboratório, menos paper denso). Os grandes blocos:

1. **Fundamentos** — kill chain, OWASP Top 10, pentest manual *(revisão da base que já vimos em [[Introdução à Segurança da informação]] e [[Princípios da segurança da informação]])*.
2. **Linguagem comum do ataque** — MITRE ATT&CK e ATLAS: como nomear e classificar técnicas.
3. **IA em segurança** — o que um agente de IA consegue e o que **não** consegue fazer; arquitetura (planejador / executor / verificador / memória).
4. **Ferramentas e integração** — como o agente "usa" ferramentas de segurança de forma controlada.
5. **Segurança de sistemas com IA/RAG** — riscos novos (OWASP LLM Top 10), incluindo o estudo do nosso próprio iffbot.
6. **Defesas e kill switches** — como blindar; as 7 travas na prática.
7. **Ética, dual-use e regulação** — LGPD, marcos de IA, código de conduta profissional.
8. **Projeto final** — cada aluno (ou dupla) projeta um **sub-agente** especializado em **um** risco e entrega um MVP + relatório + apresentação.

> [!tip] Laboratórios sempre em ambiente preparado
> Todo lab usa alvos feitos para serem atacados (DVWA, Juice Shop, ambientes de CTF) ou o iffbot **com autorização assinada**. Nunca sistemas de terceiros sem permissão — isso é regra inegociável da área e desta disciplina.

---

## 📊 Como você é avaliado

| Componente | Peso (sugestão) |
|------------|-----------------|
| Participação + quizzes | 20% |
| Relatórios de laboratório | 15% |
| Trabalho integrador 1 | 15% |
| Trabalho integrador 2 (auditoria autorizada do iffbot) | 25% |
| Projeto final (sub-agente autoral) | 25% |

> [!note] Conexão com o resto da disciplina
> Os trabalhos práticos se conectam com [[Trabalhos e Projetos de Segurança da Informação]]. Ferramentas e técnicas específicas estão nos tópicos de [[Mapeamento de vulnerabilidades]], [[Exploração do alvo]] e [[Documentação Report]].

---

## 🚦 Status do projeto

> [!info] Fase atual
> O GovSec está em **fundação** (documentação pronta; código começa na primeira sprint). Na prática, isso significa que **vocês entram cedo**: estudam a arquitetura e ajudam a construir as primeiras peças. O projeto será **aberto (open-source, AGPL-3.0)** a partir da versão 1.0 estável.

---

> [!quote] Fecho
> *Ao final, você não terá só "estudado segurança". Terá ajudado a construir uma ferramenta de segurança real, para proteger instituições públicas, e saberá explicar cada decisão técnica e ética que tomou no caminho.*
