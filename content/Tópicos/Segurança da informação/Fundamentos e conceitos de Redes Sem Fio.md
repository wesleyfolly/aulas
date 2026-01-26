---
tipo: aula
resumo: "Fundamentos teóricos de redes sem fio: tipos, padrões IEEE 802.11, protocolos de segurança e tecnologias emergentes."
tags:
  - aula
  - seguranca-da-informacao
  - redes-sem-fio
  - wifi
  - bluetooth
  - 5g
---

# Fundamentos e Conceitos de Redes Sem Fio

> [!quote] O Mundo Conectado
> *Redes sem fio revolucionaram a forma como nos conectamos, permitindo mobilidade e acesso em qualquer lugar.*

---

## 📡 Conceitos Básicos

> [!tip] Definição
> **Rede Sem Fio** é uma infraestrutura de comunicação que não necessita de cabos para conectar dispositivos em uma rede.

### Componentes Principais

| Componente | Função |
|------------|--------|
| **Roteador/AP** | Distribui o sinal sem fio |
| **Dispositivo Cliente** | Smartphones, laptops que recebem o sinal |
| **Antena** | Transmite e recebe ondas de rádio |

![[Recursos/Segurança da informação/Ataques em rede local/Ferramentas de redes sem fio (802 11)/Fundamentos e conceitos de Redes Sem Fio/Untitled.png|Componentes de rede sem fio]]

### Frequências de Operação

| Frequência | Características |
|------------|-----------------|
| **2.4 GHz** | Maior alcance, mais interferência, menos canais |
| **5 GHz** | Menor alcance, menos interferência, mais canais |
| **6 GHz** | Wi-Fi 6E, ainda menos congestionamento |

![[Recursos/Segurança da informação/Ataques em rede local/Ferramentas de redes sem fio (802 11)/Fundamentos e conceitos de Redes Sem Fio/Untitled 1.png|Espectro de frequência]]

---

## 📜 História e Evolução

> [!info] Linha do Tempo

| Período | Marco |
|---------|-------|
| **1890s-1900s** | Marconi realiza primeiras transmissões de rádio |
| **1940s-1950s** | Invenção do radar, comunicação móvel militar |
| **1970s-1980s** | Primeiros experimentos com WLANs, ALOHAnet |
| **1990s-2000s** | IEEE estabelece padrão 802.11 (Wi-Fi) |
| **2000s-2010s** | 3G, 4G, Bluetooth, Zigbee, WiMAX |
| **2010s-Presente** | IoT, 5G, Wi-Fi 6 |
| **Futuro** | 6G, Wi-Fi 7 |

![[Recursos/Segurança da informação/Ataques em rede local/Ferramentas de redes sem fio (802 11)/Fundamentos e conceitos de Redes Sem Fio/Untitled 3.png|Evolução das redes sem fio]]

---

## 🌐 Tipos de Redes Sem Fio

> [!success] Tecnologias Principais

| Tecnologia | Uso | Alcance | Velocidade |
|------------|-----|---------|------------|
| **Wi-Fi** | Internet, LAN | ~100m | Até 1.3 Gbps |
| **Bluetooth** | Dispositivos próximos | ~100m | 1-3 Mbps |
| **Zigbee** | IoT, automação | 10-100m | 250 kbps |
| **NFC** | Pagamentos | ~20cm | 424 kbps |
| **LoRa** | IoT, rastreamento | ~15km | 50 kbps |
| **5G** | Internet móvel | Variável | Até 20 Gbps |
| **Infravermelho** | Controles remotos | ~5m | 4 Mbps |

---

## 📊 Classificação por Alcance

> [!tip] Tipos de Rede

| Tipo | Nome | Exemplo |
|------|------|---------|
| **WPAN** | Wireless Personal Area Network | Bluetooth, fones de ouvido |
| **WLAN** | Wireless Local Area Network | Wi-Fi doméstico |
| **WMAN** | Wireless Metropolitan Area Network | WiMAX |
| **WWAN** | Wireless Wide Area Network | Operadoras de celular |

---

## ⚖️ Comparação: Com Fio vs Sem Fio

| Critério | Redes Cabeadas | Redes Sem Fio |
|----------|----------------|---------------|
| **Velocidade** | Alta (até 10 Gbps) | Variável (até 1 Gbps) |
| **Custo Inicial** | Alto | Médio a Baixo |
| **Mobilidade** | Baixa | Alta |
| **Segurança** | Alta | Variável |
| **Instalação** | Complexa | Mais Simples |
| **Interferência** | Baixa | Alta |
| **Escalabilidade** | Moderada | Alta |

---

## 📶 Padrões IEEE 802.11 (Wi-Fi)

> [!info] Evolução do Wi-Fi

| Padrão | Nome | Frequência | Velocidade Máxima |
|--------|------|------------|-------------------|
| 802.11a | - | 5 GHz | 54 Mbps |
| 802.11b | - | 2.4 GHz | 11 Mbps |
| 802.11g | - | 2.4 GHz | 54 Mbps |
| 802.11n | Wi-Fi 4 | 2.4/5 GHz | 600 Mbps |
| 802.11ac | Wi-Fi 5 | 5 GHz | 1.3 Gbps |
| 802.11ax | Wi-Fi 6 | 2.4/5/6 GHz | 10 Gbps |
| 802.11be | Wi-Fi 7 | 2.4/5/6 GHz | 46 Gbps |

---

## 🔐 Protocolos de Segurança Wi-Fi

> [!warning] Evolução da Segurança

| Protocolo | Status | Segurança |
|-----------|--------|-----------|
| **WEP** | ❌ Obsoleto | Facilmente quebrável |
| **WPA** | ⚠️ Legado | Vulnerável |
| **WPA2** | ✅ Atual | Bom, usa AES |
| **WPA3** | ✅ Recomendado | Melhor, resistente a força bruta |

### WPA2 vs WPA3

| Aspecto | WPA2 | WPA3 |
|---------|------|------|
| **Criptografia** | PSK/EAP | SAE |
| **Força Bruta** | Vulnerável | Resistente |
| **Forward Secrecy** | Não | Sim |
| **Proteção Offline** | Fraca | Forte |
| **Handshake** | Four-way | Dragonfly |

---

## 📱 Bluetooth e BLE

> [!info] Comparação

| Aspecto | Bluetooth Clássico | BLE (Low Energy) |
|---------|-------------------|------------------|
| **Uso** | Áudio, periféricos | IoT, wearables |
| **Velocidade** | Até 3 Mbps | Até 1 Mbps |
| **Energia** | Moderado | Baixo |
| **Conexão** | Pareamento contínuo | Rápida |

---

## 📡 Tecnologias Emergentes

### 5G

| Característica | Especificação |
|----------------|---------------|
| **Velocidade** | Até 20 Gbps |
| **Latência** | ~1 ms |
| **Densidade** | 1 milhão dispositivos/km² |
| **Tecnologias** | MIMO, Beamforming, mmWave |

### 6G (Futuro)

| Previsão | Especificação |
|----------|---------------|
| **Velocidade** | Até 100 Gbps |
| **Latência** | < 1 ms |
| **Tecnologias** | Terahertz, IA integrada, satélites |
| **Aplicações** | Holografia, realidade estendida |

---

## 🎯 Aplicações por Ambiente

| Ambiente | Características |
|----------|-----------------|
| **Doméstico** | Smart homes, streaming, IoT |
| **Empresarial** | Redes corporativas, conferências |
| **Hotspots Públicos** | Aeroportos, cafés, bibliotecas |
| **Industrial** | IoT, monitoramento em tempo real |

