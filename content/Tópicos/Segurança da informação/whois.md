---
tipo: aula
resumo: "Ferramenta WHOIS para consulta de informações sobre domínios e descoberta de DNS reverso."
tags:
  - aula
  - seguranca-da-informacao
  - osint
  - whois
  - reconhecimento
---

# WHOIS

> [!quote] Quem é o Dono?
> *WHOIS é uma ferramenta essencial para descobrir informações sobre a propriedade e configuração de um domínio.*

---

## 🔍 O que é WHOIS?

> [!success] Definição
> Ferramenta para consulta de informações públicas sobre um domínio, incluindo proprietário, contatos técnicos, servidores DNS e datas de registro.

---

## 💻 Uso via Terminal

### Comando Básico

```bash
whois iff.edu.br
```

### Exemplo de Saída

```bash
domain:      iff.edu.br
owner:       INST. FED. DE EDUCACAO CIENCIA E TECNO FLUMINENSE
ownerid:     10.779.511/0001-07
responsible: Luiz Augusto Caldas Pereira
country:     BR
owner-c:     ROASA107
tech-c:      ANACU15
nserver:     yoda.iff.edu.br 191.37.254.33
nserver:     sucrilhos.iff.edu.br 191.37.254.11
nserver:     atlantis.iff.edu.br 191.37.254.23
nserver:     cheetos.iff.edu.br 191.37.254.6
created:     20090114 #5183289
changed:     20170201
status:      published
```

---

## 📋 Informações Obtidas

| Campo | Descrição |
|-------|-----------|
| **domain** | Nome do domínio |
| **owner** | Proprietário do domínio |
| **ownerid** | CNPJ/CPF do proprietário |
| **responsible** | Pessoa responsável |
| **nserver** | Servidores DNS |
| **created** | Data de criação |
| **changed** | Data da última alteração |
| **status** | Status do registro |

---

## 🌐 Ferramentas Online

> [!tip] Alternativas Web
> Caso prefira não usar o terminal, existem ferramentas online.

| Ferramenta | URL |
|------------|-----|
| **Registro.br** | [registro.br/whois](https://registro.br/tecnologia/ferramentas/whois/) |
| **Who.is** | [who.is](https://who.is/) |
| **ICANN Lookup** | [lookup.icann.org](https://lookup.icann.org/) |

---

## 🔄 Descoberta Reversa de DNS

> [!info] Reverse IP Lookup
> Listar todos os domínios que apontam para um determinado IP. Útil para descobrir outros sites hospedados no mesmo servidor.

[🔗 YouGetSignal - Reverse IP Lookup](https://www.yougetsignal.com/tools/web-sites-on-web-server/)

### Por que isso é útil?

- Descobrir outros domínios do mesmo proprietário
- Identificar sites em shared hosting
- Mapear a infraestrutura do alvo

---

## 🎯 Informações Úteis para Pentest

> [!success] O que procurar no WHOIS

1. **Servidores DNS** — Possíveis alvos de enumeração
2. **Contatos técnicos** — E-mails para phishing/engenharia social
3. **Data de criação** — Sites muito novos podem ser suspeitos
4. **Registrador** — Pode indicar vulnerabilidades conhecidas

---

## ⚠️ Limitações

> [!warning] Privacidade WHOIS
> Muitos domínios utilizam serviços de privacidade que ocultam informações do proprietário. Nesses casos, você verá dados genéricos do provedor de privacidade.

