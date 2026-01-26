---
tipo: aula
resumo: "Introdução ao endereçamento IPv6, a nova geração do protocolo IP com capacidade expandida de endereçamento."
tags:
  - aula
  - redes-de-computadores
  - ipv6
  - protocolos
---

# Endereçamento IPv6

> [!quote] O Futuro da Internet
> *Com o esgotamento dos endereços IPv4, o IPv6 surge como a solução definitiva, oferecendo trilhões de endereços únicos para conectar todos os dispositivos do mundo.*

---

## 📖 Visão Geral

![[Recursos/Redes de Computadores/Endereçamento IPv6/comparativo-ipv4-ipv6.png|IPv6 Overview]]

> [!info] Por que IPv6?
> O IPv4 oferece aproximadamente 4,3 bilhões de endereços. Com a explosão de dispositivos conectados (IoT, smartphones, etc.), esses endereços se esgotaram. O IPv6 resolve esse problema com **340 undecilhões** de endereços possíveis.

---

## 📊 Comparativo IPv4 vs IPv6

| Característica | IPv4 | IPv6 |
|----------------|------|------|
| **Tamanho** | 32 bits | 128 bits |
| **Formato** | Decimal (192.168.0.1) | Hexadecimal (2001:db8::1) |
| **Endereços** | ~4,3 bilhões | ~340 undecilhões |
| **Configuração** | Manual/DHCP | Autoconfiguração (SLAAC) |
| **Segurança** | Opcional (IPSec) | Nativo (IPSec obrigatório) |
| **NAT** | Necessário | Desnecessário |
| **Broadcast** | Sim | Não (usa Multicast) |

---

## 🎬 Recursos de Aprendizado

> [!success] Vídeos Recomendados

| Recurso | Link |
|---------|------|
| **IPv6 em português claro** | [YouTube](https://www.youtube.com/watch?v=_JbLr_C-HLk&t=10s) |
| **Como o IPv6 está mudando a Internet** | [YouTube](https://www.youtube.com/watch?v=H_a_woBKfpU) |

---

## 🔧 Ferramentas Úteis

> [!tip] Teste e Aprenda

| Ferramenta | Descrição | Link |
|------------|-----------|------|
| **Test your IPv6** | Verifica se sua conexão suporta IPv6 | [test-ipv6.com](https://test-ipv6.com/) |
| **IPv6.br** | Portal brasileiro sobre IPv6 | [ipv6.br](https://ipv6.br/) |

---

## 📝 Estrutura do Endereço IPv6

> [!info] Formato
> Um endereço IPv6 consiste em 8 grupos de 4 dígitos hexadecimais, separados por dois-pontos.

**Exemplo completo**: `2001:0db8:85a3:0000:0000:8a2e:0370:7334`

**Forma abreviada**: `2001:db8:85a3::8a2e:370:7334`

### Regras de Abreviação

1. Zeros à esquerda podem ser omitidos: `0db8` → `db8`
2. Grupos consecutivos de zeros podem ser substituídos por `::` (apenas uma vez)

---

## 🔑 Tipos de Endereços IPv6

| Tipo | Prefixo | Uso |
|------|---------|-----|
| **Global Unicast** | 2000::/3 | Endereços públicos roteáveis |
| **Link-Local** | fe80::/10 | Comunicação local (não roteável) |
| **Unique Local** | fc00::/7 | Equivalente ao IP privado do IPv4 |
| **Multicast** | ff00::/8 | Comunicação um-para-muitos |
| **Loopback** | ::1 | Equivalente ao 127.0.0.1 |

