# Tarefas e trabalhos

> *não é necessário realizar todas as tarefas abaixo, somente as que forem solicitadas pelo professor.*
> 

- Exercícios da apostila de Segurança da Informação da rede E-tec Brasil
    
    Tarefa parte 1: Entregar exercícios do capítulo 1 ao 4
    
    Tarefa parte 2: Entregar exercícios do capítulo 5 ao 8
    
    Possível pontuação: 1 ponto as duas partes
    
- Exercícios da apostila de Redes de Computadores
- Reconhecimento da rede local
    
    
    ![/Recursos/Segurança da informação/Tarefas e trabalhos/Untitled.png)
    
    Você irá criar um arquivo de texto (com capa e conteúdo) descrevendo a sua rede doméstica.
    
    Quais itens deve ter?
    
    - Quantos dispositivos
    - IP, máscara e Gateway e DNS de cada dispositivo
    - Incluindo IP (interface interna e externa) dos roteadores
    
    Você fará uma análise minuciosa de todos os dispositivos e configurações que você tem. Tire prints da tela.
    
    Caso você só possua um celular, não tem problema, você irá fazer a mesma coisa porém só com um dispositivo, com todas as configurações de rede do seu celular.
    
    Fique tranquilo que ninguém terá essas informações confidenciais da sua rede e serve somente para o processo de aprendizagem. Servirá também para depois sabermos configurar alguns acessos a máquinas virtuais e servidores para serem acessados da sua casa.
    
- Reconhecimento de redes wifi próximas
    
    
    Você irá elaborar uma **tabela** com todas as redes wifi que sejam captadas da sua casa (ou em qualquer outro lugar que queira fazer o trabalho).
    
    A tabela irá conter os seguintes campos:
    
    - BSSID (mac do roteador)
    - Nome da rede
    - Tipo de criptografia (WEP, WPA, WPA2, WPA3)
    - Se possui procotolo WPS ativado
    - Nível de sinal
    
    As ferramentas utilizadas serão as demonstradas em aula, mas você tem a opção e autonomia de escolher outras ferramentas desde que obtenha os dados acima listados.
    
    Aqui no próprio Notion tem vários materiais sobre redes sem fio.
    
- Análise de mercado do **conhecimento necessário** em Segurança da informação (concursos e empresas)
    
    Dividiremos nossa pesquisa em 4 itens:
    
    - O que os concursos pedem de Segurança da informação na área de TI em geral (analisar editais)
    - O que os concursos pedem na área específica de Segurança da informação (analisar editais)
    - O que as empresas pedem de conhecimento em Segurança da informação para vagas de TI em geral (analisar vagas no linkedin)
    - O que as empresas pedem em vagas específicas de Segurança da informação (analisar vagas no linkedin)
        
        
        obs: Na análise de editais, analisar no mínimo um concurso municipal, estadual e federal.
        
        [PCI Concursos - Informações sobre Concursos Públicos](https://www.pciconcursos.com.br/)
        
        [](https://www.qconcursos.com/)
        
    
    # O que os concursos pedem de Segurança da informação na área de TI em geral (analisar editais)
    
    ## Municipal
    
    ## Estadual
    
    **AUDITOR FISCAL DE TECNOLOGIA DA INFORMAÇÃO DA RECEITA ESTADUAL
    ANÁLISE, DESENHO E AUTOMAÇÃO DE PROCESSOS**
    
    1 Confiabilidade, integridade e disponibilidade. 
    
    2 Mecanismos de segurança. 
    
    2.1 Criptografia. 
    
    2.2 Assinatura digital. 
    
    2.3 Garantia de integridade. 
    
    2.4 Controle de acesso. 
    
    2.5 Certificação digital. 
    
    2.6 Infraestrutura de chaves públicas. 
    
    2.7 Ataques a sistemas de criptografia. 
    
    3 Gerência de riscos. 
    
    3.1 Ameaça, vulnerabilidade e impacto. 
    
    4 Políticas de segurança. 
    
    4.1 NBR ISO/IEC 27002:2005. 
    
    4.2 NBR ISO/IEC 27001:2013. 
    
    4.3 NBR ISO/IEC 15408. 
    
    4.4 Políticas de senhas. 
    
    5 Autenticação de dois fatores (MFA). 
    
    6 OAuth2, JWT, SSO e SAML. 
    
    7 OWASP Top 10 (https://owasp.org/www-project-topten/). 
    
    8 Segurança de aplicações web: 
    
    8.1 SQL injection, XSS, CSRF, ataques de inclusão de arquivos. 
    
    8.2 Vulnerabilidades em navegadores. 
    
    8.3 Vulnerabilidades de code signing. 
    
    8.4 Vulnerabilidades de controles de autenticação. 
    
    8.5 Comunicação interaplicativos e sidejacking.
    
    ## Federal
    
    # O que os concursos pedem na área específica de Segurança da informação (analisar editais)
    
    Municipal
    
    Estadual
    
    Federal
    
    # Análise de vagas no linkedin (Vaga genérica em TI)
    
    OBS: De todas as vagas analisadas nenhuma pedia conhecimentos em segurança
    
    # Análise de vagas no linkedin (Vaga específica se segurança da informação)
    
    ### Responsabilidades
    
    - Investigar violações de segurança
    - Análise de riscos
    
    ### Conhecimentos
    
    - Redes de computadores
    - Sistemas operacionais Windows e Linux;
    - Linguagem de programação Shell Script, Powershell e Python;
    - Frameworks de segurança: NIST CSF (Cyber Security Framework), NIST Privacy Framework, NIST SP800-82, ISO 27001/2/5, IEC 62443/ISA 99, COBIT5 for Information Security;
- Descrição do trabalho sobre Docker
    
    
    # **Trabalho Prático: Construção de um Laboratório de Segurança com Docker**
    
    ### **🎯 Objetivo**
    
    Montar, configurar e testar um **laboratório Docker completo** para uso nas aulas de Segurança da Informação, contendo:
    
    - um **alvo web vulnerável** (Juice Shop),
    - um **ambiente atacante** (Kali Linux),
    - e um **ambiente de exploração** (Metasploit).
    
    A equipe deverá criar a infraestrutura base, validar a conectividade, automatizar e deixar o ambiente pronto para etapas futuras (exploits, testes de invasão, análise de tráfego etc.).
    
    ---
    
    # **📘 Parte 1 — Teoria**
    
    A equipe deverá estudar a página:
    
    [Docker - gerenciamento de containers](https://www.notion.so/Docker-gerenciamento-de-containers-1a79e0c91d3680aca876d27e19380191?pvs=21) 
    
    Após a leitura, a apresentação e trabalho escrito deverá conter explicações sobre:
    
    1. **O que é um container**
        - isolamento, portabilidade e camadas de filesystem
    2. **Images × Containers**
        - relacionar “imagem = blueprint” / “container = instância”
    3. **Docker Compose**
        - orquestração simples, multi-containers, redes e volumes
    4. **Redes Docker**
        - bridges, redes isoladas, DNS interno, comunicação entre serviços
    5. **Por que Docker é ideal para laboratórios de segurança**
        - rapidez, isolamento, controle, limpeza e reprodutibilidade
    
    ---
    
    # **🛠️ Parte 2 — Prática**
    
    A equipe deverá construir o seguinte ambiente **do zero**:
    
    ---
    
    ## **1. Criar o arquivo docker-compose.yml**
    
    O compose deve incluir **três containers**:
    
    1. **Juice Shop**
        - app vulnerável para prática de ataques web
        - acessível na porta 3000 (ou outra definida via .env)
    2. **Kali Linux**
        - rodando em modo “parado, mas acordado” (sleep infinity)
        - usado como máquina atacante (nmap, gobuster, sqlmap etc.)
    3. **Metasploit**
        - opcionalmente como serviço separado ou dentro da própria Kali
        - mas deve estar disponível na rede interna do laboratório
    
    ---
    
    ## **2. Criar uma rede Docker isolada**
    
    - Nome sugerido: **labnet**
    - Apenas os containers do laboratório podem usá-la
    - Não publicar nenhuma porta para a internet
    
    ---
    
    ## **3. Criar scripts de automação**
    
    No repositório, incluir:
    
    - **provision.sh**
        - sobe o laboratório
        - docker compose up -d
    - **reset.sh**
        - derruba o laboratório e remove volumes
        - docker compose down -v
    
    Os scripts deverão ter permissão de execução (chmod +x).
    
    ---
    
    ## **4. Testes obrigatórios**
    
    - docker compose up -d **sem erros**
    - Acessar o Juice Shop em:
        
        👉 http://localhost:3000
        
        *(ou porta definida no .env)*
        
    - Acessar o shell da Kali:
    
    ```
    docker exec -it lab_kali /bin/bash
    ```
    
    - Verificar se os três containers se enxergam pela rede interna labnet.
    
    ---
    
    # **🧾 Entrega**
    
    A equipe deverá disponibilizar um **repositório no GitHub** contendo:
    
    - docker-compose.yml
    - .env.example (com portas e variáveis usadas)
    - provision.sh
    - reset.sh
    - README.md com:
        - descrição do laboratório
        - instruções de setup
        - comandos de teste
        - prints do ambiente funcionando
    
    ---
    
    # **📊 Critérios de Avaliação**
    
    | **Critério** |
    | --- |
    | Laboratório sobe com docker compose up -d sem erros |
    | Juice Shop acessível na porta configurada |
    | Acesso funcional ao container Kali (exec + shell) |
    | Organização do repositório + scripts + .env.example |
    | Clareza das explicações teóricas e do README |
    | Apresentação clara da equipe |
    | Repositório Git |
    | Parte escrita do trabalho em PDF enviado antes da aula de apresentação |
    
    ---
    
    # **⚠️ Observações de Segurança**
    
    - **Não publicar nenhuma porta na internet**
        
        (somente localhost para acesso ao Juice Shop).
        
    - Usar **rede interna da escola ou máquina local**.
    - Manter **firewall ativo**.
    - O laboratório contém serviços vulneráveis — **não subir em nuvem**, **não usar em redes de produção**.
    
    ---
    
- Descrição do trabalho sobre VPN
    
    # **Trabalho Prático: Arquitetura, Segurança e Implementação de VPN**
    
    ### **Objetivo**
    
    - Compreender os conceitos fundamentais de VPNs: túneis, criptografia, autenticação, protocolos e modelos de comunicação.
    - Comparar VPN tradicional (cliente–servidor) com VPN mesh moderna.
    - Implementar uma VPN em ambiente controlado (OpenVPN ou WireGuard).
    - Analisar riscos, benefícios e boas práticas de segurança em VPNs.
    
    ---
    
    # **📘 Parte 1 — Teoria**
    
    A equipe deverá estudar os seguintes tópicos:
    
    1. **O que é uma VPN**
        - Conceito de túnel criptografado
        - Segurança no transporte
        - Modelos: *site-to-site*, *remote-access*, *mesh*
    2. **Propriedades de segurança de uma VPN**
        - Confidencialidade
        - Integridade
        - Autenticação
        - Perfect Forward Secrecy (PFS)
    3. **Protocolos de VPN**
        - OpenVPN (TLS + OpenSSL)
        - WireGuard (Curve25519, ChaCha20-Poly1305, Noise Protocol)
        - IPSec
        - SSTP / L2TP (contextual)
    4. **Limitações e riscos**
        - Vazamento de DNS
        - Split-tunneling
        - VPN mal configurada atuando como *single point of failure*
        - Falsa sensação de privacidade
    
    ---
    
    # **🛠️ Parte 2 — Prática**
    
    ### **1. Criar duas máquinas para teste**
    
    Pode ser:
    
    - seu computador + uma VM
    - duas VMs
    - dois PCs diferentes
    - um PC + smartphone (em último caso)
    
    ### **2. Instalar uma VPN real**
    
    Escolher **UMA** das duas opções abaixo:
    
    - **WireGuard**
        - Instalar em ambas as máquinas
        - Gerar pares de chaves
        - Configurar interface wg0
        - Criar túnel ponto-a-ponto
        - Testar ping entre IPs privados (10.x.x.x)
    
    **ou**
    
    - **OpenVPN**
        - Instalar servidor + cliente
        - Criar certificados
        - Configurar perfis .ovpn
        - Estabelecer túnel
        - Testar ping e acesso remoto
    
    ### **3. Validar criptografia e tráfego**
    
    - Verificar rotas (via ip route ou route print)
    - Testar se o tráfego está passando pelo túnel
    - Capturar pacotes com **Wireshark** para confirmar que os dados trafegam cifrados
    - Testar DNS e possíveis vazamentos
    
    ### **4. Documentar a configuração**
    
    - Endereçamento
    - Chaves (omitindo conteúdo sensível)
    - Tabelas de rotas
    - Prints do túnel ativo
    - Diagrama simples da topologia
    
    ### **5. Analisar segurança**
    
    - Quais ataques uma VPN previne?
    - Quais ataques **não** previne?
    - Que falhas de configuração tornam uma VPN insegura?
    - Como comparar essa solução com uma mesh VPN (ex: Tailscale)?
    
    ---
    
    # **🧾 Entrega**
    
    - Apresentação oral
    - Formato do arquivo: PDF. Enviado antes da aula de apresentação
    - Prazo:
    - O relatório deve ter no mínimo: introdução, resultados, análise, conclusões.
    - O objetivo é explicar o que é e como funciona uma VPN, teoria e prática.
    
    ### **Critérios de avaliação**
    
    - Funcionamento prático da VPN entre dispositivos
    - Compreensão técnica da arquitetura
    - Implementação dos controles de segurança
    - Qualidade da documentação
    - Reflexão crítica sobre segurança, benefícios e riscos.
- Descrição do trabalho sobre Tailscale
    
    ---
    
    # **Exploração e uso prático do Tailscale – arquitetura, criptografia e rede privada**
    
    ### **Objetivo**
    
    - Entender a arquitetura interna do Tailscale (plano de dados + plano de controlo) conforme apresentado no artigo.
    - Aplicar o Tailscale para estabelecer uma rede privada segura (VPN mesh) entre dispositivos.
    - Avaliar os aspectos de segurança: criptografia ponta-a-ponta, NAT traversal, controle de acesso e logs.
    - Documentar e refletir criticamente sobre os benefícios e os riscos desse tipo de solução.
    
    ### **Descrição da atividade**
    
    Você deverá:
    
    1. Ler o artigo “How Tailscale works”. [https://tailscale.com/blog/how-tailscale-works](https://tailscale.com/blog/how-tailscale-works)
    2. Instalar o Tailscale em **pelo menos 3 dispositivos** (podem ser máquinas virtuais ou físicas). Os dispositivos não necessariamente precisam ser da mesma pessoa. 
    3. Verificar como o plano de dados (“data plane”) opera usando WireGuard para túneis criptografados.
    4. Verificar como o plano de controle (“control plane”) opera: chave pública/privada, coordenação, autenticação.
    5. Testar comunicação entre os dispositivos: troca de dados, desempenho, NAT traversal (mesmo se atrás de firewalls ou NAT).
    6. Analisar e configurar os controles de segurança: ACLs/ políticas, logs de conexão, como o modelo “zero trust” é adotado.
    7. Preparar um relatório que inclua:
        - Diagrama da rede criada
        - Descrição técnica da configuração
        - Prints/ evidências da conectividade e logs
        - Reflexão crítica: onde a solução brilha, onde são os riscos, comparativo com VPNs tradicionais.
    
    ### **Entrega**
    
    - Apresentação oral
    - Formato do arquivo: PDF. Enviado antes da aula de apresentação
    - Prazo:
    - O relatório deve ter no mínimo: introdução, resultados, análise, conclusões.
    - O objetivo é explicar o que é e como funciona o tailscale, teoria e prática.
    
    ### **Critérios de avaliação**
    
    - Funcionamento prático da rede Tailscale entre dispositivos
    - Compreensão técnica da arquitetura
    - Implementação dos controles de segurança
    - Qualidade da documentação
    - Reflexão crítica sobre segurança, benefícios e riscos.
    
    ---
    
- Descrição do trabalho Segurança em Web Scraping e Automação com Proxies
    
    ---
    
    # **Trabalho Prático: Segurança em Web Scraping e Automação com Proxies**
    
    ### **🎯 Objetivos**
    
    O trabalho deve explorar os seguintes pontos:
    
    1. O que é scraping de sites
    2. Entender como sites detectam scraping (**segurança do lado servidor**).
    3. Aprender boas práticas de **scraping seguro** (lado do cliente).
    4. Evitar bloqueio por IP usando **proxies**, respeitando ética e limites técnicos.
    5. Criar um **scraper resiliente e seguro** para uma página simples (QAcadêmico), para buscar automaticamente as **notas das disciplinas** e montar uma tabela (execução **1x por dia**).
    6. Documentar **riscos de segurança, privacidade e compliance** envolvidos.
    
    ---
    
    ## **📘 Parte 1 — Teoria (Estudo guiado)**
    
    No relatório e apresntação, a equipe deve abordar os seguintes tópico:
    
    1. **Como sites detectam scraping**
        - Padrões de requisição (frequência, horários, repetição)
        - Identificação por **user-agent**, cookies, headers suspeitos
        - Mecanismos como rate-limit, bloqueio por IP, WAF, CAPTCHAs
    2. **Boas práticas de scraping seguro (lado do cliente)**
        - Respeitar limites de frequência (evitar sobrecarga)
        - Tratar erros corretamente (retry com backoff, timeout)
        - Não tentar burlar proteção de forma agressiva
        - Lidar com autenticação sem expor credenciais
    3. **Uso de proxies em scraping**
        - Conceito de proxy e rotação de IP
        - Diferença entre proxy “para anonimizar” e “para distribuir carga”
        - Limites éticos: não usar proxies para burlar bloqueios legítimos
    4. **Riscos de segurança, privacidade e compliance**
        - Exposição de credenciais (usuário/senha) do QAcadêmico
        - Vazamento de dados pessoais de alunos
        - LGPD, regulamentos internos da instituição, termos de uso do sistema
        - Responsabilidade ao automatizar acesso a sistemas acadêmicos
    
    ---
    
    ## **🛠️ Parte 2 — Prática (Hands-on)**
    
    ### **🧩 Cenário prático**
    
    Criar um **script de scraping seguro** que:
    
    - Acesse o **QAcadêmico** com credenciais **do próprio aluno** (nunca de terceiros).
    - Navegue até a área de **notas das disciplinas** do período atual.
    - Extraia as notas e monte uma **tabela estruturada** (ex: CSV ou Markdown).
    - Seja projetado para rodar **no máximo 1 vez por dia**, como automação agendada.
    
    ---
    
    ### **1. Preparação do ambiente**
    
    - Escolher a linguagem e ferramenta (ex.: **Python + Playwright/Requests + BeautifulSoup**).
    - Criar um projeto organizado (pastas, requirements, README).
    - Configurar um arquivo .env com:
        - QACADEMICO_USER
        - QACADEMICO_PASSWORD
    - Garantir que **as credenciais não sejam commitadas** no Git.
    
    ---
    
    ### **2. Implementar o scraper**
    
    O script deve:
    
    1. **Autenticar** no QAcadêmico (login com usuário/senha).
    2. Navegar até a página de **notas**.
    3. Extrair, no mínimo:
        - Nome da disciplina
        - Nota(s) principal(is)
        - Situação (aprovado, reprovado, cursando, etc., se disponível)
    4. Gravar os dados em um formato estruturado, por exemplo:
        - notas.csv
        - notas.md em formato de tabela
    5. Ser executável por um único comando, por exemplo:
    
    ```
    python scraper_notas.py
    ```
    
    ---
    
    ### **3. Proxies e proteção contra bloqueios**
    
    - Implementar **ao menos uma** das boas práticas:
        - time.sleep() aleatório entre requisições
        - Tratamento de erro HTTP (429, 500 etc.) com retry controlado
        - Configuração opcional de proxy via .env (ex.: HTTP_PROXY, HTTPS_PROXY)
    - Explicar no relatório **quando** faria sentido usar proxy e **quando não** em um cenário como o QAcadêmico.
    - Reforçar que **proxies não devem ser usados para atacar ou derrubar o sistema**, mas para segurança operacional e privacidade **dentro dos limites legais**.
    
    ---
    
    ### **4. Agendamento (execução 1x/dia)**
    
    - Mostrar uma forma possível de agendar o script para rodar uma vez ao dia, por exemplo:
        - cron (Linux)
        - Agendador interno (ex.: schedule em Python, só como demonstração)
    
    ---
    
    ### **5. Documentação técnica (README + Relatório)**
    
    A equipe deve entregar:
    
    1. **README do projeto** com:
        - Como configurar .env
        - Como instalar dependências
        - Como executar o scraper
        - Como interpretar o arquivo de saída (tabela de notas)
    2. **Relatório (PDF ou Markdown)** com:
        - Parte teórica (resumos pedidos)
        - Descrição do funcionamento do script
        - Medidas de segurança adotadas
        - Discussão sobre riscos de privacidade e compliance
        - Comentário sobre proxies e detecção de scraping pelo servidor
    
    ---
    
    ## **🧾 Entrega**
    
    - **Repositório Git** com:
        - Código-fonte do scraper
        - requirements.txt ou equivalente
        - .env.example (sem credenciais reais)
        - README.md
    - **Relatório** em PDF ou Markdown, seguindo os itens acima.
    - Código funcionando
    
    ---
    
    ## **📊 Critérios de Avaliação**
    
    | **Critério** |
    | --- |
    | Scraper funcional (login + extração correta das notas) |
    | Boas práticas de código e uso de .env (sem vazar credenciais) |
    | Tratamento de erros / preocupação com frequência e possíveis bloqueios |
    | Qualidade da documentação (README + explicação de agendamento) |
    | Discussão de riscos de segurança, privacidade e compliance |
    
    ---
    
    ## **⚠️ Observações de Segurança e Ética**
    
    - Cada aluno deve usar **apenas sua própria conta** no QAcadêmico.
    - É **proibido** compartilhar credenciais ou arquivos que contenham credenciais.
    - Não é permitido aumentar a frequência do scraper além do proposto (1x/dia).
    - Todo uso deve respeitar as normas da instituição e a legislação vigente (incluindo LGPD).
    - Este trabalho é **educacional**, voltado para compreensão de segurança, não para exploração maliciosa.
    
    ---