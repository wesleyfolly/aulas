# Preparando o terreno...

# O que é um teste de intrusão?

é um método que avalia a segurança de um sistema ou de uma rede, simulando um ataque de uma fonte maliciosa. 

O processo envolve uma análise nas atividades do sistema, que envolvem a busca de alguma `vulnerabilidade` em potencial que possa ser resultado de uma má configuração do sistema, falhas em hardwares/softwares desconhecidas, deficiência no sistema operacional ou nas técnicas de defesa. 

O teste de intrusão possui um relatório como resultado, onde constam todas as análises, vulnerabilidades e muitas vezes também a **solução** técnica para os problemas.

![Untitled/Recursos/Segurança da informação/Preparando o terreno/Untitled.png)

Um Ethical Hacker (Hacker Ético) é um profissional de tecnologia da informação que trabalha na área de Segurança da Informação, com a função de encontrar vulnerabilidades de segurança que um hacker malicioso poderia potencialmente explorar. Para tanto, este profissional precisa desenvolver habilidades em técnicas de penetração de sistemas, Redes de Computadores e dispositivos computacionais em geral.

O profissional desta área deve ter conhecimentos iguais ou superiores a um hacker com intenção maliciosa. Mas, o invés de usar esse conhecimento para obter vantagem própria, ele a utiliza para investigar, analisar e reportar vulnerabilidades para a empresa para qual trabalha ou presta serviços, evitando assim ataques e incidentes de segurança.

`"A filosofia por trás do Hacker Ético é tentar capturar o ladrão, pensando como um ladrão"`

<aside>
❓ Um teste de intrusão deve ser autorizado pela empresa.

</aside>

# Etapas de um ataque

1. Coleta de informações: toda e qualquer informação sobre a empresa a ser atacada é indispensável, como o ramo de atuação, se existem filiais ou empresas coligadas, endereços de e-mails, nomes dos principais cargos, etc. Com esses dados é possível descobrir se a empresa utiliza [VPN](https://pt.wikipedia.org/wiki/VPN) (Virtual Private Network) e coletar endereços dos servidores [DNS](https://pt.wikipedia.org/wiki/DNS) (Domain Name Service) dentre outras informações.
2. Mapeamento de rede: através do DNS é possível descobrir a topologia da rede, IP e a quantidade de computadores na rede interna.
3. Enumeração de serviços: depois de conhecer as maquinas da rede, essa etapa consiste em descobrir os serviços que estão sendo executados em uma determinada porta utilizando programas de escaneamento (`nmap` por exemplo). Na porta 80 por exemplo, a conexão é com o servidor web.
4. Busca de vulnerabilidades: fase em que o software é examinado com intuito de encontrar alguma vulnerabilidade e se é explorável.
5. Exploração das vulnerabilidades: após a busca das vulnerabilidades, é realizado a invasão ao software, podendo interromper ou comprometer o serviço. 
6. Implantação de [backdoors](https://pt.wikipedia.org/wiki/Backdoor) e [rootkits](https://pt.wikipedia.org/wiki/Rootkit): o invasor deixa instalado um programa que facilita o seu retorno ao software. Esses tipos de programas são chamados de *backdoors* (“portas dos fundos”) e *rootkits* (programas que se mantêm no núcleo do sistema operacional, difíceis de serem localizados).
7. Eliminação de vestígios: as invasões são registradas através do histórico (logs) ou de arquivos temporários. Para apagar os rastros o invasor terá que apagar esses registros, podendo tornar impossível ser identificado.

![Untitled/Recursos/Segurança da informação/Preparando o terreno/Untitled 1.png)

> *Não existe uma forma correta de se definir esses estágios. Existem vários modelos que são aceitos.*
> 

# Tipos de testes de intrusão

![Untitled/Recursos/Segurança da informação/Preparando o terreno/Untitled 2.png)

# Metodologias de testes de intrusão

Não existe uma única forma de realizar um teste de intrusão que se aplique a todos os casos.

Dependendo do objetivo do teste, existem alguns `métodos` que podem ser utilizados.

<aside>
❓ Metodologia são os passos (checklist) realizados pelo profissional (pentester) para realizar um teste de intrusão.

</aside>

Os passos para se realizar um teste em uma rede é diferente dos passos para analisar uma aplicação WEB.

Apesar de existirem alguns métodos, existe um padrão que geralmente é seguido:

| Stage | Description |
| --- | --- |
| Information Gathering | This stage involves collecting as much publically accessible information about a target/organisation as possible, for example, OSINT and research.
**Note:** This does not involve scanning any systems. |
| Enumeration/Scanning | This stage involves discovering applications and services running on the systems. For example, finding a web server that may be potentially vulnerable. |
| Exploitation | This stage involves leveraging vulnerabilities discovered on a system or application. This stage can involve the use of public exploits or exploiting application logic. |
| Privilege Escalation | Once you have successfully exploited a system or application (known as a foothold), this stage is the attempt to expand your access to a system. You can escalate horizontally and vertically, where horizontally is accessing another account of the same permission group (i.e. another user), whereas vertically is that of another permission group (i.e. an administrator). |
| Post-exploitation | This stage involves a few sub-stages:
**1.** What other hosts can be targeted (pivoting)
**2.** What additional information can we gather from the host now that we are a privileged user
**3.**  Covering your tracks
**4.** Reporting |

# As principais metodologias são:

# **Teste de Intrusão:** **PTES – Penetration Testing Execution Standard**

O padrão de execução PTES consiste em sete (7) seções principais. Eles abrangem tudo relacionado a um pentest – desde a comunicação inicial e o raciocínio por trás de um teste, até as fases de coleta de inteligência e modelagem de ameaças, nas quais os testadores estão trabalhando nos bastidores para entender melhor a organização testada, através da pesquisa de vulnerabilidades, exploração e pós-exploração, onde os conhecimentos técnicos de segurança dos testadores passam a ser combinados com o entendimento comercial do trabalho e, finalmente, com os relatórios, que capturam todo o processo, de uma maneira que faça sentido para o cliente.

![Untitled/Recursos/Segurança da informação/Preparando o terreno/Untitled 3.png)

Mais informações: [http://www.pentest-standard.org/index.php/Main_Page](http://www.pentest-standard.org/index.php/Main_Page)

---

# **Teste de Intrusão: OSSTMM – Open Source Security Testing Methodology Manual**

O Manual de Metodologia de Teste de Segurança de Código Aberto (OSSTMM) é revisado por pares e mantido pelo Instituto de Segurança e Metodologias Abertas (ISECOM).

Foi desenvolvido principalmente como uma metodologia de auditoria de segurança, avaliando os requisitos regulamentares e do setor. Não é para ser usado como uma metodologia autônoma, mas para servir como base para o desenvolvimento de uma metodologia adaptada às regulamentações e estruturas necessárias.

![Untitled/Recursos/Segurança da informação/Preparando o terreno/Untitled 4.png)

Mais informações: [https://www.isecom.org/OSSTMM.3.pdf](https://www.isecom.org/OSSTMM.3.pdf)

---

# **Teste de Intrusão WEB:** **OWASP top 10 – Open Web Application Security Project**

OWASP é uma comunidade online que produz artigos, metodologias, documentação, ferramentas e tecnologias no campo da segurança de aplicativos web.

OWASP Top 10 é a lista das 10 vulnerabilidades de aplicativos mais vistas. Também mostra seus riscos, impactos e contramedidas. Atualizada a cada três ou quatro anos, a versão mais recente foi atualizada em 2017

![Untitled/Recursos/Segurança da informação/Preparando o terreno/Untitled 5.png)

Mais informações: [https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project](https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project)

---

# **Teste de Intrusão WEB:** **NIST 800-115 – National Institute of Standards and Technology**

Desenvolvido pelo National Institute of Standards and Technology dos EUA, este guia envolve aspectos técnicos da realização de pentest. Apresentando recomendações práticas e procedimentos para execução de análise de vulnerabilidades em aplicações e redes, auditoria de conformidade, entre outros serviços. É utilizado como referência para ações preventivas de segurança, permitindo a identificação e a mitigação de vulnerabilidades

![Untitled/Recursos/Segurança da informação/Preparando o terreno/Untitled 6.png)

Mais informações: [https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-115.pdf](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-115.pdf)

# NCSC CAF

The [Cyber Assessment Framework](https://www.ncsc.gov.uk/collection/caf/caf-principles-and-guidance) (CAF) is an extensive framework of fourteen principles used to assess the risk of various cyber threats and an organisation's defences against these.

The framework applies to organisations considered to perform "vitally important services and activities" such as critical infrastructure, banking, and the likes. The framework mainly focuses on and assesses the following topics:

- Data security
- System security
- Identity and access control
- Resiliency
- Monitoring
- Response and recovery planning

![Untitled/Recursos/Segurança da informação/Preparando o terreno/Untitled 7.png)

# Ambiente de hacking e estudo

<aside>
❓ Testar hacking em sistemas na internet sem autorização prévia é crime?

Sim

</aside>

Ambiente do atacante

- Proteja seu sistema operacional.
    - Não instale softwares de sites não oficiais
    - Tenha um antivírus
    - Use pendrive o mínimo possível
    - Não clique em links enviados por email, whatsapp ou redes sociais sem antes analisar
- Tenha um sistema separado para estudo de hacking (pode ser máquina virtual. Kali por exemplo)
- Tenha cuidado para não expor sua identidade e de seus equipamentos. Aprenda sobre Tor e técnicas de anonimato
- Além de usar máquinas virtuais também é possível utilizar máquinas na nuvem chamadas de VPS (porém tem um pequeno custo financeiro…)

Aplicações, plataformas e alvos para hackear (que são permitidos.. não sendo crime)

- Você pode virtualizar localmente sistemas como windows, linux, android e iOS
- Existe um sistema linux próprio para aprendizagem de hacking chamado Metasploitable2
- [https://www.vulnhub.com/](https://www.vulnhub.com/)
    - É um site com várias máquinas virtuais e desafios para você cumprir. É possível você criar e enviar sua própria máquina
- [https://tryhackme.com/](https://tryhackme.com/)
    - É uma plataforma gamificada ótimo para iniciantes. Possui desafios online desde o básico ao avançado.
- [https://picoctf.org/](https://picoctf.org/)

Empresas que te pagam para encontrar vulnerabilidades

<aside>
❓ **Bug bounty** são programas de recompensas criadas por empresas com o intuito de pagar pessoas que descobrem vulnerabilidades em seus sistemas

</aside>

Existem plataformas que reúnem hackers com empresas que possuem programas de Bug bounty

Uma delas é a Hacker One

Um ótimo vídeo sobre como montar um ambiente de estudo

[Como Estudar Hacking e Pentest - Montando um ambiente de estudo](https://www.youtube.com/watch?v=syXuqAKZfA0)

# Checklist de um teste de intrusão

1. Definir um alvo
2. Escolher metodologia e modelo de relatório
3. Usar ferramentas de anonimato
4. Executar etapas de coleta e mapeamento (no alvo escolhido)
5. Clonar o alvo em máquina virtual
6. Executar etapas de exploração e pós exploração (na máquina virtual)
7. Elaborar relatório e apresentação