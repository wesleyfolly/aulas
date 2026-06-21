---
title: "Relatório para o Blue Team — MODELO"
---

# Relatório de Correção — Blue Team

> **Como usar:** para CADA achado do Relatório do Ataque, preencha os quatro campos abaixo.
> Este relatório é para quem vai **corrigir** (Dev / Infra / SOC). Eles não querem saber como
> você invadiu — querem saber o que fazer, em que ordem, e como ter certeza de que fechou.

**Sistema:** \<lab da disciplina — Teste de Intrusão Express\>
**Elaborado por:** \<seu nome\>
**Data:** \<dd/mm/aaaa\>

---

## 1. Plano de Correção Priorizado

*Ordene do mais urgente ao menos urgente (severidade + exposição).*

| Ordem | ID | Achado | Severidade | Prazo (SLA) | Status |
|-------|----|--------|-----------|-------------|--------|
| 1 | ACHADO-01 | \<título\> | Crítico | 24–72 h | Aberto |
| 2 | ACHADO-02 | \<título\> | Alto | 30 dias | Aberto |
| 3 | ACHADO-03 | \<título\> | Médio | 60 dias | Aberto |

**Prazos de referência:** 🔴 Crítico 24–72 h · 🟠 Alto até 30 dias · 🟡 Médio até 60 dias · 🟢 Baixo até 90 dias.
*Falha em exploração ativa (CISA KEV) ou em ativo crítico → trate como mais urgente.*

## 2. Correções Detalhadas

*Repita o bloco abaixo para cada achado.*

### ACHADO-01 — \<título\> — Severidade \<Crítico\> · SLA \<24–72 h\>

**🔧 Como corrigir** *(passo a passo específico — com comando/config, não "aplique patches")*
1. \<ação 1\>
2. \<ação 2\>
3. \<ação 3\>

**👁️ Como detectar** *(que log/alerta pega esse ataque + técnica MITRE ATT&CK)*
- \<ex.: alertar conexões na porta X de hosts não autorizados\>
- **MITRE ATT&CK:** \<ex.: T1190 — Exploit Public-Facing Application\>

**✅ Como validar (reteste)** *(o comando/teste que prova que fechou)*
```
<comando de reteste>
```
- **Esperado após a correção:** \<ex.: porta fechada / "not vulnerable"\>

---

## 3. Resultado do Reteste

*Preencha depois de aplicar (ou simular) as correções e retestar.*

| ID | Corrigido? | Reteste confirma fechado? | Status final |
|----|-----------|---------------------------|--------------|
| ACHADO-01 | \<Sim/Não\> | \<Sim/Não\> | \<Fechado / Aberto\> |
| ACHADO-02 | \<...\> | \<...\> | \<...\> |

> *Cada achado é um item de ciclo de vida: só vira **Fechado** quando o reteste confirma.
> Anexe a prova do reteste (print/saída) ao achado correspondente.*
