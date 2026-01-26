---
tipo: aula
resumo: "Automações: conceitos, ferramentas (n8n, Python, Ollama) e projetos práticos para criar sistemas automatizados."
tags:
  - aula
  - automacao
  - n8n
  - python
  - ia
---

# Automações

> [!quote] Trabalhe Menos, Produza Mais
> *Automatizar tarefas é fazer com que o computador execute processos repetitivos sem intervenção humana.*

---

## 🎯 Objetivo Geral

> [!info] Meta da Disciplina
> Criar automações pessoais e profissionais combinando ferramentas visuais (n8n) com programação Python e inteligência artificial local (DeepSeek via Ollama ou outras IAs), formando um sistema eficiente, seguro e sem dependência de serviços pagos.

---

## 🔥 Conceitos Centrais

### 1. O que é Automação

> [!info] Definição
> Automatizar é fazer com que o computador execute processos repetitivos sem intervenção humana.

**Exemplos de automações:**
- Ler e-mails e extrair informações
- Gerar relatórios automáticos
- Enviar respostas automáticas
- Usar Inteligência Artificial para criar conteúdos

---

### 2. Ferramentas Principais

| Ferramenta | Função | Característica Principal |
|------------|--------|-------------------------|
| **n8n** | Criar fluxos visuais de automação | Interface fácil, open-source, sem limites |
| **Python** | Resolver tarefas complexas ou personalizadas | Linguagem poderosa e flexível |
| **Ollama** | Gerenciar modelos de IA localmente | IA privada, sem custo por uso |
| **DeepSeek R1 14B** | Modelo de linguagem para gerar texto | Responde como ChatGPT, mas local |
| **ChatGPT ou Cursor** | Auxiliar na criação de código | Planejamento e programação |

---

### 3. Como as Tecnologias se Conectam

> [!tip] Fluxo de Integração

- **n8n** coordena tudo: cria os fluxos de automação visualmente
- **Python** entra onde o n8n não consegue resolver sozinho
- **Ollama** disponibiliza o modelo de IA local
- **DeepSeek** é o "cérebro" que escreve, responde e gera relatórios

🔗 **Resumo do fluxo:**
```
n8n → (dispara ação) → Python → (se precisar) → Ollama/DeepSeek → (resposta) → Salvamento
```

---

## 🛠️ Habilidades a Desenvolver

- Criar **Workflows automáticos** usando n8n
- Integrar APIs e bancos de dados nos fluxos
- Usar **Python** para resolver limitações e criar módulos personalizados
- Rodar modelos de **Inteligência Artificial localmente**, com controle total
- Projetar sistemas de automação **escaláveis** e **offline**, sem depender de nuvem paga
- Entender boas práticas de orquestração e modularização de automações

---

## 🧠 Primeiros Projetos Práticos

| # | Projeto | Descrição |
|---|---------|-----------|
| 1 | **Primeiro Workflow** | Criar um fluxo que recebe texto e salva em arquivo |
| 2 | **Chamando Python** | Rodar script Python dentro do n8n |
| 3 | **Usando IA Local** | Enviar perguntas para DeepSeek via n8n |
| 4 | **Automatizar Emails** | Ler caixa de e-mail e gerar resumos diários |
| 5 | **Relatórios Automáticos** | Gerar relatórios Markdown com IA |

---

## 📢 Pontos Importantes

> [!success] Lembre-se

- **Não é preciso saber tudo de programação** para usar n8n
- **Com Python**, é possível desbloquear qualquer limitação do n8n
- **Usar IA local** garante segurança, privacidade e custo zero
- **Automação bem feita libera tempo** para focar em coisas importantes

