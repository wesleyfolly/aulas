# Conceitos básicos

[A História da Internet! História da Tecnologia](https://www.youtube.com/watch?v=pKxWPo73pX0)

[Da web "cringe" à web 3.0 | Nerdologia Tech](https://www.youtube.com/watch?v=_nxiWws7CpA)

[Internet em Tudo, Todo Lugar ao Mesmo Tempo | Nerdologia](https://www.youtube.com/watch?v=iI4ZPZjPM5c)

# **Conceituação**

- Definição: Sistemas de **dispositivos interligados** que compartilham recursos e informações.
- Uso: Compartilhamento de dados, comunicação, colaboração, serviços da Internet, etc.
- Componentes principais: Nós (computadores), conexões (cabos, WiFi), dispositivos de rede.

> [!INFO]
> 📢 Exemplo prático: Wireshark para análise básica de pacotes na rede local

![Untitled](../../Recursos/Redes de Computadores/Endereçamento IPv6/Untitled.png)

# **Tipos**

- PAN (Personal Area Network): Redes de pequena escala, geralmente para um único usuário, como dispositivos conectados via Bluetooth.
- LAN (Local Area Network): Redes de pequena escala, como escritórios ou casas.
- MAN (Metropolitan Area Network): Redes que cobrem uma área geográfica específica, como uma cidade (Exemplo: Provedor de internet).
- WAN (Wide Area Network): Redes de grande escala que cobrem cidades, países ou até mesmo o mundo (Exemplo: Internet; telefonia móvel).
- VPN (Virtual Private Network): Rede privada estabelecida sobre uma rede pública.

> [!INFO]
> 📢 Exemplo prático: Uso da VPN Kaspersky e redes Tor com Kali Linux

![Untitled](../../Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 1.png)

# **Topologias**

- Barramento: Todos os dispositivos são conectados a um único cabo (o "barramento").
- Anel: Os dispositivos estão dispostos em um círculo e cada dispositivo está conectado a exatamente dois outros dispositivos.
- Estrela: Todos os dispositivos estão conectados a um dispositivo central (como um switch ou hub).
- Malha: Cada dispositivo está conectado a todos os outros dispositivos.
- Árvore (ou Hierárquica): Combinação de topologias de estrela e barramento, com redes de estrela conectadas a um barramento principal.
- 

> [!INFO]
> 📢 Exemplo prático: Criar algumas topologias usando o Packet Tracer

![Untitled](../../Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 2.png)

# **Evolução e história das redes**

- **1960s:**
    - 1962: J.C.R. Licklider do MIT propõe uma "Rede Galáctica" global.
    - 1965: A primeira conexão de computador remota é feita via linha telefônica entre o TX-2 em Massachusetts e o Q-32 na Califórnia.
- **1970s:**
    - 1970: A ARPANET (Advanced Research Projects Agency Network) é estabelecida, conectando quatro grandes universidades nos EUA.
    - 1973: A primeira conexão internacional é feita na ARPANET, ligando os Estados Unidos e a Universidade de College London.
    - 1974: A palavra "Internet" é usada pela primeira vez.
    - 1979: A Usenet é criada por Tom Truscott, Jim Ellis e Steve Bellovin.
- **1980s:**
    - 1982: O protocolo TCP/IP torna-se o protocolo de rede padrão para a ARPANET.
    - 1983: A ARPANET é dividida em ARPANET e MILNET. A ARPANET depois se tornaria a base da Internet.
    - 1985: A NSFNET é criada, formando a espinha dorsal da Internet nos Estados Unidos.
    - 1989: Tim Berners-Lee propõe o World Wide Web enquanto trabalhava no CERN.
- **1990s:**
    - 1990: ARPANET oficialmente desativada.
    - 1991: O World Wide Web é lançado ao público.
    - 1994: A Netscape Navigator é lançada, tornando-se o navegador mais popular.
    - 1998: O Google é fundado por Larry Page e Sergey Brin.
- **2000s:**
    - 2001: A Wikipedia é lançada.
    - 2004: O Facebook é lançado.
    - 2005: O YouTube é lançado.
    - 2007: O iPhone da Apple é lançado, acelerando a popularidade da Internet móvel.
- **2010s:**
    - 2010: O Instagram é lançado.
    - 2015: A maioria do tráfego da Internet agora é criptografada.
    - 2019: A Internet atinge 56% de penetração global.
- **2020s:**
    - 2020s: A Internet das Coisas (IoT), o 5G e a IA continuam a impulsionar a evolução das redes de computadores.

> [!INFO]
> 📢 Exemplo prático: [https://archive.org/](https://archive.org/) (olhar google, facebook e outros sites)

# **Equipamentos**

1. **Computadores/Dispositivos Finais:** Estes são os dispositivos que os usuários finais usam para acessar a rede. Eles podem ser computadores desktop, laptops, smartphones, tablets, servidores, entre outros.
2. **Switches de Rede:** Estes são dispositivos que conectam múltiplos dispositivos em uma rede. Eles operam na camada de link de dados (camada 2) do modelo OSI e usam endereços MAC para encaminhar pacotes para o dispositivo correto em uma rede local (LAN). 
3. **Roteadores:** Roteadores são dispositivos que conectam duas ou mais redes. Eles operam na camada de rede (camada 3) do modelo OSI e usam endereços IP para encaminhar pacotes entre redes.
4. **Pontos de Acesso Sem Fio (Wireless Access Points - WAPs):** Estes são dispositivos que permitem que dispositivos sem fio se conectem a uma rede. Eles atuam como um "ponto de acesso" para uma conexão sem fio, permitindo que dispositivos com capacidade Wi-Fi se conectem a uma LAN com fio.
5. **Modems:** Modem é a abreviação para "modulador-demodulador". É um dispositivo que modula um sinal analógico (como uma linha telefônica ou de cabo) para transportar dados digitais e demodula o sinal analógico para decodificar os dados transmitidos.
6. **Firewalls de Hardware:** Estes são dispositivos dedicados que protegem a rede de acessos não autorizados e ataques. Eles filtram o tráfego de entrada e de saída com base em um conjunto de regras de segurança.
7. **Servidores:** Servidores são computadores poderosos que armazenam, enviam e processam dados. Eles fornecem recursos e serviços para outros computadores e dispositivos em uma rede.
8. **Cabos de Rede:** Cabos como cabos Ethernet (Cat5, Cat6), cabos coaxiais e cabos de fibra óptica são usados para conectar dispositivos de rede. Eles são um componente essencial da infraestrutura física de uma rede.

![Untitled](../../Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 3.png)

> [!INFO]
> 📢 Exemplos prático: Descoberta de roteadores e clientes com aircrack-ng no Kali Linux

# Meios de comunicação

1. **Cabo de Par Trançado**:
    - **Descrição**: Consiste em pares de fios de cobre isolados que são trançados para reduzir a interferência eletromagnética.
    - **Uso**: Muito usado em redes locais (LANs) e em sistemas de telefonia.
    
    ![Untitled](../../Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 4.png)
    
2. **Cabo Coaxial**:
    - **Descrição**: Possui um núcleo de cobre condutor rodeado por um isolante, um blindagem metálica e uma capa externa.
    - **Uso**: Antigamente usado em redes Ethernet e ainda comum em conexões de televisão a cabo.
    
    ![Untitled](../../Recursos/Redes de Computadores/Conceitos básicos/Untitled 5.png)
    
    ![Untitled](../../Recursos/Redes de Computadores/Conceitos básicos/Untitled 6.png)
    
3. **Fibra Óptica**:
    - **Descrição**: Usa pulsos de luz para transmitir dados através de filamentos de vidro ou plástico.
    - **Uso**: Ideal para distâncias longas e altas velocidades, comumente usado em backbones de internet e redes de telecomunicações.
    
    ![Untitled](../../Recursos/Redes de Computadores/Conceitos básicos/Untitled 7.png)
    
4. **Comunicação sem Fio (Wi-Fi, Bluetooth, etc.)**:
    - **Descrição**: Utiliza ondas de rádio ou infravermelho para transmitir dados sem a necessidade de cabos físicos.
    - **Uso**: Ampla aplicação em redes domésticas, comunicação entre dispositivos móveis e pontos de acesso à internet.
    
    ![Untitled](../../Recursos/Redes de Computadores/Conceitos básicos/Untitled 8.png)
    

> [!INFO]
> 📢 **Aula prática 1**: Crimpagem de cabo de rede (par trançado)

> [!INFO]
> 📢 **Aula prática 2**: Configuração de roteador sem fio simples