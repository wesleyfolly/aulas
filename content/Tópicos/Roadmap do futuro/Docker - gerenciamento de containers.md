---
tipo: aula
resumo: "Docker: plataforma de virtualização de containers para empacotar, distribuir e executar aplicações de forma isolada."
tags:
  - aula
  - docker
  - containers
  - devops
  - infraestrutura
---

# Docker - Gerenciamento de Containers

> [!quote] Containerização
> *Docker permite empacotar aplicações com todas as suas dependências, garantindo que rodem de forma consistente em qualquer ambiente.*

---

## 🤔 O que são Containers?

> [!info] Conceito
> Containers são como "caixas" que encapsulam uma aplicação e todas as suas dependências (bibliotecas, configurações, etc.). Servem para garantir que uma aplicação seja executada de forma consistente em diferentes ambientes.

- Resolve o problema: **"Na minha máquina funciona!"**
- Não é máquina virtual!
- Única missão de um container é fazer uma aplicação específica funcionar!

![[Recursos/Roadmap do futuro/Docker - gerenciamento de containers/image.png|Conceito de containers]]

---

## 📊 Exemplo sem Container

![[Recursos/Roadmap do futuro/Docker - gerenciamento de containers/image 1.png|Exemplo sem container]]

---

## 📦 Exemplo com Container

![[Recursos/Roadmap do futuro/Docker - gerenciamento de containers/image 2.png|Exemplo com container]]

---

## ⚖️ Docker x VMs

![[Recursos/Roadmap do futuro/Docker - gerenciamento de containers/image 3.png|Comparação Docker vs VMs]]

---

## 📜 Surgimento do Docker

| Década | Marco |
|--------|-------|
| **1990s** | Primeiras formas de isolamento de processos (chroot) |
| **2000s** | Surgimento de LXC (Linux Containers) |
| **2013** | Lançamento do Docker |

> [!example] Exemplo de chroot
> O conceito de isolamento surgiu com o `chroot`, que permite alterar o diretório raiz de um processo:

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

![[Recursos/Roadmap do futuro/Docker - gerenciamento de containers/image 4.png|Container nativo no Linux]]

---

## 🐳 O que é Docker?

> [!info] Definição
> Docker é uma plataforma de virtualização de containers que permite empacotar, distribuir e executar aplicações de forma isolada e consistente. Diferente das máquinas virtuais tradicionais, containers Docker compartilham o kernel do sistema operacional host, tornando-os mais leves e eficientes.

---

## ✨ Principais Benefícios

| Benefício | Descrição |
|-----------|-----------|
| **Isolamento** | Cada container roda de forma isolada |
| **Portabilidade** | "Build once, run anywhere" |
| **Eficiência** | Mais leve que VMs tradicionais |
| **Escalabilidade** | Facilita múltiplas instâncias |

---

## 🧩 Componentes Principais

### Docker Engine

O mecanismo principal do Docker que cria e gerencia containers.

### Docker Hub

> [!info] Repositório de Imagens
> 🔗 [hub.docker.com](https://hub.docker.com/search?badges=official)

O Docker Hub é o registro público oficial de imagens Docker:

- Repositório oficial de imagens base e populares
- Repositórios públicos e privados
- Integração com sistemas de CI/CD
- Controle de versões através de tags

### Dockerfile

> [!info] Arquivo de Configuração
> Arquivo de texto que contém todas as instruções para criar uma imagem Docker.

```jsx
FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

---

## 🏗️ Sobre Componentes e Camadas

### Imagens

- Templates imutáveis para criar containers
- Contêm código, runtime, bibliotecas e configurações
- Construídas em camadas (cada instrução cria uma nova camada)

![[Recursos/Roadmap do futuro/Docker - gerenciamento de containers/image 5.png|Camadas de imagens Docker]]

### Volumes

São espaços de armazenamento para persistir dados (como um HD virtual).

### Redes

| Tipo | Descrição |
|------|-----------|
| **bridge** | Rede padrão para containers em um único host |
| **host** | Containers compartilham a rede do host |
| **none** | Desabilita a rede para o container |

---

## 💻 Instalação do Docker

### Windows

> [!info] Requisitos
> - Windows 10 ou superior atualizado
> - WSL versão 1.1.3 ou superior

🔗 [Instalação Docker Desktop](https://docs.docker.com/desktop/setup/install/windows-install/)

#### Instalando WSL

🔗 [Documentação WSL](https://learn.microsoft.com/pt-br/windows/wsl/install)

1. No PowerShell como administrador:

```bash
wsl --install
```

2. Reiniciar e abrir a aplicação "Ubuntu"
3. Criar usuário e senha para o sistema Linux

#### Docker Desktop

1. Baixar e instalar do [site oficial](https://docs.docker.com/desktop/setup/install/windows-install/)
2. Testar:

```bash
docker run hello-world
```

### Linux

🔗 [Instalação para Linux](https://docs.docker.com/desktop/setup/install/linux/)

---

## 🔧 Principais Comandos do Docker

### Gerenciamento de Imagens

| Comando | Descrição |
|---------|-----------|
| `docker build .` | Constrói uma imagem a partir de um Dockerfile |
| `docker pull [imagem]` | Baixa uma imagem do Docker Hub |
| `docker images` | Lista todas as imagens locais |
| `docker rmi [imagem]` | Remove uma imagem específica |

### Gerenciamento de Containers

| Comando | Descrição |
|---------|-----------|
| `docker run [imagem]` | Cria e inicia um novo container |
| `docker ps` | Lista containers em execução |
| `docker ps -a` | Lista todos os containers |
| `docker start [container]` | Inicia um container existente |
| `docker stop [container]` | Para um container em execução |
| `docker rm [container]` | Remove um container |

### Logs e Debugging

| Comando | Descrição |
|---------|-----------|
| `docker logs [container]` | Exibe logs do container |
| `docker exec -it [container] bash` | Acessa o terminal do container |

### Opções Comuns do docker run

| Flag | Descrição |
|------|-----------|
| `-d` | Executa em modo detached (background) |
| `-p [host]:[container]` | Mapeia portas |
| `-v [host]:[container]` | Monta volumes |
| `--name [nome]` | Define um nome para o container |
| `-t` | Define uma tag/nome para a imagem |

---

## 🎼 Docker Compose

> [!info] Orquestração Multi-Container
> Docker Compose permite definir e executar múltiplos containers de forma declarativa através de um único arquivo YAML.

---

## 🎯 Prática: Dockerizando uma Aplicação Flask-Login

🔗 [Repositório do Projeto](https://github.com/devmoreir4/sample-flask-auth)

### Parte I: Banco de Dados em Container

#### 1. Criar docker-compose.yml

```yaml
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

#### 2. Criar arquivo .env

```bash
MYSQL_USER=admin
MYSQL_PASSWORD=admin123
MYSQL_DATABASE=flask-crud
MYSQL_ROOT_PASSWORD=admin123
SECRET_KEY = 'secretkeytest'
```

#### 3. Executar e buildar

```bash
docker-compose up --build
```

#### 4. Executar a aplicação

```bash
python app.py
```

#### 5. Verificar dados no container MySQL

```bash
# Acessar o container
docker exec -it mysql-container bash

# Conectar ao MySQL
mysql -u admin -p

# Selecionar banco e listar dados
USE flask-crud;
SHOW TABLES;
SELECT * FROM user;

# Sair
EXIT;
exit
```

---

### Parte II: Dockerizando 100% do Projeto

#### 1. Criar Dockerfile

```dockerfile
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

#### 2. Atualizar docker-compose.yml

```yaml
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

#### 3. Criar .dockerignore

```bash
__pycache__/
*.pyc
.env
venv
```

#### 4. Atualizar app.py com URI dinâmica

> [!info] O que é URI?
> Uniform Resource Identifier - string de conexão que descreve onde e como conectar a um banco de dados.

```python
app.config['SQLALCHEMY_DATABASE_URI'] = (
    f"mysql+pymysql://{os.getenv('MYSQL_USER')}:{os.getenv('MYSQL_PASSWORD')}"
    f"@db:3306/{os.getenv('MYSQL_DATABASE')}"
)
```

#### 5. Buildar novamente

```bash
docker-compose up --build
```

---

## 📚 EXTRA: Comandos Docker Compose

### Comandos Principais

| Comando | Descrição |
|---------|-----------|
| `docker-compose up` | Inicia todos os serviços |
| `docker-compose up --build` | Força rebuild antes de iniciar |
| `docker-compose build [serviço]` | Constrói imagem sem executar |
| `docker-compose down` | Para e remove containers/redes/volumes |
| `docker-compose ps` | Lista containers em execução |
| `docker-compose logs` | Exibe logs de todos os serviços |
| `docker-compose logs [serviço]` | Logs de um serviço específico |
| `docker-compose stop` | Para serviços sem remover |
| `docker-compose start` | Inicia serviços parados |
| `docker-compose restart` | Reinicia todos os serviços |
| `docker-compose exec [serviço] [cmd]` | Executa comando em um serviço |
| `docker-compose run [serviço] bash` | Acessa terminal de um serviço |

### Flags Comuns

| Flag | Descrição |
|------|-----------|
| `-d` | Executa em modo detached (background) |
| `--build` | Força rebuild das imagens |
| `--force-recreate` | Força recriação dos containers |
| `-f` | Especifica arquivo compose alternativo |

> [!tip] Contribuição
> Essa página foi criada pelos alunos: **Kauã Gonçalves** e **Carlos Armando**

---

## 📎 Veja Também

- [[Python - principal linguagem]]
- [[GitHub - gerenciamento de código]]

