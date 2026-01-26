---
tipo: aula
resumo: "Técnicas de escaneamento de redes e portas usando Nmap, Masscan e outras ferramentas."
tags:
  - aula
  - seguranca-da-informacao
  - nmap
  - port-scanning
  - reconhecimento
---

# Escaneamento de IPs e Portas (Port Scanning)

> [!quote] Mapeando a Rede
> *Descobrir quais hosts estão ativos e quais portas estão abertas é fundamental para qualquer teste de segurança.*

> [!info] Ferramentas do Trabalho
> Nmap e Masscan serão as principais ferramentas utilizadas.

---

## 🎯 O que é Port Scanning?

> [!success] Definição
> Port Scanner é um programa capaz de varrer endereços IPs em uma rede e também portas em determinados hosts.

---

## 🔍 Nmap

> [!tip] O Scanner Mais Usado do Mundo
> O Nmap é o port scan mais popular e possui várias funcionalidades poderosas.

### Recursos Principais

| Recurso | Descrição |
|---------|-----------|
| **Descoberta de hosts** | Encontrar quais hosts estão ativos na rede |
| **Scan de portas** | Verificar quais portas estão abertas em cada host |
| **Detecção de serviços** | Saber o que está rodando em cada porta |
| **Busca específica** | Procurar hosts com determinado serviço |
| **Detecção de OS** | Identificar o sistema operacional |

### Parâmetros Importantes

| Parâmetro | Descrição |
|-----------|-----------|
| `-A` | Enable OS detection, version detection, script scanning, and traceroute |
| `-sS` | SYN scan — mais rápido, não completa conexão TCP |
| `-sT` | TCP connect scan — conexão completa |
| `-sn` | Sem detecção de portas (apenas descoberta de hosts) |
| `-sV` | Detecção da versão do serviço |
| `-O` | Detecção de sistema operacional |
| `-D` | Decoy — dificultar detecção por IDS |
| `--script vuln` | Testa scripts de vulnerabilidades |

---

## 💻 Exemplos Práticos

### Escanear portas de um IP

```bash
nmap 192.168.18.1
```

### Descobrir hosts ativos na rede

```bash
nmap -sn 192.168.18.0/24
# /24 é a máscara de rede (tamanho da rede)
# -sn = no port scan (apenas descoberta de hosts)
```

### Scan completo com detecção

```bash
nmap -A 192.168.18.1
```

### Scan rápido SYN

```bash
nmap -sS 192.168.18.1
```

### Scan de vulnerabilidades

```bash
nmap --script vuln 192.168.18.1
```

---

## 📺 Recursos de Aprendizado

- [📺 Nmap Tutorial to find Network Vulnerabilities](https://www.youtube.com/watch?v=4t4kBkMsDbQ)
- [🔗 Site oficial do Nmap](https://nmap.org/)

> [!tip] Zenmap
> Para Windows, existe uma versão com interface gráfica chamada **Zenmap**.

---

## ⚡ Masscan

> [!info] Scanner de Alta Velocidade
> Masscan é um scanner de portas extremamente rápido, capaz de escanear toda a Internet em poucos minutos.

### Características

- Transmite pacotes de forma assíncrona
- Muito mais rápido que Nmap para scans em larga escala
- Sintaxe similar ao Nmap

### Exemplo de Uso

```bash
masscan -p80,443 192.168.1.0/24 --rate=1000
```

---

## 🛠️ Outras Ferramentas

### Netcat

> [!tip] O Canivete Suíço da Rede
> Netcat pode ser usado para verificar portas e estabelecer conexões.

```bash
# Verificar porta específica
nc -zv 192.168.18.1 80

# Scan de range de portas
nc -zv 192.168.18.1 20-100
```

---

## 📊 Comparação de Ferramentas

| Ferramenta | Velocidade | Precisão | Recursos |
|------------|------------|----------|----------|
| **Nmap** | Média | Alta | Muitos scripts e detecções |
| **Masscan** | Muito alta | Média | Foco em velocidade |
| **Netcat** | Baixa | Alta | Simples e versátil |

