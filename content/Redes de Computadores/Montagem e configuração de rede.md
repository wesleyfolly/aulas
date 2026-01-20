# Montagem e configuração de rede

# Configuração de IP (windows e linux)

# Escaneamento e análise de Rede

# Crimpagem de cabos

# **Objetivos da Aula**

- **Compreender** os padrões de cabeamento estruturado (T568A e T568B).
- **Aprender** a preparar e crimpar cabos de rede Ethernet (UTP) utilizando conectores RJ-45.
- **Identificar** as diferenças entre cabos diretos e crossover e suas aplicações.
- **Realizar** testes de conectividade e solucionar possíveis problemas na crimpagem.

---

# **Materiais Necessários**

- **Cabos UTP** Categoria 5e ou 6 (par trançado).
- **Conectores RJ-45** adequados para cabos sólidos ou flexíveis.
- **Alicate de crimpagem** para conectores RJ-45.
- **Decapador de cabos** ou estilete.
- **Testador de cabos de rede** (cabo LAN tester).
- **Aparelhos para teste** (dois computadores ou um computador e um switch).
- **EPI**: Óculos de proteção (opcional).

---

![image.png/Recursos/Redes de Computadores/Montagem e configuração de rede/image.png)

# **Conteúdo Programático**

1. **Introdução aos Cabos de Rede**
    - Tipos de cabos (UTP, STP, coaxial, fibra óptica).
    - Categorias de cabos UTP (Cat5e, Cat6, etc.).
2. **Padrões de Cabeamento**
    - **TIA/EIA-568A** e **TIA/EIA-568B**.
    - Aplicações dos padrões (cabo direto vs. crossover).
3. **Ferramentas e Materiais**
    - Função de cada ferramenta.
    - Tipos de conectores e cabos.
4. **Procedimentos de Crimpagem**
    - Preparação do cabo.
    - Sequência de cores e organização dos fios.
    - Técnicas de inserção e crimpagem do conector.
5. **Testes e Solução de Problemas**
    - Uso do testador de cabos.
    - Identificação de falhas comuns.

---

# **Passo a Passo Detalhado**

## **1. Introdução Teórica (30 minutos)**

## **a) Apresentação dos Padrões de Cabeamento**

- **Padrão T568A:**
    
    
    | Pino | Cor do Fio |
    | --- | --- |
    | 1 | Branco e Verde |
    | 2 | Verde |
    | 3 | Branco e Laranja |
    | 4 | Azul |
    | 5 | Branco e Azul |
    | 6 | Laranja |
    | 7 | Branco e Marrom |
    | 8 | Marrom |
- **Padrão T568B:**
    
    
    | Pino | Cor do Fio |
    | --- | --- |
    | 1 | Branco e Laranja |
    | 2 | Laranja |
    | 3 | Branco e Verde |
    | 4 | Azul |
    | 5 | Branco e Azul |
    | 6 | Verde |
    | 7 | Branco e Marrom |
    | 8 | Marrom |
- **Aplicações:**
    - **Cabo Direto:** Mesmo padrão nas duas extremidades (T568B/T568B ou T568A/T568A).
    - **Cabo Crossover:** Padrão T568A em uma extremidade e T568B na outra.

Na prática, **o padrão 568B é o mais usado** por ser historicamente mais adotado pelas empresas de telecomunicações.

## **2. Demonstração Prática (15 minutos)**

- O instrutor deve mostrar como crimpar um cabo passo a passo, explicando cada etapa.

**Vídeo de apoio:**

- [Como crimpar um cabo de rede RJ-45 - Tutorial Prático](https://www.youtube.com/watch?v=XXXXXX)

*(Nota: Insira um link válido para um vídeo de demonstração.)*

## **3. Atividade Prática dos Alunos (1 hora)**

## **a) Preparação do Cabo**

1. **Medir e Cortar o Cabo:**
    - Definir o comprimento necessário.
    - Utilizar o alicate para cortar o cabo.
2. **Remover a Capa Externa:**
    - Com o decapador ou estilete, retirar aproximadamente 2 cm da capa.
    - **Cuidado:** Não danificar os fios internos.

## **b) Organização dos Fios**

1. **Desembaraçar os Pares Trançados:**
    - Separar os quatro pares de fios.
2. **Alinhar os Fios de Acordo com o Padrão Escolhido:**
    - Seguir a sequência de cores do padrão T568B (mais utilizado).
3. **Endireitar os Fios:**
    - Utilizar os dedos para alinhar e endireitar os fios.

**Imagem dos fios organizados segundo o padrão:**

*(O instrutor deve fornecer imagens para auxiliar os alunos.)*

## **c) Corte Uniforme dos Fios**

- Com os fios alinhados, cortar as pontas para que fiquem niveladas e com aproximadamente 1,5 cm de comprimento.

## **d) Inserção no Conector RJ-45**

1. **Verificar a Orientação do Conector:**
    - A trava do conector deve estar voltada para baixo.
2. **Inserir os Fios no Conector:**
    - Introduzir os fios no conector, certificando-se de que cada fio está em sua posição correta.
    - A capa externa do cabo deve entrar um pouco no conector para dar firmeza.

## **e) Crimpagem do Conector**

1. **Posicionar o Conector no Alicate:**
    - Inserir o conector na posição correta no alicate de crimpagem.
2. **Aplicar Pressão:**
    - Apertar firmemente o alicate até o fim do curso.

## **f) Repetir o Processo na Outra Extremidade**

- Decidir se será um cabo direto ou crossover e repetir os passos anteriores conforme o padrão adequado.

## **g) Teste do Cabo**

1. **Utilizar o Testador de Cabos:**
    - Conectar cada extremidade do cabo no testador.
    - Ligar o dispositivo e verificar se todos os pares estão conectados corretamente.
2. **Analisar os Resultados:**
    - Se o teste indicar falhas, identificar e corrigir os problemas.

## **4. Discussão e Solução de Problemas**

- **Erros Comuns:**
    - Fios na ordem incorreta.
    - Fios não totalmente inseridos no conector.
    - Má crimpagem resultando em contatos frouxos.
- **Dicas:**
    - Sempre verificar a sequência de cores antes de crimpar.
    - Garantir que os fios estejam alinhados e nivelados.
    - Não decapar muito a capa externa para evitar interferências.

---

# Configuração de roteadores

## **1. Introdução**

- **O que é um Roteador:** Dispositivo que encaminha pacotes de dados entre redes de computadores, criando ou mantendo uma tabela de rotas para determinar os melhores caminhos.
- **Função dos Roteadores:** Conectar diferentes redes, gerenciar o tráfego de rede, decidir o caminho que a informação seguirá para chegar ao destino.
- **Roteadores vs. Switches:** Roteadores operam na camada 3 (rede), enquanto switches operam na camada 2 (enlace de dados). (existem exceções)

## **2. Tipos de Roteadores**

- **Roteadores Domésticos:** Para usuários domésticos, simples, com funcionalidades limitadas de configuração.
- **Roteadores Empresariais:** Suportam uma maior carga de tráfego, mais opções de configuração e segurança.
- **Roteadores de Borda:** Conectam redes empresariais à internet.
- **Roteadores de Núcleo:** Operam no coração de grandes redes, gerenciando grandes volumes de dados.

## **3. Configuração Básica de um Roteador**

- **Acesso ao Roteador:**
    - Usar cabo de console e software de terminal (como PuTTY).
- **Configuração Inicial:**
    - **Hostname:** **`Router(config)# hostname [nome do roteador]`**
    - **Senhas:** Configuração de senha de console e VTY para acesso remoto.
    - **Interfaces:** **`Router(config-if)# ip address [endereço IP] [máscara de sub-rede]`** e **`Router(config-if)# no shutdown`**
    - **Teste de Conectividade:** Uso do comando **`ping`** para verificar a conectividade.

## **4. Configurações Avançadas**

- **Rotas Estáticas:** **`Router(config)# ip route [destino] [máscara] [gateway]`**
- **Protocolos de Roteamento Dinâmico:** Introdução básica ao OSPF e EIGRP.
- **Segurança:** Configuração básica de firewall e ACLs para proteger a rede.

# Configuração de switches

# 1. Introdução

- **O que é um Switch:** Um dispositivo de rede que conecta outros dispositivos em uma rede de computadores usando pacotes para receber, e encaminhar dados ao dispositivo destino.
- **Funções Básicas:**
    - Filtragem de pacotes por endereços MAC.
    - Encaminhamento de pacotes para a porta correta.
    - Eliminação de colisões em ambientes de rede.
- **Switch vs. Hub:**
    - **Switch:** Decide onde enviar um pacote após receber e ler o endereço de destino.
    - **Hub:** Envia pacotes para todos os dispositivos conectados, independentemente do destino.

## **2. Tipos de Switches**

- **Switches Gerenciáveis:** Oferecem funcionalidades avançadas como VLANs, QoS, e segurança, permitindo uma gestão e configuração detalhada.
- **Switches Não Gerenciáveis:** São plug-and-play, sem opções de configuração.
- **Switches de Camada 2:** Operam usando endereços MAC para encaminhamento de pacotes dentro da mesma rede.
- **Switches de Camada 3:** Realizam funções de roteamento, usando IPs para interconectar diferentes redes.

## **3. Configuração Básica de um Switch**

**Objetivo:** Ensinar os passos iniciais para acessar e configurar um switch.

**Conteúdo:**

- **Acesso ao Switch:**
    - Conectar ao switch via cabo de console.
    - Usar um software de terminal (como PuTTY) para acessar o switch.
- **Configuração Inicial:**
    - **Definir Hostname:** **`Switch(config)# hostname [nome do switch]`**
    - **Configurar Senhas:**
        - Senha de console: **`Switch(config)# line console 0`** seguido de **`Switch(config-line)# password [senha]`** e **`Switch(config-line)# login`**
        - Senha VTY: **`Switch(config)# line vty 0 15`** seguido de **`Switch(config-line)# password [senha]`** e **`Switch(config-line)# login`**
    - **Salvar Configuração:** **`Switch# copy running-config startup-config`**
- **Interfaces e Portas:**
    - Visualização: **`Switch# show interfaces status`**

## **4. Configurações Avançadas**

**Objetivo:** Introduzir configurações mais complexas como VLANs, segurança de porta e agregação de link.

**Conteúdo:**

- **VLANs:**
    - Criação de VLAN: **`Switch(config)# vlan [número da vlan]`**
    - Atribuir porta à VLAN: **`Switch(config)# interface [tipo e número da interface]`** seguido de **`Switch(config-if)# switchport access vlan [número da vlan]`**
- **Segurança de Porta (Port Security):**
    - Ativar segurança: **`Switch(config-if)# switchport port-security`**
    - Definir número máximo de MACs: **`Switch(config-if)# switchport port-security maximum [número]`**
- **Link Aggregation (EtherChannel):**
    - Configurar EtherChannel: **`Switch(config)# interface port-channel [número]`**
    - Adicionar interfaces ao grupo: **`Switch(config-if)# channel-group [número] mode active`**

# Configuração de clientes