---
tipo: aula
resumo: "Introdução ao Git e GitHub para controle de versão, comandos básicos e fluxo de trabalho."
tags:
  - aula
  - programacao
  - git
  - github
  - versionamento
---

# GitHub e Controle de Versão

> [!quote] Histórico de Código
> *Git permite rastrear todas as mudanças do seu código, facilitando colaboração e recuperação de versões anteriores.*

---

## 🔄 O que é Git?

> [!info] Definição
> Sistema de controle de versões distribuído, usado principalmente no desenvolvimento de software, mas pode ser usado para registrar o histórico de edições de qualquer tipo de arquivo.

| Característica | Descrição |
|----------------|-----------|
| **Criador** | Linus Torvalds (para o kernel Linux) |
| **Tipo** | Distribuído |
| **Repositório** | Histórico completo em cada diretório de trabalho |
| **Independência** | Não depende de acesso a rede ou servidor central |

---

## 🌐 O que é GitHub?

> [!success] Plataforma Web
> Sistema web que provê a hospedagem de repositórios Git. Assim não é preciso configurar nem manter um servidor.

---

## 📥 Instalação

🔗 [Downloads do Git](https://git-scm.com/downloads)

**Verificar instalação:**

```bash
git --version
```

---

## ⚙️ Configuração Inicial

> [!tip] Identificação
> Antes de fazer commits, precisamos nos identificar:

```bash
git config --global user.email "fulano@gmail.com"
git config --global user.name "Fulano da Silva"
```

> [!warning] Atenção
> Cuidado ao copiar e colar: não deixe espaços vazios no início do comando.

---

## 🚀 Comandos Básicos

### Inicialização

| Comando | Descrição |
|---------|-----------|
| `git init` | Inicializa um repositório Git vazio |
| `git branch -M main` | Modifica nome da branch principal para main |
| `git remote add origin URL` | Cria conexão com repositório remoto |

### Fluxo de Trabalho

| Comando | Descrição |
|---------|-----------|
| `git add arquivo` | Adiciona arquivo ao staging |
| `git status` | Visualiza o que está preparado para commit |
| `git commit -m "mensagem"` | Salva alterações no repositório |
| `git push -u origin main` | Envia alterações para repositório remoto |

---

## 📋 Exemplo de Fluxo Completo

```bash
# 1. Navegar até a pasta do projeto
cd meu-projeto

# 2. Inicializar repositório
git init

# 3. Definir branch principal
git branch -M main

# 4. Conectar ao repositório remoto
git remote add origin https://github.com/usuario/repo.git

# 5. Adicionar arquivos
git add arquivo.py

# 6. Fazer commit
git commit -m "primeiro commit"

# 7. Enviar para o GitHub
git push -u origin main
```

---

## 📚 Materiais e Referências

📺 [Como usar Git e Github na prática: Guia para iniciantes | Mayk Brito](https://www.youtube.com/watch?v=2alg7MQ6_sI)

📺 [O QUE É GIT E GITHUB? - definição e conceitos importantes 1/2](https://www.youtube.com/watch?v=DqTITcMq68k)

📺 [COMO USAR GIT E GITHUB NA PRÁTICA! - desde o primeiro commit até o pull request! 2/2](https://www.youtube.com/watch?v=UBAX-13g8OM)

