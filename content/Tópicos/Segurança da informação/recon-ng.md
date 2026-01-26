---
tipo: aula
resumo: "Framework OSINT modular para reconhecimento automatizado, coleta de informações sobre pessoas, empresas e domínios."
tags:
  - aula
  - seguranca-da-informacao
  - osint
  - recon-ng
  - reconhecimento
---

# Recon-ng

> [!quote] Framework de Inteligência
> *Recon-ng automatiza a coleta de informações públicas sobre alvos, organizando tudo em workspaces.*

---

## 🔍 O que é Recon-ng?

> [!success] Definição
> O **Recon-NG** é uma ferramenta OSINT (Open Source Intelligence) que vasculha dados públicos e acessíveis para recolher informações sobre pessoas, empresas, domínios e muito mais.

### Características

| Característica | Descrição |
|----------------|-----------|
| **Modular** | Centenas de módulos para diferentes fontes |
| **Workspaces** | Organiza informações por projeto/alvo |
| **Banco de dados** | Armazena todos os dados coletados |
| **API integrada** | Conecta com diversas fontes de dados |
| **Pré-instalado** | Já vem no Kali Linux |

---

## 💻 Uso Básico

> [!tip] Primeiros Passos

### Iniciando o Recon-ng

```bash
# Iniciar a ferramenta
recon-ng
```

### Gerenciando Workspaces

```bash
# Criar novo workspace
workspaces create aula_teste

# Listar workspaces
workspaces list

# Selecionar workspace
workspaces select nome_workspace

# Deletar workspace
workspaces delete nome_workspace
```

### Comandos Principais

| Comando | Função |
|---------|--------|
| `marketplace search` | Buscar módulos disponíveis |
| `marketplace install` | Instalar um módulo |
| `modules load` | Carregar um módulo |
| `info` | Ver informações do módulo |
| `options set` | Configurar opções |
| `run` | Executar o módulo |
| `show` | Ver dados coletados |

---

## 🛠️ Módulos Populares

> [!info] Categorias de Módulos

| Categoria | Exemplo | Função |
|-----------|---------|--------|
| **recon/domains-hosts** | hackertarget | Descobrir hosts de um domínio |
| **recon/domains-contacts** | whois_pocs | Extrair contatos do WHOIS |
| **recon/hosts-hosts** | resolve | Resolver nomes para IPs |
| **recon/contacts-profiles** | fullcontact | Encontrar perfis sociais |
| **reporting** | html | Gerar relatórios |

---

## 📚 Recursos de Aprendizado

> [!tip] Tutoriais e Documentação

| Recurso | Link |
|---------|------|
| **Playlist Oficial** | [Recon-ng V5 - Introduction And New Updates](https://www.youtube.com/watch?v=1RCqOhb0yxE&list=PLBf0hzazHTGOg9taK90uFjdcb8UgGfRKZ) |
| **Tutorial Tiago Tavares** | [Recon-NG](https://tiagotavares.io/2020/07/recon-ng/) |
| **Introdução (PT-BR)** | [Introdução ao Recon-NG parte 1](https://medium.com/canivete-sui%C3%A7o-hacker/recon-ng-1-f7296ae2f742) |

---

## ⚠️ Considerações

> [!warning] Uso Responsável
> - Utilize apenas para alvos autorizados
> - Alguns módulos requerem chaves de API
> - Respeite os termos de uso das APIs
> - Documente suas descobertas de forma ética

