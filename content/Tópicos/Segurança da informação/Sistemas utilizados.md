---
tipo: aula
resumo: "Sistemas operacionais e ferramentas de virtualização utilizados para estudos de segurança da informação."
tags:
  - aula
  - seguranca-da-informacao
  - kali-linux
  - virtualizacao
  - ambiente
---

# Sistemas Utilizados

> [!quote] Preparando seu Laboratório
> *Para estudar segurança da informação, você precisa de um ambiente controlado. Máquinas virtuais são a melhor opção.*

---

## 🐧 Distribuições Linux para Segurança

> [!tip] Sistemas Especializados
> Essas distribuições já vêm com centenas de ferramentas de segurança pré-instaladas.

### Kali Linux

> [!success] A Distribuição Mais Popular
> Desenvolvida pela Offensive Security, é o padrão da indústria para pentesting.

[🔗 Kali Linux - Our Most Advanced Penetration Testing Distribution](https://www.kali.org/)

**Inclui:**
- Nmap, Metasploit, Burp Suite
- Aircrack-ng, Wireshark
- John the Ripper, Hashcat
- E centenas de outras ferramentas

### Parrot Security

> [!info] Alternativa Leve
> Similar ao Kali, mas com foco em privacidade e forense digital.

[🔗 Parrot Security](https://www.parrotsec.org/)

**Diferenciais:**
- Mais leve que o Kali
- Ferramentas de privacidade incluídas
- Ambiente de desenvolvimento integrado

---

## 🎯 Sistemas Vulneráveis para Prática

### Metasploitable 2

> [!warning] Sistema Intencionalmente Vulnerável
> Uma VM Linux repleta de vulnerabilidades para você praticar exploração de forma segura.

[🔗 Download Metasploitable 2](https://sourceforge.net/projects/metasploitable/files/Metasploitable2/)

**Vulnerabilidades incluídas:**
- Serviços desatualizados
- Configurações inseguras
- Aplicações web vulneráveis
- Senhas fracas

---

## 💿 Máquinas Virtuais Prontas

> [!tip] Economize Tempo
> Muitos sistemas já estão disponíveis em formato de VM, prontos para uso.

[🔗 OSBoxes - Virtual Machines for VirtualBox & VMware](https://www.osboxes.org/)

---

## 🖥️ Softwares de Virtualização

> [!info] Qual Escolher?
> VirtualBox e VMware são os mais comuns. Ambos são excelentes opções.

### VirtualBox

| Aspecto | Descrição |
|---------|-----------|
| **Preço** | Gratuito e open-source |
| **Plataformas** | Windows, Linux, macOS |
| **Facilidade** | Fácil de usar |

[🔗 Oracle VM VirtualBox](https://www.virtualbox.org/)

### VMware Workstation Player

| Aspecto | Descrição |
|---------|-----------|
| **Preço** | Gratuito para uso pessoal |
| **Plataformas** | Windows, Linux |
| **Performance** | Geralmente melhor que VirtualBox |

[🔗 VMware Workstation Player](https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html)

---

## 🔐 Conexão VPN para Plataformas

> [!tip] Conectando ao TryHackMe e HackTheBox
> Muitas plataformas de prática requerem conexão VPN para acessar os laboratórios.

### OpenVPN

O cliente mais comum para conexão com plataformas de segurança.

[🔗 OpenVPN Client for Windows](https://openvpn.net/client-connect-vpn-for-windows/)

### Como usar no TryHackMe

[🔗 TryHackMe - OpenVPN Room](https://tryhackme.com/room/openvpn)

### SoftEther VPN

Alternativa ao OpenVPN, útil quando portas estão bloqueadas.

[🔗 SoftEther VPN](https://www.vpngate.net/en/howto_softether.aspx)

---

## 📋 Checklist de Instalação

> [!success] Passos para Configurar seu Lab

1. ☐ Instalar VirtualBox ou VMware
2. ☐ Baixar imagem do Kali Linux
3. ☐ Configurar VM com pelo menos 4GB RAM e 50GB disco
4. ☐ Baixar Metasploitable 2 para praticar
5. ☐ Instalar OpenVPN para conectar em plataformas
6. ☐ Criar snapshot da VM limpa (para restaurar após testes)

