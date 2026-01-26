---
tipo: aula
resumo: "Técnicas e ferramentas para descobrir subdomínios e registros DNS de um alvo durante a fase de reconhecimento."
tags:
  - aula
  - seguranca-da-informacao
  - dns
  - enumeracao
  - reconhecimento
  - osint
---

# DNS Enumeration (Enumeração de DNS)

> [!quote] Mapeando o Território
> *Enumerar DNS é descobrir os subdomínios de um determinado domínio — revelando a estrutura oculta de uma organização.*

---

## 🎯 O que é DNS Enumeration?

> [!success] Definição
> **Enumerar DNS** é o processo de descobrir todos os **subdomínios**, **registros DNS** e **servidores de nomes** associados a um domínio alvo.

### Por que é importante?

| Objetivo | Benefício |
|----------|-----------|
| **Descobrir subdomínios** | mail.empresa.com, vpn.empresa.com, dev.empresa.com |
| **Identificar serviços** | Servidores web, e-mail, VPN expostos |
| **Mapear infraestrutura** | Entender a arquitetura da organização |
| **Encontrar alvos** | Sistemas esquecidos ou mal configurados |

---

## 🛠️ Ferramentas

> [!tip] Arsenal para Enumeração

### Ferramentas de Linha de Comando

| Ferramenta | Descrição |
|------------|-----------|
| **host** | Consulta DNS simples |
| **dig** | Ferramenta avançada de consulta DNS |
| **nslookup** | Consulta interativa DNS |
| **dnsenum** | Enumeração automática de DNS |
| **dnsmap** | Força bruta de subdomínios |
| **dnsrecon** | Enumeração completa de DNS |
| **fierce** | Descoberta de DNS e subdomínios |
| **sublist3r** | Enumeração de subdomínios via OSINT |

---

## 💻 Exemplos Práticos

### Usando `host`

```bash
# Consulta básica
host exemplo.com

# Consultar registros MX
host -t MX exemplo.com

# Consultar registros NS
host -t NS exemplo.com

# Transferência de zona (se permitida)
host -l exemplo.com ns1.exemplo.com
```

### Usando `dig`

```bash
# Consulta básica
dig exemplo.com

# Consultar todos os registros
dig exemplo.com ANY

# Consultar registros específicos
dig exemplo.com MX
dig exemplo.com NS
dig exemplo.com TXT

# Tentar transferência de zona
dig axfr @ns1.exemplo.com exemplo.com
```

### Usando `dnsenum`

```bash
# Enumeração completa
dnsenum exemplo.com

# Com wordlist personalizada
dnsenum --enum -f /usr/share/wordlists/subdomains.txt exemplo.com
```

### Usando `dnsmap`

```bash
# Força bruta de subdomínios
dnsmap exemplo.com

# Com wordlist específica
dnsmap exemplo.com -w wordlist.txt
```

---

## 📋 Tipos de Registros DNS

> [!info] Registros Importantes

| Tipo | Descrição |
|------|-----------|
| **A** | Endereço IPv4 |
| **AAAA** | Endereço IPv6 |
| **MX** | Servidor de e-mail |
| **NS** | Servidor de nomes |
| **TXT** | Texto (SPF, DKIM, etc.) |
| **CNAME** | Alias/apelido |
| **SOA** | Informações de autoridade |
| **PTR** | Reverso (IP → domínio) |

---

## 🌐 Ferramentas Online

> [!tip] Alternativas Web

| Ferramenta | URL |
|------------|-----|
| **DNSdumpster** | [dnsdumpster.com](https://dnsdumpster.com/) |
| **SecurityTrails** | [securitytrails.com](https://securitytrails.com/) |
| **VirusTotal** | [virustotal.com](https://www.virustotal.com/) |
| **crt.sh** | [crt.sh](https://crt.sh/) — Certificados SSL |

---

## ⚠️ Considerações Éticas

> [!danger] Atenção
> - Apenas enumere domínios de alvos **autorizados**
> - Transferência de zona não autorizada pode ser ilegal
> - Força bruta massiva pode ser detectada e bloqueada

