---
tipo: aula
resumo: "Metodologias ágeis (Scrum, Kanban, XP), Manifesto Ágil, histórias de usuário, DevOps, CI/CD e como essa cultura preparou o terreno para o desenvolvimento com IA."
tags:
  - aula
  - engenharia-de-software
  - agil
  - scrum
  - kanban
  - devops
  - ci-cd
---

# Metodologias Ágeis e DevOps

> [!quote] A virada de chave
> *Em 2001, dezessete programadores cansados de burocracia se reuniram numa estação de esqui em Utah e escreveram um manifesto de 68 palavras que mudou a indústria inteira.*

---

## 1. O Manifesto Ágil (2001)

> [!INFO] Os 4 valores
> - **Indivíduos e interações** mais que processos e ferramentas
> - **Software funcionando** mais que documentação abrangente
> - **Colaboração com o cliente** mais que negociação de contratos
> - **Responder a mudanças** mais que seguir um plano
>
> *"Ou seja, embora haja valor nos itens à direita, valorizamos mais os itens à esquerda."*

### Por que o ágil venceu a cascata?

| Cascata | Ágil |
|---------|------|
| Cliente vê o software só no final | Entrega funcional a cada 1–4 semanas |
| Mudança de requisito = problema | Mudança = oportunidade (esperada) |
| Aposta tudo num grande plano inicial | Aprende e corrige a rota continuamente |
| Feedback tardio (caro) | Feedback constante (barato) |

---

## 2. Scrum — o framework ágil mais usado

### Papéis

- **Product Owner (PO):** dono da visão do produto; prioriza o backlog
- **Scrum Master:** facilita o processo e remove impedimentos
- **Time de Desenvolvimento:** constrói o produto (multidisciplinar, auto-organizado)

### Eventos (cerimônias)

| Evento | Duração | Para quê |
|--------|---------|----------|
| **Sprint** | 1–4 semanas | Ciclo de trabalho com objetivo definido |
| **Sprint Planning** | Início da sprint | Selecionar o que será feito |
| **Daily** | 15 min/dia | Sincronizar o time (fiz / farei / impedimentos) |
| **Sprint Review** | Fim da sprint | Demonstrar o incremento ao cliente |
| **Retrospectiva** | Fim da sprint | Melhorar o *processo* do time |

### Artefatos

- **Product Backlog:** lista priorizada de tudo que o produto precisa
- **Sprint Backlog:** itens selecionados para a sprint atual
- **Incremento:** software funcionando entregue ao fim da sprint

---

## 3. Kanban e XP

### Kanban

- Quadro visual: **A Fazer → Fazendo → Feito** (colunas adaptáveis)
- **Limite de WIP** (work in progress): pouca coisa em andamento ao mesmo tempo = mais foco e fluxo
- Sem sprints: fluxo contínuo. Ótimo para manutenção e suporte

### Extreme Programming (XP)

Práticas técnicas que o Scrum não cobre:

- **Pair programming:** dois devs, um teclado (hoje: você + IA é o novo par)
- **TDD:** testes antes do código
- **Refatoração contínua:** melhorar o design sem mudar o comportamento
- **Integração contínua:** integrar o código várias vezes ao dia
- **Releases pequenos e frequentes**

---

## 4. Histórias de Usuário

Formato padrão para expressar requisitos no mundo ágil:

> [!example] Template
> **Como** [tipo de usuário], **quero** [ação] **para** [benefício].
>
> *Ex: Como aluno, quero receber notificação quando uma nota for lançada, para acompanhar meu desempenho sem precisar checar o sistema toda hora.*

- **Critérios de aceitação:** condições objetivas que definem "pronto"
- **INVEST:** boa história é Independente, Negociável, Valiosa, Estimável, Pequena (Small) e Testável
- **Priorização MoSCoW:** Must / Should / Could / Won't

> [!tip] Conexão com 2026
> História de usuário + critérios de aceitação é exatamente o formato que evoluiu para as **specs** que agentes de IA consomem no [[Engenharia de Contexto e Spec-Driven Development|Spec-Driven Development]].

---

## 5. DevOps — desenvolvimento + operações

> [!INFO] Definição
> DevOps é a **cultura** que une desenvolvimento (Dev) e operações (Ops) para entregar software com velocidade e confiabilidade, automatizando tudo que for possível entre o commit e a produção.

### CI/CD — o coração do DevOps

- **CI (Integração Contínua):** a cada push, o sistema automaticamente compila o código e roda todos os testes. Quebrou? O time é avisado em minutos.
- **CD (Entrega/Implantação Contínua):** se tudo passou, o software vai para produção automaticamente (ou com um clique).

```
commit → build → testes automáticos → análise de qualidade → deploy → monitoramento
```

Ferramentas típicas: **GitHub Actions**, GitLab CI, Jenkins.

### Práticas complementares

- **Infraestrutura como Código (IaC):** servidores definidos em arquivos versionados (Terraform, Docker)
- **Containers (Docker):** o app roda igual em qualquer máquina
- **Monitoramento e observabilidade:** logs, métricas e alertas em produção
- **Feature flags:** ligar/desligar funcionalidades sem novo deploy

---

## 6. Git e GitHub no fluxo profissional

1. Criar **branch** para a tarefa
2. Commits pequenos e frequentes
3. Abrir **Pull Request (PR)**
4. **Code review** por outro dev (hoje, frequentemente por IA também)
5. CI roda os testes automaticamente
6. Merge na branch principal → deploy

---

## 7. Por que essa aula importa na era da IA

> [!tip] O ágil preparou o terreno para a IA
> - **Iteração rápida** → agentes de IA iteram em segundos, não em sprints
> - **Testes automatizados** → é o que permite confiar em código gerado por IA
> - **CI/CD** → é o que permite que um agente faça deploy com segurança
> - **Histórias e critérios de aceitação** → viraram as specs que a IA consome
> - **Code review** → virou a habilidade humana mais importante de todas
>
> Times que já eram ágeis e automatizados absorveram IA em semanas. Times presos na cascata manual ainda estão tentando.

➡️ **Próxima aula:** [[Desenvolvimento de Software com IA]] — a maior mudança da história da engenharia de software.
