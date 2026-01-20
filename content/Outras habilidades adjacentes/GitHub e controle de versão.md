# GitHub e controle de versão

# O que é git?

é um sistema de controle de versões distribuído, usado principalmente no desenvolvimento de software, mas pode ser usado para registrar o histórico de edições de qualquer tipo de arquivo.

O Git foi inicialmente projetado e desenvolvido por Linus Torvalds para o desenvolvimento do kernel Linux, mas foi adotado por muitos outros projetos.

Cada diretório de trabalho do Git é um repositório com um histórico completo e habilidade total de acompanhamento das revisões, não dependente de acesso a uma rede ou a um servidor central.

# O que é github

É um sistema web que provê a hospedagem de repositórios git.

Assim não é preciso configurar nem manter um servidor.

# Instalação

[Downloads](https://git-scm.com/downloads)

para verificar a instalação 

```bash
git -- version
```

# Utilização

Ir na pasta que você deseja criar ou sincronizar um repositório clicar com botão direito e ir em Git Bash Here.

antes precisamos nos identificar para futuros commits

git config --global user.email "fulano@gmail.com"
git config --global [user.name](http://user.name/) "Fulano da Silva"

*tomar cuidado para se der control c control v não ter espaços vazios no início do comando.*

git init - para inicializar um repositório git vazio

git branch -M main - para modificar o nome da branch principal para main

`git remote add origin [https://github.com/wesleyfolly/class-exercises.git](https://github.com/wesleyfolly/class-exercises.git)` - para criar uma conexão com um repositório remoto

git add arquivo - para adicionar um arquivo ao sistema git

git status - para visualizar o que está no stage. O que está para ser comitado

git commit -m "primeiro commit" - para "salvar" as alterações no repositório

 

`git push -u origin main` - para jogar alterações para o repositório remoto

# Materiais e referências

[Como usar Git e Github na prática: Guia para iniciantes | Mayk Brito](https://www.youtube.com/watch?v=2alg7MQ6_sI)

[O QUE É GIT E GITHUB? - definição e conceitos importantes 1/2](https://www.youtube.com/watch?v=DqTITcMq68k)

[COMO USAR GIT E GITHUB NA PRÁTICA! - desde o primeiro commit até o pull request! 2/2](https://www.youtube.com/watch?v=UBAX-13g8OM)