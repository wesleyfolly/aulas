---
tipo: aula
resumo: "Modelos de referência OSI e TCP/IP, suas camadas, protocolos e exemplos práticos de utilização."
tags:
  - aula
  - redes-de-computadores
  - modelo-osi
  - tcp-ip
  - protocolos
---

# Modelos OSI e TCP/IP

> [!quote] Fundamentos da Comunicação em Rede
> *Entender os modelos OSI e TCP/IP é essencial para compreender como os dados trafegam pela rede, desde a aplicação até o meio físico.*

---

## 🌐 Modelo OSI (Open Systems Interconnection)

> [!info] Modelo Conceitual
> O modelo OSI é um modelo **conceitual** usado para entender e descrever como diferentes aplicações e protocolos de rede interagem e se comunicam entre si.

![[Recursos/Redes de Computadores/Modelos OSI e TCP IP/modelo-osi-7-camadas.png|Modelo OSI]]

### 📊 As Sete Camadas do Modelo OSI

| Camada | Nome | Função | Protocolos/Exemplos |
|--------|------|--------|---------------------|
| **7** | Aplicação | Interface com o usuário e serviços de rede | HTTP, FTP, SMTP |
| **6** | Apresentação | Tradução, criptografia e compressão | SSL, TLS |
| **5** | Sessão | Gerencia conexões entre aplicações | NFS, NetBIOS, RPC |
| **4** | Transporte | Entrega confiável de dados | TCP, UDP |
| **3** | Rede | Endereçamento e roteamento | IP, ICMP |
| **2** | Enlace de Dados | Transferência confiável entre dispositivos | Ethernet, PPP |
| **1** | Física | Transmissão de bits brutos | Cabos, Wi-Fi, Fibra |

---

### 🔍 Detalhamento das Camadas

> [!tip] Camada 1: Física
> - **Função**: Transmissão e recepção de bits brutos através de um meio físico
> - **Exemplos**: Cabos Ethernet, fibra óptica, Wi-Fi
> - **Utilização**: Transmite dados como sinais elétricos, ópticos ou de rádio

> [!tip] Camada 2: Enlace de Dados
> - **Função**: Transferência confiável entre dois dispositivos conectados diretamente
> - **Exemplos**: Ethernet, PPP
> - **Utilização**: Controla formatação para transmissão e acesso ao meio físico

> [!tip] Camada 3: Rede
> - **Função**: Endereçamento, roteamento e encaminhamento de pacotes
> - **Exemplos**: IP, ICMP
> - **Utilização**: Define rotas para enviar pacotes entre redes diferentes

> [!tip] Camada 4: Transporte
> - **Função**: Transmissão confiável e controle de fluxo entre pontos finais
> - **Exemplos**: TCP, UDP
> - **Utilização**: Garante entrega sem erros e na sequência correta

> [!tip] Camada 5: Sessão
> - **Função**: Gerencia sessões de comunicação entre dispositivos
> - **Exemplos**: NFS, NetBIOS, RPC
> - **Utilização**: Estabelece e gerencia conexões entre máquinas

> [!tip] Camada 6: Apresentação
> - **Função**: Tradução de dados entre formatos de rede e aplicação
> - **Exemplos**: SSL, TLS
> - **Utilização**: Criptografa dados e traduz diferentes formatos

> [!tip] Camada 7: Aplicação
> - **Função**: Interface entre o usuário e os serviços de rede
> - **Exemplos**: HTTP, FTP, SMTP
> - **Utilização**: Fornece interfaces para navegadores, email, etc.

![[Recursos/Redes de Computadores/Modelos OSI e TCP IP/modelo-osi-pdu-protocolos.png|Fluxo de dados no modelo OSI]]

📺 [Vídeo: Modelo OSI](https://www.youtube.com/watch?v=7sW8CXVx7IU)

---

## 🌍 Modelo TCP/IP

> [!info] Modelo Prático
> O modelo TCP/IP (Transmission Control Protocol/Internet Protocol) é o conjunto de protocolos usado para interconectar dispositivos na Internet. É mais prático que o OSI, com menos camadas.

![[Recursos/Redes de Computadores/Modelos OSI e TCP IP/comparativo-osi-tcpip.png|Modelo TCP/IP]]

### 📊 As Quatro Camadas do TCP/IP

| Camada | Função | Protocolos |
|--------|--------|------------|
| **Aplicação** | Comunicação de alto nível | HTTP, HTTPS, FTP, SMTP, DNS |
| **Transporte** | Gerencia transmissão entre sistemas | TCP, UDP |
| **Internet** | Roteamento de pacotes | IP, ICMP, ARP |
| **Acesso à Rede** | Transmissão física dos dados | Ethernet, Wi-Fi, PPP |

---

### 🔄 Comparativo OSI vs TCP/IP

![[Recursos/Redes de Computadores/Modelos OSI e TCP IP/encapsulamento-dados-camadas.png|Encapsulamento de dados]]

| Aspecto | Modelo OSI | Modelo TCP/IP |
|---------|-----------|---------------|
| **Camadas** | 7 camadas | 4 camadas |
| **Natureza** | Teórico/Conceitual | Prático |
| **Uso** | Referência educacional | Internet real |
| **Protocolos** | Independente | Suite específica |

> [!success] Exemplo Prático
> Use o Wireshark para visualizar as camadas do modelo TCP/IP em ação durante uma captura de pacotes.

---

## 📡 Protocolos de Rede

![[Recursos/Redes de Computadores/Modelos OSI e TCP IP/protocolos-por-camada-tcpip.png|Protocolos por camada]]

> [!info] Definição
> Os protocolos de rede definem regras e convenções para a comunicação entre dispositivos. Cada um tem uma função específica.

### 📋 Principais Protocolos

| Protocolo | Descrição |
|-----------|-----------|
| **HTTP/HTTPS** | Transferência de documentos web (seguro com HTTPS) |
| **FTP/SFTP** | Transferência de arquivos (seguro com SFTP) |
| **TCP** | Protocolo orientado à conexão, entrega confiável |
| **UDP** | Protocolo de datagramas, mais rápido, sem garantia |
| **IP** | Encaminhamento de pacotes através de redes |
| **ICMP** | Relatórios de erros e informações operacionais |
| **SSH** | Gerenciamento seguro de sistemas remotos |
| **Telnet** | Interação com servidores remotos (inseguro) |
| **SMTP** | Transferência de e-mails entre servidores |
| **POP3/IMAP** | Recuperação de mensagens de e-mail |
| **DNS** | Tradução de nomes de domínio para IPs |
| **DHCP** | Atribuição automática de endereços IP |
| **ARP** | Mapeamento de IP para endereço MAC |
| **RDP** | Conexão e controle de desktop remoto |

---

## 🔬 Exemplos Práticos

### 1️⃣ Camada de Aplicação — Transferência FTP/SSH

> [!tip] Objetivo
> Transferir um arquivo usando FTP ou SSH.

**Via SSH (SCP):**

```bash
# Enviar arquivo para servidor
scp /caminho/local/arquivo usuario@servidor:/caminho/remoto/destino

# Baixar arquivo do servidor
scp usuario@servidor:/caminho/remoto/arquivo /caminho/local/destino
```

---

### 2️⃣ Camada de Transporte — Netcat

> [!tip] Objetivo
> Criar uma conexão TCP simples entre dois computadores.

```bash
# No servidor (escutar na porta 1234)
nc -l 1234

# No cliente (conectar ao servidor)
nc [IP do Servidor] 1234
```

> [!success] Resultado
> As mensagens digitadas em um terminal aparecem no outro.

---

### 3️⃣ Camada de Internet — Traceroute

> [!tip] Objetivo
> Analisar a rota percorrida pelos pacotes até um destino.

```bash
# Linux/macOS
traceroute google.com

# Windows
tracert google.com
```

---

### 4️⃣ Camada de Acesso à Rede — ARP

> [!tip] Objetivo
> Observar o mapeamento de IP para MAC.

```bash
# Limpar tabela ARP
arp -d

# Visualizar tabela ARP
arp -a
```

> [!info] Análise com Wireshark
> Use o filtro `arp` para visualizar solicitações e respostas ARP.

---

## 🎯 Filtros Úteis do Wireshark

> [!success] Para Análise de Protocolos

| Filtro | Descrição |
|--------|-----------|
| `ip.addr == x.x.x.x` | Filtrar por IP específico |
| `dns.qry.name == "dominio.com"` | Consultas DNS para um domínio |
| `http.request.full_uri contains "site"` | Requisições HTTP para um site |
| `ip.addr == x.x.x.x && tcp.port == 80` | IP específico na porta HTTP |
| `arp` | Pacotes ARP |

