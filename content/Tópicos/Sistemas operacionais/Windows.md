---
tipo: aula
resumo: "Windows: prompt de comandos, scripts batch, cmder e automação de tarefas."
tags:
  - aula
  - windows
  - cmd
  - batch
  - automacao
---

# Windows

> [!quote] Linha de Comando no Windows
> *Aprenda a usar o prompt de comandos e criar scripts para automatizar tarefas no Windows.*

---

## 💻 O Prompt de Comandos

> [!tip] O que é o CMD?
> O prompt de comandos (cmd) é um programa de linha de comando que executa instruções direto no sistema operacional. Você não está limitado à interface gráfica.

---

## 🔧 Comandos Básicos

| Comando | Descrição |
|---------|-----------|
| `echo` | Escrever algo na tela |
| `dir` | Listar diretórios |
| `cd` | Navegar entre diretórios |
| `mkdir` | Criar diretórios |
| `rmdir` | Remover diretórios |
| `cls` | Limpar a tela |
| `type` | Mostra conteúdo de um arquivo |
| `del` | Apaga arquivo |
| `copy arquivo.txt arquivo2.txt` | Copia um arquivo |
| `rename` | Renomeia um arquivo |
| `move arquivo.txt pasta/` | Move um arquivo ou pasta |
| `tree` | Mostra árvore de diretórios |
| `more` | Mostra por páginas (espaço: página, enter: linha, q: sai) |

---

## 💡 Dicas Úteis

| Dica | Descrição |
|------|-----------|
| **Seta para cima** | Acessa últimos comandos digitados |
| `echo texto > arquivo.txt` | Redireciona saída para arquivo (sobrescreve) |
| `echo texto >> arquivo.txt` | Adiciona no final do arquivo |
| `cd .` ou `cd ..` | Diretório atual / diretório acima |
| **TAB** | Auto completa comandos e nomes |
| `help dir` | Ajuda sobre o comando |

> [!info] Por que aprender comandos?
> Nem todos os sistemas possuem interface gráfica, e muitos recursos só estão disponíveis em linha de comando. A linha de comando pode ser utilizada por outros programas, tornando possível escrever scripts e automações.

---

## 🚀 Cmder - Terminal Avançado

> [!tip] Terminal Poderoso
> O `cmder` é um emulador de terminal para Windows que permite executar comandos Unix e muitas outras funcionalidades.

🔗 [Cmder - Console Emulator](https://cmder.net/)

### Instalação

1. Fazer download no site
2. Extrair o arquivo
3. Colocar a pasta em local de preferência
4. Executar arquivo Cmder
5. Na primeira vez, clicar em "Unblock and Continue"

### Facilidades do Cmder

| Funcionalidade | Descrição |
|----------------|-----------|
| **Copiar/Colar** | Texto selecionado já está automaticamente copiado |
| **Múltiplas abas** | Abrir várias instâncias |
| **Configurações** | Windows + ALT + P > Features |

---

## 📜 Scripts Batch (.bat)

> [!info] O que é um Script?
> Um script é um arquivo de texto (.bat) com comandos que, quando executado, executa todos os comandos de uma vez.

### Exemplo: Criar script simples

```bash
echo cls > limpatela.bat
```

### Comandos Úteis para Scripts

| Comando | Descrição |
|---------|-----------|
| `pause` | Espera o usuário interagir |
| `echo %date%` | Imprime a data atual |
| `echo %time%` | Imprime a hora atual |
| `@echo off` | Oculta os comandos (mostra só resultado) |

### Exemplo: Script de Backup

```bash
@echo off
cls
echo Deseja realmente fazer o backup?
pause
cls
echo ok, fazendo backup...
mkdir Backup
xcopy /E /Y "C:\Users\wesley\Documents"  "C:\Users\wesley\Backup"
echo Listando os arquivos do backup
dir C:\Users\wesley\Backup
```

### Exemplo: Exibir Data e Hora

```bash
@echo off
cls
echo Dia de hoje:
echo %date%
echo Hora atual:
echo %time%
```

> [!tip] @echo off
> O prompt sempre exibe o comando e o resultado, o que pode duplicar informações. Use `@echo off` no início do script para evitar isso.

---

## 📝 Tópicos Avançados

> [!info] Em Desenvolvimento

| Tópico | Status |
|--------|--------|
| Variáveis de ambiente do Windows | 🔜 |
| Automatização de tarefas e scripts | 🔜 |
| Gerenciamento de pacotes (Chocolatey) | 🔜 |
| Linux bash no Windows (WSL) | 🔜 |
| Microsoft Power Automate Desktop | 🔜 |
| AutoHotkey | 🔜 |

---

## 📎 Veja Também

- [[Automações]]
- [[Docker - gerenciamento de containers]]

