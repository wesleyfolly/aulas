---
tipo: aula
resumo: "Técnicas e ferramentas para identificar sistemas e serviços vulneráveis na Internet."
tags:
  - aula
  - seguranca-da-informacao
  - reconhecimento
  - osint
  - vulnerabilidades
---

# Descobrindo Alvos Vulneráveis

> [!quote] Encontrando Pontos Fracos
> *Antes de explorar, é preciso descobrir onde estão as vulnerabilidades.*

---

## 🎯 Técnicas e Ferramentas

> [!info] Arsenal de Descoberta

### Motores de Busca Especializados

| Ferramenta | Descrição | Link |
|------------|-----------|------|
| **Shodan** | Busca dispositivos conectados | [shodan.io](https://www.shodan.io) |
| **Censys** | Infraestrutura e certificados | [search.censys.io](https://search.censys.io/) |
| **ZoomEye** | Motor de busca chinês | zoomeye.org |
| **Fofa** | Similar ao Shodan | fofa.so |

### Técnicas de Busca

| Técnica | Descrição |
|---------|-----------|
| [[Google hacking\|Google Hacking (Dorking)]] | Buscas avançadas no Google |
| **Certificate Transparency** | Busca por certificados SSL |
| **DNS Enumeration** | Descoberta de subdomínios |
| **Port Scanning** | Identificação de serviços |

---

## 🔍 Exemplos de Dorks

> [!tip] Buscas para Encontrar Alvos

### Google

```
intitle:"Index of" inurl:/backup
filetype:sql "password"
site:*.gov.br inurl:login
```

### Shodan

```
port:22 country:BR
"default password"
"MongoDB Server Information"
```

### Censys

```
location.country_code: BR
services.http.response.html_title:"Index of"
```

---

## ⚠️ Considerações Éticas

> [!danger] Atenção
> - **Descobrir** vulnerabilidades ≠ **explorar** vulnerabilidades
> - Apenas realize testes em sistemas **autorizados**
> - Considere programas de **bug bounty** para prática legal
> - Reporte vulnerabilidades de forma **responsável**

