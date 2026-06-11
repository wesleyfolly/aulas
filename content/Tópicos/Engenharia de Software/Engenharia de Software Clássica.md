---
tipo: aula
resumo: "Resumo da Engenharia de Software tradicional: crise do software, ciclo de vida, modelos de processo (cascata, incremental, espiral), engenharia de requisitos, UML, arquitetura, testes, qualidade e manutenção."
tags:
  - aula
  - engenharia-de-software
  - sdlc
  - requisitos
  - uml
  - testes
---

# Engenharia de Software Clássica

> [!quote] Por que existe essa disciplina?
> *Programar é escrever código. Engenharia de Software é construir sistemas que funcionam, podem ser mantidos por anos e são feitos por equipes — dentro do prazo e do orçamento.*

> [!info] Como esta aula se encaixa na disciplina
> Esta aula é um **resumo panorâmico** do que é ensinado tradicionalmente em Engenharia de Software nas universidades. Esses conceitos continuam valendo — mas hoje são executados com ajuda massiva de IA. Entender a base clássica é o que diferencia quem **orquestra** a IA de quem apenas **aceita** o que ela gera.

---

## 1. O que é Engenharia de Software

> [!INFO] Definição
> Engenharia de Software é a aplicação de uma abordagem **sistemática, disciplinada e quantificável** ao desenvolvimento, operação e manutenção de software (IEEE).

### A Crise do Software (anos 1960)

O termo nasceu na conferência da OTAN de **1968**, em resposta à "crise do software":

- Projetos estouravam prazo e orçamento sistematicamente
- Software entregue com baixa qualidade e cheio de defeitos
- Código impossível de manter e evoluir
- Demanda crescia mais rápido que a capacidade de produzir

**Conclusão da época:** escrever software em escala precisa de *engenharia*, não só de programação. Essa tensão (velocidade × qualidade) existe até hoje — e voltou com força na era da IA.

### Software ≠ Programa

| Programa | Software (produto de engenharia) |
|----------|----------------------------------|
| Código que funciona na sua máquina | Código + documentação + testes + configuração |
| Feito por uma pessoa | Feito e mantido por equipes |
| Resolve um problema pontual | Evolui por anos atendendo usuários reais |

---

## 2. Ciclo de Vida do Software (SDLC)

Todo software passa pelas mesmas grandes fases, independente da metodologia:

1. **Levantamento de Requisitos** — entender o que o cliente precisa
2. **Análise** — modelar o problema
3. **Projeto (Design)** — decidir como o sistema será construído
4. **Implementação** — escrever o código
5. **Testes** — verificar se funciona e valida o que foi pedido
6. **Implantação (Deploy)** — colocar em produção
7. **Manutenção** — corrigir, adaptar e evoluir (a fase mais longa e cara!)

> [!warning] O dado mais importante do SDLC
> **60–80% do custo total** de um software está na **manutenção**, não na construção inicial. Por isso código legível, testado e bem arquitetado importa tanto.

---

## 3. Modelos de Processo

Como organizar as fases acima no tempo:

### Cascata (Waterfall)

- Fases executadas **em sequência**, uma só começa quando a anterior termina
- Documentação pesada, contrato fechado
- **Problema:** o cliente só vê o software no final; mudanças custam caro
- Ainda usado em contextos regulados (aviação, área médica, governo)

### Modelo V

- Variação da cascata: cada fase de construção tem uma fase de teste correspondente
- Ênfase em **verificação e validação**

### Incremental e Iterativo

- Software entregue em **versões parciais funcionais** (incrementos)
- Cada iteração refina o produto com feedback real
- Base conceitual dos métodos ágeis

### Espiral (Boehm)

- Iterações guiadas por **análise de riscos**
- Cada volta da espiral: objetivos → riscos → desenvolvimento → planejamento

### Prototipação

- Construir rápido uma versão descartável para validar entendimento
- Ancestral direto do conceito moderno de **MVP** (ver [[Criação Rápida de MVPs]])

---

## 4. Engenharia de Requisitos

> [!INFO] Definição
> Requisito é uma **condição ou capacidade que o sistema deve atender**. Errar requisito é o erro mais caro de todos: descobrir um requisito errado em produção custa até **100x mais** do que na fase de levantamento.

### Tipos de Requisitos

- **Funcionais (RF):** o que o sistema *faz* (ex: "o sistema deve emitir boleto")
- **Não-funcionais (RNF):** *como* o sistema deve ser (desempenho, segurança, usabilidade, disponibilidade) (ex: "responder em menos de 2s com 1000 usuários simultâneos")
- **Regras de negócio:** políticas da organização que o sistema deve respeitar

### Técnicas de Elicitação

- Entrevistas e questionários
- Observação do usuário (etnografia)
- Workshops e brainstorming
- Análise de documentos e sistemas existentes
- Casos de uso e histórias de usuário

### Características de um bom requisito

Claro, **verificável** (dá pra testar), completo, consistente, rastreável e priorizado.

> [!tip] Conexão com 2026
> Escrever bons requisitos virou a habilidade central da era da IA: no **Spec-Driven Development**, a especificação é literalmente o que o agente de IA usa para gerar o sistema. Quem nunca aprendeu a especificar, não consegue orquestrar IA. Ver [[Engenharia de Contexto e Spec-Driven Development]].

---

## 5. Análise e Projeto (Design)

### UML — Unified Modeling Language

Linguagem visual padrão para modelar sistemas. Diagramas mais usados:

| Diagrama | Mostra |
|----------|--------|
| **Casos de Uso** | Funcionalidades sob o ponto de vista do usuário |
| **Classes** | Estrutura: classes, atributos, métodos e relações |
| **Sequência** | Troca de mensagens entre objetos ao longo do tempo |
| **Atividades** | Fluxo de um processo (tipo fluxograma) |
| **Estados** | Estados possíveis de um objeto e transições |

### Arquitetura de Software

Decisões estruturais de alto nível:

- **Monolito:** todo o sistema em uma única aplicação (simples de começar)
- **Camadas (Layered):** apresentação → negócio → dados
- **MVC:** Model-View-Controller, padrão dominante em aplicações web
- **Cliente-Servidor / APIs REST:** separação entre front-end e back-end
- **Microsserviços:** sistema dividido em serviços pequenos e independentes (complexidade alta — só vale em escala)

### Princípios de Projeto

- **Coesão alta** (cada módulo faz uma coisa bem feita) e **acoplamento baixo** (módulos pouco dependentes entre si)
- **SOLID:** cinco princípios de design orientado a objetos
- **DRY** (Don't Repeat Yourself) e **KISS** (Keep It Simple)
- **Padrões de Projeto (Design Patterns):** soluções catalogadas para problemas recorrentes (Singleton, Factory, Observer, Strategy...) — catálogo clássico do "Gang of Four" (1994)

---

## 6. Testes de Software

> [!INFO] Verificação × Validação
> **Verificação:** estamos construindo o produto *corretamente*? (sem defeitos)
> **Validação:** estamos construindo o produto *correto*? (o que o cliente precisa)

### Pirâmide de Testes

```
        /  E2E  \        ← poucos, lentos, caros (testam o sistema inteiro)
       /Integração\      ← médios (testam módulos conversando)
      /  Unitários  \    ← muitos, rápidos, baratos (testam funções isoladas)
```

- **Unitário:** testa a menor unidade (função/método) isoladamente
- **Integração:** testa módulos trabalhando juntos
- **Sistema / E2E:** testa o fluxo completo como o usuário usaria
- **Aceitação:** cliente valida que o software atende aos requisitos
- **Regressão:** garante que mudanças novas não quebraram o que já funcionava

### TDD — Test-Driven Development

Ciclo: **Red → Green → Refactor** (escreva o teste que falha → faça passar com o mínimo de código → melhore o código). 

> [!tip] Conexão com 2026
> Testes viraram a **rede de segurança nº 1** do desenvolvimento com IA: são eles que provam que o código gerado por um agente realmente funciona. Agentes modernos rodam os testes em loop até passar.

---

## 7. Qualidade, Métricas e Manutenção

### Qualidade (ISO/IEC 25010)

Atributos: adequação funcional, desempenho, compatibilidade, usabilidade, confiabilidade, **segurança**, **manutenibilidade**, portabilidade.

### Dívida Técnica

> [!warning] Conceito essencial
> **Dívida técnica** é o custo futuro de escolhas rápidas e malfeitas no presente ("depois eu arrumo"). Como dívida financeira: tem juros. Quanto mais tempo passa, mais caro fica consertar. A IA pode tanto *pagar* dívida técnica (refatorando) quanto *gerar* dívida em escala industrial (código aceito sem revisão).

### Tipos de Manutenção

- **Corretiva:** consertar defeitos
- **Adaptativa:** adaptar a mudanças de ambiente (nova lei, nova plataforma)
- **Evolutiva (perfectiva):** novas funcionalidades
- **Preventiva:** refatorar para facilitar o futuro

### Gerência de Configuração

- **Controle de versão** (Git): histórico de todas as mudanças
- Branches, merges, pull requests e code review
- Versionamento semântico (v2.4.1 = major.minor.patch)

---

## 8. Gerência de Projetos de Software

- **Estimativas:** prazo e esforço (pontos de função, story points)
- **Gestão de riscos:** identificar, analisar e mitigar
- **Pessoas:** o "Mítico Homem-Mês" (Brooks): *adicionar pessoas a um projeto atrasado o atrasa ainda mais*
- **Comunicação:** a maior causa de fracasso em projetos não é técnica

---

## Resumo da Parte Clássica

| Pilar | Pergunta que responde |
|-------|----------------------|
| Requisitos | O que construir? |
| Processo | Em que ordem e ritmo? |
| Design/Arquitetura | Como estruturar? |
| Implementação | Como escrever bem? |
| Testes | Como provar que funciona? |
| Qualidade/Manutenção | Como manter vivo por anos? |

➡️ **Próxima aula:** [[Metodologias Ágeis e DevOps]] — a revolução que substituiu a cascata e preparou o terreno para a era da IA.
