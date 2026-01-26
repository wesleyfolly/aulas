---
tipo: aula
resumo: "Fundamentos de redes de computadores: definições, tipos de rede, topologias, equipamentos e meios de comunicação."
tags:
  - aula
  - redes-de-computadores
  - fundamentos
---

# Conceitos Básicos de Redes

> [!quote] O Início de Tudo
> *Entender os conceitos fundamentais de redes é o primeiro passo para dominar a comunicação digital.*

---

## 🎬 Vídeos Introdutórios

> [!tip] Comece por Aqui
> Assista estes vídeos para uma introdução visual aos conceitos de redes.

| Vídeo | Descrição |
|-------|-----------|
| [A História da Internet](https://www.youtube.com/watch?v=pKxWPo73pX0) | História da Tecnologia |
| [Da web "cringe" à web 3.0](https://www.youtube.com/watch?v=_nxiWws7CpA) | Nerdologia Tech |
| [Internet em Tudo](https://www.youtube.com/watch?v=iI4ZPZjPM5c) | Nerdologia |

---

## 📖 Conceituação

> [!info] O que são Redes de Computadores?
> Sistemas de **dispositivos interligados** que compartilham recursos e informações.

### Principais Usos

- Compartilhamento de dados e arquivos
- Comunicação (email, chat, videoconferência)
- Colaboração em tempo real
- Serviços da Internet
- Acesso a recursos compartilhados (impressoras, storage)

### Componentes Principais

| Componente | Descrição |
|------------|-----------|
| **Nós** | Computadores e dispositivos conectados |
| **Conexões** | Cabos, Wi-Fi, fibra óptica |
| **Dispositivos de rede** | Switches, roteadores, access points |

> [!tip] Exemplo Prático
> Use o **Wireshark** para análise básica de pacotes na rede local.

![[Recursos/Redes de Computadores/Conceitos básicos/diagrama-estrutura-rede.png|Estrutura de rede]]

---

## 🌐 Tipos de Redes

> [!info] Classificação por Abrangência

| Tipo | Nome | Descrição | Exemplo |
|------|------|-----------|---------|
| **PAN** | Personal Area Network | Pequena escala, único usuário | Bluetooth, USB |
| **LAN** | Local Area Network | Escritórios, residências | Rede doméstica |
| **MAN** | Metropolitan Area Network | Área metropolitana | Provedor de internet |
| **WAN** | Wide Area Network | Cidades, países, mundo | Internet |
| **VPN** | Virtual Private Network | Rede privada sobre rede pública | Túnel corporativo |

> [!tip] Exemplo Prático
> Uso da VPN Kaspersky e redes Tor com Kali Linux.

![[Recursos/Redes de Computadores/Conceitos básicos/tipos-redes-wireless-ieee.png|Tipos de redes]]

---

## 🔗 Topologias de Rede

> [!info] Como os Dispositivos se Conectam

| Topologia | Descrição | Vantagens | Desvantagens |
|-----------|-----------|-----------|--------------|
| **Barramento** | Todos conectados a um único cabo | Simples, barato | Falha única afeta toda rede |
| **Anel** | Dispositivos em círculo | Fácil detecção de falhas | Difícil adicionar nós |
| **Estrela** | Todos conectados a um hub central | Fácil manutenção | Hub é ponto único de falha |
| **Malha** | Cada dispositivo conectado a todos | Alta redundância | Alto custo |
| **Árvore** | Combinação de estrela e barramento | Escalável | Complexa |

> [!tip] Exemplo Prático
> Criar topologias usando o **Packet Tracer**.

![[Recursos/Redes de Computadores/Conceitos básicos/topologias-de-rede.png|Topologias de rede]]

---

## 📜 Evolução e História das Redes

> [!info] Timeline da Internet

### 1960s — Os Primórdios
- **1962**: J.C.R. Licklider propõe uma "Rede Galáctica" global
- **1965**: Primeira conexão remota via linha telefônica (TX-2 ↔ Q-32)

### 1970s — Nasce a ARPANET
- **1970**: ARPANET conecta 4 universidades nos EUA
- **1973**: Primeira conexão internacional (EUA ↔ Londres)
- **1974**: Termo "Internet" usado pela primeira vez
- **1979**: Usenet é criada

### 1980s — TCP/IP e WWW
- **1982**: TCP/IP torna-se o protocolo padrão
- **1983**: ARPANET divide-se em ARPANET e MILNET
- **1985**: NSFNET forma a espinha dorsal dos EUA
- **1989**: Tim Berners-Lee propõe a World Wide Web

### 1990s — Explosão da Internet
- **1990**: ARPANET desativada
- **1991**: WWW lançada ao público
- **1994**: Netscape Navigator
- **1998**: Google fundado

### 2000s — Web 2.0
- **2001**: Wikipedia
- **2004**: Facebook
- **2005**: YouTube
- **2007**: iPhone acelera a Internet móvel

### 2010s-2020s — Era Moderna
- **2010**: Instagram
- **2015**: Maioria do tráfego criptografado
- **2019**: Internet atinge 56% de penetração global
- **2020s**: IoT, 5G e IA impulsionam a evolução

> [!tip] Exemplo Prático
> Explore o [Internet Archive](https://archive.org/) para ver como sites evoluíram.

---

## 🖥️ Equipamentos de Rede

> [!info] Hardware Essencial

| Equipamento | Camada OSI | Função |
|-------------|------------|--------|
| **Switch** | Camada 2 | Conecta dispositivos na LAN usando MAC |
| **Roteador** | Camada 3 | Conecta redes usando IP |
| **Access Point** | Camada 1-2 | Permite conexão Wi-Fi |
| **Modem** | Camada 1 | Modula/demodula sinais |
| **Firewall** | Camada 3-7 | Filtra tráfego de rede |
| **Servidor** | Todas | Fornece serviços e recursos |

![[Recursos/Redes de Computadores/Conceitos básicos/equipamentos-de-rede.png|Equipamentos de rede]]

> [!tip] Exemplo Prático
> Descoberta de roteadores e clientes com **aircrack-ng** no Kali Linux.

---

## 📡 Meios de Comunicação

> [!info] Como os Dados Viajam

### 1. Cabo de Par Trançado

| Característica | Descrição |
|----------------|-----------|
| **Estrutura** | Pares de fios de cobre trançados |
| **Uso** | LANs e telefonia |
| **Categorias** | Cat5e, Cat6, Cat6a, Cat7 |

![[Recursos/Redes de Computadores/Conceitos básicos/cabo-par-trancado.png|Cabo par trançado]]

### 2. Cabo Coaxial

| Característica | Descrição |
|----------------|-----------|
| **Estrutura** | Núcleo de cobre + isolante + blindagem |
| **Uso** | TV a cabo, redes antigas |

![[Recursos/Redes de Computadores/Conceitos básicos/cabo-coaxial-conectores.png|Cabo coaxial]]

![[Recursos/Redes de Computadores/Conceitos básicos/cabo-coaxial-estrutura.png|Estrutura do coaxial]]

### 3. Fibra Óptica

| Característica | Descrição |
|----------------|-----------|
| **Estrutura** | Filamentos de vidro/plástico |
| **Uso** | Backbones, alta velocidade |
| **Vantagem** | Imune a interferência eletromagnética |

![[Recursos/Redes de Computadores/Conceitos básicos/fibra-optica.png|Fibra óptica]]

### 4. Comunicação Sem Fio

| Característica | Descrição |
|----------------|-----------|
| **Tecnologias** | Wi-Fi, Bluetooth, infravermelho |
| **Uso** | Redes domésticas, dispositivos móveis |

![[Recursos/Redes de Computadores/Conceitos básicos/roteador-wireless.png|Comunicação sem fio]]

---

## 🛠️ Aulas Práticas

> [!success] Atividades Hands-on

| Prática | Descrição |
|---------|-----------|
| **Aula 1** | Crimpagem de cabo de rede (par trançado) |
| **Aula 2** | Configuração de roteador sem fio simples |

