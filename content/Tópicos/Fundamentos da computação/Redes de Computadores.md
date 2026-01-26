---
tipo: aula
resumo: "Redes de Computadores: introdução, benefícios, tipos (LAN, WAN, MAN, PAN), componentes, modelo OSI, protocolos e endereçamento IP."
tags:
  - aula
  - redes
  - computadores
  - fundamentos
---

# Redes de Computadores

> [!quote] O Mundo Conectado
> *Redes de computadores são a espinha dorsal da comunicação moderna, conectando bilhões de dispositivos ao redor do mundo.*

---

## 🤔 O que são Redes de Computadores?

> [!info] Definição
> Uma rede de computadores é um conjunto de dispositivos interconectados que podem trocar dados e compartilhar recursos entre si.

| Pergunta | Resposta |
|----------|----------|
| **O que é?** | Conexão entre dois ou mais dispositivos |
| **Por que precisamos?** | Compartilhar recursos, comunicar, colaborar |
| **Exemplos** | Internet, rede da empresa, Wi-Fi de casa |

---

## ✨ Benefícios das Redes

| Benefício | Descrição |
|-----------|-----------|
| **Compartilhamento de recursos** | Impressoras, arquivos, internet |
| **Comunicação** | E-mail, mensagens, videoconferência |
| **Colaboração** | Trabalho em equipe, documentos compartilhados |
| **Economia** | Menos equipamentos, custos reduzidos |
| **Centralização** | Backup centralizado, gerenciamento facilitado |

---

## 🌐 Tipos de Redes

> [!info] Classificação por Abrangência Geográfica

| Tipo | Nome | Abrangência | Exemplo |
|------|------|-------------|---------|
| **PAN** | Personal Area Network | Poucos metros | Bluetooth do celular |
| **LAN** | Local Area Network | Casa, escritório | Rede da escola |
| **MAN** | Metropolitan Area Network | Cidade | Rede de bibliotecas públicas |
| **WAN** | Wide Area Network | País, mundo | Internet |

---

## 🔧 Componentes de uma Rede

### Dispositivos Finais

| Componente | Função |
|------------|--------|
| **Servidores** | Fornecem recursos e serviços |
| **Clientes** | Solicitam e usam recursos |
| **Estações de trabalho** | Computadores dos usuários |

### Dispositivos de Rede

| Componente | Função |
|------------|--------|
| **Roteador** | Conecta redes diferentes, direciona tráfego |
| **Switch** | Conecta dispositivos na mesma rede |
| **Hub** | Conecta dispositivos (menos inteligente que switch) |
| **Access Point** | Fornece conexão sem fio |

### Meios de Transmissão

| Tipo | Descrição |
|------|-----------|
| **Cabo par trançado** | O mais comum em redes locais |
| **Fibra óptica** | Alta velocidade, usa luz |
| **Sem fio (Wi-Fi)** | Ondas de rádio |

---

## 📚 Modelo OSI

> [!info] As 7 Camadas da Comunicação
> O modelo OSI (Open Systems Interconnection) organiza a comunicação em rede em 7 camadas.

| Camada | Nome | Função | Exemplo |
|--------|------|--------|---------|
| **7** | Aplicação | Interface com usuário | HTTP, FTP |
| **6** | Apresentação | Formatação, criptografia | SSL, JPEG |
| **5** | Sessão | Gerencia conexões | NetBIOS |
| **4** | Transporte | Entrega confiável | TCP, UDP |
| **3** | Rede | Roteamento | IP, ICMP |
| **2** | Enlace | Comunicação local | Ethernet, Wi-Fi |
| **1** | Física | Bits pelo meio físico | Cabos, sinais |

> [!tip] Dica para Memorizar
> "**A**lgumas **P**essoas **S**implesmente **T**êm **R**eceio **E**norme de **F**ísica" (de cima para baixo)

---

## 📡 Protocolos de Redes

> [!info] Regras de Comunicação
> Protocolos são conjuntos de regras que definem como os dados são transmitidos.

| Protocolo | Significado | Uso |
|-----------|-------------|-----|
| **HTTP/HTTPS** | HyperText Transfer Protocol | Páginas web |
| **FTP** | File Transfer Protocol | Transferência de arquivos |
| **TCP** | Transmission Control Protocol | Entrega confiável |
| **UDP** | User Datagram Protocol | Entrega rápida (streaming) |
| **IP** | Internet Protocol | Endereçamento |

---

## 🔢 Endereçamento IP

> [!info] O "Endereço" do Dispositivo
> Cada dispositivo em uma rede precisa de um endereço IP único para ser identificado.

### IPv4 vs IPv6

| Aspecto | IPv4 | IPv6 |
|---------|------|------|
| **Formato** | 4 números (0-255) | 8 grupos hexadecimais |
| **Exemplo** | `192.168.1.1` | `2001:0db8:85a3::8a2e:0370:7334` |
| **Quantidade** | ~4 bilhões | Praticamente ilimitado |
| **Status** | Ainda dominante | Em adoção crescente |

> [!warning] Por que IPv6?
> O IPv4 está "acabando" - não há endereços suficientes para todos os dispositivos conectados no mundo.

---

## 📝 Conclusão

> [!success] Pontos Principais

- Redes conectam dispositivos para **compartilhar recursos e comunicar**
- Existem diferentes tipos: **PAN, LAN, MAN, WAN**
- O **modelo OSI** organiza a comunicação em 7 camadas
- **Protocolos** são regras que permitem a comunicação
- **Endereços IP** identificam cada dispositivo na rede

