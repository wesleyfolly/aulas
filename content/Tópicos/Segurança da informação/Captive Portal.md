---
tipo: aula
resumo: "Mecanismo de autenticação em redes Wi-Fi públicas que redireciona usuários para uma página de login antes de liberar acesso."
tags:
  - aula
  - seguranca-da-informacao
  - redes-sem-fio
  - captive-portal
  - wifi
---

# Captive Portal

> [!quote] A Porta de Entrada
> *Em redes públicas, antes de navegar livremente, você precisa passar pelo portão de controle.*

---

## 🔐 O que é Captive Portal?

> [!info] Definição
> **Captive Portal** é um mecanismo que **intercepta a primeira requisição HTTP/HTTPS** do usuário em uma rede sem fio e redireciona para uma página web controlada pelo administrador da rede.

### Funções Comuns

- Autenticar o usuário (login/senha)
- Registrar dados (nome, e-mail, CPF)
- Exigir aceite de termos de uso
- Mostrar publicidade antes de liberar navegação

---

## ⚙️ Como Funciona?

> [!tip] Fluxo de Funcionamento

```
1. Usuário conecta-se ao Access Point (AP)
         ↓
2. Gateway identifica que não há autenticação ativa
         ↓
3. Primeira tentativa de acesso é REDIRECIONADA
         ↓
4. Página do Captive Portal é exibida
         ↓
5. Usuário fornece credenciais/aceita termos
         ↓
6. Sistema valida → libera tráfego normal
```

---

## 🏢 Aplicações Práticas

> [!success] Onde é Utilizado

| Local | Objetivo |
|-------|----------|
| **Hotéis/Aeroportos** | Garantir que apenas hóspedes/passageiros usem a rede |
| **Empresas/Universidades** | Controlar acesso e coletar métricas de uso |
| **Cafés/Comércios** | Exibir publicidade ou coletar e-mails para marketing |
| **Eventos** | Controlar acesso temporário de participantes |

---

## ✅ Vantagens

> [!info] Benefícios

- Controle de acesso sem fio
- Facilidade de autenticação (via web, sem configuração manual)
- Integração com sistemas de cadastro e marketing
- Registro de uso para compliance
- Possibilidade de limite de tempo/banda

---

## ⚠️ Limitações

> [!warning] Pontos Fracos

| Limitação | Descrição |
|-----------|-----------|
| **Bypass possível** | Pode ser contornado com VPN ou MAC spoofing |
| **UX problemática** | Redirecionamentos podem falhar em HTTPS |
| **Manutenção** | Necessidade de constante atualização |
| **Segurança** | Dados podem ser interceptados se não usar HTTPS |

---

## 🎯 Atividades Práticas

> [!tip] Laboratório

1. **Configurar um Captive Portal** — Implementar em ambiente controlado
2. **Bypass de Captive Portal** — Entender técnicas de contorno (MAC spoofing, DNS tunneling)

---

## 🛠️ Ferramentas para Implementação

| Ferramenta | Descrição |
|------------|-----------|
| **pfSense** | Firewall open-source com captive portal integrado |
| **OPNsense** | Fork do pfSense com interface moderna |
| **NoDogSplash** | Solução leve para roteadores |
| **WiFiDog** | Portal para hotspots públicos |

