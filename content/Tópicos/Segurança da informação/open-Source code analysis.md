---
tipo: aula
resumo: "Análise de código-fonte aberto para identificar vulnerabilidades, credenciais expostas e informações sensíveis."
tags:
  - aula
  - seguranca-da-informacao
  - osint
  - code-analysis
  - github
  - reconhecimento
---

# Open-Source Code Analysis

> [!quote] Segredos no Código
> *Repositórios públicos frequentemente contêm credenciais, chaves de API e informações sensíveis expostas acidentalmente.*

---

## 🎯 O que é?

> [!success] Definição
> **Análise de código open-source** é o processo de examinar repositórios públicos em busca de vulnerabilidades, credenciais vazadas e informações sensíveis.

### O que Procurar?

| Tipo | Exemplos |
|------|----------|
| **Credenciais** | Senhas, tokens de API |
| **Configurações** | Arquivos .env, config.yml |
| **Chaves** | AWS, Azure, GCP credentials |
| **Informações internas** | IPs, hostnames, endpoints |
| **Vulnerabilidades** | Código inseguro, dependências |

---

## 🛠️ Ferramentas

> [!tip] Arsenal para Análise de Código

| Ferramenta | Descrição |
|------------|-----------|
| **GitLeaks** | Detecta segredos em repositórios Git |
| **TruffleHog** | Busca credenciais em histórico Git |
| **git-secrets** | Previne commits com segredos |
| **Gitrob** | Reconhecimento em organizações GitHub |
| **GitHub Search** | Busca avançada nativa |

---

## 💻 GitHub Dorks

> [!info] Buscas Avançadas no GitHub

### Buscando Credenciais

```
# Senhas em arquivos .env
filename:.env password

# Chaves AWS
"AKIA" filename:credentials

# Tokens de API
"api_key" OR "apikey" extension:json

# Configurações de banco de dados
"DB_PASSWORD" extension:env
```

### Buscando por Organização

```
# Arquivos de uma empresa
org:empresa filename:.env

# Repositórios específicos
user:desenvolvedor password
```

---

## 🔍 Processo de Análise

> [!success] Metodologia

```
1. Identificar repositórios do alvo
   ↓
2. Clonar repositórios relevantes
   ↓
3. Executar ferramentas de scan
   ↓
4. Analisar histórico de commits
   ↓
5. Verificar branches não principais
   ↓
6. Documentar descobertas
```

---

## 📊 Exemplo com TruffleHog

```bash
# Instalar
pip install truffleHog

# Escanear repositório
trufflehog git https://github.com/alvo/repo

# Escanear apenas histórico recente
trufflehog git https://github.com/alvo/repo --since-commit HEAD~100
```

---

## ⚠️ Considerações Éticas

> [!danger] Atenção
> - Use apenas para **reconhecimento autorizado**
> - **Reporte** credenciais expostas de forma responsável
> - Não utilize credenciais encontradas
> - Documente para o relatório de pentest

