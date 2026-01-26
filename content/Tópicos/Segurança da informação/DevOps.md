---
tipo: aula
resumo: "Introdução ao DevOps e sua relação com segurança da informação (DevSecOps)."
tags:
  - aula
  - seguranca-da-informacao
  - devops
  - devsecops
  - ci-cd
---

# DevOps

> [!quote] Cultura de Colaboração
> *DevOps é a união de desenvolvimento e operações para entregar software de forma mais rápida e confiável.*

---

## 🎯 O que é DevOps?

> [!success] Definição
> **DevOps** é uma cultura e conjunto de práticas que une desenvolvimento de software (Dev) e operações de TI (Ops) para encurtar o ciclo de desenvolvimento e entregar software de alta qualidade continuamente.

[🔗 DevOps - Wikipedia](https://pt.wikipedia.org/wiki/DevOps)

---

## 🔄 Ciclo DevOps

> [!info] Etapas do Pipeline

```
Plan → Code → Build → Test → Release → Deploy → Operate → Monitor
  ↑                                                              ↓
  └──────────────────── Feedback ────────────────────────────────┘
```

---

## 🔐 DevSecOps

> [!warning] Segurança Integrada
> **DevSecOps** integra segurança em todas as fases do pipeline DevOps, em vez de deixá-la para o final.

### Práticas de Segurança

| Fase | Prática de Segurança |
|------|---------------------|
| **Plan** | Modelagem de ameaças |
| **Code** | Análise estática (SAST) |
| **Build** | Scan de dependências |
| **Test** | DAST, Testes de segurança |
| **Deploy** | Infrastructure as Code seguro |
| **Operate** | Monitoramento de segurança |

---

## 🛠️ Ferramentas Relacionadas

> [!tip] Stack DevSecOps

| Categoria | Ferramentas |
|-----------|-------------|
| **CI/CD** | Jenkins, GitLab CI, GitHub Actions |
| **Containers** | Docker, Kubernetes |
| **IaC** | Terraform, Ansible |
| **SAST** | SonarQube, Checkmarx |
| **DAST** | OWASP ZAP, Burp Suite |
| **Secrets** | HashiCorp Vault, AWS Secrets Manager |

---

## 📚 Por que é Importante?

> [!success] Benefícios

- Entregas mais rápidas e frequentes
- Menor tempo de recuperação de falhas
- Segurança integrada desde o início
- Automação de processos repetitivos
- Melhor colaboração entre equipes

