# Exploração do alvo

> *A exploração do alvo é o ato de “invadir” uma máquina com exploits ou falhas de configuração.*
> 

# Ferramentas utilizadas

- Metasploit

---

A exploração se dá por 2 formas:

- Engenharia social: Não é necessária a existência vulnerabilidades.
- Falha de software: Serviço ou configuração vulnerável.

<aside>
👉 Antigamente buscar exploits era uma tarefa difícil e possuía fontes duvidosas. Hoje, sua busca é fácil em repositórios específicos e confiáveis.

</aside>

A maioria dos repositórios de exploits são gratuitos porém alguns são pagos. 

Exemplo de repositório pago:  VUPEN - [http://www.vupen.com](http://www.vupen.com/)

```jsx
Principais repositórios
```

[http://packetstormsecurity.com](http://packetstormsecurity.com/)

[http://www.exploit-db.com](http://www.exploit-db.com/)

[http://osvdb.org](http://osvdb.org/)

[http://www1337day.com](http://www1337day.com/)

[http://www.securityfocus.com](http://www.securityfocus.com/)

[http://securiteam.com](http://securiteam.com/)

[http://www.intelligentexploit.com](http://www.intelligentexploit.com/)

[http://www.vupen.com/english](http://www.vupen.com/english)

[http://www.kb.cert.org/vuls](http://www.kb.cert.org/vuls)

# Introdução aos exploits

<aside>
📢 Um exploit é um pedaço de software, um conjunto de dados ou uma sequência de comandos que aproveita uma falha ou vulnerabilidade em um sistema de computador ou programa para causar um comportamento não intencional ou não desejado.

</aside>

# **Tipos mais comuns de Exploits**

1. **Buffer Overflow Exploits**: Este é um dos tipos mais comuns de exploit. Ele ocorre quando mais dados são escritos em um buffer do que ele pode conter, o que pode causar a sobreposição de dados e a potencial execução de código malicioso. Existe uma subcategoria chamada "Stack Buffer Overflow" que ocorre especificamente com a pilha de execução de um programa.
2. **Injection Exploits**: Esses exploits ocorrem quando um atacante consegue inserir, ou "injetar", código ou comandos em um aplicativo. Um exemplo comum é o SQL Injection, onde o atacante insere SQL malicioso em uma consulta para manipular ou obter acesso a um banco de dados. Outro exemplo é o Cross-Site Scripting (XSS), onde o atacante insere código JavaScript ou outro código cliente em uma página web.
3. **Zero-day Exploits**: Um zero-day exploit refere-se a um exploit para o qual ainda não existe um patch ou correção. O termo "zero-day" refere-se ao fato de que os desenvolvedores tiveram zero dias para corrigir a vulnerabilidade antes de ser explorada.
4. **Privilege Escalation Exploits**: Esses exploits aproveitam as falhas ou bugs no sistema operacional ou no software para obter privilégios elevados, como permissões de administrador, que podem ser usados para realizar ações que normalmente seriam proibidas.
5. **Remote Code Execution (RCE) Exploits**: Este tipo de exploit permite a um atacante executar comandos arbitrários em um sistema vítima a partir de um local remoto. Geralmente, esses exploits são muito perigosos, pois podem permitir ao atacante um controle completo sobre o sistema comprometido.
6. **Denial of Service (DoS) Exploits**: Esses exploits visam tornar um sistema ou recurso indisponível, geralmente sobrecarregando o sistema com tráfego ou solicitações, ou fazendo com que ele reinicie ou pare de funcionar.

> *É importante ressaltar que muitos exploits podem cair em várias dessas categorias ao mesmo tempo. Por exemplo, um exploit de buffer overflow pode permitir a execução de código remoto, enquanto um exploit de injeção de SQL pode levar a uma escalada de privilégios.*
> 

# **Vulnerabilidades**

<aside>
📢 Uma vulnerabilidade é uma fraqueza que pode ser explorada por um atacante para violar a integridade, disponibilidade ou confidencialidade de um sistema.

</aside>

1. **Tipos de Vulnerabilidades**: Existem muitos tipos de vulnerabilidades, incluindo vulnerabilidades de `software` (como bugs ou erros de programação), vulnerabilidades de `hardware`, vulnerabilidades de `configuração` (como configurações inseguras) e vulnerabilidades de `design`.
2. **Descoberta de Vulnerabilidades**: Os métodos para descobrir vulnerabilidades incluem testes de penetração, varreduras de vulnerabilidades, auditorias de segurança e análise de código.
3. **Mitigação de Vulnerabilidades**: Inclui a aplicação de patches ou atualizações, a reconfiguração de configurações inseguras, a alteração de permissões, a utilização de firewalls e IDS/IPS, e outras estratégias de defesa em profundidade.
4. **Gerenciamento de Vulnerabilidades**: Trata-se do processo de identificar, classificar, priorizar e mitigar vulnerabilidades em um sistema ou rede.
5. **Vulnerabilidades Zero-day**: Uma vulnerabilidade zero-day é uma vulnerabilidade desconhecida pelos responsáveis pelo software ou hardware, ou seja, eles ainda não tiveram a chance de desenvolver e distribuir uma correção.
6. **Vulnerabilidade vs Exposição vs Ameaça**: É importante diferenciar vulnerabilidade, que é uma fraqueza que pode ser explorada; de uma exposição, que é quando um sistema está sujeito a danos; e uma ameaça, que é algo (ou alguém) que pode explorar uma vulnerabilidade.
7. **Sistemas de Pontuação de Vulnerabilidades**: Ferramentas como o Common Vulnerability Scoring System (CVSS) fornecem uma maneira padronizada de avaliar a gravidade de uma vulnerabilidade.
8. **Pirataria ética e divulgação responsável**: A pirataria ética envolve a identificação e divulgação de vulnerabilidades de maneira responsável para que possam ser corrigidas, em vez de serem exploradas.
9. **Importância das Atualizações e Patches**: Atualizações e patches de software muitas vezes incluem correções para vulnerabilidades conhecidas, portanto, manter o software atualizado é uma das melhores maneiras de proteger um sistema contra exploits.

**Identificação de vulnerabilidades (CVE)**

CVE, que significa Common Vulnerabilities and Exposures (Vulnerabilidades e Exposições Comuns), é um sistema que fornece uma referência e uma descrição padronizada para vulnerabilidades de segurança conhecidas em software e hardware. O sistema CVE foi lançado em 1999 e é mantido pelo MITRE Corporation, que é uma organização sem fins lucrativos que opera vários centros de pesquisa e desenvolvimento financiados pelo governo dos EUA.

Cada vulnerabilidade listada no sistema CVE recebe um identificador único, conhecido como um ID CVE, que segue o formato "CVE-AAAA-BBBB", onde "AAAA" é o ano em que a vulnerabilidade foi divulgada ou adicionada ao sistema e "BBBB" é um número único para essa vulnerabilidade. Por exemplo, uma vulnerabilidade pode ter um ID CVE como "CVE-2021-34527".

A ideia por trás do sistema CVE é fornecer uma maneira de compartilhar dados sobre vulnerabilidades entre diferentes bancos de dados, ferramentas e serviços de segurança, para que todos estejam falando a mesma "língua" quando se trata de vulnerabilidades. Portanto, se você encontrar uma referência a uma vulnerabilidade com um ID CVE, poderá pesquisar esse ID CVE para obter mais informações sobre a vulnerabilidade, independentemente de qual ferramenta ou serviço de segurança você esteja usando.

# Metasploit

# Introdução

A **arquitetura** do metasploit é dividida em 3 categorias:

- Bibliotecas
- Interfaces
- Módulos

As **interfaces** fornecem meios para interagirmos com os **módulos**.

Existem várias interfaces para o metasploit como: Msfconsole, Msfcli, Armitage (gráfica) e outros.

- Descrição d**os módulos**
    
    Exploit: Prova de conceito que a vulnerabilidade existe. Com ele é possível explorar.
    
    Payload: Código que faz parte do exploit. Executa comandos arbitrários no sistema
    alvo. Estabelece canal de comunicação entre vítima e atacante. Com ele é possível obter o shell do sistema por exemplo.
    
    Shellcode: Também faz parte do exploit. A missão é injetar códigos no sistema causando buffer overflow ou estouro de pilha. Normalmente o shellcode vem acompanhado do payload. O
    shellcode que de fato explora a vulnerabilidade.
    
    Módulo auxiliares: Tarefas auxiliares inerentes à exploração como port scanner, sniffing, ferramentas de DoS etc.
    
    Encoders: Ferramentas desenvolvidas com intuito de burlar sistemas de antivírus, firewall, IDS, ou ferramentas anti-malware.
    

<aside>
👉 Existem outros frameworks de invasão além do Metasploit com por exemplo: Core Impact, Immunity Canvas, Cobalt Strike e PowerShell Empire. Porém são frameworks pagos. O Metasploit é gratuito, de código fonte aberto e frequentemente atualizado.

</aside>

O Metasploit Framework (MSF) é o melhor framework gratuito para **desenvolver**, **testar** e **usar** exploits.

Os comandos mais importantes do MSF são: 

- **`search` (para procurar por ferramentas e exploits)**
- **`use` (para usar um exploit)**
- **`show options` (para mostrar as opções de um exploit)**
- **`set` (para configurar um parâmetro do exploit)**
- **`exploit` (para rodar/executar o exploit)**

---

# Utilização

Uma vez que o MSF está em constante desenvolvimento é interessante atualizá-lo para a última versão

```bash
sudo apt update; sudo apt install metasploit-framework
```

# Escanear por alvos

Antes de usar o metasploit (para hackear um sistema) talvez você queira antes escanear uma rede (local ou externa) para procurar por IPs (dispositivos conectados na rede).

Apesar do metasploit também possuir ferramentas de escaneamento, a ferramenta NMAP é a melhor e mais utilizada para esse propósito.

abaixo estão os comandos básicos para escanear uma rede com NMAP

```python
nmap -PN 192.168.0.1-255 // '-PN' ignorar verificação por ping (evitar firewalls)
nmap -sV 192.168.0.10 -p 80,443 // '-sV' para verificar as versões de cada serviço 
```

Para iniciar o MSF damos o comando abaixo

```bash
sudo msfconsole -q
```

sempre que tiver dúvidas sobre algum comando ou desejar explorar o 

```bash
show -h
```

para pesquisar exploits

```bash
searchsploit apache 2.2.8
```

Caso você deseja aplicar um filtro

```bash
searchsploit apache 2.2.8 | grep php
```

como usar um exploit?

```bash
use exploit/multi/http/php_cgi
```

Como definir o IP do alvo?

```bash
set RHOSTS 192.168.18.47 // ou definir uma rede 192.168.18.0/24
```

Como executar o exploit?

```bash
run
```

# Alguns exploits de estimação

- smb_ms17_010
- exploit/windows/smb/ms17_010_eternalblue

# Comandos comuns para rodar no sistema hackeado

Para obter informações do sistema

```bash
sysinfo
```