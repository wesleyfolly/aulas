---
tipo: aula
resumo: "Endereçamento IPv4, classes de endereços, CIDR, sub-redes e exercícios práticos com questões de concursos."
tags:
  - aula
  - redes-de-computadores
  - ipv4
  - subnetting
  - cidr
---

# Endereçamento IPv4

> [!quote] O Alicerce da Internet
> *O IPv4 foi o primeiro protocolo de rede amplamente adotado e ainda é o protocolo dominante na Internet, sendo essencial para qualquer profissional de redes.*

---

## 📖 Introdução ao IPv4

> [!info] Definição
> IPv4 (Internet Protocol version 4) é a quarta versão do Internet Protocol (IP). É um dos principais protocolos em que se baseia a internet.

| Característica | Valor |
|----------------|-------|
| **Bits** | 32 bits |
| **Formato** | Quatro octetos decimais (0-255) |
| **Exemplo** | 192.168.0.1 |
| **Total de endereços** | ~4,3 bilhões |

> [!tip] Recurso Útil
> Explore o [Censys](https://censys.io/) para visualizar dispositivos conectados à internet.

---

## 🔢 Estrutura do Endereço IPv4

> [!info] Composição
> Os endereços IPv4 são divididos em duas partes: **identificação da rede** e **identificação do host**.

![[Recursos/Redes de Computadores/Endereçamento IPv4/ipv4-formato-octetos-binario.png|Estrutura do IPv4]]

### Visualizar seu IP

```bash
# Linux
ifconfig

# Windows
ipconfig
```

![[Recursos/Redes de Computadores/Endereçamento IPv4/ipv4-classe-b-exemplo.png|Exemplo de configuração IP]]

---

## 📊 Classes de Endereços IPv4

> [!warning] Nota Histórica
> O esquema de classes foi descontinuado em 1993 e substituído pelo CIDR, mas ainda é cobrado em concursos.

| Classe | Primeiro Octeto | Hosts por Rede | Uso |
|--------|-----------------|----------------|-----|
| **A** | 0-127 | ~16 milhões | Grandes organizações |
| **B** | 128-191 | ~65 mil | Organizações médias |
| **C** | 192-223 | 254 | Pequenas redes |
| **D** | 224-239 | — | Multicast |
| **E** | 240-255 | — | Reservado/Pesquisa |

![[Recursos/Redes de Computadores/Endereçamento IPv4/ipv4-classes-ranges-mascaras.png|Classes IPv4]]

![[Recursos/Redes de Computadores/Endereçamento IPv4/ipv4-classes-detalhes-redes.png|Detalhamento das classes]]

---

## 🎯 CIDR (Classless Inter-Domain Routing)

> [!success] Solução Moderna
> A CIDR permite a divisão de espaços de endereços IP em blocos de tamanhos variáveis, proporcionando uso mais eficiente dos endereços.

### Notação CIDR

| Notação | Máscara | Hosts |
|---------|---------|-------|
| /24 | 255.255.255.0 | 254 |
| /25 | 255.255.255.128 | 126 |
| /26 | 255.255.255.192 | 62 |
| /27 | 255.255.255.224 | 30 |
| /28 | 255.255.255.240 | 14 |
| /29 | 255.255.255.248 | 6 |
| /30 | 255.255.255.252 | 2 |

**Exemplo**: `192.168.0.1/24` indica que os primeiros 24 bits são a rede.

---

## 🔀 Sub-redes e Máscaras

> [!info] Conceito
> Sub-rede é uma divisão de uma rede maior, feita para melhorar o desempenho e a segurança.

A **máscara de sub-rede** divide o endereço IP em:
- Parte de **rede**
- Parte de **host**

**Exemplo Classe C**: Máscara `255.255.255.0`

![[Recursos/Redes de Computadores/Endereçamento IPv4/ipv4-subnetting-tabela.png|Máscaras de sub-rede]]

📺 [Vídeo: Cálculo de sub-redes](https://www.youtube.com/watch?v=wBUxveZAgco)

---

## ⚡ Endereços Especiais

> [!tip] Endereços Reservados

| Endereço | Função |
|----------|--------|
| **127.0.0.1** | Loopback (teste local) |
| **255.255.255.255** | Broadcast (todos na rede) |
| **0.0.0.0** | Endereço de rede/rota padrão |

### 🔒 Faixas de Endereços Privados

![[Recursos/Redes de Computadores/Endereçamento IPv4/ipv4-blocos-privados-cidr.png|Redes privadas]]

| Classe | Faixa | CIDR |
|--------|-------|------|
| **A** | 10.0.0.0 – 10.255.255.255 | 10.0.0.0/8 |
| **B** | 172.16.0.0 – 172.31.255.255 | 172.16.0.0/12 |
| **C** | 192.168.0.0 – 192.168.255.255 | 192.168.0.0/16 |

> [!warning] Importante
> Endereços privados **não podem** ser roteados na Internet pública.

---

## 🔄 NAT (Network Address Translation)

> [!info] Conceito
> NAT permite que vários dispositivos em uma rede local compartilhem um único endereço IP público, traduzindo endereços privados para públicos.

---

## ⚔️ IPv4 vs IPv6

| Característica | IPv4 | IPv6 |
|----------------|------|------|
| **Bits** | 32 bits | 128 bits |
| **Formato** | Numérico (decimal) | Alfanumérico (hexadecimal) |
| **Endereços** | ~4,3 bilhões | ~340 undecilhões |
| **Segurança** | Não integrada | IPSec nativo |

---

## 📝 Exercícios Práticos

> [!tip] Pratique!

1. **Exercício 1**: Dado o IP `192.168.1.5/24`, qual é o endereço de rede e o de broadcast?

2. **Exercício 2**: Na sub-rede `192.168.1.0/26`, quantos endereços de host estão disponíveis?

3. **Exercício 3**: Use o Wireshark para capturar pacotes e identificar endereços IPv4.

---

## 🎯 Questões de Concursos

> [!success] Teste seus Conhecimentos
> 🔗 [QConcursos](https://www.qconcursos.com/) — Pratique com questões reais

---

### 📋 Questão 1 — FGV 2024

> [!info] Q3032303
> Virgínia foi contratada para efetuar reparos na rede da empresa K. A empresa tem o range 192.168.0.0/24, dividido em sub-redes /28. As máquinas incorretas tinham os IPs: 192.168.0.85, 192.168.0.86 e 192.168.0.87. A sub-rede correta é:

| Alternativa | Valor |
|-------------|-------|
| A | 192.168.0.32 |
| B | 192.168.0.48 |
| C | 192.168.0.64 |
| D | 192.168.0.80 ✓ |
| E | 192.168.0.96 |

---

### 📋 Questão 2 — CESPE 2024

> [!info] Q3011899
> Foram criadas 8 sub-redes da rede classe C 192.168.0.0 com máscara 255.255.255.0. A nova máscara em binário é:

| Alternativa | Máscara |
|-------------|---------|
| A | 11111111.11111111.11111111.10000000 |
| B | 11111111.11111111.11111111.11000000 |
| C | 11111111.11111111.11111111.11100000 ✓ |
| D | 11111111.11111111.11111111.11110000 |
| E | 11111111.11111111.11111111.11111000 |

---

### 📋 Questão 3 — IBADE 2017

> [!info] Q2794433
> Se uma rede opera com IP 192.168.5.64/26, a máscara de sub-rede é:

| Alternativa | Máscara |
|-------------|---------|
| A | 255.255.255.224 |
| B | 255.255.192.0 |
| C | 255.255.255.240 |
| D | 255.255.224.0 |
| E | 255.255.255.192 ✓ |

---

### 📋 Questão 4 — FEPESE 2021

> [!info] Q2678187
> Qual o número máximo de sub-redes possível com CIDR /27?

| Alternativa | Valor |
|-------------|-------|
| A | 4 |
| B | 8 ✓ |
| C | 16 |
| D | 32 |
| E | 64 |

---

### 📋 Questão 5 — FCC 2023

> [!info] Q2635540
> Para criar 8 sub-redes com 32 IPs cada (30 hosts) na rede 192.168.15.0/24, a quantidade de bits para sub-redes e hosts são:

| Alternativa | Bits |
|-------------|------|
| A | 2 e 6 |
| B | 3 e 5 ✓ |
| C | 4 e 4 |
| D | 6 e 2 |
| E | 5 e 3 |

---

### 📋 Questão 6 — IBADE 2024

> [!info] Q2554178
> O que significa o termo "subnetting"?

| Alternativa | Resposta |
|-------------|----------|
| A | Criptografia de dados |
| B | Divisão de uma rede IP em sub-redes menores ✓ |
| C | Roteamento dinâmico |
| D | Modulação de sinais |
| E | Filtragem de pacotes |

---

### 📋 Questão 7 — UERJ 2024

> [!info] Q2493756
> Rede 1 precisa de 60 IPs, Rede 2 precisa de 200 IPs. As máscaras com menor desperdício são:

| Alternativa | Máscaras |
|-------------|----------|
| A | 255.255.255.0 / 255.255.254.0 |
| B | 255.255.255.192 / 255.255.255.0 ✓ |
| C | 255.255.255.252 / 255.255.255.0 |
| D | 255.255.255.254 / 255.255.254.0 |

---

### 📋 Questão 8 — SELECON 2024

> [!info] Q2467556
> Sub-rede 197.234.155.32/27. Um IP válido e a máscara são:

| Alternativa | IP / Máscara |
|-------------|--------------|
| A | 197.234.155.80 / 255.255.255.224 |
| B | 197.234.155.60 / 255.255.255.224 ✓ |
| C | 197.234.155.80 / 255.255.255.0 |
| D | 197.234.155.60 / 255.255.255.0 |

---

### 📋 Questão 9 — Marinha 2020

> [!info] Q2425453
> Máscara que comporta exatamente blocos de 8 hosts:

| Alternativa | Máscara |
|-------------|---------|
| A | 255.255.255.248 ✓ |
| B | 255.255.255.128 |
| C | 255.255.255.240 |
| D | 255.255.255.192 |
| E | 255.255.255.224 |

---

### 📋 Questão 10 — Marinha 2020

> [!info] Q2425430
> Forma alternativa de representar 255.255.255.192:

| Alternativa | CIDR |
|-------------|------|
| A | /29 |
| B | /28 |
| C | /26 ✓ |
| D | /25 |
| E | /22 |

---

### 📋 Questão 11 — CETAP 2021

> [!info] Q2411822
> Com máscara 255.255.255.128, o número de hosts possíveis é:

| Alternativa | Hosts |
|-------------|-------|
| A | 256 |
| B | 254 |
| C | 128 |
| D | 126 ✓ |

