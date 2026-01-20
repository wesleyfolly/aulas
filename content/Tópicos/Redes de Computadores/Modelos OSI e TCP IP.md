# Modelos OSI e TCP/IP

<aside>
<img src="https://www.notion.so/icons/light-bulb_purple.svg" alt="https://www.notion.so/icons/light-bulb_purple.svg" width="40px" /> O modelo OSI (**Open Systems Interconnection)** é um modelo `conceitual` usado para entender e descrever como diferentes aplicações e protocolos de rede interagem e se comunicam entre si.

</aside>

<aside>
<img src="https://www.notion.so/icons/light-bulb_purple.svg" alt="https://www.notion.so/icons/light-bulb_purple.svg" width="40px" /> O modelo OSI é dividido em sete camadas, cada uma representando um grupo específico de funcionalidades:

</aside>

![Untitled/Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled.png)

1. **Camada 1: Física**
    - **Explicação**: Responsável pela transmissão e recepção de bits brutos através de um meio físico.
    - **Exemplos de Protocolos e Utilização**: Cabos Ethernet, fibra óptica, Wi-Fi.
    - **Utilização**: Transmite dados como sinais elétricos, ópticos ou de rádio.
2. **Camada 2: Enlace de Dados (ou Ligação de Dados)**
    - **Explicação**: Garante a transferência de dados confiável entre dois dispositivos conectados diretamente, tratando de erros e controle de fluxo.
    - **Exemplos de Protocolos e Utilização**: Ethernet, PPP.
    - **Utilização**: Controla como os dados são formatados para transmissão e como o acesso ao meio físico é controlado.
3. **Camada 3: Rede**
    - **Explicação**: Responsável pelo endereçamento, roteamento e encaminhamento de pacotes entre redes.
    - **Exemplos de Protocolos e Utilização**: IP, ICMP.
    - **Utilização**: Define rotas para enviar pacotes de dados de uma rede para outra.
4. **Camada 4: Transporte**
    - **Explicação**: Fornece transmissão de dados confiável e controle de fluxo entre dois pontos finais.
    - **Exemplos de Protocolos e Utilização**: TCP, UDP.
    - **Utilização**: Garante que os dados sejam entregues sem erros e na sequência correta.
5. **Camada 5: Sessão**
    - **Explicação**: Gerencia as sessões de comunicação entre dispositivos, incluindo o estabelecimento, gerenciamento e terminação de conexões.
    - **Exemplos de Protocolos e Utilização**: NFS, NetBIOS, RPC.
    - **Utilização**: Permite que usuários em diferentes máquinas estabeleçam sessões entre eles.
6. **Camada 6: Apresentação**
    - **Explicação**: Traduz os dados entre o formato que a rede requer e o formato que o aplicativo aceita.
    - **Exemplos de Protocolos e Utilização**: SSL, TLS.
    - **Utilização**: Criptografa dados para transferência segura e traduz diferentes formatos de dados.
7. **Camada 7: Aplicação**
    - **Explicação**: Camada mais próxima do usuário, fornece serviços de rede a aplicativos do usuário.
    - **Exemplos de Protocolos e Utilização**: HTTP, FTP, SMTP.
    - **Utilização**: Fornece interfaces de rede para aplicativos como navegadores web e clientes de email.

![Untitled/Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 1.png)

[Modelo OSI](https://www.youtube.com/watch?v=7sW8CXVx7IU)

# **Modelo TCP/IP**

<aside>
<img src="https://www.notion.so/icons/light-bulb_purple.svg" alt="https://www.notion.so/icons/light-bulb_purple.svg" width="40px" /> O modelo TCP/IP (**Transmission Control Protocol/Internet Protoco**l) é um conjunto de protocolos de comunicação usados para interconectar dispositivos de rede na Internet. O modelo TCP/IP também é baseado em um conceito de camadas, embora tenha menos camadas que o modelo OSI:

</aside>

![Untitled/Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 2.png)

1. **Camada de Aplicação**:
    - **Utilização**: Responsável pela comunicação de alto nível, facilita serviços como navegação na web, envio de emails e transferência de arquivos.
    - **Protocolos**: HTTP (Hypertext Transfer Protocol), HTTPS (HTTP Secure), FTP (File Transfer Protocol), SMTP (Simple Mail Transfer Protocol), DNS (Domain Name System).
2. **Camada de Transporte**:
    - **Utilização**: Gerencia a transmissão de dados entre sistemas e hosts, garantindo, no caso do TCP, que os dados cheguem íntegros e na ordem correta, ou, no caso do UDP, uma transmissão mais rápida porém sem garantia de entrega.
    - **Protocolos**: TCP (Transmission Control Protocol), UDP (User Datagram Protocol).
3. **Camada de Internet**:
    - **Utilização**: Responsável pelo roteamento de pacotes de dados através de redes distintas, garantindo que os dados cheguem ao destino correto.
    - **Protocolos**: IP (Internet Protocol), ICMP (Internet Control Message Protocol), ARP (Address Resolution Protocol).
4. **Camada de Acesso à Rede**:
    - **Utilização**: Trata das questões de como os dados são fisicamente enviados através da rede, incluindo a definição do hardware de rede e os aspectos operacionais.
    - **Protocolos**: Ethernet, Wi-Fi, PPP (Point-to-Point Protocol).

Os dois modelos são fundamentais para a compreensão de como as redes funcionam, e ambos têm suas vantagens e desvantagens. Enquanto o modelo OSI é mais teórico e pode ser usado para descrever qualquer tipo de rede, o modelo TCP/IP é mais prático e é usado especificamente para descrever a suite de protocolos da Internet.

![Untitled/Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 3.png)

<aside>
📢 Exemplo prático: Usar o wireshark para visualizar as camadas do modelo TCP/IP.

</aside>

# Protocolos de rede e suas camadas

![Untitled/Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 4.png)

<aside>
<img src="https://www.notion.so/icons/light-bulb_purple.svg" alt="https://www.notion.so/icons/light-bulb_purple.svg" width="40px" /> Os protocolos de rede são essenciais para a comunicação entre dispositivos em uma rede. Eles definem regras e convenções para a comunicação entre dispositivos. Aqui estão alguns dos principais protocolos de rede

</aside>

1. **HTTP (HyperText Transfer Protocol):** Usado na web para transferir documentos de hipertexto e outras informações.
2. **HTTPS (HyperText Transfer Protocol Secure):** Versão segura do HTTP que usa criptografia para proteger a transmissão de dados.
3. **FTP (File Transfer Protocol):** Usado para transferir arquivos entre um cliente e um servidor em uma rede.
4. **SFTP (SSH File Transfer Protocol):** Versão segura do FTP que usa SSH para criptografia.
5. **TCP (Transmission Control Protocol):** Protocolo orientado à conexão usado para a comunicação na Internet. Garante a entrega confiável de dados.
6. **UDP (User Datagram Protocol):** Protocolo de comunicação orientado a datagramas. É mais rápido, mas menos confiável do que o TCP.
7. **IP (Internet Protocol):** Usado para encaminhar pacotes através de redes.
8. **ICMP (Internet Control Message Protocol):** Utilizado na Internet para fornecer relatórios de erros e informações operacionais.
9. **SSH (Secure Shell):** Usado para gerenciar redes, sistemas e aplicações de forma segura.
10. **Telnet:** Usado para interação com servidores remotos.
11. **SMTP (Simple Mail Transfer Protocol):** Utilizado na transferência de e-mails entre servidores.
12. **POP3 (Post Office Protocol 3):** Usado por clientes de e-mail para recuperar mensagens de um servidor de e-mail.
13. **IMAP (Internet Message Access Protocol):** Protocolo mais avançado para recuperar mensagens de e-mail de um servidor.
14. **DNS (Domain Name System):** Utilizado na Internet para traduzir nomes de domínio em endereços IP.
15. **DHCP (Dynamic Host Configuration Protocol):** Utilizado para atribuir automaticamente endereços IP a dispositivos em uma rede.
16. **ARP (Address Resolution Protocol):** Utilizado para mapear um endereço IP para um endereço físico (MAC) em uma rede local.
17. **RDP (Remote Desktop Protocol):** Usado para conectar e controlar um computador remoto.

Esses são apenas alguns dos muitos protocolos de rede existentes. Cada um tem uma função específica na comunicação de rede.

<aside>
📢 Exemplo prático: Usar o wireshark para acessar um site e visualizar os diferentes protocolos envolvidos nesse acesso.

- Opções de filtro do wireshark
    1. **Filtro por IP**: Se você conhece o endereço IP do servidor do site, você pode usar o filtro **`ip.addr == x.x.x.x`**, substituindo **`x.x.x.x`** pelo IP do servidor.
    2. **Filtro por nome de domínio**: Se você quiser filtrar pelo nome de domínio, primeiro certifique-se de capturar o tráfego DNS para resolver o nome de domínio para o IP. Você pode usar o filtro **`dns.qry.name == "exemplo.com"`** para ver as consultas DNS para o domínio, e depois usar o IP resultante com o filtro **`ip.addr`**.
    3. **Filtro por protocolo HTTP**: Se o site usa HTTP, você pode usar **`http.request.full_uri contains "exemplo.com"`** para filtrar todas as requisições HTTP para esse domínio.
    4. **Combinação de filtros**: Você pode combinar filtros para ser mais específico, como **`ip.addr == x.x.x.x && tcp.port == 80`** para filtrar todo o tráfego para o IP específico na porta HTTP padrão.
</aside>

# Exemplos práticos de cada camada

## **1. Camada de Aplicação - Usar um Cliente FTP**

**Objetivo**: Transferir um arquivo de um computador para outro usando FTP ou SSH

**Passos**:

1. **Instale um Servidor FTP**: No computador servidor, instale um software servidor FTP, como o FileZilla Server (para Windows) ou vsftpd (para Linux).
2. **Configure o Servidor FTP**: Crie um usuário e senha no servidor FTP e designe uma pasta para ser a raiz do FTP.
3. **Instale um Cliente FTP**: Nos computadores dos alunos, instale um cliente FTP, como o FileZilla Client.
4. **Conexão FTP**: Utilize o cliente FTP para se conectar ao servidor usando o IP do servidor, o usuário e a senha criados.
5. **Transferência de Arquivos**: Selecione um arquivo no cliente para ser transferido para o servidor. Execute a transferência e verifique se o arquivo aparece na pasta do servidor.

Caso use o SSH

1. **Abra o Terminal ou Prompt de Comando**: No Windows, você pode usar o PowerShell ou um cliente SSH como o PuTTY. No macOS ou Linux, abra o Terminal.
2. **Comando de Transferência de Arquivo**:
    - Para transferir um arquivo do seu computador para o servidor, use:
        
        ```ruby
        scp /caminho/local/do/arquivo usuario@servidor:/caminho/remoto/destino
        ```
        
    - Para transferir um arquivo do servidor para o seu computador, use:
        
        ```ruby
        scp usuario@servidor:/caminho/remoto/do/arquivo /caminho/local/destino
        ```
        
    
    Substitua **`/caminho/local/do/arquivo`** pelo caminho do arquivo no seu computador, **`usuario`** pelo seu nome de usuário no servidor, **`servidor`** pelo endereço IP ou nome de domínio do servidor, e **`/caminho/remoto/destino`** pelo local no servidor onde você quer armazenar o arquivo.
    
3. **Autenticação**: Digite sua senha SSH quando solicitado. Se você estiver usando uma chave SSH para autenticação, certifique-se de que ela esteja disponível para o seu cliente SSH.
4. **Verificação**: Verifique se o arquivo foi transferido corretamente, conectando-se ao servidor via SSH e navegando até o local de destino ou verificando localmente se o arquivo do servidor foi recebido.

## **2. Camada de Transporte - Uso do Netcat**

**Objetivo**: Criar uma conexão TCP simples entre dois computadores.

**Passos**:

1. **Preparação**: Escolha dois computadores na rede. Um atuará como servidor e o outro como cliente.
2. **Servidor**: No computador servidor, abra um terminal e execute **`nc -l 1234`** para ouvir na porta 1234.
3. **Cliente**: No computador cliente, abra um terminal e conecte-se ao servidor com **`nc [IP do Servidor] 1234`**, substituindo **`[IP do Servidor]`** pelo endereço IP real do servidor.
4. **Comunicação**: Escreva mensagens no terminal do cliente e pressione Enter. As mensagens aparecerão no terminal do servidor. Responda do servidor, e o texto aparecerá no cliente.

## **3. Camada de Internet - Executar Traceroute**

**Objetivo**: Analisar a rota percorrida pelos pacotes até um destino na internet.

**Passos**:

1. **Escolha um Destino**: Decida para qual site ou serviço online você quer traçar a rota (por exemplo, google.com).
2. **Execute o Traceroute**: No terminal ou prompt de comando, digite **`traceroute google.com`** no Linux ou macOS, ou **`tracert google.com`** no Windows.
3. **Análise**: Observe a lista de saltos (hops) que o pacote faz para chegar ao destino. Discuta o significado de cada salto, os tempos de resposta e possíveis pontos de falha.

## **4. Camada de Acesso à Rede - Observar o Processo ARP**

**Objetivo**: Observar como os endereços IP são mapeados para endereços MAC.

**Passos**:

1. **Limpe a Tabela ARP**: No computador, abra o terminal ou prompt de comando e execute **`arp -d`** para limpar a tabela ARP.
2. **Analise o Tráfego com Wireshark**: Inicie o Wireshark e comece a capturar pacotes na interface de rede.
3. **Gere Tráfego ARP**: Acesse um site na internet ou pingue um endereço IP na sua rede local.
4. **Observação**: Volte ao Wireshark e filtre por ARP (**`arp`** no filtro de display). Observe as solicitações ARP e respostas, identificando como o IP é mapeado para o MAC.