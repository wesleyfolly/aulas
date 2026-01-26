---
tipo: aula
resumo: "Técnicas de Google Hacking (Google Dorks) para coleta de informações através de buscas avançadas."
tags:
  - aula
  - seguranca-da-informacao
  - osint
  - google-dorks
  - reconhecimento
---

# Google Hacking

> [!quote] O Poder das Buscas Avançadas
> *Google Hacking é a utilização de filtros específicos do Google com o objetivo de obter informações específicas ou "escondidas".*

---

## 🔍 Filtros Básicos

> [!tip] Operadores de Busca
> Estes filtros permitem refinar suas pesquisas de forma poderosa.

| Filtro | Descrição | Exemplo |
|--------|-----------|---------|
| `intitle:` | Busca somente no título da página | `intitle:login` |
| `inurl:` | Busca na URL da página | `inurl:admin` |
| `site:` | Busca em um domínio específico | `site:iff.edu.br` |
| `ext:` ou `filetype:` | Busca por tipos de arquivo | `filetype:pdf` |
| `intext:` | Busca por texto no conteúdo da página | `intext:password` |
| `link:` | Busca páginas que contém um link específico | `link:exemplo.com` |

### Operadores Lógicos

| Operador | Símbolo | Função |
|----------|---------|--------|
| AND | `+` | Ambos os termos devem estar presentes |
| OR | `\|` | Um ou outro termo |
| NOT | `-` | Excluir termo da busca |

---

## 🎯 Combinando Filtros

> [!success] Dica
> É possível misturar os filtros para buscas mais precisas.

```
site:iff.edu.br filetype:pdf
```

```
site:empresa.com.br inurl:login intitle:admin
```

```
filetype:sql "password" -site:github.com
```

---

## 🎨 Filtros Avançados (Dorks)

> [!warning] Use com Responsabilidade
> Estes filtros podem revelar informações sensíveis. Use apenas em alvos autorizados.

### Listar instalações padrão do Apache

```
intitle:Test.Page.for.Apache "It worked!"
```

### Encontrar painéis de administração

```
inurl:admin intitle:login
```

### Encontrar arquivos de configuração

```
filetype:env "DB_PASSWORD"
```

### Encontrar diretórios expostos

```
intitle:"Index of" inurl:/backup
```

---

## 🕵️ Google Cache

> [!tip] Acessando Páginas sem Deixar Rastros
> É possível acessar o cache de uma página através do Google. Isso permite acessar uma página sem registrar seu IP diretamente.

![[Recursos/Segurança da informação/Coleta de informações/coleta-de-informacoes.png|Como acessar o cache do Google]]

Basta clicar na setinha ao lado do resultado de busca.

---

## 📚 Google Hacking Database (GHDB)

> [!success] Banco de Dados de Dorks
> A GHDB é um repositório com milhares de dorks testados e categorizados.

[🔗 Exploit-DB Google Hacking Database](https://www.exploit-db.com/google-hacking-database)

### Categorias de Dorks

- **Foothold** — Pontos de entrada
- **Sensitive Directories** — Diretórios sensíveis
- **Web Server Detection** — Detecção de servidores
- **Vulnerable Files** — Arquivos vulneráveis
- **Error Messages** — Mensagens de erro
- **Juicy Info** — Informações interessantes

---

## ⚠️ Considerações Éticas

> [!danger] Atenção
> - Utilize apenas para reconhecimento autorizado
> - Não acesse sistemas sem permissão
> - O Google pode bloquear IPs que fazem muitas buscas automatizadas

