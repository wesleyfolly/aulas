# 📋 Processo de Redesign de Arquivos Markdown para Obsidian/Quartz

> [!info] Objetivo
> Este documento descreve o padrão visual e estrutural a ser aplicado em todos os arquivos markdown das disciplinas, garantindo consistência e melhor experiência de leitura.

---

## 🎯 Visão Geral

O redesign tem como objetivo transformar arquivos markdown simples em páginas ricas e visualmente atraentes, utilizando recursos do Obsidian e Quartz.

---

## 📐 Estrutura Padrão de um Arquivo

### 1. YAML Frontmatter (Obrigatório)

```yaml
---
title: "Nome da Página"              # OBRIGATÓRIO para arquivos index.md
tipo: aula | referencia | avaliacao | conceito | índice
resumo: "Descrição clara e concisa do conteúdo da página em 1-2 frases"
tags:
  - tag-principal
  - disciplina-relacionada
  - topico-especifico
aliases:                             # Opcional - nomes alternativos para links
  - Nome Alternativo
---
```

#### Tipos de Arquivo

| Tipo | Uso |
|------|-----|
| `aula` | Conteúdo principal de ensino |
| `referencia` | Material de consulta/apoio |
| `avaliacao` | Trabalhos, tarefas, provas |
| `conceito` | Explicações teóricas |
| `índice` | Páginas de navegação/index |

---

### 2. Título Principal com Citação de Abertura

```markdown
# Título da Página

> [!quote] Título Opcional da Citação
> *Frase inspiradora ou resumo do conteúdo que engaja o leitor.*

---
```

---

### 3. Seções com Emojis

Use emojis nos títulos de seção para facilitar a navegação visual:

| Emoji | Uso Sugerido |
|-------|--------------|
| 🎯 | Objetivos, metas, foco principal |
| 📚 | Conteúdo, materiais, teoria |
| 🔐 | Segurança, proteção, criptografia |
| 🛠️ | Ferramentas, configuração |
| 🔍 | Pesquisa, investigação, análise |
| ⚔️ | Ataques, exploração (segurança) |
| 📋 | Checklists, listas, organização |
| 💡 | Dicas, insights |
| ⚠️ | Avisos, alertas |
| 🔗 | Links, referências |
| 📊 | Dados, estatísticas, tabelas |
| 🚀 | Início, começo, primeiros passos |

---

### 4. Callouts (Blocos de Destaque)

```markdown
> [!info] Informação
> Texto informativo neutro.

> [!tip] Dica
> Sugestões e boas práticas.

> [!warning] Atenção
> Alertas importantes.

> [!danger] Perigo
> Riscos críticos ou ações irreversíveis.

> [!success] Sucesso
> Resultados positivos ou confirmações.

> [!quote] Citação
> Frases de destaque ou definições.

> [!note] Nota
> Observações adicionais.

> [!abstract] Resumo
> Síntese de conteúdo.

> [!example] Exemplo
> Demonstrações práticas.
```

---

### 5. Tabelas para Organização

Use tabelas sempre que houver informações comparativas ou listagens:

```markdown
| Coluna 1 | Coluna 2 | Coluna 3 |
|----------|----------|----------|
| Dado 1   | Dado 2   | Dado 3   |
| Dado 4   | Dado 5   | Dado 6   |
```

---

### 6. Links no Formato Wikilink

```markdown
[[Caminho/para/arquivo|Texto de exibição]] — Descrição breve do link
```

Exemplo:
```markdown
[[Coleta de informações]] — OSINT, footprinting e enumeração
```

---

### 7. Blocos de Código

````markdown
```bash
# Comando de exemplo
comando --opcao valor
```

```python
# Código Python
def funcao():
    return "exemplo"
```
````

---

### 8. Separadores Entre Seções

Use `---` para separar seções principais:

```markdown
## 🎯 Seção 1

Conteúdo...

---

## 📚 Seção 2

Conteúdo...
```

---

## 📁 Arquivos index.md (Páginas Principais)

### Regras Especiais

1. **SEMPRE** incluir a propriedade `title` no frontmatter
2. O título deve ser o nome da disciplina/seção
3. Isso resolve o problema de "index" aparecer no gráfico do Quartz

```yaml
---
title: "Nome da Disciplina"
tipo: índice
resumo: "Descrição da disciplina"
tags:
  - índice
  - nome-da-disciplina
aliases:
  - Nome da Disciplina
---
```

---

## ✅ Checklist de Redesign

Para cada arquivo, verificar:

- [ ] Frontmatter com `title`, `tipo`, `resumo` e `tags`
- [ ] Citação de abertura (`> [!quote]`)
- [ ] Emojis nos títulos de seção
- [ ] Callouts apropriados para destaques
- [ ] Tabelas para informações estruturadas
- [ ] Links em formato wikilink com descrições
- [ ] Separadores `---` entre seções principais
- [ ] Blocos de código com syntax highlighting
- [ ] Conteúdo contextualizado (não apenas listas soltas)

---

## 📝 Exemplo Completo

```markdown
---
title: "Nome do Tópico"
tipo: aula
resumo: "Descrição clara do que este arquivo contém e seu propósito educacional."
tags:
  - aula
  - disciplina
  - topico-especifico
---

# Nome do Tópico

> [!quote] Frase de Impacto
> *Uma citação ou definição que introduz o tema de forma envolvente.*

---

## 🎯 Objetivos

> [!info] O que você vai aprender
> - Objetivo 1
> - Objetivo 2
> - Objetivo 3

---

## 📚 Conceitos Fundamentais

### Subtópico 1

Texto explicativo com contexto...

| Termo | Definição |
|-------|-----------|
| Termo A | Explicação do termo A |
| Termo B | Explicação do termo B |

### Subtópico 2

> [!tip] Dica Importante
> Informação útil para o leitor.

---

## 🛠️ Ferramentas

| Ferramenta | Descrição | Link |
|------------|-----------|------|
| Tool 1 | Descrição | [Site](url) |
| Tool 2 | Descrição | [Site](url) |

---

## 🔗 Links Relacionados

> [!tip] Aprofundamento

| Tópico | Descrição |
|--------|-----------|
| [[Link 1]] | Descrição do conteúdo relacionado |
| [[Link 2]] | Descrição do conteúdo relacionado |
```

---

## 🔄 Fluxo de Trabalho

1. **Ler** o arquivo original
2. **Identificar** o tipo de conteúdo (aula, referência, etc.)
3. **Adicionar** frontmatter completo
4. **Inserir** citação de abertura
5. **Reorganizar** conteúdo em seções com emojis
6. **Converter** listas em tabelas quando apropriado
7. **Adicionar** callouts para destaques
8. **Contextualizar** links com descrições
9. **Revisar** formatação e consistência

---

> [!success] Resultado Esperado
> Arquivos visualmente atraentes, bem organizados e fáceis de navegar, proporcionando uma experiência de aprendizado superior para os alunos.
