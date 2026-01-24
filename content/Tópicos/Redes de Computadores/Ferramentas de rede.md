# Ferramentas de rede

# Como usar ferramentas do Linux no windows

O Windows Subsystem for Linux permite que você rode um ambiente Linux diretamente no Windows. Isso pode ser uma excelente opção se você deseja usar ferramentas baseadas em **Linux**.

## **Instalar o Windows Subsystem for Linux (WSL)**

Para instalar o WSL:

1. Abra o PowerShell como administrador e rode o comando:
    
    ```powershell
    wsl --install
    ```
    
2. Siga as instruções na tela para completar a instalação do WSL e escolha uma distribuição Linux na Microsoft Store (Ubuntu é uma escolha popular).
3. Após a instalação, abra a linha de comando do Linux através do menu Iniciar.
4. Atualize os pacotes e instale o programa desejado com:
    
    ```bash
    sudo apt update && sudo apt install programa_que_voce_quer
    ```
    
5. Caso haja problema com a instalação. Tentar instalar um sistema específico. (é preciso reiniciar o windows para reconhecimento da nova máquina virtual no sistema)

```powershell
wsl --install ubuntu
```

# Ping

```powershell
ping google.com
```

Essa ferramenta é utilizada para duas funções principais.

- Saber se um IP está ativo;
- Saber o tempo de resposta desse equipamento

![Untitled](../../Recursos/Redes de Computadores/Ferramentas de rede/Untitled.png)

# **Traceroute (Tracert no Windows)**

```powershell
tracert www.iff.edu.br
traceroute www.iff.edu.br //para linux
```

- **Utilização**: Traceroute é usado para rastrear a rota que os pacotes de dados tomam da origem ao destino. Ajuda a identificar onde estão ocorrendo atrasos ou problemas na rota.
- **Exemplo Prático**: Suponha que você esteja enfrentando lentidão ao acessar um website. Você pode usar o comando **`tracert www.exemplo.com`** no prompt de comando do Windows para ver quantos saltos o pacote faz até o servidor do site e quanto tempo cada salto leva.

# **Whois**

```powershell
whois iff.edu.br
```

- **Utilização**: Whois é uma ferramenta usada para obter informações sobre o registro de um domínio ou endereço IP, como o proprietário do domínio, a organização, contato, e endereço.
- **Exemplo Prático**: Para verificar a quem pertence um domínio, você pode usar um comando Whois, como **`whois exemplo.com`**. Isso retornará informações como o nome do registrante, contato para administração, e datas de expiração do registro.
- https://registro.br/tecnologia/ferramentas/whois/

# **Nmap**

```powershell
nmap -sn 192.168.1.0/24
```

- **Utilização**: Nmap é usado para descobrir hosts e serviços em uma rede de computadores, enviando pacotes para os sistemas e analisando as respostas.
- **Exemplo Prático**: Você suspeita que existam dispositivos não autorizados conectados à sua rede. Usando o Nmap, você pode escanear sua rede local com **`nmap -sn 192.168.1.0/24`**. Isso realizará um ping sweep para listar quais IPs estão ativos.
- Quando você usa o parâmetro **`-sn`**, o Nmap envia pacotes ICMP Echo Requests (ping), pacotes TCP usando a flag SYN para a porta 443, e pacotes ARP para redes locais.

# **DNSLookup**

```powershell
nslookup www.uenf.br
```

- **Utilização**: DNSLookup é uma ferramenta usada para consultar o Sistema de Nomes de Domínio (DNS) para obter o endereço IP associado a um nome de domínio ou vice-versa.
- **Exemplo Prático**: Para encontrar o endereço IP do site [www.exemplo.com](http://www.exemplo.com/), você pode usar uma ferramenta de DNS Lookup online ou simplesmente digitar **`nslookup www.exemplo.com`** no terminal ou prompt de comando.

# **Wireshark**

- **Utilização**: Wireshark é um analisador de protocolo que captura e exibe o conteúdo dos **pacotes** de dados em uma rede em tempo real.
- **Exemplo Prático**: Você quer verificar se informações sensíveis estão sendo transmitidas sem criptografia. Iniciando o Wireshark e filtrando pelo IP ou protocolo de interesse, você pode capturar o tráfego e analisar os pacotes para verificar se os dados estão sendo enviados de forma segura.

# Arp-scan

```jsx
arp-scan -l
```

# Aircrack-ng

# WiGLE

[WiGLE: Wireless Network Mapping](https://www.wigle.net/)

# Outras ferramentas para testar

1. **Netcat**: Ferramenta de rede versátil para leitura e escrita de dados através de conexões de rede.
2. **tcpdump**: Poderoso analisador e sniffer de pacotes.
3. **NetFlow/Sflow**: Ferramentas para coleta e análise de fluxo de tráfego de rede.
4. **EtherApe**: Ferramenta gráfica de monitoramento de rede.
5. **Ostinato**: Gerador de tráfego de rede e analisador de protocolos.
6. **Network Miner**: Ferramenta forense de rede para análise de tráfego.
7. **Kismet**: Detector de rede sem fio, sniffer e sistema de detecção de intrusão.