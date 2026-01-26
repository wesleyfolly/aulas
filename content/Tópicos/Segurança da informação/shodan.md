---
tipo: aula
resumo: "Motor de busca para dispositivos conectados à Internet, permitindo descobrir servidores, câmeras, IoT e sistemas vulneráveis."
tags:
  - aula
  - seguranca-da-informacao
  - osint
  - shodan
  - reconhecimento
  - iot
---

# Shodan

> [!quote] O Google dos Hackers
> *Shodan não indexa sites — ele indexa dispositivos conectados à Internet.*

---

## 🔍 O que é Shodan?

> [!success] Definição
> **Shodan** é um motor de busca que varre a Internet e indexa informações sobre dispositivos conectados: servidores, roteadores, câmeras de segurança, sistemas industriais, IoT e muito mais.

[🔗 Shodan - Acesso ao Site](https://www.shodan.io/)

### O que o Shodan Encontra?

| Tipo | Exemplos |
|------|----------|
| **Servidores** | Web, FTP, SSH, Telnet |
| **Câmeras** | IP cameras, DVRs, NVRs |
| **IoT** | Smart TVs, geladeiras, termostatos |
| **Industrial** | SCADA, PLCs, sistemas de controle |
| **Redes** | Roteadores, switches, firewalls |
| **Bancos de dados** | MongoDB, Elasticsearch, Redis expostos |

---

## 💻 Filtros de Busca

> [!tip] Operadores Principais

| Filtro | Descrição | Exemplo |
|--------|-----------|---------|
| `country:` | Filtrar por país | `country:BR` |
| `city:` | Filtrar por cidade | `city:"São Paulo"` |
| `port:` | Filtrar por porta | `port:22` |
| `os:` | Sistema operacional | `os:windows` |
| `product:` | Produto/software | `product:Apache` |
| `hostname:` | Nome do host | `hostname:.gov.br` |
| `net:` | Range de IP | `net:200.0.0.0/8` |
| `org:` | Organização | `org:"Google"` |

### Exemplos de Buscas

```
# Câmeras no Brasil
webcam country:BR

# Servidores Apache em São Paulo
product:Apache city:"São Paulo"

# Sistemas SCADA expostos
port:502 country:BR

# MongoDB sem autenticação
product:MongoDB -authentication

# Roteadores com senha padrão
"default password" country:BR
```

---

## 🎯 Buscas Interessantes (Dorks)

> [!warning] Use com Responsabilidade

| Busca | O que Encontra |
|-------|----------------|
| `"Server: SQ-WEBCAM"` | Câmeras de segurança |
| `"port:5900 authentication disabled"` | VNC sem senha |
| `"X-Plex-Token"` | Servidores Plex expostos |
| `"MongoDB Server Information"` | MongoDB exposto |
| `"port:9200 elastic"` | Elasticsearch aberto |
| `"authentication disabled" port:5432` | PostgreSQL sem auth |

---

## 🛠️ Ferramentas Shodan

> [!info] Recursos Adicionais

| Ferramenta | Descrição |
|------------|-----------|
| **Shodan CLI** | Interface de linha de comando |
| **Shodan API** | Integração programática |
| **Shodan Monitor** | Monitoramento de IPs/redes |
| **Shodan Maps** | Visualização geográfica |
| **Shodan Images** | Galeria de screenshots |

### Instalando o CLI

```bash
pip install shodan
shodan init SUA_API_KEY
shodan search "Apache"
```

---

## ⚠️ Considerações Éticas

> [!danger] Atenção
> - **Não acesse** sistemas sem autorização
> - Use apenas para **reconhecimento autorizado**
> - Shodan mostra o que já está **exposto publicamente**
> - Reportar vulnerabilidades de forma **responsável**

