---
tipo: aula
resumo: "Motor de busca para dispositivos conectados à Internet, alternativa ao Shodan com foco em certificados SSL e análise de infraestrutura."
tags:
  - aula
  - seguranca-da-informacao
  - osint
  - censys
  - reconhecimento
---

# Censys

> [!quote] Mapeando a Internet
> *Censys varre todos os IPs do planeta e fornece uma interface para consultar, pesquisar e filtrar informações.*

---

## 🔍 O que é Censys?

> [!success] Definição
> **Censys** é um motor de busca como se fosse o Google, porém ao invés de sites, ele funciona para **dispositivos ligados à Internet**.

[🔗 Censys Search](https://search.censys.io/)

### Diferenças do Shodan

| Aspecto | Censys | Shodan |
|---------|--------|--------|
| **Foco** | Certificados SSL, infraestrutura | Dispositivos IoT, banners |
| **Dados acadêmicos** | Sim | Parcial |
| **Interface** | Mais moderna | Clássica |
| **Exportação** | JSON, CSV | JSON |

---

## 💻 Filtros de Busca

> [!tip] Operadores Principais

| Filtro | Descrição | Exemplo |
|--------|-----------|---------|
| `location.country_code:` | Filtrar por país | `location.country_code: BR` |
| `location.city:` | Filtrar por cidade | `location.city="Campos"` |
| `metadata.os:` | Sistema operacional | `metadata.os:Ubuntu` |
| `services.port:` | Porta específica | `services.port:80` |
| `services.http.response.html_title:` | Título da página | Título específico |
| CIDR notation | Range de IP | `23.0.0.0/24` |

---

## 🎯 Exemplos de Buscas

> [!info] Filtros Interessantes

### Por Localização

```
# Dispositivos em Bom Jesus do Itabapoana
location.city="Bom Jesus do Itabapoana"

# Dispositivos no Brasil
location.country_code: BR

# Dispositivos em Campos dos Goytacazes
location.city="Campos"
```

### Por Sistema/Software

```
# Servidores Ubuntu
metadata.os:Ubuntu

# Servidores JBoss
80.http.get.title:"Welcome to Jboss"

# Diretórios expostos
80.http.get.title:"Index of"
```

### Por Range de IP

```
# Bloco de IPs específico
23.0.0.0/24

# IPs de uma organização
191.37.254.0/24
```

---

## 🛠️ Recursos do Censys

> [!success] Funcionalidades

| Recurso | Descrição |
|---------|-----------|
| **Host Search** | Busca por IPs e dispositivos |
| **Certificate Search** | Busca por certificados SSL |
| **Data Export** | Exportar dados em JSON/CSV |
| **API** | Acesso programático |
| **Histórico** | Ver mudanças ao longo do tempo |

---

## 📊 Comparação: Censys vs Shodan

| Critério | Censys | Shodan |
|----------|--------|--------|
| **Preço** | Gratuito (limitado) | Gratuito (limitado) |
| **Certificados SSL** | ⭐ Excelente | Bom |
| **IoT/Câmeras** | Bom | ⭐ Excelente |
| **SCADA/ICS** | Bom | ⭐ Excelente |
| **Interface** | Moderna | Funcional |
| **API** | Sim | Sim |

---

## ⚠️ Considerações Éticas

> [!danger] Atenção
> - Use apenas para **reconhecimento autorizado**
> - Não acesse sistemas sem permissão
> - Dados públicos ≠ autorização de acesso
> - Reporte vulnerabilidades de forma responsável

