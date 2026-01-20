# Tarefas e trabalhos

> *não é necessário realizar todas as tarefas abaixo, somente as que forem solicitadas.*
> 

# Integrado

- Exercícios da apostila de Segurança da Informação da rede E-tec Brasil
    
    Tarefa parte 1: Entregar exercícios do capítulo 1 ao 4
    
    Tarefa parte 2: Entregar exercícios do capítulo 5 ao 8
    
    Possível pontuação: 1 ponto as duas partes
    
- Exercícios da apostila de Redes de Computadores
- Reconhecimento da rede local
    
    
    ![/Recursos/Redes de Computadores/Tarefas e trabalhos/Untitled.png)
    
    Você irá criar um arquivo de texto (com capa e conteúdo) descrevendo a sua rede doméstica.
    
    Quais itens deve ter?
    
    - Quantos dispositivos
    - IP, máscara e Gateway e DNS de cada dispositivo
    - Incluindo IP (interface interna e externa) dos roteadores
    
    Você fará uma análise minuciosa de todos os dispositivos e configurações que você tem. Tire prints da tela.
    
    Caso você só possua um celular, não tem problema, você irá fazer a mesma coisa porém só com um dispositivo, com todas as configurações de rede do seu celular.
    
    Fique tranquilo que ninguém terá essas informações confidenciais da sua rede e serve somente para o processo de aprendizagem. Servirá também para depois sabermos configurar alguns acessos a máquinas virtuais e servidores para serem acessados da sua casa.
    
- Reconhecimento de redes wifi próximas
    
    
    Você irá elaborar uma **tabela** com todas as redes wifi que sejam captadas da sua casa.
    
    A tabela irá conter os seguintes campos:
    
    - BSSID (mac do roteador)
    - Nome da rede
    - Tipo de criptografia (WEP, WPA, WPA2, WPA3)
    - Se possui procotolo WPS ativado
    - Nível de sinal
    
    As ferramentas utilizadas serão as demonstradas em aula, mas você tem a opção e autonomia de escolher outras ferramentas desde que obtenha os dados acima listados.
    
- Análise de mercado do **conhecimento necessário** em redes de computadores (concursos e empresas)
    
    Dividiremos nossa pesquisa em 4 itens:
    
    - O que os concursos pedem de redes na área de TI em geral (analisar editais)
    - O que os concursos pedem na área específica de Redes (analisar editais)
    - O que as empresas pedem de conhecimento em redes para vagas de TI em geral (analisar vagas no linkedin)
    - O que as empresas pedem em vagas específicas de Redes (analisar vagas no linkedin)
        
        
        obs: Na análise de editais, analisar no mínimo um concurso municipal, estadual e federal.
        
        [PCI Concursos - Informações sobre Concursos Públicos](https://www.pciconcursos.com.br/)
        
        [](https://www.qconcursos.com/)
        
    
    # O que os concursos pedem de redes na área de TI em geral (analisar editais)
    
    Concurso geral
    
    Municipal
    
    Prefeitura de Marechal Cândido Rondon - PR - Analista de Sistema
    
    - Conceitos
    - fundamentos
    - arquitetura
    - meios de transmissão
    - redes LAN e WAN
    - políticas de backup/restore
    - anti-vírus
    
    Concurso específico
    
- Tarefa teórica (questões de concursos)
    
    Estudar e montar material com as últimas questões dos últimos concursos de TI das disciplinas de redes de computadores
    
- Trabalho sobre Docker
    - **1. Tema do trabalho**
        - Introdução prática ao Docker: criar, executar e gerenciar um container simples.
    - **2. Objetivo**
        - Entender na prática o que é Docker.
        - Aprender a baixar uma imagem, subir um container, acessar o serviço e derrubar o container.
    - **3. Pré-requisitos**
        - Docker instalado e funcionando (docker --version).
        - Acesso a terminal (Linux, macOS ou WSL no Windows).
    - **4. Etapas do trabalho (passo a passo)**
        1. **Testar instalação**
            - Rodar: docker run hello-world
            - Fazer print da saída e guardar para entregar.
        2. **Baixar uma imagem de servidor web**
            - Rodar: docker pull nginx
        3. **Subir um container com o Nginx**
            - Rodar:
    
    ```
    docker run --name meu-nginx -d -p 8080:80 nginx
    ```
    
    1. **Testar no navegador**
        - Abrir http://localhost:8080 e verificar se a página padrão do Nginx aparece.
        - Print da tela para entregar.
    2. **Listar containers**
        - Rodar: docker ps
        - Verificar se meu-nginx está em execução.
    3. **Parar e remover o container**
        - Parar: docker stop meu-nginx
        - Remover: docker rm meu-nginx
        - Mostrar que não há mais containers rodando: docker ps.
    - **5. Entrega**
        - Arquivo .md ou .pdf com:
            - Comandos utilizados (copiados do terminal).
            - Prints do hello-world e do site no navegador.
            - 1 parágrafo final respondendo:
                - “Em uma frase: o que é Docker pra você depois deste exercício?”

# Superior