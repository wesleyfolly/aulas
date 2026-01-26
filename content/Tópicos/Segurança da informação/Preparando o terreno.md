---
tipo: aula
resumo: "Introdução a testes de intrusão: conceitos, etapas, metodologias e ambiente de estudo para hacking ético."
tags:
  - aula
  - seguranca-da-informacao
  - pentest
  - metodologias
  - ethical-hacking
---

# Preparando o Terreno

> [!quote] Antes de Hackear, Entenda o Processo
> *Um teste de intrusão bem-sucedido começa com planejamento, metodologia e um ambiente controlado.*

---

## 🎯 O que é um Teste de Intrusão?

> [!info] Definição
> É um método que avalia a segurança de um sistema ou rede, **simulando um ataque** de uma fonte maliciosa.

O processo envolve análise das atividades do sistema, buscando **vulnerabilidades** que podem resultar de:
- Má configuração do sistema
- Falhas em hardware/software desconhecidas
- Deficiências no sistema operacional
- Falhas nas técnicas de defesa

![[Recursos/Segurança da informação/Preparando o terreno/preparando-o-terreno.png|Processo de pentest]]

> [!success] Resultado
> O teste de intrusão gera um **relatório** com todas as análises, vulnerabilidades e, muitas vezes, a **solução técnica** para os problemas encontrados.

---

## 👨‍💻 O que é um Ethical Hacker?

> [!tip] Hacker Ético
> É um profissional de TI que trabalha na área de Segurança da Informação, com a função de encontrar vulnerabilidades **antes** que hackers maliciosos as explorem.

Este profissional precisa ter conhecimentos **iguais ou superiores** a um hacker com intenção maliciosa, mas utiliza esse conhecimento para:
- Investigar sistemas
- Analisar vulnerabilidades
- Reportar problemas
- Evitar incidentes de segurança

> [!quote] Filosofia
> *"A filosofia por trás do Hacker Ético é tentar capturar o ladrão, pensando como um ladrão."*

> [!warning] Autorização é Obrigatória
> Um teste de intrusão **deve ser autorizado** pela empresa. Testar sistemas sem permissão é crime!

---

## 🔄 Etapas de um Ataque

> [!info] Metodologia Geral
> Não existe uma forma única de definir as etapas, mas este é um modelo amplamente aceito.

![[Recursos/Segurança da informação/Preparando o terreno/preparando-o-terreno-1.png|Etapas do ataque]]

| Etapa | Descrição |
|-------|-----------|
| **1. Coleta de Informações** | Ramo da empresa, e-mails, nomes, VPN, servidores DNS |
| **2. Mapeamento de Rede** | Descobrir topologia, IPs, quantidade de computadores |
| **3. Enumeração de Serviços** | Descobrir serviços e portas usando nmap |
| **4. Busca de Vulnerabilidades** | Examinar software em busca de falhas exploráveis |
| **5. Exploração** | Invadir o software, comprometer o serviço |
| **6. Implantação de Backdoors** | Deixar acesso para retorno futuro |
| **7. Eliminação de Vestígios** | Apagar logs e arquivos temporários |

---

## 🎨 Tipos de Testes de Intrusão

![[Recursos/Segurança da informação/Preparando o terreno/preparando-o-terreno-2.png|Tipos de pentest]]

| Tipo | Conhecimento do Pentester | Descrição |
|------|---------------------------|-----------|
| **Black Box** | Nenhum | Simula atacante externo sem informações prévias |
| **White Box** | Total | Acesso a código-fonte, documentação, credenciais |
| **Grey Box** | Parcial | Algumas informações, como credenciais de usuário comum |

---

## 📋 Metodologias de Testes de Intrusão

> [!tip] Por que usar metodologia?
> Não existe uma única forma de realizar um pentest. Dependendo do objetivo, existem métodos específicos.

> [!info] O que é Metodologia?
> São os **passos (checklist)** realizados pelo pentester para realizar um teste de intrusão de forma organizada.

### Padrão Geral

| Stage | Description |
|-------|-------------|
| **Information Gathering** | Coleta de informações públicas sobre o alvo (OSINT). Sem escanear sistemas. |
| **Enumeration/Scanning** | Descobrir aplicações e serviços rodando nos sistemas. |
| **Exploitation** | Explorar vulnerabilidades descobertas usando exploits. |
| **Privilege Escalation** | Expandir acesso: horizontal (outro usuário) ou vertical (admin). |
| **Post-exploitation** | Pivoting, coleta de informações adicionais, cobertura de rastros, relatório. |

---

### 📘 PTES — Penetration Testing Execution Standard

> [!info] 7 Seções Principais
> Abrange tudo relacionado a um pentest, desde comunicação inicial até relatórios.

![[Recursos/Segurança da informação/Preparando o terreno/preparando-o-terreno-3.png|PTES]]

**Mais informações:** [pentest-standard.org](http://www.pentest-standard.org/index.php/Main_Page)

---

### 📗 OSSTMM — Open Source Security Testing Methodology Manual

> [!info] Auditoria de Segurança
> Desenvolvida para avaliar requisitos regulamentares e do setor.

![[Recursos/Segurança da informação/Preparando o terreno/preparando-o-terreno-4.png|OSSTMM]]

**Mais informações:** [OSSTMM.3.pdf](https://www.isecom.org/OSSTMM.3.pdf)

---

### 📙 OWASP Top 10 — Teste de Intrusão Web

> [!warning] As 10 Vulnerabilidades Mais Comuns
> Lista das vulnerabilidades de aplicativos web mais vistas. Atualizada a cada 3-4 anos.

![[Recursos/Segurança da informação/Preparando o terreno/preparando-o-terreno-5.png|OWASP Top 10]]

**Mais informações:** [OWASP Top Ten Project](https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project)

---

### 📕 NIST 800-115 — National Institute of Standards and Technology

> [!info] Guia Técnico
> Recomendações práticas para execução de análise de vulnerabilidades em aplicações e redes.

![[Recursos/Segurança da informação/Preparando o terreno/preparando-o-terreno-6.png|NIST 800-115]]

**Mais informações:** [NIST SP 800-115 PDF](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-115.pdf)

---

### 📓 NCSC CAF — Cyber Assessment Framework

> [!info] Infraestrutura Crítica
> Framework de 14 princípios para organizações que realizam "serviços vitalmente importantes".

![[Recursos/Segurança da informação/Preparando o terreno/preparando-o-terreno-7.png|NCSC CAF]]

Foca em:
- Data security
- System security
- Identity and access control
- Resiliency
- Monitoring
- Response and recovery planning

---

## 🖥️ Ambiente de Hacking e Estudo

> [!danger] Atenção Legal
> Testar hacking em sistemas na internet **sem autorização prévia é crime!**

### 🛡️ Proteja seu Sistema Operacional

1. Não instale softwares de sites não oficiais
2. Tenha um antivírus
3. Use pendrive o mínimo possível
4. Não clique em links sem antes analisar

### 🔧 Configurando seu Lab

> [!tip] Recomendações

- **Sistema separado** para estudo (pode ser máquina virtual, como Kali Linux)
- **Cuidado com anonimato** — Aprenda sobre Tor e técnicas de privacidade
- **VPS na nuvem** — Alternativa a VMs locais (tem custo financeiro)

### 🎯 Alvos Legais para Praticar

| Plataforma | Descrição |
|------------|-----------|
| **Metasploitable2** | Sistema Linux vulnerável para aprendizado |
| [VulnHub](https://www.vulnhub.com/) | Máquinas virtuais com desafios |
| [TryHackMe](https://tryhackme.com/) | Plataforma gamificada para iniciantes |
| [PicoCTF](https://picoctf.org/) | CTFs para estudantes |

---

## 💰 Bug Bounty

> [!success] Ganhe Dinheiro Hackeando
> **Bug bounty** são programas de recompensas criadas por empresas para pagar pessoas que descobrem vulnerabilidades em seus sistemas.

Plataformas que conectam hackers a empresas:
- [HackerOne](https://www.hackerone.com/)
- [Bugcrowd](https://www.bugcrowd.com/)
- [Synack](https://www.synack.com/)

---

## 📺 Recurso Recomendado

[📺 Como Estudar Hacking e Pentest - Montando um ambiente de estudo](https://www.youtube.com/watch?v=syXuqAKZfA0)

---

## ✅ Checklist de um Teste de Intrusão

> [!tip] Passos Básicos

1. ☐ Definir um alvo
2. ☐ Escolher metodologia e modelo de relatório
3. ☐ Usar ferramentas de anonimato
4. ☐ Executar etapas de coleta e mapeamento (no alvo escolhido)
5. ☐ Clonar o alvo em máquina virtual
6. ☐ Executar etapas de exploração e pós-exploração (na máquina virtual)
7. ☐ Elaborar relatório e apresentação

