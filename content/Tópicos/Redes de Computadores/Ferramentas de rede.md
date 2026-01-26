---
tipo: aula
resumo: "Ferramentas essenciais para diagnóstico, análise e administração de redes de computadores."
tags:
  - aula
  - redes-de-computadores
  - ferramentas
  - diagnostico
---

# Ferramentas de Rede

> [!quote] O Arsenal do Administrador
> *Conhecer as ferramentas certas é essencial para diagnosticar e resolver problemas de rede com eficiência.*

---

## 🐧 Linux no Windows (WSL)

> [!tip] Windows Subsystem for Linux
> O WSL permite rodar um ambiente Linux diretamente no Windows, ideal para usar ferramentas baseadas em Linux.

### Instalação do WSL

```powershell
# Abra o PowerShell como administrador
wsl --install
```

```powershell
# Caso haja problemas, instale uma distribuição específica
wsl --install ubuntu
```

> [!warning] Atenção
> É necessário reiniciar o Windows após a instalação para reconhecimento da máquina virtual.

### Atualização de Pacotes

```bash
sudo apt update && sudo apt install programa_que_voce_quer
```

---

## 🔧 Ferramentas de Diagnóstico

### Ping

> [!info] Teste de Conectividade
> Verifica se um host está ativo e mede o tempo de resposta.

```powershell
ping google.com
```

| Função | Descrição |
|--------|-----------|
| **Verificar atividade** | Confirma se um IP está respondendo |
| **Medir latência** | Mostra o tempo de resposta (RTT) |

![[Recursos/Redes de Computadores/Ferramentas de rede/comando-ping-windows.png|Exemplo de ping]]

---

### Traceroute / Tracert

> [!info] Rastreamento de Rota
> Mostra o caminho que os pacotes percorrem até o destino.

```powershell
# Windows
tracert www.iff.edu.br

# Linux
traceroute www.iff.edu.br
```

> [!tip] Uso Prático
> Identifica onde estão ocorrendo atrasos ou problemas na rota até um servidor.

---

### Whois

> [!info] Consulta de Registro de Domínio
> Obtém informações sobre o proprietário de um domínio ou IP.

```bash
whois iff.edu.br
```

| Informação | Descrição |
|------------|-----------|
| **Registrante** | Nome do proprietário do domínio |
| **Contato** | Email/telefone de administração |
| **Datas** | Criação e expiração do registro |

🔗 [Whois Registro.br](https://registro.br/tecnologia/ferramentas/whois/)

---

### Nmap

> [!info] Scanner de Rede
> Descobre hosts e serviços ativos em uma rede.

```bash
# Ping sweep - lista IPs ativos na rede
nmap -sn 192.168.1.0/24
```

> [!tip] Como Funciona
> Com o parâmetro `-sn`, o Nmap envia:
> - Pacotes ICMP Echo Requests (ping)
> - Pacotes TCP com flag SYN para porta 443
> - Pacotes ARP para redes locais

---

### NSLookup / DNSLookup

> [!info] Consulta DNS
> Resolve nomes de domínio para endereços IP e vice-versa.

```powershell
nslookup www.uenf.br
```

> [!tip] Uso Prático
> Encontra o endereço IP associado a um site ou diagnostica problemas de DNS.

---

### Wireshark

> [!info] Analisador de Protocolos
> Captura e exibe pacotes de dados em tempo real.

| Função | Descrição |
|--------|-----------|
| **Captura** | Grava todo o tráfego de uma interface |
| **Filtros** | Isola protocolos ou IPs específicos |
| **Análise** | Visualiza conteúdo dos pacotes |

> [!warning] Uso Ético
> Use apenas em redes que você tem autorização para analisar.

---

### Arp-scan

> [!info] Scanner ARP
> Lista dispositivos na rede local usando protocolo ARP.

```bash
arp-scan -l
```

---

### Aircrack-ng

> [!info] Suite para Redes Sem Fio
> Conjunto de ferramentas para auditoria de redes Wi-Fi.

---

### WiGLE

> [!info] Mapeamento de Redes Wi-Fi
> Banco de dados colaborativo de redes sem fio ao redor do mundo.

🔗 [WiGLE: Wireless Network Mapping](https://www.wigle.net/)

---

## 🛠️ Outras Ferramentas

> [!tip] Arsenal Adicional

| Ferramenta | Tipo | Descrição |
|------------|------|-----------|
| **Netcat** | Utilitário | Leitura/escrita de dados via conexões de rede |
| **tcpdump** | Sniffer | Analisador de pacotes em linha de comando |
| **NetFlow/Sflow** | Análise | Coleta e análise de fluxo de tráfego |
| **EtherApe** | Gráfico | Monitoramento visual de rede |
| **Ostinato** | Gerador | Gerador de tráfego e analisador de protocolos |
| **Network Miner** | Forense | Análise forense de tráfego |
| **Kismet** | Wireless | Detector e sniffer de redes sem fio |

---

## 📊 Resumo de Comandos

> [!success] Quick Reference

| Comando | Sistema | Função |
|---------|---------|--------|
| `ping [host]` | Win/Linux | Testa conectividade |
| `tracert [host]` | Windows | Rastreia rota |
| `traceroute [host]` | Linux | Rastreia rota |
| `nslookup [host]` | Win/Linux | Consulta DNS |
| `nmap -sn [rede]` | Linux | Scan de hosts |
| `arp-scan -l` | Linux | Lista dispositivos locais |
| `whois [domínio]` | Linux | Info de registro |

