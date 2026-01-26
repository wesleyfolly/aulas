# Computação em nuvem

> [!TIP]
> Computação em nuvem (Cloud computing) é o fornecimento de serviços de computação como software, servidores, banco de dados, redes, tudo na **nuvem**.

[[Glossário de computação em nuvem]]

![](../../Recursos/Redes de Computadores/Endereçamento IPv6/Untitled.png)

# **Principais benefícios da computação em nuvem**

> [!TIP]
> **Custo**

A computação em nuvem elimina o gasto de capital com a compra de hardware e software, configuração e execução de datacenters locais, incluindo racks de servidores, disponibilidade constante de eletricidade para energia e refrigeração, além de especialistas de TI para o gerenciamento da infraestrutura. Tudo isso contribui para o alto custo da computação.

> [!TIP]
> **Velocidade**

A maior parte dos serviços de computação em nuvem é fornecida por autosserviço e sob demanda, para que até grandes quantidades de recursos de computação possam ser provisionadas em minutos, normalmente com apenas alguns cliques, fornecendo às empresas muita flexibilidade e aliviando a pressão do planejamento de capacidade.

> [!TIP]
> **Escala global**

> [!TIP]
> **Produtividade**

Os benefícios dos serviços de computação em nuvem incluem a capacidade de dimensionamento elástico. Em termos de nuvem, isso significa fornecer a quantidade adequada de recursos de TI (assim como potência de computação maior ou menor, armazenamento e largura de banda) sempre que necessário e na localização geográfica correta.

Datacenters locais normalmente exigem pilhas de equipamentos e implementações, tais como configuração de hardware, correção de software e outras tarefas demoradas de gerenciamento da TI. A computação em nuvem remove a necessidade de muitas destas tarefas, para que as equipes de TI possam investir seu tempo na obtenção de suas metas comerciais mais importantes.

> [!TIP]
> **Desempenho**

> [!TIP]
> **Confiabilidade**

Os maiores serviços de computação em nuvem são executados em uma rede mundial de datacenters seguros, que são atualizados regularmente com a mais recente geração de hardware de computação rápido e eficiente. Isso oferece diversos benefícios em um único datacenter corporativo, incluindo latência de rede reduzida para aplicativos e mais economia de escalonamento.

A computação em nuvem facilita e reduz os custos de backup de dados, recuperação de desastre e continuidade dos negócios, já que os dados podem ser espelhados em diversos sites redundantes na rede do provedor em nuvem.

> [!TIP]
> **Segurança**

Muitos provedores em nuvem oferecem um amplo conjunto de políticas, tecnologias e controles que fortalecem sua postura geral de segurança, ajudando a proteger os dados, os aplicativos e a infraestrutura contra possíveis ameaças.

---

# **Tipos de computação em nuvem**

Há três maneiras diferentes de implantar serviços de nuvem: em uma nuvem pública, nuvem privada ou nuvem híbrida. 

![](../../Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 1.png)

☁️ **Nuvem pública**

As nuvens públicas pertencem a um [provedor de serviço de nuvem](https://azure.microsoft.com/pt-br/overview/choosing-a-cloud-service-provider/) terceirizado e são administradas por ele, que fornece recursos de computação (tais como servidores e armazenamento) pela Internet. O Microsoft Azure é um exemplo de nuvem pública. Com uma nuvem pública, todo o hardware, software e outras infraestruturas de suporte são de propriedade e gerenciadas pelo provedor de nuvem. Você acessa esses serviços e gerencia sua conta usando um navegador da Web. [Saiba mais sobre a nuvem pública](https://azure.microsoft.com/pt-br/overview/what-is-a-public-cloud/).

☁️ **Nuvem privada**

Uma nuvem privada se refere aos recursos de computação em nuvem usados exclusivamente por uma única empresa ou organização. Uma nuvem privada pode estar localizada fisicamente no datacenter local da empresa. Algumas empresas também pagam provedores de serviços terceirizados para hospedar sua nuvem privada. Uma nuvem privada é aquela em que os serviços e a infraestrutura são mantidos em uma rede privada. [Saiba mais sobre a nuvem privada](https://azure.microsoft.com/pt-br/overview/what-is-a-private-cloud/).

☁️ **Nuvem híbrida**

Nuvens híbridas combinam nuvens públicas e privadas ligadas por uma tecnologia que permite que dados e aplicativos sejam compartilhados entre elas. Permitindo que os dados e os aplicativos se movam entre nuvens privadas e públicas, uma nuvem híbrida oferece à sua empresa maior flexibilidade, mais opções de implantação e ajuda a otimizar sua infraestrutura, segurança e conformidade existentes. [Saiba mais sobre a nuvem híbrida](https://azure.microsoft.com/pt-br/overview/what-is-hybrid-cloud-computing/).

# **Tipos de serviços de nuvem: IaaS, PaaS, sem servidor e SaaS**

A maioria dos serviços de computação em nuvem se enquadra em quatro categorias amplas: IaaS (infraestrutura como serviço), PaaS (plataforma como serviço), sem servidor e SaaS (software como serviço). Às vezes, eles são chamados de "pilha" de computação em nuvem, pois são criados uns sobre os outros. 

![](../../Recursos/Redes de Computadores/Modelos OSI e TCP IP/Untitled 2.png)

- **IaaS (infraestrutura como serviço) [Saiba mais sobre o IaaS](https://azure.microsoft.com/pt-br/overview/what-is-iaas/)**
    
    A categoria mais básica de serviços de computação em nuvem. Com a IaaS, você aluga a infraestrutura de TI, (que inclui servidores e máquinas virtuais, armazenamento (VMs), redes e sistemas operacionais), de um provedor de nuvem, com pagamento conforme o uso.
    
- **PaaS (plataforma como serviço) [Saiba mais sobre o PaaS](https://azure.microsoft.com/pt-br/overview/what-is-paas/)**
    
    A plataforma como serviço refere-se aos serviços de computação em nuvem que fornecem um ambiente sob demanda para desenvolvimento, teste, fornecimento e gerenciamento de aplicativos de software. O PaaS foi criado para facilitar aos desenvolvedores criarem aplicativos móveis ou Web rapidamente, sem se preocupar com a configuração ou o gerenciamento de infraestrutura subjacente de servidores, armazenamento, rede e bancos de dados necessários para desenvolvimento.
    
- **Computação sem servidor [Saiba mais sobre a computação sem servidor](https://azure.microsoft.com/pt-br/overview/serverless-computing/)**
    
    Sobrepondo-se ao PaaS, a computação sem servidor concentra-se na criação da funcionalidade de aplicativos, sem perder tempo com o gerenciamento contínuo dos servidores e da infraestrutura necessários para isso. O provedor em nuvem cuida da configuração, do planejamento de capacidade e do gerenciamento de servidores para você. As arquiteturas sem servidor são altamente escalonáveis e controladas por eventos, usando recursos apenas quando ocorre uma função ou um evento que desencadeie esse uso.
    
- **SaaS (software como serviço) [Saiba mais sobre o SaaS](https://azure.microsoft.com/pt-br/overview/what-is-saas/)**
    
    O software como serviço é um método para a distribuição de aplicativos de software pela Internet sob demanda e, normalmente, baseado em assinaturas. Com o SaaS, os provedores de nuvem hospedam e gerenciam o aplicativo de software e a infraestrutura subjacente e fazem manutenções, como atualizações de software e aplicação de patch de segurança. Os usuários conectam o aplicativo pela Internet, normalmente com um navegador da Web em seu telefone, tablet ou PC.
    

[**Dicionário de termos comuns de computação em nuvem**](https://azure.microsoft.com/pt-br/overview/cloud-computing-dictionary/)

# **Usos da computação em nuvem**

Veja alguns exemplos do que é possível fazer hoje com os serviços de nuvem por meio de um provedor em nuvem:

- **Crie aplicativos nativos da nuvem**
    
    Crie, implante e dimensione aplicativos móveis, Web e APIs rapidamente. Aproveite as tecnologias e abordagens [nativas da nuvem](https://azure.microsoft.com/pt-br/overview/cloudnative/), como contêineres, [Kubernetes](https://azure.microsoft.com/pt-br/topic/what-is-kubernetes/), arquitetura de microsserviços, comunicação controlada por API e DevOps.
    
- **Testar e criar aplicativos**
    
    Reduza o custo e o tempo de desenvolvimento de aplicativos usando infraestruturas de nuvem que podem ser ampliadas ou reduzidas com facilidade.
    
- **Armazenar, fazer backup e recuperar dados**
    
    Proteja seus dados de maneira mais econômica – e em grande escala – transferindo-os pela Internet para um sistema de armazenamento em nuvem externo acessível em qualquer local e dispositivo.
    
- **Analisar os dados**
    
    Unifique seus dados entre equipes, divisões e locais na nuvem. Em seguida, use serviços de nuvem, como aprendizado de máquina e inteligência artificial, para descobrir insights e tomar decisões mais informadas.
    
- **Transmitir áudio e vídeo**
    
    Conecte-se ao seu público-alvo em qualquer lugar, a qualquer hora, em qualquer dispositivo com vídeo e áudio de alta definição com distribuição global.
    
- **Inserir inteligência**
    
    Use modelos inteligentes para ajudar a envolver os clientes e fornecer insights importantes com base nos dados capturados.
    
- **Fornecer software sob demanda**
    
    Também conhecido como SaaS (software como serviço), o software sob demanda permite que você ofereça as últimas versões de software e atualizações para os clientes – sempre que precisarem, onde quer que estejam.
    

> *O conteúdo acima foi retirado do site abaixo:*
> 

[O que é Computação em Nuvem? Um Guia para Iniciantes | Microsoft Azure](https://azure.microsoft.com/pt-br/overview/what-is-cloud-computing/)

---

# Principais players do mercado de nuvem

Amazom Web Services

[Amazon Web Services (AWS) − Serviços de computação em nuvem](https://aws.amazon.com/pt/)

Google cloud

[Cloud Computing Services | Google Cloud](https://cloud.google.com/)

Microsoft Azure

[Serviços de Computação em Nuvem | Microsoft Azure](https://azure.microsoft.com/pt-br/)

IBM cloud

[Cloud Computing - IBM Cloud Brasil](https://www.ibm.com/br-pt/cloud)

Oracle cloud

[Migração para a Nuvem Simplificada](https://www.oracle.com/br/cloud/)