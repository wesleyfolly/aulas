---
tipo: aula
resumo: "Técnicas de exploração de vulnerabilidades usando o Metasploit Framework e repositórios de exploits."
tags:
  - aula
  - seguranca-da-informacao
  - exploracao
  - metasploit
  - exploits
---

# Exploração do Alvo

> [!quote] A Invasão Propriamente Dita
> *A exploração do alvo é o ato de "invadir" uma máquina usando exploits ou explorando falhas de configuração.*

---

## 🛠️ Ferramentas Utilizadas

- **Metasploit Framework** — O principal framework de exploração

---

## 🎯 Formas de Exploração

A exploração acontece de duas formas principais:

| Tipo | Descrição |
|------|-----------|
| **Engenharia Social** | Não é necessária a existência de vulnerabilidades técnicas |
| **Falha de Software** | Serviço ou configuração vulnerável |

> [!info] Evolução dos Exploits
> Antigamente, buscar exploits era difícil e as fontes eram duvidosas. Hoje, existem repositórios específicos e confiáveis.

---

## 📚 Repositórios de Exploits

> [!tip] Fontes Gratuitas
> A maioria dos repositórios de exploits são gratuitos.

| Repositório | URL |
|-------------|-----|
| **Exploit-DB** | [exploit-db.com](http://www.exploit-db.com/) |
| **PacketStorm** | [packetstormsecurity.com](http://packetstormsecurity.com/) |
| **SecurityFocus** | [securityfocus.com](http://www.securityfocus.com/) |
| **1337day** | [www1337day.com](http://www1337day.com/) |
| **OSVDB** | [osvdb.org](http://osvdb.org/) |
| **SecuriTeam** | [securiteam.com](http://securiteam.com/) |
| **Intelligent Exploit** | [intelligentexploit.com](http://www.intelligentexploit.com/) |
| **CERT Vuls** | [kb.cert.org/vuls](http://www.kb.cert.org/vuls) |

> [!warning] Repositório Pago
> VUPEN — [vupen.com](http://www.vupen.com/) (comercial)

---

## 💥 Introdução aos Exploits

> [!info] O que é um Exploit?
> Um exploit é um pedaço de software, conjunto de dados ou sequência de comandos que aproveita uma **falha ou vulnerabilidade** para causar comportamento não intencional.

### Tipos Mais Comuns de Exploits

| Tipo | Descrição |
|------|-----------|
| **Buffer Overflow** | Sobrescreve memória ao escrever mais dados que o buffer suporta |
| **Injection** | Insere código malicioso (SQL Injection, XSS) |
| **Zero-day** | Explora vulnerabilidade desconhecida, sem patch disponível |
| **Privilege Escalation** | Obtém privilégios elevados (admin) através de bugs |
| **Remote Code Execution (RCE)** | Executa comandos remotamente no sistema alvo |
| **Denial of Service (DoS)** | Torna sistema indisponível por sobrecarga |

> [!tip] Nota
> Muitos exploits combinam várias categorias. Um buffer overflow pode permitir RCE, e um SQL injection pode levar a privilege escalation.

---

## 🔓 Vulnerabilidades

> [!info] Definição
> Uma vulnerabilidade é uma **fraqueza** que pode ser explorada para violar a integridade, disponibilidade ou confidencialidade de um sistema.

### Tipos de Vulnerabilidades

- **Software** — Bugs ou erros de programação
- **Hardware** — Falhas em componentes físicos
- **Configuração** — Configurações inseguras
- **Design** — Falhas na arquitetura do sistema

### Ciclo de Gerenciamento

1. **Descoberta** — Pentests, varreduras, auditorias, análise de código
2. **Classificação** — Avaliação de gravidade (CVSS)
3. **Priorização** — Qual corrigir primeiro?
4. **Mitigação** — Patches, reconfiguração, firewalls, IDS/IPS

### CVE — Common Vulnerabilities and Exposures

> [!info] Identificação Padronizada
> Sistema que fornece referência única para vulnerabilidades conhecidas.

**Formato:** `CVE-AAAA-BBBB`
- **AAAA** — Ano de divulgação
- **BBBB** — Número único

**Exemplo:** `CVE-2021-34527` (PrintNightmare)

---

## 🤖 Metasploit Framework

> [!success] O Melhor Framework Gratuito
> O Metasploit Framework (MSF) é o melhor framework gratuito para **desenvolver**, **testar** e **usar** exploits.

### Arquitetura

O Metasploit é dividido em 3 categorias:

| Categoria | Descrição |
|-----------|-----------|
| **Bibliotecas** | Base de código do framework |
| **Interfaces** | Meios de interação (msfconsole, Armitage) |
| **Módulos** | Exploits, payloads, auxiliares |

### Descrição dos Módulos

| Módulo | Função |
|--------|--------|
| **Exploit** | Prova de conceito que a vulnerabilidade existe |
| **Payload** | Código que executa comandos no alvo (ex: shell reverso) |
| **Shellcode** | Código que causa buffer overflow |
| **Auxiliares** | Ferramentas auxiliares (scanners, sniffers, DoS) |
| **Encoders** | Burlar antivírus, firewalls, IDS |

> [!info] Outros Frameworks
> Existem frameworks pagos como Core Impact, Immunity Canvas, Cobalt Strike e PowerShell Empire. Mas o Metasploit é gratuito, open-source e frequentemente atualizado.

---

## 💻 Comandos Essenciais do Metasploit

| Comando | Função |
|---------|--------|
| `search` | Procurar ferramentas e exploits |
| `use` | Selecionar um exploit |
| `show options` | Mostrar opções do exploit |
| `set` | Configurar um parâmetro |
| `exploit` ou `run` | Executar o exploit |

---

## 🚀 Utilização do Metasploit

### Atualização

```bash
sudo apt update; sudo apt install metasploit-framework
```

### Escaneamento com Nmap

Antes de usar o Metasploit, escaneie a rede para descobrir alvos:

```bash
# Escanear range de IPs (ignorar firewalls)
nmap -PN 192.168.0.1-255

# Verificar versões de serviços
nmap -sV 192.168.0.10 -p 80,443
```

### Iniciando o Metasploit

```bash
sudo msfconsole -q
```

### Pesquisando Exploits

```bash
# Buscar exploits para Apache 2.2.8
searchsploit apache 2.2.8

# Filtrar resultados
searchsploit apache 2.2.8 | grep php
```

### Usando um Exploit

```bash
# Selecionar exploit
use exploit/multi/http/php_cgi

# Definir alvo
set RHOSTS 192.168.18.47

# Executar
run
```

---

## ⭐ Exploits Populares

> [!tip] Exploits de Estimação
> Alguns exploits clássicos que todo pentester conhece:

- `smb_ms17_010` — Scanner para EternalBlue
- `exploit/windows/smb/ms17_010_eternalblue` — EternalBlue (WannaCry)

---

## 🖥️ Comandos Pós-Exploração

Após conseguir acesso (shell), comandos úteis:

```bash
# Informações do sistema
sysinfo

# Verificar privilégios
getuid

# Listar processos
ps

# Migrar para outro processo
migrate [PID]

# Capturar screenshot
screenshot
```

