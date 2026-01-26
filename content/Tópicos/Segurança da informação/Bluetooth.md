---
tipo: aula
resumo: "Segurança e ataques em redes Bluetooth: conceitos, vulnerabilidades e ferramentas de auditoria."
tags:
  - aula
  - seguranca-da-informacao
  - bluetooth
  - redes-sem-fio
  - ataques
---

# Bluetooth

> [!quote] Conexão de Curto Alcance
> *Bluetooth está em quase todos os dispositivos modernos — e com ele, potenciais vulnerabilidades.*

---

## 📡 O que é Bluetooth?

> [!info] Visão Geral
> **Bluetooth** é uma tecnologia de comunicação sem fio de curto alcance que opera na frequência de 2.4 GHz.

### Características

| Aspecto | Especificação |
|---------|---------------|
| **Frequência** | 2.4 GHz (ISM band) |
| **Alcance** | 1m - 100m (dependendo da classe) |
| **Velocidade** | Até 3 Mbps (Bluetooth 3.0) |
| **Versões** | 1.0 até 5.3 |
| **Topologia** | Piconet, Scatternet |

### Classes de Potência

| Classe | Potência | Alcance |
|--------|----------|---------|
| Classe 1 | 100 mW | ~100m |
| Classe 2 | 2.5 mW | ~10m |
| Classe 3 | 1 mW | ~1m |

---

## ⚔️ Ataques Conhecidos

> [!warning] Vulnerabilidades Bluetooth

| Ataque | Descrição |
|--------|-----------|
| **Bluejacking** | Envio de mensagens não solicitadas |
| **Bluesnarfing** | Roubo de dados (contatos, SMS) |
| **Bluebugging** | Controle total do dispositivo |
| **BlueBorne** | Ataque sem pareamento |
| **KNOB Attack** | Força criptografia fraca |
| **BIAS Attack** | Bypass de autenticação |

---

## 🛠️ Ferramentas de Auditoria

> [!tip] Arsenal para Testes

| Ferramenta | Descrição |
|------------|-----------|
| **hcitool** | Configuração de dispositivos Bluetooth |
| **btscanner** | Scanner de dispositivos |
| **Bluesnarfer** | Exploração de vulnerabilidades |
| **Spooftooph** | Spoofing de endereço BT |
| **Redfang** | Descoberta de dispositivos ocultos |
| **Ubertooth** | Hardware para sniffing BT |

### Comandos Básicos (Linux)

```bash
# Verificar adaptador
hciconfig

# Ativar adaptador
hciconfig hci0 up

# Escanear dispositivos
hcitool scan

# Descobrir serviços
sdptool browse XX:XX:XX:XX:XX:XX
```

---

## 🔧 Configuração do Adaptador

> [!info] Pré-requisitos

### Verificando no Kali Linux

```bash
# Listar adaptadores USB
lsusb

# Verificar interface Bluetooth
hciconfig -a

# Status do serviço
systemctl status bluetooth
```

---

## 🎯 Laboratório Prático

> [!success] Atividades

1. ☐ Testar adaptador Bluetooth no Kali
2. ☐ Escanear dispositivos próximos
3. ☐ Identificar serviços em dispositivos
4. ☐ Entender limitações de alcance
5. ☐ Praticar em ambiente controlado

---

## ⚠️ Considerações de Segurança

> [!danger] Defesas

| Medida | Descrição |
|--------|-----------|
| **Desativar quando não usar** | Reduz superfície de ataque |
| **Modo não-descobrível** | Evita detecção passiva |
| **Rejeitar pareamentos** | Não aceitar conexões desconhecidas |
| **Atualizar firmware** | Corrige vulnerabilidades conhecidas |
| **Usar BLE quando possível** | Mais seguro que Bluetooth clássico |

