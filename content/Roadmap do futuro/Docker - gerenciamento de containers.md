# Docker - gerenciamento de containers

## O que são containers?

- Containers são como "caixas" que encapsulam uma aplicação e todas as suas dependências (bibliotecas, configurações, etc.)
- Servem para garantir que uma aplicação e suas dependências sejam executadas de forma consistente em diferentes ambientes, eliminando problemas de compatibilidade.

- Resolve o problema: “Na minha máquina funciona!”
- Não é máquina virtual!
- Única missão da vida de um container é fazer uma aplicação específica funcionar!

![image.png](/Recursos/Roadmap%20do%20futuro/Docker%20-%20gerenciamento%20de%20containers/image.png)

## Exemplo sem container

![image.png](/Recursos/Roadmap%20do%20futuro/Docker%20-%20gerenciamento%20de%20containers/image%201.png)

## Exemplo com container

![image.png](/Recursos/Roadmap%20do%20futuro/Docker%20-%20gerenciamento%20de%20containers/image%202.png)

## Docker x VMs

![image.png](/Recursos/Roadmap%20do%20futuro/Docker%20-%20gerenciamento%20de%20containers/image%203.png)

## Surgimento do Docker

- 1990s: Surgiram as primeiras formas de isolamento de processos
    - O conceito de isolamento de processos surgiu com ferramentas como o chroot, que permite alterar o diretório raiz de um processo, restringindo seu acesso ao restante do sistema operacional.

```bash
# Cria um diretório
sudo mkdir -p /mycontainer

# Copia binários essenciais e monta um sistemas de arquivos
sudo cp -R /bin /lib /lib64 /usr /mycontainer/
sudo mkdir -p /mycontainer/{dev,proc,sys}
sudo mount -t proc proc /mycontainer/proc
sudo mount -t sysfs sys /mycontainer/sys
sudo mount -o bind /dev /mycontainer/dev
sudo mount -t devpts devpts /mycontainer/dev/pts

# Usa chroot para mudar a raiz do sistema, criando um ambiente isolado.
sudo chroot /mycontainer /bin/bash
```

- Exemplo de container nativo no Linux puro

![image.png](/Recursos/Roadmap%20do%20futuro/Docker%20-%20gerenciamento%20de%20containers/image%204.png)

- 2000s: Surgimento de tecnologias de virtualização e de isolamento de recursos, como LXC (Linux Containers).
- 2013 Lançamento do Docker, que popularizou o uso de containers ao simplificar sua criação, distribuição e gerenciamento.

## O que é Docker?

Docker é uma plataforma de virtualização de containers que permite empacotar, distribuir e executar aplicações de forma isolada e consistente. Diferente das máquinas virtuais tradicionais, containers Docker compartilham o kernel do sistema operacional host, tornando-os mais leves e eficientes.

## Principais benefícios do Docker

- Isolamento: Cada container roda de forma isolada, com seus próprios processos, redes e sistemas de arquivos
- Portabilidade: "Build once, run anywhere" - containers podem ser executados em qualquer ambiente que tenha Docker instalado
- Eficiência: Containers são mais leves que VMs tradicionais e iniciam mais rapidamente
- Escalabilidade: Facilita a criação e gerenciamento de múltiplas instâncias da aplicação

## Componentes principais do Docker

## Docker Engine

O mecanismo principal do Docker que cria e gerencia containers.

## Docker Hub

https://hub.docker.com/search?badges=official

O Docker Hub é o registro público oficial de imagens Docker - um repositório centralizado onde você pode encontrar, compartilhar e distribuir imagens Docker. Funciona de forma similar ao GitHub, mas para imagens Docker.

- Repositório oficial de imagens base e populares
- Possibilidade de criar repositórios públicos e privados
- Integração com sistemas de CI/CD
- Controle de versões de imagens através de tags

## Dockerfile

Dockerfile é um arquivo de texto que contém todas as instruções necessárias para criar uma imagem Docker. 

- A imagem base a ser utilizada
- Comandos a serem executados durante a construção
- Arquivos a serem copiados para dentro da imagem
- Portas a serem expostas
- Comando padrão a ser executado quando o container iniciar

```jsx
FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

## Sobre componentes e camadas

## Imagens

- Imagens Docker são templates imutáveis que são utilizados para criar containers. Elas contêm tudo que é necessário para rodar uma aplicação: código, runtime, bibliotecas, variáveis de ambiente, e arquivos de configuração.
- Imagens são construídas em camadas. Cada instrução em um Dockerfile cria uma nova camada na imagem. Isso facilita o versionamento e a reutilização de camadas entre diferentes imagens.

![image.png](/Recursos/Roadmap%20do%20futuro/Docker%20-%20gerenciamento%20de%20containers/image%205.png)

## Volumes

- São espaços de armazenamento que os containers usam para persistir dados. (Tipo um HD virtual)

## Redes

O Docker cria automaticamente algumas redes padrão:

- bridge: Rede padrão para containers em um único host.
- host: Containers compartilham a rede do host.
- none: Desabilita a rede para o container

## Instalação do Docker

## Windows

[https://docs.docker.com/desktop/setup/install/windows-install/](https://docs.docker.com/desktop/setup/install/windows-install/)

## Requisitos

- Windows 10 ou superior atualizado
- WSL versão 1.1.3 ou superior

## WSL

[https://learn.microsoft.com/pt-br/windows/wsl/install](https://learn.microsoft.com/pt-br/windows/wsl/install)

1.  No PowerShell como administrador.

```bash
wsl --install
```

1. Reiniciar e depois abrir a nova aplicação disponível “Ubuntu” (padrão).
2. Criar um usuário e senha para o sistema Linux. Após definir, está pronto para uso.

## Docker Desktop

1. Instalar

[https://docs.docker.com/desktop/setup/install/windows-install/](https://docs.docker.com/desktop/setup/install/windows-install/)

1. Testar

```bash
docker run hello-world
```

## Linux

[https://docs.docker.com/desktop/setup/install/linux/](https://docs.docker.com/desktop/setup/install/linux/)

## Principais comandos do Docker

## Gerenciamento de Imagens

- `docker build .` - Constrói uma imagem a partir de um Dockerfile
- `docker pull [imagem]` - Baixa uma imagem do Docker Hub
- `docker images` - Lista todas as imagens locais
- `docker rmi [imagem]` - Remove uma imagem específica

## Gerenciamento de Containers

- `docker run [imagem]` - Cria e inicia um novo container
- `docker ps` - Lista containers em execução
- `docker ps -a` - Lista todos os containers (incluindo parados)
- `docker start [container]` - Inicia um container existente
- `docker stop [container]` - Para um container em execução
- `docker rm [container]` - Remove um container

## Logs e Debugging

- `docker logs [container]` - Exibe logs do container
- `docker exec -it [container] bash` - Acessa o terminal do container

## Opções comuns do docker run

- `-d` - Executa em modo detached (background)
- `-p [host-port]:[container-port]` - Mapeia portas
- `-v [host-path]:[container-path]` - Monta volumes
- `--name [nome]` - Define um nome para o container
- `-t` - Define uma tag/nome para a imagem durante o build ou execução

## Docker-compose

**Docker Compose** é uma ferramenta para orquestrar aplicações multi-containers, permitindo definir e executar múltiplos containers Docker de forma declarativa através de um único arquivo YAML. Com ele, você pode configurar todos os serviços, redes e volumes necessários para sua aplicação em um único lugar, facilitando o gerenciamento e deploy de aplicações complexas

## Prática: Dockerizando uma aplicação Flask-Login

- [https://github.com/devmoreir4/sample-flask-auth](https://github.com/devmoreir4/sample-flask-auth)

- [x]  Adicionar no projeto o arquivo docker-compose.yml

```bash
services:
  db:
    image: mysql:latest
    container_name: mysql-container
    restart: always
    environment:
      MYSQL_USER: ${MYSQL_USER}
      MYSQL_PASSWORD: ${MYSQL_PASSWORD}
      MYSQL_DATABASE: ${MYSQL_DATABASE}
      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
    ports:
      - "3306:3306"
    expose:
      - '3306'
    volumes:
      - ../flask-files/mysql:/var/lib/mysql

```

- [x]  Criar um arquivo .env na raiz do projeto

```bash
MYSQL_USER=admin
MYSQL_PASSWORD=admin123
MYSQL_DATABASE=flask-crud
MYSQL_ROOT_PASSWORD=admin123
SECRET_KEY = 'secretkeytest'
```

- [x]  Executar e buildar o arquivo docker-compose.yml

```bash
docker-compose up --build
```

- [x]  Executar o arquivo app.py

```bash
python app.py
```

Podemos executar um terminal dentro do container e printar as tabelas para exibir seu conteúdo e garantir que realmente os usuários foram criados. Para isso, vamos fazer o seguinte:

- [x]  Execute o seguinte comando para abrir um shell dentro do container MySQL:

```bash
docker exec -it mysql-container bash
```

- [ ]  Agora que está dentro do container, conecte-se ao MySQL com:

```bash
mysql -u admin -p
```

- [ ]  Depois de entrar no MySQL, selecione o banco:

```bash
USE flask-crud;
```

- [x]  Liste as tabelas

```bash
SHOW TABLES;
```

- [x]  Para visualizar os registros da tabela

```bash
SELECT * FROM user;
```

- [x]  Para sair do MySQL, use:

```bash
EXIT;
```

- [x]  Para sair do container:

```bash
exit
```

## Parte II: Dockerizando 100% do projeto

- [x]  Criar um Dockerfile na raiz do projeto

```bash
# Usa uma imagem oficial do Python como base
FROM python:3.11

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY . .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Define a variável de ambiente para evitar buffer no output
ENV PYTHONUNBUFFERED=1

# Expõe a porta 5000
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]
```

- [x]  Atualizar o arquivo docker-compose.yml

```bash
services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    container_name: flask-container
    environment:
      - SECRET_KEY=${SECRET_KEY}
      - MYSQL_USER=${MYSQL_USER}
      - MYSQL_PASSWORD=${MYSQL_PASSWORD}
      - MYSQL_DATABASE=${MYSQL_DATABASE}
    depends_on:
      db:
        condition: service_healthy
    ports:
      - "5000:5000"

  db:
    image: mysql:latest
    container_name: mysql-container
    restart: always
    environment:
      MYSQL_USER: ${MYSQL_USER}
      MYSQL_PASSWORD: ${MYSQL_PASSWORD}
      MYSQL_DATABASE: ${MYSQL_DATABASE}
      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
    ports:
      - "3306:3306"
    expose:
      - "3306"
    volumes:
      - ../flask-files/mysql:/var/lib/mysql
    healthcheck:
      test: ["CMD", "mysqladmin", "ping", "-h", "localhost"]
      interval: 10s
      timeout: 5s
      retries: 5
```

- [x]  Criar um arquivo .dockerignore

```bash
__pycache__/
*.pyc
.env
venv
```

- URI significa Uniform Resource Identifier (Identificador Uniforme de Recurso) e é uma sequência de caracteres usada para identificar um recurso na web ou em um sistema de rede. No contexto de bancos de dados, uma URI de banco de dados é uma string de conexão que descreve onde e como se conectar a um banco de dados.
- Exemplo de URI
    
    ```python
    mysql+pymysql://usuario:senha@localhost:3306/meu_banco_de_dados
    ```
    

- [x]  Atualizar no arquivo app.py:

```python
app.config['SQLALCHEMY_DATABASE_URI'] = (
    f"mysql+pymysql://{os.getenv('MYSQL_USER')}:{os.getenv('MYSQL_PASSWORD')}"
    f"@db:3306/{os.getenv('MYSQL_DATABASE')}"
)
```

- [x]  Buildar novamente os containers

```python
docker-compose up --build
```

---

## EXTRA

## Principais comandos docker-compose

- `docker-compose up` - Inicia todos os serviços definidos no arquivo docker-compose.yml
- `docker-compose up --build` - Força o rebuild das imagens antes de iniciar os serviços
- `docker-compose build [serviço]` - Constrói a imagem do serviço sem executá-lo
    
    > 💡 Útil quando você quer apenas preparar o container sem rodar o script principal automaticamente.
    > 
- `docker-compose down` - Para e remove todos os containers, redes e volumes definidos
- `docker-compose ps` - Lista todos os containers em execução do compose
- `docker-compose logs` - Exibe os logs de todos os serviços
- `docker-compose logs [serviço]` - Exibe os logs de um serviço específico
- `docker-compose stop` - Para todos os serviços sem remover os containers
- `docker-compose start` - Inicia serviços que foram parados
- `docker-compose restart` - Reinicia todos os serviços
- `docker-compose exec [serviço] [comando]` - Executa um comando em um serviço específico
- `docker-compose run [serviço] bash` - Acessa o terminal bash de um serviço específico

## Flags comuns

- `-d` - Executa em modo detached (background)
- `--build` - Força o rebuild das imagens
    
    Quando você executa o `docker-compose build` ou usa a flag `--build`, o Docker Compose irá construir todas as imagens definidas no arquivo docker-compose.yml que têm a instrução 'build' especificada. É similar ao comando `docker build`, mas com algumas diferenças importantes:
    
    - O Docker Compose automaticamente constrói todas as imagens necessárias em um único comando
    - Ele mantém um cache das imagens construídas e só reconstrói o que foi modificado
    - O contexto de build é definido no docker-compose.yml, não sendo necessário especificar o caminho do Dockerfile manualmente
- `--force-recreate` - Força a recriação dos containers
- `-f` - Especifica um arquivo compose alternativo

<aside>
💡

Essa página foi criada pelos alunos: Kauã Gonçalves e Carlos Armando

</aside>