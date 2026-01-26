---
tipo: aula
resumo: "Técnicas e ferramentas para manter anonimato e privacidade na internet, incluindo Tor, VPNs e Proxychains."
tags:
  - aula
  - seguranca-da-informacao
  - privacidade
  - anonimato
  - tor
---

# Anonimato e Privacidade

> [!quote] Por que Anonimato Importa?
> *Em testes de intrusão e pesquisas de segurança, manter o anonimato é essencial para evitar bloqueios e proteger sua identidade.*

> [!info] Ferramentas Abordadas
> - Tor
> - VPNs
> - Proxychains
> - Whonix
> - Privoxy
> - Polipo
> - Socat
> - Ghostery

![[Recursos/Segurança da informação/Anonimato e privacidade/anonimato-e-privacidade.png|Diagrama de anonimato]]

---

## 🧅 O que é Tor?

> [!tip] The Onion Router
> Tor é um software livre e de **código aberto** que proporciona comunicação **anônima** e **segura** na Internet, protegendo contra **censura** e garantindo **privacidade**.

![[Recursos/Segurança da informação/Anonimato e privacidade/anonimato-e-privacidade-1.png|Como funciona o Tor]]

![[Recursos/Segurança da informação/Anonimato e privacidade/anonimato-e-privacidade-2.png|Arquitetura Tor]]

### 📜 História

O Tor foi criado pela **Marinha dos Estados Unidos** e desenvolvido pela **DARPA** nos anos 90, sendo patenteado em 1998. Em 2006, após a liberação do código sob licença livre, pesquisadores criaram o **Tor** como conhecemos hoje.

### ⚙️ Como Funciona

1. O cliente acessa um servidor de diretório para obter lista de nós Tor
2. Seleciona aleatoriamente nós por onde o tráfego passará
3. O tráfego é criptografado em camadas (como uma cebola)

> [!warning] Importante
> O tráfego é criptografado somente até o último nó (nó de saída). A partir daí, vai sem criptografia do Tor.

**Recurso útil:** [Como Tor e HTTPS funcionam juntos](https://www.eff.org/pages/tor-and-https)

---

## 🚀 Utilizando o Tor

### Instalação e Uso Básico

```bash
apt-get install tor
```

```bash
tor
```

### 🔍 Verificando seu IP de Saída

- [check.torproject.org](https://check.torproject.org/)
- [iplocation.net](https://www.iplocation.net/)

> [!success] Tor Browser
> A forma mais fácil de usar o Tor é através do **Tor Browser**, que já vem configurado para máxima privacidade.

### ❌ Erros Comuns

> [!danger] Erro: Address already in use

```
[warn] Could not bind to 127.0.0.1:9050: Address already in use. Is Tor already running?
```

**Solução:**
```bash
killall tor
```

Pode haver um processo aberto de execuções anteriores que não foi encerrado corretamente.

### 🔧 Torsocks

Permite usar a rede Tor em aplicativos de linha de comando:

```bash
# Verificar IP normal
curl ifconfig.me

# Verificar IP via Tor
torsocks curl ifconfig.me

# SSH através do Tor
torsocks ssh usuario@ip
```

---

## 🔗 Proxychains

> [!info] O que é?
> Proxychains é uma aplicação que utiliza uma **cadeia de proxies** para tornar sua conexão anônima.

![[Recursos/Segurança da informação/Anonimato e privacidade/anonimato-e-privacidade-3.png|Funcionamento de Proxy]]

**Lista de proxies gratuitos:** [Free Proxy List](https://free-proxy-list.net/)

### Instalação

```bash
apt-get install proxychains
```

### Configuração

```bash
nano /etc/proxychains.conf
```

**Alterações necessárias:**
1. Comentar a opção `strict_chain`
2. Descomentar `random_chain`
3. Verificar se a linha abaixo está ativa:

```
socks4  127.0.0.1 9050
```

### Utilização

```bash
proxychains nmap -sV alvo.com.br -p 80
```

### 🌐 Navegador via Tor + Proxychains

1. Rodar o Tor: `tor`
2. Em outra aba: `proxychains firefox`

[📺 Como não ser rastreado usando proxychains](https://www.youtube.com/watch?v=wftQCS9NiPk)

---

## 🔒 VPNs

> [!tip] Virtual Private Network
> Uma VPN cria um túnel criptografado entre você e um servidor, mascarando seu IP real.

![[Recursos/Segurança da informação/Anonimato e privacidade/anonimato-e-privacidade-4.png|Funcionamento VPN]]

### Diferença entre VPN e Tor

| Aspecto | VPN | Tor |
|---------|-----|-----|
| Velocidade | Mais rápida | Mais lenta |
| Anonimato | Depende do provedor | Mais anônimo |
| Criptografia | Ponta a ponta com servidor | Múltiplas camadas |
| Confiança | Precisa confiar no provedor | Descentralizado |

---

## 🛠️ Ferramentas Avançadas

### Privoxy

> [!info] Web Proxy
> Aumenta a privacidade através do controle dos cabeçalhos HTTP.

```bash
/etc/init.d/privoxy start
```

**Configuração para usar com Tor:**
```
# /etc/privoxy/config
forward-socks5 / 127.0.0.1:9050 .
```

O Privoxy funciona na porta **8118**.

### Polipo

> [!tip] Web Proxy Caching
> Adiciona funcionalidades de cache para melhorar performance quando usando múltiplos proxies.

```bash
apt-get install polipo
```

**Configuração:**
```
socksParentProxy = "localhost:9050"
socksProxyType = socks5
dnsUseGethostbyname = no
```

### Socat

> [!info] Transmissão Bidirecional
> Permite transmissão TCP por meio do proxy Tor SOCKS.

```bash
socat TCP4-LISTEN:8080,fork SOCKS4a:127.0.0.1:10.10.10.100:80,socksport=9050 &
```

Assim é possível usar ferramentas como **Nessus**, **Nikto** e **Netcat** através do Tor.

---

## 🔐 Protocolos: SOCKS vs HTTP Proxy

> [!info] Entenda a Diferença

| Tipo | Descrição |
|------|-----------|
| **SOCKS Proxy** | Propósito geral para qualquer conexão TCP. Não interpreta o tráfego. |
| **HTTP Proxy** | Específico para servidores web. Interpreta o tráfego HTTP. |

**SOCKS5** implementa: autenticação, criptografia, suporte a UDP e IPv6.

---

## 🍪 Privacidade no Navegador

### Ghostery

Extensão que detecta rastreadores, bugs, pixels e avisos de serviços de propaganda nas páginas.

### Do Not Track

> [!warning] Limitação
> A opção "Do Not Track" apenas envia uma solicitação para sites não rastrearem. **Não garante** que sites respeitarão essa solicitação.

**Como ativar no Chrome:**
1. Configurações → Privacidade
2. Ativar "Enviar solicitação Do Not Track"

### Bloquear Cookies de Terceiros

**Chrome:** Configurações → Privacidade → Configurações de conteúdo → Cookies → Bloquear cookies de terceiros

---

## 📷 Metadados e Privacidade

### Exiftool

> [!tip] Removendo Metadados
> Imagens contêm metadados (EXIF) que podem revelar localização, dispositivo e outras informações.

```bash
apt-get install exiftool
```

**Ver metadados:**
```bash
exiftool imagem.jpg
```

**Remover metadados:**
```bash
exiftool -all= imagem.jpg
```

---

## 🎯 Nmap com Proxychains

> [!warning] Parâmetros Corretos
> O Nmap é limitado quanto ao uso de proxy. Use os parâmetros corretos para evitar vazamento de IP.

```bash
proxychains nmap -sT -PN -n -sV -p 21 [ip]
```

| Parâmetro | Função |
|-----------|--------|
| `-sT` | TCP connect scan (necessário para proxy) |
| `-PN` | Não fazer ping (evita vazamento ICMP) |
| `-n` | Não resolver DNS |
| `-sV` | Detectar versões de serviços |

> [!danger] Se o scan falhar
> Endpoints Tor podem estar bloqueados. Adicione um proxy público à cadeia editando `/etc/proxychains.conf`.

---

## ✅ Verificando Conexões Tor

**Verificar se um IP é de saída do Tor:**
[torstatus.blutmagie.de](https://torstatus.blutmagie.de/tor_exit_query.php)

Útil para identificar se um ataque veio de uma rede Tor.

