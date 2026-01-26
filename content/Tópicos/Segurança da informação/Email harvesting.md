---
tipo: aula
resumo: "Técnicas e ferramentas para coleta de endereços de e-mail de um domínio alvo durante reconhecimento."
tags:
  - aula
  - seguranca-da-informacao
  - osint
  - email-harvesting
  - reconhecimento
  - theharvester
---

# Email Harvesting

> [!quote] Coletando Contatos
> *E-mails são a porta de entrada para ataques de phishing e engenharia social.*

---

## 🎯 O que é Email Harvesting?

> [!success] Definição
> **Email Harvesting** é o processo de coletar endereços de e-mail de um determinado domínio ou alvo.

### Informações Coletáveis

| Tipo | Utilidade |
|------|-----------|
| **E-mails** | Phishing, engenharia social |
| **Subdomínios** | Mapear infraestrutura |
| **Hosts** | Identificar dispositivos |
| **Nomes de funcionários** | Engenharia social direcionada |
| **Portas abertas** | Identificar serviços |
| **Banners** | Versões de software |

---

## 🛠️ theHarvester

> [!tip] Ferramenta Principal
> **theHarvester** é a ferramenta mais utilizada para email harvesting. Já vem instalada no Kali Linux.

[🔗 GitHub - theHarvester](https://github.com/laramies/theHarvester)

### Uso Básico

```bash
# Sintaxe básica
theHarvester -d <dominio> -l <limite> -b <fonte>

# Exemplo: Coletar do Google
theHarvester -d kali.org -l 500 -b google

# Exemplo: Coletar do LinkedIn
theHarvester -d empresa.com.br -l 200 -b linkedin
```

### Parâmetros Importantes

| Parâmetro | Descrição |
|-----------|-----------|
| `-d` | Domínio alvo |
| `-l` | Limite de resultados |
| `-b` | Fonte de busca (google, bing, linkedin, etc.) |
| `-f` | Salvar em arquivo |
| `-v` | Verificar hosts |

### Fontes Disponíveis

| Fonte | Tipo de Dados |
|-------|---------------|
| `google` | E-mails, hosts |
| `bing` | E-mails, hosts |
| `linkedin` | Nomes de funcionários |
| `twitter` | Perfis relacionados |
| `dnsdumpster` | DNS, subdomínios |
| `crtsh` | Certificados SSL |
| `all` | Todas as fontes |

---

## 💻 Exemplos Práticos

### Coleta Completa

```bash
# Usar todas as fontes
theHarvester -d alvo.com.br -l 500 -b all

# Salvar resultado em arquivo
theHarvester -d alvo.com.br -l 500 -b all -f resultado
```

### Verificar Hosts

```bash
# Coletar e verificar se hosts estão ativos
theHarvester -d alvo.com.br -l 500 -b google -v
```

---

## 🌐 Alternativas Online

> [!info] Ferramentas Web

| Ferramenta | URL | Descrição |
|------------|-----|-----------|
| **Hunter.io** | hunter.io | Busca de e-mails corporativos |
| **Phonebook.cz** | phonebook.cz | Busca em vazamentos |
| **Snov.io** | snov.io | Encontrar e-mails |
| **Clearbit Connect** | clearbit.com | Extensão Chrome |

---

## 🔍 Outras Ferramentas

| Ferramenta | Descrição |
|------------|-----------|
| **Infoga** | Coleta informações de e-mails |
| **EmailHarvester** | Script Python para coleta |
| **Recon-ng** | Módulos de harvesting |
| **Maltego** | Visualização de conexões |

---

## ⚠️ Considerações Éticas

> [!danger] Atenção
> - Use apenas em alvos **autorizados**
> - E-mails coletados são para **reconhecimento**, não spam
> - Respeite a **LGPD** e legislações de privacidade
> - Documente suas descobertas de forma ética

