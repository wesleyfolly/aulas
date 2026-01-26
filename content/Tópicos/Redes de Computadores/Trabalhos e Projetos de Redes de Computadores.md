---
tipo: avaliacao
resumo: "Banco de tarefas e trabalhos práticos da disciplina de Redes de Computadores, incluindo atividades práticas e teóricas."
tags:
  - avaliacao
  - redes-de-computadores
  - trabalhos
  - tarefas
---

# Trabalhos e Projetos de Redes de Computadores

> [!quote] Aprendizado Prático
> *Não é necessário realizar todas as tarefas abaixo, somente as que forem solicitadas pelo professor.*

---

## 📚 Ensino Integrado

### 📝 Exercícios das Apostilas

> [!info] Apostila de Segurança da Informação (E-tec Brasil)

| Tarefa | Conteúdo | Pontuação |
|--------|----------|-----------|
| **Parte 1** | Capítulos 1 ao 4 | 0,5 ponto |
| **Parte 2** | Capítulos 5 ao 8 | 0,5 ponto |

> [!info] Apostila de Redes de Computadores
> Exercícios conforme indicado em aula.

---

### 🌐 Reconhecimento da Rede Local

> [!tip] Mapeamento da Rede Doméstica

![[Recursos/Redes de Computadores/Tarefas e trabalhos/dispositivos-conectados-rede.png|Exemplo de documentação]]

#### Objetivo
Criar um arquivo de texto (com capa e conteúdo) descrevendo a sua rede doméstica.

#### Requisitos

| Item | Descrição |
|------|-----------|
| **Dispositivos** | Quantidade total na rede |
| **Configuração** | IP, máscara, Gateway e DNS de cada |
| **Roteadores** | IP interno e externo |
| **Evidências** | Prints de tela |

> [!tip] Caso você só possua um celular
> Não tem problema! Faça a mesma análise apenas com seu dispositivo móvel.

> [!warning] Privacidade
> As informações são confidenciais e servem somente para aprendizagem. Servirão para configurar acessos a máquinas virtuais e servidores.

---

### 📡 Reconhecimento de Redes Wi-Fi

> [!info] Mapeamento de Redes Sem Fio Próximas

#### Objetivo
Elaborar uma **tabela** com todas as redes Wi-Fi captadas da sua casa.

#### Campos Obrigatórios

| Campo | Descrição |
|-------|-----------|
| **BSSID** | MAC do roteador |
| **Nome da rede** | SSID |
| **Criptografia** | WEP, WPA, WPA2, WPA3 |
| **WPS** | Se o protocolo está ativado |
| **Sinal** | Nível em dBm |

> [!tip] Ferramentas
> Use as ferramentas demonstradas em aula ou escolha outras que obtenham os dados listados.

---

### 📊 Análise de Mercado em Redes

> [!success] Pesquisa de Conhecimentos Necessários

#### Estrutura da Pesquisa

| Área | Fonte |
|------|-------|
| Concursos - TI Geral | Editais (municipal, estadual, federal) |
| Concursos - Área Específica | Editais de vagas de redes |
| Empresas - TI Geral | Vagas no LinkedIn |
| Empresas - Área Específica | Vagas de redes no LinkedIn |

> [!info] Observação
> Na análise de editais, analisar no mínimo um concurso municipal, estadual e federal.

#### Recursos

| Site | URL |
|------|-----|
| **PCI Concursos** | [pciconcursos.com.br](https://www.pciconcursos.com.br/) |
| **QConcursos** | [qconcursos.com](https://www.qconcursos.com/) |

#### Exemplo de Conteúdo (Concurso Municipal)

> [!info] Prefeitura de Marechal Cândido Rondon - PR - Analista de Sistema

**Tópicos cobrados:**
- Conceitos e Fundamentos
- Arquitetura de redes
- Meios de transmissão
- Redes LAN e WAN
- Políticas de backup/restore
- Anti-vírus

---

### 📋 Questões de Concursos

> [!tip] Tarefa Teórica

Estudar e montar material com as últimas questões de concursos de TI na área de redes de computadores.

---

### 🐳 Trabalho: Introdução ao Docker

> [!warning] Trabalho Prático

#### Tema
Introdução prática ao Docker: criar, executar e gerenciar um container simples.

#### Objetivos
- Entender na prática o que é Docker
- Aprender a baixar imagem, subir container, acessar serviço e derrubar container

#### Pré-requisitos
- Docker instalado (`docker --version`)
- Terminal (Linux, macOS ou WSL no Windows)

#### Etapas

##### 1️⃣ Testar Instalação

```bash
docker run hello-world
```
> Fazer print da saída

##### 2️⃣ Baixar Imagem do Nginx

```bash
docker pull nginx
```

##### 3️⃣ Subir Container

```bash
docker run --name meu-nginx -d -p 8080:80 nginx
```

##### 4️⃣ Testar no Navegador

- Acessar: `http://localhost:8080`
- Verificar página padrão do Nginx
- Print da tela

##### 5️⃣ Listar Containers

```bash
docker ps
```

##### 6️⃣ Parar e Remover

```bash
docker stop meu-nginx
docker rm meu-nginx
docker ps  # Verificar que não há containers
```

#### Entrega

| Item | Descrição |
|------|-----------|
| **Formato** | Arquivo .md ou .pdf |
| **Conteúdo** | Comandos utilizados + prints |
| **Reflexão** | 1 parágrafo: "O que é Docker pra você?" |

> [!tip] Recurso Relacionado
> [[Docker - gerenciamento de containers]]

---

## 🎓 Ensino Superior

> [!info] Trabalhos Específicos
> Conteúdo a ser definido conforme a turma.

