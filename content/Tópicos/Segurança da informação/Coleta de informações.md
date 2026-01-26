---
tipo: aula
resumo: "Técnicas e ferramentas de coleta de informações (OSINT) para a fase de reconhecimento em testes de intrusão."
tags:
  - aula
  - seguranca-da-informacao
  - osint
  - reconhecimento
---

# Coleta de Informações

> [!quote] A primeira etapa
> *É a primeira etapa de um teste de intrusão ou invasão. Quanto mais informações, maior a chance de sucesso.*

> [!info] Termos Relacionados
> **Footprinting**, **Fingerprinting** e **Reconnaissance** são termos usados para descrever essa fase.

---

## 🔍 O que é Coleta de Informações?

Footprinting e Fingerprinting são a arte de coletar e utilizar informações para detectar e entender características do seu alvo.

Para facilitar, podemos dividir essas informações em **técnicas** e **não técnicas**.

---

## 📋 Tipos de Informações

### 🏢 Não Técnicas (Footprinting)

> [!tip] Informações Organizacionais
> Dados sobre a empresa e pessoas que podem ser úteis para o ataque.

- Ramo da empresa
- Site e domínios
- Endereços físicos
- Funcionários e cargos
- E-mails corporativos
- Documentos encontrados no Google
- Notícias relacionadas à empresa
- Projetos e parcerias

### 💻 Técnicas (Fingerprinting)

> [!info] Informações de Infraestrutura
> Dados técnicos sobre sistemas e tecnologias utilizadas.

- Programas (serviços) e versões
- Protocolos de rede
- Sistemas operacionais e versões
- Dispositivos de hardware
- Bancos de dados
- Range de IPs
- Usuários do sistema

---

## 🛠️ Ferramentas

> [!warning] Passiva vs Ativa
> A coleta **passiva** usa informações públicas sem interagir diretamente com o alvo. A **ativa** interage com o alvo e pode deixar rastros.

### 🔇 Ferramentas Passivas

> [!tip] Baixo Risco de Detecção
> Estas ferramentas coletam informações sem tocar diretamente nos sistemas do alvo.

- [[Google hacking]] — Dorks para encontrar informações expostas
- [[whois]] — Informações de registro de domínios
- [[website recon tools (Reconhecimento de tecnologias|Reconhecimento de tecnologias web)]] — Identificar stack tecnológico
- [[recon-ng]] — Framework de reconhecimento
- [[shodan]] — Motor de busca para dispositivos conectados
- [[censys]] — Similar ao Shodan
- [[Email harvesting]] — Coleta de e-mails corporativos
- [[open-Source code analysis|Análise de código open-source]]* — Repositórios públicos
- [[social media tools|Ferramentas de redes sociais]]*  — OSINT em mídias sociais
- [[Information Gathering Frameworks (OSINT)|Frameworks de OSINT]]*

> [!note] Nota
> *Itens com asterisco não são obrigatórios no trabalho.

---

### 🔊 Ferramentas Ativas

> [!warning] Atenção
> Antes de usar ferramentas ativas, estude sobre [[Anonimato e privacidade|anonimato e privacidade]].

![[Recursos/Segurança da informação/Coleta de informações/coleta-de-informacoes.png|Recapitulação de conceitos de rede]]

- [[Escaneamento de IPs e portas (Port Scanning)]] — Descobrir serviços ativos
- [[DNS Enumeration (Enumeração de DNS)]] — Mapear subdomínios
- [[Outras enumerações (não precisa fazer)|Outras enumerações]] — SMB, SNMP, etc.
- [[Ferramentas ativas de aplicações Web (não precisa|Ferramentas ativas de aplicações Web]]

---

## 🌐 Buscas Manuais em Aplicações Web

> [!info] Content Discovery
> Existem várias formas de obter informações sensíveis em um webserver. E isso pode levar a novas vulnerabilidades.

**Arquivos comuns a verificar:**
- `/robots.txt` — Diretórios "escondidos"
- `/sitemap.xml` — Estrutura do site
- `/.git/` — Repositório exposto
- `/backup/` — Arquivos de backup
- `/admin/` — Painéis administrativos
