---
tipo: aula
resumo: "Checklist mestre para conduzir um teste de penetração, do planejamento à exploração."
tags:
  - aula
  - seguranca-da-informacao
  - pentest
  - checklist
  - metodologia
---

# Master Checklist

> [!quote] O Caminho do Pentester
> *Uma abordagem sistemática para testes de penetração garante que nenhuma etapa seja esquecida.*

---

## 🎯 Fluxo de Decisão

```
┌─────────────────────────────────────────────────────────────┐
│                    1. DEFINIR ALVO                          │
└─────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────┐
│         2. TIPO DE ATAQUE: INTERNO ou EXTERNO?              │
└─────────────────────────────────────────────────────────────┘
                            │
              ┌─────────────┴─────────────┐
              ▼                           ▼
     ┌───────────────┐           ┌───────────────┐
     │   INTERNO     │           │   EXTERNO     │
     │ (Rede Local)  │           │  (Internet)   │
     └───────────────┘           └───────────────┘
              │                           │
              ▼                           ▼
     Passo 3: Wi-Fi           Passo 4: Coleta de
     e Rede Local             Informações (OSINT)
```

---

## 📋 Checklist Detalhado

### 1️⃣ Definir o Alvo

> [!info] Escopo do Teste
> - [ ] Identificar o alvo (domínio, IP, organização)
> - [ ] Definir escopo autorizado
> - [ ] Obter autorização por escrito

---

### 2️⃣ Tipo de Ataque

> [!warning] Decisão Importante

| Tipo | Descrição | Próximo Passo |
|------|-----------|---------------|
| **Interno** | Acesso físico ou via rede local | Ir para Passo 3 |
| **Externo** | Acesso remoto via Internet | Ir para Passo 4 |

---

### 3️⃣ Ataque Interno (Rede Local)

> [!tip] Avaliação de Redes Sem Fio

#### a) Avaliação Inicial
- [ ] Identificar redes Wi-Fi do alvo
- [ ] Avaliar possibilidade de acesso físico (cabo de rede)

#### b) Ataques em Redes Sem Fio

| Ataque | Descrição |
|--------|-----------|
| **WPS Attack** | Explorar vulnerabilidades do protocolo WPS |
| **Força Bruta** | Descoberta de senha por dicionário/brute force |
| **Evil Twin** | Criar ponto de acesso falso para capturar credenciais |
| **Captive Portal** | Verificar existência e tentar burlar |

#### c) Após Obter Acesso

> [!success] Próximos Passos
> Caso obtenha acesso à rede:
> - [ ] [[Ataques em rede local|Enumerar os hosts]] (dispositivos) da rede
> - [ ] Partir para o Passo 4

---

### 4️⃣ Coleta de Informações

> [!info] Ferramentas de Coleta Ativa e Passiva

| Fase | Ferramentas |
|------|-------------|
| **Passiva (OSINT)** | whois, Google Hacking, Shodan, redes sociais |
| **Ativa** | nmap, nikto, dirb/gobuster, DNS enumeration |

---

## 🔗 Links Relacionados

> [!tip] Aprofundamento

| Tópico | Descrição |
|--------|-----------|
| [[Juntando tudo (745)]] | Checklist completo de pentest |
| [[Information Gathering Frameworks (OSINT)]] | Frameworks de coleta de informações |
| [[Ferramentas de redes sem fio (802 11)]] | Ataques Wi-Fi em detalhes |

