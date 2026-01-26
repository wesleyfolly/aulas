---
tipo: aula
resumo: "Como documentar e reportar os resultados de um teste de penetração de forma profissional e estruturada."
tags:
  - aula
  - seguranca-da-informacao
  - documentacao
  - report
  - pentest
---

# Documentação / Report

> [!quote] Comunicando Resultados
> *Um pentest só tem valor se os resultados forem comunicados de forma clara e acionável.*

---

## 📋 Checklist Técnico

### Pré-Pentest

> [!tip] Preparação

- [ ] Definição do alvo e escopo
- [ ] Criar uma pasta para o pentest
- [ ] Direcionar saída dos comandos para arquivos na pasta

### Ferramentas de Coleta

- [ ] dnsenum
- [ ] wafw00f
- [ ] whois
- [ ] nmap (hosts e portas)
- [ ] nikto
- [ ] gobuster/dirb

---

## 📄 Estrutura do Relatório

> [!success] Checklist da Documentação

| Seção | Conteúdo |
|-------|----------|
| **1. Capa** | Título, data, classificação |
| **2. Identificação** | Dados do profissional/empresa |
| **3. Sumário Executivo** | Resumo para gestores (não técnico) |
| **4. Metodologia** | Ferramentas e técnicas utilizadas |
| **5. Vulnerabilidades** | Lista detalhada com criticidade |
| **6. Conclusão** | Avaliação geral da segurança |
| **7. Recomendações** | Ações de remediação |

---

## 🔧 Modelo de Relatório

> [!info] Template Disponível

[📄 Modelo de Documentação de um Pentest](https://docs.google.com/document/d/1T2NA_jyfU24Ssg8XRUbPNABIRpysIjD-HuzvV7Z20HU/edit?usp=sharing)

**Como usar:**
1. Clique em **Arquivo**
2. Selecione **Fazer uma cópia**
3. Edite no seu Google Drive ou baixe para edição offline

---

## 📊 Classificação de Vulnerabilidades

> [!warning] Níveis de Criticidade

| Nível | CVSS | Descrição |
|-------|------|-----------|
| **Crítico** | 9.0 - 10.0 | Exploração imediata, alto impacto |
| **Alto** | 7.0 - 8.9 | Fácil exploração, impacto significativo |
| **Médio** | 4.0 - 6.9 | Exploração moderada, impacto limitado |
| **Baixo** | 0.1 - 3.9 | Difícil exploração, baixo impacto |
| **Info** | 0.0 | Informacional, sem impacto direto |

---

## 📚 Exemplos e Modelos

> [!tip] Repositório de Referências

| Recurso | Descrição |
|---------|-----------|
| [[Recursos/Segurança da informação/Documentação Report/20172S_SILVAFelipeLeonardoTeixeira_OD0264.pdf\|Exemplo Acadêmico]] | Trabalho de conclusão sobre pentest |
| [PrimoConnect Sample](https://pentestreports.com/reports/PrimoConnect/SAMPLE+Security+Testing+Findings.pdf) | Relatório comercial de exemplo |
| [Offensive Security Sample](https://www.offensive-security.com/reports/sample-penetration-testing-report.pdf) | Modelo da Offensive Security |

![[Recursos/Segurança da informação/seguranca-da-informacao.png|Segurança da Informação]]

---

## 🛠️ Ferramentas de Documentação

> [!info] Opções para Relatórios

| Ferramenta | Tipo | Descrição |
|------------|------|-----------|
| **Dradis** | Open Source | Framework de documentação |
| **Faraday** | Open Source | IDE para pentests |
| **PwnDoc** | Open Source | Gerador de relatórios |
| **Serpico** | Open Source | Relatórios colaborativos |
| **Cherry Tree** | Notes | Organização hierárquica |
| **Obsidian** | Notes | Markdown com links |

---

## ✅ Boas Práticas

> [!success] Dicas para um Bom Relatório

1. **Seja claro** — Evite jargões desnecessários
2. **Inclua evidências** — Screenshots, logs, comandos
3. **Priorize** — Vulnerabilidades mais críticas primeiro
4. **Seja objetivo** — Fatos, não opiniões
5. **Recomende soluções** — Não apenas problemas
6. **Dois públicos** — Sumário executivo + detalhes técnicos

