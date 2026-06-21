---
title: "Relatório do Ataque (Red) — MODELO"
---

# Relatório de Teste de Intrusão

> **Como usar este modelo:** substitua tudo entre `<...>` pelos seus dados. Apague as
> instruções em itálico ao final. Documento confidencial — só sobre o **lab autorizado**.

**Cliente / Sistema:** \<lab da disciplina — Teste de Intrusão Express\>
**Alvo (escopo):** \<host/serviço testado, ex.: container "alvo" (Metasploitable 2)\>
**Testador:** \<seu nome\>
**Data:** \<dd/mm/aaaa\>
**Classificação:** Confidencial

---

## 1. Sumário Executivo

*Meia página, SEM jargão técnico. Para quem decide, não para quem corrige.*

- **Postura geral de risco:** \<Crítico / Alto / Médio / Baixo\>
- **O que um atacante consegue, em uma frase:** \<ex.: "assumir o controle total do servidor em menos de 5 minutos, sem senha"\>
- **Achados mais graves:** \<liste 2-3 em linguagem de negócio\>
- **Recomendação prioritária:** \<a ação mais urgente\>

## 2. Escopo e Metodologia

- **Testado:** \<o que entrou no teste\>
- **Fora do escopo:** \<o que NÃO foi tocado\>
- **Janela:** \<quando\>
- **Padrão seguido:** \<PTES / OWASP WSTG / Master checklist da disciplina\>
- **Ferramentas:** \<nmap, sqlmap, metasploit, ...\>

## 3. Resumo dos Achados

| ID | Achado | Severidade | CVSS |
|----|--------|-----------|------|
| ACHADO-01 | \<título\> | \<Crítico\> | \<9.8\> |
| ACHADO-02 | \<título\> | \<Alto\> | \<7.5\> |
| ACHADO-03 | \<título\> | \<Médio\> | \<5.0\> |

## 4. Achados Detalhados

*Repita o bloco abaixo para cada achado.*

### ACHADO-01 — \<título objetivo\>

- **Severidade:** \<Crítico / Alto / Médio / Baixo\>
- **CVSS:** \<nota\> — `<vetor, ex.: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H>`
- **Descrição:** \<o problema, em 2-3 frases\>
- **Evidência (PoC):**

```
<comando exato que você rodou>
<saída obtida>
```

\<insira aqui o print datado: nome_do_arquivo.png\>

- **Impacto:** \<o que um atacante REAL conseguiria com isso\>

---

> *Calculadora CVSS 4.0: https://www.first.org/cvss/calculator/4.0*
> *Severidade: Crítico 9.0–10.0 · Alto 7.0–8.9 · Médio 4.0–6.9 · Baixo 0.1–3.9*
> *Lembre: a remediação detalhada de cada achado vai no **Relatório para o Blue Team**.*
