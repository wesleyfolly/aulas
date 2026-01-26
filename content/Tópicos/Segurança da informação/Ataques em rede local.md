---
tipo: aula
resumo: "Técnicas de ataque em redes locais, incluindo redes sem fio, descoberta de hosts e ataques MITM."
tags:
  - aula
  - seguranca-da-informacao
  - ataques
  - redes
---

# Ataques em Rede Local

> [!quote] Contexto
> Quando se trata de um teste de intrusão, geralmente não temos acesso físico ao local, pois os alvos estão distantes. Porém, é importante sabermos analisar a segurança de uma rede local.

> [!warning] Atenção com VMs
> Escaneamento de rede local pode não funcionar adequadamente ao utilizar máquinas virtuais. O problema não ocorre quando se usa uma interface de rede separada (modo bridge).

---

## 📡 Redes Sem Fio

> [!info] Wireless Security
> Ataques específicos para redes Wi-Fi e Bluetooth.

- [[Ferramentas de redes sem fio (802 11)|Ferramentas de redes sem fio (802.11)]] — Aircrack-ng, Kismet, etc.
- [[Bluetooth]] — Ataques em dispositivos Bluetooth
- [[Captive Portal]] — Portais cativos e seus bypasses

---

## 🔍 Descoberta de Hosts em Rede Local

> [!tip] Mapeando a Rede
> Primeiro passo: descobrir quais dispositivos estão ativos na rede.

### Ferramentas Utilizadas

| Ferramenta | Descrição | Sistema |
|------------|-----------|---------|
| `arp-scan` | Rápido, usa protocolo ARP | Linux |
| `netdiscover` | Similar ao arp-scan | Linux |
| `nmap` | Mais completo, multiplataforma | Todos |
| [Zenmap](https://nmap.org/zenmap/) | Interface gráfica do nmap | Windows/Linux |

### Exemplos Práticos

**Escaneamento com nmap:**
```bash
nmap 192.168.1.0/24
```

**Escaneamento com arp-scan:**
```bash
arp-scan eth0 10.64.143.75/16
```

---

## ⚙️ Configuração de VMs

> [!info] Dica para VirtualBox
> Para usar máquinas virtuais em rede local sem adaptador separado, use o modo "Bridge".

![[Recursos/Segurança da informação/Ataques em rede local/ataques-em-rede-local.png|Configuração de rede no VirtualBox]]

---

## 🕵️ Ataques Man-in-the-Middle (MITM)

> [!warning] Interceptação de Tráfego
> Ataques onde o atacante se posiciona entre dois dispositivos para interceptar ou modificar comunicações.

### Técnicas Comuns

- **ARP Spoofing** — Envenenar tabela ARP para redirecionar tráfego
- **DNS Spoofing** — Redirecionar consultas DNS
- **SSL Stripping** — Forçar downgrade de HTTPS para HTTP

### Vídeo de Referência

[📺 How Hackers Use Xerosploit for Advanced MiTM Attacks](https://www.youtube.com/watch?v=C63PPEnFQnc)

---

## 🛡️ Como se Proteger

> [!success] Medidas Defensivas

1. Usar HTTPS sempre que possível
2. Implementar 802.1X na rede
3. Monitorar tráfego ARP anômalo
4. Usar VPN em redes não confiáveis
5. Habilitar HSTS nos servidores web
