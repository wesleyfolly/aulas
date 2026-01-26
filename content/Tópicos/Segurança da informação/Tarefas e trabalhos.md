---
tipo: avaliacao
resumo: "Banco de tarefas e trabalhos práticos da disciplina de Segurança da Informação, incluindo descrições detalhadas e critérios de avaliação."
tags:
  - avaliacao
  - seguranca-da-informacao
  - trabalhos
  - tarefas
---

# Tarefas e Trabalhos

> [!quote] Aprendizado Prático
> *Não é necessário realizar todas as tarefas abaixo, somente as que forem solicitadas pelo professor.*

---

## 📝 Exercícios da Apostila

> [!info] Apostila de Segurança da Informação (E-tec Brasil)

| Tarefa | Conteúdo | Pontuação |
|--------|----------|-----------|
| **Parte 1** | Exercícios do capítulo 1 ao 4 | 0,5 ponto |
| **Parte 2** | Exercícios do capítulo 5 ao 8 | 0,5 ponto |

---

## 🌐 Reconhecimento da Rede Local

> [!tip] Mapeamento da Rede Doméstica

![[Recursos/Segurança da informação/Tarefas e trabalhos/tarefas-e-trabalhos.png|Segurança da Informação]]

### Objetivo
Criar um arquivo de texto (com capa e conteúdo) descrevendo a sua rede doméstica.

### Requisitos

| Item | Descrição |
|------|-----------|
| **Dispositivos** | Quantidade total de dispositivos na rede |
| **Configuração de cada dispositivo** | IP, máscara, Gateway e DNS |
| **Roteadores** | IP da interface interna e externa |
| **Evidências** | Prints de tela das configurações |

> [!warning] Nota sobre Privacidade
> As informações são confidenciais e servem somente para aprendizagem. Servirão para configurar acessos a máquinas virtuais e servidores.

---

## 📡 Reconhecimento de Redes Wi-Fi

> [!info] Mapeamento de Redes Sem Fio

### Objetivo
Elaborar uma **tabela** com todas as redes Wi-Fi captadas.

### Campos Obrigatórios

| Campo | Descrição |
|-------|-----------|
| **BSSID** | MAC do roteador |
| **Nome da rede** | SSID |
| **Criptografia** | WEP, WPA, WPA2, WPA3 |
| **WPS** | Se o protocolo está ativado |
| **Sinal** | Nível de sinal (dBm) |

> [!tip] Ferramentas
> Use as ferramentas demonstradas em aula ou escolha outras que obtenham os dados listados.

---

## 📊 Análise de Mercado em Segurança

> [!success] Pesquisa de Conhecimentos Necessários

### Estrutura da Pesquisa

| Área | Fonte |
|------|-------|
| Concursos - TI Geral | Editais (municipal, estadual, federal) |
| Concursos - Área Específica | Editais de vagas de segurança |
| Empresas - TI Geral | Vagas no LinkedIn |
| Empresas - Área Específica | Vagas de segurança no LinkedIn |

### Recursos

| Site | URL |
|------|-----|
| **PCI Concursos** | [pciconcursos.com.br](https://www.pciconcursos.com.br/) |
| **QConcursos** | [qconcursos.com](https://www.qconcursos.com/) |

### Exemplo de Conteúdo (Concurso Estadual)

> [!info] Auditor Fiscal de TI - Receita Estadual

**Tópicos cobrados:**
1. Confiabilidade, integridade e disponibilidade
2. Mecanismos de segurança (criptografia, assinatura digital, certificação)
3. Gerência de riscos (ameaça, vulnerabilidade, impacto)
4. Políticas de segurança (ISO 27001/27002, NBR 15408)
5. Autenticação de dois fatores (MFA)
6. OAuth2, JWT, SSO e SAML
7. OWASP Top 10
8. Segurança de aplicações web

### Exemplo de Vaga (LinkedIn)

> [!tip] Vaga Específica de Segurança

**Responsabilidades:** Investigar violações, análise de riscos

**Conhecimentos:**
- Redes de computadores
- Windows e Linux
- Shell Script, PowerShell, Python
- Frameworks: NIST CSF, ISO 27001/2/5, IEC 62443, COBIT5

---

## 🐳 Trabalho: Laboratório Docker

> [!warning] Trabalho Prático

### Objetivo
Montar um laboratório Docker completo para segurança com:
- **Juice Shop** — Aplicação vulnerável
- **Kali Linux** — Ambiente atacante
- **Metasploit** — Framework de exploração

### Parte Teórica

Estudar [[Docker - gerenciamento de containers]] e explicar:
1. O que é um container
2. Images × Containers
3. Docker Compose
4. Redes Docker
5. Por que Docker é ideal para laboratórios de segurança

### Parte Prática

| Tarefa | Descrição |
|--------|-----------|
| **docker-compose.yml** | Três containers na rede isolada |
| **Rede labnet** | Rede Docker isolada |
| **provision.sh** | Script para subir o laboratório |
| **reset.sh** | Script para derrubar e limpar |

### Entrega

| Item | Descrição |
|------|-----------|
| Repositório GitHub | Com todos os arquivos |
| README.md | Instruções de setup |
| .env.example | Variáveis de ambiente |
| Prints | Ambiente funcionando |

> [!danger] Segurança
> - Não publicar portas na internet
> - Usar apenas localhost ou rede interna
> - Manter firewall ativo
> - Não subir em nuvem ou produção

---

## 🔐 Trabalho: VPN

> [!info] Arquitetura e Implementação

### Objetivos
- Compreender túneis, criptografia e autenticação
- Comparar VPN tradicional vs mesh
- Implementar OpenVPN ou WireGuard
- Analisar riscos e benefícios

### Parte Teórica

| Tópico | Conteúdo |
|--------|----------|
| **O que é VPN** | Túnel criptografado, modelos (site-to-site, remote-access, mesh) |
| **Propriedades** | Confidencialidade, integridade, autenticação, PFS |
| **Protocolos** | OpenVPN, WireGuard, IPSec, SSTP, L2TP |
| **Riscos** | Vazamento DNS, split-tunneling, falsa segurança |

### Parte Prática

1. Criar duas máquinas (VM, PC, smartphone)
2. Instalar WireGuard **ou** OpenVPN
3. Validar túnel com Wireshark
4. Documentar configuração e topologia

### Entrega
- Apresentação oral
- Relatório em PDF

---

## 🌐 Trabalho: Tailscale

> [!tip] VPN Mesh Moderna

### Objetivo
Implementar rede privada com Tailscale em pelo menos 3 dispositivos.

### Referência
[How Tailscale Works](https://tailscale.com/blog/how-tailscale-works)

### Atividades

| Etapa | Descrição |
|-------|-----------|
| **1** | Instalar em 3+ dispositivos |
| **2** | Verificar data plane (WireGuard) |
| **3** | Verificar control plane (coordenação) |
| **4** | Testar comunicação e NAT traversal |
| **5** | Configurar ACLs e políticas |
| **6** | Documentar com diagrama e prints |

### Entrega
- Apresentação oral
- Relatório em PDF

---

## 🕸️ Trabalho: Web Scraping Seguro

> [!warning] Automação com Proxies

### Objetivos
1. Entender detecção de scraping
2. Boas práticas de scraping seguro
3. Uso ético de proxies
4. Criar scraper para QAcadêmico

### Parte Teórica

| Tópico | Conteúdo |
|--------|----------|
| **Detecção** | User-agent, rate-limit, WAF, CAPTCHA |
| **Boas práticas** | Delays, backoff, tratamento de erros |
| **Proxies** | Rotação de IP, limites éticos |
| **Compliance** | LGPD, credenciais, privacidade |

### Parte Prática

Criar script que:
- Autentique no QAcadêmico
- Extraia notas das disciplinas
- Gere tabela CSV/Markdown
- Execute 1x por dia (cron)

### Requisitos Técnicos

| Item | Descrição |
|------|-----------|
| **Linguagem** | Python + Playwright/Requests |
| **.env** | Credenciais não commitadas |
| **Delays** | time.sleep() aleatório |
| **Tratamento** | Retry com backoff |

### Entrega

| Item | Descrição |
|------|-----------|
| Repositório Git | Código + requirements.txt |
| .env.example | Template sem credenciais |
| README.md | Instruções completas |
| Relatório | PDF com teoria e análise |

> [!danger] Ética e Segurança
> - Usar apenas sua própria conta
> - Não compartilhar credenciais
> - Máximo 1 execução por dia
> - Respeitar LGPD e normas da instituição

