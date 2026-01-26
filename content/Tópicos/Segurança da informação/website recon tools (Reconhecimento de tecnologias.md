---
tipo: aula
resumo: "Ferramentas para identificar tecnologias utilizadas em websites: servidores web, frameworks, linguagens e CMS."
tags:
  - aula
  - seguranca-da-informacao
  - recon
  - fingerprinting
  - osint
---

# Website Recon Tools (Reconhecimento de Tecnologias Web)

> [!quote] Conhecendo o Alvo
> *Identificar as tecnologias de um site é o primeiro passo para entender sua superfície de ataque.*

---

## 🎯 O que é?

> [!info] Technology Fingerprinting
> São ferramentas de reconhecimento que identificam as tecnologias utilizadas em websites, incluindo servidor web, frameworks, linguagens de programação, CMS, bibliotecas JavaScript e muito mais.

### Por que é Importante?

| Motivo | Descrição |
|--------|-----------|
| **Vulnerabilidades conhecidas** | Cada tecnologia tem suas CVEs específicas |
| **Vetores de ataque** | Diferentes stacks requerem diferentes abordagens |
| **Configurações padrão** | Muitos sistemas mantêm configurações inseguras |
| **Versões desatualizadas** | Identificar versões antigas com falhas conhecidas |

---

## 🛠️ Ferramentas Online

> [!success] Principais Recursos

| Ferramenta | URL | Descrição |
|------------|-----|-----------|
| **Pentest-Tools** | [pentest-tools.com](https://pentest-tools.com/information-gathering/website-reconnaissance-discover-web-application-technologies) | Scanner completo de tecnologias web |
| **Netcraft** | [netcraft.com](https://www.netcraft.com/) | Histórico de tecnologias e análise de sites |
| **BuiltWith** | [builtwith.com](https://builtwith.com/) | Perfil tecnológico detalhado |
| **Wappalyzer** | [wappalyzer.com](https://www.wappalyzer.com/) | Extensão de browser + API |
| **WhatRuns** | [whatruns.com](https://www.whatruns.com/) | Extensão de browser gratuita |

---

## 💻 Ferramentas de Linha de Comando

> [!tip] Para Uso em Terminal

| Ferramenta | Comando | Descrição |
|------------|---------|-----------|
| **WhatWeb** | `whatweb exemplo.com` | Scanner de fingerprinting |
| **Wappalyzer CLI** | `wappalyzer https://exemplo.com` | Versão CLI do Wappalyzer |
| **httpx** | `httpx -tech-detect -u exemplo.com` | Detecção de tecnologias |

### Exemplo com WhatWeb

```bash
# Scan básico
whatweb https://exemplo.com

# Scan agressivo com mais detalhes
whatweb -a 3 https://exemplo.com

# Salvar output em arquivo
whatweb https://exemplo.com -o resultado.txt
```

---

## 📊 O que é Detectado?

> [!info] Categorias de Tecnologias

| Categoria | Exemplos |
|-----------|----------|
| **Servidor Web** | Apache, Nginx, IIS |
| **Linguagem** | PHP, Python, ASP.NET, Node.js |
| **Framework** | Laravel, Django, React, Angular |
| **CMS** | WordPress, Joomla, Drupal |
| **E-commerce** | Magento, WooCommerce, Shopify |
| **CDN** | Cloudflare, Akamai, Fastly |
| **Analytics** | Google Analytics, Hotjar |
| **Segurança** | WAF, reCAPTCHA |

---

## 🔍 Uso em Pentests

> [!warning] Metodologia

1. **Identificar tecnologias** — Usar múltiplas ferramentas para confirmar
2. **Pesquisar versões** — Verificar se há versões específicas detectadas
3. **Buscar CVEs** — Procurar vulnerabilidades conhecidas
4. **Verificar configurações** — Identificar configurações padrão inseguras
5. **Documentar** — Registrar todas as descobertas no relatório

