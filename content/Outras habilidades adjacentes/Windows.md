# Windows

Conteúdo

---

# O prompt de comandos

<aside>
💡 O prompt de comandos (cmd) é um programa de linha de comando que executa instruções direto no sistema operacional. Nesse caso você não está limitado à interface gráfica.

</aside>

Comandos básicos:

echo - escrever algo na tela

dir - listar diretórios 

cd - navegar entre diretórios

mkdir - criar diretórios

rmdir - remover diretórios

cls - limpar a tela

type - mostra conteúdo de um arquivo

del - apaga arquivo

copy arquivo.txt arquivo2.txt - copia um arquivo

rename - renomeia um arquivo

move  arquivo.txt pasta_exemplo - move um arquivo ou pasta para outro lugar

tree - mostra árvore de diretórios (pastas e subpastas)

more - parecido com o type mas mostrar por páginas, ao invés de inteiro (espaço: página, enter: linha; q: sai)

Dicas:

Seta para cima - acessa os últimos comandos digitados

echo Direcionando saída de um comando para um arquivo > arquivo.txt

echo Mesmo arquivo >> arquivo.txt (adiciona no final do arquivo já existente)

cd .  ou cd .. (um ponto: diretório atual; dois pontos: diretório acima)

tecla TAB - auto completa comandos e nomes de arquivos

help dir - para saber melhor sobre o comando

> `Por que aprender comandos se tenho interface gráfica?` Nem todos os sistemas possuem interface gráfica, e muitos recursos só estão disponíveis em linha de comando. Outra questão é que a linha de comando pode ser utilizada por outros programas, tornando possível escrever scripts e automações. Então por que não ? :)
> 

---

# Alternativas mais poderosas ao prompt de comandos

<aside>
💡 O `cmder` é um emulador de terminal para o windows que possibilita executar comandos do unix e muitas outras funcionalidades

</aside>

[Cmder | Console Emulator](https://cmder.net/)

- Instalação
    1. Fazer o download no site
    2. Extrair o arquivo
    3. Colocar a pasta do programa em algum local de preferência (opcional)
    4. Executar arquivo Cmder
    5. Na primeira vez que executar, clicar em Unblick and Continue

Dicas

Tudo que for selecionado já está automaticamente copiado

Um script é um arquivo de texto (.bat) com comandos que quando executado, executa todos os comandos de uma vez

Criar um arquivo .bat que limpa a tela

echo cls > limpatela.bat

Algumas funcionalidades:

pause - espera o usuário interagir com o terminal

echo %date% - para imprimir a data atual

echo %time% - para imprimir a hora

Exemplo de um backup simples:

[https://devcontent.com.br/artigos/windows/o-que-e-como-criar-executar-script-em-lote](https://devcontent.com.br/artigos/windows/o-que-e-como-criar-executar-script-em-lote)

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

```powershell
@echo off
cls
echo Dia de hoje:
echo %date%
echo Hora atual:
echo %time%
```

O prompt sempre exibe na tela o comando e o resultado, o que pode duplicar as informações que queremos exibir. Para que isso não aconteça podemos utilizar o @echo off

Facilidades do cmder

copiar e colar simplificado

é possível abrir múltiplas abas

muitas configurações: Windows + ALT + P > Features

---

# As variáveis de ambiente do windows

# Automatização de tarefas e scripts

# Gerenciamento de pacotes no windows (Chocolatey)

# Linux bash no windows

# Microsoft power automation desktop

# Autohotkey